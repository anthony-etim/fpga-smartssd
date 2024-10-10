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
`timescale 1ns/1ps


module register_module 
#(
  parameter CAPTURE_BURSTS = 1,
  // start/stop event selection
  parameter WRITE_START_SELECT = "Address",   // choices: Address, First Data, First Tranx, None
  parameter WRITE_STOP_SELECT  = "Last Data", // choices: Last Data, Response, Last Tranx, None
  parameter READ_START_SELECT  = "Address",   // choices: Address, First Data, First Tranx, None
  parameter READ_STOP_SELECT   = "Last Data"  // choices: Last Data, Last Tranx, None
)
(
  input                        mon_clk,
	input                        mon_resetn,
	   
  output reg [31:0]            slv_reg_in,
	input  [31:0]                slv_reg_out,
	input  [7:0]                 slv_reg_addr,
	input                        slv_reg_addr_vld,
  input                        slv_reg_out_vld,
  output reg                   slv_reg_in_vld,
  
   // metric counters
   input [31:0]                sample_metric_ram_data,

   // control register
   output reg                  metrics_cnt_en,
   output reg                  metrics_cnt_reset,
   output reg                  event_log_en,
   output reg                  streaming_fifo_reset,
   output reg                  reset_on_sample_read,
   
   // event select register
   output reg [1:0]            write_start_select,
   output reg [1:0]            write_stop_select,
   output reg [1:0]            read_start_select,
   output reg [1:0]            read_stop_select,
   
   // other registers
   output reg [5:0]            trace_control,
   output                      lat_sample_reg,
   output wire [4:0]            lat_addr_6downto2
);

  //-------------------------------------------------------------------
  // parameter declaration
  //-------------------------------------------------------------------
  localparam RST_ACTIVE = 1'b0;
  localparam TIME_DIFF_LOAD_VALUE = 32'h00000001;
  localparam VERSION_VALUE = 32'hDEAF0100;
  localparam TRACE_CONTROL_DEFAULT = (CAPTURE_BURSTS > 0) ? 6'b111110 : 6'b111111;
  
  //-------------------------------------------------------------------
  // signal and register declaration
  //-------------------------------------------------------------------
  reg  [5:0]                   register_select;
  wire                         lat_sample_reg_rd_en;
  reg                          lat_sample_reg_rd_en_d1;

	reg                        slv_reg_addr_vld_reg;
  reg                        slv_reg_out_vld_reg;
  
  // sample register read interval counter enable 
  reg  [31:0]                  sample_time_diff_reg;  
  wire [31:0]                  sample_time_diff_reg_int;  
  reg                          sample_reg_rd_first;  
  wire [31:0]                  sample_time_diff; 
  
  wire [31:0]                  control_reg;
  wire [31:0]                  event_select_reg;
  wire                         reset_sample_reg;
  
  //-------------------------------------------------------------------
  // begin architecture
  //-------------------------------------------------------------------
               
  wire addr_7downto0_is_0x00  = (slv_reg_addr[7:0] == 8'h00) ? 1'b1 : 1'b0;
  wire addr_7downto0_is_0x08  = (slv_reg_addr[7:0] == 8'h08) ? 1'b1 : 1'b0;
  wire addr_7downto0_is_0x10  = (slv_reg_addr[7:0] == 8'h10) ? 1'b1 : 1'b0;
  wire addr_7downto0_is_0x18  = (slv_reg_addr[7:0] == 8'h18) ? 1'b1 : 1'b0;
  wire addr_7downto0_is_0x20  = (slv_reg_addr[7:0] == 8'h20) ? 1'b1 : 1'b0;
  wire addr_7downto0_is_0x28  = (slv_reg_addr[7:0] == 8'h28) ? 1'b1 : 1'b0;
  wire addr_7downto0_is_0x30  = (slv_reg_addr[7:0] == 8'h30) ? 1'b1 : 1'b0;
  wire addr_7_is_0x1          = (slv_reg_addr[7]   == 1'b1)  ? 1'b1 : 1'b0;
  
  wire [1:0] write_start_select_default = 
     (WRITE_START_SELECT == "None")        ? 2'b11 : 
    ((WRITE_START_SELECT == "First Tranx") ? 2'b10 :
    ((WRITE_START_SELECT == "First Data")  ? 2'b01 : 2'b00));
  wire [1:0] write_stop_select_default  = 
     (WRITE_STOP_SELECT  == "None")        ? 2'b11 : 
    ((WRITE_STOP_SELECT  == "Last Tranx")  ? 2'b10 : 
    ((WRITE_STOP_SELECT  == "Response")    ? 2'b01 : 2'b00));
  wire [1:0] read_start_select_default  = 
     (READ_START_SELECT  == "None")        ? 2'b11 : 
    ((READ_START_SELECT  == "First Tranx") ? 2'b10 : 
    ((READ_START_SELECT  == "First Data")  ? 2'b01 : 2'b00));
  wire [1:0] read_stop_select_default   = 
     (READ_STOP_SELECT   == "None")        ? 2'b11 : 
    ((READ_STOP_SELECT   == "Last Tranx")  ? 2'b10 : 2'b00);
    
  //-------------------------------------------------------------------------------
  //-- write enables and read enables generation
  //-------------------------------------------------------------------------------
  
  //-- type/version register (0x00)
  wire version_rd_en = slv_reg_addr_vld && addr_7downto0_is_0x00;
  
  //-- write/read enables for control register (0x08)
  wire control_wr_en = slv_reg_out_vld && addr_7downto0_is_0x08;
  wire control_rd_en = slv_reg_addr_vld && addr_7downto0_is_0x08;
  
  //-- write/read enables for trace control register (0x10)
  wire trace_control_wr_en = slv_reg_out_vld && addr_7downto0_is_0x10;
  wire trace_control_rd_en = slv_reg_addr_vld && addr_7downto0_is_0x10;

  //-- write/read enables for event select register (0x18)
  wire event_select_wr_en = slv_reg_out_vld && addr_7downto0_is_0x18;
  wire event_select_rd_en = slv_reg_addr_vld && addr_7downto0_is_0x18;
  
  //-- read enable for sample register (0x20)
  wire sample_reg_rd_en = slv_reg_addr_vld && addr_7downto0_is_0x20;
    
  //-- read enables for sampled metric count registers (8'b1*******)
  wire sample_metric_counter_rd_en = slv_reg_addr_vld && addr_7_is_0x1;
  
  //-- control register
  //-- NOTE: to make initialization easier, counters and trace are enabled upon reset
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
      metrics_cnt_en        <= 1'b1;
      metrics_cnt_reset     <= 1'b0;
      event_log_en          <= 1'b1;
      streaming_fifo_reset  <= 1'b0;
      reset_on_sample_read  <= 1'b0;
    end
    else begin 
      if (control_wr_en == 1'b1) begin
        metrics_cnt_en        <= slv_reg_out[0];
        metrics_cnt_reset     <= slv_reg_out[1];
        event_log_en          <= slv_reg_out[2];
        streaming_fifo_reset  <= slv_reg_out[3];
        reset_on_sample_read  <= slv_reg_out[4];
      end
      else begin
        metrics_cnt_en        <= metrics_cnt_en;
        metrics_cnt_reset     <= metrics_cnt_reset;
        event_log_en          <= event_log_en;
        streaming_fifo_reset  <= streaming_fifo_reset;
        reset_on_sample_read  <= reset_on_sample_read;
      end
    end
  end 
  
  assign control_reg = { {27{1'b0}}, reset_on_sample_read, streaming_fifo_reset, 
                         event_log_en, metrics_cnt_reset, metrics_cnt_en };
                           
  //-- trace control register
  //-- note: all trace events are enabled upon reset
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
      trace_control      <= TRACE_CONTROL_DEFAULT;
    end
    else begin 
      if (trace_control_wr_en == 1'b1) begin
        trace_control    <= slv_reg_out[5:0];
      end
      else begin
        trace_control    <= trace_control;
      end
    end
  end 
  
  //-- event select register
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
      read_stop_select        <= read_stop_select_default;
      read_start_select       <= read_start_select_default;
      write_stop_select       <= write_stop_select_default;
      write_start_select      <= write_start_select_default;
    end
    else begin 
      if (event_select_wr_en == 1'b1) begin
        read_stop_select      <= slv_reg_out[1:0];
        read_start_select     <= slv_reg_out[3:2];
        write_stop_select     <= slv_reg_out[5:4];
        write_start_select    <= slv_reg_out[7:6];
      end
      else begin
        read_stop_select      <= read_stop_select;
        read_start_select     <= read_start_select;
        write_stop_select     <= write_stop_select;
        write_start_select    <= write_start_select;
      end
    end
  end
  
  assign event_select_reg = { {24{1'b0}}, write_start_select, write_stop_select, 
                              read_start_select, read_stop_select };
                         
  //-- sample register read edge detection logic
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
      lat_sample_reg_rd_en_d1  <= 0;
    end
    else begin
      lat_sample_reg_rd_en_d1  <= lat_sample_reg_rd_en;
    end
  end 
     
  //-- this rising edge pulse is used to sample metric counts into sampled metric counts
  assign lat_sample_reg = lat_sample_reg_rd_en && ~lat_sample_reg_rd_en_d1;
  
  //-- profile registers
  assign reset_sample_reg = lat_sample_reg_rd_en & reset_on_sample_read;
    
  //-- free running counter after first read of sample register
  //-- the number of clocks is in mon_clk domain
  counter 
  #(
     .C_NUM_BITS           (32),
	   .COUNTER_LOAD_VALUE   (32'h00000000)
   ) sample_reg_counter_inst 
   (
     .clk                  (mon_clk),
     .rst_n                (mon_resetn),
     .Load_In              (TIME_DIFF_LOAD_VALUE),
     .Count_Enable         (sample_reg_rd_first),
     .Count_Load           (reset_sample_reg),
     .Count_Down           (1'b0),
     .Count_Out            (sample_time_diff),
     .Carry_Out            ( )  //overflow is left to the software as they have to find the difference
                                //between two sample register reads
   );  
      
  //-- sample time capture
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
     // sample_time_diff_reg   <= 0;
      sample_reg_rd_first    <= 0;
    end
    else begin
      if (sample_reg_rd_en == 1'b1) begin
        sample_time_diff_reg <= sample_time_diff;
        sample_reg_rd_first  <= 1;
      end
      else begin
        sample_time_diff_reg <= sample_time_diff_reg;
        sample_reg_rd_first  <= sample_reg_rd_first;
      end
    end
  end
  
  assign sample_time_diff_reg_int = sample_time_diff_reg;
       
  //-- Address latched on rden
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
      register_select     <= 6'b000000; 
      slv_reg_out_vld_reg <= 0;
      slv_reg_addr_vld_reg <= 0;
    end
    else begin
      slv_reg_out_vld_reg <= slv_reg_out_vld;
      slv_reg_addr_vld_reg <= slv_reg_addr_vld;
      register_select   <= {sample_metric_counter_rd_en, control_rd_en, trace_control_rd_en, 
                           event_select_rd_en, sample_reg_rd_en, version_rd_en};
    end
  end 

  assign lat_sample_reg_rd_en = sample_reg_rd_en;
  assign lat_addr_6downto2 = slv_reg_addr[6:2];
  
  //-- register read logic
  always @(posedge mon_clk) begin
    if (mon_resetn == RST_ACTIVE) begin
      slv_reg_in                <= 0;
      slv_reg_in_vld            <= 1'b0;
    end
    else begin
      if (slv_reg_addr_vld_reg == 1'b1 & slv_reg_out_vld_reg == 1'b0) begin  
        case (register_select)
          6'b100000: slv_reg_in  <= sample_metric_ram_data;
          6'b010000: slv_reg_in  <= control_reg;
          6'b001000: slv_reg_in  <= { {26{1'b0}}, trace_control };
          6'b000100: slv_reg_in  <= event_select_reg;
          6'b000010: slv_reg_in  <= sample_time_diff_reg_int;
          6'b000001: slv_reg_in  <= VERSION_VALUE;
          default:  slv_reg_in   <= 0;
        endcase
        
        slv_reg_in_vld           <= 1'b1;
      end
      else begin
        slv_reg_in               <= 0;
        slv_reg_in_vld           <= 1'b0;
      end
    end  
  end

endmodule
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
