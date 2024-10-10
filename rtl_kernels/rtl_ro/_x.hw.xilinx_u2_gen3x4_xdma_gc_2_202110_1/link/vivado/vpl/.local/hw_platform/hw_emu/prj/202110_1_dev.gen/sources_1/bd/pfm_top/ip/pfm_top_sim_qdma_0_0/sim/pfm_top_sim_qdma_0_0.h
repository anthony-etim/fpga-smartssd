#ifndef IP_PFM_TOP_SIM_QDMA_0_0_H_
#define IP_PFM_TOP_SIM_QDMA_0_0_H_

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


#ifndef XTLM
#include "xtlm.h"
#endif
#ifndef SYSTEMC_INCLUDED
#include <systemc>
#endif

#if defined(_MSC_VER)
#define DllExport __declspec(dllexport)
#elif defined(__GNUC__)
#define DllExport __attribute__ ((visibility("default")))
#else
#define DllExport
#endif

#include "pfm_top_sim_qdma_0_0_sc.h"




#ifdef XILINX_SIMULATOR
class DllExport pfm_top_sim_qdma_0_0 : public pfm_top_sim_qdma_0_0_sc
{
public:

  pfm_top_sim_qdma_0_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_top_sim_qdma_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > m_aximm_aclk;
  sc_core::sc_in< bool > m_aximm_aresetn;
  sc_core::sc_in< bool > m_axictrl_aclk;
  sc_core::sc_in< bool > m_axictrl_aresetn;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axictrl_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axictrl_awprot;
  sc_core::sc_out< bool > m_axictrl_awvalid;
  sc_core::sc_in< bool > m_axictrl_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axictrl_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axictrl_wstrb;
  sc_core::sc_out< bool > m_axictrl_wvalid;
  sc_core::sc_in< bool > m_axictrl_wready;
  sc_core::sc_in< bool > m_axictrl_bvalid;
  sc_core::sc_out< bool > m_axictrl_bready;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axictrl_bresp;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axictrl_araddr;
  sc_core::sc_out< bool > m_axictrl_arvalid;
  sc_core::sc_in< bool > m_axictrl_arready;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axictrl_arprot;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_axictrl_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axictrl_rresp;
  sc_core::sc_in< bool > m_axictrl_rvalid;
  sc_core::sc_out< bool > m_axictrl_rready;
  sc_core::sc_out< bool > m_aximm_AWVALID;
  sc_core::sc_in< bool > m_aximm_AWREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_aximm_AWADDR;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_AWID;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_aximm_AWLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_AWSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_aximm_AWBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_AWLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_AWPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWQOS;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_AWUSER;
  sc_core::sc_out< bool > m_aximm_WVALID;
  sc_core::sc_in< bool > m_aximm_WREADY;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_WDATA;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_WSTRB;
  sc_core::sc_out< bool > m_aximm_WLAST;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_WUSER;
  sc_core::sc_out< bool > m_aximm_ARVALID;
  sc_core::sc_in< bool > m_aximm_ARREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_aximm_ARADDR;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_ARID;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_aximm_ARLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_ARSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_aximm_ARBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_ARLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_ARPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARQOS;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_ARUSER;
  sc_core::sc_in< bool > m_aximm_RVALID;
  sc_core::sc_out< bool > m_aximm_RREADY;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_aximm_RDATA;
  sc_core::sc_in< bool > m_aximm_RLAST;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_RID;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_aximm_RRESP;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_aximm_RUSER;
  sc_core::sc_in< bool > m_aximm_BVALID;
  sc_core::sc_out< bool > m_aximm_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_aximm_BRESP;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_BID;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_BUSER;
  sc_core::sc_in< sc_dt::sc_bv<16> > usr_irq_req;
  sc_core::sc_out< sc_dt::sc_bv<16> > usr_irq_ack;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>* mp_M_AXICTRL_transactor;
  xtlm::xaximm_xtlm2pin_t<32,64,1,32,32,1,32,32>* mp_M_AXIMM_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_aximm_ARLOCK_converter;
  sc_signal< bool > m_m_aximm_ARLOCK_converter_signal;
  xsc::common::scalar2vectorN_converter<1>* mp_m_aximm_AWLOCK_converter;
  sc_signal< bool > m_m_aximm_AWLOCK_converter_signal;

};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
class DllExport pfm_top_sim_qdma_0_0 : public pfm_top_sim_qdma_0_0_sc
{
public:

