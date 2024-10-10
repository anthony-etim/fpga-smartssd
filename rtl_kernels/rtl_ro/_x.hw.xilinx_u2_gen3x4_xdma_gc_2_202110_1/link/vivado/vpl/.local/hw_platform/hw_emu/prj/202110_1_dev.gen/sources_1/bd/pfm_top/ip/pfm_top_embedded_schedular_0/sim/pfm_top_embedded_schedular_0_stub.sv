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
// Filename:    pfm_top_embedded_schedular_0_stub.sv
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
module pfm_top_embedded_schedular_0 (
  input bit [127 : 0] interrupt_cu,
  output bit_as_bool interrupt_m2m,
  input bit_as_bool s_axi_ctrl_user_aresetn,
  input bit_as_bool s_axi_data_p2p_aresetn,
  input bit_as_bool maxi_lite_mb_aresetn,
  input bit_as_bool m_axi_data_m2m_aresetn,
  input bit_as_bool s_axi_ctrl_user_aclk,
  input bit_as_bool s_axi_data_p2p_aclk,
  input bit_as_bool maxi_lite_mb_aclk,
  input bit_as_bool m_axi_data_m2m_aclk,
  input bit [63 : 0] s_axi_data_p2p_awaddr,
  input bit [7 : 0] s_axi_data_p2p_awlen,
  input bit [2 : 0] s_axi_data_p2p_awsize,
  input bit [1 : 0] s_axi_data_p2p_awburst,
  input bit_as_bool s_axi_data_p2p_awlock,
  input bit [3 : 0] s_axi_data_p2p_awcache,
  input bit [2 : 0] s_axi_data_p2p_awprot,
  input bit [3 : 0] s_axi_data_p2p_awregion,
  input bit [3 : 0] s_axi_data_p2p_awqos,
  input bit [31 : 0] s_axi_data_p2p_awuser,
  input bit_as_bool s_axi_data_p2p_awvalid,
  output bit_as_bool s_axi_data_p2p_awready,
  input bit [31 : 0] s_axi_data_p2p_wdata,
  input bit [3 : 0] s_axi_data_p2p_wstrb,
  input bit_as_bool s_axi_data_p2p_wlast,
  input bit_as_bool s_axi_data_p2p_wvalid,
  output bit_as_bool s_axi_data_p2p_wready,
  output bit [1 : 0] s_axi_data_p2p_bresp,
  output bit [0 : 0] s_axi_data_p2p_buser,
  output bit_as_bool s_axi_data_p2p_bvalid,
  input bit_as_bool s_axi_data_p2p_bready,
  input bit [63 : 0] s_axi_data_p2p_araddr,
  input bit [7 : 0] s_axi_data_p2p_arlen,
  input bit [2 : 0] s_axi_data_p2p_arsize,
  input bit [1 : 0] s_axi_data_p2p_arburst,
  input bit_as_bool s_axi_data_p2p_arlock,
  input bit [3 : 0] s_axi_data_p2p_arcache,
  input bit [2 : 0] s_axi_data_p2p_arprot,
  input bit [3 : 0] s_axi_data_p2p_arregion,
  input bit [3 : 0] s_axi_data_p2p_arqos,
  input bit [31 : 0] s_axi_data_p2p_aruser,
  input bit_as_bool s_axi_data_p2p_arvalid,
  output bit_as_bool s_axi_data_p2p_arready,
  output bit [31 : 0] s_axi_data_p2p_rdata,
  output bit [1 : 0] s_axi_data_p2p_rresp,
  output bit_as_bool s_axi_data_p2p_rlast,
  output bit_as_bool s_axi_data_p2p_rvalid,
  input bit_as_bool s_axi_data_p2p_rready,
  output bit [63 : 0] maxi_lite_mb_awaddr,
  output bit [2 : 0] maxi_lite_mb_awprot,
  output bit_as_bool maxi_lite_mb_awvalid,
  input bit_as_bool maxi_lite_mb_awready,
  output bit [31 : 0] maxi_lite_mb_wdata,
  output bit [3 : 0] maxi_lite_mb_wstrb,
  output bit_as_bool maxi_lite_mb_wvalid,
  input bit_as_bool maxi_lite_mb_wready,
  input bit [1 : 0] maxi_lite_mb_bresp,
  input bit_as_bool maxi_lite_mb_bvalid,
  output bit_as_bool maxi_lite_mb_bready,
  output bit [63 : 0] maxi_lite_mb_araddr,
  output bit [2 : 0] maxi_lite_mb_arprot,
  output bit_as_bool maxi_lite_mb_arvalid,
  input bit_as_bool maxi_lite_mb_arready,
  input bit [31 : 0] maxi_lite_mb_rdata,
  input bit [1 : 0] maxi_lite_mb_rresp,
  input bit_as_bool maxi_lite_mb_rvalid,
  output bit_as_bool maxi_lite_mb_rready,
  output bit [0 : 0] m_axi_data_m2m_awid,
  output bit [63 : 0] m_axi_data_m2m_awaddr,
  output bit [7 : 0] m_axi_data_m2m_awlen,
  output bit [2 : 0] m_axi_data_m2m_awsize,
  output bit [1 : 0] m_axi_data_m2m_awburst,
  output bit_as_bool m_axi_data_m2m_awlock,
  output bit [3 : 0] m_axi_data_m2m_awcache,
  output bit [2 : 0] m_axi_data_m2m_awprot,
  output bit [3 : 0] m_axi_data_m2m_awqos,
  output bit [0 : 0] m_axi_data_m2m_awuser,
  output bit_as_bool m_axi_data_m2m_awvalid,
  input bit_as_bool m_axi_data_m2m_awready,
  output bit [31 : 0] m_axi_data_m2m_wdata,
  output bit [3 : 0] m_axi_data_m2m_wstrb,
  output bit_as_bool m_axi_data_m2m_wlast,
  output bit [0 : 0] m_axi_data_m2m_wuser,
  output bit_as_bool m_axi_data_m2m_wvalid,
  input bit_as_bool m_axi_data_m2m_wready,
  input bit [0 : 0] m_axi_data_m2m_bid,
  input bit [1 : 0] m_axi_data_m2m_bresp,
  input bit [0 : 0] m_axi_data_m2m_buser,
  input bit_as_bool m_axi_data_m2m_bvalid,
  output bit_as_bool m_axi_data_m2m_bready,
  output bit [0 : 0] m_axi_data_m2m_arid,
  output bit [63 : 0] m_axi_data_m2m_araddr,
  output bit [7 : 0] m_axi_data_m2m_arlen,
  output bit [2 : 0] m_axi_data_m2m_arsize,
  output bit [1 : 0] m_axi_data_m2m_arburst,
  output bit_as_bool m_axi_data_m2m_arlock,
  output bit [3 : 0] m_axi_data_m2m_arcache,
  output bit [2 : 0] m_axi_data_m2m_arprot,
  output bit [3 : 0] m_axi_data_m2m_arqos,
  output bit [0 : 0] m_axi_data_m2m_aruser,
  output bit_as_bool m_axi_data_m2m_arvalid,
  input bit_as_bool m_axi_data_m2m_arready,
  input bit [0 : 0] m_axi_data_m2m_rid,
  input bit [31 : 0] m_axi_data_m2m_rdata,
  input bit [1 : 0] m_axi_data_m2m_rresp,
  input bit_as_bool m_axi_data_m2m_rlast,
  input bit [0 : 0] m_axi_data_m2m_ruser,
  input bit_as_bool m_axi_data_m2m_rvalid,
  output bit_as_bool m_axi_data_m2m_rready,
  input bit [63 : 0] s_axi_ctrl_user_awaddr,
  input bit [2 : 0] s_axi_ctrl_user_awprot,
  input bit_as_bool s_axi_ctrl_user_awvalid,
  output bit_as_bool s_axi_ctrl_user_awready,
  input bit [31 : 0] s_axi_ctrl_user_wdata,
  input bit [3 : 0] s_axi_ctrl_user_wstrb,
  input bit_as_bool s_axi_ctrl_user_wvalid,
  output bit_as_bool s_axi_ctrl_user_wready,
  output bit [1 : 0] s_axi_ctrl_user_bresp,
  output bit_as_bool s_axi_ctrl_user_bvalid,
  input bit_as_bool s_axi_ctrl_user_bready,
  input bit [63 : 0] s_axi_ctrl_user_araddr,
  input bit [2 : 0] s_axi_ctrl_user_arprot,
  input bit_as_bool s_axi_ctrl_user_arvalid,
  output bit_as_bool s_axi_ctrl_user_arready,
  output bit [31 : 0] s_axi_ctrl_user_rdata,
  output bit [1 : 0] s_axi_ctrl_user_rresp,
  output bit_as_bool s_axi_ctrl_user_rvalid,
  input bit_as_bool s_axi_ctrl_user_rready
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module pfm_top_embedded_schedular_0 (interrupt_cu,interrupt_m2m,s_axi_ctrl_user_aresetn,s_axi_data_p2p_aresetn,maxi_lite_mb_aresetn,m_axi_data_m2m_aresetn,s_axi_ctrl_user_aclk,s_axi_data_p2p_aclk,maxi_lite_mb_aclk,m_axi_data_m2m_aclk,s_axi_data_p2p_awaddr,s_axi_data_p2p_awlen,s_axi_data_p2p_awsize,s_axi_data_p2p_awburst,s_axi_data_p2p_awlock,s_axi_data_p2p_awcache,s_axi_data_p2p_awprot,s_axi_data_p2p_awregion,s_axi_data_p2p_awqos,s_axi_data_p2p_awuser,s_axi_data_p2p_awvalid,s_axi_data_p2p_awready,s_axi_data_p2p_wdata,s_axi_data_p2p_wstrb,s_axi_data_p2p_wlast,s_axi_data_p2p_wvalid,s_axi_data_p2p_wready,s_axi_data_p2p_bresp,s_axi_data_p2p_buser,s_axi_data_p2p_bvalid,s_axi_data_p2p_bready,s_axi_data_p2p_araddr,s_axi_data_p2p_arlen,s_axi_data_p2p_arsize,s_axi_data_p2p_arburst,s_axi_data_p2p_arlock,s_axi_data_p2p_arcache,s_axi_data_p2p_arprot,s_axi_data_p2p_arregion,s_axi_data_p2p_arqos,s_axi_data_p2p_aruser,s_axi_data_p2p_arvalid,s_axi_data_p2p_arready,s_axi_data_p2p_rdata,s_axi_data_p2p_rresp,s_axi_data_p2p_rlast,s_axi_data_p2p_rvalid,s_axi_data_p2p_rready,maxi_lite_mb_awaddr,maxi_lite_mb_awprot,maxi_lite_mb_awvalid,maxi_lite_mb_awready,maxi_lite_mb_wdata,maxi_lite_mb_wstrb,maxi_lite_mb_wvalid,maxi_lite_mb_wready,maxi_lite_mb_bresp,maxi_lite_mb_bvalid,maxi_lite_mb_bready,maxi_lite_mb_araddr,maxi_lite_mb_arprot,maxi_lite_mb_arvalid,maxi_lite_mb_arready,maxi_lite_mb_rdata,maxi_lite_mb_rresp,maxi_lite_mb_rvalid,maxi_lite_mb_rready,m_axi_data_m2m_awid,m_axi_data_m2m_awaddr,m_axi_data_m2m_awlen,m_axi_data_m2m_awsize,m_axi_data_m2m_awburst,m_axi_data_m2m_awlock,m_axi_data_m2m_awcache,m_axi_data_m2m_awprot,m_axi_data_m2m_awqos,m_axi_data_m2m_awuser,m_axi_data_m2m_awvalid,m_axi_data_m2m_awready,m_axi_data_m2m_wdata,m_axi_data_m2m_wstrb,m_axi_data_m2m_wlast,m_axi_data_m2m_wuser,m_axi_data_m2m_wvalid,m_axi_data_m2m_wready,m_axi_data_m2m_bid,m_axi_data_m2m_bresp,m_axi_data_m2m_buser,m_axi_data_m2m_bvalid,m_axi_data_m2m_bready,m_axi_data_m2m_arid,m_axi_data_m2m_araddr,m_axi_data_m2m_arlen,m_axi_data_m2m_arsize,m_axi_data_m2m_arburst,m_axi_data_m2m_arlock,m_axi_data_m2m_arcache,m_axi_data_m2m_arprot,m_axi_data_m2m_arqos,m_axi_data_m2m_aruser,m_axi_data_m2m_arvalid,m_axi_data_m2m_arready,m_axi_data_m2m_rid,m_axi_data_m2m_rdata,m_axi_data_m2m_rresp,m_axi_data_m2m_rlast,m_axi_data_m2m_ruser,m_axi_data_m2m_rvalid,m_axi_data_m2m_rready,s_axi_ctrl_user_awaddr,s_axi_ctrl_user_awprot,s_axi_ctrl_user_awvalid,s_axi_ctrl_user_awready,s_axi_ctrl_user_wdata,s_axi_ctrl_user_wstrb,s_axi_ctrl_user_wvalid,s_axi_ctrl_user_wready,s_axi_ctrl_user_bresp,s_axi_ctrl_user_bvalid,s_axi_ctrl_user_bready,s_axi_ctrl_user_araddr,s_axi_ctrl_user_arprot,s_axi_ctrl_user_arvalid,s_axi_ctrl_user_arready,s_axi_ctrl_user_rdata,s_axi_ctrl_user_rresp,s_axi_ctrl_user_rvalid,s_axi_ctrl_user_rready)
(* integer foreign = "SystemC";
*);
  input bit [127 : 0] interrupt_cu;
  output wire interrupt_m2m;
  input bit s_axi_ctrl_user_aresetn;
  input bit s_axi_data_p2p_aresetn;
  input bit maxi_lite_mb_aresetn;
  input bit m_axi_data_m2m_aresetn;
  input bit s_axi_ctrl_user_aclk;
  input bit s_axi_data_p2p_aclk;
  input bit maxi_lite_mb_aclk;
  input bit m_axi_data_m2m_aclk;
  input bit [63 : 0] s_axi_data_p2p_awaddr;
  input bit [7 : 0] s_axi_data_p2p_awlen;
  input bit [2 : 0] s_axi_data_p2p_awsize;
  input bit [1 : 0] s_axi_data_p2p_awburst;
  input bit s_axi_data_p2p_awlock;
  input bit [3 : 0] s_axi_data_p2p_awcache;
  input bit [2 : 0] s_axi_data_p2p_awprot;
  input bit [3 : 0] s_axi_data_p2p_awregion;
  input bit [3 : 0] s_axi_data_p2p_awqos;
  input bit [31 : 0] s_axi_data_p2p_awuser;
  input bit s_axi_data_p2p_awvalid;
  output wire s_axi_data_p2p_awready;
  input bit [31 : 0] s_axi_data_p2p_wdata;
  input bit [3 : 0] s_axi_data_p2p_wstrb;
  input bit s_axi_data_p2p_wlast;
  input bit s_axi_data_p2p_wvalid;
  output wire s_axi_data_p2p_wready;
  output wire [1 : 0] s_axi_data_p2p_bresp;
  output wire [0 : 0] s_axi_data_p2p_buser;
  output wire s_axi_data_p2p_bvalid;
  input bit s_axi_data_p2p_bready;
  input bit [63 : 0] s_axi_data_p2p_araddr;
  input bit [7 : 0] s_axi_data_p2p_arlen;
  input bit [2 : 0] s_axi_data_p2p_arsize;
  input bit [1 : 0] s_axi_data_p2p_arburst;
  input bit s_axi_data_p2p_arlock;
  input bit [3 : 0] s_axi_data_p2p_arcache;
  input bit [2 : 0] s_axi_data_p2p_arprot;
  input bit [3 : 0] s_axi_data_p2p_arregion;
  input bit [3 : 0] s_axi_data_p2p_arqos;
  input bit [31 : 0] s_axi_data_p2p_aruser;
  input bit s_axi_data_p2p_arvalid;
  output wire s_axi_data_p2p_arready;
  output wire [31 : 0] s_axi_data_p2p_rdata;
  output wire [1 : 0] s_axi_data_p2p_rresp;
  output wire s_axi_data_p2p_rlast;
  output wire s_axi_data_p2p_rvalid;
  input bit s_axi_data_p2p_rready;
  output wire [63 : 0] maxi_lite_mb_awaddr;
  output wire [2 : 0] maxi_lite_mb_awprot;
  output wire maxi_lite_mb_awvalid;
  input bit maxi_lite_mb_awready;
  output wire [31 : 0] maxi_lite_mb_wdata;
  output wire [3 : 0] maxi_lite_mb_wstrb;
  output wire maxi_lite_mb_wvalid;
  input bit maxi_lite_mb_wready;
  input bit [1 : 0] maxi_lite_mb_bresp;
  input bit maxi_lite_mb_bvalid;
  output wire maxi_lite_mb_bready;
  output wire [63 : 0] maxi_lite_mb_araddr;
  output wire [2 : 0] maxi_lite_mb_arprot;
  output wire maxi_lite_mb_arvalid;
  input bit maxi_lite_mb_arready;
  input bit [31 : 0] maxi_lite_mb_rdata;
  input bit [1 : 0] maxi_lite_mb_rresp;
  input bit maxi_lite_mb_rvalid;
  output wire maxi_lite_mb_rready;
  output wire [0 : 0] m_axi_data_m2m_awid;
  output wire [63 : 0] m_axi_data_m2m_awaddr;
  output wire [7 : 0] m_axi_data_m2m_awlen;
  output wire [2 : 0] m_axi_data_m2m_awsize;
  output wire [1 : 0] m_axi_data_m2m_awburst;
  output wire m_axi_data_m2m_awlock;
  output wire [3 : 0] m_axi_data_m2m_awcache;
  output wire [2 : 0] m_axi_data_m2m_awprot;
  output wire [3 : 0] m_axi_data_m2m_awqos;
  output wire [0 : 0] m_axi_data_m2m_awuser;
  output wire m_axi_data_m2m_awvalid;
  input bit m_axi_data_m2m_awready;
  output wire [31 : 0] m_axi_data_m2m_wdata;
  output wire [3 : 0] m_axi_data_m2m_wstrb;
  output wire m_axi_data_m2m_wlast;
  output wire [0 : 0] m_axi_data_m2m_wuser;
  output wire m_axi_data_m2m_wvalid;
  input bit m_axi_data_m2m_wready;
  input bit [0 : 0] m_axi_data_m2m_bid;
  input bit [1 : 0] m_axi_data_m2m_bresp;
  input bit [0 : 0] m_axi_data_m2m_buser;
  input bit m_axi_data_m2m_bvalid;
  output wire m_axi_data_m2m_bready;
  output wire [0 : 0] m_axi_data_m2m_arid;
  output wire [63 : 0] m_axi_data_m2m_araddr;
  output wire [7 : 0] m_axi_data_m2m_arlen;
  output wire [2 : 0] m_axi_data_m2m_arsize;
  output wire [1 : 0] m_axi_data_m2m_arburst;
  output wire m_axi_data_m2m_arlock;
  output wire [3 : 0] m_axi_data_m2m_arcache;
  output wire [2 : 0] m_axi_data_m2m_arprot;
  output wire [3 : 0] m_axi_data_m2m_arqos;
  output wire [0 : 0] m_axi_data_m2m_aruser;
  output wire m_axi_data_m2m_arvalid;
  input bit m_axi_data_m2m_arready;
  input bit [0 : 0] m_axi_data_m2m_rid;
  input bit [31 : 0] m_axi_data_m2m_rdata;
  input bit [1 : 0] m_axi_data_m2m_rresp;
  input bit m_axi_data_m2m_rlast;
  input bit [0 : 0] m_axi_data_m2m_ruser;
  input bit m_axi_data_m2m_rvalid;
  output wire m_axi_data_m2m_rready;
  input bit [63 : 0] s_axi_ctrl_user_awaddr;
  input bit [2 : 0] s_axi_ctrl_user_awprot;
  input bit s_axi_ctrl_user_awvalid;
  output wire s_axi_ctrl_user_awready;
  input bit [31 : 0] s_axi_ctrl_user_wdata;
  input bit [3 : 0] s_axi_ctrl_user_wstrb;
  input bit s_axi_ctrl_user_wvalid;
  output wire s_axi_ctrl_user_wready;
  output wire [1 : 0] s_axi_ctrl_user_bresp;
  output wire s_axi_ctrl_user_bvalid;
  input bit s_axi_ctrl_user_bready;
  input bit [63 : 0] s_axi_ctrl_user_araddr;
  input bit [2 : 0] s_axi_ctrl_user_arprot;
  input bit s_axi_ctrl_user_arvalid;
  output wire s_axi_ctrl_user_arready;
  output wire [31 : 0] s_axi_ctrl_user_rdata;
  output wire [1 : 0] s_axi_ctrl_user_rresp;
  output wire s_axi_ctrl_user_rvalid;
  input bit s_axi_ctrl_user_rready;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module pfm_top_embedded_schedular_0 (interrupt_cu,interrupt_m2m,s_axi_ctrl_user_aresetn,s_axi_data_p2p_aresetn,maxi_lite_mb_aresetn,m_axi_data_m2m_aresetn,s_axi_ctrl_user_aclk,s_axi_data_p2p_aclk,maxi_lite_mb_aclk,m_axi_data_m2m_aclk,s_axi_data_p2p_awaddr,s_axi_data_p2p_awlen,s_axi_data_p2p_awsize,s_axi_data_p2p_awburst,s_axi_data_p2p_awlock,s_axi_data_p2p_awcache,s_axi_data_p2p_awprot,s_axi_data_p2p_awregion,s_axi_data_p2p_awqos,s_axi_data_p2p_awuser,s_axi_data_p2p_awvalid,s_axi_data_p2p_awready,s_axi_data_p2p_wdata,s_axi_data_p2p_wstrb,s_axi_data_p2p_wlast,s_axi_data_p2p_wvalid,s_axi_data_p2p_wready,s_axi_data_p2p_bresp,s_axi_data_p2p_buser,s_axi_data_p2p_bvalid,s_axi_data_p2p_bready,s_axi_data_p2p_araddr,s_axi_data_p2p_arlen,s_axi_data_p2p_arsize,s_axi_data_p2p_arburst,s_axi_data_p2p_arlock,s_axi_data_p2p_arcache,s_axi_data_p2p_arprot,s_axi_data_p2p_arregion,s_axi_data_p2p_arqos,s_axi_data_p2p_aruser,s_axi_data_p2p_arvalid,s_axi_data_p2p_arready,s_axi_data_p2p_rdata,s_axi_data_p2p_rresp,s_axi_data_p2p_rlast,s_axi_data_p2p_rvalid,s_axi_data_p2p_rready,maxi_lite_mb_awaddr,maxi_lite_mb_awprot,maxi_lite_mb_awvalid,maxi_lite_mb_awready,maxi_lite_mb_wdata,maxi_lite_mb_wstrb,maxi_lite_mb_wvalid,maxi_lite_mb_wready,maxi_lite_mb_bresp,maxi_lite_mb_bvalid,maxi_lite_mb_bready,maxi_lite_mb_araddr,maxi_lite_mb_arprot,maxi_lite_mb_arvalid,maxi_lite_mb_arready,maxi_lite_mb_rdata,maxi_lite_mb_rresp,maxi_lite_mb_rvalid,maxi_lite_mb_rready,m_axi_data_m2m_awid,m_axi_data_m2m_awaddr,m_axi_data_m2m_awlen,m_axi_data_m2m_awsize,m_axi_data_m2m_awburst,m_axi_data_m2m_awlock,m_axi_data_m2m_awcache,m_axi_data_m2m_awprot,m_axi_data_m2m_awqos,m_axi_data_m2m_awuser,m_axi_data_m2m_awvalid,m_axi_data_m2m_awready,m_axi_data_m2m_wdata,m_axi_data_m2m_wstrb,m_axi_data_m2m_wlast,m_axi_data_m2m_wuser,m_axi_data_m2m_wvalid,m_axi_data_m2m_wready,m_axi_data_m2m_bid,m_axi_data_m2m_bresp,m_axi_data_m2m_buser,m_axi_data_m2m_bvalid,m_axi_data_m2m_bready,m_axi_data_m2m_arid,m_axi_data_m2m_araddr,m_axi_data_m2m_arlen,m_axi_data_m2m_arsize,m_axi_data_m2m_arburst,m_axi_data_m2m_arlock,m_axi_data_m2m_arcache,m_axi_data_m2m_arprot,m_axi_data_m2m_arqos,m_axi_data_m2m_aruser,m_axi_data_m2m_arvalid,m_axi_data_m2m_arready,m_axi_data_m2m_rid,m_axi_data_m2m_rdata,m_axi_data_m2m_rresp,m_axi_data_m2m_rlast,m_axi_data_m2m_ruser,m_axi_data_m2m_rvalid,m_axi_data_m2m_rready,s_axi_ctrl_user_awaddr,s_axi_ctrl_user_awprot,s_axi_ctrl_user_awvalid,s_axi_ctrl_user_awready,s_axi_ctrl_user_wdata,s_axi_ctrl_user_wstrb,s_axi_ctrl_user_wvalid,s_axi_ctrl_user_wready,s_axi_ctrl_user_bresp,s_axi_ctrl_user_bvalid,s_axi_ctrl_user_bready,s_axi_ctrl_user_araddr,s_axi_ctrl_user_arprot,s_axi_ctrl_user_arvalid,s_axi_ctrl_user_arready,s_axi_ctrl_user_rdata,s_axi_ctrl_user_rresp,s_axi_ctrl_user_rvalid,s_axi_ctrl_user_rready)
  input bit [127 : 0] interrupt_cu;
  output wire interrupt_m2m;
  input bit s_axi_ctrl_user_aresetn;
  input bit s_axi_data_p2p_aresetn;
  input bit maxi_lite_mb_aresetn;
  input bit m_axi_data_m2m_aresetn;
  input bit s_axi_ctrl_user_aclk;
  input bit s_axi_data_p2p_aclk;
  input bit maxi_lite_mb_aclk;
  input bit m_axi_data_m2m_aclk;
  input bit [63 : 0] s_axi_data_p2p_awaddr;
  input bit [7 : 0] s_axi_data_p2p_awlen;
  input bit [2 : 0] s_axi_data_p2p_awsize;
  input bit [1 : 0] s_axi_data_p2p_awburst;
  input bit s_axi_data_p2p_awlock;
  input bit [3 : 0] s_axi_data_p2p_awcache;
  input bit [2 : 0] s_axi_data_p2p_awprot;
  input bit [3 : 0] s_axi_data_p2p_awregion;
  input bit [3 : 0] s_axi_data_p2p_awqos;
  input bit [31 : 0] s_axi_data_p2p_awuser;
  input bit s_axi_data_p2p_awvalid;
  output wire s_axi_data_p2p_awready;
  input bit [31 : 0] s_axi_data_p2p_wdata;
  input bit [3 : 0] s_axi_data_p2p_wstrb;
  input bit s_axi_data_p2p_wlast;
  input bit s_axi_data_p2p_wvalid;
  output wire s_axi_data_p2p_wready;
  output wire [1 : 0] s_axi_data_p2p_bresp;
  output wire [0 : 0] s_axi_data_p2p_buser;
  output wire s_axi_data_p2p_bvalid;
  input bit s_axi_data_p2p_bready;
  input bit [63 : 0] s_axi_data_p2p_araddr;
  input bit [7 : 0] s_axi_data_p2p_arlen;
  input bit [2 : 0] s_axi_data_p2p_arsize;
  input bit [1 : 0] s_axi_data_p2p_arburst;
  input bit s_axi_data_p2p_arlock;
  input bit [3 : 0] s_axi_data_p2p_arcache;
  input bit [2 : 0] s_axi_data_p2p_arprot;
  input bit [3 : 0] s_axi_data_p2p_arregion;
  input bit [3 : 0] s_axi_data_p2p_arqos;
  input bit [31 : 0] s_axi_data_p2p_aruser;
  input bit s_axi_data_p2p_arvalid;
  output wire s_axi_data_p2p_arready;
  output wire [31 : 0] s_axi_data_p2p_rdata;
  output wire [1 : 0] s_axi_data_p2p_rresp;
  output wire s_axi_data_p2p_rlast;
  output wire s_axi_data_p2p_rvalid;
  input bit s_axi_data_p2p_rready;
  output wire [63 : 0] maxi_lite_mb_awaddr;
  output wire [2 : 0] maxi_lite_mb_awprot;
  output wire maxi_lite_mb_awvalid;
  input bit maxi_lite_mb_awready;
  output wire [31 : 0] maxi_lite_mb_wdata;
  output wire [3 : 0] maxi_lite_mb_wstrb;
  output wire maxi_lite_mb_wvalid;
  input bit maxi_lite_mb_wready;
  input bit [1 : 0] maxi_lite_mb_bresp;
  input bit maxi_lite_mb_bvalid;
  output wire maxi_lite_mb_bready;
  output wire [63 : 0] maxi_lite_mb_araddr;
  output wire [2 : 0] maxi_lite_mb_arprot;
  output wire maxi_lite_mb_arvalid;
  input bit maxi_lite_mb_arready;
  input bit [31 : 0] maxi_lite_mb_rdata;
  input bit [1 : 0] maxi_lite_mb_rresp;
  input bit maxi_lite_mb_rvalid;
  output wire maxi_lite_mb_rready;
  output wire [0 : 0] m_axi_data_m2m_awid;
  output wire [63 : 0] m_axi_data_m2m_awaddr;
  output wire [7 : 0] m_axi_data_m2m_awlen;
  output wire [2 : 0] m_axi_data_m2m_awsize;
  output wire [1 : 0] m_axi_data_m2m_awburst;
  output wire m_axi_data_m2m_awlock;
  output wire [3 : 0] m_axi_data_m2m_awcache;
  output wire [2 : 0] m_axi_data_m2m_awprot;
  output wire [3 : 0] m_axi_data_m2m_awqos;
  output wire [0 : 0] m_axi_data_m2m_awuser;
  output wire m_axi_data_m2m_awvalid;
  input bit m_axi_data_m2m_awready;
  output wire [31 : 0] m_axi_data_m2m_wdata;
  output wire [3 : 0] m_axi_data_m2m_wstrb;
  output wire m_axi_data_m2m_wlast;
  output wire [0 : 0] m_axi_data_m2m_wuser;
  output wire m_axi_data_m2m_wvalid;
  input bit m_axi_data_m2m_wready;
  input bit [0 : 0] m_axi_data_m2m_bid;
  input bit [1 : 0] m_axi_data_m2m_bresp;
  input bit [0 : 0] m_axi_data_m2m_buser;
  input bit m_axi_data_m2m_bvalid;
  output wire m_axi_data_m2m_bready;
  output wire [0 : 0] m_axi_data_m2m_arid;
  output wire [63 : 0] m_axi_data_m2m_araddr;
  output wire [7 : 0] m_axi_data_m2m_arlen;
  output wire [2 : 0] m_axi_data_m2m_arsize;
  output wire [1 : 0] m_axi_data_m2m_arburst;
  output wire m_axi_data_m2m_arlock;
  output wire [3 : 0] m_axi_data_m2m_arcache;
  output wire [2 : 0] m_axi_data_m2m_arprot;
  output wire [3 : 0] m_axi_data_m2m_arqos;
  output wire [0 : 0] m_axi_data_m2m_aruser;
  output wire m_axi_data_m2m_arvalid;
  input bit m_axi_data_m2m_arready;
  input bit [0 : 0] m_axi_data_m2m_rid;
  input bit [31 : 0] m_axi_data_m2m_rdata;
  input bit [1 : 0] m_axi_data_m2m_rresp;
  input bit m_axi_data_m2m_rlast;
  input bit [0 : 0] m_axi_data_m2m_ruser;
  input bit m_axi_data_m2m_rvalid;
  output wire m_axi_data_m2m_rready;
  input bit [63 : 0] s_axi_ctrl_user_awaddr;
  input bit [2 : 0] s_axi_ctrl_user_awprot;
  input bit s_axi_ctrl_user_awvalid;
  output wire s_axi_ctrl_user_awready;
  input bit [31 : 0] s_axi_ctrl_user_wdata;
  input bit [3 : 0] s_axi_ctrl_user_wstrb;
  input bit s_axi_ctrl_user_wvalid;
  output wire s_axi_ctrl_user_wready;
  output wire [1 : 0] s_axi_ctrl_user_bresp;
  output wire s_axi_ctrl_user_bvalid;
  input bit s_axi_ctrl_user_bready;
  input bit [63 : 0] s_axi_ctrl_user_araddr;
  input bit [2 : 0] s_axi_ctrl_user_arprot;
  input bit s_axi_ctrl_user_arvalid;
  output wire s_axi_ctrl_user_arready;
  output wire [31 : 0] s_axi_ctrl_user_rdata;
  output wire [1 : 0] s_axi_ctrl_user_rresp;
  output wire s_axi_ctrl_user_rvalid;
  input bit s_axi_ctrl_user_rready;
endmodule
`endif
