// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
/*  (c) Copyright 1995 - 2020 Xilinx, Inc. All rights reserved.

 This file contains confidential and proprietary information
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property
 laws.

 DISCLAIMER
 This disclaimer is not a license and does not grant any
 rights to the materials distributed herewith. Except as
 otherwise provided in a valid license issued to you by
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 (2) Xilinx shall not be liable (whether in contract or tort,
 including negligence, or under any other theory of
 liability) for any loss or damage of any kind or nature
 related to, arising under or in connection with these
 materials, including for any direct, or any indirect,
 special, incidental, or consequential loss or damage
 (including loss of data, profits, goodwill, or any type of
 loss or damage suffered as a result of any action brought
 by a third party) even if such damage or loss was
 reasonably foreseeable or Xilinx had been advised of the
 possibility of the same.

 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or
 systems, Class III medical devices, nuclear facilities,
 applications related to the deployment of airbags, or any
 other applications that could lead to death, personal
 injury, or severe property or environmental damage
 (individually and collectively, "Critical
 Applications"). Customer assumes the sole risk and
 liability of any use of Xilinx products in Critical
 Applications, subject only to applicable laws and
 regulations governing limitations on product liability.

 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 PART OF THIS FILE AT ALL TIMES.       */

#include "sim_m2m.h"
#define BUFFER_SIZE    64

using namespace xtlm;

