//------------------------------------------------------------------------------------------------------------------------------------------
//
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
//
//------------------------------------------------------------------------------------------------------------------------------------------

`timescale 1ns / 1ps

//generate initial np_req toggles after pcie_link_up is asserted

module shell_utils_pcie_credit_handler_v2_0_0_credit_gen (
    input         reset_n,
    input         clk,
    input         pcie_link_up,
    input         [1:0] pcie_cq_np_req_usr_remote,
    output logic  [1:0] pcie_cq_np_req_usr
);

enum logic [1:0] {INIT,GEN,FORWARD} state;

always_ff @(posedge clk) 
begin
        if(~reset_n) begin
                state<=INIT;
        end //end-if-reset
        else begin
        case(state)
                INIT:begin
                        //if pcie is link up and I have not enabled dma
                        if(pcie_link_up == 1'b1 && pcie_cq_np_req_usr_remote == 2'b0) begin
                                state <= GEN ;
                        end
                        else if (pcie_cq_np_req_usr_remote != 2'b0) begin
                                state <= FORWARD;
                        end
                end 
                GEN: begin
                        state <= FORWARD;
                end
                FORWARD: begin
                        state <= FORWARD;
                end
        endcase
        end //end-else
end

always_comb 
begin

        // default assignment
        pcie_cq_np_req_usr = pcie_cq_np_req_usr_remote;

        if(state == INIT)  begin 
                pcie_cq_np_req_usr = pcie_cq_np_req_usr_remote;
        end
        else if (state == GEN) begin
                pcie_cq_np_req_usr = 2'h1;
        end
        else if (state == FORWARD) begin
                pcie_cq_np_req_usr = pcie_cq_np_req_usr_remote;
        end
end

//assign pcie_cq_np_req_usr = (pcie_link_up == 1'b1 && pcie_cq_np_req_generated==1'b0 && pcie_cq_np_req_usr_remote == 2'b0) ? 2'h1 :pcie_cq_np_req_usr_remote;
endmodule


//------------------------------------------------------------------------------------------------------------------------------------------
//
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
//
//------------------------------------------------------------------------------------------------------------------------------------------

`timescale 1ns / 1ps

//Here is the code from the soft MSI-X module which toggles cq_np_req logic.
//The below logic uses *_cq_tready and *_cq_np_req_count from the 512-bit bridge/we can consider it as it is from the core) and *_cq_np_req signal from the user.

module shell_utils_pcie_credit_handler_v2_0_0_np_req  #(
  parameter       TCQ                    = 1,
  parameter       C_TDATA_WIDTH          = 512,
  parameter       C_TUSER_WIDTH          = 183
)(
  input                                 user_clk_i,
  input                                 reset_n_user_clk_i,
  input                                 link_down_reset_i,

  //
  input  [1:0]                          pcie_cq_np_req_usr,
  output [5:0]                          pcie_cq_np_req_count_usr,
  //
  output  [1:0]                         pcie_cq_np_req,
  input   [5:0]                         pcie_cq_np_req_count,

  input   [C_TDATA_WIDTH-1:0]           m_axis_cq_tdata,
  input                                 m_axis_cq_tvalid,
  input                                 m_axis_cq_tready,

  //
  input   [C_TDATA_WIDTH-1:0]           m_axis_cq_tdata_usr,
  input   [C_TUSER_WIDTH-1:0]           m_axis_cq_tuser_usr,
  input                                 m_axis_cq_tvalid_usr,
  input                                 m_axis_cq_tready_usr

  
);

