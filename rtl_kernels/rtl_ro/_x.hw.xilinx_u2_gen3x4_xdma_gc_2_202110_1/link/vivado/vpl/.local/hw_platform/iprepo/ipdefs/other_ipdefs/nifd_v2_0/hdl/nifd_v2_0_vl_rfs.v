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

`timescale 1 ns / 1 ps
(* DONT_TOUCH = "TRUE" *)
module nifd_v2_0_0_reg #
  (
   parameter integer C_S_AXI_ID_WIDTH         = 1,
   parameter integer C_S_AXI_DATA_WIDTH       = 32,
   parameter integer C_S_AXI_ADDR_WIDTH       = 32,
   parameter integer C_OPT_MEM_ADDR_BITS      = 4,
   parameter integer C_USER_NUM_MEM           = 1,
   parameter integer C_MEM_ADDR_WIDTH         = 8,
   parameter integer C_GRPS                   = 4,
   parameter integer C_RDBK_WRD_CNT_WIDTH     = 4
  )
  (
   input  wire                                S_AXI_ACLK,
   input  wire                                S_AXI_ARESETN,
   input  wire [C_S_AXI_ID_WIDTH-1 : 0]       S_AXI_AWID,
   input  wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_AWADDR,
   input  wire [7 : 0]                        S_AXI_AWLEN,
   input  wire [1 : 0]                        S_AXI_AWBURST,
   input  wire                                S_AXI_AWVALID,
   output wire                                S_AXI_AWREADY,
   input  wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_WDATA,
   input  wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
   input  wire                                S_AXI_WLAST,
   input  wire                                S_AXI_WVALID,
   output wire                                S_AXI_WREADY,
   output wire [C_S_AXI_ID_WIDTH-1 : 0]       S_AXI_BID,
   output wire [1 : 0]                        S_AXI_BRESP,
   output wire                                S_AXI_BVALID,
   input  wire                                S_AXI_BREADY,
   input  wire [C_S_AXI_ID_WIDTH-1 : 0]       S_AXI_ARID,
   input  wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_ARADDR,
   input  wire [7 : 0]                        S_AXI_ARLEN,
   input  wire [1 : 0]                        S_AXI_ARBURST,
   input  wire                                S_AXI_ARVALID,
   output wire                                S_AXI_ARREADY,
   output wire [C_S_AXI_ID_WIDTH-1 : 0]       S_AXI_RID,
   output wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_RDATA,
   output wire [1 : 0]                        S_AXI_RRESP,
   output wire                                S_AXI_RLAST,
   output wire                                S_AXI_RVALID,
   input  wire                                S_AXI_RREADY,
   output wire                                start_app,
   output wire                                stop_app,
   output wire                                free_running,
   output wire [31:0]                         cfg_data,
   output wire [31:0]                         m2_cfg_data,
   output wire [31:0]                         clk_cnt,
   output wire [1:0]                          nifd_mode,
   output wire [1:0]                          clk_mode,
   output wire                                clr_cfg,
   output wire                                clr_m2_cfg,
   output wire                                clr_all,
   output wire                                clr_brkpnt,
   output wire                                start_readback,
   output wire                                rdbk_m1_or_m2,
   output wire [31:0]                         brkpoint_cond,
   output wire                                cfg_wr_en,
   output wire                                m2_cfg_wr_en,
   output wire [C_RDBK_WRD_CNT_WIDTH-1:0]     rdbk_data_addr,
   input  wire [1:0]                          clk_stat,
   input  wire                                ready,
   input  wire                                start_icap,
   input  wire                                rdy_readback_data,
   input  wire [C_RDBK_WRD_CNT_WIDTH-1:0]     rdbk_data_word_cnt,
   input  wire                                m1_cfg_full,
   input  wire                                m2_cfg_full,
   //input  wire                                rdy_clr_cfg,
   //input  wire                                rdy_brkpnt_cfg,
   input  wire [C_GRPS-1:0]                   brkpoint_grp,
   input  wire                                brkpoint,
   input  wire [31:0]                         rdback_data,
   input  wire [C_MEM_ADDR_WIDTH-1:0]         current_pointer,
   input  wire [31:0]                         cur_clk_cnt
  );

   (* DONT_TOUCH = "TRUE" *)reg  [C_S_AXI_ADDR_WIDTH-1 : 0]            axi_awaddr;
   (* DONT_TOUCH = "TRUE" *)reg                                        axi_awready;
   (* DONT_TOUCH = "TRUE" *)reg                                        axi_wready;
   (* DONT_TOUCH = "TRUE" *)reg  [1 : 0]                               axi_bresp;
   (* DONT_TOUCH = "TRUE" *)reg                                        axi_bvalid;
   (* DONT_TOUCH = "TRUE" *)reg  [C_S_AXI_ADDR_WIDTH-1 : 0]            axi_araddr;
   (* DONT_TOUCH = "TRUE" *)reg                                        axi_arready;
   (* DONT_TOUCH = "TRUE" *)reg  [C_S_AXI_DATA_WIDTH-1 : 0]            axi_rdata;
   (* DONT_TOUCH = "TRUE" *)reg  [1 : 0]                               axi_rresp;
   (* DONT_TOUCH = "TRUE" *)reg                                        axi_rlast;
   (* DONT_TOUCH = "TRUE" *)reg                                        axi_rvalid;
   (* DONT_TOUCH = "TRUE" *)wire                                       aw_wrap_en;
   (* DONT_TOUCH = "TRUE" *)wire                                       ar_wrap_en;
   (* DONT_TOUCH = "TRUE" *)wire [31:0]                                aw_wrap_size;
   (* DONT_TOUCH = "TRUE" *)wire [31:0]                                ar_wrap_size;
   (* DONT_TOUCH = "TRUE" *)reg                                        axi_awv_awr_flag;
   (* DONT_TOUCH = "TRUE" *)reg                                        axi_wv_wr_flag;
   (* DONT_TOUCH = "TRUE" *)reg                                        axi_arv_arr_flag;
   (* DONT_TOUCH = "TRUE" *)reg  [7:0]                                 axi_awlen_cntr;
   (* DONT_TOUCH = "TRUE" *)reg  [7:0]                                 axi_arlen_cntr;
   (* DONT_TOUCH = "TRUE" *)reg  [1:0]                                 axi_arburst;
   (* DONT_TOUCH = "TRUE" *)reg  [1:0]                                 axi_awburst;
   (* DONT_TOUCH = "TRUE" *)reg  [7:0]                                 axi_arlen;
   (* DONT_TOUCH = "TRUE" *)reg  [7:0]                                 axi_awlen;
   (* DONT_TOUCH = "TRUE" *)reg  [(C_S_AXI_DATA_WIDTH/8)-1 : 0]        axi_wstrb;
   (* DONT_TOUCH = "TRUE" *)reg  [C_S_AXI_DATA_WIDTH-1 : 0]            axi_wdata_temp;
   //wire [OPT_MEM_ADDR_BITS:0]                 mem_address;
   (* DONT_TOUCH = "TRUE" *)reg  [C_OPT_MEM_ADDR_BITS:0]               mem_address_wr;
   (* DONT_TOUCH = "TRUE" *)reg  [C_OPT_MEM_ADDR_BITS:0]               mem_address_rd;
   (* DONT_TOUCH = "TRUE" *)wire [C_USER_NUM_MEM-1:0]                  mem_select;
   (* DONT_TOUCH = "TRUE" *)reg  [C_S_AXI_DATA_WIDTH-1:0]              mem_data_out;
   //reg  [C_S_AXI_DATA_WIDTH-1:0]              mem_data;
   (* DONT_TOUCH = "TRUE" *)wire [C_S_AXI_DATA_WIDTH-1:0]              mem_data;
   (* DONT_TOUCH = "TRUE" *)reg                                        start_app_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        free_running_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        stop_app_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        clr_all_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        clr_cfg_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        clr_m2_cfg_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        clr_brkpnt_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        start_readback_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        rdbk_m1_or_m2_i;
   (* DONT_TOUCH = "TRUE" *)reg  [1:0]                                 nifd_mode_i;
   (* DONT_TOUCH = "TRUE" *)reg  [1:0]                                 clk_mode_i;
   (* DONT_TOUCH = "TRUE" *)reg  [31:0]                                clk_cnt_i;
   (* DONT_TOUCH = "TRUE" *)reg  [31:0]                                cfg_data_i;
   (* DONT_TOUCH = "TRUE" *)reg  [31:0]                                m2_cfg_data_i;
   (* DONT_TOUCH = "TRUE" *)reg  [31:0]                                brkpoint_cond_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        cfg_wr_en_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        m2_cfg_wr_en_i;
   (* DONT_TOUCH = "TRUE" *)reg  [1:0]                                 rdbk_data_mode_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        pulse_gen_i;
   (* DONT_TOUCH = "TRUE" *)wire                                       mem_rden;
   (* DONT_TOUCH = "TRUE" *)reg                                        mem_rden_temp1;
   (* DONT_TOUCH = "TRUE" *)reg                                        mem_rden_temp2;
   (* DONT_TOUCH = "TRUE" *)reg                                        mem_rden_temp3;
   (* DONT_TOUCH = "TRUE" *)wire [14:0]                                brkpoint_grp_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        axi_rvalid_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        axi_rlast_i;
   (* DONT_TOUCH = "TRUE" *)reg  [C_S_AXI_ID_WIDTH-1 : 0]              axi_bid_i;
   (* DONT_TOUCH = "TRUE" *)reg  [C_S_AXI_ID_WIDTH-1 : 0]              axi_rid_i;
   (* DONT_TOUCH = "TRUE" *)reg                                        resp_flag;
   (* DONT_TOUCH = "TRUE" *)reg                                        rd_resp_flag;
   (* DONT_TOUCH = "TRUE" *)reg  [C_S_AXI_ID_WIDTH-1 : 0]              axi_awid_i;
   (* DONT_TOUCH = "TRUE" *)reg  [C_S_AXI_ID_WIDTH-1 : 0]              axi_arid_i;
   (* DONT_TOUCH = "TRUE" *)reg  [C_RDBK_WRD_CNT_WIDTH-1:0]            rdbk_data_addr_i;

   assign brkpoint_grp_i[C_GRPS-1:0]          = brkpoint_grp[C_GRPS-1:0];
   assign brkpoint_grp_i[14:C_GRPS]           = 'h0;

   localparam integer ADDR_LSB                = (C_S_AXI_DATA_WIDTH/32)+ 1;
   //localparam integer OPT_MEM_ADDR_BITS       = 4;
   //localparam integer USER_NUM_MEM            = 1;

   genvar i;
   genvar j;
   genvar mem_byte_index;

   assign S_AXI_AWREADY      = axi_awready;
   assign S_AXI_WREADY       = axi_wready;
   assign S_AXI_BRESP        = axi_bresp;
   assign S_AXI_BVALID       = axi_bvalid;
   assign S_AXI_ARREADY      = axi_arready;
   assign S_AXI_RDATA        = axi_rdata;
   assign S_AXI_RRESP        = axi_rresp;
   //assign S_AXI_RLAST        = axi_rlast_i;
   assign S_AXI_RLAST        = axi_rlast;
   //assign S_AXI_RVALID       = axi_rvalid_i;
   assign S_AXI_RVALID       = axi_rvalid;
   assign S_AXI_BID          = axi_bid_i;
   assign S_AXI_RID          = axi_arid_i; //axi_rid_i;
   assign aw_wrap_size       = (C_S_AXI_DATA_WIDTH/8 * (axi_awlen));
   assign ar_wrap_size       = (C_S_AXI_DATA_WIDTH/8 * (axi_arlen));
   assign aw_wrap_en         = ((axi_awaddr & aw_wrap_size) == aw_wrap_size)? 1'b1: 1'b0;
   assign ar_wrap_en         = ((axi_araddr & ar_wrap_size) == ar_wrap_size)? 1'b1: 1'b0;

   always @( posedge S_AXI_ACLK )
   begin
     if ( S_AXI_ARESETN == 1'b0 )
     begin
       axi_awready <= 1'b0;
       axi_awv_awr_flag <= 1'b0;
       axi_awid_i <= 'h0;
     end
     else
     begin
       if (~axi_awready && S_AXI_AWVALID && ~axi_awv_awr_flag && ~axi_arv_arr_flag && resp_flag)
       begin
         if ((m1_cfg_full == 1'b1 && S_AXI_AWADDR[ADDR_LSB+C_OPT_MEM_ADDR_BITS:ADDR_LSB] == 'h08) || (m2_cfg_full == 1'b1 && S_AXI_AWADDR[ADDR_LSB+C_OPT_MEM_ADDR_BITS:ADDR_LSB] == 'h0E))
         begin
           axi_awready <= 1'b0;
         end
         else
         begin
           axi_awready <= 1'b1;
           axi_awv_awr_flag  <= 1'b1;
           axi_awid_i <= S_AXI_AWID;
         end
       end
       else if ((S_AXI_WLAST && axi_wready) || (axi_wv_wr_flag && S_AXI_AWVALID && axi_awready))
       begin
         axi_awv_awr_flag  <= 1'b0;
         axi_awready <= 1'b0;
       end
       else
       begin
         axi_awready <= 1'b0;
       end
     end
   end

   always @( posedge S_AXI_ACLK )
   begin
     if ( S_AXI_ARESETN == 1'b0 )
     begin
       axi_wready <= 1'b0;
       axi_wv_wr_flag <= 1'b0;
       axi_wstrb <= 'h0;
     end
     else
     begin
       if (~axi_wready && S_AXI_WVALID && ~axi_wv_wr_flag && resp_flag)
       begin
         axi_wready <= 1'b1;
         axi_wv_wr_flag  <= 1'b1;
         axi_wstrb <= S_AXI_WSTRB;
       end
       else if ((S_AXI_AWVALID && axi_awready) || (axi_awv_awr_flag && S_AXI_WLAST && axi_wready))
       begin
         axi_wv_wr_flag  <= 1'b0;
         axi_wready <= 1'b0;
       end
       else
       begin
         axi_wready <= 1'b0;
       end
     end
   end
   /*always @ (posedge S_AXI_ACLK)
   begin
     axi_rvalid_i <= axi_rvalid;
     axi_rlast_i <= axi_rlast;
   end*/

   always @( posedge S_AXI_ACLK )
   begin
     if ( S_AXI_ARESETN == 1'b0 )
     begin
       axi_awaddr <= 0;
       axi_awlen_cntr <= 0;
       axi_awburst <= 0;
       axi_awlen <= 0;
       axi_bid_i <= 0;
     end
     else
     begin
       if (~axi_awready && S_AXI_AWVALID && ~axi_awv_awr_flag && resp_flag)
       begin
         axi_awaddr <= S_AXI_AWADDR[C_S_AXI_ADDR_WIDTH - 1:0];
         axi_awburst <= S_AXI_AWBURST;
         axi_awlen <= S_AXI_AWLEN;
         axi_awlen_cntr <= 0;
         axi_bid_i <= axi_awid_i;
       end
       //else if((axi_awlen_cntr <= axi_awlen) && axi_wready && S_AXI_WVALID && resp_flag)
       else if(((axi_awlen_cntr <= axi_awlen) && axi_wv_wr_flag && resp_flag) || (axi_awready && S_AXI_AWVALID && axi_awv_awr_flag && axi_awv_awr_flag && resp_flag))
       begin
         axi_awlen_cntr <= axi_awlen_cntr + 1;
         axi_bid_i <= axi_awid_i;
         case (axi_awburst)
           2'b00: begin // fixed burst
                    axi_awaddr <= axi_awaddr;
                  end
           2'b01: begin //incremental burst
                    axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;
                    axi_awaddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};
                  end
           2'b10: begin //Wrapping burst
                    if (aw_wrap_en)
                    begin
                      axi_awaddr <= (axi_awaddr - aw_wrap_size);
                    end
                    else
                    begin
                      axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;
                      axi_awaddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};
                    end
                  end
           default: begin //reserved (incremental burst for example)
                      axi_awaddr <= axi_awaddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;
                    end
         endcase
       end
     end
   end

   /*always @( posedge S_AXI_ACLK )
   begin
     if ( S_AXI_ARESETN == 1'b0 )
     begin
       axi_wready <= 1'b0;
     end
     else
     begin
       if ( ~axi_wready && S_AXI_WVALID && axi_awv_awr_flag)
       begin
         axi_wready <= 1'b1;
       end
       else if (S_AXI_WLAST && axi_wready)
       begin
         axi_wready <= 1'b0;
       end
     end
   end*/

   always @( posedge S_AXI_ACLK )
   begin
     if ( S_AXI_ARESETN == 1'b0 )
     begin
       axi_bvalid <= 0;
       axi_bresp <= 2'b0;
       resp_flag <= 1'b1;
     end
     else
     begin
       //if (axi_awv_awr_flag && axi_wv_wr_flag && ~axi_bvalid && S_AXI_WLAST )
       if (axi_awv_awr_flag && axi_wv_wr_flag && ~axi_bvalid)
       begin
         axi_bvalid <= 1'b1;
         axi_bresp <= 2'b00;
         //if ((m1_cfg_full == 1'b1 && axi_awaddr[ADDR_LSB+C_OPT_MEM_ADDR_BITS:ADDR_LSB] == 'h08) || (m2_cfg_full == 1'b1 && axi_awaddr[ADDR_LSB+C_OPT_MEM_ADDR_BITS:ADDR_LSB] == 'h0E))
         //if ((m1_cfg_full == 1'b1 && mem_address_wr == 'h08) || (m2_cfg_full == 1'b1 && mem_address_wr == 'h0E))
         //begin
         //  axi_bvalid <= 1'b0;
         //  axi_bresp  <= 2'b00;
         //end
         //else
         //begin
         //  axi_bvalid <= 1'b1;
         //  axi_bresp <= 2'b00;
         //end
         resp_flag <= 1'b0;
       end
       else
       begin
         if (S_AXI_BREADY && axi_bvalid)
         begin
           axi_bvalid <= 1'b0;
           resp_flag <= 1'b1;
         end
       end
     end
   end

   always @( posedge S_AXI_ACLK )
   begin
     if ( S_AXI_ARESETN == 1'b0 )
     begin
       axi_arready <= 1'b0;
       axi_arv_arr_flag <= 1'b0;
       axi_arid_i <= 'h0;
     end
     else
     begin
       if (~axi_arready && S_AXI_ARVALID && ~axi_awv_awr_flag && ~axi_arv_arr_flag && rd_resp_flag)
       begin
         axi_arready <= 1'b1;
         axi_arv_arr_flag <= 1'b1;
         axi_arid_i <= S_AXI_ARID;
       end
       else if (axi_rvalid && S_AXI_RREADY && axi_arlen_cntr == axi_arlen)
       begin
         axi_arv_arr_flag  <= 1'b0;
       end
       else
       begin
         axi_arready <= 1'b0;
       end
     end
   end

   always @( posedge S_AXI_ACLK )
   begin
     if ( S_AXI_ARESETN == 1'b0 )
     begin
       axi_araddr <= 0;
       axi_arlen_cntr <= 0;
       axi_arburst <= 0;
       axi_arlen <= 0;
       axi_rlast <= 1'b0;
       //axi_rid_i <= 'h0;
     end
     else
     begin
       if (~axi_arready && S_AXI_ARVALID && ~axi_arv_arr_flag && rd_resp_flag)
       begin
         axi_araddr <= S_AXI_ARADDR[C_S_AXI_ADDR_WIDTH - 1:0];
         axi_arburst <= S_AXI_ARBURST;
         axi_arlen <= S_AXI_ARLEN;
         axi_arlen_cntr <= 0;
         axi_rlast <= 1'b0;
         //axi_rid_i <= axi_arid_i;
       end
       else if((axi_arlen_cntr <= axi_arlen) && axi_rvalid && S_AXI_RREADY && rd_resp_flag)
       begin
         axi_arlen_cntr <= axi_arlen_cntr + 1;
         axi_rlast <= 1'b0;
         //axi_rid_i <= axi_arid_i;
         case (axi_arburst)
           2'b00: begin // fixed burst
                    axi_araddr       <= axi_araddr;
                  end
           2'b01: begin //incremental burst
                    axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;
                    axi_araddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};
                  end
           2'b10: begin //Wrapping burst
                    if (ar_wrap_en)
                    begin
                      axi_araddr <= (axi_araddr - ar_wrap_size);
                    end
                    else
                    begin
                      axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] <= axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB] + 1;
                      axi_araddr[ADDR_LSB-1:0]  <= {ADDR_LSB{1'b0}};
                    end
                  end
           default: begin //reserved (incremental burst for example)
                      axi_araddr <= axi_araddr[C_S_AXI_ADDR_WIDTH - 1:ADDR_LSB]+1;
                    end
         endcase
       end
       else if((axi_arlen_cntr == axi_arlen) && ~axi_rlast && axi_arv_arr_flag && mem_rden_temp3)
       begin
         axi_rlast <= 1'b1;
       end
       else if (S_AXI_RREADY)
       begin
         axi_rlast <= 1'b0;
       end
     end
   end

   always @( posedge S_AXI_ACLK )
   begin
     if ( S_AXI_ARESETN == 1'b0 )
     begin
       axi_rvalid <= 0;
       axi_rresp  <= 0;
       rd_resp_flag <= 1'b1;
     end
     else
     begin
       //if (axi_arv_arr_flag && ~axi_rvalid)
       if (mem_rden_temp3 == 1'b1)
       begin
         axi_rvalid <= 1'b1;
         axi_rresp  <= 2'b0;
         rd_resp_flag <= 1'b0;
       end
       else if (axi_rvalid && S_AXI_RREADY)
       begin
         axi_rvalid <= 1'b0;
         rd_resp_flag <= 1'b1;
       end
     end
   end

   generate
     if (C_USER_NUM_MEM >= 1)
     begin
       assign mem_select  = 1;
       //assign mem_address = (axi_arv_arr_flag ? axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB]:(axi_awv_awr_flag? axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] : mem_address));
     end
   endgenerate

   always @ (posedge S_AXI_ACLK)
   begin
     if (S_AXI_ARESETN == 1'b0)
     begin
       mem_address_wr <= 'h0;
     end
     else 
     begin
       if (axi_awv_awr_flag == 1'b1)
       begin
         mem_address_wr <= axi_awaddr[ADDR_LSB+C_OPT_MEM_ADDR_BITS:ADDR_LSB];
       end
     end
   end

   always @ (posedge S_AXI_ACLK)
   begin
     if (S_AXI_ARESETN == 1'b0)
     begin
       axi_wdata_temp <= 'h0;
     end
     else 
     begin
       if (axi_wready && S_AXI_WVALID)
       begin
         axi_wdata_temp <= S_AXI_WDATA;
       end
     end
   end

   always @ (posedge S_AXI_ACLK)
   begin
     if (S_AXI_ARESETN == 1'b0)
     begin
       mem_address_rd <= 'h0;
     end
     else 
     begin
       if (axi_arv_arr_flag == 1'b1)
       begin
         mem_address_rd <= axi_araddr[ADDR_LSB+C_OPT_MEM_ADDR_BITS:ADDR_LSB];
       end
     end
   end

   generate
     for(i=0; i<= C_USER_NUM_MEM-1; i=i+1)
     begin:BRAM_GEN
       reg mem_wren;
   
       //assign mem_wren = axi_wready && S_AXI_WVALID ;
       //assign mem_wren = axi_awv_awr_flag & axi_wv_wr_flag ;
       always @ (posedge S_AXI_ACLK)
       begin
         mem_wren <= axi_awv_awr_flag & axi_wv_wr_flag ;
       end
   
       for(mem_byte_index=0; mem_byte_index<= (C_S_AXI_DATA_WIDTH/8-1); mem_byte_index=mem_byte_index+1)
       begin:BYTE_BRAM_GEN
         wire [8-1:0] data_in ;
         //wire [8-1:0] data_out;
         //reg  [8-1:0] byte_ram [0 : 31];
         integer  j;
   
         //assign data_in  = S_AXI_WDATA[(mem_byte_index*8+7) -: 8];
         assign data_in  = axi_wdata_temp[(mem_byte_index*8+7) -: 8];
         //assign data_out = byte_ram[mem_address];

         /*always @( posedge S_AXI_ACLK )
         begin
           if (mem_wren && S_AXI_WSTRB[mem_byte_index])
           begin
             byte_ram[mem_address] <= data_in;
           end
         end*/
         
         assign mem_data[(mem_byte_index*8+7) -: 8] = (mem_wren && axi_wstrb[mem_byte_index]) ? data_in : 'h0;
         /*always @ (posedge S_AXI_ACLK)
         begin
           if (S_AXI_ARESETN == 1'b0)
           begin
             mem_data[(mem_byte_index*8+7) -: 8] <= 'h0;
           end
           else if (mem_wren && S_AXI_WSTRB[mem_byte_index])
           begin
             mem_data[(mem_byte_index*8+7) -: 8] <= data_in;
           end
         end*/
       end
     end
   endgenerate

   always @ (posedge S_AXI_ACLK)
   begin
     pulse_gen_i <= axi_awv_awr_flag & axi_wv_wr_flag ;
   end
   /*always @ (posedge S_AXI_ACLK)
   begin
     pulse_gen_i <= axi_wready && S_AXI_WVALID;
   end*/

   assign mem_rden = axi_arv_arr_flag & S_AXI_ARVALID & axi_arready;

   always @ (posedge S_AXI_ACLK)
   begin
     mem_rden_temp1 <= mem_rden;
     mem_rden_temp2 <= mem_rden_temp1;
     mem_rden_temp3 <= mem_rden_temp2;
   end

   always @ (posedge S_AXI_ACLK)
   begin
     if (S_AXI_ARESETN == 1'b0)
     begin
       mem_data_out[31:0] <= 'h0;
       //rdbk_data_addr_i <= 'h0;
     end
     else
     begin
       if (mem_rden_temp2)
       begin
         case (mem_address_rd)
           'h0A: begin
                   //mem_data_out[31:0] <= {23'h000000,clk_mode_i[1:0],nifd_mode_i[1:0],brkpoint,rdy_brkpnt_cfg,rdy_clr_cfg,clk_stat[1:0]};
                   mem_data_out[31:0] <= {8'h00,brkpoint_grp_i[14:0],clk_mode_i[1:0],nifd_mode_i[1:0],brkpoint,rdy_readback_data,ready,clk_stat[1:0]};
                 end
           'h07: begin
                   mem_data_out[31:0] <= clk_cnt_i[31:0];
                 end
           'h0B: begin
                   mem_data_out[31:0] <= cur_clk_cnt[31:0];
                 end
           'h0C: begin
                   if (rdbk_data_addr_i < rdbk_data_word_cnt)
                   begin
                     mem_data_out[31:0] <= rdback_data[31:0];
                     //rdbk_data_addr_i <= rdbk_data_addr_i + 'h1;
                   end
                   else
                   begin
                     if (axi_arlen_cntr == axi_arlen)
                     begin
                       mem_data_out[31:0] <= 'h0;
                       //rdbk_data_addr_i <= 'h0;
                     end
                     else
                     begin
                       mem_data_out[31:0] <= 'h0;
                     end
                   end
                 end
           'h0D: begin
                   mem_data_out[31:0] <= rdbk_data_word_cnt;
                 end
           'h10: begin
                   mem_data_out[31:0] <= current_pointer;
                 end
           default: begin
                      mem_data_out[31:0] <= 'h0;
                    end
         endcase
       end
     end
   end

   always @ (posedge S_AXI_ACLK)
   begin
     if (S_AXI_ARESETN == 1'b0 || start_icap == 1'b1)
     begin
       rdbk_data_addr_i <= 'h0;
     end
     else
     begin
         case (mem_address_rd)
           'h0C: begin
                   if (rdbk_data_addr_i < rdbk_data_word_cnt && (axi_rvalid == 1'b1 && S_AXI_RREADY == 1'b1))
                   begin
                     rdbk_data_addr_i <= rdbk_data_addr_i + 'h1;
                   end
                   else
                   begin
                     if (((axi_arlen_cntr == axi_arlen) && (axi_arlen != 'h0)) || (rdbk_data_addr_i == rdbk_data_word_cnt))
                     begin
                       rdbk_data_addr_i <= 'h0;
                     end
                   end
                 end
           default: begin
                      rdbk_data_addr_i <= rdbk_data_addr_i;
                    end
         endcase
     end
   end
   // Mahesh Modification to fix OVM error on read responde before read
   // request
   // Original
   /*always @( mem_data_out, axi_rvalid_i)
   begin
     if (axi_rvalid_i)
     begin
       axi_rdata <= mem_data_out[31:0];
     end
     else
     begin
       axi_rdata <= 32'h00000000;
     end
   end*/
  // Modified
   always @(S_AXI_ARESETN, mem_data_out, axi_rvalid)
   begin
     if (S_AXI_ARESETN == 1'b0)
     begin
       axi_rdata <= 'h0;
     end
     else
     begin
       if (axi_rvalid)
       begin
         axi_rdata <= mem_data_out[31:0];
       end
       else // Added to avoid latch
       begin
         axi_rdata <= 32'h00000000;
       end
     end
     //else
     //begin
     //  axi_rdata <= 32'h00000000;
     //end
   end

   always @ (posedge S_AXI_ACLK)
   begin
     if (S_AXI_ARESETN == 1'b0)
     begin
       nifd_mode_i        <= 'h0;
       start_app_i        <= 1'b0;
       stop_app_i         <= 1'b0;
       free_running_i     <= 1'b0;
       clk_mode_i         <= 'h0;
       clr_m2_cfg_i       <= 1'b0;
       clr_all_i          <= 1'b0;
       clr_brkpnt_i       <= 1'b0;
       start_readback_i   <= 1'b0;
       rdbk_m1_or_m2_i    <= 1'b0;
       clk_cnt_i          <= 'h0;
       cfg_data_i         <= 'h0;
       m2_cfg_data_i      <= 'h0;
       brkpoint_cond_i    <= 'h0;
       rdbk_data_mode_i   <= 2'b00;
     end
     else
     begin
       if (pulse_gen_i)
       begin
       case(mem_address_wr)
         'h00: begin
                 start_app_i           <= pulse_gen_i;
                 free_running_i        <= mem_data[1];
               end
         'h01: begin
                 stop_app_i            <= pulse_gen_i;
               end
         'h02: begin
                   clr_all_i             <= pulse_gen_i;
               end
         'h03: begin
                   clr_cfg_i             <= pulse_gen_i;
               end
         'h04: begin
                   clr_brkpnt_i          <= pulse_gen_i;
               end
         'h05: begin
                 nifd_mode_i[1:0]      <= mem_data[1:0];
                 clk_mode_i[1:0]       <= mem_data[3:2];
                 rdbk_data_mode_i[1:0] <= mem_data[5:4]; // 00 - auto deque, 01 - host deque
               end
         'h06: begin
                 start_readback_i      <= pulse_gen_i;
                 rdbk_m1_or_m2_i       <= mem_data[0];
               end
         'h07: begin
                 clk_cnt_i[31:0]       <= mem_data[31:0];
               end
         'h08: begin
                 if (m1_cfg_full == 1'b1)
                 begin
                   cfg_wr_en_i           <= 1'b0;
                   cfg_data_i[31:0]      <= 'h0;
                 end
                 else
                 begin
                   cfg_wr_en_i           <= pulse_gen_i;
                   cfg_data_i[31:0]      <= mem_data[31:0];
                 end
               end
         'h09: begin
                 brkpoint_cond_i[31:0] <= mem_data[31:0];
               end
         'h0E: begin
                 if (m2_cfg_full == 1'b1)
                 begin
                   m2_cfg_wr_en_i        <= 1'b0;
                   m2_cfg_data_i[31:0]   <= 'h0;
                 end
                 else
                 begin
                   m2_cfg_wr_en_i           <= pulse_gen_i;
                   m2_cfg_data_i[31:0]      <= mem_data[31:0];
                 end
               end
         'h0F: begin
                 clr_m2_cfg_i        <= pulse_gen_i;
               end
         default: begin
                    start_app_i        <= start_app_i;
                    free_running_i     <= free_running_i;
                    stop_app_i         <= stop_app_i;
                    clk_cnt_i          <= clk_cnt_i;
                    brkpoint_cond_i    <= brkpoint_cond_i;
                    nifd_mode_i        <= nifd_mode_i;
                    clk_mode_i         <= clk_mode_i;
                    clr_cfg_i          <= clr_cfg_i;
                    clr_m2_cfg_i       <= clr_m2_cfg_i;
                    clr_all_i          <= clr_all_i;
                    clr_brkpnt_i       <= clr_brkpnt_i;
                    start_readback_i   <= start_readback_i;
                    rdbk_m1_or_m2_i    <= rdbk_m1_or_m2_i;
                    cfg_wr_en_i        <= cfg_wr_en_i;
                    m2_cfg_wr_en_i     <= m2_cfg_wr_en_i;
                  end
       endcase
       end
       else
       begin
         start_app_i      <= 1'b0;
         free_running_i   <= free_running_i;
         stop_app_i       <= 1'b0;
         clk_cnt_i        <= clk_cnt_i;
         nifd_mode_i      <= nifd_mode_i;
         clk_mode_i       <= clk_mode_i;
         clr_cfg_i        <= 1'b0;
         clr_m2_cfg_i     <= 1'b0;
         clr_all_i        <= 1'b0;
         clr_brkpnt_i     <= 1'b0;
         start_readback_i <= 1'b0;
         rdbk_m1_or_m2_i  <= rdbk_m1_or_m2_i;
         cfg_wr_en_i      <= 1'b0;
         m2_cfg_wr_en_i   <= 1'b0;
         if (clr_brkpnt_i == 1'b1 || clr_all_i == 1'b1)
         begin
           brkpoint_cond_i  <= 'h0;
         end
         else
         begin
           brkpoint_cond_i  <= brkpoint_cond_i;
         end
       end
     end
   end

   assign start_app             = start_app_i;
   assign free_running          = free_running_i;
   assign stop_app              = stop_app_i;
   assign clr_cfg               = clr_cfg_i;
   assign clr_m2_cfg            = clr_m2_cfg_i;
   assign clr_all               = clr_all_i;
   assign clr_brkpnt            = clr_brkpnt_i;
   assign start_readback        = start_readback_i;
   assign rdbk_m1_or_m2         = rdbk_m1_or_m2_i;
   assign nifd_mode             = nifd_mode_i;
   assign clk_mode              = clk_mode_i;
   assign clk_cnt               = clk_cnt_i;
   assign cfg_data              = cfg_data_i;
   assign m2_cfg_data           = m2_cfg_data_i;
   assign brkpoint_cond         = brkpoint_cond_i;
   assign cfg_wr_en             = cfg_wr_en_i;
   assign m2_cfg_wr_en          = m2_cfg_wr_en_i;
   assign rdbk_data_addr        = rdbk_data_addr_i;

endmodule



`timescale 1 ns / 1 ps
(* DONT_TOUCH = "TRUE" *)
module nifd_v2_0_0_breakpoint #
  (
   parameter                          C_RDBK_CNT        = 65536,
   parameter                          C_GRPS            = 4,
   parameter                          C_MEM_ADDR_WIDTH  = 4,
   parameter                          C_RDBK_WRD_CNT_WIDTH = 4,
   parameter                          C_MAX_RDBK_WRD_CNT = 1
  )
  (
   input  wire                        clk,
   input  wire                        rdbk_bit_valid,
   input  wire                        rdbk_bit,
   input  wire [C_MEM_ADDR_WIDTH-1:0] rdbk_bit_pos,
   input  wire                        ready,
   input  wire [31:0]                 brkpnt_cond,
   input  wire [(C_GRPS*2)-1:0]       offset_constr,
   input  wire                        clr_brkpnt,
   input  wire                        resetn,
   input  wire [C_RDBK_WRD_CNT_WIDTH-1:0] rdbk_data_addr,
   output wire                        brkpnt,
   output wire                        brkpnt_valid,
   output wire [C_GRPS-1:0]           brkpnt_grp,
   output wire [31:0]                 rdbk_data_out
  );

  (* DONT_TOUCH = "TRUE" *)reg [C_GRPS-1:0]                    pre_brkpnt_i;
  (* DONT_TOUCH = "TRUE" *)reg                                 temp;
  (* DONT_TOUCH = "TRUE" *)reg                                 temp_valid;

  always @ (posedge clk)
  begin
    if (resetn == 1'b0 || ready == 1'b1)
    begin
      temp_valid <= 1'b0;
      temp <= 1'b0;
    end
    else
    begin
      if (rdbk_bit_valid == 1'b1)
      begin
        temp_valid <= rdbk_bit_valid;
        temp <= rdbk_bit;
      end
      else
      begin
        temp_valid <= 1'b0;
      end
    end
  end

  blk_mem_gen_v8_3_6 # (
    .C_FAMILY                      ("kintex7"),
    .C_XDEVICEFAMILY               ("kintex7"),
    .C_ELABORATION_DIR             ("./"),
    .C_INTERFACE_TYPE              (0),
    .C_AXI_TYPE                    (1),
    .C_AXI_SLAVE_TYPE              (0),
    .C_USE_BRAM_BLOCK              (0),
    .C_ENABLE_32BIT_ADDRESS        (0),
    .C_CTRL_ECC_ALGO               ("NONE"),
    .C_HAS_AXI_ID                  (0),
    .C_AXI_ID_WIDTH                (4),
    .C_MEM_TYPE                    (1),
    .C_BYTE_SIZE                   (9),
    .C_ALGORITHM                   (1),
    .C_PRIM_TYPE                   (1),
    .C_LOAD_INIT_FILE              (0),
    .C_INIT_FILE_NAME              ("no_coe_file_loaded"),
    .C_INIT_FILE                   ("blk_mem_gen_0.mem"),
    .C_USE_DEFAULT_DATA            (0),
    .C_DEFAULT_DATA                ("0"),
    .C_HAS_RSTA                    (1),
    .C_RST_PRIORITY_A              ("CE"),
    .C_RSTRAM_A                    (0),
    .C_INITA_VAL                   ("0"),
    .C_HAS_ENA                     (0),
    .C_HAS_REGCEA                  (0),
    .C_USE_BYTE_WEA                (0),
    .C_WEA_WIDTH                   (1),
    .C_WRITE_MODE_A                ("WRITE_FIRST"),
    .C_WRITE_WIDTH_A               (1),
    .C_READ_WIDTH_A                (1),
    .C_WRITE_DEPTH_A               (C_RDBK_CNT),
    .C_READ_DEPTH_A                (C_RDBK_CNT),
    .C_ADDRA_WIDTH                 (C_MEM_ADDR_WIDTH),
    .C_HAS_RSTB                    (1),
    .C_RST_PRIORITY_B              ("CE"),
    .C_RSTRAM_B                    (0),
    .C_INITB_VAL                   ("0"),
    .C_HAS_ENB                     (0),
    .C_HAS_REGCEB                  (0),
    .C_USE_BYTE_WEB                (0),
    .C_WEB_WIDTH                   (1),
    .C_WRITE_MODE_B                ("WRITE_FIRST"),
    .C_WRITE_WIDTH_B               (32),
    .C_READ_WIDTH_B                (32),
    .C_WRITE_DEPTH_B               (C_MAX_RDBK_WRD_CNT),
    .C_READ_DEPTH_B                (C_MAX_RDBK_WRD_CNT),
    .C_ADDRB_WIDTH                 (C_RDBK_WRD_CNT_WIDTH),
    .C_HAS_MEM_OUTPUT_REGS_A       (0),
    .C_HAS_MEM_OUTPUT_REGS_B       (1),
    .C_HAS_MUX_OUTPUT_REGS_A       (0),
    .C_HAS_MUX_OUTPUT_REGS_B       (0),
    .C_MUX_PIPELINE_STAGES         (0),
    .C_HAS_SOFTECC_INPUT_REGS_A    (0),
    .C_HAS_SOFTECC_OUTPUT_REGS_B   (0),
    .C_USE_SOFTECC                 (0),
    .C_USE_ECC                     (0),
    .C_EN_ECC_PIPE                 (0),
    .C_HAS_INJECTERR               (0),
    .C_SIM_COLLISION_CHECK         ("ALL"),
    .C_COMMON_CLK                  (0),
    .C_DISABLE_WARN_BHV_COLL       (0),
    .C_EN_SLEEP_PIN                (0),
    .C_USE_URAM                    (0),
    .C_EN_RDADDRA_CHG              (0),
    .C_EN_RDADDRB_CHG              (0),
    .C_EN_DEEPSLEEP_PIN            (0),
    .C_EN_SHUTDOWN_PIN             (0),
    .C_EN_SAFETY_CKT               (0),
    .C_DISABLE_WARN_BHV_RANGE      (0),
    .C_COUNT_36K_BRAM              ("44"),
    .C_COUNT_18K_BRAM              ("0"),
    .C_EST_POWER_SUMMARY           ("Estimated Power for IP     :     38.640196 mW")
  ) u_rdbk_data_ram (
    .clka                          (clk),
    .rsta                          (!resetn | clr_brkpnt),
    .ena                           (1'b0),
    .regcea                        (1'b0),
    .wea                           (rdbk_bit_valid),
    .addra                         (rdbk_bit_pos),
    .dina                          (rdbk_bit),
    .clkb                          (clk),
    .rstb                          (!resetn | clr_brkpnt),
    .enb                           (1'b0),
    .regceb                        (1'b0),
    .web                           (1'b0),
    .addrb                         (rdbk_data_addr),
    .dinb                          (32'h00000000),
    .doutb                         (rdbk_data_out),
    .injectsbiterr                 (1'b0),
    .injectdbiterr                 (1'b0),
    .eccpipece                     (1'b0),
    .sleep                         (1'b0),
    .deepsleep                     (1'b0),
    .shutdown                      (1'b0),
    .s_aclk                        (1'b0),
    .s_aresetn                     (1'b0),
    .s_axi_awid                    (4'h0),
    .s_axi_awaddr                  (32'h00000000),
    .s_axi_awlen                   (8'h00),
    .s_axi_awsize                  (3'b000),
    .s_axi_awburst                 (2'b00),
    .s_axi_awvalid                 (1'b0),
    .s_axi_wdata                   (32'h00000000),
    .s_axi_wstrb                   (1'b0),
    .s_axi_wlast                   (1'b0),
    .s_axi_wvalid                  (1'b0),
    .s_axi_bready                  (1'b0),
    .s_axi_arid                    (4'h0),
    .s_axi_araddr                  (32'h00000000),
    .s_axi_arlen                   (8'h00),
    .s_axi_arsize                  (3'b000),
    .s_axi_arburst                 (2'b00),
    .s_axi_arvalid                 (1'b0),
    .s_axi_rready                  (1'b0),
    .s_axi_injectsbiterr           (1'b0),
    .s_axi_injectdbiterr           (1'b0)
  );
  /*nifd_v2_0_0_asym_ram #(
    .WIDTHA             (1),
    .SIZEA              (C_RDBK_CNT),
    .ADDRWIDTHA         (C_MEM_ADDR_WIDTH),
    .WIDTHB             (32),
    .SIZEB              (C_MAX_RDBK_WRD_CNT),
    .ADDRWIDTHB         (C_RDBK_WRD_CNT_WIDTH)
  ) u_rdbk_data_ram (
    .clkA               (clk),
    .clkB               (clk),
    .enaA               (1'b1),
    .weA                (rdbk_bit_valid),
    .enaB               (1'b1),
    .clr                (clr_brkpnt),
    .resetn             (resetn),
    .addrA              (rdbk_bit_pos),
    .addrB              (rdbk_data_addr),
    .diA                (rdbk_bit),
    .doB                (rdbk_data_out)
  );*/

  
  genvar i;
  generate
    for (i = 0; i < C_GRPS; i = i + 1)
    begin: PRE_BRKPNTS

      reg pre_brkpnt;
      wire [1:0] grp;

      assign grp = offset_constr[i*2 +: 2];

      always @ *
      begin
        case (grp)
          2'b01: begin
                   if (temp == 1'b0)
                     pre_brkpnt <= 1'b1;
                   else
                     pre_brkpnt <= 1'b0;
                 end
          2'b10: begin
                   if (temp == 1'b1)
                     pre_brkpnt <= 1'b1;
                   else
                     pre_brkpnt <= 1'b0;
                 end
          2'b11: begin
                   if (temp == 1'b0 || temp == 1'b1)
                     pre_brkpnt <= 1'b1;
                   else
                     pre_brkpnt <= 1'b0;
                 end
          default: begin
                     pre_brkpnt <= 1'b1;
                   end
        endcase
      end

      always @ (posedge clk)
      begin
        if (resetn == 1'b0 || ready == 1'b1)
        begin
          pre_brkpnt_i[i] <= 1'b1;
        end
        else if (temp_valid == 1'b1)
        begin
          pre_brkpnt_i[i] <= pre_brkpnt & pre_brkpnt_i[i];
        end
      end
    end
  endgenerate

  (* DODNT_TOUCH = "TRUE" *)nifd_v2_0_0_brkpnt # (
    .C_GRPS          (C_GRPS)
  ) u_brkpnt (
    .clk             (clk),
    .pre_brkpnts     (pre_brkpnt_i),
    .resetn          (resetn),
    .ready           (ready),
    .brkpnt          (brkpnt),
    .brkpnt_valid    (brkpnt_valid),
    .brkpnt_grp      (brkpnt_grp),
    .brkpnt_cond     (brkpnt_cond),
    .bit_valid       (temp_valid)
  );

endmodule

(* DONT_TOUCH = "TRUE" *)
module nifd_v2_0_0_brkpnt #(
   parameter         C_GRPS = 4
  )
  (
   input  wire                 clk,
   input  wire                 resetn,
   input  wire [C_GRPS-1:0]    pre_brkpnts,
   input  wire                 ready,
   output wire                 brkpnt,
   output wire                 brkpnt_valid,
   output wire [C_GRPS-1:0]    brkpnt_grp,
   input  wire [31:0]          brkpnt_cond,
   input  wire                 bit_valid
  );

  (* DONT_TOUCH = "TRUE" *)reg  brkpnt_int;
  (* DONT_TOUCH = "TRUE" *)reg  brkpnt_i;
  (* DONT_TOUCH = "TRUE" *)reg  [C_GRPS-1:0]            brkpnt_grp_i;
  (* DONT_TOUCH = "TRUE" *)reg  brkpnt_valid_int1, brkpnt_valid_int2;

  always @ (posedge clk)
  begin
    brkpnt_valid_int1 <= bit_valid;
    brkpnt_valid_int2 <= brkpnt_valid_int1;
  end

  assign brkpnt_valid = brkpnt_valid_int2;

  always @ (posedge clk)
  begin
    if (resetn == 1'b0 || ready == 1'b1)
    begin
      brkpnt_int <= 1'b0;
      brkpnt_grp_i <= 'h0;
    end
    else
    begin
      if (brkpnt_valid_int1)
      begin
        brkpnt_int <= brkpnt_i;
        brkpnt_grp_i <= pre_brkpnts;
      end
    end
  end

  generate
    if (C_GRPS == 1)
    begin
      always @ *
      begin
        case (pre_brkpnts)
          1'b0: begin
                  brkpnt_i <= brkpnt_cond[0];
                end
          1'b1: begin
                  brkpnt_i <= brkpnt_cond[1];
                end
        endcase
      end
    end
  endgenerate

  generate
    if (C_GRPS == 2)
    begin
      always @ *
      begin
        case (pre_brkpnts)
          2'b00: begin
                   brkpnt_i <= brkpnt_cond[0];
                 end
          2'b01: begin
                   brkpnt_i <= brkpnt_cond[1];
                 end
          2'b10: begin
                   brkpnt_i <= brkpnt_cond[2];
                 end
          2'b11: begin
                   brkpnt_i <= brkpnt_cond[3];
                 end
        endcase
      end
    end 
  endgenerate

  generate
    if (C_GRPS == 3)
    begin
      always @ *
      begin
        case (pre_brkpnts)
          3'b000: begin
                    brkpnt_i <= brkpnt_cond[0];
                  end
          3'b001: begin
                    brkpnt_i <= brkpnt_cond[1];
                  end
          3'b010: begin
                    brkpnt_i <= brkpnt_cond[2];
                  end
          3'b011: begin
                    brkpnt_i <= brkpnt_cond[3];
                  end
          3'b100: begin
                    brkpnt_i <= brkpnt_cond[4];
                  end
          3'b101: begin
                    brkpnt_i <= brkpnt_cond[5];
                  end
          3'b110: begin
                    brkpnt_i <= brkpnt_cond[6];
                  end
          3'b111: begin
                    brkpnt_i <= brkpnt_cond[7];
                  end
        endcase
      end
    end 
  endgenerate

  generate
    if (C_GRPS == 4)
    begin
      always @ *
      begin
        case (pre_brkpnts)
          4'b0000: begin
                     brkpnt_i <= brkpnt_cond[0];
                   end
          4'b0001: begin
                     brkpnt_i <= brkpnt_cond[1];
                   end
          4'b0010: begin
                     brkpnt_i <= brkpnt_cond[2];
                   end
          4'b0011: begin
                     brkpnt_i <= brkpnt_cond[3];
                   end
          4'b0100: begin
                     brkpnt_i <= brkpnt_cond[4];
                   end
          4'b0101: begin
                     brkpnt_i <= brkpnt_cond[5];
                   end
          4'b0110: begin
                     brkpnt_i <= brkpnt_cond[6];
                   end
          4'b0111: begin
                     brkpnt_i <= brkpnt_cond[7];
                   end
          4'b1000: begin
                     brkpnt_i <= brkpnt_cond[8];
                   end
          4'b1001: begin
                     brkpnt_i <= brkpnt_cond[9];
                   end
          4'b1010: begin
                     brkpnt_i <= brkpnt_cond[10];
                   end
          4'b1011: begin
                     brkpnt_i <= brkpnt_cond[11];
                   end
          4'b1100: begin
                     brkpnt_i <= brkpnt_cond[12];
                   end
          4'b1101: begin
                     brkpnt_i <= brkpnt_cond[13];
                   end
          4'b1110: begin
                     brkpnt_i <= brkpnt_cond[14];
                   end
          4'b1111: begin
                     brkpnt_i <= brkpnt_cond[15];
                   end
        endcase
      end
    end 
  endgenerate

  generate
    if (C_GRPS == 5)
    begin
      always @ *
      begin
        case (pre_brkpnts)
          5'b00000: begin
                      brkpnt_i <= brkpnt_cond[0];
                    end
          5'b00001: begin
                      brkpnt_i <= brkpnt_cond[1];
                    end
          5'b00010: begin
                      brkpnt_i <= brkpnt_cond[2];
                    end
          5'b00011: begin
                      brkpnt_i <= brkpnt_cond[3];
                    end
          5'b00100: begin
                      brkpnt_i <= brkpnt_cond[4];
                    end
          5'b00101: begin
                      brkpnt_i <= brkpnt_cond[5];
                    end
          5'b00110: begin
                      brkpnt_i <= brkpnt_cond[6];
                    end
          5'b00111: begin
                      brkpnt_i <= brkpnt_cond[7];
                    end
          5'b01000: begin
                      brkpnt_i <= brkpnt_cond[8];
                    end
          5'b01001: begin
                      brkpnt_i <= brkpnt_cond[9];
                    end
          5'b01010: begin
                      brkpnt_i <= brkpnt_cond[10];
                    end
          5'b01011: begin
                      brkpnt_i <= brkpnt_cond[11];
                    end
          5'b01100: begin
                      brkpnt_i <= brkpnt_cond[12];
                    end
          5'b01101: begin
                      brkpnt_i <= brkpnt_cond[13];
                    end
          5'b01110: begin
                      brkpnt_i <= brkpnt_cond[14];
                    end
          5'b01111: begin
                      brkpnt_i <= brkpnt_cond[15];
                    end
          5'b10000: begin
                      brkpnt_i <= brkpnt_cond[16];
                    end
          5'b10001: begin
                      brkpnt_i <= brkpnt_cond[17];
                    end
          5'b10010: begin
                      brkpnt_i <= brkpnt_cond[18];
                    end
          5'b10011: begin
                      brkpnt_i <= brkpnt_cond[19];
                    end
          5'b10100: begin
                      brkpnt_i <= brkpnt_cond[20];
                    end
          5'b10101: begin
                      brkpnt_i <= brkpnt_cond[21];
                    end
          5'b10110: begin
                      brkpnt_i <= brkpnt_cond[22];
                    end
          5'b10111: begin
                      brkpnt_i <= brkpnt_cond[23];
                    end
          5'b11000: begin
                      brkpnt_i <= brkpnt_cond[24];
                    end
          5'b11001: begin
                      brkpnt_i <= brkpnt_cond[25];
                    end
          5'b11010: begin
                      brkpnt_i <= brkpnt_cond[26];
                    end
          5'b11011: begin
                      brkpnt_i <= brkpnt_cond[27];
                    end
          5'b11100: begin
                      brkpnt_i <= brkpnt_cond[28];
                    end
          5'b11101: begin
                      brkpnt_i <= brkpnt_cond[29];
                    end
          5'b11110: begin
                      brkpnt_i <= brkpnt_cond[30];
                    end
          5'b11111: begin
                      brkpnt_i <= brkpnt_cond[31];
                    end
        endcase
      end
    end 
  endgenerate

  assign brkpnt = brkpnt_int;
  assign brkpnt_grp = brkpnt_grp_i;

endmodule




`timescale 1 ns / 1 ps
(* DONT_TOUCH = "TRUE" *)
module nifd_v2_0_0_clk_control 
  (
   input  wire                 start_app,
   input  wire                 stop_app,
   input  wire                 free_running,
   input  wire [1:0]           clk_mode,
   output wire                 start,
   input  wire [31:0]          max_clk_cnt,
   input  wire [31:0]          clk_cnt,
   input  wire                 brkpnt,
   input                       resetn,
   input                       kc_resetn,
   input                       cfg_rd_empty,
   input                       clk,
   input                       kernel_clk,
   input                       clk_enable_flag,
   output                      kc_flag,
   output wire [1:0]           clk_stat,
   output                      cclk
  );

  // Module for NISC mode
  nifd_v2_0_0_nisc u_nisc
    (
     .start_app         (start_app),
     .stop_app          (stop_app),
     .free_running      (free_running),
     .clk_mode          (clk_mode),
     .start             (start),
     .max_clk_cnt       (max_clk_cnt),
     .clk_cnt           (clk_cnt),
     .brkpnt            (brkpnt),
     .resetn            (resetn),
     .kc_resetn         (kc_resetn),
     .cfg_rd_empty      (cfg_rd_empty),
     .clk               (clk),
     .kernel_clk        (kernel_clk),
     .clk_enable_flag   (clk_enable_flag),
     .kc_flag           (kc_flag),
     .clk_stat          (clk_stat),
     .cclk              (cclk)
    );

endmodule




`timescale 1 ns / 1 ps
(* DONT_TOUCH = "TRUE" *)
module nifd_v2_0_0_cfg_mem #
  (
    parameter             C_DEPTH         = 65536,
    parameter             C_GRPS          = 4,
    parameter             C_MEM_INST_TYPE = 1,        // 1 - DIST_MEM SUBCORE, 2 - DIST_MEM IP xci, 3 - BLK_MEM SUBCORE, 4 - BLK_MEM IP xci
    parameter             C_MEM_ADDR_WIDTH = 4,
    parameter             C_RDBK_WRD_CNT_WIDTH = 4
  )
  (
    input  wire           clk,
    input  wire           resetn,
    input  wire           clr_cfg,
    input  wire [31:0]    cfg_wr_data,
    input  wire           cfg_wr_en,
    output wire [23:0]    cfg_rd_data_frame_addr,
    output wire [15:0]    cfg_rd_data_frame_offset,
    output wire [(C_GRPS*2)-1:0]    cfg_rd_data_offset_constr,
    output wire [C_RDBK_WRD_CNT_WIDTH-1:0] rdbk_data_word_cnt,
    output wire [C_MEM_ADDR_WIDTH-1:0] cfg_wr_addr,
    input  wire           cfg_rd_en,
    input  wire [C_MEM_ADDR_WIDTH-1:0]    cfg_rd_addr,
    output wire           cfg_rd_valid,
    output wire           cfg_wr_full,
    output wire           cfg_rd_empty
  );

   function integer rdbk_wrd_cnt;
     input integer bit_count;
     begin
       rdbk_wrd_cnt = (bit_count / 32) + 1;
     end
   endfunction
  
  (* DONT_TOUCH = "TRUE" *)reg                     cfg_wr_en_frame_addr;
  (* DONT_TOUCH = "TRUE" *)reg                     cfg_wr_en_frame_offset;
  (* DONT_TOUCH = "TRUE" *)reg                     cfg_wr_en_offset_constr;
  (* DONT_TOUCH = "TRUE" *)reg  [23:0]             cfg_wr_data_frame_addr;
  (* DONT_TOUCH = "TRUE" *)reg  [15:0]             cfg_wr_data_frame_offset;
  (* DONT_TOUCH = "TRUE" *)reg  [(C_GRPS*2)-1:0]   cfg_wr_data_offset_constr;
  (* DONT_TOUCH = "TRUE" *)wire [1:0]              payload_type;
  (* DONT_TOUCH = "TRUE" *)reg  [2:0]              current_data;

  (* DONT_TOUCH = "TRUE" *)reg  [C_MEM_ADDR_WIDTH-1:0]             cfg_wr_addr_frame_addr;
  (* DONT_TOUCH = "TRUE" *)reg  [C_MEM_ADDR_WIDTH-1:0]             cfg_wr_addr_frame_offset;
  (* DONT_TOUCH = "TRUE" *)reg  [C_MEM_ADDR_WIDTH-1:0]             cfg_wr_addr_offset_constr;
  (* DONT_TOUCH = "TRUE" *)reg  [C_MEM_ADDR_WIDTH-1:0]             cfg_wr_addr_frame_addr_temp;
  (* DONT_TOUCH = "TRUE" *)reg  [C_MEM_ADDR_WIDTH-1:0]             cfg_wr_addr_frame_offset_temp;
  (* DONT_TOUCH = "TRUE" *)reg  [C_MEM_ADDR_WIDTH-1:0]             cfg_wr_addr_offset_constr_temp;
  (* DONT_TOUCH = "TRUE" *)reg                     cfg_rd_valid_wait1_i;
  (* DONT_TOUCH = "TRUE" *)reg                     cfg_rd_valid_wait2_i;
  (* DONT_TOUCH = "TRUE" *)wire                    cfg_wr_rd_en_frame_addr;
  (* DONT_TOUCH = "TRUE" *)wire                    cfg_wr_rd_en_frame_offset;
  (* DONT_TOUCH = "TRUE" *)wire                    cfg_wr_rd_en_offset_constr;
  (* DONT_TOUCH = "TRUE" *)wire                    reset_or_clr;

  assign reset_or_clr      = !resetn | clr_cfg;
  assign payload_type[1:0] = cfg_wr_data[31:30];


  always @ (posedge clk)
  begin
    if (reset_or_clr)
    begin
      cfg_wr_en_frame_addr <= 1'b0;
      cfg_wr_en_frame_offset <= 1'b0;
      cfg_wr_en_offset_constr <= 1'b0;
      cfg_wr_data_frame_addr <= 'h0;
      cfg_wr_data_frame_offset <= 'h0;
      cfg_wr_data_offset_constr <= 'h0;
      cfg_wr_addr_frame_addr_temp <= 'h0;
      cfg_wr_addr_frame_offset_temp <= 'h0;
      cfg_wr_addr_offset_constr_temp <= 'h0;
      current_data <= 3'b0;
    end
    else
    begin
      if (cfg_wr_en)
      begin
        case (payload_type)
          2'b00: begin
                   if (current_data == 3'b000)
                   begin
                     cfg_wr_en_frame_addr <= cfg_wr_en;
                     cfg_wr_data_frame_addr <= cfg_wr_data[23:0];
                     current_data <= 3'b001;
                     cfg_wr_en_frame_offset <= 1'b0;
                     cfg_wr_en_offset_constr <= 1'b0;
                     cfg_wr_addr_frame_addr_temp <= cfg_wr_addr_frame_addr_temp + 'h1;
                   end
                 end
          2'b01: begin
                   if (current_data == 3'b001)
                   begin
                     cfg_wr_en_offset_constr <= cfg_wr_en;
                     cfg_wr_data_offset_constr <= cfg_wr_data[(C_GRPS*2)-1:0];
                     current_data <= 3'b010;
                     cfg_wr_en_frame_addr <= 1'b0;
                     cfg_wr_en_frame_offset <= 1'b0;
                     cfg_wr_addr_offset_constr_temp <= cfg_wr_addr_offset_constr_temp + 'h1;
                   end
                   else if (current_data == 3'b000)
                   begin
                     cfg_wr_en_frame_addr <= cfg_wr_en;
                     cfg_wr_en_offset_constr <= cfg_wr_en;
                     cfg_wr_data_offset_constr <= cfg_wr_data[(C_GRPS*2)-1:0];
                     current_data <= 3'b010;
                     cfg_wr_en_frame_offset <= 1'b0;
                     cfg_wr_addr_frame_addr_temp <= cfg_wr_addr_frame_addr_temp + 'h1;
                     cfg_wr_addr_offset_constr_temp <= cfg_wr_addr_offset_constr_temp + 'h1;
                   end
                 end
          2'b10: begin
                   if (current_data == 3'b010)
                   begin
                     cfg_wr_en_frame_offset <= cfg_wr_en;
                     cfg_wr_data_frame_offset <= cfg_wr_data[15:0];
                     current_data <= 3'b000;
                     cfg_wr_en_frame_addr <= 1'b0;
                     cfg_wr_en_offset_constr <= 1'b0;
                     cfg_wr_addr_frame_offset_temp <= cfg_wr_addr_frame_offset_temp + 'h1;
                   end
                   else if (current_data == 3'b001)
                   begin
                     cfg_wr_en_offset_constr <= cfg_wr_en;
                     cfg_wr_data_offset_constr <= 'h0;
                     current_data <= 3'b000;
                     cfg_wr_en_frame_addr <= 1'b0;
                     cfg_wr_en_frame_offset <= cfg_wr_en;
                     cfg_wr_data_frame_offset <= cfg_wr_data[15:0];
                     cfg_wr_addr_frame_offset_temp <= cfg_wr_addr_frame_offset_temp + 'h1;
                     cfg_wr_addr_offset_constr_temp <= cfg_wr_addr_offset_constr_temp + 'h1;
                   end
                   else if (current_data == 3'b000)
                   begin
                     cfg_wr_en_frame_addr <= cfg_wr_en;
                     cfg_wr_en_offset_constr <= cfg_wr_en;
                     cfg_wr_en_frame_offset <= cfg_wr_en;
                     cfg_wr_data_frame_offset <= cfg_wr_data[15:0];
                     cfg_wr_addr_frame_offset_temp <= cfg_wr_addr_frame_offset_temp + 'h1;
                     cfg_wr_addr_frame_addr_temp <= cfg_wr_addr_frame_addr_temp + 'h1;
                     cfg_wr_addr_offset_constr_temp <= cfg_wr_addr_offset_constr_temp + 'h1;
                     cfg_wr_data_offset_constr <= 'h0;
                     current_data <= 3'b000;
                   end
                 end
          default: begin
                     cfg_wr_en_frame_addr <= 1'b0;
                     cfg_wr_en_frame_offset <= 1'b0;
                     cfg_wr_en_offset_constr <= 1'b0;
                     cfg_wr_data_frame_addr <= 'h0;
                     cfg_wr_data_frame_offset <= 'h0;
                     cfg_wr_data_offset_constr <= 'h0;
                     cfg_wr_addr_frame_addr_temp <= cfg_wr_addr_frame_addr_temp;
                     cfg_wr_addr_frame_offset_temp <= cfg_wr_addr_frame_offset_temp;
                     cfg_wr_addr_offset_constr_temp <= cfg_wr_addr_offset_constr_temp;
                   end
        endcase
      end
      else
      begin
        cfg_wr_en_frame_addr <= 1'b0;
        cfg_wr_en_frame_offset <= 1'b0;
        cfg_wr_en_offset_constr <= 1'b0;
        cfg_wr_data_frame_addr <= cfg_wr_data_frame_addr;
        cfg_wr_data_frame_offset <= cfg_wr_data_frame_offset;
        cfg_wr_data_offset_constr <= cfg_wr_data_offset_constr;
        cfg_wr_addr_frame_addr_temp <= cfg_wr_addr_frame_addr_temp;
        cfg_wr_addr_frame_offset_temp <= cfg_wr_addr_frame_offset_temp;
        cfg_wr_addr_offset_constr_temp <= cfg_wr_addr_offset_constr_temp;
      end
    end
  end

  always @ (posedge clk)
  begin
    cfg_wr_addr_frame_addr <= cfg_wr_addr_frame_addr_temp;
    cfg_wr_addr_frame_offset <= cfg_wr_addr_frame_offset_temp;
    cfg_wr_addr_offset_constr <= cfg_wr_addr_offset_constr_temp;
  end
  
  assign cfg_wr_rd_en_frame_addr = (cfg_wr_en_frame_addr == 1'b1) ? 1'b1 : 1'b0;
  assign cfg_wr_rd_en_frame_offset = (cfg_wr_en_frame_offset == 1'b1) ? 1'b1 : 1'b0;
  assign cfg_wr_rd_en_offset_constr = (cfg_wr_en_offset_constr == 1'b1) ? 1'b1 : 1'b0;

  always @ (posedge clk)
  begin
    cfg_rd_valid_wait1_i <= cfg_rd_en;
    cfg_rd_valid_wait2_i <= cfg_rd_valid_wait1_i;
  end

  generate
    if (C_MEM_INST_TYPE == 1)
    begin
      dist_mem_gen_v8_0 #
        (
         .C_FAMILY             ("kintex7"),
         .C_ADDR_WIDTH         (16),
         .C_DEFAULT_DATA       ("0"),
         .C_DEPTH              (C_DEPTH),
         .C_HAS_CLK            (1),
         .C_HAS_D              (1),
         .C_HAS_DPO            (0),
         .C_HAS_DPRA           (1),
         .C_HAS_I_CE           (0),
         .C_HAS_QDPO           (1),
         .C_HAS_QDPO_CE        (0),
         .C_HAS_QDPO_CLK       (1),
         .C_HAS_QDPO_RST       (0),
         .C_HAS_QDPO_SRST      (1),
         .C_HAS_QSPO           (0),
         .C_HAS_QSPO_CE        (0),
         .C_HAS_QSPO_RST       (0),
         .C_HAS_QSPO_SRST      (0),
         .C_HAS_SPO            (0),
         .C_HAS_WE             (1),
         .C_MEM_INIT_FILE      ("no_coe_file_loaded"),
         .C_ELABORATION_DIR    ("./"),
         .C_MEM_TYPE           (4),
         .C_PIPELINE_STAGES    (0),
         .C_QCE_JOINED         (0),
         .C_QUALIFY_WE         (0),
         .C_READ_MIF           (0),
         .C_REG_A_D_INPUTS     (1),
         .C_REG_DPRA_INPUT     (1),
         .C_SYNC_ENABLE        (1),
         .C_WIDTH              (32),
         .C_PARSER_TYPE        (1)
        )
        nifd_cfg_frame_addr_mem
        (
         .a                    (cfg_wr_addr_frame_addr),
         .d                    (cfg_wr_data_frame_addr),
         .dpra                 (cfg_rd_addr),
         .clk                  (clk),
         .we                   (cfg_wr_rd_en_frame_addr),
         .i_ce                 (1'b1),
         .qspo_ce              (1'b1),
         .qdpo_ce              (1'b1),
         .qdpo_clk             (clk),
         .qspo_rst             (1'b0),
         .qdpo_rst             (1'b0),
         .qspo_srst            (1'b0),
         .qdpo_srst            (reset_or_clr),
         .qdpo                 (cfg_rd_data_frame_addr)
        );

      dist_mem_gen_v8_0 #
        (
         .C_FAMILY             ("kintex7"),
         .C_ADDR_WIDTH         (16),
         .C_DEFAULT_DATA       ("0"),
         .C_DEPTH              (C_DEPTH),
         .C_HAS_CLK            (1),
         .C_HAS_D              (1),
         .C_HAS_DPO            (0),
         .C_HAS_DPRA           (1),
         .C_HAS_I_CE           (0),
         .C_HAS_QDPO           (1),
         .C_HAS_QDPO_CE        (0),
         .C_HAS_QDPO_CLK       (1),
         .C_HAS_QDPO_RST       (0),
         .C_HAS_QDPO_SRST      (1),
         .C_HAS_QSPO           (0),
         .C_HAS_QSPO_CE        (0),
         .C_HAS_QSPO_RST       (0),
         .C_HAS_QSPO_SRST      (0),
         .C_HAS_SPO            (0),
         .C_HAS_WE             (1),
         .C_MEM_INIT_FILE      ("no_coe_file_loaded"),
         .C_ELABORATION_DIR    ("./"),
         .C_MEM_TYPE           (4),
         .C_PIPELINE_STAGES    (0),
         .C_QCE_JOINED         (0),
         .C_QUALIFY_WE         (0),
         .C_READ_MIF           (0),
         .C_REG_A_D_INPUTS     (1),
         .C_REG_DPRA_INPUT     (1),
         .C_SYNC_ENABLE        (1),
         .C_WIDTH              (32),
         .C_PARSER_TYPE        (1)
        )
        nifd_cfg_frame_offset_mem
        (
         .a                    (cfg_wr_addr_frame_offset),
         .d                    (cfg_wr_data_frame_offset),
         .dpra                 (cfg_rd_addr),
         .clk                  (clk),
         .we                   (cfg_wr_rd_en_frame_offset),
         .i_ce                 (1'b1),
         .qspo_ce              (1'b1),
         .qdpo_ce              (1'b1),
         .qdpo_clk             (clk),
         .qspo_rst             (1'b0),
         .qdpo_rst             (1'b0),
         .qspo_srst            (1'b0),
         .qdpo_srst            (reset_or_clr),
         .qdpo                 (cfg_rd_data_frame_offset)
        );

      dist_mem_gen_v8_0 #
        (
         .C_FAMILY             ("kintex7"),
         .C_ADDR_WIDTH         (16),
         .C_DEFAULT_DATA       ("0"),
         .C_DEPTH              (C_DEPTH),
         .C_HAS_CLK            (1),
         .C_HAS_D              (1),
         .C_HAS_DPO            (0),
         .C_HAS_DPRA           (1),
         .C_HAS_I_CE           (0),
         .C_HAS_QDPO           (1),
         .C_HAS_QDPO_CE        (0),
         .C_HAS_QDPO_CLK       (1),
         .C_HAS_QDPO_RST       (0),
         .C_HAS_QDPO_SRST      (1),
         .C_HAS_QSPO           (0),
         .C_HAS_QSPO_CE        (0),
         .C_HAS_QSPO_RST       (0),
         .C_HAS_QSPO_SRST      (0),
         .C_HAS_SPO            (0),
         .C_HAS_WE             (1),
         .C_MEM_INIT_FILE      ("no_coe_file_loaded"),
         .C_ELABORATION_DIR    ("./"),
         .C_MEM_TYPE           (4),
         .C_PIPELINE_STAGES    (0),
         .C_QCE_JOINED         (0),
         .C_QUALIFY_WE         (0),
         .C_READ_MIF           (0),
         .C_REG_A_D_INPUTS     (1),
         .C_REG_DPRA_INPUT     (1),
         .C_SYNC_ENABLE        (1),
         .C_WIDTH              (32),
         .C_PARSER_TYPE        (1)
        )
        nifd_cfg_offset_constr_mem
        (
         .a                    (cfg_wr_addr_offset_constr),
         .d                    (cfg_wr_data_offset_constr),
         .dpra                 (cfg_rd_addr),
         .clk                  (clk),
         .we                   (cfg_wr_rd_en_offset_constr),
         .i_ce                 (1'b1),
         .qspo_ce              (1'b1),
         .qdpo_ce              (1'b1),
         .qdpo_clk             (clk),
         .qspo_rst             (1'b0),
         .qdpo_rst             (1'b0),
         .qspo_srst            (1'b0),
         .qdpo_srst            (reset_or_clr),
         .qdpo                 (cfg_rd_data_offset_constr)
        );
    end
    else if (C_MEM_INST_TYPE == 2)
    begin
      dist_mem_gen_0 nifd_cfg_frame_addr_mem (
        .a                     (cfg_wr_addr_frame_addr),
        .d                     (cfg_wr_data_frame_addr),
        .dpra                  (cfg_rd_addr),
        .clk                   (clk),
        .we                    (cfg_wr_rd_en_frame_addr),
        .qdpo_clk              (clk),
        .qdpo_srst             (reset_or_clr),
        .qdpo                  (cfg_rd_data_frame_addr)
      );
      
      dist_mem_gen_0 nifd_cfg_frame_offset_mem (
        .a                     (cfg_wr_addr_frame_offset),
        .d                     (cfg_wr_data_frame_offset),
        .dpra                  (cfg_rd_addr),
        .clk                   (clk),
        .we                    (cfg_wr_rd_en_frame_offset),
        .qdpo_clk              (clk),
        .qdpo_srst             (reset_or_clr),
        .qdpo                  (cfg_rd_data_frame_offset)
      );
      
      dist_mem_gen_0 nifd_cfg_offset_constr_mem (
        .a                     (cfg_wr_addr_offset_constr),
        .d                     (cfg_wr_data_offset_constr),
        .dpra                  (cfg_rd_addr),
        .clk                   (clk),
        .we                    (cfg_wr_rd_en_offset_constr),
        .qdpo_clk              (clk),
        .qdpo_srst             (reset_or_clr),
        .qdpo                  (cfg_rd_data_offset_constr)
      );
    end
    else if (C_MEM_INST_TYPE == 3)
    begin
      blk_mem_gen_v8_3_6 # (
        .C_FAMILY                      ("kintex7"),
        .C_XDEVICEFAMILY               ("kintex7"),
        .C_ELABORATION_DIR             ("./"),
        .C_INTERFACE_TYPE              (0),
        .C_AXI_TYPE                    (1),
        .C_AXI_SLAVE_TYPE              (0),
        .C_USE_BRAM_BLOCK              (0),
        .C_ENABLE_32BIT_ADDRESS        (0),
        .C_CTRL_ECC_ALGO               ("NONE"),
        .C_HAS_AXI_ID                  (0),
        .C_AXI_ID_WIDTH                (4),
        .C_MEM_TYPE                    (1),
        .C_BYTE_SIZE                   (9),
        .C_ALGORITHM                   (1),
        .C_PRIM_TYPE                   (1),
        .C_LOAD_INIT_FILE              (0),
        .C_INIT_FILE_NAME              ("no_coe_file_loaded"),
        .C_INIT_FILE                   ("blk_mem_gen_0.mem"),
        .C_USE_DEFAULT_DATA            (0),
        .C_DEFAULT_DATA                ("0"),
        .C_HAS_RSTA                    (0),
        .C_RST_PRIORITY_A              ("CE"),
        .C_RSTRAM_A                    (0),
        .C_INITA_VAL                   ("0"),
        .C_HAS_ENA                     (0),
        .C_HAS_REGCEA                  (0),
        .C_USE_BYTE_WEA                (0),
        .C_WEA_WIDTH                   (1),
        .C_WRITE_MODE_A                ("WRITE_FIRST"),
        .C_WRITE_WIDTH_A               (24),
        .C_READ_WIDTH_A                (24),
        .C_WRITE_DEPTH_A               (C_DEPTH),
        .C_READ_DEPTH_A                (C_DEPTH),
        .C_ADDRA_WIDTH                 (C_MEM_ADDR_WIDTH),
        .C_HAS_RSTB                    (1),
        .C_RST_PRIORITY_B              ("CE"),
        .C_RSTRAM_B                    (0),
        .C_INITB_VAL                   ("0"),
        .C_HAS_ENB                     (0),
        .C_HAS_REGCEB                  (0),
        .C_USE_BYTE_WEB                (0),
        .C_WEB_WIDTH                   (1),
        .C_WRITE_MODE_B                ("WRITE_FIRST"),
        .C_WRITE_WIDTH_B               (24),
        .C_READ_WIDTH_B                (24),
        .C_WRITE_DEPTH_B               (C_DEPTH),
        .C_READ_DEPTH_B                (C_DEPTH),
        .C_ADDRB_WIDTH                 (C_MEM_ADDR_WIDTH),
        .C_HAS_MEM_OUTPUT_REGS_A       (0),
        .C_HAS_MEM_OUTPUT_REGS_B       (1),
        .C_HAS_MUX_OUTPUT_REGS_A       (0),
        .C_HAS_MUX_OUTPUT_REGS_B       (0),
        .C_MUX_PIPELINE_STAGES         (0),
        .C_HAS_SOFTECC_INPUT_REGS_A    (0),
        .C_HAS_SOFTECC_OUTPUT_REGS_B   (0),
        .C_USE_SOFTECC                 (0),
        .C_USE_ECC                     (0),
        .C_EN_ECC_PIPE                 (0),
        .C_HAS_INJECTERR               (0),
        .C_SIM_COLLISION_CHECK         ("ALL"),
        .C_COMMON_CLK                  (0),
        .C_DISABLE_WARN_BHV_COLL       (0),
        .C_EN_SLEEP_PIN                (0),
        .C_USE_URAM                    (0),
        .C_EN_RDADDRA_CHG              (0),
        .C_EN_RDADDRB_CHG              (0),
        .C_EN_DEEPSLEEP_PIN            (0),
        .C_EN_SHUTDOWN_PIN             (0),
        .C_EN_SAFETY_CKT               (0),
        .C_DISABLE_WARN_BHV_RANGE      (0),
        .C_COUNT_36K_BRAM              ("44"),
        .C_COUNT_18K_BRAM              ("0"),
        .C_EST_POWER_SUMMARY           ("Estimated Power for IP     :     38.640196 mW")
      ) nifd_cfg_frame_addr_mem (
        .clka                          (clk),
        .rsta                          (1'b0),
        .ena                           (1'b0),
        .regcea                        (1'b0),
        .wea                           (cfg_wr_rd_en_frame_addr),
        .addra                         (cfg_wr_addr_frame_addr),
        .dina                          (cfg_wr_data_frame_addr),
        .clkb                          (clk),
        .rstb                          (reset_or_clr),
        .enb                           (1'b0),
        .regceb                        (1'b0),
        .web                           (1'b0),
        .addrb                         (cfg_rd_addr),
        .dinb                          (32'h00000000),
        .doutb                         (cfg_rd_data_frame_addr),
        .injectsbiterr                 (1'b0),
        .injectdbiterr                 (1'b0),
        .eccpipece                     (1'b0),
        .sleep                         (1'b0),
        .deepsleep                     (1'b0),
        .shutdown                      (1'b0),
        .s_aclk                        (1'b0),
        .s_aresetn                     (1'b0),
        .s_axi_awid                    (4'h0),
        .s_axi_awaddr                  (32'h00000000),
        .s_axi_awlen                   (8'h00),
        .s_axi_awsize                  (3'b000),
        .s_axi_awburst                 (2'b00),
        .s_axi_awvalid                 (1'b0),
        .s_axi_wdata                   (32'h00000000),
        .s_axi_wstrb                   (1'b0),
        .s_axi_wlast                   (1'b0),
        .s_axi_wvalid                  (1'b0),
        .s_axi_bready                  (1'b0),
        .s_axi_arid                    (4'h0),
        .s_axi_araddr                  (32'h00000000),
        .s_axi_arlen                   (8'h00),
        .s_axi_arsize                  (3'b000),
        .s_axi_arburst                 (2'b00),
        .s_axi_arvalid                 (1'b0),
        .s_axi_rready                  (1'b0),
        .s_axi_injectsbiterr           (1'b0),
        .s_axi_injectdbiterr           (1'b0)
      );

      blk_mem_gen_v8_3_6 # (
        .C_FAMILY                      ("kintex7"),
        .C_XDEVICEFAMILY               ("kintex7"),
        .C_ELABORATION_DIR             ("./"),
        .C_INTERFACE_TYPE              (0),
        .C_AXI_TYPE                    (1),
        .C_AXI_SLAVE_TYPE              (0),
        .C_USE_BRAM_BLOCK              (0),
        .C_ENABLE_32BIT_ADDRESS        (0),
        .C_CTRL_ECC_ALGO               ("NONE"),
        .C_HAS_AXI_ID                  (0),
        .C_AXI_ID_WIDTH                (4),
        .C_MEM_TYPE                    (1),
        .C_BYTE_SIZE                   (9),
        .C_ALGORITHM                   (1),
        .C_PRIM_TYPE                   (1),
        .C_LOAD_INIT_FILE              (0),
        .C_INIT_FILE_NAME              ("no_coe_file_loaded"),
        .C_INIT_FILE                   ("blk_mem_gen_0.mem"),
        .C_USE_DEFAULT_DATA            (0),
        .C_DEFAULT_DATA                ("0"),
        .C_HAS_RSTA                    (0),
        .C_RST_PRIORITY_A              ("CE"),
        .C_RSTRAM_A                    (0),
        .C_INITA_VAL                   ("0"),
        .C_HAS_ENA                     (0),
        .C_HAS_REGCEA                  (0),
        .C_USE_BYTE_WEA                (0),
        .C_WEA_WIDTH                   (1),
        .C_WRITE_MODE_A                ("WRITE_FIRST"),
        .C_WRITE_WIDTH_A               (16),
        .C_READ_WIDTH_A                (16),
        .C_WRITE_DEPTH_A               (C_DEPTH),
        .C_READ_DEPTH_A                (C_DEPTH),
        .C_ADDRA_WIDTH                 (C_MEM_ADDR_WIDTH),
        .C_HAS_RSTB                    (1),
        .C_RST_PRIORITY_B              ("CE"),
        .C_RSTRAM_B                    (0),
        .C_INITB_VAL                   ("0"),
        .C_HAS_ENB                     (0),
        .C_HAS_REGCEB                  (0),
        .C_USE_BYTE_WEB                (0),
        .C_WEB_WIDTH                   (1),
        .C_WRITE_MODE_B                ("WRITE_FIRST"),
        .C_WRITE_WIDTH_B               (16),
        .C_READ_WIDTH_B                (16),
        .C_WRITE_DEPTH_B               (C_DEPTH),
        .C_READ_DEPTH_B                (C_DEPTH),
        .C_ADDRB_WIDTH                 (C_MEM_ADDR_WIDTH),
        .C_HAS_MEM_OUTPUT_REGS_A       (0),
        .C_HAS_MEM_OUTPUT_REGS_B       (1),
        .C_HAS_MUX_OUTPUT_REGS_A       (0),
        .C_HAS_MUX_OUTPUT_REGS_B       (0),
        .C_MUX_PIPELINE_STAGES         (0),
        .C_HAS_SOFTECC_INPUT_REGS_A    (0),
        .C_HAS_SOFTECC_OUTPUT_REGS_B   (0),
        .C_USE_SOFTECC                 (0),
        .C_USE_ECC                     (0),
        .C_EN_ECC_PIPE                 (0),
        .C_HAS_INJECTERR               (0),
        .C_SIM_COLLISION_CHECK         ("ALL"),
        .C_COMMON_CLK                  (0),
        .C_DISABLE_WARN_BHV_COLL       (0),
        .C_EN_SLEEP_PIN                (0),
        .C_USE_URAM                    (0),
        .C_EN_RDADDRA_CHG              (0),
        .C_EN_RDADDRB_CHG              (0),
        .C_EN_DEEPSLEEP_PIN            (0),
        .C_EN_SHUTDOWN_PIN             (0),
        .C_EN_SAFETY_CKT               (0),
        .C_DISABLE_WARN_BHV_RANGE      (0),
        .C_COUNT_36K_BRAM              ("58"),
        .C_COUNT_18K_BRAM              ("0"),
        .C_EST_POWER_SUMMARY           ("Estimated Power for IP     :     38.640196 mW")
      ) nifd_cfg_frame_offset_mem (
        .clka                          (clk),
        .rsta                          (1'b0),
        .ena                           (1'b0),
        .regcea                        (1'b0),
        .wea                           (cfg_wr_rd_en_frame_offset),
        .addra                         (cfg_wr_addr_frame_offset),
        .dina                          (cfg_wr_data_frame_offset),
        .clkb                          (clk),
        .rstb                          (reset_or_clr),
        .enb                           (1'b0),
        .regceb                        (1'b0),
        .web                           (1'b0),
        .addrb                         (cfg_rd_addr),
        .dinb                          (32'h00000000),
        .doutb                         (cfg_rd_data_frame_offset),
        .injectsbiterr                 (1'b0),
        .injectdbiterr                 (1'b0),
        .eccpipece                     (1'b0),
        .sleep                         (1'b0),
        .deepsleep                     (1'b0),
        .shutdown                      (1'b0),
        .s_aclk                        (1'b0),
        .s_aresetn                     (1'b0),
        .s_axi_awid                    (4'h0),
        .s_axi_awaddr                  (32'h00000000),
        .s_axi_awlen                   (8'h00),
        .s_axi_awsize                  (3'b000),
        .s_axi_awburst                 (2'b00),
        .s_axi_awvalid                 (1'b0),
        .s_axi_wdata                   (32'h00000000),
        .s_axi_wstrb                   (1'b0),
        .s_axi_wlast                   (1'b0),
        .s_axi_wvalid                  (1'b0),
        .s_axi_bready                  (1'b0),
        .s_axi_arid                    (4'h0),
        .s_axi_araddr                  (32'h00000000),
        .s_axi_arlen                   (8'h00),
        .s_axi_arsize                  (3'b000),
        .s_axi_arburst                 (2'b00),
        .s_axi_arvalid                 (1'b0),
        .s_axi_rready                  (1'b0),
        .s_axi_injectsbiterr           (1'b0),
        .s_axi_injectdbiterr           (1'b0)
      );

      blk_mem_gen_v8_3_6 # (
        .C_FAMILY                      ("kintex7"),
        .C_XDEVICEFAMILY               ("kintex7"),
        .C_ELABORATION_DIR             ("./"),
        .C_INTERFACE_TYPE              (0),
        .C_AXI_TYPE                    (1),
        .C_AXI_SLAVE_TYPE              (0),
        .C_USE_BRAM_BLOCK              (0),
        .C_ENABLE_32BIT_ADDRESS        (0),
        .C_CTRL_ECC_ALGO               ("NONE"),
        .C_HAS_AXI_ID                  (0),
        .C_AXI_ID_WIDTH                (4),
        .C_MEM_TYPE                    (1),
        .C_BYTE_SIZE                   (9),
        .C_ALGORITHM                   (1),
        .C_PRIM_TYPE                   (1),
        .C_LOAD_INIT_FILE              (0),
        .C_INIT_FILE_NAME              ("no_coe_file_loaded"),
        .C_INIT_FILE                   ("blk_mem_gen_0.mem"),
        .C_USE_DEFAULT_DATA            (0),
        .C_DEFAULT_DATA                ("0"),
        .C_HAS_RSTA                    (0),
        .C_RST_PRIORITY_A              ("CE"),
        .C_RSTRAM_A                    (0),
        .C_INITA_VAL                   ("0"),
        .C_HAS_ENA                     (0),
        .C_HAS_REGCEA                  (0),
        .C_USE_BYTE_WEA                (0),
        .C_WEA_WIDTH                   (1),
        .C_WRITE_MODE_A                ("WRITE_FIRST"),
        .C_WRITE_WIDTH_A               (C_GRPS*2),
        .C_READ_WIDTH_A                (C_GRPS*2),
        .C_WRITE_DEPTH_A               (C_DEPTH),
        .C_READ_DEPTH_A                (C_DEPTH),
        .C_ADDRA_WIDTH                 (C_MEM_ADDR_WIDTH),
        .C_HAS_RSTB                    (1),
        .C_RST_PRIORITY_B              ("CE"),
        .C_RSTRAM_B                    (0),
        .C_INITB_VAL                   ("0"),
        .C_HAS_ENB                     (0),
        .C_HAS_REGCEB                  (0),
        .C_USE_BYTE_WEB                (0),
        .C_WEB_WIDTH                   (1),
        .C_WRITE_MODE_B                ("WRITE_FIRST"),
        .C_WRITE_WIDTH_B               (C_GRPS*2), // Num grps * 2
        .C_READ_WIDTH_B                (C_GRPS*2), // Num grps * 2
        .C_WRITE_DEPTH_B               (C_DEPTH),
        .C_READ_DEPTH_B                (C_DEPTH),
        .C_ADDRB_WIDTH                 (C_MEM_ADDR_WIDTH),
        .C_HAS_MEM_OUTPUT_REGS_A       (0),
        .C_HAS_MEM_OUTPUT_REGS_B       (1),
        .C_HAS_MUX_OUTPUT_REGS_A       (0),
        .C_HAS_MUX_OUTPUT_REGS_B       (0),
        .C_MUX_PIPELINE_STAGES         (0),
        .C_HAS_SOFTECC_INPUT_REGS_A    (0),
        .C_HAS_SOFTECC_OUTPUT_REGS_B   (0),
        .C_USE_SOFTECC                 (0),
        .C_USE_ECC                     (0),
        .C_EN_ECC_PIPE                 (0),
        .C_HAS_INJECTERR               (0),
        .C_SIM_COLLISION_CHECK         ("ALL"),
        .C_COMMON_CLK                  (0),
        .C_DISABLE_WARN_BHV_COLL       (0),
        .C_EN_SLEEP_PIN                (0),
        .C_USE_URAM                    (0),
        .C_EN_RDADDRA_CHG              (0),
        .C_EN_RDADDRB_CHG              (0),
        .C_EN_DEEPSLEEP_PIN            (0),
        .C_EN_SHUTDOWN_PIN             (0),
        .C_EN_SAFETY_CKT               (0),
        .C_DISABLE_WARN_BHV_RANGE      (0),
        .C_COUNT_36K_BRAM              ("58"),
        .C_COUNT_18K_BRAM              ("0"),
        .C_EST_POWER_SUMMARY           ("Estimated Power for IP     :     38.640196 mW")
      ) nifd_cfg_offset_constr_mem (
        .clka                          (clk),
        .rsta                          (1'b0),
        .ena                           (1'b0),
        .regcea                        (1'b0),
        .wea                           (cfg_wr_rd_en_offset_constr),
        .addra                         (cfg_wr_addr_offset_constr),
        .dina                          (cfg_wr_data_offset_constr),
        .clkb                          (clk),
        .rstb                          (reset_or_clr),
        .enb                           (1'b0),
        .regceb                        (1'b0),
        .web                           (1'b0),
        .addrb                         (cfg_rd_addr),
        .dinb                          (32'h00000000),
        .doutb                         (cfg_rd_data_offset_constr),
        .injectsbiterr                 (1'b0),
        .injectdbiterr                 (1'b0),
        .eccpipece                     (1'b0),
        .sleep                         (1'b0),
        .deepsleep                     (1'b0),
        .shutdown                      (1'b0),
        .s_aclk                        (1'b0),
        .s_aresetn                     (1'b0),
        .s_axi_awid                    (4'h0),
        .s_axi_awaddr                  (32'h00000000),
        .s_axi_awlen                   (8'h00),
        .s_axi_awsize                  (3'b000),
        .s_axi_awburst                 (2'b00),
        .s_axi_awvalid                 (1'b0),
        .s_axi_wdata                   (32'h00000000),
        .s_axi_wstrb                   (1'b0),
        .s_axi_wlast                   (1'b0),
        .s_axi_wvalid                  (1'b0),
        .s_axi_bready                  (1'b0),
        .s_axi_arid                    (4'h0),
        .s_axi_araddr                  (32'h00000000),
        .s_axi_arlen                   (8'h00),
        .s_axi_arsize                  (3'b000),
        .s_axi_arburst                 (2'b00),
        .s_axi_arvalid                 (1'b0),
        .s_axi_rready                  (1'b0),
        .s_axi_injectsbiterr           (1'b0),
        .s_axi_injectdbiterr           (1'b0)
      );
    end
    else if (C_MEM_INST_TYPE == 4)
    begin
      blk_mem_gen_0 nifd_cfg_frame_addr_mem (
        .clka                          (clk),
        .wea                           (cfg_wr_rd_en_frame_addr),
        .addra                         (cfg_wr_addr_frame_addr),
        .dina                          (cfg_wr_data_frame_addr),
        .clkb                          (clk),
        .rstb                          (reset_or_clr),
        .addrb                         (cfg_rd_addr),
        .doutb                         (cfg_rd_data_frame_addr)
      );

      blk_mem_gen_1 nifd_cfg_frame_offset_mem (
        .clka                          (clk),
        .wea                           (cfg_wr_rd_en_frame_offset),
        .addra                         (cfg_wr_addr_frame_offset),
        .dina                          (cfg_wr_data_frame_offset),
        .clkb                          (clk),
        .rstb                          (reset_or_clr),
        .addrb                         (cfg_rd_addr),
        .doutb                         (cfg_rd_data_frame_offset)
      );

      blk_mem_gen_2 nifd_cfg_offset_constr_mem (
        .clka                          (clk),
        .wea                           (cfg_wr_rd_en_offset_constr),
        .addra                         (cfg_wr_addr_offset_constr),
        .dina                          (cfg_wr_data_offset_constr),
        .clkb                          (clk),
        .rstb                          (reset_or_clr),
        .addrb                         (cfg_rd_addr),
        .doutb                         (cfg_rd_data_offset_constr)
      );
    end
  endgenerate

  assign cfg_wr_full = (cfg_wr_addr_frame_addr == C_DEPTH-1) ? 1'b1 : 1'b0;
  assign cfg_wr_addr = cfg_wr_addr_frame_addr;
  assign cfg_rd_empty = (cfg_rd_addr == cfg_wr_addr_frame_addr) ? 1'b1 : 1'b0;
  assign cfg_rd_valid = cfg_rd_valid_wait2_i;
  assign rdbk_data_word_cnt = rdbk_wrd_cnt(cfg_wr_addr_frame_addr);
endmodule


/*----------------------------------------------------------------------------
 * Copyright (c) 2011 Xilinx, Inc.
 * This design is confidential and proprietary of Xilinx, All Rights Reserved.
 *-----------------------------------------------------------------------------
 *   ____  ____
 *  /   /\/   /
 * /___/  \  /   Vendor: Xilinx
 * \   \   \/    Date Created: 2011/10/26
 *  \   \        
 *  /   /        
 * /___/   /\    
 * \   \  /  \ 
 *  \___\/\___\
 * 
 *Device: All
 *Purpose:
 *  Implements a circuit to transfer a signal from one clock domain (TCLK) to 
 *  another (RCLK), with no known phase or frequency relationship.  The circuit
 *  uses an acknowledge system where data from TCLK will not be read in until RCLK
 *  receives the data.
 *
 *----------------------------------------------------------------------------*/
(* DONT_TOUCH = "TRUE" *) 
module nifd_v2_0_0_async_edge_xfer
(
  input TCLK_I,
  input RCLK_I,
  input DIN_I,
  output wire READY_O,
  output wire DOUT_O
); 

  (* shreg_extract = "no" *)
  reg din_reg;
  (* shreg_extract = "no" *)
  (* ASYNC_REG = "TRUE" *)reg dout_reg0;
  (* shreg_extract = "no" *)
  (* ASYNC_REG = "TRUE" *)reg dout_reg1;
  (* ASYNC_REG = "TRUE" *)reg temp_reg0;
  (* ASYNC_REG = "TRUE" *)reg temp_reg1;
  wire din_xnor_dout;
  
  initial begin
    din_reg <= 1'b0;
    dout_reg0 <= 1'b0;
    dout_reg1 <= 1'b0;
    temp_reg0 <= 1'b0;
    temp_reg1 <= 1'b0;
  end
  
  always @(posedge TCLK_I)
  begin
    if (din_xnor_dout == 1'b1)  
      din_reg <= DIN_I;
  end
  
  assign din_xnor_dout = ~(din_reg ^ temp_reg1);
  assign READY_O = din_xnor_dout;
  //need two registers to protect against metastability
  always @(posedge RCLK_I)
  begin
    dout_reg1 <= dout_reg0;
    dout_reg0 <= din_reg;
  end
  
  always @ (posedge TCLK_I)
  begin
    temp_reg1 <= temp_reg0;
    temp_reg0 <= dout_reg1;
  end

  assign DOUT_O = dout_reg1;
  
endmodule



`timescale 1 ns / 1 ps
(* DONT_TOUCH = "TRUE" *)
module nifd_v2_0_0_frame_process 
  #(
    parameter             C_MEM_ADDR_WIDTH = 4
  )
  (
    output                ready,
    //output                clk_enable,
    output [31:0]         clk_cnt,
    output                start_icap,
    output                rdy_rdbk_data,
    output                only_rdbk,
    output                clk_enable_flag,
    input                 free_running,
    input                 start_app,
    input                 start,
    input                 start_readback,
    input                 resetn,
    input                 icap_done,
    input                 kc_flag,
    input [C_MEM_ADDR_WIDTH-1:0]  cfg_wr_addr,
    input                 clk
  );

   (* DONT_TOUCH = "TRUE" *)reg  [3:0]             current_state;
   (* DONT_TOUCH = "TRUE" *)reg                    ready_i;
   (* DONT_TOUCH = "TRUE" *)reg                    start_icap_i;
   //(* DONT_TOUCH = "TRUE" *)reg                    clk_enable_i;
   (* DONT_TOUCH = "TRUE" *)reg                    clk_enable_flag_i;
   (* DONT_TOUCH = "TRUE" *)reg  [31:0]            clk_cnt_i;
   (* DONT_TOUCH = "TRUE" *)reg                    rdy_rdbk_data_i;
   (* DONT_TOUCH = "TRUE" *)reg                    only_rdbk_i;
   (* DONT_TOUCH = "TRUE" *)reg                    flag;
   (* DONT_TOUCH = "TRUE" *)(* ASYNC_REG = "TRUE" *)reg                    kc_flag_sync1, kc_flag_sync2;

   always @ (posedge clk)
   begin
     kc_flag_sync1 <= kc_flag;
     kc_flag_sync2 <= kc_flag_sync1;
   end

   always @ (posedge clk)
   begin
     if (resetn == 1'b0)
     begin
       ready_i            <= 1'b1;
       //clk_enable_i       <= 1'b0;
       clk_enable_flag_i  <= 1'b0;
       clk_cnt_i          <= 'h0;
       current_state      <= 4'b0000;
       start_icap_i       <= 1'b0;
       rdy_rdbk_data_i    <= 1'b0;
       only_rdbk_i        <= 1'b0;
       flag               <= 1'b0;
     end
     else
     begin
       case (current_state)
         4'b0000: begin
                    if (free_running == 1'b1)
                    begin
                      //clk_enable_i <= 1'b0;
                      clk_enable_flag_i <= 1'b0;
                      clk_cnt_i <= 'h0;
                      current_state <= 4'b0000;
                      ready_i <= 1'b1;
                      rdy_rdbk_data_i <= 1'b0;
                      only_rdbk_i <= 1'b0;
                    end
                    else
                    begin
                      if (start == 1'b1 && kc_flag_sync2 == 1'b0)
                      begin
                        //clk_enable_i <= 1'b1;
                        clk_enable_flag_i <= 1'b1;
                        clk_cnt_i <= clk_cnt_i + 'h1;
                        current_state <= 4'b0001;
                        ready_i <= 1'b0;
                        rdy_rdbk_data_i <= 1'b0;
                        only_rdbk_i <= 1'b0;
                      end
                      else
                      begin
                        if (start_readback == 1'b1)
                        begin
                          //clk_enable_i <= 1'b0;
                          clk_enable_flag_i <= 1'b0;
                          current_state <= 4'b0001;
                          ready_i <= 1'b0;
                          rdy_rdbk_data_i <= 1'b0;
                          only_rdbk_i <= 1'b1;
                          flag <= 1'b1;
                        end
                        else
                        begin
                          if (start_app == 1'b1)
                          begin
                            clk_cnt_i <= 'h0;
                            only_rdbk_i <= 1'b0;
                          end
                          //clk_enable_i <= 1'b0;
                          clk_enable_flag_i <= 1'b0;
                          current_state <= 4'b0000;
                          ready_i <= 1'b1;
                        end
                      end  
                    end
                  end
         4'b0001: begin
                    //clk_enable_i <= 1'b0;
                    if (flag == 1'b0)
                    begin
                      if (kc_flag_sync2 == 1'b1)
                      begin
                        start_icap_i <= 1'b1;
                        clk_enable_flag_i <= 1'b0;
                        current_state <= 4'b0010;
                      end
                    end
                    else
                    begin
                      start_icap_i <= 1'b1;
                      current_state <= 4'b0010;
                    end
                  end
         4'b0010: begin
                    start_icap_i <= 1'b0;
                    if (icap_done == 1'b1)
                    begin
                      current_state <= 4'b0010;
                    end
                    else
                    begin
                      current_state <= 4'b0011;
                    end
                  end
         4'b0011: begin
                    if (icap_done == 1'b1)
                    begin
                      current_state <= 4'b0000;
                      ready_i <= 1'b1;
                      flag <= 1'b0;
                      //only_rdbk_i <= 1'b0;
		      if (cfg_wr_addr == 'h0)
                      begin
                        rdy_rdbk_data_i <= 1'b0;
                      end
		      else
                      begin
                        rdy_rdbk_data_i <= 1'b1;
                      end
                    end
                    else
                    begin
                      current_state <= 4'b0011;
                      ready_i <= 1'b0;
                      //only_rdbk_i <= 1'b1;
                    end
                  end
         default: begin
                    current_state <= current_state;
                    ready_i <= ready_i;
                  end
       endcase
     end
   end

   assign ready            = ready_i;
   assign start_icap       = start_icap_i;
   assign clk_cnt          = clk_cnt_i;
   //assign clk_enable       = clk_enable_i;
   assign rdy_rdbk_data    = rdy_rdbk_data_i;
   assign only_rdbk        = only_rdbk_i;
   assign clk_enable_flag  = clk_enable_flag_i;
endmodule




`timescale 1 ns / 1 ps
`include "nifd_v2_0_0_family_inc.vh"
(* DONT_TOUCH = "TRUE" *)
module nifd_v2_0_0_icap #
  (
    parameter             C_BINARY        = 0,
    parameter             C_GRPS          = 4,
    parameter             C_USE_EXT_ICAP  = 0,
    parameter             C_XDEVICEFAMILY = `FAMILY_KINTEX7,
    parameter             C_MEM_ADDR_WIDTH = 4
  )
  (
    output                cfg_rd_en,
    (* MARK_DEBUG = "TRUE" *)output                icap_done,
    (* MARK_DEBUG = "TRUE" *)output                rdbk_bit,
    output                rdbk_bit_valid,
    output [C_MEM_ADDR_WIDTH-1:0]         cfg_rd_addr,
    output                brkpnt_final,
    output [C_GRPS-1:0]   brkpnt_grp_final,
    output [(C_GRPS*2)-1:0]         offset_constr,
    output [31:0]         icap_di_o,
    output                icap_csib_o,
    output                icap_rdwrb_o,
    input  [31:0]         icap_do_i,
    input  [C_MEM_ADDR_WIDTH-1:0] cfg_wr_addr,
    input                 clk,
    input                 icap_clk,
    input                 brkpnt_valid,
    (* MARK_DEBUG = "TRUE" *)input                 start_icap,
    input                 start_app,
    input                 clr_brkpnt,
    input                 resetn,
    input                 icc_resetn,
    input                 brkpnt,
    input  [C_GRPS-1:0]   brkpnt_grp,
    input                 cfg_rd_valid,
    input  [23:0]         cfg_rd_data_frame_addr,
    input  [15:0]         cfg_rd_data_frame_offset,
    input  [(C_GRPS*2)-1:0]         cfg_rd_data_offset_constr,
    input                 cfg_rd_empty
  );

  localparam                                     LC_CMD_DEPTH = (C_XDEVICEFAMILY == `FAMILY_VIRTEXU || C_XDEVICEFAMILY == `FAMILY_ZYNQUPLUS || C_XDEVICEFAMILY == `FAMILY_VIRTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXU) ? 35 : 25;
  localparam  [(25*32)-1:0]                      LC_ICAPE2_FSM = {32'h04000000,32'h04000000,32'h140006d3,32'h04000000,32'h04000000,32'h0042f8f8,32'h0c000480,32'h04000000,32'h04000000,32'h00000020,32'h0c000180,32'h04000000,32'h04000000,32'h5599aa66,32'hffffffff,32'h00000000,32'h04000000,32'h04000000,32'h00000030,32'h0c000180,32'h04000000,32'h04000000,32'h5599aa66,32'hffffffff,32'h00000000};
  localparam  [(35*32)-1:0]                      LC_ICAPE3_FSM = {32'h04000000,32'h04000000,32'h00000000,32'h0cc00080,32'h00010000,32'h0c000380,32'h00000000,32'h0c000180,32'h04000000,32'h12008000,32'h14000600,32'h00000020,32'h0c000180,32'h00000000,32'h0c000480,32'h04000000,32'h04000000,32'h04000000,32'h04000000,32'h04000000,32'h04000000,32'h04000000,32'h04000000,32'h04000000,32'h04000000,32'h00010000,32'h0cc00080,32'h00010000,32'h0c000380,32'h00000000,32'h0c000180,32'h04000000,32'h5599aa66,32'hffffffff,32'h00000000};
  localparam  [(LC_CMD_DEPTH*32)-1:0]            LC_ICAP_FSM = (C_XDEVICEFAMILY == `FAMILY_VIRTEXU || C_XDEVICEFAMILY == `FAMILY_ZYNQUPLUS || C_XDEVICEFAMILY == `FAMILY_VIRTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXU) ? LC_ICAPE3_FSM : LC_ICAPE2_FSM;

   //localparam             LC_MAX_CMD_CNT = (C_XDEVICEFAMILY == `FAMILY_VIRTEXU || C_XDEVICEFAMILY == `FAMILY_ZYNQUPLUS || C_XDEVICEFAMILY == `FAMILY_VIRTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXU) ? 35 : 25;
   localparam             LC_FAR_LOCATION = (C_XDEVICEFAMILY == `FAMILY_VIRTEXU || C_XDEVICEFAMILY == `FAMILY_ZYNQUPLUS || C_XDEVICEFAMILY == `FAMILY_VIRTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXU) ? 21 : 19;
   localparam             LC_FRAME_WRD_CNT = (C_XDEVICEFAMILY == `FAMILY_VIRTEXU || C_XDEVICEFAMILY == `FAMILY_KINTEXU) ? 261 : ( (C_XDEVICEFAMILY == `FAMILY_ZYNQUPLUS || C_XDEVICEFAMILY == `FAMILY_VIRTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXUPLUS) ? 201 : 207);
   localparam             LC_VALID_FRAME_CNT = (C_XDEVICEFAMILY == `FAMILY_VIRTEXU || C_XDEVICEFAMILY == `FAMILY_KINTEXU) ? 137 : ( (C_XDEVICEFAMILY == `FAMILY_ZYNQUPLUS || C_XDEVICEFAMILY == `FAMILY_VIRTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXUPLUS) ? 107 : 105);
   
   (* DONT_TOUCH = "TRUE" *)wire [31:0]            cfg_rd_data_frame_addr_ii; // padding 2 bits
   (* DONT_TOUCH = "TRUE" *)wire [31:0]            cfg_rd_data_frame_addr_i;
   (* DONT_TOUCH = "TRUE" *)wire [7:0]             temp_frame_addr[0:3];
   (* DONT_TOUCH = "TRUE" *)(* MARK_DEBUG = "TRUE" *)wire [31:0]            rdbk_bit_temp;
   (* RAM_STYLE = "DISTRIBUTED" *)reg  [31:0]            rdbk_mem[0:127];
   (* RAM_STYLE = "DISTRIBUTED" *)reg  [31:0]            cmd_mem[0:LC_CMD_DEPTH-1];
   (* DONT_TOUCH = "TRUE" *)(* MARK_DEBUG = "TRUE" *)reg  [31:0]            rdbk_bit_i;
   (* DONT_TOUCH = "TRUE" *)(* MARK_DEBUG = "TRUE" *)reg                    rdbk_bit_valid_i;
   (* DONT_TOUCH = "TRUE" *)(* MARK_DEBUG = "TRUE" *)reg  [2:0]             current_state;
   (* DONT_TOUCH = "TRUE" *)(* MARK_DEBUG = "TRUE" *)reg  [2:0]             icap_state;
   (* DONT_TOUCH = "TRUE" *)reg                    cfg_rd_en_i;
   (* DONT_TOUCH = "TRUE" *)reg  [31:0]            cfg_rd_addr_i;
   (* DONT_TOUCH = "TRUE" *)reg  [31:0]            frame_addr_i;
   (* DONT_TOUCH = "TRUE" *)(* ASYNC_REG = "TRUE" *)reg  [31:0]            frame_addr_i_sync1, frame_addr_i_sync2;
   (* DONT_TOUCH = "TRUE" *)reg  [15:0]            frame_offset_i;
   (* DONT_TOUCH = "TRUE" *)reg  [(C_GRPS*2)-1:0]            offset_constr_i;
   (* DONT_TOUCH = "TRUE" *)(* MARK_DEBUG = "TRUE" *)reg  [15:0]            icap_wr_cmd_cnt;
   (* DONT_TOUCH = "TRUE" *)(* MARK_DEBUG = "TRUE" *)reg  [15:0]            icap_rd_data_cnt;
   (* DONT_TOUCH = "TRUE" *)reg  [1:0]             icap_rdbk_latency;
   (* DONT_TOUCH = "TRUE" *)(* MARK_DEBUG = "TRUE" *)reg  [15:0]            rdbk_mem_cnt;
   (* DONT_TOUCH = "TRUE" *)reg  [31:0]            header_frame_data;
   (* DONT_TOUCH = "TRUE" *)reg  [C_GRPS-1:0]      brkpnt_grp_i;
   (* DONT_TOUCH = "TRUE" *)reg                    brkpnt_i;
   (* DONT_TOUCH = "TRUE" *)(* MARK_DEBUG = "TRUE" *)reg                    icap_csib;
   (* DONT_TOUCH = "TRUE" *)(* MARK_DEBUG = "TRUE" *)reg                    icap_rdwrb;
   (* DONT_TOUCH = "TRUE" *)(* MARK_DEBUG = "TRUE" *)reg  [31:0]            icap_di;
   (* DONT_TOUCH = "TRUE" *)(* MARK_DEBUG = "TRUE" *)wire [31:0]            icap_do;
   (* DONT_TOUCH = "TRUE" *)reg                    done_i;
   (* DONT_TOUCH = "TRUE" *)reg                    start_rdbk;
   (* DONT_TOUCH = "TRUE" *)reg                    start_rdbk_sync1, start_rdbk_sync2;
   (* DONT_TOUCH = "TRUE" *)reg                    rdbk_done;
   (* DONT_TOUCH = "TRUE" *)reg                    rdbk_done_sync1, rdbk_done_sync2;

   assign cfg_rd_data_frame_addr_ii = {8'b00,cfg_rd_data_frame_addr};

   genvar i, j;
   generate
     for (i = 0; i <= 3; i = i + 1)
     begin : GEN_FRAME
       for (j = 7; j >= 0; j = j - 1)
       begin : BYTE_REVERSAL
         assign temp_frame_addr[i][j] = cfg_rd_data_frame_addr_ii[(((i+1)*8)-1) - j];
       end
     end
   endgenerate

   function integer bit_pos_addr;
     input integer offset;
     begin
       bit_pos_addr = offset / 32;
     end
   endfunction

   function integer bit_pos;
     input integer offset;
     begin
       bit_pos = offset % 32;
     end
   endfunction

   genvar l;
   generate 
     for (l = 0; l < LC_CMD_DEPTH; l = l + 1)
     begin: CMD_MEM_INIT
       initial
       begin
         cmd_mem[l] <= LC_ICAP_FSM[l*32 +: 32];
       end
     end
   endgenerate
   /*initial
   begin
      if (C_BINARY)
        $readmemb(C_FILE_NAME, cmd_mem, 0, 31);
      else
        $readmemh(C_FILE_NAME, cmd_mem, 0, 31);
   end*/
   
   genvar k;
   generate 
     for (k = 0; k < 128; k = k + 1)
     begin: RDBK_MEM_INIT
       initial
       begin
         rdbk_mem[k] <= 32'h0;
       end
     end
   endgenerate

   assign cfg_rd_data_frame_addr_i[7:0] = temp_frame_addr[0];
   assign cfg_rd_data_frame_addr_i[15:8] = temp_frame_addr[1];
   assign cfg_rd_data_frame_addr_i[23:16] = temp_frame_addr[2];
   assign cfg_rd_data_frame_addr_i[31:24] = temp_frame_addr[3];

   always @ (posedge clk)
   begin
     if (resetn == 1'b0)
     begin
       current_state      <= 3'b000;
       cfg_rd_addr_i      <= 'h0;
       cfg_rd_en_i        <= 1'b0;
       rdbk_bit_i         <= 1'b0;
       rdbk_bit_valid_i   <= 1'b0;
       frame_addr_i       <= 'h0;
       frame_offset_i     <= 'h0;
       offset_constr_i    <= 'h0;
       brkpnt_i           <= 1'b0;
       brkpnt_grp_i       <= 'h0;
       done_i             <= 1'b0;
       start_rdbk         <= 1'b0;
     end
     else
     begin
       case (current_state)
         3'b000: begin
                   if (start_icap == 1'b1)
                   begin
                     done_i <= 1'b0;
                     current_state <= 3'b001;
                     cfg_rd_addr_i <= 'h0;
                   end
                   else
                   begin
                     if (clr_brkpnt == 1'b1 || start_app == 1'b1)
                     begin
                       brkpnt_i <= 1'b0;
                       brkpnt_grp_i <= 'h0;
                     end
                     done_i <= 1'b1; 
                     current_state <= 3'b000;
                   end
                 end
         3'b001: begin
                   if (cfg_rd_empty == 1'b0)
                   begin
                     cfg_rd_en_i <= 1'b1;
                     current_state <= 3'b010;
                   end
                   else
                   begin
                     cfg_rd_en_i <= 1'b0;
                     current_state <= 3'b111;
                     frame_addr_i <= 'h0;
                     frame_offset_i <= 'h0;
                     offset_constr_i <= 'h0;
                   end
                 end
         3'b010: begin
                   cfg_rd_en_i <= 1'b0;
                   if (cfg_rd_valid == 1'b1)
                   begin
                     if ((frame_addr_i == cfg_rd_data_frame_addr_i) && (cfg_rd_addr_i != 0))
                     begin
                       frame_offset_i <= cfg_rd_data_frame_offset;
                       offset_constr_i <= cfg_rd_data_offset_constr;
                       current_state <= 3'b101;
                     end
                     else
                     begin
                       frame_addr_i <= cfg_rd_data_frame_addr_i;
                       //cmd_mem[LC_FAR_LOCATION] <= cfg_rd_data_frame_addr_i;
                       frame_offset_i <= cfg_rd_data_frame_offset;
                       offset_constr_i <= cfg_rd_data_offset_constr;
                       current_state <= 3'b011;
                     end
                   end
                   else
                   begin
                     current_state <= 3'b010;
                   end
                 end
         3'b011: begin
                   if (rdbk_done_sync2 == 1'b0)
                   begin
                     start_rdbk <= 1'b1;
                     current_state <= 3'b100;
                   end
                 end
         3'b100: begin
                   if (rdbk_done_sync2 == 1'b1)
                   begin
                     start_rdbk <= 1'b0;
                     current_state <= 3'b101;
                   end
                 end
         3'b101: begin
                   rdbk_bit_valid_i <= 1'b1;
                   rdbk_bit_i <= rdbk_mem[bit_pos_addr(frame_offset_i[15:0])];
                   current_state <= 3'b110;
                 end
         3'b110: begin
                   rdbk_bit_valid_i <= 1'b0;
                   if (cfg_rd_empty == 1'b1)
                   begin
                     current_state <= 3'b111;
                   end
                   else
                   begin
                     cfg_rd_addr_i <= cfg_rd_addr_i + 'h1;
                     current_state <= 3'b001;
                   end
                 end
         3'b111: begin
                   if (brkpnt_valid == 1'b1)
                   begin
                     brkpnt_i <= brkpnt;
                     brkpnt_grp_i <= brkpnt_grp;
                     current_state <= 3'b000;
                     cfg_rd_addr_i <= 'h0;
                     done_i <= 1'b1;
                   end
                   else if (cfg_wr_addr == 'h0)
                   begin
                     current_state <= 3'b000;
                     done_i <= 1'b1;
                     cfg_rd_addr_i <= 'h0;
                   end
                   else
                   begin
                     current_state <= 3'b111;
                   end
                 end
         default: begin
                    current_state <= current_state;
                    done_i <= done_i;
                  end
       endcase
     end
   end

   always @ (posedge icap_clk)
   begin
     start_rdbk_sync1 <= start_rdbk;
     start_rdbk_sync2 <= start_rdbk_sync1;
     frame_addr_i_sync1 <= frame_addr_i;
     frame_addr_i_sync2 <= frame_addr_i_sync1;
   end

   generate
     if (C_USE_EXT_ICAP == 0)
     begin: N_EXT_ICAP
       if (C_XDEVICEFAMILY == `FAMILY_VIRTEXU || C_XDEVICEFAMILY == `FAMILY_ZYNQUPLUS || C_XDEVICEFAMILY == `FAMILY_VIRTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXU)
       begin: N_7SEIRES
         ICAPE3 # (
           .DEVICE_ID                  (32'h03651093),
           .ICAP_AUTO_SWITCH           ("DISABLE"),
           .SIM_CFG_FILE_NAME          ("NONE")
         ) icape3_inst (
           .AVAIL                      (),
           .PRDONE                     (),
           .PRERROR                    (),
           .CLK                        (icap_clk),
           .CSIB                       (icap_csib),
           .I                          (icap_di),
           .RDWRB                      (icap_rdwrb),
           .O                          (icap_do)
         );
       end
       else
       begin: SERIES7
         ICAPE2 # (
           .DEVICE_ID                  (32'h03651093),
           .ICAP_WIDTH                 ("X32"),
           .SIM_CFG_FILE_NAME          ("NONE")
         ) icape2_inst (
           .CLK                        (icap_clk),
           .CSIB                       (icap_csib),
           .I                          (icap_di),
           .RDWRB                      (icap_rdwrb),
           .O                          (icap_do)
         );
       end
       assign icap_di_o = 'h0;
       assign icap_csib_o = 'b1;
       assign icap_rdwrb_o = 'b1;
     end
     else
     begin: EXT_ICAP
       assign icap_di_o = icap_di;
       assign icap_csib_o = icap_csib;
       assign icap_rdwrb_o = icap_rdwrb;
       assign icap_do = icap_do_i;
     end
   endgenerate

  //icape2_model icape2_inst (.clk(icap_clk), .CSIB(icap_csib), .I(icap_di), .RDWRB(icap_rdwrb), .O(icap_do));   

   assign rdbk_bit_temp = {
                            rdbk_bit_i[24],
                            rdbk_bit_i[25],
                            rdbk_bit_i[26],
                            rdbk_bit_i[27],
                            rdbk_bit_i[28],
                            rdbk_bit_i[29],
                            rdbk_bit_i[30],
                            rdbk_bit_i[31],
                            rdbk_bit_i[16],
                            rdbk_bit_i[17],
                            rdbk_bit_i[18],
                            rdbk_bit_i[19],
                            rdbk_bit_i[20],
                            rdbk_bit_i[21],
                            rdbk_bit_i[22],
                            rdbk_bit_i[23],
                            rdbk_bit_i[8],
                            rdbk_bit_i[9],
                            rdbk_bit_i[10],
                            rdbk_bit_i[11],
                            rdbk_bit_i[12],
                            rdbk_bit_i[13],
                            rdbk_bit_i[14],
                            rdbk_bit_i[15],
                            rdbk_bit_i[0],
                            rdbk_bit_i[1],
                            rdbk_bit_i[2],
                            rdbk_bit_i[3],
                            rdbk_bit_i[4],
                            rdbk_bit_i[5],
                            rdbk_bit_i[6],
                            rdbk_bit_i[7]};

   assign rdbk_bit         = !rdbk_bit_temp[bit_pos(frame_offset_i[15:0])];
   assign rdbk_bit_valid   = rdbk_bit_valid_i;
   assign brkpnt_final     = brkpnt_i;
   assign brkpnt_grp_final = brkpnt_grp_i;
   assign cfg_rd_en        = cfg_rd_en_i;
   assign cfg_rd_addr      = cfg_rd_addr_i;
   assign offset_constr    = offset_constr_i;
   assign icap_done        = done_i;

   always @ (posedge icap_clk)
   begin
     if (icc_resetn == 1'b0)
     begin
       icap_csib <= 1'b1;
       icap_rdwrb <= 1'b1;
       icap_di <= 'h0;
       icap_state <= 3'b0;
       icap_wr_cmd_cnt    <= 'h0;
       icap_rd_data_cnt   <= 'h0;
       rdbk_mem_cnt       <= 'h0;
       icap_rdbk_latency  <= 'h0;
       header_frame_data  <= 'h0;
       rdbk_done <= 1'b0;
     end
     else
     begin
       case (icap_state)
         3'b000: begin
                   if (start_rdbk_sync2 == 1'b1)
                   begin
                     icap_state <= 3'b001;
                     icap_wr_cmd_cnt <= 'h0;
                     icap_rd_data_cnt <= 'h0;
                   end
                   else
                   begin
                     icap_state <= 3'b000;
                     icap_wr_cmd_cnt <= 'h0;
                     icap_rd_data_cnt <= 'h0;
                   end
                 end
         3'b001: begin
                    if (icap_wr_cmd_cnt < LC_CMD_DEPTH)
                    begin
                      icap_csib <= 1'b0;
                      icap_rdwrb <= 1'b0;
                      if (icap_wr_cmd_cnt == LC_FAR_LOCATION)
                      begin
                        icap_di <= frame_addr_i_sync2;
                      end
                      else
                      begin
                        icap_di <= cmd_mem[icap_wr_cmd_cnt];
                      end
                      //icap_di <= cmd_mem[icap_wr_cmd_cnt];
                      icap_wr_cmd_cnt <= icap_wr_cmd_cnt + 'h1;
                      icap_state <= 3'b001;
                    end
                    else
                    begin
                      icap_state <= 3'b010;
                      icap_csib <= 1'b1;
                      icap_rdwrb <= 1'b0;
                      icap_di <= 'h0;
                      icap_wr_cmd_cnt <= icap_wr_cmd_cnt;
                      icap_rd_data_cnt <= 'h0;
                      icap_rdbk_latency <= 2'b0;
                      rdbk_mem_cnt <= 'h0;
                    end
                  end
         3'b010: begin
                    icap_rdwrb <= 1'b1;
                    if (icap_rdbk_latency < 2'b01)
                    begin
                      icap_rdbk_latency <= icap_rdbk_latency + 2'b01;
                      icap_state <= 3'b010;
                    end
                    else
                    begin
                      if (icap_rd_data_cnt < LC_FRAME_WRD_CNT)
                      begin
                        if (icap_rd_data_cnt < LC_VALID_FRAME_CNT)
                        begin
                          icap_csib <= 1'b0;
                          icap_rdwrb <= 1'b1;
                          header_frame_data <= icap_do;
                          icap_rd_data_cnt <= icap_rd_data_cnt + 'h1;
                        end
                        else if (icap_rd_data_cnt == LC_VALID_FRAME_CNT)
                        begin
                          icap_csib <= 1'b0;
                          icap_rdwrb <= 1'b1;
                          header_frame_data <= icap_do;
                          icap_rd_data_cnt <= icap_rd_data_cnt + 'h1;
                        end
                        else
                        begin
                          icap_csib <= 1'b0;
                          icap_rdwrb <= 1'b1;
                          rdbk_mem[rdbk_mem_cnt] <= icap_do;
                          rdbk_mem_cnt <= rdbk_mem_cnt + 'h1;
                          icap_rd_data_cnt <= icap_rd_data_cnt + 'h1;
                        end
                      end
                      else
                      begin
                        icap_csib <= 1'b1;
                        icap_rdwrb <= 1'b0;
                        icap_state <= 3'b011;
                      end
                    end
                  end
         3'b011: begin
                     rdbk_done <= 1'b1;
                     icap_state <= 3'b100;
                 end
         3'b100: begin
                   if (start_rdbk_sync2 == 1'b0)
                   begin
                     rdbk_done <= 1'b0;
                     icap_state <= 3'b000;
                   end
                 end
         default: begin
                    icap_state <= icap_state;
                  end
       endcase
     end
   end

   always @ (posedge clk)
   begin
     rdbk_done_sync1 <= rdbk_done;
     rdbk_done_sync2 <= rdbk_done_sync1;
   end

endmodule





`timescale 1 ns / 1 ps
(* DONT_TOUCH = "TRUE" *)
module nifd_v2_0_0_nisc
  (
   input  wire                 start_app,
   input  wire                 stop_app,
   input  wire                 free_running,
   input  wire [1:0]           clk_mode,
   input  wire [31:0]          max_clk_cnt,
   input  wire [31:0]          clk_cnt,
   input  wire                 brkpnt,
   input                       resetn,
   input                       kc_resetn,
   input                       cfg_rd_empty,
   output                      start,
   input                       clk,
   input                       kernel_clk,
   input                       clk_enable_flag,
   output wire [1:0]           clk_stat,
   output                      kc_flag,
   output                      cclk
  );

   (* DONT_TOUCH = "TRUE" *)wire                        clk_enable_i;
   (* DONT_TOUCH = "TRUE" *)reg                         kc_flag_i;
   (* DONT_TOUCH = "TRUE" *)reg                         clk_enable_kc;
   (* DONT_TOUCH = "TRUE" *)reg                         current_state;
   (* DONT_TOUCH = "TRUE" *)reg                         clk_enable_fr_i;
   (* DONT_TOUCH = "TRUE" *)reg [1:0]                   clk_stat_i;
   (* DONT_TOUCH = "TRUE" *)reg                         start_stat_i;
   (* DONT_TOUCH = "TRUE" *)(* ASYNC_REG = "TRUE" *)reg start_stat_i_sync1, start_stat_i_sync2;
   (* DONT_TOUCH = "TRUE" *)(* ASYNC_REG = "TRUE" *)reg free_running_sync1, free_running_sync2;
   (* DONT_TOUCH = "TRUE" *)(* ASYNC_REG = "TRUE" *)reg clk_enable_flag_sync1, clk_enable_flag_sync2;

   always @ (posedge kernel_clk)
   begin
     start_stat_i_sync1 <= start_stat_i;
     start_stat_i_sync2 <= start_stat_i_sync1;
     free_running_sync1 <= free_running;
     free_running_sync2 <= free_running_sync1;
     clk_enable_flag_sync1 <= clk_enable_flag;
     clk_enable_flag_sync2 <= clk_enable_flag_sync1;
   end

   always @ (posedge kernel_clk)
   begin
     if (kc_resetn == 1'b0)
     begin
       clk_enable_kc <= 1'b0;
       kc_flag_i <= 1'b0;
       current_state <= 1'b0;
     end
     else
     begin
       case(current_state)
         1'b0: begin
                 if (clk_enable_flag_sync2 == 1'b1)
                 begin
                   clk_enable_kc <= 1'b1;
                   kc_flag_i <= 1'b1;
                   current_state <= 1'b1;
                 end
               end
         1'b1: begin
                 clk_enable_kc <= 1'b0;
                 if (clk_enable_flag_sync2 == 1'b0)
                 begin
                   kc_flag_i <= 1'b0;
                   current_state <= 1'b0;
                 end
               end
       endcase
     end
   end

   assign kc_flag = kc_flag_i;
   assign clk_enable_i = (start_stat_i_sync2 == 1'b0) ? 1'b0 : ((free_running_sync2 == 1'b1) ? 1'b1 : clk_enable_kc);

   /*always @ (posedge clk)
   begin
     if (resetn == 1'b0)
     begin
       free_run_i <= 1'b0;
     end
     else
     begin
       if (start_stat_i == 1'b0)
       begin
         free_run_i <= 1'b0;
       end
       else
       begin
         if (free_running == 1'b1)
         begin
           free_run_i <= 1'b1;
         end
         else
         begin
           free_run_i <= 1'b0;
         end
       end
     end
   end*/

   always @ (posedge clk)
   begin
     if (resetn == 1'b0)
     begin
       start_stat_i <= 1'b0;
     end
     else if (start_app == 1'b1)
     begin
       start_stat_i <= 1'b1;
     end
     else if (stop_app == 1'b1) 
     begin
       start_stat_i <= 1'b0;
     end
     else
     begin
       case (clk_mode)
         2'b10: begin
                  if (brkpnt == 1'b1 || (clk_cnt == max_clk_cnt && max_clk_cnt != 0 && cfg_rd_empty == 1'b1))
                  begin
                    start_stat_i <= 1'b0;
                  end
                end
         2'b01: begin
                  if (brkpnt == 1'b1)
                  begin
                    start_stat_i <= 1'b0;
                  end
                end
         default: begin
                    start_stat_i <= start_stat_i;
                  end
       endcase
     end
   end

   always @ (posedge clk)
   begin
     if (resetn == 1'b0)
     begin
       clk_enable_fr_i <= 1'b1;
     end
     else if (stop_app == 1'b1)
     begin
       clk_enable_fr_i <= 1'b0;
     end
   end

   // Logic to be added for each clock domain to generate clock enable in its
   // own clock domain
   
   nifd_v2_0_0_cclk_gen u_cclk_gen (
     .clk_enable (clk_enable_i),
     .clk_enable_fr (clk_enable_fr_i),
     .kernel_clk (kernel_clk),
     .cclk       (cclk)
   );

  always @ (posedge clk)
  begin
    if ((start_stat_i == 1'b1 && free_running == 1'b1) || (start_stat_i == 1'b0 && free_running == 1'b0 && clk_enable_fr_i == 1'b1))
    begin
      clk_stat_i <= 2'b01;
    end
    else if (start_stat_i == 1'b1 && free_running == 1'b0)
    begin
      clk_stat_i <= 2'b10;
    end
    else if (start_stat_i == 1'b0)
    begin
      clk_stat_i <= 2'b11;
    end
  end

  assign clk_stat = clk_stat_i;
  assign start = start_stat_i;

endmodule

module nifd_v2_0_0_cclk_gen (
  input clk_enable,
  input clk_enable_fr,
  input kernel_clk,
  output cclk
  );

  (* DONT_TOUCH = "TRUE" *)(* ASYNC_REG = "TRUE" *)reg clk_enable_fr_sync1, clk_enable_fr_sync;
  (* DONT_TOUCH = "TRUE" *)reg clk_enable_reg = 1'b0;

  always @ (posedge kernel_clk)
  begin
    clk_enable_fr_sync1 <= clk_enable_fr;
    clk_enable_fr_sync <= clk_enable_fr_sync1;
  end

  always @ (posedge kernel_clk)
  begin
    clk_enable_reg <= clk_enable | clk_enable_fr_sync;
  end

   BUFGCE u_bufg
    (
     .I                  (kernel_clk),
     .O                  (cclk),
     .CE                 (clk_enable_reg)
    );

endmodule



`timescale 1 ns / 1 ps
`include "nifd_v2_0_0_family_inc.vh"
(* DONT_TOUCH = "TRUE" *)
module nifd_v2_0_0_nifd #
  (
    parameter integer                            C_S00_AXI_ID_WIDTH     = 4,
    parameter integer                            C_S00_AXI_DATA_WIDTH   = 32,
    parameter integer                            C_S00_AXI_ADDR_WIDTH   = 7,
    parameter integer                            C_S00_AXI_AWUSER_WIDTH = 0,
    parameter integer                            C_S00_AXI_ARUSER_WIDTH = 0,
    parameter integer                            C_S00_AXI_WUSER_WIDTH  = 0,
    parameter integer                            C_S00_AXI_RUSER_WIDTH  = 0,
    parameter integer                            C_S00_AXI_BUSER_WIDTH  = 0,
    parameter integer                            C_USE_EXT_ICAP         = 0,
    parameter integer                            C_RDBK_CNT             = 1024,
    parameter                                    C_XDEVICEFAMILY        = `FAMILY_KINTEX7,
    parameter integer                            C_GRPS                 = 4
  )
  (
    input  wire                                  icap_clk,
    input  wire                                  kernel_clk,
    input  wire                                  s00_axi_aclk,
    input  wire                                  s00_axi_aresetn,
    input  wire [C_S00_AXI_ADDR_WIDTH-1 : 0]     s00_axi_awaddr,
    input  wire [7 : 0]                          s00_axi_awlen,
    input  wire [1 : 0]                          s00_axi_awburst,
    input  wire                                  s00_axi_awvalid,
    input  wire [C_S00_AXI_DATA_WIDTH-1 : 0]     s00_axi_wdata,
    input  wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
    input  wire                                  s00_axi_wlast,
    input  wire                                  s00_axi_wvalid,
    input  wire                                  s00_axi_bready,
    input  wire [C_S00_AXI_ADDR_WIDTH-1 : 0]     s00_axi_araddr,
    input  wire [7 : 0]                          s00_axi_arlen,
    input  wire [1 : 0]                          s00_axi_arburst,
    input  wire                                  s00_axi_arvalid,
    input  wire                                  s00_axi_rready,
    input  wire [C_S00_AXI_ID_WIDTH-1 : 0]       s00_axi_awid,
    input  wire [C_S00_AXI_ID_WIDTH-1 : 0]       s00_axi_arid,
    input  wire                                  external_brkpnt,
    input  wire [31:0]                           icap_do_i,
    output wire [31:0]                           icap_di_o,
    output wire                                  icap_csib_o,
    output wire                                  icap_rdwrb_o,
    output wire                                  brkpoint_out,
    output wire                                  s00_axi_wready,
    output wire [1 : 0]                          s00_axi_bresp,
    output wire                                  s00_axi_bvalid,
    output wire                                  s00_axi_awready,
    output wire                                  s00_axi_arready,
    output wire [C_S00_AXI_DATA_WIDTH-1 : 0]     s00_axi_rdata,
    output wire [1 : 0]                          s00_axi_rresp,
    output wire                                  s00_axi_rlast,
    output wire                                  s00_axi_rvalid,
    output wire [C_S00_AXI_ID_WIDTH-1 : 0]       s00_axi_bid,
    output wire [C_S00_AXI_ID_WIDTH-1 : 0]       s00_axi_rid,
    output wire                                  cclk
  );

  function integer calc_width;
    input integer bit_count;
    integer temp;
    begin
      temp = bit_count % 32;
      if (temp == 0)
        calc_width = bit_count / 32;
      else
        calc_width = (bit_count / 32) + 1;
    end
  endfunction

  localparam LC_MAX_RDBK_WRD_CNT = calc_width(C_RDBK_CNT/2);

  function integer clogb2;
  input [31:0] value;
  begin
    value = value - 1;
    for (clogb2 = 0; value > 0; clogb2 = clogb2 + 1)
    begin
      value = value >> 1;
    end
  end
  endfunction

  //localparam                                     LC_ICAP_FSM = (C_XDEVICEFAMILY == `FAMILY_VIRTEXU || C_XDEVICEFAMILY == `FAMILY_ZYNQUPLUS || C_XDEVICEFAMILY == `FAMILY_VIRTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXU) ? "/proj/chipscope/maheshs/Shark/IP3_maheshs_ibert/DEV/output/internal/vivado/data/ip/xilinx/nifd_v2_0_0/hdl/verilog/icape3_fsm.txt" : "/proj/chipscope/maheshs/Shark/IP3_maheshs_ibert/DEV/output/internal/vivado/data/ip/xilinx/nifd_v2_0_0/hdl/verilog/icape2_fsm.txt";

  (* DONT_TOUCH = "TRUE" *)wire                                           start_app_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           start_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           stop_app_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           free_running_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           clr_cfg_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           clr_m2_cfg_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           clr_all_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           clr_brkpnt_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           start_readback_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           rdbk_m1_or_m2_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           only_rdbk_i;
  (* DONT_TOUCH = "TRUE" *)wire [1:0]                                     clk_mode_i;
  (* DONT_TOUCH = "TRUE" *)wire [1:0]                                     nifd_mode_i;
  (* DONT_TOUCH = "TRUE" *)wire [31:0]                                    brkpoint_cond_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           brkpnt_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           brkpnt_int;
  (* DONT_TOUCH = "TRUE" *)wire                                           brkpnt_valid_i;
  (* DONT_TOUCH = "TRUE" *)wire [31:0]                                    clk_cnt_i;
  (* DONT_TOUCH = "TRUE" *)wire [31:0]                                    max_clk_cnt_i;
  (* DONT_TOUCH = "TRUE" *)wire [31:0]                                    cfg_data_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           cfg_wr_en_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           m1_cfg_full_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           m2_cfg_full_i;
  (* DONT_TOUCH = "TRUE" *)wire [31:0]                                    m2_cfg_data_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           m2_cfg_wr_en_i;
  (* DONT_TOUCH = "TRUE" *)wire [1:0]                                     clk_stat_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           ready_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           cfg_rd_empty_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           m1_cfg_rd_empty_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           m2_cfg_rd_empty_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           cfg_rd_valid_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           m1_cfg_rd_valid_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           m2_cfg_rd_valid_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           cfg_rd_en_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           m1_cfg_rd_en_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           m2_cfg_rd_en_i;
  (* DONT_TOUCH = "TRUE" *)wire [23:0]                                    cfg_rd_data_frame_addr_i;
  (* DONT_TOUCH = "TRUE" *)wire [15:0]                                    cfg_rd_data_frame_offset_i;
  (* DONT_TOUCH = "TRUE" *)wire [23:0]                                    m1_cfg_rd_data_frame_addr_i;
  (* DONT_TOUCH = "TRUE" *)wire [15:0]                                    m1_cfg_rd_data_frame_offset_i;
  (* DONT_TOUCH = "TRUE" *)wire [23:0]                                    m2_cfg_rd_data_frame_addr_i;
  (* DONT_TOUCH = "TRUE" *)wire [15:0]                                    m2_cfg_rd_data_frame_offset_i;
  (* DONT_TOUCH = "TRUE" *)wire [(C_GRPS*2)-1:0]                          cfg_rd_data_offset_constr_i;
  (* DONT_TOUCH = "TRUE" *)wire [(C_GRPS*2)-1:0]                          m1_cfg_rd_data_offset_constr_i;
  (* DONT_TOUCH = "TRUE" *)wire [(C_GRPS*2)-1:0]                          m2_cfg_rd_data_offset_constr_i;
  (* DONT_TOUCH = "TRUE" *)wire [clogb2(C_RDBK_CNT/2) - 1:0]              cfg_rd_addr_i;
  (* DONT_TOUCH = "TRUE" *)wire [clogb2(C_RDBK_CNT/2) - 1:0]              m1_cfg_rd_addr_i;
  (* DONT_TOUCH = "TRUE" *)wire [clogb2(C_RDBK_CNT/2) - 1:0]              m2_cfg_rd_addr_i;
  (* DONT_TOUCH = "TRUE" *)wire [clogb2(C_RDBK_CNT/2) - 1:0]              cfg_wr_addr_i;
  (* DONT_TOUCH = "TRUE" *)wire [clogb2(C_RDBK_CNT/2) - 1:0]              m1_cfg_wr_addr_i;
  (* DONT_TOUCH = "TRUE" *)wire [clogb2(C_RDBK_CNT/2) - 1:0]              m2_cfg_wr_addr_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           clk_enable_flag_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           kc_flag_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           rdbk_bit_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           rdbk_bit_valid_i;
  (* DONT_TOUCH = "TRUE" *)wire [31:0]                                    rdbk_data_i;
  (* DONT_TOUCH = "TRUE" *)wire [31:0]                                    cur_clk_cnt_i;
  (* DONT_TOUCH = "TRUE" *)wire [C_GRPS-1:0]                              brkpnt_grp_i;
  (* DONT_TOUCH = "TRUE" *)wire [C_GRPS-1:0]                              brkpnt_grp_int;
  (* DONT_TOUCH = "TRUE" *)wire [(C_GRPS*2)-1:0]                          offset_constr_i;
  (* DONT_TOUCH = "TRUE" *)wire [(clogb2(LC_MAX_RDBK_WRD_CNT)) - 1:0]     rdbk_data_word_cnt_i;
  (* DONT_TOUCH = "TRUE" *)wire [(clogb2(LC_MAX_RDBK_WRD_CNT)) - 1:0]     m1_rdbk_data_word_cnt_i;
  (* DONT_TOUCH = "TRUE" *)wire [(clogb2(LC_MAX_RDBK_WRD_CNT)) - 1:0]     m2_rdbk_data_word_cnt_i;
  (* DONT_TOUCH = "TRUE" *)wire [(clogb2(LC_MAX_RDBK_WRD_CNT)) - 1:0]     rdbk_data_addr_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           start_icap_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           icap_done_i;
  (* DONT_TOUCH = "TRUE" *)wire                                           rdy_rdbk_data_i;
  (* DONT_TOUCH = "TRUE" *)(* ASYNC_REG = "TRUE" *)reg                    brkpnt_temp1, brkpnt_temp2;
  (* DONT_TOUCH = "TRUE" *)(* ASYNC_REG = "TRUE" *)reg [C_GRPS-1:0]       brkpnt_grp_temp1, brkpnt_grp_temp2;
  (* DONT_TOUCH = "TRUE" *)(* ASYNC_REG = "TRUE" *)reg                    resetn_kc_sync1, resetn_kc_sync2;
  (* DONT_TOUCH = "TRUE" *)(* ASYNC_REG = "TRUE" *)reg                    resetn_icc_sync1, resetn_icc_sync2;

  always @ (posedge kernel_clk)
  begin
    resetn_kc_sync1 <= s00_axi_aresetn;
    resetn_kc_sync2 <= resetn_kc_sync1;
  end

  always @ (posedge icap_clk)
  begin
    resetn_icc_sync1 <= s00_axi_aresetn;
    resetn_icc_sync2 <= resetn_icc_sync1;
  end

  (* DONT_TOUCH = "TRUE" *)nifd_v2_0_0_reg # ( 
    .C_S_AXI_ID_WIDTH                            (C_S00_AXI_ID_WIDTH),
    .C_S_AXI_DATA_WIDTH                          (C_S00_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH                          (C_S00_AXI_ADDR_WIDTH),
    .C_GRPS                                      (C_GRPS),
    .C_MEM_ADDR_WIDTH                            (clogb2(C_RDBK_CNT/2)),
    .C_RDBK_WRD_CNT_WIDTH                        (clogb2(LC_MAX_RDBK_WRD_CNT))
  ) nifd_reg_map (
    .S_AXI_ACLK                                  (s00_axi_aclk),
    .S_AXI_ARESETN                               (s00_axi_aresetn),
    .S_AXI_AWADDR                                (s00_axi_awaddr),
    .S_AXI_AWLEN                                 (s00_axi_awlen),
    .S_AXI_AWBURST                               (s00_axi_awburst),
    .S_AXI_AWVALID                               (s00_axi_awvalid),
    .S_AXI_AWREADY                               (s00_axi_awready),
    .S_AXI_AWID                                  (s00_axi_awid),
    .S_AXI_WDATA                                 (s00_axi_wdata),
    .S_AXI_WSTRB                                 (s00_axi_wstrb),
    .S_AXI_WLAST                                 (s00_axi_wlast),
    .S_AXI_WVALID                                (s00_axi_wvalid),
    .S_AXI_WREADY                                (s00_axi_wready),
    .S_AXI_BRESP                                 (s00_axi_bresp),
    .S_AXI_BVALID                                (s00_axi_bvalid),
    .S_AXI_BREADY                                (s00_axi_bready),
    .S_AXI_BID                                   (s00_axi_bid),
    .S_AXI_ARADDR                                (s00_axi_araddr),
    .S_AXI_ARLEN                                 (s00_axi_arlen),
    .S_AXI_ARBURST                               (s00_axi_arburst),
    .S_AXI_ARVALID                               (s00_axi_arvalid),
    .S_AXI_ARREADY                               (s00_axi_arready),
    .S_AXI_ARID                                  (s00_axi_arid),
    .S_AXI_RDATA                                 (s00_axi_rdata),
    .S_AXI_RRESP                                 (s00_axi_rresp),
    .S_AXI_RLAST                                 (s00_axi_rlast),
    .S_AXI_RVALID                                (s00_axi_rvalid),
    .S_AXI_RREADY                                (s00_axi_rready),
    .S_AXI_RID                                   (s00_axi_rid),
    .start_icap                                  (start_icap_i),
    .start_app                                   (start_app_i),
    .stop_app                                    (stop_app_i),
    .free_running                                (free_running_i),
    .cfg_data                                    (cfg_data_i),
    .m2_cfg_data                                 (m2_cfg_data_i),
    .clk_cnt                                     (max_clk_cnt_i),
    .rdbk_data_word_cnt                          (rdbk_data_word_cnt_i),
    .rdbk_data_addr                              (rdbk_data_addr_i),
    .nifd_mode                                   (),
    .m1_cfg_full                                 (m1_cfg_full_i),
    .m2_cfg_full                                 (m2_cfg_full_i),
    .clk_mode                                    (clk_mode_i),
    .clr_cfg                                     (clr_cfg_i),
    .clr_m2_cfg                                  (clr_m2_cfg_i),
    .clr_all                                     (clr_all_i),
    .clr_brkpnt                                  (clr_brkpnt_i),
    .start_readback                              (start_readback_i),
    .rdbk_m1_or_m2                               (rdbk_m1_or_m2_i),
    .brkpoint_cond                               (brkpoint_cond_i),
    .cfg_wr_en                                   (cfg_wr_en_i),
    .m2_cfg_wr_en                                (m2_cfg_wr_en_i),
    .clk_stat                                    (clk_stat_i),
    .ready                                       (ready_i),
    .rdy_readback_data                           (rdy_rdbk_data_i),
    .brkpoint                                    (brkpnt_i | external_brkpnt),
    .brkpoint_grp                                (brkpnt_grp_i),
    .rdback_data                                 (rdbk_data_i),
    .current_pointer                             (cfg_wr_addr_i),
    .cur_clk_cnt                                 (clk_cnt_i)
  );

  assign brkpoint_out = brkpnt_i | external_brkpnt;

  (* DONT_TOUCH = "TRUE" *)nifd_v2_0_0_clk_control nifd_clk_cotrol (
    .start_app                                   (start_app_i),
    .stop_app                                    (stop_app_i),
    .free_running                                (free_running_i),
    .clk_mode                                    (clk_mode_i),
    .start                                       (start_i),
    .max_clk_cnt                                 (max_clk_cnt_i),
    .clk_cnt                                     (clk_cnt_i),
    .brkpnt                                      (brkpnt_i | external_brkpnt),
    .resetn                                      (s00_axi_aresetn),
    .kc_resetn                                   (resetn_kc_sync2),
    .cfg_rd_empty                                (cfg_rd_empty_i),
    .clk                                         (s00_axi_aclk),
    .kernel_clk                                  (kernel_clk),
    .clk_enable_flag                             (clk_enable_flag_i),
    .kc_flag                                     (kc_flag_i),
    .clk_stat                                    (clk_stat_i),
    .cclk                                        (cclk)
  );

  (* DONT_TOUCH = "TRUE" *)nifd_v2_0_0_cfg_mem # (
    .C_DEPTH                                     (C_RDBK_CNT/2),
    .C_GRPS                                      (C_GRPS),
    .C_MEM_INST_TYPE                             (3),
    .C_MEM_ADDR_WIDTH                            (clogb2(C_RDBK_CNT/2)),
    .C_RDBK_WRD_CNT_WIDTH                        (clogb2(LC_MAX_RDBK_WRD_CNT))
  ) nifd_cfg_mem (
    .clk                                         (s00_axi_aclk),
    .resetn                                      (s00_axi_aresetn),
    .clr_cfg                                     (clr_cfg_i | clr_all_i),
    .rdbk_data_word_cnt                          (m1_rdbk_data_word_cnt_i),
    .cfg_wr_en                                   (cfg_wr_en_i),
    .cfg_wr_data                                 (cfg_data_i),
    .cfg_wr_full                                 (m1_cfg_full_i),
    .cfg_rd_en                                   (m1_cfg_rd_en_i),
    .cfg_rd_valid                                (m1_cfg_rd_valid_i),
    .cfg_rd_addr                                 (m1_cfg_rd_addr_i),
    .cfg_wr_addr                                 (m1_cfg_wr_addr_i),
    .cfg_rd_data_frame_addr                      (m1_cfg_rd_data_frame_addr_i),
    .cfg_rd_data_frame_offset                    (m1_cfg_rd_data_frame_offset_i),
    .cfg_rd_data_offset_constr                   (m1_cfg_rd_data_offset_constr_i),
    .cfg_rd_empty                                (m1_cfg_rd_empty_i)
  );

  (* DONT_TOUCH = "TRUE" *)nifd_v2_0_0_cfg_mem # (
    .C_DEPTH                                     (C_RDBK_CNT/2),
    .C_GRPS                                      (C_GRPS),
    .C_MEM_INST_TYPE                             (3),
    .C_MEM_ADDR_WIDTH                            (clogb2(C_RDBK_CNT/2)),
    .C_RDBK_WRD_CNT_WIDTH                        (clogb2(LC_MAX_RDBK_WRD_CNT))
  ) nifd_cfg_mem_m2 (
    .clk                                         (s00_axi_aclk),
    .resetn                                      (s00_axi_aresetn),
    .clr_cfg                                     (clr_m2_cfg_i | clr_all_i),
    .rdbk_data_word_cnt                          (m2_rdbk_data_word_cnt_i),
    .cfg_wr_en                                   (m2_cfg_wr_en_i),
    .cfg_wr_data                                 (m2_cfg_data_i),
    .cfg_wr_full                                 (m2_cfg_full_i),
    .cfg_rd_en                                   (m2_cfg_rd_en_i),
    .cfg_rd_valid                                (m2_cfg_rd_valid_i),
    .cfg_rd_addr                                 (m2_cfg_rd_addr_i),
    .cfg_wr_addr                                 (m2_cfg_wr_addr_i),
    .cfg_rd_data_frame_addr                      (m2_cfg_rd_data_frame_addr_i),
    .cfg_rd_data_frame_offset                    (m2_cfg_rd_data_frame_offset_i),
    .cfg_rd_data_offset_constr                   (m2_cfg_rd_data_offset_constr_i),
    .cfg_rd_empty                                (m2_cfg_rd_empty_i)
  );

  assign rdbk_data_word_cnt_i                    = (only_rdbk_i == 1'b1) ? ((rdbk_m1_or_m2_i == 1'b1) ? m2_rdbk_data_word_cnt_i : m1_rdbk_data_word_cnt_i) : m1_rdbk_data_word_cnt_i;
  assign m1_cfg_rd_addr_i                        = (only_rdbk_i == 1'b1) ? ((rdbk_m1_or_m2_i == 1'b1) ? 'h0 : cfg_rd_addr_i) : cfg_rd_addr_i;
  assign m2_cfg_rd_addr_i                        = (only_rdbk_i == 1'b1) ? ((rdbk_m1_or_m2_i == 1'b1) ? cfg_rd_addr_i : 'h0) : 'h0;
  assign m1_cfg_rd_en_i                          = (only_rdbk_i == 1'b1) ? ((rdbk_m1_or_m2_i == 1'b1) ? 'h0 : cfg_rd_en_i) : cfg_rd_en_i;
  assign m2_cfg_rd_en_i                          = (only_rdbk_i == 1'b1) ? ((rdbk_m1_or_m2_i == 1'b1) ? cfg_rd_en_i : 'h0) : 'h0;
  assign cfg_rd_valid_i                          = (only_rdbk_i == 1'b1) ? ((rdbk_m1_or_m2_i == 1'b1) ? m2_cfg_rd_valid_i : m1_cfg_rd_valid_i) : m1_cfg_rd_valid_i;
  assign cfg_wr_addr_i                           = (only_rdbk_i == 1'b1) ? ((rdbk_m1_or_m2_i == 1'b1) ? m2_cfg_wr_addr_i : m1_cfg_wr_addr_i) : m1_cfg_wr_addr_i;
  assign cfg_rd_data_frame_addr_i                = (only_rdbk_i == 1'b1) ? ((rdbk_m1_or_m2_i == 1'b1) ? m2_cfg_rd_data_frame_addr_i : m1_cfg_rd_data_frame_addr_i) : m1_cfg_rd_data_frame_addr_i;
  assign cfg_rd_data_frame_offset_i              = (only_rdbk_i == 1'b1) ? ((rdbk_m1_or_m2_i == 1'b1) ? m2_cfg_rd_data_frame_offset_i : m1_cfg_rd_data_frame_offset_i) : m1_cfg_rd_data_frame_offset_i;
  assign cfg_rd_data_offset_constr_i             = (only_rdbk_i == 1'b1) ? ((rdbk_m1_or_m2_i == 1'b1) ? m2_cfg_rd_data_offset_constr_i : m1_cfg_rd_data_offset_constr_i) : m1_cfg_rd_data_offset_constr_i;
  assign cfg_rd_empty_i                          = (only_rdbk_i == 1'b1) ? ((rdbk_m1_or_m2_i == 1'b1) ? m2_cfg_rd_empty_i : m1_cfg_rd_empty_i) : m1_cfg_rd_empty_i;
 
  (* DONT_TOUCH = "TRUE" *)nifd_v2_0_0_frame_process # (
    .C_MEM_ADDR_WIDTH                            (clogb2(C_RDBK_CNT/2))
  ) nifd_frame_process (
    .ready                                       (ready_i),
    .clk_enable_flag                             (clk_enable_flag_i),
    .kc_flag                                     (kc_flag_i),
    .clk_cnt                                     (clk_cnt_i),
    .free_running                                (free_running_i),
    .start_app                                   (start_app_i),
    .start                                       (start_i),
    .start_icap                                  (start_icap_i),
    .rdy_rdbk_data                               (rdy_rdbk_data_i),
    .start_readback                              (start_readback_i),
    .only_rdbk                                   (only_rdbk_i),
    .icap_done                                   (icap_done_i),
    .resetn                                      (s00_axi_aresetn),
    .cfg_wr_addr                                 (cfg_wr_addr_i),
    .clk                                         (s00_axi_aclk)
  );

  (* DONT_TOUCH = "TRUE" *)nifd_v2_0_0_icap # (
    .C_GRPS                                      (C_GRPS),
    .C_USE_EXT_ICAP                              (C_USE_EXT_ICAP),
    .C_XDEVICEFAMILY                             (C_XDEVICEFAMILY),
    .C_MEM_ADDR_WIDTH                            (clogb2(C_RDBK_CNT/2))
  ) nifd_frame_icap (
    .icap_di_o                                   (icap_di_o),
    .icap_csib_o                                 (icap_csib_o),
    .icap_rdwrb_o                                (icap_rdwrb_o),
    .icap_do_i                                   (icap_do_i),
    .cfg_rd_en                                   (cfg_rd_en_i),
    .start_app                                   (start_app_i),
    .rdbk_bit                                    (rdbk_bit_i),
    .rdbk_bit_valid                              (rdbk_bit_valid_i),
    .cfg_rd_addr                                 (cfg_rd_addr_i),
    .cfg_wr_addr                                 (cfg_wr_addr_i),
    .clr_brkpnt                                  (clr_brkpnt_i | clr_all_i),
    .brkpnt_final                                (brkpnt_i),
    .brkpnt_grp_final                            (brkpnt_grp_i),
    .brkpnt_valid                                (brkpnt_valid_i),
    .start_icap                                  (start_icap_i),
    .resetn                                      (s00_axi_aresetn),
    .icc_resetn                                  (resetn_icc_sync2),
    .brkpnt                                      (brkpnt_int),
    .brkpnt_grp                                  (brkpnt_grp_int),
    .offset_constr                               (offset_constr_i),
    .clk                                         (s00_axi_aclk),
    .icap_clk                                    (icap_clk),
    .icap_done                                   (icap_done_i),
    .cfg_rd_valid                                (cfg_rd_valid_i),
    .cfg_rd_data_frame_addr                      (cfg_rd_data_frame_addr_i),
    .cfg_rd_data_frame_offset                    (cfg_rd_data_frame_offset_i),
    .cfg_rd_data_offset_constr                   (cfg_rd_data_offset_constr_i),
    .cfg_rd_empty                                (cfg_rd_empty_i)
  );

  (* DONT_TOUCH = "TRUE" *)nifd_v2_0_0_breakpoint #(
    .C_RDBK_CNT                                  (C_RDBK_CNT/2),
    .C_GRPS                                      (C_GRPS),
    .C_MEM_ADDR_WIDTH                            (clogb2(C_RDBK_CNT/2)),
    .C_RDBK_WRD_CNT_WIDTH                        (clogb2(LC_MAX_RDBK_WRD_CNT)),
    .C_MAX_RDBK_WRD_CNT                          (LC_MAX_RDBK_WRD_CNT)
  ) nifd_brkpnt (
    .clk                                         (s00_axi_aclk),
    .rdbk_data_addr                              (rdbk_data_addr_i),
    .rdbk_bit_valid                              (rdbk_bit_valid_i),
    .rdbk_bit                                    (rdbk_bit_i),
    .rdbk_bit_pos                                (cfg_rd_addr_i),
    .ready                                       (ready_i),
    .clr_brkpnt                                  (clr_all_i),
    .brkpnt_cond                                 (brkpoint_cond_i),
    .offset_constr                               (offset_constr_i),
    .resetn                                      (s00_axi_aresetn),
    .brkpnt                                      (brkpnt_int),
    .brkpnt_valid                                (brkpnt_valid_i),
    .brkpnt_grp                                  (brkpnt_grp_int),
    .rdbk_data_out                               (rdbk_data_i)
  );

endmodule


// Asymmetric port RAM
// Read Wider than Write. Read Statement in loop
//asym_ram_sdp_read_wider.v

module nifd_v2_0_0_asym_ram (clkA, clkB, enaA, weA, enaB, clr, resetn, addrA, addrB, diA, doB);
parameter WIDTHA = 4;
parameter SIZEA = 1024;
parameter ADDRWIDTHA = 10;

parameter WIDTHB = 16;
parameter SIZEB = 256;
parameter ADDRWIDTHB = 8;
input clkA;
input clkB;
input weA;
input enaA, enaB;
input clr, resetn;
input [ADDRWIDTHA-1:0] addrA;
input [ADDRWIDTHB-1:0] addrB;
input [WIDTHA-1:0] diA;
output [WIDTHB-1:0] doB;
`define max(a,b) {(a) > (b) ? (a) : (b)}
`define min(a,b) {(a) < (b) ? (a) : (b)}

function integer log2;
input integer value;
reg [31:0] shifted;
integer res;
begin
 if (value < 2)
  log2 = value;
 else
 begin
  shifted = value-1;
  for (res=0; shifted>0; res=res+1)
   shifted = shifted>>1;
  log2 = res;
 end
end
endfunction

localparam maxSIZE = `max(SIZEA, SIZEB);
localparam maxWIDTH = `max(WIDTHA, WIDTHB);
localparam minWIDTH = `min(WIDTHA, WIDTHB);

localparam RATIO = maxWIDTH / minWIDTH;
localparam log2RATIO = log2(RATIO);

(* RAM_STYLE="block" *)reg [minWIDTH-1:0] RAM [0:maxSIZE-1];
reg [WIDTHB-1:0] readB;

genvar i;
generate
for (i = 0; i < maxSIZE; i = i+1)
begin: RAM_INIT
  initial
  begin
    RAM[i] <= 'h0;
  end
end
endgenerate

always @(posedge clkA)
begin : ramwrite
 integer j;
 if (clr == 1'b1 || resetn == 1'b0) begin
   for (j = 0; j < maxSIZE; j = j+1) begin
      RAM[j] = 'b0;
   end
 end
 else begin
   if (enaA) begin 
    if (weA)
     RAM[addrA] <= diA;
   end  
 end
end


always @(posedge clkB)
begin : ramread
 integer i;
 reg [log2RATIO-1:0] lsbaddr;
 if (enaB) begin
  for (i = 0; i < RATIO; i = i+1) begin 
   lsbaddr = i;
   readB[(i+1)*minWIDTH-1 -: minWIDTH] <= RAM[{addrB, lsbaddr}];
  end
 end
end
assign doB = readB;

endmodule



