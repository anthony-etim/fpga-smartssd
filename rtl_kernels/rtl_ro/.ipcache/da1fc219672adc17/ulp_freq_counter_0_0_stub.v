// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Dec 31 12:07:28 2021
// Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_freq_counter_0_0_stub.v
// Design      : ulp_freq_counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku15p-ffva1156-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "freq_counter,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset_n, axil_awaddr, axil_awprot, 
  axil_awvalid, axil_awready, axil_wdata, axil_wstrb, axil_wvalid, axil_wready, axil_bvalid, 
  axil_bresp, axil_bready, axil_araddr, axil_arprot, axil_arvalid, axil_arready, axil_rdata, 
  axil_rresp, axil_rvalid, axil_rready, test_clk0, test_clk1)
/* synthesis syn_black_box black_box_pad_pin="clk,reset_n,axil_awaddr[31:0],axil_awprot[2:0],axil_awvalid,axil_awready,axil_wdata[31:0],axil_wstrb[3:0],axil_wvalid,axil_wready,axil_bvalid,axil_bresp[1:0],axil_bready,axil_araddr[31:0],axil_arprot[2:0],axil_arvalid,axil_arready,axil_rdata[31:0],axil_rresp[1:0],axil_rvalid,axil_rready,test_clk0,test_clk1" */;
  input clk;
  input reset_n;
  input [31:0]axil_awaddr;
  input [2:0]axil_awprot;
  input axil_awvalid;
  output axil_awready;
  input [31:0]axil_wdata;
  input [3:0]axil_wstrb;
  input axil_wvalid;
  output axil_wready;
  output axil_bvalid;
  output [1:0]axil_bresp;
  input axil_bready;
  input [31:0]axil_araddr;
  input [2:0]axil_arprot;
  input axil_arvalid;
  output axil_arready;
  output [31:0]axil_rdata;
  output [1:0]axil_rresp;
  output axil_rvalid;
  input axil_rready;
  input test_clk0;
  input test_clk1;
endmodule
