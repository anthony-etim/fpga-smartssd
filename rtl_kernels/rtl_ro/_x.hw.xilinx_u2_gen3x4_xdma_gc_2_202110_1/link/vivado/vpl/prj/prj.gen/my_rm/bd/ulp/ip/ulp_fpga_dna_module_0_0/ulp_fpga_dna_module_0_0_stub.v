// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Dec 31 12:05:57 2021
// Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top ulp_fpga_dna_module_0_0 -prefix
//               ulp_fpga_dna_module_0_0_ ulp_fpga_dna_module_0_0_stub.v
// Design      : ulp_fpga_dna_module_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku15p-ffva1156-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fpga_dna_module,Vivado 2021.1" *)
module ulp_fpga_dna_module_0_0(s_axi_lite_aclk, s_axi_lite_aresetn, 
  s_axi_lite_awaddr, s_axi_lite_awready, s_axi_lite_awvalid, s_axi_lite_araddr, 
  s_axi_lite_arready, s_axi_lite_arvalid, s_axi_lite_wdata, s_axi_lite_wstrb, 
  s_axi_lite_wready, s_axi_lite_wvalid, s_axi_lite_rdata, s_axi_lite_rresp, 
  s_axi_lite_rready, s_axi_lite_rvalid, s_axi_lite_bresp, s_axi_lite_bready, 
  s_axi_lite_bvalid, dna_dyn_data_dout, dna_dyn_data_ports, fpga_dna_data)
/* synthesis syn_black_box black_box_pad_pin="s_axi_lite_aclk,s_axi_lite_aresetn,s_axi_lite_awaddr[11:0],s_axi_lite_awready,s_axi_lite_awvalid,s_axi_lite_araddr[11:0],s_axi_lite_arready,s_axi_lite_arvalid,s_axi_lite_wdata[31:0],s_axi_lite_wstrb[3:0],s_axi_lite_wready,s_axi_lite_wvalid,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],s_axi_lite_rready,s_axi_lite_rvalid,s_axi_lite_bresp[1:0],s_axi_lite_bready,s_axi_lite_bvalid,dna_dyn_data_dout,dna_dyn_data_ports[2:0],fpga_dna_data[95:0]" */;
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
  input [11:0]s_axi_lite_awaddr;
  output s_axi_lite_awready;
  input s_axi_lite_awvalid;
  input [11:0]s_axi_lite_araddr;
  output s_axi_lite_arready;
  input s_axi_lite_arvalid;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;
  output s_axi_lite_wready;
  input s_axi_lite_wvalid;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  input s_axi_lite_rready;
  output s_axi_lite_rvalid;
  output [1:0]s_axi_lite_bresp;
  input s_axi_lite_bready;
  output s_axi_lite_bvalid;
  input dna_dyn_data_dout;
  output [2:0]dna_dyn_data_ports;
  output [95:0]fpga_dna_data;
endmodule
