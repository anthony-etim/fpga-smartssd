// (c) Copyright 2010-2012, 2019 Xilinx, Inc. All rights reserved.
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
// AXI Register Slice
//   Register selected channels on the forward and/or reverse signal paths.
//   5-channel memory-mapped AXI4 interfaces.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   apcc
//      axic_gate
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module apcc_v1_0_2_write_response #
  (
   parameter integer C_AXI_ADDR_WIDTH            = 32,
   parameter integer C_AXI_DATA_WIDTH            = 32
  )
  (
   // System Signals
   input wire aresetn,
   input wire m_aresetn,
   input wire s_aclk,
   input wire m_aclk,

   // Slave Interface Write Address Ports
   output wire [1:0]                    s_axi_bresp,
   output wire                          s_axi_bvalid,
   (* DONT_TOUCH = "TRUE" *)input  wire                          s_axi_bready,
   input  wire                          s_axi_wvalid,
   input  wire                          s_axi_wready,
   input  wire                          s_axi_awvalid,
   input  wire                          s_axi_awready,

   // Master Interface Write Address Port
   input  wire [1:0]                    m_axi_bresp,
   input  wire                          m_axi_bvalid,
   output wire                          m_axi_bready,

   // For Debug 
   (* DONT_TOUCH = "true" *)output [1:0]  write_resp_wr_data_o,
   (* DONT_TOUCH = "true" *)output        write_resp_wren_o,
   (* DONT_TOUCH = "true" *)output        write_resp_full_o,
   (* DONT_TOUCH = "true" *)output        write_resp_wr_ack_o,
   (* DONT_TOUCH = "true" *)output [1:0]  write_resp_rd_data_o,
   (* DONT_TOUCH = "true" *)output        write_resp_rden_o,
   (* DONT_TOUCH = "true" *)output        write_resp_empty_o,
   (* DONT_TOUCH = "true" *)output        write_resp_rd_valid_o,
   (* DONT_TOUCH = "true" *)output        write_resp_s_bvalid_o,
   (* DONT_TOUCH = "true" *)output        write_resp_s_bready_o,
   (* DONT_TOUCH = "true" *)output        write_resp_m_bvalid_o,
   (* DONT_TOUCH = "true" *)output        write_resp_m_bready_o
   //input  wire                          freeze
  );

  // Slave Interface side
  reg [1:0 ] fifo_wr_data_bresp;
  reg        fifo_wren;
  reg        m_axi_bready_i;
  reg        s_axi_bvalid_i;
  wire       s_axi_bready_i;
  wire       fifo_full;
  wire       fifo_rd_valid;
  wire       fifo_wr_ack;
  reg [3:0]  count;
  reg [1:0]  count_reset;
  reg        temp_m_aresetn1, temp_m_aresetn2;
  wire       rising_m_aresetn;

  //
  // For Slave Write address Ready generation
  //
  always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      m_axi_bready_i <= 1'b0;
    end
    else
    begin
      if (fifo_full == 1'b1 || (m_axi_bvalid == 1'b1 && m_axi_bready_i == 1'b1))
      begin
        m_axi_bready_i <= 1'b0;
      end
      else if (fifo_wr_ack == 1'b1 || rising_m_aresetn == 1'b1)
      begin
        m_axi_bready_i <= 1'b1;
      end
    end
    /*else if (fifo_full == 1'b1)
    begin
      m_axi_bready_i <=1'b0;
    end
    else if (m_axi_bvalid == 1'b1 && m_axi_bready == 1'b1)
    begin
      m_axi_bready_i <= 1'b0;
    end
    else if (fifo_wr_ack)
    begin
      m_axi_bready_i <= 1'b1;
    end
    else if (count_reset == 2'b11 && m_aresetn == 1'b1)
    begin
      m_axi_bready_i <= 1'b1;
    end*/
  end

  /*always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      count_reset <= 2'b00;
    end
    else if (count_reset < 2'b11)
    begin
      count_reset <= count_reset + 2'b01;
    end
    else
    begin
      count_reset <= count_reset;
    end
  end*/

  always @ (posedge m_aclk)
  begin
    temp_m_aresetn1 <= m_aresetn;
    temp_m_aresetn2 <= temp_m_aresetn1;
  end

  assign rising_m_aresetn = m_aresetn & !temp_m_aresetn2;

  assign m_axi_bready = m_axi_bready_i;

  //
  // Storin the Write address transaction into fifo
  //
  always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      fifo_wren <= 1'b0;
      fifo_wr_data_bresp <= 'h0;
    end
    else if (m_axi_bvalid == 1'b1 && m_axi_bready == 1'b1)
    begin
      fifo_wr_data_bresp <= m_axi_bresp;
      fifo_wren <= 1'b1;
    end
    else
    begin
      fifo_wren <= 1'b0;
    end
  end

  /*always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      count <= 4'h0;
    end
    else if (fifo_full == 1'b1 || (m_axi_bvalid == 1'b1 && m_axi_bready == 1'b1))
    begin
      count <= 4'h0;
    end
    else if ((m_axi_bvalid == 1'b1 && m_axi_bready == 1'b0) || (m_axi_bvalid == 1'b0 && m_axi_bready == 1'b0) && fifo_full == 1'b0)
    begin
      count <= count + 4'h1;
    end
  end*/
  // Master Interface Side
  reg         fifo_rden;
  reg  [1:0]  s_axi_bresp_i;
  wire [1:0]  fifo_rd_data_bresp;
  wire        fifo_empty;
  reg         temp_fifo_empty;
  wire        falling_fifo_empty;
  reg         aw_flag;
  reg         w_flag;

  //
  // For Master Write address Valid generation
  //
  /*always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      s_axi_bvalid_i <= 1'b0;
      s_axi_bresp_i <= 'h0;
    end
    else if (s_axi_bready_i == 1'b1 && s_axi_bvalid_i == 1'b1)
    begin
      s_axi_bvalid_i <= 1'b0;
    end
    else if (fifo_rd_valid == 1'b1)
    begin
      s_axi_bvalid_i <= 1'b1;
      s_axi_bresp_i <= fifo_rd_data_bresp;
    end
  end*/

  /*assign s_axi_bvalid = s_axi_bvalid_i;
  assign s_axi_bresp = s_axi_bresp_i;*/

  //
  // Get the transaction to be fired from Fifo
  //
  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      fifo_rden <= 1'b0;
    end
    else if (fifo_empty == 1'b1)
    begin
      fifo_rden <= 1'b0;
    end
    //else if ((s_axi_bvalid_i == 1'b1 && s_axi_bready_i == 1'b1) || (falling_fifo_empty == 1'b1))
    //begin
    //  fifo_rden <= 1'b1;
    //end
    else
    begin
      fifo_rden <= 1'b1;
    end
  end

  //
  // Falling edge detection of fifo_empty
  //
  /*always @ (posedge m_aclk)
  begin
    temp_fifo_empty <= fifo_empty;
  end

  assign falling_fifo_empty = !fifo_empty & temp_fifo_empty;*/

  //
  // Sending the write responses
  //
  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      s_axi_bvalid_i <= 1'b0;
      s_axi_bresp_i <= 'b0;
    end
    //else if (s_axi_wvalid == 1'b1 && s_axi_wready == 1'b1)
    else if (s_axi_bvalid == 1'b1 && s_axi_bready == 1'b1)
    begin
      s_axi_bvalid_i <= 1'b0;
      s_axi_bresp_i <= fifo_rd_data_bresp;
    end
    else if (aw_flag == 1'b1 && w_flag == 1'b1)
    begin
      s_axi_bvalid_i <= 1'b1;
      s_axi_bresp_i <= fifo_rd_data_bresp;
    end
  end

  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      aw_flag <= 1'b0;
    end
    else if (s_axi_awvalid == 1'b1 && s_axi_awready == 1'b1)
    begin
      aw_flag <= 1'b1;
    end
   else if (s_axi_bvalid == 1'b1 && s_axi_bready == 1'b1)
    begin
      aw_flag <= 1'b0;
    end
  end

  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      w_flag <= 1'b0;
    end
   else if (s_axi_wvalid == 1'b1 && s_axi_wready == 1'b1)
    begin
      w_flag <= 1'b1;
    end
    else if (s_axi_bvalid == 1'b1 && s_axi_bready == 1'b1)
    begin
      w_flag <= 1'b0;
    end
  end


  assign s_axi_bvalid = s_axi_bvalid_i;
  assign s_axi_bresp = s_axi_bresp_i;

  //
  // Fifo instance for Write address
  //
  fifo_generator_v13_1_4 #(
    .C_COMMON_CLOCK(0),
    //.C_SELECT_XPM(0),
    .C_COUNT_TYPE(0),
    .C_DATA_COUNT_WIDTH(8),
    .C_DEFAULT_VALUE("BlankString"),
    .C_DIN_WIDTH(2),
    .C_DOUT_RST_VAL("0"),
    .C_DOUT_WIDTH(2),
    .C_ENABLE_RLOCS(0),
    .C_FAMILY("kintex7"),
    .C_FULL_FLAGS_RST_VAL(0),
    .C_HAS_ALMOST_EMPTY(0),
    .C_HAS_ALMOST_FULL(0),
    .C_HAS_BACKUP(0),
    .C_HAS_DATA_COUNT(0),
    .C_HAS_INT_CLK(0),
    .C_HAS_MEMINIT_FILE(0),
    .C_HAS_OVERFLOW(0),
    .C_HAS_RD_DATA_COUNT(0),
    .C_HAS_RD_RST(0),
    .C_HAS_RST(1),
    .C_HAS_SRST(0),
    .C_HAS_UNDERFLOW(0),
    .C_HAS_VALID(1),
    .C_HAS_WR_ACK(1),
    .C_HAS_WR_DATA_COUNT(0),
    .C_HAS_WR_RST(0),
    .C_IMPLEMENTATION_TYPE(2),
    .C_INIT_WR_PNTR_VAL(0),
    .C_MEMORY_TYPE(1),
    .C_MIF_FILE_NAME("BlankString"),
    .C_OPTIMIZATION_MODE(0),
    .C_OVERFLOW_LOW(0),
    .C_PRELOAD_LATENCY(1),
    .C_PRELOAD_REGS(0),
    .C_PRIM_FIFO_TYPE("512x36"),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL(2),
    .C_PROG_EMPTY_THRESH_NEGATE_VAL(3),
    .C_PROG_EMPTY_TYPE(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL(253),
    .C_PROG_FULL_THRESH_NEGATE_VAL(252),
    .C_PROG_FULL_TYPE(0),
    .C_RD_DATA_COUNT_WIDTH(8),
    .C_RD_DEPTH(256),
    .C_RD_FREQ(1),
    .C_RD_PNTR_WIDTH(8),
    .C_UNDERFLOW_LOW(0),
    .C_USE_DOUT_RST(1),
    .C_USE_ECC(0),
    .C_USE_EMBEDDED_REG(0),
    .C_USE_PIPELINE_REG(0),
    .C_POWER_SAVING_MODE(0),
    .C_USE_FIFO16_FLAGS(0),
    .C_USE_FWFT_DATA_COUNT(0),
    .C_VALID_LOW(0),
    .C_WR_ACK_LOW(0),
    .C_WR_DATA_COUNT_WIDTH(8),
    .C_WR_DEPTH(256),
    .C_WR_FREQ(1),
    .C_WR_PNTR_WIDTH(8),
    .C_WR_RESPONSE_LATENCY(1),
    .C_MSGON_VAL(1),
    .C_ENABLE_RST_SYNC(1),
    //.C_EN_SAFETY_CKT(0),
    .C_ERROR_INJECTION_TYPE(0),
    .C_SYNCHRONIZER_STAGE(2),
    .C_INTERFACE_TYPE(0),
    .C_AXI_TYPE(1),
    .C_HAS_AXI_WR_CHANNEL(1),
    .C_HAS_AXI_RD_CHANNEL(1),
    .C_HAS_SLAVE_CE(0),
    .C_HAS_MASTER_CE(0),
    .C_ADD_NGC_CONSTRAINT(0),
    .C_USE_COMMON_OVERFLOW(0),
    .C_USE_COMMON_UNDERFLOW(0),
    .C_USE_DEFAULT_SETTINGS(0),
    .C_AXI_ID_WIDTH(1),
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_DATA_WIDTH(64),
    .C_AXI_LEN_WIDTH(8),
    .C_AXI_LOCK_WIDTH(1),
    .C_HAS_AXI_ID(0),
    .C_HAS_AXI_AWUSER(0),
    .C_HAS_AXI_WUSER(0),
    .C_HAS_AXI_BUSER(0),
    .C_HAS_AXI_ARUSER(0),
    .C_HAS_AXI_RUSER(0),
    .C_AXI_ARUSER_WIDTH(1),
    .C_AXI_AWUSER_WIDTH(1),
    .C_AXI_WUSER_WIDTH(1),
    .C_AXI_BUSER_WIDTH(1),
    .C_AXI_RUSER_WIDTH(1),
    .C_HAS_AXIS_TDATA(1),
    .C_HAS_AXIS_TID(0),
    .C_HAS_AXIS_TDEST(0),
    .C_HAS_AXIS_TUSER(1),
    .C_HAS_AXIS_TREADY(1),
    .C_HAS_AXIS_TLAST(0),
    .C_HAS_AXIS_TSTRB(0),
    .C_HAS_AXIS_TKEEP(0),
    .C_AXIS_TDATA_WIDTH(8),
    .C_AXIS_TID_WIDTH(1),
    .C_AXIS_TDEST_WIDTH(1),
    .C_AXIS_TUSER_WIDTH(4),
    .C_AXIS_TSTRB_WIDTH(1),
    .C_AXIS_TKEEP_WIDTH(1),
    .C_WACH_TYPE(0),
    .C_WDCH_TYPE(0),
    .C_WRCH_TYPE(0),
    .C_RACH_TYPE(0),
    .C_RDCH_TYPE(0),
    .C_AXIS_TYPE(0),
    .C_IMPLEMENTATION_TYPE_WACH(1),
    .C_IMPLEMENTATION_TYPE_WDCH(1),
    .C_IMPLEMENTATION_TYPE_WRCH(1),
    .C_IMPLEMENTATION_TYPE_RACH(1),
    .C_IMPLEMENTATION_TYPE_RDCH(1),
    .C_IMPLEMENTATION_TYPE_AXIS(1),
    .C_APPLICATION_TYPE_WACH(0),
    .C_APPLICATION_TYPE_WDCH(0),
    .C_APPLICATION_TYPE_WRCH(0),
    .C_APPLICATION_TYPE_RACH(0),
    .C_APPLICATION_TYPE_RDCH(0),
    .C_APPLICATION_TYPE_AXIS(0),
    .C_PRIM_FIFO_TYPE_WACH("512x36"),
    .C_PRIM_FIFO_TYPE_WDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_WRCH("512x36"),
    .C_PRIM_FIFO_TYPE_RACH("512x36"),
    .C_PRIM_FIFO_TYPE_RDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_AXIS("1kx18"),
    .C_USE_ECC_WACH(0),
    .C_USE_ECC_WDCH(0),
    .C_USE_ECC_WRCH(0),
    .C_USE_ECC_RACH(0),
    .C_USE_ECC_RDCH(0),
    .C_USE_ECC_AXIS(0),
    .C_ERROR_INJECTION_TYPE_WACH(0),
    .C_ERROR_INJECTION_TYPE_WDCH(0),
    .C_ERROR_INJECTION_TYPE_WRCH(0),
    .C_ERROR_INJECTION_TYPE_RACH(0),
    .C_ERROR_INJECTION_TYPE_RDCH(0),
    .C_ERROR_INJECTION_TYPE_AXIS(0),
    .C_DIN_WIDTH_WACH(1),
    .C_DIN_WIDTH_WDCH(64),
    .C_DIN_WIDTH_WRCH(2),
    .C_DIN_WIDTH_RACH(32),
    .C_DIN_WIDTH_RDCH(64),
    .C_DIN_WIDTH_AXIS(1),
    .C_WR_DEPTH_WACH(16),
    .C_WR_DEPTH_WDCH(1024),
    .C_WR_DEPTH_WRCH(16),
    .C_WR_DEPTH_RACH(16),
    .C_WR_DEPTH_RDCH(1024),
    .C_WR_DEPTH_AXIS(1024),
    .C_WR_PNTR_WIDTH_WACH(4),
    .C_WR_PNTR_WIDTH_WDCH(10),
    .C_WR_PNTR_WIDTH_WRCH(4),
    .C_WR_PNTR_WIDTH_RACH(4),
    .C_WR_PNTR_WIDTH_RDCH(10),
    .C_WR_PNTR_WIDTH_AXIS(10),
    .C_HAS_DATA_COUNTS_WACH(0),
    .C_HAS_DATA_COUNTS_WDCH(0),
    .C_HAS_DATA_COUNTS_WRCH(0),
    .C_HAS_DATA_COUNTS_RACH(0),
    .C_HAS_DATA_COUNTS_RDCH(0),
    .C_HAS_DATA_COUNTS_AXIS(0),
    .C_HAS_PROG_FLAGS_WACH(0),
    .C_HAS_PROG_FLAGS_WDCH(0),
    .C_HAS_PROG_FLAGS_WRCH(0),
    .C_HAS_PROG_FLAGS_RACH(0),
    .C_HAS_PROG_FLAGS_RDCH(0),
    .C_HAS_PROG_FLAGS_AXIS(0),
    .C_PROG_FULL_TYPE_WACH(0),
    .C_PROG_FULL_TYPE_WDCH(0),
    .C_PROG_FULL_TYPE_WRCH(0),
    .C_PROG_FULL_TYPE_RACH(0),
    .C_PROG_FULL_TYPE_RDCH(0),
    .C_PROG_FULL_TYPE_AXIS(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WACH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WRCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RACH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_AXIS(1023),
    .C_PROG_EMPTY_TYPE_WACH(0),
    .C_PROG_EMPTY_TYPE_WDCH(0),
    .C_PROG_EMPTY_TYPE_WRCH(0),
    .C_PROG_EMPTY_TYPE_RACH(0),
    .C_PROG_EMPTY_TYPE_RDCH(0),
    .C_PROG_EMPTY_TYPE_AXIS(0),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS(1022),
    .C_REG_SLICE_MODE_WACH(0),
    .C_REG_SLICE_MODE_WDCH(0),
    .C_REG_SLICE_MODE_WRCH(0),
    .C_REG_SLICE_MODE_RACH(0),
    .C_REG_SLICE_MODE_RDCH(0),
    .C_REG_SLICE_MODE_AXIS(0)
  )
  write_response_fifo (
    .rst(!aresetn),
    .wr_clk(m_aclk),
    .rd_clk(s_aclk),
    .din(fifo_wr_data_bresp[1:0]),
    //.wr_en(fifo_wren),
    .wr_en(fifo_wren),
    .rd_en(fifo_rden),
    .dout(fifo_rd_data_bresp[1:0]),
    .full(fifo_full),
    .wr_ack(fifo_wr_ack),
    .empty(fifo_empty),
    .valid(fifo_rd_valid)
  );

  assign write_resp_wr_data_o   = fifo_wr_data_bresp[1:0];
  assign write_resp_wren_o      = fifo_wren;
  assign write_resp_full_o      = fifo_full;
  assign write_resp_wr_ack_o    = fifo_wr_ack;
  assign write_resp_rd_data_o   = fifo_rd_data_bresp[1:0];
  assign write_resp_rden_o      = fifo_rden;
  assign write_resp_empty_o     = fifo_empty;
  assign write_resp_rd_valid_o  = fifo_rd_valid;
  assign write_resp_s_bvalid_o  = s_axi_bvalid_i;
  assign write_resp_s_bready_o  = s_axi_bready;
  assign write_resp_m_bvalid_o  = m_axi_bvalid;
  assign write_resp_m_bready_o  = m_axi_bready_i;

/*fifo_generator_1 write_response_fifo (
  .wr_clk(m_aclk), 
  .rd_clk(s_aclk), 
  .din(fifo_wr_data_bresp[1:0]),       
  .wr_en(fifo_wren),   
  .rd_en(fifo_rden),   
  .dout(fifo_rd_data_bresp[1:0]),     
  .full(fifo_full),     
  .wr_ack(fifo_wr_ack), 
  .empty(fifo_empty),   
  .valid(fifo_rd_valid)
);*/
endmodule // apcc


//  (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// AXI Register Slice
//   Register selected channels on the forward and/or reverse signal paths.
//   5-channel memory-mapped AXI4 interfaces.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   apcc
//      axic_gate
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module apcc_v1_0_2_write_data #
  (
   parameter integer C_AXI_ADDR_WIDTH            = 32,
   parameter integer C_AXI_DATA_WIDTH            = 32
  )
  (
   // System Signals
   input wire aresetn,
   input wire m_aresetn,
   input wire s_aclk,
   input wire m_aclk,
   input wire s_axi_bvalid,
   input wire s_axi_bready,
   input wire m_axi_bvalid,
   input wire m_axi_bready,
   input      debug_bit_flag,
   output     debug_bit,
   output     bypass_mode,
   output     start,

   // Slave Interface Write Address Ports
   input  wire [C_AXI_ADDR_WIDTH-1:0]   s_axi_wdata,
   input  wire [3:0]                    s_axi_wstrb,
   input  wire                          s_axi_wvalid,
   output wire                          s_axi_wready,

   // Master Interface Write Address Port
   output wire [C_AXI_ADDR_WIDTH-1:0]   m_axi_wdata,
   output wire [3:0]                    m_axi_wstrb,
   output wire                          m_axi_wvalid,
   input  wire                          m_axi_wready,
  
   // For Debug 
   (* DONT_TOUCH = "true" *)output [31:0] write_data_wr_data_o,
   (* DONT_TOUCH = "true" *)output        write_data_wren_o,
   (* DONT_TOUCH = "true" *)output        write_data_full_o,
   (* DONT_TOUCH = "true" *)output        write_data_wr_ack_o,
   (* DONT_TOUCH = "true" *)output [31:0] write_data_rd_data_o,
   (* DONT_TOUCH = "true" *)output        write_data_rden_o,
   (* DONT_TOUCH = "true" *)output        write_data_empty_o,
   (* DONT_TOUCH = "true" *)output        write_data_rd_valid_o,
   (* DONT_TOUCH = "true" *)output        write_data_s_wvalid_o,
   (* DONT_TOUCH = "true" *)output        write_data_s_wready_o,
   (* DONT_TOUCH = "true" *)output        write_data_m_wvalid_o,
   (* DONT_TOUCH = "true" *)output        write_data_m_wready_o
   //input  wire                          freeze
  );

  // Slave Interface side
  reg [31:0] fifo_wr_data_wdata;
  reg [7:0 ] fifo_wr_data_wstrb;
  reg        fifo_wren;
  reg        s_axi_wready_i;
  reg        m_axi_wvalid_i;
  reg [1:0]  count_reset;
  wire       fifo_full;
  wire       fifo_rd_valid;
  wire       fifo_wr_ack;
  reg        waiting_resp;
  reg        debug_bit_i;
  reg        bypass_mode_i;
  reg        start_i;

  //
  // For Slave Write address Ready generation
  //
  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      s_axi_wready_i <= 1'b0;
      waiting_resp <= 1'b0;
    end
    else
    begin
      if (fifo_full == 1'b1 || (s_axi_wvalid == 1'b1 && s_axi_wready_i == 1'b1 && (!waiting_resp)))
      begin
        s_axi_wready_i <=1'b0;
	if (fifo_full == 1'b1)
          waiting_resp <= 1'b0;
        else
          waiting_resp <= 1'b1;
      end
      else if(s_axi_wvalid == 1'b1 && s_axi_wready_i == 1'b0 && (!waiting_resp))
        s_axi_wready_i <= 1'b1;
      else if (s_axi_bvalid == 1'b1 && s_axi_bready == 1'b1)
      begin
        waiting_resp <= 1'b0;
      end
    end
    /*else if (fifo_full == 1'b1)
    begin
      s_axi_wready_i <=1'b0;
    end
    else if (s_axi_wvalid == 1'b1 && s_axi_wready == 1'b1)
    begin
      s_axi_wready_i <= 1'b0;
    end
    //else if (fifo_wr_ack)
    else if (s_axi_bvalid == 1'b1 && s_axi_bready == 1'b1)
    begin
      s_axi_wready_i <= 1'b1;
    end
    else if (count_reset == 2'b11 && aresetn == 1'b1)
    begin
      s_axi_wready_i <= 1'b1;
    end*/
  end

  /*always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      count_reset <= 2'b00;
    end
    else if (count_reset < 2'b11)
    begin
      count_reset <= count_reset + 2'b01;
    end
    else
    begin
      count_reset <= count_reset;
    end
  end*/

  assign s_axi_wready = s_axi_wready_i;

  //
  // Storin the Write address transaction into fifo
  //
  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      fifo_wren <= 1'b0;
      fifo_wr_data_wdata <= 'h0;
      fifo_wr_data_wstrb <= 'h0;
    end
    else if (s_axi_wvalid == 1'b1 && s_axi_wready == 1'b1)
    begin
      fifo_wr_data_wdata <= s_axi_wdata;
      fifo_wr_data_wstrb <= s_axi_wstrb;
      fifo_wren <= 1'b1;
    end
    else
    begin
      fifo_wren <= 1'b0;
    end
  end

  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      debug_bit_i <= 1'b0;
    end
    else
    begin
      if (debug_bit_flag == 'h1)
      begin
        if (fifo_wr_data_wdata[8] == 1'b1)
        begin
          debug_bit_i <= 1'b1;
        end
        else
        begin
          debug_bit_i <= 1'b0;
        end
      end
    end
  end

  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      bypass_mode_i <= 1'b1;
    end
    else
    begin
      if (debug_bit_flag == 'h1)
      begin
        if (fifo_wr_data_wdata[9:8] == 2'b00)
        begin
          bypass_mode_i <= 1'b1;
        end
        else
        begin
          bypass_mode_i <= 1'b0;
        end
      end
    end
  end

  assign debug_bit = debug_bit_i;
  assign bypass_mode = bypass_mode_i;

  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      start_i <= 1'b0;
    end
    else
    begin
      if (debug_bit_flag == 'h1)
      begin
        if (fifo_wr_data_wdata[0] == 1'b1)
        begin
          start_i <= 1'b1;
        end
        else
        begin
          start_i <= 1'b0;
        end
      end
      else
      begin
        start_i <= 1'b0;
      end
    end
  end

  assign start = start_i;

  // Master Interface Side
  reg         fifo_rden;
  reg  [31:0] m_axi_wdata_i;
  reg  [7:0]  m_axi_wstrb_i;
  wire [31:0] fifo_rd_data_wdata;
  wire [7:0]  fifo_rd_data_wstrb;
  wire        fifo_empty;
  reg         temp_fifo_empty;
  reg         temp_rst1, temp_rst2, temp_rst3;
  wire        falling_fifo_empty;
  wire        rising_rst;
  reg  [3:0]  count;

  //
  // For Master Write address Valid generation
  //
  always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      m_axi_wvalid_i <= 1'b0;
      m_axi_wdata_i <= 'h0;
      m_axi_wstrb_i <= 'h0;
    end
    else if (m_axi_wready == 1'b1 && m_axi_wvalid == 1'b1)
    begin
      m_axi_wvalid_i <= 1'b0;
    end
    else if (fifo_rd_valid == 1'b1)
    begin
      m_axi_wvalid_i <= 1'b1;
      m_axi_wdata_i <= fifo_rd_data_wdata;
      m_axi_wstrb_i <= fifo_rd_data_wstrb;
    end
  end

  assign m_axi_wvalid = m_axi_wvalid_i;
  assign m_axi_wdata = m_axi_wdata_i;
  assign m_axi_wstrb = m_axi_wstrb_i;

  //
  // Get the transaction to be fired from Fifo
  //
  always @ (posedge m_aclk)
  begin
    //if (fifo_empty == 1'b0 && s_axi_wvalid_ff2 == 1'b1 && s_axi_wready_ff2 == 1'b1)
    if (m_aresetn == 1'b0)
    begin
      fifo_rden <= 1'b0;
    end
    else if (fifo_empty == 1'b1)
    begin
      fifo_rden <= 1'b0;
    end
    //else if ((m_axi_wvalid == 1'b1 && m_axi_wready == 1'b1) || (falling_fifo_empty == 1'b1))
    else if ((m_axi_bvalid == 1'b1 && m_axi_bready == 1'b1) || (falling_fifo_empty == 1'b1) || (rising_rst == 1'b1))
    begin
      fifo_rden <= 1'b1;
    end
    //else if (!(m_axi_wvalid == 1'b1 && m_axi_wready == 1'b0) && count ==4'hF && fifo_empty == 1'b0)
    /*else if (count ==4'hF)
    begin
      fifo_rden <= 1'b1;
    end*/
    else
    begin
      fifo_rden <= 1'b0;
    end
  end

  /*always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      count <= 4'h0;
    end
    //else if (fifo_empty == 1'b1 || (m_axi_wvalid == 1'b1 && m_axi_wready == 1'b1))
    else if (fifo_empty == 1'b1 || (m_axi_wvalid == 1'b1 && m_axi_wready == 1'b1) || (m_axi_wvalid == 1'b1 && m_axi_wready == 1'b0))
    begin
      count <= 4'h0;
    end
    else if (((m_axi_wvalid == 1'b0 && m_axi_wready == 1'b1) || (m_axi_wvalid == 1'b0 && m_axi_wready == 1'b0)) && fifo_empty == 1'b0)
    begin
      count <= count + 4'h1;
    end
  end*/
  //
  // Rising edge detection of fifo_empty
  //
  always @ (posedge m_aclk)
  begin
    temp_rst1 <= m_aresetn;
    temp_rst2 <= temp_rst1;
    temp_rst3 <= temp_rst2;
  end

  assign rising_rst = temp_rst2 & !temp_rst3;

  //
  // Falling edge detection of fifo_empty
  //
  always @ (posedge m_aclk)
  begin
    temp_fifo_empty <= fifo_empty;
  end

  assign falling_fifo_empty = !fifo_empty & temp_fifo_empty;

  //
  // Fifo instance for Write address
  //
  fifo_generator_v13_1_4 #(
    .C_COMMON_CLOCK(0),
    //.C_SELECT_XPM(0),
    .C_COUNT_TYPE(0),
    .C_DATA_COUNT_WIDTH(8),
    .C_DEFAULT_VALUE("BlankString"),
    .C_DIN_WIDTH(40),
    .C_DOUT_RST_VAL("0"),
    .C_DOUT_WIDTH(40),
    .C_ENABLE_RLOCS(0),
    .C_FAMILY("kintex7"),
    .C_FULL_FLAGS_RST_VAL(0),
    .C_HAS_ALMOST_EMPTY(0),
    .C_HAS_ALMOST_FULL(0),
    .C_HAS_BACKUP(0),
    .C_HAS_DATA_COUNT(0),
    .C_HAS_INT_CLK(0),
    .C_HAS_MEMINIT_FILE(0),
    .C_HAS_OVERFLOW(0),
    .C_HAS_RD_DATA_COUNT(0),
    .C_HAS_RD_RST(0),
    .C_HAS_RST(1),
    .C_HAS_SRST(0),
    .C_HAS_UNDERFLOW(0),
    .C_HAS_VALID(1),
    .C_HAS_WR_ACK(1),
    .C_HAS_WR_DATA_COUNT(0),
    .C_HAS_WR_RST(0),
    .C_IMPLEMENTATION_TYPE(2),
    .C_INIT_WR_PNTR_VAL(0),
    .C_MEMORY_TYPE(1),
    .C_MIF_FILE_NAME("BlankString"),
    .C_OPTIMIZATION_MODE(0),
    .C_OVERFLOW_LOW(0),
    .C_PRELOAD_LATENCY(1),
    .C_PRELOAD_REGS(0),
    .C_PRIM_FIFO_TYPE("512x72"),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL(2),
    .C_PROG_EMPTY_THRESH_NEGATE_VAL(3),
    .C_PROG_EMPTY_TYPE(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL(253),
    .C_PROG_FULL_THRESH_NEGATE_VAL(252),
    .C_PROG_FULL_TYPE(0),
    .C_RD_DATA_COUNT_WIDTH(8),
    .C_RD_DEPTH(256),
    .C_RD_FREQ(1),
    .C_RD_PNTR_WIDTH(8),
    .C_UNDERFLOW_LOW(0),
    .C_USE_DOUT_RST(1),
    .C_USE_ECC(0),
    .C_USE_EMBEDDED_REG(0),
    .C_USE_PIPELINE_REG(0),
    .C_POWER_SAVING_MODE(0),
    .C_USE_FIFO16_FLAGS(0),
    .C_USE_FWFT_DATA_COUNT(0),
    .C_VALID_LOW(0),
    .C_WR_ACK_LOW(0),
    .C_WR_DATA_COUNT_WIDTH(8),
    .C_WR_DEPTH(256),
    .C_WR_FREQ(1),
    .C_WR_PNTR_WIDTH(8),
    .C_WR_RESPONSE_LATENCY(1),
    .C_MSGON_VAL(1),
    .C_ENABLE_RST_SYNC(1),
    //.C_EN_SAFETY_CKT(0),
    .C_ERROR_INJECTION_TYPE(0),
    .C_SYNCHRONIZER_STAGE(2),
    .C_INTERFACE_TYPE(0),
    .C_AXI_TYPE(1),
    .C_HAS_AXI_WR_CHANNEL(1),
    .C_HAS_AXI_RD_CHANNEL(1),
    .C_HAS_SLAVE_CE(0),
    .C_HAS_MASTER_CE(0),
    .C_ADD_NGC_CONSTRAINT(0),
    .C_USE_COMMON_OVERFLOW(0),
    .C_USE_COMMON_UNDERFLOW(0),
    .C_USE_DEFAULT_SETTINGS(0),
    .C_AXI_ID_WIDTH(1),
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_DATA_WIDTH(64),
    .C_AXI_LEN_WIDTH(8),
    .C_AXI_LOCK_WIDTH(1),
    .C_HAS_AXI_ID(0),
    .C_HAS_AXI_AWUSER(0),
    .C_HAS_AXI_WUSER(0),
    .C_HAS_AXI_BUSER(0),
    .C_HAS_AXI_ARUSER(0),
    .C_HAS_AXI_RUSER(0),
    .C_AXI_ARUSER_WIDTH(1),
    .C_AXI_AWUSER_WIDTH(1),
    .C_AXI_WUSER_WIDTH(1),
    .C_AXI_BUSER_WIDTH(1),
    .C_AXI_RUSER_WIDTH(1),
    .C_HAS_AXIS_TDATA(1),
    .C_HAS_AXIS_TID(0),
    .C_HAS_AXIS_TDEST(0),
    .C_HAS_AXIS_TUSER(1),
    .C_HAS_AXIS_TREADY(1),
    .C_HAS_AXIS_TLAST(0),
    .C_HAS_AXIS_TSTRB(0),
    .C_HAS_AXIS_TKEEP(0),
    .C_AXIS_TDATA_WIDTH(8),
    .C_AXIS_TID_WIDTH(1),
    .C_AXIS_TDEST_WIDTH(1),
    .C_AXIS_TUSER_WIDTH(4),
    .C_AXIS_TSTRB_WIDTH(1),
    .C_AXIS_TKEEP_WIDTH(1),
    .C_WACH_TYPE(0),
    .C_WDCH_TYPE(0),
    .C_WRCH_TYPE(0),
    .C_RACH_TYPE(0),
    .C_RDCH_TYPE(0),
    .C_AXIS_TYPE(0),
    .C_IMPLEMENTATION_TYPE_WACH(1),
    .C_IMPLEMENTATION_TYPE_WDCH(1),
    .C_IMPLEMENTATION_TYPE_WRCH(1),
    .C_IMPLEMENTATION_TYPE_RACH(1),
    .C_IMPLEMENTATION_TYPE_RDCH(1),
    .C_IMPLEMENTATION_TYPE_AXIS(1),
    .C_APPLICATION_TYPE_WACH(0),
    .C_APPLICATION_TYPE_WDCH(0),
    .C_APPLICATION_TYPE_WRCH(0),
    .C_APPLICATION_TYPE_RACH(0),
    .C_APPLICATION_TYPE_RDCH(0),
    .C_APPLICATION_TYPE_AXIS(0),
    .C_PRIM_FIFO_TYPE_WACH("512x36"),
    .C_PRIM_FIFO_TYPE_WDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_WRCH("512x36"),
    .C_PRIM_FIFO_TYPE_RACH("512x36"),
    .C_PRIM_FIFO_TYPE_RDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_AXIS("1kx18"),
    .C_USE_ECC_WACH(0),
    .C_USE_ECC_WDCH(0),
    .C_USE_ECC_WRCH(0),
    .C_USE_ECC_RACH(0),
    .C_USE_ECC_RDCH(0),
    .C_USE_ECC_AXIS(0),
    .C_ERROR_INJECTION_TYPE_WACH(0),
    .C_ERROR_INJECTION_TYPE_WDCH(0),
    .C_ERROR_INJECTION_TYPE_WRCH(0),
    .C_ERROR_INJECTION_TYPE_RACH(0),
    .C_ERROR_INJECTION_TYPE_RDCH(0),
    .C_ERROR_INJECTION_TYPE_AXIS(0),
    .C_DIN_WIDTH_WACH(1),
    .C_DIN_WIDTH_WDCH(64),
    .C_DIN_WIDTH_WRCH(2),
    .C_DIN_WIDTH_RACH(32),
    .C_DIN_WIDTH_RDCH(64),
    .C_DIN_WIDTH_AXIS(1),
    .C_WR_DEPTH_WACH(16),
    .C_WR_DEPTH_WDCH(1024),
    .C_WR_DEPTH_WRCH(16),
    .C_WR_DEPTH_RACH(16),
    .C_WR_DEPTH_RDCH(1024),
    .C_WR_DEPTH_AXIS(1024),
    .C_WR_PNTR_WIDTH_WACH(4),
    .C_WR_PNTR_WIDTH_WDCH(10),
    .C_WR_PNTR_WIDTH_WRCH(4),
    .C_WR_PNTR_WIDTH_RACH(4),
    .C_WR_PNTR_WIDTH_RDCH(10),
    .C_WR_PNTR_WIDTH_AXIS(10),
    .C_HAS_DATA_COUNTS_WACH(0),
    .C_HAS_DATA_COUNTS_WDCH(0),
    .C_HAS_DATA_COUNTS_WRCH(0),
    .C_HAS_DATA_COUNTS_RACH(0),
    .C_HAS_DATA_COUNTS_RDCH(0),
    .C_HAS_DATA_COUNTS_AXIS(0),
    .C_HAS_PROG_FLAGS_WACH(0),
    .C_HAS_PROG_FLAGS_WDCH(0),
    .C_HAS_PROG_FLAGS_WRCH(0),
    .C_HAS_PROG_FLAGS_RACH(0),
    .C_HAS_PROG_FLAGS_RDCH(0),
    .C_HAS_PROG_FLAGS_AXIS(0),
    .C_PROG_FULL_TYPE_WACH(0),
    .C_PROG_FULL_TYPE_WDCH(0),
    .C_PROG_FULL_TYPE_WRCH(0),
    .C_PROG_FULL_TYPE_RACH(0),
    .C_PROG_FULL_TYPE_RDCH(0),
    .C_PROG_FULL_TYPE_AXIS(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WACH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WRCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RACH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_AXIS(1023),
    .C_PROG_EMPTY_TYPE_WACH(0),
    .C_PROG_EMPTY_TYPE_WDCH(0),
    .C_PROG_EMPTY_TYPE_WRCH(0),
    .C_PROG_EMPTY_TYPE_RACH(0),
    .C_PROG_EMPTY_TYPE_RDCH(0),
    .C_PROG_EMPTY_TYPE_AXIS(0),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS(1022),
    .C_REG_SLICE_MODE_WACH(0),
    .C_REG_SLICE_MODE_WDCH(0),
    .C_REG_SLICE_MODE_WRCH(0),
    .C_REG_SLICE_MODE_RACH(0),
    .C_REG_SLICE_MODE_RDCH(0),
    .C_REG_SLICE_MODE_AXIS(0)
  )
  write_data_fifo (
    .rst(!aresetn),
    .wr_clk(s_aclk),
    .rd_clk(m_aclk),
    .din({fifo_wr_data_wstrb[7:0],fifo_wr_data_wdata[31:0]}),
    .wr_en(fifo_wren),
    .rd_en(fifo_rden),
    .dout({fifo_rd_data_wstrb[7:0],fifo_rd_data_wdata[31:0]}),
    .full(fifo_full),
    .wr_ack(fifo_wr_ack),
    .empty(fifo_empty),
    .valid(fifo_rd_valid)
  );

  assign write_data_wr_data_o   = fifo_wr_data_wdata[31:0];
  assign write_data_wren_o      = fifo_wren;
  assign write_data_full_o      = fifo_full;
  assign write_data_wr_ack_o    = fifo_wr_ack;
  assign write_data_rd_data_o   = fifo_rd_data_wdata[31:0];
  assign write_data_rden_o      = fifo_rden;
  assign write_data_empty_o     = fifo_empty;
  assign write_data_rd_valid_o  = fifo_rd_valid;
  assign write_data_s_wvalid_o  = s_axi_wvalid;
  assign write_data_s_wready_o  = s_axi_wready_i;
  assign write_data_m_wvalid_o  = m_axi_wvalid_i;
  assign write_data_m_wready_o  = m_axi_wready;

  /*fifo_generator_0 write_data_fifo (
  .wr_clk(s_aclk), 
  .rd_clk(m_aclk), 
  .din({fifo_wr_data_wstrb[7:0],fifo_wr_data_wdata[31:0]}),       
  .wr_en(fifo_wren),   
  .rd_en(fifo_rden),   
  .dout({fifo_rd_data_wstrb[7:0],fifo_rd_data_wdata[31:0]}),     
  .full(fifo_full),     
  .wr_ack(fifo_wr_ack), 
  .empty(fifo_empty),   
  .valid(fifo_rd_valid)
);*/

endmodule // apcc



//  (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// AXI Register Slice
//   Register selected channels on the forward and/or reverse signal paths.
//   5-channel memory-mapped AXI4 interfaces.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   apcc
//      axic_gate
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module apcc_v1_0_2_write_address #
  (
   parameter integer C_AXI_ADDR_WIDTH            = 32,
   parameter integer C_AXI_DATA_WIDTH            = 32
  )
  (
   // System Signals
   input wire aresetn,
   input wire m_aresetn,
   input wire s_aclk,
   input wire m_aclk,
   input wire s_axi_bvalid,
   input wire s_axi_bready,
   input wire m_axi_bvalid,
   input wire m_axi_bready,

   // Slave Interface Write Address Ports
   input  wire [C_AXI_ADDR_WIDTH-1:0]   s_axi_awaddr,
   input  wire [3-1:0]                  s_axi_awprot,
   input  wire                          s_axi_awvalid,
   output wire                          s_axi_awready,

   // Master Interface Write Address Port
   output wire [C_AXI_ADDR_WIDTH-1:0]   m_axi_awaddr,
   output wire [3-1:0]                  m_axi_awprot,
   output wire                          m_axi_awvalid,
   input  wire                          m_axi_awready,
   
   output                               debug_bit_flag,
   // For debug
   (* DONT_TOUCH = "true" *)output [31:0] write_address_wr_data_o,
   (* DONT_TOUCH = "true" *)output        write_address_wren_o,
   (* DONT_TOUCH = "true" *)output        write_address_full_o,
   (* DONT_TOUCH = "true" *)output        write_address_wr_ack_o,
   (* DONT_TOUCH = "true" *)output [31:0] write_address_rd_data_o,
   (* DONT_TOUCH = "true" *)output        write_address_rden_o,
   (* DONT_TOUCH = "true" *)output        write_address_empty_o,
   (* DONT_TOUCH = "true" *)output        write_address_rd_valid_o,
   (* DONT_TOUCH = "true" *)output        write_address_s_awvalid_o,
   (* DONT_TOUCH = "true" *)output        write_address_s_awready_o,
   (* DONT_TOUCH = "true" *)output        write_address_m_awvalid_o,
   (* DONT_TOUCH = "true" *)output        write_address_m_awready_o
   //input  wire                          freeze
  );

  // Slave Interface side
  reg [31:0] fifo_wr_data_awaddr;
  reg [7:0 ] fifo_wr_data_awprot;
  reg        fifo_wren;
  reg        s_axi_awready_i;
  reg        m_axi_awvalid_i;
  reg [1:0]  count_reset;
  wire       fifo_full;
  wire       fifo_rd_valid;
  wire       fifo_wr_ack;
  //reg        temp_aresetn1, temp_aresetn2;
  //wire       rising_aresetn;
  reg        waiting_resp;
  reg        debug_bit_flag_i;

  //
  // For Slave Write address Ready generation
  //
  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      s_axi_awready_i <= 1'b0;
      waiting_resp <= 1'b0;
    end
    else
    begin
      if (fifo_full == 1'b1 || (s_axi_awvalid == 1'b1 && s_axi_awready_i == 1'b1 && (!waiting_resp)))
      begin
        s_axi_awready_i <=1'b0;
	if (fifo_full == 1'b1)
          waiting_resp <= 1'b0;
        else
          waiting_resp <= 1'b1;
      end
      else if(s_axi_awvalid == 1'b1 && s_axi_awready_i == 1'b0 && (!waiting_resp))
       s_axi_awready_i <=1'b1;
      else if (s_axi_bvalid == 1'b1 && s_axi_bready == 1'b1)
        waiting_resp <= 1'b0;
    end
    /*else if (fifo_full == 1'b1)
    begin
      s_axi_awready_i <=1'b0;
    end
    else if (s_axi_awvalid == 1'b1 && s_axi_awready == 1'b1)
    begin
      s_axi_awready_i <= 1'b0;
    end
    //else if (fifo_wr_ack)
    else if (s_axi_bvalid == 1'b1 && s_axi_bready == 1'b1)
    begin
      s_axi_awready_i <= 1'b1;
    end
    else if (count_reset == 2'b11 && aresetn == 1'b1)
    begin
      s_axi_awready_i <= 1'b1;
    end*/
  end

  assign s_axi_awready = s_axi_awready_i;

  //
  // Storin the Write address transaction into fifo
  //
  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      fifo_wren <= 1'b0;
      fifo_wr_data_awaddr <= 'h0;
      fifo_wr_data_awprot <= 'h0;
    end
    else if (s_axi_awvalid == 1'b1 && s_axi_awready_i == 1'b1)
    begin
      fifo_wr_data_awaddr <= s_axi_awaddr;
      fifo_wr_data_awprot <= s_axi_awprot;
      fifo_wren <= 1'b1;
    end
    else
    begin
      fifo_wren <= 1'b0;
    end
  end

  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      debug_bit_flag_i <= 1'b0;
    end
    else
    begin
      if (fifo_wr_data_awaddr == 'h0 && s_axi_awready_i == 1'b1 && s_axi_awvalid == 1'b1)
      begin
        debug_bit_flag_i <= 1'b1;
      end
      else if (fifo_wr_data_awaddr != 'h0 && s_axi_awready_i == 1'b1 && s_axi_awvalid == 1'b1)
      begin
        debug_bit_flag_i <= 1'b0;
      end
    end
  end

  assign debug_bit_flag = debug_bit_flag_i;

  // Master Interface Side
  reg         fifo_rden;
  reg  [31:0] m_axi_awaddr_i;
  reg  [7:0]  m_axi_awprot_i;
  wire [31:0] fifo_rd_data_awaddr;
  wire [7:0]  fifo_rd_data_awprot;
  wire        fifo_empty;
  reg         temp_fifo_empty;
  reg         temp_rst1, temp_rst2, temp_rst3;
  wire        falling_fifo_empty;
  wire        rising_rst;
  reg  [3:0]  count;

  //
  // For Master Write address Valid generation
  //
  always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      m_axi_awvalid_i <= 1'b0;
      m_axi_awaddr_i <= 'h0;
      m_axi_awprot_i <= 'h0;
    end
    else if (m_axi_awready == 1'b1 && m_axi_awvalid == 1'b1)
    begin
      m_axi_awvalid_i <= 1'b0;
    end
    else if (fifo_rd_valid == 1'b1)
    begin
      m_axi_awvalid_i <= 1'b1;
      m_axi_awaddr_i <= fifo_rd_data_awaddr;
      m_axi_awprot_i <= fifo_rd_data_awprot;
    end
  end

  assign m_axi_awvalid = m_axi_awvalid_i;
  assign m_axi_awaddr = m_axi_awaddr_i;
  assign m_axi_awprot = m_axi_awprot_i;

  //
  // Get the transaction to be fired from Fifo
  //
  always @ (posedge m_aclk)
  begin
    //if (fifo_empty == 1'b0 && s_axi_awvalid_ff2 == 1'b1 && s_axi_awready_ff2 == 1'b1)
    if (m_aresetn == 1'b0)
    begin
      fifo_rden <= 1'b0;
    end
    else if (fifo_empty == 1'b1)
    begin
      fifo_rden <= 1'b0;
    end
    //else if ((m_axi_awvalid == 1'b1 && m_axi_awready == 1'b1) || (falling_fifo_empty == 1'b1))
    else if ((m_axi_bvalid == 1'b1 && m_axi_bready == 1'b1) || (falling_fifo_empty == 1'b1) || (rising_rst == 1'b1))
    begin
      fifo_rden <= 1'b1;
    end
    //else if (!(m_axi_awvalid == 1'b1 && m_axi_awready == 1'b0) && count ==4'hF && fifo_empty == 1'b0)
    /*else if (count == 4'hF)
    begin
      fifo_rden <= 1'b1;
    end*/
    else
    begin
      fifo_rden <= 1'b0;
    end
  end

  /*always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      count <= 4'h0;
    end
    //else if (fifo_empty == 1'b1 || (m_axi_awvalid == 1'b1 && m_axi_awready == 1'b1))
    else if (fifo_empty == 1'b1 || (m_axi_awvalid == 1'b1 && m_axi_awready == 1'b1) || (m_axi_awvalid == 1'b1 && m_axi_awready == 1'b0))
    begin
      count <= 4'h0;
    end
    else if (((m_axi_awvalid == 1'b0 && m_axi_awready == 1'b1) || (m_axi_awvalid == 1'b0 && m_axi_awready == 1'b0)) && fifo_empty == 1'b0)
    begin
      count <= count + 4'h1;
    end
  end*/
  //
  // Rising edge detection of fifo_empty
  //
  always @ (posedge m_aclk)
  begin
    temp_rst1 <= m_aresetn;
    temp_rst2 <= temp_rst1;
    temp_rst3 <= temp_rst2;
  end

  assign rising_rst = temp_rst2 & !temp_rst3;

  //
  // Falling edge detection of fifo_empty
  //
  always @ (posedge m_aclk)
  begin
    temp_fifo_empty <= fifo_empty;
  end

  assign falling_fifo_empty = !fifo_empty & temp_fifo_empty;
  
  //
  // Fifo instance for Write address
  //
  fifo_generator_v13_1_4 #(
    .C_COMMON_CLOCK(0),
    //.C_SELECT_XPM(0),
    .C_COUNT_TYPE(0),
    .C_DATA_COUNT_WIDTH(8),
    .C_DEFAULT_VALUE("BlankString"),
    .C_DIN_WIDTH(40),
    .C_DOUT_RST_VAL("0"),
    .C_DOUT_WIDTH(40),
    .C_ENABLE_RLOCS(0),
    .C_FAMILY("kintex7"),
    .C_FULL_FLAGS_RST_VAL(0),
    .C_HAS_ALMOST_EMPTY(0),
    .C_HAS_ALMOST_FULL(0),
    .C_HAS_BACKUP(0),
    .C_HAS_DATA_COUNT(0),
    .C_HAS_INT_CLK(0),
    .C_HAS_MEMINIT_FILE(0),
    .C_HAS_OVERFLOW(0),
    .C_HAS_RD_DATA_COUNT(0),
    .C_HAS_RD_RST(0),
    .C_HAS_RST(1),
    .C_HAS_SRST(0),
    .C_HAS_UNDERFLOW(0),
    .C_HAS_VALID(1),
    .C_HAS_WR_ACK(1),
    .C_HAS_WR_DATA_COUNT(0),
    .C_HAS_WR_RST(0),
    .C_IMPLEMENTATION_TYPE(2),
    .C_INIT_WR_PNTR_VAL(0),
    .C_MEMORY_TYPE(1),
    .C_MIF_FILE_NAME("BlankString"),
    .C_OPTIMIZATION_MODE(0),
    .C_OVERFLOW_LOW(0),
    .C_PRELOAD_LATENCY(1),
    .C_PRELOAD_REGS(0),
    .C_PRIM_FIFO_TYPE("512x72"),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL(2),
    .C_PROG_EMPTY_THRESH_NEGATE_VAL(3),
    .C_PROG_EMPTY_TYPE(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL(253),
    .C_PROG_FULL_THRESH_NEGATE_VAL(252),
    .C_PROG_FULL_TYPE(0),
    .C_RD_DATA_COUNT_WIDTH(8),
    .C_RD_DEPTH(256),
    .C_RD_FREQ(1),
    .C_RD_PNTR_WIDTH(8),
    .C_UNDERFLOW_LOW(0),
    .C_USE_DOUT_RST(1),
    .C_USE_ECC(0),
    .C_USE_EMBEDDED_REG(0),
    .C_USE_PIPELINE_REG(0),
    .C_POWER_SAVING_MODE(0),
    .C_USE_FIFO16_FLAGS(0),
    .C_USE_FWFT_DATA_COUNT(0),
    .C_VALID_LOW(0),
    .C_WR_ACK_LOW(0),
    .C_WR_DATA_COUNT_WIDTH(8),
    .C_WR_DEPTH(256),
    .C_WR_FREQ(1),
    .C_WR_PNTR_WIDTH(8),
    .C_WR_RESPONSE_LATENCY(1),
    .C_MSGON_VAL(1),
    .C_ENABLE_RST_SYNC(1),
    //.C_EN_SAFETY_CKT(0),
    .C_ERROR_INJECTION_TYPE(0),
    .C_SYNCHRONIZER_STAGE(2),
    .C_INTERFACE_TYPE(0),
    .C_AXI_TYPE(1),
    .C_HAS_AXI_WR_CHANNEL(1),
    .C_HAS_AXI_RD_CHANNEL(1),
    .C_HAS_SLAVE_CE(0),
    .C_HAS_MASTER_CE(0),
    .C_ADD_NGC_CONSTRAINT(0),
    .C_USE_COMMON_OVERFLOW(0),
    .C_USE_COMMON_UNDERFLOW(0),
    .C_USE_DEFAULT_SETTINGS(0),
    .C_AXI_ID_WIDTH(1),
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_DATA_WIDTH(64),
    .C_AXI_LEN_WIDTH(8),
    .C_AXI_LOCK_WIDTH(1),
    .C_HAS_AXI_ID(0),
    .C_HAS_AXI_AWUSER(0),
    .C_HAS_AXI_WUSER(0),
    .C_HAS_AXI_BUSER(0),
    .C_HAS_AXI_ARUSER(0),
    .C_HAS_AXI_RUSER(0),
    .C_AXI_ARUSER_WIDTH(1),
    .C_AXI_AWUSER_WIDTH(1),
    .C_AXI_WUSER_WIDTH(1),
    .C_AXI_BUSER_WIDTH(1),
    .C_AXI_RUSER_WIDTH(1),
    .C_HAS_AXIS_TDATA(1),
    .C_HAS_AXIS_TID(0),
    .C_HAS_AXIS_TDEST(0),
    .C_HAS_AXIS_TUSER(1),
    .C_HAS_AXIS_TREADY(1),
    .C_HAS_AXIS_TLAST(0),
    .C_HAS_AXIS_TSTRB(0),
    .C_HAS_AXIS_TKEEP(0),
    .C_AXIS_TDATA_WIDTH(8),
    .C_AXIS_TID_WIDTH(1),
    .C_AXIS_TDEST_WIDTH(1),
    .C_AXIS_TUSER_WIDTH(4),
    .C_AXIS_TSTRB_WIDTH(1),
    .C_AXIS_TKEEP_WIDTH(1),
    .C_WACH_TYPE(0),
    .C_WDCH_TYPE(0),
    .C_WRCH_TYPE(0),
    .C_RACH_TYPE(0),
    .C_RDCH_TYPE(0),
    .C_AXIS_TYPE(0),
    .C_IMPLEMENTATION_TYPE_WACH(1),
    .C_IMPLEMENTATION_TYPE_WDCH(1),
    .C_IMPLEMENTATION_TYPE_WRCH(1),
    .C_IMPLEMENTATION_TYPE_RACH(1),
    .C_IMPLEMENTATION_TYPE_RDCH(1),
    .C_IMPLEMENTATION_TYPE_AXIS(1),
    .C_APPLICATION_TYPE_WACH(0),
    .C_APPLICATION_TYPE_WDCH(0),
    .C_APPLICATION_TYPE_WRCH(0),
    .C_APPLICATION_TYPE_RACH(0),
    .C_APPLICATION_TYPE_RDCH(0),
    .C_APPLICATION_TYPE_AXIS(0),
    .C_PRIM_FIFO_TYPE_WACH("512x36"),
    .C_PRIM_FIFO_TYPE_WDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_WRCH("512x36"),
    .C_PRIM_FIFO_TYPE_RACH("512x36"),
    .C_PRIM_FIFO_TYPE_RDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_AXIS("1kx18"),
    .C_USE_ECC_WACH(0),
    .C_USE_ECC_WDCH(0),
    .C_USE_ECC_WRCH(0),
    .C_USE_ECC_RACH(0),
    .C_USE_ECC_RDCH(0),
    .C_USE_ECC_AXIS(0),
    .C_ERROR_INJECTION_TYPE_WACH(0),
    .C_ERROR_INJECTION_TYPE_WDCH(0),
    .C_ERROR_INJECTION_TYPE_WRCH(0),
    .C_ERROR_INJECTION_TYPE_RACH(0),
    .C_ERROR_INJECTION_TYPE_RDCH(0),
    .C_ERROR_INJECTION_TYPE_AXIS(0),
    .C_DIN_WIDTH_WACH(1),
    .C_DIN_WIDTH_WDCH(64),
    .C_DIN_WIDTH_WRCH(2),
    .C_DIN_WIDTH_RACH(32),
    .C_DIN_WIDTH_RDCH(64),
    .C_DIN_WIDTH_AXIS(1),
    .C_WR_DEPTH_WACH(16),
    .C_WR_DEPTH_WDCH(1024),
    .C_WR_DEPTH_WRCH(16),
    .C_WR_DEPTH_RACH(16),
    .C_WR_DEPTH_RDCH(1024),
    .C_WR_DEPTH_AXIS(1024),
    .C_WR_PNTR_WIDTH_WACH(4),
    .C_WR_PNTR_WIDTH_WDCH(10),
    .C_WR_PNTR_WIDTH_WRCH(4),
    .C_WR_PNTR_WIDTH_RACH(4),
    .C_WR_PNTR_WIDTH_RDCH(10),
    .C_WR_PNTR_WIDTH_AXIS(10),
    .C_HAS_DATA_COUNTS_WACH(0),
    .C_HAS_DATA_COUNTS_WDCH(0),
    .C_HAS_DATA_COUNTS_WRCH(0),
    .C_HAS_DATA_COUNTS_RACH(0),
    .C_HAS_DATA_COUNTS_RDCH(0),
    .C_HAS_DATA_COUNTS_AXIS(0),
    .C_HAS_PROG_FLAGS_WACH(0),
    .C_HAS_PROG_FLAGS_WDCH(0),
    .C_HAS_PROG_FLAGS_WRCH(0),
    .C_HAS_PROG_FLAGS_RACH(0),
    .C_HAS_PROG_FLAGS_RDCH(0),
    .C_HAS_PROG_FLAGS_AXIS(0),
    .C_PROG_FULL_TYPE_WACH(0),
    .C_PROG_FULL_TYPE_WDCH(0),
    .C_PROG_FULL_TYPE_WRCH(0),
    .C_PROG_FULL_TYPE_RACH(0),
    .C_PROG_FULL_TYPE_RDCH(0),
    .C_PROG_FULL_TYPE_AXIS(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WACH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WRCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RACH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_AXIS(1023),
    .C_PROG_EMPTY_TYPE_WACH(0),
    .C_PROG_EMPTY_TYPE_WDCH(0),
    .C_PROG_EMPTY_TYPE_WRCH(0),
    .C_PROG_EMPTY_TYPE_RACH(0),
    .C_PROG_EMPTY_TYPE_RDCH(0),
    .C_PROG_EMPTY_TYPE_AXIS(0),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS(1022),
    .C_REG_SLICE_MODE_WACH(0),
    .C_REG_SLICE_MODE_WDCH(0),
    .C_REG_SLICE_MODE_WRCH(0),
    .C_REG_SLICE_MODE_RACH(0),
    .C_REG_SLICE_MODE_RDCH(0),
    .C_REG_SLICE_MODE_AXIS(0)
  )
  write_address_fifo (
    .rst(!aresetn),
    .wr_clk(s_aclk),
    .rd_clk(m_aclk),
    .din({fifo_wr_data_awprot[7:0],fifo_wr_data_awaddr[31:0]}),
    .wr_en(fifo_wren),
    .rd_en(fifo_rden),
    .dout({fifo_rd_data_awprot[7:0],fifo_rd_data_awaddr[31:0]}),
    .full(fifo_full),
    .wr_ack(fifo_wr_ack),
    .empty(fifo_empty),
    .valid(fifo_rd_valid)
  );

  assign write_address_wr_data_o   = fifo_wr_data_awaddr[31:0];
  assign write_address_wren_o      = fifo_wren;
  assign write_address_full_o      = fifo_full;
  assign write_address_wr_ack_o    = fifo_wr_ack;
  assign write_address_rd_data_o   = fifo_rd_data_awaddr[31:0];
  assign write_address_rden_o      = fifo_rden;
  assign write_address_empty_o     = fifo_empty;
  assign write_address_rd_valid_o  = fifo_rd_valid;
  assign write_address_s_awvalid_o = s_axi_awvalid;
  assign write_address_s_awready_o = s_axi_awready_i;
  assign write_address_m_awvalid_o = m_axi_awvalid_i;
  assign write_address_m_awready_o = m_axi_awready;

  /*fifo_generator_0 write_address_fifo (
  .wr_clk(s_aclk),
  .rd_clk(m_aclk),
  .din({fifo_wr_data_awprot[7:0],fifo_wr_data_awaddr[31:0]}),       
  .wr_en(fifo_wren),   
  .rd_en(fifo_rden),   
  .dout({fifo_rd_data_awprot[7:0],fifo_rd_data_awaddr[31:0]}),     
  .full(fifo_full),     
  .wr_ack(fifo_wr_ack), 
  .empty(fifo_empty),  
  .valid(fifo_rd_valid)
);*/
endmodule // apcc



//  (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// AXI Register Slice
//   Register selected channels on the forward and/or reverse signal paths.
//   5-channel memory-mapped AXI4 interfaces.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   apcc
//      axic_gate
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module apcc_v1_0_2_read_response #
  (
   parameter integer C_AXI_ADDR_WIDTH            = 32,
   parameter integer C_AXI_DATA_WIDTH            = 32
  )
  (
   // System Signals
   input wire aresetn,
   input wire m_aresetn,
   input wire s_aclk,
   input wire m_aclk,
   input wire start,
   input wire debug_bit,
   input      debug_bit_araddr_flag,

   // Slave Interface Write Address Ports
   output wire [31:0]                   s_axi_rdata,
   output wire [1:0]                    s_axi_rresp,
   output wire                          s_axi_rvalid,
   (* DONT_TOUCH = "TRUE" *)input  wire                          s_axi_rready,
   input  wire                          s_axi_arready,
   input  wire                          s_axi_arvalid,

   // Master Interface Write Address Port
   input  wire [31:0]                   m_axi_rdata,
   input  wire [1:0]                    m_axi_rresp,
   input  wire                          m_axi_rvalid,
   output wire                          m_axi_rready
   
   //input  wire                          freeze
  );

  // Slave Interface side
  reg [31:0 ] fifo_wr_data_rdata;
  reg [31:0 ] rd_response;
  reg [7:0 ] fifo_wr_data_rresp;
  reg        fifo_wren;
  reg        m_axi_rready_i;
  reg        s_axi_rvalid_i;
  wire       s_axi_rready_i;
  wire       fifo_full;
  wire       fifo_rd_valid;
  wire       fifo_wr_ack;
  reg [3:0]  count;
  reg [1:0]  count_reset;
  wire       rising_m_aresetn;
  reg        temp_m_aresetn1, temp_m_aresetn2;

  //
  // For Slave Write address Ready generation
  //
  always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      m_axi_rready_i <= 1'b0;
    end
    else
    begin
      if (fifo_full == 1'b1 || (m_axi_rvalid == 1'b1 && m_axi_rready_i == 1'b1))
      begin
        m_axi_rready_i <= 1'b0;
      end
      else if (fifo_wr_ack == 1'b1 || rising_m_aresetn == 1'b1)
      begin
        m_axi_rready_i <= 1'b1;
      end
    end
    /*else if (fifo_full == 1'b1)
    begin
      m_axi_rready_i <=1'b0;
    end
    else if (m_axi_rvalid == 1'b1 && m_axi_rready == 1'b1)
    begin
      m_axi_rready_i <= 1'b0;
    end
    else if (fifo_wr_ack)
    begin
      m_axi_rready_i <= 1'b1;
    end
    else if (count_reset == 2'b11 && m_aresetn == 1'b1)
    begin
      m_axi_rready_i <= 1'b1;
    end*/
  end

  /*always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      count_reset <= 2'b00;
    end
    else if (count_reset < 2'b11)
    begin
      count_reset <= count_reset + 2'b01;
    end
    else
    begin
      count_reset <= count_reset;
    end
  end*/

  always @ (posedge m_aclk)
  begin
    temp_m_aresetn1 <= m_aresetn;
    temp_m_aresetn2 <= temp_m_aresetn1;
  end

  assign rising_m_aresetn = m_aresetn & !temp_m_aresetn2;

  assign m_axi_rready = m_axi_rready_i;

  //
  // Storin the Write address transaction into fifo
  //
  always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      fifo_wren <= 1'b0;
      fifo_wr_data_rresp <= 'h0;
      fifo_wr_data_rdata <= 'h0;
    end
    else if (m_axi_rvalid == 1'b1 && m_axi_rready == 1'b1)
    begin
      fifo_wr_data_rdata <= m_axi_rdata;
      fifo_wr_data_rresp <= m_axi_rresp;
      fifo_wren <= 1'b1;
    end
    else
    begin
      fifo_wren <= 1'b0;
    end
  end

  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      rd_response <= 'h0;
    end
    else
    begin
      if (start == 1'b1)
      begin
        rd_response <= 'h0;
      end
      else
      begin
        if (debug_bit_araddr_flag == 1'b1 && fifo_wr_data_rdata[1] == 1'b1)
        begin
          rd_response <= fifo_wr_data_rdata;
        end
      end
    end
  end

  /*always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      count <= 4'h0;
    end
    else if (fifo_full == 1'b1 || (m_axi_rvalid == 1'b1 && m_axi_rready == 1'b1))
    begin
      count <= 4'h0;
    end
    else if ((m_axi_rvalid == 1'b1 && m_axi_rready == 1'b0) || (m_axi_rvalid == 1'b0 && m_axi_rready == 1'b0) && fifo_full == 1'b0)
    begin
      count <= count + 4'h1;
    end
  end*/
  // Master Interface Side
  reg         fifo_rden;
  reg  [1:0]  s_axi_rdata_i;
  reg  [1:0]  s_axi_rresp_i;
  wire [31:0] fifo_rd_data_rdata;
  wire [7:0]  fifo_rd_data_rresp;
  wire        fifo_empty;
  reg         temp_fifo_empty;
  wire        falling_fifo_empty;

  //
  // For Master Write address Valid generation
  //
  /*always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      s_axi_rvalid_i <= 1'b0;
      s_axi_rresp_i <= 'h0;
      s_axi_rdata_i <= 'h0;
    end
    else if (s_axi_rready_i == 1'b1 && s_axi_rvalid_i == 1'b1)
    begin
      s_axi_rvalid_i <= 1'b0;
    end
    else if (fifo_rd_valid == 1'b1)
    begin
      s_axi_rvalid_i <= 1'b1;
      s_axi_rresp_i <= fifo_rd_data_rresp;
      s_axi_rdata_i <= fifo_rd_data_rdata;
    end
  end*/

  /*assign s_axi_rvalid = s_axi_rvalid_i;
  assign s_axi_rresp = s_axi_rresp_i;
  assign s_axi_rdata = s_axi_rdata_i;*/

  //
  // Get the transaction to be fired from Fifo
  //
  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      fifo_rden <= 1'b0;
    end
    else if (fifo_empty == 1'b1)
    begin
      fifo_rden <= 1'b0;
    end
    //else if ((s_axi_rvalid_i == 1'b1 && s_axi_rready_i == 1'b1) || (falling_fifo_empty == 1'b1))
    //begin
    //  fifo_rden <= 1'b1;
    //end
    else
    begin
      fifo_rden <= 1'b1;
    end
  end

  //
  // Falling edge detection of fifo_empty
  //
  /*always @ (posedge m_aclk)
  begin
    temp_fifo_empty <= fifo_empty;
  end

  assign falling_fifo_empty = !fifo_empty & temp_fifo_empty;*/

  //
  // Sending the write responses
  //
  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      s_axi_rvalid_i <= 1'b0;
      s_axi_rresp_i <= 'b0;
      s_axi_rdata_i <= 'b0;
    end
    else if (s_axi_arvalid == 1'b1 && s_axi_arready == 1'b1)
    begin
      s_axi_rvalid_i <= 1'b1;
      s_axi_rresp_i <= fifo_rd_data_rresp;
      s_axi_rdata_i <= fifo_rd_data_rdata;
    end
    else if (s_axi_rvalid == 1'b1 && s_axi_rready == 1'b1)
    begin
      s_axi_rvalid_i <= 1'b0;
      s_axi_rresp_i <= fifo_rd_data_rresp;
      s_axi_rdata_i <= fifo_rd_data_rdata;
    end
  end

  assign s_axi_rvalid = s_axi_rvalid_i;
  assign s_axi_rresp = s_axi_rresp_i;
  assign s_axi_rdata = (debug_bit_araddr_flag == 1'b1 && debug_bit != 1'b1) ? rd_response : s_axi_rdata_i;

  //
  // Fifo instance for Write address
  //
  fifo_generator_v13_1_4 #(
    .C_COMMON_CLOCK(0),
    //.C_SELECT_XPM(0),
    .C_COUNT_TYPE(0),
    .C_DATA_COUNT_WIDTH(8),
    .C_DEFAULT_VALUE("BlankString"),
    .C_DIN_WIDTH(40),
    .C_DOUT_RST_VAL("0"),
    .C_DOUT_WIDTH(40),
    .C_ENABLE_RLOCS(0),
    .C_FAMILY("kintex7"),
    .C_FULL_FLAGS_RST_VAL(0),
    .C_HAS_ALMOST_EMPTY(0),
    .C_HAS_ALMOST_FULL(0),
    .C_HAS_BACKUP(0),
    .C_HAS_DATA_COUNT(0),
    .C_HAS_INT_CLK(0),
    .C_HAS_MEMINIT_FILE(0),
    .C_HAS_OVERFLOW(0),
    .C_HAS_RD_DATA_COUNT(0),
    .C_HAS_RD_RST(0),
    .C_HAS_RST(1),
    .C_HAS_SRST(0),
    .C_HAS_UNDERFLOW(0),
    .C_HAS_VALID(1),
    .C_HAS_WR_ACK(1),
    .C_HAS_WR_DATA_COUNT(0),
    .C_HAS_WR_RST(0),
    .C_IMPLEMENTATION_TYPE(2),
    .C_INIT_WR_PNTR_VAL(0),
    .C_MEMORY_TYPE(1),
    .C_MIF_FILE_NAME("BlankString"),
    .C_OPTIMIZATION_MODE(0),
    .C_OVERFLOW_LOW(0),
    .C_PRELOAD_LATENCY(1),
    .C_PRELOAD_REGS(0),
    .C_PRIM_FIFO_TYPE("512x72"),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL(2),
    .C_PROG_EMPTY_THRESH_NEGATE_VAL(3),
    .C_PROG_EMPTY_TYPE(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL(253),
    .C_PROG_FULL_THRESH_NEGATE_VAL(252),
    .C_PROG_FULL_TYPE(0),
    .C_RD_DATA_COUNT_WIDTH(8),
    .C_RD_DEPTH(256),
    .C_RD_FREQ(1),
    .C_RD_PNTR_WIDTH(8),
    .C_UNDERFLOW_LOW(0),
    .C_USE_DOUT_RST(1),
    .C_USE_ECC(0),
    .C_USE_EMBEDDED_REG(0),
    .C_USE_PIPELINE_REG(0),
    .C_POWER_SAVING_MODE(0),
    .C_USE_FIFO16_FLAGS(0),
    .C_USE_FWFT_DATA_COUNT(0),
    .C_VALID_LOW(0),
    .C_WR_ACK_LOW(0),
    .C_WR_DATA_COUNT_WIDTH(8),
    .C_WR_DEPTH(256),
    .C_WR_FREQ(1),
    .C_WR_PNTR_WIDTH(8),
    .C_WR_RESPONSE_LATENCY(1),
    .C_MSGON_VAL(1),
    .C_ENABLE_RST_SYNC(1),
    //.C_EN_SAFETY_CKT(0),
    .C_ERROR_INJECTION_TYPE(0),
    .C_SYNCHRONIZER_STAGE(2),
    .C_INTERFACE_TYPE(0),
    .C_AXI_TYPE(1),
    .C_HAS_AXI_WR_CHANNEL(1),
    .C_HAS_AXI_RD_CHANNEL(1),
    .C_HAS_SLAVE_CE(0),
    .C_HAS_MASTER_CE(0),
    .C_ADD_NGC_CONSTRAINT(0),
    .C_USE_COMMON_OVERFLOW(0),
    .C_USE_COMMON_UNDERFLOW(0),
    .C_USE_DEFAULT_SETTINGS(0),
    .C_AXI_ID_WIDTH(1),
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_DATA_WIDTH(64),
    .C_AXI_LEN_WIDTH(8),
    .C_AXI_LOCK_WIDTH(1),
    .C_HAS_AXI_ID(0),
    .C_HAS_AXI_AWUSER(0),
    .C_HAS_AXI_WUSER(0),
    .C_HAS_AXI_BUSER(0),
    .C_HAS_AXI_ARUSER(0),
    .C_HAS_AXI_RUSER(0),
    .C_AXI_ARUSER_WIDTH(1),
    .C_AXI_AWUSER_WIDTH(1),
    .C_AXI_WUSER_WIDTH(1),
    .C_AXI_BUSER_WIDTH(1),
    .C_AXI_RUSER_WIDTH(1),
    .C_HAS_AXIS_TDATA(1),
    .C_HAS_AXIS_TID(0),
    .C_HAS_AXIS_TDEST(0),
    .C_HAS_AXIS_TUSER(1),
    .C_HAS_AXIS_TREADY(1),
    .C_HAS_AXIS_TLAST(0),
    .C_HAS_AXIS_TSTRB(0),
    .C_HAS_AXIS_TKEEP(0),
    .C_AXIS_TDATA_WIDTH(8),
    .C_AXIS_TID_WIDTH(1),
    .C_AXIS_TDEST_WIDTH(1),
    .C_AXIS_TUSER_WIDTH(4),
    .C_AXIS_TSTRB_WIDTH(1),
    .C_AXIS_TKEEP_WIDTH(1),
    .C_WACH_TYPE(0),
    .C_WDCH_TYPE(0),
    .C_WRCH_TYPE(0),
    .C_RACH_TYPE(0),
    .C_RDCH_TYPE(0),
    .C_AXIS_TYPE(0),
    .C_IMPLEMENTATION_TYPE_WACH(1),
    .C_IMPLEMENTATION_TYPE_WDCH(1),
    .C_IMPLEMENTATION_TYPE_WRCH(1),
    .C_IMPLEMENTATION_TYPE_RACH(1),
    .C_IMPLEMENTATION_TYPE_RDCH(1),
    .C_IMPLEMENTATION_TYPE_AXIS(1),
    .C_APPLICATION_TYPE_WACH(0),
    .C_APPLICATION_TYPE_WDCH(0),
    .C_APPLICATION_TYPE_WRCH(0),
    .C_APPLICATION_TYPE_RACH(0),
    .C_APPLICATION_TYPE_RDCH(0),
    .C_APPLICATION_TYPE_AXIS(0),
    .C_PRIM_FIFO_TYPE_WACH("512x36"),
    .C_PRIM_FIFO_TYPE_WDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_WRCH("512x36"),
    .C_PRIM_FIFO_TYPE_RACH("512x36"),
    .C_PRIM_FIFO_TYPE_RDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_AXIS("1kx18"),
    .C_USE_ECC_WACH(0),
    .C_USE_ECC_WDCH(0),
    .C_USE_ECC_WRCH(0),
    .C_USE_ECC_RACH(0),
    .C_USE_ECC_RDCH(0),
    .C_USE_ECC_AXIS(0),
    .C_ERROR_INJECTION_TYPE_WACH(0),
    .C_ERROR_INJECTION_TYPE_WDCH(0),
    .C_ERROR_INJECTION_TYPE_WRCH(0),
    .C_ERROR_INJECTION_TYPE_RACH(0),
    .C_ERROR_INJECTION_TYPE_RDCH(0),
    .C_ERROR_INJECTION_TYPE_AXIS(0),
    .C_DIN_WIDTH_WACH(1),
    .C_DIN_WIDTH_WDCH(64),
    .C_DIN_WIDTH_WRCH(2),
    .C_DIN_WIDTH_RACH(32),
    .C_DIN_WIDTH_RDCH(64),
    .C_DIN_WIDTH_AXIS(1),
    .C_WR_DEPTH_WACH(16),
    .C_WR_DEPTH_WDCH(1024),
    .C_WR_DEPTH_WRCH(16),
    .C_WR_DEPTH_RACH(16),
    .C_WR_DEPTH_RDCH(1024),
    .C_WR_DEPTH_AXIS(1024),
    .C_WR_PNTR_WIDTH_WACH(4),
    .C_WR_PNTR_WIDTH_WDCH(10),
    .C_WR_PNTR_WIDTH_WRCH(4),
    .C_WR_PNTR_WIDTH_RACH(4),
    .C_WR_PNTR_WIDTH_RDCH(10),
    .C_WR_PNTR_WIDTH_AXIS(10),
    .C_HAS_DATA_COUNTS_WACH(0),
    .C_HAS_DATA_COUNTS_WDCH(0),
    .C_HAS_DATA_COUNTS_WRCH(0),
    .C_HAS_DATA_COUNTS_RACH(0),
    .C_HAS_DATA_COUNTS_RDCH(0),
    .C_HAS_DATA_COUNTS_AXIS(0),
    .C_HAS_PROG_FLAGS_WACH(0),
    .C_HAS_PROG_FLAGS_WDCH(0),
    .C_HAS_PROG_FLAGS_WRCH(0),
    .C_HAS_PROG_FLAGS_RACH(0),
    .C_HAS_PROG_FLAGS_RDCH(0),
    .C_HAS_PROG_FLAGS_AXIS(0),
    .C_PROG_FULL_TYPE_WACH(0),
    .C_PROG_FULL_TYPE_WDCH(0),
    .C_PROG_FULL_TYPE_WRCH(0),
    .C_PROG_FULL_TYPE_RACH(0),
    .C_PROG_FULL_TYPE_RDCH(0),
    .C_PROG_FULL_TYPE_AXIS(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WACH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WRCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RACH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_AXIS(1023),
    .C_PROG_EMPTY_TYPE_WACH(0),
    .C_PROG_EMPTY_TYPE_WDCH(0),
    .C_PROG_EMPTY_TYPE_WRCH(0),
    .C_PROG_EMPTY_TYPE_RACH(0),
    .C_PROG_EMPTY_TYPE_RDCH(0),
    .C_PROG_EMPTY_TYPE_AXIS(0),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS(1022),
    .C_REG_SLICE_MODE_WACH(0),
    .C_REG_SLICE_MODE_WDCH(0),
    .C_REG_SLICE_MODE_WRCH(0),
    .C_REG_SLICE_MODE_RACH(0),
    .C_REG_SLICE_MODE_RDCH(0),
    .C_REG_SLICE_MODE_AXIS(0)
  )
  read_response_fifo (
    .rst(!aresetn),
    .wr_clk(m_aclk),
    .rd_clk(s_aclk),
    .din({fifo_wr_data_rresp[7:0],fifo_wr_data_rdata[31:0]}),
    .wr_en(fifo_wren),
    .rd_en(fifo_rden),
    .dout({fifo_rd_data_rresp[7:0],fifo_rd_data_rdata[31:0]}),
    .full(fifo_full),
    .wr_ack(fifo_wr_ack),
    .empty(fifo_empty),
    .valid(fifo_rd_valid)
  );

  /*fifo_generator_0 read_response_fifo (
  .wr_clk(m_aclk), 
  .rd_clk(s_aclk), 
  .din({fifo_wr_data_rresp[7:0],fifo_wr_data_rdata[31:0]}),       
  .wr_en(fifo_wren),   
  .rd_en(fifo_rden),   
  .dout({fifo_rd_data_rresp[7:0],fifo_rd_data_rdata[31:0]}),     
  .full(fifo_full),     
  .wr_ack(fifo_wr_ack), 
  .empty(fifo_empty),   
  .valid(fifo_rd_valid)
);*/

endmodule // apcc


//  (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// AXI Register Slice
//   Register selected channels on the forward and/or reverse signal paths.
//   5-channel memory-mapped AXI4 interfaces.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   apcc
//      axic_gate
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module apcc_v1_0_2_read_address #
  (
   parameter integer C_AXI_ADDR_WIDTH            = 32,
   parameter integer C_AXI_DATA_WIDTH            = 32
  )
  (
   // System Signals
   input wire aresetn,
   input wire m_aresetn,
   input wire s_aclk,
   input wire m_aclk,
   input wire s_axi_rvalid,
   input wire s_axi_rready,
   input wire m_axi_rvalid,
   input wire m_axi_rready,
   output     debug_bit_araddr_flag,

   // Slave Interface Write Address Ports
   input  wire [C_AXI_ADDR_WIDTH-1:0]   s_axi_araddr,
   input  wire [3-1:0]                  s_axi_arprot,
   input  wire                          s_axi_arvalid,
   output wire                          s_axi_arready,

   // Master Interface Write Address Port
   output wire [C_AXI_ADDR_WIDTH-1:0]   m_axi_araddr,
   output wire [3-1:0]                  m_axi_arprot,
   output wire                          m_axi_arvalid,
   input  wire                          m_axi_arready
   
   //input  wire                          freeze
  );

  // Slave Interface side
  reg [31:0] fifo_wr_data_araddr;
  reg [7:0 ] fifo_wr_data_arprot;
  reg        fifo_wren;
  reg        s_axi_arready_i;
  reg        m_axi_arvalid_i;
  reg [1:0]  count_reset;
  wire       fifo_full;
  wire       fifo_wr_ack;
  wire       fifo_rd_valid;
  reg        temp_aresetn1, temp_aresetn2,temp_aresetn3;
  wire       rising_aresetn;
  reg        waiting_resp;
  reg        debug_bit_araddr_flag_i;

  //
  // For Slave Write address Ready generation
  //
  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      s_axi_arready_i <= 1'b0;
      waiting_resp <= 1'b0;
    end
    else
    begin
      if (fifo_full == 1'b1 || (s_axi_arvalid == 1'b1 && s_axi_arready_i == 1'b1 && (!waiting_resp)))
      begin
        s_axi_arready_i <=1'b0;
	if (fifo_full == 1'b1)
          waiting_resp <= 1'b0;
        else
          waiting_resp <= 1'b1;
      end
      else if(s_axi_arvalid == 1'b1 && s_axi_arready_i == 1'b0 && (!waiting_resp))
        s_axi_arready_i <= 1'b1;
      else if(s_axi_rvalid && s_axi_rready)
       waiting_resp <= 1'b0;
    end
    /*else if (fifo_full == 1'b1)
    begin
      s_axi_arready_i <= 1'b0;
    end
    else if (s_axi_arvalid == 1'b1 && s_axi_arready == 1'b1)
    begin
      s_axi_arready_i <= 1'b0;
    end
    //else if (fifo_wr_ack)
    else if (s_axi_rvalid == 1'b1 && s_axi_rready == 1'b1)
    begin
      s_axi_arready_i <= 1'b1;
    end
    else if (aresetn == 1'b1 && count_reset == 2'b11)
    begin
      s_axi_arready_i <= 1'b1;
    end*/
  end

  /*always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      count_reset <= 2'b00;
    end
    else if (count_reset < 2'b11)
    begin
      count_reset <= count_reset + 2'b01;
    end
    else
    begin
      count_reset <= count_reset;
    end
  end*/

  always @ (posedge s_aclk)
  begin
    temp_aresetn1 <= aresetn;
    temp_aresetn2 <= temp_aresetn1;
    temp_aresetn3 <= temp_aresetn2;
  end

  assign rising_aresetn = (!temp_aresetn3) & temp_aresetn2;

  assign s_axi_arready = s_axi_arready_i;

  //
  // Storin the Write address transaction into fifo
  //
  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      fifo_wren <= 1'b0;
      fifo_wr_data_araddr <= 'h0;
      fifo_wr_data_arprot <= 'h0;
    end
    else if (s_axi_arvalid == 1'b1 && s_axi_arready == 1'b1)
    begin
      fifo_wr_data_araddr <= s_axi_araddr;
      fifo_wr_data_arprot <= s_axi_arprot;
      fifo_wren <= 1'b1;
    end
    else
    begin
      fifo_wren <= 1'b0;
    end
  end

  always @ (posedge s_aclk)
  begin
    if (aresetn == 1'b0)
    begin
      debug_bit_araddr_flag_i <= 1'b0;
    end
    else
    begin
      if (fifo_wr_data_araddr == 'h0)
      begin
        debug_bit_araddr_flag_i <= 1'b1;
      end
      else
      begin
        debug_bit_araddr_flag_i <= 1'b0;
      end
    end
  end

  assign debug_bit_araddr_flag = debug_bit_araddr_flag_i;

  // Master Interface Side
  reg         fifo_rden;
  reg  [31:0] m_axi_araddr_i;
  reg  [7:0]  m_axi_arprot_i;
  wire [31:0] fifo_rd_data_araddr;
  wire [7:0]  fifo_rd_data_arprot;
  wire        fifo_empty;
  reg         temp_fifo_empty;
  reg         temp_rst1, temp_rst2, temp_rst3;
  wire        falling_fifo_empty;
  wire        rising_rst;
  reg  [3:0]  count;

  //
  // For Master Write address Valid generation
  //
  always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      m_axi_arvalid_i <= 1'b0;
      m_axi_araddr_i <= 'h0;
      m_axi_arprot_i <= 'h0;
    end
    else if (m_axi_arready == 1'b1 && m_axi_arvalid == 1'b1)
    begin
      m_axi_arvalid_i <= 1'b0;
    end
    else if (fifo_rd_valid == 1'b1)
    begin
      m_axi_arvalid_i <= 1'b1;
      m_axi_araddr_i <= fifo_rd_data_araddr;
      m_axi_arprot_i <= fifo_rd_data_arprot;
    end
  end

  assign m_axi_arvalid = m_axi_arvalid_i;
  assign m_axi_araddr = m_axi_araddr_i;
  assign m_axi_arprot = m_axi_arprot_i;

  //
  // Get the transaction to be fired from Fifo
  //
  always @ (posedge m_aclk)
  begin
    //if (fifo_empty == 1'b0 && s_axi_arvalid_ff2 == 1'b1 && s_axi_arready_ff2 == 1'b1)
    if (m_aresetn == 1'b0)
    begin
      fifo_rden <= 1'b0;
    end
    else if (fifo_empty == 1'b1)
    begin
      fifo_rden <= 1'b0;
    end
    else if ((m_axi_rvalid == 1'b1 && m_axi_rready == 1'b1) || (falling_fifo_empty == 1'b1) || (rising_rst == 1'b1))
    begin
      fifo_rden <= 1'b1;
    end
    /*else if (count == 4'hF)
    begin
      fifo_rden <= 1'b1;
    end*/
    else
    begin
      fifo_rden <= 1'b0;
    end
  end

  /*always @ (posedge m_aclk)
  begin
    if (m_aresetn == 1'b0)
    begin
      count <= 4'h0;
    end
    //else if (fifo_empty == 1'b1 || (m_axi_arvalid == 1'b1 && m_axi_arready == 1'b1))
    else if (fifo_empty == 1'b1 || (m_axi_arvalid == 1'b1 && m_axi_arready == 1'b1) || (m_axi_arvalid == 1'b1 && m_axi_arready == 1'b0))
    begin
      count <= 4'h0;
    end
    else if (((m_axi_arvalid == 1'b0 && m_axi_arready == 1'b1) || (m_axi_arvalid == 1'b0 && m_axi_arready == 1'b0)) && fifo_empty == 1'b0)
    begin
      count <= count + 4'h1;
    end
  end*/
  //
  // Rising edge detection of fifo_empty
  //
  always @ (posedge m_aclk)
  begin
    temp_rst1 <= m_aresetn;
    temp_rst2 <= temp_rst1;
    temp_rst3 <= temp_rst2;
  end

  assign rising_rst = temp_rst2 & !temp_rst3;

  //
  // Falling edge detection of fifo_empty
  //
  always @ (posedge m_aclk)
  begin
    temp_fifo_empty <= fifo_empty;
  end

  assign falling_fifo_empty = !fifo_empty & temp_fifo_empty;

  //
  // Fifo instance for Write address
  //
  fifo_generator_v13_1_4 #(
    .C_COMMON_CLOCK(0),
    //.C_SELECT_XPM(0),
    .C_COUNT_TYPE(0),
    .C_DATA_COUNT_WIDTH(8),
    .C_DEFAULT_VALUE("BlankString"),
    .C_DIN_WIDTH(40),
    .C_DOUT_RST_VAL("0"),
    .C_DOUT_WIDTH(40),
    .C_ENABLE_RLOCS(0),
    .C_FAMILY("kintex7"),
    .C_FULL_FLAGS_RST_VAL(0),
    .C_HAS_ALMOST_EMPTY(0),
    .C_HAS_ALMOST_FULL(0),
    .C_HAS_BACKUP(0),
    .C_HAS_DATA_COUNT(0),
    .C_HAS_INT_CLK(0),
    .C_HAS_MEMINIT_FILE(0),
    .C_HAS_OVERFLOW(0),
    .C_HAS_RD_DATA_COUNT(0),
    .C_HAS_RD_RST(0),
    .C_HAS_RST(1),
    .C_HAS_SRST(0),
    .C_HAS_UNDERFLOW(0),
    .C_HAS_VALID(1),
    .C_HAS_WR_ACK(1),
    .C_HAS_WR_DATA_COUNT(0),
    .C_HAS_WR_RST(0),
    .C_IMPLEMENTATION_TYPE(2),
    .C_INIT_WR_PNTR_VAL(0),
    .C_MEMORY_TYPE(1),
    .C_MIF_FILE_NAME("BlankString"),
    .C_OPTIMIZATION_MODE(0),
    .C_OVERFLOW_LOW(0),
    .C_PRELOAD_LATENCY(1),
    .C_PRELOAD_REGS(0),
    .C_PRIM_FIFO_TYPE("512x72"),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL(2),
    .C_PROG_EMPTY_THRESH_NEGATE_VAL(3),
    .C_PROG_EMPTY_TYPE(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL(253),
    .C_PROG_FULL_THRESH_NEGATE_VAL(252),
    .C_PROG_FULL_TYPE(0),
    .C_RD_DATA_COUNT_WIDTH(8),
    .C_RD_DEPTH(256),
    .C_RD_FREQ(1),
    .C_RD_PNTR_WIDTH(8),
    .C_UNDERFLOW_LOW(0),
    .C_USE_DOUT_RST(1),
    .C_USE_ECC(0),
    .C_USE_EMBEDDED_REG(0),
    .C_USE_PIPELINE_REG(0),
    .C_POWER_SAVING_MODE(0),
    .C_USE_FIFO16_FLAGS(0),
    .C_USE_FWFT_DATA_COUNT(0),
    .C_VALID_LOW(0),
    .C_WR_ACK_LOW(0),
    .C_WR_DATA_COUNT_WIDTH(8),
    .C_WR_DEPTH(256),
    .C_WR_FREQ(1),
    .C_WR_PNTR_WIDTH(8),
    .C_WR_RESPONSE_LATENCY(1),
    .C_MSGON_VAL(1),
    .C_ENABLE_RST_SYNC(1),
    //.C_EN_SAFETY_CKT(0),
    .C_ERROR_INJECTION_TYPE(0),
    .C_SYNCHRONIZER_STAGE(2),
    .C_INTERFACE_TYPE(0),
    .C_AXI_TYPE(1),
    .C_HAS_AXI_WR_CHANNEL(1),
    .C_HAS_AXI_RD_CHANNEL(1),
    .C_HAS_SLAVE_CE(0),
    .C_HAS_MASTER_CE(0),
    .C_ADD_NGC_CONSTRAINT(0),
    .C_USE_COMMON_OVERFLOW(0),
    .C_USE_COMMON_UNDERFLOW(0),
    .C_USE_DEFAULT_SETTINGS(0),
    .C_AXI_ID_WIDTH(1),
    .C_AXI_ADDR_WIDTH(32),
    .C_AXI_DATA_WIDTH(64),
    .C_AXI_LEN_WIDTH(8),
    .C_AXI_LOCK_WIDTH(1),
    .C_HAS_AXI_ID(0),
    .C_HAS_AXI_AWUSER(0),
    .C_HAS_AXI_WUSER(0),
    .C_HAS_AXI_BUSER(0),
    .C_HAS_AXI_ARUSER(0),
    .C_HAS_AXI_RUSER(0),
    .C_AXI_ARUSER_WIDTH(1),
    .C_AXI_AWUSER_WIDTH(1),
    .C_AXI_WUSER_WIDTH(1),
    .C_AXI_BUSER_WIDTH(1),
    .C_AXI_RUSER_WIDTH(1),
    .C_HAS_AXIS_TDATA(1),
    .C_HAS_AXIS_TID(0),
    .C_HAS_AXIS_TDEST(0),
    .C_HAS_AXIS_TUSER(1),
    .C_HAS_AXIS_TREADY(1),
    .C_HAS_AXIS_TLAST(0),
    .C_HAS_AXIS_TSTRB(0),
    .C_HAS_AXIS_TKEEP(0),
    .C_AXIS_TDATA_WIDTH(8),
    .C_AXIS_TID_WIDTH(1),
    .C_AXIS_TDEST_WIDTH(1),
    .C_AXIS_TUSER_WIDTH(4),
    .C_AXIS_TSTRB_WIDTH(1),
    .C_AXIS_TKEEP_WIDTH(1),
    .C_WACH_TYPE(0),
    .C_WDCH_TYPE(0),
    .C_WRCH_TYPE(0),
    .C_RACH_TYPE(0),
    .C_RDCH_TYPE(0),
    .C_AXIS_TYPE(0),
    .C_IMPLEMENTATION_TYPE_WACH(1),
    .C_IMPLEMENTATION_TYPE_WDCH(1),
    .C_IMPLEMENTATION_TYPE_WRCH(1),
    .C_IMPLEMENTATION_TYPE_RACH(1),
    .C_IMPLEMENTATION_TYPE_RDCH(1),
    .C_IMPLEMENTATION_TYPE_AXIS(1),
    .C_APPLICATION_TYPE_WACH(0),
    .C_APPLICATION_TYPE_WDCH(0),
    .C_APPLICATION_TYPE_WRCH(0),
    .C_APPLICATION_TYPE_RACH(0),
    .C_APPLICATION_TYPE_RDCH(0),
    .C_APPLICATION_TYPE_AXIS(0),
    .C_PRIM_FIFO_TYPE_WACH("512x36"),
    .C_PRIM_FIFO_TYPE_WDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_WRCH("512x36"),
    .C_PRIM_FIFO_TYPE_RACH("512x36"),
    .C_PRIM_FIFO_TYPE_RDCH("1kx36"),
    .C_PRIM_FIFO_TYPE_AXIS("1kx18"),
    .C_USE_ECC_WACH(0),
    .C_USE_ECC_WDCH(0),
    .C_USE_ECC_WRCH(0),
    .C_USE_ECC_RACH(0),
    .C_USE_ECC_RDCH(0),
    .C_USE_ECC_AXIS(0),
    .C_ERROR_INJECTION_TYPE_WACH(0),
    .C_ERROR_INJECTION_TYPE_WDCH(0),
    .C_ERROR_INJECTION_TYPE_WRCH(0),
    .C_ERROR_INJECTION_TYPE_RACH(0),
    .C_ERROR_INJECTION_TYPE_RDCH(0),
    .C_ERROR_INJECTION_TYPE_AXIS(0),
    .C_DIN_WIDTH_WACH(1),
    .C_DIN_WIDTH_WDCH(64),
    .C_DIN_WIDTH_WRCH(2),
    .C_DIN_WIDTH_RACH(32),
    .C_DIN_WIDTH_RDCH(64),
    .C_DIN_WIDTH_AXIS(1),
    .C_WR_DEPTH_WACH(16),
    .C_WR_DEPTH_WDCH(1024),
    .C_WR_DEPTH_WRCH(16),
    .C_WR_DEPTH_RACH(16),
    .C_WR_DEPTH_RDCH(1024),
    .C_WR_DEPTH_AXIS(1024),
    .C_WR_PNTR_WIDTH_WACH(4),
    .C_WR_PNTR_WIDTH_WDCH(10),
    .C_WR_PNTR_WIDTH_WRCH(4),
    .C_WR_PNTR_WIDTH_RACH(4),
    .C_WR_PNTR_WIDTH_RDCH(10),
    .C_WR_PNTR_WIDTH_AXIS(10),
    .C_HAS_DATA_COUNTS_WACH(0),
    .C_HAS_DATA_COUNTS_WDCH(0),
    .C_HAS_DATA_COUNTS_WRCH(0),
    .C_HAS_DATA_COUNTS_RACH(0),
    .C_HAS_DATA_COUNTS_RDCH(0),
    .C_HAS_DATA_COUNTS_AXIS(0),
    .C_HAS_PROG_FLAGS_WACH(0),
    .C_HAS_PROG_FLAGS_WDCH(0),
    .C_HAS_PROG_FLAGS_WRCH(0),
    .C_HAS_PROG_FLAGS_RACH(0),
    .C_HAS_PROG_FLAGS_RDCH(0),
    .C_HAS_PROG_FLAGS_AXIS(0),
    .C_PROG_FULL_TYPE_WACH(0),
    .C_PROG_FULL_TYPE_WDCH(0),
    .C_PROG_FULL_TYPE_WRCH(0),
    .C_PROG_FULL_TYPE_RACH(0),
    .C_PROG_FULL_TYPE_RDCH(0),
    .C_PROG_FULL_TYPE_AXIS(0),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WACH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_WRCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RACH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_RDCH(1023),
    .C_PROG_FULL_THRESH_ASSERT_VAL_AXIS(1023),
    .C_PROG_EMPTY_TYPE_WACH(0),
    .C_PROG_EMPTY_TYPE_WDCH(0),
    .C_PROG_EMPTY_TYPE_WRCH(0),
    .C_PROG_EMPTY_TYPE_RACH(0),
    .C_PROG_EMPTY_TYPE_RDCH(0),
    .C_PROG_EMPTY_TYPE_AXIS(0),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH(1022),
    .C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS(1022),
    .C_REG_SLICE_MODE_WACH(0),
    .C_REG_SLICE_MODE_WDCH(0),
    .C_REG_SLICE_MODE_WRCH(0),
    .C_REG_SLICE_MODE_RACH(0),
    .C_REG_SLICE_MODE_RDCH(0),
    .C_REG_SLICE_MODE_AXIS(0)
  )
  read_address_fifo (
    .rst(!aresetn),
    .wr_clk(s_aclk),
    .rd_clk(m_aclk),
    .din({fifo_wr_data_arprot[7:0],fifo_wr_data_araddr[31:0]}),
    .wr_en(fifo_wren),
    .rd_en(fifo_rden),
    .dout({fifo_rd_data_arprot[7:0],fifo_rd_data_araddr[31:0]}),
    .full(fifo_full),
    .wr_ack(fifo_wr_ack),
    .empty(fifo_empty),
    .valid(fifo_rd_valid)
  );

/*fifo_generator_0 read_address_fifo (
  .wr_clk(s_aclk), 
  .rd_clk(m_aclk), 
  .din({fifo_wr_data_arprot[7:0],fifo_wr_data_araddr[31:0]}),       
  .wr_en(fifo_wren),   
  .rd_en(fifo_rden),   
  .dout({fifo_rd_data_arprot[7:0],fifo_rd_data_araddr[31:0]}),     
  .full(fifo_full),     
  .wr_ack(fifo_wr_ack), 
  .empty(fifo_empty),   
  .valid(fifo_rd_valid)
);*/
endmodule // apcc




//  (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// AXI Register Slice
//   Register selected channels on the forward and/or reverse signal paths.
//   5-channel memory-mapped AXI4 interfaces.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   apcc
//      axic_gate
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
module apcc_v1_0_2_apcc #
  (
   parameter integer C_AXI_ADDR_WIDTH            = 32,
   parameter integer C_AXI_DATA_WIDTH            = 32,
   parameter integer C_DEBUG                     = 0,
   parameter integer C_KRNL_USE                  = 0
  )
  (
   // System Signals
   //input wire aclk,
   input wire aresetn,
   input wire m_aresetn,

   input wire s_aclk,
   //input wire s_aresetn,

   input wire m_aclk,
   //input wire m_aresetn,   
   // Slave Interface Write Address Ports
   input  wire [C_AXI_ADDR_WIDTH-1:0]   s_axi_awaddr,
   input  wire [3-1:0]                  s_axi_awprot,
   input  wire                          s_axi_awvalid,
   output wire                          s_axi_awready,

   // Slave Interface Write Data Ports
   input  wire [C_AXI_DATA_WIDTH-1:0]   s_axi_wdata,
   input  wire [C_AXI_DATA_WIDTH/8-1:0] s_axi_wstrb,
   input  wire                          s_axi_wvalid,
   output wire                          s_axi_wready,

   // Slave Interface Write Response Ports
   output wire [2-1:0]                 s_axi_bresp,
   output wire                         s_axi_bvalid,
   (* DONT_TOUCH = "TRUE" *)input  wire                         s_axi_bready,

   // Slave Interface Read Address Ports
   input  wire [C_AXI_ADDR_WIDTH-1:0]   s_axi_araddr,
   input  wire [3-1:0]                  s_axi_arprot,
   input  wire                          s_axi_arvalid,
   output wire                          s_axi_arready,

   // Slave Interface Read Data Ports
   output wire [C_AXI_DATA_WIDTH-1:0]  s_axi_rdata,
   output wire [2-1:0]                 s_axi_rresp,
   output wire                         s_axi_rvalid,
   (* DONT_TOUCH = "TRUE" *)input  wire                         s_axi_rready,
   
   // Master Interface Write Address Port
   output wire [C_AXI_ADDR_WIDTH-1:0]   m_axi_awaddr,
   output wire [3-1:0]                  m_axi_awprot,
   output wire                          m_axi_awvalid,
   input  wire                          m_axi_awready,
   
   // Master Interface Write Data Ports
   output wire [C_AXI_DATA_WIDTH-1:0]   m_axi_wdata,
   output wire [C_AXI_DATA_WIDTH/8-1:0] m_axi_wstrb,
   output wire                          m_axi_wvalid,
   input  wire                          m_axi_wready,
   
   // Master Interface Write Response Ports
   input  wire [2-1:0]                 m_axi_bresp,
   input  wire                         m_axi_bvalid,
   output wire                         m_axi_bready,
   
   // Master Interface Read Address Port
   output wire [C_AXI_ADDR_WIDTH-1:0]   m_axi_araddr,
   output wire [3-1:0]                  m_axi_arprot,
   output wire                          m_axi_arvalid,
   input  wire                          m_axi_arready,
   
   // Master Interface Read Data Ports
   input  wire [C_AXI_DATA_WIDTH-1:0]  m_axi_rdata,
   input  wire [2-1:0]                 m_axi_rresp,
   input  wire                         m_axi_rvalid,
   output wire                         m_axi_rready,

   // For Debug
   (* DONT_TOUCH = "true" *)output [31:0] write_data_wr_data_o,
   (* DONT_TOUCH = "true" *)output        write_data_wren_o,
   (* DONT_TOUCH = "true" *)output        write_data_full_o,
   (* DONT_TOUCH = "true" *)output        write_data_wr_ack_o,
   (* DONT_TOUCH = "true" *)output [31:0] write_data_rd_data_o,
   (* DONT_TOUCH = "true" *)output        write_data_rden_o,
   (* DONT_TOUCH = "true" *)output        write_data_empty_o,
   (* DONT_TOUCH = "true" *)output        write_data_rd_valid_o,
   (* DONT_TOUCH = "true" *)output [31:0] write_address_wr_data_o,
   (* DONT_TOUCH = "true" *)output        write_address_wren_o,
   (* DONT_TOUCH = "true" *)output        write_address_full_o,
   (* DONT_TOUCH = "true" *)output        write_address_wr_ack_o,
   (* DONT_TOUCH = "true" *)output [31:0] write_address_rd_data_o,
   (* DONT_TOUCH = "true" *)output        write_address_rden_o,
   (* DONT_TOUCH = "true" *)output        write_address_empty_o,
   (* DONT_TOUCH = "true" *)output        write_address_rd_valid_o,
   (* DONT_TOUCH = "true" *)output [1:0]  write_resp_wr_data_o,
   (* DONT_TOUCH = "true" *)output        write_resp_wren_o,
   (* DONT_TOUCH = "true" *)output        write_resp_full_o,
   (* DONT_TOUCH = "true" *)output        write_resp_wr_ack_o,
   (* DONT_TOUCH = "true" *)output [1:0]  write_resp_rd_data_o,
   (* DONT_TOUCH = "true" *)output        write_resp_rden_o,
   (* DONT_TOUCH = "true" *)output        write_resp_empty_o,
   (* DONT_TOUCH = "true" *)output        write_resp_rd_valid_o,
   (* DONT_TOUCH = "true" *)output        aresetn_o,
   (* DONT_TOUCH = "true" *)output        m_aresetn_o,
   (* DONT_TOUCH = "true" *)output        write_address_s_awvalid_o,
   (* DONT_TOUCH = "true" *)output        write_address_s_awready_o,
   (* DONT_TOUCH = "true" *)output        write_data_s_wvalid_o,
   (* DONT_TOUCH = "true" *)output        write_data_s_wready_o,
   (* DONT_TOUCH = "true" *)output        write_resp_s_bvalid_o,
   (* DONT_TOUCH = "true" *)output        write_resp_s_bready_o,
   (* DONT_TOUCH = "true" *)output        write_address_m_awvalid_o,
   (* DONT_TOUCH = "true" *)output        write_address_m_awready_o,
   (* DONT_TOUCH = "true" *)output        write_data_m_wvalid_o,
   (* DONT_TOUCH = "true" *)output        write_data_m_wready_o,
   (* DONT_TOUCH = "true" *)output        write_resp_m_bvalid_o,
   (* DONT_TOUCH = "true" *)output        write_resp_m_bready_o
   //input  wire                         freeze
  );

  wire        s_axi_awready_i;
  wire        s_axi_wready_i;
  wire        s_axi_arready_i;
  wire        s_axi_bvalid_i;
  wire        m_axi_bready_i;
  wire        start_i;
  wire        debug_bit_i;
  wire        bypass_mode_i;
  wire        debug_bit_flag_i;
  wire        debug_bit_araddr_flag_i;
  (* DONT_TOUCH = "true" *)wire [31:0] write_data_wr_data;
  (* DONT_TOUCH = "true" *)wire        write_data_wren;
  (* DONT_TOUCH = "true" *)wire        write_data_full;
  (* DONT_TOUCH = "true" *)wire        write_data_wr_ack;
  (* DONT_TOUCH = "true" *)wire [31:0] write_data_rd_data;
  (* DONT_TOUCH = "true" *)wire        write_data_rden;
  (* DONT_TOUCH = "true" *)wire        write_data_empty;
  (* DONT_TOUCH = "true" *)wire        write_data_rd_valid;
  (* DONT_TOUCH = "true" *)wire [31:0] write_address_wr_data;
  (* DONT_TOUCH = "true" *)wire        write_address_wren;
  (* DONT_TOUCH = "true" *)wire        write_address_full;
  (* DONT_TOUCH = "true" *)wire        write_address_wr_ack;
  (* DONT_TOUCH = "true" *)wire [31:0] write_address_rd_data;
  (* DONT_TOUCH = "true" *)wire        write_address_rden;
  (* DONT_TOUCH = "true" *)wire        write_address_empty;
  (* DONT_TOUCH = "true" *)wire        write_address_rd_valid;
  (* DONT_TOUCH = "true" *)wire [1:0]  write_resp_wr_data;
  (* DONT_TOUCH = "true" *)wire        write_resp_wren;
  (* DONT_TOUCH = "true" *)wire        write_resp_full;
  (* DONT_TOUCH = "true" *)wire        write_resp_wr_ack;
  (* DONT_TOUCH = "true" *)wire [1:0]  write_resp_rd_data;
  (* DONT_TOUCH = "true" *)wire        write_resp_rden;
  (* DONT_TOUCH = "true" *)wire        write_resp_empty;
  (* DONT_TOUCH = "true" *)wire        write_resp_rd_valid;
  (* DONT_TOUCH = "true" *)wire        write_address_s_awvalid;
  (* DONT_TOUCH = "true" *)wire        write_address_s_awready;
  (* DONT_TOUCH = "true" *)wire        write_data_s_wvalid;
  (* DONT_TOUCH = "true" *)wire        write_data_s_wready;
  (* DONT_TOUCH = "true" *)wire        write_resp_s_bvalid;
  (* DONT_TOUCH = "true" *)wire        write_resp_s_bready;
  (* DONT_TOUCH = "true" *)wire        write_address_m_awvalid;
  (* DONT_TOUCH = "true" *)wire        write_address_m_awready;
  (* DONT_TOUCH = "true" *)wire        write_data_m_wvalid;
  (* DONT_TOUCH = "true" *)wire        write_data_m_wready;
  (* DONT_TOUCH = "true" *)wire        write_resp_m_bvalid;
  (* DONT_TOUCH = "true" *)wire        write_resp_m_bready;
  //
  // Write Address
  //
  apcc_v1_0_2_write_address
   #(
     .C_AXI_ADDR_WIDTH            (C_AXI_ADDR_WIDTH),
     .C_AXI_DATA_WIDTH            (C_AXI_DATA_WIDTH)
    )  
  write_address
    (
     .aresetn                     (aresetn),
     .m_aresetn                   (m_aresetn),
     .s_aclk                      (s_aclk),
     .m_aclk                      (m_aclk),
     .s_axi_bvalid                (s_axi_bvalid_i),
     .s_axi_bready                (s_axi_bready),
     .m_axi_bvalid                (m_axi_bvalid),
     .m_axi_bready                (m_axi_bready_i),
     .s_axi_awaddr                (s_axi_awaddr),
     .s_axi_awprot                (s_axi_awprot),
     .s_axi_awvalid               (s_axi_awvalid),
     .s_axi_awready               (s_axi_awready_i),
     .m_axi_awaddr                (m_axi_awaddr),
     .m_axi_awprot                (m_axi_awprot),
     .m_axi_awvalid               (m_axi_awvalid),
     .m_axi_awready               (m_axi_awready),
     .debug_bit_flag              (debug_bit_flag_i),
     .write_address_wr_data_o     (write_address_wr_data),
     .write_address_wren_o        (write_address_wren),
     .write_address_full_o        (write_address_full),
     .write_address_wr_ack_o      (write_address_wr_ack),
     .write_address_rd_data_o     (write_address_rd_data),
     .write_address_rden_o        (write_address_rden),
     .write_address_empty_o       (write_address_empty),
     .write_address_rd_valid_o    (write_address_rd_valid),
     .write_address_s_awvalid_o   (write_address_s_awvalid),
     .write_address_s_awready_o   (write_address_s_awready),
     .write_address_m_awvalid_o   (write_address_m_awvalid),
     .write_address_m_awready_o   (write_address_m_awready)
     //.freeze                      (freeze)
    );

  assign s_axi_awready = s_axi_awready_i;
  //
  // Write Data
  //
  apcc_v1_0_2_write_data
   #(
     .C_AXI_ADDR_WIDTH            (C_AXI_ADDR_WIDTH),
     .C_AXI_DATA_WIDTH            (C_AXI_DATA_WIDTH)
    )  
  write_data
    (
     .aresetn                     (aresetn),
     .m_aresetn                   (m_aresetn),
     .s_aclk                      (s_aclk),
     .m_aclk                      (m_aclk),
     .s_axi_bvalid                (s_axi_bvalid_i),
     .s_axi_bready                (s_axi_bready),
     .m_axi_bvalid                (m_axi_bvalid),
     .m_axi_bready                (m_axi_bready_i),
     .s_axi_wdata                 (s_axi_wdata),
     .s_axi_wstrb                 (s_axi_wstrb),
     .s_axi_wvalid                (s_axi_wvalid),
     .s_axi_wready                (s_axi_wready_i),
     .m_axi_wdata                 (m_axi_wdata),
     .m_axi_wstrb                 (m_axi_wstrb),
     .m_axi_wvalid                (m_axi_wvalid),
     .m_axi_wready                (m_axi_wready),
     .debug_bit_flag              (debug_bit_flag_i),
     .bypass_mode                 (bypass_mode_i),
     .debug_bit                   (debug_bit_i),
     .start                       (start_i),
     .write_data_wr_data_o        (write_data_wr_data),
     .write_data_wren_o           (write_data_wren),
     .write_data_full_o           (write_data_full),
     .write_data_wr_ack_o         (write_data_wr_ack),
     .write_data_rd_data_o        (write_data_rd_data),
     .write_data_rden_o           (write_data_rden),
     .write_data_empty_o          (write_data_empty),
     .write_data_rd_valid_o       (write_data_rd_valid),
     .write_data_s_wvalid_o       (write_data_s_wvalid),
     .write_data_s_wready_o       (write_data_s_wready),
     .write_data_m_wvalid_o       (write_data_m_wvalid),
     .write_data_m_wready_o       (write_data_m_wready)
     //.freeze                      (freeze)
    );
  
  assign s_axi_wready = s_axi_wready_i;
  //
  // Read Address
  //
  apcc_v1_0_2_read_address
   #(
     .C_AXI_ADDR_WIDTH            (C_AXI_ADDR_WIDTH),
     .C_AXI_DATA_WIDTH            (C_AXI_DATA_WIDTH)
    )  
  read_address
    (
     .aresetn                     (aresetn),
     .m_aresetn                   (m_aresetn),
     .s_aclk                      (s_aclk),
     .m_aclk                      (m_aclk),
     .debug_bit_araddr_flag       (debug_bit_araddr_flag_i),
     .s_axi_rvalid                (s_axi_rvalid_i),
     .s_axi_rready                (s_axi_rready),
     .m_axi_rvalid                (m_axi_rvalid),
     .m_axi_rready                (m_axi_rready_i),
     .s_axi_araddr                (s_axi_araddr),
     .s_axi_arprot                (s_axi_arprot),
     .s_axi_arvalid               (s_axi_arvalid),
     .s_axi_arready               (s_axi_arready_i),
     .m_axi_araddr                (m_axi_araddr),
     .m_axi_arprot                (m_axi_arprot),
     .m_axi_arvalid               (m_axi_arvalid),
     .m_axi_arready               (m_axi_arready)
     //.freeze                      (freeze)
    );

  assign s_axi_rvalid = s_axi_rvalid_i;
  assign m_axi_rready = m_axi_rready_i;
  assign s_axi_arready = s_axi_arready_i;
  //
  // Write response
  //
  apcc_v1_0_2_write_response
   #(
     .C_AXI_ADDR_WIDTH            (C_AXI_ADDR_WIDTH),
     .C_AXI_DATA_WIDTH            (C_AXI_DATA_WIDTH)
    )  
  write_response
    (
     .aresetn                     (aresetn),
     .m_aresetn                   (m_aresetn),
     .s_aclk                      (s_aclk),
     .m_aclk                      (m_aclk),
     .s_axi_bresp                 (s_axi_bresp),
     .s_axi_bvalid                (s_axi_bvalid_i),
     .s_axi_bready                (s_axi_bready),
     .s_axi_awvalid               (s_axi_awvalid),
     .s_axi_awready               (s_axi_awready_i),
     .s_axi_wvalid                (s_axi_wvalid),
     .s_axi_wready                (s_axi_wready_i),
     .m_axi_bresp                 (m_axi_bresp),
     .m_axi_bvalid                (m_axi_bvalid),
     .m_axi_bready                (m_axi_bready_i),
     .write_resp_wr_data_o        (write_resp_wr_data),
     .write_resp_wren_o           (write_resp_wren),
     .write_resp_full_o           (write_resp_full),
     .write_resp_wr_ack_o         (write_resp_wr_ack),
     .write_resp_rd_data_o        (write_resp_rd_data),
     .write_resp_rden_o           (write_resp_rden),
     .write_resp_empty_o          (write_resp_empty),
     .write_resp_rd_valid_o       (write_resp_rd_valid),
     .write_resp_s_bvalid_o       (write_resp_s_bvalid),
     .write_resp_s_bready_o       (write_resp_s_bready),
     .write_resp_m_bvalid_o       (write_resp_m_bvalid),
     .write_resp_m_bready_o       (write_resp_m_bready)
     //.freeze                      (freeze)
    );

   assign m_axi_bready = m_axi_bready_i;
   assign s_axi_bvalid = s_axi_bvalid_i;
  //
  // Read response
  //
  apcc_v1_0_2_read_response
   #(
     .C_AXI_ADDR_WIDTH            (C_AXI_ADDR_WIDTH),
     .C_AXI_DATA_WIDTH            (C_AXI_DATA_WIDTH)
    )  
  read_response
    (
     .aresetn                     (aresetn),
     .m_aresetn                   (m_aresetn),
     .s_aclk                      (s_aclk),
     .m_aclk                      (m_aclk),
     .start                       (start_i),
     .debug_bit                   (debug_bit_i),
     .debug_bit_araddr_flag       (debug_bit_araddr_flag_i),
     .s_axi_rresp                 (s_axi_rresp),
     .s_axi_rdata                 (s_axi_rdata),
     .s_axi_rvalid                (s_axi_rvalid_i),
     .s_axi_rready                (s_axi_rready),
     .s_axi_arvalid               (s_axi_arvalid),
     .s_axi_arready               (s_axi_arready_i),
     .m_axi_rresp                 (m_axi_rresp),
     .m_axi_rdata                 (m_axi_rdata),
     .m_axi_rvalid                (m_axi_rvalid),
     .m_axi_rready                (m_axi_rready_i)
     //.freeze                      (freeze)
    );

  generate
    if (C_DEBUG == 1)
    begin
      assign write_data_wr_data_o      = write_data_wr_data;
      assign write_data_wren_o         = write_data_wren;
      assign write_data_full_o         = write_data_full;
      assign write_data_wr_ack_o       = write_data_wr_ack;
      assign write_data_rd_data_o      = write_data_rd_data;
      assign write_data_rden_o         = write_data_rden;
      assign write_data_empty_o        = write_data_empty;
      assign write_data_rd_valid_o     = write_data_rd_valid;
      assign write_address_wr_data_o   = write_address_wr_data;
      assign write_address_wren_o      = write_address_wren;
      assign write_address_full_o      = write_address_full;
      assign write_address_wr_ack_o    = write_address_wr_ack;
      assign write_address_rd_data_o   = write_address_rd_data;
      assign write_address_rden_o      = write_address_rden;
      assign write_address_empty_o     = write_address_empty;
      assign write_address_rd_valid_o  = write_address_rd_valid;
      assign write_resp_wr_data_o      = write_resp_wr_data;
      assign write_resp_wren_o         = write_resp_wren;
      assign write_resp_full_o         = write_resp_full;
      assign write_resp_wr_ack_o       = write_resp_wr_ack;
      assign write_resp_rd_data_o      = write_resp_rd_data;
      assign write_resp_rden_o         = write_resp_rden;
      assign write_resp_empty_o        = write_resp_empty;
      assign write_resp_rd_valid_o     = write_resp_rd_valid;
      assign aresetn_o                 = aresetn;
      assign m_aresetn_o               = m_aresetn;
      assign write_address_s_awvalid_o = write_address_s_awvalid;
      assign write_address_s_awready_o = write_address_s_awready;
      assign write_data_s_wvalid_o     = write_data_s_wvalid;
      assign write_data_s_wready_o     = write_data_s_wready;
      assign write_resp_s_bvalid_o     = write_resp_s_bvalid;
      assign write_resp_s_bready_o     = write_resp_s_bready;
      assign write_address_m_awvalid_o = write_address_m_awvalid;
      assign write_address_m_awready_o = write_address_m_awready;
      assign write_data_m_wvalid_o     = write_data_m_wvalid;
      assign write_data_m_wready_o     = write_data_m_wready;
      assign write_resp_m_bvalid_o     = write_resp_m_bvalid;
      assign write_resp_m_bready_o     = write_resp_m_bready;
    end
    else
    begin
      assign write_data_wr_data_o      = 'b0;
      assign write_data_wren_o         = 'b0;
      assign write_data_full_o         = 'b0;
      assign write_data_wr_ack_o       = 'b0;
      assign write_data_rd_data_o      = 'b0;
      assign write_data_rden_o         = 'b0;
      assign write_data_empty_o        = 'b0;
      assign write_data_rd_valid_o     = 'b0;
      assign write_address_wr_data_o   = 'b0;
      assign write_address_wren_o      = 'b0;
      assign write_address_full_o      = 'b0;
      assign write_address_wr_ack_o    = 'b0;
      assign write_address_rd_data_o   = 'b0;
      assign write_address_rden_o      = 'b0;
      assign write_address_empty_o     = 'b0;
      assign write_address_rd_valid_o  = 'b0;
      assign write_resp_wr_data_o      = 'b0;
      assign write_resp_wren_o         = 'b0;
      assign write_resp_full_o         = 'b0;
      assign write_resp_wr_ack_o       = 'b0;
      assign write_resp_rd_data_o      = 'b0;
      assign write_resp_rden_o         = 'b0;
      assign write_resp_empty_o        = 'b0;
      assign write_resp_rd_valid_o     = 'b0;
      assign aresetn_o                 = 'b0;
      assign m_aresetn_o               = 'b0;
      assign write_address_s_awvalid_o = 'b0;
      assign write_address_s_awready_o = 'b0;
      assign write_data_s_wvalid_o     = 'b0;
      assign write_data_s_wready_o     = 'b0;
      assign write_resp_s_bvalid_o     = 'b0;
      assign write_resp_s_bready_o     = 'b0;
      assign write_address_m_awvalid_o = 'b0;
      assign write_address_m_awready_o = 'b0;
      assign write_data_m_wvalid_o     = 'b0;
      assign write_data_m_wready_o     = 'b0;
      assign write_resp_m_bvalid_o     = 'b0;
      assign write_resp_m_bready_o     = 'b0;
    end
  endgenerate
endmodule // apcc


