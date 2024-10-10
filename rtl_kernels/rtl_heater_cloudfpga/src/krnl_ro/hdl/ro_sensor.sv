/*
 *  
 * Copyright (C) 2022
 * Author: Anthony Etim <anthony.etim@yale.edu>
 *          
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 *
*/
`include "ro_defines.sv"

module ro_sensor #(
    parameter COUNTER_BIT    = 32,
    parameter RO_TYPE        = `RO_LUT,
    parameter CLOCKS_PER_BIT = 4_194_304,
	parameter STAGES         = 2,
    parameter integer C_DATA_WIDTH   = 32 // Data width of both input and output data
    //parameter integer C_NUM_CHANNELS_RO = 1   // Number of input channels.  Only a value of 2 implemented.
)  (
    input wire aclk,
    input wire areset,
    // output wire [31:0] ro_comp_count

    input wire                     s_tvalid,
    input wire  [C_DATA_WIDTH-1:0] s_tdata,
    output wire                    s_tready,

    output wire                    m_tvalid,
    output wire [C_DATA_WIDTH-1:0] m_tdata,
    input  wire                    m_tready
);

////////////////////////////
// RO sensor
////////////////////////////
// ro ticks
 wire ro_out;
// enable signal for ro
logic ro_enable_internal = 1'b1;

(* DONT_TOUCH = "TRUE" *)
ring_oscillator #(
    .RO_TYPE(`RO_TYPE),
    .STAGES(`STAGES)
) ro_INST(
    .enable(ro_enable_internal),
    .ro_out(ro_out)
);

////////////////////////////
// local paramters or reg generated from parameters
////////////////////////////

(* DONT_TOUCH = "TRUE" *) logic       ro_counter_reset = 0;
(* DONT_TOUCH = "TRUE" *) wire [31:0] ro_counter_count;

(* DONT_TOUCH = "TRUE" *) 
counter #(
    .COUNTER_BIT(COUNTER_BIT)
) counter_RO(
    .tick(ro_out),
    .reset(ro_counter_reset),
    .count(ro_counter_count)
);

////////////////////////////
// RO COMPARATOR WIRES
////////////////////////////
// reg [31:0] ro_comp_count_reg;
// assign ro_comp_count = ro_comp_count_reg;
logic [C_DATA_WIDTH-1:0]  s_tdata_reg;

logic                    valid_in;
logic                    valid_out;                
logic [C_DATA_WIDTH-1:0]  data_out;


////////////////////////////
// State machine parameters
////////////////////////////

localparam [2:0] IDLE             = 3'd0;
localparam [2:0] ROMEASURE        = 3'd1;
localparam [2:0] CONTINUE_MEASURE = 3'd2;
localparam [2:0] FINISH           = 3'd3;
////////////////////////////


////////////////////////////
// Control logic for measuring RO 
////////////////////////////

// Define register holding the state
(* DONT_TOUCH = "TRUE" *) logic [2:0] state = IDLE;
// counter for the clock, referencing to the RO 
logic [31:0] counter_clk = 0;
//reg [31:0] num_measurements_count = 0;

assign m_tdata = data_out;
assign m_tvalid = valid_out;
//assign m_tvalid = &s_tvalid;  // Need to check this... If we hardcode a fixed value on m_tdata and enable this, then it hangs

// Only assert s_tready when transfer has been accepted.  tready asserted on all channels simultaneously
//assign s_tready = m_tready & m_tvalid;  //? {C_NUM_CHANNELS_RO{1'b1}} : {C_NUM_CHANNELS_RO{1'b0}}; // Need to check this

always_ff @(posedge aclk) begin
     if (areset == 1'b1) begin
        state <= IDLE;
        ro_counter_reset <= 1'b1;
        counter_clk <= 0;
        data_out <= 0;
    end else begin 
        ro_counter_reset <= 1'b0;
        // valid_in <= 1'b0;
        valid_out <= 1'b0;

        case (state)
            IDLE: begin
                ro_counter_reset <= 1'b1;
                counter_clk <= 0; 
                s_tdata_reg <= 1'b1; 
                // if start, 
                if (s_tdata == 32'd1997) begin
                    if(s_tvalid==1'b1) begin
                        state <= ROMEASURE;
                    end else begin
                        state <= IDLE;
                    end
                        // valid_in <= s_tvalid;
                        // s_tdata_reg <= s_tdata;           
                        // state <= ROMEASURE;
                end else begin
                        // valid_in <= s_tvalid;
                        // s_tdata_reg <= s_tdata;
                    state <= IDLE;
                end
            end

            ROMEASURE: begin
                s_tdata_reg <= 1'b0;
                if (counter_clk < CLOCKS_PER_BIT) begin
                    counter_clk <= counter_clk + 1'b1;
                    state <= ROMEASURE;
                end else begin
                    data_out <= ro_counter_count;
                    valid_out <= 1'b1;
                    state <= CONTINUE_MEASURE;
                end
            end

            CONTINUE_MEASURE: begin
                // keep reseting the counter, sleep
                ro_counter_reset <= 1'b1;
                counter_clk <= 0;
                s_tdata_reg <= 1'b0;
                // valid_in <= 1'b0;
                state <= ROMEASURE;
                // state <= FINISH;
            end

            FINISH: begin
                state <= IDLE;
            end

            default: begin
                state <= IDLE;
            end
        endcase
    end
end

// always_ff @(posedge aclk) begin 
//   data_out <= s_tdata_reg;
//   valid_out <= valid_in;
// end

endmodule