namespace xsc {
sim_m2m::sim_m2m(sc_module_name name, 
        xsc::common_cpp::properties& _properties): 
    xsc::xtlm_ap_ctrl(name)
    ,m_num_words_read(0)
    ,m_num_words_sent(0)
    ,m_wr_resp_pending(false)
{
    m_data_width_bytes = 4; 
    m_log = new xsc::common_cpp::report_handler("sim_m2m");        
    m_axi_gmem_rd_socket = new xtlm_aximm_initiator_socket("m_axi_gmem_rd", 32);
    m_axi_gmem_rd_util   = new xtlm_aximm_initiator_rd_socket_util("m_axi_gmem_rd_util", aximm::TRANSACTION, 32);

    m_axi_gmem_wr_socket = new xtlm_aximm_initiator_socket("m_axi_gmem_wr", 32);
    m_axi_gmem_wr_util   = new xtlm_aximm_initiator_wr_socket_util("m_axi_gmem_wr_util", aximm::TRANSACTION, 32);

    m_axi_gmem_wr_util->wr_socket.bind(*m_axi_gmem_wr_socket);
    m_axi_gmem_rd_util->rd_socket.bind(*m_axi_gmem_rd_socket);

    mm_mem_manager = new xtlm::xtlm_aximm_mem_manager();

    dont_initialize();
    SC_METHOD(gmem_read_request);
    sensitive << ev_start_gm_read;
    dont_initialize();

    SC_METHOD(gmem_read_response);
    sensitive << m_axi_gmem_rd_util->data_available;
    dont_initialize();

    SC_METHOD(gmem_write_request);
    sensitive << ev_start_gm_write;
    dont_initialize();

    SC_METHOD(gmem_write_response);
    sensitive << m_axi_gmem_wr_util->resp_available;
    dont_initialize();
}

void sim_m2m::ap_start()
{
    XSC_REPORT_INFO((*m_log), "1", "ap_start triggered. Strating the Kernel");

    //! Kernel arguments index in reg_mem: GMEM Address &  Data Size
    unsigned int gmem_rd_addr_indx = 0x10; 
    unsigned int gmem_wr_addr_indx = 0x18;
    unsigned size_indx = 0x20;

    m_gmem_read_addr =  *(unsigned long long*)(&reg_mem[gmem_rd_addr_indx]);
    m_gmem_write_addr = *(unsigned long long*)(&reg_mem[gmem_wr_addr_indx]);
    m_size = *(unsigned int*)(&reg_mem[size_indx]);
    
    ev_start_gm_read.notify(SC_ZERO_TIME);
}

void sim_m2m::gmem_read_request()
{

    if(m_num_words_read >= m_size) return;

    if(!m_axi_gmem_rd_util->is_slave_ready()) return; //! Slave is not ready
        
    xtlm::aximm_payload* payload = init_payload();
    payload->set_command(xtlm::XTLM_READ_COMMAND);
    payload->set_address(m_gmem_read_addr + m_num_words_read * m_data_width_bytes);

    sc_time delay = SC_ZERO_TIME;
    m_axi_gmem_rd_util->send_transaction(*payload, delay);
}

void sim_m2m::gmem_read_response()
{
    xtlm::aximm_payload* payload = m_axi_gmem_rd_util->get_data();

    unsigned long long data = 0;
    memcpy((char*)&data, payload->get_data_ptr(), m_data_width_bytes);
    m_data_fifo.push(data);
    payload->release();
    
    m_num_words_read += 1;
    ev_start_gm_write.notify(SC_ZERO_TIME); //! Notify to send data...

    unsigned int size_indx = 0x1c;
    unsigned int size = *(unsigned int*)(&reg_mem[size_indx]);
    if(m_num_words_read == m_size) { //! Completed Reading from GMEM...
        //! Completed processing input data...
        XSC_REPORT_INFO((*m_log), "1", "Completed Processing input data, Asserting ap_ready");
        ap_ready();
        return;
    }
    
    //! Start next transfer if fifo is not full
    if(m_data_fifo.size() < BUFFER_SIZE) 
    ev_start_gm_read.notify(SC_ZERO_TIME);
}


void sim_m2m::gmem_write_request()
{
    if(m_data_fifo.empty()) return; //! No data pending in fifo
    if(m_num_words_sent == m_size) return;

    //if(!m_axi_gmem_wr_util->is_slave_ready()) return; //! Slave is not ready
    if(m_wr_resp_pending) return; //! Slave is not ready
        
    xtlm::aximm_payload* payload = init_payload();
    payload->set_command(xtlm::XTLM_WRITE_COMMAND);
    payload->set_address(m_gmem_write_addr + m_num_words_sent * m_data_width_bytes);
    memcpy(payload->get_data_ptr(), (char*)&(m_data_fifo.front()),  m_data_width_bytes);
    m_data_fifo.pop();

    sc_time delay = SC_ZERO_TIME;
    m_axi_gmem_wr_util->send_transaction(*payload, delay);
    m_wr_resp_pending = true;
}

void sim_m2m::gmem_write_response()
{
	xtlm::aximm_payload* payload = m_axi_gmem_wr_util->get_resp();
    m_num_words_sent += 1;
    m_wr_resp_pending = false;
    payload->release();

    if(m_num_words_sent == m_size) { //! Completed Reading from GMEM...
        //! Completed processing output data...
        XSC_REPORT_INFO((*m_log), "1", "Completed Processing output data, Asserting ap_done");
        ap_done();

        //! if ap_continue restart ...?
        return;
    }
    ev_start_gm_write.notify(SC_ZERO_TIME); //! Notify to send data to GMEM...

    //! Start next read if fifo is not full
    if(m_data_fifo.size() < BUFFER_SIZE) 
    ev_start_gm_read.notify(SC_ZERO_TIME); //! Notify to read data...
}

xtlm::aximm_payload* sim_m2m::init_payload() 
{
    xtlm::aximm_payload* payload = mm_mem_manager->get_payload();
    payload->acquire();

    payload->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
    //payload->set_command(xtlm::XTLM_WRITE_COMMAND);
    payload->create_and_get_data_ptr(m_data_width_bytes); 
    payload->create_and_get_byte_enable_ptr(m_data_width_bytes);
    payload->set_axi_id(0);
    payload->set_burst_length(1);
    payload->set_burst_size(m_data_width_bytes); //! Data width of Bus
    payload->set_burst_type(1);
    for(int i = 0; i < m_data_width_bytes; i++) {
        *(payload->get_byte_enable_ptr() + i) = 0xff;
    }

    return payload;
}

}

