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

#include "sim_gpio_mb_base_addr.h"

namespace xsc {
    sim_gpio_mb_base_addr::sim_gpio_mb_base_addr(sc_module_name name, 
            xsc::common_cpp::properties& _properties)
        :sc_module(name)
        ,s_axi_aresetn("reset")
        ,s_axi_aclk("clk")
    {
        s_axi_rd_socket = new xtlm::xtlm_aximm_target_socket("rd_socket", 32);
        s_axi_rd_util   = new xtlm::xtlm_aximm_target_rd_socket_util("rd_util", xtlm::aximm::TRANSACTION, 32);

        s_axi_wr_socket = new xtlm::xtlm_aximm_target_socket("wr_socket", 32);
        s_axi_wr_util   = new xtlm::xtlm_aximm_target_wr_socket_util("wr_util", xtlm::aximm::TRANSACTION, 32);

        s_axi_rd_socket->bind(s_axi_rd_util->rd_socket);
        s_axi_wr_socket->bind(s_axi_wr_util->wr_socket);

        m_log = new xsc::common_cpp::report_handler("sim_gpio_mb_base_addr");
        uint64_t ert_mgmt_base_aadr = _properties.getLongLong("ERT_MGMT_PF_base_addr"); 
        uint64_t ert_usr_base_aadr  = _properties.getLongLong("ERT_USER_PF_base_addr"); 

        memcpy(&reg_mem[0], (uint8_t*)(&ert_mgmt_base_aadr), 8);
        memcpy(&reg_mem[8], (uint8_t*)(&ert_usr_base_aadr), 8);

        SC_METHOD(write_reg);
        sensitive << s_axi_wr_util->transaction_available;
        dont_initialize();

        SC_METHOD(read_reg);
        sensitive << s_axi_rd_util->addr_available;
        dont_initialize();
    }

    void sim_gpio_mb_base_addr::read_reg()
    {
        xtlm::aximm_payload* trans = s_axi_rd_util->get_transaction();
        unsigned long long addr = trans->get_address();
        unsigned int offset_addr = addr & 0xf;

        if(addr == ERT_USER_PF_base_reg) {
            m_ss.str("");
            m_ss << "Reading ERT_USER_PF_base_addr_reg Addr = 0x"<< std::hex  << addr 
                << " Data = 0x" << *(unsigned int*)(&reg_mem[offset_addr]);
            XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

            memcpy(trans->get_data_ptr(), &reg_mem[offset_addr], trans->get_data_length());
            trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
            sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
            s_axi_rd_util->send_data(*trans, delay);
        }
        else {
            m_ss.str("");
            m_ss << "Unsupported address received Addr = 0x"<< std::hex  << addr;
            XSC_REPORT_ERROR((*m_log), this->name(), m_ss.str().c_str());
        }
    }

    void sim_gpio_mb_base_addr::write_reg()
    {
        xtlm::aximm_payload* trans = s_axi_wr_util->get_transaction();
        unsigned long long addr = trans->get_address();
        unsigned int data = *(unsigned int*)trans->get_data_ptr();

        //! gpio_base_addr has read only registers and writing 
        //  to any of these addresses should throw an error...
        m_ss.str("");
        m_ss << "Writing to Read only Addr = 0x" << std::hex << addr;
        XSC_REPORT_ERROR((*m_log), this->name(), m_ss.str().c_str());
    }
}
