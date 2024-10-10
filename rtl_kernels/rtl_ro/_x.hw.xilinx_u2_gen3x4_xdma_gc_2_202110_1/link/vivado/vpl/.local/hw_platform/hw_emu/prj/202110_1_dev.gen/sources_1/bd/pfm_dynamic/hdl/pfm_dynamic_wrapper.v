//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3198056 Wed Apr 28 17:35:04 MDT 2021
//Date        : Thu May  6 14:19:47 2021
//Host        : xhdlc190406 running 64-bit CentOS Linux release 7.4.1708 (Core)
//Command     : generate_target pfm_dynamic_wrapper.bd
//Design      : pfm_dynamic_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pfm_dynamic_wrapper
   (DDR4_MEM00_0_act_n,
    DDR4_MEM00_0_adr,
    DDR4_MEM00_0_ba,
    DDR4_MEM00_0_bg,
    DDR4_MEM00_0_ck_c,
    DDR4_MEM00_0_ck_t,
    DDR4_MEM00_0_cke,
    DDR4_MEM00_0_cs_n,
    DDR4_MEM00_0_dm_n,
    DDR4_MEM00_0_dq,
    DDR4_MEM00_0_dqs_c,
    DDR4_MEM00_0_dqs_t,
    DDR4_MEM00_0_odt,
    DDR4_MEM00_0_reset_n,
    PLP_S_AXI_CTRL_USER_00_araddr,
    PLP_S_AXI_CTRL_USER_00_arprot,
    PLP_S_AXI_CTRL_USER_00_arready,
    PLP_S_AXI_CTRL_USER_00_arvalid,
    PLP_S_AXI_CTRL_USER_00_awaddr,
    PLP_S_AXI_CTRL_USER_00_awprot,
    PLP_S_AXI_CTRL_USER_00_awready,
    PLP_S_AXI_CTRL_USER_00_awvalid,
    PLP_S_AXI_CTRL_USER_00_bready,
    PLP_S_AXI_CTRL_USER_00_bresp,
    PLP_S_AXI_CTRL_USER_00_bvalid,
    PLP_S_AXI_CTRL_USER_00_rdata,
    PLP_S_AXI_CTRL_USER_00_rready,
    PLP_S_AXI_CTRL_USER_00_rresp,
    PLP_S_AXI_CTRL_USER_00_rvalid,
    PLP_S_AXI_CTRL_USER_00_wdata,
    PLP_S_AXI_CTRL_USER_00_wready,
    PLP_S_AXI_CTRL_USER_00_wstrb,
    PLP_S_AXI_CTRL_USER_00_wvalid,
    PLP_S_AXI_DATA_H2C_00_araddr,
    PLP_S_AXI_DATA_H2C_00_arburst,
    PLP_S_AXI_DATA_H2C_00_arcache,
    PLP_S_AXI_DATA_H2C_00_arid,
    PLP_S_AXI_DATA_H2C_00_arlen,
    PLP_S_AXI_DATA_H2C_00_arlock,
    PLP_S_AXI_DATA_H2C_00_arprot,
    PLP_S_AXI_DATA_H2C_00_arqos,
    PLP_S_AXI_DATA_H2C_00_arready,
    PLP_S_AXI_DATA_H2C_00_arsize,
    PLP_S_AXI_DATA_H2C_00_arvalid,
    PLP_S_AXI_DATA_H2C_00_awaddr,
    PLP_S_AXI_DATA_H2C_00_awburst,
    PLP_S_AXI_DATA_H2C_00_awcache,
    PLP_S_AXI_DATA_H2C_00_awid,
    PLP_S_AXI_DATA_H2C_00_awlen,
    PLP_S_AXI_DATA_H2C_00_awlock,
    PLP_S_AXI_DATA_H2C_00_awprot,
    PLP_S_AXI_DATA_H2C_00_awqos,
    PLP_S_AXI_DATA_H2C_00_awready,
    PLP_S_AXI_DATA_H2C_00_awsize,
    PLP_S_AXI_DATA_H2C_00_awvalid,
    PLP_S_AXI_DATA_H2C_00_bid,
    PLP_S_AXI_DATA_H2C_00_bready,
    PLP_S_AXI_DATA_H2C_00_bresp,
    PLP_S_AXI_DATA_H2C_00_bvalid,
    PLP_S_AXI_DATA_H2C_00_rdata,
    PLP_S_AXI_DATA_H2C_00_rid,
    PLP_S_AXI_DATA_H2C_00_rlast,
    PLP_S_AXI_DATA_H2C_00_rready,
    PLP_S_AXI_DATA_H2C_00_rresp,
    PLP_S_AXI_DATA_H2C_00_rvalid,
    PLP_S_AXI_DATA_H2C_00_wdata,
    PLP_S_AXI_DATA_H2C_00_wlast,
    PLP_S_AXI_DATA_H2C_00_wready,
    PLP_S_AXI_DATA_H2C_00_wstrb,
    PLP_S_AXI_DATA_H2C_00_wvalid,
    S_AXI_CTRL_0_araddr,
    S_AXI_CTRL_0_arprot,
    S_AXI_CTRL_0_arready,
    S_AXI_CTRL_0_arvalid,
    S_AXI_CTRL_0_awaddr,
    S_AXI_CTRL_0_awprot,
    S_AXI_CTRL_0_awready,
    S_AXI_CTRL_0_awvalid,
    S_AXI_CTRL_0_bready,
    S_AXI_CTRL_0_bresp,
    S_AXI_CTRL_0_bvalid,
    S_AXI_CTRL_0_rdata,
    S_AXI_CTRL_0_rready,
    S_AXI_CTRL_0_rresp,
    S_AXI_CTRL_0_rvalid,
    S_AXI_CTRL_0_wdata,
    S_AXI_CTRL_0_wready,
    S_AXI_CTRL_0_wstrb,
    S_AXI_CTRL_0_wvalid,
    clkwiz_kernel2_clk_0,
    clkwiz_kernel2_rst_0,
    clkwiz_kernel_clk_0,
    clkwiz_kernel_rst_0,
    dma_pcie_aclk,
    dma_pcie_arst,
    irq);
  output DDR4_MEM00_0_act_n;
  output [16:0]DDR4_MEM00_0_adr;
  output [1:0]DDR4_MEM00_0_ba;
  output [0:0]DDR4_MEM00_0_bg;
  output [0:0]DDR4_MEM00_0_ck_c;
  output [0:0]DDR4_MEM00_0_ck_t;
  output [0:0]DDR4_MEM00_0_cke;
  output [0:0]DDR4_MEM00_0_cs_n;
  inout [8:0]DDR4_MEM00_0_dm_n;
  inout [71:0]DDR4_MEM00_0_dq;
  inout [8:0]DDR4_MEM00_0_dqs_c;
  inout [8:0]DDR4_MEM00_0_dqs_t;
  output [0:0]DDR4_MEM00_0_odt;
  output DDR4_MEM00_0_reset_n;
  input [63:0]PLP_S_AXI_CTRL_USER_00_araddr;
  input [2:0]PLP_S_AXI_CTRL_USER_00_arprot;
  output [0:0]PLP_S_AXI_CTRL_USER_00_arready;
  input [0:0]PLP_S_AXI_CTRL_USER_00_arvalid;
  input [63:0]PLP_S_AXI_CTRL_USER_00_awaddr;
  input [2:0]PLP_S_AXI_CTRL_USER_00_awprot;
  output [0:0]PLP_S_AXI_CTRL_USER_00_awready;
  input [0:0]PLP_S_AXI_CTRL_USER_00_awvalid;
  input [0:0]PLP_S_AXI_CTRL_USER_00_bready;
  output [1:0]PLP_S_AXI_CTRL_USER_00_bresp;
  output [0:0]PLP_S_AXI_CTRL_USER_00_bvalid;
  output [31:0]PLP_S_AXI_CTRL_USER_00_rdata;
  input [0:0]PLP_S_AXI_CTRL_USER_00_rready;
  output [1:0]PLP_S_AXI_CTRL_USER_00_rresp;
  output [0:0]PLP_S_AXI_CTRL_USER_00_rvalid;
  input [31:0]PLP_S_AXI_CTRL_USER_00_wdata;
  output [0:0]PLP_S_AXI_CTRL_USER_00_wready;
  input [3:0]PLP_S_AXI_CTRL_USER_00_wstrb;
  input [0:0]PLP_S_AXI_CTRL_USER_00_wvalid;
  input [63:0]PLP_S_AXI_DATA_H2C_00_araddr;
  input [1:0]PLP_S_AXI_DATA_H2C_00_arburst;
  input [3:0]PLP_S_AXI_DATA_H2C_00_arcache;
  input [0:0]PLP_S_AXI_DATA_H2C_00_arid;
  input [7:0]PLP_S_AXI_DATA_H2C_00_arlen;
  input [0:0]PLP_S_AXI_DATA_H2C_00_arlock;
  input [2:0]PLP_S_AXI_DATA_H2C_00_arprot;
  input [3:0]PLP_S_AXI_DATA_H2C_00_arqos;
  output PLP_S_AXI_DATA_H2C_00_arready;
  input [2:0]PLP_S_AXI_DATA_H2C_00_arsize;
  input PLP_S_AXI_DATA_H2C_00_arvalid;
  input [63:0]PLP_S_AXI_DATA_H2C_00_awaddr;
  input [1:0]PLP_S_AXI_DATA_H2C_00_awburst;
  input [3:0]PLP_S_AXI_DATA_H2C_00_awcache;
  input [0:0]PLP_S_AXI_DATA_H2C_00_awid;
  input [7:0]PLP_S_AXI_DATA_H2C_00_awlen;
  input [0:0]PLP_S_AXI_DATA_H2C_00_awlock;
  input [2:0]PLP_S_AXI_DATA_H2C_00_awprot;
  input [3:0]PLP_S_AXI_DATA_H2C_00_awqos;
  output PLP_S_AXI_DATA_H2C_00_awready;
  input [2:0]PLP_S_AXI_DATA_H2C_00_awsize;
  input PLP_S_AXI_DATA_H2C_00_awvalid;
  output [0:0]PLP_S_AXI_DATA_H2C_00_bid;
  input PLP_S_AXI_DATA_H2C_00_bready;
  output [1:0]PLP_S_AXI_DATA_H2C_00_bresp;
  output PLP_S_AXI_DATA_H2C_00_bvalid;
  output [31:0]PLP_S_AXI_DATA_H2C_00_rdata;
  output [0:0]PLP_S_AXI_DATA_H2C_00_rid;
  output PLP_S_AXI_DATA_H2C_00_rlast;
  input PLP_S_AXI_DATA_H2C_00_rready;
  output [1:0]PLP_S_AXI_DATA_H2C_00_rresp;
  output PLP_S_AXI_DATA_H2C_00_rvalid;
  input [31:0]PLP_S_AXI_DATA_H2C_00_wdata;
  input PLP_S_AXI_DATA_H2C_00_wlast;
  output PLP_S_AXI_DATA_H2C_00_wready;
  input [3:0]PLP_S_AXI_DATA_H2C_00_wstrb;
  input PLP_S_AXI_DATA_H2C_00_wvalid;
  input [31:0]S_AXI_CTRL_0_araddr;
  input [2:0]S_AXI_CTRL_0_arprot;
  output S_AXI_CTRL_0_arready;
  input S_AXI_CTRL_0_arvalid;
  input [31:0]S_AXI_CTRL_0_awaddr;
  input [2:0]S_AXI_CTRL_0_awprot;
  output S_AXI_CTRL_0_awready;
  input S_AXI_CTRL_0_awvalid;
  input S_AXI_CTRL_0_bready;
  output [1:0]S_AXI_CTRL_0_bresp;
  output S_AXI_CTRL_0_bvalid;
  output [31:0]S_AXI_CTRL_0_rdata;
  input S_AXI_CTRL_0_rready;
  output [1:0]S_AXI_CTRL_0_rresp;
  output S_AXI_CTRL_0_rvalid;
  input [31:0]S_AXI_CTRL_0_wdata;
  output S_AXI_CTRL_0_wready;
  input [3:0]S_AXI_CTRL_0_wstrb;
  input S_AXI_CTRL_0_wvalid;
  input clkwiz_kernel2_clk_0;
  input clkwiz_kernel2_rst_0;
  input clkwiz_kernel_clk_0;
  input clkwiz_kernel_rst_0;
  input dma_pcie_aclk;
  input [0:0]dma_pcie_arst;
  output [127:0]irq;

  wire DDR4_MEM00_0_act_n;
  wire [16:0]DDR4_MEM00_0_adr;
  wire [1:0]DDR4_MEM00_0_ba;
  wire [0:0]DDR4_MEM00_0_bg;
  wire [0:0]DDR4_MEM00_0_ck_c;
  wire [0:0]DDR4_MEM00_0_ck_t;
  wire [0:0]DDR4_MEM00_0_cke;
  wire [0:0]DDR4_MEM00_0_cs_n;
  wire [8:0]DDR4_MEM00_0_dm_n;
  wire [71:0]DDR4_MEM00_0_dq;
  wire [8:0]DDR4_MEM00_0_dqs_c;
  wire [8:0]DDR4_MEM00_0_dqs_t;
  wire [0:0]DDR4_MEM00_0_odt;
  wire DDR4_MEM00_0_reset_n;
  wire [63:0]PLP_S_AXI_CTRL_USER_00_araddr;
  wire [2:0]PLP_S_AXI_CTRL_USER_00_arprot;
  wire [0:0]PLP_S_AXI_CTRL_USER_00_arready;
  wire [0:0]PLP_S_AXI_CTRL_USER_00_arvalid;
  wire [63:0]PLP_S_AXI_CTRL_USER_00_awaddr;
  wire [2:0]PLP_S_AXI_CTRL_USER_00_awprot;
  wire [0:0]PLP_S_AXI_CTRL_USER_00_awready;
  wire [0:0]PLP_S_AXI_CTRL_USER_00_awvalid;
  wire [0:0]PLP_S_AXI_CTRL_USER_00_bready;
  wire [1:0]PLP_S_AXI_CTRL_USER_00_bresp;
  wire [0:0]PLP_S_AXI_CTRL_USER_00_bvalid;
  wire [31:0]PLP_S_AXI_CTRL_USER_00_rdata;
  wire [0:0]PLP_S_AXI_CTRL_USER_00_rready;
  wire [1:0]PLP_S_AXI_CTRL_USER_00_rresp;
  wire [0:0]PLP_S_AXI_CTRL_USER_00_rvalid;
  wire [31:0]PLP_S_AXI_CTRL_USER_00_wdata;
  wire [0:0]PLP_S_AXI_CTRL_USER_00_wready;
  wire [3:0]PLP_S_AXI_CTRL_USER_00_wstrb;
  wire [0:0]PLP_S_AXI_CTRL_USER_00_wvalid;
  wire [63:0]PLP_S_AXI_DATA_H2C_00_araddr;
  wire [1:0]PLP_S_AXI_DATA_H2C_00_arburst;
  wire [3:0]PLP_S_AXI_DATA_H2C_00_arcache;
  wire [0:0]PLP_S_AXI_DATA_H2C_00_arid;
  wire [7:0]PLP_S_AXI_DATA_H2C_00_arlen;
  wire [0:0]PLP_S_AXI_DATA_H2C_00_arlock;
  wire [2:0]PLP_S_AXI_DATA_H2C_00_arprot;
  wire [3:0]PLP_S_AXI_DATA_H2C_00_arqos;
  wire PLP_S_AXI_DATA_H2C_00_arready;
  wire [2:0]PLP_S_AXI_DATA_H2C_00_arsize;
  wire PLP_S_AXI_DATA_H2C_00_arvalid;
  wire [63:0]PLP_S_AXI_DATA_H2C_00_awaddr;
  wire [1:0]PLP_S_AXI_DATA_H2C_00_awburst;
  wire [3:0]PLP_S_AXI_DATA_H2C_00_awcache;
  wire [0:0]PLP_S_AXI_DATA_H2C_00_awid;
  wire [7:0]PLP_S_AXI_DATA_H2C_00_awlen;
  wire [0:0]PLP_S_AXI_DATA_H2C_00_awlock;
  wire [2:0]PLP_S_AXI_DATA_H2C_00_awprot;
  wire [3:0]PLP_S_AXI_DATA_H2C_00_awqos;
  wire PLP_S_AXI_DATA_H2C_00_awready;
  wire [2:0]PLP_S_AXI_DATA_H2C_00_awsize;
  wire PLP_S_AXI_DATA_H2C_00_awvalid;
  wire [0:0]PLP_S_AXI_DATA_H2C_00_bid;
  wire PLP_S_AXI_DATA_H2C_00_bready;
  wire [1:0]PLP_S_AXI_DATA_H2C_00_bresp;
  wire PLP_S_AXI_DATA_H2C_00_bvalid;
  wire [31:0]PLP_S_AXI_DATA_H2C_00_rdata;
  wire [0:0]PLP_S_AXI_DATA_H2C_00_rid;
  wire PLP_S_AXI_DATA_H2C_00_rlast;
  wire PLP_S_AXI_DATA_H2C_00_rready;
  wire [1:0]PLP_S_AXI_DATA_H2C_00_rresp;
  wire PLP_S_AXI_DATA_H2C_00_rvalid;
  wire [31:0]PLP_S_AXI_DATA_H2C_00_wdata;
  wire PLP_S_AXI_DATA_H2C_00_wlast;
  wire PLP_S_AXI_DATA_H2C_00_wready;
  wire [3:0]PLP_S_AXI_DATA_H2C_00_wstrb;
  wire PLP_S_AXI_DATA_H2C_00_wvalid;
  wire [31:0]S_AXI_CTRL_0_araddr;
  wire [2:0]S_AXI_CTRL_0_arprot;
  wire S_AXI_CTRL_0_arready;
  wire S_AXI_CTRL_0_arvalid;
  wire [31:0]S_AXI_CTRL_0_awaddr;
  wire [2:0]S_AXI_CTRL_0_awprot;
  wire S_AXI_CTRL_0_awready;
  wire S_AXI_CTRL_0_awvalid;
  wire S_AXI_CTRL_0_bready;
  wire [1:0]S_AXI_CTRL_0_bresp;
  wire S_AXI_CTRL_0_bvalid;
  wire [31:0]S_AXI_CTRL_0_rdata;
  wire S_AXI_CTRL_0_rready;
  wire [1:0]S_AXI_CTRL_0_rresp;
  wire S_AXI_CTRL_0_rvalid;
  wire [31:0]S_AXI_CTRL_0_wdata;
  wire S_AXI_CTRL_0_wready;
  wire [3:0]S_AXI_CTRL_0_wstrb;
  wire S_AXI_CTRL_0_wvalid;
  wire clkwiz_kernel2_clk_0;
  wire clkwiz_kernel2_rst_0;
  wire clkwiz_kernel_clk_0;
  wire clkwiz_kernel_rst_0;
  wire dma_pcie_aclk;
  wire [0:0]dma_pcie_arst;
  wire [127:0]irq;

  pfm_dynamic pfm_dynamic_i
       (.DDR4_MEM00_0_act_n(DDR4_MEM00_0_act_n),
        .DDR4_MEM00_0_adr(DDR4_MEM00_0_adr),
        .DDR4_MEM00_0_ba(DDR4_MEM00_0_ba),
        .DDR4_MEM00_0_bg(DDR4_MEM00_0_bg),
        .DDR4_MEM00_0_ck_c(DDR4_MEM00_0_ck_c),
        .DDR4_MEM00_0_ck_t(DDR4_MEM00_0_ck_t),
        .DDR4_MEM00_0_cke(DDR4_MEM00_0_cke),
        .DDR4_MEM00_0_cs_n(DDR4_MEM00_0_cs_n),
        .DDR4_MEM00_0_dm_n(DDR4_MEM00_0_dm_n),
        .DDR4_MEM00_0_dq(DDR4_MEM00_0_dq),
        .DDR4_MEM00_0_dqs_c(DDR4_MEM00_0_dqs_c),
        .DDR4_MEM00_0_dqs_t(DDR4_MEM00_0_dqs_t),
        .DDR4_MEM00_0_odt(DDR4_MEM00_0_odt),
        .DDR4_MEM00_0_reset_n(DDR4_MEM00_0_reset_n),
        .PLP_S_AXI_CTRL_USER_00_araddr(PLP_S_AXI_CTRL_USER_00_araddr),
        .PLP_S_AXI_CTRL_USER_00_arprot(PLP_S_AXI_CTRL_USER_00_arprot),
        .PLP_S_AXI_CTRL_USER_00_arready(PLP_S_AXI_CTRL_USER_00_arready),
        .PLP_S_AXI_CTRL_USER_00_arvalid(PLP_S_AXI_CTRL_USER_00_arvalid),
        .PLP_S_AXI_CTRL_USER_00_awaddr(PLP_S_AXI_CTRL_USER_00_awaddr),
        .PLP_S_AXI_CTRL_USER_00_awprot(PLP_S_AXI_CTRL_USER_00_awprot),
        .PLP_S_AXI_CTRL_USER_00_awready(PLP_S_AXI_CTRL_USER_00_awready),
        .PLP_S_AXI_CTRL_USER_00_awvalid(PLP_S_AXI_CTRL_USER_00_awvalid),
        .PLP_S_AXI_CTRL_USER_00_bready(PLP_S_AXI_CTRL_USER_00_bready),
        .PLP_S_AXI_CTRL_USER_00_bresp(PLP_S_AXI_CTRL_USER_00_bresp),
        .PLP_S_AXI_CTRL_USER_00_bvalid(PLP_S_AXI_CTRL_USER_00_bvalid),
        .PLP_S_AXI_CTRL_USER_00_rdata(PLP_S_AXI_CTRL_USER_00_rdata),
        .PLP_S_AXI_CTRL_USER_00_rready(PLP_S_AXI_CTRL_USER_00_rready),
        .PLP_S_AXI_CTRL_USER_00_rresp(PLP_S_AXI_CTRL_USER_00_rresp),
        .PLP_S_AXI_CTRL_USER_00_rvalid(PLP_S_AXI_CTRL_USER_00_rvalid),
        .PLP_S_AXI_CTRL_USER_00_wdata(PLP_S_AXI_CTRL_USER_00_wdata),
        .PLP_S_AXI_CTRL_USER_00_wready(PLP_S_AXI_CTRL_USER_00_wready),
        .PLP_S_AXI_CTRL_USER_00_wstrb(PLP_S_AXI_CTRL_USER_00_wstrb),
        .PLP_S_AXI_CTRL_USER_00_wvalid(PLP_S_AXI_CTRL_USER_00_wvalid),
        .PLP_S_AXI_DATA_H2C_00_araddr(PLP_S_AXI_DATA_H2C_00_araddr),
        .PLP_S_AXI_DATA_H2C_00_arburst(PLP_S_AXI_DATA_H2C_00_arburst),
        .PLP_S_AXI_DATA_H2C_00_arcache(PLP_S_AXI_DATA_H2C_00_arcache),
        .PLP_S_AXI_DATA_H2C_00_arid(PLP_S_AXI_DATA_H2C_00_arid),
        .PLP_S_AXI_DATA_H2C_00_arlen(PLP_S_AXI_DATA_H2C_00_arlen),
        .PLP_S_AXI_DATA_H2C_00_arlock(PLP_S_AXI_DATA_H2C_00_arlock),
        .PLP_S_AXI_DATA_H2C_00_arprot(PLP_S_AXI_DATA_H2C_00_arprot),
        .PLP_S_AXI_DATA_H2C_00_arqos(PLP_S_AXI_DATA_H2C_00_arqos),
        .PLP_S_AXI_DATA_H2C_00_arready(PLP_S_AXI_DATA_H2C_00_arready),
        .PLP_S_AXI_DATA_H2C_00_arsize(PLP_S_AXI_DATA_H2C_00_arsize),
        .PLP_S_AXI_DATA_H2C_00_arvalid(PLP_S_AXI_DATA_H2C_00_arvalid),
        .PLP_S_AXI_DATA_H2C_00_awaddr(PLP_S_AXI_DATA_H2C_00_awaddr),
        .PLP_S_AXI_DATA_H2C_00_awburst(PLP_S_AXI_DATA_H2C_00_awburst),
        .PLP_S_AXI_DATA_H2C_00_awcache(PLP_S_AXI_DATA_H2C_00_awcache),
        .PLP_S_AXI_DATA_H2C_00_awid(PLP_S_AXI_DATA_H2C_00_awid),
        .PLP_S_AXI_DATA_H2C_00_awlen(PLP_S_AXI_DATA_H2C_00_awlen),
        .PLP_S_AXI_DATA_H2C_00_awlock(PLP_S_AXI_DATA_H2C_00_awlock),
        .PLP_S_AXI_DATA_H2C_00_awprot(PLP_S_AXI_DATA_H2C_00_awprot),
        .PLP_S_AXI_DATA_H2C_00_awqos(PLP_S_AXI_DATA_H2C_00_awqos),
        .PLP_S_AXI_DATA_H2C_00_awready(PLP_S_AXI_DATA_H2C_00_awready),
        .PLP_S_AXI_DATA_H2C_00_awsize(PLP_S_AXI_DATA_H2C_00_awsize),
        .PLP_S_AXI_DATA_H2C_00_awvalid(PLP_S_AXI_DATA_H2C_00_awvalid),
        .PLP_S_AXI_DATA_H2C_00_bid(PLP_S_AXI_DATA_H2C_00_bid),
        .PLP_S_AXI_DATA_H2C_00_bready(PLP_S_AXI_DATA_H2C_00_bready),
        .PLP_S_AXI_DATA_H2C_00_bresp(PLP_S_AXI_DATA_H2C_00_bresp),
        .PLP_S_AXI_DATA_H2C_00_bvalid(PLP_S_AXI_DATA_H2C_00_bvalid),
        .PLP_S_AXI_DATA_H2C_00_rdata(PLP_S_AXI_DATA_H2C_00_rdata),
        .PLP_S_AXI_DATA_H2C_00_rid(PLP_S_AXI_DATA_H2C_00_rid),
        .PLP_S_AXI_DATA_H2C_00_rlast(PLP_S_AXI_DATA_H2C_00_rlast),
        .PLP_S_AXI_DATA_H2C_00_rready(PLP_S_AXI_DATA_H2C_00_rready),
        .PLP_S_AXI_DATA_H2C_00_rresp(PLP_S_AXI_DATA_H2C_00_rresp),
        .PLP_S_AXI_DATA_H2C_00_rvalid(PLP_S_AXI_DATA_H2C_00_rvalid),
        .PLP_S_AXI_DATA_H2C_00_wdata(PLP_S_AXI_DATA_H2C_00_wdata),
        .PLP_S_AXI_DATA_H2C_00_wlast(PLP_S_AXI_DATA_H2C_00_wlast),
        .PLP_S_AXI_DATA_H2C_00_wready(PLP_S_AXI_DATA_H2C_00_wready),
        .PLP_S_AXI_DATA_H2C_00_wstrb(PLP_S_AXI_DATA_H2C_00_wstrb),
        .PLP_S_AXI_DATA_H2C_00_wvalid(PLP_S_AXI_DATA_H2C_00_wvalid),
        .S_AXI_CTRL_0_araddr(S_AXI_CTRL_0_araddr),
        .S_AXI_CTRL_0_arprot(S_AXI_CTRL_0_arprot),
        .S_AXI_CTRL_0_arready(S_AXI_CTRL_0_arready),
        .S_AXI_CTRL_0_arvalid(S_AXI_CTRL_0_arvalid),
        .S_AXI_CTRL_0_awaddr(S_AXI_CTRL_0_awaddr),
        .S_AXI_CTRL_0_awprot(S_AXI_CTRL_0_awprot),
        .S_AXI_CTRL_0_awready(S_AXI_CTRL_0_awready),
        .S_AXI_CTRL_0_awvalid(S_AXI_CTRL_0_awvalid),
        .S_AXI_CTRL_0_bready(S_AXI_CTRL_0_bready),
        .S_AXI_CTRL_0_bresp(S_AXI_CTRL_0_bresp),
        .S_AXI_CTRL_0_bvalid(S_AXI_CTRL_0_bvalid),
        .S_AXI_CTRL_0_rdata(S_AXI_CTRL_0_rdata),
        .S_AXI_CTRL_0_rready(S_AXI_CTRL_0_rready),
        .S_AXI_CTRL_0_rresp(S_AXI_CTRL_0_rresp),
        .S_AXI_CTRL_0_rvalid(S_AXI_CTRL_0_rvalid),
        .S_AXI_CTRL_0_wdata(S_AXI_CTRL_0_wdata),
        .S_AXI_CTRL_0_wready(S_AXI_CTRL_0_wready),
        .S_AXI_CTRL_0_wstrb(S_AXI_CTRL_0_wstrb),
        .S_AXI_CTRL_0_wvalid(S_AXI_CTRL_0_wvalid),
        .clkwiz_kernel2_clk_0(clkwiz_kernel2_clk_0),
        .clkwiz_kernel2_rst_0(clkwiz_kernel2_rst_0),
        .clkwiz_kernel_clk_0(clkwiz_kernel_clk_0),
        .clkwiz_kernel_rst_0(clkwiz_kernel_rst_0),
        .dma_pcie_aclk(dma_pcie_aclk),
        .dma_pcie_arst(dma_pcie_arst),
        .irq(irq));
endmodule