// Local Parameters
 localparam CQ_RX_STATE     = 1'b0;
 localparam CC_TX_STATE     = 1'b1;
 localparam REQ_TYPE_SELECT = 75;  // Bit index for Request Type in CQ Descriptor
 localparam BAR_ID_SELECT   = 112; // Bit index for BAR ID in CQ Descriptor
 localparam TGT_FN_SELECT   = 104; // Bit index for Target Function in CQ Descriptor
 localparam IS_SOP_SELECT   = (C_TUSER_WIDTH == 183) ? 80 : 40;  // Bit index for the IS SOP in CQ TUSER Descriptor
 localparam MAX_CREDIT      = 32;  // Maximum credit for CQ_np_req_count. Need to be in-sync with pcie_4_0_512b_cq_output_mux.v

 ////////////////////////////////////////////////////////////////////////////////
 // Local wires/regs
 ////////////////////////////////////////////////////////////////////////////////

  wire [ 1:0] target_function_no = m_axis_cq_tdata[TGT_FN_SELECT +: 2];
  wire [ 3:0] req_type           = m_axis_cq_tdata[REQ_TYPE_SELECT +: 4];
  wire [ 2:0] bar_id             = m_axis_cq_tdata[BAR_ID_SELECT +: 3];
  wire        is_sop_0           = m_axis_cq_tuser_usr[IS_SOP_SELECT];
  wire [ 3:0] req_type_usr_0     = m_axis_cq_tdata_usr[REQ_TYPE_SELECT +: 4];       // First TLP start point
  //wire [ 3:0] req_type_usr_1     = m_axis_cq_tdata_usr[(REQ_TYPE_SELECT+256) +: 4]; // Second TLP start point

  // local requests include PF0 BAR0 and PF1 BAR0 traffic
  wire local_static_req = m_axis_cq_tvalid && ((target_function_no == 2'b0 && bar_id == 3'b0) || (target_function_no == 2'b1 && bar_id == 3'b0));


  ///////////////////////////////
  wire                        pcie_cq_np_req_local;          // Request line to the PCIe block from the cq_np_req_count_local_blk counter
  wire                        pcie_cq_np_dec_local;          // Decrement the cq_np_req_count_local_blk counter
  wire                        pcie_cq_np_inc_local;          // Increment the cq_np_req_count_local_blk counter
  reg  [1:0]                  pcie_cq_np_req_usr_blk;       // Request line to the PCIe block from pcie_cq_np_req_usr (filtered to avoid credit over-subscribe)
  reg  [5:0]                  cq_np_req_count_local_blk;     // The number of local credits that needs to be given back to the PCIe block
  reg  [5:0]                  pcie_cq_np_req_count_usr_reg; // Current value of interface credit count for NP TLPs - Replica of pcie_4_0_512b_cq_output_mux.v
  wire                        cq_np_req_sel;                // Select line to select which logic drives the PCIe block NP req. 1: User logic; 0: MSI-X logic
  wire [1:0]                  np_tlp_count;
  wire                        req_type_np_0;
  //wire                        req_type_np_1;


 ////////////////////////////////////////////////////////////////////////////////


 ////////////////////////////////////////////////////////////////////////////////
 /////////////////////// pcie_cq_np_req update //////////////////////////////////
 ////////////////////////////////////////////////////////////////////////////////
 //assign pcie_cq_np_req = pcie_cq_np_req_usr;
 //assign pcie_cq_np_req = (pcie_cq_np_req_usr == 2'b00 && pcie_cq_np_req_count == 'd0) ? 2'b01 : pcie_cq_np_req_usr;

 //assign pcie_cq_np_req_count_usr = pcie_cq_np_req_count;
   // Maintain current NP credit - Replica of *_cq_msix_mux.v. Use this to allow masking of received MSI-X TLPs
   always @(posedge user_clk_i)
     if (~reset_n_user_clk_i)
       begin
      pcie_cq_np_req_count_usr_reg <= #TCQ 6'd0;
       end
     else if (link_down_reset_i)
       begin
      pcie_cq_np_req_count_usr_reg <= #TCQ 6'd0;
       end
     else
       if (m_axis_cq_tvalid_usr && m_axis_cq_tready_usr)
     begin
        casez({np_tlp_count, pcie_cq_np_req_usr})
          4'b00_01:
        begin
           // No TLPs being delivered, user provided 1 credit
           if (pcie_cq_np_req_count_usr_reg != MAX_CREDIT[5:0])
             pcie_cq_np_req_count_usr_reg <= #TCQ pcie_cq_np_req_count_usr_reg + 6'd1;
        end
          4'b00_1?:
        begin
           // No TLPs being delivered, user provided 2 credits
           if (pcie_cq_np_req_count_usr_reg <= (MAX_CREDIT-2))
             pcie_cq_np_req_count_usr_reg <= #TCQ pcie_cq_np_req_count_usr_reg + 6'd2;
           else
             pcie_cq_np_req_count_usr_reg <= #TCQ MAX_CREDIT[5:0];
        end
          4'b01_00:
        begin
           // One NP TLP being delivered, user provided no credit
           if (pcie_cq_np_req_count_usr_reg != 6'd0)
             pcie_cq_np_req_count_usr_reg <= #TCQ pcie_cq_np_req_count_usr_reg - 6'd1;
        end
          4'b01_1?:
        begin
           // One NP TLP being delivered, user provided 2 credits
           if (pcie_cq_np_req_count_usr_reg != MAX_CREDIT[5:0])
             pcie_cq_np_req_count_usr_reg <= #TCQ pcie_cq_np_req_count_usr_reg + 6'd1;
        end
          4'b1?_00:
        begin
           // Two NP TLP being delivered, user provided no credit.
           // Decrement by 2.
           if (pcie_cq_np_req_count_usr_reg[5:1] != 5'd0)
             pcie_cq_np_req_count_usr_reg <= #TCQ pcie_cq_np_req_count_usr_reg - 6'd2;
           else
             pcie_cq_np_req_count_usr_reg[0] <= #TCQ 1'b0;
        end          
          4'b1?_01:
        begin
           // Two NP TLP being delivered, user provided 1 credit.
           // Decrement by 1.
           if (pcie_cq_np_req_count_usr_reg != 6'd0)
             pcie_cq_np_req_count_usr_reg <= #TCQ pcie_cq_np_req_count_usr_reg - 6'd1;
        end
        endcase // casez({np_tlp_count, pcie_cq_np_req_usr})
     end // if (m_axis_cq_tvalid_usr && m_axis_cq_tready_usr)
       else
     begin
       casez(pcie_cq_np_req_usr)
         2'b01:
           begin
         // No TLPs being delivered, user provided 1 credit
         if (pcie_cq_np_req_count_usr_reg != MAX_CREDIT[5:0])
           pcie_cq_np_req_count_usr_reg <= #TCQ pcie_cq_np_req_count_usr_reg + 6'd1;
           end
         2'b1?:
           begin
         // No TLPs being delivered, user provided 2 credits
         if (pcie_cq_np_req_count_usr_reg <= (MAX_CREDIT-2))
           pcie_cq_np_req_count_usr_reg <= #TCQ pcie_cq_np_req_count_usr_reg + 6'd2;
         else
           pcie_cq_np_req_count_usr_reg <= #TCQ MAX_CREDIT[5:0];
           end
         default:
           begin
           end
       endcase // casez(pcie_cq_np_req_usr)
     end // else: !if(m_axis_cq_tvalid_usr)

 // np_tlp_count and pcie_cq_np_req_count_usr only counts the credits available to user. It's masked from MSI-X TLPs.
 assign req_type_np_0            = (req_type_usr_0[3:0] != 4'd1) && (req_type_usr_0[3:2] != 2'b11);
 //assign req_type_np_1            = (req_type_usr_1[3:0] != 4'd1) && (req_type_usr_1[3:2] != 2'b11);
 //assign np_tlp_count             = {(m_axis_cq_tuser_usr[81] & req_type_np_1), (m_axis_cq_tuser_usr[80] & req_type_np_0)}; // {(SOP1 & Non-Posted), (SOP0 & Non-Posted)}
 assign np_tlp_count             = {1'b0, (is_sop_0 & req_type_np_0)}; // {(SOP1 & Non-Posted), (SOP0 & Non-Posted)}
 assign pcie_cq_np_req_count_usr = pcie_cq_np_req_count_usr_reg;

 // - Never gives a credit of one at the beginning, this is user responsibility to maintain at least 1 available credit. Tandem use case will be taken care of elsewhere
 // - Only gives credit back if it's a memory read (req_type[0] == 0)
 // - When pcie_cq_np_req_count_usr_reg is at its MAX (already saturates), do not pass to the PCIe block, so we don't over-subscribe credits in circulation.
 //   However still make sure that user credit is given back when it's at MAX.
 // - Need to add pcie_cq_np_req_usr with our internal cq_np_req_local to make up pcie_cq_np_req to the PCIe block. To ensure this works for all cq_np_req_usr values
 //   without overflowing the req line, the easiest way is to separate the two signaling into separate clock cycles; pass on cq_np_req_local when user is not using it.

 always @(posedge user_clk_i)
   if (~reset_n_user_clk_i)
     begin
    pcie_cq_np_req_usr_blk      <= #TCQ 2'd0;
     end
   else if (link_down_reset_i)
     begin
    pcie_cq_np_req_usr_blk      <= #TCQ 2'd0;
     end
   else
     if (m_axis_cq_tvalid_usr && m_axis_cq_tready_usr)
   begin
      casez({np_tlp_count, pcie_cq_np_req_usr})
        4'b00_00:
      begin
         // No TLPs being delivered, user provided no credit
         pcie_cq_np_req_usr_blk <= #TCQ 2'd0;
      end
        4'b00_01:
      begin
         // No TLPs being delivered, user provided 1 credit
         if (pcie_cq_np_req_count_usr_reg != MAX_CREDIT[5:0])
           pcie_cq_np_req_usr_blk <= #TCQ 2'd1;
         else
           pcie_cq_np_req_usr_blk <= #TCQ 2'd0;
      end
        4'b00_1?:
      begin
         // No TLPs being delivered, user provided 2 credits
         if (pcie_cq_np_req_count_usr_reg <= (MAX_CREDIT-2))       // Two available
           pcie_cq_np_req_usr_blk <= #TCQ 2'd2;
         else if (pcie_cq_np_req_count_usr_reg != MAX_CREDIT[5:0]) // One available
           pcie_cq_np_req_usr_blk <= #TCQ 2'd1;
         else
           pcie_cq_np_req_usr_blk <= #TCQ 2'd0;
      end
        4'b01_00:
      begin
         // One NP TLP being delivered, user provided no credit
         pcie_cq_np_req_usr_blk <= #TCQ 2'd0;
      end
        4'b01_01:
      begin
         // One NP TLP being delivered, user provided 1 credit
         pcie_cq_np_req_usr_blk <= #TCQ 2'd1;
      end
        4'b01_1?:
      begin
         // One NP TLP being delivered, user provided 2 credits
         if (pcie_cq_np_req_count_usr_reg != MAX_CREDIT[5:0])
           pcie_cq_np_req_usr_blk <= #TCQ 2'd2;
         else
           pcie_cq_np_req_usr_blk <= #TCQ 2'd1;
      end
        4'b1?_00:
      begin
         // Two NP TLP being delivered, user provided no credit
         pcie_cq_np_req_usr_blk <= #TCQ 2'd0;
      end          
        4'b1?_01:
      begin
         // Two NP TLP being delivered, user provided 1 credit
         pcie_cq_np_req_usr_blk <= #TCQ 2'd1;
      end
        4'b1?_1?:
      begin
         pcie_cq_np_req_usr_blk <= #TCQ 2'd2;
      end
        default:
      begin
         pcie_cq_np_req_usr_blk <= #TCQ 2'd0;
      end
      endcase // casez({np_tlp_count, pcie_cq_np_req_usr})
   end // if (m_axis_cq_tvalid_usr && m_axis_cq_tready_usr)
     else
   begin
     casez(pcie_cq_np_req_usr)
       2'b00:
         begin
           // No TLPs being delivered, user provided no credit
           pcie_cq_np_req_usr_blk <= #TCQ 2'd0;
         end
       2'b01:
         begin
           // No TLPs being delivered, user provided 1 credit
           if (pcie_cq_np_req_count_usr_reg != MAX_CREDIT[5:0])
             pcie_cq_np_req_usr_blk <= #TCQ 2'd1;
         end
       2'b1?:
         begin
           // No TLPs being delivered, user provided 2 credits
           if (pcie_cq_np_req_count_usr_reg <= (MAX_CREDIT-2))       // Two available
             pcie_cq_np_req_usr_blk <= #TCQ 2'd2;
           else if (pcie_cq_np_req_count_usr_reg != MAX_CREDIT[5:0]) // One available
             pcie_cq_np_req_usr_blk <= #TCQ 2'd1;
           else
             pcie_cq_np_req_usr_blk <= #TCQ 2'd0;
         end
       default:
         begin
             pcie_cq_np_req_usr_blk <= #TCQ 2'd0;
         end
     endcase // casez(pcie_cq_np_req_usr)
   end // else: !if(m_axis_cq_tvalid_usr)

 assign cq_np_req_sel  = (|pcie_cq_np_req_usr_blk) ? 1'b1 : 1'b0;
 assign pcie_cq_np_req = (cq_np_req_sel) ? pcie_cq_np_req_usr_blk : {1'b0, pcie_cq_np_req_local}; // Prioritize user driven signal unless it's at MAX

 // Keeps track of the number of local credits that needs to be given out to the PCIe block
 always @ (posedge user_clk_i) begin
   if (~reset_n_user_clk_i || link_down_reset_i) begin
     // Reset condition must be in-sync with reset condition to cq_np_req_count in pcie_4_0_512b_cq_output_mux.v
     cq_np_req_count_local_blk <= #TCQ 6'b0;
   end else begin

     if ( pcie_cq_np_inc_local && (!pcie_cq_np_dec_local) ) begin
       cq_np_req_count_local_blk <= #TCQ cq_np_req_count_local_blk + 1;
     end else if ( (!pcie_cq_np_inc_local) && pcie_cq_np_dec_local ) begin
       cq_np_req_count_local_blk <= #TCQ cq_np_req_count_local_blk - 1;
     end else begin
       cq_np_req_count_local_blk <= #TCQ cq_np_req_count_local_blk;
     end

   end // if reset
 end // always @
 
 assign pcie_cq_np_req_local = |cq_np_req_count_local_blk;                                // Assert (1) when cq_np_req_count != 0
 assign pcie_cq_np_inc_local = local_static_req && (~req_type[0]) && m_axis_cq_tready;    // Add one if : TLP is local HIF access & is a read request (NP). local counter should never overflow because it's not producing credits.
 assign pcie_cq_np_dec_local = pcie_cq_np_req_local && (~(cq_np_req_sel));                // Subtract one if : Counter is not at 0 & Request sent to PCIe block

endmodule //


//------------------------------------------------------------------------------------------------------------------------------------------
//
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
//
//------------------------------------------------------------------------------------------------------------------------------------------

`timescale 1ns / 1ps

module shell_utils_pcie_credit_handler_v2_0_0  #(
  parameter       C_TDATA_WIDTH    = 512,
  parameter       C_TUSER_WIDTH    = 183

)(
  input                           user_clk,
  input                           user_resetn,
  input                           pcie_link_up,
  
  // PCIe Link toggle status/clear
  output                          pcie_link_up_toggle_status,
  input                           pcie_link_up_toggle_clear,

  // CQ interface at PCIe output (monitor interface)
  input  [C_TDATA_WIDTH-1:0]      mon_axis_cq_tdata,
  input                           mon_axis_cq_tvalid,
  input                           mon_axis_cq_tready,

  // CQ interface post local IP (monitor interface)
  input  [C_TDATA_WIDTH-1:0]      mon_axis_cq_usr_tdata,
  input  [C_TUSER_WIDTH-1:0]      mon_axis_cq_usr_tuser,
  input                           mon_axis_cq_usr_tvalid,  
  input                           mon_axis_cq_usr_tready,
  
  // Master PCIE4 Cfg Status I/F
  input  [1:0]                    m_pcie_cq_np_req,
  output [5:0]                    m_pcie_cq_np_req_count,
  output [1:0]                    m_cfg_current_speed,
  output                          m_cfg_err_cor_out,
  output                          m_cfg_err_fatal_out,
  output                          m_cfg_err_nonfatal_out,
  output [15:0]                   m_cfg_function_status,
  output [4:0]                    m_cfg_local_error_out,
  output [5:0]                    m_cfg_ltssm_state,
  output [1:0]                    m_cfg_max_payload,
  output [2:0]                    m_cfg_max_read_req,
  output [2:0]                    m_cfg_negotiated_width,
  output                          m_cfg_phy_link_down,
  output [1:0]                    m_cfg_phy_link_status,
  output                          m_cfg_pl_status_change,
  output [5:0]                    m_pcie_rq_seq_num0,
  output [5:0]                    m_pcie_rq_seq_num1,
  output                          m_pcie_rq_seq_num_vld0,
  output                          m_pcie_rq_seq_num_vld1,
  output [3:0]                    m_cfg_tph_requester_enable,
  
  // Slave PCIE4 Cfg Status I/F
  output [1:0]                    s_pcie_cq_np_req,
  input  [5:0]                    s_pcie_cq_np_req_count,
  input  [1:0]                    s_cfg_current_speed,
  input                           s_cfg_err_cor_out,
  input                           s_cfg_err_fatal_out,
  input                           s_cfg_err_nonfatal_out,
  input  [15:0]                   s_cfg_function_status,
  input  [4:0]                    s_cfg_local_error_out,
  input  [5:0]                    s_cfg_ltssm_state,
  input  [1:0]                    s_cfg_max_payload,
  input  [2:0]                    s_cfg_max_read_req,
  input  [2:0]                    s_cfg_negotiated_width,
  input                           s_cfg_phy_link_down,
  input  [1:0]                    s_cfg_phy_link_status,
  input                           s_cfg_pl_status_change,
  input  [5:0]                    s_pcie_rq_seq_num0,
  input  [5:0]                    s_pcie_rq_seq_num1,
  input                           s_pcie_rq_seq_num_vld0,
  input                           s_pcie_rq_seq_num_vld1,
  input  [3:0]                    s_cfg_tph_requester_enable
  
);

wire [1:0] pcie_cq_np_req_usr;
wire link_down_reset_i = ~pcie_link_up;
wire pcie_link_toggle;

reg pcie_link_toggle_reg = 0;

// Assign cfg status pass through signals
assign m_cfg_current_speed            = s_cfg_current_speed;
assign m_cfg_err_cor_out              = s_cfg_err_cor_out;
assign m_cfg_err_fatal_out            = s_cfg_err_fatal_out;
assign m_cfg_err_nonfatal_out         = s_cfg_err_nonfatal_out;
assign m_cfg_function_status          = s_cfg_function_status;
assign m_cfg_local_error_out          = s_cfg_local_error_out;
assign m_cfg_ltssm_state              = s_cfg_ltssm_state;
assign m_cfg_max_payload              = s_cfg_max_payload;
assign m_cfg_max_read_req             = s_cfg_max_read_req;
assign m_cfg_negotiated_width         = s_cfg_negotiated_width;
assign m_cfg_phy_link_down            = s_cfg_phy_link_down;
assign m_cfg_phy_link_status          = s_cfg_phy_link_status;
assign m_cfg_pl_status_change         = s_cfg_pl_status_change;
assign m_pcie_rq_seq_num0             = s_pcie_rq_seq_num0;
assign m_pcie_rq_seq_num1             = s_pcie_rq_seq_num1;
assign m_pcie_rq_seq_num_vld0         = s_pcie_rq_seq_num_vld0;
assign m_pcie_rq_seq_num_vld1         = s_pcie_rq_seq_num_vld1;
assign m_cfg_tph_requester_enable     = s_cfg_tph_requester_enable;


// if pcie link up toggles then latch this event, provided for s/w reporting externally
always @( posedge user_clk )
    if  ( pcie_link_up_toggle_clear ) 
      pcie_link_toggle_reg <= 0;
    else if ( !pcie_link_up ) 
      pcie_link_toggle_reg <= 1;
      
assign pcie_link_toggle = pcie_link_toggle_reg;
assign pcie_link_up_toggle_status = pcie_link_toggle;


// credit_handler_pcie_np_req module which passes s_pcie_cq_np_req output to pcie module
shell_utils_pcie_credit_handler_v2_0_0_np_req #(
      .C_TDATA_WIDTH(C_TDATA_WIDTH),
      .C_TUSER_WIDTH(C_TUSER_WIDTH)
  ) 
  credit_handler_pcie_np_req_ins (
      .user_clk_i                      (user_clk),
      .reset_n_user_clk_i              (user_resetn),
      .link_down_reset_i               (link_down_reset_i),

      .pcie_cq_np_req_usr              (pcie_cq_np_req_usr),
      .pcie_cq_np_req_count_usr        (m_pcie_cq_np_req_count),
      .pcie_cq_np_req                  (s_pcie_cq_np_req),
      .pcie_cq_np_req_count            (s_pcie_cq_np_req_count),

      .m_axis_cq_tdata                 (mon_axis_cq_tdata),
      .m_axis_cq_tvalid                (mon_axis_cq_tvalid),
      .m_axis_cq_tready                (mon_axis_cq_tready),

      .m_axis_cq_tdata_usr             (mon_axis_cq_usr_tdata),
      .m_axis_cq_tvalid_usr            (mon_axis_cq_usr_tvalid),
      .m_axis_cq_tuser_usr             (mon_axis_cq_usr_tuser),
      .m_axis_cq_tready_usr            (mon_axis_cq_usr_tready)

  );


shell_utils_pcie_credit_handler_v2_0_0_credit_gen credit_gen_static (
      .reset_n                         (user_resetn),
      .clk                             (user_clk),
      .pcie_link_up                    (pcie_link_up),
      .pcie_cq_np_req_usr_remote       (m_pcie_cq_np_req),
      .pcie_cq_np_req_usr              (pcie_cq_np_req_usr)
);

 endmodule