  pfm_top_sim_qdma_0_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_top_sim_qdma_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > m_aximm_aclk;
  sc_core::sc_in< bool > m_aximm_aresetn;
  sc_core::sc_in< bool > m_axictrl_aclk;
  sc_core::sc_in< bool > m_axictrl_aresetn;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axictrl_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axictrl_awprot;
  sc_core::sc_out< bool > m_axictrl_awvalid;
  sc_core::sc_in< bool > m_axictrl_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axictrl_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axictrl_wstrb;
  sc_core::sc_out< bool > m_axictrl_wvalid;
  sc_core::sc_in< bool > m_axictrl_wready;
  sc_core::sc_in< bool > m_axictrl_bvalid;
  sc_core::sc_out< bool > m_axictrl_bready;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axictrl_bresp;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axictrl_araddr;
  sc_core::sc_out< bool > m_axictrl_arvalid;
  sc_core::sc_in< bool > m_axictrl_arready;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axictrl_arprot;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_axictrl_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axictrl_rresp;
  sc_core::sc_in< bool > m_axictrl_rvalid;
  sc_core::sc_out< bool > m_axictrl_rready;
  sc_core::sc_out< bool > m_aximm_AWVALID;
  sc_core::sc_in< bool > m_aximm_AWREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_aximm_AWADDR;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_AWID;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_aximm_AWLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_AWSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_aximm_AWBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_AWLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_AWPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWQOS;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_AWUSER;
  sc_core::sc_out< bool > m_aximm_WVALID;
  sc_core::sc_in< bool > m_aximm_WREADY;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_WDATA;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_WSTRB;
  sc_core::sc_out< bool > m_aximm_WLAST;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_WUSER;
  sc_core::sc_out< bool > m_aximm_ARVALID;
  sc_core::sc_in< bool > m_aximm_ARREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_aximm_ARADDR;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_ARID;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_aximm_ARLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_ARSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_aximm_ARBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_ARLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_ARPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARQOS;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_ARUSER;
  sc_core::sc_in< bool > m_aximm_RVALID;
  sc_core::sc_out< bool > m_aximm_RREADY;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_aximm_RDATA;
  sc_core::sc_in< bool > m_aximm_RLAST;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_RID;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_aximm_RRESP;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_aximm_RUSER;
  sc_core::sc_in< bool > m_aximm_BVALID;
  sc_core::sc_out< bool > m_aximm_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_aximm_BRESP;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_BID;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_BUSER;
  sc_core::sc_in< sc_dt::sc_bv<16> > usr_irq_req;
  sc_core::sc_out< sc_dt::sc_bv<16> > usr_irq_ack;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>* mp_M_AXICTRL_transactor;
  xtlm::xaximm_xtlm2pin_t<32,64,1,32,32,1,32,32>* mp_M_AXIMM_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_aximm_ARLOCK_converter;
  sc_signal< bool > m_m_aximm_ARLOCK_converter_signal;
  xsc::common::scalar2vectorN_converter<1>* mp_m_aximm_AWLOCK_converter;
  sc_signal< bool > m_m_aximm_AWLOCK_converter_signal;

};
#endif // XM_SYSTEMC




#ifdef RIVIERA
class DllExport pfm_top_sim_qdma_0_0 : public pfm_top_sim_qdma_0_0_sc
{
public:

