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

#include<sstream>

#include "sim_cmdq.h"
#include "sim_slice.h"
#include "sim_axi_intc.h"
#include "sim_microblaze.h"
#include "sim_ert_ss.h"
#include "sim_gpio_mb_base_addr.h"
#include "sim_embedded_scheduler_hw.h"
#include "xtlm_simple_interconnect_model.h"
#include "sim_m2m.h"

std::string hex2dec(const std::string& num)
{
    std::stringstream ss; unsigned long long ll;
    ss << num; 
    ss >> std::hex >> ll;

    return std::to_string(ll);
}

using namespace xsc;

sim_ert_ss::sim_ert_ss(sc_module_name name, 
        xsc::common_cpp::properties& _properties)
:sc_module(name)
{
    s_axi_ctrl_user_rd_socket = new xtlm::xtlm_aximm_target_socket("ctrl_rd_socket", 32);
    s_axi_ctrl_user_wr_socket = new xtlm::xtlm_aximm_target_socket("ctrl_wr_socket", 32);

    s_axi_data_p2p_rd_socket = new xtlm::xtlm_aximm_target_socket("data_rd_socket", 32);
    s_axi_data_p2p_wr_socket = new xtlm::xtlm_aximm_target_socket("data_wr_socket", 32);

    maxi_lite_mb_rd_socket = new xtlm::xtlm_aximm_initiator_socket("mb_rd_socket", 32);
    maxi_lite_mb_wr_socket = new xtlm::xtlm_aximm_initiator_socket("mb_wr_socket", 32);

    m_axi_data_m2m_rd_socket = new xtlm::xtlm_aximm_initiator_socket("m2m_rd_socket", 32);
    m_axi_data_m2m_wr_socket = new xtlm::xtlm_aximm_initiator_socket("m2m_wr_socket", 32);

    for(int i = 0; i < 4; i++) {
        intr_sig[i].init(32);
    }

    create_subcore_modules();
    bind_subcore_modules();
}

