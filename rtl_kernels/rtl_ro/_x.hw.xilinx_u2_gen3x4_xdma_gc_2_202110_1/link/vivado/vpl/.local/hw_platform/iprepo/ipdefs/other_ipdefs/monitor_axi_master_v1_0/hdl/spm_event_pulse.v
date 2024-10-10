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
`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Sam Skalicky
//
// Create Date: 07/16/2015 10:05:03 AM
// Design Name: Accelerator Trace Monitor
// Module Name: Event_Pulse
// Project Name: SDSoC Trace Framework
// Target Devices: Zynq
// Tool Versions: 2015.2
// Description: This module produces various pulses for different events of the
//      input signal: rising or falling edge or both edges.
//
// Dependencies: None
//
// Revision: 1.0
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module Event_Pulse_i(
    input in,               //Input signal to monitor
    input clk,              //clock to sample the input signal at
    output rising_edge,     //Output pulse if a rising edge is found
    output falling_edge,    //Output pulse if a falling edge is found
    output both_edges       //Output pulse if any edge is found
    );

    reg [3:0] reg_i = 1'h0; //four bit register for identifying edges

    assign rising_edge = (~reg_i[3]) &  reg_i[2];  //rising edge
    assign falling_edge =  reg_i[3]  &(~reg_i[2]); //falling edge
    assign both_edges = ((~reg_i[3]) &  reg_i[2]) | (reg_i[3] & (~reg_i[2]));   //both edges

    //Shift in the signal every clock cycle
    always @(posedge clk)
    begin
        if (in == 0 || in == 1 ) begin
           reg_i = {reg_i[2:0],in}; 
        end
    end
endmodule


// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