  pfm_top_sim_qdma_0_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_top_sim_qdma_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > m_aximm_aclk;
  sc_core::sc_in< bool > m_aximm_aresetn;
  sc_core::sc_in< bool > m_axictrl_aclk;
  sc_core::sc_in< bool > m_axictrl_aresetn;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axictrl_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axictrl_awprot;
  sc_core::sc_out< bool > m_axictrl_awvalid;
  sc_core::sc_in< bool > m_axictrl_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axictrl_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axictrl_wstrb;
  sc_core::sc_out< bool > m_axictrl_wvalid;
  sc_core::sc_in< bool > m_axictrl_wready;
  sc_core::sc_in< bool > m_axictrl_bvalid;
  sc_core::sc_out< bool > m_axictrl_bready;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axictrl_bresp;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axictrl_araddr;
  sc_core::sc_out< bool > m_axictrl_arvalid;
  sc_core::sc_in< bool > m_axictrl_arready;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axictrl_arprot;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_axictrl_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axictrl_rresp;
  sc_core::sc_in< bool > m_axictrl_rvalid;
  sc_core::sc_out< bool > m_axictrl_rready;
  sc_core::sc_out< bool > m_aximm_AWVALID;
  sc_core::sc_in< bool > m_aximm_AWREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_aximm_AWADDR;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_AWID;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_aximm_AWLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_AWSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_aximm_AWBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_AWLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_AWPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWQOS;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_AWUSER;
  sc_core::sc_out< bool > m_aximm_WVALID;
  sc_core::sc_in< bool > m_aximm_WREADY;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_WDATA;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_WSTRB;
  sc_core::sc_out< bool > m_aximm_WLAST;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_WUSER;
  sc_core::sc_out< bool > m_aximm_ARVALID;
  sc_core::sc_in< bool > m_aximm_ARREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_aximm_ARADDR;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_ARID;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_aximm_ARLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_ARSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_aximm_ARBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_ARLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_ARPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARQOS;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_ARUSER;
  sc_core::sc_in< bool > m_aximm_RVALID;
  sc_core::sc_out< bool > m_aximm_RREADY;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_aximm_RDATA;
  sc_core::sc_in< bool > m_aximm_RLAST;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_RID;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_aximm_RRESP;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_aximm_RUSER;
  sc_core::sc_in< bool > m_aximm_BVALID;
  sc_core::sc_out< bool > m_aximm_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_aximm_BRESP;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_BID;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_BUSER;
  sc_core::sc_in< sc_dt::sc_bv<16> > usr_irq_req;
  sc_core::sc_out< sc_dt::sc_bv<16> > usr_irq_ack;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>* mp_M_AXICTRL_transactor;
  xtlm::xaximm_xtlm2pin_t<32,64,1,32,32,1,32,32>* mp_M_AXIMM_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_aximm_ARLOCK_converter;
  sc_signal< bool > m_m_aximm_ARLOCK_converter_signal;
  xsc::common::scalar2vectorN_converter<1>* mp_m_aximm_AWLOCK_converter;
  sc_signal< bool > m_m_aximm_AWLOCK_converter_signal;

};
#endif // RIVIERA




#ifdef VCSSYSTEMC
#include "utils/xtlm_aximm_initiator_stub.h"

class DllExport pfm_top_sim_qdma_0_0 : public pfm_top_sim_qdma_0_0_sc
{
public:

  pfm_top_sim_qdma_0_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_top_sim_qdma_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > m_aximm_aclk;
  sc_core::sc_in< bool > m_aximm_aresetn;
  sc_core::sc_in< bool > m_axictrl_aclk;
  sc_core::sc_in< bool > m_axictrl_aresetn;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axictrl_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axictrl_awprot;
  sc_core::sc_out< bool > m_axictrl_awvalid;
  sc_core::sc_in< bool > m_axictrl_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axictrl_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axictrl_wstrb;
  sc_core::sc_out< bool > m_axictrl_wvalid;
  sc_core::sc_in< bool > m_axictrl_wready;
  sc_core::sc_in< bool > m_axictrl_bvalid;
  sc_core::sc_out< bool > m_axictrl_bready;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axictrl_bresp;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axictrl_araddr;
  sc_core::sc_out< bool > m_axictrl_arvalid;
  sc_core::sc_in< bool > m_axictrl_arready;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axictrl_arprot;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_axictrl_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axictrl_rresp;
  sc_core::sc_in< bool > m_axictrl_rvalid;
  sc_core::sc_out< bool > m_axictrl_rready;
  sc_core::sc_out< bool > m_aximm_AWVALID;
  sc_core::sc_in< bool > m_aximm_AWREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_aximm_AWADDR;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_AWID;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_aximm_AWLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_AWSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_aximm_AWBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_AWLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_AWPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWQOS;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_AWUSER;
  sc_core::sc_out< bool > m_aximm_WVALID;
  sc_core::sc_in< bool > m_aximm_WREADY;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_WDATA;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_WSTRB;
  sc_core::sc_out< bool > m_aximm_WLAST;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_WUSER;
  sc_core::sc_out< bool > m_aximm_ARVALID;
  sc_core::sc_in< bool > m_aximm_ARREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_aximm_ARADDR;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_ARID;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_aximm_ARLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_ARSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_aximm_ARBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_ARLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_ARPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARQOS;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_ARUSER;
  sc_core::sc_in< bool > m_aximm_RVALID;
  sc_core::sc_out< bool > m_aximm_RREADY;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_aximm_RDATA;
  sc_core::sc_in< bool > m_aximm_RLAST;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_RID;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_aximm_RRESP;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_aximm_RUSER;
  sc_core::sc_in< bool > m_aximm_BVALID;
  sc_core::sc_out< bool > m_aximm_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_aximm_BRESP;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_BID;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_BUSER;
  sc_core::sc_in< sc_dt::sc_bv<16> > usr_irq_req;
  sc_core::sc_out< sc_dt::sc_bv<16> > usr_irq_ack;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>* mp_M_AXICTRL_transactor;
  xtlm::xaximm_xtlm2pin_t<32,64,1,32,32,1,32,32>* mp_M_AXIMM_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_aximm_ARLOCK_converter;
  sc_signal< bool > m_m_aximm_ARLOCK_converter_signal;
  xsc::common::scalar2vectorN_converter<1>* mp_m_aximm_AWLOCK_converter;
  sc_signal< bool > m_m_aximm_AWLOCK_converter_signal;

