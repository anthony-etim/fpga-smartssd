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
