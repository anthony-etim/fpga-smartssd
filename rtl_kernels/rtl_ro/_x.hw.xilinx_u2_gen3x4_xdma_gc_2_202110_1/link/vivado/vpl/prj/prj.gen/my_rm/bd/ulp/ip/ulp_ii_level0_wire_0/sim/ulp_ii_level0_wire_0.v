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


// IP VLNV: xilinx.com:ip:ii_level0_wire:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ulp_ii_level0_wire_0 (
  BLP_S_AXI_CTRL_USER_00_araddr,
  BLP_S_AXI_CTRL_USER_00_arprot,
  BLP_S_AXI_CTRL_USER_00_arready,
  BLP_S_AXI_CTRL_USER_00_arvalid,
  BLP_S_AXI_CTRL_USER_00_awaddr,
  BLP_S_AXI_CTRL_USER_00_awprot,
  BLP_S_AXI_CTRL_USER_00_awready,
  BLP_S_AXI_CTRL_USER_00_awvalid,
  BLP_S_AXI_CTRL_USER_00_bready,
  BLP_S_AXI_CTRL_USER_00_bresp,
  BLP_S_AXI_CTRL_USER_00_bvalid,
  BLP_S_AXI_CTRL_USER_00_rdata,
  BLP_S_AXI_CTRL_USER_00_rready,
  BLP_S_AXI_CTRL_USER_00_rresp,
  BLP_S_AXI_CTRL_USER_00_rvalid,
  BLP_S_AXI_CTRL_USER_00_wdata,
  BLP_S_AXI_CTRL_USER_00_wready,
  BLP_S_AXI_CTRL_USER_00_wstrb,
  BLP_S_AXI_CTRL_USER_00_wvalid,
  BLP_S_AXI_CTRL_USER_01_araddr,
  BLP_S_AXI_CTRL_USER_01_arprot,
  BLP_S_AXI_CTRL_USER_01_arready,
  BLP_S_AXI_CTRL_USER_01_arvalid,
  BLP_S_AXI_CTRL_USER_01_awaddr,
  BLP_S_AXI_CTRL_USER_01_awprot,
  BLP_S_AXI_CTRL_USER_01_awready,
  BLP_S_AXI_CTRL_USER_01_awvalid,
  BLP_S_AXI_CTRL_USER_01_bready,
  BLP_S_AXI_CTRL_USER_01_bresp,
  BLP_S_AXI_CTRL_USER_01_bvalid,
  BLP_S_AXI_CTRL_USER_01_rdata,
  BLP_S_AXI_CTRL_USER_01_rready,
  BLP_S_AXI_CTRL_USER_01_rresp,
  BLP_S_AXI_CTRL_USER_01_rvalid,
  BLP_S_AXI_CTRL_USER_01_wdata,
  BLP_S_AXI_CTRL_USER_01_wready,
  BLP_S_AXI_CTRL_USER_01_wstrb,
  BLP_S_AXI_CTRL_USER_01_wvalid,
  BLP_S_AXI_CTRL_USER_02_araddr,
  BLP_S_AXI_CTRL_USER_02_arprot,
  BLP_S_AXI_CTRL_USER_02_arready,
  BLP_S_AXI_CTRL_USER_02_arvalid,
  BLP_S_AXI_CTRL_USER_02_awaddr,
  BLP_S_AXI_CTRL_USER_02_awprot,
  BLP_S_AXI_CTRL_USER_02_awready,
  BLP_S_AXI_CTRL_USER_02_awvalid,
  BLP_S_AXI_CTRL_USER_02_bready,
  BLP_S_AXI_CTRL_USER_02_bresp,
  BLP_S_AXI_CTRL_USER_02_bvalid,
  BLP_S_AXI_CTRL_USER_02_rdata,
  BLP_S_AXI_CTRL_USER_02_rready,
  BLP_S_AXI_CTRL_USER_02_rresp,
  BLP_S_AXI_CTRL_USER_02_rvalid,
  BLP_S_AXI_CTRL_USER_02_wdata,
  BLP_S_AXI_CTRL_USER_02_wready,
  BLP_S_AXI_CTRL_USER_02_wstrb,
  BLP_S_AXI_CTRL_USER_02_wvalid,
  BLP_S_AXI_DATA_H2C_00_araddr,
  BLP_S_AXI_DATA_H2C_00_arburst,
  BLP_S_AXI_DATA_H2C_00_arcache,
  BLP_S_AXI_DATA_H2C_00_arid,
  BLP_S_AXI_DATA_H2C_00_arlen,
  BLP_S_AXI_DATA_H2C_00_arlock,
  BLP_S_AXI_DATA_H2C_00_arprot,
  BLP_S_AXI_DATA_H2C_00_arready,
  BLP_S_AXI_DATA_H2C_00_arvalid,
  BLP_S_AXI_DATA_H2C_00_awaddr,
  BLP_S_AXI_DATA_H2C_00_awburst,
  BLP_S_AXI_DATA_H2C_00_awcache,
  BLP_S_AXI_DATA_H2C_00_awid,
  BLP_S_AXI_DATA_H2C_00_awlen,
  BLP_S_AXI_DATA_H2C_00_awlock,
  BLP_S_AXI_DATA_H2C_00_awprot,
  BLP_S_AXI_DATA_H2C_00_awready,
  BLP_S_AXI_DATA_H2C_00_awvalid,
  BLP_S_AXI_DATA_H2C_00_bid,
  BLP_S_AXI_DATA_H2C_00_bready,
  BLP_S_AXI_DATA_H2C_00_bresp,
  BLP_S_AXI_DATA_H2C_00_bvalid,
  BLP_S_AXI_DATA_H2C_00_rdata,
  BLP_S_AXI_DATA_H2C_00_rid,
  BLP_S_AXI_DATA_H2C_00_rlast,
  BLP_S_AXI_DATA_H2C_00_rready,
  BLP_S_AXI_DATA_H2C_00_rresp,
  BLP_S_AXI_DATA_H2C_00_rvalid,
  BLP_S_AXI_DATA_H2C_00_wdata,
  BLP_S_AXI_DATA_H2C_00_wlast,
  BLP_S_AXI_DATA_H2C_00_wready,
  BLP_S_AXI_DATA_H2C_00_wstrb,
  BLP_S_AXI_DATA_H2C_00_wvalid,
  BLP_S_AXI_DATA_H2C_01_araddr,
  BLP_S_AXI_DATA_H2C_01_arburst,
  BLP_S_AXI_DATA_H2C_01_arcache,
  BLP_S_AXI_DATA_H2C_01_arid,
  BLP_S_AXI_DATA_H2C_01_arlen,
  BLP_S_AXI_DATA_H2C_01_arlock,
  BLP_S_AXI_DATA_H2C_01_arprot,
  BLP_S_AXI_DATA_H2C_01_arready,
  BLP_S_AXI_DATA_H2C_01_arvalid,
  BLP_S_AXI_DATA_H2C_01_awaddr,
  BLP_S_AXI_DATA_H2C_01_awburst,
  BLP_S_AXI_DATA_H2C_01_awcache,
  BLP_S_AXI_DATA_H2C_01_awid,
  BLP_S_AXI_DATA_H2C_01_awlen,
  BLP_S_AXI_DATA_H2C_01_awlock,
  BLP_S_AXI_DATA_H2C_01_awprot,
  BLP_S_AXI_DATA_H2C_01_awready,
  BLP_S_AXI_DATA_H2C_01_awvalid,
  BLP_S_AXI_DATA_H2C_01_bid,
  BLP_S_AXI_DATA_H2C_01_bready,
  BLP_S_AXI_DATA_H2C_01_bresp,
  BLP_S_AXI_DATA_H2C_01_bvalid,
  BLP_S_AXI_DATA_H2C_01_rdata,
  BLP_S_AXI_DATA_H2C_01_rid,
  BLP_S_AXI_DATA_H2C_01_rlast,
  BLP_S_AXI_DATA_H2C_01_rready,
  BLP_S_AXI_DATA_H2C_01_rresp,
  BLP_S_AXI_DATA_H2C_01_rvalid,
  BLP_S_AXI_DATA_H2C_01_wdata,
  BLP_S_AXI_DATA_H2C_01_wlast,
  BLP_S_AXI_DATA_H2C_01_wready,
  BLP_S_AXI_DATA_H2C_01_wstrb,
  BLP_S_AXI_DATA_H2C_01_wvalid,
  BLP_S_AXI_DATA_H2C_02_araddr,
  BLP_S_AXI_DATA_H2C_02_arburst,
  BLP_S_AXI_DATA_H2C_02_arcache,
  BLP_S_AXI_DATA_H2C_02_arlen,
  BLP_S_AXI_DATA_H2C_02_arlock,
  BLP_S_AXI_DATA_H2C_02_arprot,
  BLP_S_AXI_DATA_H2C_02_arready,
  BLP_S_AXI_DATA_H2C_02_arvalid,
  BLP_S_AXI_DATA_H2C_02_awaddr,
  BLP_S_AXI_DATA_H2C_02_awburst,
  BLP_S_AXI_DATA_H2C_02_awcache,
  BLP_S_AXI_DATA_H2C_02_awlen,
  BLP_S_AXI_DATA_H2C_02_awlock,
  BLP_S_AXI_DATA_H2C_02_awprot,
  BLP_S_AXI_DATA_H2C_02_awready,
  BLP_S_AXI_DATA_H2C_02_awvalid,
  BLP_S_AXI_DATA_H2C_02_bready,
  BLP_S_AXI_DATA_H2C_02_bresp,
  BLP_S_AXI_DATA_H2C_02_bvalid,
  BLP_S_AXI_DATA_H2C_02_rdata,
  BLP_S_AXI_DATA_H2C_02_rlast,
  BLP_S_AXI_DATA_H2C_02_rready,
  BLP_S_AXI_DATA_H2C_02_rresp,
  BLP_S_AXI_DATA_H2C_02_rvalid,
  BLP_S_AXI_DATA_H2C_02_wdata,
  BLP_S_AXI_DATA_H2C_02_wlast,
  BLP_S_AXI_DATA_H2C_02_wready,
  BLP_S_AXI_DATA_H2C_02_wstrb,
  BLP_S_AXI_DATA_H2C_02_wvalid,
  BLP_S_AXI_DATA_H2C_03_araddr,
  BLP_S_AXI_DATA_H2C_03_arburst,
  BLP_S_AXI_DATA_H2C_03_arcache,
  BLP_S_AXI_DATA_H2C_03_arid,
  BLP_S_AXI_DATA_H2C_03_arlen,
  BLP_S_AXI_DATA_H2C_03_arlock,
  BLP_S_AXI_DATA_H2C_03_arprot,
  BLP_S_AXI_DATA_H2C_03_arready,
  BLP_S_AXI_DATA_H2C_03_arvalid,
  BLP_S_AXI_DATA_H2C_03_awaddr,
  BLP_S_AXI_DATA_H2C_03_awburst,
  BLP_S_AXI_DATA_H2C_03_awcache,
  BLP_S_AXI_DATA_H2C_03_awid,
  BLP_S_AXI_DATA_H2C_03_awlen,
  BLP_S_AXI_DATA_H2C_03_awlock,
  BLP_S_AXI_DATA_H2C_03_awprot,
  BLP_S_AXI_DATA_H2C_03_awready,
  BLP_S_AXI_DATA_H2C_03_awvalid,
  BLP_S_AXI_DATA_H2C_03_bid,
  BLP_S_AXI_DATA_H2C_03_bready,
  BLP_S_AXI_DATA_H2C_03_bresp,
  BLP_S_AXI_DATA_H2C_03_bvalid,
  BLP_S_AXI_DATA_H2C_03_rdata,
  BLP_S_AXI_DATA_H2C_03_rid,
  BLP_S_AXI_DATA_H2C_03_rlast,
  BLP_S_AXI_DATA_H2C_03_rready,
  BLP_S_AXI_DATA_H2C_03_rresp,
  BLP_S_AXI_DATA_H2C_03_rvalid,
  BLP_S_AXI_DATA_H2C_03_wdata,
  BLP_S_AXI_DATA_H2C_03_wlast,
  BLP_S_AXI_DATA_H2C_03_wready,
  BLP_S_AXI_DATA_H2C_03_wstrb,
  BLP_S_AXI_DATA_H2C_03_wvalid,
  ULP_M_AXI_CTRL_USER_00_araddr,
  ULP_M_AXI_CTRL_USER_00_arprot,
  ULP_M_AXI_CTRL_USER_00_arready,
  ULP_M_AXI_CTRL_USER_00_arvalid,
  ULP_M_AXI_CTRL_USER_00_awaddr,
  ULP_M_AXI_CTRL_USER_00_awprot,
  ULP_M_AXI_CTRL_USER_00_awready,
  ULP_M_AXI_CTRL_USER_00_awvalid,
  ULP_M_AXI_CTRL_USER_00_bready,
  ULP_M_AXI_CTRL_USER_00_bresp,
  ULP_M_AXI_CTRL_USER_00_bvalid,
  ULP_M_AXI_CTRL_USER_00_rdata,
  ULP_M_AXI_CTRL_USER_00_rready,
  ULP_M_AXI_CTRL_USER_00_rresp,
  ULP_M_AXI_CTRL_USER_00_rvalid,
  ULP_M_AXI_CTRL_USER_00_wdata,
  ULP_M_AXI_CTRL_USER_00_wready,
  ULP_M_AXI_CTRL_USER_00_wstrb,
  ULP_M_AXI_CTRL_USER_00_wvalid,
  ULP_M_AXI_CTRL_USER_01_araddr,
  ULP_M_AXI_CTRL_USER_01_arprot,
  ULP_M_AXI_CTRL_USER_01_arready,
  ULP_M_AXI_CTRL_USER_01_arvalid,
  ULP_M_AXI_CTRL_USER_01_awaddr,
  ULP_M_AXI_CTRL_USER_01_awprot,
  ULP_M_AXI_CTRL_USER_01_awready,
  ULP_M_AXI_CTRL_USER_01_awvalid,
  ULP_M_AXI_CTRL_USER_01_bready,
  ULP_M_AXI_CTRL_USER_01_bresp,
  ULP_M_AXI_CTRL_USER_01_bvalid,
  ULP_M_AXI_CTRL_USER_01_rdata,
  ULP_M_AXI_CTRL_USER_01_rready,
  ULP_M_AXI_CTRL_USER_01_rresp,
  ULP_M_AXI_CTRL_USER_01_rvalid,
  ULP_M_AXI_CTRL_USER_01_wdata,
  ULP_M_AXI_CTRL_USER_01_wready,
  ULP_M_AXI_CTRL_USER_01_wstrb,
  ULP_M_AXI_CTRL_USER_01_wvalid,
  ULP_M_AXI_CTRL_USER_02_araddr,
  ULP_M_AXI_CTRL_USER_02_arprot,
  ULP_M_AXI_CTRL_USER_02_arready,
  ULP_M_AXI_CTRL_USER_02_arvalid,
  ULP_M_AXI_CTRL_USER_02_awaddr,
  ULP_M_AXI_CTRL_USER_02_awprot,
  ULP_M_AXI_CTRL_USER_02_awready,
  ULP_M_AXI_CTRL_USER_02_awvalid,
  ULP_M_AXI_CTRL_USER_02_bready,
  ULP_M_AXI_CTRL_USER_02_bresp,
  ULP_M_AXI_CTRL_USER_02_bvalid,
  ULP_M_AXI_CTRL_USER_02_rdata,
  ULP_M_AXI_CTRL_USER_02_rready,
  ULP_M_AXI_CTRL_USER_02_rresp,
  ULP_M_AXI_CTRL_USER_02_rvalid,
  ULP_M_AXI_CTRL_USER_02_wdata,
  ULP_M_AXI_CTRL_USER_02_wready,
  ULP_M_AXI_CTRL_USER_02_wstrb,
  ULP_M_AXI_CTRL_USER_02_wvalid,
  ULP_M_AXI_DATA_H2C_00_araddr,
  ULP_M_AXI_DATA_H2C_00_arburst,
  ULP_M_AXI_DATA_H2C_00_arcache,
  ULP_M_AXI_DATA_H2C_00_arid,
  ULP_M_AXI_DATA_H2C_00_arlen,
  ULP_M_AXI_DATA_H2C_00_arlock,
  ULP_M_AXI_DATA_H2C_00_arprot,
  ULP_M_AXI_DATA_H2C_00_arready,
  ULP_M_AXI_DATA_H2C_00_arvalid,
  ULP_M_AXI_DATA_H2C_00_awaddr,
  ULP_M_AXI_DATA_H2C_00_awburst,
  ULP_M_AXI_DATA_H2C_00_awcache,
  ULP_M_AXI_DATA_H2C_00_awid,
  ULP_M_AXI_DATA_H2C_00_awlen,
  ULP_M_AXI_DATA_H2C_00_awlock,
  ULP_M_AXI_DATA_H2C_00_awprot,
  ULP_M_AXI_DATA_H2C_00_awready,
  ULP_M_AXI_DATA_H2C_00_awvalid,
  ULP_M_AXI_DATA_H2C_00_bid,
  ULP_M_AXI_DATA_H2C_00_bready,
  ULP_M_AXI_DATA_H2C_00_bresp,
  ULP_M_AXI_DATA_H2C_00_bvalid,
  ULP_M_AXI_DATA_H2C_00_rdata,
  ULP_M_AXI_DATA_H2C_00_rid,
  ULP_M_AXI_DATA_H2C_00_rlast,
  ULP_M_AXI_DATA_H2C_00_rready,
  ULP_M_AXI_DATA_H2C_00_rresp,
  ULP_M_AXI_DATA_H2C_00_rvalid,
  ULP_M_AXI_DATA_H2C_00_wdata,
  ULP_M_AXI_DATA_H2C_00_wlast,
  ULP_M_AXI_DATA_H2C_00_wready,
  ULP_M_AXI_DATA_H2C_00_wstrb,
  ULP_M_AXI_DATA_H2C_00_wvalid,
  ULP_M_AXI_DATA_H2C_01_araddr,
  ULP_M_AXI_DATA_H2C_01_arburst,
  ULP_M_AXI_DATA_H2C_01_arcache,
  ULP_M_AXI_DATA_H2C_01_arid,
  ULP_M_AXI_DATA_H2C_01_arlen,
  ULP_M_AXI_DATA_H2C_01_arlock,
  ULP_M_AXI_DATA_H2C_01_arprot,
  ULP_M_AXI_DATA_H2C_01_arready,
  ULP_M_AXI_DATA_H2C_01_arvalid,
  ULP_M_AXI_DATA_H2C_01_awaddr,
  ULP_M_AXI_DATA_H2C_01_awburst,
  ULP_M_AXI_DATA_H2C_01_awcache,
  ULP_M_AXI_DATA_H2C_01_awid,
  ULP_M_AXI_DATA_H2C_01_awlen,
  ULP_M_AXI_DATA_H2C_01_awlock,
  ULP_M_AXI_DATA_H2C_01_awprot,
  ULP_M_AXI_DATA_H2C_01_awready,
  ULP_M_AXI_DATA_H2C_01_awvalid,
  ULP_M_AXI_DATA_H2C_01_bid,
  ULP_M_AXI_DATA_H2C_01_bready,
  ULP_M_AXI_DATA_H2C_01_bresp,
  ULP_M_AXI_DATA_H2C_01_bvalid,
  ULP_M_AXI_DATA_H2C_01_rdata,
  ULP_M_AXI_DATA_H2C_01_rid,
  ULP_M_AXI_DATA_H2C_01_rlast,
  ULP_M_AXI_DATA_H2C_01_rready,
  ULP_M_AXI_DATA_H2C_01_rresp,
  ULP_M_AXI_DATA_H2C_01_rvalid,
  ULP_M_AXI_DATA_H2C_01_wdata,
  ULP_M_AXI_DATA_H2C_01_wlast,
  ULP_M_AXI_DATA_H2C_01_wready,
  ULP_M_AXI_DATA_H2C_01_wstrb,
  ULP_M_AXI_DATA_H2C_01_wvalid,
  ULP_M_AXI_DATA_H2C_02_araddr,
  ULP_M_AXI_DATA_H2C_02_arburst,
  ULP_M_AXI_DATA_H2C_02_arcache,
  ULP_M_AXI_DATA_H2C_02_arlen,
  ULP_M_AXI_DATA_H2C_02_arlock,
  ULP_M_AXI_DATA_H2C_02_arprot,
  ULP_M_AXI_DATA_H2C_02_arready,
  ULP_M_AXI_DATA_H2C_02_arvalid,
  ULP_M_AXI_DATA_H2C_02_awaddr,
  ULP_M_AXI_DATA_H2C_02_awburst,
  ULP_M_AXI_DATA_H2C_02_awcache,
  ULP_M_AXI_DATA_H2C_02_awlen,
  ULP_M_AXI_DATA_H2C_02_awlock,
  ULP_M_AXI_DATA_H2C_02_awprot,
  ULP_M_AXI_DATA_H2C_02_awready,
  ULP_M_AXI_DATA_H2C_02_awvalid,
  ULP_M_AXI_DATA_H2C_02_bready,
  ULP_M_AXI_DATA_H2C_02_bresp,
  ULP_M_AXI_DATA_H2C_02_bvalid,
  ULP_M_AXI_DATA_H2C_02_rdata,
  ULP_M_AXI_DATA_H2C_02_rlast,
  ULP_M_AXI_DATA_H2C_02_rready,
  ULP_M_AXI_DATA_H2C_02_rresp,
  ULP_M_AXI_DATA_H2C_02_rvalid,
  ULP_M_AXI_DATA_H2C_02_wdata,
  ULP_M_AXI_DATA_H2C_02_wlast,
  ULP_M_AXI_DATA_H2C_02_wready,
  ULP_M_AXI_DATA_H2C_02_wstrb,
  ULP_M_AXI_DATA_H2C_02_wvalid,
  ULP_M_AXI_DATA_H2C_03_araddr,
  ULP_M_AXI_DATA_H2C_03_arburst,
  ULP_M_AXI_DATA_H2C_03_arcache,
  ULP_M_AXI_DATA_H2C_03_arid,
  ULP_M_AXI_DATA_H2C_03_arlen,
  ULP_M_AXI_DATA_H2C_03_arlock,
  ULP_M_AXI_DATA_H2C_03_arprot,
  ULP_M_AXI_DATA_H2C_03_arready,
  ULP_M_AXI_DATA_H2C_03_arvalid,
  ULP_M_AXI_DATA_H2C_03_awaddr,
  ULP_M_AXI_DATA_H2C_03_awburst,
  ULP_M_AXI_DATA_H2C_03_awcache,
  ULP_M_AXI_DATA_H2C_03_awid,
  ULP_M_AXI_DATA_H2C_03_awlen,
  ULP_M_AXI_DATA_H2C_03_awlock,
  ULP_M_AXI_DATA_H2C_03_awprot,
  ULP_M_AXI_DATA_H2C_03_awready,
  ULP_M_AXI_DATA_H2C_03_awvalid,
  ULP_M_AXI_DATA_H2C_03_bid,
  ULP_M_AXI_DATA_H2C_03_bready,
  ULP_M_AXI_DATA_H2C_03_bresp,
  ULP_M_AXI_DATA_H2C_03_bvalid,
  ULP_M_AXI_DATA_H2C_03_rdata,
  ULP_M_AXI_DATA_H2C_03_rid,
  ULP_M_AXI_DATA_H2C_03_rlast,
  ULP_M_AXI_DATA_H2C_03_rready,
  ULP_M_AXI_DATA_H2C_03_rresp,
  ULP_M_AXI_DATA_H2C_03_rvalid,
  ULP_M_AXI_DATA_H2C_03_wdata,
  ULP_M_AXI_DATA_H2C_03_wlast,
  ULP_M_AXI_DATA_H2C_03_wready,
  ULP_M_AXI_DATA_H2C_03_wstrb,
  ULP_M_AXI_DATA_H2C_03_wvalid,
  blp_m_data_dna_from_ulp_00,
  blp_m_data_memory_calib_complete_00,
  blp_m_irq_cu_00,
  blp_s_aclk_ctrl_00,
  blp_s_aclk_kernel2_ref_clk_00,
  blp_s_aclk_kernel_ref_clk_00,
  blp_s_aclk_pcie_00,
  blp_s_aresetn_ctrl_00,
  blp_s_aresetn_kernel_ref_clk_00,
  blp_s_aresetn_pcie_00,
  blp_s_data_clkwiz_kernel_clk_out1_locked_00,
  blp_s_data_dout_dna_00,
  blp_s_data_perstn_out_00,
  blp_s_data_slice_pr_reset_to_ulp_00,
  ulp_m_aclk_ctrl_00,
  ulp_m_aclk_kernel2_ref_clk_00,
  ulp_m_aclk_kernel_ref_clk_00,
  ulp_m_aclk_pcie_00,
  ulp_m_aresetn_ctrl_00,
  ulp_m_aresetn_kernel_ref_clk_00,
  ulp_m_aresetn_pcie_00,
  ulp_m_data_clkwiz_kernel_clk_out1_locked_00,
  ulp_m_data_dout_dna_00,
  ulp_m_data_perstn_out_00,
  ulp_m_data_slice_pr_reset_to_ulp_00,
  ulp_s_data_dna_from_ulp_00,
  ulp_s_data_memory_calib_complete_00,
  ulp_s_irq_cu_00
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR" *)
input wire [24 : 0] BLP_S_AXI_CTRL_USER_00_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT" *)
input wire [2 : 0] BLP_S_AXI_CTRL_USER_00_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY" *)
output wire BLP_S_AXI_CTRL_USER_00_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID" *)
input wire BLP_S_AXI_CTRL_USER_00_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR" *)
input wire [24 : 0] BLP_S_AXI_CTRL_USER_00_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT" *)
input wire [2 : 0] BLP_S_AXI_CTRL_USER_00_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY" *)
output wire BLP_S_AXI_CTRL_USER_00_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID" *)
input wire BLP_S_AXI_CTRL_USER_00_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY" *)
input wire BLP_S_AXI_CTRL_USER_00_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP" *)
output wire [1 : 0] BLP_S_AXI_CTRL_USER_00_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID" *)
output wire BLP_S_AXI_CTRL_USER_00_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA" *)
output wire [31 : 0] BLP_S_AXI_CTRL_USER_00_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY" *)
input wire BLP_S_AXI_CTRL_USER_00_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP" *)
output wire [1 : 0] BLP_S_AXI_CTRL_USER_00_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID" *)
output wire BLP_S_AXI_CTRL_USER_00_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA" *)
input wire [31 : 0] BLP_S_AXI_CTRL_USER_00_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY" *)
output wire BLP_S_AXI_CTRL_USER_00_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB" *)
input wire [3 : 0] BLP_S_AXI_CTRL_USER_00_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, WUSER_WIDTH 0, FREQ_HZ 50000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THRE\
ADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID" *)
input wire BLP_S_AXI_CTRL_USER_00_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARADDR" *)
input wire [24 : 0] BLP_S_AXI_CTRL_USER_01_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARPROT" *)
input wire [2 : 0] BLP_S_AXI_CTRL_USER_01_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARREADY" *)
output wire BLP_S_AXI_CTRL_USER_01_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARVALID" *)
input wire BLP_S_AXI_CTRL_USER_01_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWADDR" *)
input wire [24 : 0] BLP_S_AXI_CTRL_USER_01_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWPROT" *)
input wire [2 : 0] BLP_S_AXI_CTRL_USER_01_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWREADY" *)
output wire BLP_S_AXI_CTRL_USER_01_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWVALID" *)
input wire BLP_S_AXI_CTRL_USER_01_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BREADY" *)
input wire BLP_S_AXI_CTRL_USER_01_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BRESP" *)
output wire [1 : 0] BLP_S_AXI_CTRL_USER_01_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BVALID" *)
output wire BLP_S_AXI_CTRL_USER_01_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RDATA" *)
output wire [31 : 0] BLP_S_AXI_CTRL_USER_01_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RREADY" *)
input wire BLP_S_AXI_CTRL_USER_01_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RRESP" *)
output wire [1 : 0] BLP_S_AXI_CTRL_USER_01_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RVALID" *)
output wire BLP_S_AXI_CTRL_USER_01_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WDATA" *)
input wire [31 : 0] BLP_S_AXI_CTRL_USER_01_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WREADY" *)
output wire BLP_S_AXI_CTRL_USER_01_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WSTRB" *)
input wire [3 : 0] BLP_S_AXI_CTRL_USER_01_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, WUSER_WIDTH 0, FREQ_HZ 50000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THRE\
ADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WVALID" *)
input wire BLP_S_AXI_CTRL_USER_01_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARADDR" *)
input wire [24 : 0] BLP_S_AXI_CTRL_USER_02_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARPROT" *)
input wire [2 : 0] BLP_S_AXI_CTRL_USER_02_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARREADY" *)
output wire BLP_S_AXI_CTRL_USER_02_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARVALID" *)
input wire BLP_S_AXI_CTRL_USER_02_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWADDR" *)
input wire [24 : 0] BLP_S_AXI_CTRL_USER_02_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWPROT" *)
input wire [2 : 0] BLP_S_AXI_CTRL_USER_02_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWREADY" *)
output wire BLP_S_AXI_CTRL_USER_02_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWVALID" *)
input wire BLP_S_AXI_CTRL_USER_02_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BREADY" *)
input wire BLP_S_AXI_CTRL_USER_02_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BRESP" *)
output wire [1 : 0] BLP_S_AXI_CTRL_USER_02_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BVALID" *)
output wire BLP_S_AXI_CTRL_USER_02_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RDATA" *)
output wire [31 : 0] BLP_S_AXI_CTRL_USER_02_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RREADY" *)
input wire BLP_S_AXI_CTRL_USER_02_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RRESP" *)
output wire [1 : 0] BLP_S_AXI_CTRL_USER_02_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RVALID" *)
output wire BLP_S_AXI_CTRL_USER_02_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WDATA" *)
input wire [31 : 0] BLP_S_AXI_CTRL_USER_02_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WREADY" *)
output wire BLP_S_AXI_CTRL_USER_02_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WSTRB" *)
input wire [3 : 0] BLP_S_AXI_CTRL_USER_02_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_02, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, WUSER_WIDTH 0, FREQ_HZ 250000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_pcie_00, NUM_READ_THR\
EADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WVALID" *)
input wire BLP_S_AXI_CTRL_USER_02_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR" *)
input wire [38 : 0] BLP_S_AXI_DATA_H2C_00_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARBURST" *)
input wire [1 : 0] BLP_S_AXI_DATA_H2C_00_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARCACHE" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_00_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARID" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_00_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLEN" *)
input wire [7 : 0] BLP_S_AXI_DATA_H2C_00_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLOCK" *)
input wire [0 : 0] BLP_S_AXI_DATA_H2C_00_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARPROT" *)
input wire [2 : 0] BLP_S_AXI_DATA_H2C_00_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARREADY" *)
output wire BLP_S_AXI_DATA_H2C_00_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARVALID" *)
input wire BLP_S_AXI_DATA_H2C_00_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWADDR" *)
input wire [38 : 0] BLP_S_AXI_DATA_H2C_00_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWBURST" *)
input wire [1 : 0] BLP_S_AXI_DATA_H2C_00_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWCACHE" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_00_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWID" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_00_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLEN" *)
input wire [7 : 0] BLP_S_AXI_DATA_H2C_00_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLOCK" *)
input wire [0 : 0] BLP_S_AXI_DATA_H2C_00_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWPROT" *)
input wire [2 : 0] BLP_S_AXI_DATA_H2C_00_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWREADY" *)
output wire BLP_S_AXI_DATA_H2C_00_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWVALID" *)
input wire BLP_S_AXI_DATA_H2C_00_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BID" *)
output wire [3 : 0] BLP_S_AXI_DATA_H2C_00_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BREADY" *)
input wire BLP_S_AXI_DATA_H2C_00_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BRESP" *)
output wire [1 : 0] BLP_S_AXI_DATA_H2C_00_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BVALID" *)
output wire BLP_S_AXI_DATA_H2C_00_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RDATA" *)
output wire [511 : 0] BLP_S_AXI_DATA_H2C_00_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RID" *)
output wire [3 : 0] BLP_S_AXI_DATA_H2C_00_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RLAST" *)
output wire BLP_S_AXI_DATA_H2C_00_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RREADY" *)
input wire BLP_S_AXI_DATA_H2C_00_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RRESP" *)
output wire [1 : 0] BLP_S_AXI_DATA_H2C_00_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RVALID" *)
output wire BLP_S_AXI_DATA_H2C_00_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WDATA" *)
input wire [511 : 0] BLP_S_AXI_DATA_H2C_00_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WLAST" *)
input wire BLP_S_AXI_DATA_H2C_00_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WREADY" *)
output wire BLP_S_AXI_DATA_H2C_00_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WSTRB" *)
input wire [63 : 0] BLP_S_AXI_DATA_H2C_00_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 512, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER\
_BYTE 0, WUSER_WIDTH 0, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WVALID" *)
input wire BLP_S_AXI_DATA_H2C_00_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARADDR" *)
input wire [39 : 0] BLP_S_AXI_DATA_H2C_01_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARBURST" *)
input wire [1 : 0] BLP_S_AXI_DATA_H2C_01_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARCACHE" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_01_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARID" *)
input wire [1 : 0] BLP_S_AXI_DATA_H2C_01_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARLEN" *)
input wire [7 : 0] BLP_S_AXI_DATA_H2C_01_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARLOCK" *)
input wire [0 : 0] BLP_S_AXI_DATA_H2C_01_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARPROT" *)
input wire [2 : 0] BLP_S_AXI_DATA_H2C_01_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARREADY" *)
output wire BLP_S_AXI_DATA_H2C_01_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARVALID" *)
input wire BLP_S_AXI_DATA_H2C_01_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWADDR" *)
input wire [39 : 0] BLP_S_AXI_DATA_H2C_01_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWBURST" *)
input wire [1 : 0] BLP_S_AXI_DATA_H2C_01_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWCACHE" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_01_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWID" *)
input wire [1 : 0] BLP_S_AXI_DATA_H2C_01_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWLEN" *)
input wire [7 : 0] BLP_S_AXI_DATA_H2C_01_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWLOCK" *)
input wire [0 : 0] BLP_S_AXI_DATA_H2C_01_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWPROT" *)
input wire [2 : 0] BLP_S_AXI_DATA_H2C_01_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWREADY" *)
output wire BLP_S_AXI_DATA_H2C_01_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWVALID" *)
input wire BLP_S_AXI_DATA_H2C_01_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BID" *)
output wire [1 : 0] BLP_S_AXI_DATA_H2C_01_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BREADY" *)
input wire BLP_S_AXI_DATA_H2C_01_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BRESP" *)
output wire [1 : 0] BLP_S_AXI_DATA_H2C_01_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BVALID" *)
output wire BLP_S_AXI_DATA_H2C_01_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RDATA" *)
output wire [63 : 0] BLP_S_AXI_DATA_H2C_01_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RID" *)
output wire [1 : 0] BLP_S_AXI_DATA_H2C_01_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RLAST" *)
output wire BLP_S_AXI_DATA_H2C_01_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RREADY" *)
input wire BLP_S_AXI_DATA_H2C_01_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RRESP" *)
output wire [1 : 0] BLP_S_AXI_DATA_H2C_01_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RVALID" *)
output wire BLP_S_AXI_DATA_H2C_01_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WDATA" *)
input wire [63 : 0] BLP_S_AXI_DATA_H2C_01_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WLAST" *)
input wire BLP_S_AXI_DATA_H2C_01_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WREADY" *)
output wire BLP_S_AXI_DATA_H2C_01_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WSTRB" *)
input wire [7 : 0] BLP_S_AXI_DATA_H2C_01_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_01, ADDR_WIDTH 40, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_\
BYTE 0, WUSER_WIDTH 0, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WVALID" *)
input wire BLP_S_AXI_DATA_H2C_01_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARADDR" *)
input wire [31 : 0] BLP_S_AXI_DATA_H2C_02_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARBURST" *)
input wire [1 : 0] BLP_S_AXI_DATA_H2C_02_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARCACHE" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_02_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARLEN" *)
input wire [7 : 0] BLP_S_AXI_DATA_H2C_02_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARLOCK" *)
input wire [0 : 0] BLP_S_AXI_DATA_H2C_02_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARPROT" *)
input wire [2 : 0] BLP_S_AXI_DATA_H2C_02_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARREADY" *)
output wire BLP_S_AXI_DATA_H2C_02_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARVALID" *)
input wire BLP_S_AXI_DATA_H2C_02_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWADDR" *)
input wire [31 : 0] BLP_S_AXI_DATA_H2C_02_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWBURST" *)
input wire [1 : 0] BLP_S_AXI_DATA_H2C_02_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWCACHE" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_02_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWLEN" *)
input wire [7 : 0] BLP_S_AXI_DATA_H2C_02_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWLOCK" *)
input wire [0 : 0] BLP_S_AXI_DATA_H2C_02_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWPROT" *)
input wire [2 : 0] BLP_S_AXI_DATA_H2C_02_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWREADY" *)
output wire BLP_S_AXI_DATA_H2C_02_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWVALID" *)
input wire BLP_S_AXI_DATA_H2C_02_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 BREADY" *)
input wire BLP_S_AXI_DATA_H2C_02_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 BRESP" *)
output wire [1 : 0] BLP_S_AXI_DATA_H2C_02_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 BVALID" *)
output wire BLP_S_AXI_DATA_H2C_02_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RDATA" *)
output wire [31 : 0] BLP_S_AXI_DATA_H2C_02_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RLAST" *)
output wire BLP_S_AXI_DATA_H2C_02_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RREADY" *)
input wire BLP_S_AXI_DATA_H2C_02_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RRESP" *)
output wire [1 : 0] BLP_S_AXI_DATA_H2C_02_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RVALID" *)
output wire BLP_S_AXI_DATA_H2C_02_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WDATA" *)
input wire [31 : 0] BLP_S_AXI_DATA_H2C_02_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WLAST" *)
input wire BLP_S_AXI_DATA_H2C_02_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WREADY" *)
output wire BLP_S_AXI_DATA_H2C_02_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WSTRB" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_02_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_02, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_\
BYTE 0, WUSER_WIDTH 0, FREQ_HZ 50000000, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WVALID" *)
input wire BLP_S_AXI_DATA_H2C_02_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARADDR" *)
input wire [38 : 0] BLP_S_AXI_DATA_H2C_03_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARBURST" *)
input wire [1 : 0] BLP_S_AXI_DATA_H2C_03_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARCACHE" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_03_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARID" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_03_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARLEN" *)
input wire [7 : 0] BLP_S_AXI_DATA_H2C_03_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARLOCK" *)
input wire [0 : 0] BLP_S_AXI_DATA_H2C_03_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARPROT" *)
input wire [2 : 0] BLP_S_AXI_DATA_H2C_03_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARREADY" *)
output wire BLP_S_AXI_DATA_H2C_03_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARVALID" *)
input wire BLP_S_AXI_DATA_H2C_03_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWADDR" *)
input wire [38 : 0] BLP_S_AXI_DATA_H2C_03_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWBURST" *)
input wire [1 : 0] BLP_S_AXI_DATA_H2C_03_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWCACHE" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_03_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWID" *)
input wire [3 : 0] BLP_S_AXI_DATA_H2C_03_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWLEN" *)
input wire [7 : 0] BLP_S_AXI_DATA_H2C_03_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWLOCK" *)
input wire [0 : 0] BLP_S_AXI_DATA_H2C_03_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWPROT" *)
input wire [2 : 0] BLP_S_AXI_DATA_H2C_03_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWREADY" *)
output wire BLP_S_AXI_DATA_H2C_03_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWVALID" *)
input wire BLP_S_AXI_DATA_H2C_03_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BID" *)
output wire [3 : 0] BLP_S_AXI_DATA_H2C_03_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BREADY" *)
input wire BLP_S_AXI_DATA_H2C_03_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BRESP" *)
output wire [1 : 0] BLP_S_AXI_DATA_H2C_03_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BVALID" *)
output wire BLP_S_AXI_DATA_H2C_03_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RDATA" *)
output wire [127 : 0] BLP_S_AXI_DATA_H2C_03_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RID" *)
output wire [3 : 0] BLP_S_AXI_DATA_H2C_03_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RLAST" *)
output wire BLP_S_AXI_DATA_H2C_03_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RREADY" *)
input wire BLP_S_AXI_DATA_H2C_03_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RRESP" *)
output wire [1 : 0] BLP_S_AXI_DATA_H2C_03_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RVALID" *)
output wire BLP_S_AXI_DATA_H2C_03_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WDATA" *)
input wire [127 : 0] BLP_S_AXI_DATA_H2C_03_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WLAST" *)
input wire BLP_S_AXI_DATA_H2C_03_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WREADY" *)
output wire BLP_S_AXI_DATA_H2C_03_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WSTRB" *)
input wire [15 : 0] BLP_S_AXI_DATA_H2C_03_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_03, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 128, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER\
_BYTE 0, WUSER_WIDTH 0, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WVALID" *)
input wire BLP_S_AXI_DATA_H2C_03_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARADDR" *)
output wire [24 : 0] ULP_M_AXI_CTRL_USER_00_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARPROT" *)
output wire [2 : 0] ULP_M_AXI_CTRL_USER_00_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARREADY" *)
input wire ULP_M_AXI_CTRL_USER_00_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARVALID" *)
output wire ULP_M_AXI_CTRL_USER_00_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWADDR" *)
output wire [24 : 0] ULP_M_AXI_CTRL_USER_00_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWPROT" *)
output wire [2 : 0] ULP_M_AXI_CTRL_USER_00_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWREADY" *)
input wire ULP_M_AXI_CTRL_USER_00_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWVALID" *)
output wire ULP_M_AXI_CTRL_USER_00_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BREADY" *)
output wire ULP_M_AXI_CTRL_USER_00_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BRESP" *)
input wire [1 : 0] ULP_M_AXI_CTRL_USER_00_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BVALID" *)
input wire ULP_M_AXI_CTRL_USER_00_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RDATA" *)
input wire [31 : 0] ULP_M_AXI_CTRL_USER_00_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RREADY" *)
output wire ULP_M_AXI_CTRL_USER_00_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RRESP" *)
input wire [1 : 0] ULP_M_AXI_CTRL_USER_00_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RVALID" *)
input wire ULP_M_AXI_CTRL_USER_00_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WDATA" *)
output wire [31 : 0] ULP_M_AXI_CTRL_USER_00_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WREADY" *)
input wire ULP_M_AXI_CTRL_USER_00_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WSTRB" *)
output wire [3 : 0] ULP_M_AXI_CTRL_USER_00_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, WUSER_WIDTH 0, FREQ_HZ 50000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THRE\
ADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WVALID" *)
output wire ULP_M_AXI_CTRL_USER_00_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARADDR" *)
output wire [24 : 0] ULP_M_AXI_CTRL_USER_01_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARPROT" *)
output wire [2 : 0] ULP_M_AXI_CTRL_USER_01_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARREADY" *)
input wire ULP_M_AXI_CTRL_USER_01_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARVALID" *)
output wire ULP_M_AXI_CTRL_USER_01_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWADDR" *)
output wire [24 : 0] ULP_M_AXI_CTRL_USER_01_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWPROT" *)
output wire [2 : 0] ULP_M_AXI_CTRL_USER_01_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWREADY" *)
input wire ULP_M_AXI_CTRL_USER_01_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWVALID" *)
output wire ULP_M_AXI_CTRL_USER_01_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 BREADY" *)
output wire ULP_M_AXI_CTRL_USER_01_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 BRESP" *)
input wire [1 : 0] ULP_M_AXI_CTRL_USER_01_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 BVALID" *)
input wire ULP_M_AXI_CTRL_USER_01_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RDATA" *)
input wire [31 : 0] ULP_M_AXI_CTRL_USER_01_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RREADY" *)
output wire ULP_M_AXI_CTRL_USER_01_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RRESP" *)
input wire [1 : 0] ULP_M_AXI_CTRL_USER_01_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RVALID" *)
input wire ULP_M_AXI_CTRL_USER_01_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WDATA" *)
output wire [31 : 0] ULP_M_AXI_CTRL_USER_01_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WREADY" *)
input wire ULP_M_AXI_CTRL_USER_01_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WSTRB" *)
output wire [3 : 0] ULP_M_AXI_CTRL_USER_01_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, WUSER_WIDTH 0, FREQ_HZ 50000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THRE\
ADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WVALID" *)
output wire ULP_M_AXI_CTRL_USER_01_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 ARADDR" *)
output wire [24 : 0] ULP_M_AXI_CTRL_USER_02_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 ARPROT" *)
output wire [2 : 0] ULP_M_AXI_CTRL_USER_02_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 ARREADY" *)
input wire ULP_M_AXI_CTRL_USER_02_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 ARVALID" *)
output wire ULP_M_AXI_CTRL_USER_02_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 AWADDR" *)
output wire [24 : 0] ULP_M_AXI_CTRL_USER_02_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 AWPROT" *)
output wire [2 : 0] ULP_M_AXI_CTRL_USER_02_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 AWREADY" *)
input wire ULP_M_AXI_CTRL_USER_02_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 AWVALID" *)
output wire ULP_M_AXI_CTRL_USER_02_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 BREADY" *)
output wire ULP_M_AXI_CTRL_USER_02_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 BRESP" *)
input wire [1 : 0] ULP_M_AXI_CTRL_USER_02_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 BVALID" *)
input wire ULP_M_AXI_CTRL_USER_02_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 RDATA" *)
input wire [31 : 0] ULP_M_AXI_CTRL_USER_02_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 RREADY" *)
output wire ULP_M_AXI_CTRL_USER_02_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 RRESP" *)
input wire [1 : 0] ULP_M_AXI_CTRL_USER_02_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 RVALID" *)
input wire ULP_M_AXI_CTRL_USER_02_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 WDATA" *)
output wire [31 : 0] ULP_M_AXI_CTRL_USER_02_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 WREADY" *)
input wire ULP_M_AXI_CTRL_USER_02_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 WSTRB" *)
output wire [3 : 0] ULP_M_AXI_CTRL_USER_02_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_02, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, WUSER_WIDTH 0, FREQ_HZ 250000000, ID_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_pcie_00, NUM_READ_THR\
EADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 WVALID" *)
output wire ULP_M_AXI_CTRL_USER_02_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARADDR" *)
output wire [38 : 0] ULP_M_AXI_DATA_H2C_00_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARBURST" *)
output wire [1 : 0] ULP_M_AXI_DATA_H2C_00_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARCACHE" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_00_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARID" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_00_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLEN" *)
output wire [7 : 0] ULP_M_AXI_DATA_H2C_00_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLOCK" *)
output wire [0 : 0] ULP_M_AXI_DATA_H2C_00_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARPROT" *)
output wire [2 : 0] ULP_M_AXI_DATA_H2C_00_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARREADY" *)
input wire ULP_M_AXI_DATA_H2C_00_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARVALID" *)
output wire ULP_M_AXI_DATA_H2C_00_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWADDR" *)
output wire [38 : 0] ULP_M_AXI_DATA_H2C_00_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWBURST" *)
output wire [1 : 0] ULP_M_AXI_DATA_H2C_00_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWCACHE" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_00_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWID" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_00_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLEN" *)
output wire [7 : 0] ULP_M_AXI_DATA_H2C_00_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLOCK" *)
output wire [0 : 0] ULP_M_AXI_DATA_H2C_00_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWPROT" *)
output wire [2 : 0] ULP_M_AXI_DATA_H2C_00_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWREADY" *)
input wire ULP_M_AXI_DATA_H2C_00_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWVALID" *)
output wire ULP_M_AXI_DATA_H2C_00_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BID" *)
input wire [3 : 0] ULP_M_AXI_DATA_H2C_00_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BREADY" *)
output wire ULP_M_AXI_DATA_H2C_00_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BRESP" *)
input wire [1 : 0] ULP_M_AXI_DATA_H2C_00_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BVALID" *)
input wire ULP_M_AXI_DATA_H2C_00_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RDATA" *)
input wire [511 : 0] ULP_M_AXI_DATA_H2C_00_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RID" *)
input wire [3 : 0] ULP_M_AXI_DATA_H2C_00_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RLAST" *)
input wire ULP_M_AXI_DATA_H2C_00_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RREADY" *)
output wire ULP_M_AXI_DATA_H2C_00_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RRESP" *)
input wire [1 : 0] ULP_M_AXI_DATA_H2C_00_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RVALID" *)
input wire ULP_M_AXI_DATA_H2C_00_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WDATA" *)
output wire [511 : 0] ULP_M_AXI_DATA_H2C_00_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WLAST" *)
output wire ULP_M_AXI_DATA_H2C_00_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WREADY" *)
input wire ULP_M_AXI_DATA_H2C_00_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WSTRB" *)
output wire [63 : 0] ULP_M_AXI_DATA_H2C_00_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_00, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 512, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER\
_BYTE 0, WUSER_WIDTH 0, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WVALID" *)
output wire ULP_M_AXI_DATA_H2C_00_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARADDR" *)
output wire [39 : 0] ULP_M_AXI_DATA_H2C_01_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARBURST" *)
output wire [1 : 0] ULP_M_AXI_DATA_H2C_01_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARCACHE" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_01_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARID" *)
output wire [1 : 0] ULP_M_AXI_DATA_H2C_01_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARLEN" *)
output wire [7 : 0] ULP_M_AXI_DATA_H2C_01_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARLOCK" *)
output wire [0 : 0] ULP_M_AXI_DATA_H2C_01_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARPROT" *)
output wire [2 : 0] ULP_M_AXI_DATA_H2C_01_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARREADY" *)
input wire ULP_M_AXI_DATA_H2C_01_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARVALID" *)
output wire ULP_M_AXI_DATA_H2C_01_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWADDR" *)
output wire [39 : 0] ULP_M_AXI_DATA_H2C_01_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWBURST" *)
output wire [1 : 0] ULP_M_AXI_DATA_H2C_01_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWCACHE" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_01_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWID" *)
output wire [1 : 0] ULP_M_AXI_DATA_H2C_01_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWLEN" *)
output wire [7 : 0] ULP_M_AXI_DATA_H2C_01_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWLOCK" *)
output wire [0 : 0] ULP_M_AXI_DATA_H2C_01_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWPROT" *)
output wire [2 : 0] ULP_M_AXI_DATA_H2C_01_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWREADY" *)
input wire ULP_M_AXI_DATA_H2C_01_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWVALID" *)
output wire ULP_M_AXI_DATA_H2C_01_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 BID" *)
input wire [1 : 0] ULP_M_AXI_DATA_H2C_01_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 BREADY" *)
output wire ULP_M_AXI_DATA_H2C_01_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 BRESP" *)
input wire [1 : 0] ULP_M_AXI_DATA_H2C_01_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 BVALID" *)
input wire ULP_M_AXI_DATA_H2C_01_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 RDATA" *)
input wire [63 : 0] ULP_M_AXI_DATA_H2C_01_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 RID" *)
input wire [1 : 0] ULP_M_AXI_DATA_H2C_01_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 RLAST" *)
input wire ULP_M_AXI_DATA_H2C_01_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 RREADY" *)
output wire ULP_M_AXI_DATA_H2C_01_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 RRESP" *)
input wire [1 : 0] ULP_M_AXI_DATA_H2C_01_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 RVALID" *)
input wire ULP_M_AXI_DATA_H2C_01_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 WDATA" *)
output wire [63 : 0] ULP_M_AXI_DATA_H2C_01_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 WLAST" *)
output wire ULP_M_AXI_DATA_H2C_01_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 WREADY" *)
input wire ULP_M_AXI_DATA_H2C_01_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 WSTRB" *)
output wire [7 : 0] ULP_M_AXI_DATA_H2C_01_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_01, ADDR_WIDTH 40, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 64, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_\
BYTE 0, WUSER_WIDTH 0, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 WVALID" *)
output wire ULP_M_AXI_DATA_H2C_01_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARADDR" *)
output wire [31 : 0] ULP_M_AXI_DATA_H2C_02_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARBURST" *)
output wire [1 : 0] ULP_M_AXI_DATA_H2C_02_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARCACHE" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_02_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARLEN" *)
output wire [7 : 0] ULP_M_AXI_DATA_H2C_02_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARLOCK" *)
output wire [0 : 0] ULP_M_AXI_DATA_H2C_02_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARPROT" *)
output wire [2 : 0] ULP_M_AXI_DATA_H2C_02_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARREADY" *)
input wire ULP_M_AXI_DATA_H2C_02_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARVALID" *)
output wire ULP_M_AXI_DATA_H2C_02_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWADDR" *)
output wire [31 : 0] ULP_M_AXI_DATA_H2C_02_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWBURST" *)
output wire [1 : 0] ULP_M_AXI_DATA_H2C_02_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWCACHE" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_02_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWLEN" *)
output wire [7 : 0] ULP_M_AXI_DATA_H2C_02_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWLOCK" *)
output wire [0 : 0] ULP_M_AXI_DATA_H2C_02_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWPROT" *)
output wire [2 : 0] ULP_M_AXI_DATA_H2C_02_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWREADY" *)
input wire ULP_M_AXI_DATA_H2C_02_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWVALID" *)
output wire ULP_M_AXI_DATA_H2C_02_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 BREADY" *)
output wire ULP_M_AXI_DATA_H2C_02_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 BRESP" *)
input wire [1 : 0] ULP_M_AXI_DATA_H2C_02_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 BVALID" *)
input wire ULP_M_AXI_DATA_H2C_02_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 RDATA" *)
input wire [31 : 0] ULP_M_AXI_DATA_H2C_02_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 RLAST" *)
input wire ULP_M_AXI_DATA_H2C_02_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 RREADY" *)
output wire ULP_M_AXI_DATA_H2C_02_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 RRESP" *)
input wire [1 : 0] ULP_M_AXI_DATA_H2C_02_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 RVALID" *)
input wire ULP_M_AXI_DATA_H2C_02_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 WDATA" *)
output wire [31 : 0] ULP_M_AXI_DATA_H2C_02_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 WLAST" *)
output wire ULP_M_AXI_DATA_H2C_02_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 WREADY" *)
input wire ULP_M_AXI_DATA_H2C_02_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 WSTRB" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_02_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_02, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_\
BYTE 0, WUSER_WIDTH 0, FREQ_HZ 50000000, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 WVALID" *)
output wire ULP_M_AXI_DATA_H2C_02_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARADDR" *)
output wire [38 : 0] ULP_M_AXI_DATA_H2C_03_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARBURST" *)
output wire [1 : 0] ULP_M_AXI_DATA_H2C_03_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARCACHE" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_03_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARID" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_03_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARLEN" *)
output wire [7 : 0] ULP_M_AXI_DATA_H2C_03_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARLOCK" *)
output wire [0 : 0] ULP_M_AXI_DATA_H2C_03_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARPROT" *)
output wire [2 : 0] ULP_M_AXI_DATA_H2C_03_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARREADY" *)
input wire ULP_M_AXI_DATA_H2C_03_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARVALID" *)
output wire ULP_M_AXI_DATA_H2C_03_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWADDR" *)
output wire [38 : 0] ULP_M_AXI_DATA_H2C_03_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWBURST" *)
output wire [1 : 0] ULP_M_AXI_DATA_H2C_03_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWCACHE" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_03_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWID" *)
output wire [3 : 0] ULP_M_AXI_DATA_H2C_03_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWLEN" *)
output wire [7 : 0] ULP_M_AXI_DATA_H2C_03_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWLOCK" *)
output wire [0 : 0] ULP_M_AXI_DATA_H2C_03_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWPROT" *)
output wire [2 : 0] ULP_M_AXI_DATA_H2C_03_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWREADY" *)
input wire ULP_M_AXI_DATA_H2C_03_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWVALID" *)
output wire ULP_M_AXI_DATA_H2C_03_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 BID" *)
input wire [3 : 0] ULP_M_AXI_DATA_H2C_03_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 BREADY" *)
output wire ULP_M_AXI_DATA_H2C_03_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 BRESP" *)
input wire [1 : 0] ULP_M_AXI_DATA_H2C_03_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 BVALID" *)
input wire ULP_M_AXI_DATA_H2C_03_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 RDATA" *)
input wire [127 : 0] ULP_M_AXI_DATA_H2C_03_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 RID" *)
input wire [3 : 0] ULP_M_AXI_DATA_H2C_03_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 RLAST" *)
input wire ULP_M_AXI_DATA_H2C_03_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 RREADY" *)
output wire ULP_M_AXI_DATA_H2C_03_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 RRESP" *)
input wire [1 : 0] ULP_M_AXI_DATA_H2C_03_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 RVALID" *)
input wire ULP_M_AXI_DATA_H2C_03_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 WDATA" *)
output wire [127 : 0] ULP_M_AXI_DATA_H2C_03_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 WLAST" *)
output wire ULP_M_AXI_DATA_H2C_03_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 WREADY" *)
input wire ULP_M_AXI_DATA_H2C_03_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 WSTRB" *)
output wire [15 : 0] ULP_M_AXI_DATA_H2C_03_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_03, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 128, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT SLR0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER\
_BYTE 0, WUSER_WIDTH 0, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_pcie_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 WVALID" *)
output wire ULP_M_AXI_DATA_H2C_03_wvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_M_DATA_DNA_FROM_ULP_00, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_DNA_FROM_ULP_00 DATA" *)
output wire [2 : 0] blp_m_data_dna_from_ulp_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_M_DATA_MEMORY_CALIB_COMPLETE_00, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_MEMORY_CALIB_COMPLETE_00 DATA" *)
output wire [0 : 0] blp_m_data_memory_calib_complete_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.BLP_M_IRQ_CU_00, PORTWIDTH 128, SENSITIVITY LEVEL_HIGH" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_IRQ_CU_00 INTERRUPT" *)
output wire [127 : 0] blp_m_irq_cu_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, PHASE 0, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_CTRL_USER_01:BLP_S_AXI_DATA_H2C_02:BLP_S_DATA_SLICE_PR_RESET_TO_ULP_00:BLP_M_DATA_MEMORY_CALIB_COMPLETE_00:BLP_M_DATA_DNA_FROM_ULP_00:BLP_S_DATA_DOUT_DNA_00, ASSOCIATED_RESET blp_s_aresetn_ctrl_00, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_CTRL_00 CLK" *)
input wire blp_s_aclk_ctrl_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL2_REF_CLK_00, CLK_DOMAIN cd_kernel2_ref_clk_00, FREQ_HZ 500000000, PHASE 0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL2_REF_CLK_00 CLK" *)
input wire blp_s_aclk_kernel2_ref_clk_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_REF_CLK_00, CLK_DOMAIN cd_kernel_ref_clk_00, FREQ_HZ 300000000, PHASE 0, ASSOCIATED_BUSIF BLP_S_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00, ASSOCIATED_RESET blp_s_aresetn_kernel_ref_clk_00, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_REF_CLK_00 CLK" *)
input wire blp_s_aclk_kernel_ref_clk_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_PCIE_00, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, PHASE 0, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_02:BLP_S_AXI_DATA_H2C_00:BLP_S_AXI_DATA_H2C_01:BLP_S_AXI_DATA_H2C_03:BLP_S_DATA_PERSTN_OUT_00:BLP_M_IRQ_CU_00, ASSOCIATED_RESET blp_s_aresetn_pcie_00, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_PCIE_00 CLK" *)
input wire blp_s_aclk_pcie_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_CTRL_00, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_CTRL_00 RST" *)
input wire [0 : 0] blp_s_aresetn_ctrl_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_KERNEL_REF_CLK_00, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_KERNEL_REF_CLK_00 RST" *)
input wire [0 : 0] blp_s_aresetn_kernel_ref_clk_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_PCIE_00, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_PCIE_00 RST" *)
input wire [0 : 0] blp_s_aresetn_pcie_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00 DATA" *)
input wire [0 : 0] blp_s_data_clkwiz_kernel_clk_out1_locked_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_DOUT_DNA_00, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_DOUT_DNA_00 DATA" *)
input wire [0 : 0] blp_s_data_dout_dna_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_PERSTN_OUT_00, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_PERSTN_OUT_00 DATA" *)
input wire [2 : 0] blp_s_data_perstn_out_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_SLICE_PR_RESET_TO_ULP_00, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_SLICE_PR_RESET_TO_ULP_00 DATA" *)
input wire [1 : 0] blp_s_data_slice_pr_reset_to_ulp_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, PHASE 0, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_USER_00:ULP_M_AXI_CTRL_USER_01:ULP_M_AXI_DATA_H2C_02:ULP_M_DATA_SLICE_PR_RESET_TO_ULP_00:ULP_S_DATA_MEMORY_CALIB_COMPLETE_00:ULP_S_DATA_DNA_FROM_ULP_00:ULP_M_DATA_DOUT_DNA_00, ASSOCIATED_RESET ulp_m_aresetn_ctrl_00, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_CTRL_00 CLK" *)
output wire ulp_m_aclk_ctrl_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_KERNEL2_REF_CLK_00, CLK_DOMAIN cd_kernel2_ref_clk_00, FREQ_HZ 500000000, PHASE 0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_KERNEL2_REF_CLK_00 CLK" *)
output wire ulp_m_aclk_kernel2_ref_clk_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_KERNEL_REF_CLK_00, CLK_DOMAIN cd_kernel_ref_clk_00, FREQ_HZ 300000000, PHASE 0, ASSOCIATED_BUSIF ULP_M_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00, ASSOCIATED_RESET ulp_m_aresetn_kernel_ref_clk_00, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_KERNEL_REF_CLK_00 CLK" *)
output wire ulp_m_aclk_kernel_ref_clk_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_PCIE_00, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, PHASE 0, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_USER_02:ULP_M_AXI_DATA_H2C_00:ULP_M_AXI_DATA_H2C_01:ULP_M_AXI_DATA_H2C_03:ULP_M_DATA_PERSTN_OUT_00:ULP_S_IRQ_CU_00, ASSOCIATED_RESET ulp_m_aresetn_pcie_00, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_PCIE_00 CLK" *)
output wire ulp_m_aclk_pcie_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ULP_M_ARESETN_CTRL_00, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_CTRL_00 RST" *)
output wire [0 : 0] ulp_m_aresetn_ctrl_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ULP_M_ARESETN_KERNEL_REF_CLK_00, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_KERNEL_REF_CLK_00 RST" *)
output wire [0 : 0] ulp_m_aresetn_kernel_ref_clk_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ULP_M_ARESETN_PCIE_00, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_PCIE_00 RST" *)
output wire [0 : 0] ulp_m_aresetn_pcie_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_M_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_M_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00 DATA" *)
output wire [0 : 0] ulp_m_data_clkwiz_kernel_clk_out1_locked_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_M_DATA_DOUT_DNA_00, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_M_DATA_DOUT_DNA_00 DATA" *)
output wire [0 : 0] ulp_m_data_dout_dna_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_M_DATA_PERSTN_OUT_00, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_M_DATA_PERSTN_OUT_00 DATA" *)
output wire [2 : 0] ulp_m_data_perstn_out_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_M_DATA_SLICE_PR_RESET_TO_ULP_00, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_M_DATA_SLICE_PR_RESET_TO_ULP_00 DATA" *)
output wire [1 : 0] ulp_m_data_slice_pr_reset_to_ulp_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_S_DATA_DNA_FROM_ULP_00, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_S_DATA_DNA_FROM_ULP_00 DATA" *)
input wire [2 : 0] ulp_s_data_dna_from_ulp_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_S_DATA_MEMORY_CALIB_COMPLETE_00, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_S_DATA_MEMORY_CALIB_COMPLETE_00 DATA" *)
input wire [0 : 0] ulp_s_data_memory_calib_complete_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.ULP_S_IRQ_CU_00, PORTWIDTH 128, SENSITIVITY LEVEL_HIGH" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.ULP_S_IRQ_CU_00 INTERRUPT" *)
input wire [127 : 0] ulp_s_irq_cu_00;

  ii_level0_wire inst (
    .BLP_S_AXI_CTRL_USER_00_araddr(BLP_S_AXI_CTRL_USER_00_araddr),
    .BLP_S_AXI_CTRL_USER_00_arprot(BLP_S_AXI_CTRL_USER_00_arprot),
    .BLP_S_AXI_CTRL_USER_00_arready(BLP_S_AXI_CTRL_USER_00_arready),
    .BLP_S_AXI_CTRL_USER_00_arvalid(BLP_S_AXI_CTRL_USER_00_arvalid),
    .BLP_S_AXI_CTRL_USER_00_awaddr(BLP_S_AXI_CTRL_USER_00_awaddr),
    .BLP_S_AXI_CTRL_USER_00_awprot(BLP_S_AXI_CTRL_USER_00_awprot),
    .BLP_S_AXI_CTRL_USER_00_awready(BLP_S_AXI_CTRL_USER_00_awready),
    .BLP_S_AXI_CTRL_USER_00_awvalid(BLP_S_AXI_CTRL_USER_00_awvalid),
    .BLP_S_AXI_CTRL_USER_00_bready(BLP_S_AXI_CTRL_USER_00_bready),
    .BLP_S_AXI_CTRL_USER_00_bresp(BLP_S_AXI_CTRL_USER_00_bresp),
    .BLP_S_AXI_CTRL_USER_00_bvalid(BLP_S_AXI_CTRL_USER_00_bvalid),
    .BLP_S_AXI_CTRL_USER_00_rdata(BLP_S_AXI_CTRL_USER_00_rdata),
    .BLP_S_AXI_CTRL_USER_00_rready(BLP_S_AXI_CTRL_USER_00_rready),
    .BLP_S_AXI_CTRL_USER_00_rresp(BLP_S_AXI_CTRL_USER_00_rresp),
    .BLP_S_AXI_CTRL_USER_00_rvalid(BLP_S_AXI_CTRL_USER_00_rvalid),
    .BLP_S_AXI_CTRL_USER_00_wdata(BLP_S_AXI_CTRL_USER_00_wdata),
    .BLP_S_AXI_CTRL_USER_00_wready(BLP_S_AXI_CTRL_USER_00_wready),
    .BLP_S_AXI_CTRL_USER_00_wstrb(BLP_S_AXI_CTRL_USER_00_wstrb),
    .BLP_S_AXI_CTRL_USER_00_wvalid(BLP_S_AXI_CTRL_USER_00_wvalid),
    .BLP_S_AXI_CTRL_USER_01_araddr(BLP_S_AXI_CTRL_USER_01_araddr),
    .BLP_S_AXI_CTRL_USER_01_arprot(BLP_S_AXI_CTRL_USER_01_arprot),
    .BLP_S_AXI_CTRL_USER_01_arready(BLP_S_AXI_CTRL_USER_01_arready),
    .BLP_S_AXI_CTRL_USER_01_arvalid(BLP_S_AXI_CTRL_USER_01_arvalid),
    .BLP_S_AXI_CTRL_USER_01_awaddr(BLP_S_AXI_CTRL_USER_01_awaddr),
    .BLP_S_AXI_CTRL_USER_01_awprot(BLP_S_AXI_CTRL_USER_01_awprot),
    .BLP_S_AXI_CTRL_USER_01_awready(BLP_S_AXI_CTRL_USER_01_awready),
    .BLP_S_AXI_CTRL_USER_01_awvalid(BLP_S_AXI_CTRL_USER_01_awvalid),
    .BLP_S_AXI_CTRL_USER_01_bready(BLP_S_AXI_CTRL_USER_01_bready),
    .BLP_S_AXI_CTRL_USER_01_bresp(BLP_S_AXI_CTRL_USER_01_bresp),
    .BLP_S_AXI_CTRL_USER_01_bvalid(BLP_S_AXI_CTRL_USER_01_bvalid),
    .BLP_S_AXI_CTRL_USER_01_rdata(BLP_S_AXI_CTRL_USER_01_rdata),
    .BLP_S_AXI_CTRL_USER_01_rready(BLP_S_AXI_CTRL_USER_01_rready),
    .BLP_S_AXI_CTRL_USER_01_rresp(BLP_S_AXI_CTRL_USER_01_rresp),
    .BLP_S_AXI_CTRL_USER_01_rvalid(BLP_S_AXI_CTRL_USER_01_rvalid),
    .BLP_S_AXI_CTRL_USER_01_wdata(BLP_S_AXI_CTRL_USER_01_wdata),
    .BLP_S_AXI_CTRL_USER_01_wready(BLP_S_AXI_CTRL_USER_01_wready),
    .BLP_S_AXI_CTRL_USER_01_wstrb(BLP_S_AXI_CTRL_USER_01_wstrb),
    .BLP_S_AXI_CTRL_USER_01_wvalid(BLP_S_AXI_CTRL_USER_01_wvalid),
    .BLP_S_AXI_CTRL_USER_02_araddr(BLP_S_AXI_CTRL_USER_02_araddr),
    .BLP_S_AXI_CTRL_USER_02_arprot(BLP_S_AXI_CTRL_USER_02_arprot),
    .BLP_S_AXI_CTRL_USER_02_arready(BLP_S_AXI_CTRL_USER_02_arready),
    .BLP_S_AXI_CTRL_USER_02_arvalid(BLP_S_AXI_CTRL_USER_02_arvalid),
    .BLP_S_AXI_CTRL_USER_02_awaddr(BLP_S_AXI_CTRL_USER_02_awaddr),
    .BLP_S_AXI_CTRL_USER_02_awprot(BLP_S_AXI_CTRL_USER_02_awprot),
    .BLP_S_AXI_CTRL_USER_02_awready(BLP_S_AXI_CTRL_USER_02_awready),
    .BLP_S_AXI_CTRL_USER_02_awvalid(BLP_S_AXI_CTRL_USER_02_awvalid),
    .BLP_S_AXI_CTRL_USER_02_bready(BLP_S_AXI_CTRL_USER_02_bready),
    .BLP_S_AXI_CTRL_USER_02_bresp(BLP_S_AXI_CTRL_USER_02_bresp),
    .BLP_S_AXI_CTRL_USER_02_bvalid(BLP_S_AXI_CTRL_USER_02_bvalid),
    .BLP_S_AXI_CTRL_USER_02_rdata(BLP_S_AXI_CTRL_USER_02_rdata),
    .BLP_S_AXI_CTRL_USER_02_rready(BLP_S_AXI_CTRL_USER_02_rready),
    .BLP_S_AXI_CTRL_USER_02_rresp(BLP_S_AXI_CTRL_USER_02_rresp),
    .BLP_S_AXI_CTRL_USER_02_rvalid(BLP_S_AXI_CTRL_USER_02_rvalid),
    .BLP_S_AXI_CTRL_USER_02_wdata(BLP_S_AXI_CTRL_USER_02_wdata),
    .BLP_S_AXI_CTRL_USER_02_wready(BLP_S_AXI_CTRL_USER_02_wready),
    .BLP_S_AXI_CTRL_USER_02_wstrb(BLP_S_AXI_CTRL_USER_02_wstrb),
    .BLP_S_AXI_CTRL_USER_02_wvalid(BLP_S_AXI_CTRL_USER_02_wvalid),
    .BLP_S_AXI_DATA_H2C_00_araddr(BLP_S_AXI_DATA_H2C_00_araddr),
    .BLP_S_AXI_DATA_H2C_00_arburst(BLP_S_AXI_DATA_H2C_00_arburst),
    .BLP_S_AXI_DATA_H2C_00_arcache(BLP_S_AXI_DATA_H2C_00_arcache),
    .BLP_S_AXI_DATA_H2C_00_arid(BLP_S_AXI_DATA_H2C_00_arid),
    .BLP_S_AXI_DATA_H2C_00_arlen(BLP_S_AXI_DATA_H2C_00_arlen),
    .BLP_S_AXI_DATA_H2C_00_arlock(BLP_S_AXI_DATA_H2C_00_arlock),
    .BLP_S_AXI_DATA_H2C_00_arprot(BLP_S_AXI_DATA_H2C_00_arprot),
    .BLP_S_AXI_DATA_H2C_00_arready(BLP_S_AXI_DATA_H2C_00_arready),
    .BLP_S_AXI_DATA_H2C_00_arvalid(BLP_S_AXI_DATA_H2C_00_arvalid),
    .BLP_S_AXI_DATA_H2C_00_awaddr(BLP_S_AXI_DATA_H2C_00_awaddr),
    .BLP_S_AXI_DATA_H2C_00_awburst(BLP_S_AXI_DATA_H2C_00_awburst),
    .BLP_S_AXI_DATA_H2C_00_awcache(BLP_S_AXI_DATA_H2C_00_awcache),
    .BLP_S_AXI_DATA_H2C_00_awid(BLP_S_AXI_DATA_H2C_00_awid),
    .BLP_S_AXI_DATA_H2C_00_awlen(BLP_S_AXI_DATA_H2C_00_awlen),
    .BLP_S_AXI_DATA_H2C_00_awlock(BLP_S_AXI_DATA_H2C_00_awlock),
    .BLP_S_AXI_DATA_H2C_00_awprot(BLP_S_AXI_DATA_H2C_00_awprot),
    .BLP_S_AXI_DATA_H2C_00_awready(BLP_S_AXI_DATA_H2C_00_awready),
    .BLP_S_AXI_DATA_H2C_00_awvalid(BLP_S_AXI_DATA_H2C_00_awvalid),
    .BLP_S_AXI_DATA_H2C_00_bid(BLP_S_AXI_DATA_H2C_00_bid),
    .BLP_S_AXI_DATA_H2C_00_bready(BLP_S_AXI_DATA_H2C_00_bready),
    .BLP_S_AXI_DATA_H2C_00_bresp(BLP_S_AXI_DATA_H2C_00_bresp),
    .BLP_S_AXI_DATA_H2C_00_bvalid(BLP_S_AXI_DATA_H2C_00_bvalid),
    .BLP_S_AXI_DATA_H2C_00_rdata(BLP_S_AXI_DATA_H2C_00_rdata),
    .BLP_S_AXI_DATA_H2C_00_rid(BLP_S_AXI_DATA_H2C_00_rid),
    .BLP_S_AXI_DATA_H2C_00_rlast(BLP_S_AXI_DATA_H2C_00_rlast),
    .BLP_S_AXI_DATA_H2C_00_rready(BLP_S_AXI_DATA_H2C_00_rready),
    .BLP_S_AXI_DATA_H2C_00_rresp(BLP_S_AXI_DATA_H2C_00_rresp),
    .BLP_S_AXI_DATA_H2C_00_rvalid(BLP_S_AXI_DATA_H2C_00_rvalid),
    .BLP_S_AXI_DATA_H2C_00_wdata(BLP_S_AXI_DATA_H2C_00_wdata),
    .BLP_S_AXI_DATA_H2C_00_wlast(BLP_S_AXI_DATA_H2C_00_wlast),
    .BLP_S_AXI_DATA_H2C_00_wready(BLP_S_AXI_DATA_H2C_00_wready),
    .BLP_S_AXI_DATA_H2C_00_wstrb(BLP_S_AXI_DATA_H2C_00_wstrb),
    .BLP_S_AXI_DATA_H2C_00_wvalid(BLP_S_AXI_DATA_H2C_00_wvalid),
    .BLP_S_AXI_DATA_H2C_01_araddr(BLP_S_AXI_DATA_H2C_01_araddr),
    .BLP_S_AXI_DATA_H2C_01_arburst(BLP_S_AXI_DATA_H2C_01_arburst),
    .BLP_S_AXI_DATA_H2C_01_arcache(BLP_S_AXI_DATA_H2C_01_arcache),
    .BLP_S_AXI_DATA_H2C_01_arid(BLP_S_AXI_DATA_H2C_01_arid),
    .BLP_S_AXI_DATA_H2C_01_arlen(BLP_S_AXI_DATA_H2C_01_arlen),
    .BLP_S_AXI_DATA_H2C_01_arlock(BLP_S_AXI_DATA_H2C_01_arlock),
    .BLP_S_AXI_DATA_H2C_01_arprot(BLP_S_AXI_DATA_H2C_01_arprot),
    .BLP_S_AXI_DATA_H2C_01_arready(BLP_S_AXI_DATA_H2C_01_arready),
    .BLP_S_AXI_DATA_H2C_01_arvalid(BLP_S_AXI_DATA_H2C_01_arvalid),
    .BLP_S_AXI_DATA_H2C_01_awaddr(BLP_S_AXI_DATA_H2C_01_awaddr),
    .BLP_S_AXI_DATA_H2C_01_awburst(BLP_S_AXI_DATA_H2C_01_awburst),
    .BLP_S_AXI_DATA_H2C_01_awcache(BLP_S_AXI_DATA_H2C_01_awcache),
    .BLP_S_AXI_DATA_H2C_01_awid(BLP_S_AXI_DATA_H2C_01_awid),
    .BLP_S_AXI_DATA_H2C_01_awlen(BLP_S_AXI_DATA_H2C_01_awlen),
    .BLP_S_AXI_DATA_H2C_01_awlock(BLP_S_AXI_DATA_H2C_01_awlock),
    .BLP_S_AXI_DATA_H2C_01_awprot(BLP_S_AXI_DATA_H2C_01_awprot),
    .BLP_S_AXI_DATA_H2C_01_awready(BLP_S_AXI_DATA_H2C_01_awready),
    .BLP_S_AXI_DATA_H2C_01_awvalid(BLP_S_AXI_DATA_H2C_01_awvalid),
    .BLP_S_AXI_DATA_H2C_01_bid(BLP_S_AXI_DATA_H2C_01_bid),
    .BLP_S_AXI_DATA_H2C_01_bready(BLP_S_AXI_DATA_H2C_01_bready),
    .BLP_S_AXI_DATA_H2C_01_bresp(BLP_S_AXI_DATA_H2C_01_bresp),
    .BLP_S_AXI_DATA_H2C_01_bvalid(BLP_S_AXI_DATA_H2C_01_bvalid),
    .BLP_S_AXI_DATA_H2C_01_rdata(BLP_S_AXI_DATA_H2C_01_rdata),
    .BLP_S_AXI_DATA_H2C_01_rid(BLP_S_AXI_DATA_H2C_01_rid),
    .BLP_S_AXI_DATA_H2C_01_rlast(BLP_S_AXI_DATA_H2C_01_rlast),
    .BLP_S_AXI_DATA_H2C_01_rready(BLP_S_AXI_DATA_H2C_01_rready),
    .BLP_S_AXI_DATA_H2C_01_rresp(BLP_S_AXI_DATA_H2C_01_rresp),
    .BLP_S_AXI_DATA_H2C_01_rvalid(BLP_S_AXI_DATA_H2C_01_rvalid),
    .BLP_S_AXI_DATA_H2C_01_wdata(BLP_S_AXI_DATA_H2C_01_wdata),
    .BLP_S_AXI_DATA_H2C_01_wlast(BLP_S_AXI_DATA_H2C_01_wlast),
    .BLP_S_AXI_DATA_H2C_01_wready(BLP_S_AXI_DATA_H2C_01_wready),
    .BLP_S_AXI_DATA_H2C_01_wstrb(BLP_S_AXI_DATA_H2C_01_wstrb),
    .BLP_S_AXI_DATA_H2C_01_wvalid(BLP_S_AXI_DATA_H2C_01_wvalid),
    .BLP_S_AXI_DATA_H2C_02_araddr(BLP_S_AXI_DATA_H2C_02_araddr),
    .BLP_S_AXI_DATA_H2C_02_arburst(BLP_S_AXI_DATA_H2C_02_arburst),
    .BLP_S_AXI_DATA_H2C_02_arcache(BLP_S_AXI_DATA_H2C_02_arcache),
    .BLP_S_AXI_DATA_H2C_02_arlen(BLP_S_AXI_DATA_H2C_02_arlen),
    .BLP_S_AXI_DATA_H2C_02_arlock(BLP_S_AXI_DATA_H2C_02_arlock),
    .BLP_S_AXI_DATA_H2C_02_arprot(BLP_S_AXI_DATA_H2C_02_arprot),
    .BLP_S_AXI_DATA_H2C_02_arready(BLP_S_AXI_DATA_H2C_02_arready),
    .BLP_S_AXI_DATA_H2C_02_arvalid(BLP_S_AXI_DATA_H2C_02_arvalid),
    .BLP_S_AXI_DATA_H2C_02_awaddr(BLP_S_AXI_DATA_H2C_02_awaddr),
    .BLP_S_AXI_DATA_H2C_02_awburst(BLP_S_AXI_DATA_H2C_02_awburst),
    .BLP_S_AXI_DATA_H2C_02_awcache(BLP_S_AXI_DATA_H2C_02_awcache),
    .BLP_S_AXI_DATA_H2C_02_awlen(BLP_S_AXI_DATA_H2C_02_awlen),
    .BLP_S_AXI_DATA_H2C_02_awlock(BLP_S_AXI_DATA_H2C_02_awlock),
    .BLP_S_AXI_DATA_H2C_02_awprot(BLP_S_AXI_DATA_H2C_02_awprot),
    .BLP_S_AXI_DATA_H2C_02_awready(BLP_S_AXI_DATA_H2C_02_awready),
    .BLP_S_AXI_DATA_H2C_02_awvalid(BLP_S_AXI_DATA_H2C_02_awvalid),
    .BLP_S_AXI_DATA_H2C_02_bready(BLP_S_AXI_DATA_H2C_02_bready),
    .BLP_S_AXI_DATA_H2C_02_bresp(BLP_S_AXI_DATA_H2C_02_bresp),
    .BLP_S_AXI_DATA_H2C_02_bvalid(BLP_S_AXI_DATA_H2C_02_bvalid),
    .BLP_S_AXI_DATA_H2C_02_rdata(BLP_S_AXI_DATA_H2C_02_rdata),
    .BLP_S_AXI_DATA_H2C_02_rlast(BLP_S_AXI_DATA_H2C_02_rlast),
    .BLP_S_AXI_DATA_H2C_02_rready(BLP_S_AXI_DATA_H2C_02_rready),
    .BLP_S_AXI_DATA_H2C_02_rresp(BLP_S_AXI_DATA_H2C_02_rresp),
    .BLP_S_AXI_DATA_H2C_02_rvalid(BLP_S_AXI_DATA_H2C_02_rvalid),
    .BLP_S_AXI_DATA_H2C_02_wdata(BLP_S_AXI_DATA_H2C_02_wdata),
    .BLP_S_AXI_DATA_H2C_02_wlast(BLP_S_AXI_DATA_H2C_02_wlast),
    .BLP_S_AXI_DATA_H2C_02_wready(BLP_S_AXI_DATA_H2C_02_wready),
    .BLP_S_AXI_DATA_H2C_02_wstrb(BLP_S_AXI_DATA_H2C_02_wstrb),
    .BLP_S_AXI_DATA_H2C_02_wvalid(BLP_S_AXI_DATA_H2C_02_wvalid),
    .BLP_S_AXI_DATA_H2C_03_araddr(BLP_S_AXI_DATA_H2C_03_araddr),
    .BLP_S_AXI_DATA_H2C_03_arburst(BLP_S_AXI_DATA_H2C_03_arburst),
    .BLP_S_AXI_DATA_H2C_03_arcache(BLP_S_AXI_DATA_H2C_03_arcache),
    .BLP_S_AXI_DATA_H2C_03_arid(BLP_S_AXI_DATA_H2C_03_arid),
    .BLP_S_AXI_DATA_H2C_03_arlen(BLP_S_AXI_DATA_H2C_03_arlen),
    .BLP_S_AXI_DATA_H2C_03_arlock(BLP_S_AXI_DATA_H2C_03_arlock),
    .BLP_S_AXI_DATA_H2C_03_arprot(BLP_S_AXI_DATA_H2C_03_arprot),
    .BLP_S_AXI_DATA_H2C_03_arready(BLP_S_AXI_DATA_H2C_03_arready),
    .BLP_S_AXI_DATA_H2C_03_arvalid(BLP_S_AXI_DATA_H2C_03_arvalid),
    .BLP_S_AXI_DATA_H2C_03_awaddr(BLP_S_AXI_DATA_H2C_03_awaddr),
    .BLP_S_AXI_DATA_H2C_03_awburst(BLP_S_AXI_DATA_H2C_03_awburst),
    .BLP_S_AXI_DATA_H2C_03_awcache(BLP_S_AXI_DATA_H2C_03_awcache),
    .BLP_S_AXI_DATA_H2C_03_awid(BLP_S_AXI_DATA_H2C_03_awid),
    .BLP_S_AXI_DATA_H2C_03_awlen(BLP_S_AXI_DATA_H2C_03_awlen),
    .BLP_S_AXI_DATA_H2C_03_awlock(BLP_S_AXI_DATA_H2C_03_awlock),
    .BLP_S_AXI_DATA_H2C_03_awprot(BLP_S_AXI_DATA_H2C_03_awprot),
    .BLP_S_AXI_DATA_H2C_03_awready(BLP_S_AXI_DATA_H2C_03_awready),
    .BLP_S_AXI_DATA_H2C_03_awvalid(BLP_S_AXI_DATA_H2C_03_awvalid),
    .BLP_S_AXI_DATA_H2C_03_bid(BLP_S_AXI_DATA_H2C_03_bid),
    .BLP_S_AXI_DATA_H2C_03_bready(BLP_S_AXI_DATA_H2C_03_bready),
    .BLP_S_AXI_DATA_H2C_03_bresp(BLP_S_AXI_DATA_H2C_03_bresp),
    .BLP_S_AXI_DATA_H2C_03_bvalid(BLP_S_AXI_DATA_H2C_03_bvalid),
    .BLP_S_AXI_DATA_H2C_03_rdata(BLP_S_AXI_DATA_H2C_03_rdata),
    .BLP_S_AXI_DATA_H2C_03_rid(BLP_S_AXI_DATA_H2C_03_rid),
    .BLP_S_AXI_DATA_H2C_03_rlast(BLP_S_AXI_DATA_H2C_03_rlast),
    .BLP_S_AXI_DATA_H2C_03_rready(BLP_S_AXI_DATA_H2C_03_rready),
    .BLP_S_AXI_DATA_H2C_03_rresp(BLP_S_AXI_DATA_H2C_03_rresp),
    .BLP_S_AXI_DATA_H2C_03_rvalid(BLP_S_AXI_DATA_H2C_03_rvalid),
    .BLP_S_AXI_DATA_H2C_03_wdata(BLP_S_AXI_DATA_H2C_03_wdata),
    .BLP_S_AXI_DATA_H2C_03_wlast(BLP_S_AXI_DATA_H2C_03_wlast),
    .BLP_S_AXI_DATA_H2C_03_wready(BLP_S_AXI_DATA_H2C_03_wready),
    .BLP_S_AXI_DATA_H2C_03_wstrb(BLP_S_AXI_DATA_H2C_03_wstrb),
    .BLP_S_AXI_DATA_H2C_03_wvalid(BLP_S_AXI_DATA_H2C_03_wvalid),
    .ULP_M_AXI_CTRL_USER_00_araddr(ULP_M_AXI_CTRL_USER_00_araddr),
    .ULP_M_AXI_CTRL_USER_00_arprot(ULP_M_AXI_CTRL_USER_00_arprot),
    .ULP_M_AXI_CTRL_USER_00_arready(ULP_M_AXI_CTRL_USER_00_arready),
    .ULP_M_AXI_CTRL_USER_00_arvalid(ULP_M_AXI_CTRL_USER_00_arvalid),
    .ULP_M_AXI_CTRL_USER_00_awaddr(ULP_M_AXI_CTRL_USER_00_awaddr),
    .ULP_M_AXI_CTRL_USER_00_awprot(ULP_M_AXI_CTRL_USER_00_awprot),
    .ULP_M_AXI_CTRL_USER_00_awready(ULP_M_AXI_CTRL_USER_00_awready),
    .ULP_M_AXI_CTRL_USER_00_awvalid(ULP_M_AXI_CTRL_USER_00_awvalid),
    .ULP_M_AXI_CTRL_USER_00_bready(ULP_M_AXI_CTRL_USER_00_bready),
    .ULP_M_AXI_CTRL_USER_00_bresp(ULP_M_AXI_CTRL_USER_00_bresp),
    .ULP_M_AXI_CTRL_USER_00_bvalid(ULP_M_AXI_CTRL_USER_00_bvalid),
    .ULP_M_AXI_CTRL_USER_00_rdata(ULP_M_AXI_CTRL_USER_00_rdata),
    .ULP_M_AXI_CTRL_USER_00_rready(ULP_M_AXI_CTRL_USER_00_rready),
    .ULP_M_AXI_CTRL_USER_00_rresp(ULP_M_AXI_CTRL_USER_00_rresp),
    .ULP_M_AXI_CTRL_USER_00_rvalid(ULP_M_AXI_CTRL_USER_00_rvalid),
    .ULP_M_AXI_CTRL_USER_00_wdata(ULP_M_AXI_CTRL_USER_00_wdata),
    .ULP_M_AXI_CTRL_USER_00_wready(ULP_M_AXI_CTRL_USER_00_wready),
    .ULP_M_AXI_CTRL_USER_00_wstrb(ULP_M_AXI_CTRL_USER_00_wstrb),
    .ULP_M_AXI_CTRL_USER_00_wvalid(ULP_M_AXI_CTRL_USER_00_wvalid),
    .ULP_M_AXI_CTRL_USER_01_araddr(ULP_M_AXI_CTRL_USER_01_araddr),
    .ULP_M_AXI_CTRL_USER_01_arprot(ULP_M_AXI_CTRL_USER_01_arprot),
    .ULP_M_AXI_CTRL_USER_01_arready(ULP_M_AXI_CTRL_USER_01_arready),
    .ULP_M_AXI_CTRL_USER_01_arvalid(ULP_M_AXI_CTRL_USER_01_arvalid),
    .ULP_M_AXI_CTRL_USER_01_awaddr(ULP_M_AXI_CTRL_USER_01_awaddr),
    .ULP_M_AXI_CTRL_USER_01_awprot(ULP_M_AXI_CTRL_USER_01_awprot),
    .ULP_M_AXI_CTRL_USER_01_awready(ULP_M_AXI_CTRL_USER_01_awready),
    .ULP_M_AXI_CTRL_USER_01_awvalid(ULP_M_AXI_CTRL_USER_01_awvalid),
    .ULP_M_AXI_CTRL_USER_01_bready(ULP_M_AXI_CTRL_USER_01_bready),
    .ULP_M_AXI_CTRL_USER_01_bresp(ULP_M_AXI_CTRL_USER_01_bresp),
    .ULP_M_AXI_CTRL_USER_01_bvalid(ULP_M_AXI_CTRL_USER_01_bvalid),
    .ULP_M_AXI_CTRL_USER_01_rdata(ULP_M_AXI_CTRL_USER_01_rdata),
    .ULP_M_AXI_CTRL_USER_01_rready(ULP_M_AXI_CTRL_USER_01_rready),
    .ULP_M_AXI_CTRL_USER_01_rresp(ULP_M_AXI_CTRL_USER_01_rresp),
    .ULP_M_AXI_CTRL_USER_01_rvalid(ULP_M_AXI_CTRL_USER_01_rvalid),
    .ULP_M_AXI_CTRL_USER_01_wdata(ULP_M_AXI_CTRL_USER_01_wdata),
    .ULP_M_AXI_CTRL_USER_01_wready(ULP_M_AXI_CTRL_USER_01_wready),
    .ULP_M_AXI_CTRL_USER_01_wstrb(ULP_M_AXI_CTRL_USER_01_wstrb),
    .ULP_M_AXI_CTRL_USER_01_wvalid(ULP_M_AXI_CTRL_USER_01_wvalid),
    .ULP_M_AXI_CTRL_USER_02_araddr(ULP_M_AXI_CTRL_USER_02_araddr),
    .ULP_M_AXI_CTRL_USER_02_arprot(ULP_M_AXI_CTRL_USER_02_arprot),
    .ULP_M_AXI_CTRL_USER_02_arready(ULP_M_AXI_CTRL_USER_02_arready),
    .ULP_M_AXI_CTRL_USER_02_arvalid(ULP_M_AXI_CTRL_USER_02_arvalid),
    .ULP_M_AXI_CTRL_USER_02_awaddr(ULP_M_AXI_CTRL_USER_02_awaddr),
    .ULP_M_AXI_CTRL_USER_02_awprot(ULP_M_AXI_CTRL_USER_02_awprot),
    .ULP_M_AXI_CTRL_USER_02_awready(ULP_M_AXI_CTRL_USER_02_awready),
    .ULP_M_AXI_CTRL_USER_02_awvalid(ULP_M_AXI_CTRL_USER_02_awvalid),
    .ULP_M_AXI_CTRL_USER_02_bready(ULP_M_AXI_CTRL_USER_02_bready),
    .ULP_M_AXI_CTRL_USER_02_bresp(ULP_M_AXI_CTRL_USER_02_bresp),
    .ULP_M_AXI_CTRL_USER_02_bvalid(ULP_M_AXI_CTRL_USER_02_bvalid),
    .ULP_M_AXI_CTRL_USER_02_rdata(ULP_M_AXI_CTRL_USER_02_rdata),
    .ULP_M_AXI_CTRL_USER_02_rready(ULP_M_AXI_CTRL_USER_02_rready),
    .ULP_M_AXI_CTRL_USER_02_rresp(ULP_M_AXI_CTRL_USER_02_rresp),
    .ULP_M_AXI_CTRL_USER_02_rvalid(ULP_M_AXI_CTRL_USER_02_rvalid),
    .ULP_M_AXI_CTRL_USER_02_wdata(ULP_M_AXI_CTRL_USER_02_wdata),
    .ULP_M_AXI_CTRL_USER_02_wready(ULP_M_AXI_CTRL_USER_02_wready),
    .ULP_M_AXI_CTRL_USER_02_wstrb(ULP_M_AXI_CTRL_USER_02_wstrb),
    .ULP_M_AXI_CTRL_USER_02_wvalid(ULP_M_AXI_CTRL_USER_02_wvalid),
    .ULP_M_AXI_DATA_H2C_00_araddr(ULP_M_AXI_DATA_H2C_00_araddr),
    .ULP_M_AXI_DATA_H2C_00_arburst(ULP_M_AXI_DATA_H2C_00_arburst),
    .ULP_M_AXI_DATA_H2C_00_arcache(ULP_M_AXI_DATA_H2C_00_arcache),
    .ULP_M_AXI_DATA_H2C_00_arid(ULP_M_AXI_DATA_H2C_00_arid),
    .ULP_M_AXI_DATA_H2C_00_arlen(ULP_M_AXI_DATA_H2C_00_arlen),
    .ULP_M_AXI_DATA_H2C_00_arlock(ULP_M_AXI_DATA_H2C_00_arlock),
    .ULP_M_AXI_DATA_H2C_00_arprot(ULP_M_AXI_DATA_H2C_00_arprot),
    .ULP_M_AXI_DATA_H2C_00_arready(ULP_M_AXI_DATA_H2C_00_arready),
    .ULP_M_AXI_DATA_H2C_00_arvalid(ULP_M_AXI_DATA_H2C_00_arvalid),
    .ULP_M_AXI_DATA_H2C_00_awaddr(ULP_M_AXI_DATA_H2C_00_awaddr),
    .ULP_M_AXI_DATA_H2C_00_awburst(ULP_M_AXI_DATA_H2C_00_awburst),
    .ULP_M_AXI_DATA_H2C_00_awcache(ULP_M_AXI_DATA_H2C_00_awcache),
    .ULP_M_AXI_DATA_H2C_00_awid(ULP_M_AXI_DATA_H2C_00_awid),
    .ULP_M_AXI_DATA_H2C_00_awlen(ULP_M_AXI_DATA_H2C_00_awlen),
    .ULP_M_AXI_DATA_H2C_00_awlock(ULP_M_AXI_DATA_H2C_00_awlock),
    .ULP_M_AXI_DATA_H2C_00_awprot(ULP_M_AXI_DATA_H2C_00_awprot),
    .ULP_M_AXI_DATA_H2C_00_awready(ULP_M_AXI_DATA_H2C_00_awready),
    .ULP_M_AXI_DATA_H2C_00_awvalid(ULP_M_AXI_DATA_H2C_00_awvalid),
    .ULP_M_AXI_DATA_H2C_00_bid(ULP_M_AXI_DATA_H2C_00_bid),
    .ULP_M_AXI_DATA_H2C_00_bready(ULP_M_AXI_DATA_H2C_00_bready),
    .ULP_M_AXI_DATA_H2C_00_bresp(ULP_M_AXI_DATA_H2C_00_bresp),
    .ULP_M_AXI_DATA_H2C_00_bvalid(ULP_M_AXI_DATA_H2C_00_bvalid),
    .ULP_M_AXI_DATA_H2C_00_rdata(ULP_M_AXI_DATA_H2C_00_rdata),
    .ULP_M_AXI_DATA_H2C_00_rid(ULP_M_AXI_DATA_H2C_00_rid),
    .ULP_M_AXI_DATA_H2C_00_rlast(ULP_M_AXI_DATA_H2C_00_rlast),
    .ULP_M_AXI_DATA_H2C_00_rready(ULP_M_AXI_DATA_H2C_00_rready),
    .ULP_M_AXI_DATA_H2C_00_rresp(ULP_M_AXI_DATA_H2C_00_rresp),
    .ULP_M_AXI_DATA_H2C_00_rvalid(ULP_M_AXI_DATA_H2C_00_rvalid),
    .ULP_M_AXI_DATA_H2C_00_wdata(ULP_M_AXI_DATA_H2C_00_wdata),
    .ULP_M_AXI_DATA_H2C_00_wlast(ULP_M_AXI_DATA_H2C_00_wlast),
    .ULP_M_AXI_DATA_H2C_00_wready(ULP_M_AXI_DATA_H2C_00_wready),
    .ULP_M_AXI_DATA_H2C_00_wstrb(ULP_M_AXI_DATA_H2C_00_wstrb),
    .ULP_M_AXI_DATA_H2C_00_wvalid(ULP_M_AXI_DATA_H2C_00_wvalid),
    .ULP_M_AXI_DATA_H2C_01_araddr(ULP_M_AXI_DATA_H2C_01_araddr),
    .ULP_M_AXI_DATA_H2C_01_arburst(ULP_M_AXI_DATA_H2C_01_arburst),
    .ULP_M_AXI_DATA_H2C_01_arcache(ULP_M_AXI_DATA_H2C_01_arcache),
    .ULP_M_AXI_DATA_H2C_01_arid(ULP_M_AXI_DATA_H2C_01_arid),
    .ULP_M_AXI_DATA_H2C_01_arlen(ULP_M_AXI_DATA_H2C_01_arlen),
    .ULP_M_AXI_DATA_H2C_01_arlock(ULP_M_AXI_DATA_H2C_01_arlock),
    .ULP_M_AXI_DATA_H2C_01_arprot(ULP_M_AXI_DATA_H2C_01_arprot),
    .ULP_M_AXI_DATA_H2C_01_arready(ULP_M_AXI_DATA_H2C_01_arready),
    .ULP_M_AXI_DATA_H2C_01_arvalid(ULP_M_AXI_DATA_H2C_01_arvalid),
    .ULP_M_AXI_DATA_H2C_01_awaddr(ULP_M_AXI_DATA_H2C_01_awaddr),
    .ULP_M_AXI_DATA_H2C_01_awburst(ULP_M_AXI_DATA_H2C_01_awburst),
    .ULP_M_AXI_DATA_H2C_01_awcache(ULP_M_AXI_DATA_H2C_01_awcache),
    .ULP_M_AXI_DATA_H2C_01_awid(ULP_M_AXI_DATA_H2C_01_awid),
    .ULP_M_AXI_DATA_H2C_01_awlen(ULP_M_AXI_DATA_H2C_01_awlen),
    .ULP_M_AXI_DATA_H2C_01_awlock(ULP_M_AXI_DATA_H2C_01_awlock),
    .ULP_M_AXI_DATA_H2C_01_awprot(ULP_M_AXI_DATA_H2C_01_awprot),
    .ULP_M_AXI_DATA_H2C_01_awready(ULP_M_AXI_DATA_H2C_01_awready),
    .ULP_M_AXI_DATA_H2C_01_awvalid(ULP_M_AXI_DATA_H2C_01_awvalid),
    .ULP_M_AXI_DATA_H2C_01_bid(ULP_M_AXI_DATA_H2C_01_bid),
    .ULP_M_AXI_DATA_H2C_01_bready(ULP_M_AXI_DATA_H2C_01_bready),
    .ULP_M_AXI_DATA_H2C_01_bresp(ULP_M_AXI_DATA_H2C_01_bresp),
    .ULP_M_AXI_DATA_H2C_01_bvalid(ULP_M_AXI_DATA_H2C_01_bvalid),
    .ULP_M_AXI_DATA_H2C_01_rdata(ULP_M_AXI_DATA_H2C_01_rdata),
    .ULP_M_AXI_DATA_H2C_01_rid(ULP_M_AXI_DATA_H2C_01_rid),
    .ULP_M_AXI_DATA_H2C_01_rlast(ULP_M_AXI_DATA_H2C_01_rlast),
    .ULP_M_AXI_DATA_H2C_01_rready(ULP_M_AXI_DATA_H2C_01_rready),
    .ULP_M_AXI_DATA_H2C_01_rresp(ULP_M_AXI_DATA_H2C_01_rresp),
    .ULP_M_AXI_DATA_H2C_01_rvalid(ULP_M_AXI_DATA_H2C_01_rvalid),
    .ULP_M_AXI_DATA_H2C_01_wdata(ULP_M_AXI_DATA_H2C_01_wdata),
    .ULP_M_AXI_DATA_H2C_01_wlast(ULP_M_AXI_DATA_H2C_01_wlast),
    .ULP_M_AXI_DATA_H2C_01_wready(ULP_M_AXI_DATA_H2C_01_wready),
    .ULP_M_AXI_DATA_H2C_01_wstrb(ULP_M_AXI_DATA_H2C_01_wstrb),
    .ULP_M_AXI_DATA_H2C_01_wvalid(ULP_M_AXI_DATA_H2C_01_wvalid),
    .ULP_M_AXI_DATA_H2C_02_araddr(ULP_M_AXI_DATA_H2C_02_araddr),
    .ULP_M_AXI_DATA_H2C_02_arburst(ULP_M_AXI_DATA_H2C_02_arburst),
    .ULP_M_AXI_DATA_H2C_02_arcache(ULP_M_AXI_DATA_H2C_02_arcache),
    .ULP_M_AXI_DATA_H2C_02_arlen(ULP_M_AXI_DATA_H2C_02_arlen),
    .ULP_M_AXI_DATA_H2C_02_arlock(ULP_M_AXI_DATA_H2C_02_arlock),
    .ULP_M_AXI_DATA_H2C_02_arprot(ULP_M_AXI_DATA_H2C_02_arprot),
    .ULP_M_AXI_DATA_H2C_02_arready(ULP_M_AXI_DATA_H2C_02_arready),
    .ULP_M_AXI_DATA_H2C_02_arvalid(ULP_M_AXI_DATA_H2C_02_arvalid),
    .ULP_M_AXI_DATA_H2C_02_awaddr(ULP_M_AXI_DATA_H2C_02_awaddr),
    .ULP_M_AXI_DATA_H2C_02_awburst(ULP_M_AXI_DATA_H2C_02_awburst),
    .ULP_M_AXI_DATA_H2C_02_awcache(ULP_M_AXI_DATA_H2C_02_awcache),
    .ULP_M_AXI_DATA_H2C_02_awlen(ULP_M_AXI_DATA_H2C_02_awlen),
    .ULP_M_AXI_DATA_H2C_02_awlock(ULP_M_AXI_DATA_H2C_02_awlock),
    .ULP_M_AXI_DATA_H2C_02_awprot(ULP_M_AXI_DATA_H2C_02_awprot),
    .ULP_M_AXI_DATA_H2C_02_awready(ULP_M_AXI_DATA_H2C_02_awready),
    .ULP_M_AXI_DATA_H2C_02_awvalid(ULP_M_AXI_DATA_H2C_02_awvalid),
    .ULP_M_AXI_DATA_H2C_02_bready(ULP_M_AXI_DATA_H2C_02_bready),
    .ULP_M_AXI_DATA_H2C_02_bresp(ULP_M_AXI_DATA_H2C_02_bresp),
    .ULP_M_AXI_DATA_H2C_02_bvalid(ULP_M_AXI_DATA_H2C_02_bvalid),
    .ULP_M_AXI_DATA_H2C_02_rdata(ULP_M_AXI_DATA_H2C_02_rdata),
    .ULP_M_AXI_DATA_H2C_02_rlast(ULP_M_AXI_DATA_H2C_02_rlast),
    .ULP_M_AXI_DATA_H2C_02_rready(ULP_M_AXI_DATA_H2C_02_rready),
    .ULP_M_AXI_DATA_H2C_02_rresp(ULP_M_AXI_DATA_H2C_02_rresp),
    .ULP_M_AXI_DATA_H2C_02_rvalid(ULP_M_AXI_DATA_H2C_02_rvalid),
    .ULP_M_AXI_DATA_H2C_02_wdata(ULP_M_AXI_DATA_H2C_02_wdata),
    .ULP_M_AXI_DATA_H2C_02_wlast(ULP_M_AXI_DATA_H2C_02_wlast),
    .ULP_M_AXI_DATA_H2C_02_wready(ULP_M_AXI_DATA_H2C_02_wready),
    .ULP_M_AXI_DATA_H2C_02_wstrb(ULP_M_AXI_DATA_H2C_02_wstrb),
    .ULP_M_AXI_DATA_H2C_02_wvalid(ULP_M_AXI_DATA_H2C_02_wvalid),
    .ULP_M_AXI_DATA_H2C_03_araddr(ULP_M_AXI_DATA_H2C_03_araddr),
    .ULP_M_AXI_DATA_H2C_03_arburst(ULP_M_AXI_DATA_H2C_03_arburst),
    .ULP_M_AXI_DATA_H2C_03_arcache(ULP_M_AXI_DATA_H2C_03_arcache),
    .ULP_M_AXI_DATA_H2C_03_arid(ULP_M_AXI_DATA_H2C_03_arid),
    .ULP_M_AXI_DATA_H2C_03_arlen(ULP_M_AXI_DATA_H2C_03_arlen),
    .ULP_M_AXI_DATA_H2C_03_arlock(ULP_M_AXI_DATA_H2C_03_arlock),
    .ULP_M_AXI_DATA_H2C_03_arprot(ULP_M_AXI_DATA_H2C_03_arprot),
    .ULP_M_AXI_DATA_H2C_03_arready(ULP_M_AXI_DATA_H2C_03_arready),
    .ULP_M_AXI_DATA_H2C_03_arvalid(ULP_M_AXI_DATA_H2C_03_arvalid),
    .ULP_M_AXI_DATA_H2C_03_awaddr(ULP_M_AXI_DATA_H2C_03_awaddr),
    .ULP_M_AXI_DATA_H2C_03_awburst(ULP_M_AXI_DATA_H2C_03_awburst),
    .ULP_M_AXI_DATA_H2C_03_awcache(ULP_M_AXI_DATA_H2C_03_awcache),
    .ULP_M_AXI_DATA_H2C_03_awid(ULP_M_AXI_DATA_H2C_03_awid),
    .ULP_M_AXI_DATA_H2C_03_awlen(ULP_M_AXI_DATA_H2C_03_awlen),
    .ULP_M_AXI_DATA_H2C_03_awlock(ULP_M_AXI_DATA_H2C_03_awlock),
    .ULP_M_AXI_DATA_H2C_03_awprot(ULP_M_AXI_DATA_H2C_03_awprot),
    .ULP_M_AXI_DATA_H2C_03_awready(ULP_M_AXI_DATA_H2C_03_awready),
    .ULP_M_AXI_DATA_H2C_03_awvalid(ULP_M_AXI_DATA_H2C_03_awvalid),
    .ULP_M_AXI_DATA_H2C_03_bid(ULP_M_AXI_DATA_H2C_03_bid),
    .ULP_M_AXI_DATA_H2C_03_bready(ULP_M_AXI_DATA_H2C_03_bready),
    .ULP_M_AXI_DATA_H2C_03_bresp(ULP_M_AXI_DATA_H2C_03_bresp),
    .ULP_M_AXI_DATA_H2C_03_bvalid(ULP_M_AXI_DATA_H2C_03_bvalid),
    .ULP_M_AXI_DATA_H2C_03_rdata(ULP_M_AXI_DATA_H2C_03_rdata),
    .ULP_M_AXI_DATA_H2C_03_rid(ULP_M_AXI_DATA_H2C_03_rid),
    .ULP_M_AXI_DATA_H2C_03_rlast(ULP_M_AXI_DATA_H2C_03_rlast),
    .ULP_M_AXI_DATA_H2C_03_rready(ULP_M_AXI_DATA_H2C_03_rready),
    .ULP_M_AXI_DATA_H2C_03_rresp(ULP_M_AXI_DATA_H2C_03_rresp),
    .ULP_M_AXI_DATA_H2C_03_rvalid(ULP_M_AXI_DATA_H2C_03_rvalid),
    .ULP_M_AXI_DATA_H2C_03_wdata(ULP_M_AXI_DATA_H2C_03_wdata),
    .ULP_M_AXI_DATA_H2C_03_wlast(ULP_M_AXI_DATA_H2C_03_wlast),
    .ULP_M_AXI_DATA_H2C_03_wready(ULP_M_AXI_DATA_H2C_03_wready),
    .ULP_M_AXI_DATA_H2C_03_wstrb(ULP_M_AXI_DATA_H2C_03_wstrb),
    .ULP_M_AXI_DATA_H2C_03_wvalid(ULP_M_AXI_DATA_H2C_03_wvalid),
    .blp_m_data_dna_from_ulp_00(blp_m_data_dna_from_ulp_00),
    .blp_m_data_memory_calib_complete_00(blp_m_data_memory_calib_complete_00),
    .blp_m_irq_cu_00(blp_m_irq_cu_00),
    .blp_s_aclk_ctrl_00(blp_s_aclk_ctrl_00),
    .blp_s_aclk_kernel2_ref_clk_00(blp_s_aclk_kernel2_ref_clk_00),
    .blp_s_aclk_kernel_ref_clk_00(blp_s_aclk_kernel_ref_clk_00),
    .blp_s_aclk_pcie_00(blp_s_aclk_pcie_00),
    .blp_s_aresetn_ctrl_00(blp_s_aresetn_ctrl_00),
    .blp_s_aresetn_kernel_ref_clk_00(blp_s_aresetn_kernel_ref_clk_00),
    .blp_s_aresetn_pcie_00(blp_s_aresetn_pcie_00),
    .blp_s_data_clkwiz_kernel_clk_out1_locked_00(blp_s_data_clkwiz_kernel_clk_out1_locked_00),
    .blp_s_data_dout_dna_00(blp_s_data_dout_dna_00),
    .blp_s_data_perstn_out_00(blp_s_data_perstn_out_00),
    .blp_s_data_slice_pr_reset_to_ulp_00(blp_s_data_slice_pr_reset_to_ulp_00),
    .ulp_m_aclk_ctrl_00(ulp_m_aclk_ctrl_00),
    .ulp_m_aclk_kernel2_ref_clk_00(ulp_m_aclk_kernel2_ref_clk_00),
    .ulp_m_aclk_kernel_ref_clk_00(ulp_m_aclk_kernel_ref_clk_00),
    .ulp_m_aclk_pcie_00(ulp_m_aclk_pcie_00),
    .ulp_m_aresetn_ctrl_00(ulp_m_aresetn_ctrl_00),
    .ulp_m_aresetn_kernel_ref_clk_00(ulp_m_aresetn_kernel_ref_clk_00),
    .ulp_m_aresetn_pcie_00(ulp_m_aresetn_pcie_00),
    .ulp_m_data_clkwiz_kernel_clk_out1_locked_00(ulp_m_data_clkwiz_kernel_clk_out1_locked_00),
    .ulp_m_data_dout_dna_00(ulp_m_data_dout_dna_00),
    .ulp_m_data_perstn_out_00(ulp_m_data_perstn_out_00),
    .ulp_m_data_slice_pr_reset_to_ulp_00(ulp_m_data_slice_pr_reset_to_ulp_00),
    .ulp_s_data_dna_from_ulp_00(ulp_s_data_dna_from_ulp_00),
    .ulp_s_data_memory_calib_complete_00(ulp_s_data_memory_calib_complete_00),
    .ulp_s_irq_cu_00(ulp_s_irq_cu_00)
  );
endmodule