  // Transactor stubs
  xtlm::xtlm_aximm_initiator_stub * M_AXICTRL_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXICTRL_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXIMM_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXIMM_transactor_initiator_wr_socket_stub;

  // Socket stubs

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
#include "utils/xtlm_aximm_initiator_stub.h"

class DllExport pfm_top_sim_qdma_0_0 : public pfm_top_sim_qdma_0_0_sc
{
public:

  pfm_top_sim_qdma_0_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_top_sim_qdma_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > m_aximm_aclk;
  sc_core::sc_in< bool > m_aximm_aresetn;
  sc_core::sc_in< bool > m_axictrl_aclk;
  sc_core::sc_in< bool > m_axictrl_aresetn;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axictrl_awaddr;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axictrl_awprot;
  sc_core::sc_out< bool > m_axictrl_awvalid;
  sc_core::sc_in< bool > m_axictrl_awready;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_axictrl_wdata;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axictrl_wstrb;
  sc_core::sc_out< bool > m_axictrl_wvalid;
  sc_core::sc_in< bool > m_axictrl_wready;
  sc_core::sc_in< bool > m_axictrl_bvalid;
  sc_core::sc_out< bool > m_axictrl_bready;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axictrl_bresp;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axictrl_araddr;
  sc_core::sc_out< bool > m_axictrl_arvalid;
  sc_core::sc_in< bool > m_axictrl_arready;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axictrl_arprot;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_axictrl_rdata;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axictrl_rresp;
  sc_core::sc_in< bool > m_axictrl_rvalid;
  sc_core::sc_out< bool > m_axictrl_rready;
  sc_core::sc_out< bool > m_aximm_AWVALID;
  sc_core::sc_in< bool > m_aximm_AWREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_aximm_AWADDR;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_AWID;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_aximm_AWLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_AWSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_aximm_AWBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_AWLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_AWPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_AWQOS;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_AWUSER;
  sc_core::sc_out< bool > m_aximm_WVALID;
  sc_core::sc_in< bool > m_aximm_WREADY;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_WDATA;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_WSTRB;
  sc_core::sc_out< bool > m_aximm_WLAST;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_WUSER;
  sc_core::sc_out< bool > m_aximm_ARVALID;
  sc_core::sc_in< bool > m_aximm_ARREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_aximm_ARADDR;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_ARID;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_aximm_ARLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_ARSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_aximm_ARBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_aximm_ARLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_aximm_ARPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_aximm_ARQOS;
  sc_core::sc_out< sc_dt::sc_bv<32> > m_aximm_ARUSER;
  sc_core::sc_in< bool > m_aximm_RVALID;
  sc_core::sc_out< bool > m_aximm_RREADY;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_aximm_RDATA;
  sc_core::sc_in< bool > m_aximm_RLAST;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_RID;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_aximm_RRESP;
  sc_core::sc_in< sc_dt::sc_bv<32> > m_aximm_RUSER;
  sc_core::sc_in< bool > m_aximm_BVALID;
  sc_core::sc_out< bool > m_aximm_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_aximm_BRESP;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_BID;
  sc_core::sc_in< sc_dt::sc_bv<1> > m_aximm_BUSER;
  sc_core::sc_in< sc_dt::sc_bv<16> > usr_irq_req;
  sc_core::sc_out< sc_dt::sc_bv<16> > usr_irq_ack;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>* mp_M_AXICTRL_transactor;
  xtlm::xaximm_xtlm2pin_t<32,64,1,32,32,1,32,32>* mp_M_AXIMM_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_aximm_ARLOCK_converter;
  sc_signal< bool > m_m_aximm_ARLOCK_converter_signal;
  xsc::common::scalar2vectorN_converter<1>* mp_m_aximm_AWLOCK_converter;
  sc_signal< bool > m_m_aximm_AWLOCK_converter_signal;

  // Transactor stubs
  xtlm::xtlm_aximm_initiator_stub * M_AXICTRL_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXICTRL_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXIMM_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * M_AXIMM_transactor_initiator_wr_socket_stub;

  // Socket stubs

};
#endif // MTI_SYSTEMC
#endif // IP_PFM_TOP_SIM_QDMA_0_0_H_
