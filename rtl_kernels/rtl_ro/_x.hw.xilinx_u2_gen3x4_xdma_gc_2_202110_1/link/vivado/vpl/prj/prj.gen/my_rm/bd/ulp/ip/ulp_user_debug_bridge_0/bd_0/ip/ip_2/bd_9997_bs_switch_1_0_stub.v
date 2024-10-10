// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Dec 31 12:05:01 2021
// Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top bd_9997_bs_switch_1_0 -prefix
//               bd_9997_bs_switch_1_0_ bd_9997_bs_switch_1_0_stub.v
// Design      : bd_9997_bs_switch_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku15p-ffva1156-2LV-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bs_switch_v1_0_0_bs_switch,Vivado 2021.1" *)
module bd_9997_bs_switch_1_0(s_bscan_drck, s_bscan_reset, s_bscan_sel, 
  s_bscan_capture, s_bscan_shift, s_bscan_update, s_bscan_tdi, s_bscan_runtest, s_bscan_tck, 
  s_bscan_tms, s_bscanid_en, s_bscan_tdo, drck_0, reset_0, sel_0, capture_0, shift_0, update_0, 
  tdi_0, runtest_0, tck_0, tms_0, bscanid_en_0, tdo_0)
/* synthesis syn_black_box black_box_pad_pin="s_bscan_drck,s_bscan_reset,s_bscan_sel,s_bscan_capture,s_bscan_shift,s_bscan_update,s_bscan_tdi,s_bscan_runtest,s_bscan_tck,s_bscan_tms,s_bscanid_en,s_bscan_tdo,drck_0,reset_0,sel_0,capture_0,shift_0,update_0,tdi_0,runtest_0,tck_0,tms_0,bscanid_en_0,tdo_0" */;
  input s_bscan_drck;
  input s_bscan_reset;
  input s_bscan_sel;
  input s_bscan_capture;
  input s_bscan_shift;
  input s_bscan_update;
  input s_bscan_tdi;
  input s_bscan_runtest;
  input s_bscan_tck;
  input s_bscan_tms;
  input s_bscanid_en;
  output s_bscan_tdo;
  output drck_0;
  output reset_0;
  output sel_0;
  output capture_0;
  output shift_0;
  output update_0;
  output tdi_0;
  output runtest_0;
  output tck_0;
  output tms_0;
  output bscanid_en_0;
  input tdo_0;
endmodule
