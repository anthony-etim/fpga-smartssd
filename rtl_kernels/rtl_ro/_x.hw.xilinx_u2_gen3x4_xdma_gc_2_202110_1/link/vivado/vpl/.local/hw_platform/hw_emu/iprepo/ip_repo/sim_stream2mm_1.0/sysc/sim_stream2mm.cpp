// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "sim_stream2mm.h"

sim_stream2mm::sim_stream2mm(
        sc_core::sc_module_name p_name
        ,xsc::common_cpp::properties& _properties) 
    : sc_module(p_name) 
{
    unsigned long stream_data_width = _properties.getLongLong("C_S00_AXIS_TDATA_WIDTH");
    unsigned long long mm_data_width = _properties.getLongLong("C_M00_AXI_DATA_WIDTH");
    aximm_width_in_bytes = mm_data_width/8;
    stream_width_in_bytes = stream_data_width/8;

    S00_AXIS_socket = new xtlm::xtlm_axis_target_socket("skt", stream_data_width);
    util = new xtlm::xtlm_axis_target_socket_util("skt_util", xtlm::axis::HANDSHAKE,stream_data_width);
    S00_AXIS_socket->bind((util->stream_socket));

    M00_AXI_rd_socket = new xtlm::xtlm_aximm_initiator_socket("rd_socket", mm_data_width);
    M00_AXI_wr_socket = new xtlm::xtlm_aximm_initiator_socket("wr_socket", mm_data_width);

    rd_util = new xtlm::xtlm_aximm_initiator_rd_socket_util("rd_socket", xtlm::aximm::TRANSACTION, mm_data_width);
    wr_util = new xtlm::xtlm_aximm_initiator_wr_socket_util("wr_socket", xtlm::aximm::TRANSACTION, mm_data_width);

    rd_util->rd_socket.bind(*M00_AXI_rd_socket);
    wr_util->wr_socket.bind(*M00_AXI_wr_socket);

    mem_manager = new xtlm::xtlm_aximm_mem_manager(this);
    m_curr_addr = 0;

    SC_METHOD(read_stream_data);
    sensitive << util->transaction_available;
    dont_initialize();

    SC_METHOD(send_write_trans);
    sensitive << start_transfer_ev;
    dont_initialize();

    SC_METHOD(write_response);
    sensitive << wr_util->resp_available;
    dont_initialize();
}

sim_stream2mm::~sim_stream2mm()
{
    delete mem_manager;
    delete wr_util;
    delete rd_util;
    delete M00_AXI_wr_socket;
    delete M00_AXI_rd_socket;
    delete util;
    delete S00_AXIS_socket;
}

void sim_stream2mm::read_stream_data() 
{
    xtlm::axis_payload* payload = util->sample_transaction();
    unsigned char *data = new unsigned char[stream_width_in_bytes];
    memcpy(data, payload->get_tdata_ptr(), stream_width_in_bytes);

    fifo.push(data);
    start_transfer_ev.notify(SC_ZERO_TIME);
}

void sim_stream2mm::send_write_trans()
{
    if (!wr_util->is_slave_ready() || fifo.empty()) return;

    xtlm::aximm_payload* trans = get_payload();
    trans->set_address(m_curr_addr);
    unsigned char* data_ptr = trans->get_data_ptr();
    memcpy(data_ptr, fifo.front(), aximm_width_in_bytes);
    delete fifo.front(); fifo.pop();

    unsigned char* byte_en_ptr = trans->get_byte_enable_ptr();
    for (int i = 0; i < aximm_width_in_bytes; i++) {
        byte_en_ptr[i] = 0xff;
    }

    trans->set_command(xtlm::XTLM_WRITE_COMMAND);

    sc_time delay = SC_ZERO_TIME;
    wr_util->send_transaction(*trans, delay);
    m_curr_addr += aximm_width_in_bytes;
  }

xtlm::aximm_payload*
sim_stream2mm::get_payload() 
{
    xtlm::aximm_payload* trans = mem_manager->get_payload();
    trans->acquire();

    trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
    trans->create_and_get_data_ptr(aximm_width_in_bytes); 
    trans->create_and_get_byte_enable_ptr(aximm_width_in_bytes);
    trans->set_axi_id(0);
    trans->set_burst_length(1);
    trans->set_burst_size(aximm_width_in_bytes);
    trans->set_burst_type(1);

    return trans;
}

void sim_stream2mm::write_response()
{
    assert(wr_util->is_resp_available());
    xtlm::aximm_payload* trans;
    trans = wr_util->get_resp();
    trans->release();

    //Notify to start any pending transactions...
    start_transfer_ev.notify(SC_ZERO_TIME);
}



