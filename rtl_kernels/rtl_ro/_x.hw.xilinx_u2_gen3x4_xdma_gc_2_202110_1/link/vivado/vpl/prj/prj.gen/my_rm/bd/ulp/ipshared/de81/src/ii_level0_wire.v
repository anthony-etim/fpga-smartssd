//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1.0 (lin64) Build 3157792 Tue Mar 23 18:24:10 MDT 2021
//Date        : Fri Apr 30 14:16:48 2021
//Host        : xhdl3586 running 64-bit CentOS Linux release 7.4.1708 (Core)
//Command     : generate_target ii_level0_wire.bd
//Design      : ii_level0_wire
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ii_level0_wire,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ii_level0_wire,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ii_level0_wire.hwdef" *) 
module ii_level0_wire
   (BLP_S_AXI_CTRL_USER_00_araddr,
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
    ulp_s_irq_cu_00);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_USER_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY" *) output BLP_S_AXI_CTRL_USER_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID" *) input BLP_S_AXI_CTRL_USER_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY" *) output BLP_S_AXI_CTRL_USER_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID" *) input BLP_S_AXI_CTRL_USER_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY" *) input BLP_S_AXI_CTRL_USER_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID" *) output BLP_S_AXI_CTRL_USER_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY" *) input BLP_S_AXI_CTRL_USER_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID" *) output BLP_S_AXI_CTRL_USER_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY" *) output BLP_S_AXI_CTRL_USER_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID" *) input BLP_S_AXI_CTRL_USER_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_USER_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARREADY" *) output BLP_S_AXI_CTRL_USER_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARVALID" *) input BLP_S_AXI_CTRL_USER_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWREADY" *) output BLP_S_AXI_CTRL_USER_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWVALID" *) input BLP_S_AXI_CTRL_USER_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BREADY" *) input BLP_S_AXI_CTRL_USER_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BVALID" *) output BLP_S_AXI_CTRL_USER_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RREADY" *) input BLP_S_AXI_CTRL_USER_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RVALID" *) output BLP_S_AXI_CTRL_USER_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WREADY" *) output BLP_S_AXI_CTRL_USER_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WVALID" *) input BLP_S_AXI_CTRL_USER_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_02, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_USER_02_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_02_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARREADY" *) output BLP_S_AXI_CTRL_USER_02_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARVALID" *) input BLP_S_AXI_CTRL_USER_02_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_02_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_02_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWREADY" *) output BLP_S_AXI_CTRL_USER_02_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWVALID" *) input BLP_S_AXI_CTRL_USER_02_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BREADY" *) input BLP_S_AXI_CTRL_USER_02_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_02_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BVALID" *) output BLP_S_AXI_CTRL_USER_02_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_02_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RREADY" *) input BLP_S_AXI_CTRL_USER_02_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_02_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RVALID" *) output BLP_S_AXI_CTRL_USER_02_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_02_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WREADY" *) output BLP_S_AXI_CTRL_USER_02_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_02_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WVALID" *) input BLP_S_AXI_CTRL_USER_02_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]BLP_S_AXI_DATA_H2C_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_00_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_00_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARID" *) input [3:0]BLP_S_AXI_DATA_H2C_00_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_00_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_00_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARREADY" *) output BLP_S_AXI_DATA_H2C_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARVALID" *) input BLP_S_AXI_DATA_H2C_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWADDR" *) input [38:0]BLP_S_AXI_DATA_H2C_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_00_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_00_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWID" *) input [3:0]BLP_S_AXI_DATA_H2C_00_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_00_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_00_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWREADY" *) output BLP_S_AXI_DATA_H2C_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWVALID" *) input BLP_S_AXI_DATA_H2C_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BID" *) output [3:0]BLP_S_AXI_DATA_H2C_00_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BREADY" *) input BLP_S_AXI_DATA_H2C_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BVALID" *) output BLP_S_AXI_DATA_H2C_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RDATA" *) output [511:0]BLP_S_AXI_DATA_H2C_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RID" *) output [3:0]BLP_S_AXI_DATA_H2C_00_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RLAST" *) output BLP_S_AXI_DATA_H2C_00_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RREADY" *) input BLP_S_AXI_DATA_H2C_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RVALID" *) output BLP_S_AXI_DATA_H2C_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WDATA" *) input [511:0]BLP_S_AXI_DATA_H2C_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WLAST" *) input BLP_S_AXI_DATA_H2C_00_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WREADY" *) output BLP_S_AXI_DATA_H2C_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WSTRB" *) input [63:0]BLP_S_AXI_DATA_H2C_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WVALID" *) input BLP_S_AXI_DATA_H2C_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_01, ADDR_WIDTH 40, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 64, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [39:0]BLP_S_AXI_DATA_H2C_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_01_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_01_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARID" *) input [1:0]BLP_S_AXI_DATA_H2C_01_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_01_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_01_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARREADY" *) output BLP_S_AXI_DATA_H2C_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARVALID" *) input BLP_S_AXI_DATA_H2C_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWADDR" *) input [39:0]BLP_S_AXI_DATA_H2C_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_01_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_01_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWID" *) input [1:0]BLP_S_AXI_DATA_H2C_01_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_01_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_01_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWREADY" *) output BLP_S_AXI_DATA_H2C_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWVALID" *) input BLP_S_AXI_DATA_H2C_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BID" *) output [1:0]BLP_S_AXI_DATA_H2C_01_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BREADY" *) input BLP_S_AXI_DATA_H2C_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BVALID" *) output BLP_S_AXI_DATA_H2C_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RDATA" *) output [63:0]BLP_S_AXI_DATA_H2C_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RID" *) output [1:0]BLP_S_AXI_DATA_H2C_01_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RLAST" *) output BLP_S_AXI_DATA_H2C_01_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RREADY" *) input BLP_S_AXI_DATA_H2C_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RVALID" *) output BLP_S_AXI_DATA_H2C_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WDATA" *) input [63:0]BLP_S_AXI_DATA_H2C_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WLAST" *) input BLP_S_AXI_DATA_H2C_01_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WREADY" *) output BLP_S_AXI_DATA_H2C_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WSTRB" *) input [7:0]BLP_S_AXI_DATA_H2C_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WVALID" *) input BLP_S_AXI_DATA_H2C_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_02, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]BLP_S_AXI_DATA_H2C_02_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_02_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_02_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_02_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_02_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_02_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARREADY" *) output BLP_S_AXI_DATA_H2C_02_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARVALID" *) input BLP_S_AXI_DATA_H2C_02_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWADDR" *) input [31:0]BLP_S_AXI_DATA_H2C_02_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_02_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_02_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_02_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_02_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_02_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWREADY" *) output BLP_S_AXI_DATA_H2C_02_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWVALID" *) input BLP_S_AXI_DATA_H2C_02_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 BREADY" *) input BLP_S_AXI_DATA_H2C_02_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 BRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_02_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 BVALID" *) output BLP_S_AXI_DATA_H2C_02_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RDATA" *) output [31:0]BLP_S_AXI_DATA_H2C_02_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RLAST" *) output BLP_S_AXI_DATA_H2C_02_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RREADY" *) input BLP_S_AXI_DATA_H2C_02_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_02_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RVALID" *) output BLP_S_AXI_DATA_H2C_02_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WDATA" *) input [31:0]BLP_S_AXI_DATA_H2C_02_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WLAST" *) input BLP_S_AXI_DATA_H2C_02_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WREADY" *) output BLP_S_AXI_DATA_H2C_02_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WSTRB" *) input [3:0]BLP_S_AXI_DATA_H2C_02_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WVALID" *) input BLP_S_AXI_DATA_H2C_02_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_03, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 128, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]BLP_S_AXI_DATA_H2C_03_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_03_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_03_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARID" *) input [3:0]BLP_S_AXI_DATA_H2C_03_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_03_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_03_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_03_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARREADY" *) output BLP_S_AXI_DATA_H2C_03_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARVALID" *) input BLP_S_AXI_DATA_H2C_03_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWADDR" *) input [38:0]BLP_S_AXI_DATA_H2C_03_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_03_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_03_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWID" *) input [3:0]BLP_S_AXI_DATA_H2C_03_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_03_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_03_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_03_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWREADY" *) output BLP_S_AXI_DATA_H2C_03_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWVALID" *) input BLP_S_AXI_DATA_H2C_03_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BID" *) output [3:0]BLP_S_AXI_DATA_H2C_03_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BREADY" *) input BLP_S_AXI_DATA_H2C_03_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_03_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BVALID" *) output BLP_S_AXI_DATA_H2C_03_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RDATA" *) output [127:0]BLP_S_AXI_DATA_H2C_03_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RID" *) output [3:0]BLP_S_AXI_DATA_H2C_03_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RLAST" *) output BLP_S_AXI_DATA_H2C_03_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RREADY" *) input BLP_S_AXI_DATA_H2C_03_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_03_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RVALID" *) output BLP_S_AXI_DATA_H2C_03_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WDATA" *) input [127:0]BLP_S_AXI_DATA_H2C_03_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WLAST" *) input BLP_S_AXI_DATA_H2C_03_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WREADY" *) output BLP_S_AXI_DATA_H2C_03_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WSTRB" *) input [15:0]BLP_S_AXI_DATA_H2C_03_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WVALID" *) input BLP_S_AXI_DATA_H2C_03_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [24:0]ULP_M_AXI_CTRL_USER_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARREADY" *) input ULP_M_AXI_CTRL_USER_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARVALID" *) output ULP_M_AXI_CTRL_USER_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_USER_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWREADY" *) input ULP_M_AXI_CTRL_USER_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWVALID" *) output ULP_M_AXI_CTRL_USER_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BREADY" *) output ULP_M_AXI_CTRL_USER_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BVALID" *) input ULP_M_AXI_CTRL_USER_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RDATA" *) input [31:0]ULP_M_AXI_CTRL_USER_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RREADY" *) output ULP_M_AXI_CTRL_USER_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RVALID" *) input ULP_M_AXI_CTRL_USER_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WDATA" *) output [31:0]ULP_M_AXI_CTRL_USER_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WREADY" *) input ULP_M_AXI_CTRL_USER_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_USER_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WVALID" *) output ULP_M_AXI_CTRL_USER_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [24:0]ULP_M_AXI_CTRL_USER_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARREADY" *) input ULP_M_AXI_CTRL_USER_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 ARVALID" *) output ULP_M_AXI_CTRL_USER_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_USER_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWREADY" *) input ULP_M_AXI_CTRL_USER_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 AWVALID" *) output ULP_M_AXI_CTRL_USER_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 BREADY" *) output ULP_M_AXI_CTRL_USER_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 BRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 BVALID" *) input ULP_M_AXI_CTRL_USER_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RDATA" *) input [31:0]ULP_M_AXI_CTRL_USER_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RREADY" *) output ULP_M_AXI_CTRL_USER_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 RVALID" *) input ULP_M_AXI_CTRL_USER_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WDATA" *) output [31:0]ULP_M_AXI_CTRL_USER_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WREADY" *) input ULP_M_AXI_CTRL_USER_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_USER_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_01 WVALID" *) output ULP_M_AXI_CTRL_USER_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_02, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [24:0]ULP_M_AXI_CTRL_USER_02_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_02_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 ARREADY" *) input ULP_M_AXI_CTRL_USER_02_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 ARVALID" *) output ULP_M_AXI_CTRL_USER_02_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_USER_02_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_02_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 AWREADY" *) input ULP_M_AXI_CTRL_USER_02_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 AWVALID" *) output ULP_M_AXI_CTRL_USER_02_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 BREADY" *) output ULP_M_AXI_CTRL_USER_02_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 BRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_02_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 BVALID" *) input ULP_M_AXI_CTRL_USER_02_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 RDATA" *) input [31:0]ULP_M_AXI_CTRL_USER_02_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 RREADY" *) output ULP_M_AXI_CTRL_USER_02_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 RRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_02_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 RVALID" *) input ULP_M_AXI_CTRL_USER_02_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 WDATA" *) output [31:0]ULP_M_AXI_CTRL_USER_02_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 WREADY" *) input ULP_M_AXI_CTRL_USER_02_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_USER_02_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_02 WVALID" *) output ULP_M_AXI_CTRL_USER_02_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_00, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [38:0]ULP_M_AXI_DATA_H2C_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_00_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARCACHE" *) output [3:0]ULP_M_AXI_DATA_H2C_00_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARID" *) output [3:0]ULP_M_AXI_DATA_H2C_00_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_00_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLOCK" *) output [0:0]ULP_M_AXI_DATA_H2C_00_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARPROT" *) output [2:0]ULP_M_AXI_DATA_H2C_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARREADY" *) input ULP_M_AXI_DATA_H2C_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARVALID" *) output ULP_M_AXI_DATA_H2C_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWADDR" *) output [38:0]ULP_M_AXI_DATA_H2C_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_00_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWCACHE" *) output [3:0]ULP_M_AXI_DATA_H2C_00_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWID" *) output [3:0]ULP_M_AXI_DATA_H2C_00_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_00_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLOCK" *) output [0:0]ULP_M_AXI_DATA_H2C_00_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWPROT" *) output [2:0]ULP_M_AXI_DATA_H2C_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWREADY" *) input ULP_M_AXI_DATA_H2C_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWVALID" *) output ULP_M_AXI_DATA_H2C_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BID" *) input [3:0]ULP_M_AXI_DATA_H2C_00_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BREADY" *) output ULP_M_AXI_DATA_H2C_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BVALID" *) input ULP_M_AXI_DATA_H2C_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RDATA" *) input [511:0]ULP_M_AXI_DATA_H2C_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RID" *) input [3:0]ULP_M_AXI_DATA_H2C_00_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RLAST" *) input ULP_M_AXI_DATA_H2C_00_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RREADY" *) output ULP_M_AXI_DATA_H2C_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RVALID" *) input ULP_M_AXI_DATA_H2C_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WDATA" *) output [511:0]ULP_M_AXI_DATA_H2C_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WLAST" *) output ULP_M_AXI_DATA_H2C_00_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WREADY" *) input ULP_M_AXI_DATA_H2C_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WSTRB" *) output [63:0]ULP_M_AXI_DATA_H2C_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WVALID" *) output ULP_M_AXI_DATA_H2C_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_01, ADDR_WIDTH 40, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 64, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [39:0]ULP_M_AXI_DATA_H2C_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_01_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARCACHE" *) output [3:0]ULP_M_AXI_DATA_H2C_01_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARID" *) output [1:0]ULP_M_AXI_DATA_H2C_01_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_01_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARLOCK" *) output [0:0]ULP_M_AXI_DATA_H2C_01_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARPROT" *) output [2:0]ULP_M_AXI_DATA_H2C_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARREADY" *) input ULP_M_AXI_DATA_H2C_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 ARVALID" *) output ULP_M_AXI_DATA_H2C_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWADDR" *) output [39:0]ULP_M_AXI_DATA_H2C_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_01_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWCACHE" *) output [3:0]ULP_M_AXI_DATA_H2C_01_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWID" *) output [1:0]ULP_M_AXI_DATA_H2C_01_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_01_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWLOCK" *) output [0:0]ULP_M_AXI_DATA_H2C_01_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWPROT" *) output [2:0]ULP_M_AXI_DATA_H2C_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWREADY" *) input ULP_M_AXI_DATA_H2C_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 AWVALID" *) output ULP_M_AXI_DATA_H2C_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 BID" *) input [1:0]ULP_M_AXI_DATA_H2C_01_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 BREADY" *) output ULP_M_AXI_DATA_H2C_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 BRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 BVALID" *) input ULP_M_AXI_DATA_H2C_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 RDATA" *) input [63:0]ULP_M_AXI_DATA_H2C_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 RID" *) input [1:0]ULP_M_AXI_DATA_H2C_01_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 RLAST" *) input ULP_M_AXI_DATA_H2C_01_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 RREADY" *) output ULP_M_AXI_DATA_H2C_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 RRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 RVALID" *) input ULP_M_AXI_DATA_H2C_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 WDATA" *) output [63:0]ULP_M_AXI_DATA_H2C_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 WLAST" *) output ULP_M_AXI_DATA_H2C_01_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 WREADY" *) input ULP_M_AXI_DATA_H2C_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 WSTRB" *) output [7:0]ULP_M_AXI_DATA_H2C_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_01 WVALID" *) output ULP_M_AXI_DATA_H2C_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_02, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]ULP_M_AXI_DATA_H2C_02_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_02_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARCACHE" *) output [3:0]ULP_M_AXI_DATA_H2C_02_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_02_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARLOCK" *) output [0:0]ULP_M_AXI_DATA_H2C_02_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARPROT" *) output [2:0]ULP_M_AXI_DATA_H2C_02_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARREADY" *) input ULP_M_AXI_DATA_H2C_02_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 ARVALID" *) output ULP_M_AXI_DATA_H2C_02_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWADDR" *) output [31:0]ULP_M_AXI_DATA_H2C_02_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_02_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWCACHE" *) output [3:0]ULP_M_AXI_DATA_H2C_02_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_02_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWLOCK" *) output [0:0]ULP_M_AXI_DATA_H2C_02_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWPROT" *) output [2:0]ULP_M_AXI_DATA_H2C_02_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWREADY" *) input ULP_M_AXI_DATA_H2C_02_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 AWVALID" *) output ULP_M_AXI_DATA_H2C_02_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 BREADY" *) output ULP_M_AXI_DATA_H2C_02_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 BRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_02_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 BVALID" *) input ULP_M_AXI_DATA_H2C_02_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 RDATA" *) input [31:0]ULP_M_AXI_DATA_H2C_02_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 RLAST" *) input ULP_M_AXI_DATA_H2C_02_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 RREADY" *) output ULP_M_AXI_DATA_H2C_02_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 RRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_02_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 RVALID" *) input ULP_M_AXI_DATA_H2C_02_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 WDATA" *) output [31:0]ULP_M_AXI_DATA_H2C_02_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 WLAST" *) output ULP_M_AXI_DATA_H2C_02_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 WREADY" *) input ULP_M_AXI_DATA_H2C_02_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 WSTRB" *) output [3:0]ULP_M_AXI_DATA_H2C_02_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_02 WVALID" *) output ULP_M_AXI_DATA_H2C_02_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_03, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 128, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [38:0]ULP_M_AXI_DATA_H2C_03_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_03_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARCACHE" *) output [3:0]ULP_M_AXI_DATA_H2C_03_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARID" *) output [3:0]ULP_M_AXI_DATA_H2C_03_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_03_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARLOCK" *) output [0:0]ULP_M_AXI_DATA_H2C_03_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARPROT" *) output [2:0]ULP_M_AXI_DATA_H2C_03_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARREADY" *) input ULP_M_AXI_DATA_H2C_03_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 ARVALID" *) output ULP_M_AXI_DATA_H2C_03_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWADDR" *) output [38:0]ULP_M_AXI_DATA_H2C_03_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_03_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWCACHE" *) output [3:0]ULP_M_AXI_DATA_H2C_03_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWID" *) output [3:0]ULP_M_AXI_DATA_H2C_03_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_03_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWLOCK" *) output [0:0]ULP_M_AXI_DATA_H2C_03_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWPROT" *) output [2:0]ULP_M_AXI_DATA_H2C_03_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWREADY" *) input ULP_M_AXI_DATA_H2C_03_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 AWVALID" *) output ULP_M_AXI_DATA_H2C_03_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 BID" *) input [3:0]ULP_M_AXI_DATA_H2C_03_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 BREADY" *) output ULP_M_AXI_DATA_H2C_03_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 BRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_03_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 BVALID" *) input ULP_M_AXI_DATA_H2C_03_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 RDATA" *) input [127:0]ULP_M_AXI_DATA_H2C_03_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 RID" *) input [3:0]ULP_M_AXI_DATA_H2C_03_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 RLAST" *) input ULP_M_AXI_DATA_H2C_03_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 RREADY" *) output ULP_M_AXI_DATA_H2C_03_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 RRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_03_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 RVALID" *) input ULP_M_AXI_DATA_H2C_03_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 WDATA" *) output [127:0]ULP_M_AXI_DATA_H2C_03_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 WLAST" *) output ULP_M_AXI_DATA_H2C_03_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 WREADY" *) input ULP_M_AXI_DATA_H2C_03_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 WSTRB" *) output [15:0]ULP_M_AXI_DATA_H2C_03_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_03 WVALID" *) output ULP_M_AXI_DATA_H2C_03_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_DNA_FROM_ULP_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_M_DATA_DNA_FROM_ULP_00, LAYERED_METADATA undef" *) output [2:0]blp_m_data_dna_from_ulp_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_MEMORY_CALIB_COMPLETE_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_M_DATA_MEMORY_CALIB_COMPLETE_00, LAYERED_METADATA undef" *) output [0:0]blp_m_data_memory_calib_complete_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_IRQ_CU_00 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.BLP_M_IRQ_CU_00, PortWidth 128, SENSITIVITY level_high" *) output [127:0]blp_m_irq_cu_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_CTRL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_CTRL_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_CTRL_USER_01:BLP_S_AXI_DATA_H2C_02:blp_m_data_dna_from_ulp_00:blp_m_data_memory_calib_complete_00:blp_s_data_dout_dna_00:blp_s_data_slice_pr_reset_to_ulp_00, ASSOCIATED_RESET BLP_S_ARESETN_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL2_REF_CLK_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL2_REF_CLK_00, CLK_DOMAIN cd_kernel2_ref_clk_00, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_kernel2_ref_clk_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_REF_CLK_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_REF_CLK_00, ASSOCIATED_BUSIF blp_s_data_clkwiz_kernel_clk_out1_locked_00, ASSOCIATED_RESET BLP_S_ARESETN_KERNEL_REF_CLK_00, CLK_DOMAIN cd_kernel_ref_clk_00, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_kernel_ref_clk_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_PCIE_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_PCIE_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_02:BLP_S_AXI_DATA_H2C_00:BLP_S_AXI_DATA_H2C_01:BLP_S_AXI_DATA_H2C_03:blp_m_irq_cu_00:blp_s_data_perstn_out_00, ASSOCIATED_RESET BLP_S_ARESETN_PCIE_00, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_CTRL_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_CTRL_00, INSERT_VIP 0, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input [0:0]blp_s_aresetn_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_KERNEL_REF_CLK_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_KERNEL_REF_CLK_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [0:0]blp_s_aresetn_kernel_ref_clk_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_PCIE_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_PCIE_00, INSERT_VIP 0, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input [0:0]blp_s_aresetn_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00, LAYERED_METADATA undef" *) input [0:0]blp_s_data_clkwiz_kernel_clk_out1_locked_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_DOUT_DNA_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_DOUT_DNA_00, LAYERED_METADATA undef" *) input [0:0]blp_s_data_dout_dna_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_PERSTN_OUT_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_PERSTN_OUT_00, LAYERED_METADATA undef" *) input [2:0]blp_s_data_perstn_out_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_SLICE_PR_RESET_TO_ULP_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_SLICE_PR_RESET_TO_ULP_00, LAYERED_METADATA undef" *) input [1:0]blp_s_data_slice_pr_reset_to_ulp_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_CTRL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_CTRL_00, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_USER_00:ULP_M_AXI_CTRL_USER_01:ULP_M_AXI_DATA_H2C_02:ulp_m_data_slice_pr_reset_to_ulp_00:ulp_s_data_memory_calib_complete_00:ulp_s_data_dna_from_ulp_00:ulp_m_data_dout_dna_00, ASSOCIATED_RESET ULP_M_ARESETN_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_KERNEL2_REF_CLK_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_KERNEL2_REF_CLK_00, CLK_DOMAIN cd_kernel2_ref_clk_00, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_kernel2_ref_clk_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_KERNEL_REF_CLK_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_KERNEL_REF_CLK_00, ASSOCIATED_BUSIF ulp_m_data_clkwiz_kernel_clk_out1_locked_00, ASSOCIATED_RESET ULP_M_ARESETN_KERNEL_REF_CLK_00, CLK_DOMAIN cd_kernel_ref_clk_00, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_kernel_ref_clk_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_PCIE_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_PCIE_00, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_USER_02:ULP_M_AXI_DATA_H2C_00:ULP_M_AXI_DATA_H2C_01:ULP_M_AXI_DATA_H2C_03:ulp_m_data_perstn_out_00:ulp_s_irq_cu_00, ASSOCIATED_RESET ULP_M_ARESETN_PCIE_00, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_CTRL_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ULP_M_ARESETN_CTRL_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]ulp_m_aresetn_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_KERNEL_REF_CLK_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ULP_M_ARESETN_KERNEL_REF_CLK_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]ulp_m_aresetn_kernel_ref_clk_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_PCIE_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ULP_M_ARESETN_PCIE_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]ulp_m_aresetn_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_M_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_M_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00, LAYERED_METADATA undef" *) output [0:0]ulp_m_data_clkwiz_kernel_clk_out1_locked_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_M_DATA_DOUT_DNA_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_M_DATA_DOUT_DNA_00, LAYERED_METADATA undef" *) output [0:0]ulp_m_data_dout_dna_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_M_DATA_PERSTN_OUT_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_M_DATA_PERSTN_OUT_00, LAYERED_METADATA undef" *) output [2:0]ulp_m_data_perstn_out_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_M_DATA_SLICE_PR_RESET_TO_ULP_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_M_DATA_SLICE_PR_RESET_TO_ULP_00, LAYERED_METADATA undef" *) output [1:0]ulp_m_data_slice_pr_reset_to_ulp_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_S_DATA_DNA_FROM_ULP_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_S_DATA_DNA_FROM_ULP_00, LAYERED_METADATA undef" *) input [2:0]ulp_s_data_dna_from_ulp_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ULP_S_DATA_MEMORY_CALIB_COMPLETE_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ULP_S_DATA_MEMORY_CALIB_COMPLETE_00, LAYERED_METADATA undef" *) input [0:0]ulp_s_data_memory_calib_complete_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.ULP_S_IRQ_CU_00 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.ULP_S_IRQ_CU_00, PortWidth 128, SENSITIVITY level_high" *) input [127:0]ulp_s_irq_cu_00;

  wire [24:0]BLP_S_AXI_CTRL_USER_00_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_1_ARPROT;
  wire BLP_S_AXI_CTRL_USER_00_1_ARREADY;
  wire BLP_S_AXI_CTRL_USER_00_1_ARVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_00_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_1_AWPROT;
  wire BLP_S_AXI_CTRL_USER_00_1_AWREADY;
  wire BLP_S_AXI_CTRL_USER_00_1_AWVALID;
  wire BLP_S_AXI_CTRL_USER_00_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_1_BRESP;
  wire BLP_S_AXI_CTRL_USER_00_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_1_RDATA;
  wire BLP_S_AXI_CTRL_USER_00_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_1_RRESP;
  wire BLP_S_AXI_CTRL_USER_00_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_1_WDATA;
  wire BLP_S_AXI_CTRL_USER_00_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_USER_00_1_WSTRB;
  wire BLP_S_AXI_CTRL_USER_00_1_WVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_01_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_01_1_ARPROT;
  wire BLP_S_AXI_CTRL_USER_01_1_ARREADY;
  wire BLP_S_AXI_CTRL_USER_01_1_ARVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_01_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_01_1_AWPROT;
  wire BLP_S_AXI_CTRL_USER_01_1_AWREADY;
  wire BLP_S_AXI_CTRL_USER_01_1_AWVALID;
  wire BLP_S_AXI_CTRL_USER_01_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_01_1_BRESP;
  wire BLP_S_AXI_CTRL_USER_01_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_01_1_RDATA;
  wire BLP_S_AXI_CTRL_USER_01_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_01_1_RRESP;
  wire BLP_S_AXI_CTRL_USER_01_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_01_1_WDATA;
  wire BLP_S_AXI_CTRL_USER_01_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_USER_01_1_WSTRB;
  wire BLP_S_AXI_CTRL_USER_01_1_WVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_02_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_02_1_ARPROT;
  wire BLP_S_AXI_CTRL_USER_02_1_ARREADY;
  wire BLP_S_AXI_CTRL_USER_02_1_ARVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_02_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_02_1_AWPROT;
  wire BLP_S_AXI_CTRL_USER_02_1_AWREADY;
  wire BLP_S_AXI_CTRL_USER_02_1_AWVALID;
  wire BLP_S_AXI_CTRL_USER_02_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_02_1_BRESP;
  wire BLP_S_AXI_CTRL_USER_02_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_02_1_RDATA;
  wire BLP_S_AXI_CTRL_USER_02_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_02_1_RRESP;
  wire BLP_S_AXI_CTRL_USER_02_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_02_1_WDATA;
  wire BLP_S_AXI_CTRL_USER_02_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_USER_02_1_WSTRB;
  wire BLP_S_AXI_CTRL_USER_02_1_WVALID;
  wire [38:0]BLP_S_AXI_DATA_H2C_00_1_ARADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_ARBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_ARCACHE;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_ARID;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_1_ARLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_00_1_ARLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_00_1_ARPROT;
  wire BLP_S_AXI_DATA_H2C_00_1_ARREADY;
  wire BLP_S_AXI_DATA_H2C_00_1_ARVALID;
  wire [38:0]BLP_S_AXI_DATA_H2C_00_1_AWADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_AWBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_AWCACHE;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_AWID;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_1_AWLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_00_1_AWLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_00_1_AWPROT;
  wire BLP_S_AXI_DATA_H2C_00_1_AWREADY;
  wire BLP_S_AXI_DATA_H2C_00_1_AWVALID;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_BID;
  wire BLP_S_AXI_DATA_H2C_00_1_BREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_BRESP;
  wire BLP_S_AXI_DATA_H2C_00_1_BVALID;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_1_RDATA;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_RID;
  wire BLP_S_AXI_DATA_H2C_00_1_RLAST;
  wire BLP_S_AXI_DATA_H2C_00_1_RREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_RRESP;
  wire BLP_S_AXI_DATA_H2C_00_1_RVALID;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_1_WDATA;
  wire BLP_S_AXI_DATA_H2C_00_1_WLAST;
  wire BLP_S_AXI_DATA_H2C_00_1_WREADY;
  wire [63:0]BLP_S_AXI_DATA_H2C_00_1_WSTRB;
  wire BLP_S_AXI_DATA_H2C_00_1_WVALID;
  wire [39:0]BLP_S_AXI_DATA_H2C_01_1_ARADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_ARBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_01_1_ARCACHE;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_ARID;
  wire [7:0]BLP_S_AXI_DATA_H2C_01_1_ARLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_01_1_ARLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_01_1_ARPROT;
  wire BLP_S_AXI_DATA_H2C_01_1_ARREADY;
  wire BLP_S_AXI_DATA_H2C_01_1_ARVALID;
  wire [39:0]BLP_S_AXI_DATA_H2C_01_1_AWADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_AWBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_01_1_AWCACHE;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_AWID;
  wire [7:0]BLP_S_AXI_DATA_H2C_01_1_AWLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_01_1_AWLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_01_1_AWPROT;
  wire BLP_S_AXI_DATA_H2C_01_1_AWREADY;
  wire BLP_S_AXI_DATA_H2C_01_1_AWVALID;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_BID;
  wire BLP_S_AXI_DATA_H2C_01_1_BREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_BRESP;
  wire BLP_S_AXI_DATA_H2C_01_1_BVALID;
  wire [63:0]BLP_S_AXI_DATA_H2C_01_1_RDATA;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_RID;
  wire BLP_S_AXI_DATA_H2C_01_1_RLAST;
  wire BLP_S_AXI_DATA_H2C_01_1_RREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_RRESP;
  wire BLP_S_AXI_DATA_H2C_01_1_RVALID;
  wire [63:0]BLP_S_AXI_DATA_H2C_01_1_WDATA;
  wire BLP_S_AXI_DATA_H2C_01_1_WLAST;
  wire BLP_S_AXI_DATA_H2C_01_1_WREADY;
  wire [7:0]BLP_S_AXI_DATA_H2C_01_1_WSTRB;
  wire BLP_S_AXI_DATA_H2C_01_1_WVALID;
  wire [31:0]BLP_S_AXI_DATA_H2C_02_1_ARADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_02_1_ARBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_02_1_ARCACHE;
  wire [7:0]BLP_S_AXI_DATA_H2C_02_1_ARLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_02_1_ARLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_02_1_ARPROT;
  wire BLP_S_AXI_DATA_H2C_02_1_ARREADY;
  wire BLP_S_AXI_DATA_H2C_02_1_ARVALID;
  wire [31:0]BLP_S_AXI_DATA_H2C_02_1_AWADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_02_1_AWBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_02_1_AWCACHE;
  wire [7:0]BLP_S_AXI_DATA_H2C_02_1_AWLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_02_1_AWLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_02_1_AWPROT;
  wire BLP_S_AXI_DATA_H2C_02_1_AWREADY;
  wire BLP_S_AXI_DATA_H2C_02_1_AWVALID;
  wire BLP_S_AXI_DATA_H2C_02_1_BREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_02_1_BRESP;
  wire BLP_S_AXI_DATA_H2C_02_1_BVALID;
  wire [31:0]BLP_S_AXI_DATA_H2C_02_1_RDATA;
  wire BLP_S_AXI_DATA_H2C_02_1_RLAST;
  wire BLP_S_AXI_DATA_H2C_02_1_RREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_02_1_RRESP;
  wire BLP_S_AXI_DATA_H2C_02_1_RVALID;
  wire [31:0]BLP_S_AXI_DATA_H2C_02_1_WDATA;
  wire BLP_S_AXI_DATA_H2C_02_1_WLAST;
  wire BLP_S_AXI_DATA_H2C_02_1_WREADY;
  wire [3:0]BLP_S_AXI_DATA_H2C_02_1_WSTRB;
  wire BLP_S_AXI_DATA_H2C_02_1_WVALID;
  wire [38:0]BLP_S_AXI_DATA_H2C_03_1_ARADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_03_1_ARBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_1_ARCACHE;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_1_ARID;
  wire [7:0]BLP_S_AXI_DATA_H2C_03_1_ARLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_03_1_ARLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_03_1_ARPROT;
  wire BLP_S_AXI_DATA_H2C_03_1_ARREADY;
  wire BLP_S_AXI_DATA_H2C_03_1_ARVALID;
  wire [38:0]BLP_S_AXI_DATA_H2C_03_1_AWADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_03_1_AWBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_1_AWCACHE;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_1_AWID;
  wire [7:0]BLP_S_AXI_DATA_H2C_03_1_AWLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_03_1_AWLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_03_1_AWPROT;
  wire BLP_S_AXI_DATA_H2C_03_1_AWREADY;
  wire BLP_S_AXI_DATA_H2C_03_1_AWVALID;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_1_BID;
  wire BLP_S_AXI_DATA_H2C_03_1_BREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_03_1_BRESP;
  wire BLP_S_AXI_DATA_H2C_03_1_BVALID;
  wire [127:0]BLP_S_AXI_DATA_H2C_03_1_RDATA;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_1_RID;
  wire BLP_S_AXI_DATA_H2C_03_1_RLAST;
  wire BLP_S_AXI_DATA_H2C_03_1_RREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_03_1_RRESP;
  wire BLP_S_AXI_DATA_H2C_03_1_RVALID;
  wire [127:0]BLP_S_AXI_DATA_H2C_03_1_WDATA;
  wire BLP_S_AXI_DATA_H2C_03_1_WLAST;
  wire BLP_S_AXI_DATA_H2C_03_1_WREADY;
  wire [15:0]BLP_S_AXI_DATA_H2C_03_1_WSTRB;
  wire BLP_S_AXI_DATA_H2C_03_1_WVALID;
  wire blp_s_aclk_ctrl_00_1;
  wire blp_s_aclk_kernel2_ref_clk_00_1;
  wire blp_s_aclk_kernel_ref_clk_00_1;
  wire blp_s_aclk_pcie_00_1;
  wire [0:0]blp_s_aresetn_ctrl_00_1;
  wire [0:0]blp_s_aresetn_kernel_ref_clk_00_1;
  wire [0:0]blp_s_aresetn_pcie_00_1;
  wire [0:0]blp_s_data_clkwiz_kernel_clk_out1_locked_00_1;
  wire [0:0]blp_s_data_dout_dna_00_1;
  wire [2:0]blp_s_data_perstn_out_00_1;
  wire [1:0]blp_s_data_slice_pr_reset_to_ulp_00_1;
  wire [24:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARADDR;
  wire [2:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARPROT;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARREADY;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARVALID;
  wire [24:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWADDR;
  wire [2:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWPROT;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWREADY;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWVALID;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BRESP;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BVALID;
  wire [31:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RDATA;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RRESP;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RVALID;
  wire [31:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WDATA;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WREADY;
  wire [3:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WSTRB;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WVALID;
  wire [24:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_01_ARADDR;
  wire [2:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_01_ARPROT;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_01_ARREADY;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_01_ARVALID;
  wire [24:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_01_AWADDR;
  wire [2:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_01_AWPROT;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_01_AWREADY;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_01_AWVALID;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_01_BREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_01_BRESP;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_01_BVALID;
  wire [31:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_01_RDATA;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_01_RREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_01_RRESP;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_01_RVALID;
  wire [31:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_01_WDATA;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_01_WREADY;
  wire [3:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_01_WSTRB;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_01_WVALID;
  wire [24:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_02_ARADDR;
  wire [2:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_02_ARPROT;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_02_ARREADY;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_02_ARVALID;
  wire [24:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_02_AWADDR;
  wire [2:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_02_AWPROT;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_02_AWREADY;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_02_AWVALID;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_02_BREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_02_BRESP;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_02_BVALID;
  wire [31:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_02_RDATA;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_02_RREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_02_RRESP;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_02_RVALID;
  wire [31:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_02_WDATA;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_02_WREADY;
  wire [3:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_02_WSTRB;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_02_WVALID;
  wire [38:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARADDR;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARBURST;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARCACHE;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARID;
  wire [7:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARLEN;
  wire [0:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARLOCK;
  wire [2:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARPROT;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARREADY;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARVALID;
  wire [38:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWADDR;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWBURST;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWCACHE;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWID;
  wire [7:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWLEN;
  wire [0:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWLOCK;
  wire [2:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWPROT;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWREADY;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWVALID;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BID;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BRESP;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BVALID;
  wire [511:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RDATA;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RID;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RLAST;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RRESP;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RVALID;
  wire [511:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WDATA;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WLAST;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WREADY;
  wire [63:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WSTRB;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WVALID;
  wire [39:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARADDR;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARBURST;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARCACHE;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARID;
  wire [7:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARLEN;
  wire [0:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARLOCK;
  wire [2:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARPROT;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARREADY;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARVALID;
  wire [39:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWADDR;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWBURST;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWCACHE;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWID;
  wire [7:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWLEN;
  wire [0:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWLOCK;
  wire [2:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWPROT;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWREADY;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWVALID;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_BID;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_01_BREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_BRESP;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_01_BVALID;
  wire [63:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RDATA;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RID;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RLAST;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RRESP;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RVALID;
  wire [63:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WDATA;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WLAST;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WREADY;
  wire [7:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WSTRB;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WVALID;
  wire [31:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARADDR;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARBURST;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARCACHE;
  wire [7:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARLEN;
  wire [0:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARLOCK;
  wire [2:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARPROT;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARREADY;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARVALID;
  wire [31:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWADDR;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWBURST;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWCACHE;
  wire [7:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWLEN;
  wire [0:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWLOCK;
  wire [2:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWPROT;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWREADY;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWVALID;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_02_BREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_BRESP;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_02_BVALID;
  wire [31:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RDATA;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RLAST;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RRESP;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RVALID;
  wire [31:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WDATA;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WLAST;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WREADY;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WSTRB;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WVALID;
  wire [38:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARADDR;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARBURST;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARCACHE;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARID;
  wire [7:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARLEN;
  wire [0:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARLOCK;
  wire [2:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARPROT;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARREADY;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARVALID;
  wire [38:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWADDR;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWBURST;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWCACHE;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWID;
  wire [7:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWLEN;
  wire [0:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWLOCK;
  wire [2:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWPROT;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWREADY;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWVALID;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_BID;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_03_BREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_BRESP;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_03_BVALID;
  wire [127:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RDATA;
  wire [3:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RID;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RLAST;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RRESP;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RVALID;
  wire [127:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WDATA;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WLAST;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WREADY;
  wire [15:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WSTRB;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WVALID;
  wire [2:0]pxi_ii_core_blp_m_data_dna_from_ulp_00;
  wire [0:0]pxi_ii_core_blp_m_data_memory_calib_complete_00;
  wire [127:0]pxi_ii_core_blp_m_irq_cu_00;
  wire pxi_ii_core_ulp_m_aclk_ctrl_00;
  wire pxi_ii_core_ulp_m_aclk_kernel2_ref_clk_00;
  wire pxi_ii_core_ulp_m_aclk_kernel_ref_clk_00;
  wire pxi_ii_core_ulp_m_aclk_pcie_00;
  wire [0:0]pxi_ii_core_ulp_m_aresetn_ctrl_00;
  wire [0:0]pxi_ii_core_ulp_m_aresetn_kernel_ref_clk_00;
  wire [0:0]pxi_ii_core_ulp_m_aresetn_pcie_00;
  wire [0:0]pxi_ii_core_ulp_m_data_clkwiz_kernel_clk_out1_locked_00;
  wire [0:0]pxi_ii_core_ulp_m_data_dout_dna_00;
  wire [2:0]pxi_ii_core_ulp_m_data_perstn_out_00;
  wire [1:0]pxi_ii_core_ulp_m_data_slice_pr_reset_to_ulp_00;
  wire [2:0]ulp_s_data_dna_from_ulp_00_1;
  wire [0:0]ulp_s_data_memory_calib_complete_00_1;
  wire [127:0]ulp_s_irq_cu_00_1;

  assign BLP_S_AXI_CTRL_USER_00_1_ARADDR = BLP_S_AXI_CTRL_USER_00_araddr[24:0];
  assign BLP_S_AXI_CTRL_USER_00_1_ARPROT = BLP_S_AXI_CTRL_USER_00_arprot[2:0];
  assign BLP_S_AXI_CTRL_USER_00_1_ARVALID = BLP_S_AXI_CTRL_USER_00_arvalid;
  assign BLP_S_AXI_CTRL_USER_00_1_AWADDR = BLP_S_AXI_CTRL_USER_00_awaddr[24:0];
  assign BLP_S_AXI_CTRL_USER_00_1_AWPROT = BLP_S_AXI_CTRL_USER_00_awprot[2:0];
  assign BLP_S_AXI_CTRL_USER_00_1_AWVALID = BLP_S_AXI_CTRL_USER_00_awvalid;
  assign BLP_S_AXI_CTRL_USER_00_1_BREADY = BLP_S_AXI_CTRL_USER_00_bready;
  assign BLP_S_AXI_CTRL_USER_00_1_RREADY = BLP_S_AXI_CTRL_USER_00_rready;
  assign BLP_S_AXI_CTRL_USER_00_1_WDATA = BLP_S_AXI_CTRL_USER_00_wdata[31:0];
  assign BLP_S_AXI_CTRL_USER_00_1_WSTRB = BLP_S_AXI_CTRL_USER_00_wstrb[3:0];
  assign BLP_S_AXI_CTRL_USER_00_1_WVALID = BLP_S_AXI_CTRL_USER_00_wvalid;
  assign BLP_S_AXI_CTRL_USER_00_arready = BLP_S_AXI_CTRL_USER_00_1_ARREADY;
  assign BLP_S_AXI_CTRL_USER_00_awready = BLP_S_AXI_CTRL_USER_00_1_AWREADY;
  assign BLP_S_AXI_CTRL_USER_00_bresp[1:0] = BLP_S_AXI_CTRL_USER_00_1_BRESP;
  assign BLP_S_AXI_CTRL_USER_00_bvalid = BLP_S_AXI_CTRL_USER_00_1_BVALID;
  assign BLP_S_AXI_CTRL_USER_00_rdata[31:0] = BLP_S_AXI_CTRL_USER_00_1_RDATA;
  assign BLP_S_AXI_CTRL_USER_00_rresp[1:0] = BLP_S_AXI_CTRL_USER_00_1_RRESP;
  assign BLP_S_AXI_CTRL_USER_00_rvalid = BLP_S_AXI_CTRL_USER_00_1_RVALID;
  assign BLP_S_AXI_CTRL_USER_00_wready = BLP_S_AXI_CTRL_USER_00_1_WREADY;
  assign BLP_S_AXI_CTRL_USER_01_1_ARADDR = BLP_S_AXI_CTRL_USER_01_araddr[24:0];
  assign BLP_S_AXI_CTRL_USER_01_1_ARPROT = BLP_S_AXI_CTRL_USER_01_arprot[2:0];
  assign BLP_S_AXI_CTRL_USER_01_1_ARVALID = BLP_S_AXI_CTRL_USER_01_arvalid;
  assign BLP_S_AXI_CTRL_USER_01_1_AWADDR = BLP_S_AXI_CTRL_USER_01_awaddr[24:0];
  assign BLP_S_AXI_CTRL_USER_01_1_AWPROT = BLP_S_AXI_CTRL_USER_01_awprot[2:0];
  assign BLP_S_AXI_CTRL_USER_01_1_AWVALID = BLP_S_AXI_CTRL_USER_01_awvalid;
  assign BLP_S_AXI_CTRL_USER_01_1_BREADY = BLP_S_AXI_CTRL_USER_01_bready;
  assign BLP_S_AXI_CTRL_USER_01_1_RREADY = BLP_S_AXI_CTRL_USER_01_rready;
  assign BLP_S_AXI_CTRL_USER_01_1_WDATA = BLP_S_AXI_CTRL_USER_01_wdata[31:0];
  assign BLP_S_AXI_CTRL_USER_01_1_WSTRB = BLP_S_AXI_CTRL_USER_01_wstrb[3:0];
  assign BLP_S_AXI_CTRL_USER_01_1_WVALID = BLP_S_AXI_CTRL_USER_01_wvalid;
  assign BLP_S_AXI_CTRL_USER_01_arready = BLP_S_AXI_CTRL_USER_01_1_ARREADY;
  assign BLP_S_AXI_CTRL_USER_01_awready = BLP_S_AXI_CTRL_USER_01_1_AWREADY;
  assign BLP_S_AXI_CTRL_USER_01_bresp[1:0] = BLP_S_AXI_CTRL_USER_01_1_BRESP;
  assign BLP_S_AXI_CTRL_USER_01_bvalid = BLP_S_AXI_CTRL_USER_01_1_BVALID;
  assign BLP_S_AXI_CTRL_USER_01_rdata[31:0] = BLP_S_AXI_CTRL_USER_01_1_RDATA;
  assign BLP_S_AXI_CTRL_USER_01_rresp[1:0] = BLP_S_AXI_CTRL_USER_01_1_RRESP;
  assign BLP_S_AXI_CTRL_USER_01_rvalid = BLP_S_AXI_CTRL_USER_01_1_RVALID;
  assign BLP_S_AXI_CTRL_USER_01_wready = BLP_S_AXI_CTRL_USER_01_1_WREADY;
  assign BLP_S_AXI_CTRL_USER_02_1_ARADDR = BLP_S_AXI_CTRL_USER_02_araddr[24:0];
  assign BLP_S_AXI_CTRL_USER_02_1_ARPROT = BLP_S_AXI_CTRL_USER_02_arprot[2:0];
  assign BLP_S_AXI_CTRL_USER_02_1_ARVALID = BLP_S_AXI_CTRL_USER_02_arvalid;
  assign BLP_S_AXI_CTRL_USER_02_1_AWADDR = BLP_S_AXI_CTRL_USER_02_awaddr[24:0];
  assign BLP_S_AXI_CTRL_USER_02_1_AWPROT = BLP_S_AXI_CTRL_USER_02_awprot[2:0];
  assign BLP_S_AXI_CTRL_USER_02_1_AWVALID = BLP_S_AXI_CTRL_USER_02_awvalid;
  assign BLP_S_AXI_CTRL_USER_02_1_BREADY = BLP_S_AXI_CTRL_USER_02_bready;
  assign BLP_S_AXI_CTRL_USER_02_1_RREADY = BLP_S_AXI_CTRL_USER_02_rready;
  assign BLP_S_AXI_CTRL_USER_02_1_WDATA = BLP_S_AXI_CTRL_USER_02_wdata[31:0];
  assign BLP_S_AXI_CTRL_USER_02_1_WSTRB = BLP_S_AXI_CTRL_USER_02_wstrb[3:0];
  assign BLP_S_AXI_CTRL_USER_02_1_WVALID = BLP_S_AXI_CTRL_USER_02_wvalid;
  assign BLP_S_AXI_CTRL_USER_02_arready = BLP_S_AXI_CTRL_USER_02_1_ARREADY;
  assign BLP_S_AXI_CTRL_USER_02_awready = BLP_S_AXI_CTRL_USER_02_1_AWREADY;
  assign BLP_S_AXI_CTRL_USER_02_bresp[1:0] = BLP_S_AXI_CTRL_USER_02_1_BRESP;
  assign BLP_S_AXI_CTRL_USER_02_bvalid = BLP_S_AXI_CTRL_USER_02_1_BVALID;
  assign BLP_S_AXI_CTRL_USER_02_rdata[31:0] = BLP_S_AXI_CTRL_USER_02_1_RDATA;
  assign BLP_S_AXI_CTRL_USER_02_rresp[1:0] = BLP_S_AXI_CTRL_USER_02_1_RRESP;
  assign BLP_S_AXI_CTRL_USER_02_rvalid = BLP_S_AXI_CTRL_USER_02_1_RVALID;
  assign BLP_S_AXI_CTRL_USER_02_wready = BLP_S_AXI_CTRL_USER_02_1_WREADY;
  assign BLP_S_AXI_DATA_H2C_00_1_ARADDR = BLP_S_AXI_DATA_H2C_00_araddr[38:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARBURST = BLP_S_AXI_DATA_H2C_00_arburst[1:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARCACHE = BLP_S_AXI_DATA_H2C_00_arcache[3:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARID = BLP_S_AXI_DATA_H2C_00_arid[3:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARLEN = BLP_S_AXI_DATA_H2C_00_arlen[7:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARLOCK = BLP_S_AXI_DATA_H2C_00_arlock[0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARPROT = BLP_S_AXI_DATA_H2C_00_arprot[2:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARVALID = BLP_S_AXI_DATA_H2C_00_arvalid;
  assign BLP_S_AXI_DATA_H2C_00_1_AWADDR = BLP_S_AXI_DATA_H2C_00_awaddr[38:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWBURST = BLP_S_AXI_DATA_H2C_00_awburst[1:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWCACHE = BLP_S_AXI_DATA_H2C_00_awcache[3:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWID = BLP_S_AXI_DATA_H2C_00_awid[3:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWLEN = BLP_S_AXI_DATA_H2C_00_awlen[7:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWLOCK = BLP_S_AXI_DATA_H2C_00_awlock[0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWPROT = BLP_S_AXI_DATA_H2C_00_awprot[2:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWVALID = BLP_S_AXI_DATA_H2C_00_awvalid;
  assign BLP_S_AXI_DATA_H2C_00_1_BREADY = BLP_S_AXI_DATA_H2C_00_bready;
  assign BLP_S_AXI_DATA_H2C_00_1_RREADY = BLP_S_AXI_DATA_H2C_00_rready;
  assign BLP_S_AXI_DATA_H2C_00_1_WDATA = BLP_S_AXI_DATA_H2C_00_wdata[511:0];
  assign BLP_S_AXI_DATA_H2C_00_1_WLAST = BLP_S_AXI_DATA_H2C_00_wlast;
  assign BLP_S_AXI_DATA_H2C_00_1_WSTRB = BLP_S_AXI_DATA_H2C_00_wstrb[63:0];
  assign BLP_S_AXI_DATA_H2C_00_1_WVALID = BLP_S_AXI_DATA_H2C_00_wvalid;
  assign BLP_S_AXI_DATA_H2C_00_arready = BLP_S_AXI_DATA_H2C_00_1_ARREADY;
  assign BLP_S_AXI_DATA_H2C_00_awready = BLP_S_AXI_DATA_H2C_00_1_AWREADY;
  assign BLP_S_AXI_DATA_H2C_00_bid[3:0] = BLP_S_AXI_DATA_H2C_00_1_BID;
  assign BLP_S_AXI_DATA_H2C_00_bresp[1:0] = BLP_S_AXI_DATA_H2C_00_1_BRESP;
  assign BLP_S_AXI_DATA_H2C_00_bvalid = BLP_S_AXI_DATA_H2C_00_1_BVALID;
  assign BLP_S_AXI_DATA_H2C_00_rdata[511:0] = BLP_S_AXI_DATA_H2C_00_1_RDATA;
  assign BLP_S_AXI_DATA_H2C_00_rid[3:0] = BLP_S_AXI_DATA_H2C_00_1_RID;
  assign BLP_S_AXI_DATA_H2C_00_rlast = BLP_S_AXI_DATA_H2C_00_1_RLAST;
  assign BLP_S_AXI_DATA_H2C_00_rresp[1:0] = BLP_S_AXI_DATA_H2C_00_1_RRESP;
  assign BLP_S_AXI_DATA_H2C_00_rvalid = BLP_S_AXI_DATA_H2C_00_1_RVALID;
  assign BLP_S_AXI_DATA_H2C_00_wready = BLP_S_AXI_DATA_H2C_00_1_WREADY;
  assign BLP_S_AXI_DATA_H2C_01_1_ARADDR = BLP_S_AXI_DATA_H2C_01_araddr[39:0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARBURST = BLP_S_AXI_DATA_H2C_01_arburst[1:0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARCACHE = BLP_S_AXI_DATA_H2C_01_arcache[3:0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARID = BLP_S_AXI_DATA_H2C_01_arid[1:0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARLEN = BLP_S_AXI_DATA_H2C_01_arlen[7:0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARLOCK = BLP_S_AXI_DATA_H2C_01_arlock[0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARPROT = BLP_S_AXI_DATA_H2C_01_arprot[2:0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARVALID = BLP_S_AXI_DATA_H2C_01_arvalid;
  assign BLP_S_AXI_DATA_H2C_01_1_AWADDR = BLP_S_AXI_DATA_H2C_01_awaddr[39:0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWBURST = BLP_S_AXI_DATA_H2C_01_awburst[1:0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWCACHE = BLP_S_AXI_DATA_H2C_01_awcache[3:0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWID = BLP_S_AXI_DATA_H2C_01_awid[1:0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWLEN = BLP_S_AXI_DATA_H2C_01_awlen[7:0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWLOCK = BLP_S_AXI_DATA_H2C_01_awlock[0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWPROT = BLP_S_AXI_DATA_H2C_01_awprot[2:0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWVALID = BLP_S_AXI_DATA_H2C_01_awvalid;
  assign BLP_S_AXI_DATA_H2C_01_1_BREADY = BLP_S_AXI_DATA_H2C_01_bready;
  assign BLP_S_AXI_DATA_H2C_01_1_RREADY = BLP_S_AXI_DATA_H2C_01_rready;
  assign BLP_S_AXI_DATA_H2C_01_1_WDATA = BLP_S_AXI_DATA_H2C_01_wdata[63:0];
  assign BLP_S_AXI_DATA_H2C_01_1_WLAST = BLP_S_AXI_DATA_H2C_01_wlast;
  assign BLP_S_AXI_DATA_H2C_01_1_WSTRB = BLP_S_AXI_DATA_H2C_01_wstrb[7:0];
  assign BLP_S_AXI_DATA_H2C_01_1_WVALID = BLP_S_AXI_DATA_H2C_01_wvalid;
  assign BLP_S_AXI_DATA_H2C_01_arready = BLP_S_AXI_DATA_H2C_01_1_ARREADY;
  assign BLP_S_AXI_DATA_H2C_01_awready = BLP_S_AXI_DATA_H2C_01_1_AWREADY;
  assign BLP_S_AXI_DATA_H2C_01_bid[1:0] = BLP_S_AXI_DATA_H2C_01_1_BID;
  assign BLP_S_AXI_DATA_H2C_01_bresp[1:0] = BLP_S_AXI_DATA_H2C_01_1_BRESP;
  assign BLP_S_AXI_DATA_H2C_01_bvalid = BLP_S_AXI_DATA_H2C_01_1_BVALID;
  assign BLP_S_AXI_DATA_H2C_01_rdata[63:0] = BLP_S_AXI_DATA_H2C_01_1_RDATA;
  assign BLP_S_AXI_DATA_H2C_01_rid[1:0] = BLP_S_AXI_DATA_H2C_01_1_RID;
  assign BLP_S_AXI_DATA_H2C_01_rlast = BLP_S_AXI_DATA_H2C_01_1_RLAST;
  assign BLP_S_AXI_DATA_H2C_01_rresp[1:0] = BLP_S_AXI_DATA_H2C_01_1_RRESP;
  assign BLP_S_AXI_DATA_H2C_01_rvalid = BLP_S_AXI_DATA_H2C_01_1_RVALID;
  assign BLP_S_AXI_DATA_H2C_01_wready = BLP_S_AXI_DATA_H2C_01_1_WREADY;
  assign BLP_S_AXI_DATA_H2C_02_1_ARADDR = BLP_S_AXI_DATA_H2C_02_araddr[31:0];
  assign BLP_S_AXI_DATA_H2C_02_1_ARBURST = BLP_S_AXI_DATA_H2C_02_arburst[1:0];
  assign BLP_S_AXI_DATA_H2C_02_1_ARCACHE = BLP_S_AXI_DATA_H2C_02_arcache[3:0];
  assign BLP_S_AXI_DATA_H2C_02_1_ARLEN = BLP_S_AXI_DATA_H2C_02_arlen[7:0];
  assign BLP_S_AXI_DATA_H2C_02_1_ARLOCK = BLP_S_AXI_DATA_H2C_02_arlock[0];
  assign BLP_S_AXI_DATA_H2C_02_1_ARPROT = BLP_S_AXI_DATA_H2C_02_arprot[2:0];
  assign BLP_S_AXI_DATA_H2C_02_1_ARVALID = BLP_S_AXI_DATA_H2C_02_arvalid;
  assign BLP_S_AXI_DATA_H2C_02_1_AWADDR = BLP_S_AXI_DATA_H2C_02_awaddr[31:0];
  assign BLP_S_AXI_DATA_H2C_02_1_AWBURST = BLP_S_AXI_DATA_H2C_02_awburst[1:0];
  assign BLP_S_AXI_DATA_H2C_02_1_AWCACHE = BLP_S_AXI_DATA_H2C_02_awcache[3:0];
  assign BLP_S_AXI_DATA_H2C_02_1_AWLEN = BLP_S_AXI_DATA_H2C_02_awlen[7:0];
  assign BLP_S_AXI_DATA_H2C_02_1_AWLOCK = BLP_S_AXI_DATA_H2C_02_awlock[0];
  assign BLP_S_AXI_DATA_H2C_02_1_AWPROT = BLP_S_AXI_DATA_H2C_02_awprot[2:0];
  assign BLP_S_AXI_DATA_H2C_02_1_AWVALID = BLP_S_AXI_DATA_H2C_02_awvalid;
  assign BLP_S_AXI_DATA_H2C_02_1_BREADY = BLP_S_AXI_DATA_H2C_02_bready;
  assign BLP_S_AXI_DATA_H2C_02_1_RREADY = BLP_S_AXI_DATA_H2C_02_rready;
  assign BLP_S_AXI_DATA_H2C_02_1_WDATA = BLP_S_AXI_DATA_H2C_02_wdata[31:0];
  assign BLP_S_AXI_DATA_H2C_02_1_WLAST = BLP_S_AXI_DATA_H2C_02_wlast;
  assign BLP_S_AXI_DATA_H2C_02_1_WSTRB = BLP_S_AXI_DATA_H2C_02_wstrb[3:0];
  assign BLP_S_AXI_DATA_H2C_02_1_WVALID = BLP_S_AXI_DATA_H2C_02_wvalid;
  assign BLP_S_AXI_DATA_H2C_02_arready = BLP_S_AXI_DATA_H2C_02_1_ARREADY;
  assign BLP_S_AXI_DATA_H2C_02_awready = BLP_S_AXI_DATA_H2C_02_1_AWREADY;
  assign BLP_S_AXI_DATA_H2C_02_bresp[1:0] = BLP_S_AXI_DATA_H2C_02_1_BRESP;
  assign BLP_S_AXI_DATA_H2C_02_bvalid = BLP_S_AXI_DATA_H2C_02_1_BVALID;
  assign BLP_S_AXI_DATA_H2C_02_rdata[31:0] = BLP_S_AXI_DATA_H2C_02_1_RDATA;
  assign BLP_S_AXI_DATA_H2C_02_rlast = BLP_S_AXI_DATA_H2C_02_1_RLAST;
  assign BLP_S_AXI_DATA_H2C_02_rresp[1:0] = BLP_S_AXI_DATA_H2C_02_1_RRESP;
  assign BLP_S_AXI_DATA_H2C_02_rvalid = BLP_S_AXI_DATA_H2C_02_1_RVALID;
  assign BLP_S_AXI_DATA_H2C_02_wready = BLP_S_AXI_DATA_H2C_02_1_WREADY;
  assign BLP_S_AXI_DATA_H2C_03_1_ARADDR = BLP_S_AXI_DATA_H2C_03_araddr[38:0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARBURST = BLP_S_AXI_DATA_H2C_03_arburst[1:0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARCACHE = BLP_S_AXI_DATA_H2C_03_arcache[3:0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARID = BLP_S_AXI_DATA_H2C_03_arid[3:0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARLEN = BLP_S_AXI_DATA_H2C_03_arlen[7:0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARLOCK = BLP_S_AXI_DATA_H2C_03_arlock[0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARPROT = BLP_S_AXI_DATA_H2C_03_arprot[2:0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARVALID = BLP_S_AXI_DATA_H2C_03_arvalid;
  assign BLP_S_AXI_DATA_H2C_03_1_AWADDR = BLP_S_AXI_DATA_H2C_03_awaddr[38:0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWBURST = BLP_S_AXI_DATA_H2C_03_awburst[1:0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWCACHE = BLP_S_AXI_DATA_H2C_03_awcache[3:0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWID = BLP_S_AXI_DATA_H2C_03_awid[3:0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWLEN = BLP_S_AXI_DATA_H2C_03_awlen[7:0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWLOCK = BLP_S_AXI_DATA_H2C_03_awlock[0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWPROT = BLP_S_AXI_DATA_H2C_03_awprot[2:0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWVALID = BLP_S_AXI_DATA_H2C_03_awvalid;
  assign BLP_S_AXI_DATA_H2C_03_1_BREADY = BLP_S_AXI_DATA_H2C_03_bready;
  assign BLP_S_AXI_DATA_H2C_03_1_RREADY = BLP_S_AXI_DATA_H2C_03_rready;
  assign BLP_S_AXI_DATA_H2C_03_1_WDATA = BLP_S_AXI_DATA_H2C_03_wdata[127:0];
  assign BLP_S_AXI_DATA_H2C_03_1_WLAST = BLP_S_AXI_DATA_H2C_03_wlast;
  assign BLP_S_AXI_DATA_H2C_03_1_WSTRB = BLP_S_AXI_DATA_H2C_03_wstrb[15:0];
  assign BLP_S_AXI_DATA_H2C_03_1_WVALID = BLP_S_AXI_DATA_H2C_03_wvalid;
  assign BLP_S_AXI_DATA_H2C_03_arready = BLP_S_AXI_DATA_H2C_03_1_ARREADY;
  assign BLP_S_AXI_DATA_H2C_03_awready = BLP_S_AXI_DATA_H2C_03_1_AWREADY;
  assign BLP_S_AXI_DATA_H2C_03_bid[3:0] = BLP_S_AXI_DATA_H2C_03_1_BID;
  assign BLP_S_AXI_DATA_H2C_03_bresp[1:0] = BLP_S_AXI_DATA_H2C_03_1_BRESP;
  assign BLP_S_AXI_DATA_H2C_03_bvalid = BLP_S_AXI_DATA_H2C_03_1_BVALID;
  assign BLP_S_AXI_DATA_H2C_03_rdata[127:0] = BLP_S_AXI_DATA_H2C_03_1_RDATA;
  assign BLP_S_AXI_DATA_H2C_03_rid[3:0] = BLP_S_AXI_DATA_H2C_03_1_RID;
  assign BLP_S_AXI_DATA_H2C_03_rlast = BLP_S_AXI_DATA_H2C_03_1_RLAST;
  assign BLP_S_AXI_DATA_H2C_03_rresp[1:0] = BLP_S_AXI_DATA_H2C_03_1_RRESP;
  assign BLP_S_AXI_DATA_H2C_03_rvalid = BLP_S_AXI_DATA_H2C_03_1_RVALID;
  assign BLP_S_AXI_DATA_H2C_03_wready = BLP_S_AXI_DATA_H2C_03_1_WREADY;
  assign ULP_M_AXI_CTRL_USER_00_araddr[24:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARADDR;
  assign ULP_M_AXI_CTRL_USER_00_arprot[2:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARPROT;
  assign ULP_M_AXI_CTRL_USER_00_arvalid = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARVALID;
  assign ULP_M_AXI_CTRL_USER_00_awaddr[24:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWADDR;
  assign ULP_M_AXI_CTRL_USER_00_awprot[2:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWPROT;
  assign ULP_M_AXI_CTRL_USER_00_awvalid = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWVALID;
  assign ULP_M_AXI_CTRL_USER_00_bready = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BREADY;
  assign ULP_M_AXI_CTRL_USER_00_rready = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RREADY;
  assign ULP_M_AXI_CTRL_USER_00_wdata[31:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WDATA;
  assign ULP_M_AXI_CTRL_USER_00_wstrb[3:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WSTRB;
  assign ULP_M_AXI_CTRL_USER_00_wvalid = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WVALID;
  assign ULP_M_AXI_CTRL_USER_01_araddr[24:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_01_ARADDR;
  assign ULP_M_AXI_CTRL_USER_01_arprot[2:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_01_ARPROT;
  assign ULP_M_AXI_CTRL_USER_01_arvalid = pxi_ii_core_ULP_M_AXI_CTRL_USER_01_ARVALID;
  assign ULP_M_AXI_CTRL_USER_01_awaddr[24:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_01_AWADDR;
  assign ULP_M_AXI_CTRL_USER_01_awprot[2:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_01_AWPROT;
  assign ULP_M_AXI_CTRL_USER_01_awvalid = pxi_ii_core_ULP_M_AXI_CTRL_USER_01_AWVALID;
  assign ULP_M_AXI_CTRL_USER_01_bready = pxi_ii_core_ULP_M_AXI_CTRL_USER_01_BREADY;
  assign ULP_M_AXI_CTRL_USER_01_rready = pxi_ii_core_ULP_M_AXI_CTRL_USER_01_RREADY;
  assign ULP_M_AXI_CTRL_USER_01_wdata[31:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_01_WDATA;
  assign ULP_M_AXI_CTRL_USER_01_wstrb[3:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_01_WSTRB;
  assign ULP_M_AXI_CTRL_USER_01_wvalid = pxi_ii_core_ULP_M_AXI_CTRL_USER_01_WVALID;
  assign ULP_M_AXI_CTRL_USER_02_araddr[24:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_02_ARADDR;
  assign ULP_M_AXI_CTRL_USER_02_arprot[2:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_02_ARPROT;
  assign ULP_M_AXI_CTRL_USER_02_arvalid = pxi_ii_core_ULP_M_AXI_CTRL_USER_02_ARVALID;
  assign ULP_M_AXI_CTRL_USER_02_awaddr[24:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_02_AWADDR;
  assign ULP_M_AXI_CTRL_USER_02_awprot[2:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_02_AWPROT;
  assign ULP_M_AXI_CTRL_USER_02_awvalid = pxi_ii_core_ULP_M_AXI_CTRL_USER_02_AWVALID;
  assign ULP_M_AXI_CTRL_USER_02_bready = pxi_ii_core_ULP_M_AXI_CTRL_USER_02_BREADY;
  assign ULP_M_AXI_CTRL_USER_02_rready = pxi_ii_core_ULP_M_AXI_CTRL_USER_02_RREADY;
  assign ULP_M_AXI_CTRL_USER_02_wdata[31:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_02_WDATA;
  assign ULP_M_AXI_CTRL_USER_02_wstrb[3:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_02_WSTRB;
  assign ULP_M_AXI_CTRL_USER_02_wvalid = pxi_ii_core_ULP_M_AXI_CTRL_USER_02_WVALID;
  assign ULP_M_AXI_DATA_H2C_00_araddr[38:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARADDR;
  assign ULP_M_AXI_DATA_H2C_00_arburst[1:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARBURST;
  assign ULP_M_AXI_DATA_H2C_00_arcache[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARCACHE;
  assign ULP_M_AXI_DATA_H2C_00_arid[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARID;
  assign ULP_M_AXI_DATA_H2C_00_arlen[7:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARLEN;
  assign ULP_M_AXI_DATA_H2C_00_arlock[0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARLOCK;
  assign ULP_M_AXI_DATA_H2C_00_arprot[2:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARPROT;
  assign ULP_M_AXI_DATA_H2C_00_arvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARVALID;
  assign ULP_M_AXI_DATA_H2C_00_awaddr[38:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWADDR;
  assign ULP_M_AXI_DATA_H2C_00_awburst[1:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWBURST;
  assign ULP_M_AXI_DATA_H2C_00_awcache[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWCACHE;
  assign ULP_M_AXI_DATA_H2C_00_awid[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWID;
  assign ULP_M_AXI_DATA_H2C_00_awlen[7:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWLEN;
  assign ULP_M_AXI_DATA_H2C_00_awlock[0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWLOCK;
  assign ULP_M_AXI_DATA_H2C_00_awprot[2:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWPROT;
  assign ULP_M_AXI_DATA_H2C_00_awvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWVALID;
  assign ULP_M_AXI_DATA_H2C_00_bready = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BREADY;
  assign ULP_M_AXI_DATA_H2C_00_rready = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RREADY;
  assign ULP_M_AXI_DATA_H2C_00_wdata[511:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WDATA;
  assign ULP_M_AXI_DATA_H2C_00_wlast = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WLAST;
  assign ULP_M_AXI_DATA_H2C_00_wstrb[63:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WSTRB;
  assign ULP_M_AXI_DATA_H2C_00_wvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WVALID;
  assign ULP_M_AXI_DATA_H2C_01_araddr[39:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARADDR;
  assign ULP_M_AXI_DATA_H2C_01_arburst[1:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARBURST;
  assign ULP_M_AXI_DATA_H2C_01_arcache[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARCACHE;
  assign ULP_M_AXI_DATA_H2C_01_arid[1:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARID;
  assign ULP_M_AXI_DATA_H2C_01_arlen[7:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARLEN;
  assign ULP_M_AXI_DATA_H2C_01_arlock[0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARLOCK;
  assign ULP_M_AXI_DATA_H2C_01_arprot[2:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARPROT;
  assign ULP_M_AXI_DATA_H2C_01_arvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARVALID;
  assign ULP_M_AXI_DATA_H2C_01_awaddr[39:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWADDR;
  assign ULP_M_AXI_DATA_H2C_01_awburst[1:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWBURST;
  assign ULP_M_AXI_DATA_H2C_01_awcache[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWCACHE;
  assign ULP_M_AXI_DATA_H2C_01_awid[1:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWID;
  assign ULP_M_AXI_DATA_H2C_01_awlen[7:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWLEN;
  assign ULP_M_AXI_DATA_H2C_01_awlock[0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWLOCK;
  assign ULP_M_AXI_DATA_H2C_01_awprot[2:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWPROT;
  assign ULP_M_AXI_DATA_H2C_01_awvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWVALID;
  assign ULP_M_AXI_DATA_H2C_01_bready = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_BREADY;
  assign ULP_M_AXI_DATA_H2C_01_rready = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RREADY;
  assign ULP_M_AXI_DATA_H2C_01_wdata[63:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WDATA;
  assign ULP_M_AXI_DATA_H2C_01_wlast = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WLAST;
  assign ULP_M_AXI_DATA_H2C_01_wstrb[7:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WSTRB;
  assign ULP_M_AXI_DATA_H2C_01_wvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WVALID;
  assign ULP_M_AXI_DATA_H2C_02_araddr[31:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARADDR;
  assign ULP_M_AXI_DATA_H2C_02_arburst[1:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARBURST;
  assign ULP_M_AXI_DATA_H2C_02_arcache[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARCACHE;
  assign ULP_M_AXI_DATA_H2C_02_arlen[7:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARLEN;
  assign ULP_M_AXI_DATA_H2C_02_arlock[0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARLOCK;
  assign ULP_M_AXI_DATA_H2C_02_arprot[2:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARPROT;
  assign ULP_M_AXI_DATA_H2C_02_arvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARVALID;
  assign ULP_M_AXI_DATA_H2C_02_awaddr[31:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWADDR;
  assign ULP_M_AXI_DATA_H2C_02_awburst[1:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWBURST;
  assign ULP_M_AXI_DATA_H2C_02_awcache[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWCACHE;
  assign ULP_M_AXI_DATA_H2C_02_awlen[7:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWLEN;
  assign ULP_M_AXI_DATA_H2C_02_awlock[0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWLOCK;
  assign ULP_M_AXI_DATA_H2C_02_awprot[2:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWPROT;
  assign ULP_M_AXI_DATA_H2C_02_awvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWVALID;
  assign ULP_M_AXI_DATA_H2C_02_bready = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_BREADY;
  assign ULP_M_AXI_DATA_H2C_02_rready = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RREADY;
  assign ULP_M_AXI_DATA_H2C_02_wdata[31:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WDATA;
  assign ULP_M_AXI_DATA_H2C_02_wlast = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WLAST;
  assign ULP_M_AXI_DATA_H2C_02_wstrb[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WSTRB;
  assign ULP_M_AXI_DATA_H2C_02_wvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WVALID;
  assign ULP_M_AXI_DATA_H2C_03_araddr[38:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARADDR;
  assign ULP_M_AXI_DATA_H2C_03_arburst[1:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARBURST;
  assign ULP_M_AXI_DATA_H2C_03_arcache[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARCACHE;
  assign ULP_M_AXI_DATA_H2C_03_arid[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARID;
  assign ULP_M_AXI_DATA_H2C_03_arlen[7:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARLEN;
  assign ULP_M_AXI_DATA_H2C_03_arlock[0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARLOCK;
  assign ULP_M_AXI_DATA_H2C_03_arprot[2:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARPROT;
  assign ULP_M_AXI_DATA_H2C_03_arvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARVALID;
  assign ULP_M_AXI_DATA_H2C_03_awaddr[38:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWADDR;
  assign ULP_M_AXI_DATA_H2C_03_awburst[1:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWBURST;
  assign ULP_M_AXI_DATA_H2C_03_awcache[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWCACHE;
  assign ULP_M_AXI_DATA_H2C_03_awid[3:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWID;
  assign ULP_M_AXI_DATA_H2C_03_awlen[7:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWLEN;
  assign ULP_M_AXI_DATA_H2C_03_awlock[0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWLOCK;
  assign ULP_M_AXI_DATA_H2C_03_awprot[2:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWPROT;
  assign ULP_M_AXI_DATA_H2C_03_awvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWVALID;
  assign ULP_M_AXI_DATA_H2C_03_bready = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_BREADY;
  assign ULP_M_AXI_DATA_H2C_03_rready = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RREADY;
  assign ULP_M_AXI_DATA_H2C_03_wdata[127:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WDATA;
  assign ULP_M_AXI_DATA_H2C_03_wlast = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WLAST;
  assign ULP_M_AXI_DATA_H2C_03_wstrb[15:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WSTRB;
  assign ULP_M_AXI_DATA_H2C_03_wvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WVALID;
  assign blp_m_data_dna_from_ulp_00[2:0] = pxi_ii_core_blp_m_data_dna_from_ulp_00;
  assign blp_m_data_memory_calib_complete_00[0] = pxi_ii_core_blp_m_data_memory_calib_complete_00;
  assign blp_m_irq_cu_00[127:0] = pxi_ii_core_blp_m_irq_cu_00;
  assign blp_s_aclk_ctrl_00_1 = blp_s_aclk_ctrl_00;
  assign blp_s_aclk_kernel2_ref_clk_00_1 = blp_s_aclk_kernel2_ref_clk_00;
  assign blp_s_aclk_kernel_ref_clk_00_1 = blp_s_aclk_kernel_ref_clk_00;
  assign blp_s_aclk_pcie_00_1 = blp_s_aclk_pcie_00;
  assign blp_s_aresetn_ctrl_00_1 = blp_s_aresetn_ctrl_00[0];
  assign blp_s_aresetn_kernel_ref_clk_00_1 = blp_s_aresetn_kernel_ref_clk_00[0];
  assign blp_s_aresetn_pcie_00_1 = blp_s_aresetn_pcie_00[0];
  assign blp_s_data_clkwiz_kernel_clk_out1_locked_00_1 = blp_s_data_clkwiz_kernel_clk_out1_locked_00[0];
  assign blp_s_data_dout_dna_00_1 = blp_s_data_dout_dna_00[0];
  assign blp_s_data_perstn_out_00_1 = blp_s_data_perstn_out_00[2:0];
  assign blp_s_data_slice_pr_reset_to_ulp_00_1 = blp_s_data_slice_pr_reset_to_ulp_00[1:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARREADY = ULP_M_AXI_CTRL_USER_00_arready;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWREADY = ULP_M_AXI_CTRL_USER_00_awready;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BRESP = ULP_M_AXI_CTRL_USER_00_bresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BVALID = ULP_M_AXI_CTRL_USER_00_bvalid;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RDATA = ULP_M_AXI_CTRL_USER_00_rdata[31:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RRESP = ULP_M_AXI_CTRL_USER_00_rresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RVALID = ULP_M_AXI_CTRL_USER_00_rvalid;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WREADY = ULP_M_AXI_CTRL_USER_00_wready;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_01_ARREADY = ULP_M_AXI_CTRL_USER_01_arready;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_01_AWREADY = ULP_M_AXI_CTRL_USER_01_awready;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_01_BRESP = ULP_M_AXI_CTRL_USER_01_bresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_01_BVALID = ULP_M_AXI_CTRL_USER_01_bvalid;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_01_RDATA = ULP_M_AXI_CTRL_USER_01_rdata[31:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_01_RRESP = ULP_M_AXI_CTRL_USER_01_rresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_01_RVALID = ULP_M_AXI_CTRL_USER_01_rvalid;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_01_WREADY = ULP_M_AXI_CTRL_USER_01_wready;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_02_ARREADY = ULP_M_AXI_CTRL_USER_02_arready;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_02_AWREADY = ULP_M_AXI_CTRL_USER_02_awready;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_02_BRESP = ULP_M_AXI_CTRL_USER_02_bresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_02_BVALID = ULP_M_AXI_CTRL_USER_02_bvalid;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_02_RDATA = ULP_M_AXI_CTRL_USER_02_rdata[31:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_02_RRESP = ULP_M_AXI_CTRL_USER_02_rresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_02_RVALID = ULP_M_AXI_CTRL_USER_02_rvalid;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_02_WREADY = ULP_M_AXI_CTRL_USER_02_wready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARREADY = ULP_M_AXI_DATA_H2C_00_arready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWREADY = ULP_M_AXI_DATA_H2C_00_awready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BID = ULP_M_AXI_DATA_H2C_00_bid[3:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BRESP = ULP_M_AXI_DATA_H2C_00_bresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BVALID = ULP_M_AXI_DATA_H2C_00_bvalid;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RDATA = ULP_M_AXI_DATA_H2C_00_rdata[511:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RID = ULP_M_AXI_DATA_H2C_00_rid[3:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RLAST = ULP_M_AXI_DATA_H2C_00_rlast;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RRESP = ULP_M_AXI_DATA_H2C_00_rresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RVALID = ULP_M_AXI_DATA_H2C_00_rvalid;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WREADY = ULP_M_AXI_DATA_H2C_00_wready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARREADY = ULP_M_AXI_DATA_H2C_01_arready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWREADY = ULP_M_AXI_DATA_H2C_01_awready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_01_BID = ULP_M_AXI_DATA_H2C_01_bid[1:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_01_BRESP = ULP_M_AXI_DATA_H2C_01_bresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_01_BVALID = ULP_M_AXI_DATA_H2C_01_bvalid;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RDATA = ULP_M_AXI_DATA_H2C_01_rdata[63:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RID = ULP_M_AXI_DATA_H2C_01_rid[1:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RLAST = ULP_M_AXI_DATA_H2C_01_rlast;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RRESP = ULP_M_AXI_DATA_H2C_01_rresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RVALID = ULP_M_AXI_DATA_H2C_01_rvalid;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WREADY = ULP_M_AXI_DATA_H2C_01_wready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARREADY = ULP_M_AXI_DATA_H2C_02_arready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWREADY = ULP_M_AXI_DATA_H2C_02_awready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_02_BRESP = ULP_M_AXI_DATA_H2C_02_bresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_02_BVALID = ULP_M_AXI_DATA_H2C_02_bvalid;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RDATA = ULP_M_AXI_DATA_H2C_02_rdata[31:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RLAST = ULP_M_AXI_DATA_H2C_02_rlast;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RRESP = ULP_M_AXI_DATA_H2C_02_rresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RVALID = ULP_M_AXI_DATA_H2C_02_rvalid;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WREADY = ULP_M_AXI_DATA_H2C_02_wready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARREADY = ULP_M_AXI_DATA_H2C_03_arready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWREADY = ULP_M_AXI_DATA_H2C_03_awready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_03_BID = ULP_M_AXI_DATA_H2C_03_bid[3:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_03_BRESP = ULP_M_AXI_DATA_H2C_03_bresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_03_BVALID = ULP_M_AXI_DATA_H2C_03_bvalid;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RDATA = ULP_M_AXI_DATA_H2C_03_rdata[127:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RID = ULP_M_AXI_DATA_H2C_03_rid[3:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RLAST = ULP_M_AXI_DATA_H2C_03_rlast;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RRESP = ULP_M_AXI_DATA_H2C_03_rresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RVALID = ULP_M_AXI_DATA_H2C_03_rvalid;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WREADY = ULP_M_AXI_DATA_H2C_03_wready;
  assign ulp_m_aclk_ctrl_00 = pxi_ii_core_ulp_m_aclk_ctrl_00;
  assign ulp_m_aclk_kernel2_ref_clk_00 = pxi_ii_core_ulp_m_aclk_kernel2_ref_clk_00;
  assign ulp_m_aclk_kernel_ref_clk_00 = pxi_ii_core_ulp_m_aclk_kernel_ref_clk_00;
  assign ulp_m_aclk_pcie_00 = pxi_ii_core_ulp_m_aclk_pcie_00;
  assign ulp_m_aresetn_ctrl_00[0] = pxi_ii_core_ulp_m_aresetn_ctrl_00;
  assign ulp_m_aresetn_kernel_ref_clk_00[0] = pxi_ii_core_ulp_m_aresetn_kernel_ref_clk_00;
  assign ulp_m_aresetn_pcie_00[0] = pxi_ii_core_ulp_m_aresetn_pcie_00;
  assign ulp_m_data_clkwiz_kernel_clk_out1_locked_00[0] = pxi_ii_core_ulp_m_data_clkwiz_kernel_clk_out1_locked_00;
  assign ulp_m_data_dout_dna_00[0] = pxi_ii_core_ulp_m_data_dout_dna_00;
  assign ulp_m_data_perstn_out_00[2:0] = pxi_ii_core_ulp_m_data_perstn_out_00;
  assign ulp_m_data_slice_pr_reset_to_ulp_00[1:0] = pxi_ii_core_ulp_m_data_slice_pr_reset_to_ulp_00;
  assign ulp_s_data_dna_from_ulp_00_1 = ulp_s_data_dna_from_ulp_00[2:0];
  assign ulp_s_data_memory_calib_complete_00_1 = ulp_s_data_memory_calib_complete_00[0];
  assign ulp_s_irq_cu_00_1 = ulp_s_irq_cu_00[127:0];
  ii_level0_wire_pxi_ii_core_0 pxi_ii_core
       (.BLP_S_AXI_CTRL_USER_00_araddr(BLP_S_AXI_CTRL_USER_00_1_ARADDR),
        .BLP_S_AXI_CTRL_USER_00_arprot(BLP_S_AXI_CTRL_USER_00_1_ARPROT),
        .BLP_S_AXI_CTRL_USER_00_arready(BLP_S_AXI_CTRL_USER_00_1_ARREADY),
        .BLP_S_AXI_CTRL_USER_00_arvalid(BLP_S_AXI_CTRL_USER_00_1_ARVALID),
        .BLP_S_AXI_CTRL_USER_00_awaddr(BLP_S_AXI_CTRL_USER_00_1_AWADDR),
        .BLP_S_AXI_CTRL_USER_00_awprot(BLP_S_AXI_CTRL_USER_00_1_AWPROT),
        .BLP_S_AXI_CTRL_USER_00_awready(BLP_S_AXI_CTRL_USER_00_1_AWREADY),
        .BLP_S_AXI_CTRL_USER_00_awvalid(BLP_S_AXI_CTRL_USER_00_1_AWVALID),
        .BLP_S_AXI_CTRL_USER_00_bready(BLP_S_AXI_CTRL_USER_00_1_BREADY),
        .BLP_S_AXI_CTRL_USER_00_bresp(BLP_S_AXI_CTRL_USER_00_1_BRESP),
        .BLP_S_AXI_CTRL_USER_00_bvalid(BLP_S_AXI_CTRL_USER_00_1_BVALID),
        .BLP_S_AXI_CTRL_USER_00_rdata(BLP_S_AXI_CTRL_USER_00_1_RDATA),
        .BLP_S_AXI_CTRL_USER_00_rready(BLP_S_AXI_CTRL_USER_00_1_RREADY),
        .BLP_S_AXI_CTRL_USER_00_rresp(BLP_S_AXI_CTRL_USER_00_1_RRESP),
        .BLP_S_AXI_CTRL_USER_00_rvalid(BLP_S_AXI_CTRL_USER_00_1_RVALID),
        .BLP_S_AXI_CTRL_USER_00_wdata(BLP_S_AXI_CTRL_USER_00_1_WDATA),
        .BLP_S_AXI_CTRL_USER_00_wready(BLP_S_AXI_CTRL_USER_00_1_WREADY),
        .BLP_S_AXI_CTRL_USER_00_wstrb(BLP_S_AXI_CTRL_USER_00_1_WSTRB),
        .BLP_S_AXI_CTRL_USER_00_wvalid(BLP_S_AXI_CTRL_USER_00_1_WVALID),
        .BLP_S_AXI_CTRL_USER_01_araddr(BLP_S_AXI_CTRL_USER_01_1_ARADDR),
        .BLP_S_AXI_CTRL_USER_01_arprot(BLP_S_AXI_CTRL_USER_01_1_ARPROT),
        .BLP_S_AXI_CTRL_USER_01_arready(BLP_S_AXI_CTRL_USER_01_1_ARREADY),
        .BLP_S_AXI_CTRL_USER_01_arvalid(BLP_S_AXI_CTRL_USER_01_1_ARVALID),
        .BLP_S_AXI_CTRL_USER_01_awaddr(BLP_S_AXI_CTRL_USER_01_1_AWADDR),
        .BLP_S_AXI_CTRL_USER_01_awprot(BLP_S_AXI_CTRL_USER_01_1_AWPROT),
        .BLP_S_AXI_CTRL_USER_01_awready(BLP_S_AXI_CTRL_USER_01_1_AWREADY),
        .BLP_S_AXI_CTRL_USER_01_awvalid(BLP_S_AXI_CTRL_USER_01_1_AWVALID),
        .BLP_S_AXI_CTRL_USER_01_bready(BLP_S_AXI_CTRL_USER_01_1_BREADY),
        .BLP_S_AXI_CTRL_USER_01_bresp(BLP_S_AXI_CTRL_USER_01_1_BRESP),
        .BLP_S_AXI_CTRL_USER_01_bvalid(BLP_S_AXI_CTRL_USER_01_1_BVALID),
        .BLP_S_AXI_CTRL_USER_01_rdata(BLP_S_AXI_CTRL_USER_01_1_RDATA),
        .BLP_S_AXI_CTRL_USER_01_rready(BLP_S_AXI_CTRL_USER_01_1_RREADY),
        .BLP_S_AXI_CTRL_USER_01_rresp(BLP_S_AXI_CTRL_USER_01_1_RRESP),
        .BLP_S_AXI_CTRL_USER_01_rvalid(BLP_S_AXI_CTRL_USER_01_1_RVALID),
        .BLP_S_AXI_CTRL_USER_01_wdata(BLP_S_AXI_CTRL_USER_01_1_WDATA),
        .BLP_S_AXI_CTRL_USER_01_wready(BLP_S_AXI_CTRL_USER_01_1_WREADY),
        .BLP_S_AXI_CTRL_USER_01_wstrb(BLP_S_AXI_CTRL_USER_01_1_WSTRB),
        .BLP_S_AXI_CTRL_USER_01_wvalid(BLP_S_AXI_CTRL_USER_01_1_WVALID),
        .BLP_S_AXI_CTRL_USER_02_araddr(BLP_S_AXI_CTRL_USER_02_1_ARADDR),
        .BLP_S_AXI_CTRL_USER_02_arprot(BLP_S_AXI_CTRL_USER_02_1_ARPROT),
        .BLP_S_AXI_CTRL_USER_02_arready(BLP_S_AXI_CTRL_USER_02_1_ARREADY),
        .BLP_S_AXI_CTRL_USER_02_arvalid(BLP_S_AXI_CTRL_USER_02_1_ARVALID),
        .BLP_S_AXI_CTRL_USER_02_awaddr(BLP_S_AXI_CTRL_USER_02_1_AWADDR),
        .BLP_S_AXI_CTRL_USER_02_awprot(BLP_S_AXI_CTRL_USER_02_1_AWPROT),
        .BLP_S_AXI_CTRL_USER_02_awready(BLP_S_AXI_CTRL_USER_02_1_AWREADY),
        .BLP_S_AXI_CTRL_USER_02_awvalid(BLP_S_AXI_CTRL_USER_02_1_AWVALID),
        .BLP_S_AXI_CTRL_USER_02_bready(BLP_S_AXI_CTRL_USER_02_1_BREADY),
        .BLP_S_AXI_CTRL_USER_02_bresp(BLP_S_AXI_CTRL_USER_02_1_BRESP),
        .BLP_S_AXI_CTRL_USER_02_bvalid(BLP_S_AXI_CTRL_USER_02_1_BVALID),
        .BLP_S_AXI_CTRL_USER_02_rdata(BLP_S_AXI_CTRL_USER_02_1_RDATA),
        .BLP_S_AXI_CTRL_USER_02_rready(BLP_S_AXI_CTRL_USER_02_1_RREADY),
        .BLP_S_AXI_CTRL_USER_02_rresp(BLP_S_AXI_CTRL_USER_02_1_RRESP),
        .BLP_S_AXI_CTRL_USER_02_rvalid(BLP_S_AXI_CTRL_USER_02_1_RVALID),
        .BLP_S_AXI_CTRL_USER_02_wdata(BLP_S_AXI_CTRL_USER_02_1_WDATA),
        .BLP_S_AXI_CTRL_USER_02_wready(BLP_S_AXI_CTRL_USER_02_1_WREADY),
        .BLP_S_AXI_CTRL_USER_02_wstrb(BLP_S_AXI_CTRL_USER_02_1_WSTRB),
        .BLP_S_AXI_CTRL_USER_02_wvalid(BLP_S_AXI_CTRL_USER_02_1_WVALID),
        .BLP_S_AXI_DATA_H2C_00_araddr(BLP_S_AXI_DATA_H2C_00_1_ARADDR),
        .BLP_S_AXI_DATA_H2C_00_arburst(BLP_S_AXI_DATA_H2C_00_1_ARBURST),
        .BLP_S_AXI_DATA_H2C_00_arcache(BLP_S_AXI_DATA_H2C_00_1_ARCACHE),
        .BLP_S_AXI_DATA_H2C_00_arid(BLP_S_AXI_DATA_H2C_00_1_ARID),
        .BLP_S_AXI_DATA_H2C_00_arlen(BLP_S_AXI_DATA_H2C_00_1_ARLEN),
        .BLP_S_AXI_DATA_H2C_00_arlock(BLP_S_AXI_DATA_H2C_00_1_ARLOCK),
        .BLP_S_AXI_DATA_H2C_00_arprot(BLP_S_AXI_DATA_H2C_00_1_ARPROT),
        .BLP_S_AXI_DATA_H2C_00_arready(BLP_S_AXI_DATA_H2C_00_1_ARREADY),
        .BLP_S_AXI_DATA_H2C_00_arvalid(BLP_S_AXI_DATA_H2C_00_1_ARVALID),
        .BLP_S_AXI_DATA_H2C_00_awaddr(BLP_S_AXI_DATA_H2C_00_1_AWADDR),
        .BLP_S_AXI_DATA_H2C_00_awburst(BLP_S_AXI_DATA_H2C_00_1_AWBURST),
        .BLP_S_AXI_DATA_H2C_00_awcache(BLP_S_AXI_DATA_H2C_00_1_AWCACHE),
        .BLP_S_AXI_DATA_H2C_00_awid(BLP_S_AXI_DATA_H2C_00_1_AWID),
        .BLP_S_AXI_DATA_H2C_00_awlen(BLP_S_AXI_DATA_H2C_00_1_AWLEN),
        .BLP_S_AXI_DATA_H2C_00_awlock(BLP_S_AXI_DATA_H2C_00_1_AWLOCK),
        .BLP_S_AXI_DATA_H2C_00_awprot(BLP_S_AXI_DATA_H2C_00_1_AWPROT),
        .BLP_S_AXI_DATA_H2C_00_awready(BLP_S_AXI_DATA_H2C_00_1_AWREADY),
        .BLP_S_AXI_DATA_H2C_00_awvalid(BLP_S_AXI_DATA_H2C_00_1_AWVALID),
        .BLP_S_AXI_DATA_H2C_00_bid(BLP_S_AXI_DATA_H2C_00_1_BID),
        .BLP_S_AXI_DATA_H2C_00_bready(BLP_S_AXI_DATA_H2C_00_1_BREADY),
        .BLP_S_AXI_DATA_H2C_00_bresp(BLP_S_AXI_DATA_H2C_00_1_BRESP),
        .BLP_S_AXI_DATA_H2C_00_bvalid(BLP_S_AXI_DATA_H2C_00_1_BVALID),
        .BLP_S_AXI_DATA_H2C_00_rdata(BLP_S_AXI_DATA_H2C_00_1_RDATA),
        .BLP_S_AXI_DATA_H2C_00_rid(BLP_S_AXI_DATA_H2C_00_1_RID),
        .BLP_S_AXI_DATA_H2C_00_rlast(BLP_S_AXI_DATA_H2C_00_1_RLAST),
        .BLP_S_AXI_DATA_H2C_00_rready(BLP_S_AXI_DATA_H2C_00_1_RREADY),
        .BLP_S_AXI_DATA_H2C_00_rresp(BLP_S_AXI_DATA_H2C_00_1_RRESP),
        .BLP_S_AXI_DATA_H2C_00_rvalid(BLP_S_AXI_DATA_H2C_00_1_RVALID),
        .BLP_S_AXI_DATA_H2C_00_wdata(BLP_S_AXI_DATA_H2C_00_1_WDATA),
        .BLP_S_AXI_DATA_H2C_00_wlast(BLP_S_AXI_DATA_H2C_00_1_WLAST),
        .BLP_S_AXI_DATA_H2C_00_wready(BLP_S_AXI_DATA_H2C_00_1_WREADY),
        .BLP_S_AXI_DATA_H2C_00_wstrb(BLP_S_AXI_DATA_H2C_00_1_WSTRB),
        .BLP_S_AXI_DATA_H2C_00_wvalid(BLP_S_AXI_DATA_H2C_00_1_WVALID),
        .BLP_S_AXI_DATA_H2C_01_araddr(BLP_S_AXI_DATA_H2C_01_1_ARADDR),
        .BLP_S_AXI_DATA_H2C_01_arburst(BLP_S_AXI_DATA_H2C_01_1_ARBURST),
        .BLP_S_AXI_DATA_H2C_01_arcache(BLP_S_AXI_DATA_H2C_01_1_ARCACHE),
        .BLP_S_AXI_DATA_H2C_01_arid(BLP_S_AXI_DATA_H2C_01_1_ARID),
        .BLP_S_AXI_DATA_H2C_01_arlen(BLP_S_AXI_DATA_H2C_01_1_ARLEN),
        .BLP_S_AXI_DATA_H2C_01_arlock(BLP_S_AXI_DATA_H2C_01_1_ARLOCK),
        .BLP_S_AXI_DATA_H2C_01_arprot(BLP_S_AXI_DATA_H2C_01_1_ARPROT),
        .BLP_S_AXI_DATA_H2C_01_arready(BLP_S_AXI_DATA_H2C_01_1_ARREADY),
        .BLP_S_AXI_DATA_H2C_01_arvalid(BLP_S_AXI_DATA_H2C_01_1_ARVALID),
        .BLP_S_AXI_DATA_H2C_01_awaddr(BLP_S_AXI_DATA_H2C_01_1_AWADDR),
        .BLP_S_AXI_DATA_H2C_01_awburst(BLP_S_AXI_DATA_H2C_01_1_AWBURST),
        .BLP_S_AXI_DATA_H2C_01_awcache(BLP_S_AXI_DATA_H2C_01_1_AWCACHE),
        .BLP_S_AXI_DATA_H2C_01_awid(BLP_S_AXI_DATA_H2C_01_1_AWID),
        .BLP_S_AXI_DATA_H2C_01_awlen(BLP_S_AXI_DATA_H2C_01_1_AWLEN),
        .BLP_S_AXI_DATA_H2C_01_awlock(BLP_S_AXI_DATA_H2C_01_1_AWLOCK),
        .BLP_S_AXI_DATA_H2C_01_awprot(BLP_S_AXI_DATA_H2C_01_1_AWPROT),
        .BLP_S_AXI_DATA_H2C_01_awready(BLP_S_AXI_DATA_H2C_01_1_AWREADY),
        .BLP_S_AXI_DATA_H2C_01_awvalid(BLP_S_AXI_DATA_H2C_01_1_AWVALID),
        .BLP_S_AXI_DATA_H2C_01_bid(BLP_S_AXI_DATA_H2C_01_1_BID),
        .BLP_S_AXI_DATA_H2C_01_bready(BLP_S_AXI_DATA_H2C_01_1_BREADY),
        .BLP_S_AXI_DATA_H2C_01_bresp(BLP_S_AXI_DATA_H2C_01_1_BRESP),
        .BLP_S_AXI_DATA_H2C_01_bvalid(BLP_S_AXI_DATA_H2C_01_1_BVALID),
        .BLP_S_AXI_DATA_H2C_01_rdata(BLP_S_AXI_DATA_H2C_01_1_RDATA),
        .BLP_S_AXI_DATA_H2C_01_rid(BLP_S_AXI_DATA_H2C_01_1_RID),
        .BLP_S_AXI_DATA_H2C_01_rlast(BLP_S_AXI_DATA_H2C_01_1_RLAST),
        .BLP_S_AXI_DATA_H2C_01_rready(BLP_S_AXI_DATA_H2C_01_1_RREADY),
        .BLP_S_AXI_DATA_H2C_01_rresp(BLP_S_AXI_DATA_H2C_01_1_RRESP),
        .BLP_S_AXI_DATA_H2C_01_rvalid(BLP_S_AXI_DATA_H2C_01_1_RVALID),
        .BLP_S_AXI_DATA_H2C_01_wdata(BLP_S_AXI_DATA_H2C_01_1_WDATA),
        .BLP_S_AXI_DATA_H2C_01_wlast(BLP_S_AXI_DATA_H2C_01_1_WLAST),
        .BLP_S_AXI_DATA_H2C_01_wready(BLP_S_AXI_DATA_H2C_01_1_WREADY),
        .BLP_S_AXI_DATA_H2C_01_wstrb(BLP_S_AXI_DATA_H2C_01_1_WSTRB),
        .BLP_S_AXI_DATA_H2C_01_wvalid(BLP_S_AXI_DATA_H2C_01_1_WVALID),
        .BLP_S_AXI_DATA_H2C_02_araddr(BLP_S_AXI_DATA_H2C_02_1_ARADDR),
        .BLP_S_AXI_DATA_H2C_02_arburst(BLP_S_AXI_DATA_H2C_02_1_ARBURST),
        .BLP_S_AXI_DATA_H2C_02_arcache(BLP_S_AXI_DATA_H2C_02_1_ARCACHE),
        .BLP_S_AXI_DATA_H2C_02_arlen(BLP_S_AXI_DATA_H2C_02_1_ARLEN),
        .BLP_S_AXI_DATA_H2C_02_arlock(BLP_S_AXI_DATA_H2C_02_1_ARLOCK),
        .BLP_S_AXI_DATA_H2C_02_arprot(BLP_S_AXI_DATA_H2C_02_1_ARPROT),
        .BLP_S_AXI_DATA_H2C_02_arready(BLP_S_AXI_DATA_H2C_02_1_ARREADY),
        .BLP_S_AXI_DATA_H2C_02_arvalid(BLP_S_AXI_DATA_H2C_02_1_ARVALID),
        .BLP_S_AXI_DATA_H2C_02_awaddr(BLP_S_AXI_DATA_H2C_02_1_AWADDR),
        .BLP_S_AXI_DATA_H2C_02_awburst(BLP_S_AXI_DATA_H2C_02_1_AWBURST),
        .BLP_S_AXI_DATA_H2C_02_awcache(BLP_S_AXI_DATA_H2C_02_1_AWCACHE),
        .BLP_S_AXI_DATA_H2C_02_awlen(BLP_S_AXI_DATA_H2C_02_1_AWLEN),
        .BLP_S_AXI_DATA_H2C_02_awlock(BLP_S_AXI_DATA_H2C_02_1_AWLOCK),
        .BLP_S_AXI_DATA_H2C_02_awprot(BLP_S_AXI_DATA_H2C_02_1_AWPROT),
        .BLP_S_AXI_DATA_H2C_02_awready(BLP_S_AXI_DATA_H2C_02_1_AWREADY),
        .BLP_S_AXI_DATA_H2C_02_awvalid(BLP_S_AXI_DATA_H2C_02_1_AWVALID),
        .BLP_S_AXI_DATA_H2C_02_bready(BLP_S_AXI_DATA_H2C_02_1_BREADY),
        .BLP_S_AXI_DATA_H2C_02_bresp(BLP_S_AXI_DATA_H2C_02_1_BRESP),
        .BLP_S_AXI_DATA_H2C_02_bvalid(BLP_S_AXI_DATA_H2C_02_1_BVALID),
        .BLP_S_AXI_DATA_H2C_02_rdata(BLP_S_AXI_DATA_H2C_02_1_RDATA),
        .BLP_S_AXI_DATA_H2C_02_rlast(BLP_S_AXI_DATA_H2C_02_1_RLAST),
        .BLP_S_AXI_DATA_H2C_02_rready(BLP_S_AXI_DATA_H2C_02_1_RREADY),
        .BLP_S_AXI_DATA_H2C_02_rresp(BLP_S_AXI_DATA_H2C_02_1_RRESP),
        .BLP_S_AXI_DATA_H2C_02_rvalid(BLP_S_AXI_DATA_H2C_02_1_RVALID),
        .BLP_S_AXI_DATA_H2C_02_wdata(BLP_S_AXI_DATA_H2C_02_1_WDATA),
        .BLP_S_AXI_DATA_H2C_02_wlast(BLP_S_AXI_DATA_H2C_02_1_WLAST),
        .BLP_S_AXI_DATA_H2C_02_wready(BLP_S_AXI_DATA_H2C_02_1_WREADY),
        .BLP_S_AXI_DATA_H2C_02_wstrb(BLP_S_AXI_DATA_H2C_02_1_WSTRB),
        .BLP_S_AXI_DATA_H2C_02_wvalid(BLP_S_AXI_DATA_H2C_02_1_WVALID),
        .BLP_S_AXI_DATA_H2C_03_araddr(BLP_S_AXI_DATA_H2C_03_1_ARADDR),
        .BLP_S_AXI_DATA_H2C_03_arburst(BLP_S_AXI_DATA_H2C_03_1_ARBURST),
        .BLP_S_AXI_DATA_H2C_03_arcache(BLP_S_AXI_DATA_H2C_03_1_ARCACHE),
        .BLP_S_AXI_DATA_H2C_03_arid(BLP_S_AXI_DATA_H2C_03_1_ARID),
        .BLP_S_AXI_DATA_H2C_03_arlen(BLP_S_AXI_DATA_H2C_03_1_ARLEN),
        .BLP_S_AXI_DATA_H2C_03_arlock(BLP_S_AXI_DATA_H2C_03_1_ARLOCK),
        .BLP_S_AXI_DATA_H2C_03_arprot(BLP_S_AXI_DATA_H2C_03_1_ARPROT),
        .BLP_S_AXI_DATA_H2C_03_arready(BLP_S_AXI_DATA_H2C_03_1_ARREADY),
        .BLP_S_AXI_DATA_H2C_03_arvalid(BLP_S_AXI_DATA_H2C_03_1_ARVALID),
        .BLP_S_AXI_DATA_H2C_03_awaddr(BLP_S_AXI_DATA_H2C_03_1_AWADDR),
        .BLP_S_AXI_DATA_H2C_03_awburst(BLP_S_AXI_DATA_H2C_03_1_AWBURST),
        .BLP_S_AXI_DATA_H2C_03_awcache(BLP_S_AXI_DATA_H2C_03_1_AWCACHE),
        .BLP_S_AXI_DATA_H2C_03_awid(BLP_S_AXI_DATA_H2C_03_1_AWID),
        .BLP_S_AXI_DATA_H2C_03_awlen(BLP_S_AXI_DATA_H2C_03_1_AWLEN),
        .BLP_S_AXI_DATA_H2C_03_awlock(BLP_S_AXI_DATA_H2C_03_1_AWLOCK),
        .BLP_S_AXI_DATA_H2C_03_awprot(BLP_S_AXI_DATA_H2C_03_1_AWPROT),
        .BLP_S_AXI_DATA_H2C_03_awready(BLP_S_AXI_DATA_H2C_03_1_AWREADY),
        .BLP_S_AXI_DATA_H2C_03_awvalid(BLP_S_AXI_DATA_H2C_03_1_AWVALID),
        .BLP_S_AXI_DATA_H2C_03_bid(BLP_S_AXI_DATA_H2C_03_1_BID),
        .BLP_S_AXI_DATA_H2C_03_bready(BLP_S_AXI_DATA_H2C_03_1_BREADY),
        .BLP_S_AXI_DATA_H2C_03_bresp(BLP_S_AXI_DATA_H2C_03_1_BRESP),
        .BLP_S_AXI_DATA_H2C_03_bvalid(BLP_S_AXI_DATA_H2C_03_1_BVALID),
        .BLP_S_AXI_DATA_H2C_03_rdata(BLP_S_AXI_DATA_H2C_03_1_RDATA),
        .BLP_S_AXI_DATA_H2C_03_rid(BLP_S_AXI_DATA_H2C_03_1_RID),
        .BLP_S_AXI_DATA_H2C_03_rlast(BLP_S_AXI_DATA_H2C_03_1_RLAST),
        .BLP_S_AXI_DATA_H2C_03_rready(BLP_S_AXI_DATA_H2C_03_1_RREADY),
        .BLP_S_AXI_DATA_H2C_03_rresp(BLP_S_AXI_DATA_H2C_03_1_RRESP),
        .BLP_S_AXI_DATA_H2C_03_rvalid(BLP_S_AXI_DATA_H2C_03_1_RVALID),
        .BLP_S_AXI_DATA_H2C_03_wdata(BLP_S_AXI_DATA_H2C_03_1_WDATA),
        .BLP_S_AXI_DATA_H2C_03_wlast(BLP_S_AXI_DATA_H2C_03_1_WLAST),
        .BLP_S_AXI_DATA_H2C_03_wready(BLP_S_AXI_DATA_H2C_03_1_WREADY),
        .BLP_S_AXI_DATA_H2C_03_wstrb(BLP_S_AXI_DATA_H2C_03_1_WSTRB),
        .BLP_S_AXI_DATA_H2C_03_wvalid(BLP_S_AXI_DATA_H2C_03_1_WVALID),
        .ULP_M_AXI_CTRL_USER_00_araddr(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARADDR),
        .ULP_M_AXI_CTRL_USER_00_arprot(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARPROT),
        .ULP_M_AXI_CTRL_USER_00_arready(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARREADY),
        .ULP_M_AXI_CTRL_USER_00_arvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARVALID),
        .ULP_M_AXI_CTRL_USER_00_awaddr(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWADDR),
        .ULP_M_AXI_CTRL_USER_00_awprot(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWPROT),
        .ULP_M_AXI_CTRL_USER_00_awready(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWREADY),
        .ULP_M_AXI_CTRL_USER_00_awvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWVALID),
        .ULP_M_AXI_CTRL_USER_00_bready(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BREADY),
        .ULP_M_AXI_CTRL_USER_00_bresp(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BRESP),
        .ULP_M_AXI_CTRL_USER_00_bvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BVALID),
        .ULP_M_AXI_CTRL_USER_00_rdata(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RDATA),
        .ULP_M_AXI_CTRL_USER_00_rready(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RREADY),
        .ULP_M_AXI_CTRL_USER_00_rresp(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RRESP),
        .ULP_M_AXI_CTRL_USER_00_rvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RVALID),
        .ULP_M_AXI_CTRL_USER_00_wdata(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WDATA),
        .ULP_M_AXI_CTRL_USER_00_wready(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WREADY),
        .ULP_M_AXI_CTRL_USER_00_wstrb(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WSTRB),
        .ULP_M_AXI_CTRL_USER_00_wvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WVALID),
        .ULP_M_AXI_CTRL_USER_01_araddr(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_ARADDR),
        .ULP_M_AXI_CTRL_USER_01_arprot(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_ARPROT),
        .ULP_M_AXI_CTRL_USER_01_arready(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_ARREADY),
        .ULP_M_AXI_CTRL_USER_01_arvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_ARVALID),
        .ULP_M_AXI_CTRL_USER_01_awaddr(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_AWADDR),
        .ULP_M_AXI_CTRL_USER_01_awprot(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_AWPROT),
        .ULP_M_AXI_CTRL_USER_01_awready(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_AWREADY),
        .ULP_M_AXI_CTRL_USER_01_awvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_AWVALID),
        .ULP_M_AXI_CTRL_USER_01_bready(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_BREADY),
        .ULP_M_AXI_CTRL_USER_01_bresp(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_BRESP),
        .ULP_M_AXI_CTRL_USER_01_bvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_BVALID),
        .ULP_M_AXI_CTRL_USER_01_rdata(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_RDATA),
        .ULP_M_AXI_CTRL_USER_01_rready(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_RREADY),
        .ULP_M_AXI_CTRL_USER_01_rresp(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_RRESP),
        .ULP_M_AXI_CTRL_USER_01_rvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_RVALID),
        .ULP_M_AXI_CTRL_USER_01_wdata(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_WDATA),
        .ULP_M_AXI_CTRL_USER_01_wready(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_WREADY),
        .ULP_M_AXI_CTRL_USER_01_wstrb(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_WSTRB),
        .ULP_M_AXI_CTRL_USER_01_wvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_01_WVALID),
        .ULP_M_AXI_CTRL_USER_02_araddr(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_ARADDR),
        .ULP_M_AXI_CTRL_USER_02_arprot(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_ARPROT),
        .ULP_M_AXI_CTRL_USER_02_arready(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_ARREADY),
        .ULP_M_AXI_CTRL_USER_02_arvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_ARVALID),
        .ULP_M_AXI_CTRL_USER_02_awaddr(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_AWADDR),
        .ULP_M_AXI_CTRL_USER_02_awprot(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_AWPROT),
        .ULP_M_AXI_CTRL_USER_02_awready(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_AWREADY),
        .ULP_M_AXI_CTRL_USER_02_awvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_AWVALID),
        .ULP_M_AXI_CTRL_USER_02_bready(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_BREADY),
        .ULP_M_AXI_CTRL_USER_02_bresp(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_BRESP),
        .ULP_M_AXI_CTRL_USER_02_bvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_BVALID),
        .ULP_M_AXI_CTRL_USER_02_rdata(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_RDATA),
        .ULP_M_AXI_CTRL_USER_02_rready(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_RREADY),
        .ULP_M_AXI_CTRL_USER_02_rresp(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_RRESP),
        .ULP_M_AXI_CTRL_USER_02_rvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_RVALID),
        .ULP_M_AXI_CTRL_USER_02_wdata(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_WDATA),
        .ULP_M_AXI_CTRL_USER_02_wready(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_WREADY),
        .ULP_M_AXI_CTRL_USER_02_wstrb(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_WSTRB),
        .ULP_M_AXI_CTRL_USER_02_wvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_02_WVALID),
        .ULP_M_AXI_DATA_H2C_00_araddr(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARADDR),
        .ULP_M_AXI_DATA_H2C_00_arburst(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARBURST),
        .ULP_M_AXI_DATA_H2C_00_arcache(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARCACHE),
        .ULP_M_AXI_DATA_H2C_00_arid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARID),
        .ULP_M_AXI_DATA_H2C_00_arlen(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARLEN),
        .ULP_M_AXI_DATA_H2C_00_arlock(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARLOCK),
        .ULP_M_AXI_DATA_H2C_00_arprot(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARPROT),
        .ULP_M_AXI_DATA_H2C_00_arready(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARREADY),
        .ULP_M_AXI_DATA_H2C_00_arvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARVALID),
        .ULP_M_AXI_DATA_H2C_00_awaddr(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWADDR),
        .ULP_M_AXI_DATA_H2C_00_awburst(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWBURST),
        .ULP_M_AXI_DATA_H2C_00_awcache(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWCACHE),
        .ULP_M_AXI_DATA_H2C_00_awid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWID),
        .ULP_M_AXI_DATA_H2C_00_awlen(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWLEN),
        .ULP_M_AXI_DATA_H2C_00_awlock(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWLOCK),
        .ULP_M_AXI_DATA_H2C_00_awprot(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWPROT),
        .ULP_M_AXI_DATA_H2C_00_awready(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWREADY),
        .ULP_M_AXI_DATA_H2C_00_awvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWVALID),
        .ULP_M_AXI_DATA_H2C_00_bid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BID),
        .ULP_M_AXI_DATA_H2C_00_bready(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BREADY),
        .ULP_M_AXI_DATA_H2C_00_bresp(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BRESP),
        .ULP_M_AXI_DATA_H2C_00_bvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BVALID),
        .ULP_M_AXI_DATA_H2C_00_rdata(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RDATA),
        .ULP_M_AXI_DATA_H2C_00_rid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RID),
        .ULP_M_AXI_DATA_H2C_00_rlast(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RLAST),
        .ULP_M_AXI_DATA_H2C_00_rready(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RREADY),
        .ULP_M_AXI_DATA_H2C_00_rresp(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RRESP),
        .ULP_M_AXI_DATA_H2C_00_rvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RVALID),
        .ULP_M_AXI_DATA_H2C_00_wdata(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WDATA),
        .ULP_M_AXI_DATA_H2C_00_wlast(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WLAST),
        .ULP_M_AXI_DATA_H2C_00_wready(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WREADY),
        .ULP_M_AXI_DATA_H2C_00_wstrb(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WSTRB),
        .ULP_M_AXI_DATA_H2C_00_wvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WVALID),
        .ULP_M_AXI_DATA_H2C_01_araddr(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARADDR),
        .ULP_M_AXI_DATA_H2C_01_arburst(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARBURST),
        .ULP_M_AXI_DATA_H2C_01_arcache(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARCACHE),
        .ULP_M_AXI_DATA_H2C_01_arid(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARID),
        .ULP_M_AXI_DATA_H2C_01_arlen(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARLEN),
        .ULP_M_AXI_DATA_H2C_01_arlock(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARLOCK),
        .ULP_M_AXI_DATA_H2C_01_arprot(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARPROT),
        .ULP_M_AXI_DATA_H2C_01_arready(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARREADY),
        .ULP_M_AXI_DATA_H2C_01_arvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_ARVALID),
        .ULP_M_AXI_DATA_H2C_01_awaddr(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWADDR),
        .ULP_M_AXI_DATA_H2C_01_awburst(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWBURST),
        .ULP_M_AXI_DATA_H2C_01_awcache(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWCACHE),
        .ULP_M_AXI_DATA_H2C_01_awid(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWID),
        .ULP_M_AXI_DATA_H2C_01_awlen(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWLEN),
        .ULP_M_AXI_DATA_H2C_01_awlock(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWLOCK),
        .ULP_M_AXI_DATA_H2C_01_awprot(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWPROT),
        .ULP_M_AXI_DATA_H2C_01_awready(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWREADY),
        .ULP_M_AXI_DATA_H2C_01_awvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_AWVALID),
        .ULP_M_AXI_DATA_H2C_01_bid(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_BID),
        .ULP_M_AXI_DATA_H2C_01_bready(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_BREADY),
        .ULP_M_AXI_DATA_H2C_01_bresp(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_BRESP),
        .ULP_M_AXI_DATA_H2C_01_bvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_BVALID),
        .ULP_M_AXI_DATA_H2C_01_rdata(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RDATA),
        .ULP_M_AXI_DATA_H2C_01_rid(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RID),
        .ULP_M_AXI_DATA_H2C_01_rlast(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RLAST),
        .ULP_M_AXI_DATA_H2C_01_rready(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RREADY),
        .ULP_M_AXI_DATA_H2C_01_rresp(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RRESP),
        .ULP_M_AXI_DATA_H2C_01_rvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_RVALID),
        .ULP_M_AXI_DATA_H2C_01_wdata(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WDATA),
        .ULP_M_AXI_DATA_H2C_01_wlast(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WLAST),
        .ULP_M_AXI_DATA_H2C_01_wready(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WREADY),
        .ULP_M_AXI_DATA_H2C_01_wstrb(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WSTRB),
        .ULP_M_AXI_DATA_H2C_01_wvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_01_WVALID),
        .ULP_M_AXI_DATA_H2C_02_araddr(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARADDR),
        .ULP_M_AXI_DATA_H2C_02_arburst(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARBURST),
        .ULP_M_AXI_DATA_H2C_02_arcache(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARCACHE),
        .ULP_M_AXI_DATA_H2C_02_arlen(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARLEN),
        .ULP_M_AXI_DATA_H2C_02_arlock(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARLOCK),
        .ULP_M_AXI_DATA_H2C_02_arprot(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARPROT),
        .ULP_M_AXI_DATA_H2C_02_arready(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARREADY),
        .ULP_M_AXI_DATA_H2C_02_arvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_ARVALID),
        .ULP_M_AXI_DATA_H2C_02_awaddr(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWADDR),
        .ULP_M_AXI_DATA_H2C_02_awburst(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWBURST),
        .ULP_M_AXI_DATA_H2C_02_awcache(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWCACHE),
        .ULP_M_AXI_DATA_H2C_02_awlen(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWLEN),
        .ULP_M_AXI_DATA_H2C_02_awlock(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWLOCK),
        .ULP_M_AXI_DATA_H2C_02_awprot(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWPROT),
        .ULP_M_AXI_DATA_H2C_02_awready(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWREADY),
        .ULP_M_AXI_DATA_H2C_02_awvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_AWVALID),
        .ULP_M_AXI_DATA_H2C_02_bready(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_BREADY),
        .ULP_M_AXI_DATA_H2C_02_bresp(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_BRESP),
        .ULP_M_AXI_DATA_H2C_02_bvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_BVALID),
        .ULP_M_AXI_DATA_H2C_02_rdata(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RDATA),
        .ULP_M_AXI_DATA_H2C_02_rlast(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RLAST),
        .ULP_M_AXI_DATA_H2C_02_rready(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RREADY),
        .ULP_M_AXI_DATA_H2C_02_rresp(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RRESP),
        .ULP_M_AXI_DATA_H2C_02_rvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_RVALID),
        .ULP_M_AXI_DATA_H2C_02_wdata(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WDATA),
        .ULP_M_AXI_DATA_H2C_02_wlast(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WLAST),
        .ULP_M_AXI_DATA_H2C_02_wready(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WREADY),
        .ULP_M_AXI_DATA_H2C_02_wstrb(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WSTRB),
        .ULP_M_AXI_DATA_H2C_02_wvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_02_WVALID),
        .ULP_M_AXI_DATA_H2C_03_araddr(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARADDR),
        .ULP_M_AXI_DATA_H2C_03_arburst(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARBURST),
        .ULP_M_AXI_DATA_H2C_03_arcache(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARCACHE),
        .ULP_M_AXI_DATA_H2C_03_arid(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARID),
        .ULP_M_AXI_DATA_H2C_03_arlen(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARLEN),
        .ULP_M_AXI_DATA_H2C_03_arlock(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARLOCK),
        .ULP_M_AXI_DATA_H2C_03_arprot(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARPROT),
        .ULP_M_AXI_DATA_H2C_03_arready(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARREADY),
        .ULP_M_AXI_DATA_H2C_03_arvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_ARVALID),
        .ULP_M_AXI_DATA_H2C_03_awaddr(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWADDR),
        .ULP_M_AXI_DATA_H2C_03_awburst(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWBURST),
        .ULP_M_AXI_DATA_H2C_03_awcache(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWCACHE),
        .ULP_M_AXI_DATA_H2C_03_awid(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWID),
        .ULP_M_AXI_DATA_H2C_03_awlen(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWLEN),
        .ULP_M_AXI_DATA_H2C_03_awlock(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWLOCK),
        .ULP_M_AXI_DATA_H2C_03_awprot(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWPROT),
        .ULP_M_AXI_DATA_H2C_03_awready(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWREADY),
        .ULP_M_AXI_DATA_H2C_03_awvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_AWVALID),
        .ULP_M_AXI_DATA_H2C_03_bid(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_BID),
        .ULP_M_AXI_DATA_H2C_03_bready(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_BREADY),
        .ULP_M_AXI_DATA_H2C_03_bresp(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_BRESP),
        .ULP_M_AXI_DATA_H2C_03_bvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_BVALID),
        .ULP_M_AXI_DATA_H2C_03_rdata(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RDATA),
        .ULP_M_AXI_DATA_H2C_03_rid(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RID),
        .ULP_M_AXI_DATA_H2C_03_rlast(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RLAST),
        .ULP_M_AXI_DATA_H2C_03_rready(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RREADY),
        .ULP_M_AXI_DATA_H2C_03_rresp(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RRESP),
        .ULP_M_AXI_DATA_H2C_03_rvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_RVALID),
        .ULP_M_AXI_DATA_H2C_03_wdata(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WDATA),
        .ULP_M_AXI_DATA_H2C_03_wlast(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WLAST),
        .ULP_M_AXI_DATA_H2C_03_wready(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WREADY),
        .ULP_M_AXI_DATA_H2C_03_wstrb(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WSTRB),
        .ULP_M_AXI_DATA_H2C_03_wvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_03_WVALID),
        .blp_m_data_dna_from_ulp_00(pxi_ii_core_blp_m_data_dna_from_ulp_00),
        .blp_m_data_memory_calib_complete_00(pxi_ii_core_blp_m_data_memory_calib_complete_00),
        .blp_m_irq_cu_00(pxi_ii_core_blp_m_irq_cu_00),
        .blp_s_aclk_ctrl_00(blp_s_aclk_ctrl_00_1),
        .blp_s_aclk_kernel2_ref_clk_00(blp_s_aclk_kernel2_ref_clk_00_1),
        .blp_s_aclk_kernel_ref_clk_00(blp_s_aclk_kernel_ref_clk_00_1),
        .blp_s_aclk_pcie_00(blp_s_aclk_pcie_00_1),
        .blp_s_aresetn_ctrl_00(blp_s_aresetn_ctrl_00_1),
        .blp_s_aresetn_kernel_ref_clk_00(blp_s_aresetn_kernel_ref_clk_00_1),
        .blp_s_aresetn_pcie_00(blp_s_aresetn_pcie_00_1),
        .blp_s_data_clkwiz_kernel_clk_out1_locked_00(blp_s_data_clkwiz_kernel_clk_out1_locked_00_1),
        .blp_s_data_dout_dna_00(blp_s_data_dout_dna_00_1),
        .blp_s_data_perstn_out_00(blp_s_data_perstn_out_00_1),
        .blp_s_data_slice_pr_reset_to_ulp_00(blp_s_data_slice_pr_reset_to_ulp_00_1),
        .ulp_m_aclk_ctrl_00(pxi_ii_core_ulp_m_aclk_ctrl_00),
        .ulp_m_aclk_kernel2_ref_clk_00(pxi_ii_core_ulp_m_aclk_kernel2_ref_clk_00),
        .ulp_m_aclk_kernel_ref_clk_00(pxi_ii_core_ulp_m_aclk_kernel_ref_clk_00),
        .ulp_m_aclk_pcie_00(pxi_ii_core_ulp_m_aclk_pcie_00),
        .ulp_m_aresetn_ctrl_00(pxi_ii_core_ulp_m_aresetn_ctrl_00),
        .ulp_m_aresetn_kernel_ref_clk_00(pxi_ii_core_ulp_m_aresetn_kernel_ref_clk_00),
        .ulp_m_aresetn_pcie_00(pxi_ii_core_ulp_m_aresetn_pcie_00),
        .ulp_m_data_clkwiz_kernel_clk_out1_locked_00(pxi_ii_core_ulp_m_data_clkwiz_kernel_clk_out1_locked_00),
        .ulp_m_data_dout_dna_00(pxi_ii_core_ulp_m_data_dout_dna_00),
        .ulp_m_data_perstn_out_00(pxi_ii_core_ulp_m_data_perstn_out_00),
        .ulp_m_data_slice_pr_reset_to_ulp_00(pxi_ii_core_ulp_m_data_slice_pr_reset_to_ulp_00),
        .ulp_s_data_dna_from_ulp_00(ulp_s_data_dna_from_ulp_00_1),
        .ulp_s_data_memory_calib_complete_00(ulp_s_data_memory_calib_complete_00_1),
        .ulp_s_irq_cu_00(ulp_s_irq_cu_00_1));
endmodule
