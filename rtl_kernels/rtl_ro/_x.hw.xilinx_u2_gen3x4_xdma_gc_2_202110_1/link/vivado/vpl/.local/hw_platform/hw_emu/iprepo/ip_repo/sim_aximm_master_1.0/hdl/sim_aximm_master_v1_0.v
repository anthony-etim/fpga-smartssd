// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

`timescale 1 ns / 1 ps

	module sim_aximm_master_v1_0 #
	(
		parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M00_AXI_BURST_LEN	= 16,
		parameter integer C_M00_AXI_ID_WIDTH	= 1,
		parameter integer C_M00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M00_AXI_DATA_WIDTH	= 32,
		parameter integer C_M00_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_WUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_RUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_BUSER_WIDTH	= 0
	)
	(
		input wire  m00_axi_aclk,
		input wire  m00_axi_aresetn,
		output wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_awid,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
		output wire [7 : 0] m00_axi_awlen,
		output wire [2 : 0] m00_axi_awsize,
		output wire [1 : 0] m00_axi_awburst,
		output wire  m00_axi_awlock,
		output wire [3 : 0] m00_axi_awcache,
		output wire [2 : 0] m00_axi_awprot,
		output wire [3 : 0] m00_axi_awqos,
		output wire [C_M00_AXI_AWUSER_WIDTH-1 : 0] m00_axi_awuser,
		output wire  m00_axi_awvalid,
		input wire  m00_axi_awready,
		output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		output wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
		output wire  m00_axi_wlast,
		output wire [C_M00_AXI_WUSER_WIDTH-1 : 0] m00_axi_wuser,
		output wire  m00_axi_wvalid,
		input wire  m00_axi_wready,
		input wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_bid,
		input wire [1 : 0] m00_axi_bresp,
		input wire [C_M00_AXI_BUSER_WIDTH-1 : 0] m00_axi_buser,
		input wire  m00_axi_bvalid,
		output wire  m00_axi_bready,
		output wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_arid,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
		output wire [7 : 0] m00_axi_arlen,
		output wire [2 : 0] m00_axi_arsize,
		output wire [1 : 0] m00_axi_arburst,
		output wire  m00_axi_arlock,
		output wire [3 : 0] m00_axi_arcache,
		output wire [2 : 0] m00_axi_arprot,
		output wire [3 : 0] m00_axi_arqos,
		output wire [C_M00_AXI_ARUSER_WIDTH-1 : 0] m00_axi_aruser,
		output wire  m00_axi_arvalid,
		input wire  m00_axi_arready,
		input wire [C_M00_AXI_ID_WIDTH-1 : 0] m00_axi_rid,
		input wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
		input wire [1 : 0] m00_axi_rresp,
		input wire  m00_axi_rlast,
		input wire [C_M00_AXI_RUSER_WIDTH-1 : 0] m00_axi_ruser,
		input wire  m00_axi_rvalid,
		output wire  m00_axi_rready
	);

		assign  m00_axi_txn_done = 1'b0;
		assign  m00_axi_awid     = {C_M00_AXI_ID_WIDTH{1'b0}};
		assign  m00_axi_awaddr   = {C_M00_AXI_ADDR_WIDTH{1'b0}}; 
		assign  m00_axi_awlen    = 8'b0;
		assign  m00_axi_awsize   = 3'b0;
		assign  m00_axi_awburst  = 2'b0;
		assign  m00_axi_awlock   = 1'b0;
		assign  m00_axi_awcache  = 4'b0;
		assign  m00_axi_awprot   = 3'b0;
		assign  m00_axi_awqos    = 4'b0;
		assign  m00_axi_awuser   = {C_M00_AXI_AWUSER_WIDTH{1'b0}};
		assign  m00_axi_awvalid  = 1'b0;
		assign  m00_axi_wdata    = {C_M00_AXI_DATA_WIDTH{1'b0}};
		assign  m00_axi_wstrb    = {C_M00_AXI_AWUSER_WIDTH/8{1'b0}}; 
		assign  m00_axi_wlast    = 1'b0;
		assign  m00_axi_wuser    = {C_M00_AXI_WUSER_WIDTH{1'b0}};
		assign  m00_axi_wvalid   = 1'b0;
		assign  m00_axi_bready   = 1'b0;
		assign  m00_axi_arid     = {C_M00_AXI_ID_WIDTH{1'b0}};
		assign  m00_axi_araddr   = {C_M00_AXI_ADDR_WIDTH-1{1'b0}};
		assign  m00_axi_arlen    = 8'b0;
		assign  m00_axi_arsize   = 3'b0;
		assign  m00_axi_arburst  = 2'b0;
		assign  m00_axi_arlock   = 1'b0;
		assign  m00_axi_arcache  = 4'b0;
		assign  m00_axi_arprot   = 3'b0;
		assign  m00_axi_arqos    = 4'b0;
		assign  m00_axi_aruser   = {C_M00_AXI_ARUSER_WIDTH{1'b0}};
		assign  m00_axi_arvalid  = 1'b0;
		assign  m00_axi_rready   = 1'b0;

	endmodule


