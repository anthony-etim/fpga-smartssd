// *************************************************************************
//    ____  ____
//   /   /\/   /
//  /___/  \  /
//  \   \   \/    Copyright 2019 Xilinx, Inc. All rights reserved.
//   \   \        This file contains confidential and proprietary
//   /   /        information of Xilinx, Inc. and is protected under U.S.
//  /___/   /\    and international copyright and other intellectual
//  \   \  /  \   property laws.
//   \___\/\___\
//
//
// *************************************************************************
//
// Disclaimer:
//
//       This disclaimer is not a license and does not grant any rights to
//       the materials distributed herewith. Except as otherwise provided in
//       a valid license issued to you by Xilinx, and to the maximum extent
//       permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE
//       "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
//       WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
//       INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY,
//       NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//       (2) Xilinx shall not be liable (whether in contract or tort,
//       including negligence, or under any other theory of liability) for
//       any loss or damage of any kind or nature related to, arising under
//       or in connection with these materials, including for any direct, or
//       any indirect, special, incidental, or consequential loss or damage
//       (including loss of data, profits, goodwill, or any type of loss or
//       damage suffered as a result of any action brought by a third party)
//       even if such damage or loss was reasonably foreseeable or Xilinx
//       had been advised of the possibility of the same.
//
// Critical Applications:
//
//       Xilinx products are not designed or intended to be fail-safe, or
//       for use in any application requiring fail-safe performance, such as
//       life-support or safety devices or systems, Class III medical
//       devices, nuclear facilities, applications related to the deployment
//       of airbags, or any other applications that could lead to death,
//       personal injury, or severe property or environmental damage
//       (individually and collectively, "Critical Applications"). Customer
//       assumes the sole risk and liability of any use of Xilinx products
//       in Critical Applications, subject only to applicable laws and
//       regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS
// FILE AT ALL TIMES.
//
// *************************************************************************

`timescale 1 ns / 1 ps

module shift_reg
(
  input  wire  clk,
  input  wire  rstn,

  input  wire  data_in,
  output wire  data_out

);

reg data_d1;
reg data_d2;
reg data_d3;

  always @(posedge clk)
  begin
    if(~rstn) begin
        data_d1		<= 1'b0;
        data_d2		<= 1'b0;
        data_d3		<= 1'b0;
    end else begin
        data_d1		<= data_in;
        data_d2		<= data_d1;
        data_d3		<= data_d2;
    end
  end

assign data_out = data_d3;

endmodule

