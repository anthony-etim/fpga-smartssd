// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "sim_mm2stream.h"

sim_mm2stream::sim_mm2stream(
        sc_core::sc_module_name p_name
        ,xsc::common_cpp::properties& _properties) 
    : sc_module(p_name) 
{
    unsigned long stream_data_width = _properties.getLongLong("C_M00_AXIS_TDATA_WIDTH");
    unsigned long long mm_data_width = _properties.getLongLong("C_M00_AXI_DATA_WIDTH");

    aximm_width_in_bytes = mm_data_width/8;
    stream_width_in_bytes = stream_data_width/8;

    m_curr_addr =  _properties.getLongLong("START_ADDRESS");
    m_end_addr = m_curr_addr + _properties.getLongLong("DATA_SIZE");

    M00_AXIS_socket = new xtlm::xtlm_axis_initiator_socket("skt", stream_data_width);
    util = new xtlm::xtlm_axis_initiator_socket_util("skt_util", xtlm::axis::HANDSHAKE,stream_data_width);
    util->stream_socket.bind(*M00_AXIS_socket);

    M00_AXI_rd_socket = new xtlm::xtlm_aximm_initiator_socket("rd_socket", mm_data_width);
    M00_AXI_wr_socket = new xtlm::xtlm_aximm_initiator_socket("wr_socket", mm_data_width);

    rd_util = new xtlm::xtlm_aximm_initiator_rd_socket_util("rd_socket", xtlm::aximm::TRANSACTION, mm_data_width);
    wr_util = new xtlm::xtlm_aximm_initiator_wr_socket_util("wr_socket", xtlm::aximm::TRANSACTION, mm_data_width);

    rd_util->rd_socket.bind(*M00_AXI_rd_socket);
    wr_util->wr_socket.bind(*M00_AXI_wr_socket);

    mm_mem_manager = new xtlm::xtlm_aximm_mem_manager();
    stream_mem_manager = new xtlm::xtlm_axis_mem_manager();

    SC_METHOD(send_read_request);
    sensitive << start_transfer_ev;

    SC_METHOD(read_response);
    sensitive<<rd_util->data_available;
    dont_initialize();

    SC_METHOD(send_stream_data);
    sensitive<<util->transfer_done;
    sensitive<<  start_transfer_ev;
    dont_initialize();
}

sim_mm2stream::~sim_mm2stream()
{
    delete stream_mem_manager;
    delete mm_mem_manager;
    delete wr_util;
    delete rd_util;
    delete M00_AXI_wr_socket;
    delete M00_AXI_rd_socket;
    delete util;
    delete M00_AXIS_socket;
}

void sim_mm2stream::send_read_request()
{
    //! As long as end address is not reached keep on reading data
    if(m_curr_addr > m_end_addr) return;

    if(!rd_util->is_slave_ready())
        return;

    xtlm::aximm_payload* trans = get_payload();
    trans->set_command(xtlm::XTLM_READ_COMMAND);
    trans->set_address(m_curr_addr);

    sc_time delay = SC_ZERO_TIME;
    rd_util->send_transaction(*trans, delay);
    m_curr_addr += aximm_width_in_bytes;
}


void sim_mm2stream::read_response()
{
    assert(rd_util->is_data_available());

    xtlm::aximm_payload* trans = rd_util->get_data();
    unsigned char *data = new unsigned char[aximm_width_in_bytes];
    memcpy(data, trans->get_data_ptr(), aximm_width_in_bytes);

    fifo.push(data);
    start_transfer_ev.notify(SC_ZERO_TIME);
}

void sim_mm2stream::send_stream_data()
{
    if (!util->is_transfer_done() || fifo.empty()) return;

    xtlm::axis_payload* payload = stream_mem_manager->get_payload();
    unsigned char* tdata_ptr = payload->create_and_set_tdata_ptr(stream_width_in_bytes);
    memcpy(tdata_ptr, fifo.front(), stream_width_in_bytes);
    delete fifo.front(); fifo.pop();

    unsigned char* tstrb = payload->create_and_set_tstrb_ptr(2);
    *(unsigned int*)(tstrb) = 0xFFFF; 

    unsigned char* tkeep = payload->create_and_set_tkeep_ptr(2);
    *(unsigned short*)(tkeep) = 0xFFFF; 

    util->transport(payload);
}


xtlm::aximm_payload*
sim_mm2stream::get_payload() {
    xtlm::aximm_payload* trans = mm_mem_manager->get_payload();
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


