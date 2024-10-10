//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Fri Dec 31 12:01:49 2021
//Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target ulp.bd
//Design      : ulp
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module interrupt_concat_imp_1RAQO40
   (xlconcat_interrupt_dout);
  output [127:0]xlconcat_interrupt_dout;

  wire [31:0]xlconcat_interrupt_0_dout;
  wire [31:0]xlconcat_interrupt_1_dout;
  wire [31:0]xlconcat_interrupt_2_dout;
  wire [31:0]xlconcat_interrupt_3_dout;
  wire [127:0]xlconcat_interrupt_dout;
  wire [0:0]xlconstant_gnd_dout;

  ulp_xlconcat_interrupt_0 xlconcat_interrupt
       (.In0(xlconcat_interrupt_0_dout),
        .In1(xlconcat_interrupt_1_dout),
        .In2(xlconcat_interrupt_2_dout),
        .In3(xlconcat_interrupt_3_dout),
        .dout(xlconcat_interrupt_dout));
  ulp_xlconcat_interrupt_0_0 xlconcat_interrupt_0
       (.In0(xlconstant_gnd_dout),
        .In1(xlconstant_gnd_dout),
        .In10(xlconstant_gnd_dout),
        .In11(xlconstant_gnd_dout),
        .In12(xlconstant_gnd_dout),
        .In13(xlconstant_gnd_dout),
        .In14(xlconstant_gnd_dout),
        .In15(xlconstant_gnd_dout),
        .In16(xlconstant_gnd_dout),
        .In17(xlconstant_gnd_dout),
        .In18(xlconstant_gnd_dout),
        .In19(xlconstant_gnd_dout),
        .In2(xlconstant_gnd_dout),
        .In20(xlconstant_gnd_dout),
        .In21(xlconstant_gnd_dout),
        .In22(xlconstant_gnd_dout),
        .In23(xlconstant_gnd_dout),
        .In24(xlconstant_gnd_dout),
        .In25(xlconstant_gnd_dout),
        .In26(xlconstant_gnd_dout),
        .In27(xlconstant_gnd_dout),
        .In28(xlconstant_gnd_dout),
        .In29(xlconstant_gnd_dout),
        .In3(xlconstant_gnd_dout),
        .In30(xlconstant_gnd_dout),
        .In31(xlconstant_gnd_dout),
        .In4(xlconstant_gnd_dout),
        .In5(xlconstant_gnd_dout),
        .In6(xlconstant_gnd_dout),
        .In7(xlconstant_gnd_dout),
        .In8(xlconstant_gnd_dout),
        .In9(xlconstant_gnd_dout),
        .dout(xlconcat_interrupt_0_dout));
  ulp_xlconcat_interrupt_1_0 xlconcat_interrupt_1
       (.In0(xlconstant_gnd_dout),
        .In1(xlconstant_gnd_dout),
        .In10(xlconstant_gnd_dout),
        .In11(xlconstant_gnd_dout),
        .In12(xlconstant_gnd_dout),
        .In13(xlconstant_gnd_dout),
        .In14(xlconstant_gnd_dout),
        .In15(xlconstant_gnd_dout),
        .In16(xlconstant_gnd_dout),
        .In17(xlconstant_gnd_dout),
        .In18(xlconstant_gnd_dout),
        .In19(xlconstant_gnd_dout),
        .In2(xlconstant_gnd_dout),
        .In20(xlconstant_gnd_dout),
        .In21(xlconstant_gnd_dout),
        .In22(xlconstant_gnd_dout),
        .In23(xlconstant_gnd_dout),
        .In24(xlconstant_gnd_dout),
        .In25(xlconstant_gnd_dout),
        .In26(xlconstant_gnd_dout),
        .In27(xlconstant_gnd_dout),
        .In28(xlconstant_gnd_dout),
        .In29(xlconstant_gnd_dout),
        .In3(xlconstant_gnd_dout),
        .In30(xlconstant_gnd_dout),
        .In31(xlconstant_gnd_dout),
        .In4(xlconstant_gnd_dout),
        .In5(xlconstant_gnd_dout),
        .In6(xlconstant_gnd_dout),
        .In7(xlconstant_gnd_dout),
        .In8(xlconstant_gnd_dout),
        .In9(xlconstant_gnd_dout),
        .dout(xlconcat_interrupt_1_dout));
  ulp_xlconcat_interrupt_2_0 xlconcat_interrupt_2
       (.In0(xlconstant_gnd_dout),
        .In1(xlconstant_gnd_dout),
        .In10(xlconstant_gnd_dout),
        .In11(xlconstant_gnd_dout),
        .In12(xlconstant_gnd_dout),
        .In13(xlconstant_gnd_dout),
        .In14(xlconstant_gnd_dout),
        .In15(xlconstant_gnd_dout),
        .In16(xlconstant_gnd_dout),
        .In17(xlconstant_gnd_dout),
        .In18(xlconstant_gnd_dout),
        .In19(xlconstant_gnd_dout),
        .In2(xlconstant_gnd_dout),
        .In20(xlconstant_gnd_dout),
        .In21(xlconstant_gnd_dout),
        .In22(xlconstant_gnd_dout),
        .In23(xlconstant_gnd_dout),
        .In24(xlconstant_gnd_dout),
        .In25(xlconstant_gnd_dout),
        .In26(xlconstant_gnd_dout),
        .In27(xlconstant_gnd_dout),
        .In28(xlconstant_gnd_dout),
        .In29(xlconstant_gnd_dout),
        .In3(xlconstant_gnd_dout),
        .In30(xlconstant_gnd_dout),
        .In31(xlconstant_gnd_dout),
        .In4(xlconstant_gnd_dout),
        .In5(xlconstant_gnd_dout),
        .In6(xlconstant_gnd_dout),
        .In7(xlconstant_gnd_dout),
        .In8(xlconstant_gnd_dout),
        .In9(xlconstant_gnd_dout),
        .dout(xlconcat_interrupt_2_dout));
  ulp_xlconcat_interrupt_3_0 xlconcat_interrupt_3
       (.In0(xlconstant_gnd_dout),
        .In1(xlconstant_gnd_dout),
        .In10(xlconstant_gnd_dout),
        .In11(xlconstant_gnd_dout),
        .In12(xlconstant_gnd_dout),
        .In13(xlconstant_gnd_dout),
        .In14(xlconstant_gnd_dout),
        .In15(xlconstant_gnd_dout),
        .In16(xlconstant_gnd_dout),
        .In17(xlconstant_gnd_dout),
        .In18(xlconstant_gnd_dout),
        .In19(xlconstant_gnd_dout),
        .In2(xlconstant_gnd_dout),
        .In20(xlconstant_gnd_dout),
        .In21(xlconstant_gnd_dout),
        .In22(xlconstant_gnd_dout),
        .In23(xlconstant_gnd_dout),
        .In24(xlconstant_gnd_dout),
        .In25(xlconstant_gnd_dout),
        .In26(xlconstant_gnd_dout),
        .In27(xlconstant_gnd_dout),
        .In28(xlconstant_gnd_dout),
        .In29(xlconstant_gnd_dout),
        .In3(xlconstant_gnd_dout),
        .In30(xlconstant_gnd_dout),
        .In31(xlconstant_gnd_dout),
        .In4(xlconstant_gnd_dout),
        .In5(xlconstant_gnd_dout),
        .In6(xlconstant_gnd_dout),
        .In7(xlconstant_gnd_dout),
        .In8(xlconstant_gnd_dout),
        .In9(xlconstant_gnd_dout),
        .dout(xlconcat_interrupt_3_dout));
  ulp_xlconstant_gnd_0 xlconstant_gnd
       (.dout(xlconstant_gnd_dout));
endmodule

module m00_couplers_imp_1DIICHO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [24:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [24:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [24:0]m00_couplers_to_m00_regslice_ARADDR;
  wire [2:0]m00_couplers_to_m00_regslice_ARPROT;
  wire m00_couplers_to_m00_regslice_ARREADY;
  wire m00_couplers_to_m00_regslice_ARVALID;
  wire [24:0]m00_couplers_to_m00_regslice_AWADDR;
  wire [2:0]m00_couplers_to_m00_regslice_AWPROT;
  wire m00_couplers_to_m00_regslice_AWREADY;
  wire m00_couplers_to_m00_regslice_AWVALID;
  wire m00_couplers_to_m00_regslice_BREADY;
  wire [1:0]m00_couplers_to_m00_regslice_BRESP;
  wire m00_couplers_to_m00_regslice_BVALID;
  wire [31:0]m00_couplers_to_m00_regslice_RDATA;
  wire m00_couplers_to_m00_regslice_RREADY;
  wire [1:0]m00_couplers_to_m00_regslice_RRESP;
  wire m00_couplers_to_m00_regslice_RVALID;
  wire [31:0]m00_couplers_to_m00_regslice_WDATA;
  wire m00_couplers_to_m00_regslice_WREADY;
  wire [3:0]m00_couplers_to_m00_regslice_WSTRB;
  wire m00_couplers_to_m00_regslice_WVALID;
  wire [8:0]m00_regslice_to_m00_couplers_ARADDR;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [8:0]m00_regslice_to_m00_couplers_AWADDR;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [31:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [31:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [3:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_regslice_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_regslice_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_regslice_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_regslice_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_regslice_WREADY;
  assign m00_couplers_to_m00_regslice_ARADDR = S_AXI_araddr[24:0];
  assign m00_couplers_to_m00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_regslice_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_regslice_AWADDR = S_AXI_awaddr[24:0];
  assign m00_couplers_to_m00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_regslice_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_regslice_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_regslice_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_regslice_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_regslice_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  ulp_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_regslice_ARADDR[8:0]),
        .s_axi_arprot(m00_couplers_to_m00_regslice_ARPROT),
        .s_axi_arready(m00_couplers_to_m00_regslice_ARREADY),
        .s_axi_arvalid(m00_couplers_to_m00_regslice_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_regslice_AWADDR[8:0]),
        .s_axi_awprot(m00_couplers_to_m00_regslice_AWPROT),
        .s_axi_awready(m00_couplers_to_m00_regslice_AWREADY),
        .s_axi_awvalid(m00_couplers_to_m00_regslice_AWVALID),
        .s_axi_bready(m00_couplers_to_m00_regslice_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_regslice_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_regslice_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_regslice_RDATA),
        .s_axi_rready(m00_couplers_to_m00_regslice_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_regslice_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_regslice_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_regslice_WDATA),
        .s_axi_wready(m00_couplers_to_m00_regslice_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_regslice_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_1MIVJUX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m00_couplers_ARADDR;
  wire [1:0]auto_cc_to_m00_couplers_ARBURST;
  wire [3:0]auto_cc_to_m00_couplers_ARCACHE;
  wire [5:0]auto_cc_to_m00_couplers_ARID;
  wire [7:0]auto_cc_to_m00_couplers_ARLEN;
  wire [0:0]auto_cc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_cc_to_m00_couplers_ARPROT;
  wire [3:0]auto_cc_to_m00_couplers_ARQOS;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire [2:0]auto_cc_to_m00_couplers_ARSIZE;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [31:0]auto_cc_to_m00_couplers_AWADDR;
  wire [1:0]auto_cc_to_m00_couplers_AWBURST;
  wire [3:0]auto_cc_to_m00_couplers_AWCACHE;
  wire [5:0]auto_cc_to_m00_couplers_AWID;
  wire [7:0]auto_cc_to_m00_couplers_AWLEN;
  wire [0:0]auto_cc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_cc_to_m00_couplers_AWPROT;
  wire [3:0]auto_cc_to_m00_couplers_AWQOS;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire [2:0]auto_cc_to_m00_couplers_AWSIZE;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire [5:0]auto_cc_to_m00_couplers_BID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [511:0]auto_cc_to_m00_couplers_RDATA;
  wire [5:0]auto_cc_to_m00_couplers_RID;
  wire auto_cc_to_m00_couplers_RLAST;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [511:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WLAST;
  wire auto_cc_to_m00_couplers_WREADY;
  wire [63:0]auto_cc_to_m00_couplers_WSTRB;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [63:0]m00_couplers_to_auto_cc_ARADDR;
  wire [1:0]m00_couplers_to_auto_cc_ARBURST;
  wire [3:0]m00_couplers_to_auto_cc_ARCACHE;
  wire [5:0]m00_couplers_to_auto_cc_ARID;
  wire [7:0]m00_couplers_to_auto_cc_ARLEN;
  wire [0:0]m00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire [3:0]m00_couplers_to_auto_cc_ARQOS;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire [3:0]m00_couplers_to_auto_cc_ARREGION;
  wire [2:0]m00_couplers_to_auto_cc_ARSIZE;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [63:0]m00_couplers_to_auto_cc_AWADDR;
  wire [1:0]m00_couplers_to_auto_cc_AWBURST;
  wire [3:0]m00_couplers_to_auto_cc_AWCACHE;
  wire [5:0]m00_couplers_to_auto_cc_AWID;
  wire [7:0]m00_couplers_to_auto_cc_AWLEN;
  wire [0:0]m00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire [3:0]m00_couplers_to_auto_cc_AWQOS;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire [3:0]m00_couplers_to_auto_cc_AWREGION;
  wire [2:0]m00_couplers_to_auto_cc_AWSIZE;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire [5:0]m00_couplers_to_auto_cc_BID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [511:0]m00_couplers_to_auto_cc_RDATA;
  wire [5:0]m00_couplers_to_auto_cc_RID;
  wire m00_couplers_to_auto_cc_RLAST;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [511:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WLAST;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [63:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_cc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_cc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = auto_cc_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_cc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_cc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_cc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_cc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_cc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_cc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_cc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = auto_cc_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_cc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_cc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_cc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_cc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_cc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_cc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_cc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[5:0] = m00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[5:0] = m00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_cc_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign auto_cc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_cc_ARID = S_AXI_arid[5:0];
  assign m00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_cc_AWID = S_AXI_awid[5:0];
  assign m00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ulp_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_cc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_cc_to_m00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_cc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_cc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_cc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_cc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_cc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_cc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_cc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_cc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_cc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_cc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_cc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_cc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_cc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_cc_to_m00_couplers_BID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_cc_to_m00_couplers_RID),
        .m_axi_rlast(auto_cc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_cc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR[31:0]),
        .s_axi_arburst(m00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_cc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR[31:0]),
        .s_axi_awburst(m00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_cc_BID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_cc_RID),
        .s_axi_rlast(m00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m00_couplers_imp_1T9TXXO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [25:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [25:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [24:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [24:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [25:0]auto_cc_to_m00_couplers_ARADDR;
  wire [2:0]auto_cc_to_m00_couplers_ARPROT;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [25:0]auto_cc_to_m00_couplers_AWADDR;
  wire [2:0]auto_cc_to_m00_couplers_AWPROT;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [31:0]auto_cc_to_m00_couplers_RDATA;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [31:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WREADY;
  wire [3:0]auto_cc_to_m00_couplers_WSTRB;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [24:0]m00_couplers_to_auto_cc_ARADDR;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [24:0]m00_couplers_to_auto_cc_AWADDR;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [31:0]m00_couplers_to_auto_cc_RDATA;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [31:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [3:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[25:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[25:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[24:0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[24:0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  ulp_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m00_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m00_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr({1'b0,m00_couplers_to_auto_cc_ARADDR}),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr({1'b0,m00_couplers_to_auto_cc_AWADDR}),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m00_couplers_imp_NNXR7U
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [0:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [0:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [63:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [0:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire [0:0]m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire [3:0]m00_couplers_to_m00_couplers_ARREGION;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [63:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [0:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire [0:0]m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire [3:0]m00_couplers_to_m00_couplers_AWREGION;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [511:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RID;
  wire m00_couplers_to_m00_couplers_RLAST;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [511:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WLAST;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [63:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m00_couplers_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m00_couplers_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[511:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[511:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[511:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[63:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_4ALIA4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [5:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [5:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [5:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [5:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [63:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [1:0]m01_couplers_to_m01_couplers_ARBURST;
  wire [3:0]m01_couplers_to_m01_couplers_ARCACHE;
  wire [5:0]m01_couplers_to_m01_couplers_ARID;
  wire [7:0]m01_couplers_to_m01_couplers_ARLEN;
  wire m01_couplers_to_m01_couplers_ARLOCK;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire [2:0]m01_couplers_to_m01_couplers_ARSIZE;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [63:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [1:0]m01_couplers_to_m01_couplers_AWBURST;
  wire [3:0]m01_couplers_to_m01_couplers_AWCACHE;
  wire [5:0]m01_couplers_to_m01_couplers_AWID;
  wire [7:0]m01_couplers_to_m01_couplers_AWLEN;
  wire m01_couplers_to_m01_couplers_AWLOCK;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire [2:0]m01_couplers_to_m01_couplers_AWSIZE;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire [5:0]m01_couplers_to_m01_couplers_BID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [511:0]m01_couplers_to_m01_couplers_RDATA;
  wire [5:0]m01_couplers_to_m01_couplers_RID;
  wire m01_couplers_to_m01_couplers_RLAST;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [511:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WLAST;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [63:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[63:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m01_couplers_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m01_couplers_to_m01_couplers_ARCACHE;
  assign M_AXI_arid[5:0] = m01_couplers_to_m01_couplers_ARID;
  assign M_AXI_arlen[7:0] = m01_couplers_to_m01_couplers_ARLEN;
  assign M_AXI_arlock = m01_couplers_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m01_couplers_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m01_couplers_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m01_couplers_to_m01_couplers_AWCACHE;
  assign M_AXI_awid[5:0] = m01_couplers_to_m01_couplers_AWID;
  assign M_AXI_awlen[7:0] = m01_couplers_to_m01_couplers_AWLEN;
  assign M_AXI_awlock = m01_couplers_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m01_couplers_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[511:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wlast = m01_couplers_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bid[5:0] = m01_couplers_to_m01_couplers_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[511:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rid[5:0] = m01_couplers_to_m01_couplers_RID;
  assign S_AXI_rlast = m01_couplers_to_m01_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[63:0];
  assign m01_couplers_to_m01_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_m01_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_m01_couplers_ARID = S_AXI_arid[5:0];
  assign m01_couplers_to_m01_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_m01_couplers_ARLOCK = S_AXI_arlock;
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m01_couplers_to_m01_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_m01_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_m01_couplers_AWID = S_AXI_awid[5:0];
  assign m01_couplers_to_m01_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_m01_couplers_AWLOCK = S_AXI_awlock;
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BID = M_AXI_bid[5:0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[511:0];
  assign m01_couplers_to_m01_couplers_RID = M_AXI_rid[5:0];
  assign m01_couplers_to_m01_couplers_RLAST = M_AXI_rlast;
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[511:0];
  assign m01_couplers_to_m01_couplers_WLAST = S_AXI_wlast;
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[63:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_F5ZURT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [24:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [24:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [24:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [24:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [24:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [24:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[24:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[24:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[24:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[24:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_V1OR3T
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [24:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [24:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [6:0]auto_cc_to_m01_regslice_ARADDR;
  wire [2:0]auto_cc_to_m01_regslice_ARPROT;
  wire auto_cc_to_m01_regslice_ARREADY;
  wire auto_cc_to_m01_regslice_ARVALID;
  wire [6:0]auto_cc_to_m01_regslice_AWADDR;
  wire [2:0]auto_cc_to_m01_regslice_AWPROT;
  wire auto_cc_to_m01_regslice_AWREADY;
  wire auto_cc_to_m01_regslice_AWVALID;
  wire auto_cc_to_m01_regslice_BREADY;
  wire [1:0]auto_cc_to_m01_regslice_BRESP;
  wire auto_cc_to_m01_regslice_BVALID;
  wire [31:0]auto_cc_to_m01_regslice_RDATA;
  wire auto_cc_to_m01_regslice_RREADY;
  wire [1:0]auto_cc_to_m01_regslice_RRESP;
  wire auto_cc_to_m01_regslice_RVALID;
  wire [31:0]auto_cc_to_m01_regslice_WDATA;
  wire auto_cc_to_m01_regslice_WREADY;
  wire [3:0]auto_cc_to_m01_regslice_WSTRB;
  wire auto_cc_to_m01_regslice_WVALID;
  wire [24:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [24:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;
  wire [6:0]m01_regslice_to_m01_couplers_ARADDR;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [6:0]m01_regslice_to_m01_couplers_AWADDR;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[24:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[24:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  ulp_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m01_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m01_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m01_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m01_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m01_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m01_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m01_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m01_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m01_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[6:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[6:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
  ulp_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m01_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m01_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m01_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m01_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m01_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m01_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m01_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m01_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m01_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m01_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m01_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m01_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m01_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m01_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m01_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m01_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m01_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m01_regslice_WVALID));
endmodule

module reset_controllers_imp_440OZ2
   (aux_reset_in,
    c0_ddr4_ui_clk,
    clkwiz_kernel2_clk_out1,
    clkwiz_kernel2_locked_slr1,
    clkwiz_kernel_clk_out1,
    clkwiz_kernel_locked_slr1,
    clkwiz_sysclks_clk_out2,
    clkwiz_sysclks_locked_slr1,
    dma_pcie_axi_aclk,
    interconnect_aresetn,
    iob_static_perst_n_out,
    logic_reset_op_Res,
    pcie_user_lnk_up_slr1,
    peripheral_aresetn,
    psreset_gate_pr_control_interconnect_aresetn,
    psreset_gate_pr_data_interconnect_aresetn,
    psreset_gate_pr_ddrmem_1_interconnect_aresetn,
    psreset_gate_pr_kernel_interconnect_aresetn,
    slice_reset_kernel_pr_Dout_slr1);
  input aux_reset_in;
  input c0_ddr4_ui_clk;
  input clkwiz_kernel2_clk_out1;
  input clkwiz_kernel2_locked_slr1;
  input clkwiz_kernel_clk_out1;
  input clkwiz_kernel_locked_slr1;
  input clkwiz_sysclks_clk_out2;
  input clkwiz_sysclks_locked_slr1;
  input dma_pcie_axi_aclk;
  output [0:0]interconnect_aresetn;
  input [0:0]iob_static_perst_n_out;
  output [0:0]logic_reset_op_Res;
  input pcie_user_lnk_up_slr1;
  output [0:0]peripheral_aresetn;
  output [0:0]psreset_gate_pr_control_interconnect_aresetn;
  output [0:0]psreset_gate_pr_data_interconnect_aresetn;
  output [0:0]psreset_gate_pr_ddrmem_1_interconnect_aresetn;
  output [0:0]psreset_gate_pr_kernel_interconnect_aresetn;
  input [0:0]slice_reset_kernel_pr_Dout_slr1;

  wire [0:0]Op1_1;
  wire aux_reset_in_1;
  wire c0_ddr4_ui_clk_1;
  wire clkwiz_kernel2_locked_slr1_1;
  wire clkwiz_kernel_clk_out1;
  wire clkwiz_kernel_locked_slr1_1;
  wire clkwiz_sysclks_locked_slr1_1;
  wire dma_pcie_axi_aclk_1;
  wire [0:0]ext_reset_in_1;
  wire [0:0]logic_reset_op_Res;
  wire pcie_user_lnk_up_slr1_1;
  wire [0:0]psreset_gate_pr_control_interconnect_aresetn1;
  wire [0:0]psreset_gate_pr_data_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_ddrmem_1_interconnect_aresetn1;
  wire [0:0]psreset_gate_pr_kernel_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_kernel_peripheral_aresetn;
  wire slowest_sync_clk_1;
  wire slowest_sync_clk_4;

  assign Op1_1 = iob_static_perst_n_out[0];
  assign aux_reset_in_1 = aux_reset_in;
  assign c0_ddr4_ui_clk_1 = c0_ddr4_ui_clk;
  assign clkwiz_kernel2_locked_slr1_1 = clkwiz_kernel2_locked_slr1;
  assign clkwiz_kernel_locked_slr1_1 = clkwiz_kernel_locked_slr1;
  assign clkwiz_sysclks_locked_slr1_1 = clkwiz_sysclks_locked_slr1;
  assign dma_pcie_axi_aclk_1 = dma_pcie_axi_aclk;
  assign ext_reset_in_1 = slice_reset_kernel_pr_Dout_slr1[0];
  assign interconnect_aresetn[0] = psreset_gate_pr_ddrmem_1_interconnect_aresetn1;
  assign pcie_user_lnk_up_slr1_1 = pcie_user_lnk_up_slr1;
  assign peripheral_aresetn[0] = psreset_gate_pr_kernel_peripheral_aresetn;
  assign psreset_gate_pr_control_interconnect_aresetn[0] = psreset_gate_pr_control_interconnect_aresetn1;
  assign slowest_sync_clk_1 = clkwiz_sysclks_clk_out2;
  assign slowest_sync_clk_4 = clkwiz_kernel2_clk_out1;
  ulp_logic_reset_op_0 logic_reset_op
       (.Op1(Op1_1),
        .Res(logic_reset_op_Res));
  ulp_psreset_gate_pr_control_0 psreset_gate_pr_control
       (.aux_reset_in(clkwiz_sysclks_locked_slr1_1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_control_interconnect_aresetn1),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_1));
  ulp_psreset_gate_pr_data_0 psreset_gate_pr_data
       (.aux_reset_in(pcie_user_lnk_up_slr1_1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_data_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(dma_pcie_axi_aclk_1));
  ulp_psreset_gate_pr_ddrmem_1_0 psreset_gate_pr_ddrmem_1
       (.aux_reset_in(aux_reset_in_1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_ddrmem_1_interconnect_aresetn1),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(c0_ddr4_ui_clk_1));
  ulp_psreset_gate_pr_kernel_0 psreset_gate_pr_kernel
       (.aux_reset_in(clkwiz_kernel_locked_slr1_1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .interconnect_aresetn(psreset_gate_pr_kernel_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(psreset_gate_pr_kernel_peripheral_aresetn),
        .slowest_sync_clk(clkwiz_kernel_clk_out1));
  ulp_psreset_gate_pr_kernel2_0 psreset_gate_pr_kernel2
       (.aux_reset_in(clkwiz_kernel2_locked_slr1_1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_1),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_4));
endmodule

module s00_couplers_imp_1Y0QJAO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [38:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [38:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [38:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [38:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [38:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [38:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [511:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [511:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [63:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [38:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [38:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [1:0]s00_regslice_to_s00_couplers_AWBURST;
  wire [3:0]s00_regslice_to_s00_couplers_AWCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_AWLEN;
  wire [0:0]s00_regslice_to_s00_couplers_AWLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire [3:0]s00_regslice_to_s00_couplers_AWQOS;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire [2:0]s00_regslice_to_s00_couplers_AWSIZE;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [511:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [511:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WLAST;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [63:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[38:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[38:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_regslice_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_regslice_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_regslice_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_regslice_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_regslice_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_regslice_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_regslice_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[38:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[38:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  ulp_s00_regslice_19 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_couplers_AWCACHE),
        .m_axi_awlen(s00_regslice_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_regslice_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_couplers_WLAST),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_7LJ24M
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [24:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [24:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [24:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [24:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [24:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [24:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [24:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [24:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [31:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [31:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [3:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[24:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[24:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[24:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[24:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  ulp_s00_regslice_22 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_ID1YD2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [24:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [24:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [24:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [24:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [24:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [24:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[24:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[24:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[24:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[24:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_U66VNK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [38:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [38:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [38:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [38:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [38:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [38:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [511:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [511:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [63:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [38:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [3:0]s00_regslice_to_s00_couplers_ARREGION;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [38:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [1:0]s00_regslice_to_s00_couplers_AWBURST;
  wire [3:0]s00_regslice_to_s00_couplers_AWCACHE;
  wire [7:0]s00_regslice_to_s00_couplers_AWLEN;
  wire [0:0]s00_regslice_to_s00_couplers_AWLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire [3:0]s00_regslice_to_s00_couplers_AWQOS;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire [3:0]s00_regslice_to_s00_couplers_AWREGION;
  wire [2:0]s00_regslice_to_s00_couplers_AWSIZE;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [511:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [511:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WLAST;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [63:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[38:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = s00_regslice_to_s00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[38:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_regslice_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_regslice_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_regslice_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_regslice_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_regslice_to_s00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = s00_regslice_to_s00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = s00_regslice_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_regslice_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[38:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[38:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  ulp_s00_regslice_20 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arregion(s00_regslice_to_s00_couplers_ARREGION),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_couplers_AWCACHE),
        .m_axi_awlen(s00_regslice_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awregion(s00_regslice_to_s00_couplers_AWREGION),
        .m_axi_awsize(s00_regslice_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_couplers_WLAST),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_YEI3CJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [0:0]s00_couplers_to_s00_regslice_ARID;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [63:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [0:0]s00_couplers_to_s00_regslice_AWID;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [0:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [511:0]s00_couplers_to_s00_regslice_RDATA;
  wire [0:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [511:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [63:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [63:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [1:0]s00_regslice_to_s00_couplers_ARBURST;
  wire [3:0]s00_regslice_to_s00_couplers_ARCACHE;
  wire [0:0]s00_regslice_to_s00_couplers_ARID;
  wire [7:0]s00_regslice_to_s00_couplers_ARLEN;
  wire [0:0]s00_regslice_to_s00_couplers_ARLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire [3:0]s00_regslice_to_s00_couplers_ARQOS;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire [2:0]s00_regslice_to_s00_couplers_ARSIZE;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [63:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [1:0]s00_regslice_to_s00_couplers_AWBURST;
  wire [3:0]s00_regslice_to_s00_couplers_AWCACHE;
  wire [0:0]s00_regslice_to_s00_couplers_AWID;
  wire [7:0]s00_regslice_to_s00_couplers_AWLEN;
  wire [0:0]s00_regslice_to_s00_couplers_AWLOCK;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire [3:0]s00_regslice_to_s00_couplers_AWQOS;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire [2:0]s00_regslice_to_s00_couplers_AWSIZE;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire [5:0]s00_regslice_to_s00_couplers_BID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [511:0]s00_regslice_to_s00_couplers_RDATA;
  wire [5:0]s00_regslice_to_s00_couplers_RID;
  wire s00_regslice_to_s00_couplers_RLAST;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [511:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WLAST;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [63:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_regslice_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_regslice_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[0] = s00_regslice_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_regslice_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_regslice_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_regslice_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_regslice_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_regslice_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_regslice_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[0] = s00_regslice_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_regslice_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_regslice_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_regslice_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_regslice_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_regslice_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[511:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BID = M_AXI_bid[5:0];
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[511:0];
  assign s00_regslice_to_s00_couplers_RID = M_AXI_rid[5:0];
  assign s00_regslice_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  ulp_s00_regslice_21 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_regslice_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_regslice_to_s00_couplers_ARCACHE),
        .m_axi_arid(s00_regslice_to_s00_couplers_ARID),
        .m_axi_arlen(s00_regslice_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_regslice_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_regslice_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_regslice_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_regslice_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_regslice_to_s00_couplers_AWCACHE),
        .m_axi_awid(s00_regslice_to_s00_couplers_AWID),
        .m_axi_awlen(s00_regslice_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_regslice_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_regslice_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_regslice_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bid(s00_regslice_to_s00_couplers_BID[0]),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rid(s00_regslice_to_s00_couplers_RID[0]),
        .m_axi_rlast(s00_regslice_to_s00_couplers_RLAST),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_regslice_to_s00_couplers_WLAST),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s01_couplers_imp_1A6BUUU
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [38:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [38:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [38:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [38:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [38:0]s01_couplers_to_s01_regslice_ARADDR;
  wire [1:0]s01_couplers_to_s01_regslice_ARBURST;
  wire [3:0]s01_couplers_to_s01_regslice_ARCACHE;
  wire [3:0]s01_couplers_to_s01_regslice_ARID;
  wire [7:0]s01_couplers_to_s01_regslice_ARLEN;
  wire [0:0]s01_couplers_to_s01_regslice_ARLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_ARPROT;
  wire [3:0]s01_couplers_to_s01_regslice_ARQOS;
  wire s01_couplers_to_s01_regslice_ARREADY;
  wire [3:0]s01_couplers_to_s01_regslice_ARREGION;
  wire [2:0]s01_couplers_to_s01_regslice_ARSIZE;
  wire s01_couplers_to_s01_regslice_ARVALID;
  wire [38:0]s01_couplers_to_s01_regslice_AWADDR;
  wire [1:0]s01_couplers_to_s01_regslice_AWBURST;
  wire [3:0]s01_couplers_to_s01_regslice_AWCACHE;
  wire [3:0]s01_couplers_to_s01_regslice_AWID;
  wire [7:0]s01_couplers_to_s01_regslice_AWLEN;
  wire [0:0]s01_couplers_to_s01_regslice_AWLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_AWPROT;
  wire [3:0]s01_couplers_to_s01_regslice_AWQOS;
  wire s01_couplers_to_s01_regslice_AWREADY;
  wire [3:0]s01_couplers_to_s01_regslice_AWREGION;
  wire [2:0]s01_couplers_to_s01_regslice_AWSIZE;
  wire s01_couplers_to_s01_regslice_AWVALID;
  wire [3:0]s01_couplers_to_s01_regslice_BID;
  wire s01_couplers_to_s01_regslice_BREADY;
  wire [1:0]s01_couplers_to_s01_regslice_BRESP;
  wire s01_couplers_to_s01_regslice_BVALID;
  wire [511:0]s01_couplers_to_s01_regslice_RDATA;
  wire [3:0]s01_couplers_to_s01_regslice_RID;
  wire s01_couplers_to_s01_regslice_RLAST;
  wire s01_couplers_to_s01_regslice_RREADY;
  wire [1:0]s01_couplers_to_s01_regslice_RRESP;
  wire s01_couplers_to_s01_regslice_RVALID;
  wire [511:0]s01_couplers_to_s01_regslice_WDATA;
  wire s01_couplers_to_s01_regslice_WLAST;
  wire s01_couplers_to_s01_regslice_WREADY;
  wire [63:0]s01_couplers_to_s01_regslice_WSTRB;
  wire s01_couplers_to_s01_regslice_WVALID;
  wire [38:0]s01_regslice_to_s01_couplers_ARADDR;
  wire [1:0]s01_regslice_to_s01_couplers_ARBURST;
  wire [3:0]s01_regslice_to_s01_couplers_ARCACHE;
  wire [3:0]s01_regslice_to_s01_couplers_ARID;
  wire [7:0]s01_regslice_to_s01_couplers_ARLEN;
  wire [0:0]s01_regslice_to_s01_couplers_ARLOCK;
  wire [2:0]s01_regslice_to_s01_couplers_ARPROT;
  wire [3:0]s01_regslice_to_s01_couplers_ARQOS;
  wire s01_regslice_to_s01_couplers_ARREADY;
  wire [2:0]s01_regslice_to_s01_couplers_ARSIZE;
  wire s01_regslice_to_s01_couplers_ARVALID;
  wire [38:0]s01_regslice_to_s01_couplers_AWADDR;
  wire [1:0]s01_regslice_to_s01_couplers_AWBURST;
  wire [3:0]s01_regslice_to_s01_couplers_AWCACHE;
  wire [3:0]s01_regslice_to_s01_couplers_AWID;
  wire [7:0]s01_regslice_to_s01_couplers_AWLEN;
  wire [0:0]s01_regslice_to_s01_couplers_AWLOCK;
  wire [2:0]s01_regslice_to_s01_couplers_AWPROT;
  wire [3:0]s01_regslice_to_s01_couplers_AWQOS;
  wire s01_regslice_to_s01_couplers_AWREADY;
  wire [2:0]s01_regslice_to_s01_couplers_AWSIZE;
  wire s01_regslice_to_s01_couplers_AWVALID;
  wire [5:0]s01_regslice_to_s01_couplers_BID;
  wire s01_regslice_to_s01_couplers_BREADY;
  wire [1:0]s01_regslice_to_s01_couplers_BRESP;
  wire s01_regslice_to_s01_couplers_BVALID;
  wire [511:0]s01_regslice_to_s01_couplers_RDATA;
  wire [5:0]s01_regslice_to_s01_couplers_RID;
  wire s01_regslice_to_s01_couplers_RLAST;
  wire s01_regslice_to_s01_couplers_RREADY;
  wire [1:0]s01_regslice_to_s01_couplers_RRESP;
  wire s01_regslice_to_s01_couplers_RVALID;
  wire [511:0]s01_regslice_to_s01_couplers_WDATA;
  wire s01_regslice_to_s01_couplers_WLAST;
  wire s01_regslice_to_s01_couplers_WREADY;
  wire [63:0]s01_regslice_to_s01_couplers_WSTRB;
  wire s01_regslice_to_s01_couplers_WVALID;

  assign M_AXI_araddr[38:0] = s01_regslice_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_regslice_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_regslice_to_s01_couplers_ARCACHE;
  assign M_AXI_arid[3:0] = s01_regslice_to_s01_couplers_ARID;
  assign M_AXI_arlen[7:0] = s01_regslice_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_regslice_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_regslice_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_regslice_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_regslice_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = s01_regslice_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[38:0] = s01_regslice_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_regslice_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_regslice_to_s01_couplers_AWCACHE;
  assign M_AXI_awid[3:0] = s01_regslice_to_s01_couplers_AWID;
  assign M_AXI_awlen[7:0] = s01_regslice_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_regslice_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_regslice_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_regslice_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_regslice_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = s01_regslice_to_s01_couplers_AWVALID;
  assign M_AXI_bready = s01_regslice_to_s01_couplers_BREADY;
  assign M_AXI_rready = s01_regslice_to_s01_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s01_regslice_to_s01_couplers_WDATA;
  assign M_AXI_wlast = s01_regslice_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s01_regslice_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = s01_regslice_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_s01_regslice_ARREADY;
  assign S_AXI_awready = s01_couplers_to_s01_regslice_AWREADY;
  assign S_AXI_bid[3:0] = s01_couplers_to_s01_regslice_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_regslice_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s01_couplers_to_s01_regslice_RDATA;
  assign S_AXI_rid[3:0] = s01_couplers_to_s01_regslice_RID;
  assign S_AXI_rlast = s01_couplers_to_s01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_regslice_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_regslice_RVALID;
  assign S_AXI_wready = s01_couplers_to_s01_regslice_WREADY;
  assign s01_couplers_to_s01_regslice_ARADDR = S_AXI_araddr[38:0];
  assign s01_couplers_to_s01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_regslice_ARID = S_AXI_arid[3:0];
  assign s01_couplers_to_s01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_regslice_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_s01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s01_couplers_to_s01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_regslice_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_regslice_AWADDR = S_AXI_awaddr[38:0];
  assign s01_couplers_to_s01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_regslice_AWID = S_AXI_awid[3:0];
  assign s01_couplers_to_s01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_regslice_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_s01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s01_couplers_to_s01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_regslice_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_regslice_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_regslice_RREADY = S_AXI_rready;
  assign s01_couplers_to_s01_regslice_WDATA = S_AXI_wdata[511:0];
  assign s01_couplers_to_s01_regslice_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s01_couplers_to_s01_regslice_WVALID = S_AXI_wvalid;
  assign s01_regslice_to_s01_couplers_ARREADY = M_AXI_arready;
  assign s01_regslice_to_s01_couplers_AWREADY = M_AXI_awready;
  assign s01_regslice_to_s01_couplers_BID = M_AXI_bid[5:0];
  assign s01_regslice_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_regslice_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign s01_regslice_to_s01_couplers_RDATA = M_AXI_rdata[511:0];
  assign s01_regslice_to_s01_couplers_RID = M_AXI_rid[5:0];
  assign s01_regslice_to_s01_couplers_RLAST = M_AXI_rlast;
  assign s01_regslice_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_regslice_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_regslice_to_s01_couplers_WREADY = M_AXI_wready;
  ulp_s01_regslice_2 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s01_regslice_to_s01_couplers_ARADDR),
        .m_axi_arburst(s01_regslice_to_s01_couplers_ARBURST),
        .m_axi_arcache(s01_regslice_to_s01_couplers_ARCACHE),
        .m_axi_arid(s01_regslice_to_s01_couplers_ARID),
        .m_axi_arlen(s01_regslice_to_s01_couplers_ARLEN),
        .m_axi_arlock(s01_regslice_to_s01_couplers_ARLOCK),
        .m_axi_arprot(s01_regslice_to_s01_couplers_ARPROT),
        .m_axi_arqos(s01_regslice_to_s01_couplers_ARQOS),
        .m_axi_arready(s01_regslice_to_s01_couplers_ARREADY),
        .m_axi_arsize(s01_regslice_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(s01_regslice_to_s01_couplers_ARVALID),
        .m_axi_awaddr(s01_regslice_to_s01_couplers_AWADDR),
        .m_axi_awburst(s01_regslice_to_s01_couplers_AWBURST),
        .m_axi_awcache(s01_regslice_to_s01_couplers_AWCACHE),
        .m_axi_awid(s01_regslice_to_s01_couplers_AWID),
        .m_axi_awlen(s01_regslice_to_s01_couplers_AWLEN),
        .m_axi_awlock(s01_regslice_to_s01_couplers_AWLOCK),
        .m_axi_awprot(s01_regslice_to_s01_couplers_AWPROT),
        .m_axi_awqos(s01_regslice_to_s01_couplers_AWQOS),
        .m_axi_awready(s01_regslice_to_s01_couplers_AWREADY),
        .m_axi_awsize(s01_regslice_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(s01_regslice_to_s01_couplers_AWVALID),
        .m_axi_bid(s01_regslice_to_s01_couplers_BID[3:0]),
        .m_axi_bready(s01_regslice_to_s01_couplers_BREADY),
        .m_axi_bresp(s01_regslice_to_s01_couplers_BRESP),
        .m_axi_bvalid(s01_regslice_to_s01_couplers_BVALID),
        .m_axi_rdata(s01_regslice_to_s01_couplers_RDATA),
        .m_axi_rid(s01_regslice_to_s01_couplers_RID[3:0]),
        .m_axi_rlast(s01_regslice_to_s01_couplers_RLAST),
        .m_axi_rready(s01_regslice_to_s01_couplers_RREADY),
        .m_axi_rresp(s01_regslice_to_s01_couplers_RRESP),
        .m_axi_rvalid(s01_regslice_to_s01_couplers_RVALID),
        .m_axi_wdata(s01_regslice_to_s01_couplers_WDATA),
        .m_axi_wlast(s01_regslice_to_s01_couplers_WLAST),
        .m_axi_wready(s01_regslice_to_s01_couplers_WREADY),
        .m_axi_wstrb(s01_regslice_to_s01_couplers_WSTRB),
        .m_axi_wvalid(s01_regslice_to_s01_couplers_WVALID),
        .s_axi_araddr(s01_couplers_to_s01_regslice_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_regslice_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_regslice_ARCACHE),
        .s_axi_arid(s01_couplers_to_s01_regslice_ARID),
        .s_axi_arlen(s01_couplers_to_s01_regslice_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_regslice_ARLOCK),
        .s_axi_arprot(s01_couplers_to_s01_regslice_ARPROT),
        .s_axi_arqos(s01_couplers_to_s01_regslice_ARQOS),
        .s_axi_arready(s01_couplers_to_s01_regslice_ARREADY),
        .s_axi_arregion(s01_couplers_to_s01_regslice_ARREGION),
        .s_axi_arsize(s01_couplers_to_s01_regslice_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_regslice_ARVALID),
        .s_axi_awaddr(s01_couplers_to_s01_regslice_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_regslice_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_regslice_AWCACHE),
        .s_axi_awid(s01_couplers_to_s01_regslice_AWID),
        .s_axi_awlen(s01_couplers_to_s01_regslice_AWLEN),
        .s_axi_awlock(s01_couplers_to_s01_regslice_AWLOCK),
        .s_axi_awprot(s01_couplers_to_s01_regslice_AWPROT),
        .s_axi_awqos(s01_couplers_to_s01_regslice_AWQOS),
        .s_axi_awready(s01_couplers_to_s01_regslice_AWREADY),
        .s_axi_awregion(s01_couplers_to_s01_regslice_AWREGION),
        .s_axi_awsize(s01_couplers_to_s01_regslice_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_regslice_AWVALID),
        .s_axi_bid(s01_couplers_to_s01_regslice_BID),
        .s_axi_bready(s01_couplers_to_s01_regslice_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_regslice_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_regslice_BVALID),
        .s_axi_rdata(s01_couplers_to_s01_regslice_RDATA),
        .s_axi_rid(s01_couplers_to_s01_regslice_RID),
        .s_axi_rlast(s01_couplers_to_s01_regslice_RLAST),
        .s_axi_rready(s01_couplers_to_s01_regslice_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_regslice_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_regslice_RVALID),
        .s_axi_wdata(s01_couplers_to_s01_regslice_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_regslice_WLAST),
        .s_axi_wready(s01_couplers_to_s01_regslice_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_regslice_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_regslice_WVALID));
endmodule

module s01_couplers_imp_9DN451
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_cc_df_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_cc_df_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_cc_df_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_cc_df_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_cc_df_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_cc_df_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_cc_df_to_s01_couplers_ARQOS;
  wire auto_us_cc_df_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_cc_df_to_s01_couplers_ARSIZE;
  wire auto_us_cc_df_to_s01_couplers_ARVALID;
  wire [63:0]auto_us_cc_df_to_s01_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s01_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s01_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s01_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s01_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s01_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s01_couplers_AWQOS;
  wire auto_us_cc_df_to_s01_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s01_couplers_AWSIZE;
  wire auto_us_cc_df_to_s01_couplers_AWVALID;
  wire auto_us_cc_df_to_s01_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s01_couplers_BRESP;
  wire auto_us_cc_df_to_s01_couplers_BVALID;
  wire [511:0]auto_us_cc_df_to_s01_couplers_RDATA;
  wire auto_us_cc_df_to_s01_couplers_RLAST;
  wire auto_us_cc_df_to_s01_couplers_RREADY;
  wire [1:0]auto_us_cc_df_to_s01_couplers_RRESP;
  wire auto_us_cc_df_to_s01_couplers_RVALID;
  wire [511:0]auto_us_cc_df_to_s01_couplers_WDATA;
  wire auto_us_cc_df_to_s01_couplers_WLAST;
  wire auto_us_cc_df_to_s01_couplers_WREADY;
  wire [63:0]auto_us_cc_df_to_s01_couplers_WSTRB;
  wire auto_us_cc_df_to_s01_couplers_WVALID;
  wire [63:0]s01_couplers_to_s01_regslice_ARADDR;
  wire [1:0]s01_couplers_to_s01_regslice_ARBURST;
  wire [3:0]s01_couplers_to_s01_regslice_ARCACHE;
  wire [0:0]s01_couplers_to_s01_regslice_ARID;
  wire [7:0]s01_couplers_to_s01_regslice_ARLEN;
  wire [1:0]s01_couplers_to_s01_regslice_ARLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_ARPROT;
  wire [3:0]s01_couplers_to_s01_regslice_ARQOS;
  wire s01_couplers_to_s01_regslice_ARREADY;
  wire [3:0]s01_couplers_to_s01_regslice_ARREGION;
  wire [2:0]s01_couplers_to_s01_regslice_ARSIZE;
  wire s01_couplers_to_s01_regslice_ARVALID;
  wire [63:0]s01_couplers_to_s01_regslice_AWADDR;
  wire [1:0]s01_couplers_to_s01_regslice_AWBURST;
  wire [3:0]s01_couplers_to_s01_regslice_AWCACHE;
  wire [0:0]s01_couplers_to_s01_regslice_AWID;
  wire [7:0]s01_couplers_to_s01_regslice_AWLEN;
  wire [1:0]s01_couplers_to_s01_regslice_AWLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_AWPROT;
  wire [3:0]s01_couplers_to_s01_regslice_AWQOS;
  wire s01_couplers_to_s01_regslice_AWREADY;
  wire [3:0]s01_couplers_to_s01_regslice_AWREGION;
  wire [2:0]s01_couplers_to_s01_regslice_AWSIZE;
  wire s01_couplers_to_s01_regslice_AWVALID;
  wire [0:0]s01_couplers_to_s01_regslice_BID;
  wire s01_couplers_to_s01_regslice_BREADY;
  wire [1:0]s01_couplers_to_s01_regslice_BRESP;
  wire s01_couplers_to_s01_regslice_BVALID;
  wire [31:0]s01_couplers_to_s01_regslice_RDATA;
  wire [0:0]s01_couplers_to_s01_regslice_RID;
  wire s01_couplers_to_s01_regslice_RLAST;
  wire s01_couplers_to_s01_regslice_RREADY;
  wire [1:0]s01_couplers_to_s01_regslice_RRESP;
  wire s01_couplers_to_s01_regslice_RVALID;
  wire [31:0]s01_couplers_to_s01_regslice_WDATA;
  wire s01_couplers_to_s01_regslice_WLAST;
  wire s01_couplers_to_s01_regslice_WREADY;
  wire [3:0]s01_couplers_to_s01_regslice_WSTRB;
  wire s01_couplers_to_s01_regslice_WVALID;
  wire [63:0]s01_regslice_to_auto_us_cc_df_ARADDR;
  wire [1:0]s01_regslice_to_auto_us_cc_df_ARBURST;
  wire [3:0]s01_regslice_to_auto_us_cc_df_ARCACHE;
  wire [0:0]s01_regslice_to_auto_us_cc_df_ARID;
  wire [7:0]s01_regslice_to_auto_us_cc_df_ARLEN;
  wire [0:0]s01_regslice_to_auto_us_cc_df_ARLOCK;
  wire [2:0]s01_regslice_to_auto_us_cc_df_ARPROT;
  wire [3:0]s01_regslice_to_auto_us_cc_df_ARQOS;
  wire s01_regslice_to_auto_us_cc_df_ARREADY;
  wire [3:0]s01_regslice_to_auto_us_cc_df_ARREGION;
  wire [2:0]s01_regslice_to_auto_us_cc_df_ARSIZE;
  wire s01_regslice_to_auto_us_cc_df_ARVALID;
  wire [63:0]s01_regslice_to_auto_us_cc_df_AWADDR;
  wire [1:0]s01_regslice_to_auto_us_cc_df_AWBURST;
  wire [3:0]s01_regslice_to_auto_us_cc_df_AWCACHE;
  wire [0:0]s01_regslice_to_auto_us_cc_df_AWID;
  wire [7:0]s01_regslice_to_auto_us_cc_df_AWLEN;
  wire [0:0]s01_regslice_to_auto_us_cc_df_AWLOCK;
  wire [2:0]s01_regslice_to_auto_us_cc_df_AWPROT;
  wire [3:0]s01_regslice_to_auto_us_cc_df_AWQOS;
  wire s01_regslice_to_auto_us_cc_df_AWREADY;
  wire [3:0]s01_regslice_to_auto_us_cc_df_AWREGION;
  wire [2:0]s01_regslice_to_auto_us_cc_df_AWSIZE;
  wire s01_regslice_to_auto_us_cc_df_AWVALID;
  wire [0:0]s01_regslice_to_auto_us_cc_df_BID;
  wire s01_regslice_to_auto_us_cc_df_BREADY;
  wire [1:0]s01_regslice_to_auto_us_cc_df_BRESP;
  wire s01_regslice_to_auto_us_cc_df_BVALID;
  wire [31:0]s01_regslice_to_auto_us_cc_df_RDATA;
  wire [0:0]s01_regslice_to_auto_us_cc_df_RID;
  wire s01_regslice_to_auto_us_cc_df_RLAST;
  wire s01_regslice_to_auto_us_cc_df_RREADY;
  wire [1:0]s01_regslice_to_auto_us_cc_df_RRESP;
  wire s01_regslice_to_auto_us_cc_df_RVALID;
  wire [31:0]s01_regslice_to_auto_us_cc_df_WDATA;
  wire s01_regslice_to_auto_us_cc_df_WLAST;
  wire s01_regslice_to_auto_us_cc_df_WREADY;
  wire [3:0]s01_regslice_to_auto_us_cc_df_WSTRB;
  wire s01_regslice_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[63:0] = auto_us_cc_df_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_cc_df_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_cc_df_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_cc_df_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_cc_df_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_cc_df_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_cc_df_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_cc_df_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_cc_df_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = auto_us_cc_df_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_us_cc_df_to_s01_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_us_cc_df_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_us_cc_df_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_s01_regslice_ARREADY;
  assign S_AXI_awready = s01_couplers_to_s01_regslice_AWREADY;
  assign S_AXI_bid[0] = s01_couplers_to_s01_regslice_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_regslice_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_s01_regslice_RDATA;
  assign S_AXI_rid[0] = s01_couplers_to_s01_regslice_RID;
  assign S_AXI_rlast = s01_couplers_to_s01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_regslice_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_regslice_RVALID;
  assign S_AXI_wready = s01_couplers_to_s01_regslice_WREADY;
  assign auto_us_cc_df_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_cc_df_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s01_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_us_cc_df_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_cc_df_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_cc_df_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_cc_df_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_s01_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s01_couplers_to_s01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_regslice_ARID = S_AXI_arid[0];
  assign s01_couplers_to_s01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s01_couplers_to_s01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s01_couplers_to_s01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_regslice_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s01_couplers_to_s01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_regslice_AWID = S_AXI_awid[0];
  assign s01_couplers_to_s01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s01_couplers_to_s01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s01_couplers_to_s01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_regslice_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_regslice_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_regslice_RREADY = S_AXI_rready;
  assign s01_couplers_to_s01_regslice_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_s01_regslice_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_s01_regslice_WVALID = S_AXI_wvalid;
  ulp_auto_us_cc_df_0 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_us_cc_df_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_cc_df_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_cc_df_to_s01_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_us_cc_df_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_cc_df_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_cc_df_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_cc_df_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_cc_df_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_cc_df_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_cc_df_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_us_cc_df_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_us_cc_df_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_cc_df_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_cc_df_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_cc_df_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_cc_df_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_us_cc_df_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s01_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_regslice_to_auto_us_cc_df_ARADDR),
        .s_axi_arburst(s01_regslice_to_auto_us_cc_df_ARBURST),
        .s_axi_arcache(s01_regslice_to_auto_us_cc_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s01_regslice_to_auto_us_cc_df_ARID),
        .s_axi_arlen(s01_regslice_to_auto_us_cc_df_ARLEN),
        .s_axi_arlock(s01_regslice_to_auto_us_cc_df_ARLOCK),
        .s_axi_arprot(s01_regslice_to_auto_us_cc_df_ARPROT),
        .s_axi_arqos(s01_regslice_to_auto_us_cc_df_ARQOS),
        .s_axi_arready(s01_regslice_to_auto_us_cc_df_ARREADY),
        .s_axi_arregion(s01_regslice_to_auto_us_cc_df_ARREGION),
        .s_axi_arsize(s01_regslice_to_auto_us_cc_df_ARSIZE),
        .s_axi_arvalid(s01_regslice_to_auto_us_cc_df_ARVALID),
        .s_axi_awaddr(s01_regslice_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s01_regslice_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s01_regslice_to_auto_us_cc_df_AWCACHE),
        .s_axi_awid(s01_regslice_to_auto_us_cc_df_AWID),
        .s_axi_awlen(s01_regslice_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(s01_regslice_to_auto_us_cc_df_AWLOCK),
        .s_axi_awprot(s01_regslice_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos(s01_regslice_to_auto_us_cc_df_AWQOS),
        .s_axi_awready(s01_regslice_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion(s01_regslice_to_auto_us_cc_df_AWREGION),
        .s_axi_awsize(s01_regslice_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s01_regslice_to_auto_us_cc_df_AWVALID),
        .s_axi_bid(s01_regslice_to_auto_us_cc_df_BID),
        .s_axi_bready(s01_regslice_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s01_regslice_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s01_regslice_to_auto_us_cc_df_BVALID),
        .s_axi_rdata(s01_regslice_to_auto_us_cc_df_RDATA),
        .s_axi_rid(s01_regslice_to_auto_us_cc_df_RID),
        .s_axi_rlast(s01_regslice_to_auto_us_cc_df_RLAST),
        .s_axi_rready(s01_regslice_to_auto_us_cc_df_RREADY),
        .s_axi_rresp(s01_regslice_to_auto_us_cc_df_RRESP),
        .s_axi_rvalid(s01_regslice_to_auto_us_cc_df_RVALID),
        .s_axi_wdata(s01_regslice_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s01_regslice_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s01_regslice_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s01_regslice_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s01_regslice_to_auto_us_cc_df_WVALID));
  ulp_s01_regslice_1 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s01_regslice_to_auto_us_cc_df_ARADDR),
        .m_axi_arburst(s01_regslice_to_auto_us_cc_df_ARBURST),
        .m_axi_arcache(s01_regslice_to_auto_us_cc_df_ARCACHE),
        .m_axi_arid(s01_regslice_to_auto_us_cc_df_ARID),
        .m_axi_arlen(s01_regslice_to_auto_us_cc_df_ARLEN),
        .m_axi_arlock(s01_regslice_to_auto_us_cc_df_ARLOCK),
        .m_axi_arprot(s01_regslice_to_auto_us_cc_df_ARPROT),
        .m_axi_arqos(s01_regslice_to_auto_us_cc_df_ARQOS),
        .m_axi_arready(s01_regslice_to_auto_us_cc_df_ARREADY),
        .m_axi_arregion(s01_regslice_to_auto_us_cc_df_ARREGION),
        .m_axi_arsize(s01_regslice_to_auto_us_cc_df_ARSIZE),
        .m_axi_arvalid(s01_regslice_to_auto_us_cc_df_ARVALID),
        .m_axi_awaddr(s01_regslice_to_auto_us_cc_df_AWADDR),
        .m_axi_awburst(s01_regslice_to_auto_us_cc_df_AWBURST),
        .m_axi_awcache(s01_regslice_to_auto_us_cc_df_AWCACHE),
        .m_axi_awid(s01_regslice_to_auto_us_cc_df_AWID),
        .m_axi_awlen(s01_regslice_to_auto_us_cc_df_AWLEN),
        .m_axi_awlock(s01_regslice_to_auto_us_cc_df_AWLOCK),
        .m_axi_awprot(s01_regslice_to_auto_us_cc_df_AWPROT),
        .m_axi_awqos(s01_regslice_to_auto_us_cc_df_AWQOS),
        .m_axi_awready(s01_regslice_to_auto_us_cc_df_AWREADY),
        .m_axi_awregion(s01_regslice_to_auto_us_cc_df_AWREGION),
        .m_axi_awsize(s01_regslice_to_auto_us_cc_df_AWSIZE),
        .m_axi_awvalid(s01_regslice_to_auto_us_cc_df_AWVALID),
        .m_axi_bid(s01_regslice_to_auto_us_cc_df_BID),
        .m_axi_bready(s01_regslice_to_auto_us_cc_df_BREADY),
        .m_axi_bresp(s01_regslice_to_auto_us_cc_df_BRESP),
        .m_axi_bvalid(s01_regslice_to_auto_us_cc_df_BVALID),
        .m_axi_rdata(s01_regslice_to_auto_us_cc_df_RDATA),
        .m_axi_rid(s01_regslice_to_auto_us_cc_df_RID),
        .m_axi_rlast(s01_regslice_to_auto_us_cc_df_RLAST),
        .m_axi_rready(s01_regslice_to_auto_us_cc_df_RREADY),
        .m_axi_rresp(s01_regslice_to_auto_us_cc_df_RRESP),
        .m_axi_rvalid(s01_regslice_to_auto_us_cc_df_RVALID),
        .m_axi_wdata(s01_regslice_to_auto_us_cc_df_WDATA),
        .m_axi_wlast(s01_regslice_to_auto_us_cc_df_WLAST),
        .m_axi_wready(s01_regslice_to_auto_us_cc_df_WREADY),
        .m_axi_wstrb(s01_regslice_to_auto_us_cc_df_WSTRB),
        .m_axi_wvalid(s01_regslice_to_auto_us_cc_df_WVALID),
        .s_axi_araddr(s01_couplers_to_s01_regslice_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_regslice_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_regslice_ARCACHE),
        .s_axi_arid(s01_couplers_to_s01_regslice_ARID),
        .s_axi_arlen(s01_couplers_to_s01_regslice_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_regslice_ARLOCK[0]),
        .s_axi_arprot(s01_couplers_to_s01_regslice_ARPROT),
        .s_axi_arqos(s01_couplers_to_s01_regslice_ARQOS),
        .s_axi_arready(s01_couplers_to_s01_regslice_ARREADY),
        .s_axi_arregion(s01_couplers_to_s01_regslice_ARREGION),
        .s_axi_arsize(s01_couplers_to_s01_regslice_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_regslice_ARVALID),
        .s_axi_awaddr(s01_couplers_to_s01_regslice_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_regslice_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_regslice_AWCACHE),
        .s_axi_awid(s01_couplers_to_s01_regslice_AWID),
        .s_axi_awlen(s01_couplers_to_s01_regslice_AWLEN),
        .s_axi_awlock(s01_couplers_to_s01_regslice_AWLOCK[0]),
        .s_axi_awprot(s01_couplers_to_s01_regslice_AWPROT),
        .s_axi_awqos(s01_couplers_to_s01_regslice_AWQOS),
        .s_axi_awready(s01_couplers_to_s01_regslice_AWREADY),
        .s_axi_awregion(s01_couplers_to_s01_regslice_AWREGION),
        .s_axi_awsize(s01_couplers_to_s01_regslice_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_regslice_AWVALID),
        .s_axi_bid(s01_couplers_to_s01_regslice_BID),
        .s_axi_bready(s01_couplers_to_s01_regslice_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_regslice_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_regslice_BVALID),
        .s_axi_rdata(s01_couplers_to_s01_regslice_RDATA),
        .s_axi_rid(s01_couplers_to_s01_regslice_RID),
        .s_axi_rlast(s01_couplers_to_s01_regslice_RLAST),
        .s_axi_rready(s01_couplers_to_s01_regslice_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_regslice_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_regslice_RVALID),
        .s_axi_wdata(s01_couplers_to_s01_regslice_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_regslice_WLAST),
        .s_axi_wready(s01_couplers_to_s01_regslice_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_regslice_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_regslice_WVALID));
endmodule

module s02_couplers_imp_7O094O
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [38:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [38:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [38:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [38:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [38:0]s02_couplers_to_s02_regslice_ARADDR;
  wire [1:0]s02_couplers_to_s02_regslice_ARBURST;
  wire [3:0]s02_couplers_to_s02_regslice_ARCACHE;
  wire [7:0]s02_couplers_to_s02_regslice_ARLEN;
  wire [0:0]s02_couplers_to_s02_regslice_ARLOCK;
  wire [2:0]s02_couplers_to_s02_regslice_ARPROT;
  wire [3:0]s02_couplers_to_s02_regslice_ARQOS;
  wire s02_couplers_to_s02_regslice_ARREADY;
  wire [3:0]s02_couplers_to_s02_regslice_ARREGION;
  wire [2:0]s02_couplers_to_s02_regslice_ARSIZE;
  wire s02_couplers_to_s02_regslice_ARVALID;
  wire [38:0]s02_couplers_to_s02_regslice_AWADDR;
  wire [1:0]s02_couplers_to_s02_regslice_AWBURST;
  wire [3:0]s02_couplers_to_s02_regslice_AWCACHE;
  wire [7:0]s02_couplers_to_s02_regslice_AWLEN;
  wire [0:0]s02_couplers_to_s02_regslice_AWLOCK;
  wire [2:0]s02_couplers_to_s02_regslice_AWPROT;
  wire [3:0]s02_couplers_to_s02_regslice_AWQOS;
  wire s02_couplers_to_s02_regslice_AWREADY;
  wire [3:0]s02_couplers_to_s02_regslice_AWREGION;
  wire [2:0]s02_couplers_to_s02_regslice_AWSIZE;
  wire s02_couplers_to_s02_regslice_AWVALID;
  wire s02_couplers_to_s02_regslice_BREADY;
  wire [1:0]s02_couplers_to_s02_regslice_BRESP;
  wire s02_couplers_to_s02_regslice_BVALID;
  wire [511:0]s02_couplers_to_s02_regslice_RDATA;
  wire s02_couplers_to_s02_regslice_RLAST;
  wire s02_couplers_to_s02_regslice_RREADY;
  wire [1:0]s02_couplers_to_s02_regslice_RRESP;
  wire s02_couplers_to_s02_regslice_RVALID;
  wire [511:0]s02_couplers_to_s02_regslice_WDATA;
  wire s02_couplers_to_s02_regslice_WLAST;
  wire s02_couplers_to_s02_regslice_WREADY;
  wire [63:0]s02_couplers_to_s02_regslice_WSTRB;
  wire s02_couplers_to_s02_regslice_WVALID;
  wire [38:0]s02_regslice_to_s02_couplers_ARADDR;
  wire [1:0]s02_regslice_to_s02_couplers_ARBURST;
  wire [3:0]s02_regslice_to_s02_couplers_ARCACHE;
  wire [7:0]s02_regslice_to_s02_couplers_ARLEN;
  wire [0:0]s02_regslice_to_s02_couplers_ARLOCK;
  wire [2:0]s02_regslice_to_s02_couplers_ARPROT;
  wire [3:0]s02_regslice_to_s02_couplers_ARQOS;
  wire s02_regslice_to_s02_couplers_ARREADY;
  wire [2:0]s02_regslice_to_s02_couplers_ARSIZE;
  wire s02_regslice_to_s02_couplers_ARVALID;
  wire [38:0]s02_regslice_to_s02_couplers_AWADDR;
  wire [1:0]s02_regslice_to_s02_couplers_AWBURST;
  wire [3:0]s02_regslice_to_s02_couplers_AWCACHE;
  wire [7:0]s02_regslice_to_s02_couplers_AWLEN;
  wire [0:0]s02_regslice_to_s02_couplers_AWLOCK;
  wire [2:0]s02_regslice_to_s02_couplers_AWPROT;
  wire [3:0]s02_regslice_to_s02_couplers_AWQOS;
  wire s02_regslice_to_s02_couplers_AWREADY;
  wire [2:0]s02_regslice_to_s02_couplers_AWSIZE;
  wire s02_regslice_to_s02_couplers_AWVALID;
  wire s02_regslice_to_s02_couplers_BREADY;
  wire [1:0]s02_regslice_to_s02_couplers_BRESP;
  wire s02_regslice_to_s02_couplers_BVALID;
  wire [511:0]s02_regslice_to_s02_couplers_RDATA;
  wire s02_regslice_to_s02_couplers_RLAST;
  wire s02_regslice_to_s02_couplers_RREADY;
  wire [1:0]s02_regslice_to_s02_couplers_RRESP;
  wire s02_regslice_to_s02_couplers_RVALID;
  wire [511:0]s02_regslice_to_s02_couplers_WDATA;
  wire s02_regslice_to_s02_couplers_WLAST;
  wire s02_regslice_to_s02_couplers_WREADY;
  wire [63:0]s02_regslice_to_s02_couplers_WSTRB;
  wire s02_regslice_to_s02_couplers_WVALID;

  assign M_AXI_araddr[38:0] = s02_regslice_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s02_regslice_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s02_regslice_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s02_regslice_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = s02_regslice_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s02_regslice_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s02_regslice_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s02_regslice_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = s02_regslice_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[38:0] = s02_regslice_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s02_regslice_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s02_regslice_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s02_regslice_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = s02_regslice_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s02_regslice_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s02_regslice_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s02_regslice_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = s02_regslice_to_s02_couplers_AWVALID;
  assign M_AXI_bready = s02_regslice_to_s02_couplers_BREADY;
  assign M_AXI_rready = s02_regslice_to_s02_couplers_RREADY;
  assign M_AXI_wdata[511:0] = s02_regslice_to_s02_couplers_WDATA;
  assign M_AXI_wlast = s02_regslice_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = s02_regslice_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = s02_regslice_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s02_couplers_to_s02_regslice_ARREADY;
  assign S_AXI_awready = s02_couplers_to_s02_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_s02_regslice_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_s02_regslice_BVALID;
  assign S_AXI_rdata[511:0] = s02_couplers_to_s02_regslice_RDATA;
  assign S_AXI_rlast = s02_couplers_to_s02_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_s02_regslice_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_s02_regslice_RVALID;
  assign S_AXI_wready = s02_couplers_to_s02_regslice_WREADY;
  assign s02_couplers_to_s02_regslice_ARADDR = S_AXI_araddr[38:0];
  assign s02_couplers_to_s02_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_s02_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_s02_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_s02_regslice_ARLOCK = S_AXI_arlock[0];
  assign s02_couplers_to_s02_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_s02_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_s02_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s02_couplers_to_s02_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_s02_regslice_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_s02_regslice_AWADDR = S_AXI_awaddr[38:0];
  assign s02_couplers_to_s02_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_s02_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_s02_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_s02_regslice_AWLOCK = S_AXI_awlock[0];
  assign s02_couplers_to_s02_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_s02_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s02_couplers_to_s02_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s02_couplers_to_s02_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_s02_regslice_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_s02_regslice_BREADY = S_AXI_bready;
  assign s02_couplers_to_s02_regslice_RREADY = S_AXI_rready;
  assign s02_couplers_to_s02_regslice_WDATA = S_AXI_wdata[511:0];
  assign s02_couplers_to_s02_regslice_WLAST = S_AXI_wlast;
  assign s02_couplers_to_s02_regslice_WSTRB = S_AXI_wstrb[63:0];
  assign s02_couplers_to_s02_regslice_WVALID = S_AXI_wvalid;
  assign s02_regslice_to_s02_couplers_ARREADY = M_AXI_arready;
  assign s02_regslice_to_s02_couplers_AWREADY = M_AXI_awready;
  assign s02_regslice_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign s02_regslice_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign s02_regslice_to_s02_couplers_RDATA = M_AXI_rdata[511:0];
  assign s02_regslice_to_s02_couplers_RLAST = M_AXI_rlast;
  assign s02_regslice_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign s02_regslice_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign s02_regslice_to_s02_couplers_WREADY = M_AXI_wready;
  ulp_s02_regslice_0 s02_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s02_regslice_to_s02_couplers_ARADDR),
        .m_axi_arburst(s02_regslice_to_s02_couplers_ARBURST),
        .m_axi_arcache(s02_regslice_to_s02_couplers_ARCACHE),
        .m_axi_arlen(s02_regslice_to_s02_couplers_ARLEN),
        .m_axi_arlock(s02_regslice_to_s02_couplers_ARLOCK),
        .m_axi_arprot(s02_regslice_to_s02_couplers_ARPROT),
        .m_axi_arqos(s02_regslice_to_s02_couplers_ARQOS),
        .m_axi_arready(s02_regslice_to_s02_couplers_ARREADY),
        .m_axi_arsize(s02_regslice_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(s02_regslice_to_s02_couplers_ARVALID),
        .m_axi_awaddr(s02_regslice_to_s02_couplers_AWADDR),
        .m_axi_awburst(s02_regslice_to_s02_couplers_AWBURST),
        .m_axi_awcache(s02_regslice_to_s02_couplers_AWCACHE),
        .m_axi_awlen(s02_regslice_to_s02_couplers_AWLEN),
        .m_axi_awlock(s02_regslice_to_s02_couplers_AWLOCK),
        .m_axi_awprot(s02_regslice_to_s02_couplers_AWPROT),
        .m_axi_awqos(s02_regslice_to_s02_couplers_AWQOS),
        .m_axi_awready(s02_regslice_to_s02_couplers_AWREADY),
        .m_axi_awsize(s02_regslice_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(s02_regslice_to_s02_couplers_AWVALID),
        .m_axi_bready(s02_regslice_to_s02_couplers_BREADY),
        .m_axi_bresp(s02_regslice_to_s02_couplers_BRESP),
        .m_axi_bvalid(s02_regslice_to_s02_couplers_BVALID),
        .m_axi_rdata(s02_regslice_to_s02_couplers_RDATA),
        .m_axi_rlast(s02_regslice_to_s02_couplers_RLAST),
        .m_axi_rready(s02_regslice_to_s02_couplers_RREADY),
        .m_axi_rresp(s02_regslice_to_s02_couplers_RRESP),
        .m_axi_rvalid(s02_regslice_to_s02_couplers_RVALID),
        .m_axi_wdata(s02_regslice_to_s02_couplers_WDATA),
        .m_axi_wlast(s02_regslice_to_s02_couplers_WLAST),
        .m_axi_wready(s02_regslice_to_s02_couplers_WREADY),
        .m_axi_wstrb(s02_regslice_to_s02_couplers_WSTRB),
        .m_axi_wvalid(s02_regslice_to_s02_couplers_WVALID),
        .s_axi_araddr(s02_couplers_to_s02_regslice_ARADDR),
        .s_axi_arburst(s02_couplers_to_s02_regslice_ARBURST),
        .s_axi_arcache(s02_couplers_to_s02_regslice_ARCACHE),
        .s_axi_arlen(s02_couplers_to_s02_regslice_ARLEN),
        .s_axi_arlock(s02_couplers_to_s02_regslice_ARLOCK),
        .s_axi_arprot(s02_couplers_to_s02_regslice_ARPROT),
        .s_axi_arqos(s02_couplers_to_s02_regslice_ARQOS),
        .s_axi_arready(s02_couplers_to_s02_regslice_ARREADY),
        .s_axi_arregion(s02_couplers_to_s02_regslice_ARREGION),
        .s_axi_arsize(s02_couplers_to_s02_regslice_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_s02_regslice_ARVALID),
        .s_axi_awaddr(s02_couplers_to_s02_regslice_AWADDR),
        .s_axi_awburst(s02_couplers_to_s02_regslice_AWBURST),
        .s_axi_awcache(s02_couplers_to_s02_regslice_AWCACHE),
        .s_axi_awlen(s02_couplers_to_s02_regslice_AWLEN),
        .s_axi_awlock(s02_couplers_to_s02_regslice_AWLOCK),
        .s_axi_awprot(s02_couplers_to_s02_regslice_AWPROT),
        .s_axi_awqos(s02_couplers_to_s02_regslice_AWQOS),
        .s_axi_awready(s02_couplers_to_s02_regslice_AWREADY),
        .s_axi_awregion(s02_couplers_to_s02_regslice_AWREGION),
        .s_axi_awsize(s02_couplers_to_s02_regslice_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_s02_regslice_AWVALID),
        .s_axi_bready(s02_couplers_to_s02_regslice_BREADY),
        .s_axi_bresp(s02_couplers_to_s02_regslice_BRESP),
        .s_axi_bvalid(s02_couplers_to_s02_regslice_BVALID),
        .s_axi_rdata(s02_couplers_to_s02_regslice_RDATA),
        .s_axi_rlast(s02_couplers_to_s02_regslice_RLAST),
        .s_axi_rready(s02_couplers_to_s02_regslice_RREADY),
        .s_axi_rresp(s02_couplers_to_s02_regslice_RRESP),
        .s_axi_rvalid(s02_couplers_to_s02_regslice_RVALID),
        .s_axi_wdata(s02_couplers_to_s02_regslice_WDATA),
        .s_axi_wlast(s02_couplers_to_s02_regslice_WLAST),
        .s_axi_wready(s02_couplers_to_s02_regslice_WREADY),
        .s_axi_wstrb(s02_couplers_to_s02_regslice_WSTRB),
        .s_axi_wvalid(s02_couplers_to_s02_regslice_WVALID));
endmodule

module s03_couplers_imp_1IZX0HP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [38:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [38:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [511:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [511:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [38:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [38:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [3:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [3:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [38:0]auto_rs_w_to_s03_couplers_ARADDR;
  wire [1:0]auto_rs_w_to_s03_couplers_ARBURST;
  wire [3:0]auto_rs_w_to_s03_couplers_ARCACHE;
  wire [7:0]auto_rs_w_to_s03_couplers_ARLEN;
  wire [0:0]auto_rs_w_to_s03_couplers_ARLOCK;
  wire [2:0]auto_rs_w_to_s03_couplers_ARPROT;
  wire [3:0]auto_rs_w_to_s03_couplers_ARQOS;
  wire auto_rs_w_to_s03_couplers_ARREADY;
  wire [2:0]auto_rs_w_to_s03_couplers_ARSIZE;
  wire auto_rs_w_to_s03_couplers_ARVALID;
  wire [38:0]auto_rs_w_to_s03_couplers_AWADDR;
  wire [1:0]auto_rs_w_to_s03_couplers_AWBURST;
  wire [3:0]auto_rs_w_to_s03_couplers_AWCACHE;
  wire [7:0]auto_rs_w_to_s03_couplers_AWLEN;
  wire [0:0]auto_rs_w_to_s03_couplers_AWLOCK;
  wire [2:0]auto_rs_w_to_s03_couplers_AWPROT;
  wire [3:0]auto_rs_w_to_s03_couplers_AWQOS;
  wire auto_rs_w_to_s03_couplers_AWREADY;
  wire [2:0]auto_rs_w_to_s03_couplers_AWSIZE;
  wire auto_rs_w_to_s03_couplers_AWVALID;
  wire auto_rs_w_to_s03_couplers_BREADY;
  wire [1:0]auto_rs_w_to_s03_couplers_BRESP;
  wire auto_rs_w_to_s03_couplers_BVALID;
  wire [511:0]auto_rs_w_to_s03_couplers_RDATA;
  wire auto_rs_w_to_s03_couplers_RLAST;
  wire auto_rs_w_to_s03_couplers_RREADY;
  wire [1:0]auto_rs_w_to_s03_couplers_RRESP;
  wire auto_rs_w_to_s03_couplers_RVALID;
  wire [511:0]auto_rs_w_to_s03_couplers_WDATA;
  wire auto_rs_w_to_s03_couplers_WLAST;
  wire auto_rs_w_to_s03_couplers_WREADY;
  wire [63:0]auto_rs_w_to_s03_couplers_WSTRB;
  wire auto_rs_w_to_s03_couplers_WVALID;
  wire [38:0]auto_us_to_auto_rs_w_ARADDR;
  wire [1:0]auto_us_to_auto_rs_w_ARBURST;
  wire [3:0]auto_us_to_auto_rs_w_ARCACHE;
  wire [7:0]auto_us_to_auto_rs_w_ARLEN;
  wire [0:0]auto_us_to_auto_rs_w_ARLOCK;
  wire [2:0]auto_us_to_auto_rs_w_ARPROT;
  wire [3:0]auto_us_to_auto_rs_w_ARQOS;
  wire auto_us_to_auto_rs_w_ARREADY;
  wire [3:0]auto_us_to_auto_rs_w_ARREGION;
  wire [2:0]auto_us_to_auto_rs_w_ARSIZE;
  wire auto_us_to_auto_rs_w_ARVALID;
  wire [38:0]auto_us_to_auto_rs_w_AWADDR;
  wire [1:0]auto_us_to_auto_rs_w_AWBURST;
  wire [3:0]auto_us_to_auto_rs_w_AWCACHE;
  wire [7:0]auto_us_to_auto_rs_w_AWLEN;
  wire [0:0]auto_us_to_auto_rs_w_AWLOCK;
  wire [2:0]auto_us_to_auto_rs_w_AWPROT;
  wire [3:0]auto_us_to_auto_rs_w_AWQOS;
  wire auto_us_to_auto_rs_w_AWREADY;
  wire [3:0]auto_us_to_auto_rs_w_AWREGION;
  wire [2:0]auto_us_to_auto_rs_w_AWSIZE;
  wire auto_us_to_auto_rs_w_AWVALID;
  wire auto_us_to_auto_rs_w_BREADY;
  wire [1:0]auto_us_to_auto_rs_w_BRESP;
  wire auto_us_to_auto_rs_w_BVALID;
  wire [511:0]auto_us_to_auto_rs_w_RDATA;
  wire auto_us_to_auto_rs_w_RLAST;
  wire auto_us_to_auto_rs_w_RREADY;
  wire [1:0]auto_us_to_auto_rs_w_RRESP;
  wire auto_us_to_auto_rs_w_RVALID;
  wire [511:0]auto_us_to_auto_rs_w_WDATA;
  wire auto_us_to_auto_rs_w_WLAST;
  wire auto_us_to_auto_rs_w_WREADY;
  wire [63:0]auto_us_to_auto_rs_w_WSTRB;
  wire auto_us_to_auto_rs_w_WVALID;
  wire [38:0]s03_couplers_to_s03_regslice_ARADDR;
  wire [1:0]s03_couplers_to_s03_regslice_ARBURST;
  wire [3:0]s03_couplers_to_s03_regslice_ARCACHE;
  wire [3:0]s03_couplers_to_s03_regslice_ARID;
  wire [7:0]s03_couplers_to_s03_regslice_ARLEN;
  wire [0:0]s03_couplers_to_s03_regslice_ARLOCK;
  wire [2:0]s03_couplers_to_s03_regslice_ARPROT;
  wire [3:0]s03_couplers_to_s03_regslice_ARQOS;
  wire s03_couplers_to_s03_regslice_ARREADY;
  wire [2:0]s03_couplers_to_s03_regslice_ARSIZE;
  wire s03_couplers_to_s03_regslice_ARVALID;
  wire [38:0]s03_couplers_to_s03_regslice_AWADDR;
  wire [1:0]s03_couplers_to_s03_regslice_AWBURST;
  wire [3:0]s03_couplers_to_s03_regslice_AWCACHE;
  wire [3:0]s03_couplers_to_s03_regslice_AWID;
  wire [7:0]s03_couplers_to_s03_regslice_AWLEN;
  wire [0:0]s03_couplers_to_s03_regslice_AWLOCK;
  wire [2:0]s03_couplers_to_s03_regslice_AWPROT;
  wire [3:0]s03_couplers_to_s03_regslice_AWQOS;
  wire s03_couplers_to_s03_regslice_AWREADY;
  wire [2:0]s03_couplers_to_s03_regslice_AWSIZE;
  wire s03_couplers_to_s03_regslice_AWVALID;
  wire [3:0]s03_couplers_to_s03_regslice_BID;
  wire s03_couplers_to_s03_regslice_BREADY;
  wire [1:0]s03_couplers_to_s03_regslice_BRESP;
  wire s03_couplers_to_s03_regslice_BVALID;
  wire [127:0]s03_couplers_to_s03_regslice_RDATA;
  wire [3:0]s03_couplers_to_s03_regslice_RID;
  wire s03_couplers_to_s03_regslice_RLAST;
  wire s03_couplers_to_s03_regslice_RREADY;
  wire [1:0]s03_couplers_to_s03_regslice_RRESP;
  wire s03_couplers_to_s03_regslice_RVALID;
  wire [127:0]s03_couplers_to_s03_regslice_WDATA;
  wire s03_couplers_to_s03_regslice_WLAST;
  wire s03_couplers_to_s03_regslice_WREADY;
  wire [15:0]s03_couplers_to_s03_regslice_WSTRB;
  wire s03_couplers_to_s03_regslice_WVALID;
  wire [38:0]s03_regslice_to_auto_us_ARADDR;
  wire [1:0]s03_regslice_to_auto_us_ARBURST;
  wire [3:0]s03_regslice_to_auto_us_ARCACHE;
  wire [3:0]s03_regslice_to_auto_us_ARID;
  wire [7:0]s03_regslice_to_auto_us_ARLEN;
  wire [0:0]s03_regslice_to_auto_us_ARLOCK;
  wire [2:0]s03_regslice_to_auto_us_ARPROT;
  wire [3:0]s03_regslice_to_auto_us_ARQOS;
  wire s03_regslice_to_auto_us_ARREADY;
  wire [3:0]s03_regslice_to_auto_us_ARREGION;
  wire [2:0]s03_regslice_to_auto_us_ARSIZE;
  wire s03_regslice_to_auto_us_ARVALID;
  wire [38:0]s03_regslice_to_auto_us_AWADDR;
  wire [1:0]s03_regslice_to_auto_us_AWBURST;
  wire [3:0]s03_regslice_to_auto_us_AWCACHE;
  wire [3:0]s03_regslice_to_auto_us_AWID;
  wire [7:0]s03_regslice_to_auto_us_AWLEN;
  wire [0:0]s03_regslice_to_auto_us_AWLOCK;
  wire [2:0]s03_regslice_to_auto_us_AWPROT;
  wire [3:0]s03_regslice_to_auto_us_AWQOS;
  wire s03_regslice_to_auto_us_AWREADY;
  wire [3:0]s03_regslice_to_auto_us_AWREGION;
  wire [2:0]s03_regslice_to_auto_us_AWSIZE;
  wire s03_regslice_to_auto_us_AWVALID;
  wire [3:0]s03_regslice_to_auto_us_BID;
  wire s03_regslice_to_auto_us_BREADY;
  wire [1:0]s03_regslice_to_auto_us_BRESP;
  wire s03_regslice_to_auto_us_BVALID;
  wire [127:0]s03_regslice_to_auto_us_RDATA;
  wire [3:0]s03_regslice_to_auto_us_RID;
  wire s03_regslice_to_auto_us_RLAST;
  wire s03_regslice_to_auto_us_RREADY;
  wire [1:0]s03_regslice_to_auto_us_RRESP;
  wire s03_regslice_to_auto_us_RVALID;
  wire [127:0]s03_regslice_to_auto_us_WDATA;
  wire s03_regslice_to_auto_us_WLAST;
  wire s03_regslice_to_auto_us_WREADY;
  wire [15:0]s03_regslice_to_auto_us_WSTRB;
  wire s03_regslice_to_auto_us_WVALID;

  assign M_AXI_araddr[38:0] = auto_rs_w_to_s03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_rs_w_to_s03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_rs_w_to_s03_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_rs_w_to_s03_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_rs_w_to_s03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_rs_w_to_s03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_rs_w_to_s03_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_rs_w_to_s03_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_rs_w_to_s03_couplers_ARVALID;
  assign M_AXI_awaddr[38:0] = auto_rs_w_to_s03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_rs_w_to_s03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_rs_w_to_s03_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_rs_w_to_s03_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_rs_w_to_s03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_rs_w_to_s03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_rs_w_to_s03_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_rs_w_to_s03_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_rs_w_to_s03_couplers_AWVALID;
  assign M_AXI_bready = auto_rs_w_to_s03_couplers_BREADY;
  assign M_AXI_rready = auto_rs_w_to_s03_couplers_RREADY;
  assign M_AXI_wdata[511:0] = auto_rs_w_to_s03_couplers_WDATA;
  assign M_AXI_wlast = auto_rs_w_to_s03_couplers_WLAST;
  assign M_AXI_wstrb[63:0] = auto_rs_w_to_s03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_rs_w_to_s03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s03_couplers_to_s03_regslice_ARREADY;
  assign S_AXI_awready = s03_couplers_to_s03_regslice_AWREADY;
  assign S_AXI_bid[3:0] = s03_couplers_to_s03_regslice_BID;
  assign S_AXI_bresp[1:0] = s03_couplers_to_s03_regslice_BRESP;
  assign S_AXI_bvalid = s03_couplers_to_s03_regslice_BVALID;
  assign S_AXI_rdata[127:0] = s03_couplers_to_s03_regslice_RDATA;
  assign S_AXI_rid[3:0] = s03_couplers_to_s03_regslice_RID;
  assign S_AXI_rlast = s03_couplers_to_s03_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s03_couplers_to_s03_regslice_RRESP;
  assign S_AXI_rvalid = s03_couplers_to_s03_regslice_RVALID;
  assign S_AXI_wready = s03_couplers_to_s03_regslice_WREADY;
  assign auto_rs_w_to_s03_couplers_ARREADY = M_AXI_arready;
  assign auto_rs_w_to_s03_couplers_AWREADY = M_AXI_awready;
  assign auto_rs_w_to_s03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_rs_w_to_s03_couplers_BVALID = M_AXI_bvalid;
  assign auto_rs_w_to_s03_couplers_RDATA = M_AXI_rdata[511:0];
  assign auto_rs_w_to_s03_couplers_RLAST = M_AXI_rlast;
  assign auto_rs_w_to_s03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_rs_w_to_s03_couplers_RVALID = M_AXI_rvalid;
  assign auto_rs_w_to_s03_couplers_WREADY = M_AXI_wready;
  assign s03_couplers_to_s03_regslice_ARADDR = S_AXI_araddr[38:0];
  assign s03_couplers_to_s03_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s03_couplers_to_s03_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s03_couplers_to_s03_regslice_ARID = S_AXI_arid[3:0];
  assign s03_couplers_to_s03_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s03_couplers_to_s03_regslice_ARLOCK = S_AXI_arlock[0];
  assign s03_couplers_to_s03_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s03_couplers_to_s03_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s03_couplers_to_s03_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s03_couplers_to_s03_regslice_ARVALID = S_AXI_arvalid;
  assign s03_couplers_to_s03_regslice_AWADDR = S_AXI_awaddr[38:0];
  assign s03_couplers_to_s03_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s03_couplers_to_s03_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s03_couplers_to_s03_regslice_AWID = S_AXI_awid[3:0];
  assign s03_couplers_to_s03_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s03_couplers_to_s03_regslice_AWLOCK = S_AXI_awlock[0];
  assign s03_couplers_to_s03_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s03_couplers_to_s03_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s03_couplers_to_s03_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s03_couplers_to_s03_regslice_AWVALID = S_AXI_awvalid;
  assign s03_couplers_to_s03_regslice_BREADY = S_AXI_bready;
  assign s03_couplers_to_s03_regslice_RREADY = S_AXI_rready;
  assign s03_couplers_to_s03_regslice_WDATA = S_AXI_wdata[127:0];
  assign s03_couplers_to_s03_regslice_WLAST = S_AXI_wlast;
  assign s03_couplers_to_s03_regslice_WSTRB = S_AXI_wstrb[15:0];
  assign s03_couplers_to_s03_regslice_WVALID = S_AXI_wvalid;
  ulp_auto_rs_w_0 auto_rs_w
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_w_to_s03_couplers_ARADDR),
        .m_axi_arburst(auto_rs_w_to_s03_couplers_ARBURST),
        .m_axi_arcache(auto_rs_w_to_s03_couplers_ARCACHE),
        .m_axi_arlen(auto_rs_w_to_s03_couplers_ARLEN),
        .m_axi_arlock(auto_rs_w_to_s03_couplers_ARLOCK),
        .m_axi_arprot(auto_rs_w_to_s03_couplers_ARPROT),
        .m_axi_arqos(auto_rs_w_to_s03_couplers_ARQOS),
        .m_axi_arready(auto_rs_w_to_s03_couplers_ARREADY),
        .m_axi_arsize(auto_rs_w_to_s03_couplers_ARSIZE),
        .m_axi_arvalid(auto_rs_w_to_s03_couplers_ARVALID),
        .m_axi_awaddr(auto_rs_w_to_s03_couplers_AWADDR),
        .m_axi_awburst(auto_rs_w_to_s03_couplers_AWBURST),
        .m_axi_awcache(auto_rs_w_to_s03_couplers_AWCACHE),
        .m_axi_awlen(auto_rs_w_to_s03_couplers_AWLEN),
        .m_axi_awlock(auto_rs_w_to_s03_couplers_AWLOCK),
        .m_axi_awprot(auto_rs_w_to_s03_couplers_AWPROT),
        .m_axi_awqos(auto_rs_w_to_s03_couplers_AWQOS),
        .m_axi_awready(auto_rs_w_to_s03_couplers_AWREADY),
        .m_axi_awsize(auto_rs_w_to_s03_couplers_AWSIZE),
        .m_axi_awvalid(auto_rs_w_to_s03_couplers_AWVALID),
        .m_axi_bready(auto_rs_w_to_s03_couplers_BREADY),
        .m_axi_bresp(auto_rs_w_to_s03_couplers_BRESP),
        .m_axi_bvalid(auto_rs_w_to_s03_couplers_BVALID),
        .m_axi_rdata(auto_rs_w_to_s03_couplers_RDATA),
        .m_axi_rlast(auto_rs_w_to_s03_couplers_RLAST),
        .m_axi_rready(auto_rs_w_to_s03_couplers_RREADY),
        .m_axi_rresp(auto_rs_w_to_s03_couplers_RRESP),
        .m_axi_rvalid(auto_rs_w_to_s03_couplers_RVALID),
        .m_axi_wdata(auto_rs_w_to_s03_couplers_WDATA),
        .m_axi_wlast(auto_rs_w_to_s03_couplers_WLAST),
        .m_axi_wready(auto_rs_w_to_s03_couplers_WREADY),
        .m_axi_wstrb(auto_rs_w_to_s03_couplers_WSTRB),
        .m_axi_wvalid(auto_rs_w_to_s03_couplers_WVALID),
        .s_axi_araddr(auto_us_to_auto_rs_w_ARADDR),
        .s_axi_arburst(auto_us_to_auto_rs_w_ARBURST),
        .s_axi_arcache(auto_us_to_auto_rs_w_ARCACHE),
        .s_axi_arlen(auto_us_to_auto_rs_w_ARLEN),
        .s_axi_arlock(auto_us_to_auto_rs_w_ARLOCK),
        .s_axi_arprot(auto_us_to_auto_rs_w_ARPROT),
        .s_axi_arqos(auto_us_to_auto_rs_w_ARQOS),
        .s_axi_arready(auto_us_to_auto_rs_w_ARREADY),
        .s_axi_arregion(auto_us_to_auto_rs_w_ARREGION),
        .s_axi_arsize(auto_us_to_auto_rs_w_ARSIZE),
        .s_axi_arvalid(auto_us_to_auto_rs_w_ARVALID),
        .s_axi_awaddr(auto_us_to_auto_rs_w_AWADDR),
        .s_axi_awburst(auto_us_to_auto_rs_w_AWBURST),
        .s_axi_awcache(auto_us_to_auto_rs_w_AWCACHE),
        .s_axi_awlen(auto_us_to_auto_rs_w_AWLEN),
        .s_axi_awlock(auto_us_to_auto_rs_w_AWLOCK),
        .s_axi_awprot(auto_us_to_auto_rs_w_AWPROT),
        .s_axi_awqos(auto_us_to_auto_rs_w_AWQOS),
        .s_axi_awready(auto_us_to_auto_rs_w_AWREADY),
        .s_axi_awregion(auto_us_to_auto_rs_w_AWREGION),
        .s_axi_awsize(auto_us_to_auto_rs_w_AWSIZE),
        .s_axi_awvalid(auto_us_to_auto_rs_w_AWVALID),
        .s_axi_bready(auto_us_to_auto_rs_w_BREADY),
        .s_axi_bresp(auto_us_to_auto_rs_w_BRESP),
        .s_axi_bvalid(auto_us_to_auto_rs_w_BVALID),
        .s_axi_rdata(auto_us_to_auto_rs_w_RDATA),
        .s_axi_rlast(auto_us_to_auto_rs_w_RLAST),
        .s_axi_rready(auto_us_to_auto_rs_w_RREADY),
        .s_axi_rresp(auto_us_to_auto_rs_w_RRESP),
        .s_axi_rvalid(auto_us_to_auto_rs_w_RVALID),
        .s_axi_wdata(auto_us_to_auto_rs_w_WDATA),
        .s_axi_wlast(auto_us_to_auto_rs_w_WLAST),
        .s_axi_wready(auto_us_to_auto_rs_w_WREADY),
        .s_axi_wstrb(auto_us_to_auto_rs_w_WSTRB),
        .s_axi_wvalid(auto_us_to_auto_rs_w_WVALID));
  ulp_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_auto_rs_w_ARADDR),
        .m_axi_arburst(auto_us_to_auto_rs_w_ARBURST),
        .m_axi_arcache(auto_us_to_auto_rs_w_ARCACHE),
        .m_axi_arlen(auto_us_to_auto_rs_w_ARLEN),
        .m_axi_arlock(auto_us_to_auto_rs_w_ARLOCK),
        .m_axi_arprot(auto_us_to_auto_rs_w_ARPROT),
        .m_axi_arqos(auto_us_to_auto_rs_w_ARQOS),
        .m_axi_arready(auto_us_to_auto_rs_w_ARREADY),
        .m_axi_arregion(auto_us_to_auto_rs_w_ARREGION),
        .m_axi_arsize(auto_us_to_auto_rs_w_ARSIZE),
        .m_axi_arvalid(auto_us_to_auto_rs_w_ARVALID),
        .m_axi_awaddr(auto_us_to_auto_rs_w_AWADDR),
        .m_axi_awburst(auto_us_to_auto_rs_w_AWBURST),
        .m_axi_awcache(auto_us_to_auto_rs_w_AWCACHE),
        .m_axi_awlen(auto_us_to_auto_rs_w_AWLEN),
        .m_axi_awlock(auto_us_to_auto_rs_w_AWLOCK),
        .m_axi_awprot(auto_us_to_auto_rs_w_AWPROT),
        .m_axi_awqos(auto_us_to_auto_rs_w_AWQOS),
        .m_axi_awready(auto_us_to_auto_rs_w_AWREADY),
        .m_axi_awregion(auto_us_to_auto_rs_w_AWREGION),
        .m_axi_awsize(auto_us_to_auto_rs_w_AWSIZE),
        .m_axi_awvalid(auto_us_to_auto_rs_w_AWVALID),
        .m_axi_bready(auto_us_to_auto_rs_w_BREADY),
        .m_axi_bresp(auto_us_to_auto_rs_w_BRESP),
        .m_axi_bvalid(auto_us_to_auto_rs_w_BVALID),
        .m_axi_rdata(auto_us_to_auto_rs_w_RDATA),
        .m_axi_rlast(auto_us_to_auto_rs_w_RLAST),
        .m_axi_rready(auto_us_to_auto_rs_w_RREADY),
        .m_axi_rresp(auto_us_to_auto_rs_w_RRESP),
        .m_axi_rvalid(auto_us_to_auto_rs_w_RVALID),
        .m_axi_wdata(auto_us_to_auto_rs_w_WDATA),
        .m_axi_wlast(auto_us_to_auto_rs_w_WLAST),
        .m_axi_wready(auto_us_to_auto_rs_w_WREADY),
        .m_axi_wstrb(auto_us_to_auto_rs_w_WSTRB),
        .m_axi_wvalid(auto_us_to_auto_rs_w_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s03_regslice_to_auto_us_ARADDR),
        .s_axi_arburst(s03_regslice_to_auto_us_ARBURST),
        .s_axi_arcache(s03_regslice_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s03_regslice_to_auto_us_ARID),
        .s_axi_arlen(s03_regslice_to_auto_us_ARLEN),
        .s_axi_arlock(s03_regslice_to_auto_us_ARLOCK),
        .s_axi_arprot(s03_regslice_to_auto_us_ARPROT),
        .s_axi_arqos(s03_regslice_to_auto_us_ARQOS),
        .s_axi_arready(s03_regslice_to_auto_us_ARREADY),
        .s_axi_arregion(s03_regslice_to_auto_us_ARREGION),
        .s_axi_arsize(s03_regslice_to_auto_us_ARSIZE),
        .s_axi_arvalid(s03_regslice_to_auto_us_ARVALID),
        .s_axi_awaddr(s03_regslice_to_auto_us_AWADDR),
        .s_axi_awburst(s03_regslice_to_auto_us_AWBURST),
        .s_axi_awcache(s03_regslice_to_auto_us_AWCACHE),
        .s_axi_awid(s03_regslice_to_auto_us_AWID),
        .s_axi_awlen(s03_regslice_to_auto_us_AWLEN),
        .s_axi_awlock(s03_regslice_to_auto_us_AWLOCK),
        .s_axi_awprot(s03_regslice_to_auto_us_AWPROT),
        .s_axi_awqos(s03_regslice_to_auto_us_AWQOS),
        .s_axi_awready(s03_regslice_to_auto_us_AWREADY),
        .s_axi_awregion(s03_regslice_to_auto_us_AWREGION),
        .s_axi_awsize(s03_regslice_to_auto_us_AWSIZE),
        .s_axi_awvalid(s03_regslice_to_auto_us_AWVALID),
        .s_axi_bid(s03_regslice_to_auto_us_BID),
        .s_axi_bready(s03_regslice_to_auto_us_BREADY),
        .s_axi_bresp(s03_regslice_to_auto_us_BRESP),
        .s_axi_bvalid(s03_regslice_to_auto_us_BVALID),
        .s_axi_rdata(s03_regslice_to_auto_us_RDATA),
        .s_axi_rid(s03_regslice_to_auto_us_RID),
        .s_axi_rlast(s03_regslice_to_auto_us_RLAST),
        .s_axi_rready(s03_regslice_to_auto_us_RREADY),
        .s_axi_rresp(s03_regslice_to_auto_us_RRESP),
        .s_axi_rvalid(s03_regslice_to_auto_us_RVALID),
        .s_axi_wdata(s03_regslice_to_auto_us_WDATA),
        .s_axi_wlast(s03_regslice_to_auto_us_WLAST),
        .s_axi_wready(s03_regslice_to_auto_us_WREADY),
        .s_axi_wstrb(s03_regslice_to_auto_us_WSTRB),
        .s_axi_wvalid(s03_regslice_to_auto_us_WVALID));
  ulp_s03_regslice_0 s03_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s03_regslice_to_auto_us_ARADDR),
        .m_axi_arburst(s03_regslice_to_auto_us_ARBURST),
        .m_axi_arcache(s03_regslice_to_auto_us_ARCACHE),
        .m_axi_arid(s03_regslice_to_auto_us_ARID),
        .m_axi_arlen(s03_regslice_to_auto_us_ARLEN),
        .m_axi_arlock(s03_regslice_to_auto_us_ARLOCK),
        .m_axi_arprot(s03_regslice_to_auto_us_ARPROT),
        .m_axi_arqos(s03_regslice_to_auto_us_ARQOS),
        .m_axi_arready(s03_regslice_to_auto_us_ARREADY),
        .m_axi_arregion(s03_regslice_to_auto_us_ARREGION),
        .m_axi_arsize(s03_regslice_to_auto_us_ARSIZE),
        .m_axi_arvalid(s03_regslice_to_auto_us_ARVALID),
        .m_axi_awaddr(s03_regslice_to_auto_us_AWADDR),
        .m_axi_awburst(s03_regslice_to_auto_us_AWBURST),
        .m_axi_awcache(s03_regslice_to_auto_us_AWCACHE),
        .m_axi_awid(s03_regslice_to_auto_us_AWID),
        .m_axi_awlen(s03_regslice_to_auto_us_AWLEN),
        .m_axi_awlock(s03_regslice_to_auto_us_AWLOCK),
        .m_axi_awprot(s03_regslice_to_auto_us_AWPROT),
        .m_axi_awqos(s03_regslice_to_auto_us_AWQOS),
        .m_axi_awready(s03_regslice_to_auto_us_AWREADY),
        .m_axi_awregion(s03_regslice_to_auto_us_AWREGION),
        .m_axi_awsize(s03_regslice_to_auto_us_AWSIZE),
        .m_axi_awvalid(s03_regslice_to_auto_us_AWVALID),
        .m_axi_bid(s03_regslice_to_auto_us_BID),
        .m_axi_bready(s03_regslice_to_auto_us_BREADY),
        .m_axi_bresp(s03_regslice_to_auto_us_BRESP),
        .m_axi_bvalid(s03_regslice_to_auto_us_BVALID),
        .m_axi_rdata(s03_regslice_to_auto_us_RDATA),
        .m_axi_rid(s03_regslice_to_auto_us_RID),
        .m_axi_rlast(s03_regslice_to_auto_us_RLAST),
        .m_axi_rready(s03_regslice_to_auto_us_RREADY),
        .m_axi_rresp(s03_regslice_to_auto_us_RRESP),
        .m_axi_rvalid(s03_regslice_to_auto_us_RVALID),
        .m_axi_wdata(s03_regslice_to_auto_us_WDATA),
        .m_axi_wlast(s03_regslice_to_auto_us_WLAST),
        .m_axi_wready(s03_regslice_to_auto_us_WREADY),
        .m_axi_wstrb(s03_regslice_to_auto_us_WSTRB),
        .m_axi_wvalid(s03_regslice_to_auto_us_WVALID),
        .s_axi_araddr(s03_couplers_to_s03_regslice_ARADDR),
        .s_axi_arburst(s03_couplers_to_s03_regslice_ARBURST),
        .s_axi_arcache(s03_couplers_to_s03_regslice_ARCACHE),
        .s_axi_arid(s03_couplers_to_s03_regslice_ARID),
        .s_axi_arlen(s03_couplers_to_s03_regslice_ARLEN),
        .s_axi_arlock(s03_couplers_to_s03_regslice_ARLOCK),
        .s_axi_arprot(s03_couplers_to_s03_regslice_ARPROT),
        .s_axi_arqos(s03_couplers_to_s03_regslice_ARQOS),
        .s_axi_arready(s03_couplers_to_s03_regslice_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s03_couplers_to_s03_regslice_ARSIZE),
        .s_axi_arvalid(s03_couplers_to_s03_regslice_ARVALID),
        .s_axi_awaddr(s03_couplers_to_s03_regslice_AWADDR),
        .s_axi_awburst(s03_couplers_to_s03_regslice_AWBURST),
        .s_axi_awcache(s03_couplers_to_s03_regslice_AWCACHE),
        .s_axi_awid(s03_couplers_to_s03_regslice_AWID),
        .s_axi_awlen(s03_couplers_to_s03_regslice_AWLEN),
        .s_axi_awlock(s03_couplers_to_s03_regslice_AWLOCK),
        .s_axi_awprot(s03_couplers_to_s03_regslice_AWPROT),
        .s_axi_awqos(s03_couplers_to_s03_regslice_AWQOS),
        .s_axi_awready(s03_couplers_to_s03_regslice_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s03_couplers_to_s03_regslice_AWSIZE),
        .s_axi_awvalid(s03_couplers_to_s03_regslice_AWVALID),
        .s_axi_bid(s03_couplers_to_s03_regslice_BID),
        .s_axi_bready(s03_couplers_to_s03_regslice_BREADY),
        .s_axi_bresp(s03_couplers_to_s03_regslice_BRESP),
        .s_axi_bvalid(s03_couplers_to_s03_regslice_BVALID),
        .s_axi_rdata(s03_couplers_to_s03_regslice_RDATA),
        .s_axi_rid(s03_couplers_to_s03_regslice_RID),
        .s_axi_rlast(s03_couplers_to_s03_regslice_RLAST),
        .s_axi_rready(s03_couplers_to_s03_regslice_RREADY),
        .s_axi_rresp(s03_couplers_to_s03_regslice_RRESP),
        .s_axi_rvalid(s03_couplers_to_s03_regslice_RVALID),
        .s_axi_wdata(s03_couplers_to_s03_regslice_WDATA),
        .s_axi_wlast(s03_couplers_to_s03_regslice_WLAST),
        .s_axi_wready(s03_couplers_to_s03_regslice_WREADY),
        .s_axi_wstrb(s03_couplers_to_s03_regslice_WSTRB),
        .s_axi_wvalid(s03_couplers_to_s03_regslice_WVALID));
endmodule

module slr1_imp_1S5AAMB
   (M00_ACLK,
    M00_ARESETN,
    M01_AXI1_araddr,
    M01_AXI1_arready,
    M01_AXI1_arvalid,
    M01_AXI1_awaddr,
    M01_AXI1_awready,
    M01_AXI1_awvalid,
    M01_AXI1_bready,
    M01_AXI1_bresp,
    M01_AXI1_bvalid,
    M01_AXI1_rdata,
    M01_AXI1_rready,
    M01_AXI1_rresp,
    M01_AXI1_rvalid,
    M01_AXI1_wdata,
    M01_AXI1_wready,
    M01_AXI1_wstrb,
    M01_AXI1_wvalid,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    aux_reset_in,
    axi_cdc_data_static_M_AXI1_araddr,
    axi_cdc_data_static_M_AXI1_arburst,
    axi_cdc_data_static_M_AXI1_arcache,
    axi_cdc_data_static_M_AXI1_arid,
    axi_cdc_data_static_M_AXI1_arlen,
    axi_cdc_data_static_M_AXI1_arlock,
    axi_cdc_data_static_M_AXI1_arprot,
    axi_cdc_data_static_M_AXI1_arqos,
    axi_cdc_data_static_M_AXI1_arready,
    axi_cdc_data_static_M_AXI1_arsize,
    axi_cdc_data_static_M_AXI1_arvalid,
    axi_cdc_data_static_M_AXI1_awaddr,
    axi_cdc_data_static_M_AXI1_awburst,
    axi_cdc_data_static_M_AXI1_awcache,
    axi_cdc_data_static_M_AXI1_awid,
    axi_cdc_data_static_M_AXI1_awlen,
    axi_cdc_data_static_M_AXI1_awlock,
    axi_cdc_data_static_M_AXI1_awprot,
    axi_cdc_data_static_M_AXI1_awqos,
    axi_cdc_data_static_M_AXI1_awready,
    axi_cdc_data_static_M_AXI1_awsize,
    axi_cdc_data_static_M_AXI1_awvalid,
    axi_cdc_data_static_M_AXI1_bid,
    axi_cdc_data_static_M_AXI1_bready,
    axi_cdc_data_static_M_AXI1_bresp,
    axi_cdc_data_static_M_AXI1_bvalid,
    axi_cdc_data_static_M_AXI1_rdata,
    axi_cdc_data_static_M_AXI1_rid,
    axi_cdc_data_static_M_AXI1_rlast,
    axi_cdc_data_static_M_AXI1_rready,
    axi_cdc_data_static_M_AXI1_rresp,
    axi_cdc_data_static_M_AXI1_rvalid,
    axi_cdc_data_static_M_AXI1_wdata,
    axi_cdc_data_static_M_AXI1_wlast,
    axi_cdc_data_static_M_AXI1_wready,
    axi_cdc_data_static_M_AXI1_wstrb,
    axi_cdc_data_static_M_AXI1_wvalid,
    axi_cdc_data_static_M_AXI_araddr,
    axi_cdc_data_static_M_AXI_arburst,
    axi_cdc_data_static_M_AXI_arcache,
    axi_cdc_data_static_M_AXI_arid,
    axi_cdc_data_static_M_AXI_arlen,
    axi_cdc_data_static_M_AXI_arlock,
    axi_cdc_data_static_M_AXI_arprot,
    axi_cdc_data_static_M_AXI_arqos,
    axi_cdc_data_static_M_AXI_arready,
    axi_cdc_data_static_M_AXI_arregion,
    axi_cdc_data_static_M_AXI_arsize,
    axi_cdc_data_static_M_AXI_arvalid,
    axi_cdc_data_static_M_AXI_awaddr,
    axi_cdc_data_static_M_AXI_awburst,
    axi_cdc_data_static_M_AXI_awcache,
    axi_cdc_data_static_M_AXI_awid,
    axi_cdc_data_static_M_AXI_awlen,
    axi_cdc_data_static_M_AXI_awlock,
    axi_cdc_data_static_M_AXI_awprot,
    axi_cdc_data_static_M_AXI_awqos,
    axi_cdc_data_static_M_AXI_awready,
    axi_cdc_data_static_M_AXI_awregion,
    axi_cdc_data_static_M_AXI_awsize,
    axi_cdc_data_static_M_AXI_awvalid,
    axi_cdc_data_static_M_AXI_bid,
    axi_cdc_data_static_M_AXI_bready,
    axi_cdc_data_static_M_AXI_bresp,
    axi_cdc_data_static_M_AXI_bvalid,
    axi_cdc_data_static_M_AXI_rdata,
    axi_cdc_data_static_M_AXI_rid,
    axi_cdc_data_static_M_AXI_rlast,
    axi_cdc_data_static_M_AXI_rready,
    axi_cdc_data_static_M_AXI_rresp,
    axi_cdc_data_static_M_AXI_rvalid,
    axi_cdc_data_static_M_AXI_wdata,
    axi_cdc_data_static_M_AXI_wlast,
    axi_cdc_data_static_M_AXI_wready,
    axi_cdc_data_static_M_AXI_wstrb,
    axi_cdc_data_static_M_AXI_wvalid,
    axi_vip_ctrl_mgntpf_M_AXI_araddr,
    axi_vip_ctrl_mgntpf_M_AXI_arready,
    axi_vip_ctrl_mgntpf_M_AXI_arvalid,
    axi_vip_ctrl_mgntpf_M_AXI_awaddr,
    axi_vip_ctrl_mgntpf_M_AXI_awready,
    axi_vip_ctrl_mgntpf_M_AXI_awvalid,
    axi_vip_ctrl_mgntpf_M_AXI_bready,
    axi_vip_ctrl_mgntpf_M_AXI_bresp,
    axi_vip_ctrl_mgntpf_M_AXI_bvalid,
    axi_vip_ctrl_mgntpf_M_AXI_rdata,
    axi_vip_ctrl_mgntpf_M_AXI_rready,
    axi_vip_ctrl_mgntpf_M_AXI_rresp,
    axi_vip_ctrl_mgntpf_M_AXI_rvalid,
    axi_vip_ctrl_mgntpf_M_AXI_wdata,
    axi_vip_ctrl_mgntpf_M_AXI_wready,
    axi_vip_ctrl_mgntpf_M_AXI_wvalid,
    blp_s_aclk_kernel_ref_clk_00,
    clkwiz_kernel2_clk_out1,
    clkwiz_kernel2_locked_slr1,
    clkwiz_kernel_clk_out1,
    clkwiz_kernel_locked_slr1,
    clkwiz_sysclks_clk_out2,
    clkwiz_sysclks_locked_slr1,
    dma_pcie_axi_aclk,
    interconnect_aresetn,
    iob_static_perst_n_out,
    logic_reset_op_Res,
    pcie_user_lnk_up_slr1,
    peripheral_aresetn,
    psreset_gate_pr_control_interconnect_aresetn,
    psreset_gate_pr_data_interconnect_aresetn,
    psreset_gate_pr_ddrmem_1_interconnect_aresetn,
    psreset_gate_pr_kernel_interconnect_aresetn,
    regslice_control_M_AXI_slr1_araddr,
    regslice_control_M_AXI_slr1_arprot,
    regslice_control_M_AXI_slr1_arready,
    regslice_control_M_AXI_slr1_arvalid,
    regslice_control_M_AXI_slr1_awaddr,
    regslice_control_M_AXI_slr1_awprot,
    regslice_control_M_AXI_slr1_awready,
    regslice_control_M_AXI_slr1_awvalid,
    regslice_control_M_AXI_slr1_bready,
    regslice_control_M_AXI_slr1_bresp,
    regslice_control_M_AXI_slr1_bvalid,
    regslice_control_M_AXI_slr1_rdata,
    regslice_control_M_AXI_slr1_rready,
    regslice_control_M_AXI_slr1_rresp,
    regslice_control_M_AXI_slr1_rvalid,
    regslice_control_M_AXI_slr1_wdata,
    regslice_control_M_AXI_slr1_wready,
    regslice_control_M_AXI_slr1_wstrb,
    regslice_control_M_AXI_slr1_wvalid,
    regslice_control_periph_M_AXI_slr1_araddr,
    regslice_control_periph_M_AXI_slr1_arprot,
    regslice_control_periph_M_AXI_slr1_arready,
    regslice_control_periph_M_AXI_slr1_arvalid,
    regslice_control_periph_M_AXI_slr1_awaddr,
    regslice_control_periph_M_AXI_slr1_awprot,
    regslice_control_periph_M_AXI_slr1_awready,
    regslice_control_periph_M_AXI_slr1_awvalid,
    regslice_control_periph_M_AXI_slr1_bready,
    regslice_control_periph_M_AXI_slr1_bresp,
    regslice_control_periph_M_AXI_slr1_bvalid,
    regslice_control_periph_M_AXI_slr1_rdata,
    regslice_control_periph_M_AXI_slr1_rready,
    regslice_control_periph_M_AXI_slr1_rresp,
    regslice_control_periph_M_AXI_slr1_rvalid,
    regslice_control_periph_M_AXI_slr1_wdata,
    regslice_control_periph_M_AXI_slr1_wready,
    regslice_control_periph_M_AXI_slr1_wstrb,
    regslice_control_periph_M_AXI_slr1_wvalid,
    regslice_control_userpf_M_AXI_slr1_araddr,
    regslice_control_userpf_M_AXI_slr1_arprot,
    regslice_control_userpf_M_AXI_slr1_arready,
    regslice_control_userpf_M_AXI_slr1_arvalid,
    regslice_control_userpf_M_AXI_slr1_awaddr,
    regslice_control_userpf_M_AXI_slr1_awprot,
    regslice_control_userpf_M_AXI_slr1_awready,
    regslice_control_userpf_M_AXI_slr1_awvalid,
    regslice_control_userpf_M_AXI_slr1_bready,
    regslice_control_userpf_M_AXI_slr1_bresp,
    regslice_control_userpf_M_AXI_slr1_bvalid,
    regslice_control_userpf_M_AXI_slr1_rdata,
    regslice_control_userpf_M_AXI_slr1_rready,
    regslice_control_userpf_M_AXI_slr1_rresp,
    regslice_control_userpf_M_AXI_slr1_rvalid,
    regslice_control_userpf_M_AXI_slr1_wdata,
    regslice_control_userpf_M_AXI_slr1_wready,
    regslice_control_userpf_M_AXI_slr1_wstrb,
    regslice_control_userpf_M_AXI_slr1_wvalid,
    regslice_data_static_M_AXI_slr1_araddr,
    regslice_data_static_M_AXI_slr1_arburst,
    regslice_data_static_M_AXI_slr1_arcache,
    regslice_data_static_M_AXI_slr1_arid,
    regslice_data_static_M_AXI_slr1_arlen,
    regslice_data_static_M_AXI_slr1_arlock,
    regslice_data_static_M_AXI_slr1_arprot,
    regslice_data_static_M_AXI_slr1_arready,
    regslice_data_static_M_AXI_slr1_arvalid,
    regslice_data_static_M_AXI_slr1_awaddr,
    regslice_data_static_M_AXI_slr1_awburst,
    regslice_data_static_M_AXI_slr1_awcache,
    regslice_data_static_M_AXI_slr1_awid,
    regslice_data_static_M_AXI_slr1_awlen,
    regslice_data_static_M_AXI_slr1_awlock,
    regslice_data_static_M_AXI_slr1_awprot,
    regslice_data_static_M_AXI_slr1_awready,
    regslice_data_static_M_AXI_slr1_awvalid,
    regslice_data_static_M_AXI_slr1_bid,
    regslice_data_static_M_AXI_slr1_bready,
    regslice_data_static_M_AXI_slr1_bresp,
    regslice_data_static_M_AXI_slr1_bvalid,
    regslice_data_static_M_AXI_slr1_rdata,
    regslice_data_static_M_AXI_slr1_rid,
    regslice_data_static_M_AXI_slr1_rlast,
    regslice_data_static_M_AXI_slr1_rready,
    regslice_data_static_M_AXI_slr1_rresp,
    regslice_data_static_M_AXI_slr1_rvalid,
    regslice_data_static_M_AXI_slr1_wdata,
    regslice_data_static_M_AXI_slr1_wlast,
    regslice_data_static_M_AXI_slr1_wready,
    regslice_data_static_M_AXI_slr1_wstrb,
    regslice_data_static_M_AXI_slr1_wvalid,
    regslice_data_static_M_AXI_slr2_araddr,
    regslice_data_static_M_AXI_slr2_arburst,
    regslice_data_static_M_AXI_slr2_arcache,
    regslice_data_static_M_AXI_slr2_arid,
    regslice_data_static_M_AXI_slr2_arlen,
    regslice_data_static_M_AXI_slr2_arlock,
    regslice_data_static_M_AXI_slr2_arprot,
    regslice_data_static_M_AXI_slr2_arready,
    regslice_data_static_M_AXI_slr2_arvalid,
    regslice_data_static_M_AXI_slr2_awaddr,
    regslice_data_static_M_AXI_slr2_awburst,
    regslice_data_static_M_AXI_slr2_awcache,
    regslice_data_static_M_AXI_slr2_awid,
    regslice_data_static_M_AXI_slr2_awlen,
    regslice_data_static_M_AXI_slr2_awlock,
    regslice_data_static_M_AXI_slr2_awprot,
    regslice_data_static_M_AXI_slr2_awready,
    regslice_data_static_M_AXI_slr2_awvalid,
    regslice_data_static_M_AXI_slr2_bid,
    regslice_data_static_M_AXI_slr2_bready,
    regslice_data_static_M_AXI_slr2_bresp,
    regslice_data_static_M_AXI_slr2_bvalid,
    regslice_data_static_M_AXI_slr2_rdata,
    regslice_data_static_M_AXI_slr2_rid,
    regslice_data_static_M_AXI_slr2_rlast,
    regslice_data_static_M_AXI_slr2_rready,
    regslice_data_static_M_AXI_slr2_rresp,
    regslice_data_static_M_AXI_slr2_rvalid,
    regslice_data_static_M_AXI_slr2_wdata,
    regslice_data_static_M_AXI_slr2_wlast,
    regslice_data_static_M_AXI_slr2_wready,
    regslice_data_static_M_AXI_slr2_wstrb,
    regslice_data_static_M_AXI_slr2_wvalid,
    slice_reset_kernel_pr_Dout_slr1);
  input M00_ACLK;
  input M00_ARESETN;
  output [24:0]M01_AXI1_araddr;
  input [0:0]M01_AXI1_arready;
  output [0:0]M01_AXI1_arvalid;
  output [24:0]M01_AXI1_awaddr;
  input [0:0]M01_AXI1_awready;
  output [0:0]M01_AXI1_awvalid;
  output [0:0]M01_AXI1_bready;
  input [1:0]M01_AXI1_bresp;
  input [0:0]M01_AXI1_bvalid;
  input [31:0]M01_AXI1_rdata;
  output [0:0]M01_AXI1_rready;
  input [1:0]M01_AXI1_rresp;
  input [0:0]M01_AXI1_rvalid;
  output [31:0]M01_AXI1_wdata;
  input [0:0]M01_AXI1_wready;
  output [3:0]M01_AXI1_wstrb;
  output [0:0]M01_AXI1_wvalid;
  output [6:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [6:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input aux_reset_in;
  output [38:0]axi_cdc_data_static_M_AXI1_araddr;
  output [1:0]axi_cdc_data_static_M_AXI1_arburst;
  output [3:0]axi_cdc_data_static_M_AXI1_arcache;
  output [3:0]axi_cdc_data_static_M_AXI1_arid;
  output [7:0]axi_cdc_data_static_M_AXI1_arlen;
  output [0:0]axi_cdc_data_static_M_AXI1_arlock;
  output [2:0]axi_cdc_data_static_M_AXI1_arprot;
  output [3:0]axi_cdc_data_static_M_AXI1_arqos;
  input axi_cdc_data_static_M_AXI1_arready;
  output [2:0]axi_cdc_data_static_M_AXI1_arsize;
  output axi_cdc_data_static_M_AXI1_arvalid;
  output [38:0]axi_cdc_data_static_M_AXI1_awaddr;
  output [1:0]axi_cdc_data_static_M_AXI1_awburst;
  output [3:0]axi_cdc_data_static_M_AXI1_awcache;
  output [3:0]axi_cdc_data_static_M_AXI1_awid;
  output [7:0]axi_cdc_data_static_M_AXI1_awlen;
  output [0:0]axi_cdc_data_static_M_AXI1_awlock;
  output [2:0]axi_cdc_data_static_M_AXI1_awprot;
  output [3:0]axi_cdc_data_static_M_AXI1_awqos;
  input axi_cdc_data_static_M_AXI1_awready;
  output [2:0]axi_cdc_data_static_M_AXI1_awsize;
  output axi_cdc_data_static_M_AXI1_awvalid;
  input [3:0]axi_cdc_data_static_M_AXI1_bid;
  output axi_cdc_data_static_M_AXI1_bready;
  input [1:0]axi_cdc_data_static_M_AXI1_bresp;
  input axi_cdc_data_static_M_AXI1_bvalid;
  input [127:0]axi_cdc_data_static_M_AXI1_rdata;
  input [3:0]axi_cdc_data_static_M_AXI1_rid;
  input axi_cdc_data_static_M_AXI1_rlast;
  output axi_cdc_data_static_M_AXI1_rready;
  input [1:0]axi_cdc_data_static_M_AXI1_rresp;
  input axi_cdc_data_static_M_AXI1_rvalid;
  output [127:0]axi_cdc_data_static_M_AXI1_wdata;
  output axi_cdc_data_static_M_AXI1_wlast;
  input axi_cdc_data_static_M_AXI1_wready;
  output [15:0]axi_cdc_data_static_M_AXI1_wstrb;
  output axi_cdc_data_static_M_AXI1_wvalid;
  output [38:0]axi_cdc_data_static_M_AXI_araddr;
  output [1:0]axi_cdc_data_static_M_AXI_arburst;
  output [3:0]axi_cdc_data_static_M_AXI_arcache;
  output [3:0]axi_cdc_data_static_M_AXI_arid;
  output [7:0]axi_cdc_data_static_M_AXI_arlen;
  output [0:0]axi_cdc_data_static_M_AXI_arlock;
  output [2:0]axi_cdc_data_static_M_AXI_arprot;
  output [3:0]axi_cdc_data_static_M_AXI_arqos;
  input axi_cdc_data_static_M_AXI_arready;
  output [3:0]axi_cdc_data_static_M_AXI_arregion;
  output [2:0]axi_cdc_data_static_M_AXI_arsize;
  output axi_cdc_data_static_M_AXI_arvalid;
  output [38:0]axi_cdc_data_static_M_AXI_awaddr;
  output [1:0]axi_cdc_data_static_M_AXI_awburst;
  output [3:0]axi_cdc_data_static_M_AXI_awcache;
  output [3:0]axi_cdc_data_static_M_AXI_awid;
  output [7:0]axi_cdc_data_static_M_AXI_awlen;
  output [0:0]axi_cdc_data_static_M_AXI_awlock;
  output [2:0]axi_cdc_data_static_M_AXI_awprot;
  output [3:0]axi_cdc_data_static_M_AXI_awqos;
  input axi_cdc_data_static_M_AXI_awready;
  output [3:0]axi_cdc_data_static_M_AXI_awregion;
  output [2:0]axi_cdc_data_static_M_AXI_awsize;
  output axi_cdc_data_static_M_AXI_awvalid;
  input [3:0]axi_cdc_data_static_M_AXI_bid;
  output axi_cdc_data_static_M_AXI_bready;
  input [1:0]axi_cdc_data_static_M_AXI_bresp;
  input axi_cdc_data_static_M_AXI_bvalid;
  input [511:0]axi_cdc_data_static_M_AXI_rdata;
  input [3:0]axi_cdc_data_static_M_AXI_rid;
  input axi_cdc_data_static_M_AXI_rlast;
  output axi_cdc_data_static_M_AXI_rready;
  input [1:0]axi_cdc_data_static_M_AXI_rresp;
  input axi_cdc_data_static_M_AXI_rvalid;
  output [511:0]axi_cdc_data_static_M_AXI_wdata;
  output axi_cdc_data_static_M_AXI_wlast;
  input axi_cdc_data_static_M_AXI_wready;
  output [63:0]axi_cdc_data_static_M_AXI_wstrb;
  output axi_cdc_data_static_M_AXI_wvalid;
  output [25:0]axi_vip_ctrl_mgntpf_M_AXI_araddr;
  input axi_vip_ctrl_mgntpf_M_AXI_arready;
  output axi_vip_ctrl_mgntpf_M_AXI_arvalid;
  output [25:0]axi_vip_ctrl_mgntpf_M_AXI_awaddr;
  input axi_vip_ctrl_mgntpf_M_AXI_awready;
  output axi_vip_ctrl_mgntpf_M_AXI_awvalid;
  output axi_vip_ctrl_mgntpf_M_AXI_bready;
  input [1:0]axi_vip_ctrl_mgntpf_M_AXI_bresp;
  input axi_vip_ctrl_mgntpf_M_AXI_bvalid;
  input [31:0]axi_vip_ctrl_mgntpf_M_AXI_rdata;
  output axi_vip_ctrl_mgntpf_M_AXI_rready;
  input [1:0]axi_vip_ctrl_mgntpf_M_AXI_rresp;
  input axi_vip_ctrl_mgntpf_M_AXI_rvalid;
  output [31:0]axi_vip_ctrl_mgntpf_M_AXI_wdata;
  input axi_vip_ctrl_mgntpf_M_AXI_wready;
  output axi_vip_ctrl_mgntpf_M_AXI_wvalid;
  input blp_s_aclk_kernel_ref_clk_00;
  input clkwiz_kernel2_clk_out1;
  input clkwiz_kernel2_locked_slr1;
  input clkwiz_kernel_clk_out1;
  input clkwiz_kernel_locked_slr1;
  input clkwiz_sysclks_clk_out2;
  input clkwiz_sysclks_locked_slr1;
  input dma_pcie_axi_aclk;
  output [0:0]interconnect_aresetn;
  input [0:0]iob_static_perst_n_out;
  output [0:0]logic_reset_op_Res;
  input pcie_user_lnk_up_slr1;
  output [0:0]peripheral_aresetn;
  output [0:0]psreset_gate_pr_control_interconnect_aresetn;
  output [0:0]psreset_gate_pr_data_interconnect_aresetn;
  output [0:0]psreset_gate_pr_ddrmem_1_interconnect_aresetn;
  output [0:0]psreset_gate_pr_kernel_interconnect_aresetn;
  input [24:0]regslice_control_M_AXI_slr1_araddr;
  input [2:0]regslice_control_M_AXI_slr1_arprot;
  output regslice_control_M_AXI_slr1_arready;
  input regslice_control_M_AXI_slr1_arvalid;
  input [24:0]regslice_control_M_AXI_slr1_awaddr;
  input [2:0]regslice_control_M_AXI_slr1_awprot;
  output regslice_control_M_AXI_slr1_awready;
  input regslice_control_M_AXI_slr1_awvalid;
  input regslice_control_M_AXI_slr1_bready;
  output [1:0]regslice_control_M_AXI_slr1_bresp;
  output regslice_control_M_AXI_slr1_bvalid;
  output [31:0]regslice_control_M_AXI_slr1_rdata;
  input regslice_control_M_AXI_slr1_rready;
  output [1:0]regslice_control_M_AXI_slr1_rresp;
  output regslice_control_M_AXI_slr1_rvalid;
  input [31:0]regslice_control_M_AXI_slr1_wdata;
  output regslice_control_M_AXI_slr1_wready;
  input [3:0]regslice_control_M_AXI_slr1_wstrb;
  input regslice_control_M_AXI_slr1_wvalid;
  input [24:0]regslice_control_periph_M_AXI_slr1_araddr;
  input [2:0]regslice_control_periph_M_AXI_slr1_arprot;
  output regslice_control_periph_M_AXI_slr1_arready;
  input regslice_control_periph_M_AXI_slr1_arvalid;
  input [24:0]regslice_control_periph_M_AXI_slr1_awaddr;
  input [2:0]regslice_control_periph_M_AXI_slr1_awprot;
  output regslice_control_periph_M_AXI_slr1_awready;
  input regslice_control_periph_M_AXI_slr1_awvalid;
  input regslice_control_periph_M_AXI_slr1_bready;
  output [1:0]regslice_control_periph_M_AXI_slr1_bresp;
  output regslice_control_periph_M_AXI_slr1_bvalid;
  output [31:0]regslice_control_periph_M_AXI_slr1_rdata;
  input regslice_control_periph_M_AXI_slr1_rready;
  output [1:0]regslice_control_periph_M_AXI_slr1_rresp;
  output regslice_control_periph_M_AXI_slr1_rvalid;
  input [31:0]regslice_control_periph_M_AXI_slr1_wdata;
  output regslice_control_periph_M_AXI_slr1_wready;
  input [3:0]regslice_control_periph_M_AXI_slr1_wstrb;
  input regslice_control_periph_M_AXI_slr1_wvalid;
  input [24:0]regslice_control_userpf_M_AXI_slr1_araddr;
  input [2:0]regslice_control_userpf_M_AXI_slr1_arprot;
  output regslice_control_userpf_M_AXI_slr1_arready;
  input regslice_control_userpf_M_AXI_slr1_arvalid;
  input [24:0]regslice_control_userpf_M_AXI_slr1_awaddr;
  input [2:0]regslice_control_userpf_M_AXI_slr1_awprot;
  output regslice_control_userpf_M_AXI_slr1_awready;
  input regslice_control_userpf_M_AXI_slr1_awvalid;
  input regslice_control_userpf_M_AXI_slr1_bready;
  output [1:0]regslice_control_userpf_M_AXI_slr1_bresp;
  output regslice_control_userpf_M_AXI_slr1_bvalid;
  output [31:0]regslice_control_userpf_M_AXI_slr1_rdata;
  input regslice_control_userpf_M_AXI_slr1_rready;
  output [1:0]regslice_control_userpf_M_AXI_slr1_rresp;
  output regslice_control_userpf_M_AXI_slr1_rvalid;
  input [31:0]regslice_control_userpf_M_AXI_slr1_wdata;
  output regslice_control_userpf_M_AXI_slr1_wready;
  input [3:0]regslice_control_userpf_M_AXI_slr1_wstrb;
  input regslice_control_userpf_M_AXI_slr1_wvalid;
  input [38:0]regslice_data_static_M_AXI_slr1_araddr;
  input [1:0]regslice_data_static_M_AXI_slr1_arburst;
  input [3:0]regslice_data_static_M_AXI_slr1_arcache;
  input [3:0]regslice_data_static_M_AXI_slr1_arid;
  input [7:0]regslice_data_static_M_AXI_slr1_arlen;
  input [0:0]regslice_data_static_M_AXI_slr1_arlock;
  input [2:0]regslice_data_static_M_AXI_slr1_arprot;
  output regslice_data_static_M_AXI_slr1_arready;
  input regslice_data_static_M_AXI_slr1_arvalid;
  input [38:0]regslice_data_static_M_AXI_slr1_awaddr;
  input [1:0]regslice_data_static_M_AXI_slr1_awburst;
  input [3:0]regslice_data_static_M_AXI_slr1_awcache;
  input [3:0]regslice_data_static_M_AXI_slr1_awid;
  input [7:0]regslice_data_static_M_AXI_slr1_awlen;
  input [0:0]regslice_data_static_M_AXI_slr1_awlock;
  input [2:0]regslice_data_static_M_AXI_slr1_awprot;
  output regslice_data_static_M_AXI_slr1_awready;
  input regslice_data_static_M_AXI_slr1_awvalid;
  output [3:0]regslice_data_static_M_AXI_slr1_bid;
  input regslice_data_static_M_AXI_slr1_bready;
  output [1:0]regslice_data_static_M_AXI_slr1_bresp;
  output regslice_data_static_M_AXI_slr1_bvalid;
  output [511:0]regslice_data_static_M_AXI_slr1_rdata;
  output [3:0]regslice_data_static_M_AXI_slr1_rid;
  output regslice_data_static_M_AXI_slr1_rlast;
  input regslice_data_static_M_AXI_slr1_rready;
  output [1:0]regslice_data_static_M_AXI_slr1_rresp;
  output regslice_data_static_M_AXI_slr1_rvalid;
  input [511:0]regslice_data_static_M_AXI_slr1_wdata;
  input regslice_data_static_M_AXI_slr1_wlast;
  output regslice_data_static_M_AXI_slr1_wready;
  input [63:0]regslice_data_static_M_AXI_slr1_wstrb;
  input regslice_data_static_M_AXI_slr1_wvalid;
  input [38:0]regslice_data_static_M_AXI_slr2_araddr;
  input [1:0]regslice_data_static_M_AXI_slr2_arburst;
  input [3:0]regslice_data_static_M_AXI_slr2_arcache;
  input [3:0]regslice_data_static_M_AXI_slr2_arid;
  input [7:0]regslice_data_static_M_AXI_slr2_arlen;
  input [0:0]regslice_data_static_M_AXI_slr2_arlock;
  input [2:0]regslice_data_static_M_AXI_slr2_arprot;
  output regslice_data_static_M_AXI_slr2_arready;
  input regslice_data_static_M_AXI_slr2_arvalid;
  input [38:0]regslice_data_static_M_AXI_slr2_awaddr;
  input [1:0]regslice_data_static_M_AXI_slr2_awburst;
  input [3:0]regslice_data_static_M_AXI_slr2_awcache;
  input [3:0]regslice_data_static_M_AXI_slr2_awid;
  input [7:0]regslice_data_static_M_AXI_slr2_awlen;
  input [0:0]regslice_data_static_M_AXI_slr2_awlock;
  input [2:0]regslice_data_static_M_AXI_slr2_awprot;
  output regslice_data_static_M_AXI_slr2_awready;
  input regslice_data_static_M_AXI_slr2_awvalid;
  output [3:0]regslice_data_static_M_AXI_slr2_bid;
  input regslice_data_static_M_AXI_slr2_bready;
  output [1:0]regslice_data_static_M_AXI_slr2_bresp;
  output regslice_data_static_M_AXI_slr2_bvalid;
  output [127:0]regslice_data_static_M_AXI_slr2_rdata;
  output [3:0]regslice_data_static_M_AXI_slr2_rid;
  output regslice_data_static_M_AXI_slr2_rlast;
  input regslice_data_static_M_AXI_slr2_rready;
  output [1:0]regslice_data_static_M_AXI_slr2_rresp;
  output regslice_data_static_M_AXI_slr2_rvalid;
  input [127:0]regslice_data_static_M_AXI_slr2_wdata;
  input regslice_data_static_M_AXI_slr2_wlast;
  output regslice_data_static_M_AXI_slr2_wready;
  input [15:0]regslice_data_static_M_AXI_slr2_wstrb;
  input regslice_data_static_M_AXI_slr2_wvalid;
  input [0:0]slice_reset_kernel_pr_Dout_slr1;

  wire [0:0]ARESETN_1;
  wire [6:0]Conn1_ARADDR;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [6:0]Conn1_AWADDR;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [24:0]Conn2_ARADDR;
  wire [0:0]Conn2_ARREADY;
  wire [0:0]Conn2_ARVALID;
  wire [24:0]Conn2_AWADDR;
  wire [0:0]Conn2_AWREADY;
  wire [0:0]Conn2_AWVALID;
  wire [0:0]Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire [0:0]Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire [0:0]Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire [0:0]Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire [0:0]Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire [0:0]Conn2_WVALID;
  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire aclk_0_1;
  wire aux_reset_in_1;
  wire [38:0]axi_cdc_data_static1_M_AXI_ARADDR;
  wire [1:0]axi_cdc_data_static1_M_AXI_ARBURST;
  wire [3:0]axi_cdc_data_static1_M_AXI_ARCACHE;
  wire [3:0]axi_cdc_data_static1_M_AXI_ARID;
  wire [7:0]axi_cdc_data_static1_M_AXI_ARLEN;
  wire [0:0]axi_cdc_data_static1_M_AXI_ARLOCK;
  wire [2:0]axi_cdc_data_static1_M_AXI_ARPROT;
  wire [3:0]axi_cdc_data_static1_M_AXI_ARQOS;
  wire axi_cdc_data_static1_M_AXI_ARREADY;
  wire [2:0]axi_cdc_data_static1_M_AXI_ARSIZE;
  wire axi_cdc_data_static1_M_AXI_ARVALID;
  wire [38:0]axi_cdc_data_static1_M_AXI_AWADDR;
  wire [1:0]axi_cdc_data_static1_M_AXI_AWBURST;
  wire [3:0]axi_cdc_data_static1_M_AXI_AWCACHE;
  wire [3:0]axi_cdc_data_static1_M_AXI_AWID;
  wire [7:0]axi_cdc_data_static1_M_AXI_AWLEN;
  wire [0:0]axi_cdc_data_static1_M_AXI_AWLOCK;
  wire [2:0]axi_cdc_data_static1_M_AXI_AWPROT;
  wire [3:0]axi_cdc_data_static1_M_AXI_AWQOS;
  wire axi_cdc_data_static1_M_AXI_AWREADY;
  wire [2:0]axi_cdc_data_static1_M_AXI_AWSIZE;
  wire axi_cdc_data_static1_M_AXI_AWVALID;
  wire [3:0]axi_cdc_data_static1_M_AXI_BID;
  wire axi_cdc_data_static1_M_AXI_BREADY;
  wire [1:0]axi_cdc_data_static1_M_AXI_BRESP;
  wire axi_cdc_data_static1_M_AXI_BVALID;
  wire [127:0]axi_cdc_data_static1_M_AXI_RDATA;
  wire [3:0]axi_cdc_data_static1_M_AXI_RID;
  wire axi_cdc_data_static1_M_AXI_RLAST;
  wire axi_cdc_data_static1_M_AXI_RREADY;
  wire [1:0]axi_cdc_data_static1_M_AXI_RRESP;
  wire axi_cdc_data_static1_M_AXI_RVALID;
  wire [127:0]axi_cdc_data_static1_M_AXI_WDATA;
  wire axi_cdc_data_static1_M_AXI_WLAST;
  wire axi_cdc_data_static1_M_AXI_WREADY;
  wire [15:0]axi_cdc_data_static1_M_AXI_WSTRB;
  wire axi_cdc_data_static1_M_AXI_WVALID;
  wire [38:0]axi_cdc_data_static_M_AXI_ARADDR;
  wire [1:0]axi_cdc_data_static_M_AXI_ARBURST;
  wire [3:0]axi_cdc_data_static_M_AXI_ARCACHE;
  wire [3:0]axi_cdc_data_static_M_AXI_ARID;
  wire [7:0]axi_cdc_data_static_M_AXI_ARLEN;
  wire [0:0]axi_cdc_data_static_M_AXI_ARLOCK;
  wire [2:0]axi_cdc_data_static_M_AXI_ARPROT;
  wire [3:0]axi_cdc_data_static_M_AXI_ARQOS;
  wire axi_cdc_data_static_M_AXI_ARREADY;
  wire [3:0]axi_cdc_data_static_M_AXI_ARREGION;
  wire [2:0]axi_cdc_data_static_M_AXI_ARSIZE;
  wire axi_cdc_data_static_M_AXI_ARVALID;
  wire [38:0]axi_cdc_data_static_M_AXI_AWADDR;
  wire [1:0]axi_cdc_data_static_M_AXI_AWBURST;
  wire [3:0]axi_cdc_data_static_M_AXI_AWCACHE;
  wire [3:0]axi_cdc_data_static_M_AXI_AWID;
  wire [7:0]axi_cdc_data_static_M_AXI_AWLEN;
  wire [0:0]axi_cdc_data_static_M_AXI_AWLOCK;
  wire [2:0]axi_cdc_data_static_M_AXI_AWPROT;
  wire [3:0]axi_cdc_data_static_M_AXI_AWQOS;
  wire axi_cdc_data_static_M_AXI_AWREADY;
  wire [3:0]axi_cdc_data_static_M_AXI_AWREGION;
  wire [2:0]axi_cdc_data_static_M_AXI_AWSIZE;
  wire axi_cdc_data_static_M_AXI_AWVALID;
  wire [3:0]axi_cdc_data_static_M_AXI_BID;
  wire axi_cdc_data_static_M_AXI_BREADY;
  wire [1:0]axi_cdc_data_static_M_AXI_BRESP;
  wire axi_cdc_data_static_M_AXI_BVALID;
  wire [511:0]axi_cdc_data_static_M_AXI_RDATA;
  wire [3:0]axi_cdc_data_static_M_AXI_RID;
  wire axi_cdc_data_static_M_AXI_RLAST;
  wire axi_cdc_data_static_M_AXI_RREADY;
  wire [1:0]axi_cdc_data_static_M_AXI_RRESP;
  wire axi_cdc_data_static_M_AXI_RVALID;
  wire [511:0]axi_cdc_data_static_M_AXI_WDATA;
  wire axi_cdc_data_static_M_AXI_WLAST;
  wire axi_cdc_data_static_M_AXI_WREADY;
  wire [63:0]axi_cdc_data_static_M_AXI_WSTRB;
  wire axi_cdc_data_static_M_AXI_WVALID;
  wire [25:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [25:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [24:0]axi_vip_ctrl_mgntpf_M_AXI1_ARADDR;
  wire [2:0]axi_vip_ctrl_mgntpf_M_AXI1_ARPROT;
  wire [0:0]axi_vip_ctrl_mgntpf_M_AXI1_ARREADY;
  wire axi_vip_ctrl_mgntpf_M_AXI1_ARVALID;
  wire [24:0]axi_vip_ctrl_mgntpf_M_AXI1_AWADDR;
  wire [2:0]axi_vip_ctrl_mgntpf_M_AXI1_AWPROT;
  wire [0:0]axi_vip_ctrl_mgntpf_M_AXI1_AWREADY;
  wire axi_vip_ctrl_mgntpf_M_AXI1_AWVALID;
  wire axi_vip_ctrl_mgntpf_M_AXI1_BREADY;
  wire [1:0]axi_vip_ctrl_mgntpf_M_AXI1_BRESP;
  wire [0:0]axi_vip_ctrl_mgntpf_M_AXI1_BVALID;
  wire [31:0]axi_vip_ctrl_mgntpf_M_AXI1_RDATA;
  wire axi_vip_ctrl_mgntpf_M_AXI1_RREADY;
  wire [1:0]axi_vip_ctrl_mgntpf_M_AXI1_RRESP;
  wire [0:0]axi_vip_ctrl_mgntpf_M_AXI1_RVALID;
  wire [31:0]axi_vip_ctrl_mgntpf_M_AXI1_WDATA;
  wire [0:0]axi_vip_ctrl_mgntpf_M_AXI1_WREADY;
  wire [3:0]axi_vip_ctrl_mgntpf_M_AXI1_WSTRB;
  wire axi_vip_ctrl_mgntpf_M_AXI1_WVALID;
  wire [24:0]axi_vip_ctrl_userpf_M_AXI_ARADDR;
  wire [2:0]axi_vip_ctrl_userpf_M_AXI_ARPROT;
  wire axi_vip_ctrl_userpf_M_AXI_ARREADY;
  wire axi_vip_ctrl_userpf_M_AXI_ARVALID;
  wire [24:0]axi_vip_ctrl_userpf_M_AXI_AWADDR;
  wire [2:0]axi_vip_ctrl_userpf_M_AXI_AWPROT;
  wire axi_vip_ctrl_userpf_M_AXI_AWREADY;
  wire axi_vip_ctrl_userpf_M_AXI_AWVALID;
  wire axi_vip_ctrl_userpf_M_AXI_BREADY;
  wire [1:0]axi_vip_ctrl_userpf_M_AXI_BRESP;
  wire axi_vip_ctrl_userpf_M_AXI_BVALID;
  wire [31:0]axi_vip_ctrl_userpf_M_AXI_RDATA;
  wire axi_vip_ctrl_userpf_M_AXI_RREADY;
  wire [1:0]axi_vip_ctrl_userpf_M_AXI_RRESP;
  wire axi_vip_ctrl_userpf_M_AXI_RVALID;
  wire [31:0]axi_vip_ctrl_userpf_M_AXI_WDATA;
  wire axi_vip_ctrl_userpf_M_AXI_WREADY;
  wire [3:0]axi_vip_ctrl_userpf_M_AXI_WSTRB;
  wire axi_vip_ctrl_userpf_M_AXI_WVALID;
  wire [38:0]axi_vip_data_static1_M_AXI_ARADDR;
  wire [1:0]axi_vip_data_static1_M_AXI_ARBURST;
  wire [3:0]axi_vip_data_static1_M_AXI_ARCACHE;
  wire [3:0]axi_vip_data_static1_M_AXI_ARID;
  wire [7:0]axi_vip_data_static1_M_AXI_ARLEN;
  wire [0:0]axi_vip_data_static1_M_AXI_ARLOCK;
  wire [2:0]axi_vip_data_static1_M_AXI_ARPROT;
  wire axi_vip_data_static1_M_AXI_ARREADY;
  wire axi_vip_data_static1_M_AXI_ARVALID;
  wire [38:0]axi_vip_data_static1_M_AXI_AWADDR;
  wire [1:0]axi_vip_data_static1_M_AXI_AWBURST;
  wire [3:0]axi_vip_data_static1_M_AXI_AWCACHE;
  wire [3:0]axi_vip_data_static1_M_AXI_AWID;
  wire [7:0]axi_vip_data_static1_M_AXI_AWLEN;
  wire [0:0]axi_vip_data_static1_M_AXI_AWLOCK;
  wire [2:0]axi_vip_data_static1_M_AXI_AWPROT;
  wire axi_vip_data_static1_M_AXI_AWREADY;
  wire axi_vip_data_static1_M_AXI_AWVALID;
  wire [3:0]axi_vip_data_static1_M_AXI_BID;
  wire axi_vip_data_static1_M_AXI_BREADY;
  wire [1:0]axi_vip_data_static1_M_AXI_BRESP;
  wire axi_vip_data_static1_M_AXI_BVALID;
  wire [127:0]axi_vip_data_static1_M_AXI_RDATA;
  wire [3:0]axi_vip_data_static1_M_AXI_RID;
  wire axi_vip_data_static1_M_AXI_RLAST;
  wire axi_vip_data_static1_M_AXI_RREADY;
  wire [1:0]axi_vip_data_static1_M_AXI_RRESP;
  wire axi_vip_data_static1_M_AXI_RVALID;
  wire [127:0]axi_vip_data_static1_M_AXI_WDATA;
  wire axi_vip_data_static1_M_AXI_WLAST;
  wire axi_vip_data_static1_M_AXI_WREADY;
  wire [15:0]axi_vip_data_static1_M_AXI_WSTRB;
  wire axi_vip_data_static1_M_AXI_WVALID;
  wire [38:0]axi_vip_data_static_M_AXI_ARADDR;
  wire [1:0]axi_vip_data_static_M_AXI_ARBURST;
  wire [3:0]axi_vip_data_static_M_AXI_ARCACHE;
  wire [3:0]axi_vip_data_static_M_AXI_ARID;
  wire [7:0]axi_vip_data_static_M_AXI_ARLEN;
  wire [0:0]axi_vip_data_static_M_AXI_ARLOCK;
  wire [2:0]axi_vip_data_static_M_AXI_ARPROT;
  wire axi_vip_data_static_M_AXI_ARREADY;
  wire axi_vip_data_static_M_AXI_ARVALID;
  wire [38:0]axi_vip_data_static_M_AXI_AWADDR;
  wire [1:0]axi_vip_data_static_M_AXI_AWBURST;
  wire [3:0]axi_vip_data_static_M_AXI_AWCACHE;
  wire [3:0]axi_vip_data_static_M_AXI_AWID;
  wire [7:0]axi_vip_data_static_M_AXI_AWLEN;
  wire [0:0]axi_vip_data_static_M_AXI_AWLOCK;
  wire [2:0]axi_vip_data_static_M_AXI_AWPROT;
  wire axi_vip_data_static_M_AXI_AWREADY;
  wire axi_vip_data_static_M_AXI_AWVALID;
  wire [3:0]axi_vip_data_static_M_AXI_BID;
  wire axi_vip_data_static_M_AXI_BREADY;
  wire [1:0]axi_vip_data_static_M_AXI_BRESP;
  wire axi_vip_data_static_M_AXI_BVALID;
  wire [511:0]axi_vip_data_static_M_AXI_RDATA;
  wire [3:0]axi_vip_data_static_M_AXI_RID;
  wire axi_vip_data_static_M_AXI_RLAST;
  wire axi_vip_data_static_M_AXI_RREADY;
  wire [1:0]axi_vip_data_static_M_AXI_RRESP;
  wire axi_vip_data_static_M_AXI_RVALID;
  wire [511:0]axi_vip_data_static_M_AXI_WDATA;
  wire axi_vip_data_static_M_AXI_WLAST;
  wire axi_vip_data_static_M_AXI_WREADY;
  wire [63:0]axi_vip_data_static_M_AXI_WSTRB;
  wire axi_vip_data_static_M_AXI_WVALID;
  wire clkwiz_kernel2_clk_out1_1;
  wire clkwiz_kernel2_locked_1;
  wire clkwiz_kernel_clk_out1_1;
  wire clkwiz_kernel_locked_1;
  wire clkwiz_sysclks_locked_1;
  wire dcm_locked_0_1;
  wire [8:0]interconnect_axilite_user_M00_AXI_ARADDR;
  wire interconnect_axilite_user_M00_AXI_ARREADY;
  wire interconnect_axilite_user_M00_AXI_ARVALID;
  wire [8:0]interconnect_axilite_user_M00_AXI_AWADDR;
  wire interconnect_axilite_user_M00_AXI_AWREADY;
  wire interconnect_axilite_user_M00_AXI_AWVALID;
  wire interconnect_axilite_user_M00_AXI_BREADY;
  wire [1:0]interconnect_axilite_user_M00_AXI_BRESP;
  wire interconnect_axilite_user_M00_AXI_BVALID;
  wire [31:0]interconnect_axilite_user_M00_AXI_RDATA;
  wire interconnect_axilite_user_M00_AXI_RREADY;
  wire [1:0]interconnect_axilite_user_M00_AXI_RRESP;
  wire interconnect_axilite_user_M00_AXI_RVALID;
  wire [31:0]interconnect_axilite_user_M00_AXI_WDATA;
  wire interconnect_axilite_user_M00_AXI_WREADY;
  wire [3:0]interconnect_axilite_user_M00_AXI_WSTRB;
  wire interconnect_axilite_user_M00_AXI_WVALID;
  wire [0:0]iob_static_perst_n_out_1;
  wire [24:0]regslice_control_M_AXI_slr1_1_ARADDR;
  wire [2:0]regslice_control_M_AXI_slr1_1_ARPROT;
  wire regslice_control_M_AXI_slr1_1_ARREADY;
  wire regslice_control_M_AXI_slr1_1_ARVALID;
  wire [24:0]regslice_control_M_AXI_slr1_1_AWADDR;
  wire [2:0]regslice_control_M_AXI_slr1_1_AWPROT;
  wire regslice_control_M_AXI_slr1_1_AWREADY;
  wire regslice_control_M_AXI_slr1_1_AWVALID;
  wire regslice_control_M_AXI_slr1_1_BREADY;
  wire [1:0]regslice_control_M_AXI_slr1_1_BRESP;
  wire regslice_control_M_AXI_slr1_1_BVALID;
  wire [31:0]regslice_control_M_AXI_slr1_1_RDATA;
  wire regslice_control_M_AXI_slr1_1_RREADY;
  wire [1:0]regslice_control_M_AXI_slr1_1_RRESP;
  wire regslice_control_M_AXI_slr1_1_RVALID;
  wire [31:0]regslice_control_M_AXI_slr1_1_WDATA;
  wire regslice_control_M_AXI_slr1_1_WREADY;
  wire [3:0]regslice_control_M_AXI_slr1_1_WSTRB;
  wire regslice_control_M_AXI_slr1_1_WVALID;
  wire [25:0]regslice_control_mgntpf_M_AXI_ARADDR;
  wire regslice_control_mgntpf_M_AXI_ARREADY;
  wire regslice_control_mgntpf_M_AXI_ARVALID;
  wire [25:0]regslice_control_mgntpf_M_AXI_AWADDR;
  wire regslice_control_mgntpf_M_AXI_AWREADY;
  wire regslice_control_mgntpf_M_AXI_AWVALID;
  wire regslice_control_mgntpf_M_AXI_BREADY;
  wire [1:0]regslice_control_mgntpf_M_AXI_BRESP;
  wire regslice_control_mgntpf_M_AXI_BVALID;
  wire [31:0]regslice_control_mgntpf_M_AXI_RDATA;
  wire regslice_control_mgntpf_M_AXI_RREADY;
  wire [1:0]regslice_control_mgntpf_M_AXI_RRESP;
  wire regslice_control_mgntpf_M_AXI_RVALID;
  wire [31:0]regslice_control_mgntpf_M_AXI_WDATA;
  wire regslice_control_mgntpf_M_AXI_WREADY;
  wire regslice_control_mgntpf_M_AXI_WVALID;
  wire [24:0]regslice_control_periph_M_AXI_slr1_1_ARADDR;
  wire [2:0]regslice_control_periph_M_AXI_slr1_1_ARPROT;
  wire regslice_control_periph_M_AXI_slr1_1_ARREADY;
  wire regslice_control_periph_M_AXI_slr1_1_ARVALID;
  wire [24:0]regslice_control_periph_M_AXI_slr1_1_AWADDR;
  wire [2:0]regslice_control_periph_M_AXI_slr1_1_AWPROT;
  wire regslice_control_periph_M_AXI_slr1_1_AWREADY;
  wire regslice_control_periph_M_AXI_slr1_1_AWVALID;
  wire regslice_control_periph_M_AXI_slr1_1_BREADY;
  wire [1:0]regslice_control_periph_M_AXI_slr1_1_BRESP;
  wire regslice_control_periph_M_AXI_slr1_1_BVALID;
  wire [31:0]regslice_control_periph_M_AXI_slr1_1_RDATA;
  wire regslice_control_periph_M_AXI_slr1_1_RREADY;
  wire [1:0]regslice_control_periph_M_AXI_slr1_1_RRESP;
  wire regslice_control_periph_M_AXI_slr1_1_RVALID;
  wire [31:0]regslice_control_periph_M_AXI_slr1_1_WDATA;
  wire regslice_control_periph_M_AXI_slr1_1_WREADY;
  wire [3:0]regslice_control_periph_M_AXI_slr1_1_WSTRB;
  wire regslice_control_periph_M_AXI_slr1_1_WVALID;
  wire [24:0]regslice_control_userpf_M_AXI_ARADDR;
  wire [2:0]regslice_control_userpf_M_AXI_ARPROT;
  wire regslice_control_userpf_M_AXI_ARREADY;
  wire regslice_control_userpf_M_AXI_ARVALID;
  wire [24:0]regslice_control_userpf_M_AXI_AWADDR;
  wire [2:0]regslice_control_userpf_M_AXI_AWPROT;
  wire regslice_control_userpf_M_AXI_AWREADY;
  wire regslice_control_userpf_M_AXI_AWVALID;
  wire regslice_control_userpf_M_AXI_BREADY;
  wire [1:0]regslice_control_userpf_M_AXI_BRESP;
  wire regslice_control_userpf_M_AXI_BVALID;
  wire [31:0]regslice_control_userpf_M_AXI_RDATA;
  wire regslice_control_userpf_M_AXI_RREADY;
  wire [1:0]regslice_control_userpf_M_AXI_RRESP;
  wire regslice_control_userpf_M_AXI_RVALID;
  wire [31:0]regslice_control_userpf_M_AXI_WDATA;
  wire regslice_control_userpf_M_AXI_WREADY;
  wire [3:0]regslice_control_userpf_M_AXI_WSTRB;
  wire regslice_control_userpf_M_AXI_WVALID;
  wire [24:0]regslice_control_userpf_M_AXI_slr1_1_ARADDR;
  wire [2:0]regslice_control_userpf_M_AXI_slr1_1_ARPROT;
  wire regslice_control_userpf_M_AXI_slr1_1_ARREADY;
  wire regslice_control_userpf_M_AXI_slr1_1_ARVALID;
  wire [24:0]regslice_control_userpf_M_AXI_slr1_1_AWADDR;
  wire [2:0]regslice_control_userpf_M_AXI_slr1_1_AWPROT;
  wire regslice_control_userpf_M_AXI_slr1_1_AWREADY;
  wire regslice_control_userpf_M_AXI_slr1_1_AWVALID;
  wire regslice_control_userpf_M_AXI_slr1_1_BREADY;
  wire [1:0]regslice_control_userpf_M_AXI_slr1_1_BRESP;
  wire regslice_control_userpf_M_AXI_slr1_1_BVALID;
  wire [31:0]regslice_control_userpf_M_AXI_slr1_1_RDATA;
  wire regslice_control_userpf_M_AXI_slr1_1_RREADY;
  wire [1:0]regslice_control_userpf_M_AXI_slr1_1_RRESP;
  wire regslice_control_userpf_M_AXI_slr1_1_RVALID;
  wire [31:0]regslice_control_userpf_M_AXI_slr1_1_WDATA;
  wire regslice_control_userpf_M_AXI_slr1_1_WREADY;
  wire [3:0]regslice_control_userpf_M_AXI_slr1_1_WSTRB;
  wire regslice_control_userpf_M_AXI_slr1_1_WVALID;
  wire [38:0]regslice_data_static1_M_AXI_ARADDR;
  wire [1:0]regslice_data_static1_M_AXI_ARBURST;
  wire [3:0]regslice_data_static1_M_AXI_ARCACHE;
  wire [3:0]regslice_data_static1_M_AXI_ARID;
  wire [7:0]regslice_data_static1_M_AXI_ARLEN;
  wire [0:0]regslice_data_static1_M_AXI_ARLOCK;
  wire [2:0]regslice_data_static1_M_AXI_ARPROT;
  wire [3:0]regslice_data_static1_M_AXI_ARQOS;
  wire regslice_data_static1_M_AXI_ARREADY;
  wire [3:0]regslice_data_static1_M_AXI_ARREGION;
  wire [2:0]regslice_data_static1_M_AXI_ARSIZE;
  wire regslice_data_static1_M_AXI_ARVALID;
  wire [38:0]regslice_data_static1_M_AXI_AWADDR;
  wire [1:0]regslice_data_static1_M_AXI_AWBURST;
  wire [3:0]regslice_data_static1_M_AXI_AWCACHE;
  wire [3:0]regslice_data_static1_M_AXI_AWID;
  wire [7:0]regslice_data_static1_M_AXI_AWLEN;
  wire [0:0]regslice_data_static1_M_AXI_AWLOCK;
  wire [2:0]regslice_data_static1_M_AXI_AWPROT;
  wire [3:0]regslice_data_static1_M_AXI_AWQOS;
  wire regslice_data_static1_M_AXI_AWREADY;
  wire [3:0]regslice_data_static1_M_AXI_AWREGION;
  wire [2:0]regslice_data_static1_M_AXI_AWSIZE;
  wire regslice_data_static1_M_AXI_AWVALID;
  wire [3:0]regslice_data_static1_M_AXI_BID;
  wire regslice_data_static1_M_AXI_BREADY;
  wire [1:0]regslice_data_static1_M_AXI_BRESP;
  wire regslice_data_static1_M_AXI_BVALID;
  wire [127:0]regslice_data_static1_M_AXI_RDATA;
  wire [3:0]regslice_data_static1_M_AXI_RID;
  wire regslice_data_static1_M_AXI_RLAST;
  wire regslice_data_static1_M_AXI_RREADY;
  wire [1:0]regslice_data_static1_M_AXI_RRESP;
  wire regslice_data_static1_M_AXI_RVALID;
  wire [127:0]regslice_data_static1_M_AXI_WDATA;
  wire regslice_data_static1_M_AXI_WLAST;
  wire regslice_data_static1_M_AXI_WREADY;
  wire [15:0]regslice_data_static1_M_AXI_WSTRB;
  wire regslice_data_static1_M_AXI_WVALID;
  wire [38:0]regslice_data_static_M_AXI1_ARADDR;
  wire [1:0]regslice_data_static_M_AXI1_ARBURST;
  wire [3:0]regslice_data_static_M_AXI1_ARCACHE;
  wire [3:0]regslice_data_static_M_AXI1_ARID;
  wire [7:0]regslice_data_static_M_AXI1_ARLEN;
  wire [0:0]regslice_data_static_M_AXI1_ARLOCK;
  wire [2:0]regslice_data_static_M_AXI1_ARPROT;
  wire [3:0]regslice_data_static_M_AXI1_ARQOS;
  wire regslice_data_static_M_AXI1_ARREADY;
  wire [3:0]regslice_data_static_M_AXI1_ARREGION;
  wire [2:0]regslice_data_static_M_AXI1_ARSIZE;
  wire regslice_data_static_M_AXI1_ARVALID;
  wire [38:0]regslice_data_static_M_AXI1_AWADDR;
  wire [1:0]regslice_data_static_M_AXI1_AWBURST;
  wire [3:0]regslice_data_static_M_AXI1_AWCACHE;
  wire [3:0]regslice_data_static_M_AXI1_AWID;
  wire [7:0]regslice_data_static_M_AXI1_AWLEN;
  wire [0:0]regslice_data_static_M_AXI1_AWLOCK;
  wire [2:0]regslice_data_static_M_AXI1_AWPROT;
  wire [3:0]regslice_data_static_M_AXI1_AWQOS;
  wire regslice_data_static_M_AXI1_AWREADY;
  wire [3:0]regslice_data_static_M_AXI1_AWREGION;
  wire [2:0]regslice_data_static_M_AXI1_AWSIZE;
  wire regslice_data_static_M_AXI1_AWVALID;
  wire [3:0]regslice_data_static_M_AXI1_BID;
  wire regslice_data_static_M_AXI1_BREADY;
  wire [1:0]regslice_data_static_M_AXI1_BRESP;
  wire regslice_data_static_M_AXI1_BVALID;
  wire [511:0]regslice_data_static_M_AXI1_RDATA;
  wire [3:0]regslice_data_static_M_AXI1_RID;
  wire regslice_data_static_M_AXI1_RLAST;
  wire regslice_data_static_M_AXI1_RREADY;
  wire [1:0]regslice_data_static_M_AXI1_RRESP;
  wire regslice_data_static_M_AXI1_RVALID;
  wire [511:0]regslice_data_static_M_AXI1_WDATA;
  wire regslice_data_static_M_AXI1_WLAST;
  wire regslice_data_static_M_AXI1_WREADY;
  wire [63:0]regslice_data_static_M_AXI1_WSTRB;
  wire regslice_data_static_M_AXI1_WVALID;
  wire [38:0]regslice_data_static_M_AXI_slr1_1_ARADDR;
  wire [1:0]regslice_data_static_M_AXI_slr1_1_ARBURST;
  wire [3:0]regslice_data_static_M_AXI_slr1_1_ARCACHE;
  wire [3:0]regslice_data_static_M_AXI_slr1_1_ARID;
  wire [7:0]regslice_data_static_M_AXI_slr1_1_ARLEN;
  wire [0:0]regslice_data_static_M_AXI_slr1_1_ARLOCK;
  wire [2:0]regslice_data_static_M_AXI_slr1_1_ARPROT;
  wire regslice_data_static_M_AXI_slr1_1_ARREADY;
  wire regslice_data_static_M_AXI_slr1_1_ARVALID;
  wire [38:0]regslice_data_static_M_AXI_slr1_1_AWADDR;
  wire [1:0]regslice_data_static_M_AXI_slr1_1_AWBURST;
  wire [3:0]regslice_data_static_M_AXI_slr1_1_AWCACHE;
  wire [3:0]regslice_data_static_M_AXI_slr1_1_AWID;
  wire [7:0]regslice_data_static_M_AXI_slr1_1_AWLEN;
  wire [0:0]regslice_data_static_M_AXI_slr1_1_AWLOCK;
  wire [2:0]regslice_data_static_M_AXI_slr1_1_AWPROT;
  wire regslice_data_static_M_AXI_slr1_1_AWREADY;
  wire regslice_data_static_M_AXI_slr1_1_AWVALID;
  wire [3:0]regslice_data_static_M_AXI_slr1_1_BID;
  wire regslice_data_static_M_AXI_slr1_1_BREADY;
  wire [1:0]regslice_data_static_M_AXI_slr1_1_BRESP;
  wire regslice_data_static_M_AXI_slr1_1_BVALID;
  wire [511:0]regslice_data_static_M_AXI_slr1_1_RDATA;
  wire [3:0]regslice_data_static_M_AXI_slr1_1_RID;
  wire regslice_data_static_M_AXI_slr1_1_RLAST;
  wire regslice_data_static_M_AXI_slr1_1_RREADY;
  wire [1:0]regslice_data_static_M_AXI_slr1_1_RRESP;
  wire regslice_data_static_M_AXI_slr1_1_RVALID;
  wire [511:0]regslice_data_static_M_AXI_slr1_1_WDATA;
  wire regslice_data_static_M_AXI_slr1_1_WLAST;
  wire regslice_data_static_M_AXI_slr1_1_WREADY;
  wire [63:0]regslice_data_static_M_AXI_slr1_1_WSTRB;
  wire regslice_data_static_M_AXI_slr1_1_WVALID;
  wire [38:0]regslice_data_static_M_AXI_slr2_1_ARADDR;
  wire [1:0]regslice_data_static_M_AXI_slr2_1_ARBURST;
  wire [3:0]regslice_data_static_M_AXI_slr2_1_ARCACHE;
  wire [3:0]regslice_data_static_M_AXI_slr2_1_ARID;
  wire [7:0]regslice_data_static_M_AXI_slr2_1_ARLEN;
  wire [0:0]regslice_data_static_M_AXI_slr2_1_ARLOCK;
  wire [2:0]regslice_data_static_M_AXI_slr2_1_ARPROT;
  wire regslice_data_static_M_AXI_slr2_1_ARREADY;
  wire regslice_data_static_M_AXI_slr2_1_ARVALID;
  wire [38:0]regslice_data_static_M_AXI_slr2_1_AWADDR;
  wire [1:0]regslice_data_static_M_AXI_slr2_1_AWBURST;
  wire [3:0]regslice_data_static_M_AXI_slr2_1_AWCACHE;
  wire [3:0]regslice_data_static_M_AXI_slr2_1_AWID;
  wire [7:0]regslice_data_static_M_AXI_slr2_1_AWLEN;
  wire [0:0]regslice_data_static_M_AXI_slr2_1_AWLOCK;
  wire [2:0]regslice_data_static_M_AXI_slr2_1_AWPROT;
  wire regslice_data_static_M_AXI_slr2_1_AWREADY;
  wire regslice_data_static_M_AXI_slr2_1_AWVALID;
  wire [3:0]regslice_data_static_M_AXI_slr2_1_BID;
  wire regslice_data_static_M_AXI_slr2_1_BREADY;
  wire [1:0]regslice_data_static_M_AXI_slr2_1_BRESP;
  wire regslice_data_static_M_AXI_slr2_1_BVALID;
  wire [127:0]regslice_data_static_M_AXI_slr2_1_RDATA;
  wire [3:0]regslice_data_static_M_AXI_slr2_1_RID;
  wire regslice_data_static_M_AXI_slr2_1_RLAST;
  wire regslice_data_static_M_AXI_slr2_1_RREADY;
  wire [1:0]regslice_data_static_M_AXI_slr2_1_RRESP;
  wire regslice_data_static_M_AXI_slr2_1_RVALID;
  wire [127:0]regslice_data_static_M_AXI_slr2_1_WDATA;
  wire regslice_data_static_M_AXI_slr2_1_WLAST;
  wire regslice_data_static_M_AXI_slr2_1_WREADY;
  wire [15:0]regslice_data_static_M_AXI_slr2_1_WSTRB;
  wire regslice_data_static_M_AXI_slr2_1_WVALID;
  wire [0:0]reset_controllers_interconnect_aresetn;
  wire [0:0]reset_controllers_interconnect_aresetn1;
  wire [0:0]reset_controllers_logic_reset_op_Res;
  wire [0:0]reset_controllers_peripheral_aresetn;
  wire [0:0]reset_controllers_psreset_gate_pr_kernel_interconnect_aresetn;
  wire [0:0]slice_reset_kernel_pr_Dout_1;
  wire slowest_sync_clk_1;

  assign Conn1_ARREADY = M01_AXI_arready;
  assign Conn1_AWREADY = M01_AXI_awready;
  assign Conn1_BRESP = M01_AXI_bresp[1:0];
  assign Conn1_BVALID = M01_AXI_bvalid;
  assign Conn1_RDATA = M01_AXI_rdata[31:0];
  assign Conn1_RRESP = M01_AXI_rresp[1:0];
  assign Conn1_RVALID = M01_AXI_rvalid;
  assign Conn1_WREADY = M01_AXI_wready;
  assign Conn2_ARREADY = M01_AXI1_arready[0];
  assign Conn2_AWREADY = M01_AXI1_awready[0];
  assign Conn2_BRESP = M01_AXI1_bresp[1:0];
  assign Conn2_BVALID = M01_AXI1_bvalid[0];
  assign Conn2_RDATA = M01_AXI1_rdata[31:0];
  assign Conn2_RRESP = M01_AXI1_rresp[1:0];
  assign Conn2_RVALID = M01_AXI1_rvalid[0];
  assign Conn2_WREADY = M01_AXI1_wready[0];
  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M01_ACLK_1 = blp_s_aclk_kernel_ref_clk_00;
  assign M01_AXI1_araddr[24:0] = Conn2_ARADDR;
  assign M01_AXI1_arvalid[0] = Conn2_ARVALID;
  assign M01_AXI1_awaddr[24:0] = Conn2_AWADDR;
  assign M01_AXI1_awvalid[0] = Conn2_AWVALID;
  assign M01_AXI1_bready[0] = Conn2_BREADY;
  assign M01_AXI1_rready[0] = Conn2_RREADY;
  assign M01_AXI1_wdata[31:0] = Conn2_WDATA;
  assign M01_AXI1_wstrb[3:0] = Conn2_WSTRB;
  assign M01_AXI1_wvalid[0] = Conn2_WVALID;
  assign M01_AXI_araddr[6:0] = Conn1_ARADDR;
  assign M01_AXI_arvalid = Conn1_ARVALID;
  assign M01_AXI_awaddr[6:0] = Conn1_AWADDR;
  assign M01_AXI_awvalid = Conn1_AWVALID;
  assign M01_AXI_bready = Conn1_BREADY;
  assign M01_AXI_rready = Conn1_RREADY;
  assign M01_AXI_wdata[31:0] = Conn1_WDATA;
  assign M01_AXI_wstrb[3:0] = Conn1_WSTRB;
  assign M01_AXI_wvalid = Conn1_WVALID;
  assign aclk_0_1 = dma_pcie_axi_aclk;
  assign aux_reset_in_1 = aux_reset_in;
  assign axi_cdc_data_static1_M_AXI_ARREADY = axi_cdc_data_static_M_AXI1_arready;
  assign axi_cdc_data_static1_M_AXI_AWREADY = axi_cdc_data_static_M_AXI1_awready;
  assign axi_cdc_data_static1_M_AXI_BID = axi_cdc_data_static_M_AXI1_bid[3:0];
  assign axi_cdc_data_static1_M_AXI_BRESP = axi_cdc_data_static_M_AXI1_bresp[1:0];
  assign axi_cdc_data_static1_M_AXI_BVALID = axi_cdc_data_static_M_AXI1_bvalid;
  assign axi_cdc_data_static1_M_AXI_RDATA = axi_cdc_data_static_M_AXI1_rdata[127:0];
  assign axi_cdc_data_static1_M_AXI_RID = axi_cdc_data_static_M_AXI1_rid[3:0];
  assign axi_cdc_data_static1_M_AXI_RLAST = axi_cdc_data_static_M_AXI1_rlast;
  assign axi_cdc_data_static1_M_AXI_RRESP = axi_cdc_data_static_M_AXI1_rresp[1:0];
  assign axi_cdc_data_static1_M_AXI_RVALID = axi_cdc_data_static_M_AXI1_rvalid;
  assign axi_cdc_data_static1_M_AXI_WREADY = axi_cdc_data_static_M_AXI1_wready;
  assign axi_cdc_data_static_M_AXI1_araddr[38:0] = axi_cdc_data_static1_M_AXI_ARADDR;
  assign axi_cdc_data_static_M_AXI1_arburst[1:0] = axi_cdc_data_static1_M_AXI_ARBURST;
  assign axi_cdc_data_static_M_AXI1_arcache[3:0] = axi_cdc_data_static1_M_AXI_ARCACHE;
  assign axi_cdc_data_static_M_AXI1_arid[3:0] = axi_cdc_data_static1_M_AXI_ARID;
  assign axi_cdc_data_static_M_AXI1_arlen[7:0] = axi_cdc_data_static1_M_AXI_ARLEN;
  assign axi_cdc_data_static_M_AXI1_arlock[0] = axi_cdc_data_static1_M_AXI_ARLOCK;
  assign axi_cdc_data_static_M_AXI1_arprot[2:0] = axi_cdc_data_static1_M_AXI_ARPROT;
  assign axi_cdc_data_static_M_AXI1_arqos[3:0] = axi_cdc_data_static1_M_AXI_ARQOS;
  assign axi_cdc_data_static_M_AXI1_arsize[2:0] = axi_cdc_data_static1_M_AXI_ARSIZE;
  assign axi_cdc_data_static_M_AXI1_arvalid = axi_cdc_data_static1_M_AXI_ARVALID;
  assign axi_cdc_data_static_M_AXI1_awaddr[38:0] = axi_cdc_data_static1_M_AXI_AWADDR;
  assign axi_cdc_data_static_M_AXI1_awburst[1:0] = axi_cdc_data_static1_M_AXI_AWBURST;
  assign axi_cdc_data_static_M_AXI1_awcache[3:0] = axi_cdc_data_static1_M_AXI_AWCACHE;
  assign axi_cdc_data_static_M_AXI1_awid[3:0] = axi_cdc_data_static1_M_AXI_AWID;
  assign axi_cdc_data_static_M_AXI1_awlen[7:0] = axi_cdc_data_static1_M_AXI_AWLEN;
  assign axi_cdc_data_static_M_AXI1_awlock[0] = axi_cdc_data_static1_M_AXI_AWLOCK;
  assign axi_cdc_data_static_M_AXI1_awprot[2:0] = axi_cdc_data_static1_M_AXI_AWPROT;
  assign axi_cdc_data_static_M_AXI1_awqos[3:0] = axi_cdc_data_static1_M_AXI_AWQOS;
  assign axi_cdc_data_static_M_AXI1_awsize[2:0] = axi_cdc_data_static1_M_AXI_AWSIZE;
  assign axi_cdc_data_static_M_AXI1_awvalid = axi_cdc_data_static1_M_AXI_AWVALID;
  assign axi_cdc_data_static_M_AXI1_bready = axi_cdc_data_static1_M_AXI_BREADY;
  assign axi_cdc_data_static_M_AXI1_rready = axi_cdc_data_static1_M_AXI_RREADY;
  assign axi_cdc_data_static_M_AXI1_wdata[127:0] = axi_cdc_data_static1_M_AXI_WDATA;
  assign axi_cdc_data_static_M_AXI1_wlast = axi_cdc_data_static1_M_AXI_WLAST;
  assign axi_cdc_data_static_M_AXI1_wstrb[15:0] = axi_cdc_data_static1_M_AXI_WSTRB;
  assign axi_cdc_data_static_M_AXI1_wvalid = axi_cdc_data_static1_M_AXI_WVALID;
  assign axi_cdc_data_static_M_AXI_ARREADY = axi_cdc_data_static_M_AXI_arready;
  assign axi_cdc_data_static_M_AXI_AWREADY = axi_cdc_data_static_M_AXI_awready;
  assign axi_cdc_data_static_M_AXI_BID = axi_cdc_data_static_M_AXI_bid[3:0];
  assign axi_cdc_data_static_M_AXI_BRESP = axi_cdc_data_static_M_AXI_bresp[1:0];
  assign axi_cdc_data_static_M_AXI_BVALID = axi_cdc_data_static_M_AXI_bvalid;
  assign axi_cdc_data_static_M_AXI_RDATA = axi_cdc_data_static_M_AXI_rdata[511:0];
  assign axi_cdc_data_static_M_AXI_RID = axi_cdc_data_static_M_AXI_rid[3:0];
  assign axi_cdc_data_static_M_AXI_RLAST = axi_cdc_data_static_M_AXI_rlast;
  assign axi_cdc_data_static_M_AXI_RRESP = axi_cdc_data_static_M_AXI_rresp[1:0];
  assign axi_cdc_data_static_M_AXI_RVALID = axi_cdc_data_static_M_AXI_rvalid;
  assign axi_cdc_data_static_M_AXI_WREADY = axi_cdc_data_static_M_AXI_wready;
  assign axi_cdc_data_static_M_AXI_araddr[38:0] = axi_cdc_data_static_M_AXI_ARADDR;
  assign axi_cdc_data_static_M_AXI_arburst[1:0] = axi_cdc_data_static_M_AXI_ARBURST;
  assign axi_cdc_data_static_M_AXI_arcache[3:0] = axi_cdc_data_static_M_AXI_ARCACHE;
  assign axi_cdc_data_static_M_AXI_arid[3:0] = axi_cdc_data_static_M_AXI_ARID;
  assign axi_cdc_data_static_M_AXI_arlen[7:0] = axi_cdc_data_static_M_AXI_ARLEN;
  assign axi_cdc_data_static_M_AXI_arlock[0] = axi_cdc_data_static_M_AXI_ARLOCK;
  assign axi_cdc_data_static_M_AXI_arprot[2:0] = axi_cdc_data_static_M_AXI_ARPROT;
  assign axi_cdc_data_static_M_AXI_arqos[3:0] = axi_cdc_data_static_M_AXI_ARQOS;
  assign axi_cdc_data_static_M_AXI_arregion[3:0] = axi_cdc_data_static_M_AXI_ARREGION;
  assign axi_cdc_data_static_M_AXI_arsize[2:0] = axi_cdc_data_static_M_AXI_ARSIZE;
  assign axi_cdc_data_static_M_AXI_arvalid = axi_cdc_data_static_M_AXI_ARVALID;
  assign axi_cdc_data_static_M_AXI_awaddr[38:0] = axi_cdc_data_static_M_AXI_AWADDR;
  assign axi_cdc_data_static_M_AXI_awburst[1:0] = axi_cdc_data_static_M_AXI_AWBURST;
  assign axi_cdc_data_static_M_AXI_awcache[3:0] = axi_cdc_data_static_M_AXI_AWCACHE;
  assign axi_cdc_data_static_M_AXI_awid[3:0] = axi_cdc_data_static_M_AXI_AWID;
  assign axi_cdc_data_static_M_AXI_awlen[7:0] = axi_cdc_data_static_M_AXI_AWLEN;
  assign axi_cdc_data_static_M_AXI_awlock[0] = axi_cdc_data_static_M_AXI_AWLOCK;
  assign axi_cdc_data_static_M_AXI_awprot[2:0] = axi_cdc_data_static_M_AXI_AWPROT;
  assign axi_cdc_data_static_M_AXI_awqos[3:0] = axi_cdc_data_static_M_AXI_AWQOS;
  assign axi_cdc_data_static_M_AXI_awregion[3:0] = axi_cdc_data_static_M_AXI_AWREGION;
  assign axi_cdc_data_static_M_AXI_awsize[2:0] = axi_cdc_data_static_M_AXI_AWSIZE;
  assign axi_cdc_data_static_M_AXI_awvalid = axi_cdc_data_static_M_AXI_AWVALID;
  assign axi_cdc_data_static_M_AXI_bready = axi_cdc_data_static_M_AXI_BREADY;
  assign axi_cdc_data_static_M_AXI_rready = axi_cdc_data_static_M_AXI_RREADY;
  assign axi_cdc_data_static_M_AXI_wdata[511:0] = axi_cdc_data_static_M_AXI_WDATA;
  assign axi_cdc_data_static_M_AXI_wlast = axi_cdc_data_static_M_AXI_WLAST;
  assign axi_cdc_data_static_M_AXI_wstrb[63:0] = axi_cdc_data_static_M_AXI_WSTRB;
  assign axi_cdc_data_static_M_AXI_wvalid = axi_cdc_data_static_M_AXI_WVALID;
  assign axi_vip_ctrl_mgntpf_M_AXI_araddr[25:0] = regslice_control_mgntpf_M_AXI_ARADDR;
  assign axi_vip_ctrl_mgntpf_M_AXI_arvalid = regslice_control_mgntpf_M_AXI_ARVALID;
  assign axi_vip_ctrl_mgntpf_M_AXI_awaddr[25:0] = regslice_control_mgntpf_M_AXI_AWADDR;
  assign axi_vip_ctrl_mgntpf_M_AXI_awvalid = regslice_control_mgntpf_M_AXI_AWVALID;
  assign axi_vip_ctrl_mgntpf_M_AXI_bready = regslice_control_mgntpf_M_AXI_BREADY;
  assign axi_vip_ctrl_mgntpf_M_AXI_rready = regslice_control_mgntpf_M_AXI_RREADY;
  assign axi_vip_ctrl_mgntpf_M_AXI_wdata[31:0] = regslice_control_mgntpf_M_AXI_WDATA;
  assign axi_vip_ctrl_mgntpf_M_AXI_wvalid = regslice_control_mgntpf_M_AXI_WVALID;
  assign clkwiz_kernel2_clk_out1_1 = clkwiz_kernel2_clk_out1;
  assign clkwiz_kernel2_locked_1 = clkwiz_kernel2_locked_slr1;
  assign clkwiz_kernel_clk_out1_1 = clkwiz_kernel_clk_out1;
  assign clkwiz_kernel_locked_1 = clkwiz_kernel_locked_slr1;
  assign clkwiz_sysclks_locked_1 = clkwiz_sysclks_locked_slr1;
  assign dcm_locked_0_1 = pcie_user_lnk_up_slr1;
  assign interconnect_aresetn[0] = reset_controllers_interconnect_aresetn1;
  assign iob_static_perst_n_out_1 = iob_static_perst_n_out[0];
  assign logic_reset_op_Res[0] = reset_controllers_logic_reset_op_Res;
  assign peripheral_aresetn[0] = reset_controllers_peripheral_aresetn;
  assign psreset_gate_pr_control_interconnect_aresetn[0] = ARESETN_1;
  assign psreset_gate_pr_data_interconnect_aresetn[0] = reset_controllers_interconnect_aresetn;
  assign psreset_gate_pr_kernel_interconnect_aresetn[0] = reset_controllers_psreset_gate_pr_kernel_interconnect_aresetn;
  assign regslice_control_M_AXI_slr1_1_ARADDR = regslice_control_M_AXI_slr1_araddr[24:0];
  assign regslice_control_M_AXI_slr1_1_ARPROT = regslice_control_M_AXI_slr1_arprot[2:0];
  assign regslice_control_M_AXI_slr1_1_ARVALID = regslice_control_M_AXI_slr1_arvalid;
  assign regslice_control_M_AXI_slr1_1_AWADDR = regslice_control_M_AXI_slr1_awaddr[24:0];
  assign regslice_control_M_AXI_slr1_1_AWPROT = regslice_control_M_AXI_slr1_awprot[2:0];
  assign regslice_control_M_AXI_slr1_1_AWVALID = regslice_control_M_AXI_slr1_awvalid;
  assign regslice_control_M_AXI_slr1_1_BREADY = regslice_control_M_AXI_slr1_bready;
  assign regslice_control_M_AXI_slr1_1_RREADY = regslice_control_M_AXI_slr1_rready;
  assign regslice_control_M_AXI_slr1_1_WDATA = regslice_control_M_AXI_slr1_wdata[31:0];
  assign regslice_control_M_AXI_slr1_1_WSTRB = regslice_control_M_AXI_slr1_wstrb[3:0];
  assign regslice_control_M_AXI_slr1_1_WVALID = regslice_control_M_AXI_slr1_wvalid;
  assign regslice_control_M_AXI_slr1_arready = regslice_control_M_AXI_slr1_1_ARREADY;
  assign regslice_control_M_AXI_slr1_awready = regslice_control_M_AXI_slr1_1_AWREADY;
  assign regslice_control_M_AXI_slr1_bresp[1:0] = regslice_control_M_AXI_slr1_1_BRESP;
  assign regslice_control_M_AXI_slr1_bvalid = regslice_control_M_AXI_slr1_1_BVALID;
  assign regslice_control_M_AXI_slr1_rdata[31:0] = regslice_control_M_AXI_slr1_1_RDATA;
  assign regslice_control_M_AXI_slr1_rresp[1:0] = regslice_control_M_AXI_slr1_1_RRESP;
  assign regslice_control_M_AXI_slr1_rvalid = regslice_control_M_AXI_slr1_1_RVALID;
  assign regslice_control_M_AXI_slr1_wready = regslice_control_M_AXI_slr1_1_WREADY;
  assign regslice_control_mgntpf_M_AXI_ARREADY = axi_vip_ctrl_mgntpf_M_AXI_arready;
  assign regslice_control_mgntpf_M_AXI_AWREADY = axi_vip_ctrl_mgntpf_M_AXI_awready;
  assign regslice_control_mgntpf_M_AXI_BRESP = axi_vip_ctrl_mgntpf_M_AXI_bresp[1:0];
  assign regslice_control_mgntpf_M_AXI_BVALID = axi_vip_ctrl_mgntpf_M_AXI_bvalid;
  assign regslice_control_mgntpf_M_AXI_RDATA = axi_vip_ctrl_mgntpf_M_AXI_rdata[31:0];
  assign regslice_control_mgntpf_M_AXI_RRESP = axi_vip_ctrl_mgntpf_M_AXI_rresp[1:0];
  assign regslice_control_mgntpf_M_AXI_RVALID = axi_vip_ctrl_mgntpf_M_AXI_rvalid;
  assign regslice_control_mgntpf_M_AXI_WREADY = axi_vip_ctrl_mgntpf_M_AXI_wready;
  assign regslice_control_periph_M_AXI_slr1_1_ARADDR = regslice_control_periph_M_AXI_slr1_araddr[24:0];
  assign regslice_control_periph_M_AXI_slr1_1_ARPROT = regslice_control_periph_M_AXI_slr1_arprot[2:0];
  assign regslice_control_periph_M_AXI_slr1_1_ARVALID = regslice_control_periph_M_AXI_slr1_arvalid;
  assign regslice_control_periph_M_AXI_slr1_1_AWADDR = regslice_control_periph_M_AXI_slr1_awaddr[24:0];
  assign regslice_control_periph_M_AXI_slr1_1_AWPROT = regslice_control_periph_M_AXI_slr1_awprot[2:0];
  assign regslice_control_periph_M_AXI_slr1_1_AWVALID = regslice_control_periph_M_AXI_slr1_awvalid;
  assign regslice_control_periph_M_AXI_slr1_1_BREADY = regslice_control_periph_M_AXI_slr1_bready;
  assign regslice_control_periph_M_AXI_slr1_1_RREADY = regslice_control_periph_M_AXI_slr1_rready;
  assign regslice_control_periph_M_AXI_slr1_1_WDATA = regslice_control_periph_M_AXI_slr1_wdata[31:0];
  assign regslice_control_periph_M_AXI_slr1_1_WSTRB = regslice_control_periph_M_AXI_slr1_wstrb[3:0];
  assign regslice_control_periph_M_AXI_slr1_1_WVALID = regslice_control_periph_M_AXI_slr1_wvalid;
  assign regslice_control_periph_M_AXI_slr1_arready = regslice_control_periph_M_AXI_slr1_1_ARREADY;
  assign regslice_control_periph_M_AXI_slr1_awready = regslice_control_periph_M_AXI_slr1_1_AWREADY;
  assign regslice_control_periph_M_AXI_slr1_bresp[1:0] = regslice_control_periph_M_AXI_slr1_1_BRESP;
  assign regslice_control_periph_M_AXI_slr1_bvalid = regslice_control_periph_M_AXI_slr1_1_BVALID;
  assign regslice_control_periph_M_AXI_slr1_rdata[31:0] = regslice_control_periph_M_AXI_slr1_1_RDATA;
  assign regslice_control_periph_M_AXI_slr1_rresp[1:0] = regslice_control_periph_M_AXI_slr1_1_RRESP;
  assign regslice_control_periph_M_AXI_slr1_rvalid = regslice_control_periph_M_AXI_slr1_1_RVALID;
  assign regslice_control_periph_M_AXI_slr1_wready = regslice_control_periph_M_AXI_slr1_1_WREADY;
  assign regslice_control_userpf_M_AXI_slr1_1_ARADDR = regslice_control_userpf_M_AXI_slr1_araddr[24:0];
  assign regslice_control_userpf_M_AXI_slr1_1_ARPROT = regslice_control_userpf_M_AXI_slr1_arprot[2:0];
  assign regslice_control_userpf_M_AXI_slr1_1_ARVALID = regslice_control_userpf_M_AXI_slr1_arvalid;
  assign regslice_control_userpf_M_AXI_slr1_1_AWADDR = regslice_control_userpf_M_AXI_slr1_awaddr[24:0];
  assign regslice_control_userpf_M_AXI_slr1_1_AWPROT = regslice_control_userpf_M_AXI_slr1_awprot[2:0];
  assign regslice_control_userpf_M_AXI_slr1_1_AWVALID = regslice_control_userpf_M_AXI_slr1_awvalid;
  assign regslice_control_userpf_M_AXI_slr1_1_BREADY = regslice_control_userpf_M_AXI_slr1_bready;
  assign regslice_control_userpf_M_AXI_slr1_1_RREADY = regslice_control_userpf_M_AXI_slr1_rready;
  assign regslice_control_userpf_M_AXI_slr1_1_WDATA = regslice_control_userpf_M_AXI_slr1_wdata[31:0];
  assign regslice_control_userpf_M_AXI_slr1_1_WSTRB = regslice_control_userpf_M_AXI_slr1_wstrb[3:0];
  assign regslice_control_userpf_M_AXI_slr1_1_WVALID = regslice_control_userpf_M_AXI_slr1_wvalid;
  assign regslice_control_userpf_M_AXI_slr1_arready = regslice_control_userpf_M_AXI_slr1_1_ARREADY;
  assign regslice_control_userpf_M_AXI_slr1_awready = regslice_control_userpf_M_AXI_slr1_1_AWREADY;
  assign regslice_control_userpf_M_AXI_slr1_bresp[1:0] = regslice_control_userpf_M_AXI_slr1_1_BRESP;
  assign regslice_control_userpf_M_AXI_slr1_bvalid = regslice_control_userpf_M_AXI_slr1_1_BVALID;
  assign regslice_control_userpf_M_AXI_slr1_rdata[31:0] = regslice_control_userpf_M_AXI_slr1_1_RDATA;
  assign regslice_control_userpf_M_AXI_slr1_rresp[1:0] = regslice_control_userpf_M_AXI_slr1_1_RRESP;
  assign regslice_control_userpf_M_AXI_slr1_rvalid = regslice_control_userpf_M_AXI_slr1_1_RVALID;
  assign regslice_control_userpf_M_AXI_slr1_wready = regslice_control_userpf_M_AXI_slr1_1_WREADY;
  assign regslice_data_static_M_AXI_slr1_1_ARADDR = regslice_data_static_M_AXI_slr1_araddr[38:0];
  assign regslice_data_static_M_AXI_slr1_1_ARBURST = regslice_data_static_M_AXI_slr1_arburst[1:0];
  assign regslice_data_static_M_AXI_slr1_1_ARCACHE = regslice_data_static_M_AXI_slr1_arcache[3:0];
  assign regslice_data_static_M_AXI_slr1_1_ARID = regslice_data_static_M_AXI_slr1_arid[3:0];
  assign regslice_data_static_M_AXI_slr1_1_ARLEN = regslice_data_static_M_AXI_slr1_arlen[7:0];
  assign regslice_data_static_M_AXI_slr1_1_ARLOCK = regslice_data_static_M_AXI_slr1_arlock[0];
  assign regslice_data_static_M_AXI_slr1_1_ARPROT = regslice_data_static_M_AXI_slr1_arprot[2:0];
  assign regslice_data_static_M_AXI_slr1_1_ARVALID = regslice_data_static_M_AXI_slr1_arvalid;
  assign regslice_data_static_M_AXI_slr1_1_AWADDR = regslice_data_static_M_AXI_slr1_awaddr[38:0];
  assign regslice_data_static_M_AXI_slr1_1_AWBURST = regslice_data_static_M_AXI_slr1_awburst[1:0];
  assign regslice_data_static_M_AXI_slr1_1_AWCACHE = regslice_data_static_M_AXI_slr1_awcache[3:0];
  assign regslice_data_static_M_AXI_slr1_1_AWID = regslice_data_static_M_AXI_slr1_awid[3:0];
  assign regslice_data_static_M_AXI_slr1_1_AWLEN = regslice_data_static_M_AXI_slr1_awlen[7:0];
  assign regslice_data_static_M_AXI_slr1_1_AWLOCK = regslice_data_static_M_AXI_slr1_awlock[0];
  assign regslice_data_static_M_AXI_slr1_1_AWPROT = regslice_data_static_M_AXI_slr1_awprot[2:0];
  assign regslice_data_static_M_AXI_slr1_1_AWVALID = regslice_data_static_M_AXI_slr1_awvalid;
  assign regslice_data_static_M_AXI_slr1_1_BREADY = regslice_data_static_M_AXI_slr1_bready;
  assign regslice_data_static_M_AXI_slr1_1_RREADY = regslice_data_static_M_AXI_slr1_rready;
  assign regslice_data_static_M_AXI_slr1_1_WDATA = regslice_data_static_M_AXI_slr1_wdata[511:0];
  assign regslice_data_static_M_AXI_slr1_1_WLAST = regslice_data_static_M_AXI_slr1_wlast;
  assign regslice_data_static_M_AXI_slr1_1_WSTRB = regslice_data_static_M_AXI_slr1_wstrb[63:0];
  assign regslice_data_static_M_AXI_slr1_1_WVALID = regslice_data_static_M_AXI_slr1_wvalid;
  assign regslice_data_static_M_AXI_slr1_arready = regslice_data_static_M_AXI_slr1_1_ARREADY;
  assign regslice_data_static_M_AXI_slr1_awready = regslice_data_static_M_AXI_slr1_1_AWREADY;
  assign regslice_data_static_M_AXI_slr1_bid[3:0] = regslice_data_static_M_AXI_slr1_1_BID;
  assign regslice_data_static_M_AXI_slr1_bresp[1:0] = regslice_data_static_M_AXI_slr1_1_BRESP;
  assign regslice_data_static_M_AXI_slr1_bvalid = regslice_data_static_M_AXI_slr1_1_BVALID;
  assign regslice_data_static_M_AXI_slr1_rdata[511:0] = regslice_data_static_M_AXI_slr1_1_RDATA;
  assign regslice_data_static_M_AXI_slr1_rid[3:0] = regslice_data_static_M_AXI_slr1_1_RID;
  assign regslice_data_static_M_AXI_slr1_rlast = regslice_data_static_M_AXI_slr1_1_RLAST;
  assign regslice_data_static_M_AXI_slr1_rresp[1:0] = regslice_data_static_M_AXI_slr1_1_RRESP;
  assign regslice_data_static_M_AXI_slr1_rvalid = regslice_data_static_M_AXI_slr1_1_RVALID;
  assign regslice_data_static_M_AXI_slr1_wready = regslice_data_static_M_AXI_slr1_1_WREADY;
  assign regslice_data_static_M_AXI_slr2_1_ARADDR = regslice_data_static_M_AXI_slr2_araddr[38:0];
  assign regslice_data_static_M_AXI_slr2_1_ARBURST = regslice_data_static_M_AXI_slr2_arburst[1:0];
  assign regslice_data_static_M_AXI_slr2_1_ARCACHE = regslice_data_static_M_AXI_slr2_arcache[3:0];
  assign regslice_data_static_M_AXI_slr2_1_ARID = regslice_data_static_M_AXI_slr2_arid[3:0];
  assign regslice_data_static_M_AXI_slr2_1_ARLEN = regslice_data_static_M_AXI_slr2_arlen[7:0];
  assign regslice_data_static_M_AXI_slr2_1_ARLOCK = regslice_data_static_M_AXI_slr2_arlock[0];
  assign regslice_data_static_M_AXI_slr2_1_ARPROT = regslice_data_static_M_AXI_slr2_arprot[2:0];
  assign regslice_data_static_M_AXI_slr2_1_ARVALID = regslice_data_static_M_AXI_slr2_arvalid;
  assign regslice_data_static_M_AXI_slr2_1_AWADDR = regslice_data_static_M_AXI_slr2_awaddr[38:0];
  assign regslice_data_static_M_AXI_slr2_1_AWBURST = regslice_data_static_M_AXI_slr2_awburst[1:0];
  assign regslice_data_static_M_AXI_slr2_1_AWCACHE = regslice_data_static_M_AXI_slr2_awcache[3:0];
  assign regslice_data_static_M_AXI_slr2_1_AWID = regslice_data_static_M_AXI_slr2_awid[3:0];
  assign regslice_data_static_M_AXI_slr2_1_AWLEN = regslice_data_static_M_AXI_slr2_awlen[7:0];
  assign regslice_data_static_M_AXI_slr2_1_AWLOCK = regslice_data_static_M_AXI_slr2_awlock[0];
  assign regslice_data_static_M_AXI_slr2_1_AWPROT = regslice_data_static_M_AXI_slr2_awprot[2:0];
  assign regslice_data_static_M_AXI_slr2_1_AWVALID = regslice_data_static_M_AXI_slr2_awvalid;
  assign regslice_data_static_M_AXI_slr2_1_BREADY = regslice_data_static_M_AXI_slr2_bready;
  assign regslice_data_static_M_AXI_slr2_1_RREADY = regslice_data_static_M_AXI_slr2_rready;
  assign regslice_data_static_M_AXI_slr2_1_WDATA = regslice_data_static_M_AXI_slr2_wdata[127:0];
  assign regslice_data_static_M_AXI_slr2_1_WLAST = regslice_data_static_M_AXI_slr2_wlast;
  assign regslice_data_static_M_AXI_slr2_1_WSTRB = regslice_data_static_M_AXI_slr2_wstrb[15:0];
  assign regslice_data_static_M_AXI_slr2_1_WVALID = regslice_data_static_M_AXI_slr2_wvalid;
  assign regslice_data_static_M_AXI_slr2_arready = regslice_data_static_M_AXI_slr2_1_ARREADY;
  assign regslice_data_static_M_AXI_slr2_awready = regslice_data_static_M_AXI_slr2_1_AWREADY;
  assign regslice_data_static_M_AXI_slr2_bid[3:0] = regslice_data_static_M_AXI_slr2_1_BID;
  assign regslice_data_static_M_AXI_slr2_bresp[1:0] = regslice_data_static_M_AXI_slr2_1_BRESP;
  assign regslice_data_static_M_AXI_slr2_bvalid = regslice_data_static_M_AXI_slr2_1_BVALID;
  assign regslice_data_static_M_AXI_slr2_rdata[127:0] = regslice_data_static_M_AXI_slr2_1_RDATA;
  assign regslice_data_static_M_AXI_slr2_rid[3:0] = regslice_data_static_M_AXI_slr2_1_RID;
  assign regslice_data_static_M_AXI_slr2_rlast = regslice_data_static_M_AXI_slr2_1_RLAST;
  assign regslice_data_static_M_AXI_slr2_rresp[1:0] = regslice_data_static_M_AXI_slr2_1_RRESP;
  assign regslice_data_static_M_AXI_slr2_rvalid = regslice_data_static_M_AXI_slr2_1_RVALID;
  assign regslice_data_static_M_AXI_slr2_wready = regslice_data_static_M_AXI_slr2_1_WREADY;
  assign slice_reset_kernel_pr_Dout_1 = slice_reset_kernel_pr_Dout_slr1[0];
  assign slowest_sync_clk_1 = clkwiz_sysclks_clk_out2;
  ulp_axi_cdc_data_static_0 axi_cdc_data_static
       (.m_axi_aclk(clkwiz_kernel_clk_out1_1),
        .m_axi_araddr(axi_cdc_data_static_M_AXI_ARADDR),
        .m_axi_arburst(axi_cdc_data_static_M_AXI_ARBURST),
        .m_axi_arcache(axi_cdc_data_static_M_AXI_ARCACHE),
        .m_axi_aresetn(reset_controllers_psreset_gate_pr_kernel_interconnect_aresetn),
        .m_axi_arid(axi_cdc_data_static_M_AXI_ARID),
        .m_axi_arlen(axi_cdc_data_static_M_AXI_ARLEN),
        .m_axi_arlock(axi_cdc_data_static_M_AXI_ARLOCK),
        .m_axi_arprot(axi_cdc_data_static_M_AXI_ARPROT),
        .m_axi_arqos(axi_cdc_data_static_M_AXI_ARQOS),
        .m_axi_arready(axi_cdc_data_static_M_AXI_ARREADY),
        .m_axi_arregion(axi_cdc_data_static_M_AXI_ARREGION),
        .m_axi_arsize(axi_cdc_data_static_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_cdc_data_static_M_AXI_ARVALID),
        .m_axi_awaddr(axi_cdc_data_static_M_AXI_AWADDR),
        .m_axi_awburst(axi_cdc_data_static_M_AXI_AWBURST),
        .m_axi_awcache(axi_cdc_data_static_M_AXI_AWCACHE),
        .m_axi_awid(axi_cdc_data_static_M_AXI_AWID),
        .m_axi_awlen(axi_cdc_data_static_M_AXI_AWLEN),
        .m_axi_awlock(axi_cdc_data_static_M_AXI_AWLOCK),
        .m_axi_awprot(axi_cdc_data_static_M_AXI_AWPROT),
        .m_axi_awqos(axi_cdc_data_static_M_AXI_AWQOS),
        .m_axi_awready(axi_cdc_data_static_M_AXI_AWREADY),
        .m_axi_awregion(axi_cdc_data_static_M_AXI_AWREGION),
        .m_axi_awsize(axi_cdc_data_static_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_cdc_data_static_M_AXI_AWVALID),
        .m_axi_bid(axi_cdc_data_static_M_AXI_BID),
        .m_axi_bready(axi_cdc_data_static_M_AXI_BREADY),
        .m_axi_bresp(axi_cdc_data_static_M_AXI_BRESP),
        .m_axi_bvalid(axi_cdc_data_static_M_AXI_BVALID),
        .m_axi_rdata(axi_cdc_data_static_M_AXI_RDATA),
        .m_axi_rid(axi_cdc_data_static_M_AXI_RID),
        .m_axi_rlast(axi_cdc_data_static_M_AXI_RLAST),
        .m_axi_rready(axi_cdc_data_static_M_AXI_RREADY),
        .m_axi_rresp(axi_cdc_data_static_M_AXI_RRESP),
        .m_axi_rvalid(axi_cdc_data_static_M_AXI_RVALID),
        .m_axi_wdata(axi_cdc_data_static_M_AXI_WDATA),
        .m_axi_wlast(axi_cdc_data_static_M_AXI_WLAST),
        .m_axi_wready(axi_cdc_data_static_M_AXI_WREADY),
        .m_axi_wstrb(axi_cdc_data_static_M_AXI_WSTRB),
        .m_axi_wvalid(axi_cdc_data_static_M_AXI_WVALID),
        .s_axi_aclk(aclk_0_1),
        .s_axi_araddr(regslice_data_static_M_AXI1_ARADDR),
        .s_axi_arburst(regslice_data_static_M_AXI1_ARBURST),
        .s_axi_arcache(regslice_data_static_M_AXI1_ARCACHE),
        .s_axi_aresetn(reset_controllers_interconnect_aresetn),
        .s_axi_arid(regslice_data_static_M_AXI1_ARID),
        .s_axi_arlen(regslice_data_static_M_AXI1_ARLEN),
        .s_axi_arlock(regslice_data_static_M_AXI1_ARLOCK),
        .s_axi_arprot(regslice_data_static_M_AXI1_ARPROT),
        .s_axi_arqos(regslice_data_static_M_AXI1_ARQOS),
        .s_axi_arready(regslice_data_static_M_AXI1_ARREADY),
        .s_axi_arregion(regslice_data_static_M_AXI1_ARREGION),
        .s_axi_arsize(regslice_data_static_M_AXI1_ARSIZE),
        .s_axi_arvalid(regslice_data_static_M_AXI1_ARVALID),
        .s_axi_awaddr(regslice_data_static_M_AXI1_AWADDR),
        .s_axi_awburst(regslice_data_static_M_AXI1_AWBURST),
        .s_axi_awcache(regslice_data_static_M_AXI1_AWCACHE),
        .s_axi_awid(regslice_data_static_M_AXI1_AWID),
        .s_axi_awlen(regslice_data_static_M_AXI1_AWLEN),
        .s_axi_awlock(regslice_data_static_M_AXI1_AWLOCK),
        .s_axi_awprot(regslice_data_static_M_AXI1_AWPROT),
        .s_axi_awqos(regslice_data_static_M_AXI1_AWQOS),
        .s_axi_awready(regslice_data_static_M_AXI1_AWREADY),
        .s_axi_awregion(regslice_data_static_M_AXI1_AWREGION),
        .s_axi_awsize(regslice_data_static_M_AXI1_AWSIZE),
        .s_axi_awvalid(regslice_data_static_M_AXI1_AWVALID),
        .s_axi_bid(regslice_data_static_M_AXI1_BID),
        .s_axi_bready(regslice_data_static_M_AXI1_BREADY),
        .s_axi_bresp(regslice_data_static_M_AXI1_BRESP),
        .s_axi_bvalid(regslice_data_static_M_AXI1_BVALID),
        .s_axi_rdata(regslice_data_static_M_AXI1_RDATA),
        .s_axi_rid(regslice_data_static_M_AXI1_RID),
        .s_axi_rlast(regslice_data_static_M_AXI1_RLAST),
        .s_axi_rready(regslice_data_static_M_AXI1_RREADY),
        .s_axi_rresp(regslice_data_static_M_AXI1_RRESP),
        .s_axi_rvalid(regslice_data_static_M_AXI1_RVALID),
        .s_axi_wdata(regslice_data_static_M_AXI1_WDATA),
        .s_axi_wlast(regslice_data_static_M_AXI1_WLAST),
        .s_axi_wready(regslice_data_static_M_AXI1_WREADY),
        .s_axi_wstrb(regslice_data_static_M_AXI1_WSTRB),
        .s_axi_wvalid(regslice_data_static_M_AXI1_WVALID));
  ulp_axi_cdc_data_static1_0 axi_cdc_data_static1
       (.m_axi_aclk(clkwiz_kernel_clk_out1_1),
        .m_axi_araddr(axi_cdc_data_static1_M_AXI_ARADDR),
        .m_axi_arburst(axi_cdc_data_static1_M_AXI_ARBURST),
        .m_axi_arcache(axi_cdc_data_static1_M_AXI_ARCACHE),
        .m_axi_aresetn(reset_controllers_psreset_gate_pr_kernel_interconnect_aresetn),
        .m_axi_arid(axi_cdc_data_static1_M_AXI_ARID),
        .m_axi_arlen(axi_cdc_data_static1_M_AXI_ARLEN),
        .m_axi_arlock(axi_cdc_data_static1_M_AXI_ARLOCK),
        .m_axi_arprot(axi_cdc_data_static1_M_AXI_ARPROT),
        .m_axi_arqos(axi_cdc_data_static1_M_AXI_ARQOS),
        .m_axi_arready(axi_cdc_data_static1_M_AXI_ARREADY),
        .m_axi_arsize(axi_cdc_data_static1_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_cdc_data_static1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_cdc_data_static1_M_AXI_AWADDR),
        .m_axi_awburst(axi_cdc_data_static1_M_AXI_AWBURST),
        .m_axi_awcache(axi_cdc_data_static1_M_AXI_AWCACHE),
        .m_axi_awid(axi_cdc_data_static1_M_AXI_AWID),
        .m_axi_awlen(axi_cdc_data_static1_M_AXI_AWLEN),
        .m_axi_awlock(axi_cdc_data_static1_M_AXI_AWLOCK),
        .m_axi_awprot(axi_cdc_data_static1_M_AXI_AWPROT),
        .m_axi_awqos(axi_cdc_data_static1_M_AXI_AWQOS),
        .m_axi_awready(axi_cdc_data_static1_M_AXI_AWREADY),
        .m_axi_awsize(axi_cdc_data_static1_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_cdc_data_static1_M_AXI_AWVALID),
        .m_axi_bid(axi_cdc_data_static1_M_AXI_BID),
        .m_axi_bready(axi_cdc_data_static1_M_AXI_BREADY),
        .m_axi_bresp(axi_cdc_data_static1_M_AXI_BRESP),
        .m_axi_bvalid(axi_cdc_data_static1_M_AXI_BVALID),
        .m_axi_rdata(axi_cdc_data_static1_M_AXI_RDATA),
        .m_axi_rid(axi_cdc_data_static1_M_AXI_RID),
        .m_axi_rlast(axi_cdc_data_static1_M_AXI_RLAST),
        .m_axi_rready(axi_cdc_data_static1_M_AXI_RREADY),
        .m_axi_rresp(axi_cdc_data_static1_M_AXI_RRESP),
        .m_axi_rvalid(axi_cdc_data_static1_M_AXI_RVALID),
        .m_axi_wdata(axi_cdc_data_static1_M_AXI_WDATA),
        .m_axi_wlast(axi_cdc_data_static1_M_AXI_WLAST),
        .m_axi_wready(axi_cdc_data_static1_M_AXI_WREADY),
        .m_axi_wstrb(axi_cdc_data_static1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_cdc_data_static1_M_AXI_WVALID),
        .s_axi_aclk(aclk_0_1),
        .s_axi_araddr(regslice_data_static1_M_AXI_ARADDR),
        .s_axi_arburst(regslice_data_static1_M_AXI_ARBURST),
        .s_axi_arcache(regslice_data_static1_M_AXI_ARCACHE),
        .s_axi_aresetn(reset_controllers_interconnect_aresetn),
        .s_axi_arid(regslice_data_static1_M_AXI_ARID),
        .s_axi_arlen(regslice_data_static1_M_AXI_ARLEN),
        .s_axi_arlock(regslice_data_static1_M_AXI_ARLOCK),
        .s_axi_arprot(regslice_data_static1_M_AXI_ARPROT),
        .s_axi_arqos(regslice_data_static1_M_AXI_ARQOS),
        .s_axi_arready(regslice_data_static1_M_AXI_ARREADY),
        .s_axi_arregion(regslice_data_static1_M_AXI_ARREGION),
        .s_axi_arsize(regslice_data_static1_M_AXI_ARSIZE),
        .s_axi_arvalid(regslice_data_static1_M_AXI_ARVALID),
        .s_axi_awaddr(regslice_data_static1_M_AXI_AWADDR),
        .s_axi_awburst(regslice_data_static1_M_AXI_AWBURST),
        .s_axi_awcache(regslice_data_static1_M_AXI_AWCACHE),
        .s_axi_awid(regslice_data_static1_M_AXI_AWID),
        .s_axi_awlen(regslice_data_static1_M_AXI_AWLEN),
        .s_axi_awlock(regslice_data_static1_M_AXI_AWLOCK),
        .s_axi_awprot(regslice_data_static1_M_AXI_AWPROT),
        .s_axi_awqos(regslice_data_static1_M_AXI_AWQOS),
        .s_axi_awready(regslice_data_static1_M_AXI_AWREADY),
        .s_axi_awregion(regslice_data_static1_M_AXI_AWREGION),
        .s_axi_awsize(regslice_data_static1_M_AXI_AWSIZE),
        .s_axi_awvalid(regslice_data_static1_M_AXI_AWVALID),
        .s_axi_bid(regslice_data_static1_M_AXI_BID),
        .s_axi_bready(regslice_data_static1_M_AXI_BREADY),
        .s_axi_bresp(regslice_data_static1_M_AXI_BRESP),
        .s_axi_bvalid(regslice_data_static1_M_AXI_BVALID),
        .s_axi_rdata(regslice_data_static1_M_AXI_RDATA),
        .s_axi_rid(regslice_data_static1_M_AXI_RID),
        .s_axi_rlast(regslice_data_static1_M_AXI_RLAST),
        .s_axi_rready(regslice_data_static1_M_AXI_RREADY),
        .s_axi_rresp(regslice_data_static1_M_AXI_RRESP),
        .s_axi_rvalid(regslice_data_static1_M_AXI_RVALID),
        .s_axi_wdata(regslice_data_static1_M_AXI_WDATA),
        .s_axi_wlast(regslice_data_static1_M_AXI_WLAST),
        .s_axi_wready(regslice_data_static1_M_AXI_WREADY),
        .s_axi_wstrb(regslice_data_static1_M_AXI_WSTRB),
        .s_axi_wvalid(regslice_data_static1_M_AXI_WVALID));
  ulp_axi_gpio_null_0 axi_gpio_null
       (.gpio_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aclk(aclk_0_1),
        .s_axi_araddr(interconnect_axilite_user_M00_AXI_ARADDR),
        .s_axi_aresetn(reset_controllers_interconnect_aresetn),
        .s_axi_arready(interconnect_axilite_user_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_axilite_user_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_axilite_user_M00_AXI_AWADDR),
        .s_axi_awready(interconnect_axilite_user_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_axilite_user_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_axilite_user_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_axilite_user_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_axilite_user_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_axilite_user_M00_AXI_RDATA),
        .s_axi_rready(interconnect_axilite_user_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_axilite_user_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_axilite_user_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_axilite_user_M00_AXI_WDATA),
        .s_axi_wready(interconnect_axilite_user_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_axilite_user_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_axilite_user_M00_AXI_WVALID));
  ulp_axi_interconnect_0_1 axi_interconnect_0
       (.ACLK(slowest_sync_clk_1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(M00_ACLK_1),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(slowest_sync_clk_1),
        .M01_ARESETN(ARESETN_1),
        .M01_AXI_araddr(Conn2_ARADDR),
        .M01_AXI_arready(Conn2_ARREADY),
        .M01_AXI_arvalid(Conn2_ARVALID),
        .M01_AXI_awaddr(Conn2_AWADDR),
        .M01_AXI_awready(Conn2_AWREADY),
        .M01_AXI_awvalid(Conn2_AWVALID),
        .M01_AXI_bready(Conn2_BREADY),
        .M01_AXI_bresp(Conn2_BRESP),
        .M01_AXI_bvalid(Conn2_BVALID),
        .M01_AXI_rdata(Conn2_RDATA),
        .M01_AXI_rready(Conn2_RREADY),
        .M01_AXI_rresp(Conn2_RRESP),
        .M01_AXI_rvalid(Conn2_RVALID),
        .M01_AXI_wdata(Conn2_WDATA),
        .M01_AXI_wready(Conn2_WREADY),
        .M01_AXI_wstrb(Conn2_WSTRB),
        .M01_AXI_wvalid(Conn2_WVALID),
        .S00_ACLK(slowest_sync_clk_1),
        .S00_ARESETN(ARESETN_1),
        .S00_AXI_araddr(axi_vip_ctrl_mgntpf_M_AXI1_ARADDR),
        .S00_AXI_arprot(axi_vip_ctrl_mgntpf_M_AXI1_ARPROT),
        .S00_AXI_arready(axi_vip_ctrl_mgntpf_M_AXI1_ARREADY),
        .S00_AXI_arvalid(axi_vip_ctrl_mgntpf_M_AXI1_ARVALID),
        .S00_AXI_awaddr(axi_vip_ctrl_mgntpf_M_AXI1_AWADDR),
        .S00_AXI_awprot(axi_vip_ctrl_mgntpf_M_AXI1_AWPROT),
        .S00_AXI_awready(axi_vip_ctrl_mgntpf_M_AXI1_AWREADY),
        .S00_AXI_awvalid(axi_vip_ctrl_mgntpf_M_AXI1_AWVALID),
        .S00_AXI_bready(axi_vip_ctrl_mgntpf_M_AXI1_BREADY),
        .S00_AXI_bresp(axi_vip_ctrl_mgntpf_M_AXI1_BRESP),
        .S00_AXI_bvalid(axi_vip_ctrl_mgntpf_M_AXI1_BVALID),
        .S00_AXI_rdata(axi_vip_ctrl_mgntpf_M_AXI1_RDATA),
        .S00_AXI_rready(axi_vip_ctrl_mgntpf_M_AXI1_RREADY),
        .S00_AXI_rresp(axi_vip_ctrl_mgntpf_M_AXI1_RRESP),
        .S00_AXI_rvalid(axi_vip_ctrl_mgntpf_M_AXI1_RVALID),
        .S00_AXI_wdata(axi_vip_ctrl_mgntpf_M_AXI1_WDATA),
        .S00_AXI_wready(axi_vip_ctrl_mgntpf_M_AXI1_WREADY),
        .S00_AXI_wstrb(axi_vip_ctrl_mgntpf_M_AXI1_WSTRB),
        .S00_AXI_wvalid(axi_vip_ctrl_mgntpf_M_AXI1_WVALID));
  ulp_axi_vip_ctrl_mgntpf_0 axi_vip_ctrl_mgntpf
       (.aclk(slowest_sync_clk_1),
        .aresetn(ARESETN_1),
        .m_axi_araddr(axi_vip_ctrl_mgntpf_M_AXI1_ARADDR),
        .m_axi_arprot(axi_vip_ctrl_mgntpf_M_AXI1_ARPROT),
        .m_axi_arready(axi_vip_ctrl_mgntpf_M_AXI1_ARREADY),
        .m_axi_arvalid(axi_vip_ctrl_mgntpf_M_AXI1_ARVALID),
        .m_axi_awaddr(axi_vip_ctrl_mgntpf_M_AXI1_AWADDR),
        .m_axi_awprot(axi_vip_ctrl_mgntpf_M_AXI1_AWPROT),
        .m_axi_awready(axi_vip_ctrl_mgntpf_M_AXI1_AWREADY),
        .m_axi_awvalid(axi_vip_ctrl_mgntpf_M_AXI1_AWVALID),
        .m_axi_bready(axi_vip_ctrl_mgntpf_M_AXI1_BREADY),
        .m_axi_bresp(axi_vip_ctrl_mgntpf_M_AXI1_BRESP),
        .m_axi_bvalid(axi_vip_ctrl_mgntpf_M_AXI1_BVALID),
        .m_axi_rdata(axi_vip_ctrl_mgntpf_M_AXI1_RDATA),
        .m_axi_rready(axi_vip_ctrl_mgntpf_M_AXI1_RREADY),
        .m_axi_rresp(axi_vip_ctrl_mgntpf_M_AXI1_RRESP),
        .m_axi_rvalid(axi_vip_ctrl_mgntpf_M_AXI1_RVALID),
        .m_axi_wdata(axi_vip_ctrl_mgntpf_M_AXI1_WDATA),
        .m_axi_wready(axi_vip_ctrl_mgntpf_M_AXI1_WREADY),
        .m_axi_wstrb(axi_vip_ctrl_mgntpf_M_AXI1_WSTRB),
        .m_axi_wvalid(axi_vip_ctrl_mgntpf_M_AXI1_WVALID),
        .s_axi_araddr(regslice_control_M_AXI_slr1_1_ARADDR),
        .s_axi_arprot(regslice_control_M_AXI_slr1_1_ARPROT),
        .s_axi_arready(regslice_control_M_AXI_slr1_1_ARREADY),
        .s_axi_arvalid(regslice_control_M_AXI_slr1_1_ARVALID),
        .s_axi_awaddr(regslice_control_M_AXI_slr1_1_AWADDR),
        .s_axi_awprot(regslice_control_M_AXI_slr1_1_AWPROT),
        .s_axi_awready(regslice_control_M_AXI_slr1_1_AWREADY),
        .s_axi_awvalid(regslice_control_M_AXI_slr1_1_AWVALID),
        .s_axi_bready(regslice_control_M_AXI_slr1_1_BREADY),
        .s_axi_bresp(regslice_control_M_AXI_slr1_1_BRESP),
        .s_axi_bvalid(regslice_control_M_AXI_slr1_1_BVALID),
        .s_axi_rdata(regslice_control_M_AXI_slr1_1_RDATA),
        .s_axi_rready(regslice_control_M_AXI_slr1_1_RREADY),
        .s_axi_rresp(regslice_control_M_AXI_slr1_1_RRESP),
        .s_axi_rvalid(regslice_control_M_AXI_slr1_1_RVALID),
        .s_axi_wdata(regslice_control_M_AXI_slr1_1_WDATA),
        .s_axi_wready(regslice_control_M_AXI_slr1_1_WREADY),
        .s_axi_wstrb(regslice_control_M_AXI_slr1_1_WSTRB),
        .s_axi_wvalid(regslice_control_M_AXI_slr1_1_WVALID));
  ulp_axi_vip_ctrl_userpf_0 axi_vip_ctrl_userpf
       (.aclk(aclk_0_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(axi_vip_ctrl_userpf_M_AXI_ARADDR),
        .m_axi_arprot(axi_vip_ctrl_userpf_M_AXI_ARPROT),
        .m_axi_arready(axi_vip_ctrl_userpf_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_ctrl_userpf_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_ctrl_userpf_M_AXI_AWADDR),
        .m_axi_awprot(axi_vip_ctrl_userpf_M_AXI_AWPROT),
        .m_axi_awready(axi_vip_ctrl_userpf_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_ctrl_userpf_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_ctrl_userpf_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_ctrl_userpf_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_ctrl_userpf_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_ctrl_userpf_M_AXI_RDATA),
        .m_axi_rready(axi_vip_ctrl_userpf_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_ctrl_userpf_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_ctrl_userpf_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_ctrl_userpf_M_AXI_WDATA),
        .m_axi_wready(axi_vip_ctrl_userpf_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_ctrl_userpf_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_ctrl_userpf_M_AXI_WVALID),
        .s_axi_araddr(regslice_control_userpf_M_AXI_slr1_1_ARADDR),
        .s_axi_arprot(regslice_control_userpf_M_AXI_slr1_1_ARPROT),
        .s_axi_arready(regslice_control_userpf_M_AXI_slr1_1_ARREADY),
        .s_axi_arvalid(regslice_control_userpf_M_AXI_slr1_1_ARVALID),
        .s_axi_awaddr(regslice_control_userpf_M_AXI_slr1_1_AWADDR),
        .s_axi_awprot(regslice_control_userpf_M_AXI_slr1_1_AWPROT),
        .s_axi_awready(regslice_control_userpf_M_AXI_slr1_1_AWREADY),
        .s_axi_awvalid(regslice_control_userpf_M_AXI_slr1_1_AWVALID),
        .s_axi_bready(regslice_control_userpf_M_AXI_slr1_1_BREADY),
        .s_axi_bresp(regslice_control_userpf_M_AXI_slr1_1_BRESP),
        .s_axi_bvalid(regslice_control_userpf_M_AXI_slr1_1_BVALID),
        .s_axi_rdata(regslice_control_userpf_M_AXI_slr1_1_RDATA),
        .s_axi_rready(regslice_control_userpf_M_AXI_slr1_1_RREADY),
        .s_axi_rresp(regslice_control_userpf_M_AXI_slr1_1_RRESP),
        .s_axi_rvalid(regslice_control_userpf_M_AXI_slr1_1_RVALID),
        .s_axi_wdata(regslice_control_userpf_M_AXI_slr1_1_WDATA),
        .s_axi_wready(regslice_control_userpf_M_AXI_slr1_1_WREADY),
        .s_axi_wstrb(regslice_control_userpf_M_AXI_slr1_1_WSTRB),
        .s_axi_wvalid(regslice_control_userpf_M_AXI_slr1_1_WVALID));
  ulp_axi_vip_data_static_0 axi_vip_data_static
       (.aclk(aclk_0_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(axi_vip_data_static_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_data_static_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_data_static_M_AXI_ARCACHE),
        .m_axi_arid(axi_vip_data_static_M_AXI_ARID),
        .m_axi_arlen(axi_vip_data_static_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_data_static_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_data_static_M_AXI_ARPROT),
        .m_axi_arready(axi_vip_data_static_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_data_static_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_data_static_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_data_static_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_data_static_M_AXI_AWCACHE),
        .m_axi_awid(axi_vip_data_static_M_AXI_AWID),
        .m_axi_awlen(axi_vip_data_static_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_data_static_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_data_static_M_AXI_AWPROT),
        .m_axi_awready(axi_vip_data_static_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_data_static_M_AXI_AWVALID),
        .m_axi_bid(axi_vip_data_static_M_AXI_BID),
        .m_axi_bready(axi_vip_data_static_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_data_static_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_data_static_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_data_static_M_AXI_RDATA),
        .m_axi_rid(axi_vip_data_static_M_AXI_RID),
        .m_axi_rlast(axi_vip_data_static_M_AXI_RLAST),
        .m_axi_rready(axi_vip_data_static_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_data_static_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_data_static_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_data_static_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_data_static_M_AXI_WLAST),
        .m_axi_wready(axi_vip_data_static_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_data_static_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_data_static_M_AXI_WVALID),
        .s_axi_araddr(regslice_data_static_M_AXI_slr1_1_ARADDR),
        .s_axi_arburst(regslice_data_static_M_AXI_slr1_1_ARBURST),
        .s_axi_arcache(regslice_data_static_M_AXI_slr1_1_ARCACHE),
        .s_axi_arid(regslice_data_static_M_AXI_slr1_1_ARID),
        .s_axi_arlen(regslice_data_static_M_AXI_slr1_1_ARLEN),
        .s_axi_arlock(regslice_data_static_M_AXI_slr1_1_ARLOCK),
        .s_axi_arprot(regslice_data_static_M_AXI_slr1_1_ARPROT),
        .s_axi_arready(regslice_data_static_M_AXI_slr1_1_ARREADY),
        .s_axi_arvalid(regslice_data_static_M_AXI_slr1_1_ARVALID),
        .s_axi_awaddr(regslice_data_static_M_AXI_slr1_1_AWADDR),
        .s_axi_awburst(regslice_data_static_M_AXI_slr1_1_AWBURST),
        .s_axi_awcache(regslice_data_static_M_AXI_slr1_1_AWCACHE),
        .s_axi_awid(regslice_data_static_M_AXI_slr1_1_AWID),
        .s_axi_awlen(regslice_data_static_M_AXI_slr1_1_AWLEN),
        .s_axi_awlock(regslice_data_static_M_AXI_slr1_1_AWLOCK),
        .s_axi_awprot(regslice_data_static_M_AXI_slr1_1_AWPROT),
        .s_axi_awready(regslice_data_static_M_AXI_slr1_1_AWREADY),
        .s_axi_awvalid(regslice_data_static_M_AXI_slr1_1_AWVALID),
        .s_axi_bid(regslice_data_static_M_AXI_slr1_1_BID),
        .s_axi_bready(regslice_data_static_M_AXI_slr1_1_BREADY),
        .s_axi_bresp(regslice_data_static_M_AXI_slr1_1_BRESP),
        .s_axi_bvalid(regslice_data_static_M_AXI_slr1_1_BVALID),
        .s_axi_rdata(regslice_data_static_M_AXI_slr1_1_RDATA),
        .s_axi_rid(regslice_data_static_M_AXI_slr1_1_RID),
        .s_axi_rlast(regslice_data_static_M_AXI_slr1_1_RLAST),
        .s_axi_rready(regslice_data_static_M_AXI_slr1_1_RREADY),
        .s_axi_rresp(regslice_data_static_M_AXI_slr1_1_RRESP),
        .s_axi_rvalid(regslice_data_static_M_AXI_slr1_1_RVALID),
        .s_axi_wdata(regslice_data_static_M_AXI_slr1_1_WDATA),
        .s_axi_wlast(regslice_data_static_M_AXI_slr1_1_WLAST),
        .s_axi_wready(regslice_data_static_M_AXI_slr1_1_WREADY),
        .s_axi_wstrb(regslice_data_static_M_AXI_slr1_1_WSTRB),
        .s_axi_wvalid(regslice_data_static_M_AXI_slr1_1_WVALID));
  ulp_axi_vip_data_static1_0 axi_vip_data_static1
       (.aclk(aclk_0_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(axi_vip_data_static1_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_data_static1_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_data_static1_M_AXI_ARCACHE),
        .m_axi_arid(axi_vip_data_static1_M_AXI_ARID),
        .m_axi_arlen(axi_vip_data_static1_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_data_static1_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_data_static1_M_AXI_ARPROT),
        .m_axi_arready(axi_vip_data_static1_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_data_static1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_data_static1_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_data_static1_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_data_static1_M_AXI_AWCACHE),
        .m_axi_awid(axi_vip_data_static1_M_AXI_AWID),
        .m_axi_awlen(axi_vip_data_static1_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_data_static1_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_data_static1_M_AXI_AWPROT),
        .m_axi_awready(axi_vip_data_static1_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_data_static1_M_AXI_AWVALID),
        .m_axi_bid(axi_vip_data_static1_M_AXI_BID),
        .m_axi_bready(axi_vip_data_static1_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_data_static1_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_data_static1_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_data_static1_M_AXI_RDATA),
        .m_axi_rid(axi_vip_data_static1_M_AXI_RID),
        .m_axi_rlast(axi_vip_data_static1_M_AXI_RLAST),
        .m_axi_rready(axi_vip_data_static1_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_data_static1_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_data_static1_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_data_static1_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_data_static1_M_AXI_WLAST),
        .m_axi_wready(axi_vip_data_static1_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_data_static1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_data_static1_M_AXI_WVALID),
        .s_axi_araddr(regslice_data_static_M_AXI_slr2_1_ARADDR),
        .s_axi_arburst(regslice_data_static_M_AXI_slr2_1_ARBURST),
        .s_axi_arcache(regslice_data_static_M_AXI_slr2_1_ARCACHE),
        .s_axi_arid(regslice_data_static_M_AXI_slr2_1_ARID),
        .s_axi_arlen(regslice_data_static_M_AXI_slr2_1_ARLEN),
        .s_axi_arlock(regslice_data_static_M_AXI_slr2_1_ARLOCK),
        .s_axi_arprot(regslice_data_static_M_AXI_slr2_1_ARPROT),
        .s_axi_arready(regslice_data_static_M_AXI_slr2_1_ARREADY),
        .s_axi_arvalid(regslice_data_static_M_AXI_slr2_1_ARVALID),
        .s_axi_awaddr(regslice_data_static_M_AXI_slr2_1_AWADDR),
        .s_axi_awburst(regslice_data_static_M_AXI_slr2_1_AWBURST),
        .s_axi_awcache(regslice_data_static_M_AXI_slr2_1_AWCACHE),
        .s_axi_awid(regslice_data_static_M_AXI_slr2_1_AWID),
        .s_axi_awlen(regslice_data_static_M_AXI_slr2_1_AWLEN),
        .s_axi_awlock(regslice_data_static_M_AXI_slr2_1_AWLOCK),
        .s_axi_awprot(regslice_data_static_M_AXI_slr2_1_AWPROT),
        .s_axi_awready(regslice_data_static_M_AXI_slr2_1_AWREADY),
        .s_axi_awvalid(regslice_data_static_M_AXI_slr2_1_AWVALID),
        .s_axi_bid(regslice_data_static_M_AXI_slr2_1_BID),
        .s_axi_bready(regslice_data_static_M_AXI_slr2_1_BREADY),
        .s_axi_bresp(regslice_data_static_M_AXI_slr2_1_BRESP),
        .s_axi_bvalid(regslice_data_static_M_AXI_slr2_1_BVALID),
        .s_axi_rdata(regslice_data_static_M_AXI_slr2_1_RDATA),
        .s_axi_rid(regslice_data_static_M_AXI_slr2_1_RID),
        .s_axi_rlast(regslice_data_static_M_AXI_slr2_1_RLAST),
        .s_axi_rready(regslice_data_static_M_AXI_slr2_1_RREADY),
        .s_axi_rresp(regslice_data_static_M_AXI_slr2_1_RRESP),
        .s_axi_rvalid(regslice_data_static_M_AXI_slr2_1_RVALID),
        .s_axi_wdata(regslice_data_static_M_AXI_slr2_1_WDATA),
        .s_axi_wlast(regslice_data_static_M_AXI_slr2_1_WLAST),
        .s_axi_wready(regslice_data_static_M_AXI_slr2_1_WREADY),
        .s_axi_wstrb(regslice_data_static_M_AXI_slr2_1_WSTRB),
        .s_axi_wvalid(regslice_data_static_M_AXI_slr2_1_WVALID));
  ulp_freq_counter_0_0 freq_counter_0
       (.axil_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,regslice_control_periph_M_AXI_slr1_1_ARADDR}),
        .axil_arprot(regslice_control_periph_M_AXI_slr1_1_ARPROT),
        .axil_arready(regslice_control_periph_M_AXI_slr1_1_ARREADY),
        .axil_arvalid(regslice_control_periph_M_AXI_slr1_1_ARVALID),
        .axil_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,regslice_control_periph_M_AXI_slr1_1_AWADDR}),
        .axil_awprot(regslice_control_periph_M_AXI_slr1_1_AWPROT),
        .axil_awready(regslice_control_periph_M_AXI_slr1_1_AWREADY),
        .axil_awvalid(regslice_control_periph_M_AXI_slr1_1_AWVALID),
        .axil_bready(regslice_control_periph_M_AXI_slr1_1_BREADY),
        .axil_bresp(regslice_control_periph_M_AXI_slr1_1_BRESP),
        .axil_bvalid(regslice_control_periph_M_AXI_slr1_1_BVALID),
        .axil_rdata(regslice_control_periph_M_AXI_slr1_1_RDATA),
        .axil_rready(regslice_control_periph_M_AXI_slr1_1_RREADY),
        .axil_rresp(regslice_control_periph_M_AXI_slr1_1_RRESP),
        .axil_rvalid(regslice_control_periph_M_AXI_slr1_1_RVALID),
        .axil_wdata(regslice_control_periph_M_AXI_slr1_1_WDATA),
        .axil_wready(regslice_control_periph_M_AXI_slr1_1_WREADY),
        .axil_wstrb(regslice_control_periph_M_AXI_slr1_1_WSTRB),
        .axil_wvalid(regslice_control_periph_M_AXI_slr1_1_WVALID),
        .clk(slowest_sync_clk_1),
        .reset_n(ARESETN_1),
        .test_clk0(clkwiz_kernel_clk_out1_1),
        .test_clk1(clkwiz_kernel2_clk_out1_1));
  ulp_interconnect_axilite_user_0 interconnect_axilite_user
       (.ACLK(aclk_0_1),
        .ARESETN(reset_controllers_interconnect_aresetn),
        .M00_ACLK(aclk_0_1),
        .M00_ARESETN(reset_controllers_interconnect_aresetn),
        .M00_AXI_araddr(interconnect_axilite_user_M00_AXI_ARADDR),
        .M00_AXI_arready(interconnect_axilite_user_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_axilite_user_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_axilite_user_M00_AXI_AWADDR),
        .M00_AXI_awready(interconnect_axilite_user_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_axilite_user_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_axilite_user_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_axilite_user_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_axilite_user_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_axilite_user_M00_AXI_RDATA),
        .M00_AXI_rready(interconnect_axilite_user_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_axilite_user_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_axilite_user_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_axilite_user_M00_AXI_WDATA),
        .M00_AXI_wready(interconnect_axilite_user_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_axilite_user_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_axilite_user_M00_AXI_WVALID),
        .M01_ACLK(M01_ACLK_1),
        .M01_ARESETN(reset_controllers_psreset_gate_pr_kernel_interconnect_aresetn),
        .M01_AXI_araddr(Conn1_ARADDR),
        .M01_AXI_arready(Conn1_ARREADY),
        .M01_AXI_arvalid(Conn1_ARVALID),
        .M01_AXI_awaddr(Conn1_AWADDR),
        .M01_AXI_awready(Conn1_AWREADY),
        .M01_AXI_awvalid(Conn1_AWVALID),
        .M01_AXI_bready(Conn1_BREADY),
        .M01_AXI_bresp(Conn1_BRESP),
        .M01_AXI_bvalid(Conn1_BVALID),
        .M01_AXI_rdata(Conn1_RDATA),
        .M01_AXI_rready(Conn1_RREADY),
        .M01_AXI_rresp(Conn1_RRESP),
        .M01_AXI_rvalid(Conn1_RVALID),
        .M01_AXI_wdata(Conn1_WDATA),
        .M01_AXI_wready(Conn1_WREADY),
        .M01_AXI_wstrb(Conn1_WSTRB),
        .M01_AXI_wvalid(Conn1_WVALID),
        .S00_ACLK(aclk_0_1),
        .S00_ARESETN(reset_controllers_interconnect_aresetn),
        .S00_AXI_araddr(regslice_control_userpf_M_AXI_ARADDR),
        .S00_AXI_arprot(regslice_control_userpf_M_AXI_ARPROT),
        .S00_AXI_arready(regslice_control_userpf_M_AXI_ARREADY),
        .S00_AXI_arvalid(regslice_control_userpf_M_AXI_ARVALID),
        .S00_AXI_awaddr(regslice_control_userpf_M_AXI_AWADDR),
        .S00_AXI_awprot(regslice_control_userpf_M_AXI_AWPROT),
        .S00_AXI_awready(regslice_control_userpf_M_AXI_AWREADY),
        .S00_AXI_awvalid(regslice_control_userpf_M_AXI_AWVALID),
        .S00_AXI_bready(regslice_control_userpf_M_AXI_BREADY),
        .S00_AXI_bresp(regslice_control_userpf_M_AXI_BRESP),
        .S00_AXI_bvalid(regslice_control_userpf_M_AXI_BVALID),
        .S00_AXI_rdata(regslice_control_userpf_M_AXI_RDATA),
        .S00_AXI_rready(regslice_control_userpf_M_AXI_RREADY),
        .S00_AXI_rresp(regslice_control_userpf_M_AXI_RRESP),
        .S00_AXI_rvalid(regslice_control_userpf_M_AXI_RVALID),
        .S00_AXI_wdata(regslice_control_userpf_M_AXI_WDATA),
        .S00_AXI_wready(regslice_control_userpf_M_AXI_WREADY),
        .S00_AXI_wstrb(regslice_control_userpf_M_AXI_WSTRB),
        .S00_AXI_wvalid(regslice_control_userpf_M_AXI_WVALID));
  ulp_regslice_control_mgntpf_0 regslice_control_mgntpf
       (.aclk(M00_ACLK_1),
        .aresetn(M00_ARESETN_1),
        .m_axi_araddr(regslice_control_mgntpf_M_AXI_ARADDR),
        .m_axi_arready(regslice_control_mgntpf_M_AXI_ARREADY),
        .m_axi_arvalid(regslice_control_mgntpf_M_AXI_ARVALID),
        .m_axi_awaddr(regslice_control_mgntpf_M_AXI_AWADDR),
        .m_axi_awready(regslice_control_mgntpf_M_AXI_AWREADY),
        .m_axi_awvalid(regslice_control_mgntpf_M_AXI_AWVALID),
        .m_axi_bready(regslice_control_mgntpf_M_AXI_BREADY),
        .m_axi_bresp(regslice_control_mgntpf_M_AXI_BRESP),
        .m_axi_bvalid(regslice_control_mgntpf_M_AXI_BVALID),
        .m_axi_rdata(regslice_control_mgntpf_M_AXI_RDATA),
        .m_axi_rready(regslice_control_mgntpf_M_AXI_RREADY),
        .m_axi_rresp(regslice_control_mgntpf_M_AXI_RRESP),
        .m_axi_rvalid(regslice_control_mgntpf_M_AXI_RVALID),
        .m_axi_wdata(regslice_control_mgntpf_M_AXI_WDATA),
        .m_axi_wready(regslice_control_mgntpf_M_AXI_WREADY),
        .m_axi_wvalid(regslice_control_mgntpf_M_AXI_WVALID),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .s_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .s_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  ulp_regslice_control_userpf_0 regslice_control_userpf
       (.aclk(aclk_0_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(regslice_control_userpf_M_AXI_ARADDR),
        .m_axi_arprot(regslice_control_userpf_M_AXI_ARPROT),
        .m_axi_arready(regslice_control_userpf_M_AXI_ARREADY),
        .m_axi_arvalid(regslice_control_userpf_M_AXI_ARVALID),
        .m_axi_awaddr(regslice_control_userpf_M_AXI_AWADDR),
        .m_axi_awprot(regslice_control_userpf_M_AXI_AWPROT),
        .m_axi_awready(regslice_control_userpf_M_AXI_AWREADY),
        .m_axi_awvalid(regslice_control_userpf_M_AXI_AWVALID),
        .m_axi_bready(regslice_control_userpf_M_AXI_BREADY),
        .m_axi_bresp(regslice_control_userpf_M_AXI_BRESP),
        .m_axi_bvalid(regslice_control_userpf_M_AXI_BVALID),
        .m_axi_rdata(regslice_control_userpf_M_AXI_RDATA),
        .m_axi_rready(regslice_control_userpf_M_AXI_RREADY),
        .m_axi_rresp(regslice_control_userpf_M_AXI_RRESP),
        .m_axi_rvalid(regslice_control_userpf_M_AXI_RVALID),
        .m_axi_wdata(regslice_control_userpf_M_AXI_WDATA),
        .m_axi_wready(regslice_control_userpf_M_AXI_WREADY),
        .m_axi_wstrb(regslice_control_userpf_M_AXI_WSTRB),
        .m_axi_wvalid(regslice_control_userpf_M_AXI_WVALID),
        .s_axi_araddr(axi_vip_ctrl_userpf_M_AXI_ARADDR),
        .s_axi_arprot(axi_vip_ctrl_userpf_M_AXI_ARPROT),
        .s_axi_arready(axi_vip_ctrl_userpf_M_AXI_ARREADY),
        .s_axi_arvalid(axi_vip_ctrl_userpf_M_AXI_ARVALID),
        .s_axi_awaddr(axi_vip_ctrl_userpf_M_AXI_AWADDR),
        .s_axi_awprot(axi_vip_ctrl_userpf_M_AXI_AWPROT),
        .s_axi_awready(axi_vip_ctrl_userpf_M_AXI_AWREADY),
        .s_axi_awvalid(axi_vip_ctrl_userpf_M_AXI_AWVALID),
        .s_axi_bready(axi_vip_ctrl_userpf_M_AXI_BREADY),
        .s_axi_bresp(axi_vip_ctrl_userpf_M_AXI_BRESP),
        .s_axi_bvalid(axi_vip_ctrl_userpf_M_AXI_BVALID),
        .s_axi_rdata(axi_vip_ctrl_userpf_M_AXI_RDATA),
        .s_axi_rready(axi_vip_ctrl_userpf_M_AXI_RREADY),
        .s_axi_rresp(axi_vip_ctrl_userpf_M_AXI_RRESP),
        .s_axi_rvalid(axi_vip_ctrl_userpf_M_AXI_RVALID),
        .s_axi_wdata(axi_vip_ctrl_userpf_M_AXI_WDATA),
        .s_axi_wready(axi_vip_ctrl_userpf_M_AXI_WREADY),
        .s_axi_wstrb(axi_vip_ctrl_userpf_M_AXI_WSTRB),
        .s_axi_wvalid(axi_vip_ctrl_userpf_M_AXI_WVALID));
  ulp_regslice_data_static_0 regslice_data_static
       (.aclk(aclk_0_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(regslice_data_static_M_AXI1_ARADDR),
        .m_axi_arburst(regslice_data_static_M_AXI1_ARBURST),
        .m_axi_arcache(regslice_data_static_M_AXI1_ARCACHE),
        .m_axi_arid(regslice_data_static_M_AXI1_ARID),
        .m_axi_arlen(regslice_data_static_M_AXI1_ARLEN),
        .m_axi_arlock(regslice_data_static_M_AXI1_ARLOCK),
        .m_axi_arprot(regslice_data_static_M_AXI1_ARPROT),
        .m_axi_arqos(regslice_data_static_M_AXI1_ARQOS),
        .m_axi_arready(regslice_data_static_M_AXI1_ARREADY),
        .m_axi_arregion(regslice_data_static_M_AXI1_ARREGION),
        .m_axi_arsize(regslice_data_static_M_AXI1_ARSIZE),
        .m_axi_arvalid(regslice_data_static_M_AXI1_ARVALID),
        .m_axi_awaddr(regslice_data_static_M_AXI1_AWADDR),
        .m_axi_awburst(regslice_data_static_M_AXI1_AWBURST),
        .m_axi_awcache(regslice_data_static_M_AXI1_AWCACHE),
        .m_axi_awid(regslice_data_static_M_AXI1_AWID),
        .m_axi_awlen(regslice_data_static_M_AXI1_AWLEN),
        .m_axi_awlock(regslice_data_static_M_AXI1_AWLOCK),
        .m_axi_awprot(regslice_data_static_M_AXI1_AWPROT),
        .m_axi_awqos(regslice_data_static_M_AXI1_AWQOS),
        .m_axi_awready(regslice_data_static_M_AXI1_AWREADY),
        .m_axi_awregion(regslice_data_static_M_AXI1_AWREGION),
        .m_axi_awsize(regslice_data_static_M_AXI1_AWSIZE),
        .m_axi_awvalid(regslice_data_static_M_AXI1_AWVALID),
        .m_axi_bid(regslice_data_static_M_AXI1_BID),
        .m_axi_bready(regslice_data_static_M_AXI1_BREADY),
        .m_axi_bresp(regslice_data_static_M_AXI1_BRESP),
        .m_axi_bvalid(regslice_data_static_M_AXI1_BVALID),
        .m_axi_rdata(regslice_data_static_M_AXI1_RDATA),
        .m_axi_rid(regslice_data_static_M_AXI1_RID),
        .m_axi_rlast(regslice_data_static_M_AXI1_RLAST),
        .m_axi_rready(regslice_data_static_M_AXI1_RREADY),
        .m_axi_rresp(regslice_data_static_M_AXI1_RRESP),
        .m_axi_rvalid(regslice_data_static_M_AXI1_RVALID),
        .m_axi_wdata(regslice_data_static_M_AXI1_WDATA),
        .m_axi_wlast(regslice_data_static_M_AXI1_WLAST),
        .m_axi_wready(regslice_data_static_M_AXI1_WREADY),
        .m_axi_wstrb(regslice_data_static_M_AXI1_WSTRB),
        .m_axi_wvalid(regslice_data_static_M_AXI1_WVALID),
        .s_axi_araddr(axi_vip_data_static_M_AXI_ARADDR),
        .s_axi_arburst(axi_vip_data_static_M_AXI_ARBURST),
        .s_axi_arcache(axi_vip_data_static_M_AXI_ARCACHE),
        .s_axi_arid(axi_vip_data_static_M_AXI_ARID),
        .s_axi_arlen(axi_vip_data_static_M_AXI_ARLEN),
        .s_axi_arlock(axi_vip_data_static_M_AXI_ARLOCK),
        .s_axi_arprot(axi_vip_data_static_M_AXI_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(axi_vip_data_static_M_AXI_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b1,1'b1,1'b0}),
        .s_axi_arvalid(axi_vip_data_static_M_AXI_ARVALID),
        .s_axi_awaddr(axi_vip_data_static_M_AXI_AWADDR),
        .s_axi_awburst(axi_vip_data_static_M_AXI_AWBURST),
        .s_axi_awcache(axi_vip_data_static_M_AXI_AWCACHE),
        .s_axi_awid(axi_vip_data_static_M_AXI_AWID),
        .s_axi_awlen(axi_vip_data_static_M_AXI_AWLEN),
        .s_axi_awlock(axi_vip_data_static_M_AXI_AWLOCK),
        .s_axi_awprot(axi_vip_data_static_M_AXI_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(axi_vip_data_static_M_AXI_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b1,1'b1,1'b0}),
        .s_axi_awvalid(axi_vip_data_static_M_AXI_AWVALID),
        .s_axi_bid(axi_vip_data_static_M_AXI_BID),
        .s_axi_bready(axi_vip_data_static_M_AXI_BREADY),
        .s_axi_bresp(axi_vip_data_static_M_AXI_BRESP),
        .s_axi_bvalid(axi_vip_data_static_M_AXI_BVALID),
        .s_axi_rdata(axi_vip_data_static_M_AXI_RDATA),
        .s_axi_rid(axi_vip_data_static_M_AXI_RID),
        .s_axi_rlast(axi_vip_data_static_M_AXI_RLAST),
        .s_axi_rready(axi_vip_data_static_M_AXI_RREADY),
        .s_axi_rresp(axi_vip_data_static_M_AXI_RRESP),
        .s_axi_rvalid(axi_vip_data_static_M_AXI_RVALID),
        .s_axi_wdata(axi_vip_data_static_M_AXI_WDATA),
        .s_axi_wlast(axi_vip_data_static_M_AXI_WLAST),
        .s_axi_wready(axi_vip_data_static_M_AXI_WREADY),
        .s_axi_wstrb(axi_vip_data_static_M_AXI_WSTRB),
        .s_axi_wvalid(axi_vip_data_static_M_AXI_WVALID));
  ulp_regslice_data_static1_0 regslice_data_static1
       (.aclk(aclk_0_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axi_araddr(regslice_data_static1_M_AXI_ARADDR),
        .m_axi_arburst(regslice_data_static1_M_AXI_ARBURST),
        .m_axi_arcache(regslice_data_static1_M_AXI_ARCACHE),
        .m_axi_arid(regslice_data_static1_M_AXI_ARID),
        .m_axi_arlen(regslice_data_static1_M_AXI_ARLEN),
        .m_axi_arlock(regslice_data_static1_M_AXI_ARLOCK),
        .m_axi_arprot(regslice_data_static1_M_AXI_ARPROT),
        .m_axi_arqos(regslice_data_static1_M_AXI_ARQOS),
        .m_axi_arready(regslice_data_static1_M_AXI_ARREADY),
        .m_axi_arregion(regslice_data_static1_M_AXI_ARREGION),
        .m_axi_arsize(regslice_data_static1_M_AXI_ARSIZE),
        .m_axi_arvalid(regslice_data_static1_M_AXI_ARVALID),
        .m_axi_awaddr(regslice_data_static1_M_AXI_AWADDR),
        .m_axi_awburst(regslice_data_static1_M_AXI_AWBURST),
        .m_axi_awcache(regslice_data_static1_M_AXI_AWCACHE),
        .m_axi_awid(regslice_data_static1_M_AXI_AWID),
        .m_axi_awlen(regslice_data_static1_M_AXI_AWLEN),
        .m_axi_awlock(regslice_data_static1_M_AXI_AWLOCK),
        .m_axi_awprot(regslice_data_static1_M_AXI_AWPROT),
        .m_axi_awqos(regslice_data_static1_M_AXI_AWQOS),
        .m_axi_awready(regslice_data_static1_M_AXI_AWREADY),
        .m_axi_awregion(regslice_data_static1_M_AXI_AWREGION),
        .m_axi_awsize(regslice_data_static1_M_AXI_AWSIZE),
        .m_axi_awvalid(regslice_data_static1_M_AXI_AWVALID),
        .m_axi_bid(regslice_data_static1_M_AXI_BID),
        .m_axi_bready(regslice_data_static1_M_AXI_BREADY),
        .m_axi_bresp(regslice_data_static1_M_AXI_BRESP),
        .m_axi_bvalid(regslice_data_static1_M_AXI_BVALID),
        .m_axi_rdata(regslice_data_static1_M_AXI_RDATA),
        .m_axi_rid(regslice_data_static1_M_AXI_RID),
        .m_axi_rlast(regslice_data_static1_M_AXI_RLAST),
        .m_axi_rready(regslice_data_static1_M_AXI_RREADY),
        .m_axi_rresp(regslice_data_static1_M_AXI_RRESP),
        .m_axi_rvalid(regslice_data_static1_M_AXI_RVALID),
        .m_axi_wdata(regslice_data_static1_M_AXI_WDATA),
        .m_axi_wlast(regslice_data_static1_M_AXI_WLAST),
        .m_axi_wready(regslice_data_static1_M_AXI_WREADY),
        .m_axi_wstrb(regslice_data_static1_M_AXI_WSTRB),
        .m_axi_wvalid(regslice_data_static1_M_AXI_WVALID),
        .s_axi_araddr(axi_vip_data_static1_M_AXI_ARADDR),
        .s_axi_arburst(axi_vip_data_static1_M_AXI_ARBURST),
        .s_axi_arcache(axi_vip_data_static1_M_AXI_ARCACHE),
        .s_axi_arid(axi_vip_data_static1_M_AXI_ARID),
        .s_axi_arlen(axi_vip_data_static1_M_AXI_ARLEN),
        .s_axi_arlock(axi_vip_data_static1_M_AXI_ARLOCK),
        .s_axi_arprot(axi_vip_data_static1_M_AXI_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(axi_vip_data_static1_M_AXI_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b1,1'b0,1'b0}),
        .s_axi_arvalid(axi_vip_data_static1_M_AXI_ARVALID),
        .s_axi_awaddr(axi_vip_data_static1_M_AXI_AWADDR),
        .s_axi_awburst(axi_vip_data_static1_M_AXI_AWBURST),
        .s_axi_awcache(axi_vip_data_static1_M_AXI_AWCACHE),
        .s_axi_awid(axi_vip_data_static1_M_AXI_AWID),
        .s_axi_awlen(axi_vip_data_static1_M_AXI_AWLEN),
        .s_axi_awlock(axi_vip_data_static1_M_AXI_AWLOCK),
        .s_axi_awprot(axi_vip_data_static1_M_AXI_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(axi_vip_data_static1_M_AXI_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b1,1'b0,1'b0}),
        .s_axi_awvalid(axi_vip_data_static1_M_AXI_AWVALID),
        .s_axi_bid(axi_vip_data_static1_M_AXI_BID),
        .s_axi_bready(axi_vip_data_static1_M_AXI_BREADY),
        .s_axi_bresp(axi_vip_data_static1_M_AXI_BRESP),
        .s_axi_bvalid(axi_vip_data_static1_M_AXI_BVALID),
        .s_axi_rdata(axi_vip_data_static1_M_AXI_RDATA),
        .s_axi_rid(axi_vip_data_static1_M_AXI_RID),
        .s_axi_rlast(axi_vip_data_static1_M_AXI_RLAST),
        .s_axi_rready(axi_vip_data_static1_M_AXI_RREADY),
        .s_axi_rresp(axi_vip_data_static1_M_AXI_RRESP),
        .s_axi_rvalid(axi_vip_data_static1_M_AXI_RVALID),
        .s_axi_wdata(axi_vip_data_static1_M_AXI_WDATA),
        .s_axi_wlast(axi_vip_data_static1_M_AXI_WLAST),
        .s_axi_wready(axi_vip_data_static1_M_AXI_WREADY),
        .s_axi_wstrb(axi_vip_data_static1_M_AXI_WSTRB),
        .s_axi_wvalid(axi_vip_data_static1_M_AXI_WVALID));
  reset_controllers_imp_440OZ2 reset_controllers
       (.aux_reset_in(aux_reset_in_1),
        .c0_ddr4_ui_clk(M00_ACLK_1),
        .clkwiz_kernel2_clk_out1(clkwiz_kernel2_clk_out1_1),
        .clkwiz_kernel2_locked_slr1(clkwiz_kernel2_locked_1),
        .clkwiz_kernel_clk_out1(clkwiz_kernel_clk_out1_1),
        .clkwiz_kernel_locked_slr1(clkwiz_kernel_locked_1),
        .clkwiz_sysclks_clk_out2(slowest_sync_clk_1),
        .clkwiz_sysclks_locked_slr1(clkwiz_sysclks_locked_1),
        .dma_pcie_axi_aclk(aclk_0_1),
        .interconnect_aresetn(reset_controllers_interconnect_aresetn1),
        .iob_static_perst_n_out(iob_static_perst_n_out_1),
        .logic_reset_op_Res(reset_controllers_logic_reset_op_Res),
        .pcie_user_lnk_up_slr1(dcm_locked_0_1),
        .peripheral_aresetn(reset_controllers_peripheral_aresetn),
        .psreset_gate_pr_control_interconnect_aresetn(ARESETN_1),
        .psreset_gate_pr_data_interconnect_aresetn(reset_controllers_interconnect_aresetn),
        .psreset_gate_pr_kernel_interconnect_aresetn(reset_controllers_psreset_gate_pr_kernel_interconnect_aresetn),
        .slice_reset_kernel_pr_Dout_slr1(slice_reset_kernel_pr_Dout_1));
endmodule

(* CORE_GENERATION_INFO = "ulp,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ulp,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=95,numReposBlks=71,numNonXlnxBlks=0,numHierBlks=24,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=1,bdsource=Vitis,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ulp.hwdef" *) 
module ulp
   (BLP_S_AXI_CTRL_USER_00_araddr,
    BLP_S_AXI_CTRL_USER_00_arprot,
    BLP_S_AXI_CTRL_USER_00_arready,
    BLP_S_AXI_CTRL_USER_00_arvalid,
    BLP_S_AXI_CTRL_USER_00_awaddr,
    BLP_S_AXI_CTRL_USER_00_awprot,
    BLP_S_AXI_CTRL_USER_00_awready,
    BLP_S_AXI_CTRL_USER_00_awvalid,
    BLP_S_AXI_CTRL_USER_00_bready,
    BLP_S_AXI_CTRL_USER_00_bresp,
    BLP_S_AXI_CTRL_USER_00_bvalid,
    BLP_S_AXI_CTRL_USER_00_rdata,
    BLP_S_AXI_CTRL_USER_00_rready,
    BLP_S_AXI_CTRL_USER_00_rresp,
    BLP_S_AXI_CTRL_USER_00_rvalid,
    BLP_S_AXI_CTRL_USER_00_wdata,
    BLP_S_AXI_CTRL_USER_00_wready,
    BLP_S_AXI_CTRL_USER_00_wstrb,
    BLP_S_AXI_CTRL_USER_00_wvalid,
    BLP_S_AXI_CTRL_USER_01_araddr,
    BLP_S_AXI_CTRL_USER_01_arprot,
    BLP_S_AXI_CTRL_USER_01_arready,
    BLP_S_AXI_CTRL_USER_01_arvalid,
    BLP_S_AXI_CTRL_USER_01_awaddr,
    BLP_S_AXI_CTRL_USER_01_awprot,
    BLP_S_AXI_CTRL_USER_01_awready,
    BLP_S_AXI_CTRL_USER_01_awvalid,
    BLP_S_AXI_CTRL_USER_01_bready,
    BLP_S_AXI_CTRL_USER_01_bresp,
    BLP_S_AXI_CTRL_USER_01_bvalid,
    BLP_S_AXI_CTRL_USER_01_rdata,
    BLP_S_AXI_CTRL_USER_01_rready,
    BLP_S_AXI_CTRL_USER_01_rresp,
    BLP_S_AXI_CTRL_USER_01_rvalid,
    BLP_S_AXI_CTRL_USER_01_wdata,
    BLP_S_AXI_CTRL_USER_01_wready,
    BLP_S_AXI_CTRL_USER_01_wstrb,
    BLP_S_AXI_CTRL_USER_01_wvalid,
    BLP_S_AXI_CTRL_USER_02_araddr,
    BLP_S_AXI_CTRL_USER_02_arprot,
    BLP_S_AXI_CTRL_USER_02_arready,
    BLP_S_AXI_CTRL_USER_02_arvalid,
    BLP_S_AXI_CTRL_USER_02_awaddr,
    BLP_S_AXI_CTRL_USER_02_awprot,
    BLP_S_AXI_CTRL_USER_02_awready,
    BLP_S_AXI_CTRL_USER_02_awvalid,
    BLP_S_AXI_CTRL_USER_02_bready,
    BLP_S_AXI_CTRL_USER_02_bresp,
    BLP_S_AXI_CTRL_USER_02_bvalid,
    BLP_S_AXI_CTRL_USER_02_rdata,
    BLP_S_AXI_CTRL_USER_02_rready,
    BLP_S_AXI_CTRL_USER_02_rresp,
    BLP_S_AXI_CTRL_USER_02_rvalid,
    BLP_S_AXI_CTRL_USER_02_wdata,
    BLP_S_AXI_CTRL_USER_02_wready,
    BLP_S_AXI_CTRL_USER_02_wstrb,
    BLP_S_AXI_CTRL_USER_02_wvalid,
    BLP_S_AXI_DATA_H2C_00_araddr,
    BLP_S_AXI_DATA_H2C_00_arburst,
    BLP_S_AXI_DATA_H2C_00_arcache,
    BLP_S_AXI_DATA_H2C_00_arid,
    BLP_S_AXI_DATA_H2C_00_arlen,
    BLP_S_AXI_DATA_H2C_00_arlock,
    BLP_S_AXI_DATA_H2C_00_arprot,
    BLP_S_AXI_DATA_H2C_00_arready,
    BLP_S_AXI_DATA_H2C_00_arvalid,
    BLP_S_AXI_DATA_H2C_00_awaddr,
    BLP_S_AXI_DATA_H2C_00_awburst,
    BLP_S_AXI_DATA_H2C_00_awcache,
    BLP_S_AXI_DATA_H2C_00_awid,
    BLP_S_AXI_DATA_H2C_00_awlen,
    BLP_S_AXI_DATA_H2C_00_awlock,
    BLP_S_AXI_DATA_H2C_00_awprot,
    BLP_S_AXI_DATA_H2C_00_awready,
    BLP_S_AXI_DATA_H2C_00_awvalid,
    BLP_S_AXI_DATA_H2C_00_bid,
    BLP_S_AXI_DATA_H2C_00_bready,
    BLP_S_AXI_DATA_H2C_00_bresp,
    BLP_S_AXI_DATA_H2C_00_bvalid,
    BLP_S_AXI_DATA_H2C_00_rdata,
    BLP_S_AXI_DATA_H2C_00_rid,
    BLP_S_AXI_DATA_H2C_00_rlast,
    BLP_S_AXI_DATA_H2C_00_rready,
    BLP_S_AXI_DATA_H2C_00_rresp,
    BLP_S_AXI_DATA_H2C_00_rvalid,
    BLP_S_AXI_DATA_H2C_00_wdata,
    BLP_S_AXI_DATA_H2C_00_wlast,
    BLP_S_AXI_DATA_H2C_00_wready,
    BLP_S_AXI_DATA_H2C_00_wstrb,
    BLP_S_AXI_DATA_H2C_00_wvalid,
    BLP_S_AXI_DATA_H2C_01_araddr,
    BLP_S_AXI_DATA_H2C_01_arburst,
    BLP_S_AXI_DATA_H2C_01_arcache,
    BLP_S_AXI_DATA_H2C_01_arid,
    BLP_S_AXI_DATA_H2C_01_arlen,
    BLP_S_AXI_DATA_H2C_01_arlock,
    BLP_S_AXI_DATA_H2C_01_arprot,
    BLP_S_AXI_DATA_H2C_01_arready,
    BLP_S_AXI_DATA_H2C_01_arvalid,
    BLP_S_AXI_DATA_H2C_01_awaddr,
    BLP_S_AXI_DATA_H2C_01_awburst,
    BLP_S_AXI_DATA_H2C_01_awcache,
    BLP_S_AXI_DATA_H2C_01_awid,
    BLP_S_AXI_DATA_H2C_01_awlen,
    BLP_S_AXI_DATA_H2C_01_awlock,
    BLP_S_AXI_DATA_H2C_01_awprot,
    BLP_S_AXI_DATA_H2C_01_awready,
    BLP_S_AXI_DATA_H2C_01_awvalid,
    BLP_S_AXI_DATA_H2C_01_bid,
    BLP_S_AXI_DATA_H2C_01_bready,
    BLP_S_AXI_DATA_H2C_01_bresp,
    BLP_S_AXI_DATA_H2C_01_bvalid,
    BLP_S_AXI_DATA_H2C_01_rdata,
    BLP_S_AXI_DATA_H2C_01_rid,
    BLP_S_AXI_DATA_H2C_01_rlast,
    BLP_S_AXI_DATA_H2C_01_rready,
    BLP_S_AXI_DATA_H2C_01_rresp,
    BLP_S_AXI_DATA_H2C_01_rvalid,
    BLP_S_AXI_DATA_H2C_01_wdata,
    BLP_S_AXI_DATA_H2C_01_wlast,
    BLP_S_AXI_DATA_H2C_01_wready,
    BLP_S_AXI_DATA_H2C_01_wstrb,
    BLP_S_AXI_DATA_H2C_01_wvalid,
    BLP_S_AXI_DATA_H2C_02_araddr,
    BLP_S_AXI_DATA_H2C_02_arburst,
    BLP_S_AXI_DATA_H2C_02_arcache,
    BLP_S_AXI_DATA_H2C_02_arlen,
    BLP_S_AXI_DATA_H2C_02_arlock,
    BLP_S_AXI_DATA_H2C_02_arprot,
    BLP_S_AXI_DATA_H2C_02_arready,
    BLP_S_AXI_DATA_H2C_02_arvalid,
    BLP_S_AXI_DATA_H2C_02_awaddr,
    BLP_S_AXI_DATA_H2C_02_awburst,
    BLP_S_AXI_DATA_H2C_02_awcache,
    BLP_S_AXI_DATA_H2C_02_awlen,
    BLP_S_AXI_DATA_H2C_02_awlock,
    BLP_S_AXI_DATA_H2C_02_awprot,
    BLP_S_AXI_DATA_H2C_02_awready,
    BLP_S_AXI_DATA_H2C_02_awvalid,
    BLP_S_AXI_DATA_H2C_02_bready,
    BLP_S_AXI_DATA_H2C_02_bresp,
    BLP_S_AXI_DATA_H2C_02_bvalid,
    BLP_S_AXI_DATA_H2C_02_rdata,
    BLP_S_AXI_DATA_H2C_02_rlast,
    BLP_S_AXI_DATA_H2C_02_rready,
    BLP_S_AXI_DATA_H2C_02_rresp,
    BLP_S_AXI_DATA_H2C_02_rvalid,
    BLP_S_AXI_DATA_H2C_02_wdata,
    BLP_S_AXI_DATA_H2C_02_wlast,
    BLP_S_AXI_DATA_H2C_02_wready,
    BLP_S_AXI_DATA_H2C_02_wstrb,
    BLP_S_AXI_DATA_H2C_02_wvalid,
    BLP_S_AXI_DATA_H2C_03_araddr,
    BLP_S_AXI_DATA_H2C_03_arburst,
    BLP_S_AXI_DATA_H2C_03_arcache,
    BLP_S_AXI_DATA_H2C_03_arid,
    BLP_S_AXI_DATA_H2C_03_arlen,
    BLP_S_AXI_DATA_H2C_03_arlock,
    BLP_S_AXI_DATA_H2C_03_arprot,
    BLP_S_AXI_DATA_H2C_03_arready,
    BLP_S_AXI_DATA_H2C_03_arvalid,
    BLP_S_AXI_DATA_H2C_03_awaddr,
    BLP_S_AXI_DATA_H2C_03_awburst,
    BLP_S_AXI_DATA_H2C_03_awcache,
    BLP_S_AXI_DATA_H2C_03_awid,
    BLP_S_AXI_DATA_H2C_03_awlen,
    BLP_S_AXI_DATA_H2C_03_awlock,
    BLP_S_AXI_DATA_H2C_03_awprot,
    BLP_S_AXI_DATA_H2C_03_awready,
    BLP_S_AXI_DATA_H2C_03_awvalid,
    BLP_S_AXI_DATA_H2C_03_bid,
    BLP_S_AXI_DATA_H2C_03_bready,
    BLP_S_AXI_DATA_H2C_03_bresp,
    BLP_S_AXI_DATA_H2C_03_bvalid,
    BLP_S_AXI_DATA_H2C_03_rdata,
    BLP_S_AXI_DATA_H2C_03_rid,
    BLP_S_AXI_DATA_H2C_03_rlast,
    BLP_S_AXI_DATA_H2C_03_rready,
    BLP_S_AXI_DATA_H2C_03_rresp,
    BLP_S_AXI_DATA_H2C_03_rvalid,
    BLP_S_AXI_DATA_H2C_03_wdata,
    BLP_S_AXI_DATA_H2C_03_wlast,
    BLP_S_AXI_DATA_H2C_03_wready,
    BLP_S_AXI_DATA_H2C_03_wstrb,
    BLP_S_AXI_DATA_H2C_03_wvalid,
    blp_m_data_dna_from_ulp_00,
    blp_m_data_memory_calib_complete_00,
    blp_m_irq_cu_00,
    blp_s_aclk_ctrl_00,
    blp_s_aclk_kernel2_ref_clk_00,
    blp_s_aclk_kernel_ref_clk_00,
    blp_s_aclk_pcie_00,
    blp_s_aresetn_ctrl_00,
    blp_s_aresetn_kernel_ref_clk_00,
    blp_s_aresetn_pcie_00,
    blp_s_data_clkwiz_kernel_clk_out1_locked_00,
    blp_s_data_dout_dna_00,
    blp_s_data_perstn_out_00,
    blp_s_data_slice_pr_reset_to_ulp_00,
    io_clk_ddr_00_clk_n,
    io_clk_ddr_00_clk_p,
    io_ddr_00_act_n,
    io_ddr_00_adr,
    io_ddr_00_ba,
    io_ddr_00_bg,
    io_ddr_00_ck_c,
    io_ddr_00_ck_t,
    io_ddr_00_cke,
    io_ddr_00_cs_n,
    io_ddr_00_dm_n,
    io_ddr_00_dq,
    io_ddr_00_dqs_c,
    io_ddr_00_dqs_t,
    io_ddr_00_odt,
    io_ddr_00_reset_n);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_USER_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY" *) output BLP_S_AXI_CTRL_USER_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID" *) input BLP_S_AXI_CTRL_USER_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY" *) output BLP_S_AXI_CTRL_USER_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID" *) input BLP_S_AXI_CTRL_USER_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY" *) input BLP_S_AXI_CTRL_USER_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID" *) output BLP_S_AXI_CTRL_USER_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY" *) input BLP_S_AXI_CTRL_USER_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID" *) output BLP_S_AXI_CTRL_USER_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY" *) output BLP_S_AXI_CTRL_USER_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID" *) input BLP_S_AXI_CTRL_USER_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_USER_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARREADY" *) output BLP_S_AXI_CTRL_USER_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARVALID" *) input BLP_S_AXI_CTRL_USER_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWREADY" *) output BLP_S_AXI_CTRL_USER_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWVALID" *) input BLP_S_AXI_CTRL_USER_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BREADY" *) input BLP_S_AXI_CTRL_USER_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BVALID" *) output BLP_S_AXI_CTRL_USER_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RREADY" *) input BLP_S_AXI_CTRL_USER_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RVALID" *) output BLP_S_AXI_CTRL_USER_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WREADY" *) output BLP_S_AXI_CTRL_USER_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WVALID" *) input BLP_S_AXI_CTRL_USER_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_02, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_USER_02_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_02_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARREADY" *) output BLP_S_AXI_CTRL_USER_02_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARVALID" *) input BLP_S_AXI_CTRL_USER_02_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_02_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_02_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWREADY" *) output BLP_S_AXI_CTRL_USER_02_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWVALID" *) input BLP_S_AXI_CTRL_USER_02_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BREADY" *) input BLP_S_AXI_CTRL_USER_02_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_02_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BVALID" *) output BLP_S_AXI_CTRL_USER_02_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_02_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RREADY" *) input BLP_S_AXI_CTRL_USER_02_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_02_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RVALID" *) output BLP_S_AXI_CTRL_USER_02_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_02_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WREADY" *) output BLP_S_AXI_CTRL_USER_02_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_02_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WVALID" *) input BLP_S_AXI_CTRL_USER_02_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]BLP_S_AXI_DATA_H2C_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_00_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_00_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARID" *) input [3:0]BLP_S_AXI_DATA_H2C_00_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_00_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_00_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARREADY" *) output BLP_S_AXI_DATA_H2C_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARVALID" *) input BLP_S_AXI_DATA_H2C_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWADDR" *) input [38:0]BLP_S_AXI_DATA_H2C_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_00_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_00_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWID" *) input [3:0]BLP_S_AXI_DATA_H2C_00_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_00_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_00_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWREADY" *) output BLP_S_AXI_DATA_H2C_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWVALID" *) input BLP_S_AXI_DATA_H2C_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BID" *) output [3:0]BLP_S_AXI_DATA_H2C_00_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BREADY" *) input BLP_S_AXI_DATA_H2C_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BVALID" *) output BLP_S_AXI_DATA_H2C_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RDATA" *) output [511:0]BLP_S_AXI_DATA_H2C_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RID" *) output [3:0]BLP_S_AXI_DATA_H2C_00_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RLAST" *) output BLP_S_AXI_DATA_H2C_00_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RREADY" *) input BLP_S_AXI_DATA_H2C_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RVALID" *) output BLP_S_AXI_DATA_H2C_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WDATA" *) input [511:0]BLP_S_AXI_DATA_H2C_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WLAST" *) input BLP_S_AXI_DATA_H2C_00_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WREADY" *) output BLP_S_AXI_DATA_H2C_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WSTRB" *) input [63:0]BLP_S_AXI_DATA_H2C_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WVALID" *) input BLP_S_AXI_DATA_H2C_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_01, ADDR_WIDTH 40, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 64, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [39:0]BLP_S_AXI_DATA_H2C_01_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_01_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_01_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARID" *) input [1:0]BLP_S_AXI_DATA_H2C_01_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_01_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_01_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_01_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARREADY" *) output BLP_S_AXI_DATA_H2C_01_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARVALID" *) input BLP_S_AXI_DATA_H2C_01_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWADDR" *) input [39:0]BLP_S_AXI_DATA_H2C_01_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_01_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_01_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWID" *) input [1:0]BLP_S_AXI_DATA_H2C_01_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_01_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_01_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_01_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWREADY" *) output BLP_S_AXI_DATA_H2C_01_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWVALID" *) input BLP_S_AXI_DATA_H2C_01_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BID" *) output [1:0]BLP_S_AXI_DATA_H2C_01_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BREADY" *) input BLP_S_AXI_DATA_H2C_01_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_01_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BVALID" *) output BLP_S_AXI_DATA_H2C_01_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RDATA" *) output [63:0]BLP_S_AXI_DATA_H2C_01_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RID" *) output [1:0]BLP_S_AXI_DATA_H2C_01_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RLAST" *) output BLP_S_AXI_DATA_H2C_01_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RREADY" *) input BLP_S_AXI_DATA_H2C_01_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_01_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RVALID" *) output BLP_S_AXI_DATA_H2C_01_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WDATA" *) input [63:0]BLP_S_AXI_DATA_H2C_01_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WLAST" *) input BLP_S_AXI_DATA_H2C_01_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WREADY" *) output BLP_S_AXI_DATA_H2C_01_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WSTRB" *) input [7:0]BLP_S_AXI_DATA_H2C_01_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WVALID" *) input BLP_S_AXI_DATA_H2C_01_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_02, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]BLP_S_AXI_DATA_H2C_02_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_02_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_02_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_02_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_02_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_02_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARREADY" *) output BLP_S_AXI_DATA_H2C_02_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARVALID" *) input BLP_S_AXI_DATA_H2C_02_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWADDR" *) input [31:0]BLP_S_AXI_DATA_H2C_02_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_02_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_02_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_02_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_02_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_02_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWREADY" *) output BLP_S_AXI_DATA_H2C_02_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWVALID" *) input BLP_S_AXI_DATA_H2C_02_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 BREADY" *) input BLP_S_AXI_DATA_H2C_02_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 BRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_02_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 BVALID" *) output BLP_S_AXI_DATA_H2C_02_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RDATA" *) output [31:0]BLP_S_AXI_DATA_H2C_02_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RLAST" *) output BLP_S_AXI_DATA_H2C_02_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RREADY" *) input BLP_S_AXI_DATA_H2C_02_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_02_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RVALID" *) output BLP_S_AXI_DATA_H2C_02_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WDATA" *) input [31:0]BLP_S_AXI_DATA_H2C_02_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WLAST" *) input BLP_S_AXI_DATA_H2C_02_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WREADY" *) output BLP_S_AXI_DATA_H2C_02_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WSTRB" *) input [3:0]BLP_S_AXI_DATA_H2C_02_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WVALID" *) input BLP_S_AXI_DATA_H2C_02_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_03, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 128, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]BLP_S_AXI_DATA_H2C_03_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_03_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_03_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARID" *) input [3:0]BLP_S_AXI_DATA_H2C_03_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_03_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_03_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_03_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARREADY" *) output BLP_S_AXI_DATA_H2C_03_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARVALID" *) input BLP_S_AXI_DATA_H2C_03_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWADDR" *) input [38:0]BLP_S_AXI_DATA_H2C_03_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_03_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWCACHE" *) input [3:0]BLP_S_AXI_DATA_H2C_03_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWID" *) input [3:0]BLP_S_AXI_DATA_H2C_03_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_03_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWLOCK" *) input [0:0]BLP_S_AXI_DATA_H2C_03_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWPROT" *) input [2:0]BLP_S_AXI_DATA_H2C_03_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWREADY" *) output BLP_S_AXI_DATA_H2C_03_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWVALID" *) input BLP_S_AXI_DATA_H2C_03_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BID" *) output [3:0]BLP_S_AXI_DATA_H2C_03_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BREADY" *) input BLP_S_AXI_DATA_H2C_03_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_03_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BVALID" *) output BLP_S_AXI_DATA_H2C_03_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RDATA" *) output [127:0]BLP_S_AXI_DATA_H2C_03_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RID" *) output [3:0]BLP_S_AXI_DATA_H2C_03_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RLAST" *) output BLP_S_AXI_DATA_H2C_03_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RREADY" *) input BLP_S_AXI_DATA_H2C_03_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_03_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RVALID" *) output BLP_S_AXI_DATA_H2C_03_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WDATA" *) input [127:0]BLP_S_AXI_DATA_H2C_03_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WLAST" *) input BLP_S_AXI_DATA_H2C_03_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WREADY" *) output BLP_S_AXI_DATA_H2C_03_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WSTRB" *) input [15:0]BLP_S_AXI_DATA_H2C_03_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WVALID" *) input BLP_S_AXI_DATA_H2C_03_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_DNA_FROM_ULP_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_M_DATA_DNA_FROM_ULP_00, LAYERED_METADATA undef" *) output [2:0]blp_m_data_dna_from_ulp_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_MEMORY_CALIB_COMPLETE_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_M_DATA_MEMORY_CALIB_COMPLETE_00, LAYERED_METADATA undef" *) output [0:0]blp_m_data_memory_calib_complete_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_IRQ_CU_00 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.BLP_M_IRQ_CU_00, PortWidth 128, SENSITIVITY LEVEL_HIGH" *) output [127:0]blp_m_irq_cu_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_CTRL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_CTRL_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_CTRL_USER_01:BLP_S_AXI_DATA_H2C_02, ASSOCIATED_RESET blp_s_aresetn_ctrl_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL2_REF_CLK_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL2_REF_CLK_00, CLK_DOMAIN cd_kernel2_ref_clk_00, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_kernel2_ref_clk_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_REF_CLK_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_REF_CLK_00, ASSOCIATED_RESET blp_s_aresetn_kernel_ref_clk_00, CLK_DOMAIN cd_kernel_ref_clk_00, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_kernel_ref_clk_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_PCIE_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_PCIE_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_02:BLP_S_AXI_DATA_H2C_00:BLP_S_AXI_DATA_H2C_01:BLP_S_AXI_DATA_H2C_03, ASSOCIATED_RESET blp_s_aresetn_pcie_00, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_CTRL_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_CTRL_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [0:0]blp_s_aresetn_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_KERNEL_REF_CLK_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_KERNEL_REF_CLK_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [0:0]blp_s_aresetn_kernel_ref_clk_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_PCIE_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_PCIE_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [0:0]blp_s_aresetn_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00, LAYERED_METADATA undef" *) input [0:0]blp_s_data_clkwiz_kernel_clk_out1_locked_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_DOUT_DNA_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_DOUT_DNA_00, LAYERED_METADATA undef" *) input [0:0]blp_s_data_dout_dna_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_PERSTN_OUT_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_PERSTN_OUT_00, LAYERED_METADATA undef" *) input [2:0]blp_s_data_perstn_out_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_SLICE_PR_RESET_TO_ULP_00 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BLP_S_DATA_SLICE_PR_RESET_TO_ULP_00, LAYERED_METADATA undef" *) input [1:0]blp_s_data_slice_pr_reset_to_ulp_00;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 io_clk_ddr_00 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_clk_ddr_00, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]io_clk_ddr_00_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 io_clk_ddr_00 CLK_P" *) input [0:0]io_clk_ddr_00_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_ddr_00, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NO_DM_NO_DBI, DATA_WIDTH 72, MEMORY_PART MT40A512M16HA-075E, MEMORY_TYPE Components, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 833" *) output io_ddr_00_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 ADR" *) output [16:0]io_ddr_00_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 BA" *) output [1:0]io_ddr_00_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 BG" *) output [0:0]io_ddr_00_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 CK_C" *) output [0:0]io_ddr_00_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 CK_T" *) output [0:0]io_ddr_00_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 CKE" *) output [0:0]io_ddr_00_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 CS_N" *) output [0:0]io_ddr_00_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 DM_N" *) inout [8:0]io_ddr_00_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 DQ" *) inout [71:0]io_ddr_00_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 DQS_C" *) inout [8:0]io_ddr_00_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 DQS_T" *) inout [8:0]io_ddr_00_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 ODT" *) output [0:0]io_ddr_00_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 io_ddr_00 RESET_N" *) output io_ddr_00_reset_n;

  wire [24:0]BLP_S_AXI_CTRL_USER_00_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_1_ARPROT;
  wire BLP_S_AXI_CTRL_USER_00_1_ARREADY;
  wire BLP_S_AXI_CTRL_USER_00_1_ARVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_00_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_1_AWPROT;
  wire BLP_S_AXI_CTRL_USER_00_1_AWREADY;
  wire BLP_S_AXI_CTRL_USER_00_1_AWVALID;
  wire BLP_S_AXI_CTRL_USER_00_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_1_BRESP;
  wire BLP_S_AXI_CTRL_USER_00_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_1_RDATA;
  wire BLP_S_AXI_CTRL_USER_00_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_1_RRESP;
  wire BLP_S_AXI_CTRL_USER_00_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_1_WDATA;
  wire BLP_S_AXI_CTRL_USER_00_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_USER_00_1_WSTRB;
  wire BLP_S_AXI_CTRL_USER_00_1_WVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_01_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_01_1_ARPROT;
  wire BLP_S_AXI_CTRL_USER_01_1_ARREADY;
  wire BLP_S_AXI_CTRL_USER_01_1_ARVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_01_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_01_1_AWPROT;
  wire BLP_S_AXI_CTRL_USER_01_1_AWREADY;
  wire BLP_S_AXI_CTRL_USER_01_1_AWVALID;
  wire BLP_S_AXI_CTRL_USER_01_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_01_1_BRESP;
  wire BLP_S_AXI_CTRL_USER_01_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_01_1_RDATA;
  wire BLP_S_AXI_CTRL_USER_01_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_01_1_RRESP;
  wire BLP_S_AXI_CTRL_USER_01_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_01_1_WDATA;
  wire BLP_S_AXI_CTRL_USER_01_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_USER_01_1_WSTRB;
  wire BLP_S_AXI_CTRL_USER_01_1_WVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_02_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_02_1_ARPROT;
  wire BLP_S_AXI_CTRL_USER_02_1_ARREADY;
  wire BLP_S_AXI_CTRL_USER_02_1_ARVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_02_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_02_1_AWPROT;
  wire BLP_S_AXI_CTRL_USER_02_1_AWREADY;
  wire BLP_S_AXI_CTRL_USER_02_1_AWVALID;
  wire BLP_S_AXI_CTRL_USER_02_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_02_1_BRESP;
  wire BLP_S_AXI_CTRL_USER_02_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_02_1_RDATA;
  wire BLP_S_AXI_CTRL_USER_02_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_02_1_RRESP;
  wire BLP_S_AXI_CTRL_USER_02_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_02_1_WDATA;
  wire BLP_S_AXI_CTRL_USER_02_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_USER_02_1_WSTRB;
  wire BLP_S_AXI_CTRL_USER_02_1_WVALID;
  wire [38:0]BLP_S_AXI_DATA_H2C_00_1_ARADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_ARBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_ARCACHE;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_ARID;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_1_ARLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_00_1_ARLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_00_1_ARPROT;
  wire BLP_S_AXI_DATA_H2C_00_1_ARREADY;
  wire BLP_S_AXI_DATA_H2C_00_1_ARVALID;
  wire [38:0]BLP_S_AXI_DATA_H2C_00_1_AWADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_AWBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_AWCACHE;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_AWID;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_1_AWLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_00_1_AWLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_00_1_AWPROT;
  wire BLP_S_AXI_DATA_H2C_00_1_AWREADY;
  wire BLP_S_AXI_DATA_H2C_00_1_AWVALID;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_BID;
  wire BLP_S_AXI_DATA_H2C_00_1_BREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_BRESP;
  wire BLP_S_AXI_DATA_H2C_00_1_BVALID;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_1_RDATA;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_1_RID;
  wire BLP_S_AXI_DATA_H2C_00_1_RLAST;
  wire BLP_S_AXI_DATA_H2C_00_1_RREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_RRESP;
  wire BLP_S_AXI_DATA_H2C_00_1_RVALID;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_1_WDATA;
  wire BLP_S_AXI_DATA_H2C_00_1_WLAST;
  wire BLP_S_AXI_DATA_H2C_00_1_WREADY;
  wire [63:0]BLP_S_AXI_DATA_H2C_00_1_WSTRB;
  wire BLP_S_AXI_DATA_H2C_00_1_WVALID;
  wire [39:0]BLP_S_AXI_DATA_H2C_01_1_ARADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_ARBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_01_1_ARCACHE;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_ARID;
  wire [7:0]BLP_S_AXI_DATA_H2C_01_1_ARLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_01_1_ARLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_01_1_ARPROT;
  wire BLP_S_AXI_DATA_H2C_01_1_ARREADY;
  wire BLP_S_AXI_DATA_H2C_01_1_ARVALID;
  wire [39:0]BLP_S_AXI_DATA_H2C_01_1_AWADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_AWBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_01_1_AWCACHE;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_AWID;
  wire [7:0]BLP_S_AXI_DATA_H2C_01_1_AWLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_01_1_AWLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_01_1_AWPROT;
  wire BLP_S_AXI_DATA_H2C_01_1_AWREADY;
  wire BLP_S_AXI_DATA_H2C_01_1_AWVALID;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_BID;
  wire BLP_S_AXI_DATA_H2C_01_1_BREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_BRESP;
  wire BLP_S_AXI_DATA_H2C_01_1_BVALID;
  wire [63:0]BLP_S_AXI_DATA_H2C_01_1_RDATA;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_RID;
  wire BLP_S_AXI_DATA_H2C_01_1_RLAST;
  wire BLP_S_AXI_DATA_H2C_01_1_RREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_1_RRESP;
  wire BLP_S_AXI_DATA_H2C_01_1_RVALID;
  wire [63:0]BLP_S_AXI_DATA_H2C_01_1_WDATA;
  wire BLP_S_AXI_DATA_H2C_01_1_WLAST;
  wire BLP_S_AXI_DATA_H2C_01_1_WREADY;
  wire [7:0]BLP_S_AXI_DATA_H2C_01_1_WSTRB;
  wire BLP_S_AXI_DATA_H2C_01_1_WVALID;
  wire [31:0]BLP_S_AXI_DATA_H2C_02_1_ARADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_02_1_ARBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_02_1_ARCACHE;
  wire [7:0]BLP_S_AXI_DATA_H2C_02_1_ARLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_02_1_ARLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_02_1_ARPROT;
  wire BLP_S_AXI_DATA_H2C_02_1_ARREADY;
  wire BLP_S_AXI_DATA_H2C_02_1_ARVALID;
  wire [31:0]BLP_S_AXI_DATA_H2C_02_1_AWADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_02_1_AWBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_02_1_AWCACHE;
  wire [7:0]BLP_S_AXI_DATA_H2C_02_1_AWLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_02_1_AWLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_02_1_AWPROT;
  wire BLP_S_AXI_DATA_H2C_02_1_AWREADY;
  wire BLP_S_AXI_DATA_H2C_02_1_AWVALID;
  wire BLP_S_AXI_DATA_H2C_02_1_BREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_02_1_BRESP;
  wire BLP_S_AXI_DATA_H2C_02_1_BVALID;
  wire [31:0]BLP_S_AXI_DATA_H2C_02_1_RDATA;
  wire BLP_S_AXI_DATA_H2C_02_1_RLAST;
  wire BLP_S_AXI_DATA_H2C_02_1_RREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_02_1_RRESP;
  wire BLP_S_AXI_DATA_H2C_02_1_RVALID;
  wire [31:0]BLP_S_AXI_DATA_H2C_02_1_WDATA;
  wire BLP_S_AXI_DATA_H2C_02_1_WLAST;
  wire BLP_S_AXI_DATA_H2C_02_1_WREADY;
  wire [3:0]BLP_S_AXI_DATA_H2C_02_1_WSTRB;
  wire BLP_S_AXI_DATA_H2C_02_1_WVALID;
  wire [38:0]BLP_S_AXI_DATA_H2C_03_1_ARADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_03_1_ARBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_1_ARCACHE;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_1_ARID;
  wire [7:0]BLP_S_AXI_DATA_H2C_03_1_ARLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_03_1_ARLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_03_1_ARPROT;
  wire BLP_S_AXI_DATA_H2C_03_1_ARREADY;
  wire BLP_S_AXI_DATA_H2C_03_1_ARVALID;
  wire [38:0]BLP_S_AXI_DATA_H2C_03_1_AWADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_03_1_AWBURST;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_1_AWCACHE;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_1_AWID;
  wire [7:0]BLP_S_AXI_DATA_H2C_03_1_AWLEN;
  wire [0:0]BLP_S_AXI_DATA_H2C_03_1_AWLOCK;
  wire [2:0]BLP_S_AXI_DATA_H2C_03_1_AWPROT;
  wire BLP_S_AXI_DATA_H2C_03_1_AWREADY;
  wire BLP_S_AXI_DATA_H2C_03_1_AWVALID;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_1_BID;
  wire BLP_S_AXI_DATA_H2C_03_1_BREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_03_1_BRESP;
  wire BLP_S_AXI_DATA_H2C_03_1_BVALID;
  wire [127:0]BLP_S_AXI_DATA_H2C_03_1_RDATA;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_1_RID;
  wire BLP_S_AXI_DATA_H2C_03_1_RLAST;
  wire BLP_S_AXI_DATA_H2C_03_1_RREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_03_1_RRESP;
  wire BLP_S_AXI_DATA_H2C_03_1_RVALID;
  wire [127:0]BLP_S_AXI_DATA_H2C_03_1_WDATA;
  wire BLP_S_AXI_DATA_H2C_03_1_WLAST;
  wire BLP_S_AXI_DATA_H2C_03_1_WREADY;
  wire [15:0]BLP_S_AXI_DATA_H2C_03_1_WSTRB;
  wire BLP_S_AXI_DATA_H2C_03_1_WVALID;
  wire M00_ACLK_1;
  wire aux_reset_in_1;
  wire [14:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [511:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [511:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [14:0]axi_bram_ctrl_0_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTB_CLK;
  wire [511:0]axi_bram_ctrl_0_BRAM_PORTB_DIN;
  wire [511:0]axi_bram_ctrl_0_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTB_EN;
  wire axi_bram_ctrl_0_BRAM_PORTB_RST;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTB_WE;
  wire [63:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [0:0]axi_interconnect_0_M00_AXI_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_ARREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [0:0]axi_interconnect_0_M00_AXI_AWID;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_AWREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M00_AXI_BID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [38:0]axi_interconnect_0_M00_AXI_P_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_P_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_P_ARCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_P_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_P_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_P_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_P_ARQOS;
  wire axi_interconnect_0_M00_AXI_P_ARREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_P_ARREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_P_ARSIZE;
  wire axi_interconnect_0_M00_AXI_P_ARVALID;
  wire [38:0]axi_interconnect_0_M00_AXI_P_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_P_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_P_AWCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_P_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_P_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_P_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_P_AWQOS;
  wire axi_interconnect_0_M00_AXI_P_AWREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_P_AWREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_P_AWSIZE;
  wire axi_interconnect_0_M00_AXI_P_AWVALID;
  wire axi_interconnect_0_M00_AXI_P_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_P_BRESP;
  wire axi_interconnect_0_M00_AXI_P_BVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_P_RDATA;
  wire axi_interconnect_0_M00_AXI_P_RLAST;
  wire axi_interconnect_0_M00_AXI_P_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_P_RRESP;
  wire axi_interconnect_0_M00_AXI_P_RVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_P_WDATA;
  wire axi_interconnect_0_M00_AXI_P_WLAST;
  wire axi_interconnect_0_M00_AXI_P_WREADY;
  wire [63:0]axi_interconnect_0_M00_AXI_P_WSTRB;
  wire axi_interconnect_0_M00_AXI_P_WVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_RID;
  wire axi_interconnect_0_M00_AXI_RLAST;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [511:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WLAST;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [63:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_ARCACHE;
  wire [5:0]axi_interconnect_1_M00_AXI_ARID;
  wire [7:0]axi_interconnect_1_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_ARQOS;
  wire axi_interconnect_1_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_1_M00_AXI_ARSIZE;
  wire axi_interconnect_1_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_AWCACHE;
  wire [5:0]axi_interconnect_1_M00_AXI_AWID;
  wire [7:0]axi_interconnect_1_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_1_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_AWQOS;
  wire axi_interconnect_1_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_1_M00_AXI_AWSIZE;
  wire axi_interconnect_1_M00_AXI_AWVALID;
  wire [5:0]axi_interconnect_1_M00_AXI_BID;
  wire axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_BRESP;
  wire axi_interconnect_1_M00_AXI_BVALID;
  wire [511:0]axi_interconnect_1_M00_AXI_RDATA;
  wire [5:0]axi_interconnect_1_M00_AXI_RID;
  wire axi_interconnect_1_M00_AXI_RLAST;
  wire axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_RRESP;
  wire axi_interconnect_1_M00_AXI_RVALID;
  wire [511:0]axi_interconnect_1_M00_AXI_WDATA;
  wire axi_interconnect_1_M00_AXI_WLAST;
  wire axi_interconnect_1_M00_AXI_WREADY;
  wire [63:0]axi_interconnect_1_M00_AXI_WSTRB;
  wire axi_interconnect_1_M00_AXI_WVALID;
  wire [63:0]axi_interconnect_1_M01_AXI_ARADDR;
  wire [1:0]axi_interconnect_1_M01_AXI_ARBURST;
  wire [3:0]axi_interconnect_1_M01_AXI_ARCACHE;
  wire [5:0]axi_interconnect_1_M01_AXI_ARID;
  wire [7:0]axi_interconnect_1_M01_AXI_ARLEN;
  wire axi_interconnect_1_M01_AXI_ARLOCK;
  wire [2:0]axi_interconnect_1_M01_AXI_ARPROT;
  wire axi_interconnect_1_M01_AXI_ARREADY;
  wire [2:0]axi_interconnect_1_M01_AXI_ARSIZE;
  wire axi_interconnect_1_M01_AXI_ARVALID;
  wire [63:0]axi_interconnect_1_M01_AXI_AWADDR;
  wire [1:0]axi_interconnect_1_M01_AXI_AWBURST;
  wire [3:0]axi_interconnect_1_M01_AXI_AWCACHE;
  wire [5:0]axi_interconnect_1_M01_AXI_AWID;
  wire [7:0]axi_interconnect_1_M01_AXI_AWLEN;
  wire axi_interconnect_1_M01_AXI_AWLOCK;
  wire [2:0]axi_interconnect_1_M01_AXI_AWPROT;
  wire axi_interconnect_1_M01_AXI_AWREADY;
  wire [2:0]axi_interconnect_1_M01_AXI_AWSIZE;
  wire axi_interconnect_1_M01_AXI_AWVALID;
  wire [5:0]axi_interconnect_1_M01_AXI_BID;
  wire axi_interconnect_1_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M01_AXI_BRESP;
  wire axi_interconnect_1_M01_AXI_BVALID;
  wire [511:0]axi_interconnect_1_M01_AXI_RDATA;
  wire [5:0]axi_interconnect_1_M01_AXI_RID;
  wire axi_interconnect_1_M01_AXI_RLAST;
  wire axi_interconnect_1_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M01_AXI_RRESP;
  wire axi_interconnect_1_M01_AXI_RVALID;
  wire [511:0]axi_interconnect_1_M01_AXI_WDATA;
  wire axi_interconnect_1_M01_AXI_WLAST;
  wire axi_interconnect_1_M01_AXI_WREADY;
  wire [63:0]axi_interconnect_1_M01_AXI_WSTRB;
  wire axi_interconnect_1_M01_AXI_WVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_ARADDR;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARPROT;
  wire axi_protocol_convert_0_M_AXI_ARREADY;
  wire axi_protocol_convert_0_M_AXI_ARVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_AWADDR;
  wire [2:0]axi_protocol_convert_0_M_AXI_AWPROT;
  wire axi_protocol_convert_0_M_AXI_AWREADY;
  wire axi_protocol_convert_0_M_AXI_AWVALID;
  wire axi_protocol_convert_0_M_AXI_BREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_BRESP;
  wire axi_protocol_convert_0_M_AXI_BVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_RDATA;
  wire axi_protocol_convert_0_M_AXI_RREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_RRESP;
  wire axi_protocol_convert_0_M_AXI_RVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_WDATA;
  wire axi_protocol_convert_0_M_AXI_WREADY;
  wire [3:0]axi_protocol_convert_0_M_AXI_WSTRB;
  wire axi_protocol_convert_0_M_AXI_WVALID;
  wire [38:0]axi_vip_0_M_AXI_ARADDR;
  wire [1:0]axi_vip_0_M_AXI_ARBURST;
  wire [3:0]axi_vip_0_M_AXI_ARCACHE;
  wire [7:0]axi_vip_0_M_AXI_ARLEN;
  wire [0:0]axi_vip_0_M_AXI_ARLOCK;
  wire [2:0]axi_vip_0_M_AXI_ARPROT;
  wire [3:0]axi_vip_0_M_AXI_ARQOS;
  wire axi_vip_0_M_AXI_ARREADY;
  wire [3:0]axi_vip_0_M_AXI_ARREGION;
  wire [2:0]axi_vip_0_M_AXI_ARSIZE;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [38:0]axi_vip_0_M_AXI_AWADDR;
  wire [1:0]axi_vip_0_M_AXI_AWBURST;
  wire [3:0]axi_vip_0_M_AXI_AWCACHE;
  wire [7:0]axi_vip_0_M_AXI_AWLEN;
  wire [0:0]axi_vip_0_M_AXI_AWLOCK;
  wire [2:0]axi_vip_0_M_AXI_AWPROT;
  wire [3:0]axi_vip_0_M_AXI_AWQOS;
  wire axi_vip_0_M_AXI_AWREADY;
  wire [3:0]axi_vip_0_M_AXI_AWREGION;
  wire [2:0]axi_vip_0_M_AXI_AWSIZE;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [38:0]axi_vip_0_M_AXI_P_ARADDR;
  wire [1:0]axi_vip_0_M_AXI_P_ARBURST;
  wire [3:0]axi_vip_0_M_AXI_P_ARCACHE;
  wire [7:0]axi_vip_0_M_AXI_P_ARLEN;
  wire [0:0]axi_vip_0_M_AXI_P_ARLOCK;
  wire [2:0]axi_vip_0_M_AXI_P_ARPROT;
  wire [3:0]axi_vip_0_M_AXI_P_ARQOS;
  wire axi_vip_0_M_AXI_P_ARREADY;
  wire [3:0]axi_vip_0_M_AXI_P_ARREGION;
  wire [2:0]axi_vip_0_M_AXI_P_ARSIZE;
  wire axi_vip_0_M_AXI_P_ARVALID;
  wire [38:0]axi_vip_0_M_AXI_P_AWADDR;
  wire [1:0]axi_vip_0_M_AXI_P_AWBURST;
  wire [3:0]axi_vip_0_M_AXI_P_AWCACHE;
  wire [7:0]axi_vip_0_M_AXI_P_AWLEN;
  wire [0:0]axi_vip_0_M_AXI_P_AWLOCK;
  wire [2:0]axi_vip_0_M_AXI_P_AWPROT;
  wire [3:0]axi_vip_0_M_AXI_P_AWQOS;
  wire axi_vip_0_M_AXI_P_AWREADY;
  wire [3:0]axi_vip_0_M_AXI_P_AWREGION;
  wire [2:0]axi_vip_0_M_AXI_P_AWSIZE;
  wire axi_vip_0_M_AXI_P_AWVALID;
  wire axi_vip_0_M_AXI_P_BREADY;
  wire [1:0]axi_vip_0_M_AXI_P_BRESP;
  wire axi_vip_0_M_AXI_P_BVALID;
  wire [511:0]axi_vip_0_M_AXI_P_RDATA;
  wire axi_vip_0_M_AXI_P_RLAST;
  wire axi_vip_0_M_AXI_P_RREADY;
  wire [1:0]axi_vip_0_M_AXI_P_RRESP;
  wire axi_vip_0_M_AXI_P_RVALID;
  wire [511:0]axi_vip_0_M_AXI_P_WDATA;
  wire axi_vip_0_M_AXI_P_WLAST;
  wire axi_vip_0_M_AXI_P_WREADY;
  wire [63:0]axi_vip_0_M_AXI_P_WSTRB;
  wire axi_vip_0_M_AXI_P_WVALID;
  wire [511:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RLAST;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [511:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WLAST;
  wire axi_vip_0_M_AXI_WREADY;
  wire [63:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire blp_s_aclk_ctrl_00_1;
  wire blp_s_aclk_kernel2_ref_clk_00_1;
  wire blp_s_aclk_kernel_ref_clk_00_1;
  wire blp_s_aclk_pcie_00_1;
  wire [0:0]blp_s_aresetn_ctrl_00_1;
  wire [0:0]blp_s_aresetn_kernel_ref_clk_00_1;
  wire [0:0]blp_s_aresetn_pcie_00_1;
  wire [0:0]blp_s_data_clkwiz_kernel_clk_out1_locked_00_1;
  wire [0:0]blp_s_data_dout_dna_00_1;
  wire [2:0]blp_s_data_perstn_out_00_1;
  wire [1:0]blp_s_data_slice_pr_reset_to_ulp_00_1;
  wire clkwiz_kernel_clk_out1_1;
  wire clkwiz_sysclks_clk_out2_1;
  wire [0:0]ddr1_clk_bufg_BUFG_O;
  wire [0:0]ddr1_clk_ibufds_IBUF_OUT;
  wire ddrmem_1_C0_DDR4_ACT_N;
  wire [16:0]ddrmem_1_C0_DDR4_ADR;
  wire [1:0]ddrmem_1_C0_DDR4_BA;
  wire [0:0]ddrmem_1_C0_DDR4_BG;
  wire [0:0]ddrmem_1_C0_DDR4_CKE;
  wire [0:0]ddrmem_1_C0_DDR4_CK_C;
  wire [0:0]ddrmem_1_C0_DDR4_CK_T;
  wire [0:0]ddrmem_1_C0_DDR4_CS_N;
  wire [8:0]ddrmem_1_C0_DDR4_DM_N;
  wire [71:0]ddrmem_1_C0_DDR4_DQ;
  wire [8:0]ddrmem_1_C0_DDR4_DQS_C;
  wire [8:0]ddrmem_1_C0_DDR4_DQS_T;
  wire [0:0]ddrmem_1_C0_DDR4_ODT;
  wire ddrmem_1_C0_DDR4_RESET_N;
  wire ddrmem_1_c0_ddr4_ui_clk_sync_rst;
  wire [24:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARADDR;
  wire [2:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARPROT;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARREADY;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARVALID;
  wire [24:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWADDR;
  wire [2:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWPROT;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWREADY;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWVALID;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BRESP;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BVALID;
  wire [31:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RDATA;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RRESP;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RVALID;
  wire [31:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WDATA;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WREADY;
  wire [3:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WSTRB;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WVALID;
  wire [24:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARADDR;
  wire [2:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARPROT;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARREADY;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARVALID;
  wire [24:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWADDR;
  wire [2:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWPROT;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWREADY;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWVALID;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BRESP;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BVALID;
  wire [31:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RDATA;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RRESP;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RVALID;
  wire [31:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WDATA;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WREADY;
  wire [3:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WSTRB;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WVALID;
  wire [24:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARADDR;
  wire [2:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARPROT;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARREADY;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARVALID;
  wire [24:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWADDR;
  wire [2:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWPROT;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWREADY;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWVALID;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BRESP;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BVALID;
  wire [31:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RDATA;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RRESP;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RVALID;
  wire [31:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WDATA;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WREADY;
  wire [3:0]ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WSTRB;
  wire ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WVALID;
  wire [38:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARADDR;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARBURST;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARCACHE;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARID;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLEN;
  wire [0:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLOCK;
  wire [2:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARPROT;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARREADY;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARVALID;
  wire [38:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWADDR;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWBURST;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWCACHE;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWID;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLEN;
  wire [0:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLOCK;
  wire [2:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWPROT;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWREADY;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWVALID;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BID;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BRESP;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BVALID;
  wire [511:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RDATA;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RID;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RLAST;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RRESP;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RVALID;
  wire [511:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WDATA;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WLAST;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WREADY;
  wire [63:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WSTRB;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WVALID;
  wire [39:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARADDR;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARBURST;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARCACHE;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARID;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLEN;
  wire [0:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLOCK;
  wire [2:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARPROT;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARREADY;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARVALID;
  wire [39:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWADDR;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWBURST;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWCACHE;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWID;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLEN;
  wire [0:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLOCK;
  wire [2:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWPROT;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWREADY;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWVALID;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BID;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BRESP;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BVALID;
  wire [63:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RDATA;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RID;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RLAST;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RRESP;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RVALID;
  wire [63:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WDATA;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WLAST;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WREADY;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WSTRB;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WVALID;
  wire [31:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARADDR;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARBURST;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARCACHE;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLEN;
  wire [0:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLOCK;
  wire [2:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARPROT;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARREADY;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARVALID;
  wire [31:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWADDR;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWBURST;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWCACHE;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLEN;
  wire [0:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLOCK;
  wire [2:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWPROT;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWREADY;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWVALID;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BRESP;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BVALID;
  wire [31:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RDATA;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RLAST;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RRESP;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RVALID;
  wire [31:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WDATA;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WLAST;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WREADY;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WSTRB;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WVALID;
  wire [38:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARADDR;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARBURST;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARCACHE;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARID;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLEN;
  wire [0:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLOCK;
  wire [2:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARPROT;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARREADY;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARVALID;
  wire [38:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWADDR;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWBURST;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWCACHE;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWID;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLEN;
  wire [0:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLOCK;
  wire [2:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWPROT;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWREADY;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWVALID;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BID;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BRESP;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BVALID;
  wire [127:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RDATA;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RID;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RLAST;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RREADY;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RRESP;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RVALID;
  wire [127:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WDATA;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WLAST;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WREADY;
  wire [15:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WSTRB;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WVALID;
  wire [2:0]ii_level0_wire_blp_m_data_dna_from_ulp_00;
  wire [0:0]ii_level0_wire_blp_m_data_memory_calib_complete_00;
  wire [127:0]ii_level0_wire_blp_m_irq_cu_00;
  wire ii_level0_wire_ulp_m_aclk_kernel2_ref_clk_00;
  wire ii_level0_wire_ulp_m_aclk_pcie_00;
  wire [0:0]ii_level0_wire_ulp_m_aresetn_ctrl_00;
  wire [0:0]ii_level0_wire_ulp_m_data_clkwiz_kernel2_clk_out1_locked_00;
  wire [0:0]ii_level0_wire_ulp_m_data_clkwiz_kernel_clk_out1_locked_00;
  wire [0:0]ii_level0_wire_ulp_m_data_clkwiz_sysclks_clk_out2_locked_00;
  wire [0:0]ii_level0_wire_ulp_m_data_pcie_user_link_up_00;
  wire [2:0]ii_level0_wire_ulp_m_data_perstn_out_00;
  wire [1:0]ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00;
  wire [31:0]ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout;
  wire [31:0]ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1_dout;
  wire [31:0]ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2_dout;
  wire [31:0]ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3_dout;
  wire [127:0]ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout;
  wire [0:0]io_clk_ddr_00_1_CLK_N;
  wire [0:0]io_clk_ddr_00_1_CLK_P;
  wire [0:0]irq_const_tieoff_dout;
  wire krnl_ro_rtl_1_interrupt;
  wire [63:0]krnl_ro_rtl_1_m_axi_gmem_ARADDR;
  wire [1:0]krnl_ro_rtl_1_m_axi_gmem_ARBURST;
  wire [3:0]krnl_ro_rtl_1_m_axi_gmem_ARCACHE;
  wire [0:0]krnl_ro_rtl_1_m_axi_gmem_ARID;
  wire [7:0]krnl_ro_rtl_1_m_axi_gmem_ARLEN;
  wire [1:0]krnl_ro_rtl_1_m_axi_gmem_ARLOCK;
  wire [2:0]krnl_ro_rtl_1_m_axi_gmem_ARPROT;
  wire [3:0]krnl_ro_rtl_1_m_axi_gmem_ARQOS;
  wire krnl_ro_rtl_1_m_axi_gmem_ARREADY;
  wire [3:0]krnl_ro_rtl_1_m_axi_gmem_ARREGION;
  wire [2:0]krnl_ro_rtl_1_m_axi_gmem_ARSIZE;
  wire krnl_ro_rtl_1_m_axi_gmem_ARVALID;
  wire [63:0]krnl_ro_rtl_1_m_axi_gmem_AWADDR;
  wire [1:0]krnl_ro_rtl_1_m_axi_gmem_AWBURST;
  wire [3:0]krnl_ro_rtl_1_m_axi_gmem_AWCACHE;
  wire [0:0]krnl_ro_rtl_1_m_axi_gmem_AWID;
  wire [7:0]krnl_ro_rtl_1_m_axi_gmem_AWLEN;
  wire [1:0]krnl_ro_rtl_1_m_axi_gmem_AWLOCK;
  wire [2:0]krnl_ro_rtl_1_m_axi_gmem_AWPROT;
  wire [3:0]krnl_ro_rtl_1_m_axi_gmem_AWQOS;
  wire krnl_ro_rtl_1_m_axi_gmem_AWREADY;
  wire [3:0]krnl_ro_rtl_1_m_axi_gmem_AWREGION;
  wire [2:0]krnl_ro_rtl_1_m_axi_gmem_AWSIZE;
  wire krnl_ro_rtl_1_m_axi_gmem_AWVALID;
  wire [0:0]krnl_ro_rtl_1_m_axi_gmem_BID;
  wire krnl_ro_rtl_1_m_axi_gmem_BREADY;
  wire [1:0]krnl_ro_rtl_1_m_axi_gmem_BRESP;
  wire krnl_ro_rtl_1_m_axi_gmem_BVALID;
  wire [31:0]krnl_ro_rtl_1_m_axi_gmem_RDATA;
  wire [0:0]krnl_ro_rtl_1_m_axi_gmem_RID;
  wire krnl_ro_rtl_1_m_axi_gmem_RLAST;
  wire krnl_ro_rtl_1_m_axi_gmem_RREADY;
  wire [1:0]krnl_ro_rtl_1_m_axi_gmem_RRESP;
  wire krnl_ro_rtl_1_m_axi_gmem_RVALID;
  wire [31:0]krnl_ro_rtl_1_m_axi_gmem_WDATA;
  wire krnl_ro_rtl_1_m_axi_gmem_WLAST;
  wire krnl_ro_rtl_1_m_axi_gmem_WREADY;
  wire [3:0]krnl_ro_rtl_1_m_axi_gmem_WSTRB;
  wire krnl_ro_rtl_1_m_axi_gmem_WVALID;
  wire [0:0]psreset_ddrmem_n_1_interconnect_aresetn;
  wire [24:0]slr1_M01_AXI1_ARADDR;
  wire slr1_M01_AXI1_ARREADY;
  wire [0:0]slr1_M01_AXI1_ARVALID;
  wire [24:0]slr1_M01_AXI1_AWADDR;
  wire slr1_M01_AXI1_AWREADY;
  wire [0:0]slr1_M01_AXI1_AWVALID;
  wire [0:0]slr1_M01_AXI1_BREADY;
  wire [1:0]slr1_M01_AXI1_BRESP;
  wire slr1_M01_AXI1_BVALID;
  wire [31:0]slr1_M01_AXI1_RDATA;
  wire [0:0]slr1_M01_AXI1_RREADY;
  wire [1:0]slr1_M01_AXI1_RRESP;
  wire slr1_M01_AXI1_RVALID;
  wire [31:0]slr1_M01_AXI1_WDATA;
  wire slr1_M01_AXI1_WREADY;
  wire [3:0]slr1_M01_AXI1_WSTRB;
  wire [0:0]slr1_M01_AXI1_WVALID;
  wire [6:0]slr1_M01_AXI_ARADDR;
  wire slr1_M01_AXI_ARREADY;
  wire slr1_M01_AXI_ARVALID;
  wire [6:0]slr1_M01_AXI_AWADDR;
  wire slr1_M01_AXI_AWREADY;
  wire slr1_M01_AXI_AWVALID;
  wire slr1_M01_AXI_BREADY;
  wire [1:0]slr1_M01_AXI_BRESP;
  wire slr1_M01_AXI_BVALID;
  wire [31:0]slr1_M01_AXI_RDATA;
  wire slr1_M01_AXI_RREADY;
  wire [1:0]slr1_M01_AXI_RRESP;
  wire slr1_M01_AXI_RVALID;
  wire [31:0]slr1_M01_AXI_WDATA;
  wire slr1_M01_AXI_WREADY;
  wire [3:0]slr1_M01_AXI_WSTRB;
  wire slr1_M01_AXI_WVALID;
  wire [38:0]slr1_axi_cdc_data_static_M_AXI1_ARADDR;
  wire [1:0]slr1_axi_cdc_data_static_M_AXI1_ARBURST;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI1_ARCACHE;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI1_ARID;
  wire [7:0]slr1_axi_cdc_data_static_M_AXI1_ARLEN;
  wire [0:0]slr1_axi_cdc_data_static_M_AXI1_ARLOCK;
  wire [2:0]slr1_axi_cdc_data_static_M_AXI1_ARPROT;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI1_ARQOS;
  wire slr1_axi_cdc_data_static_M_AXI1_ARREADY;
  wire [2:0]slr1_axi_cdc_data_static_M_AXI1_ARSIZE;
  wire slr1_axi_cdc_data_static_M_AXI1_ARVALID;
  wire [38:0]slr1_axi_cdc_data_static_M_AXI1_AWADDR;
  wire [1:0]slr1_axi_cdc_data_static_M_AXI1_AWBURST;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI1_AWCACHE;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI1_AWID;
  wire [7:0]slr1_axi_cdc_data_static_M_AXI1_AWLEN;
  wire [0:0]slr1_axi_cdc_data_static_M_AXI1_AWLOCK;
  wire [2:0]slr1_axi_cdc_data_static_M_AXI1_AWPROT;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI1_AWQOS;
  wire slr1_axi_cdc_data_static_M_AXI1_AWREADY;
  wire [2:0]slr1_axi_cdc_data_static_M_AXI1_AWSIZE;
  wire slr1_axi_cdc_data_static_M_AXI1_AWVALID;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI1_BID;
  wire slr1_axi_cdc_data_static_M_AXI1_BREADY;
  wire [1:0]slr1_axi_cdc_data_static_M_AXI1_BRESP;
  wire slr1_axi_cdc_data_static_M_AXI1_BVALID;
  wire [127:0]slr1_axi_cdc_data_static_M_AXI1_RDATA;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI1_RID;
  wire slr1_axi_cdc_data_static_M_AXI1_RLAST;
  wire slr1_axi_cdc_data_static_M_AXI1_RREADY;
  wire [1:0]slr1_axi_cdc_data_static_M_AXI1_RRESP;
  wire slr1_axi_cdc_data_static_M_AXI1_RVALID;
  wire [127:0]slr1_axi_cdc_data_static_M_AXI1_WDATA;
  wire slr1_axi_cdc_data_static_M_AXI1_WLAST;
  wire slr1_axi_cdc_data_static_M_AXI1_WREADY;
  wire [15:0]slr1_axi_cdc_data_static_M_AXI1_WSTRB;
  wire slr1_axi_cdc_data_static_M_AXI1_WVALID;
  wire [38:0]slr1_axi_cdc_data_static_M_AXI_ARADDR;
  wire [1:0]slr1_axi_cdc_data_static_M_AXI_ARBURST;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI_ARCACHE;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI_ARID;
  wire [7:0]slr1_axi_cdc_data_static_M_AXI_ARLEN;
  wire [0:0]slr1_axi_cdc_data_static_M_AXI_ARLOCK;
  wire [2:0]slr1_axi_cdc_data_static_M_AXI_ARPROT;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI_ARQOS;
  wire slr1_axi_cdc_data_static_M_AXI_ARREADY;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI_ARREGION;
  wire [2:0]slr1_axi_cdc_data_static_M_AXI_ARSIZE;
  wire slr1_axi_cdc_data_static_M_AXI_ARVALID;
  wire [38:0]slr1_axi_cdc_data_static_M_AXI_AWADDR;
  wire [1:0]slr1_axi_cdc_data_static_M_AXI_AWBURST;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI_AWCACHE;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI_AWID;
  wire [7:0]slr1_axi_cdc_data_static_M_AXI_AWLEN;
  wire [0:0]slr1_axi_cdc_data_static_M_AXI_AWLOCK;
  wire [2:0]slr1_axi_cdc_data_static_M_AXI_AWPROT;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI_AWQOS;
  wire slr1_axi_cdc_data_static_M_AXI_AWREADY;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI_AWREGION;
  wire [2:0]slr1_axi_cdc_data_static_M_AXI_AWSIZE;
  wire slr1_axi_cdc_data_static_M_AXI_AWVALID;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI_BID;
  wire slr1_axi_cdc_data_static_M_AXI_BREADY;
  wire [1:0]slr1_axi_cdc_data_static_M_AXI_BRESP;
  wire slr1_axi_cdc_data_static_M_AXI_BVALID;
  wire [511:0]slr1_axi_cdc_data_static_M_AXI_RDATA;
  wire [3:0]slr1_axi_cdc_data_static_M_AXI_RID;
  wire slr1_axi_cdc_data_static_M_AXI_RLAST;
  wire slr1_axi_cdc_data_static_M_AXI_RREADY;
  wire [1:0]slr1_axi_cdc_data_static_M_AXI_RRESP;
  wire slr1_axi_cdc_data_static_M_AXI_RVALID;
  wire [511:0]slr1_axi_cdc_data_static_M_AXI_WDATA;
  wire slr1_axi_cdc_data_static_M_AXI_WLAST;
  wire slr1_axi_cdc_data_static_M_AXI_WREADY;
  wire [63:0]slr1_axi_cdc_data_static_M_AXI_WSTRB;
  wire slr1_axi_cdc_data_static_M_AXI_WVALID;
  wire [25:0]slr1_axi_vip_ctrl_mgntpf_M_AXI_ARADDR;
  wire slr1_axi_vip_ctrl_mgntpf_M_AXI_ARREADY;
  wire slr1_axi_vip_ctrl_mgntpf_M_AXI_ARVALID;
  wire [25:0]slr1_axi_vip_ctrl_mgntpf_M_AXI_AWADDR;
  wire slr1_axi_vip_ctrl_mgntpf_M_AXI_AWREADY;
  wire slr1_axi_vip_ctrl_mgntpf_M_AXI_AWVALID;
  wire slr1_axi_vip_ctrl_mgntpf_M_AXI_BREADY;
  wire [1:0]slr1_axi_vip_ctrl_mgntpf_M_AXI_BRESP;
  wire slr1_axi_vip_ctrl_mgntpf_M_AXI_BVALID;
  wire [31:0]slr1_axi_vip_ctrl_mgntpf_M_AXI_RDATA;
  wire slr1_axi_vip_ctrl_mgntpf_M_AXI_RREADY;
  wire [1:0]slr1_axi_vip_ctrl_mgntpf_M_AXI_RRESP;
  wire slr1_axi_vip_ctrl_mgntpf_M_AXI_RVALID;
  wire [31:0]slr1_axi_vip_ctrl_mgntpf_M_AXI_WDATA;
  wire slr1_axi_vip_ctrl_mgntpf_M_AXI_WREADY;
  wire slr1_axi_vip_ctrl_mgntpf_M_AXI_WVALID;
  wire [0:0]slr1_interconnect_aresetn;
  wire [0:0]slr1_logic_reset_op_Res;
  wire [0:0]slr1_peripheral_aresetn;
  wire [0:0]slr1_psreset_gate_pr_control_interconnect_aresetn;
  wire [0:0]slr1_psreset_gate_pr_data_interconnect_aresetn;
  wire [0:0]slr1_psreset_gate_pr_kernel_interconnect_aresetn;
  wire user_debug_bridge_m0_bscan_BSCANID_EN;
  wire user_debug_bridge_m0_bscan_CAPTURE;
  wire user_debug_bridge_m0_bscan_DRCK;
  wire user_debug_bridge_m0_bscan_RESET;
  wire user_debug_bridge_m0_bscan_RUNTEST;
  wire user_debug_bridge_m0_bscan_SEL;
  wire user_debug_bridge_m0_bscan_SHIFT;
  wire user_debug_bridge_m0_bscan_TCK;
  wire user_debug_bridge_m0_bscan_TDI;
  wire user_debug_bridge_m0_bscan_TDO;
  wire user_debug_bridge_m0_bscan_TMS;
  wire user_debug_bridge_m0_bscan_UPDATE;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_4_Dout;

  assign BLP_S_AXI_CTRL_USER_00_1_ARADDR = BLP_S_AXI_CTRL_USER_00_araddr[24:0];
  assign BLP_S_AXI_CTRL_USER_00_1_ARPROT = BLP_S_AXI_CTRL_USER_00_arprot[2:0];
  assign BLP_S_AXI_CTRL_USER_00_1_ARVALID = BLP_S_AXI_CTRL_USER_00_arvalid;
  assign BLP_S_AXI_CTRL_USER_00_1_AWADDR = BLP_S_AXI_CTRL_USER_00_awaddr[24:0];
  assign BLP_S_AXI_CTRL_USER_00_1_AWPROT = BLP_S_AXI_CTRL_USER_00_awprot[2:0];
  assign BLP_S_AXI_CTRL_USER_00_1_AWVALID = BLP_S_AXI_CTRL_USER_00_awvalid;
  assign BLP_S_AXI_CTRL_USER_00_1_BREADY = BLP_S_AXI_CTRL_USER_00_bready;
  assign BLP_S_AXI_CTRL_USER_00_1_RREADY = BLP_S_AXI_CTRL_USER_00_rready;
  assign BLP_S_AXI_CTRL_USER_00_1_WDATA = BLP_S_AXI_CTRL_USER_00_wdata[31:0];
  assign BLP_S_AXI_CTRL_USER_00_1_WSTRB = BLP_S_AXI_CTRL_USER_00_wstrb[3:0];
  assign BLP_S_AXI_CTRL_USER_00_1_WVALID = BLP_S_AXI_CTRL_USER_00_wvalid;
  assign BLP_S_AXI_CTRL_USER_00_arready = BLP_S_AXI_CTRL_USER_00_1_ARREADY;
  assign BLP_S_AXI_CTRL_USER_00_awready = BLP_S_AXI_CTRL_USER_00_1_AWREADY;
  assign BLP_S_AXI_CTRL_USER_00_bresp[1:0] = BLP_S_AXI_CTRL_USER_00_1_BRESP;
  assign BLP_S_AXI_CTRL_USER_00_bvalid = BLP_S_AXI_CTRL_USER_00_1_BVALID;
  assign BLP_S_AXI_CTRL_USER_00_rdata[31:0] = BLP_S_AXI_CTRL_USER_00_1_RDATA;
  assign BLP_S_AXI_CTRL_USER_00_rresp[1:0] = BLP_S_AXI_CTRL_USER_00_1_RRESP;
  assign BLP_S_AXI_CTRL_USER_00_rvalid = BLP_S_AXI_CTRL_USER_00_1_RVALID;
  assign BLP_S_AXI_CTRL_USER_00_wready = BLP_S_AXI_CTRL_USER_00_1_WREADY;
  assign BLP_S_AXI_CTRL_USER_01_1_ARADDR = BLP_S_AXI_CTRL_USER_01_araddr[24:0];
  assign BLP_S_AXI_CTRL_USER_01_1_ARPROT = BLP_S_AXI_CTRL_USER_01_arprot[2:0];
  assign BLP_S_AXI_CTRL_USER_01_1_ARVALID = BLP_S_AXI_CTRL_USER_01_arvalid;
  assign BLP_S_AXI_CTRL_USER_01_1_AWADDR = BLP_S_AXI_CTRL_USER_01_awaddr[24:0];
  assign BLP_S_AXI_CTRL_USER_01_1_AWPROT = BLP_S_AXI_CTRL_USER_01_awprot[2:0];
  assign BLP_S_AXI_CTRL_USER_01_1_AWVALID = BLP_S_AXI_CTRL_USER_01_awvalid;
  assign BLP_S_AXI_CTRL_USER_01_1_BREADY = BLP_S_AXI_CTRL_USER_01_bready;
  assign BLP_S_AXI_CTRL_USER_01_1_RREADY = BLP_S_AXI_CTRL_USER_01_rready;
  assign BLP_S_AXI_CTRL_USER_01_1_WDATA = BLP_S_AXI_CTRL_USER_01_wdata[31:0];
  assign BLP_S_AXI_CTRL_USER_01_1_WSTRB = BLP_S_AXI_CTRL_USER_01_wstrb[3:0];
  assign BLP_S_AXI_CTRL_USER_01_1_WVALID = BLP_S_AXI_CTRL_USER_01_wvalid;
  assign BLP_S_AXI_CTRL_USER_01_arready = BLP_S_AXI_CTRL_USER_01_1_ARREADY;
  assign BLP_S_AXI_CTRL_USER_01_awready = BLP_S_AXI_CTRL_USER_01_1_AWREADY;
  assign BLP_S_AXI_CTRL_USER_01_bresp[1:0] = BLP_S_AXI_CTRL_USER_01_1_BRESP;
  assign BLP_S_AXI_CTRL_USER_01_bvalid = BLP_S_AXI_CTRL_USER_01_1_BVALID;
  assign BLP_S_AXI_CTRL_USER_01_rdata[31:0] = BLP_S_AXI_CTRL_USER_01_1_RDATA;
  assign BLP_S_AXI_CTRL_USER_01_rresp[1:0] = BLP_S_AXI_CTRL_USER_01_1_RRESP;
  assign BLP_S_AXI_CTRL_USER_01_rvalid = BLP_S_AXI_CTRL_USER_01_1_RVALID;
  assign BLP_S_AXI_CTRL_USER_01_wready = BLP_S_AXI_CTRL_USER_01_1_WREADY;
  assign BLP_S_AXI_CTRL_USER_02_1_ARADDR = BLP_S_AXI_CTRL_USER_02_araddr[24:0];
  assign BLP_S_AXI_CTRL_USER_02_1_ARPROT = BLP_S_AXI_CTRL_USER_02_arprot[2:0];
  assign BLP_S_AXI_CTRL_USER_02_1_ARVALID = BLP_S_AXI_CTRL_USER_02_arvalid;
  assign BLP_S_AXI_CTRL_USER_02_1_AWADDR = BLP_S_AXI_CTRL_USER_02_awaddr[24:0];
  assign BLP_S_AXI_CTRL_USER_02_1_AWPROT = BLP_S_AXI_CTRL_USER_02_awprot[2:0];
  assign BLP_S_AXI_CTRL_USER_02_1_AWVALID = BLP_S_AXI_CTRL_USER_02_awvalid;
  assign BLP_S_AXI_CTRL_USER_02_1_BREADY = BLP_S_AXI_CTRL_USER_02_bready;
  assign BLP_S_AXI_CTRL_USER_02_1_RREADY = BLP_S_AXI_CTRL_USER_02_rready;
  assign BLP_S_AXI_CTRL_USER_02_1_WDATA = BLP_S_AXI_CTRL_USER_02_wdata[31:0];
  assign BLP_S_AXI_CTRL_USER_02_1_WSTRB = BLP_S_AXI_CTRL_USER_02_wstrb[3:0];
  assign BLP_S_AXI_CTRL_USER_02_1_WVALID = BLP_S_AXI_CTRL_USER_02_wvalid;
  assign BLP_S_AXI_CTRL_USER_02_arready = BLP_S_AXI_CTRL_USER_02_1_ARREADY;
  assign BLP_S_AXI_CTRL_USER_02_awready = BLP_S_AXI_CTRL_USER_02_1_AWREADY;
  assign BLP_S_AXI_CTRL_USER_02_bresp[1:0] = BLP_S_AXI_CTRL_USER_02_1_BRESP;
  assign BLP_S_AXI_CTRL_USER_02_bvalid = BLP_S_AXI_CTRL_USER_02_1_BVALID;
  assign BLP_S_AXI_CTRL_USER_02_rdata[31:0] = BLP_S_AXI_CTRL_USER_02_1_RDATA;
  assign BLP_S_AXI_CTRL_USER_02_rresp[1:0] = BLP_S_AXI_CTRL_USER_02_1_RRESP;
  assign BLP_S_AXI_CTRL_USER_02_rvalid = BLP_S_AXI_CTRL_USER_02_1_RVALID;
  assign BLP_S_AXI_CTRL_USER_02_wready = BLP_S_AXI_CTRL_USER_02_1_WREADY;
  assign BLP_S_AXI_DATA_H2C_00_1_ARADDR = BLP_S_AXI_DATA_H2C_00_araddr[38:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARBURST = BLP_S_AXI_DATA_H2C_00_arburst[1:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARCACHE = BLP_S_AXI_DATA_H2C_00_arcache[3:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARID = BLP_S_AXI_DATA_H2C_00_arid[3:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARLEN = BLP_S_AXI_DATA_H2C_00_arlen[7:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARLOCK = BLP_S_AXI_DATA_H2C_00_arlock[0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARPROT = BLP_S_AXI_DATA_H2C_00_arprot[2:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARVALID = BLP_S_AXI_DATA_H2C_00_arvalid;
  assign BLP_S_AXI_DATA_H2C_00_1_AWADDR = BLP_S_AXI_DATA_H2C_00_awaddr[38:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWBURST = BLP_S_AXI_DATA_H2C_00_awburst[1:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWCACHE = BLP_S_AXI_DATA_H2C_00_awcache[3:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWID = BLP_S_AXI_DATA_H2C_00_awid[3:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWLEN = BLP_S_AXI_DATA_H2C_00_awlen[7:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWLOCK = BLP_S_AXI_DATA_H2C_00_awlock[0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWPROT = BLP_S_AXI_DATA_H2C_00_awprot[2:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWVALID = BLP_S_AXI_DATA_H2C_00_awvalid;
  assign BLP_S_AXI_DATA_H2C_00_1_BREADY = BLP_S_AXI_DATA_H2C_00_bready;
  assign BLP_S_AXI_DATA_H2C_00_1_RREADY = BLP_S_AXI_DATA_H2C_00_rready;
  assign BLP_S_AXI_DATA_H2C_00_1_WDATA = BLP_S_AXI_DATA_H2C_00_wdata[511:0];
  assign BLP_S_AXI_DATA_H2C_00_1_WLAST = BLP_S_AXI_DATA_H2C_00_wlast;
  assign BLP_S_AXI_DATA_H2C_00_1_WSTRB = BLP_S_AXI_DATA_H2C_00_wstrb[63:0];
  assign BLP_S_AXI_DATA_H2C_00_1_WVALID = BLP_S_AXI_DATA_H2C_00_wvalid;
  assign BLP_S_AXI_DATA_H2C_00_arready = BLP_S_AXI_DATA_H2C_00_1_ARREADY;
  assign BLP_S_AXI_DATA_H2C_00_awready = BLP_S_AXI_DATA_H2C_00_1_AWREADY;
  assign BLP_S_AXI_DATA_H2C_00_bid[3:0] = BLP_S_AXI_DATA_H2C_00_1_BID;
  assign BLP_S_AXI_DATA_H2C_00_bresp[1:0] = BLP_S_AXI_DATA_H2C_00_1_BRESP;
  assign BLP_S_AXI_DATA_H2C_00_bvalid = BLP_S_AXI_DATA_H2C_00_1_BVALID;
  assign BLP_S_AXI_DATA_H2C_00_rdata[511:0] = BLP_S_AXI_DATA_H2C_00_1_RDATA;
  assign BLP_S_AXI_DATA_H2C_00_rid[3:0] = BLP_S_AXI_DATA_H2C_00_1_RID;
  assign BLP_S_AXI_DATA_H2C_00_rlast = BLP_S_AXI_DATA_H2C_00_1_RLAST;
  assign BLP_S_AXI_DATA_H2C_00_rresp[1:0] = BLP_S_AXI_DATA_H2C_00_1_RRESP;
  assign BLP_S_AXI_DATA_H2C_00_rvalid = BLP_S_AXI_DATA_H2C_00_1_RVALID;
  assign BLP_S_AXI_DATA_H2C_00_wready = BLP_S_AXI_DATA_H2C_00_1_WREADY;
  assign BLP_S_AXI_DATA_H2C_01_1_ARADDR = BLP_S_AXI_DATA_H2C_01_araddr[39:0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARBURST = BLP_S_AXI_DATA_H2C_01_arburst[1:0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARCACHE = BLP_S_AXI_DATA_H2C_01_arcache[3:0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARID = BLP_S_AXI_DATA_H2C_01_arid[1:0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARLEN = BLP_S_AXI_DATA_H2C_01_arlen[7:0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARLOCK = BLP_S_AXI_DATA_H2C_01_arlock[0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARPROT = BLP_S_AXI_DATA_H2C_01_arprot[2:0];
  assign BLP_S_AXI_DATA_H2C_01_1_ARVALID = BLP_S_AXI_DATA_H2C_01_arvalid;
  assign BLP_S_AXI_DATA_H2C_01_1_AWADDR = BLP_S_AXI_DATA_H2C_01_awaddr[39:0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWBURST = BLP_S_AXI_DATA_H2C_01_awburst[1:0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWCACHE = BLP_S_AXI_DATA_H2C_01_awcache[3:0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWID = BLP_S_AXI_DATA_H2C_01_awid[1:0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWLEN = BLP_S_AXI_DATA_H2C_01_awlen[7:0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWLOCK = BLP_S_AXI_DATA_H2C_01_awlock[0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWPROT = BLP_S_AXI_DATA_H2C_01_awprot[2:0];
  assign BLP_S_AXI_DATA_H2C_01_1_AWVALID = BLP_S_AXI_DATA_H2C_01_awvalid;
  assign BLP_S_AXI_DATA_H2C_01_1_BREADY = BLP_S_AXI_DATA_H2C_01_bready;
  assign BLP_S_AXI_DATA_H2C_01_1_RREADY = BLP_S_AXI_DATA_H2C_01_rready;
  assign BLP_S_AXI_DATA_H2C_01_1_WDATA = BLP_S_AXI_DATA_H2C_01_wdata[63:0];
  assign BLP_S_AXI_DATA_H2C_01_1_WLAST = BLP_S_AXI_DATA_H2C_01_wlast;
  assign BLP_S_AXI_DATA_H2C_01_1_WSTRB = BLP_S_AXI_DATA_H2C_01_wstrb[7:0];
  assign BLP_S_AXI_DATA_H2C_01_1_WVALID = BLP_S_AXI_DATA_H2C_01_wvalid;
  assign BLP_S_AXI_DATA_H2C_01_arready = BLP_S_AXI_DATA_H2C_01_1_ARREADY;
  assign BLP_S_AXI_DATA_H2C_01_awready = BLP_S_AXI_DATA_H2C_01_1_AWREADY;
  assign BLP_S_AXI_DATA_H2C_01_bid[1:0] = BLP_S_AXI_DATA_H2C_01_1_BID;
  assign BLP_S_AXI_DATA_H2C_01_bresp[1:0] = BLP_S_AXI_DATA_H2C_01_1_BRESP;
  assign BLP_S_AXI_DATA_H2C_01_bvalid = BLP_S_AXI_DATA_H2C_01_1_BVALID;
  assign BLP_S_AXI_DATA_H2C_01_rdata[63:0] = BLP_S_AXI_DATA_H2C_01_1_RDATA;
  assign BLP_S_AXI_DATA_H2C_01_rid[1:0] = BLP_S_AXI_DATA_H2C_01_1_RID;
  assign BLP_S_AXI_DATA_H2C_01_rlast = BLP_S_AXI_DATA_H2C_01_1_RLAST;
  assign BLP_S_AXI_DATA_H2C_01_rresp[1:0] = BLP_S_AXI_DATA_H2C_01_1_RRESP;
  assign BLP_S_AXI_DATA_H2C_01_rvalid = BLP_S_AXI_DATA_H2C_01_1_RVALID;
  assign BLP_S_AXI_DATA_H2C_01_wready = BLP_S_AXI_DATA_H2C_01_1_WREADY;
  assign BLP_S_AXI_DATA_H2C_02_1_ARADDR = BLP_S_AXI_DATA_H2C_02_araddr[31:0];
  assign BLP_S_AXI_DATA_H2C_02_1_ARBURST = BLP_S_AXI_DATA_H2C_02_arburst[1:0];
  assign BLP_S_AXI_DATA_H2C_02_1_ARCACHE = BLP_S_AXI_DATA_H2C_02_arcache[3:0];
  assign BLP_S_AXI_DATA_H2C_02_1_ARLEN = BLP_S_AXI_DATA_H2C_02_arlen[7:0];
  assign BLP_S_AXI_DATA_H2C_02_1_ARLOCK = BLP_S_AXI_DATA_H2C_02_arlock[0];
  assign BLP_S_AXI_DATA_H2C_02_1_ARPROT = BLP_S_AXI_DATA_H2C_02_arprot[2:0];
  assign BLP_S_AXI_DATA_H2C_02_1_ARVALID = BLP_S_AXI_DATA_H2C_02_arvalid;
  assign BLP_S_AXI_DATA_H2C_02_1_AWADDR = BLP_S_AXI_DATA_H2C_02_awaddr[31:0];
  assign BLP_S_AXI_DATA_H2C_02_1_AWBURST = BLP_S_AXI_DATA_H2C_02_awburst[1:0];
  assign BLP_S_AXI_DATA_H2C_02_1_AWCACHE = BLP_S_AXI_DATA_H2C_02_awcache[3:0];
  assign BLP_S_AXI_DATA_H2C_02_1_AWLEN = BLP_S_AXI_DATA_H2C_02_awlen[7:0];
  assign BLP_S_AXI_DATA_H2C_02_1_AWLOCK = BLP_S_AXI_DATA_H2C_02_awlock[0];
  assign BLP_S_AXI_DATA_H2C_02_1_AWPROT = BLP_S_AXI_DATA_H2C_02_awprot[2:0];
  assign BLP_S_AXI_DATA_H2C_02_1_AWVALID = BLP_S_AXI_DATA_H2C_02_awvalid;
  assign BLP_S_AXI_DATA_H2C_02_1_BREADY = BLP_S_AXI_DATA_H2C_02_bready;
  assign BLP_S_AXI_DATA_H2C_02_1_RREADY = BLP_S_AXI_DATA_H2C_02_rready;
  assign BLP_S_AXI_DATA_H2C_02_1_WDATA = BLP_S_AXI_DATA_H2C_02_wdata[31:0];
  assign BLP_S_AXI_DATA_H2C_02_1_WLAST = BLP_S_AXI_DATA_H2C_02_wlast;
  assign BLP_S_AXI_DATA_H2C_02_1_WSTRB = BLP_S_AXI_DATA_H2C_02_wstrb[3:0];
  assign BLP_S_AXI_DATA_H2C_02_1_WVALID = BLP_S_AXI_DATA_H2C_02_wvalid;
  assign BLP_S_AXI_DATA_H2C_02_arready = BLP_S_AXI_DATA_H2C_02_1_ARREADY;
  assign BLP_S_AXI_DATA_H2C_02_awready = BLP_S_AXI_DATA_H2C_02_1_AWREADY;
  assign BLP_S_AXI_DATA_H2C_02_bresp[1:0] = BLP_S_AXI_DATA_H2C_02_1_BRESP;
  assign BLP_S_AXI_DATA_H2C_02_bvalid = BLP_S_AXI_DATA_H2C_02_1_BVALID;
  assign BLP_S_AXI_DATA_H2C_02_rdata[31:0] = BLP_S_AXI_DATA_H2C_02_1_RDATA;
  assign BLP_S_AXI_DATA_H2C_02_rlast = BLP_S_AXI_DATA_H2C_02_1_RLAST;
  assign BLP_S_AXI_DATA_H2C_02_rresp[1:0] = BLP_S_AXI_DATA_H2C_02_1_RRESP;
  assign BLP_S_AXI_DATA_H2C_02_rvalid = BLP_S_AXI_DATA_H2C_02_1_RVALID;
  assign BLP_S_AXI_DATA_H2C_02_wready = BLP_S_AXI_DATA_H2C_02_1_WREADY;
  assign BLP_S_AXI_DATA_H2C_03_1_ARADDR = BLP_S_AXI_DATA_H2C_03_araddr[38:0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARBURST = BLP_S_AXI_DATA_H2C_03_arburst[1:0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARCACHE = BLP_S_AXI_DATA_H2C_03_arcache[3:0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARID = BLP_S_AXI_DATA_H2C_03_arid[3:0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARLEN = BLP_S_AXI_DATA_H2C_03_arlen[7:0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARLOCK = BLP_S_AXI_DATA_H2C_03_arlock[0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARPROT = BLP_S_AXI_DATA_H2C_03_arprot[2:0];
  assign BLP_S_AXI_DATA_H2C_03_1_ARVALID = BLP_S_AXI_DATA_H2C_03_arvalid;
  assign BLP_S_AXI_DATA_H2C_03_1_AWADDR = BLP_S_AXI_DATA_H2C_03_awaddr[38:0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWBURST = BLP_S_AXI_DATA_H2C_03_awburst[1:0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWCACHE = BLP_S_AXI_DATA_H2C_03_awcache[3:0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWID = BLP_S_AXI_DATA_H2C_03_awid[3:0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWLEN = BLP_S_AXI_DATA_H2C_03_awlen[7:0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWLOCK = BLP_S_AXI_DATA_H2C_03_awlock[0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWPROT = BLP_S_AXI_DATA_H2C_03_awprot[2:0];
  assign BLP_S_AXI_DATA_H2C_03_1_AWVALID = BLP_S_AXI_DATA_H2C_03_awvalid;
  assign BLP_S_AXI_DATA_H2C_03_1_BREADY = BLP_S_AXI_DATA_H2C_03_bready;
  assign BLP_S_AXI_DATA_H2C_03_1_RREADY = BLP_S_AXI_DATA_H2C_03_rready;
  assign BLP_S_AXI_DATA_H2C_03_1_WDATA = BLP_S_AXI_DATA_H2C_03_wdata[127:0];
  assign BLP_S_AXI_DATA_H2C_03_1_WLAST = BLP_S_AXI_DATA_H2C_03_wlast;
  assign BLP_S_AXI_DATA_H2C_03_1_WSTRB = BLP_S_AXI_DATA_H2C_03_wstrb[15:0];
  assign BLP_S_AXI_DATA_H2C_03_1_WVALID = BLP_S_AXI_DATA_H2C_03_wvalid;
  assign BLP_S_AXI_DATA_H2C_03_arready = BLP_S_AXI_DATA_H2C_03_1_ARREADY;
  assign BLP_S_AXI_DATA_H2C_03_awready = BLP_S_AXI_DATA_H2C_03_1_AWREADY;
  assign BLP_S_AXI_DATA_H2C_03_bid[3:0] = BLP_S_AXI_DATA_H2C_03_1_BID;
  assign BLP_S_AXI_DATA_H2C_03_bresp[1:0] = BLP_S_AXI_DATA_H2C_03_1_BRESP;
  assign BLP_S_AXI_DATA_H2C_03_bvalid = BLP_S_AXI_DATA_H2C_03_1_BVALID;
  assign BLP_S_AXI_DATA_H2C_03_rdata[127:0] = BLP_S_AXI_DATA_H2C_03_1_RDATA;
  assign BLP_S_AXI_DATA_H2C_03_rid[3:0] = BLP_S_AXI_DATA_H2C_03_1_RID;
  assign BLP_S_AXI_DATA_H2C_03_rlast = BLP_S_AXI_DATA_H2C_03_1_RLAST;
  assign BLP_S_AXI_DATA_H2C_03_rresp[1:0] = BLP_S_AXI_DATA_H2C_03_1_RRESP;
  assign BLP_S_AXI_DATA_H2C_03_rvalid = BLP_S_AXI_DATA_H2C_03_1_RVALID;
  assign BLP_S_AXI_DATA_H2C_03_wready = BLP_S_AXI_DATA_H2C_03_1_WREADY;
  assign blp_m_data_dna_from_ulp_00[2:0] = ii_level0_wire_blp_m_data_dna_from_ulp_00;
  assign blp_m_data_memory_calib_complete_00[0] = ii_level0_wire_blp_m_data_memory_calib_complete_00;
  assign blp_m_irq_cu_00[127:0] = ii_level0_wire_blp_m_irq_cu_00;
  assign blp_s_aclk_ctrl_00_1 = blp_s_aclk_ctrl_00;
  assign blp_s_aclk_kernel2_ref_clk_00_1 = blp_s_aclk_kernel2_ref_clk_00;
  assign blp_s_aclk_kernel_ref_clk_00_1 = blp_s_aclk_kernel_ref_clk_00;
  assign blp_s_aclk_pcie_00_1 = blp_s_aclk_pcie_00;
  assign blp_s_aresetn_ctrl_00_1 = blp_s_aresetn_ctrl_00[0];
  assign blp_s_aresetn_kernel_ref_clk_00_1 = blp_s_aresetn_kernel_ref_clk_00[0];
  assign blp_s_aresetn_pcie_00_1 = blp_s_aresetn_pcie_00[0];
  assign blp_s_data_clkwiz_kernel_clk_out1_locked_00_1 = blp_s_data_clkwiz_kernel_clk_out1_locked_00[0];
  assign blp_s_data_dout_dna_00_1 = blp_s_data_dout_dna_00[0];
  assign blp_s_data_perstn_out_00_1 = blp_s_data_perstn_out_00[2:0];
  assign blp_s_data_slice_pr_reset_to_ulp_00_1 = blp_s_data_slice_pr_reset_to_ulp_00[1:0];
  assign io_clk_ddr_00_1_CLK_N = io_clk_ddr_00_clk_n[0];
  assign io_clk_ddr_00_1_CLK_P = io_clk_ddr_00_clk_p[0];
  assign io_ddr_00_act_n = ddrmem_1_C0_DDR4_ACT_N;
  assign io_ddr_00_adr[16:0] = ddrmem_1_C0_DDR4_ADR;
  assign io_ddr_00_ba[1:0] = ddrmem_1_C0_DDR4_BA;
  assign io_ddr_00_bg[0] = ddrmem_1_C0_DDR4_BG;
  assign io_ddr_00_ck_c[0] = ddrmem_1_C0_DDR4_CK_C;
  assign io_ddr_00_ck_t[0] = ddrmem_1_C0_DDR4_CK_T;
  assign io_ddr_00_cke[0] = ddrmem_1_C0_DDR4_CKE;
  assign io_ddr_00_cs_n[0] = ddrmem_1_C0_DDR4_CS_N;
  assign io_ddr_00_odt[0] = ddrmem_1_C0_DDR4_ODT;
  assign io_ddr_00_reset_n = ddrmem_1_C0_DDR4_RESET_N;
  ulp_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_0_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_0_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .s_axi_aclk(clkwiz_kernel_clk_out1_1),
        .s_axi_araddr(axi_interconnect_1_M01_AXI_ARADDR[14:0]),
        .s_axi_arburst(axi_interconnect_1_M01_AXI_ARBURST),
        .s_axi_arcache(axi_interconnect_1_M01_AXI_ARCACHE),
        .s_axi_aresetn(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .s_axi_arid(axi_interconnect_1_M01_AXI_ARID),
        .s_axi_arlen(axi_interconnect_1_M01_AXI_ARLEN),
        .s_axi_arlock(axi_interconnect_1_M01_AXI_ARLOCK),
        .s_axi_arprot(axi_interconnect_1_M01_AXI_ARPROT),
        .s_axi_arready(axi_interconnect_1_M01_AXI_ARREADY),
        .s_axi_arsize(axi_interconnect_1_M01_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_1_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_1_M01_AXI_AWADDR[14:0]),
        .s_axi_awburst(axi_interconnect_1_M01_AXI_AWBURST),
        .s_axi_awcache(axi_interconnect_1_M01_AXI_AWCACHE),
        .s_axi_awid(axi_interconnect_1_M01_AXI_AWID),
        .s_axi_awlen(axi_interconnect_1_M01_AXI_AWLEN),
        .s_axi_awlock(axi_interconnect_1_M01_AXI_AWLOCK),
        .s_axi_awprot(axi_interconnect_1_M01_AXI_AWPROT),
        .s_axi_awready(axi_interconnect_1_M01_AXI_AWREADY),
        .s_axi_awsize(axi_interconnect_1_M01_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_1_M01_AXI_AWVALID),
        .s_axi_bid(axi_interconnect_1_M01_AXI_BID),
        .s_axi_bready(axi_interconnect_1_M01_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_1_M01_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_1_M01_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_1_M01_AXI_RDATA),
        .s_axi_rid(axi_interconnect_1_M01_AXI_RID),
        .s_axi_rlast(axi_interconnect_1_M01_AXI_RLAST),
        .s_axi_rready(axi_interconnect_1_M01_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_1_M01_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_1_M01_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_1_M01_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_1_M01_AXI_WLAST),
        .s_axi_wready(axi_interconnect_1_M01_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_1_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_1_M01_AXI_WVALID));
  ulp_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTB_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_0_BRAM_PORTB_WE));
  ulp_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(clkwiz_kernel_clk_out1_1),
        .ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .M00_ACLK(clkwiz_kernel_clk_out1_1),
        .M00_ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arregion(axi_interconnect_0_M00_AXI_ARREGION),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awregion(axi_interconnect_0_M00_AXI_AWREGION),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(clkwiz_kernel_clk_out1_1),
        .S00_ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .S00_AXI_araddr(axi_vip_0_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_vip_0_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_vip_0_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_vip_0_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_vip_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_vip_0_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_vip_0_M_AXI_ARQOS),
        .S00_AXI_arready(axi_vip_0_M_AXI_ARREADY),
        .S00_AXI_arregion(axi_vip_0_M_AXI_ARREGION),
        .S00_AXI_arsize(axi_vip_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_vip_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_0_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_vip_0_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_vip_0_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_vip_0_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_vip_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_vip_0_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_vip_0_M_AXI_AWQOS),
        .S00_AXI_awready(axi_vip_0_M_AXI_AWREADY),
        .S00_AXI_awregion(axi_vip_0_M_AXI_AWREGION),
        .S00_AXI_awsize(axi_vip_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_vip_0_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_0_M_AXI_RDATA),
        .S00_AXI_rlast(axi_vip_0_M_AXI_RLAST),
        .S00_AXI_rready(axi_vip_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_0_M_AXI_WDATA),
        .S00_AXI_wlast(axi_vip_0_M_AXI_WLAST),
        .S00_AXI_wready(axi_vip_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_0_M_AXI_WVALID),
        .S01_ACLK(blp_s_aclk_kernel_ref_clk_00_1),
        .S01_ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .S01_AXI_araddr(krnl_ro_rtl_1_m_axi_gmem_ARADDR),
        .S01_AXI_arburst(krnl_ro_rtl_1_m_axi_gmem_ARBURST),
        .S01_AXI_arcache(krnl_ro_rtl_1_m_axi_gmem_ARCACHE),
        .S01_AXI_arid(krnl_ro_rtl_1_m_axi_gmem_ARID),
        .S01_AXI_arlen(krnl_ro_rtl_1_m_axi_gmem_ARLEN),
        .S01_AXI_arlock(krnl_ro_rtl_1_m_axi_gmem_ARLOCK),
        .S01_AXI_arprot(krnl_ro_rtl_1_m_axi_gmem_ARPROT),
        .S01_AXI_arqos(krnl_ro_rtl_1_m_axi_gmem_ARQOS),
        .S01_AXI_arready(krnl_ro_rtl_1_m_axi_gmem_ARREADY),
        .S01_AXI_arregion(krnl_ro_rtl_1_m_axi_gmem_ARREGION),
        .S01_AXI_arsize(krnl_ro_rtl_1_m_axi_gmem_ARSIZE),
        .S01_AXI_arvalid(krnl_ro_rtl_1_m_axi_gmem_ARVALID),
        .S01_AXI_awaddr(krnl_ro_rtl_1_m_axi_gmem_AWADDR),
        .S01_AXI_awburst(krnl_ro_rtl_1_m_axi_gmem_AWBURST),
        .S01_AXI_awcache(krnl_ro_rtl_1_m_axi_gmem_AWCACHE),
        .S01_AXI_awid(krnl_ro_rtl_1_m_axi_gmem_AWID),
        .S01_AXI_awlen(krnl_ro_rtl_1_m_axi_gmem_AWLEN),
        .S01_AXI_awlock(krnl_ro_rtl_1_m_axi_gmem_AWLOCK),
        .S01_AXI_awprot(krnl_ro_rtl_1_m_axi_gmem_AWPROT),
        .S01_AXI_awqos(krnl_ro_rtl_1_m_axi_gmem_AWQOS),
        .S01_AXI_awready(krnl_ro_rtl_1_m_axi_gmem_AWREADY),
        .S01_AXI_awregion(krnl_ro_rtl_1_m_axi_gmem_AWREGION),
        .S01_AXI_awsize(krnl_ro_rtl_1_m_axi_gmem_AWSIZE),
        .S01_AXI_awvalid(krnl_ro_rtl_1_m_axi_gmem_AWVALID),
        .S01_AXI_bid(krnl_ro_rtl_1_m_axi_gmem_BID),
        .S01_AXI_bready(krnl_ro_rtl_1_m_axi_gmem_BREADY),
        .S01_AXI_bresp(krnl_ro_rtl_1_m_axi_gmem_BRESP),
        .S01_AXI_bvalid(krnl_ro_rtl_1_m_axi_gmem_BVALID),
        .S01_AXI_rdata(krnl_ro_rtl_1_m_axi_gmem_RDATA),
        .S01_AXI_rid(krnl_ro_rtl_1_m_axi_gmem_RID),
        .S01_AXI_rlast(krnl_ro_rtl_1_m_axi_gmem_RLAST),
        .S01_AXI_rready(krnl_ro_rtl_1_m_axi_gmem_RREADY),
        .S01_AXI_rresp(krnl_ro_rtl_1_m_axi_gmem_RRESP),
        .S01_AXI_rvalid(krnl_ro_rtl_1_m_axi_gmem_RVALID),
        .S01_AXI_wdata(krnl_ro_rtl_1_m_axi_gmem_WDATA),
        .S01_AXI_wlast(krnl_ro_rtl_1_m_axi_gmem_WLAST),
        .S01_AXI_wready(krnl_ro_rtl_1_m_axi_gmem_WREADY),
        .S01_AXI_wstrb(krnl_ro_rtl_1_m_axi_gmem_WSTRB),
        .S01_AXI_wvalid(krnl_ro_rtl_1_m_axi_gmem_WVALID));
  ulp_axi_interconnect_0_p_0 axi_interconnect_0_p
       (.ACLK(clkwiz_kernel_clk_out1_1),
        .ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .M00_ACLK(clkwiz_kernel_clk_out1_1),
        .M00_ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_P_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_P_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_P_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_P_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_P_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_P_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_P_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_P_ARREADY),
        .M00_AXI_arregion(axi_interconnect_0_M00_AXI_P_ARREGION),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_P_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_P_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_P_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_P_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_P_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_P_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_P_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_P_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI_P_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_P_AWREADY),
        .M00_AXI_awregion(axi_interconnect_0_M00_AXI_P_AWREGION),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_P_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_P_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_P_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_P_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_P_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_P_RDATA),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_P_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_P_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_P_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_P_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_P_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_P_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_P_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_P_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_P_WVALID),
        .S00_ACLK(clkwiz_kernel_clk_out1_1),
        .S00_ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .S00_AXI_araddr(axi_vip_0_M_AXI_P_ARADDR),
        .S00_AXI_arburst(axi_vip_0_M_AXI_P_ARBURST),
        .S00_AXI_arcache(axi_vip_0_M_AXI_P_ARCACHE),
        .S00_AXI_arlen(axi_vip_0_M_AXI_P_ARLEN),
        .S00_AXI_arlock(axi_vip_0_M_AXI_P_ARLOCK),
        .S00_AXI_arprot(axi_vip_0_M_AXI_P_ARPROT),
        .S00_AXI_arqos(axi_vip_0_M_AXI_P_ARQOS),
        .S00_AXI_arready(axi_vip_0_M_AXI_P_ARREADY),
        .S00_AXI_arregion(axi_vip_0_M_AXI_P_ARREGION),
        .S00_AXI_arsize(axi_vip_0_M_AXI_P_ARSIZE),
        .S00_AXI_arvalid(axi_vip_0_M_AXI_P_ARVALID),
        .S00_AXI_awaddr(axi_vip_0_M_AXI_P_AWADDR),
        .S00_AXI_awburst(axi_vip_0_M_AXI_P_AWBURST),
        .S00_AXI_awcache(axi_vip_0_M_AXI_P_AWCACHE),
        .S00_AXI_awlen(axi_vip_0_M_AXI_P_AWLEN),
        .S00_AXI_awlock(axi_vip_0_M_AXI_P_AWLOCK),
        .S00_AXI_awprot(axi_vip_0_M_AXI_P_AWPROT),
        .S00_AXI_awqos(axi_vip_0_M_AXI_P_AWQOS),
        .S00_AXI_awready(axi_vip_0_M_AXI_P_AWREADY),
        .S00_AXI_awregion(axi_vip_0_M_AXI_P_AWREGION),
        .S00_AXI_awsize(axi_vip_0_M_AXI_P_AWSIZE),
        .S00_AXI_awvalid(axi_vip_0_M_AXI_P_AWVALID),
        .S00_AXI_bready(axi_vip_0_M_AXI_P_BREADY),
        .S00_AXI_bresp(axi_vip_0_M_AXI_P_BRESP),
        .S00_AXI_bvalid(axi_vip_0_M_AXI_P_BVALID),
        .S00_AXI_rdata(axi_vip_0_M_AXI_P_RDATA),
        .S00_AXI_rlast(axi_vip_0_M_AXI_P_RLAST),
        .S00_AXI_rready(axi_vip_0_M_AXI_P_RREADY),
        .S00_AXI_rresp(axi_vip_0_M_AXI_P_RRESP),
        .S00_AXI_rvalid(axi_vip_0_M_AXI_P_RVALID),
        .S00_AXI_wdata(axi_vip_0_M_AXI_P_WDATA),
        .S00_AXI_wlast(axi_vip_0_M_AXI_P_WLAST),
        .S00_AXI_wready(axi_vip_0_M_AXI_P_WREADY),
        .S00_AXI_wstrb(axi_vip_0_M_AXI_P_WSTRB),
        .S00_AXI_wvalid(axi_vip_0_M_AXI_P_WVALID));
  ulp_axi_interconnect_1_0 axi_interconnect_1
       (.ACLK(clkwiz_kernel_clk_out1_1),
        .ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .M00_ACLK(M00_ACLK_1),
        .M00_ARESETN(slr1_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_1_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_1_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_1_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_1_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .M01_ACLK(clkwiz_kernel_clk_out1_1),
        .M01_ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .M01_AXI_araddr(axi_interconnect_1_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_interconnect_1_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_interconnect_1_M01_AXI_ARCACHE),
        .M01_AXI_arid(axi_interconnect_1_M01_AXI_ARID),
        .M01_AXI_arlen(axi_interconnect_1_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_interconnect_1_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_interconnect_1_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_interconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_interconnect_1_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(axi_interconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_1_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_interconnect_1_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_interconnect_1_M01_AXI_AWCACHE),
        .M01_AXI_awid(axi_interconnect_1_M01_AXI_AWID),
        .M01_AXI_awlen(axi_interconnect_1_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_interconnect_1_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_interconnect_1_M01_AXI_AWPROT),
        .M01_AXI_awready(axi_interconnect_1_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_interconnect_1_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(axi_interconnect_1_M01_AXI_AWVALID),
        .M01_AXI_bid(axi_interconnect_1_M01_AXI_BID),
        .M01_AXI_bready(axi_interconnect_1_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_1_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_1_M01_AXI_RDATA),
        .M01_AXI_rid(axi_interconnect_1_M01_AXI_RID),
        .M01_AXI_rlast(axi_interconnect_1_M01_AXI_RLAST),
        .M01_AXI_rready(axi_interconnect_1_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_1_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_1_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_interconnect_1_M01_AXI_WLAST),
        .M01_AXI_wready(axi_interconnect_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_1_M01_AXI_WVALID),
        .S00_ACLK(clkwiz_kernel_clk_out1_1),
        .S00_ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .S00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .S00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .S00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .S00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .S00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .S00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .S00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .S00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .S00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .S00_AXI_arregion(axi_interconnect_0_M00_AXI_ARREGION),
        .S00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .S00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .S00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .S00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .S00_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .S00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .S00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .S00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .S00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .S00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .S00_AXI_awregion(axi_interconnect_0_M00_AXI_AWREGION),
        .S00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .S00_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .S00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .S00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .S00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .S00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .S00_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .S00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .S00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .S00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .S00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .S00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .S00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .S00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .S00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .S00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S01_ACLK(clkwiz_kernel_clk_out1_1),
        .S01_ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .S01_AXI_araddr(slr1_axi_cdc_data_static_M_AXI_ARADDR),
        .S01_AXI_arburst(slr1_axi_cdc_data_static_M_AXI_ARBURST),
        .S01_AXI_arcache(slr1_axi_cdc_data_static_M_AXI_ARCACHE),
        .S01_AXI_arid(slr1_axi_cdc_data_static_M_AXI_ARID),
        .S01_AXI_arlen(slr1_axi_cdc_data_static_M_AXI_ARLEN),
        .S01_AXI_arlock(slr1_axi_cdc_data_static_M_AXI_ARLOCK),
        .S01_AXI_arprot(slr1_axi_cdc_data_static_M_AXI_ARPROT),
        .S01_AXI_arqos(slr1_axi_cdc_data_static_M_AXI_ARQOS),
        .S01_AXI_arready(slr1_axi_cdc_data_static_M_AXI_ARREADY),
        .S01_AXI_arregion(slr1_axi_cdc_data_static_M_AXI_ARREGION),
        .S01_AXI_arsize(slr1_axi_cdc_data_static_M_AXI_ARSIZE),
        .S01_AXI_arvalid(slr1_axi_cdc_data_static_M_AXI_ARVALID),
        .S01_AXI_awaddr(slr1_axi_cdc_data_static_M_AXI_AWADDR),
        .S01_AXI_awburst(slr1_axi_cdc_data_static_M_AXI_AWBURST),
        .S01_AXI_awcache(slr1_axi_cdc_data_static_M_AXI_AWCACHE),
        .S01_AXI_awid(slr1_axi_cdc_data_static_M_AXI_AWID),
        .S01_AXI_awlen(slr1_axi_cdc_data_static_M_AXI_AWLEN),
        .S01_AXI_awlock(slr1_axi_cdc_data_static_M_AXI_AWLOCK),
        .S01_AXI_awprot(slr1_axi_cdc_data_static_M_AXI_AWPROT),
        .S01_AXI_awqos(slr1_axi_cdc_data_static_M_AXI_AWQOS),
        .S01_AXI_awready(slr1_axi_cdc_data_static_M_AXI_AWREADY),
        .S01_AXI_awregion(slr1_axi_cdc_data_static_M_AXI_AWREGION),
        .S01_AXI_awsize(slr1_axi_cdc_data_static_M_AXI_AWSIZE),
        .S01_AXI_awvalid(slr1_axi_cdc_data_static_M_AXI_AWVALID),
        .S01_AXI_bid(slr1_axi_cdc_data_static_M_AXI_BID),
        .S01_AXI_bready(slr1_axi_cdc_data_static_M_AXI_BREADY),
        .S01_AXI_bresp(slr1_axi_cdc_data_static_M_AXI_BRESP),
        .S01_AXI_bvalid(slr1_axi_cdc_data_static_M_AXI_BVALID),
        .S01_AXI_rdata(slr1_axi_cdc_data_static_M_AXI_RDATA),
        .S01_AXI_rid(slr1_axi_cdc_data_static_M_AXI_RID),
        .S01_AXI_rlast(slr1_axi_cdc_data_static_M_AXI_RLAST),
        .S01_AXI_rready(slr1_axi_cdc_data_static_M_AXI_RREADY),
        .S01_AXI_rresp(slr1_axi_cdc_data_static_M_AXI_RRESP),
        .S01_AXI_rvalid(slr1_axi_cdc_data_static_M_AXI_RVALID),
        .S01_AXI_wdata(slr1_axi_cdc_data_static_M_AXI_WDATA),
        .S01_AXI_wlast(slr1_axi_cdc_data_static_M_AXI_WLAST),
        .S01_AXI_wready(slr1_axi_cdc_data_static_M_AXI_WREADY),
        .S01_AXI_wstrb(slr1_axi_cdc_data_static_M_AXI_WSTRB),
        .S01_AXI_wvalid(slr1_axi_cdc_data_static_M_AXI_WVALID),
        .S02_ACLK(clkwiz_kernel_clk_out1_1),
        .S02_ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .S02_AXI_araddr(axi_interconnect_0_M00_AXI_P_ARADDR),
        .S02_AXI_arburst(axi_interconnect_0_M00_AXI_P_ARBURST),
        .S02_AXI_arcache(axi_interconnect_0_M00_AXI_P_ARCACHE),
        .S02_AXI_arlen(axi_interconnect_0_M00_AXI_P_ARLEN),
        .S02_AXI_arlock(axi_interconnect_0_M00_AXI_P_ARLOCK),
        .S02_AXI_arprot(axi_interconnect_0_M00_AXI_P_ARPROT),
        .S02_AXI_arqos(axi_interconnect_0_M00_AXI_P_ARQOS),
        .S02_AXI_arready(axi_interconnect_0_M00_AXI_P_ARREADY),
        .S02_AXI_arregion(axi_interconnect_0_M00_AXI_P_ARREGION),
        .S02_AXI_arsize(axi_interconnect_0_M00_AXI_P_ARSIZE),
        .S02_AXI_arvalid(axi_interconnect_0_M00_AXI_P_ARVALID),
        .S02_AXI_awaddr(axi_interconnect_0_M00_AXI_P_AWADDR),
        .S02_AXI_awburst(axi_interconnect_0_M00_AXI_P_AWBURST),
        .S02_AXI_awcache(axi_interconnect_0_M00_AXI_P_AWCACHE),
        .S02_AXI_awlen(axi_interconnect_0_M00_AXI_P_AWLEN),
        .S02_AXI_awlock(axi_interconnect_0_M00_AXI_P_AWLOCK),
        .S02_AXI_awprot(axi_interconnect_0_M00_AXI_P_AWPROT),
        .S02_AXI_awqos(axi_interconnect_0_M00_AXI_P_AWQOS),
        .S02_AXI_awready(axi_interconnect_0_M00_AXI_P_AWREADY),
        .S02_AXI_awregion(axi_interconnect_0_M00_AXI_P_AWREGION),
        .S02_AXI_awsize(axi_interconnect_0_M00_AXI_P_AWSIZE),
        .S02_AXI_awvalid(axi_interconnect_0_M00_AXI_P_AWVALID),
        .S02_AXI_bready(axi_interconnect_0_M00_AXI_P_BREADY),
        .S02_AXI_bresp(axi_interconnect_0_M00_AXI_P_BRESP),
        .S02_AXI_bvalid(axi_interconnect_0_M00_AXI_P_BVALID),
        .S02_AXI_rdata(axi_interconnect_0_M00_AXI_P_RDATA),
        .S02_AXI_rlast(axi_interconnect_0_M00_AXI_P_RLAST),
        .S02_AXI_rready(axi_interconnect_0_M00_AXI_P_RREADY),
        .S02_AXI_rresp(axi_interconnect_0_M00_AXI_P_RRESP),
        .S02_AXI_rvalid(axi_interconnect_0_M00_AXI_P_RVALID),
        .S02_AXI_wdata(axi_interconnect_0_M00_AXI_P_WDATA),
        .S02_AXI_wlast(axi_interconnect_0_M00_AXI_P_WLAST),
        .S02_AXI_wready(axi_interconnect_0_M00_AXI_P_WREADY),
        .S02_AXI_wstrb(axi_interconnect_0_M00_AXI_P_WSTRB),
        .S02_AXI_wvalid(axi_interconnect_0_M00_AXI_P_WVALID),
        .S03_ACLK(clkwiz_kernel_clk_out1_1),
        .S03_ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .S03_AXI_araddr(slr1_axi_cdc_data_static_M_AXI1_ARADDR),
        .S03_AXI_arburst(slr1_axi_cdc_data_static_M_AXI1_ARBURST),
        .S03_AXI_arcache(slr1_axi_cdc_data_static_M_AXI1_ARCACHE),
        .S03_AXI_arid(slr1_axi_cdc_data_static_M_AXI1_ARID),
        .S03_AXI_arlen(slr1_axi_cdc_data_static_M_AXI1_ARLEN),
        .S03_AXI_arlock(slr1_axi_cdc_data_static_M_AXI1_ARLOCK),
        .S03_AXI_arprot(slr1_axi_cdc_data_static_M_AXI1_ARPROT),
        .S03_AXI_arqos(slr1_axi_cdc_data_static_M_AXI1_ARQOS),
        .S03_AXI_arready(slr1_axi_cdc_data_static_M_AXI1_ARREADY),
        .S03_AXI_arsize(slr1_axi_cdc_data_static_M_AXI1_ARSIZE),
        .S03_AXI_arvalid(slr1_axi_cdc_data_static_M_AXI1_ARVALID),
        .S03_AXI_awaddr(slr1_axi_cdc_data_static_M_AXI1_AWADDR),
        .S03_AXI_awburst(slr1_axi_cdc_data_static_M_AXI1_AWBURST),
        .S03_AXI_awcache(slr1_axi_cdc_data_static_M_AXI1_AWCACHE),
        .S03_AXI_awid(slr1_axi_cdc_data_static_M_AXI1_AWID),
        .S03_AXI_awlen(slr1_axi_cdc_data_static_M_AXI1_AWLEN),
        .S03_AXI_awlock(slr1_axi_cdc_data_static_M_AXI1_AWLOCK),
        .S03_AXI_awprot(slr1_axi_cdc_data_static_M_AXI1_AWPROT),
        .S03_AXI_awqos(slr1_axi_cdc_data_static_M_AXI1_AWQOS),
        .S03_AXI_awready(slr1_axi_cdc_data_static_M_AXI1_AWREADY),
        .S03_AXI_awsize(slr1_axi_cdc_data_static_M_AXI1_AWSIZE),
        .S03_AXI_awvalid(slr1_axi_cdc_data_static_M_AXI1_AWVALID),
        .S03_AXI_bid(slr1_axi_cdc_data_static_M_AXI1_BID),
        .S03_AXI_bready(slr1_axi_cdc_data_static_M_AXI1_BREADY),
        .S03_AXI_bresp(slr1_axi_cdc_data_static_M_AXI1_BRESP),
        .S03_AXI_bvalid(slr1_axi_cdc_data_static_M_AXI1_BVALID),
        .S03_AXI_rdata(slr1_axi_cdc_data_static_M_AXI1_RDATA),
        .S03_AXI_rid(slr1_axi_cdc_data_static_M_AXI1_RID),
        .S03_AXI_rlast(slr1_axi_cdc_data_static_M_AXI1_RLAST),
        .S03_AXI_rready(slr1_axi_cdc_data_static_M_AXI1_RREADY),
        .S03_AXI_rresp(slr1_axi_cdc_data_static_M_AXI1_RRESP),
        .S03_AXI_rvalid(slr1_axi_cdc_data_static_M_AXI1_RVALID),
        .S03_AXI_wdata(slr1_axi_cdc_data_static_M_AXI1_WDATA),
        .S03_AXI_wlast(slr1_axi_cdc_data_static_M_AXI1_WLAST),
        .S03_AXI_wready(slr1_axi_cdc_data_static_M_AXI1_WREADY),
        .S03_AXI_wstrb(slr1_axi_cdc_data_static_M_AXI1_WSTRB),
        .S03_AXI_wvalid(slr1_axi_cdc_data_static_M_AXI1_WVALID));
  ulp_axi_protocol_convert_0_0 axi_protocol_convert_0
       (.aclk(clkwiz_sysclks_clk_out2_1),
        .aresetn(ii_level0_wire_ulp_m_aresetn_ctrl_00),
        .m_axi_araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .m_axi_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .m_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_protocol_convert_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .m_axi_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .m_axi_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .m_axi_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .m_axi_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .m_axi_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .m_axi_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .m_axi_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .m_axi_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_protocol_convert_0_M_AXI_WVALID),
        .s_axi_araddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARADDR),
        .s_axi_arburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARBURST),
        .s_axi_arcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARCACHE),
        .s_axi_arlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLEN),
        .s_axi_arlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLOCK),
        .s_axi_arprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b1,1'b0}),
        .s_axi_arvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARVALID),
        .s_axi_awaddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWADDR),
        .s_axi_awburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWBURST),
        .s_axi_awcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWCACHE),
        .s_axi_awlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLEN),
        .s_axi_awlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLOCK),
        .s_axi_awprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b1,1'b0}),
        .s_axi_awvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWVALID),
        .s_axi_bready(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BREADY),
        .s_axi_bresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BRESP),
        .s_axi_bvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BVALID),
        .s_axi_rdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RDATA),
        .s_axi_rlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RLAST),
        .s_axi_rready(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RREADY),
        .s_axi_rresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RRESP),
        .s_axi_rvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RVALID),
        .s_axi_wdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WDATA),
        .s_axi_wlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WLAST),
        .s_axi_wready(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WREADY),
        .s_axi_wstrb(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WSTRB),
        .s_axi_wvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WVALID));
  ulp_axi_vip_0_0 axi_vip_0
       (.aclk(clkwiz_kernel_clk_out1_1),
        .aresetn(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_vip_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_0_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_0_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_vip_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_0_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_0_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rlast(axi_vip_0_M_AXI_RLAST),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_0_M_AXI_WLAST),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  ulp_axi_vip_0_p_0 axi_vip_0_p
       (.aclk(clkwiz_kernel_clk_out1_1),
        .aresetn(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .m_axi_araddr(axi_vip_0_M_AXI_P_ARADDR),
        .m_axi_arburst(axi_vip_0_M_AXI_P_ARBURST),
        .m_axi_arcache(axi_vip_0_M_AXI_P_ARCACHE),
        .m_axi_arlen(axi_vip_0_M_AXI_P_ARLEN),
        .m_axi_arlock(axi_vip_0_M_AXI_P_ARLOCK),
        .m_axi_arprot(axi_vip_0_M_AXI_P_ARPROT),
        .m_axi_arqos(axi_vip_0_M_AXI_P_ARQOS),
        .m_axi_arready(axi_vip_0_M_AXI_P_ARREADY),
        .m_axi_arregion(axi_vip_0_M_AXI_P_ARREGION),
        .m_axi_arsize(axi_vip_0_M_AXI_P_ARSIZE),
        .m_axi_arvalid(axi_vip_0_M_AXI_P_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_P_AWADDR),
        .m_axi_awburst(axi_vip_0_M_AXI_P_AWBURST),
        .m_axi_awcache(axi_vip_0_M_AXI_P_AWCACHE),
        .m_axi_awlen(axi_vip_0_M_AXI_P_AWLEN),
        .m_axi_awlock(axi_vip_0_M_AXI_P_AWLOCK),
        .m_axi_awprot(axi_vip_0_M_AXI_P_AWPROT),
        .m_axi_awqos(axi_vip_0_M_AXI_P_AWQOS),
        .m_axi_awready(axi_vip_0_M_AXI_P_AWREADY),
        .m_axi_awregion(axi_vip_0_M_AXI_P_AWREGION),
        .m_axi_awsize(axi_vip_0_M_AXI_P_AWSIZE),
        .m_axi_awvalid(axi_vip_0_M_AXI_P_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_P_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_P_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_P_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_P_RDATA),
        .m_axi_rlast(axi_vip_0_M_AXI_P_RLAST),
        .m_axi_rready(axi_vip_0_M_AXI_P_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_P_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_P_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_P_WDATA),
        .m_axi_wlast(axi_vip_0_M_AXI_P_WLAST),
        .m_axi_wready(axi_vip_0_M_AXI_P_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_P_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_P_WVALID));
  ulp_ddr1_clk_bufg_0 ddr1_clk_bufg
       (.BUFG_I(ddr1_clk_ibufds_IBUF_OUT),
        .BUFG_O(ddr1_clk_bufg_BUFG_O));
  ulp_ddr1_clk_ibufds_0 ddr1_clk_ibufds
       (.IBUF_DS_N(io_clk_ddr_00_1_CLK_N),
        .IBUF_DS_P(io_clk_ddr_00_1_CLK_P),
        .IBUF_OUT(ddr1_clk_ibufds_IBUF_OUT));
  ulp_ddrmem_1_0 ddrmem_1
       (.c0_ddr4_act_n(ddrmem_1_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddrmem_1_C0_DDR4_ADR),
        .c0_ddr4_aresetn(psreset_ddrmem_n_1_interconnect_aresetn),
        .c0_ddr4_ba(ddrmem_1_C0_DDR4_BA),
        .c0_ddr4_bg(ddrmem_1_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddrmem_1_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddrmem_1_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddrmem_1_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddrmem_1_C0_DDR4_CS_N),
        .c0_ddr4_dm_dbi_n(io_ddr_00_dm_n[8:0]),
        .c0_ddr4_dq(io_ddr_00_dq[71:0]),
        .c0_ddr4_dqs_c(io_ddr_00_dqs_c[8:0]),
        .c0_ddr4_dqs_t(io_ddr_00_dqs_t[8:0]),
        .c0_ddr4_odt(ddrmem_1_C0_DDR4_ODT),
        .c0_ddr4_reset_n(ddrmem_1_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(axi_interconnect_1_M00_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(axi_interconnect_1_M00_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(axi_interconnect_1_M00_AXI_ARID),
        .c0_ddr4_s_axi_arlen(axi_interconnect_1_M00_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(axi_interconnect_1_M00_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(axi_interconnect_1_M00_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(axi_interconnect_1_M00_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(axi_interconnect_1_M00_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(axi_interconnect_1_M00_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(axi_interconnect_1_M00_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(axi_interconnect_1_M00_AXI_AWID),
        .c0_ddr4_s_axi_awlen(axi_interconnect_1_M00_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(axi_interconnect_1_M00_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(axi_interconnect_1_M00_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(axi_interconnect_1_M00_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(axi_interconnect_1_M00_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(axi_interconnect_1_M00_AXI_BID),
        .c0_ddr4_s_axi_bready(axi_interconnect_1_M00_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,slr1_axi_vip_ctrl_mgntpf_M_AXI_ARADDR}),
        .c0_ddr4_s_axi_ctrl_arready(slr1_axi_vip_ctrl_mgntpf_M_AXI_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(slr1_axi_vip_ctrl_mgntpf_M_AXI_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,slr1_axi_vip_ctrl_mgntpf_M_AXI_AWADDR}),
        .c0_ddr4_s_axi_ctrl_awready(slr1_axi_vip_ctrl_mgntpf_M_AXI_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(slr1_axi_vip_ctrl_mgntpf_M_AXI_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(slr1_axi_vip_ctrl_mgntpf_M_AXI_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(slr1_axi_vip_ctrl_mgntpf_M_AXI_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(slr1_axi_vip_ctrl_mgntpf_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(slr1_axi_vip_ctrl_mgntpf_M_AXI_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(slr1_axi_vip_ctrl_mgntpf_M_AXI_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(slr1_axi_vip_ctrl_mgntpf_M_AXI_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(slr1_axi_vip_ctrl_mgntpf_M_AXI_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(slr1_axi_vip_ctrl_mgntpf_M_AXI_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(slr1_axi_vip_ctrl_mgntpf_M_AXI_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(slr1_axi_vip_ctrl_mgntpf_M_AXI_WVALID),
        .c0_ddr4_s_axi_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .c0_ddr4_s_axi_rid(axi_interconnect_1_M00_AXI_RID),
        .c0_ddr4_s_axi_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .c0_ddr4_s_axi_rready(axi_interconnect_1_M00_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .c0_ddr4_s_axi_wready(axi_interconnect_1_M00_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .c0_ddr4_ui_clk(M00_ACLK_1),
        .c0_ddr4_ui_clk_sync_rst(ddrmem_1_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(aux_reset_in_1),
        .c0_sys_clk_i(ddr1_clk_bufg_BUFG_O),
        .sys_rst(slr1_logic_reset_op_Res));
  ulp_debug_bridge_xsdbm_0 debug_bridge_xsdbm
       (.S_BSCAN_bscanid_en(user_debug_bridge_m0_bscan_BSCANID_EN),
        .S_BSCAN_capture(user_debug_bridge_m0_bscan_CAPTURE),
        .S_BSCAN_drck(user_debug_bridge_m0_bscan_DRCK),
        .S_BSCAN_reset(user_debug_bridge_m0_bscan_RESET),
        .S_BSCAN_runtest(user_debug_bridge_m0_bscan_RUNTEST),
        .S_BSCAN_sel(user_debug_bridge_m0_bscan_SEL),
        .S_BSCAN_shift(user_debug_bridge_m0_bscan_SHIFT),
        .S_BSCAN_tck(user_debug_bridge_m0_bscan_TCK),
        .S_BSCAN_tdi(user_debug_bridge_m0_bscan_TDI),
        .S_BSCAN_tdo(user_debug_bridge_m0_bscan_TDO),
        .S_BSCAN_tms(user_debug_bridge_m0_bscan_TMS),
        .S_BSCAN_update(user_debug_bridge_m0_bscan_UPDATE),
        .clk(clkwiz_sysclks_clk_out2_1));
  ulp_fpga_dna_module_0_0 fpga_dna_module_0
       (.dna_dyn_data_dout(1'b0),
        .s_axi_lite_aclk(clkwiz_sysclks_clk_out2_1),
        .s_axi_lite_araddr(slr1_M01_AXI1_ARADDR[11:0]),
        .s_axi_lite_aresetn(slr1_psreset_gate_pr_control_interconnect_aresetn),
        .s_axi_lite_arready(slr1_M01_AXI1_ARREADY),
        .s_axi_lite_arvalid(slr1_M01_AXI1_ARVALID),
        .s_axi_lite_awaddr(slr1_M01_AXI1_AWADDR[11:0]),
        .s_axi_lite_awready(slr1_M01_AXI1_AWREADY),
        .s_axi_lite_awvalid(slr1_M01_AXI1_AWVALID),
        .s_axi_lite_bready(slr1_M01_AXI1_BREADY),
        .s_axi_lite_bresp(slr1_M01_AXI1_BRESP),
        .s_axi_lite_bvalid(slr1_M01_AXI1_BVALID),
        .s_axi_lite_rdata(slr1_M01_AXI1_RDATA),
        .s_axi_lite_rready(slr1_M01_AXI1_RREADY),
        .s_axi_lite_rresp(slr1_M01_AXI1_RRESP),
        .s_axi_lite_rvalid(slr1_M01_AXI1_RVALID),
        .s_axi_lite_wdata(slr1_M01_AXI1_WDATA),
        .s_axi_lite_wready(slr1_M01_AXI1_WREADY),
        .s_axi_lite_wstrb(slr1_M01_AXI1_WSTRB),
        .s_axi_lite_wvalid(slr1_M01_AXI1_WVALID));
  ulp_ii_level0_wire_0 ii_level0_wire
       (.BLP_S_AXI_CTRL_USER_00_araddr(BLP_S_AXI_CTRL_USER_00_1_ARADDR),
        .BLP_S_AXI_CTRL_USER_00_arprot(BLP_S_AXI_CTRL_USER_00_1_ARPROT),
        .BLP_S_AXI_CTRL_USER_00_arready(BLP_S_AXI_CTRL_USER_00_1_ARREADY),
        .BLP_S_AXI_CTRL_USER_00_arvalid(BLP_S_AXI_CTRL_USER_00_1_ARVALID),
        .BLP_S_AXI_CTRL_USER_00_awaddr(BLP_S_AXI_CTRL_USER_00_1_AWADDR),
        .BLP_S_AXI_CTRL_USER_00_awprot(BLP_S_AXI_CTRL_USER_00_1_AWPROT),
        .BLP_S_AXI_CTRL_USER_00_awready(BLP_S_AXI_CTRL_USER_00_1_AWREADY),
        .BLP_S_AXI_CTRL_USER_00_awvalid(BLP_S_AXI_CTRL_USER_00_1_AWVALID),
        .BLP_S_AXI_CTRL_USER_00_bready(BLP_S_AXI_CTRL_USER_00_1_BREADY),
        .BLP_S_AXI_CTRL_USER_00_bresp(BLP_S_AXI_CTRL_USER_00_1_BRESP),
        .BLP_S_AXI_CTRL_USER_00_bvalid(BLP_S_AXI_CTRL_USER_00_1_BVALID),
        .BLP_S_AXI_CTRL_USER_00_rdata(BLP_S_AXI_CTRL_USER_00_1_RDATA),
        .BLP_S_AXI_CTRL_USER_00_rready(BLP_S_AXI_CTRL_USER_00_1_RREADY),
        .BLP_S_AXI_CTRL_USER_00_rresp(BLP_S_AXI_CTRL_USER_00_1_RRESP),
        .BLP_S_AXI_CTRL_USER_00_rvalid(BLP_S_AXI_CTRL_USER_00_1_RVALID),
        .BLP_S_AXI_CTRL_USER_00_wdata(BLP_S_AXI_CTRL_USER_00_1_WDATA),
        .BLP_S_AXI_CTRL_USER_00_wready(BLP_S_AXI_CTRL_USER_00_1_WREADY),
        .BLP_S_AXI_CTRL_USER_00_wstrb(BLP_S_AXI_CTRL_USER_00_1_WSTRB),
        .BLP_S_AXI_CTRL_USER_00_wvalid(BLP_S_AXI_CTRL_USER_00_1_WVALID),
        .BLP_S_AXI_CTRL_USER_01_araddr(BLP_S_AXI_CTRL_USER_01_1_ARADDR),
        .BLP_S_AXI_CTRL_USER_01_arprot(BLP_S_AXI_CTRL_USER_01_1_ARPROT),
        .BLP_S_AXI_CTRL_USER_01_arready(BLP_S_AXI_CTRL_USER_01_1_ARREADY),
        .BLP_S_AXI_CTRL_USER_01_arvalid(BLP_S_AXI_CTRL_USER_01_1_ARVALID),
        .BLP_S_AXI_CTRL_USER_01_awaddr(BLP_S_AXI_CTRL_USER_01_1_AWADDR),
        .BLP_S_AXI_CTRL_USER_01_awprot(BLP_S_AXI_CTRL_USER_01_1_AWPROT),
        .BLP_S_AXI_CTRL_USER_01_awready(BLP_S_AXI_CTRL_USER_01_1_AWREADY),
        .BLP_S_AXI_CTRL_USER_01_awvalid(BLP_S_AXI_CTRL_USER_01_1_AWVALID),
        .BLP_S_AXI_CTRL_USER_01_bready(BLP_S_AXI_CTRL_USER_01_1_BREADY),
        .BLP_S_AXI_CTRL_USER_01_bresp(BLP_S_AXI_CTRL_USER_01_1_BRESP),
        .BLP_S_AXI_CTRL_USER_01_bvalid(BLP_S_AXI_CTRL_USER_01_1_BVALID),
        .BLP_S_AXI_CTRL_USER_01_rdata(BLP_S_AXI_CTRL_USER_01_1_RDATA),
        .BLP_S_AXI_CTRL_USER_01_rready(BLP_S_AXI_CTRL_USER_01_1_RREADY),
        .BLP_S_AXI_CTRL_USER_01_rresp(BLP_S_AXI_CTRL_USER_01_1_RRESP),
        .BLP_S_AXI_CTRL_USER_01_rvalid(BLP_S_AXI_CTRL_USER_01_1_RVALID),
        .BLP_S_AXI_CTRL_USER_01_wdata(BLP_S_AXI_CTRL_USER_01_1_WDATA),
        .BLP_S_AXI_CTRL_USER_01_wready(BLP_S_AXI_CTRL_USER_01_1_WREADY),
        .BLP_S_AXI_CTRL_USER_01_wstrb(BLP_S_AXI_CTRL_USER_01_1_WSTRB),
        .BLP_S_AXI_CTRL_USER_01_wvalid(BLP_S_AXI_CTRL_USER_01_1_WVALID),
        .BLP_S_AXI_CTRL_USER_02_araddr(BLP_S_AXI_CTRL_USER_02_1_ARADDR),
        .BLP_S_AXI_CTRL_USER_02_arprot(BLP_S_AXI_CTRL_USER_02_1_ARPROT),
        .BLP_S_AXI_CTRL_USER_02_arready(BLP_S_AXI_CTRL_USER_02_1_ARREADY),
        .BLP_S_AXI_CTRL_USER_02_arvalid(BLP_S_AXI_CTRL_USER_02_1_ARVALID),
        .BLP_S_AXI_CTRL_USER_02_awaddr(BLP_S_AXI_CTRL_USER_02_1_AWADDR),
        .BLP_S_AXI_CTRL_USER_02_awprot(BLP_S_AXI_CTRL_USER_02_1_AWPROT),
        .BLP_S_AXI_CTRL_USER_02_awready(BLP_S_AXI_CTRL_USER_02_1_AWREADY),
        .BLP_S_AXI_CTRL_USER_02_awvalid(BLP_S_AXI_CTRL_USER_02_1_AWVALID),
        .BLP_S_AXI_CTRL_USER_02_bready(BLP_S_AXI_CTRL_USER_02_1_BREADY),
        .BLP_S_AXI_CTRL_USER_02_bresp(BLP_S_AXI_CTRL_USER_02_1_BRESP),
        .BLP_S_AXI_CTRL_USER_02_bvalid(BLP_S_AXI_CTRL_USER_02_1_BVALID),
        .BLP_S_AXI_CTRL_USER_02_rdata(BLP_S_AXI_CTRL_USER_02_1_RDATA),
        .BLP_S_AXI_CTRL_USER_02_rready(BLP_S_AXI_CTRL_USER_02_1_RREADY),
        .BLP_S_AXI_CTRL_USER_02_rresp(BLP_S_AXI_CTRL_USER_02_1_RRESP),
        .BLP_S_AXI_CTRL_USER_02_rvalid(BLP_S_AXI_CTRL_USER_02_1_RVALID),
        .BLP_S_AXI_CTRL_USER_02_wdata(BLP_S_AXI_CTRL_USER_02_1_WDATA),
        .BLP_S_AXI_CTRL_USER_02_wready(BLP_S_AXI_CTRL_USER_02_1_WREADY),
        .BLP_S_AXI_CTRL_USER_02_wstrb(BLP_S_AXI_CTRL_USER_02_1_WSTRB),
        .BLP_S_AXI_CTRL_USER_02_wvalid(BLP_S_AXI_CTRL_USER_02_1_WVALID),
        .BLP_S_AXI_DATA_H2C_00_araddr(BLP_S_AXI_DATA_H2C_00_1_ARADDR),
        .BLP_S_AXI_DATA_H2C_00_arburst(BLP_S_AXI_DATA_H2C_00_1_ARBURST),
        .BLP_S_AXI_DATA_H2C_00_arcache(BLP_S_AXI_DATA_H2C_00_1_ARCACHE),
        .BLP_S_AXI_DATA_H2C_00_arid(BLP_S_AXI_DATA_H2C_00_1_ARID),
        .BLP_S_AXI_DATA_H2C_00_arlen(BLP_S_AXI_DATA_H2C_00_1_ARLEN),
        .BLP_S_AXI_DATA_H2C_00_arlock(BLP_S_AXI_DATA_H2C_00_1_ARLOCK),
        .BLP_S_AXI_DATA_H2C_00_arprot(BLP_S_AXI_DATA_H2C_00_1_ARPROT),
        .BLP_S_AXI_DATA_H2C_00_arready(BLP_S_AXI_DATA_H2C_00_1_ARREADY),
        .BLP_S_AXI_DATA_H2C_00_arvalid(BLP_S_AXI_DATA_H2C_00_1_ARVALID),
        .BLP_S_AXI_DATA_H2C_00_awaddr(BLP_S_AXI_DATA_H2C_00_1_AWADDR),
        .BLP_S_AXI_DATA_H2C_00_awburst(BLP_S_AXI_DATA_H2C_00_1_AWBURST),
        .BLP_S_AXI_DATA_H2C_00_awcache(BLP_S_AXI_DATA_H2C_00_1_AWCACHE),
        .BLP_S_AXI_DATA_H2C_00_awid(BLP_S_AXI_DATA_H2C_00_1_AWID),
        .BLP_S_AXI_DATA_H2C_00_awlen(BLP_S_AXI_DATA_H2C_00_1_AWLEN),
        .BLP_S_AXI_DATA_H2C_00_awlock(BLP_S_AXI_DATA_H2C_00_1_AWLOCK),
        .BLP_S_AXI_DATA_H2C_00_awprot(BLP_S_AXI_DATA_H2C_00_1_AWPROT),
        .BLP_S_AXI_DATA_H2C_00_awready(BLP_S_AXI_DATA_H2C_00_1_AWREADY),
        .BLP_S_AXI_DATA_H2C_00_awvalid(BLP_S_AXI_DATA_H2C_00_1_AWVALID),
        .BLP_S_AXI_DATA_H2C_00_bid(BLP_S_AXI_DATA_H2C_00_1_BID),
        .BLP_S_AXI_DATA_H2C_00_bready(BLP_S_AXI_DATA_H2C_00_1_BREADY),
        .BLP_S_AXI_DATA_H2C_00_bresp(BLP_S_AXI_DATA_H2C_00_1_BRESP),
        .BLP_S_AXI_DATA_H2C_00_bvalid(BLP_S_AXI_DATA_H2C_00_1_BVALID),
        .BLP_S_AXI_DATA_H2C_00_rdata(BLP_S_AXI_DATA_H2C_00_1_RDATA),
        .BLP_S_AXI_DATA_H2C_00_rid(BLP_S_AXI_DATA_H2C_00_1_RID),
        .BLP_S_AXI_DATA_H2C_00_rlast(BLP_S_AXI_DATA_H2C_00_1_RLAST),
        .BLP_S_AXI_DATA_H2C_00_rready(BLP_S_AXI_DATA_H2C_00_1_RREADY),
        .BLP_S_AXI_DATA_H2C_00_rresp(BLP_S_AXI_DATA_H2C_00_1_RRESP),
        .BLP_S_AXI_DATA_H2C_00_rvalid(BLP_S_AXI_DATA_H2C_00_1_RVALID),
        .BLP_S_AXI_DATA_H2C_00_wdata(BLP_S_AXI_DATA_H2C_00_1_WDATA),
        .BLP_S_AXI_DATA_H2C_00_wlast(BLP_S_AXI_DATA_H2C_00_1_WLAST),
        .BLP_S_AXI_DATA_H2C_00_wready(BLP_S_AXI_DATA_H2C_00_1_WREADY),
        .BLP_S_AXI_DATA_H2C_00_wstrb(BLP_S_AXI_DATA_H2C_00_1_WSTRB),
        .BLP_S_AXI_DATA_H2C_00_wvalid(BLP_S_AXI_DATA_H2C_00_1_WVALID),
        .BLP_S_AXI_DATA_H2C_01_araddr(BLP_S_AXI_DATA_H2C_01_1_ARADDR),
        .BLP_S_AXI_DATA_H2C_01_arburst(BLP_S_AXI_DATA_H2C_01_1_ARBURST),
        .BLP_S_AXI_DATA_H2C_01_arcache(BLP_S_AXI_DATA_H2C_01_1_ARCACHE),
        .BLP_S_AXI_DATA_H2C_01_arid(BLP_S_AXI_DATA_H2C_01_1_ARID),
        .BLP_S_AXI_DATA_H2C_01_arlen(BLP_S_AXI_DATA_H2C_01_1_ARLEN),
        .BLP_S_AXI_DATA_H2C_01_arlock(BLP_S_AXI_DATA_H2C_01_1_ARLOCK),
        .BLP_S_AXI_DATA_H2C_01_arprot(BLP_S_AXI_DATA_H2C_01_1_ARPROT),
        .BLP_S_AXI_DATA_H2C_01_arready(BLP_S_AXI_DATA_H2C_01_1_ARREADY),
        .BLP_S_AXI_DATA_H2C_01_arvalid(BLP_S_AXI_DATA_H2C_01_1_ARVALID),
        .BLP_S_AXI_DATA_H2C_01_awaddr(BLP_S_AXI_DATA_H2C_01_1_AWADDR),
        .BLP_S_AXI_DATA_H2C_01_awburst(BLP_S_AXI_DATA_H2C_01_1_AWBURST),
        .BLP_S_AXI_DATA_H2C_01_awcache(BLP_S_AXI_DATA_H2C_01_1_AWCACHE),
        .BLP_S_AXI_DATA_H2C_01_awid(BLP_S_AXI_DATA_H2C_01_1_AWID),
        .BLP_S_AXI_DATA_H2C_01_awlen(BLP_S_AXI_DATA_H2C_01_1_AWLEN),
        .BLP_S_AXI_DATA_H2C_01_awlock(BLP_S_AXI_DATA_H2C_01_1_AWLOCK),
        .BLP_S_AXI_DATA_H2C_01_awprot(BLP_S_AXI_DATA_H2C_01_1_AWPROT),
        .BLP_S_AXI_DATA_H2C_01_awready(BLP_S_AXI_DATA_H2C_01_1_AWREADY),
        .BLP_S_AXI_DATA_H2C_01_awvalid(BLP_S_AXI_DATA_H2C_01_1_AWVALID),
        .BLP_S_AXI_DATA_H2C_01_bid(BLP_S_AXI_DATA_H2C_01_1_BID),
        .BLP_S_AXI_DATA_H2C_01_bready(BLP_S_AXI_DATA_H2C_01_1_BREADY),
        .BLP_S_AXI_DATA_H2C_01_bresp(BLP_S_AXI_DATA_H2C_01_1_BRESP),
        .BLP_S_AXI_DATA_H2C_01_bvalid(BLP_S_AXI_DATA_H2C_01_1_BVALID),
        .BLP_S_AXI_DATA_H2C_01_rdata(BLP_S_AXI_DATA_H2C_01_1_RDATA),
        .BLP_S_AXI_DATA_H2C_01_rid(BLP_S_AXI_DATA_H2C_01_1_RID),
        .BLP_S_AXI_DATA_H2C_01_rlast(BLP_S_AXI_DATA_H2C_01_1_RLAST),
        .BLP_S_AXI_DATA_H2C_01_rready(BLP_S_AXI_DATA_H2C_01_1_RREADY),
        .BLP_S_AXI_DATA_H2C_01_rresp(BLP_S_AXI_DATA_H2C_01_1_RRESP),
        .BLP_S_AXI_DATA_H2C_01_rvalid(BLP_S_AXI_DATA_H2C_01_1_RVALID),
        .BLP_S_AXI_DATA_H2C_01_wdata(BLP_S_AXI_DATA_H2C_01_1_WDATA),
        .BLP_S_AXI_DATA_H2C_01_wlast(BLP_S_AXI_DATA_H2C_01_1_WLAST),
        .BLP_S_AXI_DATA_H2C_01_wready(BLP_S_AXI_DATA_H2C_01_1_WREADY),
        .BLP_S_AXI_DATA_H2C_01_wstrb(BLP_S_AXI_DATA_H2C_01_1_WSTRB),
        .BLP_S_AXI_DATA_H2C_01_wvalid(BLP_S_AXI_DATA_H2C_01_1_WVALID),
        .BLP_S_AXI_DATA_H2C_02_araddr(BLP_S_AXI_DATA_H2C_02_1_ARADDR),
        .BLP_S_AXI_DATA_H2C_02_arburst(BLP_S_AXI_DATA_H2C_02_1_ARBURST),
        .BLP_S_AXI_DATA_H2C_02_arcache(BLP_S_AXI_DATA_H2C_02_1_ARCACHE),
        .BLP_S_AXI_DATA_H2C_02_arlen(BLP_S_AXI_DATA_H2C_02_1_ARLEN),
        .BLP_S_AXI_DATA_H2C_02_arlock(BLP_S_AXI_DATA_H2C_02_1_ARLOCK),
        .BLP_S_AXI_DATA_H2C_02_arprot(BLP_S_AXI_DATA_H2C_02_1_ARPROT),
        .BLP_S_AXI_DATA_H2C_02_arready(BLP_S_AXI_DATA_H2C_02_1_ARREADY),
        .BLP_S_AXI_DATA_H2C_02_arvalid(BLP_S_AXI_DATA_H2C_02_1_ARVALID),
        .BLP_S_AXI_DATA_H2C_02_awaddr(BLP_S_AXI_DATA_H2C_02_1_AWADDR),
        .BLP_S_AXI_DATA_H2C_02_awburst(BLP_S_AXI_DATA_H2C_02_1_AWBURST),
        .BLP_S_AXI_DATA_H2C_02_awcache(BLP_S_AXI_DATA_H2C_02_1_AWCACHE),
        .BLP_S_AXI_DATA_H2C_02_awlen(BLP_S_AXI_DATA_H2C_02_1_AWLEN),
        .BLP_S_AXI_DATA_H2C_02_awlock(BLP_S_AXI_DATA_H2C_02_1_AWLOCK),
        .BLP_S_AXI_DATA_H2C_02_awprot(BLP_S_AXI_DATA_H2C_02_1_AWPROT),
        .BLP_S_AXI_DATA_H2C_02_awready(BLP_S_AXI_DATA_H2C_02_1_AWREADY),
        .BLP_S_AXI_DATA_H2C_02_awvalid(BLP_S_AXI_DATA_H2C_02_1_AWVALID),
        .BLP_S_AXI_DATA_H2C_02_bready(BLP_S_AXI_DATA_H2C_02_1_BREADY),
        .BLP_S_AXI_DATA_H2C_02_bresp(BLP_S_AXI_DATA_H2C_02_1_BRESP),
        .BLP_S_AXI_DATA_H2C_02_bvalid(BLP_S_AXI_DATA_H2C_02_1_BVALID),
        .BLP_S_AXI_DATA_H2C_02_rdata(BLP_S_AXI_DATA_H2C_02_1_RDATA),
        .BLP_S_AXI_DATA_H2C_02_rlast(BLP_S_AXI_DATA_H2C_02_1_RLAST),
        .BLP_S_AXI_DATA_H2C_02_rready(BLP_S_AXI_DATA_H2C_02_1_RREADY),
        .BLP_S_AXI_DATA_H2C_02_rresp(BLP_S_AXI_DATA_H2C_02_1_RRESP),
        .BLP_S_AXI_DATA_H2C_02_rvalid(BLP_S_AXI_DATA_H2C_02_1_RVALID),
        .BLP_S_AXI_DATA_H2C_02_wdata(BLP_S_AXI_DATA_H2C_02_1_WDATA),
        .BLP_S_AXI_DATA_H2C_02_wlast(BLP_S_AXI_DATA_H2C_02_1_WLAST),
        .BLP_S_AXI_DATA_H2C_02_wready(BLP_S_AXI_DATA_H2C_02_1_WREADY),
        .BLP_S_AXI_DATA_H2C_02_wstrb(BLP_S_AXI_DATA_H2C_02_1_WSTRB),
        .BLP_S_AXI_DATA_H2C_02_wvalid(BLP_S_AXI_DATA_H2C_02_1_WVALID),
        .BLP_S_AXI_DATA_H2C_03_araddr(BLP_S_AXI_DATA_H2C_03_1_ARADDR),
        .BLP_S_AXI_DATA_H2C_03_arburst(BLP_S_AXI_DATA_H2C_03_1_ARBURST),
        .BLP_S_AXI_DATA_H2C_03_arcache(BLP_S_AXI_DATA_H2C_03_1_ARCACHE),
        .BLP_S_AXI_DATA_H2C_03_arid(BLP_S_AXI_DATA_H2C_03_1_ARID),
        .BLP_S_AXI_DATA_H2C_03_arlen(BLP_S_AXI_DATA_H2C_03_1_ARLEN),
        .BLP_S_AXI_DATA_H2C_03_arlock(BLP_S_AXI_DATA_H2C_03_1_ARLOCK),
        .BLP_S_AXI_DATA_H2C_03_arprot(BLP_S_AXI_DATA_H2C_03_1_ARPROT),
        .BLP_S_AXI_DATA_H2C_03_arready(BLP_S_AXI_DATA_H2C_03_1_ARREADY),
        .BLP_S_AXI_DATA_H2C_03_arvalid(BLP_S_AXI_DATA_H2C_03_1_ARVALID),
        .BLP_S_AXI_DATA_H2C_03_awaddr(BLP_S_AXI_DATA_H2C_03_1_AWADDR),
        .BLP_S_AXI_DATA_H2C_03_awburst(BLP_S_AXI_DATA_H2C_03_1_AWBURST),
        .BLP_S_AXI_DATA_H2C_03_awcache(BLP_S_AXI_DATA_H2C_03_1_AWCACHE),
        .BLP_S_AXI_DATA_H2C_03_awid(BLP_S_AXI_DATA_H2C_03_1_AWID),
        .BLP_S_AXI_DATA_H2C_03_awlen(BLP_S_AXI_DATA_H2C_03_1_AWLEN),
        .BLP_S_AXI_DATA_H2C_03_awlock(BLP_S_AXI_DATA_H2C_03_1_AWLOCK),
        .BLP_S_AXI_DATA_H2C_03_awprot(BLP_S_AXI_DATA_H2C_03_1_AWPROT),
        .BLP_S_AXI_DATA_H2C_03_awready(BLP_S_AXI_DATA_H2C_03_1_AWREADY),
        .BLP_S_AXI_DATA_H2C_03_awvalid(BLP_S_AXI_DATA_H2C_03_1_AWVALID),
        .BLP_S_AXI_DATA_H2C_03_bid(BLP_S_AXI_DATA_H2C_03_1_BID),
        .BLP_S_AXI_DATA_H2C_03_bready(BLP_S_AXI_DATA_H2C_03_1_BREADY),
        .BLP_S_AXI_DATA_H2C_03_bresp(BLP_S_AXI_DATA_H2C_03_1_BRESP),
        .BLP_S_AXI_DATA_H2C_03_bvalid(BLP_S_AXI_DATA_H2C_03_1_BVALID),
        .BLP_S_AXI_DATA_H2C_03_rdata(BLP_S_AXI_DATA_H2C_03_1_RDATA),
        .BLP_S_AXI_DATA_H2C_03_rid(BLP_S_AXI_DATA_H2C_03_1_RID),
        .BLP_S_AXI_DATA_H2C_03_rlast(BLP_S_AXI_DATA_H2C_03_1_RLAST),
        .BLP_S_AXI_DATA_H2C_03_rready(BLP_S_AXI_DATA_H2C_03_1_RREADY),
        .BLP_S_AXI_DATA_H2C_03_rresp(BLP_S_AXI_DATA_H2C_03_1_RRESP),
        .BLP_S_AXI_DATA_H2C_03_rvalid(BLP_S_AXI_DATA_H2C_03_1_RVALID),
        .BLP_S_AXI_DATA_H2C_03_wdata(BLP_S_AXI_DATA_H2C_03_1_WDATA),
        .BLP_S_AXI_DATA_H2C_03_wlast(BLP_S_AXI_DATA_H2C_03_1_WLAST),
        .BLP_S_AXI_DATA_H2C_03_wready(BLP_S_AXI_DATA_H2C_03_1_WREADY),
        .BLP_S_AXI_DATA_H2C_03_wstrb(BLP_S_AXI_DATA_H2C_03_1_WSTRB),
        .BLP_S_AXI_DATA_H2C_03_wvalid(BLP_S_AXI_DATA_H2C_03_1_WVALID),
        .ULP_M_AXI_CTRL_USER_00_araddr(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARADDR),
        .ULP_M_AXI_CTRL_USER_00_arprot(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARPROT),
        .ULP_M_AXI_CTRL_USER_00_arready(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARREADY),
        .ULP_M_AXI_CTRL_USER_00_arvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARVALID),
        .ULP_M_AXI_CTRL_USER_00_awaddr(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWADDR),
        .ULP_M_AXI_CTRL_USER_00_awprot(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWPROT),
        .ULP_M_AXI_CTRL_USER_00_awready(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWREADY),
        .ULP_M_AXI_CTRL_USER_00_awvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWVALID),
        .ULP_M_AXI_CTRL_USER_00_bready(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BREADY),
        .ULP_M_AXI_CTRL_USER_00_bresp(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BRESP),
        .ULP_M_AXI_CTRL_USER_00_bvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BVALID),
        .ULP_M_AXI_CTRL_USER_00_rdata(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RDATA),
        .ULP_M_AXI_CTRL_USER_00_rready(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RREADY),
        .ULP_M_AXI_CTRL_USER_00_rresp(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RRESP),
        .ULP_M_AXI_CTRL_USER_00_rvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RVALID),
        .ULP_M_AXI_CTRL_USER_00_wdata(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WDATA),
        .ULP_M_AXI_CTRL_USER_00_wready(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WREADY),
        .ULP_M_AXI_CTRL_USER_00_wstrb(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WSTRB),
        .ULP_M_AXI_CTRL_USER_00_wvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WVALID),
        .ULP_M_AXI_CTRL_USER_01_araddr(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARADDR),
        .ULP_M_AXI_CTRL_USER_01_arprot(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARPROT),
        .ULP_M_AXI_CTRL_USER_01_arready(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARREADY),
        .ULP_M_AXI_CTRL_USER_01_arvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARVALID),
        .ULP_M_AXI_CTRL_USER_01_awaddr(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWADDR),
        .ULP_M_AXI_CTRL_USER_01_awprot(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWPROT),
        .ULP_M_AXI_CTRL_USER_01_awready(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWREADY),
        .ULP_M_AXI_CTRL_USER_01_awvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWVALID),
        .ULP_M_AXI_CTRL_USER_01_bready(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BREADY),
        .ULP_M_AXI_CTRL_USER_01_bresp(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BRESP),
        .ULP_M_AXI_CTRL_USER_01_bvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BVALID),
        .ULP_M_AXI_CTRL_USER_01_rdata(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RDATA),
        .ULP_M_AXI_CTRL_USER_01_rready(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RREADY),
        .ULP_M_AXI_CTRL_USER_01_rresp(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RRESP),
        .ULP_M_AXI_CTRL_USER_01_rvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RVALID),
        .ULP_M_AXI_CTRL_USER_01_wdata(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WDATA),
        .ULP_M_AXI_CTRL_USER_01_wready(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WREADY),
        .ULP_M_AXI_CTRL_USER_01_wstrb(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WSTRB),
        .ULP_M_AXI_CTRL_USER_01_wvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WVALID),
        .ULP_M_AXI_CTRL_USER_02_araddr(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARADDR),
        .ULP_M_AXI_CTRL_USER_02_arprot(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARPROT),
        .ULP_M_AXI_CTRL_USER_02_arready(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARREADY),
        .ULP_M_AXI_CTRL_USER_02_arvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARVALID),
        .ULP_M_AXI_CTRL_USER_02_awaddr(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWADDR),
        .ULP_M_AXI_CTRL_USER_02_awprot(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWPROT),
        .ULP_M_AXI_CTRL_USER_02_awready(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWREADY),
        .ULP_M_AXI_CTRL_USER_02_awvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWVALID),
        .ULP_M_AXI_CTRL_USER_02_bready(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BREADY),
        .ULP_M_AXI_CTRL_USER_02_bresp(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BRESP),
        .ULP_M_AXI_CTRL_USER_02_bvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BVALID),
        .ULP_M_AXI_CTRL_USER_02_rdata(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RDATA),
        .ULP_M_AXI_CTRL_USER_02_rready(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RREADY),
        .ULP_M_AXI_CTRL_USER_02_rresp(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RRESP),
        .ULP_M_AXI_CTRL_USER_02_rvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RVALID),
        .ULP_M_AXI_CTRL_USER_02_wdata(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WDATA),
        .ULP_M_AXI_CTRL_USER_02_wready(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WREADY),
        .ULP_M_AXI_CTRL_USER_02_wstrb(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WSTRB),
        .ULP_M_AXI_CTRL_USER_02_wvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WVALID),
        .ULP_M_AXI_DATA_H2C_00_araddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARADDR),
        .ULP_M_AXI_DATA_H2C_00_arburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARBURST),
        .ULP_M_AXI_DATA_H2C_00_arcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARCACHE),
        .ULP_M_AXI_DATA_H2C_00_arid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARID),
        .ULP_M_AXI_DATA_H2C_00_arlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLEN),
        .ULP_M_AXI_DATA_H2C_00_arlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLOCK),
        .ULP_M_AXI_DATA_H2C_00_arprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARPROT),
        .ULP_M_AXI_DATA_H2C_00_arready(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARREADY),
        .ULP_M_AXI_DATA_H2C_00_arvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARVALID),
        .ULP_M_AXI_DATA_H2C_00_awaddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWADDR),
        .ULP_M_AXI_DATA_H2C_00_awburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWBURST),
        .ULP_M_AXI_DATA_H2C_00_awcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWCACHE),
        .ULP_M_AXI_DATA_H2C_00_awid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWID),
        .ULP_M_AXI_DATA_H2C_00_awlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLEN),
        .ULP_M_AXI_DATA_H2C_00_awlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLOCK),
        .ULP_M_AXI_DATA_H2C_00_awprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWPROT),
        .ULP_M_AXI_DATA_H2C_00_awready(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWREADY),
        .ULP_M_AXI_DATA_H2C_00_awvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWVALID),
        .ULP_M_AXI_DATA_H2C_00_bid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BID),
        .ULP_M_AXI_DATA_H2C_00_bready(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BREADY),
        .ULP_M_AXI_DATA_H2C_00_bresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BRESP),
        .ULP_M_AXI_DATA_H2C_00_bvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BVALID),
        .ULP_M_AXI_DATA_H2C_00_rdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RDATA),
        .ULP_M_AXI_DATA_H2C_00_rid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RID),
        .ULP_M_AXI_DATA_H2C_00_rlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RLAST),
        .ULP_M_AXI_DATA_H2C_00_rready(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RREADY),
        .ULP_M_AXI_DATA_H2C_00_rresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RRESP),
        .ULP_M_AXI_DATA_H2C_00_rvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RVALID),
        .ULP_M_AXI_DATA_H2C_00_wdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WDATA),
        .ULP_M_AXI_DATA_H2C_00_wlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WLAST),
        .ULP_M_AXI_DATA_H2C_00_wready(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WREADY),
        .ULP_M_AXI_DATA_H2C_00_wstrb(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WSTRB),
        .ULP_M_AXI_DATA_H2C_00_wvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WVALID),
        .ULP_M_AXI_DATA_H2C_01_araddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARADDR),
        .ULP_M_AXI_DATA_H2C_01_arburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARBURST),
        .ULP_M_AXI_DATA_H2C_01_arcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARCACHE),
        .ULP_M_AXI_DATA_H2C_01_arid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARID),
        .ULP_M_AXI_DATA_H2C_01_arlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLEN),
        .ULP_M_AXI_DATA_H2C_01_arlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLOCK),
        .ULP_M_AXI_DATA_H2C_01_arprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARPROT),
        .ULP_M_AXI_DATA_H2C_01_arready(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARREADY),
        .ULP_M_AXI_DATA_H2C_01_arvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARVALID),
        .ULP_M_AXI_DATA_H2C_01_awaddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWADDR),
        .ULP_M_AXI_DATA_H2C_01_awburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWBURST),
        .ULP_M_AXI_DATA_H2C_01_awcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWCACHE),
        .ULP_M_AXI_DATA_H2C_01_awid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWID),
        .ULP_M_AXI_DATA_H2C_01_awlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLEN),
        .ULP_M_AXI_DATA_H2C_01_awlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLOCK),
        .ULP_M_AXI_DATA_H2C_01_awprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWPROT),
        .ULP_M_AXI_DATA_H2C_01_awready(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWREADY),
        .ULP_M_AXI_DATA_H2C_01_awvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWVALID),
        .ULP_M_AXI_DATA_H2C_01_bid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BID),
        .ULP_M_AXI_DATA_H2C_01_bready(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BREADY),
        .ULP_M_AXI_DATA_H2C_01_bresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BRESP),
        .ULP_M_AXI_DATA_H2C_01_bvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BVALID),
        .ULP_M_AXI_DATA_H2C_01_rdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RDATA),
        .ULP_M_AXI_DATA_H2C_01_rid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RID),
        .ULP_M_AXI_DATA_H2C_01_rlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RLAST),
        .ULP_M_AXI_DATA_H2C_01_rready(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RREADY),
        .ULP_M_AXI_DATA_H2C_01_rresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RRESP),
        .ULP_M_AXI_DATA_H2C_01_rvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RVALID),
        .ULP_M_AXI_DATA_H2C_01_wdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WDATA),
        .ULP_M_AXI_DATA_H2C_01_wlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WLAST),
        .ULP_M_AXI_DATA_H2C_01_wready(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WREADY),
        .ULP_M_AXI_DATA_H2C_01_wstrb(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WSTRB),
        .ULP_M_AXI_DATA_H2C_01_wvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WVALID),
        .ULP_M_AXI_DATA_H2C_02_araddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARADDR),
        .ULP_M_AXI_DATA_H2C_02_arburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARBURST),
        .ULP_M_AXI_DATA_H2C_02_arcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARCACHE),
        .ULP_M_AXI_DATA_H2C_02_arlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLEN),
        .ULP_M_AXI_DATA_H2C_02_arlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLOCK),
        .ULP_M_AXI_DATA_H2C_02_arprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARPROT),
        .ULP_M_AXI_DATA_H2C_02_arready(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARREADY),
        .ULP_M_AXI_DATA_H2C_02_arvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARVALID),
        .ULP_M_AXI_DATA_H2C_02_awaddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWADDR),
        .ULP_M_AXI_DATA_H2C_02_awburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWBURST),
        .ULP_M_AXI_DATA_H2C_02_awcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWCACHE),
        .ULP_M_AXI_DATA_H2C_02_awlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLEN),
        .ULP_M_AXI_DATA_H2C_02_awlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLOCK),
        .ULP_M_AXI_DATA_H2C_02_awprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWPROT),
        .ULP_M_AXI_DATA_H2C_02_awready(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWREADY),
        .ULP_M_AXI_DATA_H2C_02_awvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWVALID),
        .ULP_M_AXI_DATA_H2C_02_bready(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BREADY),
        .ULP_M_AXI_DATA_H2C_02_bresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BRESP),
        .ULP_M_AXI_DATA_H2C_02_bvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BVALID),
        .ULP_M_AXI_DATA_H2C_02_rdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RDATA),
        .ULP_M_AXI_DATA_H2C_02_rlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RLAST),
        .ULP_M_AXI_DATA_H2C_02_rready(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RREADY),
        .ULP_M_AXI_DATA_H2C_02_rresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RRESP),
        .ULP_M_AXI_DATA_H2C_02_rvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RVALID),
        .ULP_M_AXI_DATA_H2C_02_wdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WDATA),
        .ULP_M_AXI_DATA_H2C_02_wlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WLAST),
        .ULP_M_AXI_DATA_H2C_02_wready(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WREADY),
        .ULP_M_AXI_DATA_H2C_02_wstrb(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WSTRB),
        .ULP_M_AXI_DATA_H2C_02_wvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WVALID),
        .ULP_M_AXI_DATA_H2C_03_araddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARADDR),
        .ULP_M_AXI_DATA_H2C_03_arburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARBURST),
        .ULP_M_AXI_DATA_H2C_03_arcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARCACHE),
        .ULP_M_AXI_DATA_H2C_03_arid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARID),
        .ULP_M_AXI_DATA_H2C_03_arlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLEN),
        .ULP_M_AXI_DATA_H2C_03_arlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLOCK),
        .ULP_M_AXI_DATA_H2C_03_arprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARPROT),
        .ULP_M_AXI_DATA_H2C_03_arready(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARREADY),
        .ULP_M_AXI_DATA_H2C_03_arvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARVALID),
        .ULP_M_AXI_DATA_H2C_03_awaddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWADDR),
        .ULP_M_AXI_DATA_H2C_03_awburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWBURST),
        .ULP_M_AXI_DATA_H2C_03_awcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWCACHE),
        .ULP_M_AXI_DATA_H2C_03_awid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWID),
        .ULP_M_AXI_DATA_H2C_03_awlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLEN),
        .ULP_M_AXI_DATA_H2C_03_awlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLOCK),
        .ULP_M_AXI_DATA_H2C_03_awprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWPROT),
        .ULP_M_AXI_DATA_H2C_03_awready(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWREADY),
        .ULP_M_AXI_DATA_H2C_03_awvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWVALID),
        .ULP_M_AXI_DATA_H2C_03_bid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BID),
        .ULP_M_AXI_DATA_H2C_03_bready(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BREADY),
        .ULP_M_AXI_DATA_H2C_03_bresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BRESP),
        .ULP_M_AXI_DATA_H2C_03_bvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BVALID),
        .ULP_M_AXI_DATA_H2C_03_rdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RDATA),
        .ULP_M_AXI_DATA_H2C_03_rid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RID),
        .ULP_M_AXI_DATA_H2C_03_rlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RLAST),
        .ULP_M_AXI_DATA_H2C_03_rready(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RREADY),
        .ULP_M_AXI_DATA_H2C_03_rresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RRESP),
        .ULP_M_AXI_DATA_H2C_03_rvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RVALID),
        .ULP_M_AXI_DATA_H2C_03_wdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WDATA),
        .ULP_M_AXI_DATA_H2C_03_wlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WLAST),
        .ULP_M_AXI_DATA_H2C_03_wready(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WREADY),
        .ULP_M_AXI_DATA_H2C_03_wstrb(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WSTRB),
        .ULP_M_AXI_DATA_H2C_03_wvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WVALID),
        .blp_m_data_dna_from_ulp_00(ii_level0_wire_blp_m_data_dna_from_ulp_00),
        .blp_m_data_memory_calib_complete_00(ii_level0_wire_blp_m_data_memory_calib_complete_00),
        .blp_m_irq_cu_00(ii_level0_wire_blp_m_irq_cu_00),
        .blp_s_aclk_ctrl_00(blp_s_aclk_ctrl_00_1),
        .blp_s_aclk_kernel2_ref_clk_00(blp_s_aclk_kernel2_ref_clk_00_1),
        .blp_s_aclk_kernel_ref_clk_00(blp_s_aclk_kernel_ref_clk_00_1),
        .blp_s_aclk_pcie_00(blp_s_aclk_pcie_00_1),
        .blp_s_aresetn_ctrl_00(blp_s_aresetn_ctrl_00_1),
        .blp_s_aresetn_kernel_ref_clk_00(blp_s_aresetn_kernel_ref_clk_00_1),
        .blp_s_aresetn_pcie_00(blp_s_aresetn_pcie_00_1),
        .blp_s_data_clkwiz_kernel_clk_out1_locked_00(blp_s_data_clkwiz_kernel_clk_out1_locked_00_1),
        .blp_s_data_dout_dna_00(blp_s_data_dout_dna_00_1),
        .blp_s_data_perstn_out_00(blp_s_data_perstn_out_00_1),
        .blp_s_data_slice_pr_reset_to_ulp_00(blp_s_data_slice_pr_reset_to_ulp_00_1),
        .ulp_m_aclk_ctrl_00(clkwiz_sysclks_clk_out2_1),
        .ulp_m_aclk_kernel2_ref_clk_00(ii_level0_wire_ulp_m_aclk_kernel2_ref_clk_00),
        .ulp_m_aclk_kernel_ref_clk_00(clkwiz_kernel_clk_out1_1),
        .ulp_m_aclk_pcie_00(ii_level0_wire_ulp_m_aclk_pcie_00),
        .ulp_m_aresetn_ctrl_00(ii_level0_wire_ulp_m_aresetn_ctrl_00),
        .ulp_m_data_clkwiz_kernel_clk_out1_locked_00(ii_level0_wire_ulp_m_data_clkwiz_kernel_clk_out1_locked_00),
        .ulp_m_data_perstn_out_00(ii_level0_wire_ulp_m_data_perstn_out_00),
        .ulp_m_data_slice_pr_reset_to_ulp_00(ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00),
        .ulp_s_data_dna_from_ulp_00({1'b0,1'b0,1'b0}),
        .ulp_s_data_memory_calib_complete_00(aux_reset_in_1),
        .ulp_s_irq_cu_00(ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout));
  ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0 ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat
       (.In0(ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout),
        .In1(ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1_dout),
        .In2(ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2_dout),
        .In3(ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3_dout),
        .dout(ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout));
  ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0 ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0
       (.In0(irq_const_tieoff_dout),
        .In1(krnl_ro_rtl_1_interrupt),
        .In10(irq_const_tieoff_dout),
        .In11(irq_const_tieoff_dout),
        .In12(irq_const_tieoff_dout),
        .In13(irq_const_tieoff_dout),
        .In14(irq_const_tieoff_dout),
        .In15(irq_const_tieoff_dout),
        .In16(irq_const_tieoff_dout),
        .In17(irq_const_tieoff_dout),
        .In18(irq_const_tieoff_dout),
        .In19(irq_const_tieoff_dout),
        .In2(irq_const_tieoff_dout),
        .In20(irq_const_tieoff_dout),
        .In21(irq_const_tieoff_dout),
        .In22(irq_const_tieoff_dout),
        .In23(irq_const_tieoff_dout),
        .In24(irq_const_tieoff_dout),
        .In25(irq_const_tieoff_dout),
        .In26(irq_const_tieoff_dout),
        .In27(irq_const_tieoff_dout),
        .In28(irq_const_tieoff_dout),
        .In29(irq_const_tieoff_dout),
        .In3(irq_const_tieoff_dout),
        .In30(irq_const_tieoff_dout),
        .In31(irq_const_tieoff_dout),
        .In4(irq_const_tieoff_dout),
        .In5(irq_const_tieoff_dout),
        .In6(irq_const_tieoff_dout),
        .In7(irq_const_tieoff_dout),
        .In8(irq_const_tieoff_dout),
        .In9(irq_const_tieoff_dout),
        .dout(ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout));
  ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1_0 ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1
       (.In0(irq_const_tieoff_dout),
        .In1(irq_const_tieoff_dout),
        .In10(irq_const_tieoff_dout),
        .In11(irq_const_tieoff_dout),
        .In12(irq_const_tieoff_dout),
        .In13(irq_const_tieoff_dout),
        .In14(irq_const_tieoff_dout),
        .In15(irq_const_tieoff_dout),
        .In16(irq_const_tieoff_dout),
        .In17(irq_const_tieoff_dout),
        .In18(irq_const_tieoff_dout),
        .In19(irq_const_tieoff_dout),
        .In2(irq_const_tieoff_dout),
        .In20(irq_const_tieoff_dout),
        .In21(irq_const_tieoff_dout),
        .In22(irq_const_tieoff_dout),
        .In23(irq_const_tieoff_dout),
        .In24(irq_const_tieoff_dout),
        .In25(irq_const_tieoff_dout),
        .In26(irq_const_tieoff_dout),
        .In27(irq_const_tieoff_dout),
        .In28(irq_const_tieoff_dout),
        .In29(irq_const_tieoff_dout),
        .In3(irq_const_tieoff_dout),
        .In30(irq_const_tieoff_dout),
        .In31(irq_const_tieoff_dout),
        .In4(irq_const_tieoff_dout),
        .In5(irq_const_tieoff_dout),
        .In6(irq_const_tieoff_dout),
        .In7(irq_const_tieoff_dout),
        .In8(irq_const_tieoff_dout),
        .In9(irq_const_tieoff_dout),
        .dout(ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1_dout));
  ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2_0 ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2
       (.In0(irq_const_tieoff_dout),
        .In1(irq_const_tieoff_dout),
        .In10(irq_const_tieoff_dout),
        .In11(irq_const_tieoff_dout),
        .In12(irq_const_tieoff_dout),
        .In13(irq_const_tieoff_dout),
        .In14(irq_const_tieoff_dout),
        .In15(irq_const_tieoff_dout),
        .In16(irq_const_tieoff_dout),
        .In17(irq_const_tieoff_dout),
        .In18(irq_const_tieoff_dout),
        .In19(irq_const_tieoff_dout),
        .In2(irq_const_tieoff_dout),
        .In20(irq_const_tieoff_dout),
        .In21(irq_const_tieoff_dout),
        .In22(irq_const_tieoff_dout),
        .In23(irq_const_tieoff_dout),
        .In24(irq_const_tieoff_dout),
        .In25(irq_const_tieoff_dout),
        .In26(irq_const_tieoff_dout),
        .In27(irq_const_tieoff_dout),
        .In28(irq_const_tieoff_dout),
        .In29(irq_const_tieoff_dout),
        .In3(irq_const_tieoff_dout),
        .In30(irq_const_tieoff_dout),
        .In31(irq_const_tieoff_dout),
        .In4(irq_const_tieoff_dout),
        .In5(irq_const_tieoff_dout),
        .In6(irq_const_tieoff_dout),
        .In7(irq_const_tieoff_dout),
        .In8(irq_const_tieoff_dout),
        .In9(irq_const_tieoff_dout),
        .dout(ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2_dout));
  ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3_0 ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3
       (.In0(irq_const_tieoff_dout),
        .In1(irq_const_tieoff_dout),
        .In10(irq_const_tieoff_dout),
        .In11(irq_const_tieoff_dout),
        .In12(irq_const_tieoff_dout),
        .In13(irq_const_tieoff_dout),
        .In14(irq_const_tieoff_dout),
        .In15(irq_const_tieoff_dout),
        .In16(irq_const_tieoff_dout),
        .In17(irq_const_tieoff_dout),
        .In18(irq_const_tieoff_dout),
        .In19(irq_const_tieoff_dout),
        .In2(irq_const_tieoff_dout),
        .In20(irq_const_tieoff_dout),
        .In21(irq_const_tieoff_dout),
        .In22(irq_const_tieoff_dout),
        .In23(irq_const_tieoff_dout),
        .In24(irq_const_tieoff_dout),
        .In25(irq_const_tieoff_dout),
        .In26(irq_const_tieoff_dout),
        .In27(irq_const_tieoff_dout),
        .In28(irq_const_tieoff_dout),
        .In29(irq_const_tieoff_dout),
        .In3(irq_const_tieoff_dout),
        .In30(irq_const_tieoff_dout),
        .In31(irq_const_tieoff_dout),
        .In4(irq_const_tieoff_dout),
        .In5(irq_const_tieoff_dout),
        .In6(irq_const_tieoff_dout),
        .In7(irq_const_tieoff_dout),
        .In8(irq_const_tieoff_dout),
        .In9(irq_const_tieoff_dout),
        .dout(ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3_dout));
  interrupt_concat_imp_1RAQO40 interrupt_concat
       ();
  ulp_irq_const_tieoff_0 irq_const_tieoff
       (.dout(irq_const_tieoff_dout));
  ulp_krnl_ro_rtl_1_0 krnl_ro_rtl_1
       (.ap_clk(blp_s_aclk_kernel_ref_clk_00_1),
        .ap_rst_n(slr1_peripheral_aresetn),
        .interrupt(krnl_ro_rtl_1_interrupt),
        .m_axi_gmem_ARADDR(krnl_ro_rtl_1_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(krnl_ro_rtl_1_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(krnl_ro_rtl_1_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARID(krnl_ro_rtl_1_m_axi_gmem_ARID),
        .m_axi_gmem_ARLEN(krnl_ro_rtl_1_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(krnl_ro_rtl_1_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(krnl_ro_rtl_1_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(krnl_ro_rtl_1_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(krnl_ro_rtl_1_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(krnl_ro_rtl_1_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(krnl_ro_rtl_1_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(krnl_ro_rtl_1_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(krnl_ro_rtl_1_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(krnl_ro_rtl_1_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(krnl_ro_rtl_1_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWID(krnl_ro_rtl_1_m_axi_gmem_AWID),
        .m_axi_gmem_AWLEN(krnl_ro_rtl_1_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(krnl_ro_rtl_1_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(krnl_ro_rtl_1_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(krnl_ro_rtl_1_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(krnl_ro_rtl_1_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(krnl_ro_rtl_1_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(krnl_ro_rtl_1_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(krnl_ro_rtl_1_m_axi_gmem_AWVALID),
        .m_axi_gmem_BID(krnl_ro_rtl_1_m_axi_gmem_BID),
        .m_axi_gmem_BREADY(krnl_ro_rtl_1_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(krnl_ro_rtl_1_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(krnl_ro_rtl_1_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(krnl_ro_rtl_1_m_axi_gmem_RDATA),
        .m_axi_gmem_RID(krnl_ro_rtl_1_m_axi_gmem_RID),
        .m_axi_gmem_RLAST(krnl_ro_rtl_1_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(krnl_ro_rtl_1_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(krnl_ro_rtl_1_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(krnl_ro_rtl_1_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(krnl_ro_rtl_1_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(krnl_ro_rtl_1_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(krnl_ro_rtl_1_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(krnl_ro_rtl_1_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(krnl_ro_rtl_1_m_axi_gmem_WVALID),
        .s_axi_control_ARADDR(slr1_M01_AXI_ARADDR),
        .s_axi_control_ARREADY(slr1_M01_AXI_ARREADY),
        .s_axi_control_ARVALID(slr1_M01_AXI_ARVALID),
        .s_axi_control_AWADDR(slr1_M01_AXI_AWADDR),
        .s_axi_control_AWREADY(slr1_M01_AXI_AWREADY),
        .s_axi_control_AWVALID(slr1_M01_AXI_AWVALID),
        .s_axi_control_BREADY(slr1_M01_AXI_BREADY),
        .s_axi_control_BRESP(slr1_M01_AXI_BRESP),
        .s_axi_control_BVALID(slr1_M01_AXI_BVALID),
        .s_axi_control_RDATA(slr1_M01_AXI_RDATA),
        .s_axi_control_RREADY(slr1_M01_AXI_RREADY),
        .s_axi_control_RRESP(slr1_M01_AXI_RRESP),
        .s_axi_control_RVALID(slr1_M01_AXI_RVALID),
        .s_axi_control_WDATA(slr1_M01_AXI_WDATA),
        .s_axi_control_WREADY(slr1_M01_AXI_WREADY),
        .s_axi_control_WSTRB(slr1_M01_AXI_WSTRB),
        .s_axi_control_WVALID(slr1_M01_AXI_WVALID));
  ulp_psreset_ddrmem_n_1_0 psreset_ddrmem_n_1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ddrmem_1_c0_ddr4_ui_clk_sync_rst),
        .interconnect_aresetn(psreset_ddrmem_n_1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(M00_ACLK_1));
  ulp_regslice_periph_null_0 regslice_periph_null
       (.aclk(ii_level0_wire_ulp_m_aclk_pcie_00),
        .aresetn(slr1_psreset_gate_pr_data_interconnect_aresetn),
        .m_axi_arready(1'b0),
        .m_axi_awready(1'b0),
        .m_axi_bid({1'b0,1'b0}),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wready(1'b0),
        .s_axi_araddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARADDR),
        .s_axi_arburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARBURST),
        .s_axi_arcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARCACHE),
        .s_axi_arid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARID),
        .s_axi_arlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLEN),
        .s_axi_arlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLOCK),
        .s_axi_arprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b1,1'b1}),
        .s_axi_arvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARVALID),
        .s_axi_awaddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWADDR),
        .s_axi_awburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWBURST),
        .s_axi_awcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWCACHE),
        .s_axi_awid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWID),
        .s_axi_awlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLEN),
        .s_axi_awlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLOCK),
        .s_axi_awprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b1,1'b1}),
        .s_axi_awvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWVALID),
        .s_axi_bid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BID),
        .s_axi_bready(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BREADY),
        .s_axi_bresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BRESP),
        .s_axi_bvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BVALID),
        .s_axi_rdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RDATA),
        .s_axi_rid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RID),
        .s_axi_rlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RLAST),
        .s_axi_rready(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RREADY),
        .s_axi_rresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RRESP),
        .s_axi_rvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RVALID),
        .s_axi_wdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WDATA),
        .s_axi_wlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WLAST),
        .s_axi_wready(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WREADY),
        .s_axi_wstrb(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WSTRB),
        .s_axi_wvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WVALID));
  slr1_imp_1S5AAMB slr1
       (.M00_ACLK(M00_ACLK_1),
        .M00_ARESETN(psreset_ddrmem_n_1_interconnect_aresetn),
        .M01_AXI1_araddr(slr1_M01_AXI1_ARADDR),
        .M01_AXI1_arready(slr1_M01_AXI1_ARREADY),
        .M01_AXI1_arvalid(slr1_M01_AXI1_ARVALID),
        .M01_AXI1_awaddr(slr1_M01_AXI1_AWADDR),
        .M01_AXI1_awready(slr1_M01_AXI1_AWREADY),
        .M01_AXI1_awvalid(slr1_M01_AXI1_AWVALID),
        .M01_AXI1_bready(slr1_M01_AXI1_BREADY),
        .M01_AXI1_bresp(slr1_M01_AXI1_BRESP),
        .M01_AXI1_bvalid(slr1_M01_AXI1_BVALID),
        .M01_AXI1_rdata(slr1_M01_AXI1_RDATA),
        .M01_AXI1_rready(slr1_M01_AXI1_RREADY),
        .M01_AXI1_rresp(slr1_M01_AXI1_RRESP),
        .M01_AXI1_rvalid(slr1_M01_AXI1_RVALID),
        .M01_AXI1_wdata(slr1_M01_AXI1_WDATA),
        .M01_AXI1_wready(slr1_M01_AXI1_WREADY),
        .M01_AXI1_wstrb(slr1_M01_AXI1_WSTRB),
        .M01_AXI1_wvalid(slr1_M01_AXI1_WVALID),
        .M01_AXI_araddr(slr1_M01_AXI_ARADDR),
        .M01_AXI_arready(slr1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(slr1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(slr1_M01_AXI_AWADDR),
        .M01_AXI_awready(slr1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(slr1_M01_AXI_AWVALID),
        .M01_AXI_bready(slr1_M01_AXI_BREADY),
        .M01_AXI_bresp(slr1_M01_AXI_BRESP),
        .M01_AXI_bvalid(slr1_M01_AXI_BVALID),
        .M01_AXI_rdata(slr1_M01_AXI_RDATA),
        .M01_AXI_rready(slr1_M01_AXI_RREADY),
        .M01_AXI_rresp(slr1_M01_AXI_RRESP),
        .M01_AXI_rvalid(slr1_M01_AXI_RVALID),
        .M01_AXI_wdata(slr1_M01_AXI_WDATA),
        .M01_AXI_wready(slr1_M01_AXI_WREADY),
        .M01_AXI_wstrb(slr1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(slr1_M01_AXI_WVALID),
        .aux_reset_in(aux_reset_in_1),
        .axi_cdc_data_static_M_AXI1_araddr(slr1_axi_cdc_data_static_M_AXI1_ARADDR),
        .axi_cdc_data_static_M_AXI1_arburst(slr1_axi_cdc_data_static_M_AXI1_ARBURST),
        .axi_cdc_data_static_M_AXI1_arcache(slr1_axi_cdc_data_static_M_AXI1_ARCACHE),
        .axi_cdc_data_static_M_AXI1_arid(slr1_axi_cdc_data_static_M_AXI1_ARID),
        .axi_cdc_data_static_M_AXI1_arlen(slr1_axi_cdc_data_static_M_AXI1_ARLEN),
        .axi_cdc_data_static_M_AXI1_arlock(slr1_axi_cdc_data_static_M_AXI1_ARLOCK),
        .axi_cdc_data_static_M_AXI1_arprot(slr1_axi_cdc_data_static_M_AXI1_ARPROT),
        .axi_cdc_data_static_M_AXI1_arqos(slr1_axi_cdc_data_static_M_AXI1_ARQOS),
        .axi_cdc_data_static_M_AXI1_arready(slr1_axi_cdc_data_static_M_AXI1_ARREADY),
        .axi_cdc_data_static_M_AXI1_arsize(slr1_axi_cdc_data_static_M_AXI1_ARSIZE),
        .axi_cdc_data_static_M_AXI1_arvalid(slr1_axi_cdc_data_static_M_AXI1_ARVALID),
        .axi_cdc_data_static_M_AXI1_awaddr(slr1_axi_cdc_data_static_M_AXI1_AWADDR),
        .axi_cdc_data_static_M_AXI1_awburst(slr1_axi_cdc_data_static_M_AXI1_AWBURST),
        .axi_cdc_data_static_M_AXI1_awcache(slr1_axi_cdc_data_static_M_AXI1_AWCACHE),
        .axi_cdc_data_static_M_AXI1_awid(slr1_axi_cdc_data_static_M_AXI1_AWID),
        .axi_cdc_data_static_M_AXI1_awlen(slr1_axi_cdc_data_static_M_AXI1_AWLEN),
        .axi_cdc_data_static_M_AXI1_awlock(slr1_axi_cdc_data_static_M_AXI1_AWLOCK),
        .axi_cdc_data_static_M_AXI1_awprot(slr1_axi_cdc_data_static_M_AXI1_AWPROT),
        .axi_cdc_data_static_M_AXI1_awqos(slr1_axi_cdc_data_static_M_AXI1_AWQOS),
        .axi_cdc_data_static_M_AXI1_awready(slr1_axi_cdc_data_static_M_AXI1_AWREADY),
        .axi_cdc_data_static_M_AXI1_awsize(slr1_axi_cdc_data_static_M_AXI1_AWSIZE),
        .axi_cdc_data_static_M_AXI1_awvalid(slr1_axi_cdc_data_static_M_AXI1_AWVALID),
        .axi_cdc_data_static_M_AXI1_bid(slr1_axi_cdc_data_static_M_AXI1_BID),
        .axi_cdc_data_static_M_AXI1_bready(slr1_axi_cdc_data_static_M_AXI1_BREADY),
        .axi_cdc_data_static_M_AXI1_bresp(slr1_axi_cdc_data_static_M_AXI1_BRESP),
        .axi_cdc_data_static_M_AXI1_bvalid(slr1_axi_cdc_data_static_M_AXI1_BVALID),
        .axi_cdc_data_static_M_AXI1_rdata(slr1_axi_cdc_data_static_M_AXI1_RDATA),
        .axi_cdc_data_static_M_AXI1_rid(slr1_axi_cdc_data_static_M_AXI1_RID),
        .axi_cdc_data_static_M_AXI1_rlast(slr1_axi_cdc_data_static_M_AXI1_RLAST),
        .axi_cdc_data_static_M_AXI1_rready(slr1_axi_cdc_data_static_M_AXI1_RREADY),
        .axi_cdc_data_static_M_AXI1_rresp(slr1_axi_cdc_data_static_M_AXI1_RRESP),
        .axi_cdc_data_static_M_AXI1_rvalid(slr1_axi_cdc_data_static_M_AXI1_RVALID),
        .axi_cdc_data_static_M_AXI1_wdata(slr1_axi_cdc_data_static_M_AXI1_WDATA),
        .axi_cdc_data_static_M_AXI1_wlast(slr1_axi_cdc_data_static_M_AXI1_WLAST),
        .axi_cdc_data_static_M_AXI1_wready(slr1_axi_cdc_data_static_M_AXI1_WREADY),
        .axi_cdc_data_static_M_AXI1_wstrb(slr1_axi_cdc_data_static_M_AXI1_WSTRB),
        .axi_cdc_data_static_M_AXI1_wvalid(slr1_axi_cdc_data_static_M_AXI1_WVALID),
        .axi_cdc_data_static_M_AXI_araddr(slr1_axi_cdc_data_static_M_AXI_ARADDR),
        .axi_cdc_data_static_M_AXI_arburst(slr1_axi_cdc_data_static_M_AXI_ARBURST),
        .axi_cdc_data_static_M_AXI_arcache(slr1_axi_cdc_data_static_M_AXI_ARCACHE),
        .axi_cdc_data_static_M_AXI_arid(slr1_axi_cdc_data_static_M_AXI_ARID),
        .axi_cdc_data_static_M_AXI_arlen(slr1_axi_cdc_data_static_M_AXI_ARLEN),
        .axi_cdc_data_static_M_AXI_arlock(slr1_axi_cdc_data_static_M_AXI_ARLOCK),
        .axi_cdc_data_static_M_AXI_arprot(slr1_axi_cdc_data_static_M_AXI_ARPROT),
        .axi_cdc_data_static_M_AXI_arqos(slr1_axi_cdc_data_static_M_AXI_ARQOS),
        .axi_cdc_data_static_M_AXI_arready(slr1_axi_cdc_data_static_M_AXI_ARREADY),
        .axi_cdc_data_static_M_AXI_arregion(slr1_axi_cdc_data_static_M_AXI_ARREGION),
        .axi_cdc_data_static_M_AXI_arsize(slr1_axi_cdc_data_static_M_AXI_ARSIZE),
        .axi_cdc_data_static_M_AXI_arvalid(slr1_axi_cdc_data_static_M_AXI_ARVALID),
        .axi_cdc_data_static_M_AXI_awaddr(slr1_axi_cdc_data_static_M_AXI_AWADDR),
        .axi_cdc_data_static_M_AXI_awburst(slr1_axi_cdc_data_static_M_AXI_AWBURST),
        .axi_cdc_data_static_M_AXI_awcache(slr1_axi_cdc_data_static_M_AXI_AWCACHE),
        .axi_cdc_data_static_M_AXI_awid(slr1_axi_cdc_data_static_M_AXI_AWID),
        .axi_cdc_data_static_M_AXI_awlen(slr1_axi_cdc_data_static_M_AXI_AWLEN),
        .axi_cdc_data_static_M_AXI_awlock(slr1_axi_cdc_data_static_M_AXI_AWLOCK),
        .axi_cdc_data_static_M_AXI_awprot(slr1_axi_cdc_data_static_M_AXI_AWPROT),
        .axi_cdc_data_static_M_AXI_awqos(slr1_axi_cdc_data_static_M_AXI_AWQOS),
        .axi_cdc_data_static_M_AXI_awready(slr1_axi_cdc_data_static_M_AXI_AWREADY),
        .axi_cdc_data_static_M_AXI_awregion(slr1_axi_cdc_data_static_M_AXI_AWREGION),
        .axi_cdc_data_static_M_AXI_awsize(slr1_axi_cdc_data_static_M_AXI_AWSIZE),
        .axi_cdc_data_static_M_AXI_awvalid(slr1_axi_cdc_data_static_M_AXI_AWVALID),
        .axi_cdc_data_static_M_AXI_bid(slr1_axi_cdc_data_static_M_AXI_BID),
        .axi_cdc_data_static_M_AXI_bready(slr1_axi_cdc_data_static_M_AXI_BREADY),
        .axi_cdc_data_static_M_AXI_bresp(slr1_axi_cdc_data_static_M_AXI_BRESP),
        .axi_cdc_data_static_M_AXI_bvalid(slr1_axi_cdc_data_static_M_AXI_BVALID),
        .axi_cdc_data_static_M_AXI_rdata(slr1_axi_cdc_data_static_M_AXI_RDATA),
        .axi_cdc_data_static_M_AXI_rid(slr1_axi_cdc_data_static_M_AXI_RID),
        .axi_cdc_data_static_M_AXI_rlast(slr1_axi_cdc_data_static_M_AXI_RLAST),
        .axi_cdc_data_static_M_AXI_rready(slr1_axi_cdc_data_static_M_AXI_RREADY),
        .axi_cdc_data_static_M_AXI_rresp(slr1_axi_cdc_data_static_M_AXI_RRESP),
        .axi_cdc_data_static_M_AXI_rvalid(slr1_axi_cdc_data_static_M_AXI_RVALID),
        .axi_cdc_data_static_M_AXI_wdata(slr1_axi_cdc_data_static_M_AXI_WDATA),
        .axi_cdc_data_static_M_AXI_wlast(slr1_axi_cdc_data_static_M_AXI_WLAST),
        .axi_cdc_data_static_M_AXI_wready(slr1_axi_cdc_data_static_M_AXI_WREADY),
        .axi_cdc_data_static_M_AXI_wstrb(slr1_axi_cdc_data_static_M_AXI_WSTRB),
        .axi_cdc_data_static_M_AXI_wvalid(slr1_axi_cdc_data_static_M_AXI_WVALID),
        .axi_vip_ctrl_mgntpf_M_AXI_araddr(slr1_axi_vip_ctrl_mgntpf_M_AXI_ARADDR),
        .axi_vip_ctrl_mgntpf_M_AXI_arready(slr1_axi_vip_ctrl_mgntpf_M_AXI_ARREADY),
        .axi_vip_ctrl_mgntpf_M_AXI_arvalid(slr1_axi_vip_ctrl_mgntpf_M_AXI_ARVALID),
        .axi_vip_ctrl_mgntpf_M_AXI_awaddr(slr1_axi_vip_ctrl_mgntpf_M_AXI_AWADDR),
        .axi_vip_ctrl_mgntpf_M_AXI_awready(slr1_axi_vip_ctrl_mgntpf_M_AXI_AWREADY),
        .axi_vip_ctrl_mgntpf_M_AXI_awvalid(slr1_axi_vip_ctrl_mgntpf_M_AXI_AWVALID),
        .axi_vip_ctrl_mgntpf_M_AXI_bready(slr1_axi_vip_ctrl_mgntpf_M_AXI_BREADY),
        .axi_vip_ctrl_mgntpf_M_AXI_bresp(slr1_axi_vip_ctrl_mgntpf_M_AXI_BRESP),
        .axi_vip_ctrl_mgntpf_M_AXI_bvalid(slr1_axi_vip_ctrl_mgntpf_M_AXI_BVALID),
        .axi_vip_ctrl_mgntpf_M_AXI_rdata(slr1_axi_vip_ctrl_mgntpf_M_AXI_RDATA),
        .axi_vip_ctrl_mgntpf_M_AXI_rready(slr1_axi_vip_ctrl_mgntpf_M_AXI_RREADY),
        .axi_vip_ctrl_mgntpf_M_AXI_rresp(slr1_axi_vip_ctrl_mgntpf_M_AXI_RRESP),
        .axi_vip_ctrl_mgntpf_M_AXI_rvalid(slr1_axi_vip_ctrl_mgntpf_M_AXI_RVALID),
        .axi_vip_ctrl_mgntpf_M_AXI_wdata(slr1_axi_vip_ctrl_mgntpf_M_AXI_WDATA),
        .axi_vip_ctrl_mgntpf_M_AXI_wready(slr1_axi_vip_ctrl_mgntpf_M_AXI_WREADY),
        .axi_vip_ctrl_mgntpf_M_AXI_wvalid(slr1_axi_vip_ctrl_mgntpf_M_AXI_WVALID),
        .blp_s_aclk_kernel_ref_clk_00(blp_s_aclk_kernel_ref_clk_00_1),
        .clkwiz_kernel2_clk_out1(ii_level0_wire_ulp_m_aclk_kernel2_ref_clk_00),
        .clkwiz_kernel2_locked_slr1(ii_level0_wire_ulp_m_data_clkwiz_kernel2_clk_out1_locked_00),
        .clkwiz_kernel_clk_out1(clkwiz_kernel_clk_out1_1),
        .clkwiz_kernel_locked_slr1(ii_level0_wire_ulp_m_data_clkwiz_kernel_clk_out1_locked_00),
        .clkwiz_sysclks_clk_out2(clkwiz_sysclks_clk_out2_1),
        .clkwiz_sysclks_locked_slr1(ii_level0_wire_ulp_m_data_clkwiz_sysclks_clk_out2_locked_00),
        .dma_pcie_axi_aclk(ii_level0_wire_ulp_m_aclk_pcie_00),
        .interconnect_aresetn(slr1_interconnect_aresetn),
        .iob_static_perst_n_out(xlslice_4_Dout),
        .logic_reset_op_Res(slr1_logic_reset_op_Res),
        .pcie_user_lnk_up_slr1(ii_level0_wire_ulp_m_data_pcie_user_link_up_00),
        .peripheral_aresetn(slr1_peripheral_aresetn),
        .psreset_gate_pr_control_interconnect_aresetn(slr1_psreset_gate_pr_control_interconnect_aresetn),
        .psreset_gate_pr_data_interconnect_aresetn(slr1_psreset_gate_pr_data_interconnect_aresetn),
        .psreset_gate_pr_kernel_interconnect_aresetn(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .regslice_control_M_AXI_slr1_araddr(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARADDR),
        .regslice_control_M_AXI_slr1_arprot(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARPROT),
        .regslice_control_M_AXI_slr1_arready(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARREADY),
        .regslice_control_M_AXI_slr1_arvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARVALID),
        .regslice_control_M_AXI_slr1_awaddr(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWADDR),
        .regslice_control_M_AXI_slr1_awprot(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWPROT),
        .regslice_control_M_AXI_slr1_awready(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWREADY),
        .regslice_control_M_AXI_slr1_awvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWVALID),
        .regslice_control_M_AXI_slr1_bready(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BREADY),
        .regslice_control_M_AXI_slr1_bresp(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BRESP),
        .regslice_control_M_AXI_slr1_bvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BVALID),
        .regslice_control_M_AXI_slr1_rdata(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RDATA),
        .regslice_control_M_AXI_slr1_rready(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RREADY),
        .regslice_control_M_AXI_slr1_rresp(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RRESP),
        .regslice_control_M_AXI_slr1_rvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RVALID),
        .regslice_control_M_AXI_slr1_wdata(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WDATA),
        .regslice_control_M_AXI_slr1_wready(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WREADY),
        .regslice_control_M_AXI_slr1_wstrb(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WSTRB),
        .regslice_control_M_AXI_slr1_wvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WVALID),
        .regslice_control_periph_M_AXI_slr1_araddr(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARADDR),
        .regslice_control_periph_M_AXI_slr1_arprot(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARPROT),
        .regslice_control_periph_M_AXI_slr1_arready(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARREADY),
        .regslice_control_periph_M_AXI_slr1_arvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARVALID),
        .regslice_control_periph_M_AXI_slr1_awaddr(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWADDR),
        .regslice_control_periph_M_AXI_slr1_awprot(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWPROT),
        .regslice_control_periph_M_AXI_slr1_awready(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWREADY),
        .regslice_control_periph_M_AXI_slr1_awvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWVALID),
        .regslice_control_periph_M_AXI_slr1_bready(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BREADY),
        .regslice_control_periph_M_AXI_slr1_bresp(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BRESP),
        .regslice_control_periph_M_AXI_slr1_bvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BVALID),
        .regslice_control_periph_M_AXI_slr1_rdata(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RDATA),
        .regslice_control_periph_M_AXI_slr1_rready(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RREADY),
        .regslice_control_periph_M_AXI_slr1_rresp(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RRESP),
        .regslice_control_periph_M_AXI_slr1_rvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RVALID),
        .regslice_control_periph_M_AXI_slr1_wdata(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WDATA),
        .regslice_control_periph_M_AXI_slr1_wready(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WREADY),
        .regslice_control_periph_M_AXI_slr1_wstrb(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WSTRB),
        .regslice_control_periph_M_AXI_slr1_wvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WVALID),
        .regslice_control_userpf_M_AXI_slr1_araddr(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARADDR),
        .regslice_control_userpf_M_AXI_slr1_arprot(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARPROT),
        .regslice_control_userpf_M_AXI_slr1_arready(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARREADY),
        .regslice_control_userpf_M_AXI_slr1_arvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARVALID),
        .regslice_control_userpf_M_AXI_slr1_awaddr(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWADDR),
        .regslice_control_userpf_M_AXI_slr1_awprot(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWPROT),
        .regslice_control_userpf_M_AXI_slr1_awready(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWREADY),
        .regslice_control_userpf_M_AXI_slr1_awvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWVALID),
        .regslice_control_userpf_M_AXI_slr1_bready(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BREADY),
        .regslice_control_userpf_M_AXI_slr1_bresp(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BRESP),
        .regslice_control_userpf_M_AXI_slr1_bvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BVALID),
        .regslice_control_userpf_M_AXI_slr1_rdata(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RDATA),
        .regslice_control_userpf_M_AXI_slr1_rready(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RREADY),
        .regslice_control_userpf_M_AXI_slr1_rresp(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RRESP),
        .regslice_control_userpf_M_AXI_slr1_rvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RVALID),
        .regslice_control_userpf_M_AXI_slr1_wdata(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WDATA),
        .regslice_control_userpf_M_AXI_slr1_wready(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WREADY),
        .regslice_control_userpf_M_AXI_slr1_wstrb(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WSTRB),
        .regslice_control_userpf_M_AXI_slr1_wvalid(ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WVALID),
        .regslice_data_static_M_AXI_slr1_araddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARADDR),
        .regslice_data_static_M_AXI_slr1_arburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARBURST),
        .regslice_data_static_M_AXI_slr1_arcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARCACHE),
        .regslice_data_static_M_AXI_slr1_arid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARID),
        .regslice_data_static_M_AXI_slr1_arlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLEN),
        .regslice_data_static_M_AXI_slr1_arlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLOCK),
        .regslice_data_static_M_AXI_slr1_arprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARPROT),
        .regslice_data_static_M_AXI_slr1_arready(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARREADY),
        .regslice_data_static_M_AXI_slr1_arvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARVALID),
        .regslice_data_static_M_AXI_slr1_awaddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWADDR),
        .regslice_data_static_M_AXI_slr1_awburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWBURST),
        .regslice_data_static_M_AXI_slr1_awcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWCACHE),
        .regslice_data_static_M_AXI_slr1_awid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWID),
        .regslice_data_static_M_AXI_slr1_awlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLEN),
        .regslice_data_static_M_AXI_slr1_awlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLOCK),
        .regslice_data_static_M_AXI_slr1_awprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWPROT),
        .regslice_data_static_M_AXI_slr1_awready(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWREADY),
        .regslice_data_static_M_AXI_slr1_awvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWVALID),
        .regslice_data_static_M_AXI_slr1_bid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BID),
        .regslice_data_static_M_AXI_slr1_bready(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BREADY),
        .regslice_data_static_M_AXI_slr1_bresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BRESP),
        .regslice_data_static_M_AXI_slr1_bvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BVALID),
        .regslice_data_static_M_AXI_slr1_rdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RDATA),
        .regslice_data_static_M_AXI_slr1_rid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RID),
        .regslice_data_static_M_AXI_slr1_rlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RLAST),
        .regslice_data_static_M_AXI_slr1_rready(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RREADY),
        .regslice_data_static_M_AXI_slr1_rresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RRESP),
        .regslice_data_static_M_AXI_slr1_rvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RVALID),
        .regslice_data_static_M_AXI_slr1_wdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WDATA),
        .regslice_data_static_M_AXI_slr1_wlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WLAST),
        .regslice_data_static_M_AXI_slr1_wready(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WREADY),
        .regslice_data_static_M_AXI_slr1_wstrb(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WSTRB),
        .regslice_data_static_M_AXI_slr1_wvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WVALID),
        .regslice_data_static_M_AXI_slr2_araddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARADDR),
        .regslice_data_static_M_AXI_slr2_arburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARBURST),
        .regslice_data_static_M_AXI_slr2_arcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARCACHE),
        .regslice_data_static_M_AXI_slr2_arid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARID),
        .regslice_data_static_M_AXI_slr2_arlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLEN),
        .regslice_data_static_M_AXI_slr2_arlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLOCK),
        .regslice_data_static_M_AXI_slr2_arprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARPROT),
        .regslice_data_static_M_AXI_slr2_arready(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARREADY),
        .regslice_data_static_M_AXI_slr2_arvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARVALID),
        .regslice_data_static_M_AXI_slr2_awaddr(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWADDR),
        .regslice_data_static_M_AXI_slr2_awburst(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWBURST),
        .regslice_data_static_M_AXI_slr2_awcache(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWCACHE),
        .regslice_data_static_M_AXI_slr2_awid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWID),
        .regslice_data_static_M_AXI_slr2_awlen(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLEN),
        .regslice_data_static_M_AXI_slr2_awlock(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLOCK),
        .regslice_data_static_M_AXI_slr2_awprot(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWPROT),
        .regslice_data_static_M_AXI_slr2_awready(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWREADY),
        .regslice_data_static_M_AXI_slr2_awvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWVALID),
        .regslice_data_static_M_AXI_slr2_bid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BID),
        .regslice_data_static_M_AXI_slr2_bready(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BREADY),
        .regslice_data_static_M_AXI_slr2_bresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BRESP),
        .regslice_data_static_M_AXI_slr2_bvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BVALID),
        .regslice_data_static_M_AXI_slr2_rdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RDATA),
        .regslice_data_static_M_AXI_slr2_rid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RID),
        .regslice_data_static_M_AXI_slr2_rlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RLAST),
        .regslice_data_static_M_AXI_slr2_rready(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RREADY),
        .regslice_data_static_M_AXI_slr2_rresp(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RRESP),
        .regslice_data_static_M_AXI_slr2_rvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RVALID),
        .regslice_data_static_M_AXI_slr2_wdata(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WDATA),
        .regslice_data_static_M_AXI_slr2_wlast(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WLAST),
        .regslice_data_static_M_AXI_slr2_wready(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WREADY),
        .regslice_data_static_M_AXI_slr2_wstrb(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WSTRB),
        .regslice_data_static_M_AXI_slr2_wvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WVALID),
        .slice_reset_kernel_pr_Dout_slr1(xlslice_0_Dout));
  ulp_user_debug_bridge_0 user_debug_bridge
       (.S_AXI_araddr(axi_protocol_convert_0_M_AXI_ARADDR[4:0]),
        .S_AXI_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .S_AXI_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .S_AXI_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .S_AXI_awaddr(axi_protocol_convert_0_M_AXI_AWADDR[4:0]),
        .S_AXI_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .S_AXI_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .S_AXI_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .S_AXI_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .S_AXI_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .S_AXI_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .S_AXI_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .S_AXI_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .S_AXI_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .S_AXI_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .S_AXI_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .S_AXI_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .S_AXI_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .S_AXI_wvalid(axi_protocol_convert_0_M_AXI_WVALID),
        .m0_bscan_bscanid_en(user_debug_bridge_m0_bscan_BSCANID_EN),
        .m0_bscan_capture(user_debug_bridge_m0_bscan_CAPTURE),
        .m0_bscan_drck(user_debug_bridge_m0_bscan_DRCK),
        .m0_bscan_reset(user_debug_bridge_m0_bscan_RESET),
        .m0_bscan_runtest(user_debug_bridge_m0_bscan_RUNTEST),
        .m0_bscan_sel(user_debug_bridge_m0_bscan_SEL),
        .m0_bscan_shift(user_debug_bridge_m0_bscan_SHIFT),
        .m0_bscan_tck(user_debug_bridge_m0_bscan_TCK),
        .m0_bscan_tdi(user_debug_bridge_m0_bscan_TDI),
        .m0_bscan_tdo(user_debug_bridge_m0_bscan_TDO),
        .m0_bscan_tms(user_debug_bridge_m0_bscan_TMS),
        .m0_bscan_update(user_debug_bridge_m0_bscan_UPDATE),
        .s_axi_aclk(clkwiz_sysclks_clk_out2_1),
        .s_axi_aresetn(ii_level0_wire_ulp_m_aresetn_ctrl_00));
  ulp_xlslice_0_0 xlslice_0
       (.Din(ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00),
        .Dout(xlslice_0_Dout));
  ulp_xlslice_1_0 xlslice_1
       (.Din(ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00),
        .Dout(ii_level0_wire_ulp_m_data_clkwiz_sysclks_clk_out2_locked_00));
  ulp_xlslice_2_0 xlslice_2
       (.Din(ii_level0_wire_ulp_m_data_perstn_out_00),
        .Dout(ii_level0_wire_ulp_m_data_pcie_user_link_up_00));
  ulp_xlslice_3_0 xlslice_3
       (.Din(ii_level0_wire_ulp_m_data_perstn_out_00),
        .Dout(ii_level0_wire_ulp_m_data_clkwiz_kernel2_clk_out1_locked_00));
  ulp_xlslice_4_0 xlslice_4
       (.Din(ii_level0_wire_ulp_m_data_perstn_out_00),
        .Dout(xlslice_4_Dout));
endmodule

module ulp_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [0:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [0:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [38:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [38:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [63:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [0:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [3:0]S01_AXI_arregion;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [63:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [0:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [3:0]S01_AXI_awregion;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [0:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output [0:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [38:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [38:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [511:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [511:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [63:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [63:0]axi_interconnect_0_to_s01_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s01_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s01_couplers_ARCACHE;
  wire [0:0]axi_interconnect_0_to_s01_couplers_ARID;
  wire [7:0]axi_interconnect_0_to_s01_couplers_ARLEN;
  wire [1:0]axi_interconnect_0_to_s01_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s01_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s01_couplers_ARQOS;
  wire axi_interconnect_0_to_s01_couplers_ARREADY;
  wire [3:0]axi_interconnect_0_to_s01_couplers_ARREGION;
  wire [2:0]axi_interconnect_0_to_s01_couplers_ARSIZE;
  wire axi_interconnect_0_to_s01_couplers_ARVALID;
  wire [63:0]axi_interconnect_0_to_s01_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s01_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s01_couplers_AWCACHE;
  wire [0:0]axi_interconnect_0_to_s01_couplers_AWID;
  wire [7:0]axi_interconnect_0_to_s01_couplers_AWLEN;
  wire [1:0]axi_interconnect_0_to_s01_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s01_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s01_couplers_AWQOS;
  wire axi_interconnect_0_to_s01_couplers_AWREADY;
  wire [3:0]axi_interconnect_0_to_s01_couplers_AWREGION;
  wire [2:0]axi_interconnect_0_to_s01_couplers_AWSIZE;
  wire axi_interconnect_0_to_s01_couplers_AWVALID;
  wire [0:0]axi_interconnect_0_to_s01_couplers_BID;
  wire axi_interconnect_0_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s01_couplers_BRESP;
  wire axi_interconnect_0_to_s01_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s01_couplers_RDATA;
  wire [0:0]axi_interconnect_0_to_s01_couplers_RID;
  wire axi_interconnect_0_to_s01_couplers_RLAST;
  wire axi_interconnect_0_to_s01_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s01_couplers_RRESP;
  wire axi_interconnect_0_to_s01_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s01_couplers_WDATA;
  wire axi_interconnect_0_to_s01_couplers_WLAST;
  wire axi_interconnect_0_to_s01_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s01_couplers_WSTRB;
  wire axi_interconnect_0_to_s01_couplers_WVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARCACHE;
  wire [0:0]m00_couplers_to_axi_interconnect_0_ARID;
  wire [7:0]m00_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARQOS;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARREGION;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARSIZE;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWCACHE;
  wire [0:0]m00_couplers_to_axi_interconnect_0_AWID;
  wire [7:0]m00_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWQOS;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWREGION;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWSIZE;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m00_couplers_to_axi_interconnect_0_BID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [511:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_0_RID;
  wire m00_couplers_to_axi_interconnect_0_RLAST;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [511:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WLAST;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire [63:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [38:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [38:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [63:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [63:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [511:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [63:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [0:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [0:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[63:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_0_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_0_ARCACHE;
  assign M00_AXI_arid[0] = m00_couplers_to_axi_interconnect_0_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_0_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_0_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_axi_interconnect_0_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_0_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[63:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_0_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_0_AWCACHE;
  assign M00_AXI_awid[0] = m00_couplers_to_axi_interconnect_0_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_0_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_0_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_axi_interconnect_0_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_0_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[511:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_0_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = axi_interconnect_0_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = axi_interconnect_0_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[0] = axi_interconnect_0_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = axi_interconnect_0_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_interconnect_0_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = axi_interconnect_0_to_s01_couplers_RDATA;
  assign S01_AXI_rid[0] = axi_interconnect_0_to_s01_couplers_RID;
  assign S01_AXI_rlast = axi_interconnect_0_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_interconnect_0_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_interconnect_0_to_s01_couplers_RVALID;
  assign S01_AXI_wready = axi_interconnect_0_to_s01_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[38:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[38:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_interconnect_0_to_s01_couplers_ARADDR = S01_AXI_araddr[63:0];
  assign axi_interconnect_0_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s01_couplers_ARID = S01_AXI_arid[0];
  assign axi_interconnect_0_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s01_couplers_ARLOCK = S01_AXI_arlock[1:0];
  assign axi_interconnect_0_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s01_couplers_ARREGION = S01_AXI_arregion[3:0];
  assign axi_interconnect_0_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_interconnect_0_to_s01_couplers_AWADDR = S01_AXI_awaddr[63:0];
  assign axi_interconnect_0_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s01_couplers_AWID = S01_AXI_awid[0];
  assign axi_interconnect_0_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s01_couplers_AWLOCK = S01_AXI_awlock[1:0];
  assign axi_interconnect_0_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s01_couplers_AWREGION = S01_AXI_awregion[3:0];
  assign axi_interconnect_0_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_interconnect_0_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_interconnect_0_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_interconnect_0_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_interconnect_0_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BID = M00_AXI_bid[0];
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[511:0];
  assign m00_couplers_to_axi_interconnect_0_RID = M00_AXI_rid[0];
  assign m00_couplers_to_axi_interconnect_0_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  m00_couplers_imp_NNXR7U m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_0_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arregion(m00_couplers_to_axi_interconnect_0_ARREGION),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_0_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awregion(m00_couplers_to_axi_interconnect_0_AWREGION),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_0_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_0_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1Y0QJAO s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_0_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  s01_couplers_imp_9DN451 s01_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s01_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_to_s01_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_0_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s01_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s01_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s01_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_0_to_s01_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_0_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s01_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_to_s01_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_0_to_s01_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s01_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s01_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s01_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_to_s01_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s01_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_0_to_s01_couplers_BID),
        .S_AXI_bready(axi_interconnect_0_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s01_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_0_to_s01_couplers_RID),
        .S_AXI_rlast(axi_interconnect_0_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s01_couplers_WVALID));
  ulp_xbar_4 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module ulp_axi_interconnect_0_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [25:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [25:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [24:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [24:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [24:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [24:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [24:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [0:0]axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [24:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [0:0]axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire [0:0]axi_interconnect_0_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire [0:0]axi_interconnect_0_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire [0:0]axi_interconnect_0_to_s00_couplers_WVALID;
  wire [25:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARPROT;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [25:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWPROT;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [24:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_0_ARREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [24:0]m01_couplers_to_axi_interconnect_0_AWADDR;
  wire [0:0]m01_couplers_to_axi_interconnect_0_AWREADY;
  wire [0:0]m01_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m01_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m01_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m01_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m01_couplers_to_axi_interconnect_0_WVALID;
  wire [24:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [24:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [24:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [24:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [49:25]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [49:25]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[25:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[25:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[24:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[24:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[24:0];
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[24:0];
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready[0];
  m00_couplers_imp_1T9TXXO m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_F5ZURT m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_ID1YD2 s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  ulp_xbar_3 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module ulp_axi_interconnect_0_p_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [38:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [38:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [38:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [38:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_0_p_ACLK_net;
  wire axi_interconnect_0_p_ARESETN_net;
  wire [38:0]axi_interconnect_0_p_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_p_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_p_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_0_p_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_0_p_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_p_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_p_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_p_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_0_p_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_0_p_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_p_to_s00_couplers_ARVALID;
  wire [38:0]axi_interconnect_0_p_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_p_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_p_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_0_p_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_0_p_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_p_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_p_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_p_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_0_p_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_0_p_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_p_to_s00_couplers_AWVALID;
  wire axi_interconnect_0_p_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_p_to_s00_couplers_BRESP;
  wire axi_interconnect_0_p_to_s00_couplers_BVALID;
  wire [511:0]axi_interconnect_0_p_to_s00_couplers_RDATA;
  wire axi_interconnect_0_p_to_s00_couplers_RLAST;
  wire axi_interconnect_0_p_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_p_to_s00_couplers_RRESP;
  wire axi_interconnect_0_p_to_s00_couplers_RVALID;
  wire [511:0]axi_interconnect_0_p_to_s00_couplers_WDATA;
  wire axi_interconnect_0_p_to_s00_couplers_WLAST;
  wire axi_interconnect_0_p_to_s00_couplers_WREADY;
  wire [63:0]axi_interconnect_0_p_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_p_to_s00_couplers_WVALID;
  wire [38:0]s00_couplers_to_axi_interconnect_0_p_ARADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_0_p_ARBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_0_p_ARCACHE;
  wire [7:0]s00_couplers_to_axi_interconnect_0_p_ARLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_0_p_ARLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_0_p_ARPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_0_p_ARQOS;
  wire s00_couplers_to_axi_interconnect_0_p_ARREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_0_p_ARREGION;
  wire [2:0]s00_couplers_to_axi_interconnect_0_p_ARSIZE;
  wire s00_couplers_to_axi_interconnect_0_p_ARVALID;
  wire [38:0]s00_couplers_to_axi_interconnect_0_p_AWADDR;
  wire [1:0]s00_couplers_to_axi_interconnect_0_p_AWBURST;
  wire [3:0]s00_couplers_to_axi_interconnect_0_p_AWCACHE;
  wire [7:0]s00_couplers_to_axi_interconnect_0_p_AWLEN;
  wire [0:0]s00_couplers_to_axi_interconnect_0_p_AWLOCK;
  wire [2:0]s00_couplers_to_axi_interconnect_0_p_AWPROT;
  wire [3:0]s00_couplers_to_axi_interconnect_0_p_AWQOS;
  wire s00_couplers_to_axi_interconnect_0_p_AWREADY;
  wire [3:0]s00_couplers_to_axi_interconnect_0_p_AWREGION;
  wire [2:0]s00_couplers_to_axi_interconnect_0_p_AWSIZE;
  wire s00_couplers_to_axi_interconnect_0_p_AWVALID;
  wire s00_couplers_to_axi_interconnect_0_p_BREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_p_BRESP;
  wire s00_couplers_to_axi_interconnect_0_p_BVALID;
  wire [511:0]s00_couplers_to_axi_interconnect_0_p_RDATA;
  wire s00_couplers_to_axi_interconnect_0_p_RLAST;
  wire s00_couplers_to_axi_interconnect_0_p_RREADY;
  wire [1:0]s00_couplers_to_axi_interconnect_0_p_RRESP;
  wire s00_couplers_to_axi_interconnect_0_p_RVALID;
  wire [511:0]s00_couplers_to_axi_interconnect_0_p_WDATA;
  wire s00_couplers_to_axi_interconnect_0_p_WLAST;
  wire s00_couplers_to_axi_interconnect_0_p_WREADY;
  wire [63:0]s00_couplers_to_axi_interconnect_0_p_WSTRB;
  wire s00_couplers_to_axi_interconnect_0_p_WVALID;

  assign M00_AXI_araddr[38:0] = s00_couplers_to_axi_interconnect_0_p_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_axi_interconnect_0_p_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_axi_interconnect_0_p_ARCACHE;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_axi_interconnect_0_p_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_axi_interconnect_0_p_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_axi_interconnect_0_p_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_axi_interconnect_0_p_ARQOS;
  assign M00_AXI_arregion[3:0] = s00_couplers_to_axi_interconnect_0_p_ARREGION;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_axi_interconnect_0_p_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_axi_interconnect_0_p_ARVALID;
  assign M00_AXI_awaddr[38:0] = s00_couplers_to_axi_interconnect_0_p_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_axi_interconnect_0_p_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_axi_interconnect_0_p_AWCACHE;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_axi_interconnect_0_p_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_axi_interconnect_0_p_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_axi_interconnect_0_p_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_axi_interconnect_0_p_AWQOS;
  assign M00_AXI_awregion[3:0] = s00_couplers_to_axi_interconnect_0_p_AWREGION;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_axi_interconnect_0_p_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_axi_interconnect_0_p_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_axi_interconnect_0_p_BREADY;
  assign M00_AXI_rready = s00_couplers_to_axi_interconnect_0_p_RREADY;
  assign M00_AXI_wdata[511:0] = s00_couplers_to_axi_interconnect_0_p_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_axi_interconnect_0_p_WLAST;
  assign M00_AXI_wstrb[63:0] = s00_couplers_to_axi_interconnect_0_p_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_axi_interconnect_0_p_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_p_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_p_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_p_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_p_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = axi_interconnect_0_p_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_0_p_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_p_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_p_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_p_to_s00_couplers_WREADY;
  assign axi_interconnect_0_p_ACLK_net = M00_ACLK;
  assign axi_interconnect_0_p_ARESETN_net = M00_ARESETN;
  assign axi_interconnect_0_p_to_s00_couplers_ARADDR = S00_AXI_araddr[38:0];
  assign axi_interconnect_0_p_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_p_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_p_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_p_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_0_p_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_p_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_p_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_0_p_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_p_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_p_to_s00_couplers_AWADDR = S00_AXI_awaddr[38:0];
  assign axi_interconnect_0_p_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_p_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_p_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_p_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_0_p_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_p_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_p_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_0_p_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_p_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_p_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_p_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_p_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign axi_interconnect_0_p_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_p_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign axi_interconnect_0_p_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_axi_interconnect_0_p_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_axi_interconnect_0_p_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_axi_interconnect_0_p_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_p_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_axi_interconnect_0_p_RDATA = M00_AXI_rdata[511:0];
  assign s00_couplers_to_axi_interconnect_0_p_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_axi_interconnect_0_p_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_axi_interconnect_0_p_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_axi_interconnect_0_p_WREADY = M00_AXI_wready;
  s00_couplers_imp_U66VNK s00_couplers
       (.M_ACLK(axi_interconnect_0_p_ACLK_net),
        .M_ARESETN(axi_interconnect_0_p_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_axi_interconnect_0_p_ARADDR),
        .M_AXI_arburst(s00_couplers_to_axi_interconnect_0_p_ARBURST),
        .M_AXI_arcache(s00_couplers_to_axi_interconnect_0_p_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_axi_interconnect_0_p_ARLEN),
        .M_AXI_arlock(s00_couplers_to_axi_interconnect_0_p_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_axi_interconnect_0_p_ARPROT),
        .M_AXI_arqos(s00_couplers_to_axi_interconnect_0_p_ARQOS),
        .M_AXI_arready(s00_couplers_to_axi_interconnect_0_p_ARREADY),
        .M_AXI_arregion(s00_couplers_to_axi_interconnect_0_p_ARREGION),
        .M_AXI_arsize(s00_couplers_to_axi_interconnect_0_p_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_axi_interconnect_0_p_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_axi_interconnect_0_p_AWADDR),
        .M_AXI_awburst(s00_couplers_to_axi_interconnect_0_p_AWBURST),
        .M_AXI_awcache(s00_couplers_to_axi_interconnect_0_p_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_axi_interconnect_0_p_AWLEN),
        .M_AXI_awlock(s00_couplers_to_axi_interconnect_0_p_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_axi_interconnect_0_p_AWPROT),
        .M_AXI_awqos(s00_couplers_to_axi_interconnect_0_p_AWQOS),
        .M_AXI_awready(s00_couplers_to_axi_interconnect_0_p_AWREADY),
        .M_AXI_awregion(s00_couplers_to_axi_interconnect_0_p_AWREGION),
        .M_AXI_awsize(s00_couplers_to_axi_interconnect_0_p_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_axi_interconnect_0_p_AWVALID),
        .M_AXI_bready(s00_couplers_to_axi_interconnect_0_p_BREADY),
        .M_AXI_bresp(s00_couplers_to_axi_interconnect_0_p_BRESP),
        .M_AXI_bvalid(s00_couplers_to_axi_interconnect_0_p_BVALID),
        .M_AXI_rdata(s00_couplers_to_axi_interconnect_0_p_RDATA),
        .M_AXI_rlast(s00_couplers_to_axi_interconnect_0_p_RLAST),
        .M_AXI_rready(s00_couplers_to_axi_interconnect_0_p_RREADY),
        .M_AXI_rresp(s00_couplers_to_axi_interconnect_0_p_RRESP),
        .M_AXI_rvalid(s00_couplers_to_axi_interconnect_0_p_RVALID),
        .M_AXI_wdata(s00_couplers_to_axi_interconnect_0_p_WDATA),
        .M_AXI_wlast(s00_couplers_to_axi_interconnect_0_p_WLAST),
        .M_AXI_wready(s00_couplers_to_axi_interconnect_0_p_WREADY),
        .M_AXI_wstrb(s00_couplers_to_axi_interconnect_0_p_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_axi_interconnect_0_p_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_p_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_p_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_p_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_0_p_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_p_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_p_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_p_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_p_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_0_p_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_0_p_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_p_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_p_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_p_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_p_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_p_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_p_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_p_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_p_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_p_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_p_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_p_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_p_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_p_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_p_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_p_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_p_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_0_p_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_p_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_p_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_p_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_p_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_p_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_p_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_p_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_p_to_s00_couplers_WVALID));
endmodule

module ulp_axi_interconnect_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awregion,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arid,
    S03_AXI_arlen,
    S03_AXI_arlock,
    S03_AXI_arprot,
    S03_AXI_arqos,
    S03_AXI_arready,
    S03_AXI_arsize,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awid,
    S03_AXI_awlen,
    S03_AXI_awlock,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awready,
    S03_AXI_awsize,
    S03_AXI_awvalid,
    S03_AXI_bid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rid,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [5:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [5:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [63:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [5:0]M01_AXI_arid;
  output [7:0]M01_AXI_arlen;
  output M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [63:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [5:0]M01_AXI_awid;
  output [7:0]M01_AXI_awlen;
  output M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  input [5:0]M01_AXI_bid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [511:0]M01_AXI_rdata;
  input [5:0]M01_AXI_rid;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [511:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [63:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [38:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [3:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [3:0]S01_AXI_arregion;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [38:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [3:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [3:0]S01_AXI_awregion;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [3:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [511:0]S01_AXI_rdata;
  output [3:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [511:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [38:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [0:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [3:0]S02_AXI_arregion;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [38:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [0:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [3:0]S02_AXI_awregion;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [511:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [511:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [63:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [38:0]S03_AXI_araddr;
  input [1:0]S03_AXI_arburst;
  input [3:0]S03_AXI_arcache;
  input [3:0]S03_AXI_arid;
  input [7:0]S03_AXI_arlen;
  input [0:0]S03_AXI_arlock;
  input [2:0]S03_AXI_arprot;
  input [3:0]S03_AXI_arqos;
  output S03_AXI_arready;
  input [2:0]S03_AXI_arsize;
  input S03_AXI_arvalid;
  input [38:0]S03_AXI_awaddr;
  input [1:0]S03_AXI_awburst;
  input [3:0]S03_AXI_awcache;
  input [3:0]S03_AXI_awid;
  input [7:0]S03_AXI_awlen;
  input [0:0]S03_AXI_awlock;
  input [2:0]S03_AXI_awprot;
  input [3:0]S03_AXI_awqos;
  output S03_AXI_awready;
  input [2:0]S03_AXI_awsize;
  input S03_AXI_awvalid;
  output [3:0]S03_AXI_bid;
  input S03_AXI_bready;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  output [127:0]S03_AXI_rdata;
  output [3:0]S03_AXI_rid;
  output S03_AXI_rlast;
  input S03_AXI_rready;
  output [1:0]S03_AXI_rresp;
  output S03_AXI_rvalid;
  input [127:0]S03_AXI_wdata;
  input S03_AXI_wlast;
  output S03_AXI_wready;
  input [15:0]S03_AXI_wstrb;
  input S03_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire S03_ACLK_1;
  wire S03_ARESETN_1;
  wire [38:0]S03_AXI_1_ARADDR;
  wire [1:0]S03_AXI_1_ARBURST;
  wire [3:0]S03_AXI_1_ARCACHE;
  wire [3:0]S03_AXI_1_ARID;
  wire [7:0]S03_AXI_1_ARLEN;
  wire [0:0]S03_AXI_1_ARLOCK;
  wire [2:0]S03_AXI_1_ARPROT;
  wire [3:0]S03_AXI_1_ARQOS;
  wire S03_AXI_1_ARREADY;
  wire [2:0]S03_AXI_1_ARSIZE;
  wire S03_AXI_1_ARVALID;
  wire [38:0]S03_AXI_1_AWADDR;
  wire [1:0]S03_AXI_1_AWBURST;
  wire [3:0]S03_AXI_1_AWCACHE;
  wire [3:0]S03_AXI_1_AWID;
  wire [7:0]S03_AXI_1_AWLEN;
  wire [0:0]S03_AXI_1_AWLOCK;
  wire [2:0]S03_AXI_1_AWPROT;
  wire [3:0]S03_AXI_1_AWQOS;
  wire S03_AXI_1_AWREADY;
  wire [2:0]S03_AXI_1_AWSIZE;
  wire S03_AXI_1_AWVALID;
  wire [3:0]S03_AXI_1_BID;
  wire S03_AXI_1_BREADY;
  wire [1:0]S03_AXI_1_BRESP;
  wire S03_AXI_1_BVALID;
  wire [127:0]S03_AXI_1_RDATA;
  wire [3:0]S03_AXI_1_RID;
  wire S03_AXI_1_RLAST;
  wire S03_AXI_1_RREADY;
  wire [1:0]S03_AXI_1_RRESP;
  wire S03_AXI_1_RVALID;
  wire [127:0]S03_AXI_1_WDATA;
  wire S03_AXI_1_WLAST;
  wire S03_AXI_1_WREADY;
  wire [15:0]S03_AXI_1_WSTRB;
  wire S03_AXI_1_WVALID;
  wire axi_interconnect_1_ACLK_net;
  wire axi_interconnect_1_ARESETN_net;
  wire [63:0]axi_interconnect_1_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARCACHE;
  wire [0:0]axi_interconnect_1_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_1_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_1_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARQOS;
  wire axi_interconnect_1_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_1_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_1_to_s00_couplers_ARSIZE;
  wire axi_interconnect_1_to_s00_couplers_ARVALID;
  wire [63:0]axi_interconnect_1_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_1_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWCACHE;
  wire [0:0]axi_interconnect_1_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_1_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_1_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWQOS;
  wire axi_interconnect_1_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_1_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_1_to_s00_couplers_AWSIZE;
  wire axi_interconnect_1_to_s00_couplers_AWVALID;
  wire [0:0]axi_interconnect_1_to_s00_couplers_BID;
  wire axi_interconnect_1_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_BRESP;
  wire axi_interconnect_1_to_s00_couplers_BVALID;
  wire [511:0]axi_interconnect_1_to_s00_couplers_RDATA;
  wire [0:0]axi_interconnect_1_to_s00_couplers_RID;
  wire axi_interconnect_1_to_s00_couplers_RLAST;
  wire axi_interconnect_1_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_1_to_s00_couplers_RRESP;
  wire axi_interconnect_1_to_s00_couplers_RVALID;
  wire [511:0]axi_interconnect_1_to_s00_couplers_WDATA;
  wire axi_interconnect_1_to_s00_couplers_WLAST;
  wire axi_interconnect_1_to_s00_couplers_WREADY;
  wire [63:0]axi_interconnect_1_to_s00_couplers_WSTRB;
  wire axi_interconnect_1_to_s00_couplers_WVALID;
  wire [38:0]axi_interconnect_1_to_s01_couplers_ARADDR;
  wire [1:0]axi_interconnect_1_to_s01_couplers_ARBURST;
  wire [3:0]axi_interconnect_1_to_s01_couplers_ARCACHE;
  wire [3:0]axi_interconnect_1_to_s01_couplers_ARID;
  wire [7:0]axi_interconnect_1_to_s01_couplers_ARLEN;
  wire [0:0]axi_interconnect_1_to_s01_couplers_ARLOCK;
  wire [2:0]axi_interconnect_1_to_s01_couplers_ARPROT;
  wire [3:0]axi_interconnect_1_to_s01_couplers_ARQOS;
  wire axi_interconnect_1_to_s01_couplers_ARREADY;
  wire [3:0]axi_interconnect_1_to_s01_couplers_ARREGION;
  wire [2:0]axi_interconnect_1_to_s01_couplers_ARSIZE;
  wire axi_interconnect_1_to_s01_couplers_ARVALID;
  wire [38:0]axi_interconnect_1_to_s01_couplers_AWADDR;
  wire [1:0]axi_interconnect_1_to_s01_couplers_AWBURST;
  wire [3:0]axi_interconnect_1_to_s01_couplers_AWCACHE;
  wire [3:0]axi_interconnect_1_to_s01_couplers_AWID;
  wire [7:0]axi_interconnect_1_to_s01_couplers_AWLEN;
  wire [0:0]axi_interconnect_1_to_s01_couplers_AWLOCK;
  wire [2:0]axi_interconnect_1_to_s01_couplers_AWPROT;
  wire [3:0]axi_interconnect_1_to_s01_couplers_AWQOS;
  wire axi_interconnect_1_to_s01_couplers_AWREADY;
  wire [3:0]axi_interconnect_1_to_s01_couplers_AWREGION;
  wire [2:0]axi_interconnect_1_to_s01_couplers_AWSIZE;
  wire axi_interconnect_1_to_s01_couplers_AWVALID;
  wire [3:0]axi_interconnect_1_to_s01_couplers_BID;
  wire axi_interconnect_1_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_1_to_s01_couplers_BRESP;
  wire axi_interconnect_1_to_s01_couplers_BVALID;
  wire [511:0]axi_interconnect_1_to_s01_couplers_RDATA;
  wire [3:0]axi_interconnect_1_to_s01_couplers_RID;
  wire axi_interconnect_1_to_s01_couplers_RLAST;
  wire axi_interconnect_1_to_s01_couplers_RREADY;
  wire [1:0]axi_interconnect_1_to_s01_couplers_RRESP;
  wire axi_interconnect_1_to_s01_couplers_RVALID;
  wire [511:0]axi_interconnect_1_to_s01_couplers_WDATA;
  wire axi_interconnect_1_to_s01_couplers_WLAST;
  wire axi_interconnect_1_to_s01_couplers_WREADY;
  wire [63:0]axi_interconnect_1_to_s01_couplers_WSTRB;
  wire axi_interconnect_1_to_s01_couplers_WVALID;
  wire [38:0]axi_interconnect_1_to_s02_couplers_ARADDR;
  wire [1:0]axi_interconnect_1_to_s02_couplers_ARBURST;
  wire [3:0]axi_interconnect_1_to_s02_couplers_ARCACHE;
  wire [7:0]axi_interconnect_1_to_s02_couplers_ARLEN;
  wire [0:0]axi_interconnect_1_to_s02_couplers_ARLOCK;
  wire [2:0]axi_interconnect_1_to_s02_couplers_ARPROT;
  wire [3:0]axi_interconnect_1_to_s02_couplers_ARQOS;
  wire axi_interconnect_1_to_s02_couplers_ARREADY;
  wire [3:0]axi_interconnect_1_to_s02_couplers_ARREGION;
  wire [2:0]axi_interconnect_1_to_s02_couplers_ARSIZE;
  wire axi_interconnect_1_to_s02_couplers_ARVALID;
  wire [38:0]axi_interconnect_1_to_s02_couplers_AWADDR;
  wire [1:0]axi_interconnect_1_to_s02_couplers_AWBURST;
  wire [3:0]axi_interconnect_1_to_s02_couplers_AWCACHE;
  wire [7:0]axi_interconnect_1_to_s02_couplers_AWLEN;
  wire [0:0]axi_interconnect_1_to_s02_couplers_AWLOCK;
  wire [2:0]axi_interconnect_1_to_s02_couplers_AWPROT;
  wire [3:0]axi_interconnect_1_to_s02_couplers_AWQOS;
  wire axi_interconnect_1_to_s02_couplers_AWREADY;
  wire [3:0]axi_interconnect_1_to_s02_couplers_AWREGION;
  wire [2:0]axi_interconnect_1_to_s02_couplers_AWSIZE;
  wire axi_interconnect_1_to_s02_couplers_AWVALID;
  wire axi_interconnect_1_to_s02_couplers_BREADY;
  wire [1:0]axi_interconnect_1_to_s02_couplers_BRESP;
  wire axi_interconnect_1_to_s02_couplers_BVALID;
  wire [511:0]axi_interconnect_1_to_s02_couplers_RDATA;
  wire axi_interconnect_1_to_s02_couplers_RLAST;
  wire axi_interconnect_1_to_s02_couplers_RREADY;
  wire [1:0]axi_interconnect_1_to_s02_couplers_RRESP;
  wire axi_interconnect_1_to_s02_couplers_RVALID;
  wire [511:0]axi_interconnect_1_to_s02_couplers_WDATA;
  wire axi_interconnect_1_to_s02_couplers_WLAST;
  wire axi_interconnect_1_to_s02_couplers_WREADY;
  wire [63:0]axi_interconnect_1_to_s02_couplers_WSTRB;
  wire axi_interconnect_1_to_s02_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_1_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_1_ARCACHE;
  wire [5:0]m00_couplers_to_axi_interconnect_1_ARID;
  wire [7:0]m00_couplers_to_axi_interconnect_1_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_1_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_1_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_1_ARQOS;
  wire m00_couplers_to_axi_interconnect_1_ARREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_1_ARSIZE;
  wire m00_couplers_to_axi_interconnect_1_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_1_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_1_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_1_AWCACHE;
  wire [5:0]m00_couplers_to_axi_interconnect_1_AWID;
  wire [7:0]m00_couplers_to_axi_interconnect_1_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_1_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_1_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_1_AWQOS;
  wire m00_couplers_to_axi_interconnect_1_AWREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_1_AWSIZE;
  wire m00_couplers_to_axi_interconnect_1_AWVALID;
  wire [5:0]m00_couplers_to_axi_interconnect_1_BID;
  wire m00_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_BRESP;
  wire m00_couplers_to_axi_interconnect_1_BVALID;
  wire [511:0]m00_couplers_to_axi_interconnect_1_RDATA;
  wire [5:0]m00_couplers_to_axi_interconnect_1_RID;
  wire m00_couplers_to_axi_interconnect_1_RLAST;
  wire m00_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_1_RRESP;
  wire m00_couplers_to_axi_interconnect_1_RVALID;
  wire [511:0]m00_couplers_to_axi_interconnect_1_WDATA;
  wire m00_couplers_to_axi_interconnect_1_WLAST;
  wire m00_couplers_to_axi_interconnect_1_WREADY;
  wire [63:0]m00_couplers_to_axi_interconnect_1_WSTRB;
  wire m00_couplers_to_axi_interconnect_1_WVALID;
  wire [63:0]m01_couplers_to_axi_interconnect_1_ARADDR;
  wire [1:0]m01_couplers_to_axi_interconnect_1_ARBURST;
  wire [3:0]m01_couplers_to_axi_interconnect_1_ARCACHE;
  wire [5:0]m01_couplers_to_axi_interconnect_1_ARID;
  wire [7:0]m01_couplers_to_axi_interconnect_1_ARLEN;
  wire m01_couplers_to_axi_interconnect_1_ARLOCK;
  wire [2:0]m01_couplers_to_axi_interconnect_1_ARPROT;
  wire m01_couplers_to_axi_interconnect_1_ARREADY;
  wire [2:0]m01_couplers_to_axi_interconnect_1_ARSIZE;
  wire m01_couplers_to_axi_interconnect_1_ARVALID;
  wire [63:0]m01_couplers_to_axi_interconnect_1_AWADDR;
  wire [1:0]m01_couplers_to_axi_interconnect_1_AWBURST;
  wire [3:0]m01_couplers_to_axi_interconnect_1_AWCACHE;
  wire [5:0]m01_couplers_to_axi_interconnect_1_AWID;
  wire [7:0]m01_couplers_to_axi_interconnect_1_AWLEN;
  wire m01_couplers_to_axi_interconnect_1_AWLOCK;
  wire [2:0]m01_couplers_to_axi_interconnect_1_AWPROT;
  wire m01_couplers_to_axi_interconnect_1_AWREADY;
  wire [2:0]m01_couplers_to_axi_interconnect_1_AWSIZE;
  wire m01_couplers_to_axi_interconnect_1_AWVALID;
  wire [5:0]m01_couplers_to_axi_interconnect_1_BID;
  wire m01_couplers_to_axi_interconnect_1_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_1_BRESP;
  wire m01_couplers_to_axi_interconnect_1_BVALID;
  wire [511:0]m01_couplers_to_axi_interconnect_1_RDATA;
  wire [5:0]m01_couplers_to_axi_interconnect_1_RID;
  wire m01_couplers_to_axi_interconnect_1_RLAST;
  wire m01_couplers_to_axi_interconnect_1_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_1_RRESP;
  wire m01_couplers_to_axi_interconnect_1_RVALID;
  wire [511:0]m01_couplers_to_axi_interconnect_1_WDATA;
  wire m01_couplers_to_axi_interconnect_1_WLAST;
  wire m01_couplers_to_axi_interconnect_1_WREADY;
  wire [63:0]m01_couplers_to_axi_interconnect_1_WSTRB;
  wire m01_couplers_to_axi_interconnect_1_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [0:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [0:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [5:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [5:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [38:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [3:0]s01_couplers_to_xbar_ARID;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [38:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [3:0]s01_couplers_to_xbar_AWID;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire [11:6]s01_couplers_to_xbar_BID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire [11:6]s01_couplers_to_xbar_RID;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [511:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [63:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [38:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [38:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [1535:1024]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [511:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [63:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [38:0]s03_couplers_to_xbar_ARADDR;
  wire [1:0]s03_couplers_to_xbar_ARBURST;
  wire [3:0]s03_couplers_to_xbar_ARCACHE;
  wire [7:0]s03_couplers_to_xbar_ARLEN;
  wire [0:0]s03_couplers_to_xbar_ARLOCK;
  wire [2:0]s03_couplers_to_xbar_ARPROT;
  wire [3:0]s03_couplers_to_xbar_ARQOS;
  wire [3:3]s03_couplers_to_xbar_ARREADY;
  wire [2:0]s03_couplers_to_xbar_ARSIZE;
  wire s03_couplers_to_xbar_ARVALID;
  wire [38:0]s03_couplers_to_xbar_AWADDR;
  wire [1:0]s03_couplers_to_xbar_AWBURST;
  wire [3:0]s03_couplers_to_xbar_AWCACHE;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire [0:0]s03_couplers_to_xbar_AWLOCK;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:0]s03_couplers_to_xbar_AWQOS;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire [2:0]s03_couplers_to_xbar_AWSIZE;
  wire s03_couplers_to_xbar_AWVALID;
  wire s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [2047:1536]s03_couplers_to_xbar_RDATA;
  wire [3:3]s03_couplers_to_xbar_RLAST;
  wire s03_couplers_to_xbar_RREADY;
  wire [7:6]s03_couplers_to_xbar_RRESP;
  wire [3:3]s03_couplers_to_xbar_RVALID;
  wire [511:0]s03_couplers_to_xbar_WDATA;
  wire s03_couplers_to_xbar_WLAST;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [63:0]s03_couplers_to_xbar_WSTRB;
  wire s03_couplers_to_xbar_WVALID;
  wire [38:0]s03_mmu_M_AXI_ARADDR;
  wire [1:0]s03_mmu_M_AXI_ARBURST;
  wire [3:0]s03_mmu_M_AXI_ARCACHE;
  wire [3:0]s03_mmu_M_AXI_ARID;
  wire [7:0]s03_mmu_M_AXI_ARLEN;
  wire [0:0]s03_mmu_M_AXI_ARLOCK;
  wire [2:0]s03_mmu_M_AXI_ARPROT;
  wire [3:0]s03_mmu_M_AXI_ARQOS;
  wire s03_mmu_M_AXI_ARREADY;
  wire [2:0]s03_mmu_M_AXI_ARSIZE;
  wire s03_mmu_M_AXI_ARVALID;
  wire [38:0]s03_mmu_M_AXI_AWADDR;
  wire [1:0]s03_mmu_M_AXI_AWBURST;
  wire [3:0]s03_mmu_M_AXI_AWCACHE;
  wire [3:0]s03_mmu_M_AXI_AWID;
  wire [7:0]s03_mmu_M_AXI_AWLEN;
  wire [0:0]s03_mmu_M_AXI_AWLOCK;
  wire [2:0]s03_mmu_M_AXI_AWPROT;
  wire [3:0]s03_mmu_M_AXI_AWQOS;
  wire s03_mmu_M_AXI_AWREADY;
  wire [2:0]s03_mmu_M_AXI_AWSIZE;
  wire s03_mmu_M_AXI_AWVALID;
  wire [3:0]s03_mmu_M_AXI_BID;
  wire s03_mmu_M_AXI_BREADY;
  wire [1:0]s03_mmu_M_AXI_BRESP;
  wire s03_mmu_M_AXI_BVALID;
  wire [127:0]s03_mmu_M_AXI_RDATA;
  wire [3:0]s03_mmu_M_AXI_RID;
  wire s03_mmu_M_AXI_RLAST;
  wire s03_mmu_M_AXI_RREADY;
  wire [1:0]s03_mmu_M_AXI_RRESP;
  wire s03_mmu_M_AXI_RVALID;
  wire [127:0]s03_mmu_M_AXI_WDATA;
  wire s03_mmu_M_AXI_WLAST;
  wire s03_mmu_M_AXI_WREADY;
  wire [15:0]s03_mmu_M_AXI_WSTRB;
  wire s03_mmu_M_AXI_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [5:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [5:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [5:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [5:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [127:64]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [11:6]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [127:64]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [11:6]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [5:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [511:0]xbar_to_m01_couplers_RDATA;
  wire [5:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [1023:512]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [127:64]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_1_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_1_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_1_ARCACHE;
  assign M00_AXI_arid[5:0] = m00_couplers_to_axi_interconnect_1_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_1_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_1_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_1_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_1_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_1_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_1_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_1_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_1_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_1_AWCACHE;
  assign M00_AXI_awid[5:0] = m00_couplers_to_axi_interconnect_1_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_1_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_1_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_1_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_1_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_1_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_1_RREADY;
  assign M00_AXI_wdata[511:0] = m00_couplers_to_axi_interconnect_1_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_1_WLAST;
  assign M00_AXI_wstrb[63:0] = m00_couplers_to_axi_interconnect_1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_1_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[63:0] = m01_couplers_to_axi_interconnect_1_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_axi_interconnect_1_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_axi_interconnect_1_ARCACHE;
  assign M01_AXI_arid[5:0] = m01_couplers_to_axi_interconnect_1_ARID;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_axi_interconnect_1_ARLEN;
  assign M01_AXI_arlock = m01_couplers_to_axi_interconnect_1_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_axi_interconnect_1_ARPROT;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_axi_interconnect_1_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_1_ARVALID;
  assign M01_AXI_awaddr[63:0] = m01_couplers_to_axi_interconnect_1_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_axi_interconnect_1_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_axi_interconnect_1_AWCACHE;
  assign M01_AXI_awid[5:0] = m01_couplers_to_axi_interconnect_1_AWID;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_axi_interconnect_1_AWLEN;
  assign M01_AXI_awlock = m01_couplers_to_axi_interconnect_1_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_axi_interconnect_1_AWPROT;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_axi_interconnect_1_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_1_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_1_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_1_RREADY;
  assign M01_AXI_wdata[511:0] = m01_couplers_to_axi_interconnect_1_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_axi_interconnect_1_WLAST;
  assign M01_AXI_wstrb[63:0] = m01_couplers_to_axi_interconnect_1_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[0] = axi_interconnect_1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[511:0] = axi_interconnect_1_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = axi_interconnect_1_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_1_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = axi_interconnect_1_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = axi_interconnect_1_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[3:0] = axi_interconnect_1_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = axi_interconnect_1_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_interconnect_1_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[511:0] = axi_interconnect_1_to_s01_couplers_RDATA;
  assign S01_AXI_rid[3:0] = axi_interconnect_1_to_s01_couplers_RID;
  assign S01_AXI_rlast = axi_interconnect_1_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_interconnect_1_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_interconnect_1_to_s01_couplers_RVALID;
  assign S01_AXI_wready = axi_interconnect_1_to_s01_couplers_WREADY;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_arready = axi_interconnect_1_to_s02_couplers_ARREADY;
  assign S02_AXI_awready = axi_interconnect_1_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp[1:0] = axi_interconnect_1_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = axi_interconnect_1_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[511:0] = axi_interconnect_1_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = axi_interconnect_1_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = axi_interconnect_1_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = axi_interconnect_1_to_s02_couplers_RVALID;
  assign S02_AXI_wready = axi_interconnect_1_to_s02_couplers_WREADY;
  assign S03_ACLK_1 = S03_ACLK;
  assign S03_ARESETN_1 = S03_ARESETN;
  assign S03_AXI_1_ARADDR = S03_AXI_araddr[38:0];
  assign S03_AXI_1_ARBURST = S03_AXI_arburst[1:0];
  assign S03_AXI_1_ARCACHE = S03_AXI_arcache[3:0];
  assign S03_AXI_1_ARID = S03_AXI_arid[3:0];
  assign S03_AXI_1_ARLEN = S03_AXI_arlen[7:0];
  assign S03_AXI_1_ARLOCK = S03_AXI_arlock[0];
  assign S03_AXI_1_ARPROT = S03_AXI_arprot[2:0];
  assign S03_AXI_1_ARQOS = S03_AXI_arqos[3:0];
  assign S03_AXI_1_ARSIZE = S03_AXI_arsize[2:0];
  assign S03_AXI_1_ARVALID = S03_AXI_arvalid;
  assign S03_AXI_1_AWADDR = S03_AXI_awaddr[38:0];
  assign S03_AXI_1_AWBURST = S03_AXI_awburst[1:0];
  assign S03_AXI_1_AWCACHE = S03_AXI_awcache[3:0];
  assign S03_AXI_1_AWID = S03_AXI_awid[3:0];
  assign S03_AXI_1_AWLEN = S03_AXI_awlen[7:0];
  assign S03_AXI_1_AWLOCK = S03_AXI_awlock[0];
  assign S03_AXI_1_AWPROT = S03_AXI_awprot[2:0];
  assign S03_AXI_1_AWQOS = S03_AXI_awqos[3:0];
  assign S03_AXI_1_AWSIZE = S03_AXI_awsize[2:0];
  assign S03_AXI_1_AWVALID = S03_AXI_awvalid;
  assign S03_AXI_1_BREADY = S03_AXI_bready;
  assign S03_AXI_1_RREADY = S03_AXI_rready;
  assign S03_AXI_1_WDATA = S03_AXI_wdata[127:0];
  assign S03_AXI_1_WLAST = S03_AXI_wlast;
  assign S03_AXI_1_WSTRB = S03_AXI_wstrb[15:0];
  assign S03_AXI_1_WVALID = S03_AXI_wvalid;
  assign S03_AXI_arready = S03_AXI_1_ARREADY;
  assign S03_AXI_awready = S03_AXI_1_AWREADY;
  assign S03_AXI_bid[3:0] = S03_AXI_1_BID;
  assign S03_AXI_bresp[1:0] = S03_AXI_1_BRESP;
  assign S03_AXI_bvalid = S03_AXI_1_BVALID;
  assign S03_AXI_rdata[127:0] = S03_AXI_1_RDATA;
  assign S03_AXI_rid[3:0] = S03_AXI_1_RID;
  assign S03_AXI_rlast = S03_AXI_1_RLAST;
  assign S03_AXI_rresp[1:0] = S03_AXI_1_RRESP;
  assign S03_AXI_rvalid = S03_AXI_1_RVALID;
  assign S03_AXI_wready = S03_AXI_1_WREADY;
  assign axi_interconnect_1_ACLK_net = ACLK;
  assign axi_interconnect_1_ARESETN_net = ARESETN;
  assign axi_interconnect_1_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign axi_interconnect_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign axi_interconnect_1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_1_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign axi_interconnect_1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWID = S00_AXI_awid[0];
  assign axi_interconnect_1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_1_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_1_to_s00_couplers_WDATA = S00_AXI_wdata[511:0];
  assign axi_interconnect_1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[63:0];
  assign axi_interconnect_1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_interconnect_1_to_s01_couplers_ARADDR = S01_AXI_araddr[38:0];
  assign axi_interconnect_1_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_interconnect_1_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_interconnect_1_to_s01_couplers_ARID = S01_AXI_arid[3:0];
  assign axi_interconnect_1_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_interconnect_1_to_s01_couplers_ARLOCK = S01_AXI_arlock[0];
  assign axi_interconnect_1_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_interconnect_1_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign axi_interconnect_1_to_s01_couplers_ARREGION = S01_AXI_arregion[3:0];
  assign axi_interconnect_1_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_interconnect_1_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_interconnect_1_to_s01_couplers_AWADDR = S01_AXI_awaddr[38:0];
  assign axi_interconnect_1_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_interconnect_1_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_interconnect_1_to_s01_couplers_AWID = S01_AXI_awid[3:0];
  assign axi_interconnect_1_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_interconnect_1_to_s01_couplers_AWLOCK = S01_AXI_awlock[0];
  assign axi_interconnect_1_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_1_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign axi_interconnect_1_to_s01_couplers_AWREGION = S01_AXI_awregion[3:0];
  assign axi_interconnect_1_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_interconnect_1_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_interconnect_1_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_interconnect_1_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_interconnect_1_to_s01_couplers_WDATA = S01_AXI_wdata[511:0];
  assign axi_interconnect_1_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_interconnect_1_to_s01_couplers_WSTRB = S01_AXI_wstrb[63:0];
  assign axi_interconnect_1_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign axi_interconnect_1_to_s02_couplers_ARADDR = S02_AXI_araddr[38:0];
  assign axi_interconnect_1_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign axi_interconnect_1_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign axi_interconnect_1_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign axi_interconnect_1_to_s02_couplers_ARLOCK = S02_AXI_arlock[0];
  assign axi_interconnect_1_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign axi_interconnect_1_to_s02_couplers_ARQOS = S02_AXI_arqos[3:0];
  assign axi_interconnect_1_to_s02_couplers_ARREGION = S02_AXI_arregion[3:0];
  assign axi_interconnect_1_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign axi_interconnect_1_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign axi_interconnect_1_to_s02_couplers_AWADDR = S02_AXI_awaddr[38:0];
  assign axi_interconnect_1_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign axi_interconnect_1_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign axi_interconnect_1_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign axi_interconnect_1_to_s02_couplers_AWLOCK = S02_AXI_awlock[0];
  assign axi_interconnect_1_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign axi_interconnect_1_to_s02_couplers_AWQOS = S02_AXI_awqos[3:0];
  assign axi_interconnect_1_to_s02_couplers_AWREGION = S02_AXI_awregion[3:0];
  assign axi_interconnect_1_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign axi_interconnect_1_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign axi_interconnect_1_to_s02_couplers_BREADY = S02_AXI_bready;
  assign axi_interconnect_1_to_s02_couplers_RREADY = S02_AXI_rready;
  assign axi_interconnect_1_to_s02_couplers_WDATA = S02_AXI_wdata[511:0];
  assign axi_interconnect_1_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign axi_interconnect_1_to_s02_couplers_WSTRB = S02_AXI_wstrb[63:0];
  assign axi_interconnect_1_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_1_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_interconnect_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_1_RDATA = M00_AXI_rdata[511:0];
  assign m00_couplers_to_axi_interconnect_1_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_interconnect_1_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_1_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_1_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_1_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_1_BID = M01_AXI_bid[5:0];
  assign m01_couplers_to_axi_interconnect_1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_1_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_1_RDATA = M01_AXI_rdata[511:0];
  assign m01_couplers_to_axi_interconnect_1_RID = M01_AXI_rid[5:0];
  assign m01_couplers_to_axi_interconnect_1_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_axi_interconnect_1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_1_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_1_WREADY = M01_AXI_wready;
  m00_couplers_imp_1MIVJUX m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_1_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_1_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_1_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_1_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_1_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_1_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_1_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_1_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_1_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_1_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_1_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_1_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_1_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_1_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_1_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_1_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_1_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_1_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_1_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_1_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_4ALIA4 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_1_ARADDR),
        .M_AXI_arburst(m01_couplers_to_axi_interconnect_1_ARBURST),
        .M_AXI_arcache(m01_couplers_to_axi_interconnect_1_ARCACHE),
        .M_AXI_arid(m01_couplers_to_axi_interconnect_1_ARID),
        .M_AXI_arlen(m01_couplers_to_axi_interconnect_1_ARLEN),
        .M_AXI_arlock(m01_couplers_to_axi_interconnect_1_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_axi_interconnect_1_ARPROT),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_1_ARREADY),
        .M_AXI_arsize(m01_couplers_to_axi_interconnect_1_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_1_AWADDR),
        .M_AXI_awburst(m01_couplers_to_axi_interconnect_1_AWBURST),
        .M_AXI_awcache(m01_couplers_to_axi_interconnect_1_AWCACHE),
        .M_AXI_awid(m01_couplers_to_axi_interconnect_1_AWID),
        .M_AXI_awlen(m01_couplers_to_axi_interconnect_1_AWLEN),
        .M_AXI_awlock(m01_couplers_to_axi_interconnect_1_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_axi_interconnect_1_AWPROT),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_1_AWREADY),
        .M_AXI_awsize(m01_couplers_to_axi_interconnect_1_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_1_AWVALID),
        .M_AXI_bid(m01_couplers_to_axi_interconnect_1_BID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_1_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_1_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_1_RDATA),
        .M_AXI_rid(m01_couplers_to_axi_interconnect_1_RID),
        .M_AXI_rlast(m01_couplers_to_axi_interconnect_1_RLAST),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_1_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_1_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_1_WDATA),
        .M_AXI_wlast(m01_couplers_to_axi_interconnect_1_WLAST),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_1_WVALID),
        .S_ACLK(axi_interconnect_1_ACLK_net),
        .S_ARESETN(axi_interconnect_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_YEI3CJ s00_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_1_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_1_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_1_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_1_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_1_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_1_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_1_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_1_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_1_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_1_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_1_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_1_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_1_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_1_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_1_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_to_s00_couplers_WVALID));
  s01_couplers_imp_1A6BUUU s01_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s01_couplers_to_xbar_ARID),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s01_couplers_to_xbar_AWID),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s01_couplers_to_xbar_BID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rid(s01_couplers_to_xbar_RID),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_1_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_1_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_1_to_s01_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_1_to_s01_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_1_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_1_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_1_to_s01_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_1_to_s01_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_1_to_s01_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_1_to_s01_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_1_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_1_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_1_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_1_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_1_to_s01_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_1_to_s01_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_1_to_s01_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_1_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_1_to_s01_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_1_to_s01_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_1_to_s01_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_1_to_s01_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_1_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_1_to_s01_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_1_to_s01_couplers_BID),
        .S_AXI_bready(axi_interconnect_1_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_1_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_1_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_1_to_s01_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_1_to_s01_couplers_RID),
        .S_AXI_rlast(axi_interconnect_1_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_1_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_1_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_1_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_1_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_1_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_1_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_to_s01_couplers_WVALID));
  s02_couplers_imp_7O094O s02_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_1_to_s02_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_1_to_s02_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_1_to_s02_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_1_to_s02_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_1_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_1_to_s02_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_1_to_s02_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_1_to_s02_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_1_to_s02_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_1_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_1_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_1_to_s02_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_1_to_s02_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_1_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_1_to_s02_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_1_to_s02_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_1_to_s02_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_1_to_s02_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_1_to_s02_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_1_to_s02_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_1_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_1_to_s02_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_1_to_s02_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_1_to_s02_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_1_to_s02_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_1_to_s02_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_1_to_s02_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_1_to_s02_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_1_to_s02_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_1_to_s02_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_1_to_s02_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_1_to_s02_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_1_to_s02_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_1_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_1_to_s02_couplers_WVALID));
  s03_couplers_imp_1IZX0HP s03_couplers
       (.M_ACLK(axi_interconnect_1_ACLK_net),
        .M_ARESETN(axi_interconnect_1_ARESETN_net),
        .M_AXI_araddr(s03_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s03_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s03_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s03_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s03_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s03_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s03_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s03_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s03_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s03_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s03_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s03_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s03_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s03_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s03_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s03_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s03_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s03_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s03_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s03_couplers_to_xbar_RLAST),
        .M_AXI_rready(s03_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s03_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s03_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s03_couplers_to_xbar_WLAST),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(S03_ACLK_1),
        .S_ARESETN(S03_ARESETN_1),
        .S_AXI_araddr(s03_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s03_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s03_mmu_M_AXI_ARCACHE),
        .S_AXI_arid(s03_mmu_M_AXI_ARID),
        .S_AXI_arlen(s03_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s03_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s03_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s03_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s03_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s03_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s03_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s03_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s03_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s03_mmu_M_AXI_AWCACHE),
        .S_AXI_awid(s03_mmu_M_AXI_AWID),
        .S_AXI_awlen(s03_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s03_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s03_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s03_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s03_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s03_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s03_mmu_M_AXI_AWVALID),
        .S_AXI_bid(s03_mmu_M_AXI_BID),
        .S_AXI_bready(s03_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s03_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s03_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s03_mmu_M_AXI_RDATA),
        .S_AXI_rid(s03_mmu_M_AXI_RID),
        .S_AXI_rlast(s03_mmu_M_AXI_RLAST),
        .S_AXI_rready(s03_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s03_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s03_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s03_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s03_mmu_M_AXI_WLAST),
        .S_AXI_wready(s03_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s03_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s03_mmu_M_AXI_WVALID));
  ulp_s03_mmu_0 s03_mmu
       (.aclk(S03_ACLK_1),
        .aresetn(S03_ARESETN_1),
        .m_axi_araddr(s03_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s03_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s03_mmu_M_AXI_ARCACHE),
        .m_axi_arid(s03_mmu_M_AXI_ARID),
        .m_axi_arlen(s03_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s03_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s03_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s03_mmu_M_AXI_ARQOS),
        .m_axi_arready(s03_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s03_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s03_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s03_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s03_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s03_mmu_M_AXI_AWCACHE),
        .m_axi_awid(s03_mmu_M_AXI_AWID),
        .m_axi_awlen(s03_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s03_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s03_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s03_mmu_M_AXI_AWQOS),
        .m_axi_awready(s03_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s03_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s03_mmu_M_AXI_AWVALID),
        .m_axi_bid(s03_mmu_M_AXI_BID),
        .m_axi_bready(s03_mmu_M_AXI_BREADY),
        .m_axi_bresp(s03_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s03_mmu_M_AXI_BVALID),
        .m_axi_rdata(s03_mmu_M_AXI_RDATA),
        .m_axi_rid(s03_mmu_M_AXI_RID),
        .m_axi_rlast(s03_mmu_M_AXI_RLAST),
        .m_axi_rready(s03_mmu_M_AXI_RREADY),
        .m_axi_rresp(s03_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s03_mmu_M_AXI_RVALID),
        .m_axi_wdata(s03_mmu_M_AXI_WDATA),
        .m_axi_wlast(s03_mmu_M_AXI_WLAST),
        .m_axi_wready(s03_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s03_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s03_mmu_M_AXI_WVALID),
        .s_axi_araddr(S03_AXI_1_ARADDR),
        .s_axi_arburst(S03_AXI_1_ARBURST),
        .s_axi_arcache(S03_AXI_1_ARCACHE),
        .s_axi_arid(S03_AXI_1_ARID),
        .s_axi_arlen(S03_AXI_1_ARLEN),
        .s_axi_arlock(S03_AXI_1_ARLOCK),
        .s_axi_arprot(S03_AXI_1_ARPROT),
        .s_axi_arqos(S03_AXI_1_ARQOS),
        .s_axi_arready(S03_AXI_1_ARREADY),
        .s_axi_arsize(S03_AXI_1_ARSIZE),
        .s_axi_arvalid(S03_AXI_1_ARVALID),
        .s_axi_awaddr(S03_AXI_1_AWADDR),
        .s_axi_awburst(S03_AXI_1_AWBURST),
        .s_axi_awcache(S03_AXI_1_AWCACHE),
        .s_axi_awid(S03_AXI_1_AWID),
        .s_axi_awlen(S03_AXI_1_AWLEN),
        .s_axi_awlock(S03_AXI_1_AWLOCK),
        .s_axi_awprot(S03_AXI_1_AWPROT),
        .s_axi_awqos(S03_AXI_1_AWQOS),
        .s_axi_awready(S03_AXI_1_AWREADY),
        .s_axi_awsize(S03_AXI_1_AWSIZE),
        .s_axi_awvalid(S03_AXI_1_AWVALID),
        .s_axi_bid(S03_AXI_1_BID),
        .s_axi_bready(S03_AXI_1_BREADY),
        .s_axi_bresp(S03_AXI_1_BRESP),
        .s_axi_bvalid(S03_AXI_1_BVALID),
        .s_axi_rdata(S03_AXI_1_RDATA),
        .s_axi_rid(S03_AXI_1_RID),
        .s_axi_rlast(S03_AXI_1_RLAST),
        .s_axi_rready(S03_AXI_1_RREADY),
        .s_axi_rresp(S03_AXI_1_RRESP),
        .s_axi_rvalid(S03_AXI_1_RVALID),
        .s_axi_wdata(S03_AXI_1_WDATA),
        .s_axi_wlast(S03_AXI_1_WLAST),
        .s_axi_wready(S03_AXI_1_WREADY),
        .s_axi_wstrb(S03_AXI_1_WSTRB),
        .s_axi_wvalid(S03_AXI_1_WVALID));
  ulp_xbar_2 xbar
       (.aclk(axi_interconnect_1_ACLK_net),
        .aresetn(axi_interconnect_1_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize({xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize({xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s03_couplers_to_xbar_ARBURST,s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s03_couplers_to_xbar_ARCACHE,s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARID,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARID}),
        .s_axi_arlen({s03_couplers_to_xbar_ARLEN,s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s03_couplers_to_xbar_ARLOCK,s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s03_couplers_to_xbar_ARPROT,s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s03_couplers_to_xbar_ARQOS,s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s03_couplers_to_xbar_ARREADY,s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s03_couplers_to_xbar_ARSIZE,s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s03_couplers_to_xbar_ARVALID,s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s03_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s03_couplers_to_xbar_AWBURST,s02_couplers_to_xbar_AWBURST,s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s03_couplers_to_xbar_AWCACHE,s02_couplers_to_xbar_AWCACHE,s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWID,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWID}),
        .s_axi_awlen({s03_couplers_to_xbar_AWLEN,s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s03_couplers_to_xbar_AWLOCK,s02_couplers_to_xbar_AWLOCK,s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s03_couplers_to_xbar_AWPROT,s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s03_couplers_to_xbar_AWQOS,s02_couplers_to_xbar_AWQOS,s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s03_couplers_to_xbar_AWREADY,s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s03_couplers_to_xbar_AWSIZE,s02_couplers_to_xbar_AWSIZE,s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s03_couplers_to_xbar_AWVALID,s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bid({s01_couplers_to_xbar_BID,s00_couplers_to_xbar_BID}),
        .s_axi_bready({s03_couplers_to_xbar_BREADY,s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s03_couplers_to_xbar_BRESP,s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s03_couplers_to_xbar_BVALID,s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s03_couplers_to_xbar_RDATA,s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s01_couplers_to_xbar_RID,s00_couplers_to_xbar_RID}),
        .s_axi_rlast({s03_couplers_to_xbar_RLAST,s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s03_couplers_to_xbar_RREADY,s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s03_couplers_to_xbar_RRESP,s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s03_couplers_to_xbar_RVALID,s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s03_couplers_to_xbar_WDATA,s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s03_couplers_to_xbar_WLAST,s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s03_couplers_to_xbar_WREADY,s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s03_couplers_to_xbar_WSTRB,s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s03_couplers_to_xbar_WVALID,s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module ulp_interconnect_axilite_user_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [8:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [8:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [6:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [6:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [24:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [24:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axilite_user_ACLK_net;
  wire interconnect_axilite_user_ARESETN_net;
  wire [24:0]interconnect_axilite_user_to_s00_couplers_ARADDR;
  wire [2:0]interconnect_axilite_user_to_s00_couplers_ARPROT;
  wire interconnect_axilite_user_to_s00_couplers_ARREADY;
  wire interconnect_axilite_user_to_s00_couplers_ARVALID;
  wire [24:0]interconnect_axilite_user_to_s00_couplers_AWADDR;
  wire [2:0]interconnect_axilite_user_to_s00_couplers_AWPROT;
  wire interconnect_axilite_user_to_s00_couplers_AWREADY;
  wire interconnect_axilite_user_to_s00_couplers_AWVALID;
  wire interconnect_axilite_user_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axilite_user_to_s00_couplers_BRESP;
  wire interconnect_axilite_user_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axilite_user_to_s00_couplers_RDATA;
  wire interconnect_axilite_user_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axilite_user_to_s00_couplers_RRESP;
  wire interconnect_axilite_user_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axilite_user_to_s00_couplers_WDATA;
  wire interconnect_axilite_user_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axilite_user_to_s00_couplers_WSTRB;
  wire interconnect_axilite_user_to_s00_couplers_WVALID;
  wire [8:0]m00_couplers_to_interconnect_axilite_user_ARADDR;
  wire m00_couplers_to_interconnect_axilite_user_ARREADY;
  wire m00_couplers_to_interconnect_axilite_user_ARVALID;
  wire [8:0]m00_couplers_to_interconnect_axilite_user_AWADDR;
  wire m00_couplers_to_interconnect_axilite_user_AWREADY;
  wire m00_couplers_to_interconnect_axilite_user_AWVALID;
  wire m00_couplers_to_interconnect_axilite_user_BREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_user_BRESP;
  wire m00_couplers_to_interconnect_axilite_user_BVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_user_RDATA;
  wire m00_couplers_to_interconnect_axilite_user_RREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_user_RRESP;
  wire m00_couplers_to_interconnect_axilite_user_RVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_user_WDATA;
  wire m00_couplers_to_interconnect_axilite_user_WREADY;
  wire [3:0]m00_couplers_to_interconnect_axilite_user_WSTRB;
  wire m00_couplers_to_interconnect_axilite_user_WVALID;
  wire [6:0]m01_couplers_to_interconnect_axilite_user_ARADDR;
  wire m01_couplers_to_interconnect_axilite_user_ARREADY;
  wire m01_couplers_to_interconnect_axilite_user_ARVALID;
  wire [6:0]m01_couplers_to_interconnect_axilite_user_AWADDR;
  wire m01_couplers_to_interconnect_axilite_user_AWREADY;
  wire m01_couplers_to_interconnect_axilite_user_AWVALID;
  wire m01_couplers_to_interconnect_axilite_user_BREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_user_BRESP;
  wire m01_couplers_to_interconnect_axilite_user_BVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_user_RDATA;
  wire m01_couplers_to_interconnect_axilite_user_RREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_user_RRESP;
  wire m01_couplers_to_interconnect_axilite_user_RVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_user_WDATA;
  wire m01_couplers_to_interconnect_axilite_user_WREADY;
  wire [3:0]m01_couplers_to_interconnect_axilite_user_WSTRB;
  wire m01_couplers_to_interconnect_axilite_user_WVALID;
  wire [24:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [24:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [24:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [24:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [49:25]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [49:25]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[8:0] = m00_couplers_to_interconnect_axilite_user_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_interconnect_axilite_user_ARVALID;
  assign M00_AXI_awaddr[8:0] = m00_couplers_to_interconnect_axilite_user_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_interconnect_axilite_user_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_interconnect_axilite_user_BREADY;
  assign M00_AXI_rready = m00_couplers_to_interconnect_axilite_user_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_interconnect_axilite_user_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_interconnect_axilite_user_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_interconnect_axilite_user_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[6:0] = m01_couplers_to_interconnect_axilite_user_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_interconnect_axilite_user_ARVALID;
  assign M01_AXI_awaddr[6:0] = m01_couplers_to_interconnect_axilite_user_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_interconnect_axilite_user_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_interconnect_axilite_user_BREADY;
  assign M01_AXI_rready = m01_couplers_to_interconnect_axilite_user_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_interconnect_axilite_user_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_interconnect_axilite_user_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_interconnect_axilite_user_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axilite_user_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axilite_user_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axilite_user_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axilite_user_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axilite_user_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = interconnect_axilite_user_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axilite_user_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axilite_user_to_s00_couplers_WREADY;
  assign interconnect_axilite_user_ACLK_net = ACLK;
  assign interconnect_axilite_user_ARESETN_net = ARESETN;
  assign interconnect_axilite_user_to_s00_couplers_ARADDR = S00_AXI_araddr[24:0];
  assign interconnect_axilite_user_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axilite_user_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axilite_user_to_s00_couplers_AWADDR = S00_AXI_awaddr[24:0];
  assign interconnect_axilite_user_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axilite_user_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axilite_user_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axilite_user_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axilite_user_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axilite_user_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axilite_user_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_interconnect_axilite_user_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_interconnect_axilite_user_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_interconnect_axilite_user_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_interconnect_axilite_user_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_interconnect_axilite_user_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_interconnect_axilite_user_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_interconnect_axilite_user_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_interconnect_axilite_user_WREADY = M00_AXI_wready;
  assign m01_couplers_to_interconnect_axilite_user_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_interconnect_axilite_user_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_interconnect_axilite_user_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_interconnect_axilite_user_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_interconnect_axilite_user_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_interconnect_axilite_user_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_interconnect_axilite_user_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_interconnect_axilite_user_WREADY = M01_AXI_wready;
  m00_couplers_imp_1DIICHO m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_interconnect_axilite_user_ARADDR),
        .M_AXI_arready(m00_couplers_to_interconnect_axilite_user_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_interconnect_axilite_user_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_interconnect_axilite_user_AWADDR),
        .M_AXI_awready(m00_couplers_to_interconnect_axilite_user_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_interconnect_axilite_user_AWVALID),
        .M_AXI_bready(m00_couplers_to_interconnect_axilite_user_BREADY),
        .M_AXI_bresp(m00_couplers_to_interconnect_axilite_user_BRESP),
        .M_AXI_bvalid(m00_couplers_to_interconnect_axilite_user_BVALID),
        .M_AXI_rdata(m00_couplers_to_interconnect_axilite_user_RDATA),
        .M_AXI_rready(m00_couplers_to_interconnect_axilite_user_RREADY),
        .M_AXI_rresp(m00_couplers_to_interconnect_axilite_user_RRESP),
        .M_AXI_rvalid(m00_couplers_to_interconnect_axilite_user_RVALID),
        .M_AXI_wdata(m00_couplers_to_interconnect_axilite_user_WDATA),
        .M_AXI_wready(m00_couplers_to_interconnect_axilite_user_WREADY),
        .M_AXI_wstrb(m00_couplers_to_interconnect_axilite_user_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_interconnect_axilite_user_WVALID),
        .S_ACLK(interconnect_axilite_user_ACLK_net),
        .S_ARESETN(interconnect_axilite_user_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_V1OR3T m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_interconnect_axilite_user_ARADDR),
        .M_AXI_arready(m01_couplers_to_interconnect_axilite_user_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_interconnect_axilite_user_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_interconnect_axilite_user_AWADDR),
        .M_AXI_awready(m01_couplers_to_interconnect_axilite_user_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_interconnect_axilite_user_AWVALID),
        .M_AXI_bready(m01_couplers_to_interconnect_axilite_user_BREADY),
        .M_AXI_bresp(m01_couplers_to_interconnect_axilite_user_BRESP),
        .M_AXI_bvalid(m01_couplers_to_interconnect_axilite_user_BVALID),
        .M_AXI_rdata(m01_couplers_to_interconnect_axilite_user_RDATA),
        .M_AXI_rready(m01_couplers_to_interconnect_axilite_user_RREADY),
        .M_AXI_rresp(m01_couplers_to_interconnect_axilite_user_RRESP),
        .M_AXI_rvalid(m01_couplers_to_interconnect_axilite_user_RVALID),
        .M_AXI_wdata(m01_couplers_to_interconnect_axilite_user_WDATA),
        .M_AXI_wready(m01_couplers_to_interconnect_axilite_user_WREADY),
        .M_AXI_wstrb(m01_couplers_to_interconnect_axilite_user_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_interconnect_axilite_user_WVALID),
        .S_ACLK(interconnect_axilite_user_ACLK_net),
        .S_ARESETN(interconnect_axilite_user_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_7LJ24M s00_couplers
       (.M_ACLK(interconnect_axilite_user_ACLK_net),
        .M_ARESETN(interconnect_axilite_user_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axilite_user_to_s00_couplers_ARADDR),
        .S_AXI_arprot(interconnect_axilite_user_to_s00_couplers_ARPROT),
        .S_AXI_arready(interconnect_axilite_user_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(interconnect_axilite_user_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_user_to_s00_couplers_AWADDR),
        .S_AXI_awprot(interconnect_axilite_user_to_s00_couplers_AWPROT),
        .S_AXI_awready(interconnect_axilite_user_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(interconnect_axilite_user_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axilite_user_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axilite_user_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axilite_user_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axilite_user_to_s00_couplers_RDATA),
        .S_AXI_rready(interconnect_axilite_user_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axilite_user_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axilite_user_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axilite_user_to_s00_couplers_WDATA),
        .S_AXI_wready(interconnect_axilite_user_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axilite_user_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_user_to_s00_couplers_WVALID));
  ulp_xbar_5 xbar
       (.aclk(interconnect_axilite_user_ACLK_net),
        .aresetn(interconnect_axilite_user_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
