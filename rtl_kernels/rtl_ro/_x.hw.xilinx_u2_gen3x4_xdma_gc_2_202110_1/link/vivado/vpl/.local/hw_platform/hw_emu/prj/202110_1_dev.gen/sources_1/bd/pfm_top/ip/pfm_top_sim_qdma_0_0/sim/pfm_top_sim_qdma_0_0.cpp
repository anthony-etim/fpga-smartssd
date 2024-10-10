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


#include "pfm_top_sim_qdma_0_0_sc.h"

#include "pfm_top_sim_qdma_0_0.h"

#include "sim_qdma.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
pfm_top_sim_qdma_0_0::pfm_top_sim_qdma_0_0(const sc_core::sc_module_name& nm) : pfm_top_sim_qdma_0_0_sc(nm), m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), m_axictrl_aclk("m_axictrl_aclk"), m_axictrl_aresetn("m_axictrl_aresetn"), m_axictrl_awaddr("m_axictrl_awaddr"), m_axictrl_awprot("m_axictrl_awprot"), m_axictrl_awvalid("m_axictrl_awvalid"), m_axictrl_awready("m_axictrl_awready"), m_axictrl_wdata("m_axictrl_wdata"), m_axictrl_wstrb("m_axictrl_wstrb"), m_axictrl_wvalid("m_axictrl_wvalid"), m_axictrl_wready("m_axictrl_wready"), m_axictrl_bvalid("m_axictrl_bvalid"), m_axictrl_bready("m_axictrl_bready"), m_axictrl_bresp("m_axictrl_bresp"), m_axictrl_araddr("m_axictrl_araddr"), m_axictrl_arvalid("m_axictrl_arvalid"), m_axictrl_arready("m_axictrl_arready"), m_axictrl_arprot("m_axictrl_arprot"), m_axictrl_rdata("m_axictrl_rdata"), m_axictrl_rresp("m_axictrl_rresp"), m_axictrl_rvalid("m_axictrl_rvalid"), m_axictrl_rready("m_axictrl_rready"), m_aximm_AWVALID("m_aximm_AWVALID"), m_aximm_AWREADY("m_aximm_AWREADY"), m_aximm_AWADDR("m_aximm_AWADDR"), m_aximm_AWID("m_aximm_AWID"), m_aximm_AWLEN("m_aximm_AWLEN"), m_aximm_AWSIZE("m_aximm_AWSIZE"), m_aximm_AWBURST("m_aximm_AWBURST"), m_aximm_AWLOCK("m_aximm_AWLOCK"), m_aximm_AWCACHE("m_aximm_AWCACHE"), m_aximm_AWPROT("m_aximm_AWPROT"), m_aximm_AWREGION("m_aximm_AWREGION"), m_aximm_AWQOS("m_aximm_AWQOS"), m_aximm_AWUSER("m_aximm_AWUSER"), m_aximm_WVALID("m_aximm_WVALID"), m_aximm_WREADY("m_aximm_WREADY"), m_aximm_WDATA("m_aximm_WDATA"), m_aximm_WSTRB("m_aximm_WSTRB"), m_aximm_WLAST("m_aximm_WLAST"), m_aximm_WUSER("m_aximm_WUSER"), m_aximm_ARVALID("m_aximm_ARVALID"), m_aximm_ARREADY("m_aximm_ARREADY"), m_aximm_ARADDR("m_aximm_ARADDR"), m_aximm_ARID("m_aximm_ARID"), m_aximm_ARLEN("m_aximm_ARLEN"), m_aximm_ARSIZE("m_aximm_ARSIZE"), m_aximm_ARBURST("m_aximm_ARBURST"), m_aximm_ARLOCK("m_aximm_ARLOCK"), m_aximm_ARCACHE("m_aximm_ARCACHE"), m_aximm_ARPROT("m_aximm_ARPROT"), m_aximm_ARREGION("m_aximm_ARREGION"), m_aximm_ARQOS("m_aximm_ARQOS"), m_aximm_ARUSER("m_aximm_ARUSER"), m_aximm_RVALID("m_aximm_RVALID"), m_aximm_RREADY("m_aximm_RREADY"), m_aximm_RDATA("m_aximm_RDATA"), m_aximm_RLAST("m_aximm_RLAST"), m_aximm_RID("m_aximm_RID"), m_aximm_RRESP("m_aximm_RRESP"), m_aximm_RUSER("m_aximm_RUSER"), m_aximm_BVALID("m_aximm_BVALID"), m_aximm_BREADY("m_aximm_BREADY"), m_aximm_BRESP("m_aximm_BRESP"), m_aximm_BID("m_aximm_BID"), m_aximm_BUSER("m_aximm_BUSER"), usr_irq_req("usr_irq_req"), usr_irq_ack("usr_irq_ack")
{

  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->m_axictrl_aclk(m_axictrl_aclk);
  mp_impl->m_axictrl_aresetn(m_axictrl_aresetn);
  mp_impl->usr_irq_req(usr_irq_req);
  mp_impl->usr_irq_ack(usr_irq_ack);

  // initialize transactors
  mp_M_AXICTRL_transactor = NULL;
  mp_M_AXIMM_transactor = NULL;
  mp_m_aximm_ARLOCK_converter = NULL;
  mp_m_aximm_AWLOCK_converter = NULL;

  // initialize socket stubs

}

