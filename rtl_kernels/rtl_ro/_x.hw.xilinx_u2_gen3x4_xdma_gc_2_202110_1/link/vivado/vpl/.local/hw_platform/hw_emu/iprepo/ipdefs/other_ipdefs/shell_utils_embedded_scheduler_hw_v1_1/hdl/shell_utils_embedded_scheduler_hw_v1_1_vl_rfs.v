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
`timescale 1ns / 1ps

module CuISR(
    input   wire                clk             ,
    input   wire                reset_n         ,
    
    input   wire                CuIsrEnable     ,

    input   wire    [6:0]       no_of_computeunits,
    
    //128 Interrupt pins mapped to 4 32 bit registers.
    input   wire    [127:0]     CU_INT_IN,
    output  wire                irq_cu_completion ,
    output  reg    [6:0]        CuIndex=0,
    output  reg                 CuIndexEnable=0,
    output  reg                 ap_start=0,
    input   wire                ap_done,
    
    output  wire                cuisr_update,
    output  wire          [7:0] cuisr_update_idx,

    // Used for clearing the inc status registers.
    input   wire                host_rready     ,
    input   wire                host_rvalid     ,
    input   wire    [31:0]      host_araddr     ,              
    
    output  wire    [8:0]       state0               
);


    
//****************************************************************************//
/*
 * When the CuIsrEnable is enabled in the CSR register, This State machince
 * get enabled. The main loop runs from 0-127 , checking for each of the irq
 * bits to be set, if set then the state machine calculates the offset of that
 * particular CU and fires the start command to the CUISR HLS IP.
 */


reg [7:0]  i=0;
reg        bit=0;
reg [8:0]  state=1;

assign cuisr_update = state[8];
assign cuisr_update_idx = i;

localparam [8:0]    IDLE                    =9'b000000001,
                    START_LOOP              =9'b000000010,
                    CALC_BIT                =9'b000000100,
                    CHECK_BIT               =9'b000001000,
                    WAIT_FOR_MEM            =9'b000010000,
                    AP_START                =9'b000100000,
                    AP_DONE                 =9'b001000000,
                    WAIT_INC_LOW            =9'b010000000,
                    SET_BIT_STATUS_REGISTER =9'b100000000;
                                         

always @(posedge clk)
begin
    if(!reset_n)
        state <= IDLE;
    else
    begin
        case (state)
            IDLE : begin
                if(CuIsrEnable)
                begin
                    state <= START_LOOP;
                end 
            end // end of IDLE
            
            
            START_LOOP : begin
                if(!CuIsrEnable)
                    state <= IDLE;
                else 
                    state <= CALC_BIT; 
                    
                if (i >= no_of_computeunits)
                    i <= 0;
            end 
            
            CALC_BIT : begin
                bit     <= (CU_INT_IN >> i) & 1;
                state   <= CHECK_BIT;
            end 
            
            CHECK_BIT : begin
                if(bit)
                begin
                    state <= WAIT_FOR_MEM;
                    CuIndex <= i;
                    CuIndexEnable <= 1'b1;
                    bit   <= 0;
                end 
                else
                begin
                    state <= IDLE;
                    i     <= i + 1;
                end 
            end 
            
            WAIT_FOR_MEM : begin //1 cycle delay for LUT memory
                state   <= AP_START;
                
            end 
            
            AP_START : begin
                ap_start    <= 1;
                state       <= AP_DONE; 
            end 
            
            AP_DONE : begin
                ap_start    <= 0;
                if(ap_done)
                begin
                    CuIndexEnable <= 1'b0;
                    state   <= WAIT_INC_LOW;
                end 
            end 
            
            WAIT_INC_LOW : begin
                if(!CU_INT_IN[i])
                    state   <= SET_BIT_STATUS_REGISTER;    
            end 
            
            SET_BIT_STATUS_REGISTER : begin
                state <= IDLE;
                i     <= i + 1;
            end 
        endcase 
    end
end // end of always block    
     

assign state0 = state; //For debug only

endmodule


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

`timescale 1ns / 1ps


