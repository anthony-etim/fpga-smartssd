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

module axi_master_monitor #(
    parameter TRACE_READ_ID         = 0,
    parameter TRACE_WRITE_ID        = 1,
    parameter MON_DATA_WIDTH        = 32,
    parameter MODE_SDACCEL          = 1
    ) (
    //AXI Full interface
    input mon_clk,
    input mon_resetn,
    input [MON_DATA_WIDTH - 1 : 0] Data_In,
    //Input AP_CTRL bus
    input ap_ready,
    input ap_done,
    //trace network clock
    input trace_clk,
    input trace_rst,
    //Read Trace Bus
    input rtrace_counter_overflow,
    input [44:0] rtrace_counter,
    output rtrace_event,
    output [63:0] rtrace_data,
    output rtrace_valid,
    input rtrace_read,
    input event_log_en,
    //Write Trace Bus
    input wtrace_counter_overflow,
    input [44:0] wtrace_counter,
    output wtrace_event,
    output [63:0] wtrace_data,
    output wtrace_valid,
    input wtrace_read,
    input [5:0] trace_control
  );
   
  wire rdata_start;
  wire rdata_stop;
  wire rdata_single;
  wire wdata_start;
  wire wdata_stop;
  wire wdata_single;

  reg read_going_on;
  reg write_going_on;
  
  wire trace_done;
  wire trace_en_rd;
  wire trace_en_wr;
  wire trace_cu;
  wire rst_rising;
    
  wire First_Read_Flag;
  wire First_Write_Flag;
  wire Last_Read_Flag;
  wire Last_Write_Flag;
  wire Single_Burst_Read_flag;
  wire Single_Burst_Write_flag;
   
  wire [51:0] rtrace_data_i;
  wire [51:0] wtrace_data_i;
  wire 	rtrace_empty_i;
  wire 	wtrace_empty_i;   

  //-- Decoding individual signals from output of fifo
  //-- NOTE: this block does not use the upper bits of address and data
  wire m_axi_RREADY        = Data_In[0];
  wire m_axi_RVALID        = Data_In[1];
  wire m_axi_RLAST         = Data_In[2];
  wire m_axi_WREADY        = Data_In[7];
  wire m_axi_WVALID        = Data_In[8];
  wire m_axi_WLAST         = Data_In[9];


  assign rtrace_data = {rtrace_data_i[51:49],TRACE_READ_ID[11:0],rtrace_data_i[48:0]};
  assign wtrace_data = {wtrace_data_i[51:49],TRACE_WRITE_ID[11:0],wtrace_data_i[48:0]};
  assign rtrace_valid = ~rtrace_empty_i;
  assign wtrace_valid = ~wtrace_empty_i;
    
  assign First_Read_Flag = m_axi_RVALID && (!m_axi_RLAST) && (!read_going_on);
  assign Last_Read_Flag = m_axi_RLAST && m_axi_RVALID && m_axi_RREADY && (read_going_on);
  assign Single_Burst_Read_flag = m_axi_RLAST && m_axi_RVALID && m_axi_RREADY && (!read_going_on);
  assign First_Write_Flag = m_axi_WVALID && (!m_axi_WLAST) && (!write_going_on);
  assign Last_Write_Flag = m_axi_WLAST && m_axi_WVALID && m_axi_WREADY && (write_going_on);
  assign Single_Burst_Write_flag = m_axi_WLAST && m_axi_WVALID && m_axi_WREADY && (!write_going_on);

	timestamper ts_0i (
	    .start(rdata_start),
	    .stop(rdata_stop),
      .single(rdata_single),
	    .trace_clk(trace_clk),
      .mon_clk(prim_clk),
	    .rst(prim_rst),
      .en(trace_en_rd),
	    .counter(rtrace_counter),
	    .counter_overflow(rtrace_counter_overflow),
	    .event_out(rtrace_data_i),
	    .event_empty(rtrace_empty_i),
	    .event_read(rtrace_read),
      .finish(trace_done),
      .trace_cu(trace_cu),
      .fifo_event_write(wtrace_event)
	);

	timestamper ts_1i (
	    .start(wdata_start),
	    .stop(wdata_stop),
      .single(wdata_single),
	    .trace_clk(trace_clk),
      .mon_clk(prim_clk),
	    .rst(prim_rst),
      .en(trace_en_wr),
	    .counter(wtrace_counter),
	    .counter_overflow(wtrace_counter_overflow),
	    .event_out(wtrace_data_i),
	    .event_empty(wtrace_empty_i),
	    .event_read(wtrace_read),
      .finish(trace_done),
      .trace_cu(trace_cu),
      .fifo_event_write(rtrace_event)
	);

  //State machine to track transfers going on
  always @(posedge mon_clk)
  begin
    if (mon_resetn == 0 || rst_rising) begin //Reset
      read_going_on <= 0;
      write_going_on <= 0;
    end
    else begin
      //data write start/stop
      if (Last_Write_Flag == 1'b1) begin  //End of transfer when last data is sent
          write_going_on <= 1'b0;
      end
      else if ((First_Write_Flag == 1'b1))  begin //Start of transfer if first data is sent
          write_going_on <= 1'b1;
      end
      //data read start/stop
      if (Last_Read_Flag == 1'b1) begin  //End of transfer when last data is read
          read_going_on <= 1'b0;
      end
      else if ((First_Read_Flag == 1'b1))  begin //Start of transfer if first data is read
          read_going_on <= 1'b1;
      end
    end
  end

  /*
   * In SDSoC, trace clock is the highest clock and trace timestamper
   * is in trace clock domain.
   * In SDAccel, trace clock is the lowest clock and trace timestamper
   * is in monitor clock domain.
   * We need to set timestamper module to run at appropriate clock 
   */

  assign prim_clk = (MODE_SDACCEL > 0) ? mon_clk : trace_clk;
  assign prim_rst = (MODE_SDACCEL > 0) ? mon_resetn : ~trace_rst ;

  Event_Pulse_i ep0 (
    .in(ap_done),
    .clk(prim_clk),
    .rising_edge(trace_done),
    .falling_edge(),
    .both_edges()
  );

  Event_Pulse_i ep3 (
    .in(First_Write_Flag),
    .clk(prim_clk),
    .rising_edge(wdata_start),
    .falling_edge(),
    .both_edges()
  );

  Event_Pulse_i ep4 (
    .in(Last_Write_Flag),
    .clk(prim_clk),
    .rising_edge(wdata_stop),
    .falling_edge(),
    .both_edges()
  );

  Event_Pulse_i ep5 (
    .in(First_Read_Flag),
    .clk(prim_clk),
    .rising_edge(rdata_start),
    .falling_edge(),
    .both_edges()
  );

  Event_Pulse_i ep6 (
    .in(Last_Read_Flag),
    .clk(prim_clk),
    .rising_edge(rdata_stop),
    .falling_edge(),
    .both_edges()
  );

  Event_Pulse_i ep7 (
    .in(Single_Burst_Write_flag),
    .clk(prim_clk),
    .rising_edge(wdata_single),
    .falling_edge(),
    .both_edges()
  );

  Event_Pulse_i ep8 (
    .in(Single_Burst_Read_flag),
    .clk(prim_clk),
    .rising_edge(rdata_single),
    .falling_edge(),
    .both_edges()
  );

  // rst to reset fsm
  Event_Pulse_i ep_rst (
    .in(trace_rst),
    .clk(mon_clk),
    .rising_edge(rst_rising),
    .falling_edge(),
    .both_edges()
  );

  xpm_cdc_single cdc_trace_en_wr (
    .src_clk(mon_clk),
    .src_in(trace_control[1]),
    .dest_clk(prim_clk),
    .dest_out(trace_en_wr)
  );

  xpm_cdc_single cdc_trace_en_rd (
    .src_clk(mon_clk),
    .src_in(trace_control[2]),
    .dest_clk(prim_clk),
    .dest_out(trace_en_rd)
  );

  xpm_cdc_single cdc_trace_cu (
    .src_clk(mon_clk),
    .src_in(trace_control[0]),
    .dest_clk(prim_clk),
    .dest_out(trace_cu)
  );

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
