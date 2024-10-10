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

`timescale 1 ns / 1 ps

module shell_utils_frequency_counter_v1_0_0 #
(
    parameter REF_CLK_FREQ_HZ=100000000,
    parameter TEST_CLK_0_TYPE=1,
    parameter TEST_CLK_1_TYPE=0,
    parameter TEST_CLK_2_TYPE=0,
    parameter TEST_CLK_3_TYPE=0
) (
    input   s_axi_aclk,
    input   s_axi_aresetn,

    input   wire    [31:0]      s_axi_awaddr     ,
    input   wire                s_axi_awvalid    ,
    output  reg                 s_axi_awready    =0,
    input   wire    [31:0]      s_axi_wdata      ,
    input   wire    [3:0]       s_axi_wstrb      ,
    input   wire                s_axi_wvalid     ,
    output  reg                 s_axi_wready     =0,
    output  reg                 s_axi_bvalid     =0,
    output  wire    [1:0]       s_axi_bresp      ,
    input   wire                s_axi_bready     ,

    input   wire    [31:0]      s_axi_araddr     ,
    input   wire                s_axi_arvalid    ,
    output  reg                 s_axi_arready    =0,
    output  reg     [31:0]      s_axi_rdata      =0,
    output  wire    [1:0]       s_axi_rresp      ,
    output  reg                 s_axi_rvalid     =0,
    input   wire                s_axi_rready     ,

    input test_clk0,
    input test_clk1,
    input test_clk2,
    input test_clk3
);

localparam NUM_CLKS = 4;
localparam CFG_LEN = 4;
localparam [(CFG_LEN*NUM_CLKS)-1:0] CLK_CONFIG = {TEST_CLK_3_TYPE[3:0], TEST_CLK_2_TYPE[3:0], TEST_CLK_1_TYPE[3:0], TEST_CLK_0_TYPE[3:0]};

wire [NUM_CLKS-1:0] test_clk;

reg user_rst                                   = 1'b0;
wire rst_cnt_c;
reg [1:0] clear_user_rst                       = 2'b0;
(* KEEP = "TRUE" *) reg rst_cnt_ref            = 1'b0;
(* KEEP = "TRUE" *) reg [NUM_CLKS-1:0] rst_cnt = {NUM_CLKS{1'b0}};
wire [NUM_CLKS-1:0] rst_cnt_synced;
wire done_c;
(* KEEP = "TRUE" *) reg done_ref               = 1'b0;
(* KEEP = "TRUE" *) reg [NUM_CLKS-1:0] done    = 1'b0;
wire [NUM_CLKS-1:0] done_synced;
reg [31:0] ref_clk_cntr                        = 32'b0;
reg  [31:0] test_clk_cntr[NUM_CLKS-1:0];
wire [31:0] test_clk_cntr_synced[NUM_CLKS-1:0];

integer clk;

initial begin
  for (clk=0; clk<NUM_CLKS; clk=clk+1)
    test_clk_cntr[clk] = 32'b0;
end

assign test_clk = {test_clk3, test_clk2, test_clk1, test_clk0};

genvar i;
generate for (i=0; i<NUM_CLKS; i=i+1)
begin : CLKS
    if (CLK_CONFIG[((i+1)*CFG_LEN)-1:i*CFG_LEN])
    begin

        xpm_cdc_async_rst #(
            .DEST_SYNC_FF(3),    // DECIMAL; range: 2-10
            .INIT_SYNC_FF(0),    // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
            .RST_ACTIVE_HIGH(1)  // DECIMAL; 0=active low reset, 1=active high reset
        ) cdc_rst_cn0 (
            .dest_arst(rst_cnt_synced[i]),
            .dest_clk(test_clk[i]),   // 1-bit input: Destination clock.
            .src_arst(rst_cnt[i])    // 1-bit input: Source asynchronous reset signal.
        );

        xpm_cdc_array_single #(
          .DEST_SYNC_FF   (3), // integer; range: 2-10
          .SIM_ASSERT_CHK (0), // integer; 0=disable simulation messages, 1=enable simulation messages
          .SRC_INPUT_REG  (0), // integer; 0=do not register input, 1=register input
          .WIDTH          (1)  // integer; range: 1-1024
        ) cdc_done (
          .src_clk  (s_axi_aclk),  // optional; required when SRC_INPUT_REG = 1
          .src_in   (done[i]),
          .dest_clk (test_clk[i]),
          .dest_out (done_synced[i])
        );

        xpm_cdc_array_single #(
          .DEST_SYNC_FF   (2), // integer; range: 2-10
          .SIM_ASSERT_CHK (0), // integer; 0=disable simulation messages, 1=enable simulation messages
          .SRC_INPUT_REG  (0), // integer; 0=do not register input, 1=register input
          .WIDTH          (32)  // integer; range: 1-1024
        ) cdc_test_clk0_cntr (
          .src_clk  (test_clk[i]),  // optional; required when SRC_INPUT_REG = 1
          .src_in   (test_clk_cntr[i]),
          .dest_clk (s_axi_aclk),
          .dest_out (test_clk_cntr_synced[i])
        );

        always @ (posedge test_clk[i] or posedge rst_cnt_synced[i]) begin
            if (rst_cnt_synced[i])
                test_clk_cntr[i] <= 32'b0;
            else begin
        		if(~done_synced[i])
                    test_clk_cntr[i] <= test_clk_cntr[i] + 1;
        	end
        end

    end
    else
        assign test_clk_cntr_synced[i] = {32{1'b1}};
end
endgenerate

//*****************************************************************************//
// State Machine for HOST Write Request
reg [2:0]			state_write 			=	1;
localparam [2:0] 	IDLE_WRITE				=	3'b001,
					WAIT_FOR_WVALID_WRITE	=	3'b010,
					WAIT_FOR_BREADY_WRITE	=	3'b100;

always @(posedge s_axi_aclk)
begin
	if(!s_axi_aresetn)
		state_write <= IDLE_WRITE;
	else
	begin
		case (state_write)
		IDLE_WRITE :
		begin
            s_axi_bvalid		<= 0;
			if(s_axi_awvalid)
			begin
				state_write		<= WAIT_FOR_WVALID_WRITE;
				s_axi_awready 	<= 1;
			end
		end // end of  IDLE_WRITE

		WAIT_FOR_WVALID_WRITE :
		begin
			s_axi_awready		<= 0;
			if(s_axi_wvalid)
			begin
				state_write		<= WAIT_FOR_BREADY_WRITE;
				s_axi_wready 	<= 1;
			end
		end // end of WAIT_FOR_WVALID_WRITE

		WAIT_FOR_BREADY_WRITE :
		begin
		    s_axi_wready 	    <= 0;
            s_axi_bvalid		<= 1;
			if(s_axi_bready)
			begin
				state_write		<= IDLE_WRITE;
			end
		end
		endcase
	end // end of else block
end


//****************************************************************************//
// State Machine for HOST READ Request
reg [1:0]			state_read				=	1;
localparam	[1:0]	IDLE_READ				=	2'b01,
					WAIT_FOR_RVALID_READ	=	2'b10;

always @(posedge s_axi_aclk)
begin
	if(!s_axi_aresetn)
		state_read <= IDLE_READ;
	else
	begin
		case (state_read)
		IDLE_READ :
		begin
			if(s_axi_arvalid)
			begin
				state_read		<= WAIT_FOR_RVALID_READ;
				s_axi_arready 	<= 1;
				s_axi_rvalid	<= 1;
			end
		end // end of IDLE_READ

		WAIT_FOR_RVALID_READ :
		begin
			s_axi_arready		<= 0;
			if(s_axi_rready)
			begin
				state_read		<= IDLE_READ;
				s_axi_rvalid 	<= 0;
			end
		end // end of WAIT_FOR_RVALID_READ
		endcase
	end // end of else block
end // end of always block


//****************************************************************************//
always @(posedge s_axi_aclk)
begin
    if(s_axi_arvalid)
    begin
        case (s_axi_araddr[4:0])
        5'h00:  s_axi_rdata <= {CLK_CONFIG, 14'b0, done_ref, user_rst};
        5'h04 : s_axi_rdata <= ref_clk_cntr;
        5'h10 : s_axi_rdata <= test_clk_cntr_synced[0];
        5'h14 : s_axi_rdata <= test_clk_cntr_synced[1];
        5'h18 : s_axi_rdata <= test_clk_cntr_synced[2];
        5'h1C : s_axi_rdata <= test_clk_cntr_synced[3];

        default: s_axi_rdata <= 32'h00000000;
        endcase
    end
end

//***************************************************************************//
// AXI LITE WRITE DATA

always @(posedge s_axi_aclk)
begin
    if(s_axi_wvalid && s_axi_wready && s_axi_awaddr[3:0] == 4'h0) begin
        user_rst  <= s_axi_wdata[0];
    end
    else begin
        if(clear_user_rst[1]) user_rst <= 1'b0; //Self clear
    end

    clear_user_rst[0] <= user_rst;
    clear_user_rst[1] <= clear_user_rst[0];

    rst_cnt_ref <= rst_cnt_c;
    rst_cnt     <= {NUM_CLKS{rst_cnt_c}};

end //end of always block

assign s_axi_bresp = 0;
assign s_axi_rresp = 0;
assign rst_cnt_c = ~s_axi_aresetn | user_rst;
assign done_c = ref_clk_cntr == (REF_CLK_FREQ_HZ - 1);

//Ref clock counter logic
always @(posedge s_axi_aclk) begin
	if(rst_cnt_ref) begin
		ref_clk_cntr <= 32'b0;
        done_ref     <= 1'b0;
        done         <= {NUM_CLKS{1'b0}};
	end
	else begin
		if(~done_ref) begin
            ref_clk_cntr <= ref_clk_cntr+1;
            done_ref     <= done_c;
            done         <= {NUM_CLKS{done_c}};
        end
	end
end

endmodule