module CuDmaController_rtl(
  input   wire                clk             ,
  input   wire                reset_n         ,

/*
 *  This bit is set in the top module and is corresponding to CuDmaQueueBusy
 *  Signal, this is set to indicate that a axilite write is in progress and no
 *  processing can be done.
 */
  input   wire                busy            ,

  input   wire                CuDmaEnable     ,
  input   wire    [127:0]     CuDmaQueue      ,

/* This bit is set in this module when  a snapshot of the CuDmaQueue is taken
 * for processing. When this bit is set the CuDmaQueue is reset
 */

  output  wire                clear           ,


  output  reg                 ap_start        =0,
  input   wire                ap_done,

/*
 * This is the concatenation of 4 32 bit CuDmaQueue resgiters which is
 * required by the CuDMA HLS IP.
 */

  output  reg     [127:0]     CuDmaQueue_reg=0,

  output  wire    [3:0]       state0
  );

  reg         [3:0]   state = 1;
  localparam  [3:0]   IDLE                =4'b0001,
                      WAIT_FOR_COUNT      =4'b0010,
                      AP_START            =4'b0100,
                      AP_DONE             =4'b1000;

  assign clear = state == WAIT_FOR_COUNT && CuDmaQueue != 128'b0;
  assign state0 = state; // Debug only

  always @(posedge clk)
  begin
      if(!reset_n)
          state <= IDLE;
      else
      begin
          case (state)
              IDLE : begin
                  if(CuDmaEnable)
                      state <= WAIT_FOR_COUNT;
              end

              WAIT_FOR_COUNT : begin
                  if (!CuDmaEnable)
                    begin
                        state <= IDLE;
                    end
                  else if(CuDmaQueue != 128'b0) //CUs available to process
                    begin
                        CuDmaQueue_reg <= CuDmaQueue;
                        state          <= AP_START;
                        ap_start       <= 1;
                    end
              end

              AP_START : begin
                  ap_start    <= 0;
                  state       <= AP_DONE;
              end

              AP_DONE : begin
                  if(ap_done)
                      state <= IDLE;
              end

              default : state <= IDLE;
          endcase
      end
  end // end of always block

endmodule


// (c) Copyright 2019 Xilinx, Inc. All rights reserved. {{{
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
/////////////////////////////////////////////////////////////////////////////}}}
//
// Vendor         : Xilinx
// Revision       : $Revision: #2 $
// Date           : $DateTime: 2018/12/13 14:58:26 $
// Last Author    : $Author: jwest $
//
////////////////////////////////////////////////////////////////////////////////
// Hierarchy :
//    super_module :
//      sub_module :
//
// Description :
//    - Generic AXI-Lite Register Module
//    - Implements AXI-Lite Control
//    - Registers Implemented Outside this module, using I/O_REG_ Ports
////////////////////////////////////////////////////////////////////////////////


module axil_reg #(
   parameter C_AXIL_DATA_W  = 32,
   parameter C_AXIL_ADDR_W  = 32
) (
   // Register Read Control
   output reg                                               O_REG_RD_VLD,
   output reg                      [C_AXIL_ADDR_W-1:0] O_REG_RD_ADR,
   input                                                I_REG_RD_DONE,
   input                                          [1:0] I_REG_RD_RSP,
   input                        [C_AXIL_DATA_W-1:0] I_REG_RD_DAT,
   // Register Write Control
   output reg                                              O_REG_WR_VLD,
   output reg                      [C_AXIL_ADDR_W-1:0] O_REG_WR_ADR,
   output reg                  [(C_AXIL_DATA_W/8)-1:0] O_REG_WR_BE,
   output reg                      [C_AXIL_DATA_W-1:0] O_REG_WR_DAT,
   input                                                I_REG_WR_DONE,
   input                                          [1:0] I_REG_WR_RSP,
   // AXI-Lite Slave Interface
   // AXIL Register Interface
   input                          S_AXIL_ACLK,
   input                          S_AXIL_ARESETN,
   input      [C_AXIL_ADDR_W-1:0] S_AXIL_AWADDR,
   input                    [2:0] S_AXIL_AWPROT,
   input                          S_AXIL_AWVALID,
   output                         S_AXIL_AWREADY,
   input      [C_AXIL_DATA_W-1:0] S_AXIL_WDATA,
   input  [(C_AXIL_DATA_W/8)-1:0] S_AXIL_WSTRB,
   input                          S_AXIL_WVALID,
   output                         S_AXIL_WREADY,
   output reg                  [1:0] S_AXIL_BRESP,
   output reg                        S_AXIL_BVALID,
   input                          S_AXIL_BREADY,
   input      [C_AXIL_ADDR_W-1:0] S_AXIL_ARADDR,
   input                    [2:0] S_AXIL_ARPROT,
   input                          S_AXIL_ARVALID,
   output reg                        S_AXIL_ARREADY,
   output reg    [C_AXIL_DATA_W-1:0] S_AXIL_RDATA,
   output reg                  [1:0] S_AXIL_RRESP,
   output reg                        S_AXIL_RVALID,
   input                          S_AXIL_RREADY
);

   // --------------------------------------------------------------------------
   // Parameters
   // --------------------------------------------------------------------------

   // --------------------------------------------------------------------------
   // Signals
   // --------------------------------------------------------------------------
   reg                         wr_rdy;
   reg                         wr_wait;
   reg                         rd_wait;
   // --------------------------------------------------------------------------

   // --------------------------------------------------------------------------
   // Write {{{
   // --------------------------------------------------------------------------
   always @(posedge S_AXIL_ACLK) begin
      if (!S_AXIL_ARESETN) begin
         wr_rdy         <= 0;
         wr_wait        <= 0;
         O_REG_WR_VLD   <= 0;
         O_REG_WR_ADR   <= 0;
         O_REG_WR_BE    <= 0;
         O_REG_WR_DAT   <= 0;
         S_AXIL_BVALID <= 0;
         S_AXIL_BRESP  <= 0;
      end else begin
         // Defaults
         wr_rdy         <= 1'b0;
         wr_wait        <= wr_wait;
         O_REG_WR_VLD   <= 1'b0;
         // Hold to prevent needing registered copy in user register code
         O_REG_WR_ADR   <= O_REG_WR_ADR;
         O_REG_WR_BE    <= O_REG_WR_BE;
         O_REG_WR_DAT   <= O_REG_WR_DAT;
         S_AXIL_BVALID <= 0;
         S_AXIL_BRESP  <= 0;
         if (!wr_wait && !wr_rdy && S_AXIL_AWVALID && S_AXIL_WVALID) begin
            wr_rdy         <= 1'b1;
            wr_wait        <= 1'b1;
            O_REG_WR_VLD   <= 1'b1;
            O_REG_WR_ADR   <= S_AXIL_AWADDR;
            O_REG_WR_BE    <= S_AXIL_WSTRB;
            O_REG_WR_DAT   <= S_AXIL_WDATA;
         end else if (I_REG_WR_DONE) begin
            S_AXIL_BVALID <= 1'b1;
            S_AXIL_BRESP  <= I_REG_WR_RSP;
            O_REG_WR_ADR   <= 0;
            O_REG_WR_BE    <= 0;
            O_REG_WR_DAT   <= 0;
         end else if (S_AXIL_BVALID) begin
            if (!S_AXIL_BREADY) begin
               S_AXIL_BVALID <= S_AXIL_BVALID;
               S_AXIL_BRESP  <= S_AXIL_BRESP;
            end else begin
               wr_wait        <= 1'b0;
            end
         end
      end
   end
   assign S_AXIL_AWREADY = wr_rdy;
   assign S_AXIL_WREADY  = wr_rdy;
   // Write }}}
   // --------------------------------------------------------------------------

   // --------------------------------------------------------------------------
   // Read {{{
   // --------------------------------------------------------------------------
   always @(posedge S_AXIL_ACLK) begin
      if (!S_AXIL_ARESETN) begin
         S_AXIL_ARREADY <= 0;
         rd_wait         <= 0;
         O_REG_RD_VLD    <= 0;
         O_REG_RD_ADR    <= 0;
         S_AXIL_RVALID  <= 0;
         S_AXIL_RRESP   <= 0;
         S_AXIL_RDATA   <= 0;
      end else begin
         // Defaults
         S_AXIL_ARREADY <= 0;
         rd_wait         <= rd_wait;
         O_REG_RD_VLD    <= 0;
         O_REG_RD_ADR    <= 0;
         S_AXIL_RVALID  <= 0;
         S_AXIL_RRESP   <= 0;
         S_AXIL_RDATA   <= 0;
         if (!rd_wait && !S_AXIL_ARREADY && S_AXIL_ARVALID) begin
            S_AXIL_ARREADY <= 1'b1;
            rd_wait         <= 1'b1;
            O_REG_RD_VLD    <= 1'b1;
            O_REG_RD_ADR    <= S_AXIL_ARADDR;
         end else if (I_REG_RD_DONE) begin
            S_AXIL_RVALID  <= 1'b1;
            S_AXIL_RRESP   <= I_REG_RD_RSP;
            S_AXIL_RDATA   <= I_REG_RD_DAT;
         end else if (S_AXIL_RVALID) begin
            if (!S_AXIL_RREADY) begin
               S_AXIL_RVALID  <= S_AXIL_RVALID;
               S_AXIL_RRESP   <= S_AXIL_RRESP;
               S_AXIL_RDATA   <= S_AXIL_RDATA;
            end else begin
               rd_wait        <= 1'b0;
            end
         end
      end
   end
   // Read }}}
   // --------------------------------------------------------------------------