void pfm_top_sim_qdma_0_0::before_end_of_elaboration()
{
  // configure 'M_AXICTRL' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_qdma_0_0", "M_AXICTRL_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXICTRL' transactor parameters
    xsc::common_cpp::properties M_AXICTRL_transactor_param_props;
    M_AXICTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXICTRL_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXICTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXICTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_QOS", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXICTRL_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXICTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M_AXICTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXICTRL_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    M_AXICTRL_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXICTRL_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXICTRL_transactor", M_AXICTRL_transactor_param_props);

    // M_AXICTRL' transactor ports

    mp_M_AXICTRL_transactor->ARADDR(m_axictrl_araddr);
    mp_M_AXICTRL_transactor->ARPROT(m_axictrl_arprot);
    mp_M_AXICTRL_transactor->ARREADY(m_axictrl_arready);
    mp_M_AXICTRL_transactor->ARVALID(m_axictrl_arvalid);
    mp_M_AXICTRL_transactor->AWADDR(m_axictrl_awaddr);
    mp_M_AXICTRL_transactor->AWPROT(m_axictrl_awprot);
    mp_M_AXICTRL_transactor->AWREADY(m_axictrl_awready);
    mp_M_AXICTRL_transactor->AWVALID(m_axictrl_awvalid);
    mp_M_AXICTRL_transactor->BREADY(m_axictrl_bready);
    mp_M_AXICTRL_transactor->BRESP(m_axictrl_bresp);
    mp_M_AXICTRL_transactor->BVALID(m_axictrl_bvalid);
    mp_M_AXICTRL_transactor->RDATA(m_axictrl_rdata);
    mp_M_AXICTRL_transactor->RREADY(m_axictrl_rready);
    mp_M_AXICTRL_transactor->RRESP(m_axictrl_rresp);
    mp_M_AXICTRL_transactor->RVALID(m_axictrl_rvalid);
    mp_M_AXICTRL_transactor->WDATA(m_axictrl_wdata);
    mp_M_AXICTRL_transactor->WREADY(m_axictrl_wready);
    mp_M_AXICTRL_transactor->WSTRB(m_axictrl_wstrb);
    mp_M_AXICTRL_transactor->WVALID(m_axictrl_wvalid);
    mp_M_AXICTRL_transactor->CLK(m_axictrl_aclk);
    mp_M_AXICTRL_transactor->RST(m_axictrl_aresetn);

    // M_AXICTRL' transactor sockets

    mp_impl->initiator_ctrl_rd_socket->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_impl->initiator_ctrl_wr_socket->bind(*(mp_M_AXICTRL_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_qdma_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXIMM' transactor parameters
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXIMM_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    M_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,32,32,1,32,32>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);

    // M_AXIMM' transactor ports

    mp_M_AXIMM_transactor->ARADDR(m_aximm_ARADDR);
    mp_M_AXIMM_transactor->ARBURST(m_aximm_ARBURST);
    mp_M_AXIMM_transactor->ARCACHE(m_aximm_ARCACHE);
    mp_M_AXIMM_transactor->ARID(m_aximm_ARID);
    mp_M_AXIMM_transactor->ARLEN(m_aximm_ARLEN);
    mp_m_aximm_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_aximm_ARLOCK_converter");
    mp_m_aximm_ARLOCK_converter->scalar_in(m_m_aximm_ARLOCK_converter_signal);
    mp_m_aximm_ARLOCK_converter->vector_out(m_aximm_ARLOCK);
    mp_M_AXIMM_transactor->ARLOCK(m_m_aximm_ARLOCK_converter_signal);
    mp_M_AXIMM_transactor->ARPROT(m_aximm_ARPROT);
    mp_M_AXIMM_transactor->ARQOS(m_aximm_ARQOS);
    mp_M_AXIMM_transactor->ARREADY(m_aximm_ARREADY);
    mp_M_AXIMM_transactor->ARREGION(m_aximm_ARREGION);
    mp_M_AXIMM_transactor->ARSIZE(m_aximm_ARSIZE);
    mp_M_AXIMM_transactor->ARUSER(m_aximm_ARUSER);
    mp_M_AXIMM_transactor->ARVALID(m_aximm_ARVALID);
    mp_M_AXIMM_transactor->AWADDR(m_aximm_AWADDR);
    mp_M_AXIMM_transactor->AWBURST(m_aximm_AWBURST);
    mp_M_AXIMM_transactor->AWCACHE(m_aximm_AWCACHE);
    mp_M_AXIMM_transactor->AWID(m_aximm_AWID);
    mp_M_AXIMM_transactor->AWLEN(m_aximm_AWLEN);
    mp_m_aximm_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_aximm_AWLOCK_converter");
    mp_m_aximm_AWLOCK_converter->scalar_in(m_m_aximm_AWLOCK_converter_signal);
    mp_m_aximm_AWLOCK_converter->vector_out(m_aximm_AWLOCK);
    mp_M_AXIMM_transactor->AWLOCK(m_m_aximm_AWLOCK_converter_signal);
    mp_M_AXIMM_transactor->AWPROT(m_aximm_AWPROT);
    mp_M_AXIMM_transactor->AWQOS(m_aximm_AWQOS);
    mp_M_AXIMM_transactor->AWREADY(m_aximm_AWREADY);
    mp_M_AXIMM_transactor->AWREGION(m_aximm_AWREGION);
    mp_M_AXIMM_transactor->AWSIZE(m_aximm_AWSIZE);
    mp_M_AXIMM_transactor->AWUSER(m_aximm_AWUSER);
    mp_M_AXIMM_transactor->AWVALID(m_aximm_AWVALID);
    mp_M_AXIMM_transactor->BID(m_aximm_BID);
    mp_M_AXIMM_transactor->BREADY(m_aximm_BREADY);
    mp_M_AXIMM_transactor->BRESP(m_aximm_BRESP);
    mp_M_AXIMM_transactor->BUSER(m_aximm_BUSER);
    mp_M_AXIMM_transactor->BVALID(m_aximm_BVALID);
    mp_M_AXIMM_transactor->RDATA(m_aximm_RDATA);
    mp_M_AXIMM_transactor->RID(m_aximm_RID);
    mp_M_AXIMM_transactor->RLAST(m_aximm_RLAST);
    mp_M_AXIMM_transactor->RREADY(m_aximm_RREADY);
    mp_M_AXIMM_transactor->RRESP(m_aximm_RRESP);
    mp_M_AXIMM_transactor->RUSER(m_aximm_RUSER);
    mp_M_AXIMM_transactor->RVALID(m_aximm_RVALID);
    mp_M_AXIMM_transactor->WDATA(m_aximm_WDATA);
    mp_M_AXIMM_transactor->WLAST(m_aximm_WLAST);
    mp_M_AXIMM_transactor->WREADY(m_aximm_WREADY);
    mp_M_AXIMM_transactor->WSTRB(m_aximm_WSTRB);
    mp_M_AXIMM_transactor->WUSER(m_aximm_WUSER);
    mp_M_AXIMM_transactor->WVALID(m_aximm_WVALID);
    mp_M_AXIMM_transactor->CLK(m_aximm_aclk);
    mp_M_AXIMM_transactor->RST(m_aximm_aresetn);

    // M_AXIMM' transactor sockets

    mp_impl->initiator_mm_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->initiator_mm_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
pfm_top_sim_qdma_0_0::pfm_top_sim_qdma_0_0(const sc_core::sc_module_name& nm) : pfm_top_sim_qdma_0_0_sc(nm), m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), m_axictrl_aclk("m_axictrl_aclk"), m_axictrl_aresetn("m_axictrl_aresetn"), m_axictrl_awaddr("m_axictrl_awaddr"), m_axictrl_awprot("m_axictrl_awprot"), m_axictrl_awvalid("m_axictrl_awvalid"), m_axictrl_awready("m_axictrl_awready"), m_axictrl_wdata("m_axictrl_wdata"), m_axictrl_wstrb("m_axictrl_wstrb"), m_axictrl_wvalid("m_axictrl_wvalid"), m_axictrl_wready("m_axictrl_wready"), m_axictrl_bvalid("m_axictrl_bvalid"), m_axictrl_bready("m_axictrl_bready"), m_axictrl_bresp("m_axictrl_bresp"), m_axictrl_araddr("m_axictrl_araddr"), m_axictrl_arvalid("m_axictrl_arvalid"), m_axictrl_arready("m_axictrl_arready"), m_axictrl_arprot("m_axictrl_arprot"), m_axictrl_rdata("m_axictrl_rdata"), m_axictrl_rresp("m_axictrl_rresp"), m_axictrl_rvalid("m_axictrl_rvalid"), m_axictrl_rready("m_axictrl_rready"), m_aximm_AWVALID("m_aximm_AWVALID"), m_aximm_AWREADY("m_aximm_AWREADY"), m_aximm_AWADDR("m_aximm_AWADDR"), m_aximm_AWID("m_aximm_AWID"), m_aximm_AWLEN("m_aximm_AWLEN"), m_aximm_AWSIZE("m_aximm_AWSIZE"), m_aximm_AWBURST("m_aximm_AWBURST"), m_aximm_AWLOCK("m_aximm_AWLOCK"), m_aximm_AWCACHE("m_aximm_AWCACHE"), m_aximm_AWPROT("m_aximm_AWPROT"), m_aximm_AWREGION("m_aximm_AWREGION"), m_aximm_AWQOS("m_aximm_AWQOS"), m_aximm_AWUSER("m_aximm_AWUSER"), m_aximm_WVALID("m_aximm_WVALID"), m_aximm_WREADY("m_aximm_WREADY"), m_aximm_WDATA("m_aximm_WDATA"), m_aximm_WSTRB("m_aximm_WSTRB"), m_aximm_WLAST("m_aximm_WLAST"), m_aximm_WUSER("m_aximm_WUSER"), m_aximm_ARVALID("m_aximm_ARVALID"), m_aximm_ARREADY("m_aximm_ARREADY"), m_aximm_ARADDR("m_aximm_ARADDR"), m_aximm_ARID("m_aximm_ARID"), m_aximm_ARLEN("m_aximm_ARLEN"), m_aximm_ARSIZE("m_aximm_ARSIZE"), m_aximm_ARBURST("m_aximm_ARBURST"), m_aximm_ARLOCK("m_aximm_ARLOCK"), m_aximm_ARCACHE("m_aximm_ARCACHE"), m_aximm_ARPROT("m_aximm_ARPROT"), m_aximm_ARREGION("m_aximm_ARREGION"), m_aximm_ARQOS("m_aximm_ARQOS"), m_aximm_ARUSER("m_aximm_ARUSER"), m_aximm_RVALID("m_aximm_RVALID"), m_aximm_RREADY("m_aximm_RREADY"), m_aximm_RDATA("m_aximm_RDATA"), m_aximm_RLAST("m_aximm_RLAST"), m_aximm_RID("m_aximm_RID"), m_aximm_RRESP("m_aximm_RRESP"), m_aximm_RUSER("m_aximm_RUSER"), m_aximm_BVALID("m_aximm_BVALID"), m_aximm_BREADY("m_aximm_BREADY"), m_aximm_BRESP("m_aximm_BRESP"), m_aximm_BID("m_aximm_BID"), m_aximm_BUSER("m_aximm_BUSER"), usr_irq_req("usr_irq_req"), usr_irq_ack("usr_irq_ack")
{

  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->m_axictrl_aclk(m_axictrl_aclk);
  mp_impl->m_axictrl_aresetn(m_axictrl_aresetn);
  mp_impl->usr_irq_req(usr_irq_req);
  mp_impl->usr_irq_ack(usr_irq_ack);

  // initialize transactors
  mp_M_AXICTRL_transactor = NULL;
  mp_M_AXIMM_transactor = NULL;
  mp_m_aximm_ARLOCK_converter = NULL;
  mp_m_aximm_AWLOCK_converter = NULL;

  // initialize socket stubs

}

