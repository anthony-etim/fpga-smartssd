// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "pfm_top_embedded_schedular_0_sc.h"

#include "pfm_top_embedded_schedular_0.h"

#include "sim_ert_ss.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
pfm_top_embedded_schedular_0::pfm_top_embedded_schedular_0(const sc_core::sc_module_name& nm) : pfm_top_embedded_schedular_0_sc(nm), interrupt_cu("interrupt_cu"), interrupt_m2m("interrupt_m2m"), s_axi_ctrl_user_aresetn("s_axi_ctrl_user_aresetn"), s_axi_data_p2p_aresetn("s_axi_data_p2p_aresetn"), maxi_lite_mb_aresetn("maxi_lite_mb_aresetn"), m_axi_data_m2m_aresetn("m_axi_data_m2m_aresetn"), s_axi_ctrl_user_aclk("s_axi_ctrl_user_aclk"), s_axi_data_p2p_aclk("s_axi_data_p2p_aclk"), maxi_lite_mb_aclk("maxi_lite_mb_aclk"), m_axi_data_m2m_aclk("m_axi_data_m2m_aclk"), s_axi_data_p2p_awaddr("s_axi_data_p2p_awaddr"), s_axi_data_p2p_awlen("s_axi_data_p2p_awlen"), s_axi_data_p2p_awsize("s_axi_data_p2p_awsize"), s_axi_data_p2p_awburst("s_axi_data_p2p_awburst"), s_axi_data_p2p_awlock("s_axi_data_p2p_awlock"), s_axi_data_p2p_awcache("s_axi_data_p2p_awcache"), s_axi_data_p2p_awprot("s_axi_data_p2p_awprot"), s_axi_data_p2p_awregion("s_axi_data_p2p_awregion"), s_axi_data_p2p_awqos("s_axi_data_p2p_awqos"), s_axi_data_p2p_awuser("s_axi_data_p2p_awuser"), s_axi_data_p2p_awvalid("s_axi_data_p2p_awvalid"), s_axi_data_p2p_awready("s_axi_data_p2p_awready"), s_axi_data_p2p_wdata("s_axi_data_p2p_wdata"), s_axi_data_p2p_wstrb("s_axi_data_p2p_wstrb"), s_axi_data_p2p_wlast("s_axi_data_p2p_wlast"), s_axi_data_p2p_wvalid("s_axi_data_p2p_wvalid"), s_axi_data_p2p_wready("s_axi_data_p2p_wready"), s_axi_data_p2p_bresp("s_axi_data_p2p_bresp"), s_axi_data_p2p_buser("s_axi_data_p2p_buser"), s_axi_data_p2p_bvalid("s_axi_data_p2p_bvalid"), s_axi_data_p2p_bready("s_axi_data_p2p_bready"), s_axi_data_p2p_araddr("s_axi_data_p2p_araddr"), s_axi_data_p2p_arlen("s_axi_data_p2p_arlen"), s_axi_data_p2p_arsize("s_axi_data_p2p_arsize"), s_axi_data_p2p_arburst("s_axi_data_p2p_arburst"), s_axi_data_p2p_arlock("s_axi_data_p2p_arlock"), s_axi_data_p2p_arcache("s_axi_data_p2p_arcache"), s_axi_data_p2p_arprot("s_axi_data_p2p_arprot"), s_axi_data_p2p_arregion("s_axi_data_p2p_arregion"), s_axi_data_p2p_arqos("s_axi_data_p2p_arqos"), s_axi_data_p2p_aruser("s_axi_data_p2p_aruser"), s_axi_data_p2p_arvalid("s_axi_data_p2p_arvalid"), s_axi_data_p2p_arready("s_axi_data_p2p_arready"), s_axi_data_p2p_rdata("s_axi_data_p2p_rdata"), s_axi_data_p2p_rresp("s_axi_data_p2p_rresp"), s_axi_data_p2p_rlast("s_axi_data_p2p_rlast"), s_axi_data_p2p_rvalid("s_axi_data_p2p_rvalid"), s_axi_data_p2p_rready("s_axi_data_p2p_rready"), maxi_lite_mb_awaddr("maxi_lite_mb_awaddr"), maxi_lite_mb_awprot("maxi_lite_mb_awprot"), maxi_lite_mb_awvalid("maxi_lite_mb_awvalid"), maxi_lite_mb_awready("maxi_lite_mb_awready"), maxi_lite_mb_wdata("maxi_lite_mb_wdata"), maxi_lite_mb_wstrb("maxi_lite_mb_wstrb"), maxi_lite_mb_wvalid("maxi_lite_mb_wvalid"), maxi_lite_mb_wready("maxi_lite_mb_wready"), maxi_lite_mb_bresp("maxi_lite_mb_bresp"), maxi_lite_mb_bvalid("maxi_lite_mb_bvalid"), maxi_lite_mb_bready("maxi_lite_mb_bready"), maxi_lite_mb_araddr("maxi_lite_mb_araddr"), maxi_lite_mb_arprot("maxi_lite_mb_arprot"), maxi_lite_mb_arvalid("maxi_lite_mb_arvalid"), maxi_lite_mb_arready("maxi_lite_mb_arready"), maxi_lite_mb_rdata("maxi_lite_mb_rdata"), maxi_lite_mb_rresp("maxi_lite_mb_rresp"), maxi_lite_mb_rvalid("maxi_lite_mb_rvalid"), maxi_lite_mb_rready("maxi_lite_mb_rready"), m_axi_data_m2m_awid("m_axi_data_m2m_awid"), m_axi_data_m2m_awaddr("m_axi_data_m2m_awaddr"), m_axi_data_m2m_awlen("m_axi_data_m2m_awlen"), m_axi_data_m2m_awsize("m_axi_data_m2m_awsize"), m_axi_data_m2m_awburst("m_axi_data_m2m_awburst"), m_axi_data_m2m_awlock("m_axi_data_m2m_awlock"), m_axi_data_m2m_awcache("m_axi_data_m2m_awcache"), m_axi_data_m2m_awprot("m_axi_data_m2m_awprot"), m_axi_data_m2m_awqos("m_axi_data_m2m_awqos"), m_axi_data_m2m_awuser("m_axi_data_m2m_awuser"), m_axi_data_m2m_awvalid("m_axi_data_m2m_awvalid"), m_axi_data_m2m_awready("m_axi_data_m2m_awready"), m_axi_data_m2m_wdata("m_axi_data_m2m_wdata"), m_axi_data_m2m_wstrb("m_axi_data_m2m_wstrb"), m_axi_data_m2m_wlast("m_axi_data_m2m_wlast"), m_axi_data_m2m_wuser("m_axi_data_m2m_wuser"), m_axi_data_m2m_wvalid("m_axi_data_m2m_wvalid"), m_axi_data_m2m_wready("m_axi_data_m2m_wready"), m_axi_data_m2m_bid("m_axi_data_m2m_bid"), m_axi_data_m2m_bresp("m_axi_data_m2m_bresp"), m_axi_data_m2m_buser("m_axi_data_m2m_buser"), m_axi_data_m2m_bvalid("m_axi_data_m2m_bvalid"), m_axi_data_m2m_bready("m_axi_data_m2m_bready"), m_axi_data_m2m_arid("m_axi_data_m2m_arid"), m_axi_data_m2m_araddr("m_axi_data_m2m_araddr"), m_axi_data_m2m_arlen("m_axi_data_m2m_arlen"), m_axi_data_m2m_arsize("m_axi_data_m2m_arsize"), m_axi_data_m2m_arburst("m_axi_data_m2m_arburst"), m_axi_data_m2m_arlock("m_axi_data_m2m_arlock"), m_axi_data_m2m_arcache("m_axi_data_m2m_arcache"), m_axi_data_m2m_arprot("m_axi_data_m2m_arprot"), m_axi_data_m2m_arqos("m_axi_data_m2m_arqos"), m_axi_data_m2m_aruser("m_axi_data_m2m_aruser"), m_axi_data_m2m_arvalid("m_axi_data_m2m_arvalid"), m_axi_data_m2m_arready("m_axi_data_m2m_arready"), m_axi_data_m2m_rid("m_axi_data_m2m_rid"), m_axi_data_m2m_rdata("m_axi_data_m2m_rdata"), m_axi_data_m2m_rresp("m_axi_data_m2m_rresp"), m_axi_data_m2m_rlast("m_axi_data_m2m_rlast"), m_axi_data_m2m_ruser("m_axi_data_m2m_ruser"), m_axi_data_m2m_rvalid("m_axi_data_m2m_rvalid"), m_axi_data_m2m_rready("m_axi_data_m2m_rready"), s_axi_ctrl_user_awaddr("s_axi_ctrl_user_awaddr"), s_axi_ctrl_user_awprot("s_axi_ctrl_user_awprot"), s_axi_ctrl_user_awvalid("s_axi_ctrl_user_awvalid"), s_axi_ctrl_user_awready("s_axi_ctrl_user_awready"), s_axi_ctrl_user_wdata("s_axi_ctrl_user_wdata"), s_axi_ctrl_user_wstrb("s_axi_ctrl_user_wstrb"), s_axi_ctrl_user_wvalid("s_axi_ctrl_user_wvalid"), s_axi_ctrl_user_wready("s_axi_ctrl_user_wready"), s_axi_ctrl_user_bresp("s_axi_ctrl_user_bresp"), s_axi_ctrl_user_bvalid("s_axi_ctrl_user_bvalid"), s_axi_ctrl_user_bready("s_axi_ctrl_user_bready"), s_axi_ctrl_user_araddr("s_axi_ctrl_user_araddr"), s_axi_ctrl_user_arprot("s_axi_ctrl_user_arprot"), s_axi_ctrl_user_arvalid("s_axi_ctrl_user_arvalid"), s_axi_ctrl_user_arready("s_axi_ctrl_user_arready"), s_axi_ctrl_user_rdata("s_axi_ctrl_user_rdata"), s_axi_ctrl_user_rresp("s_axi_ctrl_user_rresp"), s_axi_ctrl_user_rvalid("s_axi_ctrl_user_rvalid"), s_axi_ctrl_user_rready("s_axi_ctrl_user_rready")
{

  // initialize pins
  mp_impl->interrupt_cu(interrupt_cu);
  mp_impl->interrupt_m2m(interrupt_m2m);
  mp_impl->s_axi_ctrl_user_aresetn(s_axi_ctrl_user_aresetn);
  mp_impl->s_axi_data_p2p_aresetn(s_axi_data_p2p_aresetn);
  mp_impl->maxi_lite_mb_aresetn(maxi_lite_mb_aresetn);
  mp_impl->m_axi_data_m2m_aresetn(m_axi_data_m2m_aresetn);
  mp_impl->s_axi_ctrl_user_aclk(s_axi_ctrl_user_aclk);
  mp_impl->s_axi_data_p2p_aclk(s_axi_data_p2p_aclk);
  mp_impl->maxi_lite_mb_aclk(maxi_lite_mb_aclk);
  mp_impl->m_axi_data_m2m_aclk(m_axi_data_m2m_aclk);

  // initialize transactors
  mp_s_axi_ctrl_user_transactor = NULL;
  mp_s_axi_data_p2p_transactor = NULL;
  mp_maxi_lite_mb_transactor = NULL;
  mp_m_axi_data_m2m_transactor = NULL;

  // initialize socket stubs

}

