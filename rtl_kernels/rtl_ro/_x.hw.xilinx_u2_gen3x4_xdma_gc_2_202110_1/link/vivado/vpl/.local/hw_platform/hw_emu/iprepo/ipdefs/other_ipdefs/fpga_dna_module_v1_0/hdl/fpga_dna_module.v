// *************************************************************************
//    ____  ____
//   /   /\/   /
//  /___/  \  /
//  \   \   \/    Copyright 2020 Xilinx, Inc. All rights reserved.
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

module fpga_dna_module
#(
    parameter   C_S_AXI_LITE_ADDR_WIDTH = 12,
    parameter   C_S_AXI_LITE_DATA_WIDTH = 32
)
(
  input  wire                                       s_axi_lite_aclk,
  input  wire                                       s_axi_lite_aresetn,

//  input  wire                                       krnl_clk,
//  input  wire                                       krnl_resetn,

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

  input  wire                   		    dna_dyn_data_dout,
  output wire  [2:0]            		    dna_dyn_data_ports,
  output wire  [95:0]            		    fpga_dna_data

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
reg 	  wr_req_r 	 	= 1'b0;
reg 	  reset_released_r 	= 1'b0;
reg 	  rd_req_r         	= 1'b0;
reg 	  s_axi_lite_bvalid_i 	= 1'b0;
reg 	  s_axi_lite_rvalid_i 	= 1'b0;
reg 	  rvalid_delayed;
reg	  dna_port_read;
reg	  dna_port_shift;
reg	  dna_data_ready = 1'b0;
reg	  dyn_trig_reg;
reg [7:0] static_read_cnt;

wire 	dna_port_din_mux;
wire 	dna_port_read_mux;
wire 	dna_port_shift_mux;
wire	dna_data_ready_saxi;
wire  	dna_port_read_w;
wire  	dna_port_shift_w;
wire  	dna_port_din_w;
wire  	dna_port_dout_w;

localparam DNA_DATA_CNT_VAL 		= 8'h62;


// Register addressing
localparam DNAIP_REG1_ADDR 		= 12'h000;
localparam DNAIP_REG2_ADDR 		= 12'h004;
localparam DNAIP_REG3_ADDR 		= 12'h008;
localparam DNAIP_REG4_ADDR 		= 12'h00C;

//localparam DNAIP_DUP_REG1_ADDR 		= 12'h010;
//localparam DNAIP_DUP_REG2_ADDR 		= 12'h014;
//localparam DNAIP_DUP_REG3_ADDR 		= 12'h018;

localparam DNA_DATA_TRIG_ADDR		= 12'h010;
localparam DNA_DATA_CNT_ADDR 		= 12'h020;
localparam DEBUG_DATA_ADDR 		= 12'h100;

localparam [1:0]  IDLE   =2'b00,
                  READ   =2'b01,
                  LOAD   =2'b10,
                  STOP   =2'b11;

reg [7:0]  	dna_data_reg_cnt;
reg [95:0] 	dna_data_out;
reg [1:0]  	state;
reg [7:0]	dna_data_cnt_val_reg;
reg [31:0]	dna_ip_reg1_data;
reg [31:0]	dna_ip_reg2_data;
reg [31:0]	dna_ip_reg3_data;
reg [31:0]	dna_ip_reg4_data;
reg [31:0]	dna_ip_r1_data;
reg [31:0]	dna_ip_r2_data;
reg [31:0]	dna_ip_r3_data;

assign dna_port_dout_w = dna_dyn_data_dout;
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
       dna_data_cnt_val_reg  	<= {DNA_DATA_CNT_VAL};
       dyn_trig_reg    		<= 'h0;
     end else if (state == STOP) begin
       dyn_trig_reg		<= 'h0;
     end else if(wr_req_r && s_axi_lite_wvalid && ~s_axi_lite_bvalid_i) begin
        case (wr_addr_r) 
          DNA_DATA_TRIG_ADDR: begin
            dyn_trig_reg   	 	<= s_axi_lite_wdata[0];
          end
          DNA_DATA_CNT_ADDR: begin
            dna_data_cnt_val_reg   	<= s_axi_lite_wdata[7:0];
          end
          default : begin
          end
        endcase
     end else begin
       dna_data_cnt_val_reg  	<= dna_data_cnt_val_reg;
       dyn_trig_reg		<= dyn_trig_reg;
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
            DNAIP_REG1_ADDR      : begin
              s_axi_lite_rdata 	<= dna_ip_r1_data;
            end
            DNAIP_REG2_ADDR      : begin
              s_axi_lite_rdata 	<= dna_ip_r2_data;
            end
            DNAIP_REG3_ADDR      : begin
              s_axi_lite_rdata 	<= dna_ip_r3_data;
            end
            DNAIP_REG4_ADDR      : begin
              s_axi_lite_rdata 	<= 32'hDEADBEEF;
            end
//            DNAIP_DUP_REG1_ADDR  : begin
//              s_axi_lite_rdata 	<= dna_out[95:64];
//            end
//            DNAIP_DUP_REG2_ADDR  : begin
//              s_axi_lite_rdata 	<= dna_out[63:32];
//            end
//            DNAIP_DUP_REG3_ADDR  : begin
//              s_axi_lite_rdata 	<= dna_out[31:0];
//            end
            DNA_DATA_CNT_ADDR    : begin
              s_axi_lite_rdata 	<= dna_data_cnt_val_reg;
            end
            DNA_DATA_TRIG_ADDR   : begin
              s_axi_lite_rdata 	<= dyn_trig_reg;
            end
            DEBUG_DATA_ADDR      : begin
              s_axi_lite_rdata 	<= {static_read_cnt,18'd0,state,1'b0,dna_port_shift_w,dna_port_read_w,dna_port_din_w};
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

  always @(posedge s_axi_lite_aclk)
  begin
      if(~s_axi_lite_aresetn) begin
          static_read_cnt <= 8'd0;
      end else if(state == LOAD) begin
          static_read_cnt <= static_read_cnt + 1'd1;
      end else begin
          static_read_cnt <= static_read_cnt;
      end 
  end

  assign s_axi_lite_bresp   = 2'b00;
  assign s_axi_lite_awready = ((~wr_req_r) && (!(rd_req_r || s_axi_lite_arvalid))) && reset_released_r;
  assign s_axi_lite_rresp   = 2'b00;
  assign s_axi_lite_wready  = wr_req_r && ~s_axi_lite_bvalid_i;
  assign s_axi_lite_arready = ~rd_req_r && ~wr_req_r && reset_released_r;
  assign s_axi_lite_bvalid  = s_axi_lite_bvalid_i;
  assign s_axi_lite_rvalid  = s_axi_lite_rvalid_i;

always @(posedge s_axi_lite_aclk)
begin
    if(~s_axi_lite_aresetn) begin
     	state 			<= IDLE;
    end else begin
     case (state)
     IDLE: 
       begin
	dna_port_read   	<= 1'b0;
	dna_port_shift  	<= 1'b0;
	dna_data_reg_cnt	<= 8'd0;
	if(dyn_trig_reg == 1'b1) begin
     	 state 			<= READ;
	end else begin
     	 state 			<= IDLE;
	end
       end 
     READ: 
       begin
	dna_port_read   	<= 1'b1;
     	state 			<= LOAD;
       end
     STOP:
       begin
	dna_port_shift  	<= 1'b0;
	dna_data_reg_cnt	<= 8'd0;
     	dna_ip_r1_data  	<= dna_data_out[31:0];
     	dna_ip_r2_data  	<= dna_data_out[63:32];
     	dna_ip_r3_data  	<= dna_data_out[95:64];
	dna_data_ready  	<= 1'b1;
    	state 			<= IDLE;
       end
     LOAD: 
       begin
	dna_port_read   	<= 1'b0;
	dna_port_shift  	<= 1'b1;
     	dna_data_out[95:0] 	<= {dna_port_dout_w, dna_data_out[95:0] }>> 1;
	dna_data_reg_cnt   	<= dna_data_reg_cnt + 1'b1;
	state 		   	<= LOAD;
	if (dna_data_reg_cnt == dna_data_cnt_val_reg) begin
     	 state 		   	<= STOP;
	end
       end
     endcase
    end 
end

//// CDC sync signal
//  xpm_cdc_single #(
//      .DEST_SYNC_FF(4),   // DECIMAL; range: 2-10
//      .INIT_SYNC_FF(0),   // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
//      .SIM_ASSERT_CHK(0), // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
//      .SRC_INPUT_REG(1)   // DECIMAL; 0=do not register input, 1=register input
//   )
//   xpm_cdc_read_inst (
//      .dest_out(dna_data_ready_saxi),   // 1-bit output: src_in synchronized to the destination clock domain. This output registered.
//      .dest_clk(s_axi_lite_aclk),                     // 1-bit input: Clock signal for the destination clock domain.
//      .src_clk(krnl_clk),                 // 1-bit input: optional; required when SRC_INPUT_REG = 1
//      .src_in(dna_data_ready)           // 1-bit input: Input signal to be synchronized to dest_clk domain.
//   );
//

assign dna_port_din_w   	 = dna_port_dout_w;
assign dna_port_read_w    	 = dna_port_read;
assign dna_port_shift_w   	 = dna_port_shift;
assign dna_dyn_data_ports[2:0]   = {dna_port_shift_w,dna_port_read_w,dna_port_din_w};
assign fpga_dna_data		 = {dna_ip_r3_data,dna_ip_r2_data,dna_ip_r1_data};

endmodule
