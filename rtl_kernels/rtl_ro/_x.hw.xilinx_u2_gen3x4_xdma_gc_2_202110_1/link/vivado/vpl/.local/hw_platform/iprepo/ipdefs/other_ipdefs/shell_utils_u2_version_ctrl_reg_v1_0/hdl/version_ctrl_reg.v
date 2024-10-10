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

