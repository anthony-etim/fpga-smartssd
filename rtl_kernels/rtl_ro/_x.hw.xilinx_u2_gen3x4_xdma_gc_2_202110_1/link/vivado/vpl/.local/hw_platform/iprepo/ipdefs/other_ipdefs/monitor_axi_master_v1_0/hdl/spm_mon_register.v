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
// Filename     : mon_register.v
// Version      : v1.0
// Description  : This is the top level wrapper file for the monitor-Slots of AXI
//                interface. It has the AXI slots input and sends out the
//                synchronized outputs through Asynchronous FIFO
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)

module mon_register 
  #(
     parameter NUM_REG_STAGES      = 1,
     parameter MON_DATA_WIDTH      = 64,
     parameter LEN_WIDTH           = 8,
     parameter DATA_WIDTH          = 32,
     parameter ADDR_WIDTH          = 32,
     parameter ENABLE_ADDR_FILTER  = 0,
     parameter ADDR_MIN            = 8'h00000000,
     parameter ADDR_MAX            = 8'hFFFFFFFF
   )
   (
     input                           mon_clk,
     input                           mon_resetn,
     input  [MON_DATA_WIDTH-1:0]     data_in,
     output reg [MON_DATA_WIDTH-1:0] data_out,
     output                          read_valid,
     output                          write_valid
   );
    
  /*--------------------------local parameters------------------------*/
  localparam RST_ACTIVE = 1'b0; 
  localparam BASE_ADDR  = DATA_WIDTH + (2*LEN_WIDTH) + (DATA_WIDTH/8) + 12;

  /*--------------------wire/connection declarations------------------*/
 
  reg  [NUM_REG_STAGES:1]          Reg_Data_Valid;
  reg  [MON_DATA_WIDTH-1:0]        Reg_Data_In[NUM_REG_STAGES:1];
                             
  reg                              Read_Valid;
  reg                              Write_Valid;
  wire                             arvalid;
  wire                             awvalid;
  wire [ADDR_WIDTH-1:0]            Read_Address;
  wire [ADDR_WIDTH-1:0]            Write_Address;
                             
  /*----------------- Registering Data input based on Parameter------*/

  genvar i;
  generate for (i = 1; i <= NUM_REG_STAGES; i=i+1) begin : GEN_REG_STAGES
    always @(posedge mon_clk) begin
      if (mon_resetn == RST_ACTIVE) begin
        Reg_Data_In[i]         <= 0;
        Reg_Data_Valid[i]      <= 1'b0;
      end
      else begin
        if (i == 1) begin
          Reg_Data_In[i]       <= data_in;
          Reg_Data_Valid[i]    <= 1'b1;
        end
        else begin
          Reg_Data_In[i]       <= Reg_Data_In[i-1];
          Reg_Data_Valid[i]    <= Reg_Data_Valid[i-1];
        end
      end
    end
  end
  endgenerate
     
  generate if (NUM_REG_STAGES == 0) begin : DATA_IN_NO_REGS
    assign arvalid             = data_in[4];
    assign awvalid             = data_in[11];
    assign Read_Address        = data_in[(BASE_ADDR+ADDR_WIDTH-1):BASE_ADDR];
    assign Write_Address       = data_in[(MON_DATA_WIDTH-1):(BASE_ADDR+DATA_WIDTH+ADDR_WIDTH)];
  end 
  else begin : DATA_IN_REGS
    assign arvalid             = Reg_Data_In[NUM_REG_STAGES][4];
    assign awvalid             = Reg_Data_In[NUM_REG_STAGES][11];
    assign Read_Address        = Reg_Data_In[NUM_REG_STAGES][(BASE_ADDR+ADDR_WIDTH-1):BASE_ADDR];
    assign Write_Address       = Reg_Data_In[NUM_REG_STAGES][(MON_DATA_WIDTH-1):(BASE_ADDR+DATA_WIDTH+ADDR_WIDTH)];
  end
  endgenerate

  always @(posedge mon_clk) begin
    if (mon_resetn == RST_ACTIVE) begin
      Read_Valid               <= 0;
      Write_Valid              <= 0;
    end
    else begin
      if (ENABLE_ADDR_FILTER == 0) begin
        Read_Valid             <= 1;
        Write_Valid            <= 1;
      end
      else begin
        if (arvalid == 1) begin
          Read_Valid           <= (Read_Address >= ADDR_MIN) && (Read_Address <= ADDR_MAX);
        end

        if (awvalid == 1) begin
          Write_Valid          <= (Write_Address >= ADDR_MIN) && (Write_Address <= ADDR_MAX);
        end
      end
    end
  end

  // Always Register output data
  // As Valid signals are registered
  always @(posedge mon_clk) begin
    if (NUM_REG_STAGES == 0)
      data_out <= data_in;
    else
      data_out <= Reg_Data_In[NUM_REG_STAGES];
  end

  generate if (NUM_REG_STAGES == 0) begin : DATA_OUT_NO_REGS
    assign read_valid          = Read_Valid;
    assign write_valid         = Write_Valid;
  end 
  else begin : DATA_OUT_REGS
    assign read_valid          = Reg_Data_Valid[NUM_REG_STAGES] && Read_Valid;
    assign read_valid          = Reg_Data_Valid[NUM_REG_STAGES] && Write_Valid;
  end
  endgenerate
  
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
