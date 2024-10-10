// (c) Copyright 2018-2019 Xilinx, Inc. All rights reserved.
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
////////////////////////////////////////////////////////////
//
// *************************************************************************

`timescale 1 ns / 1 ps

module static_slr_flops (

  input  wire clkwiz_kernel_clk_out1_i,
  input  wire clkwiz_kernel_locked_i,
  output wire clkwiz_kernel_locked_o,

  input  wire clkwiz_kernel2_clk_out1_i,
  input  wire clkwiz_kernel2_locked_i,
  output wire clkwiz_kernel2_locked_o,

  input  wire clkwiz_sysclks_clk_out2_i,
  input  wire clkwiz_sysclks_locked_i,
  output wire clkwiz_sysclks_locked_o,

  input  wire dma_pcie_axi_aclk_i,
  input  wire dma_pcie_user_lnk_up_i,
  output wire dma_pcie_user_lnk_up_o,

  input  wire slice_reset_kernel_pr_Dout_i,
  output wire slice_reset_kernel_pr_Dout_o

);

  (* shreg_extract = "false" *) reg clkwiz_kernel_locked_reg1;
  (* shreg_extract = "false" *) reg clkwiz_kernel_locked_reg2;
  always @(posedge clkwiz_kernel_clk_out1_i) begin
    clkwiz_kernel_locked_reg1 <= clkwiz_kernel_locked_i;
    clkwiz_kernel_locked_reg2 <= clkwiz_kernel_locked_reg1;
  end
  assign clkwiz_kernel_locked_o = clkwiz_kernel_locked_reg2;

  (* shreg_extract = "false" *) reg clkwiz_kernel2_locked_reg1;
  (* shreg_extract = "false" *) reg clkwiz_kernel2_locked_reg2;
  always @(posedge clkwiz_kernel2_clk_out1_i) begin
    clkwiz_kernel2_locked_reg1 <= clkwiz_kernel2_locked_i;
    clkwiz_kernel2_locked_reg2 <= clkwiz_kernel2_locked_reg1;
  end
  assign clkwiz_kernel2_locked_o = clkwiz_kernel2_locked_reg2;

  (* shreg_extract = "false" *) reg clkwiz_sysclks_locked_reg1;
  (* shreg_extract = "false" *) reg clkwiz_sysclks_locked_reg2;
  always @(posedge clkwiz_sysclks_clk_out2_i) begin
    clkwiz_sysclks_locked_reg1 <= clkwiz_sysclks_locked_i;
    clkwiz_sysclks_locked_reg2 <= clkwiz_sysclks_locked_reg1;
  end
  assign clkwiz_sysclks_locked_o = clkwiz_sysclks_locked_reg2;

  (* shreg_extract = "false" *) reg dma_pcie_user_lnk_up_reg1;
  (* shreg_extract = "false" *) reg dma_pcie_user_lnk_up_reg2;
  always @(posedge dma_pcie_axi_aclk_i) begin
    dma_pcie_user_lnk_up_reg1 <= dma_pcie_user_lnk_up_i;
    dma_pcie_user_lnk_up_reg2 <= dma_pcie_user_lnk_up_reg1;
  end
  assign dma_pcie_user_lnk_up_o = dma_pcie_user_lnk_up_reg2;

  (* shreg_extract = "false" *) reg slice_reset_kernel_pr_Dout_reg1;
  (* shreg_extract = "false" *) reg slice_reset_kernel_pr_Dout_reg2;
  always @(posedge clkwiz_sysclks_clk_out2_i) begin
    slice_reset_kernel_pr_Dout_reg1 <= slice_reset_kernel_pr_Dout_i;
    slice_reset_kernel_pr_Dout_reg2 <= slice_reset_kernel_pr_Dout_reg1;
  end
  assign slice_reset_kernel_pr_Dout_o = slice_reset_kernel_pr_Dout_reg2;

endmodule
