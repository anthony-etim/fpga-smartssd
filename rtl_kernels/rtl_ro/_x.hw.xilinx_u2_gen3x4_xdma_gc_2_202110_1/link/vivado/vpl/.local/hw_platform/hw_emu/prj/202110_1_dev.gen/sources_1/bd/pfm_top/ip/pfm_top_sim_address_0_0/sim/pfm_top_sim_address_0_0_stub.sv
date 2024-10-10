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
// Filename:    pfm_top_sim_address_0_0_stub.sv
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
module pfm_top_sim_address_0_0 (
  input bit_as_bool m_aximm_aclk,
  input bit_as_bool m_aximm_aresetn,
  input bit_as_bool s_aximm_aclk,
  input bit_as_bool s_aximm_aresetn,
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
  output bit [0 : 0] m_aximm_AWUSER,
  output bit_as_bool m_aximm_WVALID,
  input bit_as_bool m_aximm_WREADY,
  output bit [31 : 0] m_aximm_WDATA,
  output bit [3 : 0] m_aximm_WSTRB,
  output bit_as_bool m_aximm_WLAST,
  output bit [0 : 0] m_aximm_WUSER,
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
  output bit [0 : 0] m_aximm_ARUSER,
  input bit_as_bool m_aximm_RVALID,
  output bit_as_bool m_aximm_RREADY,
  input bit [31 : 0] m_aximm_RDATA,
  input bit_as_bool m_aximm_RLAST,
  input bit [0 : 0] m_aximm_RID,
  input bit [1 : 0] m_aximm_RRESP,
  input bit [0 : 0] m_aximm_RUSER,
  input bit_as_bool m_aximm_BVALID,
  output bit_as_bool m_aximm_BREADY,
  input bit [1 : 0] m_aximm_BRESP,
  input bit [0 : 0] m_aximm_BID,
  input bit [0 : 0] m_aximm_BUSER,
  input bit [31 : 0] s_axi_awaddr,
  input bit [7 : 0] s_axi_awlen,
  input bit [2 : 0] s_axi_awsize,
  input bit [1 : 0] s_axi_awburst,
  input bit [0 : 0] s_axi_awlock,
  input bit [3 : 0] s_axi_awcache,
  input bit [2 : 0] s_axi_awprot,
  input bit [3 : 0] s_axi_awregion,
  input bit [3 : 0] s_axi_awqos,
  input bit [31 : 0] s_axi_awuser,
  input bit_as_bool s_axi_awvalid,
  output bit_as_bool s_axi_awready,
  input bit [31 : 0] s_axi_wdata,
  input bit [3 : 0] s_axi_wstrb,
  input bit_as_bool s_axi_wlast,
  input bit_as_bool s_axi_wvalid,
  output bit_as_bool s_axi_wready,
  output bit [1 : 0] s_axi_bresp,
  output bit_as_bool s_axi_bvalid,
  output bit [0 : 0] s_axi_buser,
  input bit_as_bool s_axi_bready,
  input bit [31 : 0] s_axi_araddr,
  input bit [7 : 0] s_axi_arlen,
  input bit [2 : 0] s_axi_arsize,
  input bit [1 : 0] s_axi_arburst,
  input bit [0 : 0] s_axi_arlock,
  input bit [3 : 0] s_axi_arcache,
  input bit [2 : 0] s_axi_arprot,
  input bit [3 : 0] s_axi_arregion,
  input bit [3 : 0] s_axi_arqos,
  input bit [31 : 0] s_axi_aruser,
  input bit_as_bool s_axi_arvalid,
  output bit_as_bool s_axi_arready,
  output bit [31 : 0] s_axi_rdata,
  output bit [1 : 0] s_axi_rresp,
  output bit_as_bool s_axi_rlast,
  output bit_as_bool s_axi_rvalid,
  input bit_as_bool s_axi_rready
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module pfm_top_sim_address_0_0 (m_aximm_aclk,m_aximm_aresetn,s_aximm_aclk,s_aximm_aresetn,m_aximm_AWVALID,m_aximm_AWREADY,m_aximm_AWADDR,m_aximm_AWID,m_aximm_AWLEN,m_aximm_AWSIZE,m_aximm_AWBURST,m_aximm_AWLOCK,m_aximm_AWCACHE,m_aximm_AWPROT,m_aximm_AWREGION,m_aximm_AWQOS,m_aximm_AWUSER,m_aximm_WVALID,m_aximm_WREADY,m_aximm_WDATA,m_aximm_WSTRB,m_aximm_WLAST,m_aximm_WUSER,m_aximm_ARVALID,m_aximm_ARREADY,m_aximm_ARADDR,m_aximm_ARID,m_aximm_ARLEN,m_aximm_ARSIZE,m_aximm_ARBURST,m_aximm_ARLOCK,m_aximm_ARCACHE,m_aximm_ARPROT,m_aximm_ARREGION,m_aximm_ARQOS,m_aximm_ARUSER,m_aximm_RVALID,m_aximm_RREADY,m_aximm_RDATA,m_aximm_RLAST,m_aximm_RID,m_aximm_RRESP,m_aximm_RUSER,m_aximm_BVALID,m_aximm_BREADY,m_aximm_BRESP,m_aximm_BID,m_aximm_BUSER,s_axi_awaddr,s_axi_awlen,s_axi_awsize,s_axi_awburst,s_axi_awlock,s_axi_awcache,s_axi_awprot,s_axi_awregion,s_axi_awqos,s_axi_awuser,s_axi_awvalid,s_axi_awready,s_axi_wdata,s_axi_wstrb,s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bresp,s_axi_bvalid,s_axi_buser,s_axi_bready,s_axi_araddr,s_axi_arlen,s_axi_arsize,s_axi_arburst,s_axi_arlock,s_axi_arcache,s_axi_arprot,s_axi_arregion,s_axi_arqos,s_axi_aruser,s_axi_arvalid,s_axi_arready,s_axi_rdata,s_axi_rresp,s_axi_rlast,s_axi_rvalid,s_axi_rready)
(* integer foreign = "SystemC";
*);
  input bit m_aximm_aclk;
  input bit m_aximm_aresetn;
  input bit s_aximm_aclk;
  input bit s_aximm_aresetn;
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
  output wire [0 : 0] m_aximm_AWUSER;
  output wire m_aximm_WVALID;
  input bit m_aximm_WREADY;
  output wire [31 : 0] m_aximm_WDATA;
  output wire [3 : 0] m_aximm_WSTRB;
  output wire m_aximm_WLAST;
  output wire [0 : 0] m_aximm_WUSER;
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
  output wire [0 : 0] m_aximm_ARUSER;
  input bit m_aximm_RVALID;
  output wire m_aximm_RREADY;
  input bit [31 : 0] m_aximm_RDATA;
  input bit m_aximm_RLAST;
  input bit [0 : 0] m_aximm_RID;
  input bit [1 : 0] m_aximm_RRESP;
  input bit [0 : 0] m_aximm_RUSER;
  input bit m_aximm_BVALID;
  output wire m_aximm_BREADY;
  input bit [1 : 0] m_aximm_BRESP;
  input bit [0 : 0] m_aximm_BID;
  input bit [0 : 0] m_aximm_BUSER;
  input bit [31 : 0] s_axi_awaddr;
  input bit [7 : 0] s_axi_awlen;
  input bit [2 : 0] s_axi_awsize;
  input bit [1 : 0] s_axi_awburst;
  input bit [0 : 0] s_axi_awlock;
  input bit [3 : 0] s_axi_awcache;
  input bit [2 : 0] s_axi_awprot;
  input bit [3 : 0] s_axi_awregion;
  input bit [3 : 0] s_axi_awqos;
  input bit [31 : 0] s_axi_awuser;
  input bit s_axi_awvalid;
  output wire s_axi_awready;
  input bit [31 : 0] s_axi_wdata;
  input bit [3 : 0] s_axi_wstrb;
  input bit s_axi_wlast;
  input bit s_axi_wvalid;
  output wire s_axi_wready;
  output wire [1 : 0] s_axi_bresp;
  output wire s_axi_bvalid;
  output wire [0 : 0] s_axi_buser;
  input bit s_axi_bready;
  input bit [31 : 0] s_axi_araddr;
  input bit [7 : 0] s_axi_arlen;
  input bit [2 : 0] s_axi_arsize;
  input bit [1 : 0] s_axi_arburst;
  input bit [0 : 0] s_axi_arlock;
  input bit [3 : 0] s_axi_arcache;
  input bit [2 : 0] s_axi_arprot;
  input bit [3 : 0] s_axi_arregion;
  input bit [3 : 0] s_axi_arqos;
  input bit [31 : 0] s_axi_aruser;
  input bit s_axi_arvalid;
  output wire s_axi_arready;
  output wire [31 : 0] s_axi_rdata;
  output wire [1 : 0] s_axi_rresp;
  output wire s_axi_rlast;
  output wire s_axi_rvalid;
  input bit s_axi_rready;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module pfm_top_sim_address_0_0 (m_aximm_aclk,m_aximm_aresetn,s_aximm_aclk,s_aximm_aresetn,m_aximm_AWVALID,m_aximm_AWREADY,m_aximm_AWADDR,m_aximm_AWID,m_aximm_AWLEN,m_aximm_AWSIZE,m_aximm_AWBURST,m_aximm_AWLOCK,m_aximm_AWCACHE,m_aximm_AWPROT,m_aximm_AWREGION,m_aximm_AWQOS,m_aximm_AWUSER,m_aximm_WVALID,m_aximm_WREADY,m_aximm_WDATA,m_aximm_WSTRB,m_aximm_WLAST,m_aximm_WUSER,m_aximm_ARVALID,m_aximm_ARREADY,m_aximm_ARADDR,m_aximm_ARID,m_aximm_ARLEN,m_aximm_ARSIZE,m_aximm_ARBURST,m_aximm_ARLOCK,m_aximm_ARCACHE,m_aximm_ARPROT,m_aximm_ARREGION,m_aximm_ARQOS,m_aximm_ARUSER,m_aximm_RVALID,m_aximm_RREADY,m_aximm_RDATA,m_aximm_RLAST,m_aximm_RID,m_aximm_RRESP,m_aximm_RUSER,m_aximm_BVALID,m_aximm_BREADY,m_aximm_BRESP,m_aximm_BID,m_aximm_BUSER,s_axi_awaddr,s_axi_awlen,s_axi_awsize,s_axi_awburst,s_axi_awlock,s_axi_awcache,s_axi_awprot,s_axi_awregion,s_axi_awqos,s_axi_awuser,s_axi_awvalid,s_axi_awready,s_axi_wdata,s_axi_wstrb,s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bresp,s_axi_bvalid,s_axi_buser,s_axi_bready,s_axi_araddr,s_axi_arlen,s_axi_arsize,s_axi_arburst,s_axi_arlock,s_axi_arcache,s_axi_arprot,s_axi_arregion,s_axi_arqos,s_axi_aruser,s_axi_arvalid,s_axi_arready,s_axi_rdata,s_axi_rresp,s_axi_rlast,s_axi_rvalid,s_axi_rready)
  input bit m_aximm_aclk;
  input bit m_aximm_aresetn;
  input bit s_aximm_aclk;
  input bit s_aximm_aresetn;
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
  output wire [0 : 0] m_aximm_AWUSER;
  output wire m_aximm_WVALID;
  input bit m_aximm_WREADY;
  output wire [31 : 0] m_aximm_WDATA;
  output wire [3 : 0] m_aximm_WSTRB;
  output wire m_aximm_WLAST;
  output wire [0 : 0] m_aximm_WUSER;
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
  output wire [0 : 0] m_aximm_ARUSER;
  input bit m_aximm_RVALID;
  output wire m_aximm_RREADY;
  input bit [31 : 0] m_aximm_RDATA;
  input bit m_aximm_RLAST;
  input bit [0 : 0] m_aximm_RID;
  input bit [1 : 0] m_aximm_RRESP;
  input bit [0 : 0] m_aximm_RUSER;
  input bit m_aximm_BVALID;
  output wire m_aximm_BREADY;
  input bit [1 : 0] m_aximm_BRESP;
  input bit [0 : 0] m_aximm_BID;
  input bit [0 : 0] m_aximm_BUSER;
  input bit [31 : 0] s_axi_awaddr;
  input bit [7 : 0] s_axi_awlen;
  input bit [2 : 0] s_axi_awsize;
  input bit [1 : 0] s_axi_awburst;
  input bit [0 : 0] s_axi_awlock;
  input bit [3 : 0] s_axi_awcache;
  input bit [2 : 0] s_axi_awprot;
  input bit [3 : 0] s_axi_awregion;
  input bit [3 : 0] s_axi_awqos;
  input bit [31 : 0] s_axi_awuser;
  input bit s_axi_awvalid;
  output wire s_axi_awready;
  input bit [31 : 0] s_axi_wdata;
  input bit [3 : 0] s_axi_wstrb;
  input bit s_axi_wlast;
  input bit s_axi_wvalid;
  output wire s_axi_wready;
  output wire [1 : 0] s_axi_bresp;
  output wire s_axi_bvalid;
  output wire [0 : 0] s_axi_buser;
  input bit s_axi_bready;
  input bit [31 : 0] s_axi_araddr;
  input bit [7 : 0] s_axi_arlen;
  input bit [2 : 0] s_axi_arsize;
  input bit [1 : 0] s_axi_arburst;
  input bit [0 : 0] s_axi_arlock;
  input bit [3 : 0] s_axi_arcache;
  input bit [2 : 0] s_axi_arprot;
  input bit [3 : 0] s_axi_arregion;
  input bit [3 : 0] s_axi_arqos;
  input bit [31 : 0] s_axi_aruser;
  input bit s_axi_arvalid;
  output wire s_axi_arready;
  output wire [31 : 0] s_axi_rdata;
  output wire [1 : 0] s_axi_rresp;
  output wire s_axi_rlast;
  output wire s_axi_rvalid;
  input bit s_axi_rready;
endmodule
`endif
