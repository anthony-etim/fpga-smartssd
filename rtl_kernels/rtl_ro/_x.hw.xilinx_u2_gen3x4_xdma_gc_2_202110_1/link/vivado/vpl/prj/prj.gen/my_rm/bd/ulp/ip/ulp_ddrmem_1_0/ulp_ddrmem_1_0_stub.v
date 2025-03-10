// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Dec 31 12:11:33 2021
// Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top ulp_ddrmem_1_0 -prefix
//               ulp_ddrmem_1_0_ ulp_ddrmem_1_0_stub.v
// Design      : ulp_ddrmem_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku15p-ffva1156-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ddr4_v2_2_12,Vivado 2021.1" *)
module ulp_ddrmem_1_0(sys_rst, c0_sys_clk_i, c0_ddr4_act_n, 
  c0_ddr4_adr, c0_ddr4_ba, c0_ddr4_bg, c0_ddr4_cke, c0_ddr4_odt, c0_ddr4_cs_n, c0_ddr4_ck_t, 
  c0_ddr4_ck_c, c0_ddr4_reset_n, c0_ddr4_dm_dbi_n, c0_ddr4_dq, c0_ddr4_dqs_c, c0_ddr4_dqs_t, 
  c0_init_calib_complete, c0_ddr4_ui_clk, c0_ddr4_ui_clk_sync_rst, dbg_clk, 
  c0_ddr4_s_axi_ctrl_awvalid, c0_ddr4_s_axi_ctrl_awready, c0_ddr4_s_axi_ctrl_awaddr, 
  c0_ddr4_s_axi_ctrl_wvalid, c0_ddr4_s_axi_ctrl_wready, c0_ddr4_s_axi_ctrl_wdata, 
  c0_ddr4_s_axi_ctrl_bvalid, c0_ddr4_s_axi_ctrl_bready, c0_ddr4_s_axi_ctrl_bresp, 
  c0_ddr4_s_axi_ctrl_arvalid, c0_ddr4_s_axi_ctrl_arready, c0_ddr4_s_axi_ctrl_araddr, 
  c0_ddr4_s_axi_ctrl_rvalid, c0_ddr4_s_axi_ctrl_rready, c0_ddr4_s_axi_ctrl_rdata, 
  c0_ddr4_s_axi_ctrl_rresp, c0_ddr4_interrupt, c0_ddr4_aresetn, c0_ddr4_s_axi_awid, 
  c0_ddr4_s_axi_awaddr, c0_ddr4_s_axi_awlen, c0_ddr4_s_axi_awsize, c0_ddr4_s_axi_awburst, 
  c0_ddr4_s_axi_awlock, c0_ddr4_s_axi_awcache, c0_ddr4_s_axi_awprot, c0_ddr4_s_axi_awqos, 
  c0_ddr4_s_axi_awvalid, c0_ddr4_s_axi_awready, c0_ddr4_s_axi_wdata, c0_ddr4_s_axi_wstrb, 
  c0_ddr4_s_axi_wlast, c0_ddr4_s_axi_wvalid, c0_ddr4_s_axi_wready, c0_ddr4_s_axi_bready, 
  c0_ddr4_s_axi_bid, c0_ddr4_s_axi_bresp, c0_ddr4_s_axi_bvalid, c0_ddr4_s_axi_arid, 
  c0_ddr4_s_axi_araddr, c0_ddr4_s_axi_arlen, c0_ddr4_s_axi_arsize, c0_ddr4_s_axi_arburst, 
  c0_ddr4_s_axi_arlock, c0_ddr4_s_axi_arcache, c0_ddr4_s_axi_arprot, c0_ddr4_s_axi_arqos, 
  c0_ddr4_s_axi_arvalid, c0_ddr4_s_axi_arready, c0_ddr4_s_axi_rready, c0_ddr4_s_axi_rid, 
  c0_ddr4_s_axi_rdata, c0_ddr4_s_axi_rresp, c0_ddr4_s_axi_rlast, c0_ddr4_s_axi_rvalid, 
  dbg_bus)