void pfm_top_sim_qdma_0_0::before_end_of_elaboration()
{
  // configure 'M_AXICTRL' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_qdma_0_0", "M_AXICTRL_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXICTRL' transactor parameters
    xsc::common_cpp::properties M_AXICTRL_transactor_param_props;
    M_AXICTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXICTRL_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXICTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXICTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_QOS", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXICTRL_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXICTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M_AXICTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXICTRL_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    M_AXICTRL_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXICTRL_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXICTRL_transactor", M_AXICTRL_transactor_param_props);

    // M_AXICTRL' transactor ports

    mp_M_AXICTRL_transactor->ARADDR(m_axictrl_araddr);
    mp_M_AXICTRL_transactor->ARPROT(m_axictrl_arprot);
    mp_M_AXICTRL_transactor->ARREADY(m_axictrl_arready);
    mp_M_AXICTRL_transactor->ARVALID(m_axictrl_arvalid);
    mp_M_AXICTRL_transactor->AWADDR(m_axictrl_awaddr);
    mp_M_AXICTRL_transactor->AWPROT(m_axictrl_awprot);
    mp_M_AXICTRL_transactor->AWREADY(m_axictrl_awready);
    mp_M_AXICTRL_transactor->AWVALID(m_axictrl_awvalid);
    mp_M_AXICTRL_transactor->BREADY(m_axictrl_bready);
    mp_M_AXICTRL_transactor->BRESP(m_axictrl_bresp);
    mp_M_AXICTRL_transactor->BVALID(m_axictrl_bvalid);
    mp_M_AXICTRL_transactor->RDATA(m_axictrl_rdata);
    mp_M_AXICTRL_transactor->RREADY(m_axictrl_rready);
    mp_M_AXICTRL_transactor->RRESP(m_axictrl_rresp);
    mp_M_AXICTRL_transactor->RVALID(m_axictrl_rvalid);
    mp_M_AXICTRL_transactor->WDATA(m_axictrl_wdata);
    mp_M_AXICTRL_transactor->WREADY(m_axictrl_wready);
    mp_M_AXICTRL_transactor->WSTRB(m_axictrl_wstrb);
    mp_M_AXICTRL_transactor->WVALID(m_axictrl_wvalid);
    mp_M_AXICTRL_transactor->CLK(m_axictrl_aclk);
    mp_M_AXICTRL_transactor->RST(m_axictrl_aresetn);

    // M_AXICTRL' transactor sockets

    mp_impl->initiator_ctrl_rd_socket->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_impl->initiator_ctrl_wr_socket->bind(*(mp_M_AXICTRL_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_qdma_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXIMM' transactor parameters
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXIMM_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    M_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,32,32,1,32,32>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);

    // M_AXIMM' transactor ports

    mp_M_AXIMM_transactor->ARADDR(m_aximm_ARADDR);
    mp_M_AXIMM_transactor->ARBURST(m_aximm_ARBURST);
    mp_M_AXIMM_transactor->ARCACHE(m_aximm_ARCACHE);
    mp_M_AXIMM_transactor->ARID(m_aximm_ARID);
    mp_M_AXIMM_transactor->ARLEN(m_aximm_ARLEN);
    mp_m_aximm_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_aximm_ARLOCK_converter");
    mp_m_aximm_ARLOCK_converter->scalar_in(m_m_aximm_ARLOCK_converter_signal);
    mp_m_aximm_ARLOCK_converter->vector_out(m_aximm_ARLOCK);
    mp_M_AXIMM_transactor->ARLOCK(m_m_aximm_ARLOCK_converter_signal);
    mp_M_AXIMM_transactor->ARPROT(m_aximm_ARPROT);
    mp_M_AXIMM_transactor->ARQOS(m_aximm_ARQOS);
    mp_M_AXIMM_transactor->ARREADY(m_aximm_ARREADY);
    mp_M_AXIMM_transactor->ARREGION(m_aximm_ARREGION);
    mp_M_AXIMM_transactor->ARSIZE(m_aximm_ARSIZE);
    mp_M_AXIMM_transactor->ARUSER(m_aximm_ARUSER);
    mp_M_AXIMM_transactor->ARVALID(m_aximm_ARVALID);
    mp_M_AXIMM_transactor->AWADDR(m_aximm_AWADDR);
    mp_M_AXIMM_transactor->AWBURST(m_aximm_AWBURST);
    mp_M_AXIMM_transactor->AWCACHE(m_aximm_AWCACHE);
    mp_M_AXIMM_transactor->AWID(m_aximm_AWID);
    mp_M_AXIMM_transactor->AWLEN(m_aximm_AWLEN);
    mp_m_aximm_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_aximm_AWLOCK_converter");
    mp_m_aximm_AWLOCK_converter->scalar_in(m_m_aximm_AWLOCK_converter_signal);
    mp_m_aximm_AWLOCK_converter->vector_out(m_aximm_AWLOCK);
    mp_M_AXIMM_transactor->AWLOCK(m_m_aximm_AWLOCK_converter_signal);
    mp_M_AXIMM_transactor->AWPROT(m_aximm_AWPROT);
    mp_M_AXIMM_transactor->AWQOS(m_aximm_AWQOS);
    mp_M_AXIMM_transactor->AWREADY(m_aximm_AWREADY);
    mp_M_AXIMM_transactor->AWREGION(m_aximm_AWREGION);
    mp_M_AXIMM_transactor->AWSIZE(m_aximm_AWSIZE);
    mp_M_AXIMM_transactor->AWUSER(m_aximm_AWUSER);
    mp_M_AXIMM_transactor->AWVALID(m_aximm_AWVALID);
    mp_M_AXIMM_transactor->BID(m_aximm_BID);
    mp_M_AXIMM_transactor->BREADY(m_aximm_BREADY);
    mp_M_AXIMM_transactor->BRESP(m_aximm_BRESP);
    mp_M_AXIMM_transactor->BUSER(m_aximm_BUSER);
    mp_M_AXIMM_transactor->BVALID(m_aximm_BVALID);
    mp_M_AXIMM_transactor->RDATA(m_aximm_RDATA);
    mp_M_AXIMM_transactor->RID(m_aximm_RID);
    mp_M_AXIMM_transactor->RLAST(m_aximm_RLAST);
    mp_M_AXIMM_transactor->RREADY(m_aximm_RREADY);
    mp_M_AXIMM_transactor->RRESP(m_aximm_RRESP);
    mp_M_AXIMM_transactor->RUSER(m_aximm_RUSER);
    mp_M_AXIMM_transactor->RVALID(m_aximm_RVALID);
    mp_M_AXIMM_transactor->WDATA(m_aximm_WDATA);
    mp_M_AXIMM_transactor->WLAST(m_aximm_WLAST);
    mp_M_AXIMM_transactor->WREADY(m_aximm_WREADY);
    mp_M_AXIMM_transactor->WSTRB(m_aximm_WSTRB);
    mp_M_AXIMM_transactor->WUSER(m_aximm_WUSER);
    mp_M_AXIMM_transactor->WVALID(m_aximm_WVALID);
    mp_M_AXIMM_transactor->CLK(m_aximm_aclk);
    mp_M_AXIMM_transactor->RST(m_aximm_aresetn);

    // M_AXIMM' transactor sockets

    mp_impl->initiator_mm_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->initiator_mm_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
pfm_top_sim_qdma_0_0::pfm_top_sim_qdma_0_0(const sc_core::sc_module_name& nm) : pfm_top_sim_qdma_0_0_sc(nm), m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), m_axictrl_aclk("m_axictrl_aclk"), m_axictrl_aresetn("m_axictrl_aresetn"), m_axictrl_awaddr("m_axictrl_awaddr"), m_axictrl_awprot("m_axictrl_awprot"), m_axictrl_awvalid("m_axictrl_awvalid"), m_axictrl_awready("m_axictrl_awready"), m_axictrl_wdata("m_axictrl_wdata"), m_axictrl_wstrb("m_axictrl_wstrb"), m_axictrl_wvalid("m_axictrl_wvalid"), m_axictrl_wready("m_axictrl_wready"), m_axictrl_bvalid("m_axictrl_bvalid"), m_axictrl_bready("m_axictrl_bready"), m_axictrl_bresp("m_axictrl_bresp"), m_axictrl_araddr("m_axictrl_araddr"), m_axictrl_arvalid("m_axictrl_arvalid"), m_axictrl_arready("m_axictrl_arready"), m_axictrl_arprot("m_axictrl_arprot"), m_axictrl_rdata("m_axictrl_rdata"), m_axictrl_rresp("m_axictrl_rresp"), m_axictrl_rvalid("m_axictrl_rvalid"), m_axictrl_rready("m_axictrl_rready"), m_aximm_AWVALID("m_aximm_AWVALID"), m_aximm_AWREADY("m_aximm_AWREADY"), m_aximm_AWADDR("m_aximm_AWADDR"), m_aximm_AWID("m_aximm_AWID"), m_aximm_AWLEN("m_aximm_AWLEN"), m_aximm_AWSIZE("m_aximm_AWSIZE"), m_aximm_AWBURST("m_aximm_AWBURST"), m_aximm_AWLOCK("m_aximm_AWLOCK"), m_aximm_AWCACHE("m_aximm_AWCACHE"), m_aximm_AWPROT("m_aximm_AWPROT"), m_aximm_AWREGION("m_aximm_AWREGION"), m_aximm_AWQOS("m_aximm_AWQOS"), m_aximm_AWUSER("m_aximm_AWUSER"), m_aximm_WVALID("m_aximm_WVALID"), m_aximm_WREADY("m_aximm_WREADY"), m_aximm_WDATA("m_aximm_WDATA"), m_aximm_WSTRB("m_aximm_WSTRB"), m_aximm_WLAST("m_aximm_WLAST"), m_aximm_WUSER("m_aximm_WUSER"), m_aximm_ARVALID("m_aximm_ARVALID"), m_aximm_ARREADY("m_aximm_ARREADY"), m_aximm_ARADDR("m_aximm_ARADDR"), m_aximm_ARID("m_aximm_ARID"), m_aximm_ARLEN("m_aximm_ARLEN"), m_aximm_ARSIZE("m_aximm_ARSIZE"), m_aximm_ARBURST("m_aximm_ARBURST"), m_aximm_ARLOCK("m_aximm_ARLOCK"), m_aximm_ARCACHE("m_aximm_ARCACHE"), m_aximm_ARPROT("m_aximm_ARPROT"), m_aximm_ARREGION("m_aximm_ARREGION"), m_aximm_ARQOS("m_aximm_ARQOS"), m_aximm_ARUSER("m_aximm_ARUSER"), m_aximm_RVALID("m_aximm_RVALID"), m_aximm_RREADY("m_aximm_RREADY"), m_aximm_RDATA("m_aximm_RDATA"), m_aximm_RLAST("m_aximm_RLAST"), m_aximm_RID("m_aximm_RID"), m_aximm_RRESP("m_aximm_RRESP"), m_aximm_RUSER("m_aximm_RUSER"), m_aximm_BVALID("m_aximm_BVALID"), m_aximm_BREADY("m_aximm_BREADY"), m_aximm_BRESP("m_aximm_BRESP"), m_aximm_BID("m_aximm_BID"), m_aximm_BUSER("m_aximm_BUSER"), usr_irq_req("usr_irq_req"), usr_irq_ack("usr_irq_ack")
{

  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->m_axictrl_aclk(m_axictrl_aclk);
  mp_impl->m_axictrl_aresetn(m_axictrl_aresetn);
  mp_impl->usr_irq_req(usr_irq_req);
  mp_impl->usr_irq_ack(usr_irq_ack);

  // initialize transactors
  mp_M_AXICTRL_transactor = NULL;
  mp_M_AXIMM_transactor = NULL;
  mp_m_aximm_ARLOCK_converter = NULL;
  mp_m_aximm_AWLOCK_converter = NULL;

  // initialize socket stubs

}

