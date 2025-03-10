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
module axi_bypass_addr (
input  			aclk,
input  			aresetn,
(* X_INTERFACE_PARAMETER = "SUPPORTS_NARROW_BURST 1, NUM_WRITE_OUTSTANDING 32, NUM_READ_OUTSTANDING 32" *)
input wire [1 : 0] 	s_axib_awid,
input wire [63 : 0] 	s_axib_awaddr,
input wire [7 : 0] 	s_axib_awlen,
input wire [7 : 0] 	s_axib_awuser,
input wire [2 : 0] 	s_axib_awsize,
input wire [1 : 0] 	s_axib_awburst,
input wire [2 : 0] 	s_axib_awprot,
input wire 		s_axib_awvalid,

output wire 		s_axib_awready,

input wire 		s_axib_awlock,
input wire [3 : 0] 	s_axib_awcache,
input wire [511 : 0] 	s_axib_wdata,
input wire [63 : 0]	s_axib_wstrb,
input wire 		s_axib_wlast,
input wire 		s_axib_wvalid,

output wire 		s_axib_wready,
output wire [1 : 0] 	s_axib_bid,
output wire [1 : 0] 	s_axib_bresp,
output wire 		s_axib_bvalid,

input wire 		s_axib_bready,
input wire [1 : 0] 	s_axib_arid,
input wire [63 : 0] 	s_axib_araddr,
input wire [7 : 0] 	s_axib_arlen,
input wire [7 : 0] 	s_axib_aruser,
input wire [2 : 0] 	s_axib_arsize,
input wire [1 : 0] 	s_axib_arburst,
input wire [2 : 0] 	s_axib_arprot,
input wire 		s_axib_arvalid,

output wire 		s_axib_arready,

input wire 		s_axib_arlock,
input wire [3 : 0] 	s_axib_arcache,

output wire [1 : 0] 	s_axib_rid,
output wire [511 : 0] 	s_axib_rdata,
output wire [1 : 0] 	s_axib_rresp,
output wire 		s_axib_rlast,
output wire 		s_axib_rvalid,

input wire 		s_axib_rready,

(* X_INTERFACE_PARAMETER = "SUPPORTS_NARROW_BURST 1, NUM_WRITE_OUTSTANDING 32, NUM_READ_OUTSTANDING 32" *)
output wire [1 : 0] 	m_axib_awid,
output reg [63 : 0] 	m_axib_awaddr,
output wire [7 : 0] 	m_axib_awlen,
output wire [7 : 0] 	m_axib_awuser,
output wire [2 : 0] 	m_axib_awsize,
output wire [1 : 0] 	m_axib_awburst,
output wire [2 : 0] 	m_axib_awprot,
output wire 		m_axib_awvalid,

input wire 		m_axib_awready,

output wire 		m_axib_awlock,
output wire [3 : 0] 	m_axib_awcache,
output wire [511 : 0] 	m_axib_wdata,
output wire [63 : 0] 	m_axib_wstrb,
output wire 		m_axib_wlast,
output wire 		m_axib_wvalid,

input wire 		m_axib_wready,
input wire [1 : 0] 	m_axib_bid,
input wire [1 : 0] 	m_axib_bresp,
input wire 		m_axib_bvalid,

output wire 		m_axib_bready,
output wire [1 : 0] 	m_axib_arid,
output reg [63 : 0] 	m_axib_araddr,
output wire [7 : 0] 	m_axib_arlen,
output wire [7 : 0] 	m_axib_aruser,
output wire [2 : 0] 	m_axib_arsize,
output wire [1 : 0] 	m_axib_arburst,
output wire [2 : 0] 	m_axib_arprot,
output wire 		m_axib_arvalid,

input wire 		m_axib_arready,

output wire 		m_axib_arlock,
output wire [3 : 0] 	m_axib_arcache,

input wire [1 : 0] 	m_axib_rid,
input wire [511 : 0] 	m_axib_rdata,
input wire [1 : 0] 	m_axib_rresp,
input wire 		m_axib_rlast,
input wire 		m_axib_rvalid,

output wire 		m_axib_rready
);

//output
assign m_axib_awid = s_axib_awid;


