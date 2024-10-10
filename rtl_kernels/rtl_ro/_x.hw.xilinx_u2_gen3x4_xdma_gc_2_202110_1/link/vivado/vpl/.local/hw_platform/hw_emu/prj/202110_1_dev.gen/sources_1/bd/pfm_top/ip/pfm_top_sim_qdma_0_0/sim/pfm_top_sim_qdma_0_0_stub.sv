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


//------------------------------------------------------------------------------------
// Filename:    pfm_top_sim_qdma_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//   Aldec Riviera-PRO Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module pfm_top_sim_qdma_0_0 (
  input bit_as_bool m_aximm_aclk,
  input bit_as_bool m_aximm_aresetn,
  input bit_as_bool m_axictrl_aclk,
  input bit_as_bool m_axictrl_aresetn,
  output bit [63 : 0] m_axictrl_awaddr,
  output bit [2 : 0] m_axictrl_awprot,
  output bit_as_bool m_axictrl_awvalid,
  input bit_as_bool m_axictrl_awready,
  output bit [31 : 0] m_axictrl_wdata,
  output bit [3 : 0] m_axictrl_wstrb,
  output bit_as_bool m_axictrl_wvalid,
  input bit_as_bool m_axictrl_wready,
  input bit_as_bool m_axictrl_bvalid,
  output bit_as_bool m_axictrl_bready,
  input bit [1 : 0] m_axictrl_bresp,
  output bit [63 : 0] m_axictrl_araddr,
  output bit_as_bool m_axictrl_arvalid,
  input bit_as_bool m_axictrl_arready,
  output bit [2 : 0] m_axictrl_arprot,
  input bit [31 : 0] m_axictrl_rdata,
  input bit [1 : 0] m_axictrl_rresp,
  input bit_as_bool m_axictrl_rvalid,
  output bit_as_bool m_axictrl_rready,
  output bit_as_bool m_aximm_AWVALID,
  input bit_as_bool m_aximm_AWREADY,
  output bit [63 : 0] m_aximm_AWADDR,
  output bit [0 : 0] m_aximm_AWID,
  output bit [7 : 0] m_aximm_AWLEN,
  output bit [2 : 0] m_aximm_AWSIZE,
  output bit [1 : 0] m_aximm_AWBURST,
  output bit [0 : 0] m_aximm_AWLOCK,
  output bit [3 : 0] m_aximm_AWCACHE,
  output bit [2 : 0] m_aximm_AWPROT,
  output bit [3 : 0] m_aximm_AWREGION,
  output bit [3 : 0] m_aximm_AWQOS,
  output bit [31 : 0] m_aximm_AWUSER,
  output bit_as_bool m_aximm_WVALID,
  input bit_as_bool m_aximm_WREADY,
  output bit [31 : 0] m_aximm_WDATA,
  output bit [3 : 0] m_aximm_WSTRB,
  output bit_as_bool m_aximm_WLAST,
  output bit [31 : 0] m_aximm_WUSER,
  output bit_as_bool m_aximm_ARVALID,
  input bit_as_bool m_aximm_ARREADY,
  output bit [63 : 0] m_aximm_ARADDR,
  output bit [0 : 0] m_aximm_ARID,
  output bit [7 : 0] m_aximm_ARLEN,
  output bit [2 : 0] m_aximm_ARSIZE,
  output bit [1 : 0] m_aximm_ARBURST,
  output bit [0 : 0] m_aximm_ARLOCK,
  output bit [3 : 0] m_aximm_ARCACHE,
  output bit [2 : 0] m_aximm_ARPROT,
  output bit [3 : 0] m_aximm_ARREGION,
  output bit [3 : 0] m_aximm_ARQOS,
  output bit [31 : 0] m_aximm_ARUSER,
  input bit_as_bool m_aximm_RVALID,
  output bit_as_bool m_aximm_RREADY,
  input bit [31 : 0] m_aximm_RDATA,
  input bit_as_bool m_aximm_RLAST,
  input bit [0 : 0] m_aximm_RID,
  input bit [1 : 0] m_aximm_RRESP,
  input bit [31 : 0] m_aximm_RUSER,
  input bit_as_bool m_aximm_BVALID,
  output bit_as_bool m_aximm_BREADY,
  input bit [1 : 0] m_aximm_BRESP,
  input bit [0 : 0] m_aximm_BID,
  input bit [0 : 0] m_aximm_BUSER,
  input bit [15 : 0] usr_irq_req,
  output bit [15 : 0] usr_irq_ack
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module pfm_top_sim_qdma_0_0 (m_aximm_aclk,m_aximm_aresetn,m_axictrl_aclk,m_axictrl_aresetn,m_axictrl_awaddr,m_axictrl_awprot,m_axictrl_awvalid,m_axictrl_awready,m_axictrl_wdata,m_axictrl_wstrb,m_axictrl_wvalid,m_axictrl_wready,m_axictrl_bvalid,m_axictrl_bready,m_axictrl_bresp,m_axictrl_araddr,m_axictrl_arvalid,m_axictrl_arready,m_axictrl_arprot,m_axictrl_rdata,m_axictrl_rresp,m_axictrl_rvalid,m_axictrl_rready,m_aximm_AWVALID,m_aximm_AWREADY,m_aximm_AWADDR,m_aximm_AWID,m_aximm_AWLEN,m_aximm_AWSIZE,m_aximm_AWBURST,m_aximm_AWLOCK,m_aximm_AWCACHE,m_aximm_AWPROT,m_aximm_AWREGION,m_aximm_AWQOS,m_aximm_AWUSER,m_aximm_WVALID,m_aximm_WREADY,m_aximm_WDATA,m_aximm_WSTRB,m_aximm_WLAST,m_aximm_WUSER,m_aximm_ARVALID,m_aximm_ARREADY,m_aximm_ARADDR,m_aximm_ARID,m_aximm_ARLEN,m_aximm_ARSIZE,m_aximm_ARBURST,m_aximm_ARLOCK,m_aximm_ARCACHE,m_aximm_ARPROT,m_aximm_ARREGION,m_aximm_ARQOS,m_aximm_ARUSER,m_aximm_RVALID,m_aximm_RREADY,m_aximm_RDATA,m_aximm_RLAST,m_aximm_RID,m_aximm_RRESP,m_aximm_RUSER,m_aximm_BVALID,m_aximm_BREADY,m_aximm_BRESP,m_aximm_BID,m_aximm_BUSER,usr_irq_req,usr_irq_ack)
(* integer foreign = "SystemC";
*);
  input bit m_aximm_aclk;
  input bit m_aximm_aresetn;
  input bit m_axictrl_aclk;
  input bit m_axictrl_aresetn;
  output wire [63 : 0] m_axictrl_awaddr;
  output wire [2 : 0] m_axictrl_awprot;
  output wire m_axictrl_awvalid;
  input bit m_axictrl_awready;
  output wire [31 : 0] m_axictrl_wdata;
  output wire [3 : 0] m_axictrl_wstrb;
  output wire m_axictrl_wvalid;
  input bit m_axictrl_wready;
  input bit m_axictrl_bvalid;
  output wire m_axictrl_bready;
  input bit [1 : 0] m_axictrl_bresp;
  output wire [63 : 0] m_axictrl_araddr;
  output wire m_axictrl_arvalid;
  input bit m_axictrl_arready;
  output wire [2 : 0] m_axictrl_arprot;
  input bit [31 : 0] m_axictrl_rdata;
  input bit [1 : 0] m_axictrl_rresp;
  input bit m_axictrl_rvalid;
  output wire m_axictrl_rready;
  output wire m_aximm_AWVALID;
  input bit m_aximm_AWREADY;
  output wire [63 : 0] m_aximm_AWADDR;
  output wire [0 : 0] m_aximm_AWID;
  output wire [7 : 0] m_aximm_AWLEN;
  output wire [2 : 0] m_aximm_AWSIZE;
  output wire [1 : 0] m_aximm_AWBURST;
  output wire [0 : 0] m_aximm_AWLOCK;
  output wire [3 : 0] m_aximm_AWCACHE;
  output wire [2 : 0] m_aximm_AWPROT;
  output wire [3 : 0] m_aximm_AWREGION;
  output wire [3 : 0] m_aximm_AWQOS;
  output wire [31 : 0] m_aximm_AWUSER;
  output wire m_aximm_WVALID;
  input bit m_aximm_WREADY;
  output wire [31 : 0] m_aximm_WDATA;
  output wire [3 : 0] m_aximm_WSTRB;
  output wire m_aximm_WLAST;
  output wire [31 : 0] m_aximm_WUSER;
  output wire m_aximm_ARVALID;
  input bit m_aximm_ARREADY;
  output wire [63 : 0] m_aximm_ARADDR;
  output wire [0 : 0] m_aximm_ARID;
  output wire [7 : 0] m_aximm_ARLEN;
  output wire [2 : 0] m_aximm_ARSIZE;
  output wire [1 : 0] m_aximm_ARBURST;
  output wire [0 : 0] m_aximm_ARLOCK;
  output wire [3 : 0] m_aximm_ARCACHE;
  output wire [2 : 0] m_aximm_ARPROT;
  output wire [3 : 0] m_aximm_ARREGION;
  output wire [3 : 0] m_aximm_ARQOS;
  output wire [31 : 0] m_aximm_ARUSER;
  input bit m_aximm_RVALID;
  output wire m_aximm_RREADY;
  input bit [31 : 0] m_aximm_RDATA;
  input bit m_aximm_RLAST;
  input bit [0 : 0] m_aximm_RID;
  input bit [1 : 0] m_aximm_RRESP;
  input bit [31 : 0] m_aximm_RUSER;
  input bit m_aximm_BVALID;
  output wire m_aximm_BREADY;
  input bit [1 : 0] m_aximm_BRESP;
  input bit [0 : 0] m_aximm_BID;
  input bit [0 : 0] m_aximm_BUSER;
  input bit [15 : 0] usr_irq_req;
  output wire [15 : 0] usr_irq_ack;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module pfm_top_sim_qdma_0_0 (m_aximm_aclk,m_aximm_aresetn,m_axictrl_aclk,m_axictrl_aresetn,m_axictrl_awaddr,m_axictrl_awprot,m_axictrl_awvalid,m_axictrl_awready,m_axictrl_wdata,m_axictrl_wstrb,m_axictrl_wvalid,m_axictrl_wready,m_axictrl_bvalid,m_axictrl_bready,m_axictrl_bresp,m_axictrl_araddr,m_axictrl_arvalid,m_axictrl_arready,m_axictrl_arprot,m_axictrl_rdata,m_axictrl_rresp,m_axictrl_rvalid,m_axictrl_rready,m_aximm_AWVALID,m_aximm_AWREADY,m_aximm_AWADDR,m_aximm_AWID,m_aximm_AWLEN,m_aximm_AWSIZE,m_aximm_AWBURST,m_aximm_AWLOCK,m_aximm_AWCACHE,m_aximm_AWPROT,m_aximm_AWREGION,m_aximm_AWQOS,m_aximm_AWUSER,m_aximm_WVALID,m_aximm_WREADY,m_aximm_WDATA,m_aximm_WSTRB,m_aximm_WLAST,m_aximm_WUSER,m_aximm_ARVALID,m_aximm_ARREADY,m_aximm_ARADDR,m_aximm_ARID,m_aximm_ARLEN,m_aximm_ARSIZE,m_aximm_ARBURST,m_aximm_ARLOCK,m_aximm_ARCACHE,m_aximm_ARPROT,m_aximm_ARREGION,m_aximm_ARQOS,m_aximm_ARUSER,m_aximm_RVALID,m_aximm_RREADY,m_aximm_RDATA,m_aximm_RLAST,m_aximm_RID,m_aximm_RRESP,m_aximm_RUSER,m_aximm_BVALID,m_aximm_BREADY,m_aximm_BRESP,m_aximm_BID,m_aximm_BUSER,usr_irq_req,usr_irq_ack)
  input bit m_aximm_aclk;
  input bit m_aximm_aresetn;
  input bit m_axictrl_aclk;
  input bit m_axictrl_aresetn;
  output wire [63 : 0] m_axictrl_awaddr;
  output wire [2 : 0] m_axictrl_awprot;
  output wire m_axictrl_awvalid;
  input bit m_axictrl_awready;
  output wire [31 : 0] m_axictrl_wdata;
  output wire [3 : 0] m_axictrl_wstrb;
  output wire m_axictrl_wvalid;
  input bit m_axictrl_wready;
  input bit m_axictrl_bvalid;
  output wire m_axictrl_bready;
  input bit [1 : 0] m_axictrl_bresp;
  output wire [63 : 0] m_axictrl_araddr;
  output wire m_axictrl_arvalid;
  input bit m_axictrl_arready;
  output wire [2 : 0] m_axictrl_arprot;
  input bit [31 : 0] m_axictrl_rdata;
  input bit [1 : 0] m_axictrl_rresp;
  input bit m_axictrl_rvalid;
  output wire m_axictrl_rready;
  output wire m_aximm_AWVALID;
  input bit m_aximm_AWREADY;
  output wire [63 : 0] m_aximm_AWADDR;
  output wire [0 : 0] m_aximm_AWID;
  output wire [7 : 0] m_aximm_AWLEN;
  output wire [2 : 0] m_aximm_AWSIZE;
  output wire [1 : 0] m_aximm_AWBURST;
  output wire [0 : 0] m_aximm_AWLOCK;
  output wire [3 : 0] m_aximm_AWCACHE;
  output wire [2 : 0] m_aximm_AWPROT;
  output wire [3 : 0] m_aximm_AWREGION;
  output wire [3 : 0] m_aximm_AWQOS;
  output wire [31 : 0] m_aximm_AWUSER;
  output wire m_aximm_WVALID;
  input bit m_aximm_WREADY;
  output wire [31 : 0] m_aximm_WDATA;
  output wire [3 : 0] m_aximm_WSTRB;
  output wire m_aximm_WLAST;
  output wire [31 : 0] m_aximm_WUSER;
  output wire m_aximm_ARVALID;
  input bit m_aximm_ARREADY;
  output wire [63 : 0] m_aximm_ARADDR;
  output wire [0 : 0] m_aximm_ARID;
  output wire [7 : 0] m_aximm_ARLEN;
  output wire [2 : 0] m_aximm_ARSIZE;
  output wire [1 : 0] m_aximm_ARBURST;
  output wire [0 : 0] m_aximm_ARLOCK;
  output wire [3 : 0] m_aximm_ARCACHE;
  output wire [2 : 0] m_aximm_ARPROT;
  output wire [3 : 0] m_aximm_ARREGION;
  output wire [3 : 0] m_aximm_ARQOS;
  output wire [31 : 0] m_aximm_ARUSER;
  input bit m_aximm_RVALID;
  output wire m_aximm_RREADY;
  input bit [31 : 0] m_aximm_RDATA;
  input bit m_aximm_RLAST;
  input bit [0 : 0] m_aximm_RID;
  input bit [1 : 0] m_aximm_RRESP;
  input bit [31 : 0] m_aximm_RUSER;
  input bit m_aximm_BVALID;
  output wire m_aximm_BREADY;
  input bit [1 : 0] m_aximm_BRESP;
  input bit [0 : 0] m_aximm_BID;
  input bit [0 : 0] m_aximm_BUSER;
  input bit [15 : 0] usr_irq_req;
  output wire [15 : 0] usr_irq_ack;
endmodule
`endif
