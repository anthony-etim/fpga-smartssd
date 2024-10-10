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

