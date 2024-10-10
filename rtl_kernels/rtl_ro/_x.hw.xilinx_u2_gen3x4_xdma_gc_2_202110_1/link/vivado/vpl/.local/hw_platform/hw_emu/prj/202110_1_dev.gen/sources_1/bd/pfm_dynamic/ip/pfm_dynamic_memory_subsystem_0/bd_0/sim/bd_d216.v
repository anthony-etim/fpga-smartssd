//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_d216.bd
//Design : bd_d216
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_d216,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_d216,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=17,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=3,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,da_bram_cntlr_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "pfm_dynamic_memory_subsystem_0.hwdef" *) 
module bd_d216
   (DDR4_MEM00_DIFF_CLK_clk_n,
    DDR4_MEM00_DIFF_CLK_clk_p,
    DDR4_MEM00_act_n,
    DDR4_MEM00_adr,
    DDR4_MEM00_ba,
    DDR4_MEM00_bg,
    DDR4_MEM00_ck_c,
    DDR4_MEM00_ck_t,
    DDR4_MEM00_cke,
    DDR4_MEM00_cs_n,
    DDR4_MEM00_dm_n,
    DDR4_MEM00_dq,
    DDR4_MEM00_dqs_c,
    DDR4_MEM00_dqs_t,
    DDR4_MEM00_odt,
    DDR4_MEM00_reset_n,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
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
    S_AXI_CTRL_araddr,
    S_AXI_CTRL_arprot,
    S_AXI_CTRL_arready,
    S_AXI_CTRL_arvalid,
    S_AXI_CTRL_awaddr,
    S_AXI_CTRL_awprot,
    S_AXI_CTRL_awready,
    S_AXI_CTRL_awvalid,
    S_AXI_CTRL_bready,
    S_AXI_CTRL_bresp,
    S_AXI_CTRL_bvalid,
    S_AXI_CTRL_rdata,
    S_AXI_CTRL_rready,
    S_AXI_CTRL_rresp,
    S_AXI_CTRL_rvalid,
    S_AXI_CTRL_wdata,
    S_AXI_CTRL_wready,
    S_AXI_CTRL_wstrb,
    S_AXI_CTRL_wvalid,
    aclk,
    aresetn,
    ddr4_mem00_sys_rst,
    ddr4_mem00_ui_clk,
    ddr4_mem_calib_complete,
    ddr4_mem_calib_vec);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM00_DIFF_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM00_DIFF_CLK, CAN_DEBUG false, FREQ_HZ 100000000" *) input DDR4_MEM00_DIFF_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM00_DIFF_CLK CLK_P" *) input DDR4_MEM00_DIFF_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM00, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NO_DM_NO_DBI, DATA_WIDTH 72, MEMORY_PART MT40A512M16HA-075E, MEMORY_TYPE Components, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 833" *) output DDR4_MEM00_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 ADR" *) output [16:0]DDR4_MEM00_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 BA" *) output [1:0]DDR4_MEM00_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 BG" *) output [0:0]DDR4_MEM00_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 CK_C" *) output [0:0]DDR4_MEM00_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 CK_T" *) output [0:0]DDR4_MEM00_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 CKE" *) output [0:0]DDR4_MEM00_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 CS_N" *) output [0:0]DDR4_MEM00_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 DM_N" *) inout [8:0]DDR4_MEM00_dm_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 DQ" *) inout [71:0]DDR4_MEM00_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 DQS_C" *) inout [8:0]DDR4_MEM00_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 DQS_T" *) inout [8:0]DDR4_MEM00_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 ODT" *) output [0:0]DDR4_MEM00_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 RESET_N" *) output DDR4_MEM00_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 35, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_dma_pcie_aclk, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [34:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]S00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [34:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [0:0]S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]S00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input [0:0]S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_dma_pcie_aclk, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]S_AXI_CTRL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARPROT" *) input [2:0]S_AXI_CTRL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY" *) output S_AXI_CTRL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID" *) input S_AXI_CTRL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR" *) input [31:0]S_AXI_CTRL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWPROT" *) input [2:0]S_AXI_CTRL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY" *) output S_AXI_CTRL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID" *) input S_AXI_CTRL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY" *) input S_AXI_CTRL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP" *) output [1:0]S_AXI_CTRL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID" *) output S_AXI_CTRL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA" *) output [31:0]S_AXI_CTRL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY" *) input S_AXI_CTRL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *) output [1:0]S_AXI_CTRL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID" *) output S_AXI_CTRL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA" *) input [31:0]S_AXI_CTRL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY" *) output S_AXI_CTRL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WSTRB" *) input [3:0]S_AXI_CTRL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID" *) input S_AXI_CTRL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S00_AXI:S_AXI_CTRL, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN pfm_dynamic_dma_pcie_aclk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DDR4_MEM00_SYS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DDR4_MEM00_SYS_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ddr4_mem00_sys_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDR4_MEM00_UI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDR4_MEM00_UI_CLK, CLK_DOMAIN bd_d216_ddr4_mem00_0_c0_ddr4_ui_clk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.00" *) output ddr4_mem00_ui_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DDR4_MEM_CALIB_COMPLETE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DDR4_MEM_CALIB_COMPLETE, LAYERED_METADATA undef" *) output ddr4_mem_calib_complete;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DDR4_MEM_CALIB_VEC DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DDR4_MEM_CALIB_VEC, LAYERED_METADATA undef, PortWidth 1" *) output [0:0]ddr4_mem_calib_vec;

  wire DDR4_MEM00_DIFF_CLK_1_CLK_N;
  wire DDR4_MEM00_DIFF_CLK_1_CLK_P;
  wire [34:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire [0:0]S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire [0:0]S00_AXI_1_ARVALID;
  wire [34:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [0:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire [0:0]S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire [0:0]S00_AXI_1_AWVALID;
  wire [0:0]S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire [0:0]S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire [0:0]S00_AXI_1_RLAST;
  wire [0:0]S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire [0:0]S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire [0:0]S00_AXI_1_WLAST;
  wire [0:0]S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire [0:0]S00_AXI_1_WVALID;
  wire [31:0]S_AXI_CTRL_1_ARADDR;
  wire [2:0]S_AXI_CTRL_1_ARPROT;
  wire S_AXI_CTRL_1_ARREADY;
  wire S_AXI_CTRL_1_ARVALID;
  wire [31:0]S_AXI_CTRL_1_AWADDR;
  wire [2:0]S_AXI_CTRL_1_AWPROT;
  wire S_AXI_CTRL_1_AWREADY;
  wire S_AXI_CTRL_1_AWVALID;
  wire S_AXI_CTRL_1_BREADY;
  wire [1:0]S_AXI_CTRL_1_BRESP;
  wire S_AXI_CTRL_1_BVALID;
  wire [31:0]S_AXI_CTRL_1_RDATA;
  wire S_AXI_CTRL_1_RREADY;
  wire [1:0]S_AXI_CTRL_1_RRESP;
  wire S_AXI_CTRL_1_RVALID;
  wire [31:0]S_AXI_CTRL_1_WDATA;
  wire S_AXI_CTRL_1_WREADY;
  wire [3:0]S_AXI_CTRL_1_WSTRB;
  wire S_AXI_CTRL_1_WVALID;
  wire aclk_1;
  wire aresetn_1;
  wire calib_reduce_Res;
  wire [0:0]calib_vector_concat_dout;
  wire ddr4_mem00_C0_DDR4_ACT_N;
  wire [16:0]ddr4_mem00_C0_DDR4_ADR;
  wire [1:0]ddr4_mem00_C0_DDR4_BA;
  wire ddr4_mem00_C0_DDR4_BG;
  wire ddr4_mem00_C0_DDR4_CKE;
  wire ddr4_mem00_C0_DDR4_CK_C;
  wire ddr4_mem00_C0_DDR4_CK_T;
  wire ddr4_mem00_C0_DDR4_CS_N;
  wire [8:0]ddr4_mem00_C0_DDR4_DM_N;
  wire [71:0]ddr4_mem00_C0_DDR4_DQ;
  wire [8:0]ddr4_mem00_C0_DDR4_DQS_C;
  wire [8:0]ddr4_mem00_C0_DDR4_DQS_T;
  wire ddr4_mem00_C0_DDR4_ODT;
  wire ddr4_mem00_C0_DDR4_RESET_N;
  wire ddr4_mem00_c0_ddr4_ui_clk;
  wire ddr4_mem00_sys_rst_1;
  wire [31:0]interconnect_DDR4_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_ARREADY;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_ARSIZE;
  wire interconnect_DDR4_MEM00_M00_AXI_ARVALID;
  wire [31:0]interconnect_DDR4_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_AWREADY;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_AWSIZE;
  wire interconnect_DDR4_MEM00_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM00_M00_AXI_WVALID;
  wire [16:0]interconnect_PLRAM_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_PLRAM_MEM00_M00_AXI_ARLEN;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_ARPROT;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARREADY;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_ARSIZE;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARVALID;
  wire [16:0]interconnect_PLRAM_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_PLRAM_MEM00_M00_AXI_AWLEN;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_AWPROT;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWREADY;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_AWSIZE;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWVALID;
  wire interconnect_PLRAM_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_BRESP;
  wire interconnect_PLRAM_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_PLRAM_MEM00_M00_AXI_RDATA;
  wire interconnect_PLRAM_MEM00_M00_AXI_RLAST;
  wire interconnect_PLRAM_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_RRESP;
  wire interconnect_PLRAM_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_PLRAM_MEM00_M00_AXI_WDATA;
  wire interconnect_PLRAM_MEM00_M00_AXI_WLAST;
  wire interconnect_PLRAM_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_PLRAM_MEM00_M00_AXI_WSTRB;
  wire interconnect_PLRAM_MEM00_M00_AXI_WVALID;
  wire [0:0]psr_aclk_SLR0_interconnect_aresetn;

  assign DDR4_MEM00_DIFF_CLK_1_CLK_N = DDR4_MEM00_DIFF_CLK_clk_n;
  assign DDR4_MEM00_DIFF_CLK_1_CLK_P = DDR4_MEM00_DIFF_CLK_clk_p;
  assign DDR4_MEM00_act_n = ddr4_mem00_C0_DDR4_ACT_N;
  assign DDR4_MEM00_adr[16:0] = ddr4_mem00_C0_DDR4_ADR;
  assign DDR4_MEM00_ba[1:0] = ddr4_mem00_C0_DDR4_BA;
  assign DDR4_MEM00_bg[0] = ddr4_mem00_C0_DDR4_BG;
  assign DDR4_MEM00_ck_c[0] = ddr4_mem00_C0_DDR4_CK_C;
  assign DDR4_MEM00_ck_t[0] = ddr4_mem00_C0_DDR4_CK_T;
  assign DDR4_MEM00_cke[0] = ddr4_mem00_C0_DDR4_CKE;
  assign DDR4_MEM00_cs_n[0] = ddr4_mem00_C0_DDR4_CS_N;
  assign DDR4_MEM00_odt[0] = ddr4_mem00_C0_DDR4_ODT;
  assign DDR4_MEM00_reset_n = ddr4_mem00_C0_DDR4_RESET_N;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[34:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = S00_AXI_arlock[0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid[0];
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[34:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWLOCK = S00_AXI_awlock[0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWQOS = S00_AXI_awqos[3:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid[0];
  assign S00_AXI_1_BREADY = S00_AXI_bready[0];
  assign S00_AXI_1_RREADY = S00_AXI_rready[0];
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast[0];
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid[0];
  assign S00_AXI_arready[0] = S00_AXI_1_ARREADY;
  assign S00_AXI_awready[0] = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid[0] = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rlast[0] = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid[0] = S00_AXI_1_RVALID;
  assign S00_AXI_wready[0] = S00_AXI_1_WREADY;
  assign S_AXI_CTRL_1_ARADDR = S_AXI_CTRL_araddr[31:0];
  assign S_AXI_CTRL_1_ARPROT = S_AXI_CTRL_arprot[2:0];
  assign S_AXI_CTRL_1_ARVALID = S_AXI_CTRL_arvalid;
  assign S_AXI_CTRL_1_AWADDR = S_AXI_CTRL_awaddr[31:0];
  assign S_AXI_CTRL_1_AWPROT = S_AXI_CTRL_awprot[2:0];
  assign S_AXI_CTRL_1_AWVALID = S_AXI_CTRL_awvalid;
  assign S_AXI_CTRL_1_BREADY = S_AXI_CTRL_bready;
  assign S_AXI_CTRL_1_RREADY = S_AXI_CTRL_rready;
  assign S_AXI_CTRL_1_WDATA = S_AXI_CTRL_wdata[31:0];
  assign S_AXI_CTRL_1_WSTRB = S_AXI_CTRL_wstrb[3:0];
  assign S_AXI_CTRL_1_WVALID = S_AXI_CTRL_wvalid;
  assign S_AXI_CTRL_arready = S_AXI_CTRL_1_ARREADY;
  assign S_AXI_CTRL_awready = S_AXI_CTRL_1_AWREADY;
  assign S_AXI_CTRL_bresp[1:0] = S_AXI_CTRL_1_BRESP;
  assign S_AXI_CTRL_bvalid = S_AXI_CTRL_1_BVALID;
  assign S_AXI_CTRL_rdata[31:0] = S_AXI_CTRL_1_RDATA;
  assign S_AXI_CTRL_rresp[1:0] = S_AXI_CTRL_1_RRESP;
  assign S_AXI_CTRL_rvalid = S_AXI_CTRL_1_RVALID;
  assign S_AXI_CTRL_wready = S_AXI_CTRL_1_WREADY;
  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign ddr4_mem00_sys_rst_1 = ddr4_mem00_sys_rst;
  assign ddr4_mem00_ui_clk = ddr4_mem00_c0_ddr4_ui_clk;
  assign ddr4_mem_calib_complete = calib_reduce_Res;
  assign ddr4_mem_calib_vec[0] = calib_vector_concat_dout;
  interconnect_imp_6HQKUY interconnect
       (.M00_AXI1_araddr(interconnect_PLRAM_MEM00_M00_AXI_ARADDR),
        .M00_AXI1_arburst(interconnect_PLRAM_MEM00_M00_AXI_ARBURST),
        .M00_AXI1_arcache(interconnect_PLRAM_MEM00_M00_AXI_ARCACHE),
        .M00_AXI1_arlen(interconnect_PLRAM_MEM00_M00_AXI_ARLEN),
        .M00_AXI1_arlock(interconnect_PLRAM_MEM00_M00_AXI_ARLOCK),
        .M00_AXI1_arprot(interconnect_PLRAM_MEM00_M00_AXI_ARPROT),
        .M00_AXI1_arready(interconnect_PLRAM_MEM00_M00_AXI_ARREADY),
        .M00_AXI1_arsize(interconnect_PLRAM_MEM00_M00_AXI_ARSIZE),
        .M00_AXI1_arvalid(interconnect_PLRAM_MEM00_M00_AXI_ARVALID),
        .M00_AXI1_awaddr(interconnect_PLRAM_MEM00_M00_AXI_AWADDR),
        .M00_AXI1_awburst(interconnect_PLRAM_MEM00_M00_AXI_AWBURST),
        .M00_AXI1_awcache(interconnect_PLRAM_MEM00_M00_AXI_AWCACHE),
        .M00_AXI1_awlen(interconnect_PLRAM_MEM00_M00_AXI_AWLEN),
        .M00_AXI1_awlock(interconnect_PLRAM_MEM00_M00_AXI_AWLOCK),
        .M00_AXI1_awprot(interconnect_PLRAM_MEM00_M00_AXI_AWPROT),
        .M00_AXI1_awready(interconnect_PLRAM_MEM00_M00_AXI_AWREADY),
        .M00_AXI1_awsize(interconnect_PLRAM_MEM00_M00_AXI_AWSIZE),
        .M00_AXI1_awvalid(interconnect_PLRAM_MEM00_M00_AXI_AWVALID),
        .M00_AXI1_bready(interconnect_PLRAM_MEM00_M00_AXI_BREADY),
        .M00_AXI1_bresp(interconnect_PLRAM_MEM00_M00_AXI_BRESP),
        .M00_AXI1_bvalid(interconnect_PLRAM_MEM00_M00_AXI_BVALID),
        .M00_AXI1_rdata(interconnect_PLRAM_MEM00_M00_AXI_RDATA),
        .M00_AXI1_rlast(interconnect_PLRAM_MEM00_M00_AXI_RLAST),
        .M00_AXI1_rready(interconnect_PLRAM_MEM00_M00_AXI_RREADY),
        .M00_AXI1_rresp(interconnect_PLRAM_MEM00_M00_AXI_RRESP),
        .M00_AXI1_rvalid(interconnect_PLRAM_MEM00_M00_AXI_RVALID),
        .M00_AXI1_wdata(interconnect_PLRAM_MEM00_M00_AXI_WDATA),
        .M00_AXI1_wlast(interconnect_PLRAM_MEM00_M00_AXI_WLAST),
        .M00_AXI1_wready(interconnect_PLRAM_MEM00_M00_AXI_WREADY),
        .M00_AXI1_wstrb(interconnect_PLRAM_MEM00_M00_AXI_WSTRB),
        .M00_AXI1_wvalid(interconnect_PLRAM_MEM00_M00_AXI_WVALID),
        .M00_AXI_araddr(interconnect_DDR4_MEM00_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_DDR4_MEM00_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_DDR4_MEM00_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_DDR4_MEM00_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_DDR4_MEM00_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_DDR4_MEM00_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_DDR4_MEM00_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_DDR4_MEM00_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect_DDR4_MEM00_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect_DDR4_MEM00_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_DDR4_MEM00_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_DDR4_MEM00_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_DDR4_MEM00_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_DDR4_MEM00_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_DDR4_MEM00_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_DDR4_MEM00_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_DDR4_MEM00_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_DDR4_MEM00_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect_DDR4_MEM00_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect_DDR4_MEM00_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_DDR4_MEM00_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_DDR4_MEM00_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_DDR4_MEM00_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_DDR4_MEM00_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_DDR4_MEM00_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_DDR4_MEM00_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_DDR4_MEM00_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_DDR4_MEM00_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_DDR4_MEM00_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_DDR4_MEM00_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_DDR4_MEM00_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_DDR4_MEM00_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_DDR4_MEM00_M00_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .aclk(aclk_1),
        .aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .ddr4_mem00_ui_clk(ddr4_mem00_c0_ddr4_ui_clk));
  memory_imp_1K98CM8 memory
       (.C0_DDR4_S_AXI_araddr(interconnect_DDR4_MEM00_M00_AXI_ARADDR),
        .C0_DDR4_S_AXI_arburst(interconnect_DDR4_MEM00_M00_AXI_ARBURST),
        .C0_DDR4_S_AXI_arcache(interconnect_DDR4_MEM00_M00_AXI_ARCACHE),
        .C0_DDR4_S_AXI_arlen(interconnect_DDR4_MEM00_M00_AXI_ARLEN),
        .C0_DDR4_S_AXI_arlock(interconnect_DDR4_MEM00_M00_AXI_ARLOCK),
        .C0_DDR4_S_AXI_arprot(interconnect_DDR4_MEM00_M00_AXI_ARPROT),
        .C0_DDR4_S_AXI_arqos(interconnect_DDR4_MEM00_M00_AXI_ARQOS),
        .C0_DDR4_S_AXI_arready(interconnect_DDR4_MEM00_M00_AXI_ARREADY),
        .C0_DDR4_S_AXI_arsize(interconnect_DDR4_MEM00_M00_AXI_ARSIZE),
        .C0_DDR4_S_AXI_arvalid(interconnect_DDR4_MEM00_M00_AXI_ARVALID),
        .C0_DDR4_S_AXI_awaddr(interconnect_DDR4_MEM00_M00_AXI_AWADDR),
        .C0_DDR4_S_AXI_awburst(interconnect_DDR4_MEM00_M00_AXI_AWBURST),
        .C0_DDR4_S_AXI_awcache(interconnect_DDR4_MEM00_M00_AXI_AWCACHE),
        .C0_DDR4_S_AXI_awlen(interconnect_DDR4_MEM00_M00_AXI_AWLEN),
        .C0_DDR4_S_AXI_awlock(interconnect_DDR4_MEM00_M00_AXI_AWLOCK),
        .C0_DDR4_S_AXI_awprot(interconnect_DDR4_MEM00_M00_AXI_AWPROT),
        .C0_DDR4_S_AXI_awqos(interconnect_DDR4_MEM00_M00_AXI_AWQOS),
        .C0_DDR4_S_AXI_awready(interconnect_DDR4_MEM00_M00_AXI_AWREADY),
        .C0_DDR4_S_AXI_awsize(interconnect_DDR4_MEM00_M00_AXI_AWSIZE),
        .C0_DDR4_S_AXI_awvalid(interconnect_DDR4_MEM00_M00_AXI_AWVALID),
        .C0_DDR4_S_AXI_bready(interconnect_DDR4_MEM00_M00_AXI_BREADY),
        .C0_DDR4_S_AXI_bresp(interconnect_DDR4_MEM00_M00_AXI_BRESP),
        .C0_DDR4_S_AXI_bvalid(interconnect_DDR4_MEM00_M00_AXI_BVALID),
        .C0_DDR4_S_AXI_rdata(interconnect_DDR4_MEM00_M00_AXI_RDATA),
        .C0_DDR4_S_AXI_rlast(interconnect_DDR4_MEM00_M00_AXI_RLAST),
        .C0_DDR4_S_AXI_rready(interconnect_DDR4_MEM00_M00_AXI_RREADY),
        .C0_DDR4_S_AXI_rresp(interconnect_DDR4_MEM00_M00_AXI_RRESP),
        .C0_DDR4_S_AXI_rvalid(interconnect_DDR4_MEM00_M00_AXI_RVALID),
        .C0_DDR4_S_AXI_wdata(interconnect_DDR4_MEM00_M00_AXI_WDATA),
        .C0_DDR4_S_AXI_wlast(interconnect_DDR4_MEM00_M00_AXI_WLAST),
        .C0_DDR4_S_AXI_wready(interconnect_DDR4_MEM00_M00_AXI_WREADY),
        .C0_DDR4_S_AXI_wstrb(interconnect_DDR4_MEM00_M00_AXI_WSTRB),
        .C0_DDR4_S_AXI_wvalid(interconnect_DDR4_MEM00_M00_AXI_WVALID),
        .DDR4_MEM00_DIFF_CLK_clk_n(DDR4_MEM00_DIFF_CLK_1_CLK_N),
        .DDR4_MEM00_DIFF_CLK_clk_p(DDR4_MEM00_DIFF_CLK_1_CLK_P),
        .DDR4_MEM00_act_n(ddr4_mem00_C0_DDR4_ACT_N),
        .DDR4_MEM00_adr(ddr4_mem00_C0_DDR4_ADR),
        .DDR4_MEM00_ba(ddr4_mem00_C0_DDR4_BA),
        .DDR4_MEM00_bg(ddr4_mem00_C0_DDR4_BG),
        .DDR4_MEM00_ck_c(ddr4_mem00_C0_DDR4_CK_C),
        .DDR4_MEM00_ck_t(ddr4_mem00_C0_DDR4_CK_T),
        .DDR4_MEM00_cke(ddr4_mem00_C0_DDR4_CKE),
        .DDR4_MEM00_cs_n(ddr4_mem00_C0_DDR4_CS_N),
        .DDR4_MEM00_dm_n(DDR4_MEM00_dm_n[8:0]),
        .DDR4_MEM00_dq(DDR4_MEM00_dq[71:0]),
        .DDR4_MEM00_dqs_c(DDR4_MEM00_dqs_c[8:0]),
        .DDR4_MEM00_dqs_t(DDR4_MEM00_dqs_t[8:0]),
        .DDR4_MEM00_odt(ddr4_mem00_C0_DDR4_ODT),
        .DDR4_MEM00_reset_n(ddr4_mem00_C0_DDR4_RESET_N),
        .S_AXI_CTRL_araddr(S_AXI_CTRL_1_ARADDR),
        .S_AXI_CTRL_arprot(S_AXI_CTRL_1_ARPROT),
        .S_AXI_CTRL_arready(S_AXI_CTRL_1_ARREADY),
        .S_AXI_CTRL_arvalid(S_AXI_CTRL_1_ARVALID),
        .S_AXI_CTRL_awaddr(S_AXI_CTRL_1_AWADDR),
        .S_AXI_CTRL_awprot(S_AXI_CTRL_1_AWPROT),
        .S_AXI_CTRL_awready(S_AXI_CTRL_1_AWREADY),
        .S_AXI_CTRL_awvalid(S_AXI_CTRL_1_AWVALID),
        .S_AXI_CTRL_bready(S_AXI_CTRL_1_BREADY),
        .S_AXI_CTRL_bresp(S_AXI_CTRL_1_BRESP),
        .S_AXI_CTRL_bvalid(S_AXI_CTRL_1_BVALID),
        .S_AXI_CTRL_rdata(S_AXI_CTRL_1_RDATA),
        .S_AXI_CTRL_rready(S_AXI_CTRL_1_RREADY),
        .S_AXI_CTRL_rresp(S_AXI_CTRL_1_RRESP),
        .S_AXI_CTRL_rvalid(S_AXI_CTRL_1_RVALID),
        .S_AXI_CTRL_wdata(S_AXI_CTRL_1_WDATA),
        .S_AXI_CTRL_wready(S_AXI_CTRL_1_WREADY),
        .S_AXI_CTRL_wstrb(S_AXI_CTRL_1_WSTRB),
        .S_AXI_CTRL_wvalid(S_AXI_CTRL_1_WVALID),
        .S_AXI_araddr(interconnect_PLRAM_MEM00_M00_AXI_ARADDR),
        .S_AXI_arburst(interconnect_PLRAM_MEM00_M00_AXI_ARBURST),
        .S_AXI_arcache(interconnect_PLRAM_MEM00_M00_AXI_ARCACHE),
        .S_AXI_arlen(interconnect_PLRAM_MEM00_M00_AXI_ARLEN),
        .S_AXI_arlock(interconnect_PLRAM_MEM00_M00_AXI_ARLOCK),
        .S_AXI_arprot(interconnect_PLRAM_MEM00_M00_AXI_ARPROT),
        .S_AXI_arready(interconnect_PLRAM_MEM00_M00_AXI_ARREADY),
        .S_AXI_arsize(interconnect_PLRAM_MEM00_M00_AXI_ARSIZE),
        .S_AXI_arvalid(interconnect_PLRAM_MEM00_M00_AXI_ARVALID),
        .S_AXI_awaddr(interconnect_PLRAM_MEM00_M00_AXI_AWADDR),
        .S_AXI_awburst(interconnect_PLRAM_MEM00_M00_AXI_AWBURST),
        .S_AXI_awcache(interconnect_PLRAM_MEM00_M00_AXI_AWCACHE),
        .S_AXI_awlen(interconnect_PLRAM_MEM00_M00_AXI_AWLEN),
        .S_AXI_awlock(interconnect_PLRAM_MEM00_M00_AXI_AWLOCK),
        .S_AXI_awprot(interconnect_PLRAM_MEM00_M00_AXI_AWPROT),
        .S_AXI_awready(interconnect_PLRAM_MEM00_M00_AXI_AWREADY),
        .S_AXI_awsize(interconnect_PLRAM_MEM00_M00_AXI_AWSIZE),
        .S_AXI_awvalid(interconnect_PLRAM_MEM00_M00_AXI_AWVALID),
        .S_AXI_bready(interconnect_PLRAM_MEM00_M00_AXI_BREADY),
        .S_AXI_bresp(interconnect_PLRAM_MEM00_M00_AXI_BRESP),
        .S_AXI_bvalid(interconnect_PLRAM_MEM00_M00_AXI_BVALID),
        .S_AXI_rdata(interconnect_PLRAM_MEM00_M00_AXI_RDATA),
        .S_AXI_rlast(interconnect_PLRAM_MEM00_M00_AXI_RLAST),
        .S_AXI_rready(interconnect_PLRAM_MEM00_M00_AXI_RREADY),
        .S_AXI_rresp(interconnect_PLRAM_MEM00_M00_AXI_RRESP),
        .S_AXI_rvalid(interconnect_PLRAM_MEM00_M00_AXI_RVALID),
        .S_AXI_wdata(interconnect_PLRAM_MEM00_M00_AXI_WDATA),
        .S_AXI_wlast(interconnect_PLRAM_MEM00_M00_AXI_WLAST),
        .S_AXI_wready(interconnect_PLRAM_MEM00_M00_AXI_WREADY),
        .S_AXI_wstrb(interconnect_PLRAM_MEM00_M00_AXI_WSTRB),
        .S_AXI_wvalid(interconnect_PLRAM_MEM00_M00_AXI_WVALID),
        .aclk(aclk_1),
        .aresetn(aresetn_1),
        .ddr4_mem00_sys_rst(ddr4_mem00_sys_rst_1),
        .ddr4_mem00_ui_clk(ddr4_mem00_c0_ddr4_ui_clk),
        .ddr4_mem_calib_complete(calib_reduce_Res),
        .ddr4_mem_calib_vec(calib_vector_concat_dout),
        .s_axi_aresetn(psr_aclk_SLR0_interconnect_aresetn));
  reset_imp_1YKOSPE reset
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .interconnect_aresetn(psr_aclk_SLR0_interconnect_aresetn));
endmodule

module interconnect_imp_6HQKUY
   (M00_AXI1_araddr,
    M00_AXI1_arburst,
    M00_AXI1_arcache,
    M00_AXI1_arlen,
    M00_AXI1_arlock,
    M00_AXI1_arprot,
    M00_AXI1_arready,
    M00_AXI1_arsize,
    M00_AXI1_arvalid,
    M00_AXI1_awaddr,
    M00_AXI1_awburst,
    M00_AXI1_awcache,
    M00_AXI1_awlen,
    M00_AXI1_awlock,
    M00_AXI1_awprot,
    M00_AXI1_awready,
    M00_AXI1_awsize,
    M00_AXI1_awvalid,
    M00_AXI1_bready,
    M00_AXI1_bresp,
    M00_AXI1_bvalid,
    M00_AXI1_rdata,
    M00_AXI1_rlast,
    M00_AXI1_rready,
    M00_AXI1_rresp,
    M00_AXI1_rvalid,
    M00_AXI1_wdata,
    M00_AXI1_wlast,
    M00_AXI1_wready,
    M00_AXI1_wstrb,
    M00_AXI1_wvalid,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
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
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
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
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
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
    aclk,
    aresetn,
    ddr4_mem00_ui_clk);
  output [16:0]M00_AXI1_araddr;
  output [1:0]M00_AXI1_arburst;
  output [3:0]M00_AXI1_arcache;
  output [7:0]M00_AXI1_arlen;
  output M00_AXI1_arlock;
  output [2:0]M00_AXI1_arprot;
  input M00_AXI1_arready;
  output [2:0]M00_AXI1_arsize;
  output M00_AXI1_arvalid;
  output [16:0]M00_AXI1_awaddr;
  output [1:0]M00_AXI1_awburst;
  output [3:0]M00_AXI1_awcache;
  output [7:0]M00_AXI1_awlen;
  output M00_AXI1_awlock;
  output [2:0]M00_AXI1_awprot;
  input M00_AXI1_awready;
  output [2:0]M00_AXI1_awsize;
  output M00_AXI1_awvalid;
  output M00_AXI1_bready;
  input [1:0]M00_AXI1_bresp;
  input M00_AXI1_bvalid;
  input [511:0]M00_AXI1_rdata;
  input M00_AXI1_rlast;
  output M00_AXI1_rready;
  input [1:0]M00_AXI1_rresp;
  input M00_AXI1_rvalid;
  output [511:0]M00_AXI1_wdata;
  output M00_AXI1_wlast;
  input M00_AXI1_wready;
  output [63:0]M00_AXI1_wstrb;
  output M00_AXI1_wvalid;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
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
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
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
  input [34:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  input [34:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input aclk;
  input aresetn;
  input ddr4_mem00_ui_clk;

  wire [34:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [0:0]S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire [0:0]S00_AXI_1_ARVALID;
  wire [34:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [0:0]S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire [0:0]S00_AXI_1_AWVALID;
  wire [0:0]S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RLAST;
  wire [0:0]S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire [0:0]S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire [0:0]S00_AXI_1_WVALID;
  wire aclk_1;
  wire ddr4_mem00_c0_ddr4_ui_clk;
  wire [31:0]interconnect_DDR4_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_ARREADY;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_ARSIZE;
  wire interconnect_DDR4_MEM00_M00_AXI_ARVALID;
  wire [31:0]interconnect_DDR4_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_AWREADY;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_AWSIZE;
  wire interconnect_DDR4_MEM00_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM00_M00_AXI_WVALID;
  wire [16:0]interconnect_PLRAM_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_PLRAM_MEM00_M00_AXI_ARLEN;
  wire [0:0]interconnect_PLRAM_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_ARPROT;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARREADY;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_ARSIZE;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARVALID;
  wire [16:0]interconnect_PLRAM_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_PLRAM_MEM00_M00_AXI_AWLEN;
  wire [0:0]interconnect_PLRAM_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_AWPROT;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWREADY;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_AWSIZE;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWVALID;
  wire interconnect_PLRAM_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_BRESP;
  wire interconnect_PLRAM_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_PLRAM_MEM00_M00_AXI_RDATA;
  wire interconnect_PLRAM_MEM00_M00_AXI_RLAST;
  wire interconnect_PLRAM_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_RRESP;
  wire interconnect_PLRAM_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_PLRAM_MEM00_M00_AXI_WDATA;
  wire interconnect_PLRAM_MEM00_M00_AXI_WLAST;
  wire interconnect_PLRAM_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_PLRAM_MEM00_M00_AXI_WSTRB;
  wire interconnect_PLRAM_MEM00_M00_AXI_WVALID;
  wire [34:0]interconnect_S00_AXI_M00_AXI_ARADDR;
  wire [1:0]interconnect_S00_AXI_M00_AXI_ARBURST;
  wire [3:0]interconnect_S00_AXI_M00_AXI_ARCACHE;
  wire [0:0]interconnect_S00_AXI_M00_AXI_ARID;
  wire [7:0]interconnect_S00_AXI_M00_AXI_ARLEN;
  wire [0:0]interconnect_S00_AXI_M00_AXI_ARLOCK;
  wire [2:0]interconnect_S00_AXI_M00_AXI_ARPROT;
  wire [3:0]interconnect_S00_AXI_M00_AXI_ARQOS;
  wire interconnect_S00_AXI_M00_AXI_ARREADY;
  wire [2:0]interconnect_S00_AXI_M00_AXI_ARSIZE;
  wire [113:0]interconnect_S00_AXI_M00_AXI_ARUSER;
  wire interconnect_S00_AXI_M00_AXI_ARVALID;
  wire [34:0]interconnect_S00_AXI_M00_AXI_AWADDR;
  wire [1:0]interconnect_S00_AXI_M00_AXI_AWBURST;
  wire [3:0]interconnect_S00_AXI_M00_AXI_AWCACHE;
  wire [0:0]interconnect_S00_AXI_M00_AXI_AWID;
  wire [7:0]interconnect_S00_AXI_M00_AXI_AWLEN;
  wire [0:0]interconnect_S00_AXI_M00_AXI_AWLOCK;
  wire [2:0]interconnect_S00_AXI_M00_AXI_AWPROT;
  wire [3:0]interconnect_S00_AXI_M00_AXI_AWQOS;
  wire interconnect_S00_AXI_M00_AXI_AWREADY;
  wire [2:0]interconnect_S00_AXI_M00_AXI_AWSIZE;
  wire [113:0]interconnect_S00_AXI_M00_AXI_AWUSER;
  wire interconnect_S00_AXI_M00_AXI_AWVALID;
  wire [0:0]interconnect_S00_AXI_M00_AXI_BID;
  wire interconnect_S00_AXI_M00_AXI_BREADY;
  wire [1:0]interconnect_S00_AXI_M00_AXI_BRESP;
  wire [113:0]interconnect_S00_AXI_M00_AXI_BUSER;
  wire interconnect_S00_AXI_M00_AXI_BVALID;
  wire [511:0]interconnect_S00_AXI_M00_AXI_RDATA;
  wire [0:0]interconnect_S00_AXI_M00_AXI_RID;
  wire interconnect_S00_AXI_M00_AXI_RLAST;
  wire interconnect_S00_AXI_M00_AXI_RREADY;
  wire [1:0]interconnect_S00_AXI_M00_AXI_RRESP;
  wire [13:0]interconnect_S00_AXI_M00_AXI_RUSER;
  wire interconnect_S00_AXI_M00_AXI_RVALID;
  wire [511:0]interconnect_S00_AXI_M00_AXI_WDATA;
  wire interconnect_S00_AXI_M00_AXI_WLAST;
  wire interconnect_S00_AXI_M00_AXI_WREADY;
  wire [63:0]interconnect_S00_AXI_M00_AXI_WSTRB;
  wire [13:0]interconnect_S00_AXI_M00_AXI_WUSER;
  wire interconnect_S00_AXI_M00_AXI_WVALID;
  wire [34:0]interconnect_S00_AXI_M01_AXI_ARADDR;
  wire [1:0]interconnect_S00_AXI_M01_AXI_ARBURST;
  wire [3:0]interconnect_S00_AXI_M01_AXI_ARCACHE;
  wire [0:0]interconnect_S00_AXI_M01_AXI_ARID;
  wire [7:0]interconnect_S00_AXI_M01_AXI_ARLEN;
  wire [0:0]interconnect_S00_AXI_M01_AXI_ARLOCK;
  wire [2:0]interconnect_S00_AXI_M01_AXI_ARPROT;
  wire [3:0]interconnect_S00_AXI_M01_AXI_ARQOS;
  wire interconnect_S00_AXI_M01_AXI_ARREADY;
  wire [2:0]interconnect_S00_AXI_M01_AXI_ARSIZE;
  wire [113:0]interconnect_S00_AXI_M01_AXI_ARUSER;
  wire interconnect_S00_AXI_M01_AXI_ARVALID;
  wire [34:0]interconnect_S00_AXI_M01_AXI_AWADDR;
  wire [1:0]interconnect_S00_AXI_M01_AXI_AWBURST;
  wire [3:0]interconnect_S00_AXI_M01_AXI_AWCACHE;
  wire [0:0]interconnect_S00_AXI_M01_AXI_AWID;
  wire [7:0]interconnect_S00_AXI_M01_AXI_AWLEN;
  wire [0:0]interconnect_S00_AXI_M01_AXI_AWLOCK;
  wire [2:0]interconnect_S00_AXI_M01_AXI_AWPROT;
  wire [3:0]interconnect_S00_AXI_M01_AXI_AWQOS;
  wire interconnect_S00_AXI_M01_AXI_AWREADY;
  wire [2:0]interconnect_S00_AXI_M01_AXI_AWSIZE;
  wire [113:0]interconnect_S00_AXI_M01_AXI_AWUSER;
  wire interconnect_S00_AXI_M01_AXI_AWVALID;
  wire [0:0]interconnect_S00_AXI_M01_AXI_BID;
  wire interconnect_S00_AXI_M01_AXI_BREADY;
  wire [1:0]interconnect_S00_AXI_M01_AXI_BRESP;
  wire [113:0]interconnect_S00_AXI_M01_AXI_BUSER;
  wire interconnect_S00_AXI_M01_AXI_BVALID;
  wire [511:0]interconnect_S00_AXI_M01_AXI_RDATA;
  wire [0:0]interconnect_S00_AXI_M01_AXI_RID;
  wire interconnect_S00_AXI_M01_AXI_RLAST;
  wire interconnect_S00_AXI_M01_AXI_RREADY;
  wire [1:0]interconnect_S00_AXI_M01_AXI_RRESP;
  wire [13:0]interconnect_S00_AXI_M01_AXI_RUSER;
  wire interconnect_S00_AXI_M01_AXI_RVALID;
  wire [511:0]interconnect_S00_AXI_M01_AXI_WDATA;
  wire interconnect_S00_AXI_M01_AXI_WLAST;
  wire interconnect_S00_AXI_M01_AXI_WREADY;
  wire [63:0]interconnect_S00_AXI_M01_AXI_WSTRB;
  wire [13:0]interconnect_S00_AXI_M01_AXI_WUSER;
  wire interconnect_S00_AXI_M01_AXI_WVALID;
  wire psr_aclk_SLR0_interconnect_aresetn;

  assign M00_AXI1_araddr[16:0] = interconnect_PLRAM_MEM00_M00_AXI_ARADDR;
  assign M00_AXI1_arburst[1:0] = interconnect_PLRAM_MEM00_M00_AXI_ARBURST;
  assign M00_AXI1_arcache[3:0] = interconnect_PLRAM_MEM00_M00_AXI_ARCACHE;
  assign M00_AXI1_arlen[7:0] = interconnect_PLRAM_MEM00_M00_AXI_ARLEN;
  assign M00_AXI1_arlock = interconnect_PLRAM_MEM00_M00_AXI_ARLOCK;
  assign M00_AXI1_arprot[2:0] = interconnect_PLRAM_MEM00_M00_AXI_ARPROT;
  assign M00_AXI1_arsize[2:0] = interconnect_PLRAM_MEM00_M00_AXI_ARSIZE;
  assign M00_AXI1_arvalid = interconnect_PLRAM_MEM00_M00_AXI_ARVALID;
  assign M00_AXI1_awaddr[16:0] = interconnect_PLRAM_MEM00_M00_AXI_AWADDR;
  assign M00_AXI1_awburst[1:0] = interconnect_PLRAM_MEM00_M00_AXI_AWBURST;
  assign M00_AXI1_awcache[3:0] = interconnect_PLRAM_MEM00_M00_AXI_AWCACHE;
  assign M00_AXI1_awlen[7:0] = interconnect_PLRAM_MEM00_M00_AXI_AWLEN;
  assign M00_AXI1_awlock = interconnect_PLRAM_MEM00_M00_AXI_AWLOCK;
  assign M00_AXI1_awprot[2:0] = interconnect_PLRAM_MEM00_M00_AXI_AWPROT;
  assign M00_AXI1_awsize[2:0] = interconnect_PLRAM_MEM00_M00_AXI_AWSIZE;
  assign M00_AXI1_awvalid = interconnect_PLRAM_MEM00_M00_AXI_AWVALID;
  assign M00_AXI1_bready = interconnect_PLRAM_MEM00_M00_AXI_BREADY;
  assign M00_AXI1_rready = interconnect_PLRAM_MEM00_M00_AXI_RREADY;
  assign M00_AXI1_wdata[511:0] = interconnect_PLRAM_MEM00_M00_AXI_WDATA;
  assign M00_AXI1_wlast = interconnect_PLRAM_MEM00_M00_AXI_WLAST;
  assign M00_AXI1_wstrb[63:0] = interconnect_PLRAM_MEM00_M00_AXI_WSTRB;
  assign M00_AXI1_wvalid = interconnect_PLRAM_MEM00_M00_AXI_WVALID;
  assign M00_AXI_araddr[31:0] = interconnect_DDR4_MEM00_M00_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = interconnect_DDR4_MEM00_M00_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = interconnect_DDR4_MEM00_M00_AXI_ARCACHE;
  assign M00_AXI_arlen[7:0] = interconnect_DDR4_MEM00_M00_AXI_ARLEN;
  assign M00_AXI_arlock[0] = interconnect_DDR4_MEM00_M00_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = interconnect_DDR4_MEM00_M00_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = interconnect_DDR4_MEM00_M00_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = interconnect_DDR4_MEM00_M00_AXI_ARSIZE;
  assign M00_AXI_arvalid = interconnect_DDR4_MEM00_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[31:0] = interconnect_DDR4_MEM00_M00_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = interconnect_DDR4_MEM00_M00_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = interconnect_DDR4_MEM00_M00_AXI_AWCACHE;
  assign M00_AXI_awlen[7:0] = interconnect_DDR4_MEM00_M00_AXI_AWLEN;
  assign M00_AXI_awlock[0] = interconnect_DDR4_MEM00_M00_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = interconnect_DDR4_MEM00_M00_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = interconnect_DDR4_MEM00_M00_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = interconnect_DDR4_MEM00_M00_AXI_AWSIZE;
  assign M00_AXI_awvalid = interconnect_DDR4_MEM00_M00_AXI_AWVALID;
  assign M00_AXI_bready = interconnect_DDR4_MEM00_M00_AXI_BREADY;
  assign M00_AXI_rready = interconnect_DDR4_MEM00_M00_AXI_RREADY;
  assign M00_AXI_wdata[511:0] = interconnect_DDR4_MEM00_M00_AXI_WDATA;
  assign M00_AXI_wlast = interconnect_DDR4_MEM00_M00_AXI_WLAST;
  assign M00_AXI_wstrb[63:0] = interconnect_DDR4_MEM00_M00_AXI_WSTRB;
  assign M00_AXI_wvalid = interconnect_DDR4_MEM00_M00_AXI_WVALID;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[34:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARLOCK = S00_AXI_arlock[0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARQOS = S00_AXI_arqos[3:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid[0];
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[34:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWLOCK = S00_AXI_awlock[0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWQOS = S00_AXI_awqos[3:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid[0];
  assign S00_AXI_1_BREADY = S00_AXI_bready[0];
  assign S00_AXI_1_RREADY = S00_AXI_rready[0];
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast[0];
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid[0];
  assign S00_AXI_arready[0] = S00_AXI_1_ARREADY;
  assign S00_AXI_awready[0] = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid[0] = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rlast[0] = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid[0] = S00_AXI_1_RVALID;
  assign S00_AXI_wready[0] = S00_AXI_1_WREADY;
  assign aclk_1 = aclk;
  assign ddr4_mem00_c0_ddr4_ui_clk = ddr4_mem00_ui_clk;
  assign interconnect_DDR4_MEM00_M00_AXI_ARREADY = M00_AXI_arready;
  assign interconnect_DDR4_MEM00_M00_AXI_AWREADY = M00_AXI_awready;
  assign interconnect_DDR4_MEM00_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign interconnect_DDR4_MEM00_M00_AXI_BVALID = M00_AXI_bvalid;
  assign interconnect_DDR4_MEM00_M00_AXI_RDATA = M00_AXI_rdata[511:0];
  assign interconnect_DDR4_MEM00_M00_AXI_RLAST = M00_AXI_rlast;
  assign interconnect_DDR4_MEM00_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign interconnect_DDR4_MEM00_M00_AXI_RVALID = M00_AXI_rvalid;
  assign interconnect_DDR4_MEM00_M00_AXI_WREADY = M00_AXI_wready;
  assign interconnect_PLRAM_MEM00_M00_AXI_ARREADY = M00_AXI1_arready;
  assign interconnect_PLRAM_MEM00_M00_AXI_AWREADY = M00_AXI1_awready;
  assign interconnect_PLRAM_MEM00_M00_AXI_BRESP = M00_AXI1_bresp[1:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_BVALID = M00_AXI1_bvalid;
  assign interconnect_PLRAM_MEM00_M00_AXI_RDATA = M00_AXI1_rdata[511:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_RLAST = M00_AXI1_rlast;
  assign interconnect_PLRAM_MEM00_M00_AXI_RRESP = M00_AXI1_rresp[1:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_RVALID = M00_AXI1_rvalid;
  assign interconnect_PLRAM_MEM00_M00_AXI_WREADY = M00_AXI1_wready;
  assign psr_aclk_SLR0_interconnect_aresetn = aresetn;
  bd_d216_interconnect_DDR4_MEM00_0 interconnect_ddr4_mem00
       (.M00_AXI_araddr(interconnect_DDR4_MEM00_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_DDR4_MEM00_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_DDR4_MEM00_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_DDR4_MEM00_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_DDR4_MEM00_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_DDR4_MEM00_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_DDR4_MEM00_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_DDR4_MEM00_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect_DDR4_MEM00_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect_DDR4_MEM00_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_DDR4_MEM00_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_DDR4_MEM00_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_DDR4_MEM00_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_DDR4_MEM00_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_DDR4_MEM00_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_DDR4_MEM00_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_DDR4_MEM00_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_DDR4_MEM00_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect_DDR4_MEM00_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect_DDR4_MEM00_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_DDR4_MEM00_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_DDR4_MEM00_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_DDR4_MEM00_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_DDR4_MEM00_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_DDR4_MEM00_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_DDR4_MEM00_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_DDR4_MEM00_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_DDR4_MEM00_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_DDR4_MEM00_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_DDR4_MEM00_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_DDR4_MEM00_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_DDR4_MEM00_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_DDR4_MEM00_M00_AXI_WVALID),
        .S00_AXI_araddr(interconnect_S00_AXI_M00_AXI_ARADDR),
        .S00_AXI_arburst(interconnect_S00_AXI_M00_AXI_ARBURST),
        .S00_AXI_arcache(interconnect_S00_AXI_M00_AXI_ARCACHE),
        .S00_AXI_arid(interconnect_S00_AXI_M00_AXI_ARID),
        .S00_AXI_arlen(interconnect_S00_AXI_M00_AXI_ARLEN),
        .S00_AXI_arlock(interconnect_S00_AXI_M00_AXI_ARLOCK),
        .S00_AXI_arprot(interconnect_S00_AXI_M00_AXI_ARPROT),
        .S00_AXI_arqos(interconnect_S00_AXI_M00_AXI_ARQOS),
        .S00_AXI_arready(interconnect_S00_AXI_M00_AXI_ARREADY),
        .S00_AXI_arsize(interconnect_S00_AXI_M00_AXI_ARSIZE),
        .S00_AXI_aruser(interconnect_S00_AXI_M00_AXI_ARUSER),
        .S00_AXI_arvalid(interconnect_S00_AXI_M00_AXI_ARVALID),
        .S00_AXI_awaddr(interconnect_S00_AXI_M00_AXI_AWADDR),
        .S00_AXI_awburst(interconnect_S00_AXI_M00_AXI_AWBURST),
        .S00_AXI_awcache(interconnect_S00_AXI_M00_AXI_AWCACHE),
        .S00_AXI_awid(interconnect_S00_AXI_M00_AXI_AWID),
        .S00_AXI_awlen(interconnect_S00_AXI_M00_AXI_AWLEN),
        .S00_AXI_awlock(interconnect_S00_AXI_M00_AXI_AWLOCK),
        .S00_AXI_awprot(interconnect_S00_AXI_M00_AXI_AWPROT),
        .S00_AXI_awqos(interconnect_S00_AXI_M00_AXI_AWQOS),
        .S00_AXI_awready(interconnect_S00_AXI_M00_AXI_AWREADY),
        .S00_AXI_awsize(interconnect_S00_AXI_M00_AXI_AWSIZE),
        .S00_AXI_awuser(interconnect_S00_AXI_M00_AXI_AWUSER),
        .S00_AXI_awvalid(interconnect_S00_AXI_M00_AXI_AWVALID),
        .S00_AXI_bid(interconnect_S00_AXI_M00_AXI_BID),
        .S00_AXI_bready(interconnect_S00_AXI_M00_AXI_BREADY),
        .S00_AXI_bresp(interconnect_S00_AXI_M00_AXI_BRESP),
        .S00_AXI_buser(interconnect_S00_AXI_M00_AXI_BUSER),
        .S00_AXI_bvalid(interconnect_S00_AXI_M00_AXI_BVALID),
        .S00_AXI_rdata(interconnect_S00_AXI_M00_AXI_RDATA),
        .S00_AXI_rid(interconnect_S00_AXI_M00_AXI_RID),
        .S00_AXI_rlast(interconnect_S00_AXI_M00_AXI_RLAST),
        .S00_AXI_rready(interconnect_S00_AXI_M00_AXI_RREADY),
        .S00_AXI_rresp(interconnect_S00_AXI_M00_AXI_RRESP),
        .S00_AXI_ruser(interconnect_S00_AXI_M00_AXI_RUSER),
        .S00_AXI_rvalid(interconnect_S00_AXI_M00_AXI_RVALID),
        .S00_AXI_wdata(interconnect_S00_AXI_M00_AXI_WDATA),
        .S00_AXI_wlast(interconnect_S00_AXI_M00_AXI_WLAST),
        .S00_AXI_wready(interconnect_S00_AXI_M00_AXI_WREADY),
        .S00_AXI_wstrb(interconnect_S00_AXI_M00_AXI_WSTRB),
        .S00_AXI_wuser(interconnect_S00_AXI_M00_AXI_WUSER),
        .S00_AXI_wvalid(interconnect_S00_AXI_M00_AXI_WVALID),
        .aclk(ddr4_mem00_c0_ddr4_ui_clk),
        .aclk1(aclk_1),
        .aresetn(psr_aclk_SLR0_interconnect_aresetn));
  bd_d216_interconnect_PLRAM_MEM00_0 interconnect_plram_mem00
       (.M00_AXI_araddr(interconnect_PLRAM_MEM00_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_PLRAM_MEM00_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_PLRAM_MEM00_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_PLRAM_MEM00_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_PLRAM_MEM00_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_PLRAM_MEM00_M00_AXI_ARPROT),
        .M00_AXI_arready(interconnect_PLRAM_MEM00_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect_PLRAM_MEM00_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(interconnect_PLRAM_MEM00_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_PLRAM_MEM00_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_PLRAM_MEM00_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_PLRAM_MEM00_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_PLRAM_MEM00_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_PLRAM_MEM00_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_PLRAM_MEM00_M00_AXI_AWPROT),
        .M00_AXI_awready(interconnect_PLRAM_MEM00_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect_PLRAM_MEM00_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(interconnect_PLRAM_MEM00_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_PLRAM_MEM00_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_PLRAM_MEM00_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_PLRAM_MEM00_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_PLRAM_MEM00_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_PLRAM_MEM00_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_PLRAM_MEM00_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_PLRAM_MEM00_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_PLRAM_MEM00_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_PLRAM_MEM00_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_PLRAM_MEM00_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_PLRAM_MEM00_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_PLRAM_MEM00_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_PLRAM_MEM00_M00_AXI_WVALID),
        .S00_AXI_araddr(interconnect_S00_AXI_M01_AXI_ARADDR),
        .S00_AXI_arburst(interconnect_S00_AXI_M01_AXI_ARBURST),
        .S00_AXI_arcache(interconnect_S00_AXI_M01_AXI_ARCACHE),
        .S00_AXI_arid(interconnect_S00_AXI_M01_AXI_ARID),
        .S00_AXI_arlen(interconnect_S00_AXI_M01_AXI_ARLEN),
        .S00_AXI_arlock(interconnect_S00_AXI_M01_AXI_ARLOCK),
        .S00_AXI_arprot(interconnect_S00_AXI_M01_AXI_ARPROT),
        .S00_AXI_arqos(interconnect_S00_AXI_M01_AXI_ARQOS),
        .S00_AXI_arready(interconnect_S00_AXI_M01_AXI_ARREADY),
        .S00_AXI_arsize(interconnect_S00_AXI_M01_AXI_ARSIZE),
        .S00_AXI_aruser(interconnect_S00_AXI_M01_AXI_ARUSER),
        .S00_AXI_arvalid(interconnect_S00_AXI_M01_AXI_ARVALID),
        .S00_AXI_awaddr(interconnect_S00_AXI_M01_AXI_AWADDR),
        .S00_AXI_awburst(interconnect_S00_AXI_M01_AXI_AWBURST),
        .S00_AXI_awcache(interconnect_S00_AXI_M01_AXI_AWCACHE),
        .S00_AXI_awid(interconnect_S00_AXI_M01_AXI_AWID),
        .S00_AXI_awlen(interconnect_S00_AXI_M01_AXI_AWLEN),
        .S00_AXI_awlock(interconnect_S00_AXI_M01_AXI_AWLOCK),
        .S00_AXI_awprot(interconnect_S00_AXI_M01_AXI_AWPROT),
        .S00_AXI_awqos(interconnect_S00_AXI_M01_AXI_AWQOS),
        .S00_AXI_awready(interconnect_S00_AXI_M01_AXI_AWREADY),
        .S00_AXI_awsize(interconnect_S00_AXI_M01_AXI_AWSIZE),
        .S00_AXI_awuser(interconnect_S00_AXI_M01_AXI_AWUSER),
        .S00_AXI_awvalid(interconnect_S00_AXI_M01_AXI_AWVALID),
        .S00_AXI_bid(interconnect_S00_AXI_M01_AXI_BID),
        .S00_AXI_bready(interconnect_S00_AXI_M01_AXI_BREADY),
        .S00_AXI_bresp(interconnect_S00_AXI_M01_AXI_BRESP),
        .S00_AXI_buser(interconnect_S00_AXI_M01_AXI_BUSER),
        .S00_AXI_bvalid(interconnect_S00_AXI_M01_AXI_BVALID),
        .S00_AXI_rdata(interconnect_S00_AXI_M01_AXI_RDATA),
        .S00_AXI_rid(interconnect_S00_AXI_M01_AXI_RID),
        .S00_AXI_rlast(interconnect_S00_AXI_M01_AXI_RLAST),
        .S00_AXI_rready(interconnect_S00_AXI_M01_AXI_RREADY),
        .S00_AXI_rresp(interconnect_S00_AXI_M01_AXI_RRESP),
        .S00_AXI_ruser(interconnect_S00_AXI_M01_AXI_RUSER),
        .S00_AXI_rvalid(interconnect_S00_AXI_M01_AXI_RVALID),
        .S00_AXI_wdata(interconnect_S00_AXI_M01_AXI_WDATA),
        .S00_AXI_wlast(interconnect_S00_AXI_M01_AXI_WLAST),
        .S00_AXI_wready(interconnect_S00_AXI_M01_AXI_WREADY),
        .S00_AXI_wstrb(interconnect_S00_AXI_M01_AXI_WSTRB),
        .S00_AXI_wuser(interconnect_S00_AXI_M01_AXI_WUSER),
        .S00_AXI_wvalid(interconnect_S00_AXI_M01_AXI_WVALID),
        .aclk(aclk_1),
        .aresetn(psr_aclk_SLR0_interconnect_aresetn));
  bd_d216_interconnect_S00_AXI_0 interconnect_s00_axi
       (.M00_AXI_araddr(interconnect_S00_AXI_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_S00_AXI_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_S00_AXI_M00_AXI_ARCACHE),
        .M00_AXI_arid(interconnect_S00_AXI_M00_AXI_ARID),
        .M00_AXI_arlen(interconnect_S00_AXI_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_S00_AXI_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_S00_AXI_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_S00_AXI_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_S00_AXI_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect_S00_AXI_M00_AXI_ARSIZE),
        .M00_AXI_aruser(interconnect_S00_AXI_M00_AXI_ARUSER),
        .M00_AXI_arvalid(interconnect_S00_AXI_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_S00_AXI_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_S00_AXI_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_S00_AXI_M00_AXI_AWCACHE),
        .M00_AXI_awid(interconnect_S00_AXI_M00_AXI_AWID),
        .M00_AXI_awlen(interconnect_S00_AXI_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_S00_AXI_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_S00_AXI_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_S00_AXI_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_S00_AXI_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect_S00_AXI_M00_AXI_AWSIZE),
        .M00_AXI_awuser(interconnect_S00_AXI_M00_AXI_AWUSER),
        .M00_AXI_awvalid(interconnect_S00_AXI_M00_AXI_AWVALID),
        .M00_AXI_bid(interconnect_S00_AXI_M00_AXI_BID),
        .M00_AXI_bready(interconnect_S00_AXI_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_S00_AXI_M00_AXI_BRESP),
        .M00_AXI_buser(interconnect_S00_AXI_M00_AXI_BUSER),
        .M00_AXI_bvalid(interconnect_S00_AXI_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_S00_AXI_M00_AXI_RDATA),
        .M00_AXI_rid(interconnect_S00_AXI_M00_AXI_RID),
        .M00_AXI_rlast(interconnect_S00_AXI_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_S00_AXI_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_S00_AXI_M00_AXI_RRESP),
        .M00_AXI_ruser(interconnect_S00_AXI_M00_AXI_RUSER),
        .M00_AXI_rvalid(interconnect_S00_AXI_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_S00_AXI_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_S00_AXI_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_S00_AXI_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_S00_AXI_M00_AXI_WSTRB),
        .M00_AXI_wuser(interconnect_S00_AXI_M00_AXI_WUSER),
        .M00_AXI_wvalid(interconnect_S00_AXI_M00_AXI_WVALID),
        .M01_AXI_araddr(interconnect_S00_AXI_M01_AXI_ARADDR),
        .M01_AXI_arburst(interconnect_S00_AXI_M01_AXI_ARBURST),
        .M01_AXI_arcache(interconnect_S00_AXI_M01_AXI_ARCACHE),
        .M01_AXI_arid(interconnect_S00_AXI_M01_AXI_ARID),
        .M01_AXI_arlen(interconnect_S00_AXI_M01_AXI_ARLEN),
        .M01_AXI_arlock(interconnect_S00_AXI_M01_AXI_ARLOCK),
        .M01_AXI_arprot(interconnect_S00_AXI_M01_AXI_ARPROT),
        .M01_AXI_arqos(interconnect_S00_AXI_M01_AXI_ARQOS),
        .M01_AXI_arready(interconnect_S00_AXI_M01_AXI_ARREADY),
        .M01_AXI_arsize(interconnect_S00_AXI_M01_AXI_ARSIZE),
        .M01_AXI_aruser(interconnect_S00_AXI_M01_AXI_ARUSER),
        .M01_AXI_arvalid(interconnect_S00_AXI_M01_AXI_ARVALID),
        .M01_AXI_awaddr(interconnect_S00_AXI_M01_AXI_AWADDR),
        .M01_AXI_awburst(interconnect_S00_AXI_M01_AXI_AWBURST),
        .M01_AXI_awcache(interconnect_S00_AXI_M01_AXI_AWCACHE),
        .M01_AXI_awid(interconnect_S00_AXI_M01_AXI_AWID),
        .M01_AXI_awlen(interconnect_S00_AXI_M01_AXI_AWLEN),
        .M01_AXI_awlock(interconnect_S00_AXI_M01_AXI_AWLOCK),
        .M01_AXI_awprot(interconnect_S00_AXI_M01_AXI_AWPROT),
        .M01_AXI_awqos(interconnect_S00_AXI_M01_AXI_AWQOS),
        .M01_AXI_awready(interconnect_S00_AXI_M01_AXI_AWREADY),
        .M01_AXI_awsize(interconnect_S00_AXI_M01_AXI_AWSIZE),
        .M01_AXI_awuser(interconnect_S00_AXI_M01_AXI_AWUSER),
        .M01_AXI_awvalid(interconnect_S00_AXI_M01_AXI_AWVALID),
        .M01_AXI_bid(interconnect_S00_AXI_M01_AXI_BID),
        .M01_AXI_bready(interconnect_S00_AXI_M01_AXI_BREADY),
        .M01_AXI_bresp(interconnect_S00_AXI_M01_AXI_BRESP),
        .M01_AXI_buser(interconnect_S00_AXI_M01_AXI_BUSER),
        .M01_AXI_bvalid(interconnect_S00_AXI_M01_AXI_BVALID),
        .M01_AXI_rdata(interconnect_S00_AXI_M01_AXI_RDATA),
        .M01_AXI_rid(interconnect_S00_AXI_M01_AXI_RID),
        .M01_AXI_rlast(interconnect_S00_AXI_M01_AXI_RLAST),
        .M01_AXI_rready(interconnect_S00_AXI_M01_AXI_RREADY),
        .M01_AXI_rresp(interconnect_S00_AXI_M01_AXI_RRESP),
        .M01_AXI_ruser(interconnect_S00_AXI_M01_AXI_RUSER),
        .M01_AXI_rvalid(interconnect_S00_AXI_M01_AXI_RVALID),
        .M01_AXI_wdata(interconnect_S00_AXI_M01_AXI_WDATA),
        .M01_AXI_wlast(interconnect_S00_AXI_M01_AXI_WLAST),
        .M01_AXI_wready(interconnect_S00_AXI_M01_AXI_WREADY),
        .M01_AXI_wstrb(interconnect_S00_AXI_M01_AXI_WSTRB),
        .M01_AXI_wuser(interconnect_S00_AXI_M01_AXI_WUSER),
        .M01_AXI_wvalid(interconnect_S00_AXI_M01_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .aclk(aclk_1),
        .aresetn(psr_aclk_SLR0_interconnect_aresetn));
endmodule

module memory_imp_1K98CM8
   (C0_DDR4_S_AXI_araddr,
    C0_DDR4_S_AXI_arburst,
    C0_DDR4_S_AXI_arcache,
    C0_DDR4_S_AXI_arlen,
    C0_DDR4_S_AXI_arlock,
    C0_DDR4_S_AXI_arprot,
    C0_DDR4_S_AXI_arqos,
    C0_DDR4_S_AXI_arready,
    C0_DDR4_S_AXI_arsize,
    C0_DDR4_S_AXI_arvalid,
    C0_DDR4_S_AXI_awaddr,
    C0_DDR4_S_AXI_awburst,
    C0_DDR4_S_AXI_awcache,
    C0_DDR4_S_AXI_awlen,
    C0_DDR4_S_AXI_awlock,
    C0_DDR4_S_AXI_awprot,
    C0_DDR4_S_AXI_awqos,
    C0_DDR4_S_AXI_awready,
    C0_DDR4_S_AXI_awsize,
    C0_DDR4_S_AXI_awvalid,
    C0_DDR4_S_AXI_bready,
    C0_DDR4_S_AXI_bresp,
    C0_DDR4_S_AXI_bvalid,
    C0_DDR4_S_AXI_rdata,
    C0_DDR4_S_AXI_rlast,
    C0_DDR4_S_AXI_rready,
    C0_DDR4_S_AXI_rresp,
    C0_DDR4_S_AXI_rvalid,
    C0_DDR4_S_AXI_wdata,
    C0_DDR4_S_AXI_wlast,
    C0_DDR4_S_AXI_wready,
    C0_DDR4_S_AXI_wstrb,
    C0_DDR4_S_AXI_wvalid,
    DDR4_MEM00_DIFF_CLK_clk_n,
    DDR4_MEM00_DIFF_CLK_clk_p,
    DDR4_MEM00_act_n,
    DDR4_MEM00_adr,
    DDR4_MEM00_ba,
    DDR4_MEM00_bg,
    DDR4_MEM00_ck_c,
    DDR4_MEM00_ck_t,
    DDR4_MEM00_cke,
    DDR4_MEM00_cs_n,
    DDR4_MEM00_dm_n,
    DDR4_MEM00_dq,
    DDR4_MEM00_dqs_c,
    DDR4_MEM00_dqs_t,
    DDR4_MEM00_odt,
    DDR4_MEM00_reset_n,
    S_AXI_CTRL_araddr,
    S_AXI_CTRL_arprot,
    S_AXI_CTRL_arready,
    S_AXI_CTRL_arvalid,
    S_AXI_CTRL_awaddr,
    S_AXI_CTRL_awprot,
    S_AXI_CTRL_awready,
    S_AXI_CTRL_awvalid,
    S_AXI_CTRL_bready,
    S_AXI_CTRL_bresp,
    S_AXI_CTRL_bvalid,
    S_AXI_CTRL_rdata,
    S_AXI_CTRL_rready,
    S_AXI_CTRL_rresp,
    S_AXI_CTRL_rvalid,
    S_AXI_CTRL_wdata,
    S_AXI_CTRL_wready,
    S_AXI_CTRL_wstrb,
    S_AXI_CTRL_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
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
    S_AXI_wvalid,
    aclk,
    aresetn,
    ddr4_mem00_sys_rst,
    ddr4_mem00_ui_clk,
    ddr4_mem_calib_complete,
    ddr4_mem_calib_vec,
    s_axi_aresetn);
  input [31:0]C0_DDR4_S_AXI_araddr;
  input [1:0]C0_DDR4_S_AXI_arburst;
  input [3:0]C0_DDR4_S_AXI_arcache;
  input [7:0]C0_DDR4_S_AXI_arlen;
  input [0:0]C0_DDR4_S_AXI_arlock;
  input [2:0]C0_DDR4_S_AXI_arprot;
  input [3:0]C0_DDR4_S_AXI_arqos;
  output C0_DDR4_S_AXI_arready;
  input [2:0]C0_DDR4_S_AXI_arsize;
  input C0_DDR4_S_AXI_arvalid;
  input [31:0]C0_DDR4_S_AXI_awaddr;
  input [1:0]C0_DDR4_S_AXI_awburst;
  input [3:0]C0_DDR4_S_AXI_awcache;
  input [7:0]C0_DDR4_S_AXI_awlen;
  input [0:0]C0_DDR4_S_AXI_awlock;
  input [2:0]C0_DDR4_S_AXI_awprot;
  input [3:0]C0_DDR4_S_AXI_awqos;
  output C0_DDR4_S_AXI_awready;
  input [2:0]C0_DDR4_S_AXI_awsize;
  input C0_DDR4_S_AXI_awvalid;
  input C0_DDR4_S_AXI_bready;
  output [1:0]C0_DDR4_S_AXI_bresp;
  output C0_DDR4_S_AXI_bvalid;
  output [511:0]C0_DDR4_S_AXI_rdata;
  output C0_DDR4_S_AXI_rlast;
  input C0_DDR4_S_AXI_rready;
  output [1:0]C0_DDR4_S_AXI_rresp;
  output C0_DDR4_S_AXI_rvalid;
  input [511:0]C0_DDR4_S_AXI_wdata;
  input C0_DDR4_S_AXI_wlast;
  output C0_DDR4_S_AXI_wready;
  input [63:0]C0_DDR4_S_AXI_wstrb;
  input C0_DDR4_S_AXI_wvalid;
  input DDR4_MEM00_DIFF_CLK_clk_n;
  input DDR4_MEM00_DIFF_CLK_clk_p;
  output DDR4_MEM00_act_n;
  output [16:0]DDR4_MEM00_adr;
  output [1:0]DDR4_MEM00_ba;
  output DDR4_MEM00_bg;
  output DDR4_MEM00_ck_c;
  output DDR4_MEM00_ck_t;
  output DDR4_MEM00_cke;
  output DDR4_MEM00_cs_n;
  inout [8:0]DDR4_MEM00_dm_n;
  inout [71:0]DDR4_MEM00_dq;
  inout [8:0]DDR4_MEM00_dqs_c;
  inout [8:0]DDR4_MEM00_dqs_t;
  output DDR4_MEM00_odt;
  output DDR4_MEM00_reset_n;
  input [31:0]S_AXI_CTRL_araddr;
  input [2:0]S_AXI_CTRL_arprot;
  output S_AXI_CTRL_arready;
  input S_AXI_CTRL_arvalid;
  input [31:0]S_AXI_CTRL_awaddr;
  input [2:0]S_AXI_CTRL_awprot;
  output S_AXI_CTRL_awready;
  input S_AXI_CTRL_awvalid;
  input S_AXI_CTRL_bready;
  output [1:0]S_AXI_CTRL_bresp;
  output S_AXI_CTRL_bvalid;
  output [31:0]S_AXI_CTRL_rdata;
  input S_AXI_CTRL_rready;
  output [1:0]S_AXI_CTRL_rresp;
  output S_AXI_CTRL_rvalid;
  input [31:0]S_AXI_CTRL_wdata;
  output S_AXI_CTRL_wready;
  input [3:0]S_AXI_CTRL_wstrb;
  input S_AXI_CTRL_wvalid;
  input [16:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
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
  input aclk;
  input aresetn;
  input ddr4_mem00_sys_rst;
  output ddr4_mem00_ui_clk;
  output ddr4_mem_calib_complete;
  output [0:0]ddr4_mem_calib_vec;
  input s_axi_aresetn;

  wire DDR4_MEM00_DIFF_CLK_1_CLK_N;
  wire DDR4_MEM00_DIFF_CLK_1_CLK_P;
  wire [31:0]S_AXI_CTRL_1_ARADDR;
  wire [2:0]S_AXI_CTRL_1_ARPROT;
  wire S_AXI_CTRL_1_ARREADY;
  wire S_AXI_CTRL_1_ARVALID;
  wire [31:0]S_AXI_CTRL_1_AWADDR;
  wire [2:0]S_AXI_CTRL_1_AWPROT;
  wire S_AXI_CTRL_1_AWREADY;
  wire S_AXI_CTRL_1_AWVALID;
  wire S_AXI_CTRL_1_BREADY;
  wire [1:0]S_AXI_CTRL_1_BRESP;
  wire S_AXI_CTRL_1_BVALID;
  wire [31:0]S_AXI_CTRL_1_RDATA;
  wire S_AXI_CTRL_1_RREADY;
  wire [1:0]S_AXI_CTRL_1_RRESP;
  wire S_AXI_CTRL_1_RVALID;
  wire [31:0]S_AXI_CTRL_1_WDATA;
  wire S_AXI_CTRL_1_WREADY;
  wire [3:0]S_AXI_CTRL_1_WSTRB;
  wire S_AXI_CTRL_1_WVALID;
  wire aclk_1;
  wire aresetn_1;
  wire [0:0]calib_concat_dout;
  wire calib_reduce_Res;
  wire [0:0]calib_vector_concat_dout;
  wire ddr4_mem00_C0_DDR4_ACT_N;
  wire [16:0]ddr4_mem00_C0_DDR4_ADR;
  wire [1:0]ddr4_mem00_C0_DDR4_BA;
  wire [0:0]ddr4_mem00_C0_DDR4_BG;
  wire [0:0]ddr4_mem00_C0_DDR4_CKE;
  wire [0:0]ddr4_mem00_C0_DDR4_CK_C;
  wire [0:0]ddr4_mem00_C0_DDR4_CK_T;
  wire [0:0]ddr4_mem00_C0_DDR4_CS_N;
  wire [8:0]ddr4_mem00_C0_DDR4_DM_N;
  wire [71:0]ddr4_mem00_C0_DDR4_DQ;
  wire [8:0]ddr4_mem00_C0_DDR4_DQS_C;
  wire [8:0]ddr4_mem00_C0_DDR4_DQS_T;
  wire [0:0]ddr4_mem00_C0_DDR4_ODT;
  wire ddr4_mem00_C0_DDR4_RESET_N;
  wire ddr4_mem00_c0_ddr4_ui_clk;
  wire ddr4_mem00_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_mem00_c0_init_calib_complete;
  wire [31:0]ddr4_mem00_ctrl_cc_M_AXI_ARADDR;
  wire ddr4_mem00_ctrl_cc_M_AXI_ARREADY;
  wire ddr4_mem00_ctrl_cc_M_AXI_ARVALID;
  wire [31:0]ddr4_mem00_ctrl_cc_M_AXI_AWADDR;
  wire ddr4_mem00_ctrl_cc_M_AXI_AWREADY;
  wire ddr4_mem00_ctrl_cc_M_AXI_AWVALID;
  wire ddr4_mem00_ctrl_cc_M_AXI_BREADY;
  wire [1:0]ddr4_mem00_ctrl_cc_M_AXI_BRESP;
  wire ddr4_mem00_ctrl_cc_M_AXI_BVALID;
  wire [31:0]ddr4_mem00_ctrl_cc_M_AXI_RDATA;
  wire ddr4_mem00_ctrl_cc_M_AXI_RREADY;
  wire [1:0]ddr4_mem00_ctrl_cc_M_AXI_RRESP;
  wire ddr4_mem00_ctrl_cc_M_AXI_RVALID;
  wire [31:0]ddr4_mem00_ctrl_cc_M_AXI_WDATA;
  wire ddr4_mem00_ctrl_cc_M_AXI_WREADY;
  wire ddr4_mem00_ctrl_cc_M_AXI_WVALID;
  wire ddr4_mem00_sys_rst_1;
  wire [31:0]interconnect_DDR4_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_ARREADY;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_ARSIZE;
  wire interconnect_DDR4_MEM00_M00_AXI_ARVALID;
  wire [31:0]interconnect_DDR4_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_AWREADY;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_AWSIZE;
  wire interconnect_DDR4_MEM00_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM00_M00_AXI_WVALID;
  wire [16:0]interconnect_PLRAM_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_PLRAM_MEM00_M00_AXI_ARLEN;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_ARPROT;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARREADY;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_ARSIZE;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARVALID;
  wire [16:0]interconnect_PLRAM_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_PLRAM_MEM00_M00_AXI_AWLEN;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_AWPROT;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWREADY;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_AWSIZE;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWVALID;
  wire interconnect_PLRAM_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_BRESP;
  wire interconnect_PLRAM_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_PLRAM_MEM00_M00_AXI_RDATA;
  wire interconnect_PLRAM_MEM00_M00_AXI_RLAST;
  wire interconnect_PLRAM_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_RRESP;
  wire interconnect_PLRAM_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_PLRAM_MEM00_M00_AXI_WDATA;
  wire interconnect_PLRAM_MEM00_M00_AXI_WLAST;
  wire interconnect_PLRAM_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_PLRAM_MEM00_M00_AXI_WSTRB;
  wire interconnect_PLRAM_MEM00_M00_AXI_WVALID;
  wire [31:0]interconnect_ddrmem_ctrl_M_AXI_ARADDR;
  wire [2:0]interconnect_ddrmem_ctrl_M_AXI_ARPROT;
  wire interconnect_ddrmem_ctrl_M_AXI_ARREADY;
  wire interconnect_ddrmem_ctrl_M_AXI_ARVALID;
  wire [31:0]interconnect_ddrmem_ctrl_M_AXI_AWADDR;
  wire [2:0]interconnect_ddrmem_ctrl_M_AXI_AWPROT;
  wire interconnect_ddrmem_ctrl_M_AXI_AWREADY;
  wire interconnect_ddrmem_ctrl_M_AXI_AWVALID;
  wire interconnect_ddrmem_ctrl_M_AXI_BREADY;
  wire [1:0]interconnect_ddrmem_ctrl_M_AXI_BRESP;
  wire interconnect_ddrmem_ctrl_M_AXI_BVALID;
  wire [31:0]interconnect_ddrmem_ctrl_M_AXI_RDATA;
  wire interconnect_ddrmem_ctrl_M_AXI_RREADY;
  wire [1:0]interconnect_ddrmem_ctrl_M_AXI_RRESP;
  wire interconnect_ddrmem_ctrl_M_AXI_RVALID;
  wire [31:0]interconnect_ddrmem_ctrl_M_AXI_WDATA;
  wire interconnect_ddrmem_ctrl_M_AXI_WREADY;
  wire [3:0]interconnect_ddrmem_ctrl_M_AXI_WSTRB;
  wire interconnect_ddrmem_ctrl_M_AXI_WVALID;
  wire [16:0]plram_mem00_BRAM_PORTA_ADDR;
  wire plram_mem00_BRAM_PORTA_CLK;
  wire [511:0]plram_mem00_BRAM_PORTA_DIN;
  wire [511:0]plram_mem00_BRAM_PORTA_DOUT;
  wire plram_mem00_BRAM_PORTA_EN;
  wire plram_mem00_BRAM_PORTA_RST;
  wire [63:0]plram_mem00_BRAM_PORTA_WE;
  wire [16:0]plram_mem00_BRAM_PORTB_ADDR;
  wire plram_mem00_BRAM_PORTB_CLK;
  wire [511:0]plram_mem00_BRAM_PORTB_DIN;
  wire [511:0]plram_mem00_BRAM_PORTB_DOUT;
  wire plram_mem00_BRAM_PORTB_EN;
  wire plram_mem00_BRAM_PORTB_RST;
  wire [63:0]plram_mem00_BRAM_PORTB_WE;
  wire psr_aclk_SLR0_interconnect_aresetn;
  wire [0:0]psr_ctrl_interconnect_interconnect_aresetn;
  wire [0:0]psr_ddr4_mem00_interconnect_aresetn;

  assign C0_DDR4_S_AXI_arready = interconnect_DDR4_MEM00_M00_AXI_ARREADY;
  assign C0_DDR4_S_AXI_awready = interconnect_DDR4_MEM00_M00_AXI_AWREADY;
  assign C0_DDR4_S_AXI_bresp[1:0] = interconnect_DDR4_MEM00_M00_AXI_BRESP;
  assign C0_DDR4_S_AXI_bvalid = interconnect_DDR4_MEM00_M00_AXI_BVALID;
  assign C0_DDR4_S_AXI_rdata[511:0] = interconnect_DDR4_MEM00_M00_AXI_RDATA;
  assign C0_DDR4_S_AXI_rlast = interconnect_DDR4_MEM00_M00_AXI_RLAST;
  assign C0_DDR4_S_AXI_rresp[1:0] = interconnect_DDR4_MEM00_M00_AXI_RRESP;
  assign C0_DDR4_S_AXI_rvalid = interconnect_DDR4_MEM00_M00_AXI_RVALID;
  assign C0_DDR4_S_AXI_wready = interconnect_DDR4_MEM00_M00_AXI_WREADY;
  assign DDR4_MEM00_DIFF_CLK_1_CLK_N = DDR4_MEM00_DIFF_CLK_clk_n;
  assign DDR4_MEM00_DIFF_CLK_1_CLK_P = DDR4_MEM00_DIFF_CLK_clk_p;
  assign DDR4_MEM00_act_n = ddr4_mem00_C0_DDR4_ACT_N;
  assign DDR4_MEM00_adr[16:0] = ddr4_mem00_C0_DDR4_ADR;
  assign DDR4_MEM00_ba[1:0] = ddr4_mem00_C0_DDR4_BA;
  assign DDR4_MEM00_bg = ddr4_mem00_C0_DDR4_BG;
  assign DDR4_MEM00_ck_c = ddr4_mem00_C0_DDR4_CK_C;
  assign DDR4_MEM00_ck_t = ddr4_mem00_C0_DDR4_CK_T;
  assign DDR4_MEM00_cke = ddr4_mem00_C0_DDR4_CKE;
  assign DDR4_MEM00_cs_n = ddr4_mem00_C0_DDR4_CS_N;
  assign DDR4_MEM00_odt = ddr4_mem00_C0_DDR4_ODT;
  assign DDR4_MEM00_reset_n = ddr4_mem00_C0_DDR4_RESET_N;
  assign S_AXI_CTRL_1_ARADDR = S_AXI_CTRL_araddr[31:0];
  assign S_AXI_CTRL_1_ARPROT = S_AXI_CTRL_arprot[2:0];
  assign S_AXI_CTRL_1_ARVALID = S_AXI_CTRL_arvalid;
  assign S_AXI_CTRL_1_AWADDR = S_AXI_CTRL_awaddr[31:0];
  assign S_AXI_CTRL_1_AWPROT = S_AXI_CTRL_awprot[2:0];
  assign S_AXI_CTRL_1_AWVALID = S_AXI_CTRL_awvalid;
  assign S_AXI_CTRL_1_BREADY = S_AXI_CTRL_bready;
  assign S_AXI_CTRL_1_RREADY = S_AXI_CTRL_rready;
  assign S_AXI_CTRL_1_WDATA = S_AXI_CTRL_wdata[31:0];
  assign S_AXI_CTRL_1_WSTRB = S_AXI_CTRL_wstrb[3:0];
  assign S_AXI_CTRL_1_WVALID = S_AXI_CTRL_wvalid;
  assign S_AXI_CTRL_arready = S_AXI_CTRL_1_ARREADY;
  assign S_AXI_CTRL_awready = S_AXI_CTRL_1_AWREADY;
  assign S_AXI_CTRL_bresp[1:0] = S_AXI_CTRL_1_BRESP;
  assign S_AXI_CTRL_bvalid = S_AXI_CTRL_1_BVALID;
  assign S_AXI_CTRL_rdata[31:0] = S_AXI_CTRL_1_RDATA;
  assign S_AXI_CTRL_rresp[1:0] = S_AXI_CTRL_1_RRESP;
  assign S_AXI_CTRL_rvalid = S_AXI_CTRL_1_RVALID;
  assign S_AXI_CTRL_wready = S_AXI_CTRL_1_WREADY;
  assign S_AXI_arready = interconnect_PLRAM_MEM00_M00_AXI_ARREADY;
  assign S_AXI_awready = interconnect_PLRAM_MEM00_M00_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = interconnect_PLRAM_MEM00_M00_AXI_BRESP;
  assign S_AXI_bvalid = interconnect_PLRAM_MEM00_M00_AXI_BVALID;
  assign S_AXI_rdata[511:0] = interconnect_PLRAM_MEM00_M00_AXI_RDATA;
  assign S_AXI_rlast = interconnect_PLRAM_MEM00_M00_AXI_RLAST;
  assign S_AXI_rresp[1:0] = interconnect_PLRAM_MEM00_M00_AXI_RRESP;
  assign S_AXI_rvalid = interconnect_PLRAM_MEM00_M00_AXI_RVALID;
  assign S_AXI_wready = interconnect_PLRAM_MEM00_M00_AXI_WREADY;
  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign ddr4_mem00_sys_rst_1 = ddr4_mem00_sys_rst;
  assign ddr4_mem00_ui_clk = ddr4_mem00_c0_ddr4_ui_clk;
  assign ddr4_mem_calib_complete = calib_reduce_Res;
  assign ddr4_mem_calib_vec[0] = calib_vector_concat_dout;
  assign interconnect_DDR4_MEM00_M00_AXI_ARADDR = C0_DDR4_S_AXI_araddr[31:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARBURST = C0_DDR4_S_AXI_arburst[1:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARCACHE = C0_DDR4_S_AXI_arcache[3:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARLEN = C0_DDR4_S_AXI_arlen[7:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARLOCK = C0_DDR4_S_AXI_arlock[0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARPROT = C0_DDR4_S_AXI_arprot[2:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARQOS = C0_DDR4_S_AXI_arqos[3:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARSIZE = C0_DDR4_S_AXI_arsize[2:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARVALID = C0_DDR4_S_AXI_arvalid;
  assign interconnect_DDR4_MEM00_M00_AXI_AWADDR = C0_DDR4_S_AXI_awaddr[31:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWBURST = C0_DDR4_S_AXI_awburst[1:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWCACHE = C0_DDR4_S_AXI_awcache[3:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWLEN = C0_DDR4_S_AXI_awlen[7:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWLOCK = C0_DDR4_S_AXI_awlock[0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWPROT = C0_DDR4_S_AXI_awprot[2:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWQOS = C0_DDR4_S_AXI_awqos[3:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWSIZE = C0_DDR4_S_AXI_awsize[2:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWVALID = C0_DDR4_S_AXI_awvalid;
  assign interconnect_DDR4_MEM00_M00_AXI_BREADY = C0_DDR4_S_AXI_bready;
  assign interconnect_DDR4_MEM00_M00_AXI_RREADY = C0_DDR4_S_AXI_rready;
  assign interconnect_DDR4_MEM00_M00_AXI_WDATA = C0_DDR4_S_AXI_wdata[511:0];
  assign interconnect_DDR4_MEM00_M00_AXI_WLAST = C0_DDR4_S_AXI_wlast;
  assign interconnect_DDR4_MEM00_M00_AXI_WSTRB = C0_DDR4_S_AXI_wstrb[63:0];
  assign interconnect_DDR4_MEM00_M00_AXI_WVALID = C0_DDR4_S_AXI_wvalid;
  assign interconnect_PLRAM_MEM00_M00_AXI_ARADDR = S_AXI_araddr[16:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARBURST = S_AXI_arburst[1:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARLEN = S_AXI_arlen[7:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARLOCK = S_AXI_arlock;
  assign interconnect_PLRAM_MEM00_M00_AXI_ARPROT = S_AXI_arprot[2:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARVALID = S_AXI_arvalid;
  assign interconnect_PLRAM_MEM00_M00_AXI_AWADDR = S_AXI_awaddr[16:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWBURST = S_AXI_awburst[1:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWLEN = S_AXI_awlen[7:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWLOCK = S_AXI_awlock;
  assign interconnect_PLRAM_MEM00_M00_AXI_AWPROT = S_AXI_awprot[2:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWVALID = S_AXI_awvalid;
  assign interconnect_PLRAM_MEM00_M00_AXI_BREADY = S_AXI_bready;
  assign interconnect_PLRAM_MEM00_M00_AXI_RREADY = S_AXI_rready;
  assign interconnect_PLRAM_MEM00_M00_AXI_WDATA = S_AXI_wdata[511:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_WLAST = S_AXI_wlast;
  assign interconnect_PLRAM_MEM00_M00_AXI_WSTRB = S_AXI_wstrb[63:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_WVALID = S_AXI_wvalid;
  assign psr_aclk_SLR0_interconnect_aresetn = s_axi_aresetn;
  bd_d216_calib_concat_0 calib_concat
       (.In0(ddr4_mem00_c0_init_calib_complete),
        .dout(calib_concat_dout));
  bd_d216_calib_reduce_0 calib_reduce
       (.Op1(calib_concat_dout),
        .Res(calib_reduce_Res));
  bd_d216_calib_vector_concat_0 calib_vector_concat
       (.In0(ddr4_mem00_c0_init_calib_complete),
        .dout(calib_vector_concat_dout));
  bd_d216_ddr4_mem00_0 ddr4_mem00
       (.c0_ddr4_act_n(ddr4_mem00_C0_DDR4_ACT_N),
        .c0_ddr4_adr(ddr4_mem00_C0_DDR4_ADR),
        .c0_ddr4_aresetn(psr_ddr4_mem00_interconnect_aresetn),
        .c0_ddr4_ba(ddr4_mem00_C0_DDR4_BA),
        .c0_ddr4_bg(ddr4_mem00_C0_DDR4_BG),
        .c0_ddr4_ck_c(ddr4_mem00_C0_DDR4_CK_C),
        .c0_ddr4_ck_t(ddr4_mem00_C0_DDR4_CK_T),
        .c0_ddr4_cke(ddr4_mem00_C0_DDR4_CKE),
        .c0_ddr4_cs_n(ddr4_mem00_C0_DDR4_CS_N),
        .c0_ddr4_dm_dbi_n(DDR4_MEM00_dm_n[8:0]),
        .c0_ddr4_dq(DDR4_MEM00_dq[71:0]),
        .c0_ddr4_dqs_c(DDR4_MEM00_dqs_c[8:0]),
        .c0_ddr4_dqs_t(DDR4_MEM00_dqs_t[8:0]),
        .c0_ddr4_odt(ddr4_mem00_C0_DDR4_ODT),
        .c0_ddr4_reset_n(ddr4_mem00_C0_DDR4_RESET_N),
        .c0_ddr4_s_axi_araddr(interconnect_DDR4_MEM00_M00_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(interconnect_DDR4_MEM00_M00_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(interconnect_DDR4_MEM00_M00_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(1'b0),
        .c0_ddr4_s_axi_arlen(interconnect_DDR4_MEM00_M00_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(interconnect_DDR4_MEM00_M00_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(interconnect_DDR4_MEM00_M00_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(interconnect_DDR4_MEM00_M00_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(interconnect_DDR4_MEM00_M00_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize(interconnect_DDR4_MEM00_M00_AXI_ARSIZE),
        .c0_ddr4_s_axi_arvalid(interconnect_DDR4_MEM00_M00_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(interconnect_DDR4_MEM00_M00_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(interconnect_DDR4_MEM00_M00_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(interconnect_DDR4_MEM00_M00_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(1'b0),
        .c0_ddr4_s_axi_awlen(interconnect_DDR4_MEM00_M00_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(interconnect_DDR4_MEM00_M00_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(interconnect_DDR4_MEM00_M00_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(interconnect_DDR4_MEM00_M00_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(interconnect_DDR4_MEM00_M00_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize(interconnect_DDR4_MEM00_M00_AXI_AWSIZE),
        .c0_ddr4_s_axi_awvalid(interconnect_DDR4_MEM00_M00_AXI_AWVALID),
        .c0_ddr4_s_axi_bready(interconnect_DDR4_MEM00_M00_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(interconnect_DDR4_MEM00_M00_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(interconnect_DDR4_MEM00_M00_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(ddr4_mem00_ctrl_cc_M_AXI_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(ddr4_mem00_ctrl_cc_M_AXI_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(ddr4_mem00_ctrl_cc_M_AXI_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(ddr4_mem00_ctrl_cc_M_AXI_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(ddr4_mem00_ctrl_cc_M_AXI_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(ddr4_mem00_ctrl_cc_M_AXI_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(ddr4_mem00_ctrl_cc_M_AXI_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(ddr4_mem00_ctrl_cc_M_AXI_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(ddr4_mem00_ctrl_cc_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(ddr4_mem00_ctrl_cc_M_AXI_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(ddr4_mem00_ctrl_cc_M_AXI_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(ddr4_mem00_ctrl_cc_M_AXI_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(ddr4_mem00_ctrl_cc_M_AXI_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(ddr4_mem00_ctrl_cc_M_AXI_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(ddr4_mem00_ctrl_cc_M_AXI_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(ddr4_mem00_ctrl_cc_M_AXI_WVALID),
        .c0_ddr4_s_axi_rdata(interconnect_DDR4_MEM00_M00_AXI_RDATA),
        .c0_ddr4_s_axi_rlast(interconnect_DDR4_MEM00_M00_AXI_RLAST),
        .c0_ddr4_s_axi_rready(interconnect_DDR4_MEM00_M00_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(interconnect_DDR4_MEM00_M00_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(interconnect_DDR4_MEM00_M00_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(interconnect_DDR4_MEM00_M00_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(interconnect_DDR4_MEM00_M00_AXI_WLAST),
        .c0_ddr4_s_axi_wready(interconnect_DDR4_MEM00_M00_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(interconnect_DDR4_MEM00_M00_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(interconnect_DDR4_MEM00_M00_AXI_WVALID),
        .c0_ddr4_ui_clk(ddr4_mem00_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_mem00_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_mem00_c0_init_calib_complete),
        .c0_sys_clk_n(DDR4_MEM00_DIFF_CLK_1_CLK_N),
        .c0_sys_clk_p(DDR4_MEM00_DIFF_CLK_1_CLK_P),
        .sys_rst(ddr4_mem00_sys_rst_1));
  bd_d216_ddr4_mem00_ctrl_cc_0 ddr4_mem00_ctrl_cc
       (.m_axi_aclk(ddr4_mem00_c0_ddr4_ui_clk),
        .m_axi_araddr(ddr4_mem00_ctrl_cc_M_AXI_ARADDR),
        .m_axi_aresetn(psr_ddr4_mem00_interconnect_aresetn),
        .m_axi_arready(ddr4_mem00_ctrl_cc_M_AXI_ARREADY),
        .m_axi_arvalid(ddr4_mem00_ctrl_cc_M_AXI_ARVALID),
        .m_axi_awaddr(ddr4_mem00_ctrl_cc_M_AXI_AWADDR),
        .m_axi_awready(ddr4_mem00_ctrl_cc_M_AXI_AWREADY),
        .m_axi_awvalid(ddr4_mem00_ctrl_cc_M_AXI_AWVALID),
        .m_axi_bready(ddr4_mem00_ctrl_cc_M_AXI_BREADY),
        .m_axi_bresp(ddr4_mem00_ctrl_cc_M_AXI_BRESP),
        .m_axi_bvalid(ddr4_mem00_ctrl_cc_M_AXI_BVALID),
        .m_axi_rdata(ddr4_mem00_ctrl_cc_M_AXI_RDATA),
        .m_axi_rready(ddr4_mem00_ctrl_cc_M_AXI_RREADY),
        .m_axi_rresp(ddr4_mem00_ctrl_cc_M_AXI_RRESP),
        .m_axi_rvalid(ddr4_mem00_ctrl_cc_M_AXI_RVALID),
        .m_axi_wdata(ddr4_mem00_ctrl_cc_M_AXI_WDATA),
        .m_axi_wready(ddr4_mem00_ctrl_cc_M_AXI_WREADY),
        .m_axi_wvalid(ddr4_mem00_ctrl_cc_M_AXI_WVALID),
        .s_axi_aclk(aclk_1),
        .s_axi_araddr(interconnect_ddrmem_ctrl_M_AXI_ARADDR),
        .s_axi_aresetn(psr_ctrl_interconnect_interconnect_aresetn),
        .s_axi_arprot(interconnect_ddrmem_ctrl_M_AXI_ARPROT),
        .s_axi_arready(interconnect_ddrmem_ctrl_M_AXI_ARREADY),
        .s_axi_arvalid(interconnect_ddrmem_ctrl_M_AXI_ARVALID),
        .s_axi_awaddr(interconnect_ddrmem_ctrl_M_AXI_AWADDR),
        .s_axi_awprot(interconnect_ddrmem_ctrl_M_AXI_AWPROT),
        .s_axi_awready(interconnect_ddrmem_ctrl_M_AXI_AWREADY),
        .s_axi_awvalid(interconnect_ddrmem_ctrl_M_AXI_AWVALID),
        .s_axi_bready(interconnect_ddrmem_ctrl_M_AXI_BREADY),
        .s_axi_bresp(interconnect_ddrmem_ctrl_M_AXI_BRESP),
        .s_axi_bvalid(interconnect_ddrmem_ctrl_M_AXI_BVALID),
        .s_axi_rdata(interconnect_ddrmem_ctrl_M_AXI_RDATA),
        .s_axi_rready(interconnect_ddrmem_ctrl_M_AXI_RREADY),
        .s_axi_rresp(interconnect_ddrmem_ctrl_M_AXI_RRESP),
        .s_axi_rvalid(interconnect_ddrmem_ctrl_M_AXI_RVALID),
        .s_axi_wdata(interconnect_ddrmem_ctrl_M_AXI_WDATA),
        .s_axi_wready(interconnect_ddrmem_ctrl_M_AXI_WREADY),
        .s_axi_wstrb(interconnect_ddrmem_ctrl_M_AXI_WSTRB),
        .s_axi_wvalid(interconnect_ddrmem_ctrl_M_AXI_WVALID));
  bd_d216_interconnect_ddrmem_ctrl_0 interconnect_ddrmem_ctrl
       (.aclk(aclk_1),
        .aresetn(psr_ctrl_interconnect_interconnect_aresetn),
        .m_axi_araddr(interconnect_ddrmem_ctrl_M_AXI_ARADDR),
        .m_axi_arprot(interconnect_ddrmem_ctrl_M_AXI_ARPROT),
        .m_axi_arready(interconnect_ddrmem_ctrl_M_AXI_ARREADY),
        .m_axi_arvalid(interconnect_ddrmem_ctrl_M_AXI_ARVALID),
        .m_axi_awaddr(interconnect_ddrmem_ctrl_M_AXI_AWADDR),
        .m_axi_awprot(interconnect_ddrmem_ctrl_M_AXI_AWPROT),
        .m_axi_awready(interconnect_ddrmem_ctrl_M_AXI_AWREADY),
        .m_axi_awvalid(interconnect_ddrmem_ctrl_M_AXI_AWVALID),
        .m_axi_bready(interconnect_ddrmem_ctrl_M_AXI_BREADY),
        .m_axi_bresp(interconnect_ddrmem_ctrl_M_AXI_BRESP),
        .m_axi_bvalid(interconnect_ddrmem_ctrl_M_AXI_BVALID),
        .m_axi_rdata(interconnect_ddrmem_ctrl_M_AXI_RDATA),
        .m_axi_rready(interconnect_ddrmem_ctrl_M_AXI_RREADY),
        .m_axi_rresp(interconnect_ddrmem_ctrl_M_AXI_RRESP),
        .m_axi_rvalid(interconnect_ddrmem_ctrl_M_AXI_RVALID),
        .m_axi_wdata(interconnect_ddrmem_ctrl_M_AXI_WDATA),
        .m_axi_wready(interconnect_ddrmem_ctrl_M_AXI_WREADY),
        .m_axi_wstrb(interconnect_ddrmem_ctrl_M_AXI_WSTRB),
        .m_axi_wvalid(interconnect_ddrmem_ctrl_M_AXI_WVALID),
        .s_axi_araddr(S_AXI_CTRL_1_ARADDR),
        .s_axi_arprot(S_AXI_CTRL_1_ARPROT),
        .s_axi_arready(S_AXI_CTRL_1_ARREADY),
        .s_axi_arvalid(S_AXI_CTRL_1_ARVALID),
        .s_axi_awaddr(S_AXI_CTRL_1_AWADDR),
        .s_axi_awprot(S_AXI_CTRL_1_AWPROT),
        .s_axi_awready(S_AXI_CTRL_1_AWREADY),
        .s_axi_awvalid(S_AXI_CTRL_1_AWVALID),
        .s_axi_bready(S_AXI_CTRL_1_BREADY),
        .s_axi_bresp(S_AXI_CTRL_1_BRESP),
        .s_axi_bvalid(S_AXI_CTRL_1_BVALID),
        .s_axi_rdata(S_AXI_CTRL_1_RDATA),
        .s_axi_rready(S_AXI_CTRL_1_RREADY),
        .s_axi_rresp(S_AXI_CTRL_1_RRESP),
        .s_axi_rvalid(S_AXI_CTRL_1_RVALID),
        .s_axi_wdata(S_AXI_CTRL_1_WDATA),
        .s_axi_wready(S_AXI_CTRL_1_WREADY),
        .s_axi_wstrb(S_AXI_CTRL_1_WSTRB),
        .s_axi_wvalid(S_AXI_CTRL_1_WVALID));
  bd_d216_plram_mem00_0 plram_mem00
       (.bram_addr_a(plram_mem00_BRAM_PORTA_ADDR),
        .bram_addr_b(plram_mem00_BRAM_PORTB_ADDR),
        .bram_clk_a(plram_mem00_BRAM_PORTA_CLK),
        .bram_clk_b(plram_mem00_BRAM_PORTB_CLK),
        .bram_en_a(plram_mem00_BRAM_PORTA_EN),
        .bram_en_b(plram_mem00_BRAM_PORTB_EN),
        .bram_rddata_a(plram_mem00_BRAM_PORTA_DOUT),
        .bram_rddata_b(plram_mem00_BRAM_PORTB_DOUT),
        .bram_rst_a(plram_mem00_BRAM_PORTA_RST),
        .bram_rst_b(plram_mem00_BRAM_PORTB_RST),
        .bram_we_a(plram_mem00_BRAM_PORTA_WE),
        .bram_we_b(plram_mem00_BRAM_PORTB_WE),
        .bram_wrdata_a(plram_mem00_BRAM_PORTA_DIN),
        .bram_wrdata_b(plram_mem00_BRAM_PORTB_DIN),
        .s_axi_aclk(aclk_1),
        .s_axi_araddr(interconnect_PLRAM_MEM00_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_PLRAM_MEM00_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_PLRAM_MEM00_M00_AXI_ARCACHE),
        .s_axi_aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .s_axi_arlen(interconnect_PLRAM_MEM00_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_PLRAM_MEM00_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_PLRAM_MEM00_M00_AXI_ARPROT),
        .s_axi_arready(interconnect_PLRAM_MEM00_M00_AXI_ARREADY),
        .s_axi_arsize(interconnect_PLRAM_MEM00_M00_AXI_ARSIZE),
        .s_axi_arvalid(interconnect_PLRAM_MEM00_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_PLRAM_MEM00_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_PLRAM_MEM00_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_PLRAM_MEM00_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect_PLRAM_MEM00_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_PLRAM_MEM00_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_PLRAM_MEM00_M00_AXI_AWPROT),
        .s_axi_awready(interconnect_PLRAM_MEM00_M00_AXI_AWREADY),
        .s_axi_awsize(interconnect_PLRAM_MEM00_M00_AXI_AWSIZE),
        .s_axi_awvalid(interconnect_PLRAM_MEM00_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_PLRAM_MEM00_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_PLRAM_MEM00_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_PLRAM_MEM00_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_PLRAM_MEM00_M00_AXI_RDATA),
        .s_axi_rlast(interconnect_PLRAM_MEM00_M00_AXI_RLAST),
        .s_axi_rready(interconnect_PLRAM_MEM00_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_PLRAM_MEM00_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_PLRAM_MEM00_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_PLRAM_MEM00_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_PLRAM_MEM00_M00_AXI_WLAST),
        .s_axi_wready(interconnect_PLRAM_MEM00_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_PLRAM_MEM00_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_PLRAM_MEM00_M00_AXI_WVALID));
  bd_d216_plram_mem00_bram_0 plram_mem00_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,plram_mem00_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,plram_mem00_BRAM_PORTB_ADDR}),
        .clka(plram_mem00_BRAM_PORTA_CLK),
        .clkb(plram_mem00_BRAM_PORTB_CLK),
        .dina(plram_mem00_BRAM_PORTA_DIN),
        .dinb(plram_mem00_BRAM_PORTB_DIN),
        .douta(plram_mem00_BRAM_PORTA_DOUT),
        .doutb(plram_mem00_BRAM_PORTB_DOUT),
        .ena(plram_mem00_BRAM_PORTA_EN),
        .enb(plram_mem00_BRAM_PORTB_EN),
        .rsta(plram_mem00_BRAM_PORTA_RST),
        .rstb(plram_mem00_BRAM_PORTB_RST),
        .wea(plram_mem00_BRAM_PORTA_WE),
        .web(plram_mem00_BRAM_PORTB_WE));
  bd_d216_psr_ctrl_interconnect_0 psr_ctrl_interconnect
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_1),
        .interconnect_aresetn(psr_ctrl_interconnect_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(aclk_1));
  bd_d216_psr_ddr4_mem00_0 psr_ddr4_mem00
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ddr4_mem00_c0_ddr4_ui_clk_sync_rst),
        .interconnect_aresetn(psr_ddr4_mem00_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(ddr4_mem00_c0_ddr4_ui_clk));
endmodule

module reset_imp_1YKOSPE
   (aclk,
    aresetn,
    interconnect_aresetn);
  input aclk;
  input aresetn;
  output [0:0]interconnect_aresetn;

  wire aclk_1;
  wire aresetn_1;
  wire [0:0]psr_aclk_SLR0_interconnect_aresetn;

  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign interconnect_aresetn[0] = psr_aclk_SLR0_interconnect_aresetn;
  bd_d216_psr_aclk_SLR0_0 psr_aclk_SLR0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_1),
        .interconnect_aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(aclk_1));
endmodule
