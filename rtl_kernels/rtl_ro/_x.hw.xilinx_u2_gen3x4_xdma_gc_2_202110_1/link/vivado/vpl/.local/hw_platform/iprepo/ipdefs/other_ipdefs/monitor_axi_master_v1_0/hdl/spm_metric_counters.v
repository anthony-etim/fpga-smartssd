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
// Filename     : metric_counters.v
// Version      : v1.0
// Description  : Metric counter module instantiates the accumulators
//                and calculates the metric counts
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns/1ps

module metric_counters 
#(
   parameter  C_FAMILY                   = "virtex7",
   parameter  C_ENABLE_DEBUG             = 0,
   parameter  C_ENABLE_MIN_MAX_LATENCY   = 0,
   parameter  C_METRIC_COUNT_WIDTH       = 32,
   parameter  C_OUTSTANDING_COUNT_WIDTH  = 8,
   parameter  C_SAMPLE_WIDTH             = 32
)                                        
(                                        
   input                                 clk,
   input                                 rst_n,
   
   input                                 Sample_rst_n,                                      
   input                                 Sample_En,
   input [4:0]                           Lat_Addr_6downto2,
                                         
   //-- Cnt Enable and Reset             
   input                                 Metrics_Cnt_En,
   input                                 Metrics_Cnt_Reset,

   // Metric Counters - in core clk domain
   //output reg [C_METRIC_COUNT_WIDTH-1:0] Metric_Ram_Data,
   output reg [C_SAMPLE_WIDTH-1:0] Sample_Metric_Ram_Data,
   
   //-- Counter metrics
   input [C_METRIC_COUNT_WIDTH-1:0]      Write_Byte_Cnt,
   input [C_METRIC_COUNT_WIDTH-1:0]      Read_Byte_Cnt,
   input [C_METRIC_COUNT_WIDTH-1:0]      Write_Latency,
   input [C_METRIC_COUNT_WIDTH-1:0]      Min_Write_Latency,
   input [C_METRIC_COUNT_WIDTH-1:0]      Max_Write_Latency,
   input [C_METRIC_COUNT_WIDTH-1:0]      Read_Latency,
   input [C_METRIC_COUNT_WIDTH-1:0]      Min_Read_Latency,
   input [C_METRIC_COUNT_WIDTH-1:0]      Max_Read_Latency,
   input [C_OUTSTANDING_COUNT_WIDTH-1:0] Write_Outstanding,
   input [C_OUTSTANDING_COUNT_WIDTH-1:0] Read_Outstanding,
   input [C_METRIC_COUNT_WIDTH-1:0]      Last_Write_Address,
   input [C_METRIC_COUNT_WIDTH-1:0]      Last_Write_Data,
   input [C_METRIC_COUNT_WIDTH-1:0]      Last_Read_Address,
   input [C_METRIC_COUNT_WIDTH-1:0]      Last_Read_Data,

   input                                 Wtrans_Cnt_En,
   input                                 Rtrans_Cnt_En,
   input                                 Write_Byte_Cnt_En,
   input                                 Read_Byte_Cnt_En,
   input                                 Write_Beat_Cnt_En,
   input                                 Read_Beat_Cnt_En,
   input                                 Write_Latency_En,
   input                                 Read_Latency_En
);

  //-------------------------------------------------------------------
  // Parameter Declaration
  //-------------------------------------------------------------------
  localparam RST_ACTIVE                = 1'b0;
  localparam C_NUM_OF_COUNTERS         = 6;
  localparam C_NUM_OF_MIN_MAX_COUNTERS = C_ENABLE_MIN_MAX_LATENCY ? 2 : 0;
  localparam C_NUM_OF_DEBUG_COUNTERS   = C_ENABLE_DEBUG ? 7 : 0;
  localparam C_NUM_OF_COUNTERS_EXTND   = C_NUM_OF_MIN_MAX_COUNTERS + C_NUM_OF_DEBUG_COUNTERS;
  localparam EN_64                     = (C_METRIC_COUNT_WIDTH - C_SAMPLE_WIDTH > 0) ? 1 : 0;
  
  //-------------------------------------------------------------------
  // Signal Declarations
  //------------------------------------------------------------------
  wire [C_METRIC_COUNT_WIDTH-1:0]    accum_in [C_NUM_OF_COUNTERS-1:0];
  wire [C_NUM_OF_COUNTERS-1:0]       accum_in_valid;
  wire [C_METRIC_COUNT_WIDTH-1:0]    Metric_Cnt [C_NUM_OF_COUNTERS-1:0];
  wire [C_METRIC_COUNT_WIDTH-1:0]    Sample_Metric_Cnt [C_NUM_OF_COUNTERS-1:0];
  
  wire [C_METRIC_COUNT_WIDTH-1:0]    accum_in_extnd [C_NUM_OF_COUNTERS_EXTND-1:0];
  wire [C_NUM_OF_COUNTERS_EXTND-1:0] accum_in_valid_extnd;
  wire [C_METRIC_COUNT_WIDTH-1:0]    Metric_Cnt_extnd [C_NUM_OF_COUNTERS_EXTND-1:0];
  wire [C_METRIC_COUNT_WIDTH-1:0]    Sample_Metric_Cnt_extnd [6:0];
  
  reg                                MinMax_Write_Latency_En;
  reg                                MinMax_Read_Latency_En;
  
  //-------------------------------------------------------------------
  // Begin architecture
  //-------------------------------------------------------------------

  assign accum_in[0]             = Write_Byte_Cnt;
  assign accum_in[1]             = 1'b1;
  assign accum_in[2]             = Write_Latency;
  assign accum_in[3]             = Read_Byte_Cnt;
  assign accum_in[4]             = 1'b1;
  assign accum_in[5]             = Read_Latency;
  assign accum_in_valid[0]       = Write_Byte_Cnt_En;
  assign accum_in_valid[1]       = Wtrans_Cnt_En;
  assign accum_in_valid[2]       = Write_Latency_En;
  assign accum_in_valid[3]       = Read_Byte_Cnt_En;
  assign accum_in_valid[4]       = Rtrans_Cnt_En;
  assign accum_in_valid[5]       = Read_Latency_En;
  
  //
  // Min/Max Latency
  //
  generate if (C_ENABLE_MIN_MAX_LATENCY == 1) begin : GEN_MIN_MAX
    always @(posedge clk) begin
      if (rst_n == RST_ACTIVE) begin
        MinMax_Write_Latency_En <= 0;
        MinMax_Read_Latency_En  <= 0;
      end 
      else begin
        MinMax_Write_Latency_En <= Write_Latency_En;
        MinMax_Read_Latency_En  <= Read_Latency_En;
      end
    end
    
    assign accum_in_extnd[0]       = {Max_Write_Latency[15:0], Min_Write_Latency[15:0]};    
    assign accum_in_extnd[1]       = {Max_Read_Latency[15:0],  Min_Read_Latency[15:0] };
    assign accum_in_valid_extnd[0] = MinMax_Write_Latency_En;
    assign accum_in_valid_extnd[1] = MinMax_Read_Latency_En;
  end
  else begin: GEN_NO_MIN_MAX
    assign accum_in_extnd[0]       = 0;    
    assign accum_in_extnd[1]       = 0;
    assign accum_in_valid_extnd[0] = 0;
    assign accum_in_valid_extnd[1] = 0;  
  end
  endgenerate
  
  //
  // Debug
  //
  generate if (C_ENABLE_DEBUG == 1) begin : GEN_DEBUG   
    assign accum_in_extnd[2]       = {{(16-C_OUTSTANDING_COUNT_WIDTH){1'b0}}, Write_Outstanding, 
                                    {(16-C_OUTSTANDING_COUNT_WIDTH){1'b0}}, Read_Outstanding };
    assign accum_in_extnd[3]       = Last_Write_Address;
    assign accum_in_extnd[4]       = Last_Write_Data;
    assign accum_in_extnd[5]       = Last_Read_Address;
    assign accum_in_extnd[6]       = Last_Read_Data;
  
    assign accum_in_valid_extnd[2] = 1'b1;
    assign accum_in_valid_extnd[3] = Wtrans_Cnt_En;
    assign accum_in_valid_extnd[4] = Write_Byte_Cnt_En;
    assign accum_in_valid_extnd[5] = Rtrans_Cnt_En;
    assign accum_in_valid_extnd[6] = Read_Byte_Cnt_En;
  end
  else begin: GEN_NO_DEBUG
    assign accum_in_extnd[2]       = 0;
    assign accum_in_extnd[3]       = 0;
    assign accum_in_extnd[4]       = 0;
    assign accum_in_extnd[5]       = 0;
    assign accum_in_extnd[6]       = 0;
  
    assign accum_in_valid_extnd[2] = 0;
    assign accum_in_valid_extnd[3] = 0;
    assign accum_in_valid_extnd[4] = 0;
    assign accum_in_valid_extnd[5] = 0;
    assign accum_in_valid_extnd[6] = 0;
  end
  endgenerate
  
  //
  //-- Metric Counters
  //
  genvar i;
  generate for (i=0; i < C_NUM_OF_COUNTERS; i=i+1) begin : GEN_COUNTERS
  
    acc_sample
    #(
      .C_FAMILY                      (C_FAMILY            ),
      .DWIDTH                        (C_METRIC_COUNT_WIDTH),
      .C_HAVE_SAMPLED_METRIC_CNT     (1)
    ) acc_inst_0
    (
       .clk                (clk                        ),
       .rst_n              (rst_n                      ),
       .Sample_rst_n       (Sample_rst_n               ),
       .Enable             (Metrics_Cnt_En             ),   
       .Reset              (Metrics_Cnt_Reset          ) ,   
       .Add_in             (accum_in[i]                ),  
       .Add_in_Valid       (accum_in_valid[i]          ), 
       .Sample_En          (Sample_En                  ), 
       .Accumulate         (1'b1                       ), 
       .Accumulator        (Metric_Cnt[i]              ),
       .Sample_Accumulator (Sample_Metric_Cnt[i]       )
    );
  end
  endgenerate
  
  //
  //-- Metric Counter (extended)
  //
  genvar k;
  generate
  for (k=0; k < C_NUM_OF_COUNTERS_EXTND; k=k+1) begin : GEN_COUNTERS_EXT
  
     acc_sample 
     #(
       .C_FAMILY                      (C_FAMILY            ),
       .DWIDTH                        (C_METRIC_COUNT_WIDTH),
       .C_HAVE_SAMPLED_METRIC_CNT     (1)
     ) acc_extnd_inst_0
     (
        .clk                (clk                        ),
        .rst_n              (rst_n                      ),
        .Sample_rst_n       (Sample_rst_n               ),
        .Enable             (Metrics_Cnt_En             ),
        .Reset              (Metrics_Cnt_Reset          ),
        .Add_in             (accum_in_extnd[k]          ),
        .Add_in_Valid       (accum_in_valid_extnd[k]    ),
        .Sample_En          (Sample_En                  ),
        .Accumulate         (1'b0                       ),
        .Accumulator        (Metric_Cnt_extnd[k]        ),
        .Sample_Accumulator (Sample_Metric_Cnt_extnd[k] )
     );
  end
  endgenerate  
 
  genvar n;
  generate
  for (n = C_NUM_OF_COUNTERS_EXTND; n < 7; n=n+1) begin : GEN_NO_COUNTERS_EXT
    assign Sample_Metric_Cnt_extnd[n] = 0;
  end
  endgenerate
  
  //
  // Metric counter RAM output
  // NOTE: Only sampled metric counters are accessible
  //
  always @(posedge clk) begin
    if (rst_n == RST_ACTIVE) begin
      //Metric_Ram_Data                   <= 0;
      Sample_Metric_Ram_Data            <= 0;
    end 
    else begin
      // Metric RAM output
      //case (Lat_Addr_5downto2)
      //  4'h0: Metric_Ram_Data           <= Metric_Cnt[0];
      //  4'h1: Metric_Ram_Data           <= Metric_Cnt[1]; 
      //  4'h2: Metric_Ram_Data           <= Metric_Cnt[2]; 
      //  4'h3: Metric_Ram_Data           <= Metric_Cnt[3]; 
      //  4'h4: Metric_Ram_Data           <= Metric_Cnt[4]; 
      //  4'h5: Metric_Ram_Data           <= Metric_Cnt[5];
      //  4'h6: Metric_Ram_Data           <= Metric_Cnt_extnd[0]; 
      //  4'h7: Metric_Ram_Data           <= Metric_Cnt_extnd[1];
      //  4'h8: Metric_Ram_Data           <= Metric_Cnt_extnd[2];
      //  4'h9: Metric_Ram_Data           <= Metric_Cnt_extnd[3];
      //  4'ha: Metric_Ram_Data           <= Metric_Cnt_extnd[4];
      //  4'hb: Metric_Ram_Data           <= Metric_Cnt_extnd[5];
      //  4'hc: Metric_Ram_Data           <= Metric_Cnt_extnd[6];
      //  default: Metric_Ram_Data        <= 0;
      //endcase
      
      // Sample Metric RAM output
      case (Lat_Addr_6downto2)
        5'h0: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[0] [C_SAMPLE_WIDTH - 1 : 0];
        5'h1: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[1] [C_SAMPLE_WIDTH - 1 : 0]; 
        5'h2: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[2] [C_SAMPLE_WIDTH - 1 : 0]; 
        5'h3: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[3] [C_SAMPLE_WIDTH - 1 : 0]; 
        5'h4: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[4] [C_SAMPLE_WIDTH - 1 : 0]; 
        5'h5: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[5] [C_SAMPLE_WIDTH - 1 : 0];
        5'h6: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[0] [C_SAMPLE_WIDTH - 1 : 0]; 
        5'h7: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[1] [C_SAMPLE_WIDTH - 1 : 0];
        5'h8: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[2] [C_SAMPLE_WIDTH - 1 : 0];
        5'h9: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[3] [C_SAMPLE_WIDTH - 1 : 0];
        5'ha: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[4] [C_SAMPLE_WIDTH - 1 : 0];
        5'hb: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[5] [C_SAMPLE_WIDTH - 1 : 0];
        5'hc: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[6] [C_SAMPLE_WIDTH - 1 : 0];
        /* Read Higher Bits if present
         * The register map is compatible with old code
         */
        5'h10: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[0] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h11: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[1] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0; 
        5'h12: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[2] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0; 
        5'h13: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[3] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0; 
        5'h14: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[4] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0; 
        5'h15: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[5] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h16: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[0] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0; 
        5'h17: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[1] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h18: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[2] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h19: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[3] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h1a: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[4] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h1b: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[5] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h1c: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[6] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        default: Sample_Metric_Ram_Data <= 0;
      endcase
    end
  end
  
endmodule       

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