void pfm_top_sim_qdma_0_0::before_end_of_elaboration()
{
  // configure 'M_AXICTRL' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_qdma_0_0", "M_AXICTRL_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXICTRL' transactor parameters
    xsc::common_cpp::properties M_AXICTRL_transactor_param_props;
    M_AXICTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXICTRL_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXICTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXICTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_QOS", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXICTRL_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXICTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M_AXICTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXICTRL_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    M_AXICTRL_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXICTRL_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXICTRL_transactor", M_AXICTRL_transactor_param_props);

    // M_AXICTRL' transactor ports

    mp_M_AXICTRL_transactor->ARADDR(m_axictrl_araddr);
    mp_M_AXICTRL_transactor->ARPROT(m_axictrl_arprot);
    mp_M_AXICTRL_transactor->ARREADY(m_axictrl_arready);
    mp_M_AXICTRL_transactor->ARVALID(m_axictrl_arvalid);
    mp_M_AXICTRL_transactor->AWADDR(m_axictrl_awaddr);
    mp_M_AXICTRL_transactor->AWPROT(m_axictrl_awprot);
    mp_M_AXICTRL_transactor->AWREADY(m_axictrl_awready);
    mp_M_AXICTRL_transactor->AWVALID(m_axictrl_awvalid);
    mp_M_AXICTRL_transactor->BREADY(m_axictrl_bready);
    mp_M_AXICTRL_transactor->BRESP(m_axictrl_bresp);
    mp_M_AXICTRL_transactor->BVALID(m_axictrl_bvalid);
    mp_M_AXICTRL_transactor->RDATA(m_axictrl_rdata);
    mp_M_AXICTRL_transactor->RREADY(m_axictrl_rready);
    mp_M_AXICTRL_transactor->RRESP(m_axictrl_rresp);
    mp_M_AXICTRL_transactor->RVALID(m_axictrl_rvalid);
    mp_M_AXICTRL_transactor->WDATA(m_axictrl_wdata);
    mp_M_AXICTRL_transactor->WREADY(m_axictrl_wready);
    mp_M_AXICTRL_transactor->WSTRB(m_axictrl_wstrb);
    mp_M_AXICTRL_transactor->WVALID(m_axictrl_wvalid);
    mp_M_AXICTRL_transactor->CLK(m_axictrl_aclk);
    mp_M_AXICTRL_transactor->RST(m_axictrl_aresetn);

    // M_AXICTRL' transactor sockets

    mp_impl->initiator_ctrl_rd_socket->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_impl->initiator_ctrl_wr_socket->bind(*(mp_M_AXICTRL_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_qdma_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXIMM' transactor parameters
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXIMM_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    M_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,32,32,1,32,32>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);

    // M_AXIMM' transactor ports

    mp_M_AXIMM_transactor->ARADDR(m_aximm_ARADDR);
    mp_M_AXIMM_transactor->ARBURST(m_aximm_ARBURST);
    mp_M_AXIMM_transactor->ARCACHE(m_aximm_ARCACHE);
    mp_M_AXIMM_transactor->ARID(m_aximm_ARID);
    mp_M_AXIMM_transactor->ARLEN(m_aximm_ARLEN);
    mp_m_aximm_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_aximm_ARLOCK_converter");
    mp_m_aximm_ARLOCK_converter->scalar_in(m_m_aximm_ARLOCK_converter_signal);
    mp_m_aximm_ARLOCK_converter->vector_out(m_aximm_ARLOCK);
    mp_M_AXIMM_transactor->ARLOCK(m_m_aximm_ARLOCK_converter_signal);
    mp_M_AXIMM_transactor->ARPROT(m_aximm_ARPROT);
    mp_M_AXIMM_transactor->ARQOS(m_aximm_ARQOS);
    mp_M_AXIMM_transactor->ARREADY(m_aximm_ARREADY);
    mp_M_AXIMM_transactor->ARREGION(m_aximm_ARREGION);
    mp_M_AXIMM_transactor->ARSIZE(m_aximm_ARSIZE);
    mp_M_AXIMM_transactor->ARUSER(m_aximm_ARUSER);
    mp_M_AXIMM_transactor->ARVALID(m_aximm_ARVALID);
    mp_M_AXIMM_transactor->AWADDR(m_aximm_AWADDR);
    mp_M_AXIMM_transactor->AWBURST(m_aximm_AWBURST);
    mp_M_AXIMM_transactor->AWCACHE(m_aximm_AWCACHE);
    mp_M_AXIMM_transactor->AWID(m_aximm_AWID);
    mp_M_AXIMM_transactor->AWLEN(m_aximm_AWLEN);
    mp_m_aximm_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_aximm_AWLOCK_converter");
    mp_m_aximm_AWLOCK_converter->scalar_in(m_m_aximm_AWLOCK_converter_signal);
    mp_m_aximm_AWLOCK_converter->vector_out(m_aximm_AWLOCK);
    mp_M_AXIMM_transactor->AWLOCK(m_m_aximm_AWLOCK_converter_signal);
    mp_M_AXIMM_transactor->AWPROT(m_aximm_AWPROT);
    mp_M_AXIMM_transactor->AWQOS(m_aximm_AWQOS);
    mp_M_AXIMM_transactor->AWREADY(m_aximm_AWREADY);
    mp_M_AXIMM_transactor->AWREGION(m_aximm_AWREGION);
    mp_M_AXIMM_transactor->AWSIZE(m_aximm_AWSIZE);
    mp_M_AXIMM_transactor->AWUSER(m_aximm_AWUSER);
    mp_M_AXIMM_transactor->AWVALID(m_aximm_AWVALID);
    mp_M_AXIMM_transactor->BID(m_aximm_BID);
    mp_M_AXIMM_transactor->BREADY(m_aximm_BREADY);
    mp_M_AXIMM_transactor->BRESP(m_aximm_BRESP);
    mp_M_AXIMM_transactor->BUSER(m_aximm_BUSER);
    mp_M_AXIMM_transactor->BVALID(m_aximm_BVALID);
    mp_M_AXIMM_transactor->RDATA(m_aximm_RDATA);
    mp_M_AXIMM_transactor->RID(m_aximm_RID);
    mp_M_AXIMM_transactor->RLAST(m_aximm_RLAST);
    mp_M_AXIMM_transactor->RREADY(m_aximm_RREADY);
    mp_M_AXIMM_transactor->RRESP(m_aximm_RRESP);
    mp_M_AXIMM_transactor->RUSER(m_aximm_RUSER);
    mp_M_AXIMM_transactor->RVALID(m_aximm_RVALID);
    mp_M_AXIMM_transactor->WDATA(m_aximm_WDATA);
    mp_M_AXIMM_transactor->WLAST(m_aximm_WLAST);
    mp_M_AXIMM_transactor->WREADY(m_aximm_WREADY);
    mp_M_AXIMM_transactor->WSTRB(m_aximm_WSTRB);
    mp_M_AXIMM_transactor->WUSER(m_aximm_WUSER);
    mp_M_AXIMM_transactor->WVALID(m_aximm_WVALID);
    mp_M_AXIMM_transactor->CLK(m_aximm_aclk);
    mp_M_AXIMM_transactor->RST(m_aximm_aresetn);

    // M_AXIMM' transactor sockets

    mp_impl->initiator_mm_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->initiator_mm_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
pfm_top_sim_qdma_0_0::pfm_top_sim_qdma_0_0(const sc_core::sc_module_name& nm) : pfm_top_sim_qdma_0_0_sc(nm),  m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), m_axictrl_aclk("m_axictrl_aclk"), m_axictrl_aresetn("m_axictrl_aresetn"), m_axictrl_awaddr("m_axictrl_awaddr"), m_axictrl_awprot("m_axictrl_awprot"), m_axictrl_awvalid("m_axictrl_awvalid"), m_axictrl_awready("m_axictrl_awready"), m_axictrl_wdata("m_axictrl_wdata"), m_axictrl_wstrb("m_axictrl_wstrb"), m_axictrl_wvalid("m_axictrl_wvalid"), m_axictrl_wready("m_axictrl_wready"), m_axictrl_bvalid("m_axictrl_bvalid"), m_axictrl_bready("m_axictrl_bready"), m_axictrl_bresp("m_axictrl_bresp"), m_axictrl_araddr("m_axictrl_araddr"), m_axictrl_arvalid("m_axictrl_arvalid"), m_axictrl_arready("m_axictrl_arready"), m_axictrl_arprot("m_axictrl_arprot"), m_axictrl_rdata("m_axictrl_rdata"), m_axictrl_rresp("m_axictrl_rresp"), m_axictrl_rvalid("m_axictrl_rvalid"), m_axictrl_rready("m_axictrl_rready"), m_aximm_AWVALID("m_aximm_AWVALID"), m_aximm_AWREADY("m_aximm_AWREADY"), m_aximm_AWADDR("m_aximm_AWADDR"), m_aximm_AWID("m_aximm_AWID"), m_aximm_AWLEN("m_aximm_AWLEN"), m_aximm_AWSIZE("m_aximm_AWSIZE"), m_aximm_AWBURST("m_aximm_AWBURST"), m_aximm_AWLOCK("m_aximm_AWLOCK"), m_aximm_AWCACHE("m_aximm_AWCACHE"), m_aximm_AWPROT("m_aximm_AWPROT"), m_aximm_AWREGION("m_aximm_AWREGION"), m_aximm_AWQOS("m_aximm_AWQOS"), m_aximm_AWUSER("m_aximm_AWUSER"), m_aximm_WVALID("m_aximm_WVALID"), m_aximm_WREADY("m_aximm_WREADY"), m_aximm_WDATA("m_aximm_WDATA"), m_aximm_WSTRB("m_aximm_WSTRB"), m_aximm_WLAST("m_aximm_WLAST"), m_aximm_WUSER("m_aximm_WUSER"), m_aximm_ARVALID("m_aximm_ARVALID"), m_aximm_ARREADY("m_aximm_ARREADY"), m_aximm_ARADDR("m_aximm_ARADDR"), m_aximm_ARID("m_aximm_ARID"), m_aximm_ARLEN("m_aximm_ARLEN"), m_aximm_ARSIZE("m_aximm_ARSIZE"), m_aximm_ARBURST("m_aximm_ARBURST"), m_aximm_ARLOCK("m_aximm_ARLOCK"), m_aximm_ARCACHE("m_aximm_ARCACHE"), m_aximm_ARPROT("m_aximm_ARPROT"), m_aximm_ARREGION("m_aximm_ARREGION"), m_aximm_ARQOS("m_aximm_ARQOS"), m_aximm_ARUSER("m_aximm_ARUSER"), m_aximm_RVALID("m_aximm_RVALID"), m_aximm_RREADY("m_aximm_RREADY"), m_aximm_RDATA("m_aximm_RDATA"), m_aximm_RLAST("m_aximm_RLAST"), m_aximm_RID("m_aximm_RID"), m_aximm_RRESP("m_aximm_RRESP"), m_aximm_RUSER("m_aximm_RUSER"), m_aximm_BVALID("m_aximm_BVALID"), m_aximm_BREADY("m_aximm_BREADY"), m_aximm_BRESP("m_aximm_BRESP"), m_aximm_BID("m_aximm_BID"), m_aximm_BUSER("m_aximm_BUSER"), usr_irq_req("usr_irq_req"), usr_irq_ack("usr_irq_ack")
{
  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->m_axictrl_aclk(m_axictrl_aclk);
  mp_impl->m_axictrl_aresetn(m_axictrl_aresetn);
  mp_impl->usr_irq_req(usr_irq_req);
  mp_impl->usr_irq_ack(usr_irq_ack);

  // initialize transactors
  mp_M_AXICTRL_transactor = NULL;
  mp_M_AXIMM_transactor = NULL;
  mp_m_aximm_ARLOCK_converter = NULL;
  mp_m_aximm_AWLOCK_converter = NULL;

  // Instantiate Socket Stubs

  // configure M_AXICTRL_transactor
    xsc::common_cpp::properties M_AXICTRL_transactor_param_props;
    M_AXICTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXICTRL_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXICTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXICTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_QOS", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXICTRL_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXICTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M_AXICTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXICTRL_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    M_AXICTRL_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXICTRL_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXICTRL_transactor", M_AXICTRL_transactor_param_props);
  mp_M_AXICTRL_transactor->ARADDR(m_axictrl_araddr);
  mp_M_AXICTRL_transactor->ARPROT(m_axictrl_arprot);
  mp_M_AXICTRL_transactor->ARREADY(m_axictrl_arready);
  mp_M_AXICTRL_transactor->ARVALID(m_axictrl_arvalid);
  mp_M_AXICTRL_transactor->AWADDR(m_axictrl_awaddr);
  mp_M_AXICTRL_transactor->AWPROT(m_axictrl_awprot);
  mp_M_AXICTRL_transactor->AWREADY(m_axictrl_awready);
  mp_M_AXICTRL_transactor->AWVALID(m_axictrl_awvalid);
  mp_M_AXICTRL_transactor->BREADY(m_axictrl_bready);
  mp_M_AXICTRL_transactor->BRESP(m_axictrl_bresp);
  mp_M_AXICTRL_transactor->BVALID(m_axictrl_bvalid);
  mp_M_AXICTRL_transactor->RDATA(m_axictrl_rdata);
  mp_M_AXICTRL_transactor->RREADY(m_axictrl_rready);
  mp_M_AXICTRL_transactor->RRESP(m_axictrl_rresp);
  mp_M_AXICTRL_transactor->RVALID(m_axictrl_rvalid);
  mp_M_AXICTRL_transactor->WDATA(m_axictrl_wdata);
  mp_M_AXICTRL_transactor->WREADY(m_axictrl_wready);
  mp_M_AXICTRL_transactor->WSTRB(m_axictrl_wstrb);
  mp_M_AXICTRL_transactor->WVALID(m_axictrl_wvalid);
  mp_M_AXICTRL_transactor->CLK(m_axictrl_aclk);
  mp_M_AXICTRL_transactor->RST(m_axictrl_aresetn);
  // configure M_AXIMM_transactor
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXIMM_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    M_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,32,32,1,32,32>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);
  mp_M_AXIMM_transactor->ARADDR(m_aximm_ARADDR);
  mp_M_AXIMM_transactor->ARBURST(m_aximm_ARBURST);
  mp_M_AXIMM_transactor->ARCACHE(m_aximm_ARCACHE);
  mp_M_AXIMM_transactor->ARID(m_aximm_ARID);
  mp_M_AXIMM_transactor->ARLEN(m_aximm_ARLEN);
  mp_m_aximm_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_aximm_ARLOCK_converter");
  mp_m_aximm_ARLOCK_converter->scalar_in(m_m_aximm_ARLOCK_converter_signal);
  mp_m_aximm_ARLOCK_converter->vector_out(m_aximm_ARLOCK);
  mp_M_AXIMM_transactor->ARLOCK(m_m_aximm_ARLOCK_converter_signal);
  mp_M_AXIMM_transactor->ARPROT(m_aximm_ARPROT);
  mp_M_AXIMM_transactor->ARQOS(m_aximm_ARQOS);
  mp_M_AXIMM_transactor->ARREADY(m_aximm_ARREADY);
  mp_M_AXIMM_transactor->ARREGION(m_aximm_ARREGION);
  mp_M_AXIMM_transactor->ARSIZE(m_aximm_ARSIZE);
  mp_M_AXIMM_transactor->ARUSER(m_aximm_ARUSER);
  mp_M_AXIMM_transactor->ARVALID(m_aximm_ARVALID);
  mp_M_AXIMM_transactor->AWADDR(m_aximm_AWADDR);
  mp_M_AXIMM_transactor->AWBURST(m_aximm_AWBURST);
  mp_M_AXIMM_transactor->AWCACHE(m_aximm_AWCACHE);
  mp_M_AXIMM_transactor->AWID(m_aximm_AWID);
  mp_M_AXIMM_transactor->AWLEN(m_aximm_AWLEN);
  mp_m_aximm_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_aximm_AWLOCK_converter");
  mp_m_aximm_AWLOCK_converter->scalar_in(m_m_aximm_AWLOCK_converter_signal);
  mp_m_aximm_AWLOCK_converter->vector_out(m_aximm_AWLOCK);
  mp_M_AXIMM_transactor->AWLOCK(m_m_aximm_AWLOCK_converter_signal);
  mp_M_AXIMM_transactor->AWPROT(m_aximm_AWPROT);
  mp_M_AXIMM_transactor->AWQOS(m_aximm_AWQOS);
  mp_M_AXIMM_transactor->AWREADY(m_aximm_AWREADY);
  mp_M_AXIMM_transactor->AWREGION(m_aximm_AWREGION);
  mp_M_AXIMM_transactor->AWSIZE(m_aximm_AWSIZE);
  mp_M_AXIMM_transactor->AWUSER(m_aximm_AWUSER);
  mp_M_AXIMM_transactor->AWVALID(m_aximm_AWVALID);
  mp_M_AXIMM_transactor->BID(m_aximm_BID);
  mp_M_AXIMM_transactor->BREADY(m_aximm_BREADY);
  mp_M_AXIMM_transactor->BRESP(m_aximm_BRESP);
  mp_M_AXIMM_transactor->BUSER(m_aximm_BUSER);
  mp_M_AXIMM_transactor->BVALID(m_aximm_BVALID);
  mp_M_AXIMM_transactor->RDATA(m_aximm_RDATA);
  mp_M_AXIMM_transactor->RID(m_aximm_RID);
  mp_M_AXIMM_transactor->RLAST(m_aximm_RLAST);
  mp_M_AXIMM_transactor->RREADY(m_aximm_RREADY);
  mp_M_AXIMM_transactor->RRESP(m_aximm_RRESP);
  mp_M_AXIMM_transactor->RUSER(m_aximm_RUSER);
  mp_M_AXIMM_transactor->RVALID(m_aximm_RVALID);
  mp_M_AXIMM_transactor->WDATA(m_aximm_WDATA);
  mp_M_AXIMM_transactor->WLAST(m_aximm_WLAST);
  mp_M_AXIMM_transactor->WREADY(m_aximm_WREADY);
  mp_M_AXIMM_transactor->WSTRB(m_aximm_WSTRB);
  mp_M_AXIMM_transactor->WUSER(m_aximm_WUSER);
  mp_M_AXIMM_transactor->WVALID(m_aximm_WVALID);
  mp_M_AXIMM_transactor->CLK(m_aximm_aclk);
  mp_M_AXIMM_transactor->RST(m_aximm_aresetn);

  // initialize transactors stubs
  M_AXICTRL_transactor_initiator_wr_socket_stub = nullptr;
  M_AXICTRL_transactor_initiator_rd_socket_stub = nullptr;
  M_AXIMM_transactor_initiator_wr_socket_stub = nullptr;
  M_AXIMM_transactor_initiator_rd_socket_stub = nullptr;

}

