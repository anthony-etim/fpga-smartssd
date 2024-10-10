// (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
/*******************************************************************************************************************************************
/
/ (c) Copyright 2019 Xilinx, Inc. All rights reserved.
/
/ This file contains confidential and proprietary information of Xilinx, Inc. and is protected under U.S. and
/ international copyright and other intellectual property laws.
/
/ DISCLAIMER
/ This disclaimer is not a license and does not grant any rights to the materials distributed herewith. Except as
/ otherwise provided in a valid license issued to you by Xilinx, and to the maximum extent permitted by applicable law:
/ (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND
/ CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
/ INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort,
/ including negligence, or under any other theory of liability) for any loss or damage of any kind or nature related to,
/ arising under or in connection with these materials, including for any direct, or any indirect, special, incidental, or
/ consequential loss or damage (including loss of data, profits, goodwill, or any type of loss or damage suffered as a
/ result of any action brought by a third party) even if such damage or loss was reasonably foreseeable or Xilinx had
/ been advised of the possibility of the same.
/
/ CRITICAL APPLICATIONS
/ Xilinx products are not designed or intended to be fail-safe, or for use in any application requiring fail-safe
/ performance, such as life-support or safety devices or systems, Class III medical devices, nuclear facilities,
/ applications related to the deployment of airbags, or any other applications that could lead to death, personal injury,
/ or severe property or environmental damage (individually and collectively, "Critical Applications"). Customer assumes
/ the sole risk and liability of any use of Xilinx products in Critical Applications, subject only to applicable laws and
/ regulations governing limitations on product liability.
/
/ THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
/
*******************************************************************************************************************************************/

`timescale 1 ns / 1 ps

module shell_utils_msp432_bsl_crc_gen_v1_0_0 (

    input   clk,
    input   reset_n,

    input   wire    [31:0]      s0_axis_tdata     ,
    output  wire                s0_axis_tready     ,
    input   wire                s0_axis_tvalid     ,
    input   wire                s0_axis_tlast      ,

    output   wire    [31:0]     m0_axis_tdata     ,
    input  wire                 m0_axis_tready     ,
    output   wire               m0_axis_tvalid     ,
    output   wire               m0_axis_tlast
);

    reg [15:0] crc = 16'b0;
    reg crc_done = 1'b0;

    localparam  [0:0]   IDLE            =1'b0,
                        PROC            =1'b1;
    reg         [0:0]   state = IDLE;
    reg         [0:0]   prev_state = IDLE;

    assign s0_axis_tready = 1'b1; //Always ready
    assign m0_axis_tdata = {16'b0, crc}; //CRC is 16 bits wide
    assign m0_axis_tlast = 1'b0; //tlast not used
    assign m0_axis_tvalid = crc_done;

    //Current state
    always @(posedge clk) begin
        if(!reset_n) state <= IDLE;
        else if(s0_axis_tvalid && state == IDLE) state <= PROC;
        else if(s0_axis_tvalid && s0_axis_tlast && state == PROC ) state <= IDLE;
        else state <= state;
    end

    //Previous state
    always @(posedge clk) begin prev_state <= state; end

    //Hold valid until axis has accepted the CRC
    //Note the user must read out the CRC before sending new data
    always @(posedge clk) begin
        if(!reset_n) crc_done <= 1'b0;
        else if(prev_state == PROC && state ==IDLE) crc_done <= 1'b1;
        else if(crc_done && m0_axis_tready) crc_done <= 1'b0;
        else crc_done <= crc_done;
    end

    //Calculate the CRC. Use tlast to signify CRC valid
    always @(posedge clk) begin
        if(!reset_n) crc <= 16'b0;
        else begin
            if(state == IDLE && s0_axis_tvalid)
                crc <= s0_axis_tdata[15:0];
            else if (s0_axis_tvalid && state == PROC)begin
                crc[0] <= s0_axis_tdata[4] ^ s0_axis_tdata[0] ^ crc[8] ^ crc[12];
                crc[1] <= s0_axis_tdata[5] ^ s0_axis_tdata[1] ^ crc[9] ^ crc[13];
                crc[2] <= s0_axis_tdata[6] ^ s0_axis_tdata[2] ^ crc[10] ^ crc[14];
                crc[3] <= s0_axis_tdata[7] ^ s0_axis_tdata[3] ^ crc[11] ^ crc[15];
                crc[4] <= s0_axis_tdata[4] ^ crc[12];
                crc[5] <= s0_axis_tdata[5] ^ s0_axis_tdata[4] ^ s0_axis_tdata[0] ^ crc[8] ^ crc[12] ^ crc[13];
                crc[6] <= s0_axis_tdata[6] ^ s0_axis_tdata[5] ^ s0_axis_tdata[1] ^ crc[9] ^ crc[13] ^ crc[14];
                crc[7] <= s0_axis_tdata[7] ^ s0_axis_tdata[6] ^ s0_axis_tdata[2] ^ crc[10] ^ crc[14] ^ crc[15];
                crc[8] <= s0_axis_tdata[7] ^ s0_axis_tdata[3] ^ crc[0] ^ crc[11] ^ crc[15];
                crc[9] <= s0_axis_tdata[4] ^ crc[1] ^ crc[12];
                crc[10] <= s0_axis_tdata[5] ^ crc[2] ^ crc[13];
                crc[11] <= s0_axis_tdata[6] ^ crc[3] ^ crc[14];
                crc[12] <= s0_axis_tdata[7] ^ s0_axis_tdata[4] ^ s0_axis_tdata[0] ^ crc[4] ^ crc[8] ^ crc[12] ^ crc[15];
                crc[13] <= s0_axis_tdata[5] ^ s0_axis_tdata[1] ^ crc[5] ^ crc[9] ^ crc[13];
                crc[14] <= s0_axis_tdata[6] ^ s0_axis_tdata[2] ^ crc[6] ^ crc[10] ^ crc[14];
                crc[15] <= s0_axis_tdata[7] ^ s0_axis_tdata[3] ^ crc[7] ^ crc[11] ^ crc[15];
            end
        end
    end
endmodule



