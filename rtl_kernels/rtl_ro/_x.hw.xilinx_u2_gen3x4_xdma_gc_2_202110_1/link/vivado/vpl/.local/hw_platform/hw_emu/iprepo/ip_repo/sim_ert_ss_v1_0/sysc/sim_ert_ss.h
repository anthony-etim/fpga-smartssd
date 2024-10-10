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

#pragma once
#include "xtlm.h"

//! Forward declaration 
namespace xsc {
    class sim_cmdq;                  
    class sim_microblaze;           
    class sim_embedded_scheduler_hw;
    class sim_gpio_mb_base_addr;

    class sim_axi_intc;
    class sim_slice;    
    class sim_m2m;
}
class xtlm_simple_interconnect_model;

class sim_ert_ss : public sc_core::sc_module
{
    public:
        SC_HAS_PROCESS(sim_ert_ss);
        sim_ert_ss(sc_module_name, xsc::common_cpp::properties&);

        //! AXI lite interface fo register access...
        xtlm::xtlm_aximm_target_socket*  s_axi_ctrl_user_rd_socket;
        xtlm::xtlm_aximm_target_socket*  s_axi_ctrl_user_wr_socket;

        //! AXI interface for cmd queue access...
        xtlm::xtlm_aximm_target_socket*  s_axi_data_p2p_rd_socket;
        xtlm::xtlm_aximm_target_socket*  s_axi_data_p2p_wr_socket;

        //! MicroBlaze master AXI interface...
        xtlm::xtlm_aximm_initiator_socket*  maxi_lite_mb_rd_socket;
        xtlm::xtlm_aximm_initiator_socket*  maxi_lite_mb_wr_socket;

        //! KDMA master AXI interface...
        xtlm::xtlm_aximm_initiator_socket*  m_axi_data_m2m_rd_socket;
        xtlm::xtlm_aximm_initiator_socket*  m_axi_data_m2m_wr_socket;

        //! 128 CU interrupts...
        sc_in<sc_bv<128>>  interrupt_cu;
        sc_out<bool>       interrupt_m2m;

        //! Clock and Reset inputs
        sc_in<bool>   s_axi_ctrl_user_aclk;
        sc_in<bool>   s_axi_ctrl_user_aresetn;

        sc_in<bool>   s_axi_data_p2p_aclk;
        sc_in<bool>   s_axi_data_p2p_aresetn;

        sc_in<bool>   maxi_lite_mb_aresetn;
        sc_in<bool>   maxi_lite_mb_aclk;

        sc_in<bool>   m_axi_data_m2m_aresetn;
        sc_in<bool>   m_axi_data_m2m_aclk;

        static xsc::sim_microblaze* microblaze_instance();
    private:
        void create_subcore_modules();
        void bind_subcore_modules();

        //! Sub core SystemC modules
        xsc::sim_cmdq*                  m_cmdq;
        xsc::sim_microblaze*            m_microblaze;
        xsc::sim_embedded_scheduler_hw* m_embd_sch_hw;
        xsc::sim_gpio_mb_base_addr*     m_gpio_mb_base;
        xsc::sim_m2m*                   m_m2m;

        //! 4 CU Interrupt controllers
        xsc::sim_axi_intc*  m_cu_intc[4];
        xsc::sim_slice*     m_intr_slice;

        //! Microblaze interrupt controller
        xsc::sim_axi_intc*  m_mb_intc;

        //! Simple interconnects for host and microblaze 
        xtlm_simple_interconnect_model*  m_ctrl_icn;
        xtlm_simple_interconnect_model*  m_mblz_icn;

        //! sc_signal to bind in and out ports
        sc_signal<bool>   mb_irq_sig;
        sc_signal<bool>   m2m_irq_sig;
        sc_signal<bool>   mb_intr_sig[4];
        sc_signal<bool>   mb_intr_stub_sig[3];

        sc_vector<sc_signal<bool>>  intr_sig[4];            
        sc_signal<bool> irq_slotavailable_sig;

        //! Microblaze static instance 
        // Used for ERT firmware interface calls
        static xsc::sim_microblaze* microblaze_inst;
};
