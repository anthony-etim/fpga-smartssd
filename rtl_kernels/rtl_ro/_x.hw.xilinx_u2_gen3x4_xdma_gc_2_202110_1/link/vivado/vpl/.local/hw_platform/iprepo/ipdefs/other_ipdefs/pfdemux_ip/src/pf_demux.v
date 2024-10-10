// *************************************************************************
//    ____  ____
//   /   /\/   /
//  /___/  \  /
//  \   \   \/    © Copyright 2016-2017 Xilinx, Inc. All rights reserved.
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

`timescale 1ns / 1ps

module pf_demux(

input   pcie_clk,
input   pcie_aresetn,

// DEMUX Select Pins
input   wire [10 : 0]   m_axil_awuser,
input   wire [10 : 0]   m_axil_aruser,

// PCIE M_AXI_LITE BUS PORTS
input   wire [31 : 0]   m_axil_awaddr,
input   wire [2 : 0]    m_axil_awprot,
input   wire            m_axil_awvalid,
output  wire            m_axil_awready,
input   wire [31 : 0]   m_axil_wdata,
input   wire [3 : 0]    m_axil_wstrb,
input   wire            m_axil_wvalid,
output  wire            m_axil_wready,
output  wire            m_axil_bvalid,
output  wire [1 : 0]    m_axil_bresp,
input   wire            m_axil_bready,

input   wire [31 : 0]   m_axil_araddr,
input   wire [2 : 0]    m_axil_arprot,
input   wire            m_axil_arvalid,
output  wire            m_axil_arready,
output  wire [31 : 0]   m_axil_rdata,
output  wire [1 : 0]    m_axil_rresp,
output  wire            m_axil_rvalid,
input   wire            m_axil_rready,

// USERPF SAXI BUS Interface
output  wire [31 : 0]   S_AXI_awaddr_USERPF,
output  wire [2 : 0]    S_AXI_awprot_USERPF,
output  wire            S_AXI_awvalid_USERPF,
input   wire            S_AXI_awready_USERPF,
output  wire [31 : 0]   S_AXI_wdata_USERPF,
output  wire [3 : 0]    S_AXI_wstrb_USERPF,
output  wire            S_AXI_wvalid_USERPF,
input   wire            S_AXI_wready_USERPF,
input   wire [1 : 0]    S_AXI_bresp_USERPF,
input   wire            S_AXI_bvalid_USERPF,
output  wire            S_AXI_bready_USERPF,

output  wire [31 : 0]   S_AXI_araddr_USERPF,
output  wire [2 : 0]    S_AXI_arprot_USERPF,
output  wire            S_AXI_arvalid_USERPF,
input   wire            S_AXI_arready_USERPF,
input   wire [31 : 0]   S_AXI_rdata_USERPF,
input   wire [1 : 0]    S_AXI_rresp_USERPF,
input   wire            S_AXI_rvalid_USERPF,
output  wire            S_AXI_rready_USERPF,

// Management  SAXI BUS Interface
output  wire [31 : 0]   S_AXI_awaddr_MGNTPF,
output  wire [2 : 0]    S_AXI_awprot_MGNTPF,
output  wire            S_AXI_awvalid_MGNTPF,
input   wire            S_AXI_awready_MGNTPF,
output  wire [31 : 0]   S_AXI_wdata_MGNTPF,
output  wire [3 : 0]    S_AXI_wstrb_MGNTPF,
output  wire            S_AXI_wvalid_MGNTPF,
input   wire            S_AXI_wready_MGNTPF,
input   wire [1 : 0]    S_AXI_bresp_MGNTPF,
input   wire            S_AXI_bvalid_MGNTPF,
output  wire            S_AXI_bready_MGNTPF,

output  wire [31 : 0]   S_AXI_araddr_MGNTPF,
output  wire [2 : 0]    S_AXI_arprot_MGNTPF,
output  wire            S_AXI_arvalid_MGNTPF,
input   wire            S_AXI_arready_MGNTPF,
input   wire [31 : 0]   S_AXI_rdata_MGNTPF,
input   wire [1 : 0]    S_AXI_rresp_MGNTPF,
input   wire            S_AXI_rvalid_MGNTPF,
output  wire            S_AXI_rready_MGNTPF
    );


// wire and register declarations
reg  demux_select =0;



// STATE definition
reg         [4:0]   state           = 5'b00001;
localparam  [4:0]   IDLE            = 5'b00001,
                    WRITE_REQUEST   = 5'b00010,
                    READ_REQUEST    = 5'b00100,
                    WAIT_BRESP      = 5'b01000,
                    WAIT_RRESP      = 5'b10000;
// State Machine to control the demux Select Signal

always @(posedge pcie_clk)
begin
    if(!pcie_aresetn)
    begin
        demux_select        <= 0;
        state               <= 5'b00001;
    end // end of if block
    else
    begin
        case (state)
            IDLE :begin
                if (m_axil_awvalid)
                begin
                    state <= WRITE_REQUEST;
                end// end of if block
                else if (m_axil_arvalid)
                begin
                    state <= READ_REQUEST;
                end // end of else if block
                else
                begin
                    state <= IDLE;
                end // end of else block

                demux_select        <= 0;
            end // end of IDLE case

// WRITE REQUEST control logic is defined in the following states.

            WRITE_REQUEST :begin
                if(~m_axil_awuser[0])
                begin
                    demux_select <= 1;
                end // end of if block
                else
                begin
                    demux_select <= 0;
                end // end of else block

                state   <= WAIT_BRESP;
            end // end of WRITE_REQUEST

            WAIT_BRESP :begin
                if(m_axil_bvalid & m_axil_bready)
                begin
                    state        <= IDLE;
                    demux_select <= 0;
                end
                else
                begin
                    state        <= WAIT_BRESP;
                    demux_select <= demux_select;
                end
            end // end of WAIT_BRESP

// READ REQUEST control logic is defined in the following blocks.

            READ_REQUEST :begin
                if(~m_axil_aruser[0])
                begin
                   demux_select <= 1;
                end // end of if block
                else
                begin
                   demux_select <= 0;
                end

                state <= WAIT_RRESP;
            end // end of READ_REQUEST

            WAIT_RRESP : begin
                if(m_axil_rvalid & m_axil_rready)
                begin
                    state           <= IDLE;
                    demux_select    <= 0;
                end
                else
                begin
                    state           <= WAIT_RRESP;
                    demux_select    <= demux_select;
                end
            end // end of WAIT_RRESP

        endcase// end of case block
    end
end // end of always block



// Write Channel Mappings

/*
Note : If the state machine is in WAIT_BRESP state , check for 2 conditions :-
a) if the demux_select is set to 1 , then connect to MgntPF else connect to UserPF
b) if the state machine is not in WAIT_BRESP state, then drive awready to 0.
*/
assign m_axil_awready = (state[3]) ? ((demux_select) ? S_AXI_awready_MGNTPF:S_AXI_awready_USERPF) : 0;


/*
Note:
if the state machine is in WAIT_BRESP state, check for 2 conditions :-
a) if the demux_select is set to 1 connect m_axil_awvalid to Mgnt PF else drive to 0, viceversa for User PF
b) if !state[3] then drive both to 0
*/
assign S_AXI_awvalid_MGNTPF = (state[3]) ? ((demux_select) ? m_axil_awvalid : 0) : 0;
assign S_AXI_awvalid_USERPF = (state[3]) ? ((demux_select) ? 0 : m_axil_awvalid) : 0;


/*
Similarly drive the wvalid and wready signals
*/

assign m_axil_wready = (state[3]) ? ((demux_select) ? S_AXI_wready_MGNTPF:S_AXI_wready_USERPF) : 0;

assign S_AXI_wvalid_MGNTPF = (state[3]) ?((demux_select) ? m_axil_wvalid : 0) : 0;
assign S_AXI_wvalid_USERPF = (state[3]) ?((demux_select) ? 0 : m_axil_wvalid) : 0;

// Bresp signal mapping
assign S_AXI_bready_MGNTPF = (state[3]) ?((demux_select) ? m_axil_bready : 0) : 0;
assign S_AXI_bready_USERPF = (state[3]) ?((demux_select) ? 0 : m_axil_bready) : 0;
assign m_axil_bvalid = (state[3]) ? ((demux_select) ? S_AXI_bvalid_MGNTPF : S_AXI_bvalid_USERPF) : 0;
assign m_axil_bresp  = (state[3]) ? ((demux_select) ? S_AXI_bresp_MGNTPF : S_AXI_bresp_USERPF) : 0;


assign S_AXI_awaddr_MGNTPF = m_axil_awaddr & 32'h01FFFFFF;
assign S_AXI_awaddr_USERPF = m_axil_awaddr & 32'h01FFFFFF;

assign S_AXI_awprot_MGNTPF = m_axil_awprot;
assign S_AXI_awprot_USERPF = m_axil_awprot;


assign S_AXI_wdata_MGNTPF = m_axil_wdata;
assign S_AXI_wdata_USERPF = m_axil_wdata;

assign S_AXI_wstrb_MGNTPF = m_axil_wstrb;
assign S_AXI_wstrb_USERPF = m_axil_wstrb;


// Read Channel Mappings

assign m_axil_arready = (state[4]) ? ((demux_select) ? S_AXI_arready_MGNTPF : S_AXI_arready_USERPF) : 0;

assign S_AXI_arvalid_MGNTPF = (state[4]) ? ((demux_select) ? m_axil_arvalid : 0) : 0;
assign S_AXI_arvalid_USERPF = (state[4]) ? ((demux_select) ? 0 : m_axil_arvalid) : 0;

assign m_axil_rvalid = (state[4]) ? ((demux_select) ? S_AXI_rvalid_MGNTPF : S_AXI_rvalid_USERPF) : 0;

assign S_AXI_rready_MGNTPF = (state[4]) ? ((demux_select) ? m_axil_rready : 0) : 0;
assign S_AXI_rready_USERPF = (state[4]) ? ((demux_select) ? 0 : m_axil_rready) : 0;

assign m_axil_rdata = (state[4]) ? ((demux_select) ? S_AXI_rdata_MGNTPF : S_AXI_rdata_USERPF) : 0;

assign m_axil_rresp = (state[4]) ? ((demux_select) ? S_AXI_rresp_MGNTPF : S_AXI_rresp_USERPF) : 0;

assign S_AXI_araddr_MGNTPF = m_axil_araddr & 32'h01FFFFFF;
assign S_AXI_araddr_USERPF = m_axil_araddr & 32'h01FFFFFF;

assign S_AXI_arprot_MGNTPF = m_axil_arprot;
assign S_AXI_arprot_USERPF = m_axil_arprot;

endmodule

