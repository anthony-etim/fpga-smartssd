// (c) Copyright 2009-2013, 2019 Xilinx, Inc. All rights reserved.
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
// Filename   :     metric_calc.v 
// Version    :     v1.0
// Description:     Metric calculator module generates different metric count
//                  enables which will be used in metric counter 
// Verilog-Standard:  Verilog 2001 
//-----------------------------------------------------------------------------
`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)

module metric_calc
  #(
    parameter C_ENABLE_DEBUG                   = 0,
    parameter C_ENABLE_MIN_MAX_LATENCY         = 0,
    parameter C_MON_FIFO_DATA_WIDTH            = 38,
    parameter C_MON_AXI_ADDR_WIDTH             = 32,
    parameter C_MON_AXI_DATA_WIDTH             = 32,
    parameter C_MON_AXI_AWLEN                  = 8,
    parameter C_METRIC_COUNT_WIDTH             = 32,
    parameter C_OUTSTANDING_COUNT_WIDTH        = 5
   )
   (
    // AXI Signals
    input                                      clk,        
    input                                      rst_n,  
    input [C_MON_FIFO_DATA_WIDTH-1:0]          Data_In,
    input                                      Read_Data_Valid,
    input                                      Write_Data_Valid,
    // Register inputs                         
    input                                      Metrics_Cnt_En,
    input                                      Metrics_Cnt_Reset,
    // Metric outputs
    output reg [C_METRIC_COUNT_WIDTH-1:0]      Write_Byte_Cnt,
    output reg [C_METRIC_COUNT_WIDTH-1:0]      Read_Byte_Cnt,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Read_Latency,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Write_Latency,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Max_Write_Latency,                   
    output     [C_METRIC_COUNT_WIDTH-1:0]      Min_Write_Latency,                   
    output     [C_METRIC_COUNT_WIDTH-1:0]      Max_Read_Latency,                   
    output     [C_METRIC_COUNT_WIDTH-1:0]      Min_Read_Latency,
    output     [C_OUTSTANDING_COUNT_WIDTH-1:0] Write_Outstanding,
    output     [C_OUTSTANDING_COUNT_WIDTH-1:0] Read_Outstanding,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Last_Write_Address,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Last_Write_Data,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Last_Read_Address,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Last_Read_Data,
    
    output reg                                 Wtrans_Cnt_En,
    output reg                                 Rtrans_Cnt_En,
    output reg                                 Write_Byte_Cnt_En,
    output reg                                 Read_Byte_Cnt_En,
    output reg                                 Write_Beat_Cnt_En,
    output reg                                 Read_Beat_Cnt_En,
    output                                     Write_Latency_En,
    output                                     Read_Latency_En
  );

  //-------------------------------------------------------------------
  // Parameter Declaration
  //-------------------------------------------------------------------
  localparam RST_ACTIVE = 0; 
  localparam NUM_PAD_ADDR = C_METRIC_COUNT_WIDTH - C_MON_AXI_ADDR_WIDTH;
  localparam NUM_PAD_DATA = C_METRIC_COUNT_WIDTH - C_MON_AXI_DATA_WIDTH;
  wire [NUM_PAD_ADDR - 1:0] PAD_ADDR = 0;
  wire [NUM_PAD_DATA - 1:0] PAD_DATA = 0;
  
  //-------------------------------------------------------------------
  // Signal Declaration
  //-------------------------------------------------------------------
  wire [C_METRIC_COUNT_WIDTH-1:0] Write_Latency_Cnt_Out;
  wire [C_METRIC_COUNT_WIDTH-1:0] Read_Latency_Cnt_Out;
  reg [C_METRIC_COUNT_WIDTH:0] Read_Latency_Cnt_Out_D1;
  reg [C_METRIC_COUNT_WIDTH:0] Read_Latency_Cnt_Out_D2;
  // read and write latency counter overflow signals
  wire Write_Latency_Cnt_Ovf;
  wire Read_Latency_Cnt_Ovf;
  
  // read and write latency counter enable signals 
  reg  Read_Latency_En_Int;
  reg  Write_Latency_En_Int;
  
  // Read Latency FIFO control signals
  reg  Rd_Latency_Fifo_Wr_En;
  reg  Rd_Latency_Fifo_Rd_En;
  reg  Rd_Latency_Fifo_Rd_En_D1;
  reg  Rd_Latency_Fifo_Rd_En_D2;
  
  // Write and read latency signals
  reg [C_METRIC_COUNT_WIDTH-1:0] Write_Latency_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Read_Latency_Int;
  
  reg [C_OUTSTANDING_COUNT_WIDTH-1:0] Write_Outstanding_Int;
  reg [C_OUTSTANDING_COUNT_WIDTH-1:0] Read_Outstanding_Int;
  
  // read and write latency counter data signals
  reg [C_METRIC_COUNT_WIDTH:0] Rd_Latency_Fifo_Wr_Data;
  reg [C_METRIC_COUNT_WIDTH-1:0] Max_Write_Latency_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Min_Write_Latency_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Max_Read_Latency_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Min_Read_Latency_Int;
  reg Read_Latency_One;            
  reg Read_Latency_One_D1;
  reg [4:0] Rd_Latency_Occupancy;
    
  // Debug registers
  reg [C_METRIC_COUNT_WIDTH-1:0] Last_Write_Address_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Last_Write_Data_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Last_Read_Address_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Last_Read_Data_Int;
    
  wire [C_METRIC_COUNT_WIDTH:0] Rd_Latency_Fifo_Rd_Data;
  reg  [C_METRIC_COUNT_WIDTH:0] Rd_Latency_Fifo_Rd_Data_D1;
  wire Rd_Latency_Fifo_Rd_En_out;
  wire Rd_Latency_Fifo_Full;
  wire Rd_Latency_Fifo_Empty;
  wire Wr_Latcnt_rst_n;
  wire Rd_Latcnt_rst_n;
  wire [C_METRIC_COUNT_WIDTH-1:0] ONE = 1;
  wire [C_METRIC_COUNT_WIDTH-1:0] TWO = {{(C_METRIC_COUNT_WIDTH-2){1'b0}},2'b10};
  wire [C_METRIC_COUNT_WIDTH-1:0] ALL_ONES = {C_METRIC_COUNT_WIDTH{1'b1}};
  wire Wr_cnt_ld;
  wire Rd_cnt_ld;
  wire Metrics_Cnt_En_Out;
  wire F4_Empty;
  wire F3_Empty;
  
  wire rst_int_n = rst_n &  ~(Metrics_Cnt_Reset);
  wire Metrics_Cnt_En_Int = Metrics_Cnt_En;
  assign Metrics_Cnt_En_Out = Metrics_Cnt_En_Int;
           
  wire [C_METRIC_COUNT_WIDTH-1:0] Latency_Load_value = ONE;
    
  wire [7:0] zeros = 0;
    
  //-------------------------------------------------------------------
  // Functions
  //-------------------------------------------------------------------

  // Function to find number of '1' in 4-bit strobe
  function [2:0] count_4;
    input [3:0] strobe;            //Strobe
    begin
    case (strobe) 
        4'b0001, 4'b0010, 4'b0100, 4'b1000:
          count_4 = 3'b001;
        4'b0011, 4'b0110, 4'b1100, 4'b1001, 4'b0101, 4'b1010 :
          count_4 = 3'b010;
        4'b0111, 4'b1011, 4'b1101, 4'b1110 :
          count_4 = 3'b011;
        4'b1111 :
          count_4 = 3'b100;
        default :
          count_4 = 3'b000;
    endcase
    end
  endfunction

  // Function to find number of '1' in 8-bit strobe
  function [3:0] count_8;
    input [7:0] strobe;         //Strobe
    //input valid;                //Data valid
    integer j;
    reg [2:0] count_1;
    reg [2:0] count_2;
    begin
      count_1 = count_4(strobe[3:0]);
      count_2 = count_4(strobe[7:4]);
      count_8 = count_1+count_2;
    end
  endfunction

  // Function to find number of '1' in 16-bit strobe
  function [4:0] count_16;
    input [15:0] strobe;      //Strobe
    //input valid;              //Data valid
    integer j;
    reg [3:0] count_1;
    reg [3:0] count_2;
    begin
      count_1 = count_8(strobe[7:0]);
      count_2 = count_8(strobe[15:8]);
      count_16 = count_1+count_2;
    end
  endfunction

  // Function to find number of '1' in 32-bit strobe
  function [5:0] count_32;
    input [31:0] strobe;    //Strobe
    //input valid;            //Data valid
    integer j;
    reg [4:0] count_1;
    reg [4:0] count_2;
    begin
      count_1 = count_16(strobe[15:0]);
      count_2 = count_16(strobe[31:16]);
      count_32 = count_1+count_2;
    end
  endfunction

  // Function to find number of '1' in 64-bit strobe
  function [6:0] count_64;
    input [63:0] strobe;   //Strobe
    //input valid;           //Data valid
    integer j;
    reg [5:0] count_1;
    reg [5:0] count_2;
    begin
      count_1  = count_32(strobe[31:0]);
      count_2  = count_32(strobe[63:32]);
      count_64 = count_1+count_2;
    end
  endfunction

  // Function to find number of '1' in 128-bit strobe
  function [7:0] count_128;
    input [127:0] strobe;    //Strobe
    //input valid;             //Data Valid
    reg [6:0] count_1;
    reg [6:0] count_2;
    begin
      count_1  = count_64(strobe[63:0]);
      count_2  = count_64(strobe[127:64]);
      count_128 = count_1+count_2;
    end
  endfunction
 
  //-------------------------------------------------------------------
  // Begin architecture
  //-------------------------------------------------------------------              
                  
  //-- Decoding individual signals from output of fifo
  wire RREADY        = Data_In[0];
  wire RVALID        = Data_In[1];
  wire RLAST         = Data_In[2];
  wire ARREADY       = Data_In[3];
  wire ARVALID       = Data_In[4];

  wire BREADY        = Data_In[5];
  wire BVALID        = Data_In[6];
  
  wire WREADY        = Data_In[7];
  wire WVALID        = Data_In[8];
  wire WLAST         = Data_In[9];
  wire AWREADY       = Data_In[10];
  wire AWVALID       = Data_In[11];
  
  wire [C_MON_AXI_AWLEN-1:0] ARLEN        = Data_In[(C_MON_AXI_AWLEN+11):12];
  wire [C_MON_AXI_AWLEN-1:0] AWLEN        = Data_In[(2*C_MON_AXI_AWLEN+11):(C_MON_AXI_AWLEN+12)];
  wire [C_MON_AXI_DATA_WIDTH/8-1:0] WSTRB = Data_In[((2*C_MON_AXI_AWLEN)+(C_MON_AXI_DATA_WIDTH/8)+11):(2*C_MON_AXI_AWLEN+12)];
  
  localparam RDATA_START = (2*C_MON_AXI_AWLEN) + (C_MON_AXI_DATA_WIDTH/8) + 12;
  localparam WDATA_START = C_MON_AXI_DATA_WIDTH + C_MON_AXI_ADDR_WIDTH + RDATA_START;
  wire [C_MON_AXI_DATA_WIDTH-1:0] RDATA   = Data_In[(RDATA_START+C_MON_AXI_DATA_WIDTH-1):RDATA_START];
  wire [C_MON_AXI_ADDR_WIDTH-1:0] ARADDR  = Data_In[(RDATA_START+C_MON_AXI_DATA_WIDTH+C_MON_AXI_ADDR_WIDTH-1):(RDATA_START+C_MON_AXI_DATA_WIDTH)];
  wire [C_MON_AXI_DATA_WIDTH-1:0] WDATA   = Data_In[(WDATA_START+C_MON_AXI_DATA_WIDTH-1):WDATA_START];
  wire [C_MON_AXI_ADDR_WIDTH-1:0] AWADDR  = Data_In[(WDATA_START+C_MON_AXI_DATA_WIDTH+C_MON_AXI_ADDR_WIDTH-1):(WDATA_START+C_MON_AXI_DATA_WIDTH)];

  //-- Generate events and data from signals 
  //-- NOTE: read tranx events: address acceptance and last data
  wire Read_Start         = ARREADY && ARVALID && Read_Data_Valid;
  wire Read_Stop          = RLAST && RVALID && RREADY && Read_Data_Valid;
  wire Read_Beat          = RVALID & RREADY & Read_Data_Valid;
  wire [7:0] Read_Length  = ARLEN;
  wire [7:0] Read_Bytes   = C_MON_AXI_DATA_WIDTH/8;
  //-- NOTE: write tranx events: address acceptance and response
  wire Write_Start        = AWREADY && AWVALID && Write_Data_Valid;
  //wire Write_Stop         = WLAST && WVALID && WREADY && Write_Data_Valid;
  wire Write_Stop         = BVALID && BREADY && Write_Data_Valid;
  wire Write_Beat         = WVALID & WREADY & Write_Data_Valid;
  wire [7:0] Write_Length = AWLEN;
  wire [7:0] Write_Bytes;
  
  // Write data byte counts for different data widths of the bus 
  generate if (C_MON_AXI_DATA_WIDTH == 32) begin : GEN_32BIT_BYTECNT
    assign Write_Bytes = {zeros[7:3],count_4(WSTRB)}; 
  end
  endgenerate

  generate if (C_MON_AXI_DATA_WIDTH == 64) begin : GEN_64BIT_BYTECNT
    assign Write_Bytes = {zeros[7:4],count_8(WSTRB)}; 
  end
  endgenerate

  generate if (C_MON_AXI_DATA_WIDTH == 128) begin : GEN_128BIT_BYTECNT
    assign Write_Bytes = {zeros[7:5],count_16(WSTRB)}; 
  end
  endgenerate

  generate if (C_MON_AXI_DATA_WIDTH == 256) begin : GEN_256BIT_BYTECNT
    assign Write_Bytes = {zeros[7:6],count_32(WSTRB)}; 
  end
  endgenerate

  generate if (C_MON_AXI_DATA_WIDTH == 512) begin : GEN_512BIT_BYTECNT
    assign Write_Bytes = {zeros[7:7],count_64(WSTRB)}; 
  end
  endgenerate

  generate if (C_MON_AXI_DATA_WIDTH == 1024) begin : GEN_1024BIT_BYTECNT
    assign Write_Bytes = count_128(WSTRB); 
  end
  endgenerate
   
  //-- ********************
  //-- Write & Read Latency
  //-- ********************
  generate if (C_ENABLE_MIN_MAX_LATENCY == 1) begin : GEN_MIN_MAX
    wire F3_Wr_En, F3_Rd_En;
    reg F34_Rd_Vld;
    wire F34_Rd_En;
    wire F4_Wr_En, F4_Rd_En;
    wire [C_METRIC_COUNT_WIDTH:0] F3_Wr_Data;
    wire [C_METRIC_COUNT_WIDTH:0] F3_Rd_Data;
    wire [C_METRIC_COUNT_WIDTH:0] F4_Wr_Data;
    wire [C_METRIC_COUNT_WIDTH:0] F4_Rd_Data;
    reg wr_latency_start_d1;
    reg wr_latency_end_d1;
    
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
        wr_latency_start_d1 <= 1'b0;
        wr_latency_end_d1 <= 1'b0;
      end else begin
        wr_latency_start_d1 <= Write_Start;
        wr_latency_end_d1   <= Write_Stop;
      end
    end
    
    assign F3_Wr_En   = wr_latency_start_d1; 
    assign F3_Wr_Data = {Write_Latency_Cnt_Ovf,Write_Latency_Cnt_Out}; 
  
    assign F4_Wr_En   = wr_latency_end_d1; 
    assign F4_Wr_Data = {Write_Latency_Cnt_Ovf,Write_Latency_Cnt_Out};
   
    sync_fifo 
     #(
        .WIDTH      (C_METRIC_COUNT_WIDTH+1),
        .DEPTH_LOG2 (C_OUTSTANDING_COUNT_WIDTH)
     ) F3_WR_LAT_START
     (
       .rst_n    (rst_int_n        ),
       .clk      (clk              ),
       .wren     (F3_Wr_En         ),
       .rden     (F3_Rd_En         ),
       .din      (F3_Wr_Data       ),
       .dout     (F3_Rd_Data       ),
       .count    (Write_Outstanding),
       .full     (                 ),
       .empty    (F3_Empty         )
     );
   
    sync_fifo 
     #(
        .WIDTH      (C_METRIC_COUNT_WIDTH+1),
        .DEPTH_LOG2 (C_OUTSTANDING_COUNT_WIDTH)
     ) F4_WR_LAT_END
     (
       .rst_n    (rst_int_n),
       .clk      (clk),
       .wren     (F4_Wr_En   ),
       .rden     (F4_Rd_En   ),
       .din      (F4_Wr_Data ),
       .dout     (F4_Rd_Data ),
       .full     (           ),
       .empty    (F4_Empty   )
     );
  
    //Rd F3,F4 and update latency if write ID matches 
    assign F34_Rd_En = (F3_Empty == 1'b0) && (F4_Empty == 1'b0);
    assign F3_Rd_En = F34_Rd_En;
    assign F4_Rd_En = F34_Rd_En;
  
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
        F34_Rd_Vld <= 1'b0;
      end else begin
        F34_Rd_Vld <= F34_Rd_En;
      end
    end
  
    reg update_min_Wr_Lat;
    reg update_max_Wr_Lat;
    reg [C_METRIC_COUNT_WIDTH-1:0] Wr_Lat_Cnt_Diff_reg1;
    reg F34_Rd_Vld_reg_d2;
    
    // Below logic is for timing violation fix Wr_Lat_Cnt_Diff_reg F34_Rd_Vld_reg 
    reg F34_Rd_Vld_reg; 
    reg [C_METRIC_COUNT_WIDTH-1:0] Wr_Lat_Cnt_Diff_reg;
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
        F34_Rd_Vld_reg       <= 0;
        Wr_Lat_Cnt_Diff_reg  <= 0;
      end else begin
        if (F34_Rd_Vld) begin
          if (F4_Rd_Data[C_METRIC_COUNT_WIDTH] ^ F3_Rd_Data[C_METRIC_COUNT_WIDTH]) begin
            if (F3_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]>F4_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]) begin
              Wr_Lat_Cnt_Diff_reg  <= (~(F3_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]) + F4_Rd_Data[C_METRIC_COUNT_WIDTH-1:0])+1'b1;//:(F4_Rd_Data - F3_Rd_Data);;
            end else begin
              Wr_Lat_Cnt_Diff_reg <= (~F4_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]) + F3_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]+1'b1;
            end
          end
          else begin
            if (F3_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]>F4_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]) begin
              Wr_Lat_Cnt_Diff_reg  <= (F3_Rd_Data[C_METRIC_COUNT_WIDTH-1:0] - F4_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]);//:(F4_Rd_Data - F3_Rd_Data);;
            end else begin
              Wr_Lat_Cnt_Diff_reg  <= F4_Rd_Data[C_METRIC_COUNT_WIDTH-1:0] - F3_Rd_Data[C_METRIC_COUNT_WIDTH-1:0];
            end
          end
        end
        
        F34_Rd_Vld_reg <= F34_Rd_Vld;
      end
    end
    
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
        update_min_Wr_Lat    <= 0;
        update_max_Wr_Lat    <= 0;
        Wr_Lat_Cnt_Diff_reg1  <= 0;
      end else begin
        if (F34_Rd_Vld_reg) begin
          update_min_Wr_Lat    <= Wr_Lat_Cnt_Diff_reg < Min_Write_Latency_Int;
  	      update_max_Wr_Lat    <= Wr_Lat_Cnt_Diff_reg > Max_Write_Latency_Int;
        end
       
        Wr_Lat_Cnt_Diff_reg1  <= Wr_Lat_Cnt_Diff_reg;
        F34_Rd_Vld_reg_d2 <= F34_Rd_Vld_reg;
      end
    end
    
    // Total write latency
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
          Write_Latency_Int <= 1'b0;
          Write_Latency_En_Int <= 1'b0;
      end else if (F34_Rd_Vld_reg_d2) begin
          Write_Latency_Int <= Wr_Lat_Cnt_Diff_reg1;
          Write_Latency_En_Int <= Metrics_Cnt_En_Int;
      end else
          Write_Latency_En_Int <= 1'b0;
    end
  
    // Minimum write latency
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
        Min_Write_Latency_Int    <= ALL_ONES;
      end else if(F34_Rd_Vld_reg_d2 && update_min_Wr_Lat) begin
        Min_Write_Latency_Int    <= Wr_Lat_Cnt_Diff_reg1;
      end
    end
  
    // Maximum write latency
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
        Max_Write_Latency_Int    <= 0;
      end else if (F34_Rd_Vld_reg_d2 && update_max_Wr_Lat) begin
        Max_Write_Latency_Int    <= Wr_Lat_Cnt_Diff_reg1;
      end
    end
    
    assign Min_Write_Latency = Min_Write_Latency_Int;
    assign Max_Write_Latency = Max_Write_Latency_Int;
    assign Write_Latency     = Write_Latency_Int;     // Actual Latency
    assign Write_Latency_En  = Write_Latency_En_Int;  // Latency Valid
  
    assign Wr_Latcnt_rst_n = rst_int_n;
    reg Write_Data_Valid_i;
    
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Write_Data_Valid_i <= 1'b0;
      end
      else begin
        Write_Data_Valid_i <= Write_Data_Valid;
      end
    end
    
    wire Write_Lat_Cnt_en = Metrics_Cnt_En_Int & Write_Data_Valid_i; //Counter enable for ID based
  
    assign Wr_cnt_ld           = ~(rst_int_n);
    
    //--Write latency counter
    //--Counter Instantiation
    //--This counter will be enabled only when id based latency is enabled
    counter_ovf 
    #(
       .C_FAMILY             ("nofamily"),
       .C_NUM_BITS           (C_METRIC_COUNT_WIDTH),
       .COUNTER_LOAD_VALUE   (32'h00000000)
     ) wr_latency_cnt_inst 
     (
       .clk                  (clk),
       .rst_n                (Wr_Latcnt_rst_n),
       .Load_In              (Latency_Load_value),
       .Count_Enable         (Write_Lat_Cnt_en),
       .Count_Load           (Wr_cnt_ld),
       .Count_Down           (1'b0),
       .Count_Out            (Write_Latency_Cnt_Out),
       .Carry_Out            (Write_Latency_Cnt_Ovf)
     );
  
    //-- ************
    //-- Read Latency
    //-- ************
  
    //-- Read latency calculation 
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Rd_Latency_Fifo_Wr_En   <= 1'b0;
        Rd_Latency_Fifo_Wr_Data <= 0;
      end
      else begin
        if (Read_Start == 1'b1) begin
          Rd_Latency_Fifo_Wr_En     <= ~Rd_Latency_Fifo_Full;
  	      //Rd_Latency_Fifo_Wr_Data <= ONE;
          Rd_Latency_Fifo_Wr_Data   <= {Read_Latency_Cnt_Ovf,Read_Latency_Cnt_Out};
        end
        else begin
          Rd_Latency_Fifo_Wr_En     <= 1'b0;
          Rd_Latency_Fifo_Wr_Data   <= Rd_Latency_Fifo_Wr_Data;
        end
      end
    end
  
    // Reading the FIFO loaded with the count when read started 
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Rd_Latency_Fifo_Rd_En      <= 1'b0;
        Rd_Latency_Fifo_Rd_En_D1   <= 1'b0;
        Rd_Latency_Fifo_Rd_En_D2   <= 1'b0;
        Read_Latency_Cnt_Out_D1    <= 0;
        Read_Latency_Cnt_Out_D2    <= 0;
        Read_Latency_One           <= 0;       //when read response comes with in one clock 
        Read_Latency_One_D1        <= 0;
        Rd_Latency_Fifo_Rd_Data_D1 <= 0;
      end
      else begin
        Rd_Latency_Fifo_Rd_En_D1   <= Rd_Latency_Fifo_Rd_En;
        Rd_Latency_Fifo_Rd_En_D2   <= Rd_Latency_Fifo_Rd_En_D1;
        Read_Latency_Cnt_Out_D1    <= {Read_Latency_Cnt_Ovf,Read_Latency_Cnt_Out};
        Read_Latency_Cnt_Out_D2    <= Read_Latency_Cnt_Out_D1;
        Read_Latency_One_D1        <= Read_Latency_One & ~Rd_Latency_Fifo_Empty;
        Rd_Latency_Fifo_Rd_Data_D1 <= Rd_Latency_Fifo_Rd_Data;
        if (Read_Stop == 1'b1) begin
          Rd_Latency_Fifo_Rd_En   <=  ~Rd_Latency_Fifo_Empty;
          Read_Latency_One        <=   Rd_Latency_Fifo_Empty; 
        end
        else begin
          Rd_Latency_Fifo_Rd_En   <= 1'b0;
          Read_Latency_One        <= 0;    //when read response comes with in one clock 
        end
      end
    end
  
    assign Rd_Latency_Fifo_Rd_En_out = Rd_Latency_Fifo_Rd_En | Read_Latency_One_D1;
  
    //-- Rd latency FIFO Instance to store outstanding transactions
    sync_fifo 
    #(
       .WIDTH      (C_METRIC_COUNT_WIDTH+1),
       .DEPTH_LOG2 (C_OUTSTANDING_COUNT_WIDTH)
     ) rd_latency_fifo_inst 
     (
       .rst_n      (rst_int_n),
       .clk        (clk),
       .wren       (Rd_Latency_Fifo_Wr_En),
       .rden       (Rd_Latency_Fifo_Rd_En_out),
       .din        (Rd_Latency_Fifo_Wr_Data),
       .dout       (Rd_Latency_Fifo_Rd_Data),
       .count      (Read_Outstanding),
       .full       (Rd_Latency_Fifo_Full),
       .empty      (Rd_Latency_Fifo_Empty)
     );
      
    // Read latency FIFO occupancy based on write and reads to FIFO
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Rd_Latency_Occupancy   <= 0;
      end
      else begin
        if (Read_Start == 1'b1 && Read_Stop == 1'b1 ) begin 
          Rd_Latency_Occupancy   <= Rd_Latency_Occupancy;
        end
        else if (Read_Start == 1'b1) begin
          Rd_Latency_Occupancy   <= Rd_Latency_Occupancy + 1'b1;
        end
        else if (Read_Stop == 1'b1 && Rd_Latency_Occupancy != 0) begin
          Rd_Latency_Occupancy   <= Rd_Latency_Occupancy - 1'b1;
        end
      end
    end
  
    //-- Read latency capture from fifo read data with current counter value
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Read_Latency_Int        <= 0;
        Read_Latency_En_Int     <= 0;
      end
      else begin
        if (Read_Latency_One_D1 == 1'b1) begin
          Read_Latency_Int      <= ONE;
          Read_Latency_En_Int   <= Metrics_Cnt_En_Int;
        end
        else if (Rd_Latency_Fifo_Rd_En_D1 == 1'b1) begin
          if (Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH] ^ Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH]) begin
            if (Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH-1:0] > Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH-1:0]) begin
              Read_Latency_Int  <= (~(Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH-1:0]) + Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH-1:0])+1'b1;//:(F4_Rd_Data - F3_Rd_Data);;
            end else begin
              Read_Latency_Int  <= (~Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH-1:0]) + Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH-1:0]+1'b1;
            end
          end
          else begin
            if (Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH-1:0] > Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH-1:0]) begin
              Read_Latency_Int  <= (Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH-1:0] - Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH-1:0]);//:(F4_Rd_Data - F3_Rd_Data);;
            end else begin
              Read_Latency_Int  <= Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH-1:0] - Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH-1:0];
            end
          end
          
          Read_Latency_En_Int   <= Metrics_Cnt_En_Int;
        end
        else begin
          Read_Latency_Int      <= Read_Latency_Int;
          Read_Latency_En_Int   <= 1'b0;
        end
      end
    end
  
    assign Read_Latency    = Read_Latency_Int;
    assign Read_Latency_En = Read_Latency_En_Int; 
    wire Read_Lat_Cnt_en   = Metrics_Cnt_En_Int & Read_Data_Valid;
  
    //--Minimum read latency calculation
    //--Valid only for ID based latency
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Min_Read_Latency_Int    <= ALL_ONES;
      end
      else begin
        if (Read_Latency_Int < Min_Read_Latency_Int && Read_Latency_En == 1'b1) begin
          Min_Read_Latency_Int  <= Read_Latency;
        end
        else begin
          Min_Read_Latency_Int  <= Min_Read_Latency_Int;
        end
      end
    end
  
    assign Min_Read_Latency = Min_Read_Latency_Int;
  
    //--Maximum read latency calculation
    //--Valid only for ID based latency
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Max_Read_Latency_Int    <= 0;
      end
      else begin
        if (Read_Latency_Int > Max_Read_Latency_Int && Read_Latency_En == 1'b1) begin
          Max_Read_Latency_Int  <= Read_Latency;
        end
        else begin
          Max_Read_Latency_Int  <= Max_Read_Latency_Int;
        end
      end
    end
   
    assign Max_Read_Latency = Max_Read_Latency_Int;
    assign Rd_Latcnt_rst_n  = rst_int_n; 
    assign Rd_cnt_ld        = ~rst_int_n;
  
    //--Read latency counter
    //--Counter Instantiation
    counter_ovf 
    #(
       .C_FAMILY             ("nofamily"),
       .C_NUM_BITS           (C_METRIC_COUNT_WIDTH),
  	   .COUNTER_LOAD_VALUE   (32'h00000000)
     ) rd_latency_cnt_inst 
     (
       .clk                  (clk),
       .rst_n                (Rd_Latcnt_rst_n),
       .Load_In              (Latency_Load_value),
       .Count_Enable         (Read_Lat_Cnt_en),
       .Count_Load           (Rd_cnt_ld),
       .Count_Down           (1'b0),
       .Count_Out            (Read_Latency_Cnt_Out),
       .Carry_Out            (Read_Latency_Cnt_Ovf)
     );
  end
  else begin: GEN_NO_MIN_MAX
    assign Min_Read_Latency       = 0;
    assign Max_Read_Latency       = 0;
    assign Min_Write_Latency      = 0;
    assign Max_Write_Latency      = 0;
    
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Write_Outstanding_Int   <= 0;
        Write_Latency_En_Int    <= 0;
        Read_Outstanding_Int    <= 0;
        Read_Latency_En_Int     <= 0;
      end
      else begin
        // Always enabled
        Write_Latency_En_Int    <= Metrics_Cnt_En_Int;
        Read_Latency_En_Int     <= Metrics_Cnt_En_Int;
        
        // Write outstanding count
        if (Write_Start == Write_Stop) begin
          Write_Outstanding_Int <= Write_Outstanding_Int;
        end
        else if (Write_Start == 1'b1) begin
          Write_Outstanding_Int <= Write_Outstanding_Int + 1;
        end
        else if (Write_Stop == 1'b1) begin
          Write_Outstanding_Int <= Write_Outstanding_Int - 1;
        end
        
        // Read outstanding count
        if (Read_Start == Read_Stop) begin
          Read_Outstanding_Int <= Read_Outstanding_Int;
        end
        else if (Read_Start == 1'b1) begin
          Read_Outstanding_Int <= Read_Outstanding_Int + 1;
        end
        else if (Read_Stop == 1'b1) begin
          Read_Outstanding_Int <= Read_Outstanding_Int - 1;
        end
      end
    end
    
    // Increment total latency counter with # of outstanding tranx
    assign Write_Outstanding    = Write_Outstanding_Int;
    assign Write_Latency        = { {(C_METRIC_COUNT_WIDTH-C_OUTSTANDING_COUNT_WIDTH){1'b0}}, Write_Outstanding_Int };
    assign Write_Latency_En     = Write_Latency_En_Int;
    assign Read_Outstanding     = Read_Outstanding_Int;
    assign Read_Latency         = { {(C_METRIC_COUNT_WIDTH-C_OUTSTANDING_COUNT_WIDTH){1'b0}}, Read_Outstanding_Int };
    assign Read_Latency_En      = Read_Latency_En_Int;
  end
  endgenerate
  
  //-- *******
  //-- Outputs
  //-- *******
   
  always @(posedge clk) begin 
    if (rst_int_n == RST_ACTIVE) begin
      Wtrans_Cnt_En         <= 0;
      Rtrans_Cnt_En         <= 0;
      Write_Beat_Cnt_En     <= 0;
      Read_Beat_Cnt_En      <= 0;
      Write_Byte_Cnt        <= 0;
      Write_Byte_Cnt_En     <= 0;
      Read_Byte_Cnt         <= 0;
      Read_Byte_Cnt_En      <= 0;
    end
    else begin
      Wtrans_Cnt_En         <= Write_Start & Metrics_Cnt_En_Int;
      Rtrans_Cnt_En         <= Read_Start  & Metrics_Cnt_En_Int;
      Write_Beat_Cnt_En     <= Write_Beat & Metrics_Cnt_En_Int;
      Read_Beat_Cnt_En      <= Read_Beat & Metrics_Cnt_En_Int ; 
      Write_Byte_Cnt        <= Write_Bytes;
      Write_Byte_Cnt_En     <= Write_Beat & Metrics_Cnt_En_Int;
      Read_Byte_Cnt         <= Read_Bytes; 
      Read_Byte_Cnt_En      <= Read_Beat & Metrics_Cnt_En_Int;
    end
  end
  
  //-- ***********
  //-- Debug logic
  //-- ***********
  generate if (C_ENABLE_DEBUG == 1) begin : GEN_DEBUG
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Last_Write_Address_Int   <= 0;
        Last_Write_Data_Int      <= 0;
        Last_Read_Address_Int    <= 0;
        Last_Read_Data_Int       <= 0;
      end
      else begin
        if (Write_Start) begin
          if (NUM_PAD_ADDR == 0) begin
            Last_Write_Address_Int <= AWADDR;
          end
          else begin
            Last_Write_Address_Int <= {PAD_ADDR[NUM_PAD_ADDR - 1:0], AWADDR[C_MON_AXI_ADDR_WIDTH-1:0]};
          end
        end
        if (Write_Beat) begin
          if (NUM_PAD_DATA == 0) begin
            Last_Write_Data_Int <= WDATA;
          end
          else begin
            Last_Write_Data_Int <= {PAD_DATA[NUM_PAD_DATA - 1:0], WDATA[C_MON_AXI_DATA_WIDTH-1:0]};
          end
        end
        if (Read_Start) begin
          if (NUM_PAD_ADDR == 0) begin
            Last_Read_Address_Int <= ARADDR;
          end
          else begin
            Last_Read_Address_Int <= {PAD_ADDR[NUM_PAD_ADDR - 1:0], ARADDR[C_MON_AXI_ADDR_WIDTH-1:0]};
          end
        end
        if (Read_Beat) begin
          if (NUM_PAD_DATA == 0) begin
            Last_Read_Data_Int <= RDATA;
          end
          else begin
            Last_Read_Data_Int <= {PAD_DATA[NUM_PAD_DATA - 1:0], RDATA[C_MON_AXI_DATA_WIDTH-1:0]};
          end
        end
      end
    end
    
    assign Last_Write_Address     = Last_Write_Address_Int;
    assign Last_Write_Data        = Last_Write_Data_Int;
    assign Last_Read_Address      = Last_Read_Address_Int;
    assign Last_Read_Data         = Last_Read_Data_Int;
  end
  else begin: GEN_NO_DEBUG
    assign Last_Write_Address     = 0;
    assign Last_Write_Data        = 0;
    assign Last_Read_Address      = 0;
    assign Last_Read_Data         = 0;
  end
  endgenerate
      
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
