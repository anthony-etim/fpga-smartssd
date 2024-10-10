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


#include "pfm_top_sim_address_0_0_sc.h"

#include "pfm_top_sim_address_0_0.h"

#include "xtlm_aximm_decoupler.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
pfm_top_sim_address_0_0::pfm_top_sim_address_0_0(const sc_core::sc_module_name& nm) : pfm_top_sim_address_0_0_sc(nm), m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), s_aximm_aclk("s_aximm_aclk"), s_aximm_aresetn("s_aximm_aresetn"), m_aximm_AWVALID("m_aximm_AWVALID"), m_aximm_AWREADY("m_aximm_AWREADY"), m_aximm_AWADDR("m_aximm_AWADDR"), m_aximm_AWID("m_aximm_AWID"), m_aximm_AWLEN("m_aximm_AWLEN"), m_aximm_AWSIZE("m_aximm_AWSIZE"), m_aximm_AWBURST("m_aximm_AWBURST"), m_aximm_AWLOCK("m_aximm_AWLOCK"), m_aximm_AWCACHE("m_aximm_AWCACHE"), m_aximm_AWPROT("m_aximm_AWPROT"), m_aximm_AWREGION("m_aximm_AWREGION"), m_aximm_AWQOS("m_aximm_AWQOS"), m_aximm_AWUSER("m_aximm_AWUSER"), m_aximm_WVALID("m_aximm_WVALID"), m_aximm_WREADY("m_aximm_WREADY"), m_aximm_WDATA("m_aximm_WDATA"), m_aximm_WSTRB("m_aximm_WSTRB"), m_aximm_WLAST("m_aximm_WLAST"), m_aximm_WUSER("m_aximm_WUSER"), m_aximm_ARVALID("m_aximm_ARVALID"), m_aximm_ARREADY("m_aximm_ARREADY"), m_aximm_ARADDR("m_aximm_ARADDR"), m_aximm_ARID("m_aximm_ARID"), m_aximm_ARLEN("m_aximm_ARLEN"), m_aximm_ARSIZE("m_aximm_ARSIZE"), m_aximm_ARBURST("m_aximm_ARBURST"), m_aximm_ARLOCK("m_aximm_ARLOCK"), m_aximm_ARCACHE("m_aximm_ARCACHE"), m_aximm_ARPROT("m_aximm_ARPROT"), m_aximm_ARREGION("m_aximm_ARREGION"), m_aximm_ARQOS("m_aximm_ARQOS"), m_aximm_ARUSER("m_aximm_ARUSER"), m_aximm_RVALID("m_aximm_RVALID"), m_aximm_RREADY("m_aximm_RREADY"), m_aximm_RDATA("m_aximm_RDATA"), m_aximm_RLAST("m_aximm_RLAST"), m_aximm_RID("m_aximm_RID"), m_aximm_RRESP("m_aximm_RRESP"), m_aximm_RUSER("m_aximm_RUSER"), m_aximm_BVALID("m_aximm_BVALID"), m_aximm_BREADY("m_aximm_BREADY"), m_aximm_BRESP("m_aximm_BRESP"), m_aximm_BID("m_aximm_BID"), m_aximm_BUSER("m_aximm_BUSER"), s_axi_awaddr("s_axi_awaddr"), s_axi_awlen("s_axi_awlen"), s_axi_awsize("s_axi_awsize"), s_axi_awburst("s_axi_awburst"), s_axi_awlock("s_axi_awlock"), s_axi_awcache("s_axi_awcache"), s_axi_awprot("s_axi_awprot"), s_axi_awregion("s_axi_awregion"), s_axi_awqos("s_axi_awqos"), s_axi_awuser("s_axi_awuser"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wlast("s_axi_wlast"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_buser("s_axi_buser"), s_axi_bready("s_axi_bready"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_aruser("s_axi_aruser"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready")
{

  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->s_aximm_aclk(s_aximm_aclk);
  mp_impl->s_aximm_aresetn(s_aximm_aresetn);

  // initialize transactors
  mp_M_AXIMM_transactor = NULL;
  mp_m_aximm_ARLOCK_converter = NULL;
  mp_m_aximm_AWLOCK_converter = NULL;
  mp_S_AXIMM_transactor = NULL;
  mp_s_axi_arlock_converter = NULL;
  mp_s_axi_awlock_converter = NULL;

  // initialize socket stubs

}

void pfm_top_sim_address_0_0::before_end_of_elaboration()
{
  // configure 'M_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_address_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXIMM' transactor parameters
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "1");
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

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);

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

    mp_impl->M_INITIATOR_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->M_INITIATOR_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_address_0_0", "S_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIMM' transactor parameters
    xsc::common_cpp::properties S_AXIMM_transactor_param_props;
    S_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    S_AXIMM_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIMM_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    S_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIMM_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,32,1,1,32,1>("S_AXIMM_transactor", S_AXIMM_transactor_param_props);

    // S_AXIMM' transactor ports

    mp_S_AXIMM_transactor->ARADDR(s_axi_araddr);
    mp_S_AXIMM_transactor->ARBURST(s_axi_arburst);
    mp_S_AXIMM_transactor->ARCACHE(s_axi_arcache);
    mp_S_AXIMM_transactor->ARLEN(s_axi_arlen);
    mp_s_axi_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arlock_converter");
    mp_s_axi_arlock_converter->vector_in(s_axi_arlock);
    mp_s_axi_arlock_converter->scalar_out(m_s_axi_arlock_converter_signal);
    mp_S_AXIMM_transactor->ARLOCK(m_s_axi_arlock_converter_signal);
    mp_S_AXIMM_transactor->ARPROT(s_axi_arprot);
    mp_S_AXIMM_transactor->ARQOS(s_axi_arqos);
    mp_S_AXIMM_transactor->ARREADY(s_axi_arready);
    mp_S_AXIMM_transactor->ARREGION(s_axi_arregion);
    mp_S_AXIMM_transactor->ARSIZE(s_axi_arsize);
    mp_S_AXIMM_transactor->ARUSER(s_axi_aruser);
    mp_S_AXIMM_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXIMM_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXIMM_transactor->AWBURST(s_axi_awburst);
    mp_S_AXIMM_transactor->AWCACHE(s_axi_awcache);
    mp_S_AXIMM_transactor->AWLEN(s_axi_awlen);
    mp_s_axi_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_awlock_converter");
    mp_s_axi_awlock_converter->vector_in(s_axi_awlock);
    mp_s_axi_awlock_converter->scalar_out(m_s_axi_awlock_converter_signal);
    mp_S_AXIMM_transactor->AWLOCK(m_s_axi_awlock_converter_signal);
    mp_S_AXIMM_transactor->AWPROT(s_axi_awprot);
    mp_S_AXIMM_transactor->AWQOS(s_axi_awqos);
    mp_S_AXIMM_transactor->AWREADY(s_axi_awready);
    mp_S_AXIMM_transactor->AWREGION(s_axi_awregion);
    mp_S_AXIMM_transactor->AWSIZE(s_axi_awsize);
    mp_S_AXIMM_transactor->AWUSER(s_axi_awuser);
    mp_S_AXIMM_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXIMM_transactor->BREADY(s_axi_bready);
    mp_S_AXIMM_transactor->BRESP(s_axi_bresp);
    mp_S_AXIMM_transactor->BUSER(s_axi_buser);
    mp_S_AXIMM_transactor->BVALID(s_axi_bvalid);
    mp_S_AXIMM_transactor->RDATA(s_axi_rdata);
    mp_S_AXIMM_transactor->RLAST(s_axi_rlast);
    mp_S_AXIMM_transactor->RREADY(s_axi_rready);
    mp_S_AXIMM_transactor->RRESP(s_axi_rresp);
    mp_S_AXIMM_transactor->RVALID(s_axi_rvalid);
    mp_S_AXIMM_transactor->WDATA(s_axi_wdata);
    mp_S_AXIMM_transactor->WLAST(s_axi_wlast);
    mp_S_AXIMM_transactor->WREADY(s_axi_wready);
    mp_S_AXIMM_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXIMM_transactor->WVALID(s_axi_wvalid);
    mp_S_AXIMM_transactor->CLK(s_aximm_aclk);
    mp_S_AXIMM_transactor->RST(s_aximm_aresetn);

    // S_AXIMM' transactor sockets

    mp_impl->S_TARGET_rd_socket->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_impl->S_TARGET_wr_socket->bind(*(mp_S_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
pfm_top_sim_address_0_0::pfm_top_sim_address_0_0(const sc_core::sc_module_name& nm) : pfm_top_sim_address_0_0_sc(nm), m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), s_aximm_aclk("s_aximm_aclk"), s_aximm_aresetn("s_aximm_aresetn"), m_aximm_AWVALID("m_aximm_AWVALID"), m_aximm_AWREADY("m_aximm_AWREADY"), m_aximm_AWADDR("m_aximm_AWADDR"), m_aximm_AWID("m_aximm_AWID"), m_aximm_AWLEN("m_aximm_AWLEN"), m_aximm_AWSIZE("m_aximm_AWSIZE"), m_aximm_AWBURST("m_aximm_AWBURST"), m_aximm_AWLOCK("m_aximm_AWLOCK"), m_aximm_AWCACHE("m_aximm_AWCACHE"), m_aximm_AWPROT("m_aximm_AWPROT"), m_aximm_AWREGION("m_aximm_AWREGION"), m_aximm_AWQOS("m_aximm_AWQOS"), m_aximm_AWUSER("m_aximm_AWUSER"), m_aximm_WVALID("m_aximm_WVALID"), m_aximm_WREADY("m_aximm_WREADY"), m_aximm_WDATA("m_aximm_WDATA"), m_aximm_WSTRB("m_aximm_WSTRB"), m_aximm_WLAST("m_aximm_WLAST"), m_aximm_WUSER("m_aximm_WUSER"), m_aximm_ARVALID("m_aximm_ARVALID"), m_aximm_ARREADY("m_aximm_ARREADY"), m_aximm_ARADDR("m_aximm_ARADDR"), m_aximm_ARID("m_aximm_ARID"), m_aximm_ARLEN("m_aximm_ARLEN"), m_aximm_ARSIZE("m_aximm_ARSIZE"), m_aximm_ARBURST("m_aximm_ARBURST"), m_aximm_ARLOCK("m_aximm_ARLOCK"), m_aximm_ARCACHE("m_aximm_ARCACHE"), m_aximm_ARPROT("m_aximm_ARPROT"), m_aximm_ARREGION("m_aximm_ARREGION"), m_aximm_ARQOS("m_aximm_ARQOS"), m_aximm_ARUSER("m_aximm_ARUSER"), m_aximm_RVALID("m_aximm_RVALID"), m_aximm_RREADY("m_aximm_RREADY"), m_aximm_RDATA("m_aximm_RDATA"), m_aximm_RLAST("m_aximm_RLAST"), m_aximm_RID("m_aximm_RID"), m_aximm_RRESP("m_aximm_RRESP"), m_aximm_RUSER("m_aximm_RUSER"), m_aximm_BVALID("m_aximm_BVALID"), m_aximm_BREADY("m_aximm_BREADY"), m_aximm_BRESP("m_aximm_BRESP"), m_aximm_BID("m_aximm_BID"), m_aximm_BUSER("m_aximm_BUSER"), s_axi_awaddr("s_axi_awaddr"), s_axi_awlen("s_axi_awlen"), s_axi_awsize("s_axi_awsize"), s_axi_awburst("s_axi_awburst"), s_axi_awlock("s_axi_awlock"), s_axi_awcache("s_axi_awcache"), s_axi_awprot("s_axi_awprot"), s_axi_awregion("s_axi_awregion"), s_axi_awqos("s_axi_awqos"), s_axi_awuser("s_axi_awuser"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wlast("s_axi_wlast"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_buser("s_axi_buser"), s_axi_bready("s_axi_bready"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_aruser("s_axi_aruser"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready")
{

  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->s_aximm_aclk(s_aximm_aclk);
  mp_impl->s_aximm_aresetn(s_aximm_aresetn);

  // initialize transactors
  mp_M_AXIMM_transactor = NULL;
  mp_m_aximm_ARLOCK_converter = NULL;
  mp_m_aximm_AWLOCK_converter = NULL;
  mp_S_AXIMM_transactor = NULL;
  mp_s_axi_arlock_converter = NULL;
  mp_s_axi_awlock_converter = NULL;

  // initialize socket stubs

}

void pfm_top_sim_address_0_0::before_end_of_elaboration()
{
  // configure 'M_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_address_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXIMM' transactor parameters
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "1");
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

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);

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

    mp_impl->M_INITIATOR_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->M_INITIATOR_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_address_0_0", "S_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIMM' transactor parameters
    xsc::common_cpp::properties S_AXIMM_transactor_param_props;
    S_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    S_AXIMM_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIMM_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    S_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIMM_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,32,1,1,32,1>("S_AXIMM_transactor", S_AXIMM_transactor_param_props);

    // S_AXIMM' transactor ports

    mp_S_AXIMM_transactor->ARADDR(s_axi_araddr);
    mp_S_AXIMM_transactor->ARBURST(s_axi_arburst);
    mp_S_AXIMM_transactor->ARCACHE(s_axi_arcache);
    mp_S_AXIMM_transactor->ARLEN(s_axi_arlen);
    mp_s_axi_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arlock_converter");
    mp_s_axi_arlock_converter->vector_in(s_axi_arlock);
    mp_s_axi_arlock_converter->scalar_out(m_s_axi_arlock_converter_signal);
    mp_S_AXIMM_transactor->ARLOCK(m_s_axi_arlock_converter_signal);
    mp_S_AXIMM_transactor->ARPROT(s_axi_arprot);
    mp_S_AXIMM_transactor->ARQOS(s_axi_arqos);
    mp_S_AXIMM_transactor->ARREADY(s_axi_arready);
    mp_S_AXIMM_transactor->ARREGION(s_axi_arregion);
    mp_S_AXIMM_transactor->ARSIZE(s_axi_arsize);
    mp_S_AXIMM_transactor->ARUSER(s_axi_aruser);
    mp_S_AXIMM_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXIMM_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXIMM_transactor->AWBURST(s_axi_awburst);
    mp_S_AXIMM_transactor->AWCACHE(s_axi_awcache);
    mp_S_AXIMM_transactor->AWLEN(s_axi_awlen);
    mp_s_axi_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_awlock_converter");
    mp_s_axi_awlock_converter->vector_in(s_axi_awlock);
    mp_s_axi_awlock_converter->scalar_out(m_s_axi_awlock_converter_signal);
    mp_S_AXIMM_transactor->AWLOCK(m_s_axi_awlock_converter_signal);
    mp_S_AXIMM_transactor->AWPROT(s_axi_awprot);
    mp_S_AXIMM_transactor->AWQOS(s_axi_awqos);
    mp_S_AXIMM_transactor->AWREADY(s_axi_awready);
    mp_S_AXIMM_transactor->AWREGION(s_axi_awregion);
    mp_S_AXIMM_transactor->AWSIZE(s_axi_awsize);
    mp_S_AXIMM_transactor->AWUSER(s_axi_awuser);
    mp_S_AXIMM_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXIMM_transactor->BREADY(s_axi_bready);
    mp_S_AXIMM_transactor->BRESP(s_axi_bresp);
    mp_S_AXIMM_transactor->BUSER(s_axi_buser);
    mp_S_AXIMM_transactor->BVALID(s_axi_bvalid);
    mp_S_AXIMM_transactor->RDATA(s_axi_rdata);
    mp_S_AXIMM_transactor->RLAST(s_axi_rlast);
    mp_S_AXIMM_transactor->RREADY(s_axi_rready);
    mp_S_AXIMM_transactor->RRESP(s_axi_rresp);
    mp_S_AXIMM_transactor->RVALID(s_axi_rvalid);
    mp_S_AXIMM_transactor->WDATA(s_axi_wdata);
    mp_S_AXIMM_transactor->WLAST(s_axi_wlast);
    mp_S_AXIMM_transactor->WREADY(s_axi_wready);
    mp_S_AXIMM_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXIMM_transactor->WVALID(s_axi_wvalid);
    mp_S_AXIMM_transactor->CLK(s_aximm_aclk);
    mp_S_AXIMM_transactor->RST(s_aximm_aresetn);

    // S_AXIMM' transactor sockets

    mp_impl->S_TARGET_rd_socket->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_impl->S_TARGET_wr_socket->bind(*(mp_S_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
pfm_top_sim_address_0_0::pfm_top_sim_address_0_0(const sc_core::sc_module_name& nm) : pfm_top_sim_address_0_0_sc(nm), m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), s_aximm_aclk("s_aximm_aclk"), s_aximm_aresetn("s_aximm_aresetn"), m_aximm_AWVALID("m_aximm_AWVALID"), m_aximm_AWREADY("m_aximm_AWREADY"), m_aximm_AWADDR("m_aximm_AWADDR"), m_aximm_AWID("m_aximm_AWID"), m_aximm_AWLEN("m_aximm_AWLEN"), m_aximm_AWSIZE("m_aximm_AWSIZE"), m_aximm_AWBURST("m_aximm_AWBURST"), m_aximm_AWLOCK("m_aximm_AWLOCK"), m_aximm_AWCACHE("m_aximm_AWCACHE"), m_aximm_AWPROT("m_aximm_AWPROT"), m_aximm_AWREGION("m_aximm_AWREGION"), m_aximm_AWQOS("m_aximm_AWQOS"), m_aximm_AWUSER("m_aximm_AWUSER"), m_aximm_WVALID("m_aximm_WVALID"), m_aximm_WREADY("m_aximm_WREADY"), m_aximm_WDATA("m_aximm_WDATA"), m_aximm_WSTRB("m_aximm_WSTRB"), m_aximm_WLAST("m_aximm_WLAST"), m_aximm_WUSER("m_aximm_WUSER"), m_aximm_ARVALID("m_aximm_ARVALID"), m_aximm_ARREADY("m_aximm_ARREADY"), m_aximm_ARADDR("m_aximm_ARADDR"), m_aximm_ARID("m_aximm_ARID"), m_aximm_ARLEN("m_aximm_ARLEN"), m_aximm_ARSIZE("m_aximm_ARSIZE"), m_aximm_ARBURST("m_aximm_ARBURST"), m_aximm_ARLOCK("m_aximm_ARLOCK"), m_aximm_ARCACHE("m_aximm_ARCACHE"), m_aximm_ARPROT("m_aximm_ARPROT"), m_aximm_ARREGION("m_aximm_ARREGION"), m_aximm_ARQOS("m_aximm_ARQOS"), m_aximm_ARUSER("m_aximm_ARUSER"), m_aximm_RVALID("m_aximm_RVALID"), m_aximm_RREADY("m_aximm_RREADY"), m_aximm_RDATA("m_aximm_RDATA"), m_aximm_RLAST("m_aximm_RLAST"), m_aximm_RID("m_aximm_RID"), m_aximm_RRESP("m_aximm_RRESP"), m_aximm_RUSER("m_aximm_RUSER"), m_aximm_BVALID("m_aximm_BVALID"), m_aximm_BREADY("m_aximm_BREADY"), m_aximm_BRESP("m_aximm_BRESP"), m_aximm_BID("m_aximm_BID"), m_aximm_BUSER("m_aximm_BUSER"), s_axi_awaddr("s_axi_awaddr"), s_axi_awlen("s_axi_awlen"), s_axi_awsize("s_axi_awsize"), s_axi_awburst("s_axi_awburst"), s_axi_awlock("s_axi_awlock"), s_axi_awcache("s_axi_awcache"), s_axi_awprot("s_axi_awprot"), s_axi_awregion("s_axi_awregion"), s_axi_awqos("s_axi_awqos"), s_axi_awuser("s_axi_awuser"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wlast("s_axi_wlast"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_buser("s_axi_buser"), s_axi_bready("s_axi_bready"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_aruser("s_axi_aruser"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready")
{

  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->s_aximm_aclk(s_aximm_aclk);
  mp_impl->s_aximm_aresetn(s_aximm_aresetn);

  // initialize transactors
  mp_M_AXIMM_transactor = NULL;
  mp_m_aximm_ARLOCK_converter = NULL;
  mp_m_aximm_AWLOCK_converter = NULL;
  mp_S_AXIMM_transactor = NULL;
  mp_s_axi_arlock_converter = NULL;
  mp_s_axi_awlock_converter = NULL;

  // initialize socket stubs

}

void pfm_top_sim_address_0_0::before_end_of_elaboration()
{
  // configure 'M_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_address_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M_AXIMM' transactor parameters
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "1");
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

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);

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

    mp_impl->M_INITIATOR_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->M_INITIATOR_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_address_0_0", "S_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIMM' transactor parameters
    xsc::common_cpp::properties S_AXIMM_transactor_param_props;
    S_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    S_AXIMM_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIMM_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    S_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIMM_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,32,1,1,32,1>("S_AXIMM_transactor", S_AXIMM_transactor_param_props);

    // S_AXIMM' transactor ports

    mp_S_AXIMM_transactor->ARADDR(s_axi_araddr);
    mp_S_AXIMM_transactor->ARBURST(s_axi_arburst);
    mp_S_AXIMM_transactor->ARCACHE(s_axi_arcache);
    mp_S_AXIMM_transactor->ARLEN(s_axi_arlen);
    mp_s_axi_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arlock_converter");
    mp_s_axi_arlock_converter->vector_in(s_axi_arlock);
    mp_s_axi_arlock_converter->scalar_out(m_s_axi_arlock_converter_signal);
    mp_S_AXIMM_transactor->ARLOCK(m_s_axi_arlock_converter_signal);
    mp_S_AXIMM_transactor->ARPROT(s_axi_arprot);
    mp_S_AXIMM_transactor->ARQOS(s_axi_arqos);
    mp_S_AXIMM_transactor->ARREADY(s_axi_arready);
    mp_S_AXIMM_transactor->ARREGION(s_axi_arregion);
    mp_S_AXIMM_transactor->ARSIZE(s_axi_arsize);
    mp_S_AXIMM_transactor->ARUSER(s_axi_aruser);
    mp_S_AXIMM_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXIMM_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXIMM_transactor->AWBURST(s_axi_awburst);
    mp_S_AXIMM_transactor->AWCACHE(s_axi_awcache);
    mp_S_AXIMM_transactor->AWLEN(s_axi_awlen);
    mp_s_axi_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_awlock_converter");
    mp_s_axi_awlock_converter->vector_in(s_axi_awlock);
    mp_s_axi_awlock_converter->scalar_out(m_s_axi_awlock_converter_signal);
    mp_S_AXIMM_transactor->AWLOCK(m_s_axi_awlock_converter_signal);
    mp_S_AXIMM_transactor->AWPROT(s_axi_awprot);
    mp_S_AXIMM_transactor->AWQOS(s_axi_awqos);
    mp_S_AXIMM_transactor->AWREADY(s_axi_awready);
    mp_S_AXIMM_transactor->AWREGION(s_axi_awregion);
    mp_S_AXIMM_transactor->AWSIZE(s_axi_awsize);
    mp_S_AXIMM_transactor->AWUSER(s_axi_awuser);
    mp_S_AXIMM_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXIMM_transactor->BREADY(s_axi_bready);
    mp_S_AXIMM_transactor->BRESP(s_axi_bresp);
    mp_S_AXIMM_transactor->BUSER(s_axi_buser);
    mp_S_AXIMM_transactor->BVALID(s_axi_bvalid);
    mp_S_AXIMM_transactor->RDATA(s_axi_rdata);
    mp_S_AXIMM_transactor->RLAST(s_axi_rlast);
    mp_S_AXIMM_transactor->RREADY(s_axi_rready);
    mp_S_AXIMM_transactor->RRESP(s_axi_rresp);
    mp_S_AXIMM_transactor->RVALID(s_axi_rvalid);
    mp_S_AXIMM_transactor->WDATA(s_axi_wdata);
    mp_S_AXIMM_transactor->WLAST(s_axi_wlast);
    mp_S_AXIMM_transactor->WREADY(s_axi_wready);
    mp_S_AXIMM_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXIMM_transactor->WVALID(s_axi_wvalid);
    mp_S_AXIMM_transactor->CLK(s_aximm_aclk);
    mp_S_AXIMM_transactor->RST(s_aximm_aresetn);

    // S_AXIMM' transactor sockets

    mp_impl->S_TARGET_rd_socket->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_impl->S_TARGET_wr_socket->bind(*(mp_S_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
pfm_top_sim_address_0_0::pfm_top_sim_address_0_0(const sc_core::sc_module_name& nm) : pfm_top_sim_address_0_0_sc(nm),  m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), s_aximm_aclk("s_aximm_aclk"), s_aximm_aresetn("s_aximm_aresetn"), m_aximm_AWVALID("m_aximm_AWVALID"), m_aximm_AWREADY("m_aximm_AWREADY"), m_aximm_AWADDR("m_aximm_AWADDR"), m_aximm_AWID("m_aximm_AWID"), m_aximm_AWLEN("m_aximm_AWLEN"), m_aximm_AWSIZE("m_aximm_AWSIZE"), m_aximm_AWBURST("m_aximm_AWBURST"), m_aximm_AWLOCK("m_aximm_AWLOCK"), m_aximm_AWCACHE("m_aximm_AWCACHE"), m_aximm_AWPROT("m_aximm_AWPROT"), m_aximm_AWREGION("m_aximm_AWREGION"), m_aximm_AWQOS("m_aximm_AWQOS"), m_aximm_AWUSER("m_aximm_AWUSER"), m_aximm_WVALID("m_aximm_WVALID"), m_aximm_WREADY("m_aximm_WREADY"), m_aximm_WDATA("m_aximm_WDATA"), m_aximm_WSTRB("m_aximm_WSTRB"), m_aximm_WLAST("m_aximm_WLAST"), m_aximm_WUSER("m_aximm_WUSER"), m_aximm_ARVALID("m_aximm_ARVALID"), m_aximm_ARREADY("m_aximm_ARREADY"), m_aximm_ARADDR("m_aximm_ARADDR"), m_aximm_ARID("m_aximm_ARID"), m_aximm_ARLEN("m_aximm_ARLEN"), m_aximm_ARSIZE("m_aximm_ARSIZE"), m_aximm_ARBURST("m_aximm_ARBURST"), m_aximm_ARLOCK("m_aximm_ARLOCK"), m_aximm_ARCACHE("m_aximm_ARCACHE"), m_aximm_ARPROT("m_aximm_ARPROT"), m_aximm_ARREGION("m_aximm_ARREGION"), m_aximm_ARQOS("m_aximm_ARQOS"), m_aximm_ARUSER("m_aximm_ARUSER"), m_aximm_RVALID("m_aximm_RVALID"), m_aximm_RREADY("m_aximm_RREADY"), m_aximm_RDATA("m_aximm_RDATA"), m_aximm_RLAST("m_aximm_RLAST"), m_aximm_RID("m_aximm_RID"), m_aximm_RRESP("m_aximm_RRESP"), m_aximm_RUSER("m_aximm_RUSER"), m_aximm_BVALID("m_aximm_BVALID"), m_aximm_BREADY("m_aximm_BREADY"), m_aximm_BRESP("m_aximm_BRESP"), m_aximm_BID("m_aximm_BID"), m_aximm_BUSER("m_aximm_BUSER"), s_axi_awaddr("s_axi_awaddr"), s_axi_awlen("s_axi_awlen"), s_axi_awsize("s_axi_awsize"), s_axi_awburst("s_axi_awburst"), s_axi_awlock("s_axi_awlock"), s_axi_awcache("s_axi_awcache"), s_axi_awprot("s_axi_awprot"), s_axi_awregion("s_axi_awregion"), s_axi_awqos("s_axi_awqos"), s_axi_awuser("s_axi_awuser"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wlast("s_axi_wlast"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_buser("s_axi_buser"), s_axi_bready("s_axi_bready"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_aruser("s_axi_aruser"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready")
{
  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->s_aximm_aclk(s_aximm_aclk);
  mp_impl->s_aximm_aresetn(s_aximm_aresetn);

  // initialize transactors
  mp_M_AXIMM_transactor = NULL;
  mp_m_aximm_ARLOCK_converter = NULL;
  mp_m_aximm_AWLOCK_converter = NULL;
  mp_S_AXIMM_transactor = NULL;
  mp_s_axi_arlock_converter = NULL;
  mp_s_axi_awlock_converter = NULL;

  // Instantiate Socket Stubs

  // configure M_AXIMM_transactor
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "1");
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

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);
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
  // configure S_AXIMM_transactor
    xsc::common_cpp::properties S_AXIMM_transactor_param_props;
    S_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    S_AXIMM_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIMM_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    S_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIMM_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,32,1,1,32,1>("S_AXIMM_transactor", S_AXIMM_transactor_param_props);
  mp_S_AXIMM_transactor->ARADDR(s_axi_araddr);
  mp_S_AXIMM_transactor->ARBURST(s_axi_arburst);
  mp_S_AXIMM_transactor->ARCACHE(s_axi_arcache);
  mp_S_AXIMM_transactor->ARLEN(s_axi_arlen);
  mp_s_axi_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arlock_converter");
  mp_s_axi_arlock_converter->vector_in(s_axi_arlock);
  mp_s_axi_arlock_converter->scalar_out(m_s_axi_arlock_converter_signal);
  mp_S_AXIMM_transactor->ARLOCK(m_s_axi_arlock_converter_signal);
  mp_S_AXIMM_transactor->ARPROT(s_axi_arprot);
  mp_S_AXIMM_transactor->ARQOS(s_axi_arqos);
  mp_S_AXIMM_transactor->ARREADY(s_axi_arready);
  mp_S_AXIMM_transactor->ARREGION(s_axi_arregion);
  mp_S_AXIMM_transactor->ARSIZE(s_axi_arsize);
  mp_S_AXIMM_transactor->ARUSER(s_axi_aruser);
  mp_S_AXIMM_transactor->ARVALID(s_axi_arvalid);
  mp_S_AXIMM_transactor->AWADDR(s_axi_awaddr);
  mp_S_AXIMM_transactor->AWBURST(s_axi_awburst);
  mp_S_AXIMM_transactor->AWCACHE(s_axi_awcache);
  mp_S_AXIMM_transactor->AWLEN(s_axi_awlen);
  mp_s_axi_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_awlock_converter");
  mp_s_axi_awlock_converter->vector_in(s_axi_awlock);
  mp_s_axi_awlock_converter->scalar_out(m_s_axi_awlock_converter_signal);
  mp_S_AXIMM_transactor->AWLOCK(m_s_axi_awlock_converter_signal);
  mp_S_AXIMM_transactor->AWPROT(s_axi_awprot);
  mp_S_AXIMM_transactor->AWQOS(s_axi_awqos);
  mp_S_AXIMM_transactor->AWREADY(s_axi_awready);
  mp_S_AXIMM_transactor->AWREGION(s_axi_awregion);
  mp_S_AXIMM_transactor->AWSIZE(s_axi_awsize);
  mp_S_AXIMM_transactor->AWUSER(s_axi_awuser);
  mp_S_AXIMM_transactor->AWVALID(s_axi_awvalid);
  mp_S_AXIMM_transactor->BREADY(s_axi_bready);
  mp_S_AXIMM_transactor->BRESP(s_axi_bresp);
  mp_S_AXIMM_transactor->BUSER(s_axi_buser);
  mp_S_AXIMM_transactor->BVALID(s_axi_bvalid);
  mp_S_AXIMM_transactor->RDATA(s_axi_rdata);
  mp_S_AXIMM_transactor->RLAST(s_axi_rlast);
  mp_S_AXIMM_transactor->RREADY(s_axi_rready);
  mp_S_AXIMM_transactor->RRESP(s_axi_rresp);
  mp_S_AXIMM_transactor->RVALID(s_axi_rvalid);
  mp_S_AXIMM_transactor->WDATA(s_axi_wdata);
  mp_S_AXIMM_transactor->WLAST(s_axi_wlast);
  mp_S_AXIMM_transactor->WREADY(s_axi_wready);
  mp_S_AXIMM_transactor->WSTRB(s_axi_wstrb);
  mp_S_AXIMM_transactor->WVALID(s_axi_wvalid);
  mp_S_AXIMM_transactor->CLK(s_aximm_aclk);
  mp_S_AXIMM_transactor->RST(s_aximm_aresetn);

  // initialize transactors stubs
  M_AXIMM_transactor_initiator_wr_socket_stub = nullptr;
  M_AXIMM_transactor_initiator_rd_socket_stub = nullptr;
  S_AXIMM_transactor_target_wr_socket_stub = nullptr;
  S_AXIMM_transactor_target_rd_socket_stub = nullptr;

}

void pfm_top_sim_address_0_0::before_end_of_elaboration()
{
  // configure 'M_AXIMM' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_address_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    mp_impl->M_INITIATOR_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->M_INITIATOR_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  
  }
  else
  {
    M_AXIMM_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXIMM_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXIMM_transactor->wr_socket));
    M_AXIMM_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXIMM_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_M_AXIMM_transactor->disable_transactor();
  }

  // configure 'S_AXIMM' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_address_0_0", "S_AXIMM_TLM_MODE") != 1)
  {
    mp_impl->S_TARGET_rd_socket->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_impl->S_TARGET_wr_socket->bind(*(mp_S_AXIMM_transactor->wr_socket));
  
  }
  else
  {
    S_AXIMM_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXIMM_transactor_target_wr_socket_stub->bind(*(mp_S_AXIMM_transactor->wr_socket));
    S_AXIMM_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXIMM_transactor_target_rd_socket_stub->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_S_AXIMM_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
pfm_top_sim_address_0_0::pfm_top_sim_address_0_0(const sc_core::sc_module_name& nm) : pfm_top_sim_address_0_0_sc(nm),  m_aximm_aclk("m_aximm_aclk"), m_aximm_aresetn("m_aximm_aresetn"), s_aximm_aclk("s_aximm_aclk"), s_aximm_aresetn("s_aximm_aresetn"), m_aximm_AWVALID("m_aximm_AWVALID"), m_aximm_AWREADY("m_aximm_AWREADY"), m_aximm_AWADDR("m_aximm_AWADDR"), m_aximm_AWID("m_aximm_AWID"), m_aximm_AWLEN("m_aximm_AWLEN"), m_aximm_AWSIZE("m_aximm_AWSIZE"), m_aximm_AWBURST("m_aximm_AWBURST"), m_aximm_AWLOCK("m_aximm_AWLOCK"), m_aximm_AWCACHE("m_aximm_AWCACHE"), m_aximm_AWPROT("m_aximm_AWPROT"), m_aximm_AWREGION("m_aximm_AWREGION"), m_aximm_AWQOS("m_aximm_AWQOS"), m_aximm_AWUSER("m_aximm_AWUSER"), m_aximm_WVALID("m_aximm_WVALID"), m_aximm_WREADY("m_aximm_WREADY"), m_aximm_WDATA("m_aximm_WDATA"), m_aximm_WSTRB("m_aximm_WSTRB"), m_aximm_WLAST("m_aximm_WLAST"), m_aximm_WUSER("m_aximm_WUSER"), m_aximm_ARVALID("m_aximm_ARVALID"), m_aximm_ARREADY("m_aximm_ARREADY"), m_aximm_ARADDR("m_aximm_ARADDR"), m_aximm_ARID("m_aximm_ARID"), m_aximm_ARLEN("m_aximm_ARLEN"), m_aximm_ARSIZE("m_aximm_ARSIZE"), m_aximm_ARBURST("m_aximm_ARBURST"), m_aximm_ARLOCK("m_aximm_ARLOCK"), m_aximm_ARCACHE("m_aximm_ARCACHE"), m_aximm_ARPROT("m_aximm_ARPROT"), m_aximm_ARREGION("m_aximm_ARREGION"), m_aximm_ARQOS("m_aximm_ARQOS"), m_aximm_ARUSER("m_aximm_ARUSER"), m_aximm_RVALID("m_aximm_RVALID"), m_aximm_RREADY("m_aximm_RREADY"), m_aximm_RDATA("m_aximm_RDATA"), m_aximm_RLAST("m_aximm_RLAST"), m_aximm_RID("m_aximm_RID"), m_aximm_RRESP("m_aximm_RRESP"), m_aximm_RUSER("m_aximm_RUSER"), m_aximm_BVALID("m_aximm_BVALID"), m_aximm_BREADY("m_aximm_BREADY"), m_aximm_BRESP("m_aximm_BRESP"), m_aximm_BID("m_aximm_BID"), m_aximm_BUSER("m_aximm_BUSER"), s_axi_awaddr("s_axi_awaddr"), s_axi_awlen("s_axi_awlen"), s_axi_awsize("s_axi_awsize"), s_axi_awburst("s_axi_awburst"), s_axi_awlock("s_axi_awlock"), s_axi_awcache("s_axi_awcache"), s_axi_awprot("s_axi_awprot"), s_axi_awregion("s_axi_awregion"), s_axi_awqos("s_axi_awqos"), s_axi_awuser("s_axi_awuser"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wlast("s_axi_wlast"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bresp("s_axi_bresp"), s_axi_bvalid("s_axi_bvalid"), s_axi_buser("s_axi_buser"), s_axi_bready("s_axi_bready"), s_axi_araddr("s_axi_araddr"), s_axi_arlen("s_axi_arlen"), s_axi_arsize("s_axi_arsize"), s_axi_arburst("s_axi_arburst"), s_axi_arlock("s_axi_arlock"), s_axi_arcache("s_axi_arcache"), s_axi_arprot("s_axi_arprot"), s_axi_arregion("s_axi_arregion"), s_axi_arqos("s_axi_arqos"), s_axi_aruser("s_axi_aruser"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rlast("s_axi_rlast"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready")
{
  // initialize pins
  mp_impl->m_aximm_aclk(m_aximm_aclk);
  mp_impl->m_aximm_aresetn(m_aximm_aresetn);
  mp_impl->s_aximm_aclk(s_aximm_aclk);
  mp_impl->s_aximm_aresetn(s_aximm_aresetn);

  // initialize transactors
  mp_M_AXIMM_transactor = NULL;
  mp_m_aximm_ARLOCK_converter = NULL;
  mp_m_aximm_AWLOCK_converter = NULL;
  mp_S_AXIMM_transactor = NULL;
  mp_s_axi_arlock_converter = NULL;
  mp_s_axi_awlock_converter = NULL;

  // Instantiate Socket Stubs

  // configure M_AXIMM_transactor
    xsc::common_cpp::properties M_AXIMM_transactor_param_props;
    M_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    M_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    M_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "64");
    M_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "1");
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

    mp_M_AXIMM_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("M_AXIMM_transactor", M_AXIMM_transactor_param_props);
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
  // configure S_AXIMM_transactor
    xsc::common_cpp::properties S_AXIMM_transactor_param_props;
    S_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    S_AXIMM_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_LOCK", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_PROT", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_CACHE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_QOS", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_REGION", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIMM_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_top_dma_pcie_clk_0_clk");
    S_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIMM_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,1,32,1,1,32,1>("S_AXIMM_transactor", S_AXIMM_transactor_param_props);
  mp_S_AXIMM_transactor->ARADDR(s_axi_araddr);
  mp_S_AXIMM_transactor->ARBURST(s_axi_arburst);
  mp_S_AXIMM_transactor->ARCACHE(s_axi_arcache);
  mp_S_AXIMM_transactor->ARLEN(s_axi_arlen);
  mp_s_axi_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_arlock_converter");
  mp_s_axi_arlock_converter->vector_in(s_axi_arlock);
  mp_s_axi_arlock_converter->scalar_out(m_s_axi_arlock_converter_signal);
  mp_S_AXIMM_transactor->ARLOCK(m_s_axi_arlock_converter_signal);
  mp_S_AXIMM_transactor->ARPROT(s_axi_arprot);
  mp_S_AXIMM_transactor->ARQOS(s_axi_arqos);
  mp_S_AXIMM_transactor->ARREADY(s_axi_arready);
  mp_S_AXIMM_transactor->ARREGION(s_axi_arregion);
  mp_S_AXIMM_transactor->ARSIZE(s_axi_arsize);
  mp_S_AXIMM_transactor->ARUSER(s_axi_aruser);
  mp_S_AXIMM_transactor->ARVALID(s_axi_arvalid);
  mp_S_AXIMM_transactor->AWADDR(s_axi_awaddr);
  mp_S_AXIMM_transactor->AWBURST(s_axi_awburst);
  mp_S_AXIMM_transactor->AWCACHE(s_axi_awcache);
  mp_S_AXIMM_transactor->AWLEN(s_axi_awlen);
  mp_s_axi_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("s_axi_awlock_converter");
  mp_s_axi_awlock_converter->vector_in(s_axi_awlock);
  mp_s_axi_awlock_converter->scalar_out(m_s_axi_awlock_converter_signal);
  mp_S_AXIMM_transactor->AWLOCK(m_s_axi_awlock_converter_signal);
  mp_S_AXIMM_transactor->AWPROT(s_axi_awprot);
  mp_S_AXIMM_transactor->AWQOS(s_axi_awqos);
  mp_S_AXIMM_transactor->AWREADY(s_axi_awready);
  mp_S_AXIMM_transactor->AWREGION(s_axi_awregion);
  mp_S_AXIMM_transactor->AWSIZE(s_axi_awsize);
  mp_S_AXIMM_transactor->AWUSER(s_axi_awuser);
  mp_S_AXIMM_transactor->AWVALID(s_axi_awvalid);
  mp_S_AXIMM_transactor->BREADY(s_axi_bready);
  mp_S_AXIMM_transactor->BRESP(s_axi_bresp);
  mp_S_AXIMM_transactor->BUSER(s_axi_buser);
  mp_S_AXIMM_transactor->BVALID(s_axi_bvalid);
  mp_S_AXIMM_transactor->RDATA(s_axi_rdata);
  mp_S_AXIMM_transactor->RLAST(s_axi_rlast);
  mp_S_AXIMM_transactor->RREADY(s_axi_rready);
  mp_S_AXIMM_transactor->RRESP(s_axi_rresp);
  mp_S_AXIMM_transactor->RVALID(s_axi_rvalid);
  mp_S_AXIMM_transactor->WDATA(s_axi_wdata);
  mp_S_AXIMM_transactor->WLAST(s_axi_wlast);
  mp_S_AXIMM_transactor->WREADY(s_axi_wready);
  mp_S_AXIMM_transactor->WSTRB(s_axi_wstrb);
  mp_S_AXIMM_transactor->WVALID(s_axi_wvalid);
  mp_S_AXIMM_transactor->CLK(s_aximm_aclk);
  mp_S_AXIMM_transactor->RST(s_aximm_aresetn);

  // initialize transactors stubs
  M_AXIMM_transactor_initiator_wr_socket_stub = nullptr;
  M_AXIMM_transactor_initiator_rd_socket_stub = nullptr;
  S_AXIMM_transactor_target_wr_socket_stub = nullptr;
  S_AXIMM_transactor_target_rd_socket_stub = nullptr;

}

void pfm_top_sim_address_0_0::before_end_of_elaboration()
{
  // configure 'M_AXIMM' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_address_0_0", "M_AXIMM_TLM_MODE") != 1)
  {
    mp_impl->M_INITIATOR_rd_socket->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_impl->M_INITIATOR_wr_socket->bind(*(mp_M_AXIMM_transactor->wr_socket));
  
  }
  else
  {
    M_AXIMM_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M_AXIMM_transactor_initiator_wr_socket_stub->bind(*(mp_M_AXIMM_transactor->wr_socket));
    M_AXIMM_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M_AXIMM_transactor_initiator_rd_socket_stub->bind(*(mp_M_AXIMM_transactor->rd_socket));
    mp_M_AXIMM_transactor->disable_transactor();
  }

  // configure 'S_AXIMM' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_top_sim_address_0_0", "S_AXIMM_TLM_MODE") != 1)
  {
    mp_impl->S_TARGET_rd_socket->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_impl->S_TARGET_wr_socket->bind(*(mp_S_AXIMM_transactor->wr_socket));
  
  }
  else
  {
    S_AXIMM_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXIMM_transactor_target_wr_socket_stub->bind(*(mp_S_AXIMM_transactor->wr_socket));
    S_AXIMM_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXIMM_transactor_target_rd_socket_stub->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_S_AXIMM_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




pfm_top_sim_address_0_0::~pfm_top_sim_address_0_0()
{
  delete mp_M_AXIMM_transactor;
  delete mp_m_aximm_ARLOCK_converter;
  delete mp_m_aximm_AWLOCK_converter;

  delete mp_S_AXIMM_transactor;
  delete mp_s_axi_arlock_converter;
  delete mp_s_axi_awlock_converter;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(pfm_top_sim_address_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(pfm_top_sim_address_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(pfm_top_sim_address_0_0);
SC_REGISTER_BV(64);
#endif