endmodule


// (c) Copyright 2016-2017, 2019 Xilinx, Inc. All rights reserved.
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
//
// *************************************************************************

`timescale 1ns / 1ps

module shell_utils_embedded_scheduler_hw #(
   parameter C_AXIL_ADDR_W = 11,
   parameter C_AXIL_DATA_W = 32
) (

/*
 * clk port is connected to the 250 Mhz PCIe ClK
 */
input   dma_clk							, 
/*
 * This port is connected to the pcie axi_resent_n port from xDMA IP
 */
input   dma_reset_n							,


/* Axilite Bus for Read and Write Access to Register MAP, CSR ,
 * Status Resgister , IRQ etc.
 * This bus is mastered by Embedded Microblaze and CPU Host
 */
input   wire    [C_AXIL_ADDR_W-1:0]      host_awaddr     			,
input   wire    [2:0]       host_awprot     			,
input   wire                host_awvalid    			,
output  wire                 host_awready    			,
input   wire    [C_AXIL_DATA_W-1:0]      host_wdata      			,
input   wire    [(C_AXIL_DATA_W/8)-1:0]       host_wstrb      			,
input   wire                host_wvalid     			,
output  wire                 host_wready     			,
output  wire                 host_bvalid     			,
output  wire    [1:0]       host_bresp      			,
input   wire                host_bready     			,

input   wire    [C_AXIL_ADDR_W-1:0]      host_araddr     			,
input   wire    [2:0]       host_arprot     			,
input   wire                host_arvalid    			,
output  wire                host_arready    			,
output  wire     [C_AXIL_DATA_W-1:0]     host_rdata      			,
output  wire    [1:0]       host_rresp      			,
output  wire                host_rvalid     			,
input   wire                host_rready     			,

/*
 * Control Ports and Arguments for the CUISR HLS IP
 * */
output                      ap_start_cuisr			,
input                       ap_done_cuisr 			,
output          [31:0]      Offset        			,

/*
 * Arguments which are set by the Embedded Runtime Firmware
 * These must be set based on the xclbin configuration at the 
 * begining before processing any workloads.
 * These arguments are set using the configure command packet
 * sent by the host. These arguments are also passed to the 
 * CUDMA IP
 */
output  reg     [12:0]      SlotSize            =13'h1000	,   
//output  reg     [5:0]       CuOffset            =6'hC		, 
output  reg     [7:0]       NoofSlots           =8'd16		, 
//output  reg     [31:0]      CuBaseAddress       =32'h0		,
output  reg     [31:0]      CqBaseAddress       =32'h150000	,

/*
 * Control ports and Arguments for the CUDMA HLS IP
 */
output  wire                ap_start_cudma			,
input   wire                ap_done_cudma			,
output  wire    [127:0]     CuDmaQueue_reg			,

/*
 * FPGA to Host Interrupt lines which aare wired to the xDMA 
 * usr_irq ports [0:3]. These interrupts get set when atleast one 
 * command in the command queue is completed by the compute units
 */
output                      irq_sr0         			,
output                      irq_sr1         			,
output                      irq_sr2         			,
output                      irq_sr3         			,

/*
 * This is the acknowledgement bits for all the 16 usr interrupts 
 * available on the xDMA IP.
 */
input	wire    [15:0]	    irq_ack         			,

/*
 * These are the possible 128 irq lines from the dynamic region
 * for possible 128 Compute units which may be present in the 
 * dynamic region. These irq's indicate completion of a task by 
 * the compute units.
 */
input   wire    [127:0]     irq_cu          			,

/*
 * This is the irq port which is connected to the Embedded MIcroblaze
 * this indicates the completion of a task by a compute unit for a
 * given command queue slot
 */
output  wire                irq_cu_completion			,

/*
 * This is the irq port is used to inform the Embedded MIcroblaze
 * firware whenever a new slot is available in the command Queue.
 */
output  wire                irq_slotavailable

);


/***************** ADDRESS MAP *******************

 *
 * 4 Status Registers with 32 bits each, each bit indicates completion
 * status of each slot in the command Queue. The command queue can have
 * a maximum of 128 Slots.When the host receives an interrupt via irq_sr*
 * then the host performs a read to one of these status registers based on 
 * the number of available CQ slots and then maps the completions bits with 
 * the associated slots ID's.These are clear on read registers which get 
 * cleared whenever a axilite read is performed in this address space by
 * either the host or the Embedded Microblaze.
 *

0x0     -> StatusRegister [31:0]        -> W/COR
0x4     -> StatusRegister [63:32]       -> W/COR
0x8     -> StatusRegister [95:64]       -> W/COR
0xC     -> StatusRegister [127:96]      -> W/COR

 *
 * These CSR registers are associated with the CUDMA HLS IP. The CuDmaEnable
 * signal must be set to enabled the CUDMA functionality in hardware. There
 * are 4 CuDmaQueue registers which are set my the Embedded MIcroblaze
 * firmware which indicate to the CuDMA controller logic which CQ Slots to be
 * processed 
0x18    -> CuDmaEnable                  -> R/W
0x1C    -> CuDmaQueue [31:0]            -> W Only
0x20    -> CuDmaQueue [63:32]           -> W only
0x24    -> CuDmaQueue [95:64]           -> W only
0x28    -> CuDmaQueue [127:96]          -> w only

 * 
 * These register are configured using the config CQ slot packaet based on the
 * information which is available in the xclbin. These register are provided
 * as input arguments to the CUDMA HLS IP.
 *

0x2C    -> SlotSize                     -> R/W
0x30    -> CuOffset                     -> R/W NOT USED IN 5.2 DSAS
0x34    -> NoofSlots                    -> R/W
0x38    -> CuBaseAddress                -> R/W NOT USED IN 5.2 DSAS
0x3C    -> CqBaseAddress                -> R/W

 *
 * These CSR registers are associated with the CUISR HLS IP. The CuIsrHandlerEnable
 * signal must be set to enable the CuISR functionality in hardware.The
 * cu_inc_status* register show the the competed tasks by each compute unit.
 * These registers are read by the Embedded runtime when irq_cu_completion
 * interrupt is assert to the ERT. The bits set in this register are then
 * mapped to the corresponding Command Queue Slot, book keeping is done by the
 * ERT firmware
 
0x40    -> CuIsrHandlerEnable           -> R/W
0x44    -> CuDoneStatus[31:0]         -> COR
0x48    -> CuDoneStatus[63:32]        -> COR
0x4C    -> CuDoneStatus[95:64]        -> COR
0x50    -> CuDoneStatus[127:96]       -> COR


 *
 * These CSR registers are associated with the Command Queue Slot Interrupts
 * to ERT. When a command is written to the command Queue, a corresponding bit
 * is set in the CqSlotQueue register by the host. There are possible 128 CQ
 * slots and hene there are 4 32 bit registers. A write to any of these
 * registers results in assertion of irq_slotavailable interrupt line, which
 * then triggers ERT to read the CqSlotQueue register to check which slot was
 * populated. These registers are COR and will be cleared once ERT performs
 * a read operation.
 *

0x54    -> CqSlotQueueEnable            -> R/W
0x58    -> CqSlotQueue [31:0]           -> W/COR
0x5C    -> CqSlotQueue [63:32]          -> W/COR
0x60    -> CqSlotQueue [95:64]          -> W/COR
0x64    -> CqSlotQueue [127:96]         -> W/COR


 *
 * This CSR register indicates the total no of compute units which are
 * available for use. This number is dependent on the xclbin which is
 * configured on the board. This is configured as part of the config packet
 * which sent by the host.
 *
0x68    -> no_of_computeunits           -> R/W

 *
 * This CSR register enabled the Interrupts from  FPGA to HOST for indicating
 * the completion of command slots.
 *
0x100   -> GIE                          -> R/W

*
 * These are DEBUG registers which hold the current state of all the state
 * machine which are running in the system
 *

 *
 *Axilite write and Read state machince status
 *

0x300   -> DEBUG_StatusRegister_State_Write             -> R Only
0x304   -> DEBUG_StatusRegister_State_Read              -> R Only


 *
 * CU Dma controller status
 *
0x318   -> DEBUG_CuDmaController_State0                 -> R Only
0x31C   -> DEBUG_CuDmaController_StateDmaLoop           -> R Only
0x320   -> DEBUG_CuDmaController_Statecqcopy            -> R Only
0x324   -> DEBUG_CuDmaController_Statecucopy            -> R Only

 *
 * CU ISR Status
 *

0x328   -> DEBUG_CuISR_State0                           -> R Only
0x32C   -> DEBUG_CuISR_State_isr_read                   -> R Only   
0x330   -> DEBUG_CuISR_State_isr_write                  -> R Only  

 *
 * CU Address LUT. Will be populated when embedded scheduler is initialized
 *
0x400 - 0x5FC CU addresses -> R/W
 
 

***************************************************/

// ERT HW Register Declarations
reg     [127:0] StatusRegister      =0; 
reg             CuDmaEnable         =0  ;
reg     [127:0] CuDmaQueue          =0  ;
reg             CuIsrHandlerEnable  =0  ;
reg     [127:0] CuDoneStatus          ;
reg             CqSlotQueueEnable   =0  ;
reg     [127:0] CqSlotQueue         =0  ;
reg             GIE                 =0  ;
reg     [6:0]   no_of_computeunits  =1  ;
wire    [6:0]   CuISRIndex;
wire            CuISRIndexEn;

// DEBUG SIGNALS 
wire    [2:0]   DEBUG_StatusRegister_State_Write = 0;
wire    [1:0]   DEBUG_StatusRegister_State_Read = 0;
wire    [3:0]   DEBUG_CuDmaController_State0;
wire    [8:0]   DEBUG_CuISR_State0; 

// Clear signal for CuDMA queue when current queue is being processed
wire            clear_CuDmaQueue  ;

// Update signals for CuISR to clear CuDoneStatus register
wire            cuisr_update;
wire      [7:0] cuisr_update_idx;

// AXI-Lite Register nterface signals
wire                         reg_rd_vld;
wire     [C_AXIL_ADDR_W-1:0] reg_rd_adr;
reg                         reg_rd_done;
reg                   [1:0] reg_rd_rsp;
reg     [C_AXIL_DATA_W-1:0] reg_rd_dat;

wire                         reg_wr_vld;
wire     [C_AXIL_ADDR_W-1:0] reg_wr_adr;
wire [(C_AXIL_DATA_W/8)-1:0] reg_wr_be;
wire     [C_AXIL_DATA_W-1:0] reg_wr_dat;
reg                         reg_wr_done;
reg                   [1:0] reg_wr_rsp;

/*
* Distributed memory for CU addresses. Added to support non contiguous
* CU addressing (5.2 DSAs and newer). 128 32bit entries means we have 4k bits of space
* Port A is R/W access from host. Address comes from AXI-Lite bits [8:2]
* Bit 10 indicates we want to access cu_addr memory 0x400-0x5FC which is enable bit for PortA
* Port B is R access from CuISR block and is used to send CU address to CuISR HLS block
* Simple state machine in CuISR block uses CU index as address in RAM to get CU address
*/
xpm_memory_sdpram # (
	// Common module parameters
	.MEMORY_SIZE (4096), //positive integer
	.CLOCKING_MODE ("common_clock"), //string; "common_clock", "independent_clock"
	.MEMORY_INIT_FILE ("none"), //string; "none" or "<filename>.mem"
	.MEMORY_INIT_PARAM ("" ), //string;
	.USE_MEM_INIT (0), //integer; 0,1
	.MESSAGE_CONTROL (0), //integer; 0,1
	.USE_EMBEDDED_CONSTRAINT (0), //integer: 0,1
	.MEMORY_OPTIMIZATION ("true"), //string; "true", "false"
	// Port A module parameters
	.WRITE_DATA_WIDTH_A (32), //positive integer
	.BYTE_WRITE_WIDTH_A (32), //integer; 8, 9, or WRITE_DATA_WIDTH_A value
	.ADDR_WIDTH_A (7), //positive integer
	// Port B module parameters
	.READ_DATA_WIDTH_B (32), //positive integer
	.ADDR_WIDTH_B (7), //positive integer
	.READ_RESET_VALUE_B ("0"), //string
	.READ_LATENCY_B (1) //non-negative integer
) cu_addr_lut (
	// Port A module ports
	.clka (dma_clk),
	.ena (reg_wr_adr[10]),
	.wea (reg_wr_vld & reg_wr_adr[10]),
	.addra (reg_wr_adr[8:2]),//We have 7bits of addr so use bits 8:2 from axilite address
	.dina (reg_wr_dat),
	// Port B module ports
	.clkb (dma_clk),
	.rstb (~dma_reset_n),
	.enb (CuISRIndexEn),
	.regceb (1'b1),
	.addrb (CuISRIndex),
	.doutb (Offset)
);


//*****************************************************************************//

/*
 *  This is CDC path between in the irq's from the compute unit clock domain
 *  to the PCIe Axi clock domain , which is the clock frequency at which the
 *  ERT RTL controller logic works.
 *  This is a standard Xilinx Primitive for clock crossing.
 */
 
wire [127:0] irq_cu_cdc;

xpm_cdc_array_single #(

  //Common module parameters
  .DEST_SYNC_FF   (2), // integer; range: 2-10
  .SIM_ASSERT_CHK (0), // integer; 0=disable simulation messages, 1=enable simulation messages
  .SRC_INPUT_REG  (0), // integer; 0=do not register input, 1=register input
  .WIDTH          (128)  // integer; range: 1-1024

) xpm_cdc_array_single_inst (

  .src_clk  (src_clk),  // optional; required when SRC_INPUT_REG = 1
  .src_in   (irq_cu),
  .dest_clk (dma_clk),
  .dest_out (irq_cu_cdc)

);

//IRQ must be brought low for at least one cycle to handle back2back interrupt corner case
wire clear_irq_sr0;
wire clear_irq_sr1;
wire clear_irq_sr2;
wire clear_irq_sr3;

assign clear_irq_sr0 = reg_rd_vld && reg_rd_adr==11'h000;
assign clear_irq_sr1 = reg_rd_vld && reg_rd_adr==11'h004;
assign clear_irq_sr2 = reg_rd_vld && reg_rd_adr==11'h008;
assign clear_irq_sr3 = reg_rd_vld && reg_rd_adr==11'h00C;

//Interrupt host if enabled and status register needs to be cleared
assign irq_sr0 = StatusRegister[31:0] != 32'b0 && GIE && !clear_irq_sr0;
assign irq_sr1 = StatusRegister[63:32] != 32'b0 && GIE && !clear_irq_sr1;
assign irq_sr2 = StatusRegister[95:64] != 32'b0 && GIE && !clear_irq_sr2;
assign irq_sr3 = StatusRegister[127:96] != 32'b0 && GIE && !clear_irq_sr3;

assign irq_slotavailable = CqSlotQueueEnable && CqSlotQueue != 128'b0;

//****************************************************************************//

//DMA Module Instantiation
CuDmaController_rtl CuDmaController_rtl(  
    .clk                ( dma_clk               ),
    .reset_n            ( dma_reset_n           ),   
    .CuDmaEnable        ( CuDmaEnable       ),
    .CuDmaQueue         ( CuDmaQueue       ),
    .ap_start           ( ap_start_cudma    ),
    .ap_done            ( ap_done_cudma     ),
    .CuDmaQueue_reg     ( CuDmaQueue_reg    ),    
    .clear              ( clear_CuDmaQueue  ),
    .state0             ( DEBUG_CuDmaController_State0)
);

assign irq_cu_completion = CuDoneStatus != 128'b0;
//ISR Module Instantiation
CuISR CuISR(  
    .clk                ( dma_clk               ),
    .reset_n            ( dma_reset_n           ),
   
    .CuIsrEnable        ( CuIsrHandlerEnable),
    
    .CU_INT_IN          ( irq_cu_cdc        ),
    
    .no_of_computeunits ( no_of_computeunits),
    .CuIndex(CuISRIndex),
    .CuIndexEnable(CuISRIndexEn),  
    
    .host_rready        ( host_rready       ),
    .host_rvalid        ( host_rvalid       ),
    .host_araddr        ( host_araddr       ),
    
    .ap_start           ( ap_start_cuisr    ),
    .ap_done            ( ap_done_cuisr     ),   

    .cuisr_update       (cuisr_update       ),
    .cuisr_update_idx   (cuisr_update_idx   ),
    
    //DEBUG SIGNALS
    .state0             ( DEBUG_CuISR_State0)
);

// -----------------------------------------------------------------------
// AXIL Generic Register Block {{{
// -----------------------------------------------------------------------
axil_reg #( 
   .C_AXIL_DATA_W  (C_AXIL_DATA_W),
   .C_AXIL_ADDR_W  (C_AXIL_ADDR_W)
) usr_flr_axil_reg_i (
   .O_REG_RD_VLD       (reg_rd_vld),
   .O_REG_RD_ADR       (reg_rd_adr),
   .I_REG_RD_DONE      (reg_rd_done),
   .I_REG_RD_RSP       (reg_rd_rsp),
   .I_REG_RD_DAT       (reg_rd_dat),
   
   .O_REG_WR_VLD       (reg_wr_vld),
   .O_REG_WR_ADR       (reg_wr_adr),
   .O_REG_WR_BE        (reg_wr_be),
   .O_REG_WR_DAT       (reg_wr_dat),
   .I_REG_WR_DONE      (reg_wr_done),
   .I_REG_WR_RSP       (reg_wr_rsp),

    // AXIL Register Interface
    .S_AXIL_ACLK	(dma_clk),
    .S_AXIL_ARESETN	(dma_reset_n),
    .S_AXIL_AWADDR	(host_awaddr),
    .S_AXIL_AWPROT	(host_awprot),
    .S_AXIL_AWVALID	(host_awvalid),
    .S_AXIL_AWREADY	(host_awready),
    .S_AXIL_WDATA	(host_wdata),
    .S_AXIL_WSTRB	(host_wstrb),
    .S_AXIL_WVALID	(host_wvalid),
    .S_AXIL_WREADY	(host_wready),
    .S_AXIL_BRESP	(host_bresp),
    .S_AXIL_BVALID	(host_bvalid),
    .S_AXIL_BREADY	(host_bready),
    .S_AXIL_ARADDR	(host_araddr),
    .S_AXIL_ARPROT	(host_arprot),
    .S_AXIL_ARVALID	(host_arvalid),
    .S_AXIL_ARREADY	(host_arready),
    .S_AXIL_RDATA	(host_rdata),
    .S_AXIL_RRESP	(host_rresp),
    .S_AXIL_RVALID	(host_rvalid),
    .S_AXIL_RREADY	(host_rready)
);
// AXIL Generic Register Block }}}
// -----------------------------------------------------------------------

// -----------------------------------------------------------------------
// AXIL READ {{{
// -----------------------------------------------------------------------
always @(posedge dma_clk) begin
   if (!dma_reset_n) begin
      reg_rd_done        <= 0;
      reg_rd_rsp         <= 0;
      reg_rd_dat         <= 0;
   end else begin
      // Defaults
      reg_rd_done        <= 0;
      reg_rd_rsp         <= 0;
      reg_rd_dat         <= 0;

      if (reg_rd_vld) begin
         reg_rd_done <= 1'b1;
         case (reg_rd_adr)
            11'h000: reg_rd_dat <= StatusRegister[31:0];       
            11'h004: reg_rd_dat <= StatusRegister[63:32];         
            11'h008: reg_rd_dat <= StatusRegister[95:64];       
            11'h00C: reg_rd_dat <= StatusRegister[127:96];
            
            11'h018 : reg_rd_dat <= CuDmaEnable;
            11'h01C : reg_rd_dat <= CuDmaQueue[31:0];
            11'h020 : reg_rd_dat <= CuDmaQueue[63:32];
            11'h024 : reg_rd_dat <= CuDmaQueue[95:64];
            11'h028 : reg_rd_dat <= CuDmaQueue[127:96];
            
            11'h02C : reg_rd_dat <= SlotSize;
            11'h034 : reg_rd_dat <= NoofSlots;      
            11'h03C : reg_rd_dat <= CqBaseAddress;
            
            11'h040 : reg_rd_dat <= CuIsrHandlerEnable;
            11'h044 : reg_rd_dat <= CuDoneStatus[31:0];
            11'h048 : reg_rd_dat <= CuDoneStatus[63:32];
            11'h04C : reg_rd_dat <= CuDoneStatus[95:64];
            11'h050 : reg_rd_dat <= CuDoneStatus[127:96];
  
            11'h054 : reg_rd_dat <= CqSlotQueueEnable;
            11'h058 : reg_rd_dat <= CqSlotQueue[31:0];
            11'h05C : reg_rd_dat <= CqSlotQueue[63:32];
            11'h060 : reg_rd_dat <= CqSlotQueue[95:64];
            11'h064 : reg_rd_dat <= CqSlotQueue[127:96];
            
            11'h068 : reg_rd_dat <= no_of_computeunits;
            
            11'h100: reg_rd_dat <= GIE;
            
            11'h300: reg_rd_dat <= DEBUG_StatusRegister_State_Write;
            11'h304: reg_rd_dat <= DEBUG_StatusRegister_State_Read;
            11'h318: reg_rd_dat <= DEBUG_CuDmaController_State0;
            11'h328: reg_rd_dat <= DEBUG_CuISR_State0;

            default : begin
               reg_rd_rsp         <= 2'b10; //SLV Err
               reg_rd_dat         <= 32'hDEADBEEF;
            end

         endcase
      end //reg_rd_vld
   end
end
// AXIL READ }}}
// -----------------------------------------------------------------------

// -----------------------------------------------------------------------
// AXIL WRITE {{{
// -----------------------------------------------------------------------
always @(posedge dma_clk) begin
   if (!dma_reset_n) begin
      reg_wr_done            <= 0;
      reg_wr_rsp             <= 2'b0;
      StatusRegister[31:0]   <= 32'b0;
      StatusRegister[63:32]  <= 32'b0;
      StatusRegister[95:64]  <= 32'b0;
      StatusRegister[127:96] <= 32'b0;
      CuDmaQueue[31:0]       <= 32'b0;
      CuDmaQueue[63:32]      <= 32'b0;
      CuDmaQueue[95:64]      <= 32'b0;
      CuDmaQueue[127:96]     <= 32'b0;
      CqSlotQueue[31:0]      <= 32'b0;
      CqSlotQueue[63:32]     <= 32'b0;
      CqSlotQueue[95:64]     <= 32'b0;
      CqSlotQueue[127:96]    <= 32'b0;
      CuDoneStatus[31:0]      <= 32'b0;
      CuDoneStatus[63:32]     <= 32'b0;
      CuDoneStatus[95:64]     <= 32'b0;
      CuDoneStatus[127:96]    <= 32'b0;
   end else begin
      // Defaults
      reg_wr_done            <= 0;
      reg_wr_rsp             <= 2'b0;
      StatusRegister[31:0]   <= (reg_rd_vld && reg_rd_adr==11'h000) ? 32'b0 : StatusRegister[31:0];
      StatusRegister[63:32]  <= (reg_rd_vld && reg_rd_adr==11'h004) ? 32'b0 : StatusRegister[63:32];
      StatusRegister[95:64]  <= (reg_rd_vld && reg_rd_adr==11'h008) ? 32'b0 : StatusRegister[95:64];
      StatusRegister[127:96] <= (reg_rd_vld && reg_rd_adr==11'h00C) ? 32'b0 : StatusRegister[127:96];
      CuDmaQueue[31:0]       <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[31:0];
      CuDmaQueue[63:32]      <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[63:32];
      CuDmaQueue[95:64]      <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[95:64];
      CuDmaQueue[127:96]     <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[127:96];
      CqSlotQueue[31:0]      <= (reg_rd_vld && reg_rd_adr==11'h058) ? 32'b0 : CqSlotQueue[31:0];
      CqSlotQueue[63:32]     <= (reg_rd_vld && reg_rd_adr==11'h05C) ? 32'b0 : CqSlotQueue[63:32];
      CqSlotQueue[95:64]     <= (reg_rd_vld && reg_rd_adr==11'h060) ? 32'b0 : CqSlotQueue[95:64];
      CqSlotQueue[127:96]    <= (reg_rd_vld && reg_rd_adr==11'h064) ? 32'b0 : CqSlotQueue[127:96];

      //CuDoneStatus is updated by CuISR controller
      if(cuisr_update) begin
         if(reg_rd_vld && reg_rd_adr==11'h044)      CuDoneStatus[31:0]    <= 1<<cuisr_update_idx;
         else if(reg_rd_vld && reg_rd_adr==11'h048) CuDoneStatus[63:32]   <= 1<<(cuisr_update_idx-32);
         else if(reg_rd_vld && reg_rd_adr==11'h04C) CuDoneStatus[95:64]   <= 1<<(cuisr_update_idx-64);
         else if(reg_rd_vld && reg_rd_adr==11'h050) CuDoneStatus[127:96]  <= 1<<(cuisr_update_idx-96);
         else  CuDoneStatus <= CuDoneStatus | (1<<cuisr_update_idx);
      end
      else begin
         if(reg_rd_vld && reg_rd_adr==11'h044)      CuDoneStatus[31:0]    <= 32'b0;
         else if(reg_rd_vld && reg_rd_adr==11'h048) CuDoneStatus[63:32]   <= 32'b0;
         else if(reg_rd_vld && reg_rd_adr==11'h04C) CuDoneStatus[95:64]   <= 32'b0;
         else if(reg_rd_vld && reg_rd_adr==11'h050) CuDoneStatus[127:96]  <= 32'b0;
         else  CuDoneStatus <= CuDoneStatus;
      end

      if (reg_wr_vld) begin
         reg_wr_done <= 1'b1;
         case (reg_wr_adr)
            11'h000: StatusRegister[31:0]   <= (reg_rd_vld && reg_rd_adr==11'h000) ? reg_wr_dat : StatusRegister[31:0] | reg_wr_dat;
            11'h004: StatusRegister[63:32]  <= (reg_rd_vld && reg_rd_adr==11'h004) ? reg_wr_dat : StatusRegister[63:32] | reg_wr_dat;        
            11'h008: StatusRegister[95:64]  <= (reg_rd_vld && reg_rd_adr==11'h008) ? reg_wr_dat : StatusRegister[95:64] | reg_wr_dat;      
            11'h00C: StatusRegister[127:96] <= (reg_rd_vld && reg_rd_adr==11'h00C) ? reg_wr_dat : StatusRegister[127:96] | reg_wr_dat;

            11'h018: CuDmaEnable            <= reg_wr_dat[0];
            11'h01C: CuDmaQueue[31:0]       <= (clear_CuDmaQueue) ? reg_wr_dat : CuDmaQueue[31:0] | reg_wr_dat;
            11'h020: CuDmaQueue[63:32]      <= (clear_CuDmaQueue) ? reg_wr_dat : CuDmaQueue[63:32] | reg_wr_dat;        
            11'h024: CuDmaQueue[95:64]      <= (clear_CuDmaQueue) ? reg_wr_dat : CuDmaQueue[95:64] | reg_wr_dat;      
            11'h028: CuDmaQueue[127:96]     <= (clear_CuDmaQueue) ? reg_wr_dat : CuDmaQueue[127:96] | reg_wr_dat;
            
            11'h02C: SlotSize               <= reg_wr_dat[12:0];
            11'h034: NoofSlots              <= reg_wr_dat[7:0];
            11'h03C: CqBaseAddress          <= reg_wr_dat;
            
            11'h040: CuIsrHandlerEnable     <= reg_wr_dat[0];
  
            11'h054: CqSlotQueueEnable      <= reg_wr_dat[0];  
            11'h058: CqSlotQueue[31:0]      <= (reg_rd_vld && reg_rd_adr==11'h058) ? reg_wr_dat : CqSlotQueue[31:0] | reg_wr_dat;
            11'h05C: CqSlotQueue[63:32]     <= (reg_rd_vld && reg_rd_adr==11'h05C) ? reg_wr_dat : CqSlotQueue[63:32] | reg_wr_dat;        
            11'h060: CqSlotQueue[95:64]     <= (reg_rd_vld && reg_rd_adr==11'h060) ? reg_wr_dat : CqSlotQueue[95:64] | reg_wr_dat;      
            11'h064: CqSlotQueue[127:96]    <= (reg_rd_vld && reg_rd_adr==11'h064) ? reg_wr_dat : CqSlotQueue[127:96] | reg_wr_dat;
            
            11'h068: no_of_computeunits     <= reg_wr_dat[7:0];  
            
            11'h100: GIE                    <= reg_wr_dat[0];

	    //Note that address 0x4XX will be written into SDPRAM block above which is shared with CuISR module
         endcase
      end // reg_wr_vld
   end
end
// AXIL WRITE }}}
// -----------------------------------------------------------------------

endmodule