/* synthesis syn_black_box black_box_pad_pin="sys_rst,c0_sys_clk_i,c0_ddr4_act_n,c0_ddr4_adr[16:0],c0_ddr4_ba[1:0],c0_ddr4_bg[0:0],c0_ddr4_cke[0:0],c0_ddr4_odt[0:0],c0_ddr4_cs_n[0:0],c0_ddr4_ck_t[0:0],c0_ddr4_ck_c[0:0],c0_ddr4_reset_n,c0_ddr4_dm_dbi_n[8:0],c0_ddr4_dq[71:0],c0_ddr4_dqs_c[8:0],c0_ddr4_dqs_t[8:0],c0_init_calib_complete,c0_ddr4_ui_clk,c0_ddr4_ui_clk_sync_rst,dbg_clk,c0_ddr4_s_axi_ctrl_awvalid,c0_ddr4_s_axi_ctrl_awready,c0_ddr4_s_axi_ctrl_awaddr[31:0],c0_ddr4_s_axi_ctrl_wvalid,c0_ddr4_s_axi_ctrl_wready,c0_ddr4_s_axi_ctrl_wdata[31:0],c0_ddr4_s_axi_ctrl_bvalid,c0_ddr4_s_axi_ctrl_bready,c0_ddr4_s_axi_ctrl_bresp[1:0],c0_ddr4_s_axi_ctrl_arvalid,c0_ddr4_s_axi_ctrl_arready,c0_ddr4_s_axi_ctrl_araddr[31:0],c0_ddr4_s_axi_ctrl_rvalid,c0_ddr4_s_axi_ctrl_rready,c0_ddr4_s_axi_ctrl_rdata[31:0],c0_ddr4_s_axi_ctrl_rresp[1:0],c0_ddr4_interrupt,c0_ddr4_aresetn,c0_ddr4_s_axi_awid[5:0],c0_ddr4_s_axi_awaddr[31:0],c0_ddr4_s_axi_awlen[7:0],c0_ddr4_s_axi_awsize[2:0],c0_ddr4_s_axi_awburst[1:0],c0_ddr4_s_axi_awlock[0:0],c0_ddr4_s_axi_awcache[3:0],c0_ddr4_s_axi_awprot[2:0],c0_ddr4_s_axi_awqos[3:0],c0_ddr4_s_axi_awvalid,c0_ddr4_s_axi_awready,c0_ddr4_s_axi_wdata[511:0],c0_ddr4_s_axi_wstrb[63:0],c0_ddr4_s_axi_wlast,c0_ddr4_s_axi_wvalid,c0_ddr4_s_axi_wready,c0_ddr4_s_axi_bready,c0_ddr4_s_axi_bid[5:0],c0_ddr4_s_axi_bresp[1:0],c0_ddr4_s_axi_bvalid,c0_ddr4_s_axi_arid[5:0],c0_ddr4_s_axi_araddr[31:0],c0_ddr4_s_axi_arlen[7:0],c0_ddr4_s_axi_arsize[2:0],c0_ddr4_s_axi_arburst[1:0],c0_ddr4_s_axi_arlock[0:0],c0_ddr4_s_axi_arcache[3:0],c0_ddr4_s_axi_arprot[2:0],c0_ddr4_s_axi_arqos[3:0],c0_ddr4_s_axi_arvalid,c0_ddr4_s_axi_arready,c0_ddr4_s_axi_rready,c0_ddr4_s_axi_rid[5:0],c0_ddr4_s_axi_rdata[511:0],c0_ddr4_s_axi_rresp[1:0],c0_ddr4_s_axi_rlast,c0_ddr4_s_axi_rvalid,dbg_bus[511:0]" */;
  input sys_rst;
  input c0_sys_clk_i;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [0:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_odt;
  output [0:0]c0_ddr4_cs_n;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_ck_c;
  output c0_ddr4_reset_n;
  inout [8:0]c0_ddr4_dm_dbi_n;
  inout [71:0]c0_ddr4_dq;
  inout [8:0]c0_ddr4_dqs_c;
  inout [8:0]c0_ddr4_dqs_t;
  output c0_init_calib_complete;
  output c0_ddr4_ui_clk;
  output c0_ddr4_ui_clk_sync_rst;
  output dbg_clk;
  input c0_ddr4_s_axi_ctrl_awvalid;
  output c0_ddr4_s_axi_ctrl_awready;
  input [31:0]c0_ddr4_s_axi_ctrl_awaddr;
  input c0_ddr4_s_axi_ctrl_wvalid;
  output c0_ddr4_s_axi_ctrl_wready;
  input [31:0]c0_ddr4_s_axi_ctrl_wdata;
  output c0_ddr4_s_axi_ctrl_bvalid;
  input c0_ddr4_s_axi_ctrl_bready;
  output [1:0]c0_ddr4_s_axi_ctrl_bresp;
  input c0_ddr4_s_axi_ctrl_arvalid;
  output c0_ddr4_s_axi_ctrl_arready;
  input [31:0]c0_ddr4_s_axi_ctrl_araddr;
  output c0_ddr4_s_axi_ctrl_rvalid;
  input c0_ddr4_s_axi_ctrl_rready;
  output [31:0]c0_ddr4_s_axi_ctrl_rdata;
  output [1:0]c0_ddr4_s_axi_ctrl_rresp;
  output c0_ddr4_interrupt;
  input c0_ddr4_aresetn;
  input [5:0]c0_ddr4_s_axi_awid;
  input [31:0]c0_ddr4_s_axi_awaddr;
  input [7:0]c0_ddr4_s_axi_awlen;
  input [2:0]c0_ddr4_s_axi_awsize;
  input [1:0]c0_ddr4_s_axi_awburst;
  input [0:0]c0_ddr4_s_axi_awlock;
  input [3:0]c0_ddr4_s_axi_awcache;
  input [2:0]c0_ddr4_s_axi_awprot;
  input [3:0]c0_ddr4_s_axi_awqos;
  input c0_ddr4_s_axi_awvalid;
  output c0_ddr4_s_axi_awready;
  input [511:0]c0_ddr4_s_axi_wdata;
  input [63:0]c0_ddr4_s_axi_wstrb;
  input c0_ddr4_s_axi_wlast;
  input c0_ddr4_s_axi_wvalid;
  output c0_ddr4_s_axi_wready;
  input c0_ddr4_s_axi_bready;
  output [5:0]c0_ddr4_s_axi_bid;
  output [1:0]c0_ddr4_s_axi_bresp;
  output c0_ddr4_s_axi_bvalid;
  input [5:0]c0_ddr4_s_axi_arid;
  input [31:0]c0_ddr4_s_axi_araddr;
  input [7:0]c0_ddr4_s_axi_arlen;
  input [2:0]c0_ddr4_s_axi_arsize;
  input [1:0]c0_ddr4_s_axi_arburst;
  input [0:0]c0_ddr4_s_axi_arlock;
  input [3:0]c0_ddr4_s_axi_arcache;
  input [2:0]c0_ddr4_s_axi_arprot;
  input [3:0]c0_ddr4_s_axi_arqos;
  input c0_ddr4_s_axi_arvalid;
  output c0_ddr4_s_axi_arready;
  input c0_ddr4_s_axi_rready;
  output [5:0]c0_ddr4_s_axi_rid;
  output [511:0]c0_ddr4_s_axi_rdata;
  output [1:0]c0_ddr4_s_axi_rresp;
  output c0_ddr4_s_axi_rlast;
  output c0_ddr4_s_axi_rvalid;
  output [511:0]dbg_bus;
endmodule
