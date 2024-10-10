// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// d52cbaca0ef8cf4fd3d6354deb5066970fb6511d02d18d15835e6014ed847fb0
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


// d52cbaca0ef8cf4fd3d6354deb5066970fb6511d02d18d15835e6014ed847fb0
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


// d52cbaca0ef8cf4fd3d6354deb5066970fb6511d02d18d15835e6014ed847fb0
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

module shell_utils_embedded_scheduler_hw(

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
		host_bvalid        <= 0;
        if(host_awvalid && host_wvalid && !(host_awaddr[10] && CuISRIndexEn))
        begin
           state_write    <= WAIT_FOR_BREADY_WRITE;
           host_wready     <= 1;
           host_awready     <= 1;
        end
     end // end of  IDLE_WRITE

     WAIT_FOR_BREADY_WRITE :
     begin
        host_awready        <= 0;
        host_wready         <= 0;
		host_bvalid         <= 1; 	
        if(host_bready)
           begin
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
    if(!reset_n)
      CuDmaQueue <= 128'b0;
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h1C)) // Write request
      CuDmaQueue[31:0] <= (clear_CuDmaQueue) ? host_wdata : CuDmaQueue[31:0] | host_wdata;
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h20)) // Write request
      CuDmaQueue[63:32] <= (clear_CuDmaQueue) ? host_wdata : CuDmaQueue[63:32] | host_wdata;
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h24)) // Write request
      CuDmaQueue[95:64] <= (clear_CuDmaQueue) ? host_wdata : CuDmaQueue[95:64] | host_wdata;
    else if(host_wvalid && host_wready && (host_awaddr[10:0] == 11'h28)) // Write request
      CuDmaQueue[127:96] <= (clear_CuDmaQueue) ? host_wdata : CuDmaQueue[127:96] | host_wdata;
    else if(clear_CuDmaQueue)
      CuDmaQueue <= 128'b0;
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