void pfm_top_embedded_schedular_0::before_end_of_elaboration()
{
  // configure 's_axi_ctrl_user' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "s_axi_ctrl_user_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 's_axi_ctrl_user' transactor parameters
    xsc::common_cpp::properties s_axi_ctrl_user_transactor_param_props;
    s_axi_ctrl_user_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    s_axi_ctrl_user_transactor_param_props.addLong("WIZ_NUM_REG", "4");
    s_axi_ctrl_user_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("DATA_WIDTH", "32");
    s_axi_ctrl_user_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_ctrl_user_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("ADDR_WIDTH", "64");
    s_axi_ctrl_user_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("BUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_BURST", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_LOCK", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_PROT", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_CACHE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_QOS", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_REGION", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    s_axi_ctrl_user_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_SIZE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_RESET", "0");
    s_axi_ctrl_user_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_ctrl_user_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    s_axi_ctrl_user_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_ctrl_user_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    s_axi_ctrl_user_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_ctrl_user_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("s_axi_ctrl_user_transactor", s_axi_ctrl_user_transactor_param_props);

    // s_axi_ctrl_user' transactor ports

    mp_s_axi_ctrl_user_transactor->AWADDR(s_axi_ctrl_user_awaddr);
    mp_s_axi_ctrl_user_transactor->AWPROT(s_axi_ctrl_user_awprot);
    mp_s_axi_ctrl_user_transactor->AWVALID(s_axi_ctrl_user_awvalid);
    mp_s_axi_ctrl_user_transactor->AWREADY(s_axi_ctrl_user_awready);
    mp_s_axi_ctrl_user_transactor->WDATA(s_axi_ctrl_user_wdata);
    mp_s_axi_ctrl_user_transactor->WSTRB(s_axi_ctrl_user_wstrb);
    mp_s_axi_ctrl_user_transactor->WVALID(s_axi_ctrl_user_wvalid);
    mp_s_axi_ctrl_user_transactor->WREADY(s_axi_ctrl_user_wready);
    mp_s_axi_ctrl_user_transactor->BRESP(s_axi_ctrl_user_bresp);
    mp_s_axi_ctrl_user_transactor->BVALID(s_axi_ctrl_user_bvalid);
    mp_s_axi_ctrl_user_transactor->BREADY(s_axi_ctrl_user_bready);
    mp_s_axi_ctrl_user_transactor->ARADDR(s_axi_ctrl_user_araddr);
    mp_s_axi_ctrl_user_transactor->ARPROT(s_axi_ctrl_user_arprot);
    mp_s_axi_ctrl_user_transactor->ARVALID(s_axi_ctrl_user_arvalid);
    mp_s_axi_ctrl_user_transactor->ARREADY(s_axi_ctrl_user_arready);
    mp_s_axi_ctrl_user_transactor->RDATA(s_axi_ctrl_user_rdata);
    mp_s_axi_ctrl_user_transactor->RRESP(s_axi_ctrl_user_rresp);
    mp_s_axi_ctrl_user_transactor->RVALID(s_axi_ctrl_user_rvalid);
    mp_s_axi_ctrl_user_transactor->RREADY(s_axi_ctrl_user_rready);
    mp_s_axi_ctrl_user_transactor->CLK(s_axi_ctrl_user_aclk);
    m_s_axi_ctrl_user_transactor_rst_signal.write(1);
    mp_s_axi_ctrl_user_transactor->RST(m_s_axi_ctrl_user_transactor_rst_signal);

    // s_axi_ctrl_user' transactor sockets

    mp_impl->s_axi_ctrl_user_rd_socket->bind(*(mp_s_axi_ctrl_user_transactor->rd_socket));
    mp_impl->s_axi_ctrl_user_wr_socket->bind(*(mp_s_axi_ctrl_user_transactor->wr_socket));
  }
  else
  {
  }

  // configure 's_axi_data_p2p' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "s_axi_data_p2p_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 's_axi_data_p2p' transactor parameters
    xsc::common_cpp::properties s_axi_data_p2p_transactor_param_props;
    s_axi_data_p2p_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    s_axi_data_p2p_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    s_axi_data_p2p_transactor_param_props.addLong("DATA_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_data_p2p_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("ADDR_WIDTH", "64");
    s_axi_data_p2p_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("BUSER_WIDTH", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_BURST", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_LOCK", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_PROT", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_CACHE", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_QOS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_REGION", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    s_axi_data_p2p_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_data_p2p_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_SIZE", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_RESET", "0");
    s_axi_data_p2p_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_data_p2p_transactor_param_props.addString("PROTOCOL", "AXI4");
    s_axi_data_p2p_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_data_p2p_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    s_axi_data_p2p_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_data_p2p_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,32,1,1,32,1>("s_axi_data_p2p_transactor", s_axi_data_p2p_transactor_param_props);

    // s_axi_data_p2p' transactor ports

    mp_s_axi_data_p2p_transactor->AWADDR(s_axi_data_p2p_awaddr);
    mp_s_axi_data_p2p_transactor->AWLEN(s_axi_data_p2p_awlen);
    mp_s_axi_data_p2p_transactor->AWSIZE(s_axi_data_p2p_awsize);
    mp_s_axi_data_p2p_transactor->AWBURST(s_axi_data_p2p_awburst);
    mp_s_axi_data_p2p_transactor->AWLOCK(s_axi_data_p2p_awlock);
    mp_s_axi_data_p2p_transactor->AWCACHE(s_axi_data_p2p_awcache);
    mp_s_axi_data_p2p_transactor->AWPROT(s_axi_data_p2p_awprot);
    mp_s_axi_data_p2p_transactor->AWREGION(s_axi_data_p2p_awregion);
    mp_s_axi_data_p2p_transactor->AWQOS(s_axi_data_p2p_awqos);
    mp_s_axi_data_p2p_transactor->AWUSER(s_axi_data_p2p_awuser);
    mp_s_axi_data_p2p_transactor->AWVALID(s_axi_data_p2p_awvalid);
    mp_s_axi_data_p2p_transactor->AWREADY(s_axi_data_p2p_awready);
    mp_s_axi_data_p2p_transactor->WDATA(s_axi_data_p2p_wdata);
    mp_s_axi_data_p2p_transactor->WSTRB(s_axi_data_p2p_wstrb);
    mp_s_axi_data_p2p_transactor->WLAST(s_axi_data_p2p_wlast);
    mp_s_axi_data_p2p_transactor->WVALID(s_axi_data_p2p_wvalid);
    mp_s_axi_data_p2p_transactor->WREADY(s_axi_data_p2p_wready);
    mp_s_axi_data_p2p_transactor->BRESP(s_axi_data_p2p_bresp);
    mp_s_axi_data_p2p_transactor->BUSER(s_axi_data_p2p_buser);
    mp_s_axi_data_p2p_transactor->BVALID(s_axi_data_p2p_bvalid);
    mp_s_axi_data_p2p_transactor->BREADY(s_axi_data_p2p_bready);
    mp_s_axi_data_p2p_transactor->ARADDR(s_axi_data_p2p_araddr);
    mp_s_axi_data_p2p_transactor->ARLEN(s_axi_data_p2p_arlen);
    mp_s_axi_data_p2p_transactor->ARSIZE(s_axi_data_p2p_arsize);
    mp_s_axi_data_p2p_transactor->ARBURST(s_axi_data_p2p_arburst);
    mp_s_axi_data_p2p_transactor->ARLOCK(s_axi_data_p2p_arlock);
    mp_s_axi_data_p2p_transactor->ARCACHE(s_axi_data_p2p_arcache);
    mp_s_axi_data_p2p_transactor->ARPROT(s_axi_data_p2p_arprot);
    mp_s_axi_data_p2p_transactor->ARREGION(s_axi_data_p2p_arregion);
    mp_s_axi_data_p2p_transactor->ARQOS(s_axi_data_p2p_arqos);
    mp_s_axi_data_p2p_transactor->ARUSER(s_axi_data_p2p_aruser);
    mp_s_axi_data_p2p_transactor->ARVALID(s_axi_data_p2p_arvalid);
    mp_s_axi_data_p2p_transactor->ARREADY(s_axi_data_p2p_arready);
    mp_s_axi_data_p2p_transactor->RDATA(s_axi_data_p2p_rdata);
    mp_s_axi_data_p2p_transactor->RRESP(s_axi_data_p2p_rresp);
    mp_s_axi_data_p2p_transactor->RLAST(s_axi_data_p2p_rlast);
    mp_s_axi_data_p2p_transactor->RVALID(s_axi_data_p2p_rvalid);
    mp_s_axi_data_p2p_transactor->RREADY(s_axi_data_p2p_rready);
    mp_s_axi_data_p2p_transactor->CLK(s_axi_data_p2p_aclk);
    m_s_axi_data_p2p_transactor_rst_signal.write(1);
    mp_s_axi_data_p2p_transactor->RST(m_s_axi_data_p2p_transactor_rst_signal);

    // s_axi_data_p2p' transactor sockets

    mp_impl->s_axi_data_p2p_rd_socket->bind(*(mp_s_axi_data_p2p_transactor->rd_socket));
    mp_impl->s_axi_data_p2p_wr_socket->bind(*(mp_s_axi_data_p2p_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'maxi_lite_mb' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "maxi_lite_mb_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'maxi_lite_mb' transactor parameters
    xsc::common_cpp::properties maxi_lite_mb_transactor_param_props;
    maxi_lite_mb_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    maxi_lite_mb_transactor_param_props.addLong("ID_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ADDR_WIDTH", "64");
    maxi_lite_mb_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("BUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_LOCK", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_PROT", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_CACHE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_QOS", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_REGION", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_WSTRB", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_SIZE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RESET", "0");
    maxi_lite_mb_transactor_param_props.addFloat("PHASE", "0.0");
    maxi_lite_mb_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    maxi_lite_mb_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    maxi_lite_mb_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    maxi_lite_mb_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_maxi_lite_mb_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("maxi_lite_mb_transactor", maxi_lite_mb_transactor_param_props);

    // maxi_lite_mb' transactor ports

    mp_maxi_lite_mb_transactor->AWADDR(maxi_lite_mb_awaddr);
    mp_maxi_lite_mb_transactor->AWPROT(maxi_lite_mb_awprot);
    mp_maxi_lite_mb_transactor->AWVALID(maxi_lite_mb_awvalid);
    mp_maxi_lite_mb_transactor->AWREADY(maxi_lite_mb_awready);
    mp_maxi_lite_mb_transactor->WDATA(maxi_lite_mb_wdata);
    mp_maxi_lite_mb_transactor->WSTRB(maxi_lite_mb_wstrb);
    mp_maxi_lite_mb_transactor->WVALID(maxi_lite_mb_wvalid);
    mp_maxi_lite_mb_transactor->WREADY(maxi_lite_mb_wready);
    mp_maxi_lite_mb_transactor->BRESP(maxi_lite_mb_bresp);
    mp_maxi_lite_mb_transactor->BVALID(maxi_lite_mb_bvalid);
    mp_maxi_lite_mb_transactor->BREADY(maxi_lite_mb_bready);
    mp_maxi_lite_mb_transactor->ARADDR(maxi_lite_mb_araddr);
    mp_maxi_lite_mb_transactor->ARPROT(maxi_lite_mb_arprot);
    mp_maxi_lite_mb_transactor->ARVALID(maxi_lite_mb_arvalid);
    mp_maxi_lite_mb_transactor->ARREADY(maxi_lite_mb_arready);
    mp_maxi_lite_mb_transactor->RDATA(maxi_lite_mb_rdata);
    mp_maxi_lite_mb_transactor->RRESP(maxi_lite_mb_rresp);
    mp_maxi_lite_mb_transactor->RVALID(maxi_lite_mb_rvalid);
    mp_maxi_lite_mb_transactor->RREADY(maxi_lite_mb_rready);
    mp_maxi_lite_mb_transactor->CLK(maxi_lite_mb_aclk);
    m_maxi_lite_mb_transactor_rst_signal.write(1);
    mp_maxi_lite_mb_transactor->RST(m_maxi_lite_mb_transactor_rst_signal);

    // maxi_lite_mb' transactor sockets

    mp_impl->maxi_lite_mb_rd_socket->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_impl->maxi_lite_mb_wr_socket->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'm_axi_data_m2m' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "m_axi_data_m2m_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'm_axi_data_m2m' transactor parameters
    xsc::common_cpp::properties m_axi_data_m2m_transactor_param_props;
    m_axi_data_m2m_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    m_axi_data_m2m_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    m_axi_data_m2m_transactor_param_props.addLong("DATA_WIDTH", "32");
    m_axi_data_m2m_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    m_axi_data_m2m_transactor_param_props.addLong("ID_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("ADDR_WIDTH", "64");
    m_axi_data_m2m_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("WUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("RUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("BUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_BURST", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_LOCK", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_PROT", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_CACHE", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_QOS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_REGION", "0");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_WSTRB", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_BRESP", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_RRESP", "1");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    m_axi_data_m2m_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    m_axi_data_m2m_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_SIZE", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_RESET", "0");
    m_axi_data_m2m_transactor_param_props.addFloat("PHASE", "0.0");
    m_axi_data_m2m_transactor_param_props.addString("PROTOCOL", "AXI4");
    m_axi_data_m2m_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    m_axi_data_m2m_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    m_axi_data_m2m_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_m_axi_data_m2m_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("m_axi_data_m2m_transactor", m_axi_data_m2m_transactor_param_props);

    // m_axi_data_m2m' transactor ports

    mp_m_axi_data_m2m_transactor->AWID(m_axi_data_m2m_awid);
    mp_m_axi_data_m2m_transactor->AWADDR(m_axi_data_m2m_awaddr);
    mp_m_axi_data_m2m_transactor->AWLEN(m_axi_data_m2m_awlen);
    mp_m_axi_data_m2m_transactor->AWSIZE(m_axi_data_m2m_awsize);
    mp_m_axi_data_m2m_transactor->AWBURST(m_axi_data_m2m_awburst);
    mp_m_axi_data_m2m_transactor->AWLOCK(m_axi_data_m2m_awlock);
    mp_m_axi_data_m2m_transactor->AWCACHE(m_axi_data_m2m_awcache);
    mp_m_axi_data_m2m_transactor->AWPROT(m_axi_data_m2m_awprot);
    mp_m_axi_data_m2m_transactor->AWQOS(m_axi_data_m2m_awqos);
    mp_m_axi_data_m2m_transactor->AWUSER(m_axi_data_m2m_awuser);
    mp_m_axi_data_m2m_transactor->AWVALID(m_axi_data_m2m_awvalid);
    mp_m_axi_data_m2m_transactor->AWREADY(m_axi_data_m2m_awready);
    mp_m_axi_data_m2m_transactor->WDATA(m_axi_data_m2m_wdata);
    mp_m_axi_data_m2m_transactor->WSTRB(m_axi_data_m2m_wstrb);
    mp_m_axi_data_m2m_transactor->WLAST(m_axi_data_m2m_wlast);
    mp_m_axi_data_m2m_transactor->WUSER(m_axi_data_m2m_wuser);
    mp_m_axi_data_m2m_transactor->WVALID(m_axi_data_m2m_wvalid);
    mp_m_axi_data_m2m_transactor->WREADY(m_axi_data_m2m_wready);
    mp_m_axi_data_m2m_transactor->BID(m_axi_data_m2m_bid);
    mp_m_axi_data_m2m_transactor->BRESP(m_axi_data_m2m_bresp);
    mp_m_axi_data_m2m_transactor->BUSER(m_axi_data_m2m_buser);
    mp_m_axi_data_m2m_transactor->BVALID(m_axi_data_m2m_bvalid);
    mp_m_axi_data_m2m_transactor->BREADY(m_axi_data_m2m_bready);
    mp_m_axi_data_m2m_transactor->ARID(m_axi_data_m2m_arid);
    mp_m_axi_data_m2m_transactor->ARADDR(m_axi_data_m2m_araddr);
    mp_m_axi_data_m2m_transactor->ARLEN(m_axi_data_m2m_arlen);
    mp_m_axi_data_m2m_transactor->ARSIZE(m_axi_data_m2m_arsize);
    mp_m_axi_data_m2m_transactor->ARBURST(m_axi_data_m2m_arburst);
    mp_m_axi_data_m2m_transactor->ARLOCK(m_axi_data_m2m_arlock);
    mp_m_axi_data_m2m_transactor->ARCACHE(m_axi_data_m2m_arcache);
    mp_m_axi_data_m2m_transactor->ARPROT(m_axi_data_m2m_arprot);
    mp_m_axi_data_m2m_transactor->ARQOS(m_axi_data_m2m_arqos);
    mp_m_axi_data_m2m_transactor->ARUSER(m_axi_data_m2m_aruser);
    mp_m_axi_data_m2m_transactor->ARVALID(m_axi_data_m2m_arvalid);
    mp_m_axi_data_m2m_transactor->ARREADY(m_axi_data_m2m_arready);
    mp_m_axi_data_m2m_transactor->RID(m_axi_data_m2m_rid);
    mp_m_axi_data_m2m_transactor->RDATA(m_axi_data_m2m_rdata);
    mp_m_axi_data_m2m_transactor->RRESP(m_axi_data_m2m_rresp);
    mp_m_axi_data_m2m_transactor->RLAST(m_axi_data_m2m_rlast);
    mp_m_axi_data_m2m_transactor->RUSER(m_axi_data_m2m_ruser);
    mp_m_axi_data_m2m_transactor->RVALID(m_axi_data_m2m_rvalid);
    mp_m_axi_data_m2m_transactor->RREADY(m_axi_data_m2m_rready);
    mp_m_axi_data_m2m_transactor->CLK(m_axi_data_m2m_aclk);
    m_m_axi_data_m2m_transactor_rst_signal.write(1);
    mp_m_axi_data_m2m_transactor->RST(m_m_axi_data_m2m_transactor_rst_signal);

    // m_axi_data_m2m' transactor sockets

    mp_impl->m_axi_data_m2m_rd_socket->bind(*(mp_m_axi_data_m2m_transactor->rd_socket));
    mp_impl->m_axi_data_m2m_wr_socket->bind(*(mp_m_axi_data_m2m_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
pfm_top_embedded_schedular_0::pfm_top_embedded_schedular_0(const sc_core::sc_module_name& nm) : pfm_top_embedded_schedular_0_sc(nm), interrupt_cu("interrupt_cu"), interrupt_m2m("interrupt_m2m"), s_axi_ctrl_user_aresetn("s_axi_ctrl_user_aresetn"), s_axi_data_p2p_aresetn("s_axi_data_p2p_aresetn"), maxi_lite_mb_aresetn("maxi_lite_mb_aresetn"), m_axi_data_m2m_aresetn("m_axi_data_m2m_aresetn"), s_axi_ctrl_user_aclk("s_axi_ctrl_user_aclk"), s_axi_data_p2p_aclk("s_axi_data_p2p_aclk"), maxi_lite_mb_aclk("maxi_lite_mb_aclk"), m_axi_data_m2m_aclk("m_axi_data_m2m_aclk"), s_axi_data_p2p_awaddr("s_axi_data_p2p_awaddr"), s_axi_data_p2p_awlen("s_axi_data_p2p_awlen"), s_axi_data_p2p_awsize("s_axi_data_p2p_awsize"), s_axi_data_p2p_awburst("s_axi_data_p2p_awburst"), s_axi_data_p2p_awlock("s_axi_data_p2p_awlock"), s_axi_data_p2p_awcache("s_axi_data_p2p_awcache"), s_axi_data_p2p_awprot("s_axi_data_p2p_awprot"), s_axi_data_p2p_awregion("s_axi_data_p2p_awregion"), s_axi_data_p2p_awqos("s_axi_data_p2p_awqos"), s_axi_data_p2p_awuser("s_axi_data_p2p_awuser"), s_axi_data_p2p_awvalid("s_axi_data_p2p_awvalid"), s_axi_data_p2p_awready("s_axi_data_p2p_awready"), s_axi_data_p2p_wdata("s_axi_data_p2p_wdata"), s_axi_data_p2p_wstrb("s_axi_data_p2p_wstrb"), s_axi_data_p2p_wlast("s_axi_data_p2p_wlast"), s_axi_data_p2p_wvalid("s_axi_data_p2p_wvalid"), s_axi_data_p2p_wready("s_axi_data_p2p_wready"), s_axi_data_p2p_bresp("s_axi_data_p2p_bresp"), s_axi_data_p2p_buser("s_axi_data_p2p_buser"), s_axi_data_p2p_bvalid("s_axi_data_p2p_bvalid"), s_axi_data_p2p_bready("s_axi_data_p2p_bready"), s_axi_data_p2p_araddr("s_axi_data_p2p_araddr"), s_axi_data_p2p_arlen("s_axi_data_p2p_arlen"), s_axi_data_p2p_arsize("s_axi_data_p2p_arsize"), s_axi_data_p2p_arburst("s_axi_data_p2p_arburst"), s_axi_data_p2p_arlock("s_axi_data_p2p_arlock"), s_axi_data_p2p_arcache("s_axi_data_p2p_arcache"), s_axi_data_p2p_arprot("s_axi_data_p2p_arprot"), s_axi_data_p2p_arregion("s_axi_data_p2p_arregion"), s_axi_data_p2p_arqos("s_axi_data_p2p_arqos"), s_axi_data_p2p_aruser("s_axi_data_p2p_aruser"), s_axi_data_p2p_arvalid("s_axi_data_p2p_arvalid"), s_axi_data_p2p_arready("s_axi_data_p2p_arready"), s_axi_data_p2p_rdata("s_axi_data_p2p_rdata"), s_axi_data_p2p_rresp("s_axi_data_p2p_rresp"), s_axi_data_p2p_rlast("s_axi_data_p2p_rlast"), s_axi_data_p2p_rvalid("s_axi_data_p2p_rvalid"), s_axi_data_p2p_rready("s_axi_data_p2p_rready"), maxi_lite_mb_awaddr("maxi_lite_mb_awaddr"), maxi_lite_mb_awprot("maxi_lite_mb_awprot"), maxi_lite_mb_awvalid("maxi_lite_mb_awvalid"), maxi_lite_mb_awready("maxi_lite_mb_awready"), maxi_lite_mb_wdata("maxi_lite_mb_wdata"), maxi_lite_mb_wstrb("maxi_lite_mb_wstrb"), maxi_lite_mb_wvalid("maxi_lite_mb_wvalid"), maxi_lite_mb_wready("maxi_lite_mb_wready"), maxi_lite_mb_bresp("maxi_lite_mb_bresp"), maxi_lite_mb_bvalid("maxi_lite_mb_bvalid"), maxi_lite_mb_bready("maxi_lite_mb_bready"), maxi_lite_mb_araddr("maxi_lite_mb_araddr"), maxi_lite_mb_arprot("maxi_lite_mb_arprot"), maxi_lite_mb_arvalid("maxi_lite_mb_arvalid"), maxi_lite_mb_arready("maxi_lite_mb_arready"), maxi_lite_mb_rdata("maxi_lite_mb_rdata"), maxi_lite_mb_rresp("maxi_lite_mb_rresp"), maxi_lite_mb_rvalid("maxi_lite_mb_rvalid"), maxi_lite_mb_rready("maxi_lite_mb_rready"), m_axi_data_m2m_awid("m_axi_data_m2m_awid"), m_axi_data_m2m_awaddr("m_axi_data_m2m_awaddr"), m_axi_data_m2m_awlen("m_axi_data_m2m_awlen"), m_axi_data_m2m_awsize("m_axi_data_m2m_awsize"), m_axi_data_m2m_awburst("m_axi_data_m2m_awburst"), m_axi_data_m2m_awlock("m_axi_data_m2m_awlock"), m_axi_data_m2m_awcache("m_axi_data_m2m_awcache"), m_axi_data_m2m_awprot("m_axi_data_m2m_awprot"), m_axi_data_m2m_awqos("m_axi_data_m2m_awqos"), m_axi_data_m2m_awuser("m_axi_data_m2m_awuser"), m_axi_data_m2m_awvalid("m_axi_data_m2m_awvalid"), m_axi_data_m2m_awready("m_axi_data_m2m_awready"), m_axi_data_m2m_wdata("m_axi_data_m2m_wdata"), m_axi_data_m2m_wstrb("m_axi_data_m2m_wstrb"), m_axi_data_m2m_wlast("m_axi_data_m2m_wlast"), m_axi_data_m2m_wuser("m_axi_data_m2m_wuser"), m_axi_data_m2m_wvalid("m_axi_data_m2m_wvalid"), m_axi_data_m2m_wready("m_axi_data_m2m_wready"), m_axi_data_m2m_bid("m_axi_data_m2m_bid"), m_axi_data_m2m_bresp("m_axi_data_m2m_bresp"), m_axi_data_m2m_buser("m_axi_data_m2m_buser"), m_axi_data_m2m_bvalid("m_axi_data_m2m_bvalid"), m_axi_data_m2m_bready("m_axi_data_m2m_bready"), m_axi_data_m2m_arid("m_axi_data_m2m_arid"), m_axi_data_m2m_araddr("m_axi_data_m2m_araddr"), m_axi_data_m2m_arlen("m_axi_data_m2m_arlen"), m_axi_data_m2m_arsize("m_axi_data_m2m_arsize"), m_axi_data_m2m_arburst("m_axi_data_m2m_arburst"), m_axi_data_m2m_arlock("m_axi_data_m2m_arlock"), m_axi_data_m2m_arcache("m_axi_data_m2m_arcache"), m_axi_data_m2m_arprot("m_axi_data_m2m_arprot"), m_axi_data_m2m_arqos("m_axi_data_m2m_arqos"), m_axi_data_m2m_aruser("m_axi_data_m2m_aruser"), m_axi_data_m2m_arvalid("m_axi_data_m2m_arvalid"), m_axi_data_m2m_arready("m_axi_data_m2m_arready"), m_axi_data_m2m_rid("m_axi_data_m2m_rid"), m_axi_data_m2m_rdata("m_axi_data_m2m_rdata"), m_axi_data_m2m_rresp("m_axi_data_m2m_rresp"), m_axi_data_m2m_rlast("m_axi_data_m2m_rlast"), m_axi_data_m2m_ruser("m_axi_data_m2m_ruser"), m_axi_data_m2m_rvalid("m_axi_data_m2m_rvalid"), m_axi_data_m2m_rready("m_axi_data_m2m_rready"), s_axi_ctrl_user_awaddr("s_axi_ctrl_user_awaddr"), s_axi_ctrl_user_awprot("s_axi_ctrl_user_awprot"), s_axi_ctrl_user_awvalid("s_axi_ctrl_user_awvalid"), s_axi_ctrl_user_awready("s_axi_ctrl_user_awready"), s_axi_ctrl_user_wdata("s_axi_ctrl_user_wdata"), s_axi_ctrl_user_wstrb("s_axi_ctrl_user_wstrb"), s_axi_ctrl_user_wvalid("s_axi_ctrl_user_wvalid"), s_axi_ctrl_user_wready("s_axi_ctrl_user_wready"), s_axi_ctrl_user_bresp("s_axi_ctrl_user_bresp"), s_axi_ctrl_user_bvalid("s_axi_ctrl_user_bvalid"), s_axi_ctrl_user_bready("s_axi_ctrl_user_bready"), s_axi_ctrl_user_araddr("s_axi_ctrl_user_araddr"), s_axi_ctrl_user_arprot("s_axi_ctrl_user_arprot"), s_axi_ctrl_user_arvalid("s_axi_ctrl_user_arvalid"), s_axi_ctrl_user_arready("s_axi_ctrl_user_arready"), s_axi_ctrl_user_rdata("s_axi_ctrl_user_rdata"), s_axi_ctrl_user_rresp("s_axi_ctrl_user_rresp"), s_axi_ctrl_user_rvalid("s_axi_ctrl_user_rvalid"), s_axi_ctrl_user_rready("s_axi_ctrl_user_rready")
{

  // initialize pins
  mp_impl->interrupt_cu(interrupt_cu);
  mp_impl->interrupt_m2m(interrupt_m2m);
  mp_impl->s_axi_ctrl_user_aresetn(s_axi_ctrl_user_aresetn);
  mp_impl->s_axi_data_p2p_aresetn(s_axi_data_p2p_aresetn);
  mp_impl->maxi_lite_mb_aresetn(maxi_lite_mb_aresetn);
  mp_impl->m_axi_data_m2m_aresetn(m_axi_data_m2m_aresetn);
  mp_impl->s_axi_ctrl_user_aclk(s_axi_ctrl_user_aclk);
  mp_impl->s_axi_data_p2p_aclk(s_axi_data_p2p_aclk);
  mp_impl->maxi_lite_mb_aclk(maxi_lite_mb_aclk);
  mp_impl->m_axi_data_m2m_aclk(m_axi_data_m2m_aclk);

  // initialize transactors
  mp_s_axi_ctrl_user_transactor = NULL;
  mp_s_axi_data_p2p_transactor = NULL;
  mp_maxi_lite_mb_transactor = NULL;
  mp_m_axi_data_m2m_transactor = NULL;

  // initialize socket stubs

}

void pfm_top_embedded_schedular_0::before_end_of_elaboration()
{
  // configure 's_axi_ctrl_user' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "s_axi_ctrl_user_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 's_axi_ctrl_user' transactor parameters
    xsc::common_cpp::properties s_axi_ctrl_user_transactor_param_props;
    s_axi_ctrl_user_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    s_axi_ctrl_user_transactor_param_props.addLong("WIZ_NUM_REG", "4");
    s_axi_ctrl_user_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("DATA_WIDTH", "32");
    s_axi_ctrl_user_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_ctrl_user_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("ADDR_WIDTH", "64");
    s_axi_ctrl_user_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("BUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_BURST", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_LOCK", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_PROT", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_CACHE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_QOS", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_REGION", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    s_axi_ctrl_user_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_SIZE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_RESET", "0");
    s_axi_ctrl_user_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_ctrl_user_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    s_axi_ctrl_user_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_ctrl_user_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    s_axi_ctrl_user_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_ctrl_user_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("s_axi_ctrl_user_transactor", s_axi_ctrl_user_transactor_param_props);

    // s_axi_ctrl_user' transactor ports

    mp_s_axi_ctrl_user_transactor->AWADDR(s_axi_ctrl_user_awaddr);
    mp_s_axi_ctrl_user_transactor->AWPROT(s_axi_ctrl_user_awprot);
    mp_s_axi_ctrl_user_transactor->AWVALID(s_axi_ctrl_user_awvalid);
    mp_s_axi_ctrl_user_transactor->AWREADY(s_axi_ctrl_user_awready);
    mp_s_axi_ctrl_user_transactor->WDATA(s_axi_ctrl_user_wdata);
    mp_s_axi_ctrl_user_transactor->WSTRB(s_axi_ctrl_user_wstrb);
    mp_s_axi_ctrl_user_transactor->WVALID(s_axi_ctrl_user_wvalid);
    mp_s_axi_ctrl_user_transactor->WREADY(s_axi_ctrl_user_wready);
    mp_s_axi_ctrl_user_transactor->BRESP(s_axi_ctrl_user_bresp);
    mp_s_axi_ctrl_user_transactor->BVALID(s_axi_ctrl_user_bvalid);
    mp_s_axi_ctrl_user_transactor->BREADY(s_axi_ctrl_user_bready);
    mp_s_axi_ctrl_user_transactor->ARADDR(s_axi_ctrl_user_araddr);
    mp_s_axi_ctrl_user_transactor->ARPROT(s_axi_ctrl_user_arprot);
    mp_s_axi_ctrl_user_transactor->ARVALID(s_axi_ctrl_user_arvalid);
    mp_s_axi_ctrl_user_transactor->ARREADY(s_axi_ctrl_user_arready);
    mp_s_axi_ctrl_user_transactor->RDATA(s_axi_ctrl_user_rdata);
    mp_s_axi_ctrl_user_transactor->RRESP(s_axi_ctrl_user_rresp);
    mp_s_axi_ctrl_user_transactor->RVALID(s_axi_ctrl_user_rvalid);
    mp_s_axi_ctrl_user_transactor->RREADY(s_axi_ctrl_user_rready);
    mp_s_axi_ctrl_user_transactor->CLK(s_axi_ctrl_user_aclk);
    m_s_axi_ctrl_user_transactor_rst_signal.write(1);
    mp_s_axi_ctrl_user_transactor->RST(m_s_axi_ctrl_user_transactor_rst_signal);

    // s_axi_ctrl_user' transactor sockets

    mp_impl->s_axi_ctrl_user_rd_socket->bind(*(mp_s_axi_ctrl_user_transactor->rd_socket));
    mp_impl->s_axi_ctrl_user_wr_socket->bind(*(mp_s_axi_ctrl_user_transactor->wr_socket));
  }
  else
  {
  }

  // configure 's_axi_data_p2p' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "s_axi_data_p2p_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 's_axi_data_p2p' transactor parameters
    xsc::common_cpp::properties s_axi_data_p2p_transactor_param_props;
    s_axi_data_p2p_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    s_axi_data_p2p_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    s_axi_data_p2p_transactor_param_props.addLong("DATA_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_data_p2p_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("ADDR_WIDTH", "64");
    s_axi_data_p2p_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("BUSER_WIDTH", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_BURST", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_LOCK", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_PROT", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_CACHE", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_QOS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_REGION", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    s_axi_data_p2p_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_data_p2p_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_SIZE", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_RESET", "0");
    s_axi_data_p2p_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_data_p2p_transactor_param_props.addString("PROTOCOL", "AXI4");
    s_axi_data_p2p_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_data_p2p_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    s_axi_data_p2p_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_data_p2p_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,32,1,1,32,1>("s_axi_data_p2p_transactor", s_axi_data_p2p_transactor_param_props);

    // s_axi_data_p2p' transactor ports

    mp_s_axi_data_p2p_transactor->AWADDR(s_axi_data_p2p_awaddr);
    mp_s_axi_data_p2p_transactor->AWLEN(s_axi_data_p2p_awlen);
    mp_s_axi_data_p2p_transactor->AWSIZE(s_axi_data_p2p_awsize);
    mp_s_axi_data_p2p_transactor->AWBURST(s_axi_data_p2p_awburst);
    mp_s_axi_data_p2p_transactor->AWLOCK(s_axi_data_p2p_awlock);
    mp_s_axi_data_p2p_transactor->AWCACHE(s_axi_data_p2p_awcache);
    mp_s_axi_data_p2p_transactor->AWPROT(s_axi_data_p2p_awprot);
    mp_s_axi_data_p2p_transactor->AWREGION(s_axi_data_p2p_awregion);
    mp_s_axi_data_p2p_transactor->AWQOS(s_axi_data_p2p_awqos);
    mp_s_axi_data_p2p_transactor->AWUSER(s_axi_data_p2p_awuser);
    mp_s_axi_data_p2p_transactor->AWVALID(s_axi_data_p2p_awvalid);
    mp_s_axi_data_p2p_transactor->AWREADY(s_axi_data_p2p_awready);
    mp_s_axi_data_p2p_transactor->WDATA(s_axi_data_p2p_wdata);
    mp_s_axi_data_p2p_transactor->WSTRB(s_axi_data_p2p_wstrb);
    mp_s_axi_data_p2p_transactor->WLAST(s_axi_data_p2p_wlast);
    mp_s_axi_data_p2p_transactor->WVALID(s_axi_data_p2p_wvalid);
    mp_s_axi_data_p2p_transactor->WREADY(s_axi_data_p2p_wready);
    mp_s_axi_data_p2p_transactor->BRESP(s_axi_data_p2p_bresp);
    mp_s_axi_data_p2p_transactor->BUSER(s_axi_data_p2p_buser);
    mp_s_axi_data_p2p_transactor->BVALID(s_axi_data_p2p_bvalid);
    mp_s_axi_data_p2p_transactor->BREADY(s_axi_data_p2p_bready);
    mp_s_axi_data_p2p_transactor->ARADDR(s_axi_data_p2p_araddr);
    mp_s_axi_data_p2p_transactor->ARLEN(s_axi_data_p2p_arlen);
    mp_s_axi_data_p2p_transactor->ARSIZE(s_axi_data_p2p_arsize);
    mp_s_axi_data_p2p_transactor->ARBURST(s_axi_data_p2p_arburst);
    mp_s_axi_data_p2p_transactor->ARLOCK(s_axi_data_p2p_arlock);
    mp_s_axi_data_p2p_transactor->ARCACHE(s_axi_data_p2p_arcache);
    mp_s_axi_data_p2p_transactor->ARPROT(s_axi_data_p2p_arprot);
    mp_s_axi_data_p2p_transactor->ARREGION(s_axi_data_p2p_arregion);
    mp_s_axi_data_p2p_transactor->ARQOS(s_axi_data_p2p_arqos);
    mp_s_axi_data_p2p_transactor->ARUSER(s_axi_data_p2p_aruser);
    mp_s_axi_data_p2p_transactor->ARVALID(s_axi_data_p2p_arvalid);
    mp_s_axi_data_p2p_transactor->ARREADY(s_axi_data_p2p_arready);
    mp_s_axi_data_p2p_transactor->RDATA(s_axi_data_p2p_rdata);
    mp_s_axi_data_p2p_transactor->RRESP(s_axi_data_p2p_rresp);
    mp_s_axi_data_p2p_transactor->RLAST(s_axi_data_p2p_rlast);
    mp_s_axi_data_p2p_transactor->RVALID(s_axi_data_p2p_rvalid);
    mp_s_axi_data_p2p_transactor->RREADY(s_axi_data_p2p_rready);
    mp_s_axi_data_p2p_transactor->CLK(s_axi_data_p2p_aclk);
    m_s_axi_data_p2p_transactor_rst_signal.write(1);
    mp_s_axi_data_p2p_transactor->RST(m_s_axi_data_p2p_transactor_rst_signal);

    // s_axi_data_p2p' transactor sockets

    mp_impl->s_axi_data_p2p_rd_socket->bind(*(mp_s_axi_data_p2p_transactor->rd_socket));
    mp_impl->s_axi_data_p2p_wr_socket->bind(*(mp_s_axi_data_p2p_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'maxi_lite_mb' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "maxi_lite_mb_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'maxi_lite_mb' transactor parameters
    xsc::common_cpp::properties maxi_lite_mb_transactor_param_props;
    maxi_lite_mb_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    maxi_lite_mb_transactor_param_props.addLong("ID_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ADDR_WIDTH", "64");
    maxi_lite_mb_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("BUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_LOCK", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_PROT", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_CACHE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_QOS", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_REGION", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_WSTRB", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_SIZE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RESET", "0");
    maxi_lite_mb_transactor_param_props.addFloat("PHASE", "0.0");
    maxi_lite_mb_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    maxi_lite_mb_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    maxi_lite_mb_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    maxi_lite_mb_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_maxi_lite_mb_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("maxi_lite_mb_transactor", maxi_lite_mb_transactor_param_props);

    // maxi_lite_mb' transactor ports

    mp_maxi_lite_mb_transactor->AWADDR(maxi_lite_mb_awaddr);
    mp_maxi_lite_mb_transactor->AWPROT(maxi_lite_mb_awprot);
    mp_maxi_lite_mb_transactor->AWVALID(maxi_lite_mb_awvalid);
    mp_maxi_lite_mb_transactor->AWREADY(maxi_lite_mb_awready);
    mp_maxi_lite_mb_transactor->WDATA(maxi_lite_mb_wdata);
    mp_maxi_lite_mb_transactor->WSTRB(maxi_lite_mb_wstrb);
    mp_maxi_lite_mb_transactor->WVALID(maxi_lite_mb_wvalid);
    mp_maxi_lite_mb_transactor->WREADY(maxi_lite_mb_wready);
    mp_maxi_lite_mb_transactor->BRESP(maxi_lite_mb_bresp);
    mp_maxi_lite_mb_transactor->BVALID(maxi_lite_mb_bvalid);
    mp_maxi_lite_mb_transactor->BREADY(maxi_lite_mb_bready);
    mp_maxi_lite_mb_transactor->ARADDR(maxi_lite_mb_araddr);
    mp_maxi_lite_mb_transactor->ARPROT(maxi_lite_mb_arprot);
    mp_maxi_lite_mb_transactor->ARVALID(maxi_lite_mb_arvalid);
    mp_maxi_lite_mb_transactor->ARREADY(maxi_lite_mb_arready);
    mp_maxi_lite_mb_transactor->RDATA(maxi_lite_mb_rdata);
    mp_maxi_lite_mb_transactor->RRESP(maxi_lite_mb_rresp);
    mp_maxi_lite_mb_transactor->RVALID(maxi_lite_mb_rvalid);
    mp_maxi_lite_mb_transactor->RREADY(maxi_lite_mb_rready);
    mp_maxi_lite_mb_transactor->CLK(maxi_lite_mb_aclk);
    m_maxi_lite_mb_transactor_rst_signal.write(1);
    mp_maxi_lite_mb_transactor->RST(m_maxi_lite_mb_transactor_rst_signal);

    // maxi_lite_mb' transactor sockets

    mp_impl->maxi_lite_mb_rd_socket->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_impl->maxi_lite_mb_wr_socket->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'm_axi_data_m2m' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "m_axi_data_m2m_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'm_axi_data_m2m' transactor parameters
    xsc::common_cpp::properties m_axi_data_m2m_transactor_param_props;
    m_axi_data_m2m_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    m_axi_data_m2m_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    m_axi_data_m2m_transactor_param_props.addLong("DATA_WIDTH", "32");
    m_axi_data_m2m_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    m_axi_data_m2m_transactor_param_props.addLong("ID_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("ADDR_WIDTH", "64");
    m_axi_data_m2m_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("WUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("RUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("BUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_BURST", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_LOCK", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_PROT", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_CACHE", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_QOS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_REGION", "0");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_WSTRB", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_BRESP", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_RRESP", "1");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    m_axi_data_m2m_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    m_axi_data_m2m_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_SIZE", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_RESET", "0");
    m_axi_data_m2m_transactor_param_props.addFloat("PHASE", "0.0");
    m_axi_data_m2m_transactor_param_props.addString("PROTOCOL", "AXI4");
    m_axi_data_m2m_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    m_axi_data_m2m_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    m_axi_data_m2m_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_m_axi_data_m2m_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("m_axi_data_m2m_transactor", m_axi_data_m2m_transactor_param_props);

    // m_axi_data_m2m' transactor ports

    mp_m_axi_data_m2m_transactor->AWID(m_axi_data_m2m_awid);
    mp_m_axi_data_m2m_transactor->AWADDR(m_axi_data_m2m_awaddr);
    mp_m_axi_data_m2m_transactor->AWLEN(m_axi_data_m2m_awlen);
    mp_m_axi_data_m2m_transactor->AWSIZE(m_axi_data_m2m_awsize);
    mp_m_axi_data_m2m_transactor->AWBURST(m_axi_data_m2m_awburst);
    mp_m_axi_data_m2m_transactor->AWLOCK(m_axi_data_m2m_awlock);
    mp_m_axi_data_m2m_transactor->AWCACHE(m_axi_data_m2m_awcache);
    mp_m_axi_data_m2m_transactor->AWPROT(m_axi_data_m2m_awprot);
    mp_m_axi_data_m2m_transactor->AWQOS(m_axi_data_m2m_awqos);
    mp_m_axi_data_m2m_transactor->AWUSER(m_axi_data_m2m_awuser);
    mp_m_axi_data_m2m_transactor->AWVALID(m_axi_data_m2m_awvalid);
    mp_m_axi_data_m2m_transactor->AWREADY(m_axi_data_m2m_awready);
    mp_m_axi_data_m2m_transactor->WDATA(m_axi_data_m2m_wdata);
    mp_m_axi_data_m2m_transactor->WSTRB(m_axi_data_m2m_wstrb);
    mp_m_axi_data_m2m_transactor->WLAST(m_axi_data_m2m_wlast);
    mp_m_axi_data_m2m_transactor->WUSER(m_axi_data_m2m_wuser);
    mp_m_axi_data_m2m_transactor->WVALID(m_axi_data_m2m_wvalid);
    mp_m_axi_data_m2m_transactor->WREADY(m_axi_data_m2m_wready);
    mp_m_axi_data_m2m_transactor->BID(m_axi_data_m2m_bid);
    mp_m_axi_data_m2m_transactor->BRESP(m_axi_data_m2m_bresp);
    mp_m_axi_data_m2m_transactor->BUSER(m_axi_data_m2m_buser);
    mp_m_axi_data_m2m_transactor->BVALID(m_axi_data_m2m_bvalid);
    mp_m_axi_data_m2m_transactor->BREADY(m_axi_data_m2m_bready);
    mp_m_axi_data_m2m_transactor->ARID(m_axi_data_m2m_arid);
    mp_m_axi_data_m2m_transactor->ARADDR(m_axi_data_m2m_araddr);
    mp_m_axi_data_m2m_transactor->ARLEN(m_axi_data_m2m_arlen);
    mp_m_axi_data_m2m_transactor->ARSIZE(m_axi_data_m2m_arsize);
    mp_m_axi_data_m2m_transactor->ARBURST(m_axi_data_m2m_arburst);
    mp_m_axi_data_m2m_transactor->ARLOCK(m_axi_data_m2m_arlock);
    mp_m_axi_data_m2m_transactor->ARCACHE(m_axi_data_m2m_arcache);
    mp_m_axi_data_m2m_transactor->ARPROT(m_axi_data_m2m_arprot);
    mp_m_axi_data_m2m_transactor->ARQOS(m_axi_data_m2m_arqos);
    mp_m_axi_data_m2m_transactor->ARUSER(m_axi_data_m2m_aruser);
    mp_m_axi_data_m2m_transactor->ARVALID(m_axi_data_m2m_arvalid);
    mp_m_axi_data_m2m_transactor->ARREADY(m_axi_data_m2m_arready);
    mp_m_axi_data_m2m_transactor->RID(m_axi_data_m2m_rid);
    mp_m_axi_data_m2m_transactor->RDATA(m_axi_data_m2m_rdata);
    mp_m_axi_data_m2m_transactor->RRESP(m_axi_data_m2m_rresp);
    mp_m_axi_data_m2m_transactor->RLAST(m_axi_data_m2m_rlast);
    mp_m_axi_data_m2m_transactor->RUSER(m_axi_data_m2m_ruser);
    mp_m_axi_data_m2m_transactor->RVALID(m_axi_data_m2m_rvalid);
    mp_m_axi_data_m2m_transactor->RREADY(m_axi_data_m2m_rready);
    mp_m_axi_data_m2m_transactor->CLK(m_axi_data_m2m_aclk);
    m_m_axi_data_m2m_transactor_rst_signal.write(1);
    mp_m_axi_data_m2m_transactor->RST(m_m_axi_data_m2m_transactor_rst_signal);

    // m_axi_data_m2m' transactor sockets

    mp_impl->m_axi_data_m2m_rd_socket->bind(*(mp_m_axi_data_m2m_transactor->rd_socket));
    mp_impl->m_axi_data_m2m_wr_socket->bind(*(mp_m_axi_data_m2m_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
pfm_top_embedded_schedular_0::pfm_top_embedded_schedular_0(const sc_core::sc_module_name& nm) : pfm_top_embedded_schedular_0_sc(nm), interrupt_cu("interrupt_cu"), interrupt_m2m("interrupt_m2m"), s_axi_ctrl_user_aresetn("s_axi_ctrl_user_aresetn"), s_axi_data_p2p_aresetn("s_axi_data_p2p_aresetn"), maxi_lite_mb_aresetn("maxi_lite_mb_aresetn"), m_axi_data_m2m_aresetn("m_axi_data_m2m_aresetn"), s_axi_ctrl_user_aclk("s_axi_ctrl_user_aclk"), s_axi_data_p2p_aclk("s_axi_data_p2p_aclk"), maxi_lite_mb_aclk("maxi_lite_mb_aclk"), m_axi_data_m2m_aclk("m_axi_data_m2m_aclk"), s_axi_data_p2p_awaddr("s_axi_data_p2p_awaddr"), s_axi_data_p2p_awlen("s_axi_data_p2p_awlen"), s_axi_data_p2p_awsize("s_axi_data_p2p_awsize"), s_axi_data_p2p_awburst("s_axi_data_p2p_awburst"), s_axi_data_p2p_awlock("s_axi_data_p2p_awlock"), s_axi_data_p2p_awcache("s_axi_data_p2p_awcache"), s_axi_data_p2p_awprot("s_axi_data_p2p_awprot"), s_axi_data_p2p_awregion("s_axi_data_p2p_awregion"), s_axi_data_p2p_awqos("s_axi_data_p2p_awqos"), s_axi_data_p2p_awuser("s_axi_data_p2p_awuser"), s_axi_data_p2p_awvalid("s_axi_data_p2p_awvalid"), s_axi_data_p2p_awready("s_axi_data_p2p_awready"), s_axi_data_p2p_wdata("s_axi_data_p2p_wdata"), s_axi_data_p2p_wstrb("s_axi_data_p2p_wstrb"), s_axi_data_p2p_wlast("s_axi_data_p2p_wlast"), s_axi_data_p2p_wvalid("s_axi_data_p2p_wvalid"), s_axi_data_p2p_wready("s_axi_data_p2p_wready"), s_axi_data_p2p_bresp("s_axi_data_p2p_bresp"), s_axi_data_p2p_buser("s_axi_data_p2p_buser"), s_axi_data_p2p_bvalid("s_axi_data_p2p_bvalid"), s_axi_data_p2p_bready("s_axi_data_p2p_bready"), s_axi_data_p2p_araddr("s_axi_data_p2p_araddr"), s_axi_data_p2p_arlen("s_axi_data_p2p_arlen"), s_axi_data_p2p_arsize("s_axi_data_p2p_arsize"), s_axi_data_p2p_arburst("s_axi_data_p2p_arburst"), s_axi_data_p2p_arlock("s_axi_data_p2p_arlock"), s_axi_data_p2p_arcache("s_axi_data_p2p_arcache"), s_axi_data_p2p_arprot("s_axi_data_p2p_arprot"), s_axi_data_p2p_arregion("s_axi_data_p2p_arregion"), s_axi_data_p2p_arqos("s_axi_data_p2p_arqos"), s_axi_data_p2p_aruser("s_axi_data_p2p_aruser"), s_axi_data_p2p_arvalid("s_axi_data_p2p_arvalid"), s_axi_data_p2p_arready("s_axi_data_p2p_arready"), s_axi_data_p2p_rdata("s_axi_data_p2p_rdata"), s_axi_data_p2p_rresp("s_axi_data_p2p_rresp"), s_axi_data_p2p_rlast("s_axi_data_p2p_rlast"), s_axi_data_p2p_rvalid("s_axi_data_p2p_rvalid"), s_axi_data_p2p_rready("s_axi_data_p2p_rready"), maxi_lite_mb_awaddr("maxi_lite_mb_awaddr"), maxi_lite_mb_awprot("maxi_lite_mb_awprot"), maxi_lite_mb_awvalid("maxi_lite_mb_awvalid"), maxi_lite_mb_awready("maxi_lite_mb_awready"), maxi_lite_mb_wdata("maxi_lite_mb_wdata"), maxi_lite_mb_wstrb("maxi_lite_mb_wstrb"), maxi_lite_mb_wvalid("maxi_lite_mb_wvalid"), maxi_lite_mb_wready("maxi_lite_mb_wready"), maxi_lite_mb_bresp("maxi_lite_mb_bresp"), maxi_lite_mb_bvalid("maxi_lite_mb_bvalid"), maxi_lite_mb_bready("maxi_lite_mb_bready"), maxi_lite_mb_araddr("maxi_lite_mb_araddr"), maxi_lite_mb_arprot("maxi_lite_mb_arprot"), maxi_lite_mb_arvalid("maxi_lite_mb_arvalid"), maxi_lite_mb_arready("maxi_lite_mb_arready"), maxi_lite_mb_rdata("maxi_lite_mb_rdata"), maxi_lite_mb_rresp("maxi_lite_mb_rresp"), maxi_lite_mb_rvalid("maxi_lite_mb_rvalid"), maxi_lite_mb_rready("maxi_lite_mb_rready"), m_axi_data_m2m_awid("m_axi_data_m2m_awid"), m_axi_data_m2m_awaddr("m_axi_data_m2m_awaddr"), m_axi_data_m2m_awlen("m_axi_data_m2m_awlen"), m_axi_data_m2m_awsize("m_axi_data_m2m_awsize"), m_axi_data_m2m_awburst("m_axi_data_m2m_awburst"), m_axi_data_m2m_awlock("m_axi_data_m2m_awlock"), m_axi_data_m2m_awcache("m_axi_data_m2m_awcache"), m_axi_data_m2m_awprot("m_axi_data_m2m_awprot"), m_axi_data_m2m_awqos("m_axi_data_m2m_awqos"), m_axi_data_m2m_awuser("m_axi_data_m2m_awuser"), m_axi_data_m2m_awvalid("m_axi_data_m2m_awvalid"), m_axi_data_m2m_awready("m_axi_data_m2m_awready"), m_axi_data_m2m_wdata("m_axi_data_m2m_wdata"), m_axi_data_m2m_wstrb("m_axi_data_m2m_wstrb"), m_axi_data_m2m_wlast("m_axi_data_m2m_wlast"), m_axi_data_m2m_wuser("m_axi_data_m2m_wuser"), m_axi_data_m2m_wvalid("m_axi_data_m2m_wvalid"), m_axi_data_m2m_wready("m_axi_data_m2m_wready"), m_axi_data_m2m_bid("m_axi_data_m2m_bid"), m_axi_data_m2m_bresp("m_axi_data_m2m_bresp"), m_axi_data_m2m_buser("m_axi_data_m2m_buser"), m_axi_data_m2m_bvalid("m_axi_data_m2m_bvalid"), m_axi_data_m2m_bready("m_axi_data_m2m_bready"), m_axi_data_m2m_arid("m_axi_data_m2m_arid"), m_axi_data_m2m_araddr("m_axi_data_m2m_araddr"), m_axi_data_m2m_arlen("m_axi_data_m2m_arlen"), m_axi_data_m2m_arsize("m_axi_data_m2m_arsize"), m_axi_data_m2m_arburst("m_axi_data_m2m_arburst"), m_axi_data_m2m_arlock("m_axi_data_m2m_arlock"), m_axi_data_m2m_arcache("m_axi_data_m2m_arcache"), m_axi_data_m2m_arprot("m_axi_data_m2m_arprot"), m_axi_data_m2m_arqos("m_axi_data_m2m_arqos"), m_axi_data_m2m_aruser("m_axi_data_m2m_aruser"), m_axi_data_m2m_arvalid("m_axi_data_m2m_arvalid"), m_axi_data_m2m_arready("m_axi_data_m2m_arready"), m_axi_data_m2m_rid("m_axi_data_m2m_rid"), m_axi_data_m2m_rdata("m_axi_data_m2m_rdata"), m_axi_data_m2m_rresp("m_axi_data_m2m_rresp"), m_axi_data_m2m_rlast("m_axi_data_m2m_rlast"), m_axi_data_m2m_ruser("m_axi_data_m2m_ruser"), m_axi_data_m2m_rvalid("m_axi_data_m2m_rvalid"), m_axi_data_m2m_rready("m_axi_data_m2m_rready"), s_axi_ctrl_user_awaddr("s_axi_ctrl_user_awaddr"), s_axi_ctrl_user_awprot("s_axi_ctrl_user_awprot"), s_axi_ctrl_user_awvalid("s_axi_ctrl_user_awvalid"), s_axi_ctrl_user_awready("s_axi_ctrl_user_awready"), s_axi_ctrl_user_wdata("s_axi_ctrl_user_wdata"), s_axi_ctrl_user_wstrb("s_axi_ctrl_user_wstrb"), s_axi_ctrl_user_wvalid("s_axi_ctrl_user_wvalid"), s_axi_ctrl_user_wready("s_axi_ctrl_user_wready"), s_axi_ctrl_user_bresp("s_axi_ctrl_user_bresp"), s_axi_ctrl_user_bvalid("s_axi_ctrl_user_bvalid"), s_axi_ctrl_user_bready("s_axi_ctrl_user_bready"), s_axi_ctrl_user_araddr("s_axi_ctrl_user_araddr"), s_axi_ctrl_user_arprot("s_axi_ctrl_user_arprot"), s_axi_ctrl_user_arvalid("s_axi_ctrl_user_arvalid"), s_axi_ctrl_user_arready("s_axi_ctrl_user_arready"), s_axi_ctrl_user_rdata("s_axi_ctrl_user_rdata"), s_axi_ctrl_user_rresp("s_axi_ctrl_user_rresp"), s_axi_ctrl_user_rvalid("s_axi_ctrl_user_rvalid"), s_axi_ctrl_user_rready("s_axi_ctrl_user_rready")
{

  // initialize pins
  mp_impl->interrupt_cu(interrupt_cu);
  mp_impl->interrupt_m2m(interrupt_m2m);
  mp_impl->s_axi_ctrl_user_aresetn(s_axi_ctrl_user_aresetn);
  mp_impl->s_axi_data_p2p_aresetn(s_axi_data_p2p_aresetn);
  mp_impl->maxi_lite_mb_aresetn(maxi_lite_mb_aresetn);
  mp_impl->m_axi_data_m2m_aresetn(m_axi_data_m2m_aresetn);
  mp_impl->s_axi_ctrl_user_aclk(s_axi_ctrl_user_aclk);
  mp_impl->s_axi_data_p2p_aclk(s_axi_data_p2p_aclk);
  mp_impl->maxi_lite_mb_aclk(maxi_lite_mb_aclk);
  mp_impl->m_axi_data_m2m_aclk(m_axi_data_m2m_aclk);

  // initialize transactors
  mp_s_axi_ctrl_user_transactor = NULL;
  mp_s_axi_data_p2p_transactor = NULL;
  mp_maxi_lite_mb_transactor = NULL;
  mp_m_axi_data_m2m_transactor = NULL;

  // initialize socket stubs

}

void pfm_top_embedded_schedular_0::before_end_of_elaboration()
{
  // configure 's_axi_ctrl_user' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "s_axi_ctrl_user_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 's_axi_ctrl_user' transactor parameters
    xsc::common_cpp::properties s_axi_ctrl_user_transactor_param_props;
    s_axi_ctrl_user_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    s_axi_ctrl_user_transactor_param_props.addLong("WIZ_NUM_REG", "4");
    s_axi_ctrl_user_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("DATA_WIDTH", "32");
    s_axi_ctrl_user_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_ctrl_user_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("ADDR_WIDTH", "64");
    s_axi_ctrl_user_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("BUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_BURST", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_LOCK", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_PROT", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_CACHE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_QOS", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_REGION", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    s_axi_ctrl_user_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_SIZE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_RESET", "0");
    s_axi_ctrl_user_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_ctrl_user_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    s_axi_ctrl_user_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_ctrl_user_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    s_axi_ctrl_user_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_ctrl_user_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("s_axi_ctrl_user_transactor", s_axi_ctrl_user_transactor_param_props);

    // s_axi_ctrl_user' transactor ports

    mp_s_axi_ctrl_user_transactor->AWADDR(s_axi_ctrl_user_awaddr);
    mp_s_axi_ctrl_user_transactor->AWPROT(s_axi_ctrl_user_awprot);
    mp_s_axi_ctrl_user_transactor->AWVALID(s_axi_ctrl_user_awvalid);
    mp_s_axi_ctrl_user_transactor->AWREADY(s_axi_ctrl_user_awready);
    mp_s_axi_ctrl_user_transactor->WDATA(s_axi_ctrl_user_wdata);
    mp_s_axi_ctrl_user_transactor->WSTRB(s_axi_ctrl_user_wstrb);
    mp_s_axi_ctrl_user_transactor->WVALID(s_axi_ctrl_user_wvalid);
    mp_s_axi_ctrl_user_transactor->WREADY(s_axi_ctrl_user_wready);
    mp_s_axi_ctrl_user_transactor->BRESP(s_axi_ctrl_user_bresp);
    mp_s_axi_ctrl_user_transactor->BVALID(s_axi_ctrl_user_bvalid);
    mp_s_axi_ctrl_user_transactor->BREADY(s_axi_ctrl_user_bready);
    mp_s_axi_ctrl_user_transactor->ARADDR(s_axi_ctrl_user_araddr);
    mp_s_axi_ctrl_user_transactor->ARPROT(s_axi_ctrl_user_arprot);
    mp_s_axi_ctrl_user_transactor->ARVALID(s_axi_ctrl_user_arvalid);
    mp_s_axi_ctrl_user_transactor->ARREADY(s_axi_ctrl_user_arready);
    mp_s_axi_ctrl_user_transactor->RDATA(s_axi_ctrl_user_rdata);
    mp_s_axi_ctrl_user_transactor->RRESP(s_axi_ctrl_user_rresp);
    mp_s_axi_ctrl_user_transactor->RVALID(s_axi_ctrl_user_rvalid);
    mp_s_axi_ctrl_user_transactor->RREADY(s_axi_ctrl_user_rready);
    mp_s_axi_ctrl_user_transactor->CLK(s_axi_ctrl_user_aclk);
    m_s_axi_ctrl_user_transactor_rst_signal.write(1);
    mp_s_axi_ctrl_user_transactor->RST(m_s_axi_ctrl_user_transactor_rst_signal);

    // s_axi_ctrl_user' transactor sockets

    mp_impl->s_axi_ctrl_user_rd_socket->bind(*(mp_s_axi_ctrl_user_transactor->rd_socket));
    mp_impl->s_axi_ctrl_user_wr_socket->bind(*(mp_s_axi_ctrl_user_transactor->wr_socket));
  }
  else
  {
  }

  // configure 's_axi_data_p2p' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "s_axi_data_p2p_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 's_axi_data_p2p' transactor parameters
    xsc::common_cpp::properties s_axi_data_p2p_transactor_param_props;
    s_axi_data_p2p_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    s_axi_data_p2p_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    s_axi_data_p2p_transactor_param_props.addLong("DATA_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_data_p2p_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("ADDR_WIDTH", "64");
    s_axi_data_p2p_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("BUSER_WIDTH", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_BURST", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_LOCK", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_PROT", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_CACHE", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_QOS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_REGION", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    s_axi_data_p2p_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_data_p2p_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_SIZE", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_RESET", "0");
    s_axi_data_p2p_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_data_p2p_transactor_param_props.addString("PROTOCOL", "AXI4");
    s_axi_data_p2p_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_data_p2p_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    s_axi_data_p2p_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_data_p2p_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,32,1,1,32,1>("s_axi_data_p2p_transactor", s_axi_data_p2p_transactor_param_props);

    // s_axi_data_p2p' transactor ports

    mp_s_axi_data_p2p_transactor->AWADDR(s_axi_data_p2p_awaddr);
    mp_s_axi_data_p2p_transactor->AWLEN(s_axi_data_p2p_awlen);
    mp_s_axi_data_p2p_transactor->AWSIZE(s_axi_data_p2p_awsize);
    mp_s_axi_data_p2p_transactor->AWBURST(s_axi_data_p2p_awburst);
    mp_s_axi_data_p2p_transactor->AWLOCK(s_axi_data_p2p_awlock);
    mp_s_axi_data_p2p_transactor->AWCACHE(s_axi_data_p2p_awcache);
    mp_s_axi_data_p2p_transactor->AWPROT(s_axi_data_p2p_awprot);
    mp_s_axi_data_p2p_transactor->AWREGION(s_axi_data_p2p_awregion);
    mp_s_axi_data_p2p_transactor->AWQOS(s_axi_data_p2p_awqos);
    mp_s_axi_data_p2p_transactor->AWUSER(s_axi_data_p2p_awuser);
    mp_s_axi_data_p2p_transactor->AWVALID(s_axi_data_p2p_awvalid);
    mp_s_axi_data_p2p_transactor->AWREADY(s_axi_data_p2p_awready);
    mp_s_axi_data_p2p_transactor->WDATA(s_axi_data_p2p_wdata);
    mp_s_axi_data_p2p_transactor->WSTRB(s_axi_data_p2p_wstrb);
    mp_s_axi_data_p2p_transactor->WLAST(s_axi_data_p2p_wlast);
    mp_s_axi_data_p2p_transactor->WVALID(s_axi_data_p2p_wvalid);
    mp_s_axi_data_p2p_transactor->WREADY(s_axi_data_p2p_wready);
    mp_s_axi_data_p2p_transactor->BRESP(s_axi_data_p2p_bresp);
    mp_s_axi_data_p2p_transactor->BUSER(s_axi_data_p2p_buser);
    mp_s_axi_data_p2p_transactor->BVALID(s_axi_data_p2p_bvalid);
    mp_s_axi_data_p2p_transactor->BREADY(s_axi_data_p2p_bready);
    mp_s_axi_data_p2p_transactor->ARADDR(s_axi_data_p2p_araddr);
    mp_s_axi_data_p2p_transactor->ARLEN(s_axi_data_p2p_arlen);
    mp_s_axi_data_p2p_transactor->ARSIZE(s_axi_data_p2p_arsize);
    mp_s_axi_data_p2p_transactor->ARBURST(s_axi_data_p2p_arburst);
    mp_s_axi_data_p2p_transactor->ARLOCK(s_axi_data_p2p_arlock);
    mp_s_axi_data_p2p_transactor->ARCACHE(s_axi_data_p2p_arcache);
    mp_s_axi_data_p2p_transactor->ARPROT(s_axi_data_p2p_arprot);
    mp_s_axi_data_p2p_transactor->ARREGION(s_axi_data_p2p_arregion);
    mp_s_axi_data_p2p_transactor->ARQOS(s_axi_data_p2p_arqos);
    mp_s_axi_data_p2p_transactor->ARUSER(s_axi_data_p2p_aruser);
    mp_s_axi_data_p2p_transactor->ARVALID(s_axi_data_p2p_arvalid);
    mp_s_axi_data_p2p_transactor->ARREADY(s_axi_data_p2p_arready);
    mp_s_axi_data_p2p_transactor->RDATA(s_axi_data_p2p_rdata);
    mp_s_axi_data_p2p_transactor->RRESP(s_axi_data_p2p_rresp);
    mp_s_axi_data_p2p_transactor->RLAST(s_axi_data_p2p_rlast);
    mp_s_axi_data_p2p_transactor->RVALID(s_axi_data_p2p_rvalid);
    mp_s_axi_data_p2p_transactor->RREADY(s_axi_data_p2p_rready);
    mp_s_axi_data_p2p_transactor->CLK(s_axi_data_p2p_aclk);
    m_s_axi_data_p2p_transactor_rst_signal.write(1);
    mp_s_axi_data_p2p_transactor->RST(m_s_axi_data_p2p_transactor_rst_signal);

    // s_axi_data_p2p' transactor sockets

    mp_impl->s_axi_data_p2p_rd_socket->bind(*(mp_s_axi_data_p2p_transactor->rd_socket));
    mp_impl->s_axi_data_p2p_wr_socket->bind(*(mp_s_axi_data_p2p_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'maxi_lite_mb' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "maxi_lite_mb_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'maxi_lite_mb' transactor parameters
    xsc::common_cpp::properties maxi_lite_mb_transactor_param_props;
    maxi_lite_mb_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    maxi_lite_mb_transactor_param_props.addLong("ID_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ADDR_WIDTH", "64");
    maxi_lite_mb_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("BUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_LOCK", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_PROT", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_CACHE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_QOS", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_REGION", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_WSTRB", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_SIZE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RESET", "0");
    maxi_lite_mb_transactor_param_props.addFloat("PHASE", "0.0");
    maxi_lite_mb_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    maxi_lite_mb_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    maxi_lite_mb_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    maxi_lite_mb_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_maxi_lite_mb_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("maxi_lite_mb_transactor", maxi_lite_mb_transactor_param_props);

    // maxi_lite_mb' transactor ports

    mp_maxi_lite_mb_transactor->AWADDR(maxi_lite_mb_awaddr);
    mp_maxi_lite_mb_transactor->AWPROT(maxi_lite_mb_awprot);
    mp_maxi_lite_mb_transactor->AWVALID(maxi_lite_mb_awvalid);
    mp_maxi_lite_mb_transactor->AWREADY(maxi_lite_mb_awready);
    mp_maxi_lite_mb_transactor->WDATA(maxi_lite_mb_wdata);
    mp_maxi_lite_mb_transactor->WSTRB(maxi_lite_mb_wstrb);
    mp_maxi_lite_mb_transactor->WVALID(maxi_lite_mb_wvalid);
    mp_maxi_lite_mb_transactor->WREADY(maxi_lite_mb_wready);
    mp_maxi_lite_mb_transactor->BRESP(maxi_lite_mb_bresp);
    mp_maxi_lite_mb_transactor->BVALID(maxi_lite_mb_bvalid);
    mp_maxi_lite_mb_transactor->BREADY(maxi_lite_mb_bready);
    mp_maxi_lite_mb_transactor->ARADDR(maxi_lite_mb_araddr);
    mp_maxi_lite_mb_transactor->ARPROT(maxi_lite_mb_arprot);
    mp_maxi_lite_mb_transactor->ARVALID(maxi_lite_mb_arvalid);
    mp_maxi_lite_mb_transactor->ARREADY(maxi_lite_mb_arready);
    mp_maxi_lite_mb_transactor->RDATA(maxi_lite_mb_rdata);
    mp_maxi_lite_mb_transactor->RRESP(maxi_lite_mb_rresp);
    mp_maxi_lite_mb_transactor->RVALID(maxi_lite_mb_rvalid);
    mp_maxi_lite_mb_transactor->RREADY(maxi_lite_mb_rready);
    mp_maxi_lite_mb_transactor->CLK(maxi_lite_mb_aclk);
    m_maxi_lite_mb_transactor_rst_signal.write(1);
    mp_maxi_lite_mb_transactor->RST(m_maxi_lite_mb_transactor_rst_signal);

    // maxi_lite_mb' transactor sockets

    mp_impl->maxi_lite_mb_rd_socket->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_impl->maxi_lite_mb_wr_socket->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'm_axi_data_m2m' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "m_axi_data_m2m_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'm_axi_data_m2m' transactor parameters
    xsc::common_cpp::properties m_axi_data_m2m_transactor_param_props;
    m_axi_data_m2m_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    m_axi_data_m2m_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    m_axi_data_m2m_transactor_param_props.addLong("DATA_WIDTH", "32");
    m_axi_data_m2m_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    m_axi_data_m2m_transactor_param_props.addLong("ID_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("ADDR_WIDTH", "64");
    m_axi_data_m2m_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("WUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("RUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("BUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_BURST", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_LOCK", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_PROT", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_CACHE", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_QOS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_REGION", "0");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_WSTRB", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_BRESP", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_RRESP", "1");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    m_axi_data_m2m_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    m_axi_data_m2m_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_SIZE", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_RESET", "0");
    m_axi_data_m2m_transactor_param_props.addFloat("PHASE", "0.0");
    m_axi_data_m2m_transactor_param_props.addString("PROTOCOL", "AXI4");
    m_axi_data_m2m_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    m_axi_data_m2m_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    m_axi_data_m2m_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_m_axi_data_m2m_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("m_axi_data_m2m_transactor", m_axi_data_m2m_transactor_param_props);

    // m_axi_data_m2m' transactor ports

    mp_m_axi_data_m2m_transactor->AWID(m_axi_data_m2m_awid);
    mp_m_axi_data_m2m_transactor->AWADDR(m_axi_data_m2m_awaddr);
    mp_m_axi_data_m2m_transactor->AWLEN(m_axi_data_m2m_awlen);
    mp_m_axi_data_m2m_transactor->AWSIZE(m_axi_data_m2m_awsize);
    mp_m_axi_data_m2m_transactor->AWBURST(m_axi_data_m2m_awburst);
    mp_m_axi_data_m2m_transactor->AWLOCK(m_axi_data_m2m_awlock);
    mp_m_axi_data_m2m_transactor->AWCACHE(m_axi_data_m2m_awcache);
    mp_m_axi_data_m2m_transactor->AWPROT(m_axi_data_m2m_awprot);
    mp_m_axi_data_m2m_transactor->AWQOS(m_axi_data_m2m_awqos);
    mp_m_axi_data_m2m_transactor->AWUSER(m_axi_data_m2m_awuser);
    mp_m_axi_data_m2m_transactor->AWVALID(m_axi_data_m2m_awvalid);
    mp_m_axi_data_m2m_transactor->AWREADY(m_axi_data_m2m_awready);
    mp_m_axi_data_m2m_transactor->WDATA(m_axi_data_m2m_wdata);
    mp_m_axi_data_m2m_transactor->WSTRB(m_axi_data_m2m_wstrb);
    mp_m_axi_data_m2m_transactor->WLAST(m_axi_data_m2m_wlast);
    mp_m_axi_data_m2m_transactor->WUSER(m_axi_data_m2m_wuser);
    mp_m_axi_data_m2m_transactor->WVALID(m_axi_data_m2m_wvalid);
    mp_m_axi_data_m2m_transactor->WREADY(m_axi_data_m2m_wready);
    mp_m_axi_data_m2m_transactor->BID(m_axi_data_m2m_bid);
    mp_m_axi_data_m2m_transactor->BRESP(m_axi_data_m2m_bresp);
    mp_m_axi_data_m2m_transactor->BUSER(m_axi_data_m2m_buser);
    mp_m_axi_data_m2m_transactor->BVALID(m_axi_data_m2m_bvalid);
    mp_m_axi_data_m2m_transactor->BREADY(m_axi_data_m2m_bready);
    mp_m_axi_data_m2m_transactor->ARID(m_axi_data_m2m_arid);
    mp_m_axi_data_m2m_transactor->ARADDR(m_axi_data_m2m_araddr);
    mp_m_axi_data_m2m_transactor->ARLEN(m_axi_data_m2m_arlen);
    mp_m_axi_data_m2m_transactor->ARSIZE(m_axi_data_m2m_arsize);
    mp_m_axi_data_m2m_transactor->ARBURST(m_axi_data_m2m_arburst);
    mp_m_axi_data_m2m_transactor->ARLOCK(m_axi_data_m2m_arlock);
    mp_m_axi_data_m2m_transactor->ARCACHE(m_axi_data_m2m_arcache);
    mp_m_axi_data_m2m_transactor->ARPROT(m_axi_data_m2m_arprot);
    mp_m_axi_data_m2m_transactor->ARQOS(m_axi_data_m2m_arqos);
    mp_m_axi_data_m2m_transactor->ARUSER(m_axi_data_m2m_aruser);
    mp_m_axi_data_m2m_transactor->ARVALID(m_axi_data_m2m_arvalid);
    mp_m_axi_data_m2m_transactor->ARREADY(m_axi_data_m2m_arready);
    mp_m_axi_data_m2m_transactor->RID(m_axi_data_m2m_rid);
    mp_m_axi_data_m2m_transactor->RDATA(m_axi_data_m2m_rdata);
    mp_m_axi_data_m2m_transactor->RRESP(m_axi_data_m2m_rresp);
    mp_m_axi_data_m2m_transactor->RLAST(m_axi_data_m2m_rlast);
    mp_m_axi_data_m2m_transactor->RUSER(m_axi_data_m2m_ruser);
    mp_m_axi_data_m2m_transactor->RVALID(m_axi_data_m2m_rvalid);
    mp_m_axi_data_m2m_transactor->RREADY(m_axi_data_m2m_rready);
    mp_m_axi_data_m2m_transactor->CLK(m_axi_data_m2m_aclk);
    m_m_axi_data_m2m_transactor_rst_signal.write(1);
    mp_m_axi_data_m2m_transactor->RST(m_m_axi_data_m2m_transactor_rst_signal);

    // m_axi_data_m2m' transactor sockets

    mp_impl->m_axi_data_m2m_rd_socket->bind(*(mp_m_axi_data_m2m_transactor->rd_socket));
    mp_impl->m_axi_data_m2m_wr_socket->bind(*(mp_m_axi_data_m2m_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
pfm_top_embedded_schedular_0::pfm_top_embedded_schedular_0(const sc_core::sc_module_name& nm) : pfm_top_embedded_schedular_0_sc(nm),  interrupt_cu("interrupt_cu"), interrupt_m2m("interrupt_m2m"), s_axi_ctrl_user_aresetn("s_axi_ctrl_user_aresetn"), s_axi_data_p2p_aresetn("s_axi_data_p2p_aresetn"), maxi_lite_mb_aresetn("maxi_lite_mb_aresetn"), m_axi_data_m2m_aresetn("m_axi_data_m2m_aresetn"), s_axi_ctrl_user_aclk("s_axi_ctrl_user_aclk"), s_axi_data_p2p_aclk("s_axi_data_p2p_aclk"), maxi_lite_mb_aclk("maxi_lite_mb_aclk"), m_axi_data_m2m_aclk("m_axi_data_m2m_aclk"), s_axi_data_p2p_awaddr("s_axi_data_p2p_awaddr"), s_axi_data_p2p_awlen("s_axi_data_p2p_awlen"), s_axi_data_p2p_awsize("s_axi_data_p2p_awsize"), s_axi_data_p2p_awburst("s_axi_data_p2p_awburst"), s_axi_data_p2p_awlock("s_axi_data_p2p_awlock"), s_axi_data_p2p_awcache("s_axi_data_p2p_awcache"), s_axi_data_p2p_awprot("s_axi_data_p2p_awprot"), s_axi_data_p2p_awregion("s_axi_data_p2p_awregion"), s_axi_data_p2p_awqos("s_axi_data_p2p_awqos"), s_axi_data_p2p_awuser("s_axi_data_p2p_awuser"), s_axi_data_p2p_awvalid("s_axi_data_p2p_awvalid"), s_axi_data_p2p_awready("s_axi_data_p2p_awready"), s_axi_data_p2p_wdata("s_axi_data_p2p_wdata"), s_axi_data_p2p_wstrb("s_axi_data_p2p_wstrb"), s_axi_data_p2p_wlast("s_axi_data_p2p_wlast"), s_axi_data_p2p_wvalid("s_axi_data_p2p_wvalid"), s_axi_data_p2p_wready("s_axi_data_p2p_wready"), s_axi_data_p2p_bresp("s_axi_data_p2p_bresp"), s_axi_data_p2p_buser("s_axi_data_p2p_buser"), s_axi_data_p2p_bvalid("s_axi_data_p2p_bvalid"), s_axi_data_p2p_bready("s_axi_data_p2p_bready"), s_axi_data_p2p_araddr("s_axi_data_p2p_araddr"), s_axi_data_p2p_arlen("s_axi_data_p2p_arlen"), s_axi_data_p2p_arsize("s_axi_data_p2p_arsize"), s_axi_data_p2p_arburst("s_axi_data_p2p_arburst"), s_axi_data_p2p_arlock("s_axi_data_p2p_arlock"), s_axi_data_p2p_arcache("s_axi_data_p2p_arcache"), s_axi_data_p2p_arprot("s_axi_data_p2p_arprot"), s_axi_data_p2p_arregion("s_axi_data_p2p_arregion"), s_axi_data_p2p_arqos("s_axi_data_p2p_arqos"), s_axi_data_p2p_aruser("s_axi_data_p2p_aruser"), s_axi_data_p2p_arvalid("s_axi_data_p2p_arvalid"), s_axi_data_p2p_arready("s_axi_data_p2p_arready"), s_axi_data_p2p_rdata("s_axi_data_p2p_rdata"), s_axi_data_p2p_rresp("s_axi_data_p2p_rresp"), s_axi_data_p2p_rlast("s_axi_data_p2p_rlast"), s_axi_data_p2p_rvalid("s_axi_data_p2p_rvalid"), s_axi_data_p2p_rready("s_axi_data_p2p_rready"), maxi_lite_mb_awaddr("maxi_lite_mb_awaddr"), maxi_lite_mb_awprot("maxi_lite_mb_awprot"), maxi_lite_mb_awvalid("maxi_lite_mb_awvalid"), maxi_lite_mb_awready("maxi_lite_mb_awready"), maxi_lite_mb_wdata("maxi_lite_mb_wdata"), maxi_lite_mb_wstrb("maxi_lite_mb_wstrb"), maxi_lite_mb_wvalid("maxi_lite_mb_wvalid"), maxi_lite_mb_wready("maxi_lite_mb_wready"), maxi_lite_mb_bresp("maxi_lite_mb_bresp"), maxi_lite_mb_bvalid("maxi_lite_mb_bvalid"), maxi_lite_mb_bready("maxi_lite_mb_bready"), maxi_lite_mb_araddr("maxi_lite_mb_araddr"), maxi_lite_mb_arprot("maxi_lite_mb_arprot"), maxi_lite_mb_arvalid("maxi_lite_mb_arvalid"), maxi_lite_mb_arready("maxi_lite_mb_arready"), maxi_lite_mb_rdata("maxi_lite_mb_rdata"), maxi_lite_mb_rresp("maxi_lite_mb_rresp"), maxi_lite_mb_rvalid("maxi_lite_mb_rvalid"), maxi_lite_mb_rready("maxi_lite_mb_rready"), m_axi_data_m2m_awid("m_axi_data_m2m_awid"), m_axi_data_m2m_awaddr("m_axi_data_m2m_awaddr"), m_axi_data_m2m_awlen("m_axi_data_m2m_awlen"), m_axi_data_m2m_awsize("m_axi_data_m2m_awsize"), m_axi_data_m2m_awburst("m_axi_data_m2m_awburst"), m_axi_data_m2m_awlock("m_axi_data_m2m_awlock"), m_axi_data_m2m_awcache("m_axi_data_m2m_awcache"), m_axi_data_m2m_awprot("m_axi_data_m2m_awprot"), m_axi_data_m2m_awqos("m_axi_data_m2m_awqos"), m_axi_data_m2m_awuser("m_axi_data_m2m_awuser"), m_axi_data_m2m_awvalid("m_axi_data_m2m_awvalid"), m_axi_data_m2m_awready("m_axi_data_m2m_awready"), m_axi_data_m2m_wdata("m_axi_data_m2m_wdata"), m_axi_data_m2m_wstrb("m_axi_data_m2m_wstrb"), m_axi_data_m2m_wlast("m_axi_data_m2m_wlast"), m_axi_data_m2m_wuser("m_axi_data_m2m_wuser"), m_axi_data_m2m_wvalid("m_axi_data_m2m_wvalid"), m_axi_data_m2m_wready("m_axi_data_m2m_wready"), m_axi_data_m2m_bid("m_axi_data_m2m_bid"), m_axi_data_m2m_bresp("m_axi_data_m2m_bresp"), m_axi_data_m2m_buser("m_axi_data_m2m_buser"), m_axi_data_m2m_bvalid("m_axi_data_m2m_bvalid"), m_axi_data_m2m_bready("m_axi_data_m2m_bready"), m_axi_data_m2m_arid("m_axi_data_m2m_arid"), m_axi_data_m2m_araddr("m_axi_data_m2m_araddr"), m_axi_data_m2m_arlen("m_axi_data_m2m_arlen"), m_axi_data_m2m_arsize("m_axi_data_m2m_arsize"), m_axi_data_m2m_arburst("m_axi_data_m2m_arburst"), m_axi_data_m2m_arlock("m_axi_data_m2m_arlock"), m_axi_data_m2m_arcache("m_axi_data_m2m_arcache"), m_axi_data_m2m_arprot("m_axi_data_m2m_arprot"), m_axi_data_m2m_arqos("m_axi_data_m2m_arqos"), m_axi_data_m2m_aruser("m_axi_data_m2m_aruser"), m_axi_data_m2m_arvalid("m_axi_data_m2m_arvalid"), m_axi_data_m2m_arready("m_axi_data_m2m_arready"), m_axi_data_m2m_rid("m_axi_data_m2m_rid"), m_axi_data_m2m_rdata("m_axi_data_m2m_rdata"), m_axi_data_m2m_rresp("m_axi_data_m2m_rresp"), m_axi_data_m2m_rlast("m_axi_data_m2m_rlast"), m_axi_data_m2m_ruser("m_axi_data_m2m_ruser"), m_axi_data_m2m_rvalid("m_axi_data_m2m_rvalid"), m_axi_data_m2m_rready("m_axi_data_m2m_rready"), s_axi_ctrl_user_awaddr("s_axi_ctrl_user_awaddr"), s_axi_ctrl_user_awprot("s_axi_ctrl_user_awprot"), s_axi_ctrl_user_awvalid("s_axi_ctrl_user_awvalid"), s_axi_ctrl_user_awready("s_axi_ctrl_user_awready"), s_axi_ctrl_user_wdata("s_axi_ctrl_user_wdata"), s_axi_ctrl_user_wstrb("s_axi_ctrl_user_wstrb"), s_axi_ctrl_user_wvalid("s_axi_ctrl_user_wvalid"), s_axi_ctrl_user_wready("s_axi_ctrl_user_wready"), s_axi_ctrl_user_bresp("s_axi_ctrl_user_bresp"), s_axi_ctrl_user_bvalid("s_axi_ctrl_user_bvalid"), s_axi_ctrl_user_bready("s_axi_ctrl_user_bready"), s_axi_ctrl_user_araddr("s_axi_ctrl_user_araddr"), s_axi_ctrl_user_arprot("s_axi_ctrl_user_arprot"), s_axi_ctrl_user_arvalid("s_axi_ctrl_user_arvalid"), s_axi_ctrl_user_arready("s_axi_ctrl_user_arready"), s_axi_ctrl_user_rdata("s_axi_ctrl_user_rdata"), s_axi_ctrl_user_rresp("s_axi_ctrl_user_rresp"), s_axi_ctrl_user_rvalid("s_axi_ctrl_user_rvalid"), s_axi_ctrl_user_rready("s_axi_ctrl_user_rready")
{
  // initialize pins
  mp_impl->interrupt_cu(interrupt_cu);
  mp_impl->interrupt_m2m(interrupt_m2m);
  mp_impl->s_axi_ctrl_user_aresetn(s_axi_ctrl_user_aresetn);
  mp_impl->s_axi_data_p2p_aresetn(s_axi_data_p2p_aresetn);
  mp_impl->maxi_lite_mb_aresetn(maxi_lite_mb_aresetn);
  mp_impl->m_axi_data_m2m_aresetn(m_axi_data_m2m_aresetn);
  mp_impl->s_axi_ctrl_user_aclk(s_axi_ctrl_user_aclk);
  mp_impl->s_axi_data_p2p_aclk(s_axi_data_p2p_aclk);
  mp_impl->maxi_lite_mb_aclk(maxi_lite_mb_aclk);
  mp_impl->m_axi_data_m2m_aclk(m_axi_data_m2m_aclk);

  // initialize transactors
  mp_s_axi_ctrl_user_transactor = NULL;
  mp_s_axi_data_p2p_transactor = NULL;
  mp_maxi_lite_mb_transactor = NULL;
  mp_m_axi_data_m2m_transactor = NULL;

  // Instantiate Socket Stubs

  // configure s_axi_ctrl_user_transactor
    xsc::common_cpp::properties s_axi_ctrl_user_transactor_param_props;
    s_axi_ctrl_user_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    s_axi_ctrl_user_transactor_param_props.addLong("WIZ_NUM_REG", "4");
    s_axi_ctrl_user_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("DATA_WIDTH", "32");
    s_axi_ctrl_user_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_ctrl_user_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("ADDR_WIDTH", "64");
    s_axi_ctrl_user_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("BUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_BURST", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_LOCK", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_PROT", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_CACHE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_QOS", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_REGION", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    s_axi_ctrl_user_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_SIZE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_RESET", "0");
    s_axi_ctrl_user_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_ctrl_user_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    s_axi_ctrl_user_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_ctrl_user_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    s_axi_ctrl_user_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_ctrl_user_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("s_axi_ctrl_user_transactor", s_axi_ctrl_user_transactor_param_props);
  mp_s_axi_ctrl_user_transactor->AWADDR(s_axi_ctrl_user_awaddr);
  mp_s_axi_ctrl_user_transactor->AWPROT(s_axi_ctrl_user_awprot);
  mp_s_axi_ctrl_user_transactor->AWVALID(s_axi_ctrl_user_awvalid);
  mp_s_axi_ctrl_user_transactor->AWREADY(s_axi_ctrl_user_awready);
  mp_s_axi_ctrl_user_transactor->WDATA(s_axi_ctrl_user_wdata);
  mp_s_axi_ctrl_user_transactor->WSTRB(s_axi_ctrl_user_wstrb);
  mp_s_axi_ctrl_user_transactor->WVALID(s_axi_ctrl_user_wvalid);
  mp_s_axi_ctrl_user_transactor->WREADY(s_axi_ctrl_user_wready);
  mp_s_axi_ctrl_user_transactor->BRESP(s_axi_ctrl_user_bresp);
  mp_s_axi_ctrl_user_transactor->BVALID(s_axi_ctrl_user_bvalid);
  mp_s_axi_ctrl_user_transactor->BREADY(s_axi_ctrl_user_bready);
  mp_s_axi_ctrl_user_transactor->ARADDR(s_axi_ctrl_user_araddr);
  mp_s_axi_ctrl_user_transactor->ARPROT(s_axi_ctrl_user_arprot);
  mp_s_axi_ctrl_user_transactor->ARVALID(s_axi_ctrl_user_arvalid);
  mp_s_axi_ctrl_user_transactor->ARREADY(s_axi_ctrl_user_arready);
  mp_s_axi_ctrl_user_transactor->RDATA(s_axi_ctrl_user_rdata);
  mp_s_axi_ctrl_user_transactor->RRESP(s_axi_ctrl_user_rresp);
  mp_s_axi_ctrl_user_transactor->RVALID(s_axi_ctrl_user_rvalid);
  mp_s_axi_ctrl_user_transactor->RREADY(s_axi_ctrl_user_rready);
  mp_s_axi_ctrl_user_transactor->CLK(s_axi_ctrl_user_aclk);
  m_s_axi_ctrl_user_transactor_rst_signal.write(1);
  mp_s_axi_ctrl_user_transactor->RST(m_s_axi_ctrl_user_transactor_rst_signal);
  // configure s_axi_data_p2p_transactor
    xsc::common_cpp::properties s_axi_data_p2p_transactor_param_props;
    s_axi_data_p2p_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    s_axi_data_p2p_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    s_axi_data_p2p_transactor_param_props.addLong("DATA_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_data_p2p_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("ADDR_WIDTH", "64");
    s_axi_data_p2p_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("BUSER_WIDTH", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_BURST", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_LOCK", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_PROT", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_CACHE", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_QOS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_REGION", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    s_axi_data_p2p_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_data_p2p_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_SIZE", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_RESET", "0");
    s_axi_data_p2p_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_data_p2p_transactor_param_props.addString("PROTOCOL", "AXI4");
    s_axi_data_p2p_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_data_p2p_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    s_axi_data_p2p_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_data_p2p_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,32,1,1,32,1>("s_axi_data_p2p_transactor", s_axi_data_p2p_transactor_param_props);
  mp_s_axi_data_p2p_transactor->AWADDR(s_axi_data_p2p_awaddr);
  mp_s_axi_data_p2p_transactor->AWLEN(s_axi_data_p2p_awlen);
  mp_s_axi_data_p2p_transactor->AWSIZE(s_axi_data_p2p_awsize);
  mp_s_axi_data_p2p_transactor->AWBURST(s_axi_data_p2p_awburst);
  mp_s_axi_data_p2p_transactor->AWLOCK(s_axi_data_p2p_awlock);
  mp_s_axi_data_p2p_transactor->AWCACHE(s_axi_data_p2p_awcache);
  mp_s_axi_data_p2p_transactor->AWPROT(s_axi_data_p2p_awprot);
  mp_s_axi_data_p2p_transactor->AWREGION(s_axi_data_p2p_awregion);
  mp_s_axi_data_p2p_transactor->AWQOS(s_axi_data_p2p_awqos);
  mp_s_axi_data_p2p_transactor->AWUSER(s_axi_data_p2p_awuser);
  mp_s_axi_data_p2p_transactor->AWVALID(s_axi_data_p2p_awvalid);
  mp_s_axi_data_p2p_transactor->AWREADY(s_axi_data_p2p_awready);
  mp_s_axi_data_p2p_transactor->WDATA(s_axi_data_p2p_wdata);
  mp_s_axi_data_p2p_transactor->WSTRB(s_axi_data_p2p_wstrb);
  mp_s_axi_data_p2p_transactor->WLAST(s_axi_data_p2p_wlast);
  mp_s_axi_data_p2p_transactor->WVALID(s_axi_data_p2p_wvalid);
  mp_s_axi_data_p2p_transactor->WREADY(s_axi_data_p2p_wready);
  mp_s_axi_data_p2p_transactor->BRESP(s_axi_data_p2p_bresp);
  mp_s_axi_data_p2p_transactor->BUSER(s_axi_data_p2p_buser);
  mp_s_axi_data_p2p_transactor->BVALID(s_axi_data_p2p_bvalid);
  mp_s_axi_data_p2p_transactor->BREADY(s_axi_data_p2p_bready);
  mp_s_axi_data_p2p_transactor->ARADDR(s_axi_data_p2p_araddr);
  mp_s_axi_data_p2p_transactor->ARLEN(s_axi_data_p2p_arlen);
  mp_s_axi_data_p2p_transactor->ARSIZE(s_axi_data_p2p_arsize);
  mp_s_axi_data_p2p_transactor->ARBURST(s_axi_data_p2p_arburst);
  mp_s_axi_data_p2p_transactor->ARLOCK(s_axi_data_p2p_arlock);
  mp_s_axi_data_p2p_transactor->ARCACHE(s_axi_data_p2p_arcache);
  mp_s_axi_data_p2p_transactor->ARPROT(s_axi_data_p2p_arprot);
  mp_s_axi_data_p2p_transactor->ARREGION(s_axi_data_p2p_arregion);
  mp_s_axi_data_p2p_transactor->ARQOS(s_axi_data_p2p_arqos);
  mp_s_axi_data_p2p_transactor->ARUSER(s_axi_data_p2p_aruser);
  mp_s_axi_data_p2p_transactor->ARVALID(s_axi_data_p2p_arvalid);
  mp_s_axi_data_p2p_transactor->ARREADY(s_axi_data_p2p_arready);
  mp_s_axi_data_p2p_transactor->RDATA(s_axi_data_p2p_rdata);
  mp_s_axi_data_p2p_transactor->RRESP(s_axi_data_p2p_rresp);
  mp_s_axi_data_p2p_transactor->RLAST(s_axi_data_p2p_rlast);
  mp_s_axi_data_p2p_transactor->RVALID(s_axi_data_p2p_rvalid);
  mp_s_axi_data_p2p_transactor->RREADY(s_axi_data_p2p_rready);
  mp_s_axi_data_p2p_transactor->CLK(s_axi_data_p2p_aclk);
  m_s_axi_data_p2p_transactor_rst_signal.write(1);
  mp_s_axi_data_p2p_transactor->RST(m_s_axi_data_p2p_transactor_rst_signal);
  // configure maxi_lite_mb_transactor
    xsc::common_cpp::properties maxi_lite_mb_transactor_param_props;
    maxi_lite_mb_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    maxi_lite_mb_transactor_param_props.addLong("ID_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ADDR_WIDTH", "64");
    maxi_lite_mb_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("BUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_LOCK", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_PROT", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_CACHE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_QOS", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_REGION", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_WSTRB", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_SIZE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RESET", "0");
    maxi_lite_mb_transactor_param_props.addFloat("PHASE", "0.0");
    maxi_lite_mb_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    maxi_lite_mb_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    maxi_lite_mb_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    maxi_lite_mb_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_maxi_lite_mb_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("maxi_lite_mb_transactor", maxi_lite_mb_transactor_param_props);
  mp_maxi_lite_mb_transactor->AWADDR(maxi_lite_mb_awaddr);
  mp_maxi_lite_mb_transactor->AWPROT(maxi_lite_mb_awprot);
  mp_maxi_lite_mb_transactor->AWVALID(maxi_lite_mb_awvalid);
  mp_maxi_lite_mb_transactor->AWREADY(maxi_lite_mb_awready);
  mp_maxi_lite_mb_transactor->WDATA(maxi_lite_mb_wdata);
  mp_maxi_lite_mb_transactor->WSTRB(maxi_lite_mb_wstrb);
  mp_maxi_lite_mb_transactor->WVALID(maxi_lite_mb_wvalid);
  mp_maxi_lite_mb_transactor->WREADY(maxi_lite_mb_wready);
  mp_maxi_lite_mb_transactor->BRESP(maxi_lite_mb_bresp);
  mp_maxi_lite_mb_transactor->BVALID(maxi_lite_mb_bvalid);
  mp_maxi_lite_mb_transactor->BREADY(maxi_lite_mb_bready);
  mp_maxi_lite_mb_transactor->ARADDR(maxi_lite_mb_araddr);
  mp_maxi_lite_mb_transactor->ARPROT(maxi_lite_mb_arprot);
  mp_maxi_lite_mb_transactor->ARVALID(maxi_lite_mb_arvalid);
  mp_maxi_lite_mb_transactor->ARREADY(maxi_lite_mb_arready);
  mp_maxi_lite_mb_transactor->RDATA(maxi_lite_mb_rdata);
  mp_maxi_lite_mb_transactor->RRESP(maxi_lite_mb_rresp);
  mp_maxi_lite_mb_transactor->RVALID(maxi_lite_mb_rvalid);
  mp_maxi_lite_mb_transactor->RREADY(maxi_lite_mb_rready);
  mp_maxi_lite_mb_transactor->CLK(maxi_lite_mb_aclk);
  m_maxi_lite_mb_transactor_rst_signal.write(1);
  mp_maxi_lite_mb_transactor->RST(m_maxi_lite_mb_transactor_rst_signal);
  // configure m_axi_data_m2m_transactor
    xsc::common_cpp::properties m_axi_data_m2m_transactor_param_props;
    m_axi_data_m2m_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    m_axi_data_m2m_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    m_axi_data_m2m_transactor_param_props.addLong("DATA_WIDTH", "32");
    m_axi_data_m2m_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    m_axi_data_m2m_transactor_param_props.addLong("ID_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("ADDR_WIDTH", "64");
    m_axi_data_m2m_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("WUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("RUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("BUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_BURST", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_LOCK", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_PROT", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_CACHE", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_QOS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_REGION", "0");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_WSTRB", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_BRESP", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_RRESP", "1");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    m_axi_data_m2m_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    m_axi_data_m2m_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_SIZE", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_RESET", "0");
    m_axi_data_m2m_transactor_param_props.addFloat("PHASE", "0.0");
    m_axi_data_m2m_transactor_param_props.addString("PROTOCOL", "AXI4");
    m_axi_data_m2m_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    m_axi_data_m2m_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    m_axi_data_m2m_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_m_axi_data_m2m_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("m_axi_data_m2m_transactor", m_axi_data_m2m_transactor_param_props);
  mp_m_axi_data_m2m_transactor->AWID(m_axi_data_m2m_awid);
  mp_m_axi_data_m2m_transactor->AWADDR(m_axi_data_m2m_awaddr);
  mp_m_axi_data_m2m_transactor->AWLEN(m_axi_data_m2m_awlen);
  mp_m_axi_data_m2m_transactor->AWSIZE(m_axi_data_m2m_awsize);
  mp_m_axi_data_m2m_transactor->AWBURST(m_axi_data_m2m_awburst);
  mp_m_axi_data_m2m_transactor->AWLOCK(m_axi_data_m2m_awlock);
  mp_m_axi_data_m2m_transactor->AWCACHE(m_axi_data_m2m_awcache);
  mp_m_axi_data_m2m_transactor->AWPROT(m_axi_data_m2m_awprot);
  mp_m_axi_data_m2m_transactor->AWQOS(m_axi_data_m2m_awqos);
  mp_m_axi_data_m2m_transactor->AWUSER(m_axi_data_m2m_awuser);
  mp_m_axi_data_m2m_transactor->AWVALID(m_axi_data_m2m_awvalid);
  mp_m_axi_data_m2m_transactor->AWREADY(m_axi_data_m2m_awready);
  mp_m_axi_data_m2m_transactor->WDATA(m_axi_data_m2m_wdata);
  mp_m_axi_data_m2m_transactor->WSTRB(m_axi_data_m2m_wstrb);
  mp_m_axi_data_m2m_transactor->WLAST(m_axi_data_m2m_wlast);
  mp_m_axi_data_m2m_transactor->WUSER(m_axi_data_m2m_wuser);
  mp_m_axi_data_m2m_transactor->WVALID(m_axi_data_m2m_wvalid);
  mp_m_axi_data_m2m_transactor->WREADY(m_axi_data_m2m_wready);
  mp_m_axi_data_m2m_transactor->BID(m_axi_data_m2m_bid);
  mp_m_axi_data_m2m_transactor->BRESP(m_axi_data_m2m_bresp);
  mp_m_axi_data_m2m_transactor->BUSER(m_axi_data_m2m_buser);
  mp_m_axi_data_m2m_transactor->BVALID(m_axi_data_m2m_bvalid);
  mp_m_axi_data_m2m_transactor->BREADY(m_axi_data_m2m_bready);
  mp_m_axi_data_m2m_transactor->ARID(m_axi_data_m2m_arid);
  mp_m_axi_data_m2m_transactor->ARADDR(m_axi_data_m2m_araddr);
  mp_m_axi_data_m2m_transactor->ARLEN(m_axi_data_m2m_arlen);
  mp_m_axi_data_m2m_transactor->ARSIZE(m_axi_data_m2m_arsize);
  mp_m_axi_data_m2m_transactor->ARBURST(m_axi_data_m2m_arburst);
  mp_m_axi_data_m2m_transactor->ARLOCK(m_axi_data_m2m_arlock);
  mp_m_axi_data_m2m_transactor->ARCACHE(m_axi_data_m2m_arcache);
  mp_m_axi_data_m2m_transactor->ARPROT(m_axi_data_m2m_arprot);
  mp_m_axi_data_m2m_transactor->ARQOS(m_axi_data_m2m_arqos);
  mp_m_axi_data_m2m_transactor->ARUSER(m_axi_data_m2m_aruser);
  mp_m_axi_data_m2m_transactor->ARVALID(m_axi_data_m2m_arvalid);
  mp_m_axi_data_m2m_transactor->ARREADY(m_axi_data_m2m_arready);
  mp_m_axi_data_m2m_transactor->RID(m_axi_data_m2m_rid);
  mp_m_axi_data_m2m_transactor->RDATA(m_axi_data_m2m_rdata);
  mp_m_axi_data_m2m_transactor->RRESP(m_axi_data_m2m_rresp);
  mp_m_axi_data_m2m_transactor->RLAST(m_axi_data_m2m_rlast);
  mp_m_axi_data_m2m_transactor->RUSER(m_axi_data_m2m_ruser);
  mp_m_axi_data_m2m_transactor->RVALID(m_axi_data_m2m_rvalid);
  mp_m_axi_data_m2m_transactor->RREADY(m_axi_data_m2m_rready);
  mp_m_axi_data_m2m_transactor->CLK(m_axi_data_m2m_aclk);
  m_m_axi_data_m2m_transactor_rst_signal.write(1);
  mp_m_axi_data_m2m_transactor->RST(m_m_axi_data_m2m_transactor_rst_signal);

  // initialize transactors stubs
  s_axi_ctrl_user_transactor_target_wr_socket_stub = nullptr;
  s_axi_ctrl_user_transactor_target_rd_socket_stub = nullptr;
  s_axi_data_p2p_transactor_target_wr_socket_stub = nullptr;
  s_axi_data_p2p_transactor_target_rd_socket_stub = nullptr;
  maxi_lite_mb_transactor_initiator_wr_socket_stub = nullptr;
  maxi_lite_mb_transactor_initiator_rd_socket_stub = nullptr;
  m_axi_data_m2m_transactor_initiator_wr_socket_stub = nullptr;
  m_axi_data_m2m_transactor_initiator_rd_socket_stub = nullptr;

}

void pfm_top_embedded_schedular_0::before_end_of_elaboration()
{
  // configure 's_axi_ctrl_user' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "s_axi_ctrl_user_TLM_MODE") != 1)
  {
    mp_impl->s_axi_ctrl_user_rd_socket->bind(*(mp_s_axi_ctrl_user_transactor->rd_socket));
    mp_impl->s_axi_ctrl_user_wr_socket->bind(*(mp_s_axi_ctrl_user_transactor->wr_socket));
  
  }
  else
  {
    s_axi_ctrl_user_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    s_axi_ctrl_user_transactor_target_wr_socket_stub->bind(*(mp_s_axi_ctrl_user_transactor->wr_socket));
    s_axi_ctrl_user_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    s_axi_ctrl_user_transactor_target_rd_socket_stub->bind(*(mp_s_axi_ctrl_user_transactor->rd_socket));
    mp_s_axi_ctrl_user_transactor->disable_transactor();
  }

  // configure 's_axi_data_p2p' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "s_axi_data_p2p_TLM_MODE") != 1)
  {
    mp_impl->s_axi_data_p2p_rd_socket->bind(*(mp_s_axi_data_p2p_transactor->rd_socket));
    mp_impl->s_axi_data_p2p_wr_socket->bind(*(mp_s_axi_data_p2p_transactor->wr_socket));
  
  }
  else
  {
    s_axi_data_p2p_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    s_axi_data_p2p_transactor_target_wr_socket_stub->bind(*(mp_s_axi_data_p2p_transactor->wr_socket));
    s_axi_data_p2p_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    s_axi_data_p2p_transactor_target_rd_socket_stub->bind(*(mp_s_axi_data_p2p_transactor->rd_socket));
    mp_s_axi_data_p2p_transactor->disable_transactor();
  }

  // configure 'maxi_lite_mb' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "maxi_lite_mb_TLM_MODE") != 1)
  {
    mp_impl->maxi_lite_mb_rd_socket->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_impl->maxi_lite_mb_wr_socket->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
  
  }
  else
  {
    maxi_lite_mb_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    maxi_lite_mb_transactor_initiator_wr_socket_stub->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
    maxi_lite_mb_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    maxi_lite_mb_transactor_initiator_rd_socket_stub->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_maxi_lite_mb_transactor->disable_transactor();
  }

  // configure 'm_axi_data_m2m' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "m_axi_data_m2m_TLM_MODE") != 1)
  {
    mp_impl->m_axi_data_m2m_rd_socket->bind(*(mp_m_axi_data_m2m_transactor->rd_socket));
    mp_impl->m_axi_data_m2m_wr_socket->bind(*(mp_m_axi_data_m2m_transactor->wr_socket));
  
  }
  else
  {
    m_axi_data_m2m_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    m_axi_data_m2m_transactor_initiator_wr_socket_stub->bind(*(mp_m_axi_data_m2m_transactor->wr_socket));
    m_axi_data_m2m_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    m_axi_data_m2m_transactor_initiator_rd_socket_stub->bind(*(mp_m_axi_data_m2m_transactor->rd_socket));
    mp_m_axi_data_m2m_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
pfm_top_embedded_schedular_0::pfm_top_embedded_schedular_0(const sc_core::sc_module_name& nm) : pfm_top_embedded_schedular_0_sc(nm),  interrupt_cu("interrupt_cu"), interrupt_m2m("interrupt_m2m"), s_axi_ctrl_user_aresetn("s_axi_ctrl_user_aresetn"), s_axi_data_p2p_aresetn("s_axi_data_p2p_aresetn"), maxi_lite_mb_aresetn("maxi_lite_mb_aresetn"), m_axi_data_m2m_aresetn("m_axi_data_m2m_aresetn"), s_axi_ctrl_user_aclk("s_axi_ctrl_user_aclk"), s_axi_data_p2p_aclk("s_axi_data_p2p_aclk"), maxi_lite_mb_aclk("maxi_lite_mb_aclk"), m_axi_data_m2m_aclk("m_axi_data_m2m_aclk"), s_axi_data_p2p_awaddr("s_axi_data_p2p_awaddr"), s_axi_data_p2p_awlen("s_axi_data_p2p_awlen"), s_axi_data_p2p_awsize("s_axi_data_p2p_awsize"), s_axi_data_p2p_awburst("s_axi_data_p2p_awburst"), s_axi_data_p2p_awlock("s_axi_data_p2p_awlock"), s_axi_data_p2p_awcache("s_axi_data_p2p_awcache"), s_axi_data_p2p_awprot("s_axi_data_p2p_awprot"), s_axi_data_p2p_awregion("s_axi_data_p2p_awregion"), s_axi_data_p2p_awqos("s_axi_data_p2p_awqos"), s_axi_data_p2p_awuser("s_axi_data_p2p_awuser"), s_axi_data_p2p_awvalid("s_axi_data_p2p_awvalid"), s_axi_data_p2p_awready("s_axi_data_p2p_awready"), s_axi_data_p2p_wdata("s_axi_data_p2p_wdata"), s_axi_data_p2p_wstrb("s_axi_data_p2p_wstrb"), s_axi_data_p2p_wlast("s_axi_data_p2p_wlast"), s_axi_data_p2p_wvalid("s_axi_data_p2p_wvalid"), s_axi_data_p2p_wready("s_axi_data_p2p_wready"), s_axi_data_p2p_bresp("s_axi_data_p2p_bresp"), s_axi_data_p2p_buser("s_axi_data_p2p_buser"), s_axi_data_p2p_bvalid("s_axi_data_p2p_bvalid"), s_axi_data_p2p_bready("s_axi_data_p2p_bready"), s_axi_data_p2p_araddr("s_axi_data_p2p_araddr"), s_axi_data_p2p_arlen("s_axi_data_p2p_arlen"), s_axi_data_p2p_arsize("s_axi_data_p2p_arsize"), s_axi_data_p2p_arburst("s_axi_data_p2p_arburst"), s_axi_data_p2p_arlock("s_axi_data_p2p_arlock"), s_axi_data_p2p_arcache("s_axi_data_p2p_arcache"), s_axi_data_p2p_arprot("s_axi_data_p2p_arprot"), s_axi_data_p2p_arregion("s_axi_data_p2p_arregion"), s_axi_data_p2p_arqos("s_axi_data_p2p_arqos"), s_axi_data_p2p_aruser("s_axi_data_p2p_aruser"), s_axi_data_p2p_arvalid("s_axi_data_p2p_arvalid"), s_axi_data_p2p_arready("s_axi_data_p2p_arready"), s_axi_data_p2p_rdata("s_axi_data_p2p_rdata"), s_axi_data_p2p_rresp("s_axi_data_p2p_rresp"), s_axi_data_p2p_rlast("s_axi_data_p2p_rlast"), s_axi_data_p2p_rvalid("s_axi_data_p2p_rvalid"), s_axi_data_p2p_rready("s_axi_data_p2p_rready"), maxi_lite_mb_awaddr("maxi_lite_mb_awaddr"), maxi_lite_mb_awprot("maxi_lite_mb_awprot"), maxi_lite_mb_awvalid("maxi_lite_mb_awvalid"), maxi_lite_mb_awready("maxi_lite_mb_awready"), maxi_lite_mb_wdata("maxi_lite_mb_wdata"), maxi_lite_mb_wstrb("maxi_lite_mb_wstrb"), maxi_lite_mb_wvalid("maxi_lite_mb_wvalid"), maxi_lite_mb_wready("maxi_lite_mb_wready"), maxi_lite_mb_bresp("maxi_lite_mb_bresp"), maxi_lite_mb_bvalid("maxi_lite_mb_bvalid"), maxi_lite_mb_bready("maxi_lite_mb_bready"), maxi_lite_mb_araddr("maxi_lite_mb_araddr"), maxi_lite_mb_arprot("maxi_lite_mb_arprot"), maxi_lite_mb_arvalid("maxi_lite_mb_arvalid"), maxi_lite_mb_arready("maxi_lite_mb_arready"), maxi_lite_mb_rdata("maxi_lite_mb_rdata"), maxi_lite_mb_rresp("maxi_lite_mb_rresp"), maxi_lite_mb_rvalid("maxi_lite_mb_rvalid"), maxi_lite_mb_rready("maxi_lite_mb_rready"), m_axi_data_m2m_awid("m_axi_data_m2m_awid"), m_axi_data_m2m_awaddr("m_axi_data_m2m_awaddr"), m_axi_data_m2m_awlen("m_axi_data_m2m_awlen"), m_axi_data_m2m_awsize("m_axi_data_m2m_awsize"), m_axi_data_m2m_awburst("m_axi_data_m2m_awburst"), m_axi_data_m2m_awlock("m_axi_data_m2m_awlock"), m_axi_data_m2m_awcache("m_axi_data_m2m_awcache"), m_axi_data_m2m_awprot("m_axi_data_m2m_awprot"), m_axi_data_m2m_awqos("m_axi_data_m2m_awqos"), m_axi_data_m2m_awuser("m_axi_data_m2m_awuser"), m_axi_data_m2m_awvalid("m_axi_data_m2m_awvalid"), m_axi_data_m2m_awready("m_axi_data_m2m_awready"), m_axi_data_m2m_wdata("m_axi_data_m2m_wdata"), m_axi_data_m2m_wstrb("m_axi_data_m2m_wstrb"), m_axi_data_m2m_wlast("m_axi_data_m2m_wlast"), m_axi_data_m2m_wuser("m_axi_data_m2m_wuser"), m_axi_data_m2m_wvalid("m_axi_data_m2m_wvalid"), m_axi_data_m2m_wready("m_axi_data_m2m_wready"), m_axi_data_m2m_bid("m_axi_data_m2m_bid"), m_axi_data_m2m_bresp("m_axi_data_m2m_bresp"), m_axi_data_m2m_buser("m_axi_data_m2m_buser"), m_axi_data_m2m_bvalid("m_axi_data_m2m_bvalid"), m_axi_data_m2m_bready("m_axi_data_m2m_bready"), m_axi_data_m2m_arid("m_axi_data_m2m_arid"), m_axi_data_m2m_araddr("m_axi_data_m2m_araddr"), m_axi_data_m2m_arlen("m_axi_data_m2m_arlen"), m_axi_data_m2m_arsize("m_axi_data_m2m_arsize"), m_axi_data_m2m_arburst("m_axi_data_m2m_arburst"), m_axi_data_m2m_arlock("m_axi_data_m2m_arlock"), m_axi_data_m2m_arcache("m_axi_data_m2m_arcache"), m_axi_data_m2m_arprot("m_axi_data_m2m_arprot"), m_axi_data_m2m_arqos("m_axi_data_m2m_arqos"), m_axi_data_m2m_aruser("m_axi_data_m2m_aruser"), m_axi_data_m2m_arvalid("m_axi_data_m2m_arvalid"), m_axi_data_m2m_arready("m_axi_data_m2m_arready"), m_axi_data_m2m_rid("m_axi_data_m2m_rid"), m_axi_data_m2m_rdata("m_axi_data_m2m_rdata"), m_axi_data_m2m_rresp("m_axi_data_m2m_rresp"), m_axi_data_m2m_rlast("m_axi_data_m2m_rlast"), m_axi_data_m2m_ruser("m_axi_data_m2m_ruser"), m_axi_data_m2m_rvalid("m_axi_data_m2m_rvalid"), m_axi_data_m2m_rready("m_axi_data_m2m_rready"), s_axi_ctrl_user_awaddr("s_axi_ctrl_user_awaddr"), s_axi_ctrl_user_awprot("s_axi_ctrl_user_awprot"), s_axi_ctrl_user_awvalid("s_axi_ctrl_user_awvalid"), s_axi_ctrl_user_awready("s_axi_ctrl_user_awready"), s_axi_ctrl_user_wdata("s_axi_ctrl_user_wdata"), s_axi_ctrl_user_wstrb("s_axi_ctrl_user_wstrb"), s_axi_ctrl_user_wvalid("s_axi_ctrl_user_wvalid"), s_axi_ctrl_user_wready("s_axi_ctrl_user_wready"), s_axi_ctrl_user_bresp("s_axi_ctrl_user_bresp"), s_axi_ctrl_user_bvalid("s_axi_ctrl_user_bvalid"), s_axi_ctrl_user_bready("s_axi_ctrl_user_bready"), s_axi_ctrl_user_araddr("s_axi_ctrl_user_araddr"), s_axi_ctrl_user_arprot("s_axi_ctrl_user_arprot"), s_axi_ctrl_user_arvalid("s_axi_ctrl_user_arvalid"), s_axi_ctrl_user_arready("s_axi_ctrl_user_arready"), s_axi_ctrl_user_rdata("s_axi_ctrl_user_rdata"), s_axi_ctrl_user_rresp("s_axi_ctrl_user_rresp"), s_axi_ctrl_user_rvalid("s_axi_ctrl_user_rvalid"), s_axi_ctrl_user_rready("s_axi_ctrl_user_rready")
{
  // initialize pins
  mp_impl->interrupt_cu(interrupt_cu);
  mp_impl->interrupt_m2m(interrupt_m2m);
  mp_impl->s_axi_ctrl_user_aresetn(s_axi_ctrl_user_aresetn);
  mp_impl->s_axi_data_p2p_aresetn(s_axi_data_p2p_aresetn);
  mp_impl->maxi_lite_mb_aresetn(maxi_lite_mb_aresetn);
  mp_impl->m_axi_data_m2m_aresetn(m_axi_data_m2m_aresetn);
  mp_impl->s_axi_ctrl_user_aclk(s_axi_ctrl_user_aclk);
  mp_impl->s_axi_data_p2p_aclk(s_axi_data_p2p_aclk);
  mp_impl->maxi_lite_mb_aclk(maxi_lite_mb_aclk);
  mp_impl->m_axi_data_m2m_aclk(m_axi_data_m2m_aclk);

  // initialize transactors
  mp_s_axi_ctrl_user_transactor = NULL;
  mp_s_axi_data_p2p_transactor = NULL;
  mp_maxi_lite_mb_transactor = NULL;
  mp_m_axi_data_m2m_transactor = NULL;

  // Instantiate Socket Stubs

  // configure s_axi_ctrl_user_transactor
    xsc::common_cpp::properties s_axi_ctrl_user_transactor_param_props;
    s_axi_ctrl_user_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    s_axi_ctrl_user_transactor_param_props.addLong("WIZ_NUM_REG", "4");
    s_axi_ctrl_user_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("DATA_WIDTH", "32");
    s_axi_ctrl_user_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_ctrl_user_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("ADDR_WIDTH", "64");
    s_axi_ctrl_user_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("BUSER_WIDTH", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_BURST", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_LOCK", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_PROT", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_CACHE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_QOS", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_REGION", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    s_axi_ctrl_user_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_ctrl_user_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_SIZE", "0");
    s_axi_ctrl_user_transactor_param_props.addLong("HAS_RESET", "0");
    s_axi_ctrl_user_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_ctrl_user_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    s_axi_ctrl_user_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_ctrl_user_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    s_axi_ctrl_user_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_ctrl_user_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("s_axi_ctrl_user_transactor", s_axi_ctrl_user_transactor_param_props);
  mp_s_axi_ctrl_user_transactor->AWADDR(s_axi_ctrl_user_awaddr);
  mp_s_axi_ctrl_user_transactor->AWPROT(s_axi_ctrl_user_awprot);
  mp_s_axi_ctrl_user_transactor->AWVALID(s_axi_ctrl_user_awvalid);
  mp_s_axi_ctrl_user_transactor->AWREADY(s_axi_ctrl_user_awready);
  mp_s_axi_ctrl_user_transactor->WDATA(s_axi_ctrl_user_wdata);
  mp_s_axi_ctrl_user_transactor->WSTRB(s_axi_ctrl_user_wstrb);
  mp_s_axi_ctrl_user_transactor->WVALID(s_axi_ctrl_user_wvalid);
  mp_s_axi_ctrl_user_transactor->WREADY(s_axi_ctrl_user_wready);
  mp_s_axi_ctrl_user_transactor->BRESP(s_axi_ctrl_user_bresp);
  mp_s_axi_ctrl_user_transactor->BVALID(s_axi_ctrl_user_bvalid);
  mp_s_axi_ctrl_user_transactor->BREADY(s_axi_ctrl_user_bready);
  mp_s_axi_ctrl_user_transactor->ARADDR(s_axi_ctrl_user_araddr);
  mp_s_axi_ctrl_user_transactor->ARPROT(s_axi_ctrl_user_arprot);
  mp_s_axi_ctrl_user_transactor->ARVALID(s_axi_ctrl_user_arvalid);
  mp_s_axi_ctrl_user_transactor->ARREADY(s_axi_ctrl_user_arready);
  mp_s_axi_ctrl_user_transactor->RDATA(s_axi_ctrl_user_rdata);
  mp_s_axi_ctrl_user_transactor->RRESP(s_axi_ctrl_user_rresp);
  mp_s_axi_ctrl_user_transactor->RVALID(s_axi_ctrl_user_rvalid);
  mp_s_axi_ctrl_user_transactor->RREADY(s_axi_ctrl_user_rready);
  mp_s_axi_ctrl_user_transactor->CLK(s_axi_ctrl_user_aclk);
  m_s_axi_ctrl_user_transactor_rst_signal.write(1);
  mp_s_axi_ctrl_user_transactor->RST(m_s_axi_ctrl_user_transactor_rst_signal);
  // configure s_axi_data_p2p_transactor
    xsc::common_cpp::properties s_axi_data_p2p_transactor_param_props;
    s_axi_data_p2p_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    s_axi_data_p2p_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    s_axi_data_p2p_transactor_param_props.addLong("DATA_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_data_p2p_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("ADDR_WIDTH", "64");
    s_axi_data_p2p_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    s_axi_data_p2p_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_data_p2p_transactor_param_props.addLong("BUSER_WIDTH", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_BURST", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_LOCK", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_PROT", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_CACHE", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_QOS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_REGION", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    s_axi_data_p2p_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_data_p2p_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_data_p2p_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_SIZE", "1");
    s_axi_data_p2p_transactor_param_props.addLong("HAS_RESET", "0");
    s_axi_data_p2p_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_data_p2p_transactor_param_props.addString("PROTOCOL", "AXI4");
    s_axi_data_p2p_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_data_p2p_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    s_axi_data_p2p_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_data_p2p_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,32,1,1,32,1>("s_axi_data_p2p_transactor", s_axi_data_p2p_transactor_param_props);
  mp_s_axi_data_p2p_transactor->AWADDR(s_axi_data_p2p_awaddr);
  mp_s_axi_data_p2p_transactor->AWLEN(s_axi_data_p2p_awlen);
  mp_s_axi_data_p2p_transactor->AWSIZE(s_axi_data_p2p_awsize);
  mp_s_axi_data_p2p_transactor->AWBURST(s_axi_data_p2p_awburst);
  mp_s_axi_data_p2p_transactor->AWLOCK(s_axi_data_p2p_awlock);
  mp_s_axi_data_p2p_transactor->AWCACHE(s_axi_data_p2p_awcache);
  mp_s_axi_data_p2p_transactor->AWPROT(s_axi_data_p2p_awprot);
  mp_s_axi_data_p2p_transactor->AWREGION(s_axi_data_p2p_awregion);
  mp_s_axi_data_p2p_transactor->AWQOS(s_axi_data_p2p_awqos);
  mp_s_axi_data_p2p_transactor->AWUSER(s_axi_data_p2p_awuser);
  mp_s_axi_data_p2p_transactor->AWVALID(s_axi_data_p2p_awvalid);
  mp_s_axi_data_p2p_transactor->AWREADY(s_axi_data_p2p_awready);
  mp_s_axi_data_p2p_transactor->WDATA(s_axi_data_p2p_wdata);
  mp_s_axi_data_p2p_transactor->WSTRB(s_axi_data_p2p_wstrb);
  mp_s_axi_data_p2p_transactor->WLAST(s_axi_data_p2p_wlast);
  mp_s_axi_data_p2p_transactor->WVALID(s_axi_data_p2p_wvalid);
  mp_s_axi_data_p2p_transactor->WREADY(s_axi_data_p2p_wready);
  mp_s_axi_data_p2p_transactor->BRESP(s_axi_data_p2p_bresp);
  mp_s_axi_data_p2p_transactor->BUSER(s_axi_data_p2p_buser);
  mp_s_axi_data_p2p_transactor->BVALID(s_axi_data_p2p_bvalid);
  mp_s_axi_data_p2p_transactor->BREADY(s_axi_data_p2p_bready);
  mp_s_axi_data_p2p_transactor->ARADDR(s_axi_data_p2p_araddr);
  mp_s_axi_data_p2p_transactor->ARLEN(s_axi_data_p2p_arlen);
  mp_s_axi_data_p2p_transactor->ARSIZE(s_axi_data_p2p_arsize);
  mp_s_axi_data_p2p_transactor->ARBURST(s_axi_data_p2p_arburst);
  mp_s_axi_data_p2p_transactor->ARLOCK(s_axi_data_p2p_arlock);
  mp_s_axi_data_p2p_transactor->ARCACHE(s_axi_data_p2p_arcache);
  mp_s_axi_data_p2p_transactor->ARPROT(s_axi_data_p2p_arprot);
  mp_s_axi_data_p2p_transactor->ARREGION(s_axi_data_p2p_arregion);
  mp_s_axi_data_p2p_transactor->ARQOS(s_axi_data_p2p_arqos);
  mp_s_axi_data_p2p_transactor->ARUSER(s_axi_data_p2p_aruser);
  mp_s_axi_data_p2p_transactor->ARVALID(s_axi_data_p2p_arvalid);
  mp_s_axi_data_p2p_transactor->ARREADY(s_axi_data_p2p_arready);
  mp_s_axi_data_p2p_transactor->RDATA(s_axi_data_p2p_rdata);
  mp_s_axi_data_p2p_transactor->RRESP(s_axi_data_p2p_rresp);
  mp_s_axi_data_p2p_transactor->RLAST(s_axi_data_p2p_rlast);
  mp_s_axi_data_p2p_transactor->RVALID(s_axi_data_p2p_rvalid);
  mp_s_axi_data_p2p_transactor->RREADY(s_axi_data_p2p_rready);
  mp_s_axi_data_p2p_transactor->CLK(s_axi_data_p2p_aclk);
  m_s_axi_data_p2p_transactor_rst_signal.write(1);
  mp_s_axi_data_p2p_transactor->RST(m_s_axi_data_p2p_transactor_rst_signal);
  // configure maxi_lite_mb_transactor
    xsc::common_cpp::properties maxi_lite_mb_transactor_param_props;
    maxi_lite_mb_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    maxi_lite_mb_transactor_param_props.addLong("ID_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ADDR_WIDTH", "64");
    maxi_lite_mb_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("BUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_LOCK", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_PROT", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_CACHE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_QOS", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_REGION", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_WSTRB", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_SIZE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RESET", "0");
    maxi_lite_mb_transactor_param_props.addFloat("PHASE", "0.0");
    maxi_lite_mb_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    maxi_lite_mb_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    maxi_lite_mb_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    maxi_lite_mb_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_maxi_lite_mb_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("maxi_lite_mb_transactor", maxi_lite_mb_transactor_param_props);
  mp_maxi_lite_mb_transactor->AWADDR(maxi_lite_mb_awaddr);
  mp_maxi_lite_mb_transactor->AWPROT(maxi_lite_mb_awprot);
  mp_maxi_lite_mb_transactor->AWVALID(maxi_lite_mb_awvalid);
  mp_maxi_lite_mb_transactor->AWREADY(maxi_lite_mb_awready);
  mp_maxi_lite_mb_transactor->WDATA(maxi_lite_mb_wdata);
  mp_maxi_lite_mb_transactor->WSTRB(maxi_lite_mb_wstrb);
  mp_maxi_lite_mb_transactor->WVALID(maxi_lite_mb_wvalid);
  mp_maxi_lite_mb_transactor->WREADY(maxi_lite_mb_wready);
  mp_maxi_lite_mb_transactor->BRESP(maxi_lite_mb_bresp);
  mp_maxi_lite_mb_transactor->BVALID(maxi_lite_mb_bvalid);
  mp_maxi_lite_mb_transactor->BREADY(maxi_lite_mb_bready);
  mp_maxi_lite_mb_transactor->ARADDR(maxi_lite_mb_araddr);
  mp_maxi_lite_mb_transactor->ARPROT(maxi_lite_mb_arprot);
  mp_maxi_lite_mb_transactor->ARVALID(maxi_lite_mb_arvalid);
  mp_maxi_lite_mb_transactor->ARREADY(maxi_lite_mb_arready);
  mp_maxi_lite_mb_transactor->RDATA(maxi_lite_mb_rdata);
  mp_maxi_lite_mb_transactor->RRESP(maxi_lite_mb_rresp);
  mp_maxi_lite_mb_transactor->RVALID(maxi_lite_mb_rvalid);
  mp_maxi_lite_mb_transactor->RREADY(maxi_lite_mb_rready);
  mp_maxi_lite_mb_transactor->CLK(maxi_lite_mb_aclk);
  m_maxi_lite_mb_transactor_rst_signal.write(1);
  mp_maxi_lite_mb_transactor->RST(m_maxi_lite_mb_transactor_rst_signal);
  // configure m_axi_data_m2m_transactor
    xsc::common_cpp::properties m_axi_data_m2m_transactor_param_props;
    m_axi_data_m2m_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    m_axi_data_m2m_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    m_axi_data_m2m_transactor_param_props.addLong("DATA_WIDTH", "32");
    m_axi_data_m2m_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    m_axi_data_m2m_transactor_param_props.addLong("ID_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("ADDR_WIDTH", "64");
    m_axi_data_m2m_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("WUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("RUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("BUSER_WIDTH", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_BURST", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_LOCK", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_PROT", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_CACHE", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_QOS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_REGION", "0");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_WSTRB", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_BRESP", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_RRESP", "1");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    m_axi_data_m2m_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    m_axi_data_m2m_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    m_axi_data_m2m_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_SIZE", "1");
    m_axi_data_m2m_transactor_param_props.addLong("HAS_RESET", "0");
    m_axi_data_m2m_transactor_param_props.addFloat("PHASE", "0.0");
    m_axi_data_m2m_transactor_param_props.addString("PROTOCOL", "AXI4");
    m_axi_data_m2m_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    m_axi_data_m2m_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    m_axi_data_m2m_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_m_axi_data_m2m_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("m_axi_data_m2m_transactor", m_axi_data_m2m_transactor_param_props);
  mp_m_axi_data_m2m_transactor->AWID(m_axi_data_m2m_awid);
  mp_m_axi_data_m2m_transactor->AWADDR(m_axi_data_m2m_awaddr);
  mp_m_axi_data_m2m_transactor->AWLEN(m_axi_data_m2m_awlen);
  mp_m_axi_data_m2m_transactor->AWSIZE(m_axi_data_m2m_awsize);
  mp_m_axi_data_m2m_transactor->AWBURST(m_axi_data_m2m_awburst);
  mp_m_axi_data_m2m_transactor->AWLOCK(m_axi_data_m2m_awlock);
  mp_m_axi_data_m2m_transactor->AWCACHE(m_axi_data_m2m_awcache);
  mp_m_axi_data_m2m_transactor->AWPROT(m_axi_data_m2m_awprot);
  mp_m_axi_data_m2m_transactor->AWQOS(m_axi_data_m2m_awqos);
  mp_m_axi_data_m2m_transactor->AWUSER(m_axi_data_m2m_awuser);
  mp_m_axi_data_m2m_transactor->AWVALID(m_axi_data_m2m_awvalid);
  mp_m_axi_data_m2m_transactor->AWREADY(m_axi_data_m2m_awready);
  mp_m_axi_data_m2m_transactor->WDATA(m_axi_data_m2m_wdata);
  mp_m_axi_data_m2m_transactor->WSTRB(m_axi_data_m2m_wstrb);
  mp_m_axi_data_m2m_transactor->WLAST(m_axi_data_m2m_wlast);
  mp_m_axi_data_m2m_transactor->WUSER(m_axi_data_m2m_wuser);
  mp_m_axi_data_m2m_transactor->WVALID(m_axi_data_m2m_wvalid);
  mp_m_axi_data_m2m_transactor->WREADY(m_axi_data_m2m_wready);
  mp_m_axi_data_m2m_transactor->BID(m_axi_data_m2m_bid);
  mp_m_axi_data_m2m_transactor->BRESP(m_axi_data_m2m_bresp);
  mp_m_axi_data_m2m_transactor->BUSER(m_axi_data_m2m_buser);
  mp_m_axi_data_m2m_transactor->BVALID(m_axi_data_m2m_bvalid);
  mp_m_axi_data_m2m_transactor->BREADY(m_axi_data_m2m_bready);
  mp_m_axi_data_m2m_transactor->ARID(m_axi_data_m2m_arid);
  mp_m_axi_data_m2m_transactor->ARADDR(m_axi_data_m2m_araddr);
  mp_m_axi_data_m2m_transactor->ARLEN(m_axi_data_m2m_arlen);
  mp_m_axi_data_m2m_transactor->ARSIZE(m_axi_data_m2m_arsize);
  mp_m_axi_data_m2m_transactor->ARBURST(m_axi_data_m2m_arburst);
  mp_m_axi_data_m2m_transactor->ARLOCK(m_axi_data_m2m_arlock);
  mp_m_axi_data_m2m_transactor->ARCACHE(m_axi_data_m2m_arcache);
  mp_m_axi_data_m2m_transactor->ARPROT(m_axi_data_m2m_arprot);
  mp_m_axi_data_m2m_transactor->ARQOS(m_axi_data_m2m_arqos);
  mp_m_axi_data_m2m_transactor->ARUSER(m_axi_data_m2m_aruser);
  mp_m_axi_data_m2m_transactor->ARVALID(m_axi_data_m2m_arvalid);
  mp_m_axi_data_m2m_transactor->ARREADY(m_axi_data_m2m_arready);
  mp_m_axi_data_m2m_transactor->RID(m_axi_data_m2m_rid);
  mp_m_axi_data_m2m_transactor->RDATA(m_axi_data_m2m_rdata);
  mp_m_axi_data_m2m_transactor->RRESP(m_axi_data_m2m_rresp);
  mp_m_axi_data_m2m_transactor->RLAST(m_axi_data_m2m_rlast);
  mp_m_axi_data_m2m_transactor->RUSER(m_axi_data_m2m_ruser);
  mp_m_axi_data_m2m_transactor->RVALID(m_axi_data_m2m_rvalid);
  mp_m_axi_data_m2m_transactor->RREADY(m_axi_data_m2m_rready);
  mp_m_axi_data_m2m_transactor->CLK(m_axi_data_m2m_aclk);
  m_m_axi_data_m2m_transactor_rst_signal.write(1);
  mp_m_axi_data_m2m_transactor->RST(m_m_axi_data_m2m_transactor_rst_signal);

  // initialize transactors stubs
  s_axi_ctrl_user_transactor_target_wr_socket_stub = nullptr;
  s_axi_ctrl_user_transactor_target_rd_socket_stub = nullptr;
  s_axi_data_p2p_transactor_target_wr_socket_stub = nullptr;
  s_axi_data_p2p_transactor_target_rd_socket_stub = nullptr;
  maxi_lite_mb_transactor_initiator_wr_socket_stub = nullptr;
  maxi_lite_mb_transactor_initiator_rd_socket_stub = nullptr;
  m_axi_data_m2m_transactor_initiator_wr_socket_stub = nullptr;
  m_axi_data_m2m_transactor_initiator_rd_socket_stub = nullptr;

}

void pfm_top_embedded_schedular_0::before_end_of_elaboration()
{
  // configure 's_axi_ctrl_user' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "s_axi_ctrl_user_TLM_MODE") != 1)
  {
    mp_impl->s_axi_ctrl_user_rd_socket->bind(*(mp_s_axi_ctrl_user_transactor->rd_socket));
    mp_impl->s_axi_ctrl_user_wr_socket->bind(*(mp_s_axi_ctrl_user_transactor->wr_socket));
  
  }
  else
  {
    s_axi_ctrl_user_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    s_axi_ctrl_user_transactor_target_wr_socket_stub->bind(*(mp_s_axi_ctrl_user_transactor->wr_socket));
    s_axi_ctrl_user_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    s_axi_ctrl_user_transactor_target_rd_socket_stub->bind(*(mp_s_axi_ctrl_user_transactor->rd_socket));
    mp_s_axi_ctrl_user_transactor->disable_transactor();
  }

  // configure 's_axi_data_p2p' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "s_axi_data_p2p_TLM_MODE") != 1)
  {
    mp_impl->s_axi_data_p2p_rd_socket->bind(*(mp_s_axi_data_p2p_transactor->rd_socket));
    mp_impl->s_axi_data_p2p_wr_socket->bind(*(mp_s_axi_data_p2p_transactor->wr_socket));
  
  }
  else
  {
    s_axi_data_p2p_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    s_axi_data_p2p_transactor_target_wr_socket_stub->bind(*(mp_s_axi_data_p2p_transactor->wr_socket));
    s_axi_data_p2p_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    s_axi_data_p2p_transactor_target_rd_socket_stub->bind(*(mp_s_axi_data_p2p_transactor->rd_socket));
    mp_s_axi_data_p2p_transactor->disable_transactor();
  }

  // configure 'maxi_lite_mb' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "maxi_lite_mb_TLM_MODE") != 1)
  {
    mp_impl->maxi_lite_mb_rd_socket->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_impl->maxi_lite_mb_wr_socket->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
  
  }
  else
  {
    maxi_lite_mb_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    maxi_lite_mb_transactor_initiator_wr_socket_stub->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
    maxi_lite_mb_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    maxi_lite_mb_transactor_initiator_rd_socket_stub->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_maxi_lite_mb_transactor->disable_transactor();
  }

  // configure 'm_axi_data_m2m' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_embedded_schedular_0", "m_axi_data_m2m_TLM_MODE") != 1)
  {
    mp_impl->m_axi_data_m2m_rd_socket->bind(*(mp_m_axi_data_m2m_transactor->rd_socket));
    mp_impl->m_axi_data_m2m_wr_socket->bind(*(mp_m_axi_data_m2m_transactor->wr_socket));
  
  }
  else
  {
    m_axi_data_m2m_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    m_axi_data_m2m_transactor_initiator_wr_socket_stub->bind(*(mp_m_axi_data_m2m_transactor->wr_socket));
    m_axi_data_m2m_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    m_axi_data_m2m_transactor_initiator_rd_socket_stub->bind(*(mp_m_axi_data_m2m_transactor->rd_socket));
    mp_m_axi_data_m2m_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




pfm_top_embedded_schedular_0::~pfm_top_embedded_schedular_0()
{
  delete mp_s_axi_ctrl_user_transactor;

  delete mp_s_axi_data_p2p_transactor;

  delete mp_maxi_lite_mb_transactor;

  delete mp_m_axi_data_m2m_transactor;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(pfm_top_embedded_schedular_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(pfm_top_embedded_schedular_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(pfm_top_embedded_schedular_0);
SC_REGISTER_BV(128);
#endif