void sim_ert_ss::create_subcore_modules()
{
    // initialize sim_embedded_scheduler_hw params
    xsc::common_cpp::properties embd_sch_hw_params;
    m_embd_sch_hw = new sim_embedded_scheduler_hw("embd_sch_hw", embd_sch_hw_params);

    // initialize sim_embedded_scheduler_sw params
    xsc::common_cpp::properties microblaze_params;
    m_microblaze = new sim_microblaze("microblaze", microblaze_params);
    microblaze_inst = m_microblaze;

    xsc::common_cpp::properties cmdq_params;
    cmdq_params.addLong("ERT_CQ_SIZE", hex2dec("0x10000")); //! 64KB
    m_cmdq = new sim_cmdq("cmdq", cmdq_params);

    //! gpio_mb_base
    xsc::common_cpp::properties gpio_params;
    gpio_params.addLong("ERT_MGMT_PF_base_addr", hex2dec("0x0")); 
    gpio_params.addLong("ERT_USER_PF_base_addr", hex2dec("0x0")); 
    m_gpio_mb_base = new sim_gpio_mb_base_addr("gpio_mb_base", gpio_params);

    //! CU interrupt properties
    //! Properties values are excracted from hardware bd
    xsc::common_cpp::properties cu_intr_params[4];
    for(int i = 0; i < 4; i++) {
        cu_intr_params[i].addLong("C_NUM_INTR_INPUTS", "32");
        cu_intr_params[i].addLong("C_KIND_OF_INTR", hex2dec("0x0")); //1=Edge 0=Level
        cu_intr_params[i].addLong("C_KIND_OF_EDGE", hex2dec("0xffffffff")); //1=Rising 0=Falling; Valid if C_KIND_OF_INTR=1s
        cu_intr_params[i].addLong("C_KIND_OF_LVL",  hex2dec("0xffffffff"));  //1=High 0=Low; Valid if C_KIND_OF_INTR=0s
        cu_intr_params[i].addLong("C_IRQ_IS_LEVEL", "1"); //0=Active Edge 1=Active Level
        cu_intr_params[i].addLong("C_IRQ_ACTIVE", "1"); //0=Falling/Low 1=Rising/High

        m_cu_intc[i] = new sim_axi_intc(sc_core::sc_gen_unique_name("cu_intc"), cu_intr_params[i]);
    }

    //! intr_slice
    xsc::common_cpp::properties cu_slice_params;
    m_intr_slice = new sim_slice("cu_intr_slice", cu_slice_params);

    //! Properties values are excracted from hardware bd
    xsc::common_cpp::properties mb_intc_params;
    mb_intc_params.addLong("C_NUM_INTR_INPUTS", "9");
    mb_intc_params.addLong("C_KIND_OF_INTR", hex2dec("0xFFFFFE14")); //1=Edge 0=Level
    mb_intc_params.addLong("C_KIND_OF_EDGE", hex2dec("0xffffffff")); //1=Rising 0=Falling; Valid if C_KIND_OF_INTR=1s
    mb_intc_params.addLong("C_KIND_OF_LVL",  hex2dec("0xffffffff"));  //1=High 0=Low; Valid if C_KIND_OF_INTR=0s
    mb_intc_params.addLong("C_IRQ_IS_LEVEL", "1"); //0=Active Edge 1=Active Level
    mb_intc_params.addLong("C_IRQ_ACTIVE", "1"); //0=Falling/Low 1=Rising/High

    m_mb_intc = new sim_axi_intc("mb_intc", mb_intc_params);

    //! ctrl_interconnect
    xsc::common_cpp::properties ctrl_icn_params;
    ctrl_icn_params.addLong("C_NUM_SI", "2");
    ctrl_icn_params.addLong("C_NUM_MI", "6");

    unsigned int num_slave = 2, num_master = 6;
    for(int i = 0; i < num_slave ;i++) {
        std::stringstream dw;
        dw <<"C_S0" << i << "_AXI_DATA_WIDTH";
        ctrl_icn_params.addLong(dw.str().c_str(), "32");

        std::stringstream aw;
        aw <<"C_S0" << i << "_AXI_ADDR_WIDTH";
        ctrl_icn_params.addLong(aw.str().c_str(), "64");
    }

    for(int i = 0; i < num_master ;i++) {
        std::stringstream dw;
        dw<< "C_M0" << i << "_AXI_DATA_WIDTH";
        ctrl_icn_params.addLong(dw.str().c_str(), "32");

        std::stringstream aw;
        aw<<"C_M0" << i << "_AXI_ADDR_WIDTH";
        ctrl_icn_params.addLong(aw.str().c_str(), "64");
    }

    for(int i = 0; i < num_master ;i++) {
        std::stringstream cn;
        for(int j = 0; j < num_slave ;j++) {
            cn.str("");
            cn << "C_M0" << i << "_S0" << j << "_CONNECTIVITY";
            ctrl_icn_params.addLong(cn.str().c_str(), "1");
        }
    }
	            
    ctrl_icn_params.addLong("C_ADDR_RANGES","1");

    //! embedded hw scheduler 0x10000 to 0x1ffff
    ctrl_icn_params.addLong("C_M00_A00_BASE_ADDRESS", hex2dec("0x10000"));
    ctrl_icn_params.addLong("C_M00_A00_ADDR_RANGE",   hex2dec("0xffff"));

    //! INTC CU_00 0x0000 to 0x0fff
    ctrl_icn_params.addLong("C_M01_A00_BASE_ADDRESS", hex2dec("0x0"));
    ctrl_icn_params.addLong("C_M01_A00_ADDR_RANGE",   hex2dec("0xfff"));

    //! INTC CU_01 0x1000 to 0x1fff
    ctrl_icn_params.addLong("C_M02_A00_BASE_ADDRESS", hex2dec("0x1000"));
    ctrl_icn_params.addLong("C_M02_A00_ADDR_RANGE",   hex2dec("0xfff"));

    //! INTC CU_02 0x2000 to 0x2fff
    ctrl_icn_params.addLong("C_M03_A00_BASE_ADDRESS", hex2dec("0x2000"));
    ctrl_icn_params.addLong("C_M03_A00_ADDR_RANGE",   hex2dec("0xfff"));

    //! INTC CU_03 0x3000 to 0x3fff
    ctrl_icn_params.addLong("C_M04_A00_BASE_ADDRESS", hex2dec("0x3000"));
    ctrl_icn_params.addLong("C_M04_A00_ADDR_RANGE",   hex2dec("0xfff"));

    //! KDMA  0x20000 to 0x2ffff
    ctrl_icn_params.addLong("C_M05_A00_BASE_ADDRESS", hex2dec("0x20000"));
    ctrl_icn_params.addLong("C_M05_A00_ADDR_RANGE",   hex2dec("0xffff"));

    m_ctrl_icn = new xtlm_simple_interconnect_model("ctrl_icn", ctrl_icn_params);

    //! mblz_icn
    xsc::common_cpp::properties mblz_icn_params;
    mblz_icn_params.addLong("C_NUM_SI", "1");
    mblz_icn_params.addLong("C_NUM_MI", "5");

    num_slave = 1; num_master = 5;
    for(int i = 0; i < num_slave ;i++) {
        std::stringstream dw;
        dw <<"C_S0" << i << "_AXI_DATA_WIDTH";
        mblz_icn_params.addLong(dw.str().c_str(), "32");

        std::stringstream aw;
        aw <<"C_S0" << i << "_AXI_ADDR_WIDTH";
        mblz_icn_params.addLong(aw.str().c_str(), "64");
    }

    for(int i = 0; i < num_master ;i++) {
        std::stringstream dw;
        dw<< "C_M0" << i << "_AXI_DATA_WIDTH";
        mblz_icn_params.addLong(dw.str().c_str(), "32");

        std::stringstream aw;
        aw<<"C_M0" << i << "_AXI_ADDR_WIDTH";
        mblz_icn_params.addLong(aw.str().c_str(), "64");
    }

    for(int i = 0; i < num_master ;i++) {
        std::stringstream cn;
        for(int j = 0; j < num_slave ;j++) {
            cn.str("");
            cn << "C_M0" << i << "_S0" << j << "_CONNECTIVITY";
            mblz_icn_params.addLong(cn.str().c_str(), "1");
        }
    }
	            
    mblz_icn_params.addLong("C_ADDR_RANGES","2");

    //! INTC CU_xx 0x0000 to 0x3fff
    mblz_icn_params.addLong("C_M00_A00_BASE_ADDRESS", hex2dec("0x0"));
    mblz_icn_params.addLong("C_M00_A00_ADDR_RANGE", hex2dec("0x3fff"));

    //! embedded hw scheduler 0x10000 to 0x1ffff
    mblz_icn_params.addLong("C_M00_A01_BASE_ADDRESS", hex2dec("0x10000"));
    mblz_icn_params.addLong("C_M00_A01_ADDR_RANGE", hex2dec("0x1ffff"));

    //! ERT INTC (Microblaze INTC) 0x1f20000 to 0x1f2ffff
    mblz_icn_params.addLong("C_M01_A00_BASE_ADDRESS", hex2dec("0x1f20000"));
    mblz_icn_params.addLong("C_M01_A00_ADDR_RANGE", hex2dec("0xffff"));

    //! Dummy parameter
    mblz_icn_params.addLong("C_M01_A01_BASE_ADDRESS", hex2dec("0x0"));
    mblz_icn_params.addLong("C_M01_A01_ADDR_RANGE", hex2dec("0x0"));

    //! m_axi_ctrl_user 0x800000 to 0x1dfffff
    mblz_icn_params.addLong("C_M02_A00_BASE_ADDRESS", hex2dec("0x1c000000"));
    mblz_icn_params.addLong("C_M02_A00_ADDR_RANGE", hex2dec("0x3fffffff"));

    //! Dummy parameter
    mblz_icn_params.addLong("C_M02_A01_BASE_ADDRESS", hex2dec("0x0"));
    mblz_icn_params.addLong("C_M02_A01_ADDR_RANGE", hex2dec("0x0"));

    //! saxi_cq 0x1f60000 to 0x1f6ffff
    mblz_icn_params.addLong("C_M03_A00_BASE_ADDRESS", hex2dec("0x1f60000"));
    mblz_icn_params.addLong("C_M03_A00_ADDR_RANGE", hex2dec("0xffff"));

    //! Dummy parameter
    mblz_icn_params.addLong("C_M03_A01_BASE_ADDRESS", hex2dec("0x0"));
    mblz_icn_params.addLong("C_M03_A01_ADDR_RANGE", hex2dec("0x0"));

    //! gpio_mb_base 0x1f30000 to 0x1f3ffff
    mblz_icn_params.addLong("C_M04_A00_BASE_ADDRESS", hex2dec("0x1f30000"));
    mblz_icn_params.addLong("C_M04_A00_ADDR_RANGE", hex2dec("0xffff"));

    //! Dummy parameter
    mblz_icn_params.addLong("C_M04_A01_BASE_ADDRESS", hex2dec("0x0"));
    mblz_icn_params.addLong("C_M04_A01_ADDR_RANGE", hex2dec("0x0"));


    m_mblz_icn = new xtlm_simple_interconnect_model("mblz_icn", mblz_icn_params);

    xsc::common_cpp::properties m2m_params;
    m_m2m = new xsc::sim_m2m("m2m", m2m_params);
}

