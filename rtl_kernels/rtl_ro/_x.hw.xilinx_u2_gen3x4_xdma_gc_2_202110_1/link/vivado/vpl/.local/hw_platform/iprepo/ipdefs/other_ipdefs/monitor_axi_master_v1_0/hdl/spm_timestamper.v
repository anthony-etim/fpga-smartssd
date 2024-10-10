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

module timestamper(
    //Trace bus input
    input start,
    input stop,
    input single,
    //Clock & Reset synchonized with start/stop events
    input trace_clk,
    input mon_clk,
    input rst,
    input en,
    //current time input from centralized clock/counter
    input [44:0] counter,
    input counter_overflow,
    //output timestamped data (FIFO interface)
    output [51:0] event_out,
    output event_empty,
    input  event_read,
    // Storedstamper specific
    input  finish,
    input  trace_cu,
    output fifo_event_write
    );
    
//Set the encoded value that will be appended based on the monitored entity type
localparam START_TYPE = 0;
localparam  STOP_TYPE = 1;

    reg event_valid_i=0;    //write signal into the internal FIFO when new event is found
    wire wr_rst_busy;
    reg error = 0;          //error is triggered if backpressure causes a new event to be dropped
    wire [51:0] event_i;    //concatenated info created from various signals (counter, type, etc.)
    reg [51:0] event_buf_i;
    wire full_i;            //backpressure signal from internal FIFO
    wire error_sig;
    reg error_write;
    wire write;
    reg started = 0;        // For trace_cu
    wire any_event;
    wire start_event;

    assign error_sig = event_valid_i & full_i;
    assign fifo_event_write = write;
    assign start_event = (start | (trace_cu & single & ~started));
    assign write = (event_valid_i | (error_write & error)) & ~wr_rst_busy;

    assign event_i[44:0] = counter;                                  //Timestamp 
    assign event_i[48:45] = (start_event) ? START_TYPE : STOP_TYPE;  //Trace Event Type
    assign event_i[49] = single & ~trace_cu;                         //Single burst
    assign event_i[50] = counter_overflow;                           //Overflow
    assign event_i[51] = error_sig | error;                          //Error
    assign any_event = (start | stop | single);

    always @(posedge mon_clk) begin :FSM
        if (!trace_cu) begin
            event_valid_i <= any_event & en;
        end
        else begin
           event_valid_i <= (started & finish) | ((~started & (start | single)) & en);
        end
        if (any_event) begin
            event_buf_i <= event_i;
        end
    end

    always @(posedge mon_clk) begin
        if ((start | single ) & trace_cu & en) begin
            started <= 1;
        end
        else if (finish) begin
            started <= 0;
        end
    end
        
    always @(posedge mon_clk) begin :RESET_ERROR
        if (rst) begin
            error <= 0;
            error_write <= 1;
        end
        else begin
            if(error_sig)
                error <= 1;
            if(error && (~full_i))
                error_write <= 0;
        end
    end

   //Internal FIFO - default to 16 elements deep, 52bit width
   trace_fifo_i #( 
     .WIDTH(52),
     .DEPTH(32)
    ) fifo_i (
     .wr_clk(mon_clk),
     .rst(rst),
     .din(event_buf_i),
     .write(write),
     .full(full_i),
     .dout(event_out),
     .read(event_read),
     .empty(event_empty),
     .wr_rst_busy(wr_rst_busy),
     .rd_clk(trace_clk) 
    );

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
