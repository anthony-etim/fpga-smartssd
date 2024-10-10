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
module axi_bypass_addr (
input  			aclk,
input  			aresetn,
(* X_INTERFACE_PARAMETER = "SUPPORTS_NARROW_BURST 1, NUM_WRITE_OUTSTANDING 32, NUM_READ_OUTSTANDING 32" *)
input wire [1 : 0] 	s_axib_awid,
input wire [63 : 0] 	s_axib_awaddr,
input wire [7 : 0] 	s_axib_awlen,
input wire [7 : 0] 	s_axib_awuser,
input wire [2 : 0] 	s_axib_awsize,
input wire [1 : 0] 	s_axib_awburst,
input wire [2 : 0] 	s_axib_awprot,
input wire 		s_axib_awvalid,

output wire 		s_axib_awready,

input wire 		s_axib_awlock,
input wire [3 : 0] 	s_axib_awcache,
input wire [511 : 0] 	s_axib_wdata,
input wire [63 : 0]	s_axib_wstrb,
input wire 		s_axib_wlast,
input wire 		s_axib_wvalid,

output wire 		s_axib_wready,
output wire [1 : 0] 	s_axib_bid,
output wire [1 : 0] 	s_axib_bresp,
output wire 		s_axib_bvalid,

input wire 		s_axib_bready,
input wire [1 : 0] 	s_axib_arid,
input wire [63 : 0] 	s_axib_araddr,
input wire [7 : 0] 	s_axib_arlen,
input wire [7 : 0] 	s_axib_aruser,
input wire [2 : 0] 	s_axib_arsize,
input wire [1 : 0] 	s_axib_arburst,
input wire [2 : 0] 	s_axib_arprot,
input wire 		s_axib_arvalid,

output wire 		s_axib_arready,

input wire 		s_axib_arlock,
input wire [3 : 0] 	s_axib_arcache,

output wire [1 : 0] 	s_axib_rid,
output wire [511 : 0] 	s_axib_rdata,
output wire [1 : 0] 	s_axib_rresp,
output wire 		s_axib_rlast,
output wire 		s_axib_rvalid,

input wire 		s_axib_rready,

(* X_INTERFACE_PARAMETER = "SUPPORTS_NARROW_BURST 1, NUM_WRITE_OUTSTANDING 32, NUM_READ_OUTSTANDING 32" *)
output wire [1 : 0] 	m_axib_awid,
output reg [63 : 0] 	m_axib_awaddr,
output wire [7 : 0] 	m_axib_awlen,
output wire [7 : 0] 	m_axib_awuser,
output wire [2 : 0] 	m_axib_awsize,
output wire [1 : 0] 	m_axib_awburst,
output wire [2 : 0] 	m_axib_awprot,
output wire 		m_axib_awvalid,

input wire 		m_axib_awready,

output wire 		m_axib_awlock,
output wire [3 : 0] 	m_axib_awcache,
output wire [511 : 0] 	m_axib_wdata,
output wire [63 : 0] 	m_axib_wstrb,
output wire 		m_axib_wlast,
output wire 		m_axib_wvalid,

input wire 		m_axib_wready,
input wire [1 : 0] 	m_axib_bid,
input wire [1 : 0] 	m_axib_bresp,
input wire 		m_axib_bvalid,

output wire 		m_axib_bready,
output wire [1 : 0] 	m_axib_arid,
output reg [63 : 0] 	m_axib_araddr,
output wire [7 : 0] 	m_axib_arlen,
output wire [7 : 0] 	m_axib_aruser,
output wire [2 : 0] 	m_axib_arsize,
output wire [1 : 0] 	m_axib_arburst,
output wire [2 : 0] 	m_axib_arprot,
output wire 		m_axib_arvalid,

input wire 		m_axib_arready,

output wire 		m_axib_arlock,
output wire [3 : 0] 	m_axib_arcache,

input wire [1 : 0] 	m_axib_rid,
input wire [511 : 0] 	m_axib_rdata,
input wire [1 : 0] 	m_axib_rresp,
input wire 		m_axib_rlast,
input wire 		m_axib_rvalid,

output wire 		m_axib_rready
);

//output
assign m_axib_awid = s_axib_awid;


always@(*)begin
  m_axib_awaddr = {32'h00000040, s_axib_awaddr[31:0]};
end
assign m_axib_awlen    = s_axib_awlen;
assign m_axib_awuser   = s_axib_awuser;
assign m_axib_awsize   = s_axib_awsize;
assign m_axib_awburst  = s_axib_awburst;
assign m_axib_awprot   = s_axib_awprot;
assign m_axib_awvalid  = s_axib_awvalid;
assign m_axib_awlock   = s_axib_awlock;
assign m_axib_awcache  = s_axib_awcache;
assign m_axib_wdata    = s_axib_wdata;
assign m_axib_wstrb    = s_axib_wstrb;
assign m_axib_wlast    = s_axib_wlast;
assign m_axib_wvalid   = s_axib_wvalid;
assign m_axib_bready   = s_axib_bready;
assign m_axib_arid     = s_axib_arid;

always@(*)begin
  m_axib_araddr = {32'h00000040, s_axib_araddr[31:0]};
end
assign m_axib_arlen   = s_axib_arlen;
assign m_axib_aruser  = s_axib_aruser;
assign m_axib_arsize  = s_axib_arsize;
assign m_axib_arburst = s_axib_arburst;
assign m_axib_arprot  = s_axib_arburst;
assign m_axib_arvalid = s_axib_arvalid;  
assign m_axib_arlock  = s_axib_arlock;
assign m_axib_arcache = s_axib_arcache;
assign m_axib_rready  = s_axib_rready;

//inputs
assign s_axib_awready  = m_axib_awready;
assign s_axib_wready   = m_axib_wready;
assign s_axib_bid      = m_axib_bid;
assign s_axib_bresp    = m_axib_bresp;
assign s_axib_bvalid   = m_axib_bvalid;
assign s_axib_arready  = m_axib_arready;
assign s_axib_rid      = m_axib_rid;
assign s_axib_rdata    = m_axib_rdata;
assign s_axib_rresp    = m_axib_rresp;
assign s_axib_rlast    = m_axib_rlast;
assign s_axib_rvalid   = m_axib_rvalid;
   
endmodule