void sim_ert_ss::bind_subcore_modules()
{
    //! ctrl_icn connections
    m_mblz_icn->initiator_rd_sockets[0]->bind(*m_ctrl_icn->target_rd_sockets[0]);
    m_mblz_icn->initiator_wr_sockets[0]->bind(*m_ctrl_icn->target_wr_sockets[0]);

    s_axi_ctrl_user_rd_socket->bind(*m_ctrl_icn->target_rd_sockets[1]);
    s_axi_ctrl_user_wr_socket->bind(*m_ctrl_icn->target_wr_sockets[1]);

    m_ctrl_icn->initiator_rd_sockets[0]->bind(*m_embd_sch_hw->host_rd_socket);
    m_ctrl_icn->initiator_wr_sockets[0]->bind(*m_embd_sch_hw->host_wr_socket);

    for(int i = 0; i < 4; i++) {
        m_ctrl_icn->initiator_rd_sockets[i + 1]->bind(*m_cu_intc[i]->s_axi_rd_socket);
        m_ctrl_icn->initiator_wr_sockets[i + 1]->bind(*m_cu_intc[i]->s_axi_wr_socket);
    }

    //kdma s_axi_ctrl connections
    m_ctrl_icn->initiator_rd_sockets[5]->bind(*m_m2m->s_axi_control_rd_socket);
    m_ctrl_icn->initiator_wr_sockets[5]->bind(*m_m2m->s_axi_control_wr_socket);

    s_axi_data_p2p_rd_socket->bind(*(m_cmdq->s_axi_data_p2p_rd_socket));
    s_axi_data_p2p_wr_socket->bind(*(m_cmdq->s_axi_data_p2p_wr_socket));

    //! Micoblaze to mblz_icn
    m_microblaze->maxi_lite_mb_rd_socket->bind(*m_mblz_icn->target_rd_sockets[0]);
    m_microblaze->maxi_lite_mb_wr_socket->bind(*m_mblz_icn->target_wr_sockets[0]);

    //! mblz_icn connections
    m_mblz_icn->initiator_rd_sockets[1]->bind(*m_mb_intc->s_axi_rd_socket);
    m_mblz_icn->initiator_wr_sockets[1]->bind(*m_mb_intc->s_axi_wr_socket);

    m_mblz_icn->initiator_rd_sockets[2]->bind(*maxi_lite_mb_rd_socket);
    m_mblz_icn->initiator_wr_sockets[2]->bind(*maxi_lite_mb_wr_socket);

    //! command queue connections...
    m_mblz_icn->initiator_rd_sockets[3]->bind(*(m_cmdq->saxi_cq_read_skt));
    m_mblz_icn->initiator_wr_sockets[3]->bind(*(m_cmdq->saxi_cq_write_skt));

    //! gpio_mb_base connections...
    m_mblz_icn->initiator_rd_sockets[4]->bind(*(m_gpio_mb_base->s_axi_rd_socket));
    m_mblz_icn->initiator_wr_sockets[4]->bind(*(m_gpio_mb_base->s_axi_wr_socket));

    //kdma connections
    m_m2m->m_axi_gmem_rd_socket->bind(*m_axi_data_m2m_rd_socket);
    m_m2m->m_axi_gmem_wr_socket->bind(*m_axi_data_m2m_wr_socket);

    m_m2m->ap_rst_n(m_axi_data_m2m_aresetn);
    m_m2m->ap_clk(m_axi_data_m2m_aclk);

    m_m2m->interrupt(m2m_irq_sig);

    //! interrupt_cu connections
    m_intr_slice->interrupt_cu(interrupt_cu);

    for(int i = 0; i < 4; i++) {
        m_intr_slice->intr_cu_32[i].bind(intr_sig[i]);
        m_cu_intc[i]->intr.bind(intr_sig[i]);
    }

    //! mb_intc connections
    m_embd_sch_hw->irq_slotavailable.bind(irq_slotavailable_sig);
    m_mb_intc->intr[0].bind(irq_slotavailable_sig);
    m_mb_intc->intr[1].bind(mb_intr_stub_sig[0]);
    m_mb_intc->intr[2].bind(m2m_irq_sig);
    m_mb_intc->intr[3].bind(mb_intr_stub_sig[1]);
    m_mb_intc->intr[4].bind(mb_intr_stub_sig[2]);

    for(int i = 0; i < 4; i++) {
        m_cu_intc[i]->irq.bind(mb_intr_sig[i]);
        m_mb_intc->intr[i + 5].bind(mb_intr_sig[i]);
    }

    //! mb_intc to m_microblaze irq
    m_mb_intc->irq(mb_irq_sig);
    m_microblaze->irq.bind(mb_irq_sig);

    //! clock and reset connections
    //embd_sch_hw
    m_embd_sch_hw->aclk(s_axi_ctrl_user_aclk);
    m_embd_sch_hw->aresetn(s_axi_ctrl_user_aresetn);

    //microblaze
    m_microblaze->maxi_lite_mb_aclk(maxi_lite_mb_aclk);   
    m_microblaze->maxi_lite_mb_aresetn(maxi_lite_mb_aresetn);

    //! cu_intc
    for(int i = 0; i < 4; i++) {
        m_cu_intc[i]->s_axi_aclk(s_axi_ctrl_user_aclk);
        m_cu_intc[i]->s_axi_aresetn(s_axi_ctrl_user_aresetn); 
    }

    //mb_intc
    m_mb_intc->s_axi_aclk(s_axi_ctrl_user_aclk);
    m_mb_intc->s_axi_aresetn(s_axi_ctrl_user_aresetn); 

    // gpio_mb_base
    m_gpio_mb_base->s_axi_aclk(s_axi_ctrl_user_aclk);
    m_gpio_mb_base->s_axi_aresetn(s_axi_ctrl_user_aresetn); 
}

xsc::sim_microblaze* sim_ert_ss::microblaze_instance()
{
    return microblaze_inst;
}

xsc::sim_microblaze* sim_ert_ss::microblaze_inst=nullptr;
