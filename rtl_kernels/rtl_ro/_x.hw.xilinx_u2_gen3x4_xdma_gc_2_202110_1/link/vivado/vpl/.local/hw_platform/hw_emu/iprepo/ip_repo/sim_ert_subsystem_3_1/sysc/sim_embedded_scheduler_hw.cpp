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

#include "ert_regs.h"
#include "sim_embedded_scheduler_hw.h"

namespace xsc {
    sim_embedded_scheduler_hw::sim_embedded_scheduler_hw(sc_module_name name, 
            xsc::common_cpp::properties& _properties)
        :sc_module(name)
    {
        host_rd_socket = new xtlm::xtlm_aximm_target_socket("host_rd_socket", 32);
        host_wr_socket = new xtlm::xtlm_aximm_target_socket("host_wr_socket", 32);

        host_rd_util   = new xtlm::xtlm_aximm_target_rd_socket_util("rd_util", xtlm::aximm::TRANSACTION, 32);
        host_wr_util   = new xtlm::xtlm_aximm_target_wr_socket_util("wr_util", xtlm::aximm::TRANSACTION, 32);

        host_rd_socket->bind(host_rd_util->rd_socket);
        host_wr_socket->bind(host_wr_util->wr_socket);

        m_log = new xsc::common_cpp::report_handler("sim_embedded_scheduler_hw");

        SC_METHOD(write_reg);
        sensitive << host_wr_util->transaction_available;
        dont_initialize();

        SC_METHOD(read_reg);
        sensitive << host_rd_util->addr_available;
        dont_initialize();
    }

    void sim_embedded_scheduler_hw::write_reg()
    {
        xtlm::aximm_payload* trans = host_wr_util->get_transaction();
        uint64_t addr = trans->get_address();
        uint32_t offset_addr = addr & (REG_MEM_SIZE - 1);
        uint32_t data = *(uint32_t*)trans->get_data_ptr();

        if(offset_addr >= REG_MEM_SIZE) {
            m_ss.str("");
            m_ss << "Out of bound address received Addr = 0x" << std::hex << addr;
            XSC_REPORT_ERROR((*m_log), this->name(), m_ss.str().c_str());
            return; //! Throw    error
        }

        m_ss.str("");
        m_ss <<"Writing to Register " << reg_name(offset_addr) << std::hex <<", data = 0x" << data;
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
        //Ert Status read is always a or operation as previous status need to be preserved if host has not read yet
        for(int i=0;i<trans->get_data_length();i++) {
            reg_mem[offset_addr+i]=reg_mem[offset_addr+i] | trans->get_data_ptr()[i];
        }
        //memcpy(&reg_mem[offset_addr], trans->get_data_ptr(), trans->get_data_length());
        trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
        sc_core::sc_time delay = SC_ZERO_TIME;
        host_wr_util->send_resp(*trans, delay);

        if(is_ert_status_reg(offset_addr)) {
            update_host_interrupt();
        }

        if(is_cq_status_reg(offset_addr)) {
            update_irq_slot_interrupt();
        }
    }

    void sim_embedded_scheduler_hw::read_reg()
    {
        xtlm::aximm_payload* trans = host_rd_util->get_transaction();
        uint64_t addr = trans->get_address();
        uint32_t offset_addr = addr & (REG_MEM_SIZE - 1);

        if(offset_addr >= REG_MEM_SIZE) {
            m_ss.str("");
            m_ss << "Out of bound address received Addr = 0x"<< std::hex  << addr;
            XSC_REPORT_ERROR((*m_log), this->name(), m_ss.str().c_str());
            return; //! Throw    error
        }

        m_ss.str("");
        m_ss << "Reading Register "<< reg_name(offset_addr) 
            << ", Data = 0x" << std::hex << *(uint32_t*)(&reg_mem[offset_addr]);
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
      
        memcpy(trans->get_data_ptr(), &reg_mem[offset_addr], trans->get_data_length());
        trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
        sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
        host_rd_util->send_data(*trans, delay);

        if(is_ert_status_reg(offset_addr)) {
            //! Update COR register to '0x0'
            *(uint32_t*)(&reg_mem[offset_addr]) = 0x0;
            update_host_interrupt();
        }

        if(is_cq_status_reg(offset_addr)) {
            //! Update COR register to '0x0'
            *(uint32_t*)(&reg_mem[offset_addr]) = 0x0;
            update_irq_slot_interrupt();
        }
    }

    void sim_embedded_scheduler_hw::update_host_interrupt()
    {
        uint32_t ert_status_enable_addr = 0x100;
         if(!(*(uint32_t*)(&reg_mem[ert_status_enable_addr]) & 0x1)) {
             //! If host status interrupt is not enabled, do nothing
             return;
         }

        //! Check if any of the slot has bit set
        uint32_t ert_status_addr = 0x0;
        uint32_t value = 0x0;
        for(int i = 0; i < 4; i++) {
            ert_status_addr += (i * 4);
            value |= *(uint32_t*)(&reg_mem[ert_status_addr]);
        }

        //! set interrupt pin if 'value' is not '0'. And clear if it is '0'
        //host_interrupt = (value != 0);
    }

    void sim_embedded_scheduler_hw::update_irq_slot_interrupt()
    {
        uint32_t cq_enable_addr = 0x54;
         if(!(*(uint32_t*)(&reg_mem[cq_enable_addr]) & 0x1)) {
             //! If cq status interrupt is not enabled, do nothing
             return;
         }

        //! Check if any of the slot has bit set
        uint32_t cq_status_addr = 0x58;
        uint32_t value = 0x0;
        for(int i = 0; i < 4; i++) {
            cq_status_addr += (i * 4);
            value |= *(uint32_t*)(&reg_mem[cq_status_addr]);
        }

        //! set interrupt pin if 'value' is not '0'. And clear if it is '0'
        irq_slotavailable = (value != 0);
    }

} // namespace xsc