void pfm_top_sim_qdma_0_0::before_end_of_elaboration()
{
  // configure 'M_AXICTRL' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_qdma_0_0", "M_AXICTRL_TLM_MODE") != 1)
  {
    mp_impl->initiator_ctrl_rd_socket->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_impl->initiator_ctrl_wr_socket->bind(*(mp_M_AXICTRL_transactor->wr_socket));
  
  }
  else
  {
    M_AXICTRL_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXICTRL_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXICTRL_transactor->wr_socket));
    M_AXICTRL_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXICTRL_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_M_AXICTRL_transactor->disable_transactor();
  }

  // configure 'M_AXIMM' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_qdma_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    mp_impl->initiator_mm_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->initiator_mm_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  
  }
  else
  {
    M_AXIMM_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXIMM_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXIMM_transactor->wr_socket));
    M_AXIMM_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXIMM_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_M_AXIMM_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
pfm_top_sim_qdma_0_0::pfm_top_sim_qdma_0_0(const sc_core::sc_module_name& nm) : pfm_top_sim_qdma_0_0_sc(nm),  m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), m_axictrl_aclk("m_axictrl_aclk"), m_axictrl_aresetn("m_axictrl_aresetn"), m_axictrl_awaddr("m_axictrl_awaddr"), m_axictrl_awprot("m_axictrl_awprot"), m_axictrl_awvalid("m_axictrl_awvalid"), m_axictrl_awready("m_axictrl_awready"), m_axictrl_wdata("m_axictrl_wdata"), m_axictrl_wstrb("m_axictrl_wstrb"), m_axictrl_wvalid("m_axictrl_wvalid"), m_axictrl_wready("m_axictrl_wready"), m_axictrl_bvalid("m_axictrl_bvalid"), m_axictrl_bready("m_axictrl_bready"), m_axictrl_bresp("m_axictrl_bresp"), m_axictrl_araddr("m_axictrl_araddr"), m_axictrl_arvalid("m_axictrl_arvalid"), m_axictrl_arready("m_axictrl_arready"), m_axictrl_arprot("m_axictrl_arprot"), m_axictrl_rdata("m_axictrl_rdata"), m_axictrl_rresp("m_axictrl_rresp"), m_axictrl_rvalid("m_axictrl_rvalid"), m_axictrl_rready("m_axictrl_rready"), m_aximm_AWVALID("m_aximm_AWVALID"), m_aximm_AWREADY("m_aximm_AWREADY"), m_aximm_AWADDR("m_aximm_AWADDR"), m_aximm_AWID("m_aximm_AWID"), m_aximm_AWLEN("m_aximm_AWLEN"), m_aximm_AWSIZE("m_aximm_AWSIZE"), m_aximm_AWBURST("m_aximm_AWBURST"), m_aximm_AWLOCK("m_aximm_AWLOCK"), m_aximm_AWCACHE("m_aximm_AWCACHE"), m_aximm_AWPROT("m_aximm_AWPROT"), m_aximm_AWREGION("m_aximm_AWREGION"), m_aximm_AWQOS("m_aximm_AWQOS"), m_aximm_AWUSER("m_aximm_AWUSER"), m_aximm_WVALID("m_aximm_WVALID"), m_aximm_WREADY("m_aximm_WREADY"), m_aximm_WDATA("m_aximm_WDATA"), m_aximm_WSTRB("m_aximm_WSTRB"), m_aximm_WLAST("m_aximm_WLAST"), m_aximm_WUSER("m_aximm_WUSER"), m_aximm_ARVALID("m_aximm_ARVALID"), m_aximm_ARREADY("m_aximm_ARREADY"), m_aximm_ARADDR("m_aximm_ARADDR"), m_aximm_ARID("m_aximm_ARID"), m_aximm_ARLEN("m_aximm_ARLEN"), m_aximm_ARSIZE("m_aximm_ARSIZE"), m_aximm_ARBURST("m_aximm_ARBURST"), m_aximm_ARLOCK("m_aximm_ARLOCK"), m_aximm_ARCACHE("m_aximm_ARCACHE"), m_aximm_ARPROT("m_aximm_ARPROT"), m_aximm_ARREGION("m_aximm_ARREGION"), m_aximm_ARQOS("m_aximm_ARQOS"), m_aximm_ARUSER("m_aximm_ARUSER"), m_aximm_RVALID("m_aximm_RVALID"), m_aximm_RREADY("m_aximm_RREADY"), m_aximm_RDATA("m_aximm_RDATA"), m_aximm_RLAST("m_aximm_RLAST"), m_aximm_RID("m_aximm_RID"), m_aximm_RRESP("m_aximm_RRESP"), m_aximm_RUSER("m_aximm_RUSER"), m_aximm_BVALID("m_aximm_BVALID"), m_aximm_BREADY("m_aximm_BREADY"), m_aximm_BRESP("m_aximm_BRESP"), m_aximm_BID("m_aximm_BID"), m_aximm_BUSER("m_aximm_BUSER"), usr_irq_req("usr_irq_req"), usr_irq_ack("usr_irq_ack")
{
  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->m_axictrl_aclk(m_axictrl_aclk);
  mp_impl->m_axictrl_aresetn(m_axictrl_aresetn);
  mp_impl->usr_irq_req(usr_irq_req);
  mp_impl->usr_irq_ack(usr_irq_ack);

  // initialize transactors
  mp_M_AXICTRL_transactor = NULL;
  mp_M_AXIMM_transactor = NULL;
  mp_m_aximm_ARLOCK_converter = NULL;
  mp_m_aximm_AWLOCK_converter = NULL;

  // Instantiate Socket Stubs

  // configure M_AXICTRL_transactor
    xsc::common_cpp::properties M_AXICTRL_transactor_param_props;
    M_AXICTRL_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXICTRL_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXICTRL_transactor_param_props.addLong("ID_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXICTRL_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_LOCK", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_CACHE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_QOS", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_REGION", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXICTRL_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    M_AXICTRL_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXICTRL_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_SIZE", "0");
    M_AXICTRL_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXICTRL_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXICTRL_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    M_AXICTRL_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXICTRL_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    M_AXICTRL_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXICTRL_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXICTRL_transactor", M_AXICTRL_transactor_param_props);
  mp_M_AXICTRL_transactor->ARADDR(m_axictrl_araddr);
  mp_M_AXICTRL_transactor->ARPROT(m_axictrl_arprot);
  mp_M_AXICTRL_transactor->ARREADY(m_axictrl_arready);
  mp_M_AXICTRL_transactor->ARVALID(m_axictrl_arvalid);
  mp_M_AXICTRL_transactor->AWADDR(m_axictrl_awaddr);
  mp_M_AXICTRL_transactor->AWPROT(m_axictrl_awprot);
  mp_M_AXICTRL_transactor->AWREADY(m_axictrl_awready);
  mp_M_AXICTRL_transactor->AWVALID(m_axictrl_awvalid);
  mp_M_AXICTRL_transactor->BREADY(m_axictrl_bready);
  mp_M_AXICTRL_transactor->BRESP(m_axictrl_bresp);
  mp_M_AXICTRL_transactor->BVALID(m_axictrl_bvalid);
  mp_M_AXICTRL_transactor->RDATA(m_axictrl_rdata);
  mp_M_AXICTRL_transactor->RREADY(m_axictrl_rready);
  mp_M_AXICTRL_transactor->RRESP(m_axictrl_rresp);
  mp_M_AXICTRL_transactor->RVALID(m_axictrl_rvalid);
  mp_M_AXICTRL_transactor->WDATA(m_axictrl_wdata);
  mp_M_AXICTRL_transactor->WREADY(m_axictrl_wready);
  mp_M_AXICTRL_transactor->WSTRB(m_axictrl_wstrb);
  mp_M_AXICTRL_transactor->WVALID(m_axictrl_wvalid);
  mp_M_AXICTRL_transactor->CLK(m_axictrl_aclk);
  mp_M_AXICTRL_transactor->RST(m_axictrl_aresetn);
  // configure M_AXIMM_transactor
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_REGION", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    M_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    M_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    M_AXIMM_transactor_param_props.addFloat("PHASE", "0.0");
    M_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    M_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    M_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,32,32,1,32,32>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);
  mp_M_AXIMM_transactor->ARADDR(m_aximm_ARADDR);
  mp_M_AXIMM_transactor->ARBURST(m_aximm_ARBURST);
  mp_M_AXIMM_transactor->ARCACHE(m_aximm_ARCACHE);
  mp_M_AXIMM_transactor->ARID(m_aximm_ARID);
  mp_M_AXIMM_transactor->ARLEN(m_aximm_ARLEN);
  mp_m_aximm_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_aximm_ARLOCK_converter");
  mp_m_aximm_ARLOCK_converter->scalar_in(m_m_aximm_ARLOCK_converter_signal);
  mp_m_aximm_ARLOCK_converter->vector_out(m_aximm_ARLOCK);
  mp_M_AXIMM_transactor->ARLOCK(m_m_aximm_ARLOCK_converter_signal);
  mp_M_AXIMM_transactor->ARPROT(m_aximm_ARPROT);
  mp_M_AXIMM_transactor->ARQOS(m_aximm_ARQOS);
  mp_M_AXIMM_transactor->ARREADY(m_aximm_ARREADY);
  mp_M_AXIMM_transactor->ARREGION(m_aximm_ARREGION);
  mp_M_AXIMM_transactor->ARSIZE(m_aximm_ARSIZE);
  mp_M_AXIMM_transactor->ARUSER(m_aximm_ARUSER);
  mp_M_AXIMM_transactor->ARVALID(m_aximm_ARVALID);
  mp_M_AXIMM_transactor->AWADDR(m_aximm_AWADDR);
  mp_M_AXIMM_transactor->AWBURST(m_aximm_AWBURST);
  mp_M_AXIMM_transactor->AWCACHE(m_aximm_AWCACHE);
  mp_M_AXIMM_transactor->AWID(m_aximm_AWID);
  mp_M_AXIMM_transactor->AWLEN(m_aximm_AWLEN);
  mp_m_aximm_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_aximm_AWLOCK_converter");
  mp_m_aximm_AWLOCK_converter->scalar_in(m_m_aximm_AWLOCK_converter_signal);
  mp_m_aximm_AWLOCK_converter->vector_out(m_aximm_AWLOCK);
  mp_M_AXIMM_transactor->AWLOCK(m_m_aximm_AWLOCK_converter_signal);
  mp_M_AXIMM_transactor->AWPROT(m_aximm_AWPROT);
  mp_M_AXIMM_transactor->AWQOS(m_aximm_AWQOS);
  mp_M_AXIMM_transactor->AWREADY(m_aximm_AWREADY);
  mp_M_AXIMM_transactor->AWREGION(m_aximm_AWREGION);
  mp_M_AXIMM_transactor->AWSIZE(m_aximm_AWSIZE);
  mp_M_AXIMM_transactor->AWUSER(m_aximm_AWUSER);
  mp_M_AXIMM_transactor->AWVALID(m_aximm_AWVALID);
  mp_M_AXIMM_transactor->BID(m_aximm_BID);
  mp_M_AXIMM_transactor->BREADY(m_aximm_BREADY);
  mp_M_AXIMM_transactor->BRESP(m_aximm_BRESP);
  mp_M_AXIMM_transactor->BUSER(m_aximm_BUSER);
  mp_M_AXIMM_transactor->BVALID(m_aximm_BVALID);
  mp_M_AXIMM_transactor->RDATA(m_aximm_RDATA);
  mp_M_AXIMM_transactor->RID(m_aximm_RID);
  mp_M_AXIMM_transactor->RLAST(m_aximm_RLAST);
  mp_M_AXIMM_transactor->RREADY(m_aximm_RREADY);
  mp_M_AXIMM_transactor->RRESP(m_aximm_RRESP);
  mp_M_AXIMM_transactor->RUSER(m_aximm_RUSER);
  mp_M_AXIMM_transactor->RVALID(m_aximm_RVALID);
  mp_M_AXIMM_transactor->WDATA(m_aximm_WDATA);
  mp_M_AXIMM_transactor->WLAST(m_aximm_WLAST);
  mp_M_AXIMM_transactor->WREADY(m_aximm_WREADY);
  mp_M_AXIMM_transactor->WSTRB(m_aximm_WSTRB);
  mp_M_AXIMM_transactor->WUSER(m_aximm_WUSER);
  mp_M_AXIMM_transactor->WVALID(m_aximm_WVALID);
  mp_M_AXIMM_transactor->CLK(m_aximm_aclk);
  mp_M_AXIMM_transactor->RST(m_aximm_aresetn);

  // initialize transactors stubs
  M_AXICTRL_transactor_initiator_wr_socket_stub = nullptr;
  M_AXICTRL_transactor_initiator_rd_socket_stub = nullptr;
  M_AXIMM_transactor_initiator_wr_socket_stub = nullptr;
  M_AXIMM_transactor_initiator_rd_socket_stub = nullptr;

}