always@(*)begin
  m_axib_awaddr = {32'h00000040, s_axib_awaddr[31:0]};
end
assign m_axib_awlen    = s_axib_awlen;
assign m_axib_awuser   = s_axib_awuser;
assign m_axib_awsize   = s_axib_awsize;
assign m_axib_awburst  = s_axib_awburst;
assign m_axib_awprot   = s_axib_awprot;
assign m_axib_awvalid  = s_axib_awvalid;
assign m_axib_awlock   = s_axib_awlock;
assign m_axib_awcache  = s_axib_awcache;
assign m_axib_wdata    = s_axib_wdata;
assign m_axib_wstrb    = s_axib_wstrb;
assign m_axib_wlast    = s_axib_wlast;
assign m_axib_wvalid   = s_axib_wvalid;
assign m_axib_bready   = s_axib_bready;
assign m_axib_arid     = s_axib_arid;

always@(*)begin
  m_axib_araddr = {32'h00000040, s_axib_araddr[31:0]};
end
assign m_axib_arlen   = s_axib_arlen;
assign m_axib_aruser  = s_axib_aruser;
assign m_axib_arsize  = s_axib_arsize;
assign m_axib_arburst = s_axib_arburst;
assign m_axib_arprot  = s_axib_arburst;
assign m_axib_arvalid = s_axib_arvalid;  
assign m_axib_arlock  = s_axib_arlock;
assign m_axib_arcache = s_axib_arcache;
assign m_axib_rready  = s_axib_rready;

//inputs
assign s_axib_awready  = m_axib_awready;
assign s_axib_wready   = m_axib_wready;
assign s_axib_bid      = m_axib_bid;
assign s_axib_bresp    = m_axib_bresp;
assign s_axib_bvalid   = m_axib_bvalid;
assign s_axib_arready  = m_axib_arready;
assign s_axib_rid      = m_axib_rid;
assign s_axib_rdata    = m_axib_rdata;
assign s_axib_rresp    = m_axib_rresp;
assign s_axib_rlast    = m_axib_rlast;
assign s_axib_rvalid   = m_axib_rvalid;
   
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

module CuISR(
    input   wire                clk             ,
    input   wire                reset_n         ,
    
    input   wire                CuIsrEnable     ,

    input   wire    [6:0]       no_of_computeunits,
    
    //128 Interrupt pins mapped to 4 32 bit registers.
    input   wire    [127:0]     CU_INT_IN,
    output  reg     [127:0]     cu_done_status,
    output  wire                irq_cu_completion ,
    output  reg    [6:0]        CuIndex=0,
    output  reg                 CuIndexEnable=0,
    output  reg                 ap_start=0,
    input   wire                ap_done,
    
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
     

/*
 * The cu_done_status register is updated with a bit which is corresponding to
 * the irq which was serviced. Once an Cu irq is serviced a completion bit is
 * set in these 4 registers, which inturn triggers an interrupt to the ERT
 * which then reads these registers to map the completed Computes to the
 * completed slots.
 */


always @(posedge clk)
begin
    if(!reset_n)
      cu_done_status <= 128'b0;
    else if(host_rready && host_rvalid && host_araddr[10:0] == 11'h44)
      cu_done_status[31:0] <= state[8] ? (1<<i) : 32'b0;
    else if(host_rready && host_rvalid && host_araddr[10:0] == 11'h48)
      cu_done_status[63:32] <= state[8] ? (1<<(i-32)) : 32'b0;
    else if(host_rready && host_rvalid && host_araddr[10:0] == 11'h4C)
      cu_done_status[95:64] <= state[8] ? (1<<(i-64)) : 32'b0;      
    else if(host_rready && host_rvalid && host_araddr[10:0] == 11'h50)
      cu_done_status[127:96] <= state[8] ? (1<<(i-96)) : 32'b0;      
    else if(state[8])
      cu_done_status <= cu_done_status | (1<<i);
end 

//Hold interrupt until completely cleared
assign irq_cu_completion = cu_done_status != 128'b0;

assign state0 = state; //For debug only

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

module embedded_scheduler_hw(

/*
 * clk port is connected to the 250 Mhz PCIe ClK
 */
input   clk							, 
/*
 * This port is connected to the pcie axi_resent_n port from xDMA IP
 */
input   reset_n							,


/* Axilite Bus for Read and Write Access to Register MAP, CSR ,
 * Status Resgister , IRQ etc.
 * This bus is mastered by Embedded Microblaze and CPU Host
 */
input   wire    [31:0]      host_awaddr     			,
input   wire    [2:0]       host_awprot     			,
input   wire                host_awvalid    			,
output  reg                 host_awready    	=0		,
input   wire    [31:0]      host_wdata      			,
input   wire    [3:0]       host_wstrb      			,
input   wire                host_wvalid     			,
output  reg                 host_wready     	=0		,
output  reg                 host_bvalid     	=0		,
output  wire    [1:0]       host_bresp      			,
input   wire                host_bready     			,

input   wire    [31:0]      host_araddr     			,
input   wire    [2:0]       host_arprot     			,
input   wire                host_arvalid    			,
output  reg                 host_arready    	=0		,
output  reg     [31:0]      host_rdata      	=0		,
output  wire    [1:0]       host_rresp      			,
output  reg                 host_rvalid     	=0		,
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
0x44    -> cu_done_status[31:0]         -> COR
0x48    -> cu_done_status[63:32]        -> COR
0x4C    -> cu_done_status[95:64]        -> COR
0x50    -> cu_done_status[127:96]       -> COR


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

/*
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

// AXI LITE Register Declarations
reg     [127:0] StatusRegister      =0; 
reg             CuDmaEnable         =0  ;
reg     [127:0] CuDmaQueue          =0  ;
reg             CuIsrHandlerEnable  =0  ;
wire    [127:0] cu_done_status          ;
reg             CqSlotQueueEnable   =0  ;
reg     [127:0] CqSlotQueue         =0  ;
reg             GIE                 =0  ;
reg     [6:0]   no_of_computeunits  =1  ;
wire    [6:0]   CuISRIndex;
wire            CuISRIndexEn;

// DEBUG SIGNALS 
wire    [2:0]   DEBUG_StatusRegister_State_Write;
wire    [1:0]   DEBUG_StatusRegister_State_Read;
wire    [3:0]   DEBUG_CuDmaController_State0;
wire    [8:0]   DEBUG_CuISR_State0; 

// Clear signal for CuDMA queue when current queue is being processed
wire            			 clear_CuDmaQueue  ;

/*
* Distributed memory for CU addresses. Added to support non contiguous
* CU addressing (5.2 DSAs and newer). 128 32bit entries means we have 4k bits of space
*
*/

wire cu_addr_en;
wire cu_addr_wea;
wire [6:0] cu_addr_addr;
wire [31:0] cu_addr_wdata;
wire [31:0] cu_addr_rdata;

//Bit 10 indicates we want to access cu_addr memory 0x400-0x5FC
//We have 7bits of addr so use bits 8:2 from axilite address
assign cu_addr_en = host_awaddr[10] || CuISRIndexEn;
assign cu_addr_wea = host_wvalid && host_awvalid && host_awaddr[10] && !CuISRIndexEn;
assign cu_addr_addr = CuISRIndexEn ? CuISRIndex :  host_awaddr[8:2];
assign cu_addr_wdata = host_wdata;
assign Offset = cu_addr_rdata;

xpm_memory_dpdistram # (
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
	.READ_DATA_WIDTH_A (32), //positive integer
	.BYTE_WRITE_WIDTH_A (32), //integer; 8, 9, or WRITE_DATA_WIDTH_A value
	.ADDR_WIDTH_A (7), //positive integer
	.READ_RESET_VALUE_A ("0"), //string
	.READ_LATENCY_A (1), //non-negative integer
	// Port B module parameters
	.READ_DATA_WIDTH_B (32), //positive integer
	.ADDR_WIDTH_B (7), //positive integer
	.READ_RESET_VALUE_B ("0"), //string
	.READ_LATENCY_B (1) //non-negative integer
) cu_addr_lut (
	// Port A module ports
	.clka (clk),
	.rsta (~reset_n),
	.ena (cu_addr_en),
	.regcea (1'b1),
	.wea (cu_addr_wea),
	.addra (cu_addr_addr),
	.dina (cu_addr_wdata),
	.douta (cu_addr_rdata),
	// Port B module ports
	.clkb (1'b0),
	.rstb (1'b1),
	.enb (1'b0),
	.regceb (1'b0),
	.addrb (7'b0),
	.doutb ()
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
  .dest_clk (clk),
  .dest_out (irq_cu_cdc)

);

//*****************************************************************************//
/*
 * This state machine controls the write handshake signals of the axilite bus 
 * which is used to read and write to the register space within this module
 * Note that the slave waits for both awvalid and wvalid to be high before 
 * asserting ready signals
 */
reg        [1:0] state_write 		=1;
localparam [1:0]  IDLE_WRITE               =2'b01,
                  WAIT_FOR_BREADY_WRITE    =2'b10;

always @(posedge clk)
begin
 if(!reset_n)
     state_write <= IDLE_WRITE;
 else 
 begin
     case (state_write)
     IDLE_WRITE : 
     begin //Dont transition if the host is trying to write to LUTRAM while its busy being accessed by CuISR
        if(host_awvalid && host_wvalid && !(host_awaddr[10] && CuISRIndexEn))
        begin
           state_write    <= WAIT_FOR_BREADY_WRITE;
           host_wready     <= 1;
           host_awready     <= 1;    
           host_bvalid    <= 1;
        end 
     end // end of  IDLE_WRITE
     
     WAIT_FOR_BREADY_WRITE :
     begin
        host_awready        <= 0;
        host_wready         <= 0;
        if(host_bready)
           begin
              host_bvalid        <= 0;
              state_write        <= IDLE_WRITE;
           end 
     end 
     endcase
 end // end of else block 
end 



//****************************************************************************//
/*
 * This state machine controls the read handshake signals of the axilite bus 
 * which is used to read and write to the register space witin this module.
 * Since the read might be to a memory we must hold valid low until the data
 * is available from the memory
 */


reg 		    [1:0]	state_read		        =1;	
localparam	[1:0]	IDLE_READ		          =2'b01,
			            WAIT_FOR_RVALID_READ	=2'b10;

always @(posedge clk)
begin
	if(!reset_n) begin
		state_read <= IDLE_READ;
	end 
	else begin
	   case (state_read)
      IDLE_READ : 
        begin
		      if(host_arvalid)
		        begin
	              state_read	<= WAIT_FOR_RVALID_READ;
	              host_rvalid	<= 1;
	              host_arready <= 1;
		        end 
		  end // end of IDLE_READ

     WAIT_FOR_RVALID_READ :
        begin
         host_arready       <= 0;
         if(host_rready)
           begin
              state_read	<= IDLE_READ;
	            host_rvalid 	<= 0;
           end 
        end // end of WAIT_FOR_RVALID_READ
	    endcase
	end // end of else block 
end // end of always block 


//****************************************************************************//
/*
 * This always block defines the logic to map the correct read data to the rdata
 * port of the axilite bus based on the address request
 */


always @(posedge clk)
begin
    if(host_arvalid)
    begin
        case (host_araddr[10:0])

        11'h0: host_rdata <= StatusRegister[31:0];       
        11'h4: host_rdata <= StatusRegister[63:32];         
        11'h8: host_rdata <= StatusRegister[95:64];       
        11'hC: host_rdata <= StatusRegister[127:96];
        
        11'h18 : host_rdata <= CuDmaEnable;
        11'h1C : host_rdata <= CuDmaQueue[31:0];
        11'h20 : host_rdata <= CuDmaQueue[63:32];
        11'h24 : host_rdata <= CuDmaQueue[95:64];
        11'h28 : host_rdata <= CuDmaQueue[127:96];
        
        11'h2C : host_rdata <= SlotSize;
        11'h34 : host_rdata <= NoofSlots;      
        11'h3C : host_rdata <= CqBaseAddress;
        
        11'h40 : host_rdata <= CuIsrHandlerEnable;
        11'h44 : host_rdata <= cu_done_status[31:0];
        11'h48 : host_rdata <= cu_done_status[63:32];
        11'h4C : host_rdata <= cu_done_status[95:64];
        11'h50 : host_rdata <= cu_done_status[127:96];
  
        11'h54 : host_rdata <= CqSlotQueueEnable;
        11'h58 : host_rdata <= CqSlotQueue[31:0];
        11'h5C : host_rdata <= CqSlotQueue[63:32];
        11'h60 : host_rdata <= CqSlotQueue[95:64];
        11'h64 : host_rdata <= CqSlotQueue[127:96];
        
        11'h68 : host_rdata <= no_of_computeunits;
        
        11'h100: host_rdata <= GIE;
        
        
        11'h300: host_rdata <= DEBUG_StatusRegister_State_Write;
        11'h304: host_rdata <= DEBUG_StatusRegister_State_Read;
        11'h318: host_rdata <= DEBUG_CuDmaController_State0;
        11'h328: host_rdata <= DEBUG_CuISR_State0;
        
/*
 * DEADBEEF is sent back in case a read is performed to unknown address space
 * within the ERT controller address space
 */        
        default: host_rdata <= 32'hDEADBEEF;                
        endcase
    end
end 

//*****************************************************************************//
/*
 * This always block has the control logic storing and clearing the values of
 * the Status Register. When ever axilite read is performed to this address
 * location in the register map, the contents of the Status Register are
 * cleared to 0. When a axilite write is performed the data is ored with the
 * existing data, there allowing the ERT firmware to directly write into this
 * registor without having to read modify write.
 */

always @(posedge clk)
begin
    if(!reset_n)
      StatusRegister <= 128'b0;
    else if(host_rvalid && host_rready && (host_araddr[10:0] == 11'h00)) // Read request
      StatusRegister[31:0] <= (host_wvalid && host_wready && (host_awaddr[10:0] == 11'h00)) ? host_wdata : 32'b0;
    else if(host_rvalid && host_rready && (host_araddr[10:0] == 11'h04)) // Read request
      StatusRegister[63:32] <= (host_wvalid && host_wready && (host_awaddr[10:0] == 11'h04)) ? host_wdata : 32'b0;
    else if(host_rvalid && host_rready && (host_araddr[10:0] == 11'h08)) // Read request
      StatusRegister[95:64] <= (host_wvalid && host_wready && (host_awaddr[10:0] == 11'h08)) ? host_wdata : 32'b0;
    else if(host_rvalid && host_rready && (host_araddr[10:0] == 11'h0C)) // Read request
      StatusRegister[127:96] <= (host_wvalid && host_wready && (host_awaddr[10:0] == 11'h0C)) ? host_wdata : 32'b0;     
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h00)) // Write request
      StatusRegister[31:0] <= StatusRegister[31:0] | host_wdata;
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h04)) // Write request
      StatusRegister[63:32] <= StatusRegister[63:32] | host_wdata; 
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h08)) // Write request
      StatusRegister[95:64] <= StatusRegister[95:64] | host_wdata; 
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h0C)) // Write request
      StatusRegister[127:96] <= StatusRegister[127:96] | host_wdata;                   
end // end of always block

//Interrupt host if enabled and status register needs to be cleared
assign irq_sr0 = StatusRegister[31:0] != 32'b0 && GIE;
assign irq_sr1 = StatusRegister[63:32] != 32'b0 && GIE;
assign irq_sr2 = StatusRegister[95:64] != 32'b0 && GIE;
assign irq_sr3 = StatusRegister[127:96] != 32'b0 && GIE;

//***************************************************************************//
/*
 * This always block is used to assigned axilite write data to the appropriate 
 * CSR registers. Few of the others are assigned in seperate always blocks.
 */

always @(posedge clk)
begin
    if(host_wvalid && host_wready)
    begin
        case (host_awaddr[10:0])
           11'h18: CuDmaEnable         <= host_wdata[0];
           11'h2C: SlotSize            <= host_wdata[12:0];
           11'h34: NoofSlots           <= host_wdata[7:0];
           11'h3C: CqBaseAddress       <= host_wdata;
           11'h40: CuIsrHandlerEnable  <= host_wdata[0];
           11'h54: CqSlotQueueEnable   <= host_wdata[0];
           11'h68: no_of_computeunits  <= host_wdata[7:0];
           11'h100: GIE                <= host_wdata[0];
        endcase
    end
end //end of always block 

/*
 * The the bresp ands rresp sginals for the axilite bus are tied to 0
 */
assign host_bresp = 0;
assign host_rresp = 0; 

//***************************************************************************//

/*
 * When there is a axilite write request to address locations 1C,20,24,28, the
 * data is written in to one of the CuDmaQueue* Registers. After a clear the CuDMAQueue is reset
 */

always @(posedge clk)
begin
    if(!reset_n) begin
      CuDmaQueue <= 128'b0;
    end
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h1C)) begin // Write request
      CuDmaQueue[31:0] <= (clear_CuDmaQueue) ? host_wdata : CuDmaQueue[31:0] | host_wdata;
      CuDmaQueue[63:32] <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[63:32];
      CuDmaQueue[95:64] <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[95:64];
      CuDmaQueue[127:96] <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[127:96];
    end
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h20)) begin // Write request
      CuDmaQueue[31:0] <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[31:0];
      CuDmaQueue[63:32] <= (clear_CuDmaQueue) ? host_wdata : CuDmaQueue[63:32] | host_wdata;
      CuDmaQueue[95:64] <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[95:64];
      CuDmaQueue[127:96] <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[127:96];
    end
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h24)) begin // Write request
      CuDmaQueue[31:0] <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[31:0];
      CuDmaQueue[63:32] <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[63:32];
      CuDmaQueue[95:64] <= (clear_CuDmaQueue) ? host_wdata : CuDmaQueue[95:64] | host_wdata;
      CuDmaQueue[127:96] <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[127:96];
    end
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h28)) begin // Write request
      CuDmaQueue[31:0] <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[31:0];
      CuDmaQueue[63:32] <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[63:32];
      CuDmaQueue[95:64] <= (clear_CuDmaQueue) ? 32'b0 : CuDmaQueue[95:64];
      CuDmaQueue[127:96] <= (clear_CuDmaQueue) ? host_wdata : CuDmaQueue[127:96] | host_wdata;
    end
    else if(clear_CuDmaQueue) begin
      CuDmaQueue <= 128'b0;
    end
end // end of always block

//****************************************************************************//
/*
 * This always block is used to write axilite date to the CqSlotQueue, and
 * update the CuSlotCount by 1 everytime there is a write request to address
 * space 58,5c,60,64. When there is read request both the count and the queue
 * values are cleared to 0. The CqSlotQueue register is essentially used for
 * indicating a new slot in the commadn queue. This is populated by the HOst,
 * when ever atleast 1 bit is set in the CqSlotQueue resgiter. The count
 * values is incremented as a result of this write , leads to an interrupt
 * being issued to the ERT which will trigger an ERT read and hence clear this
 * space and also figure out which command slot was configured by the host and
 * perform the tasks associated with the particular command Slot.
 */

always @(posedge clk)
begin
    if(!reset_n)
      CqSlotQueue <= 128'b0;
    else if(host_rvalid && host_rready && (host_araddr[10:0] == 11'h58)) // Read request
      CqSlotQueue[31:0] <= (host_wvalid && host_wready && (host_awaddr[10:0] == 11'h58)) ? host_wdata : 32'b0;
    else if(host_rvalid && host_rready && (host_araddr[10:0] == 11'h5C)) // Read request
      CqSlotQueue[63:32] <= (host_wvalid && host_wready && (host_awaddr[10:0] == 11'h5C)) ? host_wdata : 32'b0;
    else if(host_rvalid && host_rready && (host_araddr[10:0] == 11'h60)) // Read request
      CqSlotQueue[95:64] <= (host_wvalid && host_wready && (host_awaddr[10:0] == 11'h60)) ? host_wdata : 32'b0;
    else if(host_rvalid && host_rready && (host_araddr[10:0] == 11'h64)) // Read request
      CqSlotQueue[127:96] <= (host_wvalid && host_wready && (host_awaddr[10:0] == 11'h64)) ? host_wdata : 32'b0;     
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h58)) // Write request
      CqSlotQueue[31:0] <= CqSlotQueue[31:0] | host_wdata;
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h5C)) // Write request
      CqSlotQueue[63:32] <= CqSlotQueue[63:32] | host_wdata; 
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h60)) // Write request
      CqSlotQueue[95:64] <= CqSlotQueue[95:64] | host_wdata; 
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h64)) // Write request
      CqSlotQueue[127:96] <= CqSlotQueue[127:96] | host_wdata;                   
end // end of always block

assign irq_slotavailable = CqSlotQueueEnable && CqSlotQueue != 128'b0;

//****************************************************************************//

//DMA Module Instantiation
CuDmaController_rtl CuDmaController_rtl(  
    .clk                ( clk               ),
    .reset_n            ( reset_n           ),   
    .CuDmaEnable        ( CuDmaEnable       ),
    .CuDmaQueue         ( CuDmaQueue       ),
    .ap_start           ( ap_start_cudma    ),
    .ap_done            ( ap_done_cudma     ),
    .CuDmaQueue_reg     ( CuDmaQueue_reg    ),    
    .clear              ( clear_CuDmaQueue  ),
    .state0             ( DEBUG_CuDmaController_State0)
);

//ISR Module Instantiation
CuISR CuISR(  
    .clk                ( clk               ),
    .reset_n            ( reset_n           ),
   
    .CuIsrEnable        ( CuIsrHandlerEnable),
    .cu_done_status     ( cu_done_status    ),
    
    .CU_INT_IN          ( irq_cu_cdc        ),
    .irq_cu_completion  ( irq_cu_completion ),
    
    .no_of_computeunits ( no_of_computeunits),
    .CuIndex(CuISRIndex),
    .CuIndexEnable(CuISRIndexEn),  
    
    .host_rready        ( host_rready       ),
    .host_rvalid        ( host_rvalid       ),
    .host_araddr        ( host_araddr       ),
    
    .ap_start           ( ap_start_cuisr    ),
    .ap_done            ( ap_done_cuisr     ),    
    
    //DEBUG SIGNALS
    .state0             ( DEBUG_CuISR_State0)
);


assign DEBUG_StatusRegister_State_Write = state_write;
assign DEBUG_StatusRegister_State_Read  = state_read;

endmodule



// *************************************************************************
//    ____  ____
//   /   /\/   /
//  /___/  \  /
//  \   \   \/    Copyright 2019 Xilinx, Inc. All rights reserved.
//   \   \        This file contains confidential and proprietary
//   /   /        information of Xilinx, Inc. and is protected under U.S.
//  /___/   /\    and international copyright and other intellectual
//  \   \  /  \   property laws.
//   \___\/\___\
//
//
// *************************************************************************
//
// Disclaimer:
//
//       This disclaimer is not a license and does not grant any rights to
//       the materials distributed herewith. Except as otherwise provided in
//       a valid license issued to you by Xilinx, and to the maximum extent
//       permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE
//       "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
//       WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
//       INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY,
//       NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//       (2) Xilinx shall not be liable (whether in contract or tort,
//       including negligence, or under any other theory of liability) for
//       any loss or damage of any kind or nature related to, arising under
//       or in connection with these materials, including for any direct, or
//       any indirect, special, incidental, or consequential loss or damage
//       (including loss of data, profits, goodwill, or any type of loss or
//       damage suffered as a result of any action brought by a third party)
//       even if such damage or loss was reasonably foreseeable or Xilinx
//       had been advised of the possibility of the same.
//
// Critical Applications:
//
//       Xilinx products are not designed or intended to be fail-safe, or
//       for use in any application requiring fail-safe performance, such as
//       life-support or safety devices or systems, Class III medical
//       devices, nuclear facilities, applications related to the deployment
//       of airbags, or any other applications that could lead to death,
//       personal injury, or severe property or environmental damage
//       (individually and collectively, "Critical Applications"). Customer
//       assumes the sole risk and liability of any use of Xilinx products
//       in Critical Applications, subject only to applicable laws and
//       regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS
// FILE AT ALL TIMES.
//
// *************************************************************************
//
// Author: Xilinx 
//
// Module Name: fpga_icap_ctrl
// Project Name: 
// Description: 
//              
//              
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// ----------------------------------------------------------------------------------------------------------             

`timescale 1 ns / 1 ps

module fpga_icap_ctrl #( 
    parameter S_AXI_ADDR_WIDTH 		= 12,
    parameter S_AXI_DATA_WIDTH 		= 32,
    parameter M_AXI_ADDR_WIDTH          = 32,                        
    parameter M_AXI_DATA_WIDTH          = 32, 
    parameter STRB_WIDTH             	= M_AXI_DATA_WIDTH/8,
    parameter DATA_REG_USE           	= 4'd8,
    parameter CFG_REG_DATA_RD_ADDR_0 	= 32'h00000000, 
    parameter CFG_REG_DATA_WR_ADDR_0 	= 32'h00000000 
)
(

// Slave AXI4-Lite Interface -------------------------------------
  input  wire                           clk,
  input  wire                           resetn,

  input  wire  [S_AXI_ADDR_WIDTH-1:0]   s_axi_awaddr,
  output wire                           s_axi_awready,
  input  wire                           s_axi_awvalid,

  input  wire  [S_AXI_ADDR_WIDTH-1:0]   s_axi_araddr,
  output wire                           s_axi_arready,
  input  wire                           s_axi_arvalid,

  input  wire  [S_AXI_DATA_WIDTH-1:0]   s_axi_wdata,
  input  wire  [3:0]                    s_axi_wstrb,
  output wire                           s_axi_wready,
  input  wire                           s_axi_wvalid,

  output reg   [S_AXI_DATA_WIDTH-1:0]   s_axi_rdata,
  output wire  [1:0]                    s_axi_rresp,
  input  wire                           s_axi_rready,
  output wire                           s_axi_rvalid,

  output wire  [1:0]                    s_axi_bresp,
  input  wire                           s_axi_bready,
  output wire                           s_axi_bvalid,

// Master AXI4-Lite Interface -------------------------------------
  output reg   [M_AXI_ADDR_WIDTH-1:0] 	m_axi_awaddr,
  output reg                   	m_axi_awvalid, 
  input  wire                   	m_axi_awready, 
  output wire  [2:0] 			m_axi_awprot, 
  
  output reg  [M_AXI_DATA_WIDTH-1:0] 	m_axi_wdata,
  output wire  [STRB_WIDTH-1:0] 	m_axi_wstrb,
  output reg                   	m_axi_wvalid, 
  input  wire                   	m_axi_wready, 

  input  wire                   	m_axi_bvalid, 
  input  wire  [1:0] 			m_axi_bresp, 
  output reg                   	m_axi_bready, 
                                                                     
  output wire  [M_AXI_ADDR_WIDTH-1:0] 	m_axi_araddr,
  output wire                   	m_axi_arvalid, 
  input  wire                   	m_axi_arready, 
  output wire  [2:0] 			m_axi_arprot, 
                                                                     
  input  wire  [M_AXI_DATA_WIDTH-1:0] 	m_axi_rdata,
  input  wire                   	m_axi_rvalid, 
  input  wire  [1:0] 			m_axi_rresp, 
  output wire                   	m_axi_rready, 
 
  input  wire                           pcie_usp_link_up,
  input  wire                           pcie_dsp_link_up,
  input  wire                           pcie_ep_link_down
);

//-----------------------------------------------------------------------------------
// Register addressing
localparam ICAP_CTRL_REG_ADDR       	= 12'h000;
localparam PCIE_LINK_STATUS_ADDR    	= 12'h004;

localparam TIMEOUT_CNT_VAL_ADDR	    	= 12'h010;

localparam ICAP_DATA_WR_VAL_0_ADDR  	= 12'h020;
localparam ICAP_DATA_WR_VAL_1_ADDR  	= 12'h024;
localparam ICAP_DATA_WR_VAL_2_ADDR  	= 12'h028;
localparam ICAP_DATA_WR_VAL_3_ADDR  	= 12'h02C;
localparam ICAP_DATA_WR_VAL_4_ADDR  	= 12'h030;
localparam ICAP_DATA_WR_VAL_5_ADDR  	= 12'h034;
localparam ICAP_DATA_WR_VAL_6_ADDR  	= 12'h038;
localparam ICAP_DATA_WR_VAL_7_ADDR  	= 12'h03C;
localparam ICAP_CFG_DATA_WR_VAL_0_ADDR	= 12'h020;
localparam ICAP_DATA_WR_AD_ADDR     	= 12'h050;
localparam ICAP_CFG_DATA_WR_AD_ADDR 	= 12'h054;

// FSM States -----------------------------------------------------
localparam IDLE    	= 2'b00;
localparam LINK_CHECK  	= 2'b01;
localparam ICAP_WR_DATA = 2'b10;
localparam ICAP_CTRL_WR = 2'b11;

//-----------------------------------------------------------------
//                      Local Parameters 
//-----------------------------------------------------------------
localparam REG_WIDTH 			= M_AXI_DATA_WIDTH;
// default values
localparam TIMEOUT_CNT_VAL		= 32'h02FAF080;  // 1 sec
localparam ICAP_DATA_WR_VAL_0		= 32'hFFFFFFFF;  // Dummy word
localparam ICAP_DATA_WR_VAL_1		= 32'hAA995566;  // Sync word
localparam ICAP_DATA_WR_VAL_2		= 32'h20000000;  // Type 1 NOOP
localparam ICAP_DATA_WR_VAL_3		= 32'h30020001;  // Type 1 Write 1 words to WBSTAR
localparam ICAP_DATA_WR_VAL_4		= 32'h00400000;  // Warm boot start address (Load the desired address)
localparam ICAP_DATA_WR_VAL_5		= 32'h30008001;  // Type 1 Write 1 words to CMD
localparam ICAP_DATA_WR_VAL_6		= 32'h0000000F;  // IPROG command
localparam ICAP_DATA_WR_VAL_7		= 32'h20000000;  // Type 1 NOOP
localparam ICAP_CFG_DATA_WR_VAL_0	= 32'h00000001;
localparam ICAP_DATA_WR_AD_VAL		= 32'h00000100;
localparam ICAP_CFG_DATA_WR_AD_VAL	= 32'h0000010C;

//-----------------------------------------------------------------
//                   Wire/Reg Declarations 
//-----------------------------------------------------------------
// reg declarations
reg 	[S_AXI_ADDR_WIDTH-1:0] wr_addr_r;
reg 	[S_AXI_ADDR_WIDTH-1:0] rd_addr_r;

reg 	[S_AXI_DATA_WIDTH-1:0] icap_ctrl_reg_val_r;
reg 	[S_AXI_DATA_WIDTH-1:0] icap_data_wr_val_0_r;
reg 	[S_AXI_DATA_WIDTH-1:0] icap_data_wr_val_1_r;
reg 	[S_AXI_DATA_WIDTH-1:0] icap_data_wr_val_2_r;
reg 	[S_AXI_DATA_WIDTH-1:0] icap_data_wr_val_3_r;
reg 	[S_AXI_DATA_WIDTH-1:0] icap_data_wr_val_4_r;
reg 	[S_AXI_DATA_WIDTH-1:0] icap_data_wr_val_5_r;
reg 	[S_AXI_DATA_WIDTH-1:0] icap_data_wr_val_6_r;
reg 	[S_AXI_DATA_WIDTH-1:0] icap_data_wr_val_7_r;

reg 	[S_AXI_DATA_WIDTH-1:0] icap_cfg_data_wr_val_0_r;

reg 	[S_AXI_DATA_WIDTH-1:0] icap_data_wr_addr_r;
reg 	[S_AXI_DATA_WIDTH-1:0] icap_cfg_data_wr_addr_r;

reg 	[S_AXI_DATA_WIDTH-1:0] icap_timeout_cnt_val_r;

reg 	[M_AXI_ADDR_WIDTH-1:0] m_axi_araddr_r;
reg 	[M_AXI_ADDR_WIDTH-1:0] m_axi_awaddr_r;
reg 	[M_AXI_DATA_WIDTH-1:0] m_axi_wdata_r;
reg 	[M_AXI_ADDR_WIDTH-1:0] cfg_data_rd_addr_0_r,cfg_data_wr_addr_0_r;

reg 	[REG_WIDTH-1:0] data_reg_0_r;
reg 	[REG_WIDTH-1:0] data_reg_1_r;
reg 	[REG_WIDTH-1:0] data_reg_2_r;
reg 	[REG_WIDTH-1:0] data_reg_3_r;
reg 	          [3:0] state;
reg 	          [3:0] cfg_cnt_r;
reg 	          [3:0] num_data_rd_ctr; 
reg 	          [3:0] num_data_wr_ctr; 
reg 	          [1:0] pcie_link_up_r_d1;
reg 	          [1:0] pcie_link_up_r_d2;
reg 	          [1:0] pcie_link_up_r_dd;

reg 	rvalid_delayed;
reg 	icap_ctrl_reg_val_r_d1;
reg 	icap_ctrl_reg_val_r_d2;
reg 	icap_ctrl_reg_val_r_dd;
reg 	m_axi_arvalid_r;
reg 	m_axi_rready_r;
reg 	m_axi_awvalid_r;
reg 	m_axi_wvalid_r;
reg 	m_axi_bready_r;
reg 	wr_req_r 	    = 1'b0;
reg 	reset_released_r    = 1'b0;
reg 	rd_req_r            = 1'b0;
reg 	s_axi_bvalid_r = 1'b0;
reg 	s_axi_rvalid_r = 1'b0;
reg			state_wr_data;
reg			state_ctrl_wr;
// Wire declarations
wire			state_rd_data;

wire			rd_done		 = 1'b0;
reg             data_wr_done = 1'b0;
wire			data_rd_addr_req = 1'b0;
wire			data_rd_req	 = 1'b0;
wire			data_wr_addr_req = 1'b0;
wire			data_wr_req	 = 1'b0;
wire			data_wr_resp	 = 1'b0;
wire           [3:0] 	data_reg_cnt;
wire [REG_WIDTH-1:0] 	data_rd_addr_0;
wire [REG_WIDTH-1:0] 	data_wr_addr_0;

// Capture ICAP Control bit
always @(posedge clk)
 begin
  if(~resetn)begin
        icap_ctrl_reg_val_r_d1    <= 1'b0;
        icap_ctrl_reg_val_r_d2    <= 1'b0;
        icap_ctrl_reg_val_r_dd    <= 1'b0;
  end else begin
	icap_ctrl_reg_val_r_d1	  <= icap_ctrl_reg_val_r[0];
	icap_ctrl_reg_val_r_d2	  <= icap_ctrl_reg_val_r_d1;
	icap_ctrl_reg_val_r_dd	  <= (icap_ctrl_reg_val_r_d1 && ~icap_ctrl_reg_val_r_d2);
  end
 end

always @(posedge clk)
 begin
  if(~resetn)begin
        pcie_link_up_r_d1    <= 2'b0;
        pcie_link_up_r_d2    <= 2'b0;
        pcie_link_up_r_dd    <= 2'b0;
  end else begin
	pcie_link_up_r_d1	  <= {pcie_dsp_link_up,pcie_usp_link_up};
	pcie_link_up_r_d2	  <= pcie_link_up_r_d1;
	pcie_link_up_r_dd	  <= (pcie_link_up_r_d2 && ~pcie_link_up_r_d1);
  end
 end


// FSM to control ICAP write Sequence
always @(posedge clk)
 begin
  if(~resetn)begin
        state    	<= IDLE;
	state_wr_data	<= 1'b0;
	//state_ctrl_wr	<= 1'b0;
  end else begin
  	case(state) 
	 IDLE : begin
	  if(icap_ctrl_reg_val_r_dd) begin
	   state	 <= LINK_CHECK;
	  end else begin
	   state	 <= IDLE;
	  end	  
	  //state_ctrl_wr	 <= 1'b0;
	 end
	 LINK_CHECK : begin
	  if (pcie_link_up_r_dd[0]) begin
       	   state_wr_data  <= 1'b1;
	   state         <= ICAP_WR_DATA;
	  end else begin
           state_wr_data  <= 1'b0;
	   state	 <= LINK_CHECK;
	  end
	  //state_ctrl_wr	 <= 1'b0;
	 end
	 ICAP_WR_DATA : begin
	  if(data_wr_done) begin
	   state	 <= ICAP_CTRL_WR;
	   state_wr_data <= 1'b0;
	  end else begin
	   state	 <= ICAP_WR_DATA;
	  end
	 end
	 ICAP_CTRL_WR : begin // self clear the register bit <TBD>
	  //state_ctrl_wr	 <= 1'b1;
	  state		 <= IDLE;
	 end
	 default : begin
	  state		 <= IDLE;
	  state_wr_data  <= 1'b0;
	 end
	endcase
  end
 end

//-----------------------------------------------------------------
//-----------------------------------------------------------------
//------------------ Slave AXI4-Lite Interface -------------------
//-----------------------------------------------------------------
//-----------------------------------------------------------------

// capture the write request and address
  always @(posedge clk)
  begin
    if(~resetn)begin
        wr_req_r    <= 1'b0;
        wr_addr_r   <= 'h0;
    end else begin
      if(s_axi_awvalid && s_axi_awready) begin
          wr_req_r  <= 1'b1;
          wr_addr_r <= s_axi_awaddr;
      end else if (s_axi_bvalid_r && s_axi_bready) begin
          wr_req_r  <= 1'b0;
          wr_addr_r <= 'h0;
      end else begin
          wr_req_r  <= wr_req_r;
          wr_addr_r <= wr_addr_r;
      end
    end
  end

// capture the read request and address
  always @(posedge clk)
  begin
    if(~resetn)begin
      rd_req_r    <= 1'b0;
      rd_addr_r   <= 'h0;
    end else begin
      if(s_axi_arvalid && s_axi_arready) begin
        rd_req_r  <= 1'b1;
        rd_addr_r <= s_axi_araddr;
      end else if (s_axi_rvalid_r && s_axi_rready) begin
        rd_req_r  <= 1'b0;
        rd_addr_r <= rd_addr_r;
      end else begin
        rd_req_r  <= rd_req_r;
        rd_addr_r <= rd_addr_r;
      end
    end
  end

// Updating the registers : only two registers are needed <TBD>
  always @(posedge clk)
  begin
    if(~resetn) begin
       cfg_cnt_r	 	<= 4'h0;
       icap_ctrl_reg_val_r  	<= 32'h00000000;
       icap_timeout_cnt_val_r	<= 32'h00000000;
       icap_data_wr_val_0_r	<= 32'h00000000;
       icap_data_wr_val_1_r	<= 32'h00000000;
       icap_data_wr_val_2_r	<= 32'h00000000;
       icap_data_wr_val_3_r	<= 32'h00000000;
       icap_data_wr_val_4_r	<= 32'h00000000;
       icap_data_wr_val_5_r	<= 32'h00000000;
       icap_data_wr_val_6_r	<= 32'h00000000;
       icap_data_wr_val_7_r	<= 32'h00000000;
       icap_cfg_data_wr_val_0_r	<= 32'h00000000;
       icap_data_wr_addr_r	<= 32'h00000000;
       icap_cfg_data_wr_addr_r	<= 32'h00000000;
     end else begin
       cfg_cnt_r	 	<= {DATA_REG_USE};
       icap_timeout_cnt_val_r	<= {TIMEOUT_CNT_VAL};
       icap_data_wr_val_0_r	<= {ICAP_DATA_WR_VAL_0};
       icap_data_wr_val_1_r	<= {ICAP_DATA_WR_VAL_1};
       icap_data_wr_val_2_r	<= {ICAP_DATA_WR_VAL_2};
       icap_data_wr_val_3_r	<= {ICAP_DATA_WR_VAL_3};
       icap_data_wr_val_4_r	<= {ICAP_DATA_WR_VAL_4};
       icap_data_wr_val_5_r	<= {ICAP_DATA_WR_VAL_5};
       icap_data_wr_val_6_r	<= {ICAP_DATA_WR_VAL_6};
       icap_data_wr_val_7_r	<= {ICAP_DATA_WR_VAL_7};
       icap_cfg_data_wr_val_0_r	<= {ICAP_CFG_DATA_WR_VAL_0};
       icap_data_wr_addr_r	<= {ICAP_DATA_WR_AD_VAL};
       icap_cfg_data_wr_addr_r	<= {ICAP_CFG_DATA_WR_AD_VAL};
      if(wr_req_r && s_axi_wvalid && ~s_axi_bvalid_r) begin
        case (wr_addr_r) 
          ICAP_CTRL_REG_ADDR: begin
            icap_ctrl_reg_val_r     	 <= s_axi_wdata;
          end
          TIMEOUT_CNT_VAL_ADDR: begin
            icap_timeout_cnt_val_r  	 <= s_axi_wdata;
          end
          ICAP_DATA_WR_VAL_0_ADDR: begin
            icap_data_wr_val_0_r  	 <= s_axi_wdata;
          end
          ICAP_DATA_WR_VAL_1_ADDR: begin
            icap_data_wr_val_1_r  	 <= s_axi_wdata;
          end
          ICAP_DATA_WR_VAL_2_ADDR: begin
            icap_data_wr_val_2_r  	 <= s_axi_wdata;
          end
          ICAP_DATA_WR_VAL_3_ADDR: begin
            icap_data_wr_val_3_r  	 <= s_axi_wdata;
          end
          ICAP_DATA_WR_VAL_4_ADDR: begin
            icap_data_wr_val_4_r  	 <= s_axi_wdata;
          end
          ICAP_DATA_WR_VAL_5_ADDR: begin
            icap_data_wr_val_5_r  	 <= s_axi_wdata;
          end
          ICAP_DATA_WR_VAL_6_ADDR: begin
            icap_data_wr_val_6_r  	 <= s_axi_wdata;
          end
          ICAP_DATA_WR_VAL_7_ADDR: begin
            icap_data_wr_val_7_r  	 <= s_axi_wdata;
          end
          ICAP_CFG_DATA_WR_VAL_0_ADDR: begin
            icap_cfg_data_wr_val_0_r  	 <= s_axi_wdata;
          end
          ICAP_DATA_WR_AD_ADDR: begin
            icap_data_wr_addr_r 	 <= s_axi_wdata;
          end
          ICAP_CFG_DATA_WR_AD_ADDR: begin
            icap_cfg_data_wr_addr_r 	 <= s_axi_wdata;
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(posedge clk)
  begin
    if(~resetn) begin
        s_axi_bvalid_r 	<= 1'b0;
    end else begin
      if(wr_req_r && s_axi_wvalid && ~s_axi_bvalid_r) begin
          s_axi_bvalid_r 	<= 1'b1;
      end else if(s_axi_bready) begin
          s_axi_bvalid_r 	<= 1'b0;
      end else begin
          s_axi_bvalid_r 	<= s_axi_bvalid_r;
      end
    end
  end

  always @(posedge clk)
  begin
    if(~resetn)begin
        s_axi_rvalid_r 	<= 1'b0;
        s_axi_rdata  	<= 32'd0;
        rvalid_delayed 		<= 1'b0;
    end else begin
      if(rd_req_r) begin
        if(s_axi_rvalid_r && s_axi_rready ) begin
            s_axi_rvalid_r <= 1'b0;
            rvalid_delayed 	<= 1'b0;
        end else begin
            s_axi_rvalid_r <= rvalid_delayed;
            rvalid_delayed 	<= 1'b1;
        end
        if(~s_axi_rvalid_r) begin
          case (rd_addr_r) 
            ICAP_CTRL_REG_ADDR : begin
              s_axi_rdata 	<= icap_ctrl_reg_val_r;
            end
            PCIE_LINK_STATUS_ADDR : begin
              s_axi_rdata 	<= {29'h0000000,pcie_ep_link_down,pcie_dsp_link_up,pcie_usp_link_up};
            end
            TIMEOUT_CNT_VAL_ADDR: begin
              s_axi_rdata	<= icap_timeout_cnt_val_r;
            end
            ICAP_DATA_WR_VAL_0_ADDR: begin
              s_axi_rdata	<= icap_data_wr_val_0_r;
            end
            ICAP_DATA_WR_VAL_1_ADDR: begin
              s_axi_rdata	<= icap_data_wr_val_1_r;
            end
            ICAP_DATA_WR_VAL_2_ADDR: begin
              s_axi_rdata	<= icap_data_wr_val_2_r;
            end
            ICAP_DATA_WR_VAL_3_ADDR: begin
              s_axi_rdata	<= icap_data_wr_val_3_r;
            end
            ICAP_DATA_WR_VAL_4_ADDR: begin
              s_axi_rdata	<= icap_data_wr_val_4_r;
            end
            ICAP_DATA_WR_VAL_5_ADDR: begin
              s_axi_rdata	<= icap_data_wr_val_5_r;
            end
            ICAP_DATA_WR_VAL_6_ADDR: begin
              s_axi_rdata	<= icap_data_wr_val_6_r;
            end
            ICAP_DATA_WR_VAL_7_ADDR: begin
              s_axi_rdata	<= icap_data_wr_val_7_r;
            end
            ICAP_CFG_DATA_WR_VAL_0_ADDR: begin
              s_axi_rdata	<= icap_cfg_data_wr_val_0_r;
            end
            ICAP_DATA_WR_AD_ADDR: begin
              s_axi_rdata	<= icap_data_wr_addr_r;
            end
            ICAP_CFG_DATA_WR_AD_ADDR: begin
              s_axi_rdata	<= icap_cfg_data_wr_addr_r;
            end
            default : begin
              s_axi_rdata 	<= 32'hDEADBEEF;
            end
          endcase
        end
      end
    end
  end

//-----------------------------------------------------------------
//---------------------- Reset Delay Logic ------------------------
//-----------------------------------------------------------------
// - Xilinx recommends that slaves drive all READY outputs low
//   during reset to avoid dropping a transfer in case the connected
//   master recovers from reset during an earlier cycle.
//
// - Xilinx recommends that masters drive all READY outputs low
//   during reset.
//
//   https://www.xilinx.com/support/documentation/ip_documentation/axi_protocol_checker/v2_0/pg101-axi-protocol-checker.pdf
//-----------------------------------------------------------------

  always @(posedge clk)
  begin
      if(~resetn) begin
          reset_released_r <= 1'b0;
      end else begin
          reset_released_r <= 1'b1;
      end 
  end
//-----------------------------------------------------------------

  assign s_axi_bresp   = 2'b00;
  assign s_axi_awready = ((~wr_req_r) && (!(rd_req_r || s_axi_arvalid))) && reset_released_r;
  assign s_axi_rresp   = 2'b00;
  assign s_axi_wready  = wr_req_r && ~s_axi_bvalid_r;
  assign s_axi_arready = ~rd_req_r && ~wr_req_r && reset_released_r;
  assign s_axi_bvalid  = s_axi_bvalid_r;
  assign s_axi_rvalid  = s_axi_rvalid_r;

// FSM states
localparam master_idle = 4'h0;
localparam addr_gen    = 4'h1;
localparam valid_gen   = 4'h2;
localparam data_gen    = 4'h3;
localparam data_valid_gen = 4'h4;
localparam wait_for_bresp = 4'h5;
localparam cnt_incr    = 4'h6;
reg [3:0] master_fsm;
reg [3:0] cnt_transact;

assign m_axi_wstrb = (m_axi_wvalid) ? {STRB_WIDTH{1'b1}} : {STRB_WIDTH{1'b0}};
assign m_axi_awprot = 3'b000;

/*
write sequence

// 20100
localparam ICAP_DATA_WR_VAL_0		= 32'hFFFFFFFF;  // Dummy word
localparam ICAP_DATA_WR_VAL_1		= 32'hAA995566;  // Sync word
localparam ICAP_DATA_WR_VAL_2		= 32'h20000000;  // Type 1 NOOP
localparam ICAP_DATA_WR_VAL_3		= 32'h3003e001;  // Type 1 Write 1 words to BSPI
localparam ICAP_DATA_WR_VAL_4		= 32'h0000076B;  // Type 1 BSPI
localparam ICAP_DATA_WR_VAL_5		= 32'h30020001;  // Type 1 Write 1 words to WBSTAR
localparam ICAP_DATA_WR_VAL_6		= 32'h02000000;  // Warm boot start address (Load the desired address)
localparam ICAP_DATA_WR_VAL_7		= 32'h30008001;  // Type 1 Write 1 words to CMD
localparam ICAP_DATA_WR_VAL_8		= 32'h0000000F;  // IPROG command
localparam ICAP_DATA_WR_VAL_9		= 32'h20000000;  // Type 1 NOOP
// 0x2010C
localparam ICAP_CFG_DATA_WR_VAL_0	= 32'h00000001;

*/

always @(posedge clk) begin
  if (~resetn) begin
    m_axi_awaddr  <= 'b0;
    m_axi_awvalid <= 1'b0;
    m_axi_wdata   <= 'b0;
    m_axi_wvalid  <= 1'b0;
    cnt_transact  <= 4'h0;
    data_wr_done <= 1'b0;
    m_axi_bready <= 1'b0;
	master_fsm <= master_idle;
  end
  else begin
    case (master_fsm)
      master_idle : begin
        if(cnt_transact == 4'hB) begin // all transactions are finished
          data_wr_done <= 1'b1;
          master_fsm   <= master_idle;
        end
        else begin
          if(state_wr_data) begin
            if(cnt_transact == 4'hA)
              m_axi_awaddr  <= 'h2010C; // hwicap FIFO
            else
              m_axi_awaddr  <= 'h20100; // hwicap FIFO
            m_axi_awvalid <= 1'b1;
            master_fsm    <= addr_gen;
          end
          data_wr_done <= 1'b0;
        end
          m_axi_bready <= 1'b0;
      end
      addr_gen : begin
        if(m_axi_awready) begin
          m_axi_awvalid <= 1'b0;
          master_fsm    <= data_gen;
        end
      end
      data_gen : begin
        m_axi_wvalid <= 1'b1;
        master_fsm   <= data_valid_gen;
        case (cnt_transact)
          4'h0: begin
            m_axi_wdata <= 32'hFFFFFFFF;
          end
          4'h1: begin
            m_axi_wdata <= 32'hAA995566;
          end
          4'h2: begin
            m_axi_wdata <= 32'h20000000;
          end
          4'h3: begin
            m_axi_wdata <= 32'h3003E001;
          end
          4'h4: begin
            m_axi_wdata <= 32'h0000076B; //WBSTAR address
          end
          4'h5: begin
            m_axi_wdata <= 32'h30020001;
          end
          4'h6: begin
            m_axi_wdata <= {4'h0,icap_ctrl_reg_val_r[31:4]}; //WBSTAR address
          end
          4'h7: begin
            m_axi_wdata <= 32'h30008001;
          end
          4'h8: begin
            m_axi_wdata <= 32'h0000000F;
          end
          4'h9: begin
            m_axi_wdata <= 32'h20000000;
          end
          4'hA: begin
            m_axi_wdata <= 32'h00000001;
          end
          default : begin
            m_axi_wdata <= 32'hFFFFFFFF;
          end
        endcase
      end
      data_valid_gen : begin
        if(m_axi_wready) begin
          m_axi_wvalid <= 1'b0;
          master_fsm   <= wait_for_bresp;
        end
      end
      wait_for_bresp : begin
        if(m_axi_bvalid) begin
          m_axi_bready <= 1'b1;
          cnt_transact <= cnt_transact + 1'b1;
          master_fsm   <= master_idle;
        end
      end
      default : begin
        m_axi_awaddr  <= 'b0;
        m_axi_awvalid <= 1'b0;
        m_axi_wdata   <= 'b0;
        m_axi_wvalid  <= 1'b0;
        cnt_transact  <= 4'h0;
        data_wr_done <= 1'b0;
	    master_fsm <= master_idle;
      end
    endcase
  end
end

assign m_axi_araddr = 'b0;
assign m_axi_arvalid = 1'b0;
assign m_axi_arprot = 'b0;

assign m_axi_rready = 1'b0;

endmodule



// (c) Copyright 2017, 2019 Xilinx, Inc. All rights reserved.
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

`timescale 1 ns / 1 ps

module iob_static #
(
parameter BMC_GPIO=4
) (
  input wire  perst_n_in,
  output wire perst_n_out
  //input wire  init_calib_complete_in,
  //output wire init_calib_complete_out,
  //input wire  led_0_in,
  //output wire led_0_out
);

    genvar i;
    
  IBUF perst_n_ibuf (
    .O(perst_n_out), // 1-bit output: Buffer output
    .I(perst_n_in) // 1-bit input: Buffer input
  );
  
  

endmodule


// (c) Copyright 2017, 2019 Xilinx, Inc. All rights reserved.
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

`timescale 1 ns / 1 ps

module msp432_bsl_crc_gen #() (

    input   clk,
    input   reset_n,

    input   wire    [31:0]      s0_axis_tdata     ,
    output  wire                s0_axis_tready     ,
    input   wire                s0_axis_tvalid     ,
    input   wire                s0_axis_tlast      ,
    
    output   wire    [31:0]     m0_axis_tdata     ,
    input  wire                 m0_axis_tready     ,
    output   wire               m0_axis_tvalid     ,
    output   wire               m0_axis_tlast         
);

    reg [15:0] crc = 16'b0;
    reg crc_done = 1'b0;
    
    localparam  [0:0]   IDLE            =1'b0,
                        PROC            =1'b1;
    reg         [0:0]   state = IDLE;
    reg         [0:0]   prev_state = IDLE;
    
    assign s0_axis_tready = 1'b1; //Always ready
    assign m0_axis_tdata = {16'b0, crc}; //CRC is 16 bits wide
    assign m0_axis_tlast = 1'b0; //tlast not used
    assign m0_axis_tvalid = crc_done;
    
    //Current state
    always @(posedge clk) begin
        if(!reset_n) state <= IDLE;
        else if(s0_axis_tvalid && state == IDLE) state <= PROC;
        else if(s0_axis_tvalid && s0_axis_tlast && state == PROC ) state <= IDLE;
        else state <= state;
    end
    
    //Previous state
    always @(posedge clk) begin prev_state <= state; end
    
    //Hold valid until axis has accepted the CRC
    //Note the user must read out the CRC before sending new data
    always @(posedge clk) begin
        if(!reset_n) crc_done <= 1'b0;
        else if(prev_state == PROC && state ==IDLE) crc_done <= 1'b1;
        else if(crc_done && m0_axis_tready) crc_done <= 1'b0;
        else crc_done <= crc_done;
    end  
    
    //Calculate the CRC. Use tlast to signify CRC valid
    always @(posedge clk) begin
        if(!reset_n) crc <= 16'b0;
        else begin
            if(state == IDLE && s0_axis_tvalid)
                crc <= s0_axis_tdata[15:0];
            else if (s0_axis_tvalid && state == PROC)begin
                crc[0] <= s0_axis_tdata[4] ^ s0_axis_tdata[0] ^ crc[8] ^ crc[12];
                crc[1] <= s0_axis_tdata[5] ^ s0_axis_tdata[1] ^ crc[9] ^ crc[13];
                crc[2] <= s0_axis_tdata[6] ^ s0_axis_tdata[2] ^ crc[10] ^ crc[14];
                crc[3] <= s0_axis_tdata[7] ^ s0_axis_tdata[3] ^ crc[11] ^ crc[15];
                crc[4] <= s0_axis_tdata[4] ^ crc[12];
                crc[5] <= s0_axis_tdata[5] ^ s0_axis_tdata[4] ^ s0_axis_tdata[0] ^ crc[8] ^ crc[12] ^ crc[13];
                crc[6] <= s0_axis_tdata[6] ^ s0_axis_tdata[5] ^ s0_axis_tdata[1] ^ crc[9] ^ crc[13] ^ crc[14];
                crc[7] <= s0_axis_tdata[7] ^ s0_axis_tdata[6] ^ s0_axis_tdata[2] ^ crc[10] ^ crc[14] ^ crc[15];
                crc[8] <= s0_axis_tdata[7] ^ s0_axis_tdata[3] ^ crc[0] ^ crc[11] ^ crc[15];
                crc[9] <= s0_axis_tdata[4] ^ crc[1] ^ crc[12];
                crc[10] <= s0_axis_tdata[5] ^ crc[2] ^ crc[13];
                crc[11] <= s0_axis_tdata[6] ^ crc[3] ^ crc[14];
                crc[12] <= s0_axis_tdata[7] ^ s0_axis_tdata[4] ^ s0_axis_tdata[0] ^ crc[4] ^ crc[8] ^ crc[12] ^ crc[15];
                crc[13] <= s0_axis_tdata[5] ^ s0_axis_tdata[1] ^ crc[5] ^ crc[9] ^ crc[13];
                crc[14] <= s0_axis_tdata[6] ^ s0_axis_tdata[2] ^ crc[6] ^ crc[10] ^ crc[14];
                crc[15] <= s0_axis_tdata[7] ^ s0_axis_tdata[3] ^ crc[7] ^ crc[11] ^ crc[15];
            end
        end
    end   
endmodule



// *************************************************************************
//    ____  ____
//   /   /\/   /
//  /___/  \  /
//  \   \   \/    Copyright 2019 Xilinx, Inc. All rights reserved.
//   \   \        This file contains confidential and proprietary
//   /   /        information of Xilinx, Inc. and is protected under U.S.
//  /___/   /\    and international copyright and other intellectual
//  \   \  /  \   property laws.
//   \___\/\___\
//
//
// *************************************************************************
//
// Disclaimer:
//
//       This disclaimer is not a license and does not grant any rights to
//       the materials distributed herewith. Except as otherwise provided in
//       a valid license issued to you by Xilinx, and to the maximum extent
//       permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE
//       "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
//       WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
//       INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY,
//       NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//       (2) Xilinx shall not be liable (whether in contract or tort,
//       including negligence, or under any other theory of liability) for
//       any loss or damage of any kind or nature related to, arising under
//       or in connection with these materials, including for any direct, or
//       any indirect, special, incidental, or consequential loss or damage
//       (including loss of data, profits, goodwill, or any type of loss or
//       damage suffered as a result of any action brought by a third party)
//       even if such damage or loss was reasonably foreseeable or Xilinx
//       had been advised of the possibility of the same.
//
// Critical Applications:
//
//       Xilinx products are not designed or intended to be fail-safe, or
//       for use in any application requiring fail-safe performance, such as
//       life-support or safety devices or systems, Class III medical
//       devices, nuclear facilities, applications related to the deployment
//       of airbags, or any other applications that could lead to death,
//       personal injury, or severe property or environmental damage
//       (individually and collectively, "Critical Applications"). Customer
//       assumes the sole risk and liability of any use of Xilinx products
//       in Critical Applications, subject only to applicable laws and
//       regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS
// FILE AT ALL TIMES.
//
// *************************************************************************

`timescale 1 ns / 1 ps

module shift_reg
(
  input  wire  clk,
  input  wire  rstn,

  input  wire  data_in,
  output wire  data_out

);

reg data_d1;
reg data_d2;
reg data_d3;

  always @(posedge clk)
  begin
    if(~rstn) begin
        data_d1		<= 1'b0;
        data_d2		<= 1'b0;
        data_d3		<= 1'b0;
    end else begin
        data_d1		<= data_in;
        data_d2		<= data_d1;
        data_d3		<= data_d2;
    end
  end

assign data_out = data_d3;

endmodule



// (c) Copyright 2018-2019 Xilinx, Inc. All rights reserved.
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

`timescale 1 ns / 1 ps

module static_slr_flops (

  input  wire clkwiz_kernel_clk_out1_i,
  input  wire clkwiz_kernel_locked_i,
  output wire clkwiz_kernel_locked_o,

  input  wire clkwiz_kernel2_clk_out1_i,
  input  wire clkwiz_kernel2_locked_i,
  output wire clkwiz_kernel2_locked_o,

  input  wire clkwiz_sysclks_clk_out2_i,
  input  wire clkwiz_sysclks_locked_i,
  output wire clkwiz_sysclks_locked_o,

  input  wire dma_pcie_axi_aclk_i,
  input  wire dma_pcie_user_lnk_up_i,
  output wire dma_pcie_user_lnk_up_o,

  input  wire slice_reset_kernel_pr_Dout_i,
  output wire slice_reset_kernel_pr_Dout_o

);

  (* shreg_extract = "false" *) reg clkwiz_kernel_locked_reg1;
  (* shreg_extract = "false" *) reg clkwiz_kernel_locked_reg2;
  always @(posedge clkwiz_kernel_clk_out1_i) begin
    clkwiz_kernel_locked_reg1 <= clkwiz_kernel_locked_i;
    clkwiz_kernel_locked_reg2 <= clkwiz_kernel_locked_reg1;
  end
  assign clkwiz_kernel_locked_o = clkwiz_kernel_locked_reg2;

  (* shreg_extract = "false" *) reg clkwiz_kernel2_locked_reg1;
  (* shreg_extract = "false" *) reg clkwiz_kernel2_locked_reg2;
  always @(posedge clkwiz_kernel2_clk_out1_i) begin
    clkwiz_kernel2_locked_reg1 <= clkwiz_kernel2_locked_i;
    clkwiz_kernel2_locked_reg2 <= clkwiz_kernel2_locked_reg1;
  end
  assign clkwiz_kernel2_locked_o = clkwiz_kernel2_locked_reg2;

  (* shreg_extract = "false" *) reg clkwiz_sysclks_locked_reg1;
  (* shreg_extract = "false" *) reg clkwiz_sysclks_locked_reg2;
  always @(posedge clkwiz_sysclks_clk_out2_i) begin
    clkwiz_sysclks_locked_reg1 <= clkwiz_sysclks_locked_i;
    clkwiz_sysclks_locked_reg2 <= clkwiz_sysclks_locked_reg1;
  end
  assign clkwiz_sysclks_locked_o = clkwiz_sysclks_locked_reg2;

  (* shreg_extract = "false" *) reg dma_pcie_user_lnk_up_reg1;
  (* shreg_extract = "false" *) reg dma_pcie_user_lnk_up_reg2;
  always @(posedge dma_pcie_axi_aclk_i) begin
    dma_pcie_user_lnk_up_reg1 <= dma_pcie_user_lnk_up_i;
    dma_pcie_user_lnk_up_reg2 <= dma_pcie_user_lnk_up_reg1;
  end
  assign dma_pcie_user_lnk_up_o = dma_pcie_user_lnk_up_reg2;

  (* shreg_extract = "false" *) reg slice_reset_kernel_pr_Dout_reg1;
  (* shreg_extract = "false" *) reg slice_reset_kernel_pr_Dout_reg2;
  always @(posedge clkwiz_sysclks_clk_out2_i) begin
    slice_reset_kernel_pr_Dout_reg1 <= slice_reset_kernel_pr_Dout_i;
    slice_reset_kernel_pr_Dout_reg2 <= slice_reset_kernel_pr_Dout_reg1;
  end
  assign slice_reset_kernel_pr_Dout_o = slice_reset_kernel_pr_Dout_reg2;

endmodule


// *************************************************************************
//    ____  ____
//   /   /\/   /
//  /___/  \  /
//  \   \   \/    Copyright 2019 Xilinx, Inc. All rights reserved.
//   \   \        This file contains confidential and proprietary
//   /   /        information of Xilinx, Inc. and is protected under U.S.
//  /___/   /\    and international copyright and other intellectual
//  \   \  /  \   property laws.
//   \___\/\___\
//
//
// *************************************************************************
//
// Disclaimer:
//
//       This disclaimer is not a license and does not grant any rights to
//       the materials distributed herewith. Except as otherwise provided in
//       a valid license issued to you by Xilinx, and to the maximum extent
//       permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE
//       "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
//       WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
//       INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY,
//       NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//       (2) Xilinx shall not be liable (whether in contract or tort,
//       including negligence, or under any other theory of liability) for
//       any loss or damage of any kind or nature related to, arising under
//       or in connection with these materials, including for any direct, or
//       any indirect, special, incidental, or consequential loss or damage
//       (including loss of data, profits, goodwill, or any type of loss or
//       damage suffered as a result of any action brought by a third party)
//       even if such damage or loss was reasonably foreseeable or Xilinx
//       had been advised of the possibility of the same.
//
// Critical Applications:
//
//       Xilinx products are not designed or intended to be fail-safe, or
//       for use in any application requiring fail-safe performance, such as
//       life-support or safety devices or systems, Class III medical
//       devices, nuclear facilities, applications related to the deployment
//       of airbags, or any other applications that could lead to death,
//       personal injury, or severe property or environmental damage
//       (individually and collectively, "Critical Applications"). Customer
//       assumes the sole risk and liability of any use of Xilinx products
//       in Critical Applications, subject only to applicable laws and
//       regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS
// FILE AT ALL TIMES.
//
// *************************************************************************

`timescale 1 ns / 1 ps

module version_ctrl_reg
#(
    parameter   C_S_AXI_LITE_ADDR_WIDTH = 12,
    parameter   C_S_AXI_LITE_DATA_WIDTH = 32
)
(
  input  wire                                       s_axi_lite_aclk,
  input  wire                                       s_axi_lite_aresetn,

  input  wire  [C_S_AXI_LITE_ADDR_WIDTH-1:0]        s_axi_lite_awaddr,
  output wire                                       s_axi_lite_awready,
  input  wire                                       s_axi_lite_awvalid,

  input  wire  [C_S_AXI_LITE_ADDR_WIDTH-1:0]        s_axi_lite_araddr,
  output wire                                       s_axi_lite_arready,
  input  wire                                       s_axi_lite_arvalid,

  input  wire  [C_S_AXI_LITE_DATA_WIDTH-1:0]        s_axi_lite_wdata,
  input  wire  [3:0]                                s_axi_lite_wstrb,
  output wire                                       s_axi_lite_wready,
  input  wire                                       s_axi_lite_wvalid,

  output reg   [C_S_AXI_LITE_DATA_WIDTH-1:0]        s_axi_lite_rdata,
  output wire  [1:0]                                s_axi_lite_rresp,
  input  wire                                       s_axi_lite_rready,
  output wire                                       s_axi_lite_rvalid,

  output wire  [1:0]                                s_axi_lite_bresp,
  input  wire                                       s_axi_lite_bready,
  output wire                                       s_axi_lite_bvalid,

  input  wire  [2:0]                                board_rev_pins,
  output wire                                       rev_ctrl_val

);

// rev_ctrl_val = 0x0 indicates R829 = 2k ohm
// rev_ctrl_val = 0x1 indicates R829 = 1k ohm
//---------Function Declaration------------------------------------------------------
// clog2 function declaration -- later all the function/constant declarations
// shall be moved to .vh file

  function integer clog2;
    input [31:0] value; // Input value
    begin
    value   = (value == 1) ? value : (value -1);
    for (clog2 = 0; value > 0; clog2 = clog2 + 1)
      value = value >> 1;
    end
  endfunction
//-----------------------------------------------------------------------------------
reg [C_S_AXI_LITE_ADDR_WIDTH-1:0] 	wr_addr_r;
reg [C_S_AXI_LITE_ADDR_WIDTH-1:0] 	rd_addr_r;
reg 	wr_req_r 	 	= 1'b0;
reg 	reset_released_r 	= 1'b0;
reg 	rd_req_r         	= 1'b0;
reg 	s_axi_lite_bvalid_i 	= 1'b0;
reg 	s_axi_lite_rvalid_i 	= 1'b0;
reg 	rvalid_delayed;
reg	dna_port_din;
wire	dna_port_dout;
reg	dna_port_read;
reg	dna_port_shift;
reg	dna_data_ready;

// Register addressing
localparam REL_VERSION_REG_ADDR 	= 12'h000;
localparam VIV_VERSION_REG_ADDR 	= 12'h004;
localparam DNA_CAP_REG_ADDR 		= 12'h008;
localparam ERT_EN_REG_ADDR 		= 12'h00C;

localparam BOARD_REV_REG_ADDR 		= 12'h010;
localparam RW_REG2_ADDR 		= 12'h014;
localparam RW_REG3_ADDR 		= 12'h018;
localparam RW_REG4_ADDR 		= 12'h01C;

localparam DNAIP_REG1_ADDR 		= 12'h020;
localparam DNAIP_REG2_ADDR 		= 12'h024;
localparam DNAIP_REG3_ADDR 		= 12'h028;
localparam DNAIP_REG4_ADDR 		= 12'h02C;

localparam DNAIP_DUP_REG1_ADDR 		= 12'h040;
localparam DNAIP_DUP_REG2_ADDR 		= 12'h044;
localparam DNAIP_DUP_REG3_ADDR 		= 12'h048;

localparam DEBUG_DATA_ADDR 		= 12'h200;

localparam [1:0]  IDLE   =2'b00,
                  READ   =2'b01,
                  LOAD   =2'b10,
                  STOP   =2'b11;

reg [6:0]  	dna_data_reg_cnt;
reg [95:0] 	dna_data_out;
reg       	wr_check;
reg [1:0]  	state;
reg 		brd_rev_data;
reg [31:0]	reg2_data;
reg [31:0]	reg3_data;
reg [31:0]	reg4_data;
reg [31:0]	dna_ip_reg1_data;
reg [31:0]	dna_ip_reg2_data;
reg [31:0]	dna_ip_reg3_data;
reg [31:0]	dna_ip_reg4_data;

localparam REL_VERSION_REG_VAL 		= 32'h00000090;
localparam VIV_VERSION_REG_VAL 		= 32'h00201921;
localparam DNA_CAP_REG_VAL 		= 32'h00000001;
localparam ERT_EN_REG_VAL		= 32'h00000001;

reg [31:0]	rel_version_reg_val;
reg [31:0]	viv_version_reg_val;
reg [31:0]	dna_cap_reg_val;
reg [31:0]	ert_en_reg_val;

// capture the write request and address
  always @(posedge s_axi_lite_aclk)
  begin
    if(~s_axi_lite_aresetn)begin
        wr_req_r    <= 1'b0;
        wr_addr_r   <= 'h0;
    end else begin
      if(s_axi_lite_awvalid && s_axi_lite_awready) begin
          wr_req_r  <= 1'b1;
          wr_addr_r <= s_axi_lite_awaddr;
      end else if (s_axi_lite_bvalid_i && s_axi_lite_bready) begin
          wr_req_r  <= 1'b0;
          wr_addr_r <= 'h0;
      end else begin
          wr_req_r  <= wr_req_r;
          wr_addr_r <= wr_addr_r;
      end
    end
  end

// capture the read request and address
  always @(posedge s_axi_lite_aclk)
  begin
    if(~s_axi_lite_aresetn)begin
      rd_req_r    <= 1'b0;
      rd_addr_r   <= 'h0;
    end else begin
      if(s_axi_lite_arvalid && s_axi_lite_arready) begin
        rd_req_r  <= 1'b1;
        rd_addr_r <= s_axi_lite_araddr;
      end else if (s_axi_lite_rvalid_i && s_axi_lite_rready) begin
        rd_req_r  <= 1'b0;
        rd_addr_r <= rd_addr_r;
      end else begin
        rd_req_r  <= rd_req_r;
        rd_addr_r <= rd_addr_r;
      end
    end
  end

// Updating the registers

  always @(posedge s_axi_lite_aclk)
  begin
    if(~s_axi_lite_aresetn) begin
       brd_rev_data    	    <= 'h0;
       reg2_data    	    <= 32'h00000000;
       reg3_data    	    <= 32'h00000000;
       reg4_data    	    <= 32'h00000000;
       rel_version_reg_val  <= 32'h00000000;
       viv_version_reg_val  <= 32'h00000000;
       dna_cap_reg_val      <= 32'h00000000;
       ert_en_reg_val  	    <= 32'h00000000;
       wr_check		    <= 1'b1;
     end else begin
       rel_version_reg_val  <= {REL_VERSION_REG_VAL};
       viv_version_reg_val  <= {VIV_VERSION_REG_VAL};
       dna_cap_reg_val      <= {DNA_CAP_REG_VAL};
       ert_en_reg_val       <= {ERT_EN_REG_VAL};
      if(wr_req_r && s_axi_lite_wvalid && ~s_axi_lite_bvalid_i) begin
        case (wr_addr_r) 
          BOARD_REV_REG_ADDR: begin
            if(wr_check == 1'b1) begin
            	brd_rev_data	 <= s_axi_lite_wdata[0];
            	wr_check     	 <= 1'b0;
            end
            else begin
	    	wr_check	 <= wr_check;
            end
          end
          RW_REG2_ADDR: begin
            reg2_data     	 <= s_axi_lite_wdata;
          end
          RW_REG3_ADDR: begin
            reg3_data     	 <= s_axi_lite_wdata;
          end
          RW_REG4_ADDR: begin
            reg4_data     	 <= s_axi_lite_wdata;
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(posedge s_axi_lite_aclk)
  begin
    if(~s_axi_lite_aresetn) begin
        s_axi_lite_bvalid_i 	<= 1'b0;
    end else begin
      if(wr_req_r && s_axi_lite_wvalid && ~s_axi_lite_bvalid_i) begin
          s_axi_lite_bvalid_i 	<= 1'b1;
      end else if(s_axi_lite_bready) begin
          s_axi_lite_bvalid_i 	<= 1'b0;
      end else begin
          s_axi_lite_bvalid_i 	<= s_axi_lite_bvalid_i;
      end
    end
  end

  always @(posedge s_axi_lite_aclk)
  begin
    if(~s_axi_lite_aresetn)begin
        s_axi_lite_rvalid_i 	<= 1'b0;
        s_axi_lite_rdata  	<= 32'd0;
        rvalid_delayed 		<= 1'b0;
    end else begin
      if(rd_req_r) begin
        if(s_axi_lite_rvalid_i && s_axi_lite_rready ) begin
            s_axi_lite_rvalid_i <= 1'b0;
            rvalid_delayed 	<= 1'b0;
        end else begin
            s_axi_lite_rvalid_i <= rvalid_delayed;
            rvalid_delayed 	<= 1'b1;
        end
        if(~s_axi_lite_rvalid_i) begin
          case (rd_addr_r) 
            REL_VERSION_REG_ADDR : begin
              s_axi_lite_rdata 	<= rel_version_reg_val;
            end
            VIV_VERSION_REG_ADDR : begin
              s_axi_lite_rdata 	<= viv_version_reg_val;
            end
            DNA_CAP_REG_ADDR 	: begin
              s_axi_lite_rdata 	<= dna_cap_reg_val;
            end
            ERT_EN_REG_ADDR : begin
              s_axi_lite_rdata 	<= ert_en_reg_val;
            end
            BOARD_REV_REG_ADDR   : begin
              s_axi_lite_rdata 	<= {28'h0000000,~board_rev_pins[0],~board_rev_pins[1],~board_rev_pins[2],brd_rev_data};
            end
            RW_REG2_ADDR         : begin
              s_axi_lite_rdata 	<= reg2_data;
            end
            RW_REG3_ADDR         : begin
              s_axi_lite_rdata 	<= reg3_data;
            end
            RW_REG4_ADDR         : begin
              s_axi_lite_rdata 	<= reg4_data;
            end
            DNAIP_REG1_ADDR      : begin
              s_axi_lite_rdata 	<= dna_ip_reg1_data;
            end
            DNAIP_REG2_ADDR      : begin
              s_axi_lite_rdata 	<= dna_ip_reg2_data;
            end
            DNAIP_REG3_ADDR      : begin
              s_axi_lite_rdata 	<= dna_ip_reg3_data;
            end
            DNAIP_REG4_ADDR      : begin
              s_axi_lite_rdata 	<= dna_ip_reg4_data;
            end
            DNAIP_DUP_REG1_ADDR  : begin
              s_axi_lite_rdata 	<= dna_ip_reg3_data;
            end
            DNAIP_DUP_REG2_ADDR  : begin
              s_axi_lite_rdata 	<= dna_ip_reg2_data;
            end
            DNAIP_DUP_REG3_ADDR  : begin
              s_axi_lite_rdata 	<= dna_ip_reg1_data;
            end
            DEBUG_DATA_ADDR      : begin
              s_axi_lite_rdata 	<= {16'h0000,1'b0,dna_data_reg_cnt,2'b00,state,3'b000,wr_check};
            end
            default : begin
              s_axi_lite_rdata 	<= 32'hDEADBEEF;
            end
          endcase
        end
      end
    end
  end

  always @(posedge s_axi_lite_aclk)
  begin
      if(~s_axi_lite_aresetn) begin
          reset_released_r <= 1'b0;
      end else begin
          reset_released_r <= 1'b1;
      end 
  end

  assign s_axi_lite_bresp   = 2'b00;
  assign s_axi_lite_awready = ((~wr_req_r) && (!(rd_req_r || s_axi_lite_arvalid))) && reset_released_r;
  assign s_axi_lite_rresp   = 2'b00;
  assign s_axi_lite_wready  = wr_req_r && ~s_axi_lite_bvalid_i;
  assign s_axi_lite_arready = ~rd_req_r && ~wr_req_r && reset_released_r;
  assign s_axi_lite_bvalid  = s_axi_lite_bvalid_i;
  assign s_axi_lite_rvalid  = s_axi_lite_rvalid_i;

  assign rev_ctrl_val	    = brd_rev_data;

// DNA_PORTE2: Device DNA Access Port
// UltraScale
DNA_PORTE2 
//#(
//.SIM_DNA_VALUE(96'hA00A000A00A000A00A000A00) // Specifies a sample 96-bit DNA value for simulation
//)
DNA_PORTE2_inst 
(
 .DOUT(dna_port_dout), // 1-bit output: DNA output data
 .CLK(s_axi_lite_aclk), // 1-bit input: Clock input
 .DIN(dna_port_din), // 1-bit input: User data input pin
 .READ(dna_port_read), // 1-bit input: Active-High load DNA, active-Low read input
 .SHIFT(dna_port_shift) // 1-bit input: Active-High shift enable input
);
// End of DNA_PORTE2_inst instantiation
//

always @(posedge s_axi_lite_aclk)
begin
    if(~s_axi_lite_aresetn) begin
     	state 			<= IDLE;
    end else begin
     case (state)
     IDLE: 
       begin
	dna_port_din    	<= 1'b0;
	dna_port_read   	<= 1'b0;
	dna_port_shift  	<= 1'b0;
	dna_data_reg_cnt	<= 7'd0;
	dna_data_ready  	<= 1'b0;
     	dna_data_out[95:0] 	<= 96'd0;
     	state 			<= READ;
       end 
     READ: 
       begin
	dna_port_read   	<= 1'b1;
     	state 			<= LOAD;
       end
     STOP:
       begin
	dna_port_shift  	<= 1'b0;
	dna_data_reg_cnt	<= 7'd0;
     	dna_ip_reg1_data  	<= dna_data_out[31:0];
     	dna_ip_reg2_data  	<= dna_data_out[63:32];
     	dna_ip_reg3_data  	<= dna_data_out[95:64];
     	dna_ip_reg4_data  	<= 32'hDEADBEEF;
	dna_data_ready  	<= 1'b1;
       end
     LOAD: 
       begin
	dna_port_read   	<= 1'b0;
	dna_port_shift  	<= 1'b1;
     	dna_data_out[95:0] 	<= {dna_port_dout, dna_data_out[95:0] }>> 1;
	dna_data_reg_cnt   	<= dna_data_reg_cnt + 1'b1;
	state 		   	<= LOAD;
	if (dna_data_reg_cnt == 'd96) begin
     	 state 		   	<= STOP;
	end
       end
     endcase
    end 
end


endmodule



