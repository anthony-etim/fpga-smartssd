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
PART OF THIS FILE AT ALL TIMES.      */ 

#include <sstream>
#include "sim_cmdq.h"

namespace xsc {
    sim_cmdq::sim_cmdq(const sc_module_name& module_name, 
            xsc::common_cpp::properties& _properties) :
        sc_module(module_name) 
    {
        //Slave interface used to R/W to CommandQueue
        saxi_cq_read_skt =  new xtlm::xtlm_aximm_target_socket("saxi_cq_read_skt",32);
        saxi_cq_write_skt = new xtlm::xtlm_aximm_target_socket("saxi_cq_wrie_skt",32);
        m_saxi_cq_read_skt_util =  new xtlm::xtlm_aximm_target_rd_socket_util("saxi_cq_read_skt_util", xtlm::aximm::granularity::TRANSACTION, 32);
        m_saxi_cq_write_skt_util = new xtlm::xtlm_aximm_target_wr_socket_util("saxi_cq_write_skt_util", xtlm::aximm::granularity::TRANSACTION, 32);

        s_axi_data_p2p_rd_socket = new xtlm::xtlm_aximm_target_socket("p2p_rd_socket",32);
        s_axi_data_p2p_wr_socket = new xtlm::xtlm_aximm_target_socket("p2p_wr_socket",32);
        s_axi_data_p2p_rd_util =   new xtlm::xtlm_aximm_target_rd_socket_util("p2p_rd_util", xtlm::aximm::granularity::TRANSACTION, 32);
        s_axi_data_p2p_wr_util =   new xtlm::xtlm_aximm_target_wr_socket_util("p2p_wr_util", xtlm::aximm::granularity::TRANSACTION, 32);

        saxi_cq_read_skt->bind((m_saxi_cq_read_skt_util->rd_socket));
        saxi_cq_write_skt->bind((m_saxi_cq_write_skt_util->wr_socket));

        s_axi_data_p2p_rd_socket->bind(s_axi_data_p2p_rd_util->rd_socket);
        s_axi_data_p2p_wr_socket->bind(s_axi_data_p2p_wr_util->wr_socket);

        m_log = new xsc::common_cpp::report_handler("sim_cmdq");
        m_cmdq_size = _properties.getLongLong("ERT_CQ_SIZE");
        m_cmdq_mem.resize(m_cmdq_size);

        SC_METHOD(mblz_read);
        sensitive << m_saxi_cq_read_skt_util->transaction_available;
        dont_initialize();

        SC_METHOD(mblz_write);
        sensitive << m_saxi_cq_write_skt_util->transaction_available;
        dont_initialize();

        SC_METHOD(host_read);
        sensitive << s_axi_data_p2p_rd_util->transaction_available;
        dont_initialize();

        SC_METHOD(host_write);
        sensitive << s_axi_data_p2p_wr_util->transaction_available;
        dont_initialize();
    }

    void sim_cmdq::mblz_read() 
    {
        xtlm::aximm_payload* trans = m_saxi_cq_read_skt_util->get_transaction();
        uint64_t addr = trans->get_address();
        uint32_t offset_addr = addr & 0xffff;

        if(offset_addr >= m_cmdq_size) {
            m_ss.str("");
            m_ss << "Out of bound address received Addr = 0x"<< std::hex  << addr;
            XSC_REPORT_ERROR((*m_log), this->name(), m_ss.str().c_str());
            return; //! Throw    error
        }

        m_ss.str("");
        m_ss << "Micoblaze Reading Addr = 0x"<< std::hex << addr 
            << ", Data = 0x" << *(uint32_t*)(&m_cmdq_mem[offset_addr]);
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        memcpy(trans->get_data_ptr(), &m_cmdq_mem[offset_addr], trans->get_data_length());
        trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
        sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
        m_saxi_cq_read_skt_util->send_data(*trans, delay);
    }

    void sim_cmdq::mblz_write() 
    {
        xtlm::aximm_payload* trans = m_saxi_cq_write_skt_util->get_transaction();
        uint64_t addr = trans->get_address();
        uint32_t offset_addr = addr & 0xffff;
        uint32_t data = *(uint32_t*)trans->get_data_ptr();

        if(offset_addr >= m_cmdq_size) {
            m_ss.str("");
            m_ss << "Out of bound address received Addr = 0x" << std::hex << addr;
            XSC_REPORT_ERROR((*m_log), this->name(), m_ss.str().c_str());
            return; //! Throw    error
        }

        m_ss.str("");
        m_ss <<"Micoblaze Writing to Addr " << std::hex << addr <<", data = 0x" << data;
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        memcpy(&m_cmdq_mem[offset_addr], trans->get_data_ptr(), trans->get_data_length());
        trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
        sc_core::sc_time delay = SC_ZERO_TIME;
        m_saxi_cq_write_skt_util->send_resp(*trans, delay);
    }

    void sim_cmdq::host_read() 
    {
        xtlm::aximm_payload* trans = s_axi_data_p2p_rd_util->get_transaction();
        uint64_t addr = trans->get_address();
        uint32_t offset_addr = addr & 0xffff;

        if(offset_addr >= m_cmdq_size) {
            m_ss.str("");
            m_ss << "Out of bound address received Addr = 0x"<< std::hex  << addr;
            XSC_REPORT_ERROR((*m_log), this->name(), m_ss.str().c_str());
            return; //! Throw    error
        }

        m_ss.str("");
        m_ss << "Host Reading Addr = 0x"<< std::hex << addr << " Length =0x" << trans->get_data_length() 
            << ", Data = 0x" << *(uint32_t*)(&m_cmdq_mem[offset_addr]);
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        memcpy(trans->get_data_ptr(), &m_cmdq_mem[offset_addr], trans->get_data_length());
        trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
        sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
        s_axi_data_p2p_rd_util->send_data(*trans, delay);
    }

    void sim_cmdq::host_write() 
    {
        xtlm::aximm_payload* trans = s_axi_data_p2p_wr_util->get_transaction();
        uint64_t addr = trans->get_address();
        uint32_t offset_addr = addr & 0xffff;
        uint32_t data = *(uint32_t*)trans->get_data_ptr();

        if(offset_addr >= m_cmdq_size) {
            m_ss.str("");
            m_ss << "Out of bound address received Addr = 0x" << std::hex << addr;
            XSC_REPORT_ERROR((*m_log), this->name(), m_ss.str().c_str());
            return; //! Throw    error
        }

        m_ss.str("");
        m_ss <<"Host Writing to Addr " << std::hex << addr << " Length =0x" << trans->get_data_length() <<", data = ";
        for(int i = 0; i < trans->get_data_length(); i += 4) {
            m_ss <<"0x" << *(uint32_t*)(trans->get_data_ptr() + 1) <<"  ";
        }
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        memcpy(&m_cmdq_mem[offset_addr], trans->get_data_ptr(), trans->get_data_length());
        trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
        sc_core::sc_time delay = SC_ZERO_TIME;
        s_axi_data_p2p_wr_util->send_resp(*trans, delay);
    }

    sim_cmdq::~sim_cmdq() 
    {
        delete saxi_cq_read_skt;
        delete saxi_cq_write_skt;
        delete m_saxi_cq_read_skt_util;
        delete m_saxi_cq_write_skt_util;
        delete s_axi_data_p2p_rd_socket;
        delete s_axi_data_p2p_wr_socket;
        delete s_axi_data_p2p_rd_util;
        delete s_axi_data_p2p_wr_util;
        m_cmdq_mem.clear();
    }
} //namespace xsc
