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

module Monitor_AXI_Master #(
  parameter TRACE_READ_ID       = 0,
  parameter TRACE_WRITE_ID      = 1,
  parameter MODE_SDACCEL        = 1,
  parameter CAPTURE_BURSTS      = 1,

  parameter ENABLE_DEBUG        = 1,
  parameter NUM_REG_STAGES      = 1,
  parameter ENABLE_COUNTERS     = 1,
  parameter ENABLE_TRACE        = 1,
  parameter WRITE_START_SELECT  = "Address",   // choices: Address, First Data, First Tranx, None
  parameter WRITE_STOP_SELECT   = "Last Data", // choices: Last Data, Response, Last Tranx, None
  parameter READ_START_SELECT   = "Address",   // choices: Address, First Data, First Tranx, None
  parameter READ_STOP_SELECT    = "Last Data", // choices: Last Data, Last Tranx, None

  parameter DATA_WIDTH          = 32,
  parameter ADDR_WIDTH          = 32,
  parameter COUNT_WIDTH         = 32,
  parameter USER_WIDTH          = 1,
  parameter ID_WIDTH            = 1,
  
  parameter ENABLE_ADDR_FILTER  = 0,
  parameter ADDR_MIN            = 8'h00000000,
  parameter ADDR_MAX            = 8'hFFFFFFFF
  ) (
  //AXI Full interface
  input mon_clk,
  input mon_resetn,
  input m_axi_AWVALID,
  input m_axi_AWREADY,
  input [ADDR_WIDTH-1 : 0] m_axi_AWADDR,
  input [ID_WIDTH-1 : 0] m_axi_AWID,
  input [7:0] m_axi_AWLEN,
  input [2:0] m_axi_AWSIZE,
  input [1:0] m_axi_AWBURST,
  input [1:0] m_axi_AWLOCK,
  input [3:0] m_axi_AWCACHE,
  input [2:0] m_axi_AWPROT,
  input [3:0] m_axi_AWQOS,
  input [3:0] m_axi_AWREGION,
  input [USER_WIDTH-1 : 0] m_axi_AWUSER,
  input m_axi_WVALID,
  input m_axi_WREADY,
  input [DATA_WIDTH-1 : 0] m_axi_WDATA,
  input [DATA_WIDTH/8-1 : 0] m_axi_WSTRB,
  input m_axi_WLAST,
  input [ID_WIDTH-1 : 0] m_axi_WID,
  input [USER_WIDTH-1 : 0] m_axi_WUSER,
  input m_axi_ARVALID,
  input m_axi_ARREADY,
  input [ADDR_WIDTH-1 : 0] m_axi_ARADDR,
  input [ID_WIDTH-1 : 0] m_axi_ARID,
  input [7:0] m_axi_ARLEN,
  input [2:0] m_axi_ARSIZE,
  input [1:0] m_axi_ARBURST,
  input [1:0] m_axi_ARLOCK,
  input [3:0] m_axi_ARCACHE,
  input [2:0] m_axi_ARPROT,
  input [3:0] m_axi_ARQOS,
  input [3:0] m_axi_ARREGION,
  input [USER_WIDTH-1 : 0] m_axi_ARUSER,
  input m_axi_RVALID,
  input m_axi_RREADY,
  input [DATA_WIDTH-1 : 0] m_axi_RDATA,
  input m_axi_RLAST,
  input [ID_WIDTH-1 : 0] m_axi_RID,
  input [USER_WIDTH-1 : 0] m_axi_RUSER,
  input [1:0] m_axi_RRESP,
  input m_axi_BVALID,
  input m_axi_BREADY,
  input [1:0] m_axi_BRESP,
  input [ID_WIDTH-1 : 0] m_axi_BID,
  input [USER_WIDTH-1 : 0] m_axi_BUSER,
  //Input AP_CTRL bus
  input ap_continue,
  input ap_ready,
  input ap_start,
  input ap_idle,
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
  //Write Trace Bus
  input wtrace_counter_overflow,
  input [44:0] wtrace_counter,
  output wtrace_event,
  output [63:0] wtrace_data,
  output wtrace_valid,
  input wtrace_read,
  // Ports of Axi Slave Bus Interface S_AXI
  input [7 : 0]   s_axi_awaddr,
  input [2 : 0]   s_axi_awprot,
  input           s_axi_awvalid,
  output          s_axi_awready,
  input [31 : 0]  s_axi_wdata,
  input [3 : 0]   s_axi_wstrb,
  input           s_axi_wvalid,
  output          s_axi_wready,
  output [1 : 0]  s_axi_bresp,
  output          s_axi_bvalid,
  input           s_axi_bready,
  input [7 : 0]   s_axi_araddr,
  input [2 : 0]   s_axi_arprot,
  input           s_axi_arvalid,
  output          s_axi_arready,
  output [31 : 0] s_axi_rdata,
  output [1 : 0]  s_axi_rresp,
  output          s_axi_rvalid,
  input           s_axi_rready,
  // Axi Slave Monitor bus
  input[7:0]      s_axi_awaddr_mon,
  input[2:0]      s_axi_awprot_mon,
  input           s_axi_awvalid_mon,
  input           s_axi_awready_mon,
  input[31:0]     s_axi_wdata_mon,
  input[3:0]      s_axi_wstrb_mon,
  input           s_axi_wvalid_mon,
  input           s_axi_wready_mon,
  input[1:0]      s_axi_bresp_mon,
  input           s_axi_bvalid_mon,
  input           s_axi_bready_mon,
  input[7:0]      s_axi_araddr_mon,
  input[2:0]      s_axi_arprot_mon,
  input           s_axi_arvalid_mon,
  input           s_axi_arready_mon,
  input[31:0]     s_axi_rdata_mon,
  input[1:0]      s_axi_rresp_mon,
  input           s_axi_rvalid_mon,
  input           s_axi_rready_mon
  );

  /*----------------------------------------------------------------------
  -----------------------Parameter declarations---------------------------
  ------------------------------------------------------------------------*/
  localparam MON_DATA_WIDTH = (2*ADDR_WIDTH) + (2*DATA_WIDTH)
                              + (2*8) + (DATA_WIDTH/8) + 12;

  /*----------------------------------------------------------------------
  -----------------------wire/connection declarations---------------------
  ------------------------------------------------------------------------*/

  // Signals to/from AXI interface
  wire [31:0]     slv_reg_in;
  wire            slv_reg_in_vld;
  wire [31:0]     slv_reg_out;
  wire            slv_reg_out_vld;
  wire [31:0]     slv_reg_addr;
  wire            slv_reg_addr_vld;

  // Control signals
  wire            Metrics_Cnt_En;
  wire            Metrics_Cnt_Reset;
  wire            Event_Log_En;
  wire            Streaming_FIFO_Reset;
  wire            Reset_On_Sample_Read;
  wire            Lat_Sample_Reg;
  wire [1:0]      Write_Start_Select;
  wire [1:0]      Write_Stop_Select;
  wire [1:0]      Read_Start_Select;
  wire [1:0]      Read_Stop_Select;
  wire [1:0]      Write_Start_Select_sync;
  wire [1:0]      Write_Stop_Select_sync;
  wire [1:0]      Read_Start_Select_sync;
  wire [1:0]      Read_Stop_Select_sync;
  wire [4:0]      Lat_Addr_6downto2;
  wire [4:0]      Control_Bits_sync;
  wire [5:0]      Trace_Control;
  wire [7:0]      Event_Select_sync;
  wire [31:0]     Sample_Metric_Ram_Data;

  // Counter signals
  wire [COUNT_WIDTH:0]     Write_Byte_Cnt;
  wire [COUNT_WIDTH:0]     Read_Byte_Cnt;
  wire [COUNT_WIDTH:0]     Read_Latency;
  wire [COUNT_WIDTH:0]     Min_Read_Latency;
  wire [COUNT_WIDTH:0]     Max_Read_Latency;
  wire [COUNT_WIDTH:0]     Write_Latency;
  wire [COUNT_WIDTH:0]     Min_Write_Latency;
  wire [COUNT_WIDTH:0]     Max_Write_Latency;
  wire [COUNT_WIDTH:0]     Last_Write_Address;
  wire [COUNT_WIDTH:0]     Last_Write_Data;
  wire [COUNT_WIDTH:0]     Last_Read_Address;
  wire [COUNT_WIDTH:0]     Last_Read_Data;
  wire [7:0]      Write_Outstanding;
  wire [7:0]      Read_Outstanding;
  wire            Wtrans_Cnt_En;
  wire            Rtrans_Cnt_En;
  wire            Write_Byte_Cnt_En;
  wire            Read_Byte_Cnt_En;
  wire            Write_Beat_Cnt_En;
  wire            Read_Beat_Cnt_En;
  wire            Write_Latency_En;
  wire            Read_Latency_En;

  wire [MON_DATA_WIDTH-1:0] Mon_Data_In;
  wire [MON_DATA_WIDTH-1:0] Mon_Data_Out;
  wire                      Mon_Read_Valid;
  wire                      Mon_Write_Valid;

  /*----------------------------------------------------------------------
  ------------------- Submodule instantiations----------------------------
  ------------------------------------------------------------------------*/

  // ***********************************
  // Isolation Registers
  // ***********************************
  assign Mon_Data_In = {m_axi_AWADDR, m_axi_WDATA,
                        m_axi_ARADDR, m_axi_RDATA,
                        m_axi_WSTRB, m_axi_AWLEN, m_axi_ARLEN,
                        m_axi_AWVALID, m_axi_AWREADY,
                        m_axi_WLAST, m_axi_WVALID, m_axi_WREADY,
                        m_axi_BVALID, m_axi_BREADY,
                        m_axi_ARVALID, m_axi_ARREADY,
                        m_axi_RLAST, m_axi_RVALID, m_axi_RREADY};

  mon_register
  #(
     .NUM_REG_STAGES(NUM_REG_STAGES),
     .MON_DATA_WIDTH(MON_DATA_WIDTH),
     .LEN_WIDTH(8),
     .DATA_WIDTH(DATA_WIDTH),
     .ADDR_WIDTH(ADDR_WIDTH),
     .ENABLE_ADDR_FILTER(ENABLE_ADDR_FILTER),
     .ADDR_MIN(ADDR_MIN),
     .ADDR_MAX(ADDR_MAX)
   ) mon_register_i
   (
     .mon_clk(mon_clk),
     .mon_resetn(mon_resetn),
     .data_in(Mon_Data_In),
     .data_out(Mon_Data_Out),
     .read_valid(Mon_Read_Valid),
     .write_valid(Mon_Write_Valid)
   );

  // ***********************************
  // Trace
  // ***********************************
  generate

  wire alite_ap_done;
  wire mon_done = MODE_SDACCEL ? alite_ap_done : ap_done;

  if (ENABLE_TRACE > 0) begin
    // Use Address Filtering signals to control trace
    // Trace_Control[1] is user controllable trace enable
    wire t_rd_valid = Trace_Control[1] & Mon_Read_Valid;
    wire t_wr_valid = Trace_Control[1] & Mon_Write_Valid;
    wire [5:0] t_ctrl; 
    assign  t_ctrl = {Trace_Control[5:3], t_rd_valid, t_wr_valid, Trace_Control[0]}; 

    axi_master_monitor #(
      .TRACE_READ_ID(TRACE_READ_ID),
      .TRACE_WRITE_ID(TRACE_WRITE_ID),
      .MON_DATA_WIDTH(MON_DATA_WIDTH),
      .MODE_SDACCEL(MODE_SDACCEL)
    ) trace_i (
      .mon_clk(mon_clk),
      .mon_resetn(mon_resetn),
      .Data_In(Mon_Data_Out),
      .ap_ready(ap_ready),
      .ap_done(mon_done),
      .trace_clk(trace_clk),
      .trace_rst(trace_rst),
      .rtrace_counter_overflow(rtrace_counter_overflow),
      .rtrace_counter(rtrace_counter),
      .rtrace_event(rtrace_event),
      .rtrace_data(rtrace_data),
      .rtrace_valid(rtrace_valid),
      .rtrace_read(rtrace_read),
      .wtrace_counter_overflow(wtrace_counter_overflow),
      .wtrace_counter(wtrace_counter),
      .wtrace_event(wtrace_event),
      .wtrace_data(wtrace_data),
      .wtrace_valid(wtrace_valid),
      .wtrace_read(wtrace_read),
      .event_log_en(Event_Log_En),
      .trace_control(t_ctrl)
    );
  end

  if (MODE_SDACCEL > 0) begin
  monitor_axilite mon_axilite_i (
      .clk            (mon_clk),
      .rst            (mon_resetn),
      .araddr         (s_axi_araddr_mon),
      .arvalid        (s_axi_arvalid_mon),
      .arready        (s_axi_arready_mon),
      .rdata          (s_axi_rdata_mon),
      .rvalid         (s_axi_rvalid_mon),
      .rready         (s_axi_rready_mon),
      .mon_valid      (alite_ap_done)
  );
  end

  endgenerate

  generate
    // *********************************
    // Control (AXI Lite, registers)
    // *********************************
    AXI_LITE_IF axi_lite_if_i (
      .slv_reg_in(slv_reg_in),
      .slv_reg_in_vld(slv_reg_in_vld),
      .slv_reg_out(slv_reg_out),
      .slv_reg_out_vld(slv_reg_out_vld),
      .slv_reg_addr(slv_reg_addr),
      .slv_reg_addr_vld(slv_reg_addr_vld),
      .S_AXI_ACLK(mon_clk),
      .S_AXI_ARESETN(mon_resetn),
      .S_AXI_AWADDR(s_axi_awaddr),
      .S_AXI_AWPROT(s_axi_awprot),
      .S_AXI_AWVALID(s_axi_awvalid),
      .S_AXI_AWREADY(s_axi_awready),
      .S_AXI_WDATA(s_axi_wdata),
      .S_AXI_WSTRB(s_axi_wstrb),
      .S_AXI_WVALID(s_axi_wvalid),
      .S_AXI_WREADY(s_axi_wready),
      .S_AXI_BRESP(s_axi_bresp),
      .S_AXI_BVALID(s_axi_bvalid),
      .S_AXI_BREADY(s_axi_bready),
      .S_AXI_ARADDR(s_axi_araddr),
      .S_AXI_ARPROT(s_axi_arprot),
      .S_AXI_ARVALID(s_axi_arvalid),
      .S_AXI_ARREADY(s_axi_arready),
      .S_AXI_RDATA(s_axi_rdata),
      .S_AXI_RRESP(s_axi_rresp),
      .S_AXI_RVALID(s_axi_rvalid),
      .S_AXI_RREADY(s_axi_rready)
    );

    register_module #(
      .WRITE_START_SELECT(WRITE_START_SELECT),
      .WRITE_STOP_SELECT(WRITE_STOP_SELECT),
      .READ_START_SELECT(WRITE_START_SELECT),
      .READ_STOP_SELECT(WRITE_STOP_SELECT),
      .CAPTURE_BURSTS(CAPTURE_BURSTS)
    ) registers_i (
      .mon_clk(mon_clk),
      .mon_resetn(mon_resetn),
      .slv_reg_in(slv_reg_in),
      .slv_reg_in_vld(slv_reg_in_vld),
      .slv_reg_out(slv_reg_out),
      .slv_reg_out_vld(slv_reg_out_vld),
      .slv_reg_addr(slv_reg_addr),
      .slv_reg_addr_vld(slv_reg_addr_vld),
      .sample_metric_ram_data(Sample_Metric_Ram_Data),
      .metrics_cnt_en(Metrics_Cnt_En),
      .metrics_cnt_reset(Metrics_Cnt_Reset),
      .event_log_en(Event_Log_En),
      .streaming_fifo_reset(Streaming_FIFO_Reset),
      .reset_on_sample_read(Reset_On_Sample_Read),
      .write_start_select(Write_Start_Select),
      .write_stop_select(Write_Stop_Select),
      .read_start_select(Read_Start_Select),
      .read_stop_select(Read_Stop_Select),
      .trace_control(Trace_Control),
      .lat_sample_reg(Lat_Sample_Reg),
      .lat_addr_6downto2(Lat_Addr_6downto2)
   );

   // **********************************
   // Counters
   // **********************************
   if (ENABLE_COUNTERS > 0) begin
   metric_calc
    #(
      .C_MON_FIFO_DATA_WIDTH     (MON_DATA_WIDTH),
      .C_MON_AXI_ADDR_WIDTH      (ADDR_WIDTH),
      .C_MON_AXI_DATA_WIDTH      (DATA_WIDTH),
      .C_MON_AXI_AWLEN           (8),
      .C_METRIC_COUNT_WIDTH      (COUNT_WIDTH),
      .C_OUTSTANDING_COUNT_WIDTH (8),
      .C_ENABLE_DEBUG            (ENABLE_DEBUG)
     ) metric_calc_i
     (
      .clk                       (mon_clk),
      .rst_n                     (mon_resetn),
      .Data_In                   (Mon_Data_Out),
      .Read_Data_Valid           (Mon_Read_Valid),
      .Write_Data_Valid          (Mon_Write_Valid),
      .Metrics_Cnt_En            (Metrics_Cnt_En),
      .Metrics_Cnt_Reset         (Metrics_Cnt_Reset),
      // Counter values
      .Write_Byte_Cnt            (Write_Byte_Cnt),
      .Read_Byte_Cnt             (Read_Byte_Cnt),
      .Read_Latency              (Read_Latency),
      .Write_Latency             (Write_Latency),
      .Max_Write_Latency         (Max_Write_Latency),
      .Min_Write_Latency         (Min_Write_Latency),
      .Max_Read_Latency          (Max_Read_Latency),
      .Min_Read_Latency          (Min_Read_Latency),
      .Write_Outstanding         (Write_Outstanding),
      .Read_Outstanding          (Read_Outstanding),
      .Last_Write_Address        (Last_Write_Address),
      .Last_Write_Data           (Last_Write_Data),
      .Last_Read_Address         (Last_Read_Address),
      .Last_Read_Data            (Last_Read_Data),
      // Counter enables
      .Wtrans_Cnt_En             (Wtrans_Cnt_En),
      .Rtrans_Cnt_En             (Rtrans_Cnt_En),
      .Write_Byte_Cnt_En         (Write_Byte_Cnt_En),
      .Read_Byte_Cnt_En          (Read_Byte_Cnt_En),
      .Write_Beat_Cnt_En         (Write_Beat_Cnt_En),
      .Read_Beat_Cnt_En          (Read_Beat_Cnt_En),
      .Write_Latency_En          (Write_Latency_En),
      .Read_Latency_En           (Read_Latency_En)
    );

    wire Metrics_Cnt_Reset_Final = Metrics_Cnt_Reset | (Lat_Sample_Reg & Reset_On_Sample_Read);
    wire Sample_En = Lat_Sample_Reg;
    wire Sample_rst_n = ~Metrics_Cnt_Reset;

    //-- metric counters instantiation
    metric_counters
    #(
      .C_METRIC_COUNT_WIDTH        (COUNT_WIDTH),
      .C_OUTSTANDING_COUNT_WIDTH   (8),
      .C_ENABLE_DEBUG              (ENABLE_DEBUG)
    ) metric_counters_i
    (
      .clk                         (mon_clk),
      .rst_n                       (mon_resetn),
      .Sample_rst_n                (Sample_rst_n),
      .Sample_En                   (Sample_En),
      .Lat_Addr_6downto2           (Lat_Addr_6downto2),
      .Metrics_Cnt_En              (Metrics_Cnt_En),
      .Metrics_Cnt_Reset           (Metrics_Cnt_Reset_Final),
      // Metric RAM selected data
      .Sample_Metric_Ram_Data      (Sample_Metric_Ram_Data),
      // Counter values
      .Write_Byte_Cnt              (Write_Byte_Cnt),
      .Read_Byte_Cnt               (Read_Byte_Cnt),
      .Write_Latency               (Write_Latency),
      .Min_Write_Latency           (Min_Write_Latency),
      .Max_Write_Latency           (Max_Write_Latency),
      .Read_Latency                (Read_Latency),
      .Min_Read_Latency            (Min_Read_Latency),
      .Max_Read_Latency            (Max_Read_Latency),
      .Write_Outstanding           (Write_Outstanding),
      .Read_Outstanding            (Read_Outstanding),
      .Last_Write_Address          (Last_Write_Address),
      .Last_Write_Data             (Last_Write_Data),
      .Last_Read_Address           (Last_Read_Address),
      .Last_Read_Data              (Last_Read_Data),
      // Counter enables
      .Wtrans_Cnt_En               (Wtrans_Cnt_En),
      .Rtrans_Cnt_En               (Rtrans_Cnt_En),
      .Write_Byte_Cnt_En           (Write_Byte_Cnt_En),
      .Read_Byte_Cnt_En            (Read_Byte_Cnt_En),
      .Write_Beat_Cnt_En           (Write_Beat_Cnt_En),
      .Read_Beat_Cnt_En            (Read_Beat_Cnt_En),
      .Write_Latency_En            (Write_Latency_En),
      .Read_Latency_En             (Read_Latency_En)
    );

  end
  endgenerate


endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