void pfm_top_sim_qdma_0_0::before_end_of_elaboration()
{
  // configure 'M_AXICTRL' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_qdma_0_0", "M_AXICTRL_TLM_MODE") != 1)
  {
    mp_impl->initiator_ctrl_rd_socket->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_impl->initiator_ctrl_wr_socket->bind(*(mp_M_AXICTRL_transactor->wr_socket));
  
  }
  else
  {
    M_AXICTRL_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXICTRL_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXICTRL_transactor->wr_socket));
    M_AXICTRL_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXICTRL_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXICTRL_transactor->rd_socket));
    mp_M_AXICTRL_transactor->disable_transactor();
  }

  // configure 'M_AXIMM' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_qdma_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    mp_impl->initiator_mm_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->initiator_mm_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  
  }
  else
  {
    M_AXIMM_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXIMM_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXIMM_transactor->wr_socket));
    M_AXIMM_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXIMM_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_M_AXIMM_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




pfm_top_sim_qdma_0_0::~pfm_top_sim_qdma_0_0()
{
  delete mp_M_AXICTRL_transactor;

  delete mp_M_AXIMM_transactor;
  delete mp_m_aximm_ARLOCK_converter;
  delete mp_m_aximm_AWLOCK_converter;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(pfm_top_sim_qdma_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(pfm_top_sim_qdma_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(pfm_top_sim_qdma_0_0);
SC_REGISTER_BV(64);
#endif

