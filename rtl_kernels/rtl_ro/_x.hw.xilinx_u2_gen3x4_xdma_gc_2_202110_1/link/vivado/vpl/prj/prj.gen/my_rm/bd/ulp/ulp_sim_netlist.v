// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Dec 31 12:13:00 2021
// Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro/_x.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/link/vivado/vpl/prj/prj.gen/my_rm/bd/ulp/ulp_sim_netlist.v
// Design      : ulp
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku15p-ffva1156-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "ulp.hwdef" *) 
(* NotValidForBitStream *)
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

  wire [24:0]BLP_S_AXI_CTRL_USER_00_araddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  wire BLP_S_AXI_CTRL_USER_00_arready;
  wire BLP_S_AXI_CTRL_USER_00_arvalid;
  wire [24:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  wire BLP_S_AXI_CTRL_USER_00_awready;
  wire BLP_S_AXI_CTRL_USER_00_awvalid;
  wire BLP_S_AXI_CTRL_USER_00_bready;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  wire BLP_S_AXI_CTRL_USER_00_bvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  wire BLP_S_AXI_CTRL_USER_00_rready;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  wire BLP_S_AXI_CTRL_USER_00_rvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  wire BLP_S_AXI_CTRL_USER_00_wready;
  wire [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  wire BLP_S_AXI_CTRL_USER_00_wvalid;
  wire [24:0]BLP_S_AXI_CTRL_USER_01_araddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_01_arprot;
  wire BLP_S_AXI_CTRL_USER_01_arready;
  wire BLP_S_AXI_CTRL_USER_01_arvalid;
  wire [24:0]BLP_S_AXI_CTRL_USER_01_awaddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_01_awprot;
  wire BLP_S_AXI_CTRL_USER_01_awready;
  wire BLP_S_AXI_CTRL_USER_01_awvalid;
  wire BLP_S_AXI_CTRL_USER_01_bready;
  wire [1:0]BLP_S_AXI_CTRL_USER_01_bresp;
  wire BLP_S_AXI_CTRL_USER_01_bvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_01_rdata;
  wire BLP_S_AXI_CTRL_USER_01_rready;
  wire [1:0]BLP_S_AXI_CTRL_USER_01_rresp;
  wire BLP_S_AXI_CTRL_USER_01_rvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_01_wdata;
  wire BLP_S_AXI_CTRL_USER_01_wready;
  wire [3:0]BLP_S_AXI_CTRL_USER_01_wstrb;
  wire BLP_S_AXI_CTRL_USER_01_wvalid;
  wire [24:0]BLP_S_AXI_CTRL_USER_02_araddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_02_arprot;
  wire BLP_S_AXI_CTRL_USER_02_arready;
  wire BLP_S_AXI_CTRL_USER_02_arvalid;
  wire [24:0]BLP_S_AXI_CTRL_USER_02_awaddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_02_awprot;
  wire BLP_S_AXI_CTRL_USER_02_awready;
  wire BLP_S_AXI_CTRL_USER_02_awvalid;
  wire BLP_S_AXI_CTRL_USER_02_bready;
  wire [1:0]BLP_S_AXI_CTRL_USER_02_bresp;
  wire BLP_S_AXI_CTRL_USER_02_bvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_02_rdata;
  wire BLP_S_AXI_CTRL_USER_02_rready;
  wire [1:0]BLP_S_AXI_CTRL_USER_02_rresp;
  wire BLP_S_AXI_CTRL_USER_02_rvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_02_wdata;
  wire BLP_S_AXI_CTRL_USER_02_wready;
  wire [3:0]BLP_S_AXI_CTRL_USER_02_wstrb;
  wire BLP_S_AXI_CTRL_USER_02_wvalid;
  wire [38:0]BLP_S_AXI_DATA_H2C_00_araddr;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_arburst;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_arcache;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_arid;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_arlen;
  wire [0:0]BLP_S_AXI_DATA_H2C_00_arlock;
  wire [2:0]BLP_S_AXI_DATA_H2C_00_arprot;
  wire BLP_S_AXI_DATA_H2C_00_arready;
  wire BLP_S_AXI_DATA_H2C_00_arvalid;
  wire [38:0]BLP_S_AXI_DATA_H2C_00_awaddr;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_awburst;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_awcache;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_awid;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_awlen;
  wire [0:0]BLP_S_AXI_DATA_H2C_00_awlock;
  wire [2:0]BLP_S_AXI_DATA_H2C_00_awprot;
  wire BLP_S_AXI_DATA_H2C_00_awready;
  wire BLP_S_AXI_DATA_H2C_00_awvalid;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_bid;
  wire BLP_S_AXI_DATA_H2C_00_bready;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_bresp;
  wire BLP_S_AXI_DATA_H2C_00_bvalid;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_rdata;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_rid;
  wire BLP_S_AXI_DATA_H2C_00_rlast;
  wire BLP_S_AXI_DATA_H2C_00_rready;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_rresp;
  wire BLP_S_AXI_DATA_H2C_00_rvalid;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_wdata;
  wire BLP_S_AXI_DATA_H2C_00_wlast;
  wire BLP_S_AXI_DATA_H2C_00_wready;
  wire [63:0]BLP_S_AXI_DATA_H2C_00_wstrb;
  wire BLP_S_AXI_DATA_H2C_00_wvalid;
  wire [39:0]BLP_S_AXI_DATA_H2C_01_araddr;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_arburst;
  wire [3:0]BLP_S_AXI_DATA_H2C_01_arcache;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_arid;
  wire [7:0]BLP_S_AXI_DATA_H2C_01_arlen;
  wire [0:0]BLP_S_AXI_DATA_H2C_01_arlock;
  wire [2:0]BLP_S_AXI_DATA_H2C_01_arprot;
  wire BLP_S_AXI_DATA_H2C_01_arready;
  wire BLP_S_AXI_DATA_H2C_01_arvalid;
  wire [39:0]BLP_S_AXI_DATA_H2C_01_awaddr;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_awburst;
  wire [3:0]BLP_S_AXI_DATA_H2C_01_awcache;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_awid;
  wire [7:0]BLP_S_AXI_DATA_H2C_01_awlen;
  wire [0:0]BLP_S_AXI_DATA_H2C_01_awlock;
  wire [2:0]BLP_S_AXI_DATA_H2C_01_awprot;
  wire BLP_S_AXI_DATA_H2C_01_awready;
  wire BLP_S_AXI_DATA_H2C_01_awvalid;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_bid;
  wire BLP_S_AXI_DATA_H2C_01_bready;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_bresp;
  wire BLP_S_AXI_DATA_H2C_01_bvalid;
  wire [63:0]BLP_S_AXI_DATA_H2C_01_rdata;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_rid;
  wire BLP_S_AXI_DATA_H2C_01_rlast;
  wire BLP_S_AXI_DATA_H2C_01_rready;
  wire [1:0]BLP_S_AXI_DATA_H2C_01_rresp;
  wire BLP_S_AXI_DATA_H2C_01_rvalid;
  wire [63:0]BLP_S_AXI_DATA_H2C_01_wdata;
  wire BLP_S_AXI_DATA_H2C_01_wlast;
  wire BLP_S_AXI_DATA_H2C_01_wready;
  wire [7:0]BLP_S_AXI_DATA_H2C_01_wstrb;
  wire BLP_S_AXI_DATA_H2C_01_wvalid;
  wire [31:0]BLP_S_AXI_DATA_H2C_02_araddr;
  wire [1:0]BLP_S_AXI_DATA_H2C_02_arburst;
  wire [3:0]BLP_S_AXI_DATA_H2C_02_arcache;
  wire [7:0]BLP_S_AXI_DATA_H2C_02_arlen;
  wire [0:0]BLP_S_AXI_DATA_H2C_02_arlock;
  wire [2:0]BLP_S_AXI_DATA_H2C_02_arprot;
  wire BLP_S_AXI_DATA_H2C_02_arready;
  wire BLP_S_AXI_DATA_H2C_02_arvalid;
  wire [31:0]BLP_S_AXI_DATA_H2C_02_awaddr;
  wire [1:0]BLP_S_AXI_DATA_H2C_02_awburst;
  wire [3:0]BLP_S_AXI_DATA_H2C_02_awcache;
  wire [7:0]BLP_S_AXI_DATA_H2C_02_awlen;
  wire [0:0]BLP_S_AXI_DATA_H2C_02_awlock;
  wire [2:0]BLP_S_AXI_DATA_H2C_02_awprot;
  wire BLP_S_AXI_DATA_H2C_02_awready;
  wire BLP_S_AXI_DATA_H2C_02_awvalid;
  wire BLP_S_AXI_DATA_H2C_02_bready;
  wire [1:0]BLP_S_AXI_DATA_H2C_02_bresp;
  wire BLP_S_AXI_DATA_H2C_02_bvalid;
  wire [31:0]BLP_S_AXI_DATA_H2C_02_rdata;
  wire BLP_S_AXI_DATA_H2C_02_rlast;
  wire BLP_S_AXI_DATA_H2C_02_rready;
  wire [1:0]BLP_S_AXI_DATA_H2C_02_rresp;
  wire BLP_S_AXI_DATA_H2C_02_rvalid;
  wire [31:0]BLP_S_AXI_DATA_H2C_02_wdata;
  wire BLP_S_AXI_DATA_H2C_02_wlast;
  wire BLP_S_AXI_DATA_H2C_02_wready;
  wire [3:0]BLP_S_AXI_DATA_H2C_02_wstrb;
  wire BLP_S_AXI_DATA_H2C_02_wvalid;
  wire [38:0]BLP_S_AXI_DATA_H2C_03_araddr;
  wire [1:0]BLP_S_AXI_DATA_H2C_03_arburst;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_arcache;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_arid;
  wire [7:0]BLP_S_AXI_DATA_H2C_03_arlen;
  wire [0:0]BLP_S_AXI_DATA_H2C_03_arlock;
  wire [2:0]BLP_S_AXI_DATA_H2C_03_arprot;
  wire BLP_S_AXI_DATA_H2C_03_arready;
  wire BLP_S_AXI_DATA_H2C_03_arvalid;
  wire [38:0]BLP_S_AXI_DATA_H2C_03_awaddr;
  wire [1:0]BLP_S_AXI_DATA_H2C_03_awburst;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_awcache;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_awid;
  wire [7:0]BLP_S_AXI_DATA_H2C_03_awlen;
  wire [0:0]BLP_S_AXI_DATA_H2C_03_awlock;
  wire [2:0]BLP_S_AXI_DATA_H2C_03_awprot;
  wire BLP_S_AXI_DATA_H2C_03_awready;
  wire BLP_S_AXI_DATA_H2C_03_awvalid;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_bid;
  wire BLP_S_AXI_DATA_H2C_03_bready;
  wire [1:0]BLP_S_AXI_DATA_H2C_03_bresp;
  wire BLP_S_AXI_DATA_H2C_03_bvalid;
  wire [127:0]BLP_S_AXI_DATA_H2C_03_rdata;
  wire [3:0]BLP_S_AXI_DATA_H2C_03_rid;
  wire BLP_S_AXI_DATA_H2C_03_rlast;
  wire BLP_S_AXI_DATA_H2C_03_rready;
  wire [1:0]BLP_S_AXI_DATA_H2C_03_rresp;
  wire BLP_S_AXI_DATA_H2C_03_rvalid;
  wire [127:0]BLP_S_AXI_DATA_H2C_03_wdata;
  wire BLP_S_AXI_DATA_H2C_03_wlast;
  wire BLP_S_AXI_DATA_H2C_03_wready;
  wire [15:0]BLP_S_AXI_DATA_H2C_03_wstrb;
  wire BLP_S_AXI_DATA_H2C_03_wvalid;
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
  wire axi_interconnect_0_M00_AXI_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_ARREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire axi_interconnect_0_M00_AXI_AWID;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_AWREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [38:0]axi_interconnect_0_M00_AXI_P_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_P_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_P_ARCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_P_ARLEN;
  wire axi_interconnect_0_M00_AXI_P_ARLOCK;
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
  wire axi_interconnect_0_M00_AXI_P_AWLOCK;
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
  wire axi_interconnect_0_M00_AXI_RID;
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
  wire axi_interconnect_1_M00_AXI_ARLOCK;
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
  wire axi_interconnect_1_M00_AXI_AWLOCK;
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
  wire [14:0]axi_interconnect_1_M01_AXI_ARADDR;
  wire [1:0]axi_interconnect_1_M01_AXI_ARBURST;
  wire [3:0]axi_interconnect_1_M01_AXI_ARCACHE;
  wire [5:0]axi_interconnect_1_M01_AXI_ARID;
  wire [7:0]axi_interconnect_1_M01_AXI_ARLEN;
  wire axi_interconnect_1_M01_AXI_ARLOCK;
  wire [2:0]axi_interconnect_1_M01_AXI_ARPROT;
  wire axi_interconnect_1_M01_AXI_ARREADY;
  wire [2:0]axi_interconnect_1_M01_AXI_ARSIZE;
  wire axi_interconnect_1_M01_AXI_ARVALID;
  wire [14:0]axi_interconnect_1_M01_AXI_AWADDR;
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
  wire [4:0]axi_protocol_convert_0_M_AXI_ARADDR;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARPROT;
  wire axi_protocol_convert_0_M_AXI_ARREADY;
  wire axi_protocol_convert_0_M_AXI_ARVALID;
  wire [4:0]axi_protocol_convert_0_M_AXI_AWADDR;
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
  wire axi_vip_0_M_AXI_ARLOCK;
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
  wire axi_vip_0_M_AXI_AWLOCK;
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
  wire axi_vip_0_M_AXI_P_ARLOCK;
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
  wire axi_vip_0_M_AXI_P_AWLOCK;
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
  wire [2:0]blp_m_data_dna_from_ulp_00;
  wire [0:0]blp_m_data_memory_calib_complete_00;
  wire [127:0]blp_m_irq_cu_00;
  wire blp_s_aclk_ctrl_00;
  wire blp_s_aclk_kernel2_ref_clk_00;
  wire blp_s_aclk_kernel_ref_clk_00;
  wire blp_s_aclk_pcie_00;
  wire [0:0]blp_s_aresetn_ctrl_00;
  wire [0:0]blp_s_aresetn_kernel_ref_clk_00;
  wire [0:0]blp_s_aresetn_pcie_00;
  wire [0:0]blp_s_data_clkwiz_kernel_clk_out1_locked_00;
  wire [0:0]blp_s_data_dout_dna_00;
  wire [2:0]blp_s_data_perstn_out_00;
  wire [1:0]blp_s_data_slice_pr_reset_to_ulp_00;
  wire clkwiz_kernel_clk_out1_1;
  wire clkwiz_sysclks_clk_out2_1;
  wire ddr1_clk_bufg_BUFG_O;
  wire ddr1_clk_ibufds_IBUF_OUT;
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
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLOCK;
  wire [2:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARPROT;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARREADY;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARVALID;
  wire [38:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWADDR;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWBURST;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWCACHE;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWID;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLEN;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLOCK;
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
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLOCK;
  wire [2:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARPROT;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARREADY;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARVALID;
  wire [39:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWADDR;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWBURST;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWCACHE;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWID;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLEN;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLOCK;
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
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLOCK;
  wire [2:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARPROT;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARREADY;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARVALID;
  wire [31:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWADDR;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWBURST;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWCACHE;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLEN;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLOCK;
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
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLOCK;
  wire [2:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARPROT;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARREADY;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARVALID;
  wire [38:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWADDR;
  wire [1:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWBURST;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWCACHE;
  wire [3:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWID;
  wire [7:0]ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLEN;
  wire ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLOCK;
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
  wire ii_level0_wire_ulp_m_aclk_kernel2_ref_clk_00;
  wire ii_level0_wire_ulp_m_aclk_pcie_00;
  wire ii_level0_wire_ulp_m_aresetn_ctrl_00;
  wire ii_level0_wire_ulp_m_data_clkwiz_kernel2_clk_out1_locked_00;
  wire ii_level0_wire_ulp_m_data_clkwiz_kernel_clk_out1_locked_00;
  wire ii_level0_wire_ulp_m_data_clkwiz_sysclks_clk_out2_locked_00;
  wire ii_level0_wire_ulp_m_data_pcie_user_link_up_00;
  wire [2:0]ii_level0_wire_ulp_m_data_perstn_out_00;
  wire [1:0]ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00;
  wire [1:1]ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout;
  wire [1:1]ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout;
  wire [0:0]io_clk_ddr_00_clk_n;
  wire [0:0]io_clk_ddr_00_clk_p;
  wire io_ddr_00_act_n;
  wire [16:0]io_ddr_00_adr;
  wire [1:0]io_ddr_00_ba;
  wire [0:0]io_ddr_00_bg;
  wire [0:0]io_ddr_00_ck_c;
  wire [0:0]io_ddr_00_ck_t;
  wire [0:0]io_ddr_00_cke;
  wire [0:0]io_ddr_00_cs_n;
  wire [8:0]io_ddr_00_dm_n;
  wire [71:0]io_ddr_00_dq;
  wire [8:0]io_ddr_00_dqs_c;
  wire [8:0]io_ddr_00_dqs_t;
  wire [0:0]io_ddr_00_odt;
  wire io_ddr_00_reset_n;
  wire krnl_ro_rtl_1_interrupt;
  wire [63:0]krnl_ro_rtl_1_m_axi_gmem_ARADDR;
  wire [1:0]krnl_ro_rtl_1_m_axi_gmem_ARBURST;
  wire [3:0]krnl_ro_rtl_1_m_axi_gmem_ARCACHE;
  wire krnl_ro_rtl_1_m_axi_gmem_ARID;
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
  wire krnl_ro_rtl_1_m_axi_gmem_AWID;
  wire [7:0]krnl_ro_rtl_1_m_axi_gmem_AWLEN;
  wire [1:0]krnl_ro_rtl_1_m_axi_gmem_AWLOCK;
  wire [2:0]krnl_ro_rtl_1_m_axi_gmem_AWPROT;
  wire [3:0]krnl_ro_rtl_1_m_axi_gmem_AWQOS;
  wire krnl_ro_rtl_1_m_axi_gmem_AWREADY;
  wire [3:0]krnl_ro_rtl_1_m_axi_gmem_AWREGION;
  wire [2:0]krnl_ro_rtl_1_m_axi_gmem_AWSIZE;
  wire krnl_ro_rtl_1_m_axi_gmem_AWVALID;
  wire krnl_ro_rtl_1_m_axi_gmem_BID;
  wire krnl_ro_rtl_1_m_axi_gmem_BREADY;
  wire [1:0]krnl_ro_rtl_1_m_axi_gmem_BRESP;
  wire krnl_ro_rtl_1_m_axi_gmem_BVALID;
  wire [31:0]krnl_ro_rtl_1_m_axi_gmem_RDATA;
  wire krnl_ro_rtl_1_m_axi_gmem_RID;
  wire krnl_ro_rtl_1_m_axi_gmem_RLAST;
  wire krnl_ro_rtl_1_m_axi_gmem_RREADY;
  wire [1:0]krnl_ro_rtl_1_m_axi_gmem_RRESP;
  wire krnl_ro_rtl_1_m_axi_gmem_RVALID;
  wire [31:0]krnl_ro_rtl_1_m_axi_gmem_WDATA;
  wire krnl_ro_rtl_1_m_axi_gmem_WLAST;
  wire krnl_ro_rtl_1_m_axi_gmem_WREADY;
  wire [3:0]krnl_ro_rtl_1_m_axi_gmem_WSTRB;
  wire krnl_ro_rtl_1_m_axi_gmem_WVALID;
  wire psreset_ddrmem_n_1_interconnect_aresetn;
  wire [11:0]slr1_M01_AXI1_ARADDR;
  wire slr1_M01_AXI1_ARREADY;
  wire slr1_M01_AXI1_ARVALID;
  wire [11:0]slr1_M01_AXI1_AWADDR;
  wire slr1_M01_AXI1_AWREADY;
  wire slr1_M01_AXI1_AWVALID;
  wire slr1_M01_AXI1_BREADY;
  wire [1:0]slr1_M01_AXI1_BRESP;
  wire slr1_M01_AXI1_BVALID;
  wire [31:0]slr1_M01_AXI1_RDATA;
  wire slr1_M01_AXI1_RREADY;
  wire [1:0]slr1_M01_AXI1_RRESP;
  wire slr1_M01_AXI1_RVALID;
  wire [31:0]slr1_M01_AXI1_WDATA;
  wire slr1_M01_AXI1_WREADY;
  wire [3:0]slr1_M01_AXI1_WSTRB;
  wire slr1_M01_AXI1_WVALID;
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
  wire slr1_axi_cdc_data_static_M_AXI1_ARLOCK;
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
  wire slr1_axi_cdc_data_static_M_AXI1_AWLOCK;
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
  wire slr1_axi_cdc_data_static_M_AXI_ARLOCK;
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
  wire slr1_axi_cdc_data_static_M_AXI_AWLOCK;
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
  wire slr1_interconnect_aresetn;
  wire slr1_logic_reset_op_Res;
  wire slr1_peripheral_aresetn;
  wire slr1_psreset_gate_pr_control_interconnect_aresetn;
  wire slr1_psreset_gate_pr_data_interconnect_aresetn;
  wire slr1_psreset_gate_pr_kernel_interconnect_aresetn;
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
  wire xlslice_0_Dout;
  wire xlslice_4_Dout;
  wire [63:15]NLW_axi_interconnect_1_M01_AXI_araddr_UNCONNECTED;
  wire [63:15]NLW_axi_interconnect_1_M01_AXI_awaddr_UNCONNECTED;
  wire [31:5]NLW_axi_protocol_convert_0_m_axi_araddr_UNCONNECTED;
  wire [31:5]NLW_axi_protocol_convert_0_m_axi_awaddr_UNCONNECTED;
  wire NLW_ddrmem_1_c0_ddr4_interrupt_UNCONNECTED;
  wire NLW_ddrmem_1_dbg_clk_UNCONNECTED;
  wire [511:0]NLW_ddrmem_1_dbg_bus_UNCONNECTED;
  wire [2:0]NLW_fpga_dna_module_0_dna_dyn_data_ports_UNCONNECTED;
  wire [95:0]NLW_fpga_dna_module_0_fpga_dna_data_UNCONNECTED;
  wire [0:0]NLW_ii_level0_wire_ulp_m_aresetn_kernel_ref_clk_00_UNCONNECTED;
  wire [0:0]NLW_ii_level0_wire_ulp_m_aresetn_pcie_00_UNCONNECTED;
  wire [0:0]NLW_ii_level0_wire_ulp_m_data_dout_dna_00_UNCONNECTED;
  wire [127:0]NLW_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout_UNCONNECTED;
  wire [31:0]NLW_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout_UNCONNECTED;
  wire NLW_psreset_ddrmem_n_1_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_ddrmem_n_1_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_ddrmem_n_1_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_ddrmem_n_1_peripheral_reset_UNCONNECTED;
  wire NLW_regslice_periph_null_m_axi_arvalid_UNCONNECTED;
  wire NLW_regslice_periph_null_m_axi_awvalid_UNCONNECTED;
  wire NLW_regslice_periph_null_m_axi_bready_UNCONNECTED;
  wire NLW_regslice_periph_null_m_axi_rready_UNCONNECTED;
  wire NLW_regslice_periph_null_m_axi_wlast_UNCONNECTED;
  wire NLW_regslice_periph_null_m_axi_wvalid_UNCONNECTED;
  wire [39:0]NLW_regslice_periph_null_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_regslice_periph_null_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_regslice_periph_null_m_axi_arcache_UNCONNECTED;
  wire [1:0]NLW_regslice_periph_null_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_regslice_periph_null_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_regslice_periph_null_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_regslice_periph_null_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_regslice_periph_null_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_regslice_periph_null_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_regslice_periph_null_m_axi_arsize_UNCONNECTED;
  wire [39:0]NLW_regslice_periph_null_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_regslice_periph_null_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_regslice_periph_null_m_axi_awcache_UNCONNECTED;
  wire [1:0]NLW_regslice_periph_null_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_regslice_periph_null_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_regslice_periph_null_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_regslice_periph_null_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_regslice_periph_null_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_regslice_periph_null_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_regslice_periph_null_m_axi_awsize_UNCONNECTED;
  wire [63:0]NLW_regslice_periph_null_m_axi_wdata_UNCONNECTED;
  wire [7:0]NLW_regslice_periph_null_m_axi_wstrb_UNCONNECTED;

  (* X_CORE_INFO = "axi_bram_ctrl,Vivado 2021.1" *) 
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
        .s_axi_araddr(axi_interconnect_1_M01_AXI_ARADDR),
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
        .s_axi_awaddr(axi_interconnect_1_M01_AXI_AWADDR),
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
  (* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
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
        .ARESETN(1'b0),
        .M00_ACLK(1'b0),
        .M00_ARESETN(1'b0),
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
        .S00_ACLK(1'b0),
        .S00_ARESETN(1'b0),
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
        .S01_ACLK(blp_s_aclk_kernel_ref_clk_00),
        .S01_ARESETN(slr1_psreset_gate_pr_kernel_interconnect_aresetn),
        .S01_AXI_araddr(krnl_ro_rtl_1_m_axi_gmem_ARADDR),
        .S01_AXI_arburst(krnl_ro_rtl_1_m_axi_gmem_ARBURST),
        .S01_AXI_arcache(krnl_ro_rtl_1_m_axi_gmem_ARCACHE),
        .S01_AXI_arid(krnl_ro_rtl_1_m_axi_gmem_ARID),
        .S01_AXI_arlen(krnl_ro_rtl_1_m_axi_gmem_ARLEN),
        .S01_AXI_arlock({1'b0,krnl_ro_rtl_1_m_axi_gmem_ARLOCK[0]}),
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
        .S01_AXI_awlock({1'b0,krnl_ro_rtl_1_m_axi_gmem_AWLOCK[0]}),
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
       (.ACLK(1'b0),
        .ARESETN(1'b0),
        .M00_ACLK(1'b0),
        .M00_ARESETN(1'b0),
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
        .M01_ACLK(1'b0),
        .M01_ARESETN(1'b0),
        .M01_AXI_araddr({NLW_axi_interconnect_1_M01_AXI_araddr_UNCONNECTED[63:15],axi_interconnect_1_M01_AXI_ARADDR}),
        .M01_AXI_arburst(axi_interconnect_1_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_interconnect_1_M01_AXI_ARCACHE),
        .M01_AXI_arid(axi_interconnect_1_M01_AXI_ARID),
        .M01_AXI_arlen(axi_interconnect_1_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_interconnect_1_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_interconnect_1_M01_AXI_ARPROT),
        .M01_AXI_arready(axi_interconnect_1_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_interconnect_1_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(axi_interconnect_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr({NLW_axi_interconnect_1_M01_AXI_awaddr_UNCONNECTED[63:15],axi_interconnect_1_M01_AXI_AWADDR}),
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
        .S00_ACLK(1'b0),
        .S00_ARESETN(1'b0),
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
        .S01_ACLK(1'b0),
        .S01_ARESETN(1'b0),
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
        .S02_ACLK(1'b0),
        .S02_ARESETN(1'b0),
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
        .S03_ACLK(1'b0),
        .S03_ARESETN(1'b0),
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
  (* X_CORE_INFO = "axi_protocol_converter_v2_1_24_axi_protocol_converter,Vivado 2021.1" *) 
  ulp_axi_protocol_convert_0_0 axi_protocol_convert_0
       (.aclk(clkwiz_sysclks_clk_out2_1),
        .aresetn(ii_level0_wire_ulp_m_aresetn_ctrl_00),
        .m_axi_araddr({NLW_axi_protocol_convert_0_m_axi_araddr_UNCONNECTED[31:5],axi_protocol_convert_0_M_AXI_ARADDR}),
        .m_axi_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .m_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .m_axi_awaddr({NLW_axi_protocol_convert_0_m_axi_awaddr_UNCONNECTED[31:5],axi_protocol_convert_0_M_AXI_AWADDR}),
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
  (* X_CORE_INFO = "axi_vip_v1_1_10_top,Vivado 2021.1" *) 
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
  (* X_CORE_INFO = "axi_vip_v1_1_10_top,Vivado 2021.1" *) 
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
  (* X_CORE_INFO = "util_ds_buf,Vivado 2021.1" *) 
  ulp_ddr1_clk_bufg_0 ddr1_clk_bufg
       (.BUFG_I(ddr1_clk_ibufds_IBUF_OUT),
        .BUFG_O(ddr1_clk_bufg_BUFG_O));
  (* X_CORE_INFO = "util_ds_buf,Vivado 2021.1" *) 
  ulp_ddr1_clk_ibufds_0 ddr1_clk_ibufds
       (.IBUF_DS_N(io_clk_ddr_00_clk_n),
        .IBUF_DS_P(io_clk_ddr_00_clk_p),
        .IBUF_OUT(ddr1_clk_ibufds_IBUF_OUT));
  (* X_CORE_INFO = "ddr4_v2_2_12,Vivado 2021.1" *) 
  ulp_ddrmem_1_0 ddrmem_1
       (.c0_ddr4_act_n(io_ddr_00_act_n),
        .c0_ddr4_adr(io_ddr_00_adr),
        .c0_ddr4_aresetn(psreset_ddrmem_n_1_interconnect_aresetn),
        .c0_ddr4_ba(io_ddr_00_ba),
        .c0_ddr4_bg(io_ddr_00_bg),
        .c0_ddr4_ck_c(io_ddr_00_ck_c),
        .c0_ddr4_ck_t(io_ddr_00_ck_t),
        .c0_ddr4_cke(io_ddr_00_cke),
        .c0_ddr4_cs_n(io_ddr_00_cs_n),
        .c0_ddr4_dm_dbi_n(io_ddr_00_dm_n),
        .c0_ddr4_dq(io_ddr_00_dq),
        .c0_ddr4_dqs_c(io_ddr_00_dqs_c),
        .c0_ddr4_dqs_t(io_ddr_00_dqs_t),
        .c0_ddr4_interrupt(NLW_ddrmem_1_c0_ddr4_interrupt_UNCONNECTED),
        .c0_ddr4_odt(io_ddr_00_odt),
        .c0_ddr4_reset_n(io_ddr_00_reset_n),
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
        .dbg_bus(NLW_ddrmem_1_dbg_bus_UNCONNECTED[511:0]),
        .dbg_clk(NLW_ddrmem_1_dbg_clk_UNCONNECTED),
        .sys_rst(slr1_logic_reset_op_Res));
  (* X_CORE_INFO = "bd_0349,Vivado 2021.1" *) 
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
  (* X_CORE_INFO = "fpga_dna_module,Vivado 2021.1" *) 
  ulp_fpga_dna_module_0_0 fpga_dna_module_0
       (.dna_dyn_data_dout(1'b0),
        .dna_dyn_data_ports(NLW_fpga_dna_module_0_dna_dyn_data_ports_UNCONNECTED[2:0]),
        .fpga_dna_data(NLW_fpga_dna_module_0_fpga_dna_data_UNCONNECTED[95:0]),
        .s_axi_lite_aclk(clkwiz_sysclks_clk_out2_1),
        .s_axi_lite_araddr(slr1_M01_AXI1_ARADDR),
        .s_axi_lite_aresetn(slr1_psreset_gate_pr_control_interconnect_aresetn),
        .s_axi_lite_arready(slr1_M01_AXI1_ARREADY),
        .s_axi_lite_arvalid(slr1_M01_AXI1_ARVALID),
        .s_axi_lite_awaddr(slr1_M01_AXI1_AWADDR),
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
  (* X_CORE_INFO = "ii_level0_wire,Vivado 2021.1" *) 
  ulp_ii_level0_wire_0 ii_level0_wire
       (.BLP_S_AXI_CTRL_USER_00_araddr(BLP_S_AXI_CTRL_USER_00_araddr),
        .BLP_S_AXI_CTRL_USER_00_arprot(BLP_S_AXI_CTRL_USER_00_arprot),
        .BLP_S_AXI_CTRL_USER_00_arready(BLP_S_AXI_CTRL_USER_00_arready),
        .BLP_S_AXI_CTRL_USER_00_arvalid(BLP_S_AXI_CTRL_USER_00_arvalid),
        .BLP_S_AXI_CTRL_USER_00_awaddr(BLP_S_AXI_CTRL_USER_00_awaddr),
        .BLP_S_AXI_CTRL_USER_00_awprot(BLP_S_AXI_CTRL_USER_00_awprot),
        .BLP_S_AXI_CTRL_USER_00_awready(BLP_S_AXI_CTRL_USER_00_awready),
        .BLP_S_AXI_CTRL_USER_00_awvalid(BLP_S_AXI_CTRL_USER_00_awvalid),
        .BLP_S_AXI_CTRL_USER_00_bready(BLP_S_AXI_CTRL_USER_00_bready),
        .BLP_S_AXI_CTRL_USER_00_bresp(BLP_S_AXI_CTRL_USER_00_bresp),
        .BLP_S_AXI_CTRL_USER_00_bvalid(BLP_S_AXI_CTRL_USER_00_bvalid),
        .BLP_S_AXI_CTRL_USER_00_rdata(BLP_S_AXI_CTRL_USER_00_rdata),
        .BLP_S_AXI_CTRL_USER_00_rready(BLP_S_AXI_CTRL_USER_00_rready),
        .BLP_S_AXI_CTRL_USER_00_rresp(BLP_S_AXI_CTRL_USER_00_rresp),
        .BLP_S_AXI_CTRL_USER_00_rvalid(BLP_S_AXI_CTRL_USER_00_rvalid),
        .BLP_S_AXI_CTRL_USER_00_wdata(BLP_S_AXI_CTRL_USER_00_wdata),
        .BLP_S_AXI_CTRL_USER_00_wready(BLP_S_AXI_CTRL_USER_00_wready),
        .BLP_S_AXI_CTRL_USER_00_wstrb(BLP_S_AXI_CTRL_USER_00_wstrb),
        .BLP_S_AXI_CTRL_USER_00_wvalid(BLP_S_AXI_CTRL_USER_00_wvalid),
        .BLP_S_AXI_CTRL_USER_01_araddr(BLP_S_AXI_CTRL_USER_01_araddr),
        .BLP_S_AXI_CTRL_USER_01_arprot(BLP_S_AXI_CTRL_USER_01_arprot),
        .BLP_S_AXI_CTRL_USER_01_arready(BLP_S_AXI_CTRL_USER_01_arready),
        .BLP_S_AXI_CTRL_USER_01_arvalid(BLP_S_AXI_CTRL_USER_01_arvalid),
        .BLP_S_AXI_CTRL_USER_01_awaddr(BLP_S_AXI_CTRL_USER_01_awaddr),
        .BLP_S_AXI_CTRL_USER_01_awprot(BLP_S_AXI_CTRL_USER_01_awprot),
        .BLP_S_AXI_CTRL_USER_01_awready(BLP_S_AXI_CTRL_USER_01_awready),
        .BLP_S_AXI_CTRL_USER_01_awvalid(BLP_S_AXI_CTRL_USER_01_awvalid),
        .BLP_S_AXI_CTRL_USER_01_bready(BLP_S_AXI_CTRL_USER_01_bready),
        .BLP_S_AXI_CTRL_USER_01_bresp(BLP_S_AXI_CTRL_USER_01_bresp),
        .BLP_S_AXI_CTRL_USER_01_bvalid(BLP_S_AXI_CTRL_USER_01_bvalid),
        .BLP_S_AXI_CTRL_USER_01_rdata(BLP_S_AXI_CTRL_USER_01_rdata),
        .BLP_S_AXI_CTRL_USER_01_rready(BLP_S_AXI_CTRL_USER_01_rready),
        .BLP_S_AXI_CTRL_USER_01_rresp(BLP_S_AXI_CTRL_USER_01_rresp),
        .BLP_S_AXI_CTRL_USER_01_rvalid(BLP_S_AXI_CTRL_USER_01_rvalid),
        .BLP_S_AXI_CTRL_USER_01_wdata(BLP_S_AXI_CTRL_USER_01_wdata),
        .BLP_S_AXI_CTRL_USER_01_wready(BLP_S_AXI_CTRL_USER_01_wready),
        .BLP_S_AXI_CTRL_USER_01_wstrb(BLP_S_AXI_CTRL_USER_01_wstrb),
        .BLP_S_AXI_CTRL_USER_01_wvalid(BLP_S_AXI_CTRL_USER_01_wvalid),
        .BLP_S_AXI_CTRL_USER_02_araddr(BLP_S_AXI_CTRL_USER_02_araddr),
        .BLP_S_AXI_CTRL_USER_02_arprot(BLP_S_AXI_CTRL_USER_02_arprot),
        .BLP_S_AXI_CTRL_USER_02_arready(BLP_S_AXI_CTRL_USER_02_arready),
        .BLP_S_AXI_CTRL_USER_02_arvalid(BLP_S_AXI_CTRL_USER_02_arvalid),
        .BLP_S_AXI_CTRL_USER_02_awaddr(BLP_S_AXI_CTRL_USER_02_awaddr),
        .BLP_S_AXI_CTRL_USER_02_awprot(BLP_S_AXI_CTRL_USER_02_awprot),
        .BLP_S_AXI_CTRL_USER_02_awready(BLP_S_AXI_CTRL_USER_02_awready),
        .BLP_S_AXI_CTRL_USER_02_awvalid(BLP_S_AXI_CTRL_USER_02_awvalid),
        .BLP_S_AXI_CTRL_USER_02_bready(BLP_S_AXI_CTRL_USER_02_bready),
        .BLP_S_AXI_CTRL_USER_02_bresp(BLP_S_AXI_CTRL_USER_02_bresp),
        .BLP_S_AXI_CTRL_USER_02_bvalid(BLP_S_AXI_CTRL_USER_02_bvalid),
        .BLP_S_AXI_CTRL_USER_02_rdata(BLP_S_AXI_CTRL_USER_02_rdata),
        .BLP_S_AXI_CTRL_USER_02_rready(BLP_S_AXI_CTRL_USER_02_rready),
        .BLP_S_AXI_CTRL_USER_02_rresp(BLP_S_AXI_CTRL_USER_02_rresp),
        .BLP_S_AXI_CTRL_USER_02_rvalid(BLP_S_AXI_CTRL_USER_02_rvalid),
        .BLP_S_AXI_CTRL_USER_02_wdata(BLP_S_AXI_CTRL_USER_02_wdata),
        .BLP_S_AXI_CTRL_USER_02_wready(BLP_S_AXI_CTRL_USER_02_wready),
        .BLP_S_AXI_CTRL_USER_02_wstrb(BLP_S_AXI_CTRL_USER_02_wstrb),
        .BLP_S_AXI_CTRL_USER_02_wvalid(BLP_S_AXI_CTRL_USER_02_wvalid),
        .BLP_S_AXI_DATA_H2C_00_araddr(BLP_S_AXI_DATA_H2C_00_araddr),
        .BLP_S_AXI_DATA_H2C_00_arburst(BLP_S_AXI_DATA_H2C_00_arburst),
        .BLP_S_AXI_DATA_H2C_00_arcache(BLP_S_AXI_DATA_H2C_00_arcache),
        .BLP_S_AXI_DATA_H2C_00_arid(BLP_S_AXI_DATA_H2C_00_arid),
        .BLP_S_AXI_DATA_H2C_00_arlen(BLP_S_AXI_DATA_H2C_00_arlen),
        .BLP_S_AXI_DATA_H2C_00_arlock(BLP_S_AXI_DATA_H2C_00_arlock),
        .BLP_S_AXI_DATA_H2C_00_arprot(BLP_S_AXI_DATA_H2C_00_arprot),
        .BLP_S_AXI_DATA_H2C_00_arready(BLP_S_AXI_DATA_H2C_00_arready),
        .BLP_S_AXI_DATA_H2C_00_arvalid(BLP_S_AXI_DATA_H2C_00_arvalid),
        .BLP_S_AXI_DATA_H2C_00_awaddr(BLP_S_AXI_DATA_H2C_00_awaddr),
        .BLP_S_AXI_DATA_H2C_00_awburst(BLP_S_AXI_DATA_H2C_00_awburst),
        .BLP_S_AXI_DATA_H2C_00_awcache(BLP_S_AXI_DATA_H2C_00_awcache),
        .BLP_S_AXI_DATA_H2C_00_awid(BLP_S_AXI_DATA_H2C_00_awid),
        .BLP_S_AXI_DATA_H2C_00_awlen(BLP_S_AXI_DATA_H2C_00_awlen),
        .BLP_S_AXI_DATA_H2C_00_awlock(BLP_S_AXI_DATA_H2C_00_awlock),
        .BLP_S_AXI_DATA_H2C_00_awprot(BLP_S_AXI_DATA_H2C_00_awprot),
        .BLP_S_AXI_DATA_H2C_00_awready(BLP_S_AXI_DATA_H2C_00_awready),
        .BLP_S_AXI_DATA_H2C_00_awvalid(BLP_S_AXI_DATA_H2C_00_awvalid),
        .BLP_S_AXI_DATA_H2C_00_bid(BLP_S_AXI_DATA_H2C_00_bid),
        .BLP_S_AXI_DATA_H2C_00_bready(BLP_S_AXI_DATA_H2C_00_bready),
        .BLP_S_AXI_DATA_H2C_00_bresp(BLP_S_AXI_DATA_H2C_00_bresp),
        .BLP_S_AXI_DATA_H2C_00_bvalid(BLP_S_AXI_DATA_H2C_00_bvalid),
        .BLP_S_AXI_DATA_H2C_00_rdata(BLP_S_AXI_DATA_H2C_00_rdata),
        .BLP_S_AXI_DATA_H2C_00_rid(BLP_S_AXI_DATA_H2C_00_rid),
        .BLP_S_AXI_DATA_H2C_00_rlast(BLP_S_AXI_DATA_H2C_00_rlast),
        .BLP_S_AXI_DATA_H2C_00_rready(BLP_S_AXI_DATA_H2C_00_rready),
        .BLP_S_AXI_DATA_H2C_00_rresp(BLP_S_AXI_DATA_H2C_00_rresp),
        .BLP_S_AXI_DATA_H2C_00_rvalid(BLP_S_AXI_DATA_H2C_00_rvalid),
        .BLP_S_AXI_DATA_H2C_00_wdata(BLP_S_AXI_DATA_H2C_00_wdata),
        .BLP_S_AXI_DATA_H2C_00_wlast(BLP_S_AXI_DATA_H2C_00_wlast),
        .BLP_S_AXI_DATA_H2C_00_wready(BLP_S_AXI_DATA_H2C_00_wready),
        .BLP_S_AXI_DATA_H2C_00_wstrb(BLP_S_AXI_DATA_H2C_00_wstrb),
        .BLP_S_AXI_DATA_H2C_00_wvalid(BLP_S_AXI_DATA_H2C_00_wvalid),
        .BLP_S_AXI_DATA_H2C_01_araddr(BLP_S_AXI_DATA_H2C_01_araddr),
        .BLP_S_AXI_DATA_H2C_01_arburst(BLP_S_AXI_DATA_H2C_01_arburst),
        .BLP_S_AXI_DATA_H2C_01_arcache(BLP_S_AXI_DATA_H2C_01_arcache),
        .BLP_S_AXI_DATA_H2C_01_arid(BLP_S_AXI_DATA_H2C_01_arid),
        .BLP_S_AXI_DATA_H2C_01_arlen(BLP_S_AXI_DATA_H2C_01_arlen),
        .BLP_S_AXI_DATA_H2C_01_arlock(BLP_S_AXI_DATA_H2C_01_arlock),
        .BLP_S_AXI_DATA_H2C_01_arprot(BLP_S_AXI_DATA_H2C_01_arprot),
        .BLP_S_AXI_DATA_H2C_01_arready(BLP_S_AXI_DATA_H2C_01_arready),
        .BLP_S_AXI_DATA_H2C_01_arvalid(BLP_S_AXI_DATA_H2C_01_arvalid),
        .BLP_S_AXI_DATA_H2C_01_awaddr(BLP_S_AXI_DATA_H2C_01_awaddr),
        .BLP_S_AXI_DATA_H2C_01_awburst(BLP_S_AXI_DATA_H2C_01_awburst),
        .BLP_S_AXI_DATA_H2C_01_awcache(BLP_S_AXI_DATA_H2C_01_awcache),
        .BLP_S_AXI_DATA_H2C_01_awid(BLP_S_AXI_DATA_H2C_01_awid),
        .BLP_S_AXI_DATA_H2C_01_awlen(BLP_S_AXI_DATA_H2C_01_awlen),
        .BLP_S_AXI_DATA_H2C_01_awlock(BLP_S_AXI_DATA_H2C_01_awlock),
        .BLP_S_AXI_DATA_H2C_01_awprot(BLP_S_AXI_DATA_H2C_01_awprot),
        .BLP_S_AXI_DATA_H2C_01_awready(BLP_S_AXI_DATA_H2C_01_awready),
        .BLP_S_AXI_DATA_H2C_01_awvalid(BLP_S_AXI_DATA_H2C_01_awvalid),
        .BLP_S_AXI_DATA_H2C_01_bid(BLP_S_AXI_DATA_H2C_01_bid),
        .BLP_S_AXI_DATA_H2C_01_bready(BLP_S_AXI_DATA_H2C_01_bready),
        .BLP_S_AXI_DATA_H2C_01_bresp(BLP_S_AXI_DATA_H2C_01_bresp),
        .BLP_S_AXI_DATA_H2C_01_bvalid(BLP_S_AXI_DATA_H2C_01_bvalid),
        .BLP_S_AXI_DATA_H2C_01_rdata(BLP_S_AXI_DATA_H2C_01_rdata),
        .BLP_S_AXI_DATA_H2C_01_rid(BLP_S_AXI_DATA_H2C_01_rid),
        .BLP_S_AXI_DATA_H2C_01_rlast(BLP_S_AXI_DATA_H2C_01_rlast),
        .BLP_S_AXI_DATA_H2C_01_rready(BLP_S_AXI_DATA_H2C_01_rready),
        .BLP_S_AXI_DATA_H2C_01_rresp(BLP_S_AXI_DATA_H2C_01_rresp),
        .BLP_S_AXI_DATA_H2C_01_rvalid(BLP_S_AXI_DATA_H2C_01_rvalid),
        .BLP_S_AXI_DATA_H2C_01_wdata(BLP_S_AXI_DATA_H2C_01_wdata),
        .BLP_S_AXI_DATA_H2C_01_wlast(BLP_S_AXI_DATA_H2C_01_wlast),
        .BLP_S_AXI_DATA_H2C_01_wready(BLP_S_AXI_DATA_H2C_01_wready),
        .BLP_S_AXI_DATA_H2C_01_wstrb(BLP_S_AXI_DATA_H2C_01_wstrb),
        .BLP_S_AXI_DATA_H2C_01_wvalid(BLP_S_AXI_DATA_H2C_01_wvalid),
        .BLP_S_AXI_DATA_H2C_02_araddr(BLP_S_AXI_DATA_H2C_02_araddr),
        .BLP_S_AXI_DATA_H2C_02_arburst(BLP_S_AXI_DATA_H2C_02_arburst),
        .BLP_S_AXI_DATA_H2C_02_arcache(BLP_S_AXI_DATA_H2C_02_arcache),
        .BLP_S_AXI_DATA_H2C_02_arlen(BLP_S_AXI_DATA_H2C_02_arlen),
        .BLP_S_AXI_DATA_H2C_02_arlock(BLP_S_AXI_DATA_H2C_02_arlock),
        .BLP_S_AXI_DATA_H2C_02_arprot(BLP_S_AXI_DATA_H2C_02_arprot),
        .BLP_S_AXI_DATA_H2C_02_arready(BLP_S_AXI_DATA_H2C_02_arready),
        .BLP_S_AXI_DATA_H2C_02_arvalid(BLP_S_AXI_DATA_H2C_02_arvalid),
        .BLP_S_AXI_DATA_H2C_02_awaddr(BLP_S_AXI_DATA_H2C_02_awaddr),
        .BLP_S_AXI_DATA_H2C_02_awburst(BLP_S_AXI_DATA_H2C_02_awburst),
        .BLP_S_AXI_DATA_H2C_02_awcache(BLP_S_AXI_DATA_H2C_02_awcache),
        .BLP_S_AXI_DATA_H2C_02_awlen(BLP_S_AXI_DATA_H2C_02_awlen),
        .BLP_S_AXI_DATA_H2C_02_awlock(BLP_S_AXI_DATA_H2C_02_awlock),
        .BLP_S_AXI_DATA_H2C_02_awprot(BLP_S_AXI_DATA_H2C_02_awprot),
        .BLP_S_AXI_DATA_H2C_02_awready(BLP_S_AXI_DATA_H2C_02_awready),
        .BLP_S_AXI_DATA_H2C_02_awvalid(BLP_S_AXI_DATA_H2C_02_awvalid),
        .BLP_S_AXI_DATA_H2C_02_bready(BLP_S_AXI_DATA_H2C_02_bready),
        .BLP_S_AXI_DATA_H2C_02_bresp(BLP_S_AXI_DATA_H2C_02_bresp),
        .BLP_S_AXI_DATA_H2C_02_bvalid(BLP_S_AXI_DATA_H2C_02_bvalid),
        .BLP_S_AXI_DATA_H2C_02_rdata(BLP_S_AXI_DATA_H2C_02_rdata),
        .BLP_S_AXI_DATA_H2C_02_rlast(BLP_S_AXI_DATA_H2C_02_rlast),
        .BLP_S_AXI_DATA_H2C_02_rready(BLP_S_AXI_DATA_H2C_02_rready),
        .BLP_S_AXI_DATA_H2C_02_rresp(BLP_S_AXI_DATA_H2C_02_rresp),
        .BLP_S_AXI_DATA_H2C_02_rvalid(BLP_S_AXI_DATA_H2C_02_rvalid),
        .BLP_S_AXI_DATA_H2C_02_wdata(BLP_S_AXI_DATA_H2C_02_wdata),
        .BLP_S_AXI_DATA_H2C_02_wlast(BLP_S_AXI_DATA_H2C_02_wlast),
        .BLP_S_AXI_DATA_H2C_02_wready(BLP_S_AXI_DATA_H2C_02_wready),
        .BLP_S_AXI_DATA_H2C_02_wstrb(BLP_S_AXI_DATA_H2C_02_wstrb),
        .BLP_S_AXI_DATA_H2C_02_wvalid(BLP_S_AXI_DATA_H2C_02_wvalid),
        .BLP_S_AXI_DATA_H2C_03_araddr(BLP_S_AXI_DATA_H2C_03_araddr),
        .BLP_S_AXI_DATA_H2C_03_arburst(BLP_S_AXI_DATA_H2C_03_arburst),
        .BLP_S_AXI_DATA_H2C_03_arcache(BLP_S_AXI_DATA_H2C_03_arcache),
        .BLP_S_AXI_DATA_H2C_03_arid(BLP_S_AXI_DATA_H2C_03_arid),
        .BLP_S_AXI_DATA_H2C_03_arlen(BLP_S_AXI_DATA_H2C_03_arlen),
        .BLP_S_AXI_DATA_H2C_03_arlock(BLP_S_AXI_DATA_H2C_03_arlock),
        .BLP_S_AXI_DATA_H2C_03_arprot(BLP_S_AXI_DATA_H2C_03_arprot),
        .BLP_S_AXI_DATA_H2C_03_arready(BLP_S_AXI_DATA_H2C_03_arready),
        .BLP_S_AXI_DATA_H2C_03_arvalid(BLP_S_AXI_DATA_H2C_03_arvalid),
        .BLP_S_AXI_DATA_H2C_03_awaddr(BLP_S_AXI_DATA_H2C_03_awaddr),
        .BLP_S_AXI_DATA_H2C_03_awburst(BLP_S_AXI_DATA_H2C_03_awburst),
        .BLP_S_AXI_DATA_H2C_03_awcache(BLP_S_AXI_DATA_H2C_03_awcache),
        .BLP_S_AXI_DATA_H2C_03_awid(BLP_S_AXI_DATA_H2C_03_awid),
        .BLP_S_AXI_DATA_H2C_03_awlen(BLP_S_AXI_DATA_H2C_03_awlen),
        .BLP_S_AXI_DATA_H2C_03_awlock(BLP_S_AXI_DATA_H2C_03_awlock),
        .BLP_S_AXI_DATA_H2C_03_awprot(BLP_S_AXI_DATA_H2C_03_awprot),
        .BLP_S_AXI_DATA_H2C_03_awready(BLP_S_AXI_DATA_H2C_03_awready),
        .BLP_S_AXI_DATA_H2C_03_awvalid(BLP_S_AXI_DATA_H2C_03_awvalid),
        .BLP_S_AXI_DATA_H2C_03_bid(BLP_S_AXI_DATA_H2C_03_bid),
        .BLP_S_AXI_DATA_H2C_03_bready(BLP_S_AXI_DATA_H2C_03_bready),
        .BLP_S_AXI_DATA_H2C_03_bresp(BLP_S_AXI_DATA_H2C_03_bresp),
        .BLP_S_AXI_DATA_H2C_03_bvalid(BLP_S_AXI_DATA_H2C_03_bvalid),
        .BLP_S_AXI_DATA_H2C_03_rdata(BLP_S_AXI_DATA_H2C_03_rdata),
        .BLP_S_AXI_DATA_H2C_03_rid(BLP_S_AXI_DATA_H2C_03_rid),
        .BLP_S_AXI_DATA_H2C_03_rlast(BLP_S_AXI_DATA_H2C_03_rlast),
        .BLP_S_AXI_DATA_H2C_03_rready(BLP_S_AXI_DATA_H2C_03_rready),
        .BLP_S_AXI_DATA_H2C_03_rresp(BLP_S_AXI_DATA_H2C_03_rresp),
        .BLP_S_AXI_DATA_H2C_03_rvalid(BLP_S_AXI_DATA_H2C_03_rvalid),
        .BLP_S_AXI_DATA_H2C_03_wdata(BLP_S_AXI_DATA_H2C_03_wdata),
        .BLP_S_AXI_DATA_H2C_03_wlast(BLP_S_AXI_DATA_H2C_03_wlast),
        .BLP_S_AXI_DATA_H2C_03_wready(BLP_S_AXI_DATA_H2C_03_wready),
        .BLP_S_AXI_DATA_H2C_03_wstrb(BLP_S_AXI_DATA_H2C_03_wstrb),
        .BLP_S_AXI_DATA_H2C_03_wvalid(BLP_S_AXI_DATA_H2C_03_wvalid),
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
        .blp_m_data_dna_from_ulp_00(blp_m_data_dna_from_ulp_00),
        .blp_m_data_memory_calib_complete_00(blp_m_data_memory_calib_complete_00),
        .blp_m_irq_cu_00(blp_m_irq_cu_00),
        .blp_s_aclk_ctrl_00(blp_s_aclk_ctrl_00),
        .blp_s_aclk_kernel2_ref_clk_00(blp_s_aclk_kernel2_ref_clk_00),
        .blp_s_aclk_kernel_ref_clk_00(blp_s_aclk_kernel_ref_clk_00),
        .blp_s_aclk_pcie_00(blp_s_aclk_pcie_00),
        .blp_s_aresetn_ctrl_00(blp_s_aresetn_ctrl_00),
        .blp_s_aresetn_kernel_ref_clk_00(blp_s_aresetn_kernel_ref_clk_00),
        .blp_s_aresetn_pcie_00(blp_s_aresetn_pcie_00),
        .blp_s_data_clkwiz_kernel_clk_out1_locked_00(blp_s_data_clkwiz_kernel_clk_out1_locked_00),
        .blp_s_data_dout_dna_00(blp_s_data_dout_dna_00),
        .blp_s_data_perstn_out_00(blp_s_data_perstn_out_00),
        .blp_s_data_slice_pr_reset_to_ulp_00(blp_s_data_slice_pr_reset_to_ulp_00),
        .ulp_m_aclk_ctrl_00(clkwiz_sysclks_clk_out2_1),
        .ulp_m_aclk_kernel2_ref_clk_00(ii_level0_wire_ulp_m_aclk_kernel2_ref_clk_00),
        .ulp_m_aclk_kernel_ref_clk_00(clkwiz_kernel_clk_out1_1),
        .ulp_m_aclk_pcie_00(ii_level0_wire_ulp_m_aclk_pcie_00),
        .ulp_m_aresetn_ctrl_00(ii_level0_wire_ulp_m_aresetn_ctrl_00),
        .ulp_m_aresetn_kernel_ref_clk_00(NLW_ii_level0_wire_ulp_m_aresetn_kernel_ref_clk_00_UNCONNECTED[0]),
        .ulp_m_aresetn_pcie_00(NLW_ii_level0_wire_ulp_m_aresetn_pcie_00_UNCONNECTED[0]),
        .ulp_m_data_clkwiz_kernel_clk_out1_locked_00(ii_level0_wire_ulp_m_data_clkwiz_kernel_clk_out1_locked_00),
        .ulp_m_data_dout_dna_00(NLW_ii_level0_wire_ulp_m_data_dout_dna_00_UNCONNECTED[0]),
        .ulp_m_data_perstn_out_00(ii_level0_wire_ulp_m_data_perstn_out_00),
        .ulp_m_data_slice_pr_reset_to_ulp_00(ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00),
        .ulp_s_data_dna_from_ulp_00({1'b0,1'b0,1'b0}),
        .ulp_s_data_memory_calib_complete_00(aux_reset_in_1),
        .ulp_s_irq_cu_00({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout,1'b0}));
  (* CHECK_LICENSE_TYPE = "ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0,xlconcat_v2_1_4_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2021.1" *) 
  ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0 ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat
       (.In0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout,1'b0}),
        .In1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .In2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .In3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout({NLW_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout_UNCONNECTED[127:2],ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout,NLW_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout_UNCONNECTED[0]}));
  (* CHECK_LICENSE_TYPE = "ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0,xlconcat_v2_1_4_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2021.1" *) 
  ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0 ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0
       (.In0(1'b0),
        .In1(krnl_ro_rtl_1_interrupt),
        .In10(1'b0),
        .In11(1'b0),
        .In12(1'b0),
        .In13(1'b0),
        .In14(1'b0),
        .In15(1'b0),
        .In16(1'b0),
        .In17(1'b0),
        .In18(1'b0),
        .In19(1'b0),
        .In2(1'b0),
        .In20(1'b0),
        .In21(1'b0),
        .In22(1'b0),
        .In23(1'b0),
        .In24(1'b0),
        .In25(1'b0),
        .In26(1'b0),
        .In27(1'b0),
        .In28(1'b0),
        .In29(1'b0),
        .In3(1'b0),
        .In30(1'b0),
        .In31(1'b0),
        .In4(1'b0),
        .In5(1'b0),
        .In6(1'b0),
        .In7(1'b0),
        .In8(1'b0),
        .In9(1'b0),
        .dout({NLW_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout_UNCONNECTED[31:2],ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout,NLW_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout_UNCONNECTED[0]}));
  (* X_CORE_INFO = "krnl_ro_rtl_int,Vivado 2021.1" *) 
  ulp_krnl_ro_rtl_1_0 krnl_ro_rtl_1
       (.ap_clk(blp_s_aclk_kernel_ref_clk_00),
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
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2021.1" *) 
  ulp_psreset_ddrmem_n_1_0 psreset_ddrmem_n_1
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psreset_ddrmem_n_1_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(ddrmem_1_c0_ddr4_ui_clk_sync_rst),
        .interconnect_aresetn(psreset_ddrmem_n_1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_ddrmem_n_1_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_ddrmem_n_1_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_ddrmem_n_1_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(M00_ACLK_1));
  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_regslice_periph_null_0 regslice_periph_null
       (.aclk(ii_level0_wire_ulp_m_aclk_pcie_00),
        .aresetn(slr1_psreset_gate_pr_data_interconnect_aresetn),
        .m_axi_araddr(NLW_regslice_periph_null_m_axi_araddr_UNCONNECTED[39:0]),
        .m_axi_arburst(NLW_regslice_periph_null_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_regslice_periph_null_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_regslice_periph_null_m_axi_arid_UNCONNECTED[1:0]),
        .m_axi_arlen(NLW_regslice_periph_null_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_regslice_periph_null_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_regslice_periph_null_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_regslice_periph_null_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_regslice_periph_null_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_regslice_periph_null_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(NLW_regslice_periph_null_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_regslice_periph_null_m_axi_awaddr_UNCONNECTED[39:0]),
        .m_axi_awburst(NLW_regslice_periph_null_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_regslice_periph_null_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_regslice_periph_null_m_axi_awid_UNCONNECTED[1:0]),
        .m_axi_awlen(NLW_regslice_periph_null_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_regslice_periph_null_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_regslice_periph_null_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_regslice_periph_null_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_regslice_periph_null_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_regslice_periph_null_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awvalid(NLW_regslice_periph_null_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0}),
        .m_axi_bready(NLW_regslice_periph_null_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_regslice_periph_null_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_regslice_periph_null_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wlast(NLW_regslice_periph_null_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_regslice_periph_null_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wvalid(NLW_regslice_periph_null_m_axi_wvalid_UNCONNECTED),
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
  ulp_slr1_imp_1S5AAMB slr1
       (.Dout(xlslice_0_Dout),
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
        .blp_s_aclk_kernel_ref_clk_00(blp_s_aclk_kernel_ref_clk_00),
        .c0_ddr4_ui_clk(M00_ACLK_1),
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
        .regslice_data_static_M_AXI_slr2_wvalid(ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WVALID));
  (* X_CORE_INFO = "bd_9997,Vivado 2021.1" *) 
  ulp_user_debug_bridge_0 user_debug_bridge
       (.S_AXI_araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .S_AXI_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .S_AXI_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .S_AXI_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .S_AXI_awaddr(axi_protocol_convert_0_M_AXI_AWADDR),
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
  (* CHECK_LICENSE_TYPE = "ulp_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.1" *) 
  ulp_xlslice_0_0 xlslice_0
       (.Din({1'b0,ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00[0]}),
        .Dout(xlslice_0_Dout));
  (* CHECK_LICENSE_TYPE = "ulp_xlslice_1_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.1" *) 
  ulp_xlslice_1_0 xlslice_1
       (.Din({ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00[1],1'b0}),
        .Dout(ii_level0_wire_ulp_m_data_clkwiz_sysclks_clk_out2_locked_00));
  (* CHECK_LICENSE_TYPE = "ulp_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.1" *) 
  ulp_xlslice_2_0 xlslice_2
       (.Din({1'b0,1'b0,ii_level0_wire_ulp_m_data_perstn_out_00[0]}),
        .Dout(ii_level0_wire_ulp_m_data_pcie_user_link_up_00));
  (* CHECK_LICENSE_TYPE = "ulp_xlslice_3_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.1" *) 
  ulp_xlslice_3_0 xlslice_3
       (.Din({1'b0,ii_level0_wire_ulp_m_data_perstn_out_00[1],1'b0}),
        .Dout(ii_level0_wire_ulp_m_data_clkwiz_kernel2_clk_out1_locked_00));
  (* CHECK_LICENSE_TYPE = "ulp_xlslice_4_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.1" *) 
  ulp_xlslice_4_0 xlslice_4
       (.Din({ii_level0_wire_ulp_m_data_perstn_out_00[2],1'b0,1'b0}),
        .Dout(xlslice_4_Dout));
endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1" *) 
module ulp_auto_cc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [25:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [25:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [25:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [25:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1" *) 
module ulp_auto_cc_1
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [6:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [6:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [6:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [6:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1" *) 
module ulp_auto_cc_2
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [5:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [5:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [5:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [5:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [5:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [5:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [5:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [5:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_auto_rs_w_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_dwidth_converter_v2_1_24_top,Vivado 2021.1" *) 
module ulp_auto_us_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_dwidth_converter_v2_1_24_top,Vivado 2021.1" *) 
module ulp_auto_us_cc_df_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [0:0]s_axi_awid;
  input [63:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [63:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [63:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [63:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_bram_ctrl,Vivado 2021.1" *) 
module ulp_axi_bram_ctrl_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [5:0]s_axi_awid;
  input [14:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [5:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [5:0]s_axi_arid;
  input [14:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [5:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [63:0]bram_we_a;
  output [14:0]bram_addr_a;
  output [511:0]bram_wrdata_a;
  input [511:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [63:0]bram_we_b;
  output [14:0]bram_addr_b;
  output [511:0]bram_wrdata_b;
  input [511:0]bram_rddata_b;


endmodule

(* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
module ulp_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  input clka;
  input rsta;
  input ena;
  input [63:0]wea;
  input [31:0]addra;
  input [511:0]dina;
  output [511:0]douta;
  input clkb;
  input rstb;
  input enb;
  input [63:0]web;
  input [31:0]addrb;
  input [511:0]dinb;
  output [511:0]doutb;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1" *) 
module ulp_axi_cdc_data_static1_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1" *) 
module ulp_axi_cdc_data_static_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_gpio,Vivado 2021.1" *) 
module ulp_axi_gpio_null_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [31:0]gpio_io_i;
  output [31:0]gpio_io_o;
  output [31:0]gpio_io_t;


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

  wire ACLK;
  wire [63:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [0:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [63:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [0:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire [0:0]M00_AXI_bid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire [0:0]M00_AXI_rid;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [38:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [38:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire S01_ACLK;
  wire S01_ARESETN;
  wire [63:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [0:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [1:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [3:0]S01_AXI_arregion;
  wire [2:0]S01_AXI_arsize;
  wire S01_AXI_arvalid;
  wire [63:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [0:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [1:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [3:0]S01_AXI_awregion;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire [0:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [31:0]S01_AXI_rdata;
  wire [0:0]S01_AXI_rid;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [31:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [3:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [38:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [38:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [63:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [63:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire s01_couplers_to_xbar_BVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire s01_couplers_to_xbar_RVALID;
  wire [511:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire s01_couplers_to_xbar_WREADY;
  wire [63:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [1:0]NLW_xbar_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_xbar_s_axi_rid_UNCONNECTED;

  ulp_s00_couplers_imp_1Y0QJAO s00_couplers
       (.ACLK(ACLK),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .S01_ARESETN(S01_ARESETN),
        .m_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .m_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .m_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .m_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .m_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .m_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .m_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .m_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .m_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .m_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .m_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .m_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .m_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .m_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .m_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .m_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .m_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .m_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .m_axi_bready(s00_couplers_to_xbar_BREADY),
        .m_axi_rready(s00_couplers_to_xbar_RREADY),
        .m_axi_wdata(s00_couplers_to_xbar_WDATA),
        .m_axi_wlast(s00_couplers_to_xbar_WLAST),
        .m_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .m_axi_wvalid(s00_couplers_to_xbar_WVALID),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wready(s00_couplers_to_xbar_WREADY));
  ulp_s01_couplers_imp_9DN451 s01_couplers
       (.ACLK(ACLK),
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
        .S01_ACLK(S01_ACLK),
        .S01_ARESETN(S01_ARESETN),
        .S01_AXI_araddr(S01_AXI_araddr),
        .S01_AXI_arburst(S01_AXI_arburst),
        .S01_AXI_arcache(S01_AXI_arcache),
        .S01_AXI_arid(S01_AXI_arid),
        .S01_AXI_arlen(S01_AXI_arlen),
        .S01_AXI_arlock(S01_AXI_arlock[0]),
        .S01_AXI_arprot(S01_AXI_arprot),
        .S01_AXI_arqos(S01_AXI_arqos),
        .S01_AXI_arready(S01_AXI_arready),
        .S01_AXI_arregion(S01_AXI_arregion),
        .S01_AXI_arsize(S01_AXI_arsize),
        .S01_AXI_arvalid(S01_AXI_arvalid),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awid(S01_AXI_awid),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awlock(S01_AXI_awlock[0]),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awqos(S01_AXI_awqos),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awregion(S01_AXI_awregion),
        .S01_AXI_awsize(S01_AXI_awsize),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bid(S01_AXI_bid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_rdata(S01_AXI_rdata),
        .S01_AXI_rid(S01_AXI_rid),
        .S01_AXI_rlast(S01_AXI_rlast),
        .S01_AXI_rready(S01_AXI_rready),
        .S01_AXI_rresp(S01_AXI_rresp),
        .S01_AXI_rvalid(S01_AXI_rvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid));
  (* X_CORE_INFO = "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1" *) 
  ulp_xbar_4 xbar
       (.aclk(ACLK),
        .aresetn(S01_ARESETN),
        .m_axi_araddr(M00_AXI_araddr),
        .m_axi_arburst(M00_AXI_arburst),
        .m_axi_arcache(M00_AXI_arcache),
        .m_axi_arid(M00_AXI_arid),
        .m_axi_arlen(M00_AXI_arlen),
        .m_axi_arlock(M00_AXI_arlock),
        .m_axi_arprot(M00_AXI_arprot),
        .m_axi_arqos(M00_AXI_arqos),
        .m_axi_arready(M00_AXI_arready),
        .m_axi_arregion(M00_AXI_arregion),
        .m_axi_arsize(M00_AXI_arsize),
        .m_axi_arvalid(M00_AXI_arvalid),
        .m_axi_awaddr(M00_AXI_awaddr),
        .m_axi_awburst(M00_AXI_awburst),
        .m_axi_awcache(M00_AXI_awcache),
        .m_axi_awid(M00_AXI_awid),
        .m_axi_awlen(M00_AXI_awlen),
        .m_axi_awlock(M00_AXI_awlock),
        .m_axi_awprot(M00_AXI_awprot),
        .m_axi_awqos(M00_AXI_awqos),
        .m_axi_awready(M00_AXI_awready),
        .m_axi_awregion(M00_AXI_awregion),
        .m_axi_awsize(M00_AXI_awsize),
        .m_axi_awvalid(M00_AXI_awvalid),
        .m_axi_bid(M00_AXI_bid),
        .m_axi_bready(M00_AXI_bready),
        .m_axi_bresp(M00_AXI_bresp),
        .m_axi_bvalid(M00_AXI_bvalid),
        .m_axi_rdata(M00_AXI_rdata),
        .m_axi_rid(M00_AXI_rid),
        .m_axi_rlast(M00_AXI_rlast),
        .m_axi_rready(M00_AXI_rready),
        .m_axi_rresp(M00_AXI_rresp),
        .m_axi_rvalid(M00_AXI_rvalid),
        .m_axi_wdata(M00_AXI_wdata),
        .m_axi_wlast(M00_AXI_wlast),
        .m_axi_wready(M00_AXI_wready),
        .m_axi_wstrb(M00_AXI_wstrb),
        .m_axi_wvalid(M00_AXI_wvalid),
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
        .s_axi_bid(NLW_xbar_s_axi_bid_UNCONNECTED[1:0]),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid(NLW_xbar_s_axi_rid_UNCONNECTED[1:0]),
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

  wire \<const0> ;
  wire ACLK;
  wire ARESETN;
  wire M00_ACLK;
  wire M00_ARESETN;
  wire [25:0]M00_AXI_araddr;
  wire [2:0]M00_AXI_arprot;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [25:0]M00_AXI_awaddr;
  wire [2:0]M00_AXI_awprot;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [11:0]\^M01_AXI_araddr ;
  wire [0:0]M01_AXI_arready;
  wire [0:0]M01_AXI_arvalid;
  wire [11:0]\^M01_AXI_awaddr ;
  wire [0:0]M01_AXI_awready;
  wire [0:0]M01_AXI_awvalid;
  wire [0:0]M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire [0:0]M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire [0:0]M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire [0:0]M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire [0:0]M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire [0:0]M01_AXI_wvalid;
  wire [24:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire [0:0]S00_AXI_arready;
  wire [0:0]S00_AXI_arvalid;
  wire [24:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire [0:0]S00_AXI_awready;
  wire [0:0]S00_AXI_awvalid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire xbar_n_175;
  wire xbar_n_176;
  wire xbar_n_177;
  wire xbar_n_178;
  wire xbar_n_179;
  wire xbar_n_180;
  wire xbar_n_181;
  wire xbar_n_182;
  wire xbar_n_183;
  wire xbar_n_184;
  wire xbar_n_185;
  wire xbar_n_186;
  wire xbar_n_187;
  wire xbar_n_41;
  wire xbar_n_42;
  wire xbar_n_43;
  wire xbar_n_44;
  wire xbar_n_45;
  wire xbar_n_46;
  wire xbar_n_47;
  wire xbar_n_48;
  wire xbar_n_49;
  wire xbar_n_50;
  wire xbar_n_51;
  wire xbar_n_52;
  wire xbar_n_53;
  wire [24:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire xbar_to_m00_couplers_ARVALID;
  wire [24:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire xbar_to_m00_couplers_AWVALID;
  wire xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire xbar_to_m00_couplers_WVALID;
  wire [5:3]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [5:3]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M01_AXI_araddr[24] = \<const0> ;
  assign M01_AXI_araddr[23] = \<const0> ;
  assign M01_AXI_araddr[22] = \<const0> ;
  assign M01_AXI_araddr[21] = \<const0> ;
  assign M01_AXI_araddr[20] = \<const0> ;
  assign M01_AXI_araddr[19] = \<const0> ;
  assign M01_AXI_araddr[18] = \<const0> ;
  assign M01_AXI_araddr[17] = \<const0> ;
  assign M01_AXI_araddr[16] = \<const0> ;
  assign M01_AXI_araddr[15] = \<const0> ;
  assign M01_AXI_araddr[14] = \<const0> ;
  assign M01_AXI_araddr[13] = \<const0> ;
  assign M01_AXI_araddr[12] = \<const0> ;
  assign M01_AXI_araddr[11:0] = \^M01_AXI_araddr [11:0];
  assign M01_AXI_awaddr[24] = \<const0> ;
  assign M01_AXI_awaddr[23] = \<const0> ;
  assign M01_AXI_awaddr[22] = \<const0> ;
  assign M01_AXI_awaddr[21] = \<const0> ;
  assign M01_AXI_awaddr[20] = \<const0> ;
  assign M01_AXI_awaddr[19] = \<const0> ;
  assign M01_AXI_awaddr[18] = \<const0> ;
  assign M01_AXI_awaddr[17] = \<const0> ;
  assign M01_AXI_awaddr[16] = \<const0> ;
  assign M01_AXI_awaddr[15] = \<const0> ;
  assign M01_AXI_awaddr[14] = \<const0> ;
  assign M01_AXI_awaddr[13] = \<const0> ;
  assign M01_AXI_awaddr[12] = \<const0> ;
  assign M01_AXI_awaddr[11:0] = \^M01_AXI_awaddr [11:0];
  GND GND
       (.G(\<const0> ));
  ulp_m00_couplers_imp_1T9TXXO m00_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M00_ACLK(M00_ACLK),
        .M00_ARESETN(M00_ARESETN),
        .M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_arready(xbar_to_m00_couplers_ARREADY),
        .s_axi_awready(xbar_to_m00_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m00_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .s_axi_rdata(xbar_to_m00_couplers_RDATA),
        .s_axi_rresp(xbar_to_m00_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .s_axi_wready(xbar_to_m00_couplers_WREADY));
  (* X_CORE_INFO = "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1" *) 
  ulp_xbar_3 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr({xbar_n_175,xbar_n_176,xbar_n_177,xbar_n_178,xbar_n_179,xbar_n_180,xbar_n_181,xbar_n_182,xbar_n_183,xbar_n_184,xbar_n_185,xbar_n_186,xbar_n_187,\^M01_AXI_araddr ,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({NLW_xbar_m_axi_arprot_UNCONNECTED[5:3],xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({M01_AXI_arready,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({M01_AXI_arvalid,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_n_41,xbar_n_42,xbar_n_43,xbar_n_44,xbar_n_45,xbar_n_46,xbar_n_47,xbar_n_48,xbar_n_49,xbar_n_50,xbar_n_51,xbar_n_52,xbar_n_53,\^M01_AXI_awaddr ,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({NLW_xbar_m_axi_awprot_UNCONNECTED[5:3],xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({M01_AXI_awready,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({M01_AXI_awvalid,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({M01_AXI_bready,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({M01_AXI_bresp,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({M01_AXI_bvalid,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({M01_AXI_rdata,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({M01_AXI_rready,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({M01_AXI_rresp,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({M01_AXI_rvalid,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({M01_AXI_wdata,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({M01_AXI_wready,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({M01_AXI_wstrb,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({M01_AXI_wvalid,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
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

  wire [38:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [38:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [38:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [38:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;

  ulp_s00_couplers_imp_U66VNK s00_couplers
       (.M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arregion(M00_AXI_arregion),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awburst(M00_AXI_awburst),
        .M00_AXI_awcache(M00_AXI_awcache),
        .M00_AXI_awlen(M00_AXI_awlen),
        .M00_AXI_awlock(M00_AXI_awlock),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awqos(M00_AXI_awqos),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awregion(M00_AXI_awregion),
        .M00_AXI_awsize(M00_AXI_awsize),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wlast(M00_AXI_wlast),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .S00_ACLK(S00_ACLK),
        .S00_ARESETN(S00_ARESETN),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid));
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

  wire \<const0> ;
  wire ACLK;
  wire ARESETN;
  wire M00_ACLK;
  wire M00_ARESETN;
  wire [31:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [5:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [31:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [5:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire [5:0]M00_AXI_bid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire [5:0]M00_AXI_rid;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [14:0]\^M01_AXI_araddr ;
  wire [1:0]M01_AXI_arburst;
  wire [3:0]M01_AXI_arcache;
  wire [5:0]M01_AXI_arid;
  wire [7:0]M01_AXI_arlen;
  wire M01_AXI_arlock;
  wire [2:0]M01_AXI_arprot;
  wire M01_AXI_arready;
  wire [2:0]M01_AXI_arsize;
  wire M01_AXI_arvalid;
  wire [14:0]\^M01_AXI_awaddr ;
  wire [1:0]M01_AXI_awburst;
  wire [3:0]M01_AXI_awcache;
  wire [5:0]M01_AXI_awid;
  wire [7:0]M01_AXI_awlen;
  wire M01_AXI_awlock;
  wire [2:0]M01_AXI_awprot;
  wire M01_AXI_awready;
  wire [2:0]M01_AXI_awsize;
  wire M01_AXI_awvalid;
  wire [5:0]M01_AXI_bid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [511:0]M01_AXI_rdata;
  wire [5:0]M01_AXI_rid;
  wire M01_AXI_rlast;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [511:0]M01_AXI_wdata;
  wire M01_AXI_wlast;
  wire M01_AXI_wready;
  wire [63:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire [63:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [0:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [63:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [0:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire [0:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [38:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [3:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [3:0]S01_AXI_arregion;
  wire [2:0]S01_AXI_arsize;
  wire S01_AXI_arvalid;
  wire [38:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [3:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [3:0]S01_AXI_awregion;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire [3:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [511:0]S01_AXI_rdata;
  wire [3:0]S01_AXI_rid;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [511:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [63:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [38:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire S02_AXI_arready;
  wire [3:0]S02_AXI_arregion;
  wire [2:0]S02_AXI_arsize;
  wire S02_AXI_arvalid;
  wire [38:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire S02_AXI_awready;
  wire [3:0]S02_AXI_awregion;
  wire [2:0]S02_AXI_awsize;
  wire S02_AXI_awvalid;
  wire S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire S02_AXI_bvalid;
  wire [511:0]S02_AXI_rdata;
  wire S02_AXI_rlast;
  wire S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire S02_AXI_rvalid;
  wire [511:0]S02_AXI_wdata;
  wire S02_AXI_wlast;
  wire S02_AXI_wready;
  wire [63:0]S02_AXI_wstrb;
  wire S02_AXI_wvalid;
  wire [38:0]S03_AXI_araddr;
  wire [1:0]S03_AXI_arburst;
  wire [3:0]S03_AXI_arcache;
  wire [3:0]S03_AXI_arid;
  wire [7:0]S03_AXI_arlen;
  wire [0:0]S03_AXI_arlock;
  wire [2:0]S03_AXI_arprot;
  wire [3:0]S03_AXI_arqos;
  wire S03_AXI_arready;
  wire [2:0]S03_AXI_arsize;
  wire S03_AXI_arvalid;
  wire [38:0]S03_AXI_awaddr;
  wire [1:0]S03_AXI_awburst;
  wire [3:0]S03_AXI_awcache;
  wire [3:0]S03_AXI_awid;
  wire [7:0]S03_AXI_awlen;
  wire [0:0]S03_AXI_awlock;
  wire [2:0]S03_AXI_awprot;
  wire [3:0]S03_AXI_awqos;
  wire S03_AXI_awready;
  wire [2:0]S03_AXI_awsize;
  wire S03_AXI_awvalid;
  wire [3:0]S03_AXI_bid;
  wire S03_AXI_bready;
  wire [1:0]S03_AXI_bresp;
  wire S03_AXI_bvalid;
  wire [127:0]S03_AXI_rdata;
  wire [3:0]S03_AXI_rid;
  wire S03_AXI_rlast;
  wire S03_AXI_rready;
  wire [1:0]S03_AXI_rresp;
  wire S03_AXI_rvalid;
  wire [127:0]S03_AXI_wdata;
  wire S03_AXI_wlast;
  wire S03_AXI_wready;
  wire [15:0]S03_AXI_wstrb;
  wire S03_AXI_wvalid;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [5:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire s00_couplers_to_xbar_BVALID;
  wire [511:0]s00_couplers_to_xbar_RDATA;
  wire [5:0]s00_couplers_to_xbar_RID;
  wire s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire s00_couplers_to_xbar_RVALID;
  wire [511:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire s00_couplers_to_xbar_WREADY;
  wire [63:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [38:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [3:0]s01_couplers_to_xbar_ARID;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [38:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [3:0]s01_couplers_to_xbar_AWID;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire [11:6]s01_couplers_to_xbar_BID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire s01_couplers_to_xbar_BVALID;
  wire [1023:512]s01_couplers_to_xbar_RDATA;
  wire [11:6]s01_couplers_to_xbar_RID;
  wire s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire s01_couplers_to_xbar_RVALID;
  wire [511:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire s01_couplers_to_xbar_WREADY;
  wire [63:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [38:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [38:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire s02_couplers_to_xbar_BVALID;
  wire [1535:1024]s02_couplers_to_xbar_RDATA;
  wire s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire s02_couplers_to_xbar_RVALID;
  wire [511:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire s02_couplers_to_xbar_WREADY;
  wire [63:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [38:0]s03_couplers_to_xbar_ARADDR;
  wire [1:0]s03_couplers_to_xbar_ARBURST;
  wire [3:0]s03_couplers_to_xbar_ARCACHE;
  wire [7:0]s03_couplers_to_xbar_ARLEN;
  wire s03_couplers_to_xbar_ARLOCK;
  wire [2:0]s03_couplers_to_xbar_ARPROT;
  wire [3:0]s03_couplers_to_xbar_ARQOS;
  wire s03_couplers_to_xbar_ARREADY;
  wire [2:0]s03_couplers_to_xbar_ARSIZE;
  wire s03_couplers_to_xbar_ARVALID;
  wire [38:0]s03_couplers_to_xbar_AWADDR;
  wire [1:0]s03_couplers_to_xbar_AWBURST;
  wire [3:0]s03_couplers_to_xbar_AWCACHE;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire s03_couplers_to_xbar_AWLOCK;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:0]s03_couplers_to_xbar_AWQOS;
  wire s03_couplers_to_xbar_AWREADY;
  wire [2:0]s03_couplers_to_xbar_AWSIZE;
  wire s03_couplers_to_xbar_AWVALID;
  wire s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire s03_couplers_to_xbar_BVALID;
  wire [2047:1536]s03_couplers_to_xbar_RDATA;
  wire s03_couplers_to_xbar_RLAST;
  wire s03_couplers_to_xbar_RREADY;
  wire [7:6]s03_couplers_to_xbar_RRESP;
  wire s03_couplers_to_xbar_RVALID;
  wire [511:0]s03_couplers_to_xbar_WDATA;
  wire s03_couplers_to_xbar_WLAST;
  wire s03_couplers_to_xbar_WREADY;
  wire [63:0]s03_couplers_to_xbar_WSTRB;
  wire s03_couplers_to_xbar_WVALID;
  wire [38:0]s03_mmu_M_AXI_ARADDR;
  wire [1:0]s03_mmu_M_AXI_ARBURST;
  wire [3:0]s03_mmu_M_AXI_ARCACHE;
  wire [3:0]s03_mmu_M_AXI_ARID;
  wire [7:0]s03_mmu_M_AXI_ARLEN;
  wire s03_mmu_M_AXI_ARLOCK;
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
  wire s03_mmu_M_AXI_AWLOCK;
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
  wire xbar_n_2148;
  wire xbar_n_2149;
  wire xbar_n_2150;
  wire xbar_n_2151;
  wire xbar_n_2152;
  wire xbar_n_2153;
  wire xbar_n_2154;
  wire xbar_n_2155;
  wire xbar_n_2156;
  wire xbar_n_2157;
  wire xbar_n_2158;
  wire xbar_n_2159;
  wire xbar_n_2160;
  wire xbar_n_2161;
  wire xbar_n_2162;
  wire xbar_n_2163;
  wire xbar_n_2164;
  wire xbar_n_2165;
  wire xbar_n_2166;
  wire xbar_n_2167;
  wire xbar_n_2168;
  wire xbar_n_2169;
  wire xbar_n_2170;
  wire xbar_n_2171;
  wire xbar_n_2172;
  wire xbar_n_2173;
  wire xbar_n_2174;
  wire xbar_n_2175;
  wire xbar_n_2176;
  wire xbar_n_2177;
  wire xbar_n_2178;
  wire xbar_n_2179;
  wire xbar_n_2180;
  wire xbar_n_2181;
  wire xbar_n_2182;
  wire xbar_n_2183;
  wire xbar_n_2184;
  wire xbar_n_2185;
  wire xbar_n_2186;
  wire xbar_n_2187;
  wire xbar_n_2188;
  wire xbar_n_2189;
  wire xbar_n_2190;
  wire xbar_n_2191;
  wire xbar_n_2192;
  wire xbar_n_2193;
  wire xbar_n_2194;
  wire xbar_n_2195;
  wire xbar_n_2196;
  wire xbar_n_3506;
  wire xbar_n_3507;
  wire xbar_n_3508;
  wire xbar_n_3509;
  wire xbar_n_3510;
  wire xbar_n_3511;
  wire xbar_n_3512;
  wire xbar_n_3513;
  wire xbar_n_3514;
  wire xbar_n_3515;
  wire xbar_n_3516;
  wire xbar_n_3517;
  wire xbar_n_3518;
  wire xbar_n_3519;
  wire xbar_n_3520;
  wire xbar_n_3521;
  wire xbar_n_3522;
  wire xbar_n_3523;
  wire xbar_n_3524;
  wire xbar_n_3525;
  wire xbar_n_3526;
  wire xbar_n_3527;
  wire xbar_n_3528;
  wire xbar_n_3529;
  wire xbar_n_3530;
  wire xbar_n_3531;
  wire xbar_n_3532;
  wire xbar_n_3533;
  wire xbar_n_3534;
  wire xbar_n_3535;
  wire xbar_n_3536;
  wire xbar_n_3537;
  wire xbar_n_3538;
  wire xbar_n_3539;
  wire xbar_n_3540;
  wire xbar_n_3541;
  wire xbar_n_3542;
  wire xbar_n_3543;
  wire xbar_n_3544;
  wire xbar_n_3545;
  wire xbar_n_3546;
  wire xbar_n_3547;
  wire xbar_n_3548;
  wire xbar_n_3549;
  wire xbar_n_3550;
  wire xbar_n_3551;
  wire xbar_n_3552;
  wire xbar_n_3553;
  wire xbar_n_3554;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [5:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [5:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire xbar_to_m00_couplers_AWVALID;
  wire [5:0]xbar_to_m00_couplers_BID;
  wire xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [511:0]xbar_to_m00_couplers_RDATA;
  wire [5:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [511:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [63:0]xbar_to_m00_couplers_WSTRB;
  wire xbar_to_m00_couplers_WVALID;
  wire [7:4]NLW_xbar_m_axi_arqos_UNCONNECTED;
  wire [7:4]NLW_xbar_m_axi_arregion_UNCONNECTED;
  wire [7:4]NLW_xbar_m_axi_awqos_UNCONNECTED;
  wire [7:4]NLW_xbar_m_axi_awregion_UNCONNECTED;
  wire [23:12]NLW_xbar_s_axi_bid_UNCONNECTED;
  wire [23:12]NLW_xbar_s_axi_rid_UNCONNECTED;

  assign M01_AXI_araddr[63] = \<const0> ;
  assign M01_AXI_araddr[62] = \<const0> ;
  assign M01_AXI_araddr[61] = \<const0> ;
  assign M01_AXI_araddr[60] = \<const0> ;
  assign M01_AXI_araddr[59] = \<const0> ;
  assign M01_AXI_araddr[58] = \<const0> ;
  assign M01_AXI_araddr[57] = \<const0> ;
  assign M01_AXI_araddr[56] = \<const0> ;
  assign M01_AXI_araddr[55] = \<const0> ;
  assign M01_AXI_araddr[54] = \<const0> ;
  assign M01_AXI_araddr[53] = \<const0> ;
  assign M01_AXI_araddr[52] = \<const0> ;
  assign M01_AXI_araddr[51] = \<const0> ;
  assign M01_AXI_araddr[50] = \<const0> ;
  assign M01_AXI_araddr[49] = \<const0> ;
  assign M01_AXI_araddr[48] = \<const0> ;
  assign M01_AXI_araddr[47] = \<const0> ;
  assign M01_AXI_araddr[46] = \<const0> ;
  assign M01_AXI_araddr[45] = \<const0> ;
  assign M01_AXI_araddr[44] = \<const0> ;
  assign M01_AXI_araddr[43] = \<const0> ;
  assign M01_AXI_araddr[42] = \<const0> ;
  assign M01_AXI_araddr[41] = \<const0> ;
  assign M01_AXI_araddr[40] = \<const0> ;
  assign M01_AXI_araddr[39] = \<const0> ;
  assign M01_AXI_araddr[38] = \<const0> ;
  assign M01_AXI_araddr[37] = \<const0> ;
  assign M01_AXI_araddr[36] = \<const0> ;
  assign M01_AXI_araddr[35] = \<const0> ;
  assign M01_AXI_araddr[34] = \<const0> ;
  assign M01_AXI_araddr[33] = \<const0> ;
  assign M01_AXI_araddr[32] = \<const0> ;
  assign M01_AXI_araddr[31] = \<const0> ;
  assign M01_AXI_araddr[30] = \<const0> ;
  assign M01_AXI_araddr[29] = \<const0> ;
  assign M01_AXI_araddr[28] = \<const0> ;
  assign M01_AXI_araddr[27] = \<const0> ;
  assign M01_AXI_araddr[26] = \<const0> ;
  assign M01_AXI_araddr[25] = \<const0> ;
  assign M01_AXI_araddr[24] = \<const0> ;
  assign M01_AXI_araddr[23] = \<const0> ;
  assign M01_AXI_araddr[22] = \<const0> ;
  assign M01_AXI_araddr[21] = \<const0> ;
  assign M01_AXI_araddr[20] = \<const0> ;
  assign M01_AXI_araddr[19] = \<const0> ;
  assign M01_AXI_araddr[18] = \<const0> ;
  assign M01_AXI_araddr[17] = \<const0> ;
  assign M01_AXI_araddr[16] = \<const0> ;
  assign M01_AXI_araddr[15] = \<const0> ;
  assign M01_AXI_araddr[14:0] = \^M01_AXI_araddr [14:0];
  assign M01_AXI_awaddr[63] = \<const0> ;
  assign M01_AXI_awaddr[62] = \<const0> ;
  assign M01_AXI_awaddr[61] = \<const0> ;
  assign M01_AXI_awaddr[60] = \<const0> ;
  assign M01_AXI_awaddr[59] = \<const0> ;
  assign M01_AXI_awaddr[58] = \<const0> ;
  assign M01_AXI_awaddr[57] = \<const0> ;
  assign M01_AXI_awaddr[56] = \<const0> ;
  assign M01_AXI_awaddr[55] = \<const0> ;
  assign M01_AXI_awaddr[54] = \<const0> ;
  assign M01_AXI_awaddr[53] = \<const0> ;
  assign M01_AXI_awaddr[52] = \<const0> ;
  assign M01_AXI_awaddr[51] = \<const0> ;
  assign M01_AXI_awaddr[50] = \<const0> ;
  assign M01_AXI_awaddr[49] = \<const0> ;
  assign M01_AXI_awaddr[48] = \<const0> ;
  assign M01_AXI_awaddr[47] = \<const0> ;
  assign M01_AXI_awaddr[46] = \<const0> ;
  assign M01_AXI_awaddr[45] = \<const0> ;
  assign M01_AXI_awaddr[44] = \<const0> ;
  assign M01_AXI_awaddr[43] = \<const0> ;
  assign M01_AXI_awaddr[42] = \<const0> ;
  assign M01_AXI_awaddr[41] = \<const0> ;
  assign M01_AXI_awaddr[40] = \<const0> ;
  assign M01_AXI_awaddr[39] = \<const0> ;
  assign M01_AXI_awaddr[38] = \<const0> ;
  assign M01_AXI_awaddr[37] = \<const0> ;
  assign M01_AXI_awaddr[36] = \<const0> ;
  assign M01_AXI_awaddr[35] = \<const0> ;
  assign M01_AXI_awaddr[34] = \<const0> ;
  assign M01_AXI_awaddr[33] = \<const0> ;
  assign M01_AXI_awaddr[32] = \<const0> ;
  assign M01_AXI_awaddr[31] = \<const0> ;
  assign M01_AXI_awaddr[30] = \<const0> ;
  assign M01_AXI_awaddr[29] = \<const0> ;
  assign M01_AXI_awaddr[28] = \<const0> ;
  assign M01_AXI_awaddr[27] = \<const0> ;
  assign M01_AXI_awaddr[26] = \<const0> ;
  assign M01_AXI_awaddr[25] = \<const0> ;
  assign M01_AXI_awaddr[24] = \<const0> ;
  assign M01_AXI_awaddr[23] = \<const0> ;
  assign M01_AXI_awaddr[22] = \<const0> ;
  assign M01_AXI_awaddr[21] = \<const0> ;
  assign M01_AXI_awaddr[20] = \<const0> ;
  assign M01_AXI_awaddr[19] = \<const0> ;
  assign M01_AXI_awaddr[18] = \<const0> ;
  assign M01_AXI_awaddr[17] = \<const0> ;
  assign M01_AXI_awaddr[16] = \<const0> ;
  assign M01_AXI_awaddr[15] = \<const0> ;
  assign M01_AXI_awaddr[14:0] = \^M01_AXI_awaddr [14:0];
  GND GND
       (.G(\<const0> ));
  ulp_m00_couplers_imp_1MIVJUX m00_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M00_ACLK(M00_ACLK),
        .M00_ARESETN(M00_ARESETN),
        .M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arid(M00_AXI_arid),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awburst(M00_AXI_awburst),
        .M00_AXI_awcache(M00_AXI_awcache),
        .M00_AXI_awid(M00_AXI_awid),
        .M00_AXI_awlen(M00_AXI_awlen),
        .M00_AXI_awlock(M00_AXI_awlock),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awqos(M00_AXI_awqos),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awsize(M00_AXI_awsize),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bid(M00_AXI_bid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rid(M00_AXI_rid),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wlast(M00_AXI_wlast),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR[31:0]),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR[31:0]),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_arready(xbar_to_m00_couplers_ARREADY),
        .s_axi_awready(xbar_to_m00_couplers_AWREADY),
        .s_axi_bid(xbar_to_m00_couplers_BID),
        .s_axi_bresp(xbar_to_m00_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .s_axi_rdata(xbar_to_m00_couplers_RDATA),
        .s_axi_rid(xbar_to_m00_couplers_RID),
        .s_axi_rlast(xbar_to_m00_couplers_RLAST),
        .s_axi_rresp(xbar_to_m00_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .s_axi_wready(xbar_to_m00_couplers_WREADY));
  ulp_s00_couplers_imp_YEI3CJ s00_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid(S00_AXI_bid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid(S00_AXI_rid),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .m_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .m_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .m_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .m_axi_arid(s00_couplers_to_xbar_ARID),
        .m_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .m_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .m_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .m_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .m_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .m_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .m_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .m_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .m_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .m_axi_awid(s00_couplers_to_xbar_AWID),
        .m_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .m_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .m_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .m_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .m_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .m_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .m_axi_bready(s00_couplers_to_xbar_BREADY),
        .m_axi_rready(s00_couplers_to_xbar_RREADY),
        .m_axi_wdata(s00_couplers_to_xbar_WDATA),
        .m_axi_wlast(s00_couplers_to_xbar_WLAST),
        .m_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .m_axi_wvalid(s00_couplers_to_xbar_WVALID),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_bid(s00_couplers_to_xbar_BID[0]),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rid(s00_couplers_to_xbar_RID[0]),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wready(s00_couplers_to_xbar_WREADY));
  ulp_s01_couplers_imp_1A6BUUU s01_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .S01_AXI_araddr(S01_AXI_araddr),
        .S01_AXI_arburst(S01_AXI_arburst),
        .S01_AXI_arcache(S01_AXI_arcache),
        .S01_AXI_arid(S01_AXI_arid),
        .S01_AXI_arlen(S01_AXI_arlen),
        .S01_AXI_arlock(S01_AXI_arlock),
        .S01_AXI_arprot(S01_AXI_arprot),
        .S01_AXI_arqos(S01_AXI_arqos),
        .S01_AXI_arready(S01_AXI_arready),
        .S01_AXI_arregion(S01_AXI_arregion),
        .S01_AXI_arsize(S01_AXI_arsize),
        .S01_AXI_arvalid(S01_AXI_arvalid),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awid(S01_AXI_awid),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awlock(S01_AXI_awlock),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awqos(S01_AXI_awqos),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awregion(S01_AXI_awregion),
        .S01_AXI_awsize(S01_AXI_awsize),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bid(S01_AXI_bid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_rdata(S01_AXI_rdata),
        .S01_AXI_rid(S01_AXI_rid),
        .S01_AXI_rlast(S01_AXI_rlast),
        .S01_AXI_rready(S01_AXI_rready),
        .S01_AXI_rresp(S01_AXI_rresp),
        .S01_AXI_rvalid(S01_AXI_rvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid),
        .m_axi_araddr(s01_couplers_to_xbar_ARADDR),
        .m_axi_arburst(s01_couplers_to_xbar_ARBURST),
        .m_axi_arcache(s01_couplers_to_xbar_ARCACHE),
        .m_axi_arid(s01_couplers_to_xbar_ARID),
        .m_axi_arlen(s01_couplers_to_xbar_ARLEN),
        .m_axi_arlock(s01_couplers_to_xbar_ARLOCK),
        .m_axi_arprot(s01_couplers_to_xbar_ARPROT),
        .m_axi_arqos(s01_couplers_to_xbar_ARQOS),
        .m_axi_arsize(s01_couplers_to_xbar_ARSIZE),
        .m_axi_arvalid(s01_couplers_to_xbar_ARVALID),
        .m_axi_awaddr(s01_couplers_to_xbar_AWADDR),
        .m_axi_awburst(s01_couplers_to_xbar_AWBURST),
        .m_axi_awcache(s01_couplers_to_xbar_AWCACHE),
        .m_axi_awid(s01_couplers_to_xbar_AWID),
        .m_axi_awlen(s01_couplers_to_xbar_AWLEN),
        .m_axi_awlock(s01_couplers_to_xbar_AWLOCK),
        .m_axi_awprot(s01_couplers_to_xbar_AWPROT),
        .m_axi_awqos(s01_couplers_to_xbar_AWQOS),
        .m_axi_awsize(s01_couplers_to_xbar_AWSIZE),
        .m_axi_awvalid(s01_couplers_to_xbar_AWVALID),
        .m_axi_bready(s01_couplers_to_xbar_BREADY),
        .m_axi_rready(s01_couplers_to_xbar_RREADY),
        .m_axi_wdata(s01_couplers_to_xbar_WDATA),
        .m_axi_wlast(s01_couplers_to_xbar_WLAST),
        .m_axi_wstrb(s01_couplers_to_xbar_WSTRB),
        .m_axi_wvalid(s01_couplers_to_xbar_WVALID),
        .s_axi_arready(s01_couplers_to_xbar_ARREADY),
        .s_axi_awready(s01_couplers_to_xbar_AWREADY),
        .s_axi_bid(s01_couplers_to_xbar_BID[9:6]),
        .s_axi_bresp(s01_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s01_couplers_to_xbar_BVALID),
        .s_axi_rdata(s01_couplers_to_xbar_RDATA),
        .s_axi_rid(s01_couplers_to_xbar_RID[9:6]),
        .s_axi_rlast(s01_couplers_to_xbar_RLAST),
        .s_axi_rresp(s01_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s01_couplers_to_xbar_RVALID),
        .s_axi_wready(s01_couplers_to_xbar_WREADY));
  ulp_s02_couplers_imp_7O094O s02_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .S02_AXI_araddr(S02_AXI_araddr),
        .S02_AXI_arburst(S02_AXI_arburst),
        .S02_AXI_arcache(S02_AXI_arcache),
        .S02_AXI_arlen(S02_AXI_arlen),
        .S02_AXI_arlock(S02_AXI_arlock),
        .S02_AXI_arprot(S02_AXI_arprot),
        .S02_AXI_arqos(S02_AXI_arqos),
        .S02_AXI_arready(S02_AXI_arready),
        .S02_AXI_arregion(S02_AXI_arregion),
        .S02_AXI_arsize(S02_AXI_arsize),
        .S02_AXI_arvalid(S02_AXI_arvalid),
        .S02_AXI_awaddr(S02_AXI_awaddr),
        .S02_AXI_awburst(S02_AXI_awburst),
        .S02_AXI_awcache(S02_AXI_awcache),
        .S02_AXI_awlen(S02_AXI_awlen),
        .S02_AXI_awlock(S02_AXI_awlock),
        .S02_AXI_awprot(S02_AXI_awprot),
        .S02_AXI_awqos(S02_AXI_awqos),
        .S02_AXI_awready(S02_AXI_awready),
        .S02_AXI_awregion(S02_AXI_awregion),
        .S02_AXI_awsize(S02_AXI_awsize),
        .S02_AXI_awvalid(S02_AXI_awvalid),
        .S02_AXI_bready(S02_AXI_bready),
        .S02_AXI_bresp(S02_AXI_bresp),
        .S02_AXI_bvalid(S02_AXI_bvalid),
        .S02_AXI_rdata(S02_AXI_rdata),
        .S02_AXI_rlast(S02_AXI_rlast),
        .S02_AXI_rready(S02_AXI_rready),
        .S02_AXI_rresp(S02_AXI_rresp),
        .S02_AXI_rvalid(S02_AXI_rvalid),
        .S02_AXI_wdata(S02_AXI_wdata),
        .S02_AXI_wlast(S02_AXI_wlast),
        .S02_AXI_wready(S02_AXI_wready),
        .S02_AXI_wstrb(S02_AXI_wstrb),
        .S02_AXI_wvalid(S02_AXI_wvalid),
        .m_axi_araddr(s02_couplers_to_xbar_ARADDR),
        .m_axi_arburst(s02_couplers_to_xbar_ARBURST),
        .m_axi_arcache(s02_couplers_to_xbar_ARCACHE),
        .m_axi_arlen(s02_couplers_to_xbar_ARLEN),
        .m_axi_arlock(s02_couplers_to_xbar_ARLOCK),
        .m_axi_arprot(s02_couplers_to_xbar_ARPROT),
        .m_axi_arqos(s02_couplers_to_xbar_ARQOS),
        .m_axi_arsize(s02_couplers_to_xbar_ARSIZE),
        .m_axi_arvalid(s02_couplers_to_xbar_ARVALID),
        .m_axi_awaddr(s02_couplers_to_xbar_AWADDR),
        .m_axi_awburst(s02_couplers_to_xbar_AWBURST),
        .m_axi_awcache(s02_couplers_to_xbar_AWCACHE),
        .m_axi_awlen(s02_couplers_to_xbar_AWLEN),
        .m_axi_awlock(s02_couplers_to_xbar_AWLOCK),
        .m_axi_awprot(s02_couplers_to_xbar_AWPROT),
        .m_axi_awqos(s02_couplers_to_xbar_AWQOS),
        .m_axi_awsize(s02_couplers_to_xbar_AWSIZE),
        .m_axi_awvalid(s02_couplers_to_xbar_AWVALID),
        .m_axi_bready(s02_couplers_to_xbar_BREADY),
        .m_axi_rready(s02_couplers_to_xbar_RREADY),
        .m_axi_wdata(s02_couplers_to_xbar_WDATA),
        .m_axi_wlast(s02_couplers_to_xbar_WLAST),
        .m_axi_wstrb(s02_couplers_to_xbar_WSTRB),
        .m_axi_wvalid(s02_couplers_to_xbar_WVALID),
        .s_axi_arready(s02_couplers_to_xbar_ARREADY),
        .s_axi_awready(s02_couplers_to_xbar_AWREADY),
        .s_axi_bresp(s02_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s02_couplers_to_xbar_BVALID),
        .s_axi_rdata(s02_couplers_to_xbar_RDATA),
        .s_axi_rlast(s02_couplers_to_xbar_RLAST),
        .s_axi_rresp(s02_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s02_couplers_to_xbar_RVALID),
        .s_axi_wready(s02_couplers_to_xbar_WREADY));
  ulp_s03_couplers_imp_1IZX0HP s03_couplers
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
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
  (* X_CORE_INFO = "axi_mmu_v2_1_22_top,Vivado 2021.1" *) 
  ulp_s03_mmu_0 s03_mmu
       (.aclk(ACLK),
        .aresetn(ARESETN),
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
        .s_axi_araddr(S03_AXI_araddr),
        .s_axi_arburst(S03_AXI_arburst),
        .s_axi_arcache(S03_AXI_arcache),
        .s_axi_arid(S03_AXI_arid),
        .s_axi_arlen(S03_AXI_arlen),
        .s_axi_arlock(S03_AXI_arlock),
        .s_axi_arprot(S03_AXI_arprot),
        .s_axi_arqos(S03_AXI_arqos),
        .s_axi_arready(S03_AXI_arready),
        .s_axi_arsize(S03_AXI_arsize),
        .s_axi_arvalid(S03_AXI_arvalid),
        .s_axi_awaddr(S03_AXI_awaddr),
        .s_axi_awburst(S03_AXI_awburst),
        .s_axi_awcache(S03_AXI_awcache),
        .s_axi_awid(S03_AXI_awid),
        .s_axi_awlen(S03_AXI_awlen),
        .s_axi_awlock(S03_AXI_awlock),
        .s_axi_awprot(S03_AXI_awprot),
        .s_axi_awqos(S03_AXI_awqos),
        .s_axi_awready(S03_AXI_awready),
        .s_axi_awsize(S03_AXI_awsize),
        .s_axi_awvalid(S03_AXI_awvalid),
        .s_axi_bid(S03_AXI_bid),
        .s_axi_bready(S03_AXI_bready),
        .s_axi_bresp(S03_AXI_bresp),
        .s_axi_bvalid(S03_AXI_bvalid),
        .s_axi_rdata(S03_AXI_rdata),
        .s_axi_rid(S03_AXI_rid),
        .s_axi_rlast(S03_AXI_rlast),
        .s_axi_rready(S03_AXI_rready),
        .s_axi_rresp(S03_AXI_rresp),
        .s_axi_rvalid(S03_AXI_rvalid),
        .s_axi_wdata(S03_AXI_wdata),
        .s_axi_wlast(S03_AXI_wlast),
        .s_axi_wready(S03_AXI_wready),
        .s_axi_wstrb(S03_AXI_wstrb),
        .s_axi_wvalid(S03_AXI_wvalid));
  (* X_CORE_INFO = "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1" *) 
  ulp_xbar_2 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr({xbar_n_3506,xbar_n_3507,xbar_n_3508,xbar_n_3509,xbar_n_3510,xbar_n_3511,xbar_n_3512,xbar_n_3513,xbar_n_3514,xbar_n_3515,xbar_n_3516,xbar_n_3517,xbar_n_3518,xbar_n_3519,xbar_n_3520,xbar_n_3521,xbar_n_3522,xbar_n_3523,xbar_n_3524,xbar_n_3525,xbar_n_3526,xbar_n_3527,xbar_n_3528,xbar_n_3529,xbar_n_3530,xbar_n_3531,xbar_n_3532,xbar_n_3533,xbar_n_3534,xbar_n_3535,xbar_n_3536,xbar_n_3537,xbar_n_3538,xbar_n_3539,xbar_n_3540,xbar_n_3541,xbar_n_3542,xbar_n_3543,xbar_n_3544,xbar_n_3545,xbar_n_3546,xbar_n_3547,xbar_n_3548,xbar_n_3549,xbar_n_3550,xbar_n_3551,xbar_n_3552,xbar_n_3553,xbar_n_3554,\^M01_AXI_araddr ,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({M01_AXI_arburst,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({M01_AXI_arcache,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({M01_AXI_arid,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({M01_AXI_arlen,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({M01_AXI_arlock,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({M01_AXI_arprot,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({NLW_xbar_m_axi_arqos_UNCONNECTED[7:4],xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({M01_AXI_arready,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({NLW_xbar_m_axi_arregion_UNCONNECTED[7:4],xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({M01_AXI_arsize,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({M01_AXI_arvalid,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_n_2148,xbar_n_2149,xbar_n_2150,xbar_n_2151,xbar_n_2152,xbar_n_2153,xbar_n_2154,xbar_n_2155,xbar_n_2156,xbar_n_2157,xbar_n_2158,xbar_n_2159,xbar_n_2160,xbar_n_2161,xbar_n_2162,xbar_n_2163,xbar_n_2164,xbar_n_2165,xbar_n_2166,xbar_n_2167,xbar_n_2168,xbar_n_2169,xbar_n_2170,xbar_n_2171,xbar_n_2172,xbar_n_2173,xbar_n_2174,xbar_n_2175,xbar_n_2176,xbar_n_2177,xbar_n_2178,xbar_n_2179,xbar_n_2180,xbar_n_2181,xbar_n_2182,xbar_n_2183,xbar_n_2184,xbar_n_2185,xbar_n_2186,xbar_n_2187,xbar_n_2188,xbar_n_2189,xbar_n_2190,xbar_n_2191,xbar_n_2192,xbar_n_2193,xbar_n_2194,xbar_n_2195,xbar_n_2196,\^M01_AXI_awaddr ,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({M01_AXI_awburst,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({M01_AXI_awcache,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({M01_AXI_awid,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({M01_AXI_awlen,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({M01_AXI_awlock,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({M01_AXI_awprot,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({NLW_xbar_m_axi_awqos_UNCONNECTED[7:4],xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({M01_AXI_awready,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({NLW_xbar_m_axi_awregion_UNCONNECTED[7:4],xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({M01_AXI_awsize,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({M01_AXI_awvalid,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({M01_AXI_bid,xbar_to_m00_couplers_BID}),
        .m_axi_bready({M01_AXI_bready,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({M01_AXI_bresp,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({M01_AXI_bvalid,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({M01_AXI_rdata,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({M01_AXI_rid,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({M01_AXI_rlast,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({M01_AXI_rready,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({M01_AXI_rresp,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({M01_AXI_rvalid,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({M01_AXI_wdata,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({M01_AXI_wlast,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({M01_AXI_wready,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({M01_AXI_wstrb,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({M01_AXI_wvalid,xbar_to_m00_couplers_WVALID}),
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
        .s_axi_bid({NLW_xbar_s_axi_bid_UNCONNECTED[23:12],s01_couplers_to_xbar_BID,s00_couplers_to_xbar_BID}),
        .s_axi_bready({s03_couplers_to_xbar_BREADY,s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s03_couplers_to_xbar_BRESP,s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s03_couplers_to_xbar_BVALID,s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s03_couplers_to_xbar_RDATA,s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({NLW_xbar_s_axi_rid_UNCONNECTED[23:12],s01_couplers_to_xbar_RID,s00_couplers_to_xbar_RID}),
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

(* X_CORE_INFO = "axi_protocol_converter_v2_1_24_axi_protocol_converter,Vivado 2021.1" *) 
module ulp_axi_protocol_convert_0_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_10_top,Vivado 2021.1" *) 
module ulp_axi_vip_0_0
   (aclk,
    aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_10_top,Vivado 2021.1" *) 
module ulp_axi_vip_0_p_0
   (aclk,
    aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_10_top,Vivado 2021.1" *) 
module ulp_axi_vip_ctrl_mgntpf_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [24:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [24:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [24:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [24:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_10_top,Vivado 2021.1" *) 
module ulp_axi_vip_ctrl_userpf_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [24:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [24:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [24:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [24:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_10_top,Vivado 2021.1" *) 
module ulp_axi_vip_data_static1_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_10_top,Vivado 2021.1" *) 
module ulp_axi_vip_data_static_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "util_ds_buf,Vivado 2021.1" *) 
module ulp_ddr1_clk_bufg_0
   (BUFG_I,
    BUFG_O);
  input [0:0]BUFG_I;
  output [0:0]BUFG_O;


endmodule

(* X_CORE_INFO = "util_ds_buf,Vivado 2021.1" *) 
module ulp_ddr1_clk_ibufds_0
   (IBUF_DS_P,
    IBUF_DS_N,
    IBUF_OUT);
  input [0:0]IBUF_DS_P;
  input [0:0]IBUF_DS_N;
  output [0:0]IBUF_OUT;


endmodule

(* X_CORE_INFO = "ddr4_v2_2_12,Vivado 2021.1" *) 
module ulp_ddrmem_1_0
   (sys_rst,
    c0_sys_clk_i,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_cke,
    c0_ddr4_odt,
    c0_ddr4_cs_n,
    c0_ddr4_ck_t,
    c0_ddr4_ck_c,
    c0_ddr4_reset_n,
    c0_ddr4_dm_dbi_n,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_init_calib_complete,
    c0_ddr4_ui_clk,
    c0_ddr4_ui_clk_sync_rst,
    dbg_clk,
    c0_ddr4_s_axi_ctrl_awvalid,
    c0_ddr4_s_axi_ctrl_awready,
    c0_ddr4_s_axi_ctrl_awaddr,
    c0_ddr4_s_axi_ctrl_wvalid,
    c0_ddr4_s_axi_ctrl_wready,
    c0_ddr4_s_axi_ctrl_wdata,
    c0_ddr4_s_axi_ctrl_bvalid,
    c0_ddr4_s_axi_ctrl_bready,
    c0_ddr4_s_axi_ctrl_bresp,
    c0_ddr4_s_axi_ctrl_arvalid,
    c0_ddr4_s_axi_ctrl_arready,
    c0_ddr4_s_axi_ctrl_araddr,
    c0_ddr4_s_axi_ctrl_rvalid,
    c0_ddr4_s_axi_ctrl_rready,
    c0_ddr4_s_axi_ctrl_rdata,
    c0_ddr4_s_axi_ctrl_rresp,
    c0_ddr4_interrupt,
    c0_ddr4_aresetn,
    c0_ddr4_s_axi_awid,
    c0_ddr4_s_axi_awaddr,
    c0_ddr4_s_axi_awlen,
    c0_ddr4_s_axi_awsize,
    c0_ddr4_s_axi_awburst,
    c0_ddr4_s_axi_awlock,
    c0_ddr4_s_axi_awcache,
    c0_ddr4_s_axi_awprot,
    c0_ddr4_s_axi_awqos,
    c0_ddr4_s_axi_awvalid,
    c0_ddr4_s_axi_awready,
    c0_ddr4_s_axi_wdata,
    c0_ddr4_s_axi_wstrb,
    c0_ddr4_s_axi_wlast,
    c0_ddr4_s_axi_wvalid,
    c0_ddr4_s_axi_wready,
    c0_ddr4_s_axi_bready,
    c0_ddr4_s_axi_bid,
    c0_ddr4_s_axi_bresp,
    c0_ddr4_s_axi_bvalid,
    c0_ddr4_s_axi_arid,
    c0_ddr4_s_axi_araddr,
    c0_ddr4_s_axi_arlen,
    c0_ddr4_s_axi_arsize,
    c0_ddr4_s_axi_arburst,
    c0_ddr4_s_axi_arlock,
    c0_ddr4_s_axi_arcache,
    c0_ddr4_s_axi_arprot,
    c0_ddr4_s_axi_arqos,
    c0_ddr4_s_axi_arvalid,
    c0_ddr4_s_axi_arready,
    c0_ddr4_s_axi_rready,
    c0_ddr4_s_axi_rid,
    c0_ddr4_s_axi_rdata,
    c0_ddr4_s_axi_rresp,
    c0_ddr4_s_axi_rlast,
    c0_ddr4_s_axi_rvalid,
    dbg_bus);
  input sys_rst;
  input c0_sys_clk_i;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [0:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_odt;
  output [0:0]c0_ddr4_cs_n;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_ck_c;
  output c0_ddr4_reset_n;
  inout [8:0]c0_ddr4_dm_dbi_n;
  inout [71:0]c0_ddr4_dq;
  inout [8:0]c0_ddr4_dqs_c;
  inout [8:0]c0_ddr4_dqs_t;
  output c0_init_calib_complete;
  output c0_ddr4_ui_clk;
  output c0_ddr4_ui_clk_sync_rst;
  output dbg_clk;
  input c0_ddr4_s_axi_ctrl_awvalid;
  output c0_ddr4_s_axi_ctrl_awready;
  input [31:0]c0_ddr4_s_axi_ctrl_awaddr;
  input c0_ddr4_s_axi_ctrl_wvalid;
  output c0_ddr4_s_axi_ctrl_wready;
  input [31:0]c0_ddr4_s_axi_ctrl_wdata;
  output c0_ddr4_s_axi_ctrl_bvalid;
  input c0_ddr4_s_axi_ctrl_bready;
  output [1:0]c0_ddr4_s_axi_ctrl_bresp;
  input c0_ddr4_s_axi_ctrl_arvalid;
  output c0_ddr4_s_axi_ctrl_arready;
  input [31:0]c0_ddr4_s_axi_ctrl_araddr;
  output c0_ddr4_s_axi_ctrl_rvalid;
  input c0_ddr4_s_axi_ctrl_rready;
  output [31:0]c0_ddr4_s_axi_ctrl_rdata;
  output [1:0]c0_ddr4_s_axi_ctrl_rresp;
  output c0_ddr4_interrupt;
  input c0_ddr4_aresetn;
  input [5:0]c0_ddr4_s_axi_awid;
  input [31:0]c0_ddr4_s_axi_awaddr;
  input [7:0]c0_ddr4_s_axi_awlen;
  input [2:0]c0_ddr4_s_axi_awsize;
  input [1:0]c0_ddr4_s_axi_awburst;
  input [0:0]c0_ddr4_s_axi_awlock;
  input [3:0]c0_ddr4_s_axi_awcache;
  input [2:0]c0_ddr4_s_axi_awprot;
  input [3:0]c0_ddr4_s_axi_awqos;
  input c0_ddr4_s_axi_awvalid;
  output c0_ddr4_s_axi_awready;
  input [511:0]c0_ddr4_s_axi_wdata;
  input [63:0]c0_ddr4_s_axi_wstrb;
  input c0_ddr4_s_axi_wlast;
  input c0_ddr4_s_axi_wvalid;
  output c0_ddr4_s_axi_wready;
  input c0_ddr4_s_axi_bready;
  output [5:0]c0_ddr4_s_axi_bid;
  output [1:0]c0_ddr4_s_axi_bresp;
  output c0_ddr4_s_axi_bvalid;
  input [5:0]c0_ddr4_s_axi_arid;
  input [31:0]c0_ddr4_s_axi_araddr;
  input [7:0]c0_ddr4_s_axi_arlen;
  input [2:0]c0_ddr4_s_axi_arsize;
  input [1:0]c0_ddr4_s_axi_arburst;
  input [0:0]c0_ddr4_s_axi_arlock;
  input [3:0]c0_ddr4_s_axi_arcache;
  input [2:0]c0_ddr4_s_axi_arprot;
  input [3:0]c0_ddr4_s_axi_arqos;
  input c0_ddr4_s_axi_arvalid;
  output c0_ddr4_s_axi_arready;
  input c0_ddr4_s_axi_rready;
  output [5:0]c0_ddr4_s_axi_rid;
  output [511:0]c0_ddr4_s_axi_rdata;
  output [1:0]c0_ddr4_s_axi_rresp;
  output c0_ddr4_s_axi_rlast;
  output c0_ddr4_s_axi_rvalid;
  output [511:0]dbg_bus;


endmodule

(* X_CORE_INFO = "bd_0349,Vivado 2021.1" *) 
module ulp_debug_bridge_xsdbm_0
   (clk,
    S_BSCAN_bscanid_en,
    S_BSCAN_capture,
    S_BSCAN_drck,
    S_BSCAN_reset,
    S_BSCAN_runtest,
    S_BSCAN_sel,
    S_BSCAN_shift,
    S_BSCAN_tck,
    S_BSCAN_tdi,
    S_BSCAN_tdo,
    S_BSCAN_tms,
    S_BSCAN_update);
  input clk;
  input S_BSCAN_bscanid_en;
  input S_BSCAN_capture;
  input S_BSCAN_drck;
  input S_BSCAN_reset;
  input S_BSCAN_runtest;
  input S_BSCAN_sel;
  input S_BSCAN_shift;
  input S_BSCAN_tck;
  input S_BSCAN_tdi;
  output S_BSCAN_tdo;
  input S_BSCAN_tms;
  input S_BSCAN_update;


endmodule

(* X_CORE_INFO = "fpga_dna_module,Vivado 2021.1" *) 
module ulp_fpga_dna_module_0_0
   (s_axi_lite_aclk,
    s_axi_lite_aresetn,
    s_axi_lite_awaddr,
    s_axi_lite_awready,
    s_axi_lite_awvalid,
    s_axi_lite_araddr,
    s_axi_lite_arready,
    s_axi_lite_arvalid,
    s_axi_lite_wdata,
    s_axi_lite_wstrb,
    s_axi_lite_wready,
    s_axi_lite_wvalid,
    s_axi_lite_rdata,
    s_axi_lite_rresp,
    s_axi_lite_rready,
    s_axi_lite_rvalid,
    s_axi_lite_bresp,
    s_axi_lite_bready,
    s_axi_lite_bvalid,
    dna_dyn_data_dout,
    dna_dyn_data_ports,
    fpga_dna_data);
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
  input [11:0]s_axi_lite_awaddr;
  output s_axi_lite_awready;
  input s_axi_lite_awvalid;
  input [11:0]s_axi_lite_araddr;
  output s_axi_lite_arready;
  input s_axi_lite_arvalid;
  input [31:0]s_axi_lite_wdata;
  input [3:0]s_axi_lite_wstrb;
  output s_axi_lite_wready;
  input s_axi_lite_wvalid;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  input s_axi_lite_rready;
  output s_axi_lite_rvalid;
  output [1:0]s_axi_lite_bresp;
  input s_axi_lite_bready;
  output s_axi_lite_bvalid;
  input dna_dyn_data_dout;
  output [2:0]dna_dyn_data_ports;
  output [95:0]fpga_dna_data;


endmodule

(* X_CORE_INFO = "freq_counter,Vivado 2021.1" *) 
module ulp_freq_counter_0_0
   (clk,
    reset_n,
    axil_awaddr,
    axil_awprot,
    axil_awvalid,
    axil_awready,
    axil_wdata,
    axil_wstrb,
    axil_wvalid,
    axil_wready,
    axil_bvalid,
    axil_bresp,
    axil_bready,
    axil_araddr,
    axil_arprot,
    axil_arvalid,
    axil_arready,
    axil_rdata,
    axil_rresp,
    axil_rvalid,
    axil_rready,
    test_clk0,
    test_clk1);
  input clk;
  input reset_n;
  input [31:0]axil_awaddr;
  input [2:0]axil_awprot;
  input axil_awvalid;
  output axil_awready;
  input [31:0]axil_wdata;
  input [3:0]axil_wstrb;
  input axil_wvalid;
  output axil_wready;
  output axil_bvalid;
  output [1:0]axil_bresp;
  input axil_bready;
  input [31:0]axil_araddr;
  input [2:0]axil_arprot;
  input axil_arvalid;
  output axil_arready;
  output [31:0]axil_rdata;
  output [1:0]axil_rresp;
  output axil_rvalid;
  input axil_rready;
  input test_clk0;
  input test_clk1;


endmodule

(* X_CORE_INFO = "ii_level0_wire,Vivado 2021.1" *) 
module ulp_ii_level0_wire_0
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
    ULP_M_AXI_CTRL_USER_00_araddr,
    ULP_M_AXI_CTRL_USER_00_arprot,
    ULP_M_AXI_CTRL_USER_00_arready,
    ULP_M_AXI_CTRL_USER_00_arvalid,
    ULP_M_AXI_CTRL_USER_00_awaddr,
    ULP_M_AXI_CTRL_USER_00_awprot,
    ULP_M_AXI_CTRL_USER_00_awready,
    ULP_M_AXI_CTRL_USER_00_awvalid,
    ULP_M_AXI_CTRL_USER_00_bready,
    ULP_M_AXI_CTRL_USER_00_bresp,
    ULP_M_AXI_CTRL_USER_00_bvalid,
    ULP_M_AXI_CTRL_USER_00_rdata,
    ULP_M_AXI_CTRL_USER_00_rready,
    ULP_M_AXI_CTRL_USER_00_rresp,
    ULP_M_AXI_CTRL_USER_00_rvalid,
    ULP_M_AXI_CTRL_USER_00_wdata,
    ULP_M_AXI_CTRL_USER_00_wready,
    ULP_M_AXI_CTRL_USER_00_wstrb,
    ULP_M_AXI_CTRL_USER_00_wvalid,
    ULP_M_AXI_CTRL_USER_01_araddr,
    ULP_M_AXI_CTRL_USER_01_arprot,
    ULP_M_AXI_CTRL_USER_01_arready,
    ULP_M_AXI_CTRL_USER_01_arvalid,
    ULP_M_AXI_CTRL_USER_01_awaddr,
    ULP_M_AXI_CTRL_USER_01_awprot,
    ULP_M_AXI_CTRL_USER_01_awready,
    ULP_M_AXI_CTRL_USER_01_awvalid,
    ULP_M_AXI_CTRL_USER_01_bready,
    ULP_M_AXI_CTRL_USER_01_bresp,
    ULP_M_AXI_CTRL_USER_01_bvalid,
    ULP_M_AXI_CTRL_USER_01_rdata,
    ULP_M_AXI_CTRL_USER_01_rready,
    ULP_M_AXI_CTRL_USER_01_rresp,
    ULP_M_AXI_CTRL_USER_01_rvalid,
    ULP_M_AXI_CTRL_USER_01_wdata,
    ULP_M_AXI_CTRL_USER_01_wready,
    ULP_M_AXI_CTRL_USER_01_wstrb,
    ULP_M_AXI_CTRL_USER_01_wvalid,
    ULP_M_AXI_CTRL_USER_02_araddr,
    ULP_M_AXI_CTRL_USER_02_arprot,
    ULP_M_AXI_CTRL_USER_02_arready,
    ULP_M_AXI_CTRL_USER_02_arvalid,
    ULP_M_AXI_CTRL_USER_02_awaddr,
    ULP_M_AXI_CTRL_USER_02_awprot,
    ULP_M_AXI_CTRL_USER_02_awready,
    ULP_M_AXI_CTRL_USER_02_awvalid,
    ULP_M_AXI_CTRL_USER_02_bready,
    ULP_M_AXI_CTRL_USER_02_bresp,
    ULP_M_AXI_CTRL_USER_02_bvalid,
    ULP_M_AXI_CTRL_USER_02_rdata,
    ULP_M_AXI_CTRL_USER_02_rready,
    ULP_M_AXI_CTRL_USER_02_rresp,
    ULP_M_AXI_CTRL_USER_02_rvalid,
    ULP_M_AXI_CTRL_USER_02_wdata,
    ULP_M_AXI_CTRL_USER_02_wready,
    ULP_M_AXI_CTRL_USER_02_wstrb,
    ULP_M_AXI_CTRL_USER_02_wvalid,
    ULP_M_AXI_DATA_H2C_00_araddr,
    ULP_M_AXI_DATA_H2C_00_arburst,
    ULP_M_AXI_DATA_H2C_00_arcache,
    ULP_M_AXI_DATA_H2C_00_arid,
    ULP_M_AXI_DATA_H2C_00_arlen,
    ULP_M_AXI_DATA_H2C_00_arlock,
    ULP_M_AXI_DATA_H2C_00_arprot,
    ULP_M_AXI_DATA_H2C_00_arready,
    ULP_M_AXI_DATA_H2C_00_arvalid,
    ULP_M_AXI_DATA_H2C_00_awaddr,
    ULP_M_AXI_DATA_H2C_00_awburst,
    ULP_M_AXI_DATA_H2C_00_awcache,
    ULP_M_AXI_DATA_H2C_00_awid,
    ULP_M_AXI_DATA_H2C_00_awlen,
    ULP_M_AXI_DATA_H2C_00_awlock,
    ULP_M_AXI_DATA_H2C_00_awprot,
    ULP_M_AXI_DATA_H2C_00_awready,
    ULP_M_AXI_DATA_H2C_00_awvalid,
    ULP_M_AXI_DATA_H2C_00_bid,
    ULP_M_AXI_DATA_H2C_00_bready,
    ULP_M_AXI_DATA_H2C_00_bresp,
    ULP_M_AXI_DATA_H2C_00_bvalid,
    ULP_M_AXI_DATA_H2C_00_rdata,
    ULP_M_AXI_DATA_H2C_00_rid,
    ULP_M_AXI_DATA_H2C_00_rlast,
    ULP_M_AXI_DATA_H2C_00_rready,
    ULP_M_AXI_DATA_H2C_00_rresp,
    ULP_M_AXI_DATA_H2C_00_rvalid,
    ULP_M_AXI_DATA_H2C_00_wdata,
    ULP_M_AXI_DATA_H2C_00_wlast,
    ULP_M_AXI_DATA_H2C_00_wready,
    ULP_M_AXI_DATA_H2C_00_wstrb,
    ULP_M_AXI_DATA_H2C_00_wvalid,
    ULP_M_AXI_DATA_H2C_01_araddr,
    ULP_M_AXI_DATA_H2C_01_arburst,
    ULP_M_AXI_DATA_H2C_01_arcache,
    ULP_M_AXI_DATA_H2C_01_arid,
    ULP_M_AXI_DATA_H2C_01_arlen,
    ULP_M_AXI_DATA_H2C_01_arlock,
    ULP_M_AXI_DATA_H2C_01_arprot,
    ULP_M_AXI_DATA_H2C_01_arready,
    ULP_M_AXI_DATA_H2C_01_arvalid,
    ULP_M_AXI_DATA_H2C_01_awaddr,
    ULP_M_AXI_DATA_H2C_01_awburst,
    ULP_M_AXI_DATA_H2C_01_awcache,
    ULP_M_AXI_DATA_H2C_01_awid,
    ULP_M_AXI_DATA_H2C_01_awlen,
    ULP_M_AXI_DATA_H2C_01_awlock,
    ULP_M_AXI_DATA_H2C_01_awprot,
    ULP_M_AXI_DATA_H2C_01_awready,
    ULP_M_AXI_DATA_H2C_01_awvalid,
    ULP_M_AXI_DATA_H2C_01_bid,
    ULP_M_AXI_DATA_H2C_01_bready,
    ULP_M_AXI_DATA_H2C_01_bresp,
    ULP_M_AXI_DATA_H2C_01_bvalid,
    ULP_M_AXI_DATA_H2C_01_rdata,
    ULP_M_AXI_DATA_H2C_01_rid,
    ULP_M_AXI_DATA_H2C_01_rlast,
    ULP_M_AXI_DATA_H2C_01_rready,
    ULP_M_AXI_DATA_H2C_01_rresp,
    ULP_M_AXI_DATA_H2C_01_rvalid,
    ULP_M_AXI_DATA_H2C_01_wdata,
    ULP_M_AXI_DATA_H2C_01_wlast,
    ULP_M_AXI_DATA_H2C_01_wready,
    ULP_M_AXI_DATA_H2C_01_wstrb,
    ULP_M_AXI_DATA_H2C_01_wvalid,
    ULP_M_AXI_DATA_H2C_02_araddr,
    ULP_M_AXI_DATA_H2C_02_arburst,
    ULP_M_AXI_DATA_H2C_02_arcache,
    ULP_M_AXI_DATA_H2C_02_arlen,
    ULP_M_AXI_DATA_H2C_02_arlock,
    ULP_M_AXI_DATA_H2C_02_arprot,
    ULP_M_AXI_DATA_H2C_02_arready,
    ULP_M_AXI_DATA_H2C_02_arvalid,
    ULP_M_AXI_DATA_H2C_02_awaddr,
    ULP_M_AXI_DATA_H2C_02_awburst,
    ULP_M_AXI_DATA_H2C_02_awcache,
    ULP_M_AXI_DATA_H2C_02_awlen,
    ULP_M_AXI_DATA_H2C_02_awlock,
    ULP_M_AXI_DATA_H2C_02_awprot,
    ULP_M_AXI_DATA_H2C_02_awready,
    ULP_M_AXI_DATA_H2C_02_awvalid,
    ULP_M_AXI_DATA_H2C_02_bready,
    ULP_M_AXI_DATA_H2C_02_bresp,
    ULP_M_AXI_DATA_H2C_02_bvalid,
    ULP_M_AXI_DATA_H2C_02_rdata,
    ULP_M_AXI_DATA_H2C_02_rlast,
    ULP_M_AXI_DATA_H2C_02_rready,
    ULP_M_AXI_DATA_H2C_02_rresp,
    ULP_M_AXI_DATA_H2C_02_rvalid,
    ULP_M_AXI_DATA_H2C_02_wdata,
    ULP_M_AXI_DATA_H2C_02_wlast,
    ULP_M_AXI_DATA_H2C_02_wready,
    ULP_M_AXI_DATA_H2C_02_wstrb,
    ULP_M_AXI_DATA_H2C_02_wvalid,
    ULP_M_AXI_DATA_H2C_03_araddr,
    ULP_M_AXI_DATA_H2C_03_arburst,
    ULP_M_AXI_DATA_H2C_03_arcache,
    ULP_M_AXI_DATA_H2C_03_arid,
    ULP_M_AXI_DATA_H2C_03_arlen,
    ULP_M_AXI_DATA_H2C_03_arlock,
    ULP_M_AXI_DATA_H2C_03_arprot,
    ULP_M_AXI_DATA_H2C_03_arready,
    ULP_M_AXI_DATA_H2C_03_arvalid,
    ULP_M_AXI_DATA_H2C_03_awaddr,
    ULP_M_AXI_DATA_H2C_03_awburst,
    ULP_M_AXI_DATA_H2C_03_awcache,
    ULP_M_AXI_DATA_H2C_03_awid,
    ULP_M_AXI_DATA_H2C_03_awlen,
    ULP_M_AXI_DATA_H2C_03_awlock,
    ULP_M_AXI_DATA_H2C_03_awprot,
    ULP_M_AXI_DATA_H2C_03_awready,
    ULP_M_AXI_DATA_H2C_03_awvalid,
    ULP_M_AXI_DATA_H2C_03_bid,
    ULP_M_AXI_DATA_H2C_03_bready,
    ULP_M_AXI_DATA_H2C_03_bresp,
    ULP_M_AXI_DATA_H2C_03_bvalid,
    ULP_M_AXI_DATA_H2C_03_rdata,
    ULP_M_AXI_DATA_H2C_03_rid,
    ULP_M_AXI_DATA_H2C_03_rlast,
    ULP_M_AXI_DATA_H2C_03_rready,
    ULP_M_AXI_DATA_H2C_03_rresp,
    ULP_M_AXI_DATA_H2C_03_rvalid,
    ULP_M_AXI_DATA_H2C_03_wdata,
    ULP_M_AXI_DATA_H2C_03_wlast,
    ULP_M_AXI_DATA_H2C_03_wready,
    ULP_M_AXI_DATA_H2C_03_wstrb,
    ULP_M_AXI_DATA_H2C_03_wvalid,
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
    ulp_m_aclk_ctrl_00,
    ulp_m_aclk_kernel2_ref_clk_00,
    ulp_m_aclk_kernel_ref_clk_00,
    ulp_m_aclk_pcie_00,
    ulp_m_aresetn_ctrl_00,
    ulp_m_aresetn_kernel_ref_clk_00,
    ulp_m_aresetn_pcie_00,
    ulp_m_data_clkwiz_kernel_clk_out1_locked_00,
    ulp_m_data_dout_dna_00,
    ulp_m_data_perstn_out_00,
    ulp_m_data_slice_pr_reset_to_ulp_00,
    ulp_s_data_dna_from_ulp_00,
    ulp_s_data_memory_calib_complete_00,
    ulp_s_irq_cu_00);
  input [24:0]BLP_S_AXI_CTRL_USER_00_araddr;
  input [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  output BLP_S_AXI_CTRL_USER_00_arready;
  input BLP_S_AXI_CTRL_USER_00_arvalid;
  input [24:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  input [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  output BLP_S_AXI_CTRL_USER_00_awready;
  input BLP_S_AXI_CTRL_USER_00_awvalid;
  input BLP_S_AXI_CTRL_USER_00_bready;
  output [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  output BLP_S_AXI_CTRL_USER_00_bvalid;
  output [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  input BLP_S_AXI_CTRL_USER_00_rready;
  output [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  output BLP_S_AXI_CTRL_USER_00_rvalid;
  input [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  output BLP_S_AXI_CTRL_USER_00_wready;
  input [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  input BLP_S_AXI_CTRL_USER_00_wvalid;
  input [24:0]BLP_S_AXI_CTRL_USER_01_araddr;
  input [2:0]BLP_S_AXI_CTRL_USER_01_arprot;
  output BLP_S_AXI_CTRL_USER_01_arready;
  input BLP_S_AXI_CTRL_USER_01_arvalid;
  input [24:0]BLP_S_AXI_CTRL_USER_01_awaddr;
  input [2:0]BLP_S_AXI_CTRL_USER_01_awprot;
  output BLP_S_AXI_CTRL_USER_01_awready;
  input BLP_S_AXI_CTRL_USER_01_awvalid;
  input BLP_S_AXI_CTRL_USER_01_bready;
  output [1:0]BLP_S_AXI_CTRL_USER_01_bresp;
  output BLP_S_AXI_CTRL_USER_01_bvalid;
  output [31:0]BLP_S_AXI_CTRL_USER_01_rdata;
  input BLP_S_AXI_CTRL_USER_01_rready;
  output [1:0]BLP_S_AXI_CTRL_USER_01_rresp;
  output BLP_S_AXI_CTRL_USER_01_rvalid;
  input [31:0]BLP_S_AXI_CTRL_USER_01_wdata;
  output BLP_S_AXI_CTRL_USER_01_wready;
  input [3:0]BLP_S_AXI_CTRL_USER_01_wstrb;
  input BLP_S_AXI_CTRL_USER_01_wvalid;
  input [24:0]BLP_S_AXI_CTRL_USER_02_araddr;
  input [2:0]BLP_S_AXI_CTRL_USER_02_arprot;
  output BLP_S_AXI_CTRL_USER_02_arready;
  input BLP_S_AXI_CTRL_USER_02_arvalid;
  input [24:0]BLP_S_AXI_CTRL_USER_02_awaddr;
  input [2:0]BLP_S_AXI_CTRL_USER_02_awprot;
  output BLP_S_AXI_CTRL_USER_02_awready;
  input BLP_S_AXI_CTRL_USER_02_awvalid;
  input BLP_S_AXI_CTRL_USER_02_bready;
  output [1:0]BLP_S_AXI_CTRL_USER_02_bresp;
  output BLP_S_AXI_CTRL_USER_02_bvalid;
  output [31:0]BLP_S_AXI_CTRL_USER_02_rdata;
  input BLP_S_AXI_CTRL_USER_02_rready;
  output [1:0]BLP_S_AXI_CTRL_USER_02_rresp;
  output BLP_S_AXI_CTRL_USER_02_rvalid;
  input [31:0]BLP_S_AXI_CTRL_USER_02_wdata;
  output BLP_S_AXI_CTRL_USER_02_wready;
  input [3:0]BLP_S_AXI_CTRL_USER_02_wstrb;
  input BLP_S_AXI_CTRL_USER_02_wvalid;
  input [38:0]BLP_S_AXI_DATA_H2C_00_araddr;
  input [1:0]BLP_S_AXI_DATA_H2C_00_arburst;
  input [3:0]BLP_S_AXI_DATA_H2C_00_arcache;
  input [3:0]BLP_S_AXI_DATA_H2C_00_arid;
  input [7:0]BLP_S_AXI_DATA_H2C_00_arlen;
  input [0:0]BLP_S_AXI_DATA_H2C_00_arlock;
  input [2:0]BLP_S_AXI_DATA_H2C_00_arprot;
  output BLP_S_AXI_DATA_H2C_00_arready;
  input BLP_S_AXI_DATA_H2C_00_arvalid;
  input [38:0]BLP_S_AXI_DATA_H2C_00_awaddr;
  input [1:0]BLP_S_AXI_DATA_H2C_00_awburst;
  input [3:0]BLP_S_AXI_DATA_H2C_00_awcache;
  input [3:0]BLP_S_AXI_DATA_H2C_00_awid;
  input [7:0]BLP_S_AXI_DATA_H2C_00_awlen;
  input [0:0]BLP_S_AXI_DATA_H2C_00_awlock;
  input [2:0]BLP_S_AXI_DATA_H2C_00_awprot;
  output BLP_S_AXI_DATA_H2C_00_awready;
  input BLP_S_AXI_DATA_H2C_00_awvalid;
  output [3:0]BLP_S_AXI_DATA_H2C_00_bid;
  input BLP_S_AXI_DATA_H2C_00_bready;
  output [1:0]BLP_S_AXI_DATA_H2C_00_bresp;
  output BLP_S_AXI_DATA_H2C_00_bvalid;
  output [511:0]BLP_S_AXI_DATA_H2C_00_rdata;
  output [3:0]BLP_S_AXI_DATA_H2C_00_rid;
  output BLP_S_AXI_DATA_H2C_00_rlast;
  input BLP_S_AXI_DATA_H2C_00_rready;
  output [1:0]BLP_S_AXI_DATA_H2C_00_rresp;
  output BLP_S_AXI_DATA_H2C_00_rvalid;
  input [511:0]BLP_S_AXI_DATA_H2C_00_wdata;
  input BLP_S_AXI_DATA_H2C_00_wlast;
  output BLP_S_AXI_DATA_H2C_00_wready;
  input [63:0]BLP_S_AXI_DATA_H2C_00_wstrb;
  input BLP_S_AXI_DATA_H2C_00_wvalid;
  input [39:0]BLP_S_AXI_DATA_H2C_01_araddr;
  input [1:0]BLP_S_AXI_DATA_H2C_01_arburst;
  input [3:0]BLP_S_AXI_DATA_H2C_01_arcache;
  input [1:0]BLP_S_AXI_DATA_H2C_01_arid;
  input [7:0]BLP_S_AXI_DATA_H2C_01_arlen;
  input [0:0]BLP_S_AXI_DATA_H2C_01_arlock;
  input [2:0]BLP_S_AXI_DATA_H2C_01_arprot;
  output BLP_S_AXI_DATA_H2C_01_arready;
  input BLP_S_AXI_DATA_H2C_01_arvalid;
  input [39:0]BLP_S_AXI_DATA_H2C_01_awaddr;
  input [1:0]BLP_S_AXI_DATA_H2C_01_awburst;
  input [3:0]BLP_S_AXI_DATA_H2C_01_awcache;
  input [1:0]BLP_S_AXI_DATA_H2C_01_awid;
  input [7:0]BLP_S_AXI_DATA_H2C_01_awlen;
  input [0:0]BLP_S_AXI_DATA_H2C_01_awlock;
  input [2:0]BLP_S_AXI_DATA_H2C_01_awprot;
  output BLP_S_AXI_DATA_H2C_01_awready;
  input BLP_S_AXI_DATA_H2C_01_awvalid;
  output [1:0]BLP_S_AXI_DATA_H2C_01_bid;
  input BLP_S_AXI_DATA_H2C_01_bready;
  output [1:0]BLP_S_AXI_DATA_H2C_01_bresp;
  output BLP_S_AXI_DATA_H2C_01_bvalid;
  output [63:0]BLP_S_AXI_DATA_H2C_01_rdata;
  output [1:0]BLP_S_AXI_DATA_H2C_01_rid;
  output BLP_S_AXI_DATA_H2C_01_rlast;
  input BLP_S_AXI_DATA_H2C_01_rready;
  output [1:0]BLP_S_AXI_DATA_H2C_01_rresp;
  output BLP_S_AXI_DATA_H2C_01_rvalid;
  input [63:0]BLP_S_AXI_DATA_H2C_01_wdata;
  input BLP_S_AXI_DATA_H2C_01_wlast;
  output BLP_S_AXI_DATA_H2C_01_wready;
  input [7:0]BLP_S_AXI_DATA_H2C_01_wstrb;
  input BLP_S_AXI_DATA_H2C_01_wvalid;
  input [31:0]BLP_S_AXI_DATA_H2C_02_araddr;
  input [1:0]BLP_S_AXI_DATA_H2C_02_arburst;
  input [3:0]BLP_S_AXI_DATA_H2C_02_arcache;
  input [7:0]BLP_S_AXI_DATA_H2C_02_arlen;
  input [0:0]BLP_S_AXI_DATA_H2C_02_arlock;
  input [2:0]BLP_S_AXI_DATA_H2C_02_arprot;
  output BLP_S_AXI_DATA_H2C_02_arready;
  input BLP_S_AXI_DATA_H2C_02_arvalid;
  input [31:0]BLP_S_AXI_DATA_H2C_02_awaddr;
  input [1:0]BLP_S_AXI_DATA_H2C_02_awburst;
  input [3:0]BLP_S_AXI_DATA_H2C_02_awcache;
  input [7:0]BLP_S_AXI_DATA_H2C_02_awlen;
  input [0:0]BLP_S_AXI_DATA_H2C_02_awlock;
  input [2:0]BLP_S_AXI_DATA_H2C_02_awprot;
  output BLP_S_AXI_DATA_H2C_02_awready;
  input BLP_S_AXI_DATA_H2C_02_awvalid;
  input BLP_S_AXI_DATA_H2C_02_bready;
  output [1:0]BLP_S_AXI_DATA_H2C_02_bresp;
  output BLP_S_AXI_DATA_H2C_02_bvalid;
  output [31:0]BLP_S_AXI_DATA_H2C_02_rdata;
  output BLP_S_AXI_DATA_H2C_02_rlast;
  input BLP_S_AXI_DATA_H2C_02_rready;
  output [1:0]BLP_S_AXI_DATA_H2C_02_rresp;
  output BLP_S_AXI_DATA_H2C_02_rvalid;
  input [31:0]BLP_S_AXI_DATA_H2C_02_wdata;
  input BLP_S_AXI_DATA_H2C_02_wlast;
  output BLP_S_AXI_DATA_H2C_02_wready;
  input [3:0]BLP_S_AXI_DATA_H2C_02_wstrb;
  input BLP_S_AXI_DATA_H2C_02_wvalid;
  input [38:0]BLP_S_AXI_DATA_H2C_03_araddr;
  input [1:0]BLP_S_AXI_DATA_H2C_03_arburst;
  input [3:0]BLP_S_AXI_DATA_H2C_03_arcache;
  input [3:0]BLP_S_AXI_DATA_H2C_03_arid;
  input [7:0]BLP_S_AXI_DATA_H2C_03_arlen;
  input [0:0]BLP_S_AXI_DATA_H2C_03_arlock;
  input [2:0]BLP_S_AXI_DATA_H2C_03_arprot;
  output BLP_S_AXI_DATA_H2C_03_arready;
  input BLP_S_AXI_DATA_H2C_03_arvalid;
  input [38:0]BLP_S_AXI_DATA_H2C_03_awaddr;
  input [1:0]BLP_S_AXI_DATA_H2C_03_awburst;
  input [3:0]BLP_S_AXI_DATA_H2C_03_awcache;
  input [3:0]BLP_S_AXI_DATA_H2C_03_awid;
  input [7:0]BLP_S_AXI_DATA_H2C_03_awlen;
  input [0:0]BLP_S_AXI_DATA_H2C_03_awlock;
  input [2:0]BLP_S_AXI_DATA_H2C_03_awprot;
  output BLP_S_AXI_DATA_H2C_03_awready;
  input BLP_S_AXI_DATA_H2C_03_awvalid;
  output [3:0]BLP_S_AXI_DATA_H2C_03_bid;
  input BLP_S_AXI_DATA_H2C_03_bready;
  output [1:0]BLP_S_AXI_DATA_H2C_03_bresp;
  output BLP_S_AXI_DATA_H2C_03_bvalid;
  output [127:0]BLP_S_AXI_DATA_H2C_03_rdata;
  output [3:0]BLP_S_AXI_DATA_H2C_03_rid;
  output BLP_S_AXI_DATA_H2C_03_rlast;
  input BLP_S_AXI_DATA_H2C_03_rready;
  output [1:0]BLP_S_AXI_DATA_H2C_03_rresp;
  output BLP_S_AXI_DATA_H2C_03_rvalid;
  input [127:0]BLP_S_AXI_DATA_H2C_03_wdata;
  input BLP_S_AXI_DATA_H2C_03_wlast;
  output BLP_S_AXI_DATA_H2C_03_wready;
  input [15:0]BLP_S_AXI_DATA_H2C_03_wstrb;
  input BLP_S_AXI_DATA_H2C_03_wvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_00_araddr;
  output [2:0]ULP_M_AXI_CTRL_USER_00_arprot;
  input ULP_M_AXI_CTRL_USER_00_arready;
  output ULP_M_AXI_CTRL_USER_00_arvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_00_awaddr;
  output [2:0]ULP_M_AXI_CTRL_USER_00_awprot;
  input ULP_M_AXI_CTRL_USER_00_awready;
  output ULP_M_AXI_CTRL_USER_00_awvalid;
  output ULP_M_AXI_CTRL_USER_00_bready;
  input [1:0]ULP_M_AXI_CTRL_USER_00_bresp;
  input ULP_M_AXI_CTRL_USER_00_bvalid;
  input [31:0]ULP_M_AXI_CTRL_USER_00_rdata;
  output ULP_M_AXI_CTRL_USER_00_rready;
  input [1:0]ULP_M_AXI_CTRL_USER_00_rresp;
  input ULP_M_AXI_CTRL_USER_00_rvalid;
  output [31:0]ULP_M_AXI_CTRL_USER_00_wdata;
  input ULP_M_AXI_CTRL_USER_00_wready;
  output [3:0]ULP_M_AXI_CTRL_USER_00_wstrb;
  output ULP_M_AXI_CTRL_USER_00_wvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_01_araddr;
  output [2:0]ULP_M_AXI_CTRL_USER_01_arprot;
  input ULP_M_AXI_CTRL_USER_01_arready;
  output ULP_M_AXI_CTRL_USER_01_arvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_01_awaddr;
  output [2:0]ULP_M_AXI_CTRL_USER_01_awprot;
  input ULP_M_AXI_CTRL_USER_01_awready;
  output ULP_M_AXI_CTRL_USER_01_awvalid;
  output ULP_M_AXI_CTRL_USER_01_bready;
  input [1:0]ULP_M_AXI_CTRL_USER_01_bresp;
  input ULP_M_AXI_CTRL_USER_01_bvalid;
  input [31:0]ULP_M_AXI_CTRL_USER_01_rdata;
  output ULP_M_AXI_CTRL_USER_01_rready;
  input [1:0]ULP_M_AXI_CTRL_USER_01_rresp;
  input ULP_M_AXI_CTRL_USER_01_rvalid;
  output [31:0]ULP_M_AXI_CTRL_USER_01_wdata;
  input ULP_M_AXI_CTRL_USER_01_wready;
  output [3:0]ULP_M_AXI_CTRL_USER_01_wstrb;
  output ULP_M_AXI_CTRL_USER_01_wvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_02_araddr;
  output [2:0]ULP_M_AXI_CTRL_USER_02_arprot;
  input ULP_M_AXI_CTRL_USER_02_arready;
  output ULP_M_AXI_CTRL_USER_02_arvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_02_awaddr;
  output [2:0]ULP_M_AXI_CTRL_USER_02_awprot;
  input ULP_M_AXI_CTRL_USER_02_awready;
  output ULP_M_AXI_CTRL_USER_02_awvalid;
  output ULP_M_AXI_CTRL_USER_02_bready;
  input [1:0]ULP_M_AXI_CTRL_USER_02_bresp;
  input ULP_M_AXI_CTRL_USER_02_bvalid;
  input [31:0]ULP_M_AXI_CTRL_USER_02_rdata;
  output ULP_M_AXI_CTRL_USER_02_rready;
  input [1:0]ULP_M_AXI_CTRL_USER_02_rresp;
  input ULP_M_AXI_CTRL_USER_02_rvalid;
  output [31:0]ULP_M_AXI_CTRL_USER_02_wdata;
  input ULP_M_AXI_CTRL_USER_02_wready;
  output [3:0]ULP_M_AXI_CTRL_USER_02_wstrb;
  output ULP_M_AXI_CTRL_USER_02_wvalid;
  output [38:0]ULP_M_AXI_DATA_H2C_00_araddr;
  output [1:0]ULP_M_AXI_DATA_H2C_00_arburst;
  output [3:0]ULP_M_AXI_DATA_H2C_00_arcache;
  output [3:0]ULP_M_AXI_DATA_H2C_00_arid;
  output [7:0]ULP_M_AXI_DATA_H2C_00_arlen;
  output [0:0]ULP_M_AXI_DATA_H2C_00_arlock;
  output [2:0]ULP_M_AXI_DATA_H2C_00_arprot;
  input ULP_M_AXI_DATA_H2C_00_arready;
  output ULP_M_AXI_DATA_H2C_00_arvalid;
  output [38:0]ULP_M_AXI_DATA_H2C_00_awaddr;
  output [1:0]ULP_M_AXI_DATA_H2C_00_awburst;
  output [3:0]ULP_M_AXI_DATA_H2C_00_awcache;
  output [3:0]ULP_M_AXI_DATA_H2C_00_awid;
  output [7:0]ULP_M_AXI_DATA_H2C_00_awlen;
  output [0:0]ULP_M_AXI_DATA_H2C_00_awlock;
  output [2:0]ULP_M_AXI_DATA_H2C_00_awprot;
  input ULP_M_AXI_DATA_H2C_00_awready;
  output ULP_M_AXI_DATA_H2C_00_awvalid;
  input [3:0]ULP_M_AXI_DATA_H2C_00_bid;
  output ULP_M_AXI_DATA_H2C_00_bready;
  input [1:0]ULP_M_AXI_DATA_H2C_00_bresp;
  input ULP_M_AXI_DATA_H2C_00_bvalid;
  input [511:0]ULP_M_AXI_DATA_H2C_00_rdata;
  input [3:0]ULP_M_AXI_DATA_H2C_00_rid;
  input ULP_M_AXI_DATA_H2C_00_rlast;
  output ULP_M_AXI_DATA_H2C_00_rready;
  input [1:0]ULP_M_AXI_DATA_H2C_00_rresp;
  input ULP_M_AXI_DATA_H2C_00_rvalid;
  output [511:0]ULP_M_AXI_DATA_H2C_00_wdata;
  output ULP_M_AXI_DATA_H2C_00_wlast;
  input ULP_M_AXI_DATA_H2C_00_wready;
  output [63:0]ULP_M_AXI_DATA_H2C_00_wstrb;
  output ULP_M_AXI_DATA_H2C_00_wvalid;
  output [39:0]ULP_M_AXI_DATA_H2C_01_araddr;
  output [1:0]ULP_M_AXI_DATA_H2C_01_arburst;
  output [3:0]ULP_M_AXI_DATA_H2C_01_arcache;
  output [1:0]ULP_M_AXI_DATA_H2C_01_arid;
  output [7:0]ULP_M_AXI_DATA_H2C_01_arlen;
  output [0:0]ULP_M_AXI_DATA_H2C_01_arlock;
  output [2:0]ULP_M_AXI_DATA_H2C_01_arprot;
  input ULP_M_AXI_DATA_H2C_01_arready;
  output ULP_M_AXI_DATA_H2C_01_arvalid;
  output [39:0]ULP_M_AXI_DATA_H2C_01_awaddr;
  output [1:0]ULP_M_AXI_DATA_H2C_01_awburst;
  output [3:0]ULP_M_AXI_DATA_H2C_01_awcache;
  output [1:0]ULP_M_AXI_DATA_H2C_01_awid;
  output [7:0]ULP_M_AXI_DATA_H2C_01_awlen;
  output [0:0]ULP_M_AXI_DATA_H2C_01_awlock;
  output [2:0]ULP_M_AXI_DATA_H2C_01_awprot;
  input ULP_M_AXI_DATA_H2C_01_awready;
  output ULP_M_AXI_DATA_H2C_01_awvalid;
  input [1:0]ULP_M_AXI_DATA_H2C_01_bid;
  output ULP_M_AXI_DATA_H2C_01_bready;
  input [1:0]ULP_M_AXI_DATA_H2C_01_bresp;
  input ULP_M_AXI_DATA_H2C_01_bvalid;
  input [63:0]ULP_M_AXI_DATA_H2C_01_rdata;
  input [1:0]ULP_M_AXI_DATA_H2C_01_rid;
  input ULP_M_AXI_DATA_H2C_01_rlast;
  output ULP_M_AXI_DATA_H2C_01_rready;
  input [1:0]ULP_M_AXI_DATA_H2C_01_rresp;
  input ULP_M_AXI_DATA_H2C_01_rvalid;
  output [63:0]ULP_M_AXI_DATA_H2C_01_wdata;
  output ULP_M_AXI_DATA_H2C_01_wlast;
  input ULP_M_AXI_DATA_H2C_01_wready;
  output [7:0]ULP_M_AXI_DATA_H2C_01_wstrb;
  output ULP_M_AXI_DATA_H2C_01_wvalid;
  output [31:0]ULP_M_AXI_DATA_H2C_02_araddr;
  output [1:0]ULP_M_AXI_DATA_H2C_02_arburst;
  output [3:0]ULP_M_AXI_DATA_H2C_02_arcache;
  output [7:0]ULP_M_AXI_DATA_H2C_02_arlen;
  output [0:0]ULP_M_AXI_DATA_H2C_02_arlock;
  output [2:0]ULP_M_AXI_DATA_H2C_02_arprot;
  input ULP_M_AXI_DATA_H2C_02_arready;
  output ULP_M_AXI_DATA_H2C_02_arvalid;
  output [31:0]ULP_M_AXI_DATA_H2C_02_awaddr;
  output [1:0]ULP_M_AXI_DATA_H2C_02_awburst;
  output [3:0]ULP_M_AXI_DATA_H2C_02_awcache;
  output [7:0]ULP_M_AXI_DATA_H2C_02_awlen;
  output [0:0]ULP_M_AXI_DATA_H2C_02_awlock;
  output [2:0]ULP_M_AXI_DATA_H2C_02_awprot;
  input ULP_M_AXI_DATA_H2C_02_awready;
  output ULP_M_AXI_DATA_H2C_02_awvalid;
  output ULP_M_AXI_DATA_H2C_02_bready;
  input [1:0]ULP_M_AXI_DATA_H2C_02_bresp;
  input ULP_M_AXI_DATA_H2C_02_bvalid;
  input [31:0]ULP_M_AXI_DATA_H2C_02_rdata;
  input ULP_M_AXI_DATA_H2C_02_rlast;
  output ULP_M_AXI_DATA_H2C_02_rready;
  input [1:0]ULP_M_AXI_DATA_H2C_02_rresp;
  input ULP_M_AXI_DATA_H2C_02_rvalid;
  output [31:0]ULP_M_AXI_DATA_H2C_02_wdata;
  output ULP_M_AXI_DATA_H2C_02_wlast;
  input ULP_M_AXI_DATA_H2C_02_wready;
  output [3:0]ULP_M_AXI_DATA_H2C_02_wstrb;
  output ULP_M_AXI_DATA_H2C_02_wvalid;
  output [38:0]ULP_M_AXI_DATA_H2C_03_araddr;
  output [1:0]ULP_M_AXI_DATA_H2C_03_arburst;
  output [3:0]ULP_M_AXI_DATA_H2C_03_arcache;
  output [3:0]ULP_M_AXI_DATA_H2C_03_arid;
  output [7:0]ULP_M_AXI_DATA_H2C_03_arlen;
  output [0:0]ULP_M_AXI_DATA_H2C_03_arlock;
  output [2:0]ULP_M_AXI_DATA_H2C_03_arprot;
  input ULP_M_AXI_DATA_H2C_03_arready;
  output ULP_M_AXI_DATA_H2C_03_arvalid;
  output [38:0]ULP_M_AXI_DATA_H2C_03_awaddr;
  output [1:0]ULP_M_AXI_DATA_H2C_03_awburst;
  output [3:0]ULP_M_AXI_DATA_H2C_03_awcache;
  output [3:0]ULP_M_AXI_DATA_H2C_03_awid;
  output [7:0]ULP_M_AXI_DATA_H2C_03_awlen;
  output [0:0]ULP_M_AXI_DATA_H2C_03_awlock;
  output [2:0]ULP_M_AXI_DATA_H2C_03_awprot;
  input ULP_M_AXI_DATA_H2C_03_awready;
  output ULP_M_AXI_DATA_H2C_03_awvalid;
  input [3:0]ULP_M_AXI_DATA_H2C_03_bid;
  output ULP_M_AXI_DATA_H2C_03_bready;
  input [1:0]ULP_M_AXI_DATA_H2C_03_bresp;
  input ULP_M_AXI_DATA_H2C_03_bvalid;
  input [127:0]ULP_M_AXI_DATA_H2C_03_rdata;
  input [3:0]ULP_M_AXI_DATA_H2C_03_rid;
  input ULP_M_AXI_DATA_H2C_03_rlast;
  output ULP_M_AXI_DATA_H2C_03_rready;
  input [1:0]ULP_M_AXI_DATA_H2C_03_rresp;
  input ULP_M_AXI_DATA_H2C_03_rvalid;
  output [127:0]ULP_M_AXI_DATA_H2C_03_wdata;
  output ULP_M_AXI_DATA_H2C_03_wlast;
  input ULP_M_AXI_DATA_H2C_03_wready;
  output [15:0]ULP_M_AXI_DATA_H2C_03_wstrb;
  output ULP_M_AXI_DATA_H2C_03_wvalid;
  output [2:0]blp_m_data_dna_from_ulp_00;
  output [0:0]blp_m_data_memory_calib_complete_00;
  output [127:0]blp_m_irq_cu_00;
  input blp_s_aclk_ctrl_00;
  input blp_s_aclk_kernel2_ref_clk_00;
  input blp_s_aclk_kernel_ref_clk_00;
  input blp_s_aclk_pcie_00;
  input [0:0]blp_s_aresetn_ctrl_00;
  input [0:0]blp_s_aresetn_kernel_ref_clk_00;
  input [0:0]blp_s_aresetn_pcie_00;
  input [0:0]blp_s_data_clkwiz_kernel_clk_out1_locked_00;
  input [0:0]blp_s_data_dout_dna_00;
  input [2:0]blp_s_data_perstn_out_00;
  input [1:0]blp_s_data_slice_pr_reset_to_ulp_00;
  output ulp_m_aclk_ctrl_00;
  output ulp_m_aclk_kernel2_ref_clk_00;
  output ulp_m_aclk_kernel_ref_clk_00;
  output ulp_m_aclk_pcie_00;
  output [0:0]ulp_m_aresetn_ctrl_00;
  output [0:0]ulp_m_aresetn_kernel_ref_clk_00;
  output [0:0]ulp_m_aresetn_pcie_00;
  output [0:0]ulp_m_data_clkwiz_kernel_clk_out1_locked_00;
  output [0:0]ulp_m_data_dout_dna_00;
  output [2:0]ulp_m_data_perstn_out_00;
  output [1:0]ulp_m_data_slice_pr_reset_to_ulp_00;
  input [2:0]ulp_s_data_dna_from_ulp_00;
  input [0:0]ulp_s_data_memory_calib_complete_00;
  input [127:0]ulp_s_irq_cu_00;


endmodule

(* CHECK_LICENSE_TYPE = "ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0,xlconcat_v2_1_4_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2021.1" *) 
module ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0
   (In0,
    In1,
    In2,
    In3,
    dout);
  input [31:0]In0;
  input [31:0]In1;
  input [31:0]In2;
  input [31:0]In3;
  output [127:0]dout;

  wire \<const0> ;
  wire [31:0]In0;

  assign dout[127] = \<const0> ;
  assign dout[126] = \<const0> ;
  assign dout[125] = \<const0> ;
  assign dout[124] = \<const0> ;
  assign dout[123] = \<const0> ;
  assign dout[122] = \<const0> ;
  assign dout[121] = \<const0> ;
  assign dout[120] = \<const0> ;
  assign dout[119] = \<const0> ;
  assign dout[118] = \<const0> ;
  assign dout[117] = \<const0> ;
  assign dout[116] = \<const0> ;
  assign dout[115] = \<const0> ;
  assign dout[114] = \<const0> ;
  assign dout[113] = \<const0> ;
  assign dout[112] = \<const0> ;
  assign dout[111] = \<const0> ;
  assign dout[110] = \<const0> ;
  assign dout[109] = \<const0> ;
  assign dout[108] = \<const0> ;
  assign dout[107] = \<const0> ;
  assign dout[106] = \<const0> ;
  assign dout[105] = \<const0> ;
  assign dout[104] = \<const0> ;
  assign dout[103] = \<const0> ;
  assign dout[102] = \<const0> ;
  assign dout[101] = \<const0> ;
  assign dout[100] = \<const0> ;
  assign dout[99] = \<const0> ;
  assign dout[98] = \<const0> ;
  assign dout[97] = \<const0> ;
  assign dout[96] = \<const0> ;
  assign dout[95] = \<const0> ;
  assign dout[94] = \<const0> ;
  assign dout[93] = \<const0> ;
  assign dout[92] = \<const0> ;
  assign dout[91] = \<const0> ;
  assign dout[90] = \<const0> ;
  assign dout[89] = \<const0> ;
  assign dout[88] = \<const0> ;
  assign dout[87] = \<const0> ;
  assign dout[86] = \<const0> ;
  assign dout[85] = \<const0> ;
  assign dout[84] = \<const0> ;
  assign dout[83] = \<const0> ;
  assign dout[82] = \<const0> ;
  assign dout[81] = \<const0> ;
  assign dout[80] = \<const0> ;
  assign dout[79] = \<const0> ;
  assign dout[78] = \<const0> ;
  assign dout[77] = \<const0> ;
  assign dout[76] = \<const0> ;
  assign dout[75] = \<const0> ;
  assign dout[74] = \<const0> ;
  assign dout[73] = \<const0> ;
  assign dout[72] = \<const0> ;
  assign dout[71] = \<const0> ;
  assign dout[70] = \<const0> ;
  assign dout[69] = \<const0> ;
  assign dout[68] = \<const0> ;
  assign dout[67] = \<const0> ;
  assign dout[66] = \<const0> ;
  assign dout[65] = \<const0> ;
  assign dout[64] = \<const0> ;
  assign dout[63] = \<const0> ;
  assign dout[62] = \<const0> ;
  assign dout[61] = \<const0> ;
  assign dout[60] = \<const0> ;
  assign dout[59] = \<const0> ;
  assign dout[58] = \<const0> ;
  assign dout[57] = \<const0> ;
  assign dout[56] = \<const0> ;
  assign dout[55] = \<const0> ;
  assign dout[54] = \<const0> ;
  assign dout[53] = \<const0> ;
  assign dout[52] = \<const0> ;
  assign dout[51] = \<const0> ;
  assign dout[50] = \<const0> ;
  assign dout[49] = \<const0> ;
  assign dout[48] = \<const0> ;
  assign dout[47] = \<const0> ;
  assign dout[46] = \<const0> ;
  assign dout[45] = \<const0> ;
  assign dout[44] = \<const0> ;
  assign dout[43] = \<const0> ;
  assign dout[42] = \<const0> ;
  assign dout[41] = \<const0> ;
  assign dout[40] = \<const0> ;
  assign dout[39] = \<const0> ;
  assign dout[38] = \<const0> ;
  assign dout[37] = \<const0> ;
  assign dout[36] = \<const0> ;
  assign dout[35] = \<const0> ;
  assign dout[34] = \<const0> ;
  assign dout[33] = \<const0> ;
  assign dout[32] = \<const0> ;
  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29] = \<const0> ;
  assign dout[28] = \<const0> ;
  assign dout[27] = \<const0> ;
  assign dout[26] = \<const0> ;
  assign dout[25] = \<const0> ;
  assign dout[24] = \<const0> ;
  assign dout[23] = \<const0> ;
  assign dout[22] = \<const0> ;
  assign dout[21] = \<const0> ;
  assign dout[20] = \<const0> ;
  assign dout[19] = \<const0> ;
  assign dout[18] = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = In0[1];
  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0,xlconcat_v2_1_4_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2021.1" *) 
module ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0
   (In0,
    In1,
    In2,
    In3,
    In4,
    In5,
    In6,
    In7,
    In8,
    In9,
    In10,
    In11,
    In12,
    In13,
    In14,
    In15,
    In16,
    In17,
    In18,
    In19,
    In20,
    In21,
    In22,
    In23,
    In24,
    In25,
    In26,
    In27,
    In28,
    In29,
    In30,
    In31,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  input [0:0]In3;
  input [0:0]In4;
  input [0:0]In5;
  input [0:0]In6;
  input [0:0]In7;
  input [0:0]In8;
  input [0:0]In9;
  input [0:0]In10;
  input [0:0]In11;
  input [0:0]In12;
  input [0:0]In13;
  input [0:0]In14;
  input [0:0]In15;
  input [0:0]In16;
  input [0:0]In17;
  input [0:0]In18;
  input [0:0]In19;
  input [0:0]In20;
  input [0:0]In21;
  input [0:0]In22;
  input [0:0]In23;
  input [0:0]In24;
  input [0:0]In25;
  input [0:0]In26;
  input [0:0]In27;
  input [0:0]In28;
  input [0:0]In29;
  input [0:0]In30;
  input [0:0]In31;
  output [31:0]dout;

  wire \<const0> ;
  wire [0:0]In1;

  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29] = \<const0> ;
  assign dout[28] = \<const0> ;
  assign dout[27] = \<const0> ;
  assign dout[26] = \<const0> ;
  assign dout[25] = \<const0> ;
  assign dout[24] = \<const0> ;
  assign dout[23] = \<const0> ;
  assign dout[22] = \<const0> ;
  assign dout[21] = \<const0> ;
  assign dout[20] = \<const0> ;
  assign dout[19] = \<const0> ;
  assign dout[18] = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = In1;
  assign dout[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
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

  wire [8:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [8:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire M01_ACLK;
  wire M01_ARESETN;
  wire [6:0]M01_AXI_araddr;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [6:0]M01_AXI_awaddr;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [24:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire S00_AXI_arready;
  wire S00_AXI_arvalid;
  wire [24:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire S00_AXI_awready;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [24:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [24:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [24:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire xbar_to_m00_couplers_ARVALID;
  wire [24:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire xbar_to_m00_couplers_AWVALID;
  wire xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire xbar_to_m00_couplers_WVALID;
  wire [49:25]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire xbar_to_m01_couplers_ARVALID;
  wire [49:25]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire xbar_to_m01_couplers_AWVALID;
  wire xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire xbar_to_m01_couplers_WVALID;

  ulp_m00_couplers_imp_1DIICHO m00_couplers
       (.M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .S00_ACLK(S00_ACLK),
        .S00_ARESETN(S00_ARESETN),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR[8:0]),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR[8:0]),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_arready(xbar_to_m00_couplers_ARREADY),
        .s_axi_awready(xbar_to_m00_couplers_AWREADY),
        .s_axi_bresp(xbar_to_m00_couplers_BRESP),
        .s_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .s_axi_rdata(xbar_to_m00_couplers_RDATA),
        .s_axi_rresp(xbar_to_m00_couplers_RRESP),
        .s_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .s_axi_wready(xbar_to_m00_couplers_WREADY));
  ulp_m01_couplers_imp_V1OR3T m01_couplers
       (.M01_ACLK(M01_ACLK),
        .M01_ARESETN(M01_ARESETN),
        .M01_AXI_araddr(M01_AXI_araddr),
        .M01_AXI_arready(M01_AXI_arready),
        .M01_AXI_arvalid(M01_AXI_arvalid),
        .M01_AXI_awaddr(M01_AXI_awaddr),
        .M01_AXI_awready(M01_AXI_awready),
        .M01_AXI_awvalid(M01_AXI_awvalid),
        .M01_AXI_bready(M01_AXI_bready),
        .M01_AXI_bresp(M01_AXI_bresp),
        .M01_AXI_bvalid(M01_AXI_bvalid),
        .M01_AXI_rdata(M01_AXI_rdata),
        .M01_AXI_rready(M01_AXI_rready),
        .M01_AXI_rresp(M01_AXI_rresp),
        .M01_AXI_rvalid(M01_AXI_rvalid),
        .M01_AXI_wdata(M01_AXI_wdata),
        .M01_AXI_wready(M01_AXI_wready),
        .M01_AXI_wstrb(M01_AXI_wstrb),
        .M01_AXI_wvalid(M01_AXI_wvalid),
        .S00_ACLK(S00_ACLK),
        .S00_ARESETN(S00_ARESETN),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR[31:25]),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR[31:25]),
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
  ulp_s00_couplers_imp_7LJ24M s00_couplers
       (.S00_ACLK(S00_ACLK),
        .S00_ARESETN(S00_ARESETN),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .m_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .m_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .m_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .m_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .m_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .m_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .m_axi_bready(s00_couplers_to_xbar_BREADY),
        .m_axi_rready(s00_couplers_to_xbar_RREADY),
        .m_axi_wdata(s00_couplers_to_xbar_WDATA),
        .m_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .m_axi_wvalid(s00_couplers_to_xbar_WVALID),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wready(s00_couplers_to_xbar_WREADY));
  (* X_CORE_INFO = "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1" *) 
  ulp_xbar_5 xbar
       (.aclk(S00_ACLK),
        .aresetn(S00_ARESETN),
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

(* X_CORE_INFO = "krnl_ro_rtl_int,Vivado 2021.1" *) 
module ulp_krnl_ro_rtl_1_0
   (ap_clk,
    ap_rst_n,
    m_axi_gmem_AWVALID,
    m_axi_gmem_AWREADY,
    m_axi_gmem_AWADDR,
    m_axi_gmem_AWID,
    m_axi_gmem_AWLEN,
    m_axi_gmem_AWSIZE,
    m_axi_gmem_AWBURST,
    m_axi_gmem_AWLOCK,
    m_axi_gmem_AWCACHE,
    m_axi_gmem_AWPROT,
    m_axi_gmem_AWQOS,
    m_axi_gmem_AWREGION,
    m_axi_gmem_WVALID,
    m_axi_gmem_WREADY,
    m_axi_gmem_WDATA,
    m_axi_gmem_WSTRB,
    m_axi_gmem_WLAST,
    m_axi_gmem_ARVALID,
    m_axi_gmem_ARREADY,
    m_axi_gmem_ARADDR,
    m_axi_gmem_ARID,
    m_axi_gmem_ARLEN,
    m_axi_gmem_ARSIZE,
    m_axi_gmem_ARBURST,
    m_axi_gmem_ARLOCK,
    m_axi_gmem_ARCACHE,
    m_axi_gmem_ARPROT,
    m_axi_gmem_ARQOS,
    m_axi_gmem_ARREGION,
    m_axi_gmem_RVALID,
    m_axi_gmem_RREADY,
    m_axi_gmem_RDATA,
    m_axi_gmem_RLAST,
    m_axi_gmem_RID,
    m_axi_gmem_RRESP,
    m_axi_gmem_BVALID,
    m_axi_gmem_BREADY,
    m_axi_gmem_BRESP,
    m_axi_gmem_BID,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  output m_axi_gmem_AWVALID;
  input m_axi_gmem_AWREADY;
  output [63:0]m_axi_gmem_AWADDR;
  output [0:0]m_axi_gmem_AWID;
  output [7:0]m_axi_gmem_AWLEN;
  output [2:0]m_axi_gmem_AWSIZE;
  output [1:0]m_axi_gmem_AWBURST;
  output [1:0]m_axi_gmem_AWLOCK;
  output [3:0]m_axi_gmem_AWCACHE;
  output [2:0]m_axi_gmem_AWPROT;
  output [3:0]m_axi_gmem_AWQOS;
  output [3:0]m_axi_gmem_AWREGION;
  output m_axi_gmem_WVALID;
  input m_axi_gmem_WREADY;
  output [31:0]m_axi_gmem_WDATA;
  output [3:0]m_axi_gmem_WSTRB;
  output m_axi_gmem_WLAST;
  output m_axi_gmem_ARVALID;
  input m_axi_gmem_ARREADY;
  output [63:0]m_axi_gmem_ARADDR;
  output [0:0]m_axi_gmem_ARID;
  output [7:0]m_axi_gmem_ARLEN;
  output [2:0]m_axi_gmem_ARSIZE;
  output [1:0]m_axi_gmem_ARBURST;
  output [1:0]m_axi_gmem_ARLOCK;
  output [3:0]m_axi_gmem_ARCACHE;
  output [2:0]m_axi_gmem_ARPROT;
  output [3:0]m_axi_gmem_ARQOS;
  output [3:0]m_axi_gmem_ARREGION;
  input m_axi_gmem_RVALID;
  output m_axi_gmem_RREADY;
  input [31:0]m_axi_gmem_RDATA;
  input m_axi_gmem_RLAST;
  input [0:0]m_axi_gmem_RID;
  input [1:0]m_axi_gmem_RRESP;
  input m_axi_gmem_BVALID;
  output m_axi_gmem_BREADY;
  input [1:0]m_axi_gmem_BRESP;
  input [0:0]m_axi_gmem_BID;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [6:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [6:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;


endmodule

(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.1" *) 
module ulp_logic_reset_op_0
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;


endmodule

(* ORIG_REF_NAME = "m00_couplers_imp_1DIICHO" *) 
module ulp_m00_couplers_imp_1DIICHO
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M00_AXI_awaddr,
    M00_AXI_awvalid,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arvalid,
    M00_AXI_rready,
    S00_ACLK,
    S00_ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M00_AXI_awready,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [8:0]M00_AXI_awaddr;
  output M00_AXI_awvalid;
  output [31:0]M00_AXI_wdata;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  output M00_AXI_bready;
  output [8:0]M00_AXI_araddr;
  output M00_AXI_arvalid;
  output M00_AXI_rready;
  input S00_ACLK;
  input S00_ARESETN;
  input [8:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [8:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M00_AXI_awready;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_arready;
  input [31:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;

  wire [8:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [8:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [8:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [8:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [2:0]NLW_m00_regslice_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_m00_regslice_m_axi_awprot_UNCONNECTED;

  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_m00_regslice_0 m00_regslice
       (.aclk(S00_ACLK),
        .aresetn(S00_ARESETN),
        .m_axi_araddr(M00_AXI_araddr),
        .m_axi_arprot(NLW_m00_regslice_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M00_AXI_arready),
        .m_axi_arvalid(M00_AXI_arvalid),
        .m_axi_awaddr(M00_AXI_awaddr),
        .m_axi_awprot(NLW_m00_regslice_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M00_AXI_awready),
        .m_axi_awvalid(M00_AXI_awvalid),
        .m_axi_bready(M00_AXI_bready),
        .m_axi_bresp(M00_AXI_bresp),
        .m_axi_bvalid(M00_AXI_bvalid),
        .m_axi_rdata(M00_AXI_rdata),
        .m_axi_rready(M00_AXI_rready),
        .m_axi_rresp(M00_AXI_rresp),
        .m_axi_rvalid(M00_AXI_rvalid),
        .m_axi_wdata(M00_AXI_wdata),
        .m_axi_wready(M00_AXI_wready),
        .m_axi_wstrb(M00_AXI_wstrb),
        .m_axi_wvalid(M00_AXI_wvalid),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "m00_couplers_imp_1MIVJUX" *) 
module ulp_m00_couplers_imp_1MIVJUX
   (s_axi_awready,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    M00_AXI_awid,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_bready,
    M00_AXI_arid,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_rready,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_awready,
    M00_AXI_wready,
    M00_AXI_bid,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_arready,
    M00_AXI_rid,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [5:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [5:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  output [5:0]M00_AXI_awid;
  output [31:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  output M00_AXI_bready;
  output [5:0]M00_AXI_arid;
  output [31:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  output M00_AXI_rready;
  input ACLK;
  input ARESETN;
  input [5:0]m_axi_awid;
  input [31:0]m_axi_awaddr;
  input [7:0]m_axi_awlen;
  input [2:0]m_axi_awsize;
  input [1:0]m_axi_awburst;
  input [0:0]m_axi_awlock;
  input [3:0]m_axi_awcache;
  input [2:0]m_axi_awprot;
  input [3:0]m_axi_awregion;
  input [3:0]m_axi_awqos;
  input [0:0]m_axi_awvalid;
  input [511:0]m_axi_wdata;
  input [63:0]m_axi_wstrb;
  input [0:0]m_axi_wlast;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [5:0]m_axi_arid;
  input [31:0]m_axi_araddr;
  input [7:0]m_axi_arlen;
  input [2:0]m_axi_arsize;
  input [1:0]m_axi_arburst;
  input [0:0]m_axi_arlock;
  input [3:0]m_axi_arcache;
  input [2:0]m_axi_arprot;
  input [3:0]m_axi_arregion;
  input [3:0]m_axi_arqos;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M00_ACLK;
  input M00_ARESETN;
  input M00_AXI_awready;
  input M00_AXI_wready;
  input [5:0]M00_AXI_bid;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_arready;
  input [5:0]M00_AXI_rid;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M00_ACLK;
  wire M00_ARESETN;
  wire [31:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [5:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [31:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [5:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire [5:0]M00_AXI_bid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire [5:0]M00_AXI_rid;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [5:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire [0:0]m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [5:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [511:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [63:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [5:0]s_axi_bid;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [511:0]s_axi_rdata;
  wire [5:0]s_axi_rid;
  wire s_axi_rlast;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire [3:0]NLW_auto_cc_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_auto_cc_m_axi_awregion_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1" *) 
  ulp_auto_cc_2 auto_cc
       (.m_axi_aclk(M00_ACLK),
        .m_axi_araddr(M00_AXI_araddr),
        .m_axi_arburst(M00_AXI_arburst),
        .m_axi_arcache(M00_AXI_arcache),
        .m_axi_aresetn(M00_ARESETN),
        .m_axi_arid(M00_AXI_arid),
        .m_axi_arlen(M00_AXI_arlen),
        .m_axi_arlock(M00_AXI_arlock),
        .m_axi_arprot(M00_AXI_arprot),
        .m_axi_arqos(M00_AXI_arqos),
        .m_axi_arready(M00_AXI_arready),
        .m_axi_arregion(NLW_auto_cc_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(M00_AXI_arsize),
        .m_axi_arvalid(M00_AXI_arvalid),
        .m_axi_awaddr(M00_AXI_awaddr),
        .m_axi_awburst(M00_AXI_awburst),
        .m_axi_awcache(M00_AXI_awcache),
        .m_axi_awid(M00_AXI_awid),
        .m_axi_awlen(M00_AXI_awlen),
        .m_axi_awlock(M00_AXI_awlock),
        .m_axi_awprot(M00_AXI_awprot),
        .m_axi_awqos(M00_AXI_awqos),
        .m_axi_awready(M00_AXI_awready),
        .m_axi_awregion(NLW_auto_cc_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(M00_AXI_awsize),
        .m_axi_awvalid(M00_AXI_awvalid),
        .m_axi_bid(M00_AXI_bid),
        .m_axi_bready(M00_AXI_bready),
        .m_axi_bresp(M00_AXI_bresp),
        .m_axi_bvalid(M00_AXI_bvalid),
        .m_axi_rdata(M00_AXI_rdata),
        .m_axi_rid(M00_AXI_rid),
        .m_axi_rlast(M00_AXI_rlast),
        .m_axi_rready(M00_AXI_rready),
        .m_axi_rresp(M00_AXI_rresp),
        .m_axi_rvalid(M00_AXI_rvalid),
        .m_axi_wdata(M00_AXI_wdata),
        .m_axi_wlast(M00_AXI_wlast),
        .m_axi_wready(M00_AXI_wready),
        .m_axi_wstrb(M00_AXI_wstrb),
        .m_axi_wvalid(M00_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr(m_axi_araddr),
        .s_axi_arburst(m_axi_arburst),
        .s_axi_arcache(m_axi_arcache),
        .s_axi_aresetn(ARESETN),
        .s_axi_arid(m_axi_arid),
        .s_axi_arlen(m_axi_arlen),
        .s_axi_arlock(m_axi_arlock),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arqos(m_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion(m_axi_arregion),
        .s_axi_arsize(m_axi_arsize),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr(m_axi_awaddr),
        .s_axi_awburst(m_axi_awburst),
        .s_axi_awcache(m_axi_awcache),
        .s_axi_awid(m_axi_awid),
        .s_axi_awlen(m_axi_awlen),
        .s_axi_awlock(m_axi_awlock),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awqos(m_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion(m_axi_awregion),
        .s_axi_awsize(m_axi_awsize),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wlast(m_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "m00_couplers_imp_1T9TXXO" *) 
module ulp_m00_couplers_imp_1T9TXXO
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awvalid,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arvalid,
    M00_AXI_rready,
    ACLK,
    ARESETN,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_awready,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rvalid);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output [25:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  output M00_AXI_awvalid;
  output [31:0]M00_AXI_wdata;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  output M00_AXI_bready;
  output [25:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  output M00_AXI_arvalid;
  output M00_AXI_rready;
  input ACLK;
  input ARESETN;
  input [24:0]m_axi_awaddr;
  input [2:0]m_axi_awprot;
  input [0:0]m_axi_awvalid;
  input [31:0]m_axi_wdata;
  input [3:0]m_axi_wstrb;
  input [0:0]m_axi_wvalid;
  input [0:0]m_axi_bready;
  input [24:0]m_axi_araddr;
  input [2:0]m_axi_arprot;
  input [0:0]m_axi_arvalid;
  input [0:0]m_axi_rready;
  input M00_ACLK;
  input M00_ARESETN;
  input M00_AXI_awready;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_arready;
  input [31:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;

  wire ACLK;
  wire ARESETN;
  wire M00_ACLK;
  wire M00_ARESETN;
  wire [25:0]M00_AXI_araddr;
  wire [2:0]M00_AXI_arprot;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [25:0]M00_AXI_awaddr;
  wire [2:0]M00_AXI_awprot;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [24:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire [0:0]m_axi_arvalid;
  wire [24:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire s_axi_arready;
  wire s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_wready;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1" *) 
  ulp_auto_cc_0 auto_cc
       (.m_axi_aclk(M00_ACLK),
        .m_axi_araddr(M00_AXI_araddr),
        .m_axi_aresetn(M00_ARESETN),
        .m_axi_arprot(M00_AXI_arprot),
        .m_axi_arready(M00_AXI_arready),
        .m_axi_arvalid(M00_AXI_arvalid),
        .m_axi_awaddr(M00_AXI_awaddr),
        .m_axi_awprot(M00_AXI_awprot),
        .m_axi_awready(M00_AXI_awready),
        .m_axi_awvalid(M00_AXI_awvalid),
        .m_axi_bready(M00_AXI_bready),
        .m_axi_bresp(M00_AXI_bresp),
        .m_axi_bvalid(M00_AXI_bvalid),
        .m_axi_rdata(M00_AXI_rdata),
        .m_axi_rready(M00_AXI_rready),
        .m_axi_rresp(M00_AXI_rresp),
        .m_axi_rvalid(M00_AXI_rvalid),
        .m_axi_wdata(M00_AXI_wdata),
        .m_axi_wready(M00_AXI_wready),
        .m_axi_wstrb(M00_AXI_wstrb),
        .m_axi_wvalid(M00_AXI_wvalid),
        .s_axi_aclk(ACLK),
        .s_axi_araddr({1'b0,m_axi_araddr}),
        .s_axi_aresetn(ARESETN),
        .s_axi_arprot(m_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(m_axi_arvalid),
        .s_axi_awaddr({1'b0,m_axi_awaddr}),
        .s_axi_awprot(m_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(m_axi_awvalid),
        .s_axi_bready(m_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(m_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(m_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(m_axi_wstrb),
        .s_axi_wvalid(m_axi_wvalid));
endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_m00_regslice_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [8:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [8:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [8:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* ORIG_REF_NAME = "m01_couplers_imp_V1OR3T" *) 
module ulp_m01_couplers_imp_V1OR3T
   (S_AXI_awready,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rvalid,
    M01_AXI_awaddr,
    M01_AXI_awvalid,
    M01_AXI_wdata,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M01_AXI_bready,
    M01_AXI_araddr,
    M01_AXI_arvalid,
    M01_AXI_rready,
    S00_ACLK,
    S00_ARESETN,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awvalid,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wvalid,
    S_AXI_bready,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arvalid,
    S_AXI_rready,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_awready,
    M01_AXI_wready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_arready,
    M01_AXI_rdata,
    M01_AXI_rresp,
    M01_AXI_rvalid);
  output S_AXI_awready;
  output S_AXI_wready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_arready;
  output [31:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  output [6:0]M01_AXI_awaddr;
  output M01_AXI_awvalid;
  output [31:0]M01_AXI_wdata;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output M01_AXI_bready;
  output [6:0]M01_AXI_araddr;
  output M01_AXI_arvalid;
  output M01_AXI_rready;
  input S00_ACLK;
  input S00_ARESETN;
  input [6:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  input S_AXI_awvalid;
  input [31:0]S_AXI_wdata;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input S_AXI_bready;
  input [6:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  input S_AXI_arvalid;
  input S_AXI_rready;
  input M01_ACLK;
  input M01_ARESETN;
  input M01_AXI_awready;
  input M01_AXI_wready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input M01_AXI_arready;
  input [31:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;

  wire M01_ACLK;
  wire M01_ARESETN;
  wire [6:0]M01_AXI_araddr;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [6:0]M01_AXI_awaddr;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [6:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [6:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
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
  wire [2:0]NLW_m01_regslice_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_m01_regslice_m_axi_awprot_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1" *) 
  ulp_auto_cc_1 auto_cc
       (.m_axi_aclk(M01_ACLK),
        .m_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .m_axi_aresetn(M01_ARESETN),
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
        .s_axi_aclk(S00_ACLK),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_aresetn(S00_ARESETN),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_m01_regslice_0 m01_regslice
       (.aclk(M01_ACLK),
        .aresetn(M01_ARESETN),
        .m_axi_araddr(M01_AXI_araddr),
        .m_axi_arprot(NLW_m01_regslice_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(M01_AXI_arready),
        .m_axi_arvalid(M01_AXI_arvalid),
        .m_axi_awaddr(M01_AXI_awaddr),
        .m_axi_awprot(NLW_m01_regslice_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(M01_AXI_awready),
        .m_axi_awvalid(M01_AXI_awvalid),
        .m_axi_bready(M01_AXI_bready),
        .m_axi_bresp(M01_AXI_bresp),
        .m_axi_bvalid(M01_AXI_bvalid),
        .m_axi_rdata(M01_AXI_rdata),
        .m_axi_rready(M01_AXI_rready),
        .m_axi_rresp(M01_AXI_rresp),
        .m_axi_rvalid(M01_AXI_rvalid),
        .m_axi_wdata(M01_AXI_wdata),
        .m_axi_wready(M01_AXI_wready),
        .m_axi_wstrb(M01_AXI_wstrb),
        .m_axi_wvalid(M01_AXI_wvalid),
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

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_m01_regslice_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [6:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [6:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [6:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [6:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2021.1" *) 
module ulp_psreset_ddrmem_n_1_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2021.1" *) 
module ulp_psreset_gate_pr_control_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2021.1" *) 
module ulp_psreset_gate_pr_data_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2021.1" *) 
module ulp_psreset_gate_pr_ddrmem_1_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2021.1" *) 
module ulp_psreset_gate_pr_kernel2_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2021.1" *) 
module ulp_psreset_gate_pr_kernel_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_regslice_control_mgntpf_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [25:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [25:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [25:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [25:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_regslice_control_userpf_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [24:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [24:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [24:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [24:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_regslice_data_static1_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_regslice_data_static_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_regslice_periph_null_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [1:0]s_axi_awid;
  input [39:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [1:0]s_axi_arid;
  input [39:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [1:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [1:0]m_axi_awid;
  output [39:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [1:0]m_axi_arid;
  output [39:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [1:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* ORIG_REF_NAME = "reset_controllers_imp_440OZ2" *) 
module ulp_reset_controllers_imp_440OZ2
   (logic_reset_op_Res,
    psreset_gate_pr_control_interconnect_aresetn,
    psreset_gate_pr_data_interconnect_aresetn,
    interconnect_aresetn,
    psreset_gate_pr_kernel_interconnect_aresetn,
    peripheral_aresetn,
    iob_static_perst_n_out,
    clkwiz_sysclks_clk_out2,
    Dout,
    clkwiz_sysclks_locked_slr1,
    dma_pcie_axi_aclk,
    pcie_user_lnk_up_slr1,
    c0_ddr4_ui_clk,
    aux_reset_in,
    clkwiz_kernel_clk_out1,
    clkwiz_kernel_locked_slr1,
    clkwiz_kernel2_clk_out1,
    clkwiz_kernel2_locked_slr1);
  output [0:0]logic_reset_op_Res;
  output [0:0]psreset_gate_pr_control_interconnect_aresetn;
  output [0:0]psreset_gate_pr_data_interconnect_aresetn;
  output [0:0]interconnect_aresetn;
  output [0:0]psreset_gate_pr_kernel_interconnect_aresetn;
  output [0:0]peripheral_aresetn;
  input [0:0]iob_static_perst_n_out;
  input clkwiz_sysclks_clk_out2;
  input [0:0]Dout;
  input clkwiz_sysclks_locked_slr1;
  input dma_pcie_axi_aclk;
  input pcie_user_lnk_up_slr1;
  input c0_ddr4_ui_clk;
  input aux_reset_in;
  input clkwiz_kernel_clk_out1;
  input clkwiz_kernel_locked_slr1;
  input clkwiz_kernel2_clk_out1;
  input clkwiz_kernel2_locked_slr1;

  wire [0:0]Dout;
  wire aux_reset_in;
  wire c0_ddr4_ui_clk;
  wire clkwiz_kernel2_clk_out1;
  wire clkwiz_kernel2_locked_slr1;
  wire clkwiz_kernel_clk_out1;
  wire clkwiz_kernel_locked_slr1;
  wire clkwiz_sysclks_clk_out2;
  wire clkwiz_sysclks_locked_slr1;
  wire dma_pcie_axi_aclk;
  wire [0:0]interconnect_aresetn;
  wire [0:0]iob_static_perst_n_out;
  wire [0:0]logic_reset_op_Res;
  wire pcie_user_lnk_up_slr1;
  wire [0:0]peripheral_aresetn;
  wire [0:0]psreset_gate_pr_control_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_data_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_kernel_interconnect_aresetn;
  wire NLW_psreset_gate_pr_control_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_control_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_control_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_control_peripheral_reset_UNCONNECTED;
  wire NLW_psreset_gate_pr_data_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_data_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_data_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_data_peripheral_reset_UNCONNECTED;
  wire NLW_psreset_gate_pr_ddrmem_1_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_ddrmem_1_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_ddrmem_1_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_ddrmem_1_peripheral_reset_UNCONNECTED;
  wire NLW_psreset_gate_pr_kernel_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_kernel_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_kernel_peripheral_reset_UNCONNECTED;
  wire NLW_psreset_gate_pr_kernel2_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_kernel2_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_kernel2_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_kernel2_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psreset_gate_pr_kernel2_peripheral_reset_UNCONNECTED;

  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.1" *) 
  ulp_logic_reset_op_0 logic_reset_op
       (.Op1(iob_static_perst_n_out),
        .Res(logic_reset_op_Res));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2021.1" *) 
  ulp_psreset_gate_pr_control_0 psreset_gate_pr_control
       (.aux_reset_in(clkwiz_sysclks_locked_slr1),
        .bus_struct_reset(NLW_psreset_gate_pr_control_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(Dout),
        .interconnect_aresetn(psreset_gate_pr_control_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_gate_pr_control_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_gate_pr_control_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_gate_pr_control_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(clkwiz_sysclks_clk_out2));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2021.1" *) 
  ulp_psreset_gate_pr_data_0 psreset_gate_pr_data
       (.aux_reset_in(pcie_user_lnk_up_slr1),
        .bus_struct_reset(NLW_psreset_gate_pr_data_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(Dout),
        .interconnect_aresetn(psreset_gate_pr_data_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_gate_pr_data_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_gate_pr_data_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_gate_pr_data_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(dma_pcie_axi_aclk));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2021.1" *) 
  ulp_psreset_gate_pr_ddrmem_1_0 psreset_gate_pr_ddrmem_1
       (.aux_reset_in(aux_reset_in),
        .bus_struct_reset(NLW_psreset_gate_pr_ddrmem_1_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(Dout),
        .interconnect_aresetn(interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_gate_pr_ddrmem_1_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_gate_pr_ddrmem_1_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_gate_pr_ddrmem_1_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(c0_ddr4_ui_clk));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2021.1" *) 
  ulp_psreset_gate_pr_kernel_0 psreset_gate_pr_kernel
       (.aux_reset_in(clkwiz_kernel_locked_slr1),
        .bus_struct_reset(NLW_psreset_gate_pr_kernel_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(Dout),
        .interconnect_aresetn(psreset_gate_pr_kernel_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_gate_pr_kernel_mb_reset_UNCONNECTED),
        .peripheral_aresetn(peripheral_aresetn),
        .peripheral_reset(NLW_psreset_gate_pr_kernel_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(clkwiz_kernel_clk_out1));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2021.1" *) 
  ulp_psreset_gate_pr_kernel2_0 psreset_gate_pr_kernel2
       (.aux_reset_in(clkwiz_kernel2_locked_slr1),
        .bus_struct_reset(NLW_psreset_gate_pr_kernel2_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(Dout),
        .interconnect_aresetn(NLW_psreset_gate_pr_kernel2_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psreset_gate_pr_kernel2_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psreset_gate_pr_kernel2_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psreset_gate_pr_kernel2_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(clkwiz_kernel2_clk_out1));
endmodule

(* ORIG_REF_NAME = "s00_couplers_imp_1Y0QJAO" *) 
module ulp_s00_couplers_imp_1Y0QJAO
   (S00_AXI_awready,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_rready,
    ACLK,
    S01_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awregion,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arregion,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_rready,
    s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid);
  output S00_AXI_awready;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output S00_AXI_arready;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  output m_axi_rready;
  input ACLK;
  input S01_ARESETN;
  input [38:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awregion;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  input S00_AXI_bready;
  input [38:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arregion;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  input S00_AXI_rready;
  input [0:0]s_axi_awready;
  input [0:0]s_axi_wready;
  input [1:0]s_axi_bresp;
  input [0:0]s_axi_bvalid;
  input [0:0]s_axi_arready;
  input [511:0]s_axi_rdata;
  input [1:0]s_axi_rresp;
  input [0:0]s_axi_rlast;
  input [0:0]s_axi_rvalid;

  wire ACLK;
  wire [38:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [38:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire S01_ARESETN;
  wire [38:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [38:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_rready;
  wire [511:0]m_axi_wdata;
  wire m_axi_wlast;
  wire [63:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [511:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [0:0]s_axi_wready;
  wire [3:0]NLW_s00_regslice_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_s00_regslice_m_axi_awregion_UNCONNECTED;

  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_s00_regslice_19 s00_regslice
       (.aclk(ACLK),
        .aresetn(S01_ARESETN),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(s_axi_arready),
        .m_axi_arregion(NLW_s00_regslice_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(s_axi_awready),
        .m_axi_awregion(NLW_s00_regslice_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(s_axi_bresp),
        .m_axi_bvalid(s_axi_bvalid),
        .m_axi_rdata(s_axi_rdata),
        .m_axi_rlast(s_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(s_axi_rresp),
        .m_axi_rvalid(s_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(s_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arburst(S00_AXI_arburst),
        .s_axi_arcache(S00_AXI_arcache),
        .s_axi_arlen(S00_AXI_arlen),
        .s_axi_arlock(S00_AXI_arlock),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arqos(S00_AXI_arqos),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arregion(S00_AXI_arregion),
        .s_axi_arsize(S00_AXI_arsize),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awburst(S00_AXI_awburst),
        .s_axi_awcache(S00_AXI_awcache),
        .s_axi_awlen(S00_AXI_awlen),
        .s_axi_awlock(S00_AXI_awlock),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awqos(S00_AXI_awqos),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awregion(S00_AXI_awregion),
        .s_axi_awsize(S00_AXI_awsize),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rlast(S00_AXI_rlast),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wlast(S00_AXI_wlast),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
endmodule

(* ORIG_REF_NAME = "s00_couplers_imp_7LJ24M" *) 
module ulp_s00_couplers_imp_7LJ24M
   (S00_AXI_awready,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_rready,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awvalid,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arvalid,
    S00_AXI_rready,
    s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid);
  output S00_AXI_awready;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output S00_AXI_arready;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  output [24:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  output m_axi_bready;
  output [24:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  output m_axi_rready;
  input S00_ACLK;
  input S00_ARESETN;
  input [24:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  input S00_AXI_awvalid;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S00_AXI_bready;
  input [24:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  input S00_AXI_arvalid;
  input S00_AXI_rready;
  input [0:0]s_axi_awready;
  input [0:0]s_axi_wready;
  input [1:0]s_axi_bresp;
  input [0:0]s_axi_bvalid;
  input [0:0]s_axi_arready;
  input [31:0]s_axi_rdata;
  input [1:0]s_axi_rresp;
  input [0:0]s_axi_rvalid;

  wire S00_ACLK;
  wire S00_ARESETN;
  wire [24:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire S00_AXI_arready;
  wire S00_AXI_arvalid;
  wire [24:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire S00_AXI_awready;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [24:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arvalid;
  wire [24:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_rready;
  wire [31:0]m_axi_wdata;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [0:0]s_axi_wready;

  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_s00_regslice_22 s00_regslice
       (.aclk(S00_ACLK),
        .aresetn(S00_ARESETN),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arready(s_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awready(s_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(s_axi_bresp),
        .m_axi_bvalid(s_axi_bvalid),
        .m_axi_rdata(s_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(s_axi_rresp),
        .m_axi_rvalid(s_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(s_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
endmodule

(* ORIG_REF_NAME = "s00_couplers_imp_U66VNK" *) 
module ulp_s00_couplers_imp_U66VNK
   (S00_AXI_awready,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awregion,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arregion,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_rready,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awregion,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arregion,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_rready,
    M00_AXI_awready,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid);
  output S00_AXI_awready;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output S00_AXI_arready;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  output [38:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awregion;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  output M00_AXI_bready;
  output [38:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arregion;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  output M00_AXI_rready;
  input S00_ACLK;
  input S00_ARESETN;
  input [38:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awregion;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  input S00_AXI_bready;
  input [38:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arregion;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  input S00_AXI_rready;
  input M00_AXI_awready;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_arready;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;

  wire [38:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [38:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire S00_ACLK;
  wire S00_ARESETN;
  wire [38:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [38:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;

  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_s00_regslice_20 s00_regslice
       (.aclk(S00_ACLK),
        .aresetn(S00_ARESETN),
        .m_axi_araddr(M00_AXI_araddr),
        .m_axi_arburst(M00_AXI_arburst),
        .m_axi_arcache(M00_AXI_arcache),
        .m_axi_arlen(M00_AXI_arlen),
        .m_axi_arlock(M00_AXI_arlock),
        .m_axi_arprot(M00_AXI_arprot),
        .m_axi_arqos(M00_AXI_arqos),
        .m_axi_arready(M00_AXI_arready),
        .m_axi_arregion(M00_AXI_arregion),
        .m_axi_arsize(M00_AXI_arsize),
        .m_axi_arvalid(M00_AXI_arvalid),
        .m_axi_awaddr(M00_AXI_awaddr),
        .m_axi_awburst(M00_AXI_awburst),
        .m_axi_awcache(M00_AXI_awcache),
        .m_axi_awlen(M00_AXI_awlen),
        .m_axi_awlock(M00_AXI_awlock),
        .m_axi_awprot(M00_AXI_awprot),
        .m_axi_awqos(M00_AXI_awqos),
        .m_axi_awready(M00_AXI_awready),
        .m_axi_awregion(M00_AXI_awregion),
        .m_axi_awsize(M00_AXI_awsize),
        .m_axi_awvalid(M00_AXI_awvalid),
        .m_axi_bready(M00_AXI_bready),
        .m_axi_bresp(M00_AXI_bresp),
        .m_axi_bvalid(M00_AXI_bvalid),
        .m_axi_rdata(M00_AXI_rdata),
        .m_axi_rlast(M00_AXI_rlast),
        .m_axi_rready(M00_AXI_rready),
        .m_axi_rresp(M00_AXI_rresp),
        .m_axi_rvalid(M00_AXI_rvalid),
        .m_axi_wdata(M00_AXI_wdata),
        .m_axi_wlast(M00_AXI_wlast),
        .m_axi_wready(M00_AXI_wready),
        .m_axi_wstrb(M00_AXI_wstrb),
        .m_axi_wvalid(M00_AXI_wvalid),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arburst(S00_AXI_arburst),
        .s_axi_arcache(S00_AXI_arcache),
        .s_axi_arlen(S00_AXI_arlen),
        .s_axi_arlock(S00_AXI_arlock),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arqos(S00_AXI_arqos),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arregion(S00_AXI_arregion),
        .s_axi_arsize(S00_AXI_arsize),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awburst(S00_AXI_awburst),
        .s_axi_awcache(S00_AXI_awcache),
        .s_axi_awlen(S00_AXI_awlen),
        .s_axi_awlock(S00_AXI_awlock),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awqos(S00_AXI_awqos),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awregion(S00_AXI_awregion),
        .s_axi_awsize(S00_AXI_awsize),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rlast(S00_AXI_rlast),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wlast(S00_AXI_wlast),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
endmodule

(* ORIG_REF_NAME = "s00_couplers_imp_YEI3CJ" *) 
module ulp_s00_couplers_imp_YEI3CJ
   (S00_AXI_awready,
    S00_AXI_wready,
    S00_AXI_bid,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_arready,
    S00_AXI_rid,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_rready,
    ACLK,
    ARESETN,
    S00_AXI_awid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awregion,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_bready,
    S00_AXI_arid,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arregion,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_rready,
    s_axi_awready,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid);
  output S00_AXI_awready;
  output S00_AXI_wready;
  output [0:0]S00_AXI_bid;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output S00_AXI_arready;
  output [0:0]S00_AXI_rid;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  output [0:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  output m_axi_rready;
  input ACLK;
  input ARESETN;
  input [0:0]S00_AXI_awid;
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awregion;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  input S00_AXI_bready;
  input [0:0]S00_AXI_arid;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arregion;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  input S00_AXI_rready;
  input [0:0]s_axi_awready;
  input [0:0]s_axi_wready;
  input [0:0]s_axi_bid;
  input [1:0]s_axi_bresp;
  input [0:0]s_axi_bvalid;
  input [0:0]s_axi_arready;
  input [0:0]s_axi_rid;
  input [511:0]s_axi_rdata;
  input [1:0]s_axi_rresp;
  input [0:0]s_axi_rlast;
  input [0:0]s_axi_rvalid;

  wire ACLK;
  wire ARESETN;
  wire [63:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [0:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [63:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [0:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire [0:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [63:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [63:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_rready;
  wire [511:0]m_axi_wdata;
  wire m_axi_wlast;
  wire [63:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_awready;
  wire [0:0]s_axi_bid;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [511:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [0:0]s_axi_wready;
  wire [3:0]NLW_s00_regslice_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_s00_regslice_m_axi_awregion_UNCONNECTED;

  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_s00_regslice_21 s00_regslice
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(s_axi_arready),
        .m_axi_arregion(NLW_s00_regslice_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(s_axi_awready),
        .m_axi_awregion(NLW_s00_regslice_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(s_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(s_axi_bresp),
        .m_axi_bvalid(s_axi_bvalid),
        .m_axi_rdata(s_axi_rdata),
        .m_axi_rid(s_axi_rid),
        .m_axi_rlast(s_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(s_axi_rresp),
        .m_axi_rvalid(s_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(s_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arburst(S00_AXI_arburst),
        .s_axi_arcache(S00_AXI_arcache),
        .s_axi_arid(S00_AXI_arid),
        .s_axi_arlen(S00_AXI_arlen),
        .s_axi_arlock(S00_AXI_arlock),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arqos(S00_AXI_arqos),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arregion(S00_AXI_arregion),
        .s_axi_arsize(S00_AXI_arsize),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awburst(S00_AXI_awburst),
        .s_axi_awcache(S00_AXI_awcache),
        .s_axi_awid(S00_AXI_awid),
        .s_axi_awlen(S00_AXI_awlen),
        .s_axi_awlock(S00_AXI_awlock),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awqos(S00_AXI_awqos),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awregion(S00_AXI_awregion),
        .s_axi_awsize(S00_AXI_awsize),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bid(S00_AXI_bid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rid(S00_AXI_rid),
        .s_axi_rlast(S00_AXI_rlast),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wlast(S00_AXI_wlast),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_s00_regslice_19
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_s00_regslice_20
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_s00_regslice_21
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [63:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [63:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_s00_regslice_22
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [24:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [24:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [24:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [24:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* ORIG_REF_NAME = "s01_couplers_imp_1A6BUUU" *) 
module ulp_s01_couplers_imp_1A6BUUU
   (S01_AXI_awready,
    S01_AXI_wready,
    S01_AXI_bid,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_arready,
    S01_AXI_rid,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_rready,
    ACLK,
    ARESETN,
    S01_AXI_awid,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awregion,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_bready,
    S01_AXI_arid,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arsize,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arregion,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_rready,
    s_axi_awready,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid);
  output S01_AXI_awready;
  output S01_AXI_wready;
  output [3:0]S01_AXI_bid;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output S01_AXI_arready;
  output [3:0]S01_AXI_rid;
  output [511:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rlast;
  output S01_AXI_rvalid;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  output m_axi_rready;
  input ACLK;
  input ARESETN;
  input [3:0]S01_AXI_awid;
  input [38:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awregion;
  input [3:0]S01_AXI_awqos;
  input S01_AXI_awvalid;
  input [511:0]S01_AXI_wdata;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  input S01_AXI_bready;
  input [3:0]S01_AXI_arid;
  input [38:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arregion;
  input [3:0]S01_AXI_arqos;
  input S01_AXI_arvalid;
  input S01_AXI_rready;
  input [0:0]s_axi_awready;
  input [0:0]s_axi_wready;
  input [3:0]s_axi_bid;
  input [1:0]s_axi_bresp;
  input [0:0]s_axi_bvalid;
  input [0:0]s_axi_arready;
  input [3:0]s_axi_rid;
  input [511:0]s_axi_rdata;
  input [1:0]s_axi_rresp;
  input [0:0]s_axi_rlast;
  input [0:0]s_axi_rvalid;

  wire ACLK;
  wire ARESETN;
  wire [38:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [3:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [3:0]S01_AXI_arregion;
  wire [2:0]S01_AXI_arsize;
  wire S01_AXI_arvalid;
  wire [38:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [3:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [3:0]S01_AXI_awregion;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire [3:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [511:0]S01_AXI_rdata;
  wire [3:0]S01_AXI_rid;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [511:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [63:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [38:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [38:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_rready;
  wire [511:0]m_axi_wdata;
  wire m_axi_wlast;
  wire [63:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_awready;
  wire [3:0]s_axi_bid;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [511:0]s_axi_rdata;
  wire [3:0]s_axi_rid;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [0:0]s_axi_wready;
  wire [3:0]NLW_s01_regslice_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_s01_regslice_m_axi_awregion_UNCONNECTED;

  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_s01_regslice_2 s01_regslice
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(s_axi_arready),
        .m_axi_arregion(NLW_s01_regslice_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(s_axi_awready),
        .m_axi_awregion(NLW_s01_regslice_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(s_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(s_axi_bresp),
        .m_axi_bvalid(s_axi_bvalid),
        .m_axi_rdata(s_axi_rdata),
        .m_axi_rid(s_axi_rid),
        .m_axi_rlast(s_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(s_axi_rresp),
        .m_axi_rvalid(s_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(s_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(S01_AXI_araddr),
        .s_axi_arburst(S01_AXI_arburst),
        .s_axi_arcache(S01_AXI_arcache),
        .s_axi_arid(S01_AXI_arid),
        .s_axi_arlen(S01_AXI_arlen),
        .s_axi_arlock(S01_AXI_arlock),
        .s_axi_arprot(S01_AXI_arprot),
        .s_axi_arqos(S01_AXI_arqos),
        .s_axi_arready(S01_AXI_arready),
        .s_axi_arregion(S01_AXI_arregion),
        .s_axi_arsize(S01_AXI_arsize),
        .s_axi_arvalid(S01_AXI_arvalid),
        .s_axi_awaddr(S01_AXI_awaddr),
        .s_axi_awburst(S01_AXI_awburst),
        .s_axi_awcache(S01_AXI_awcache),
        .s_axi_awid(S01_AXI_awid),
        .s_axi_awlen(S01_AXI_awlen),
        .s_axi_awlock(S01_AXI_awlock),
        .s_axi_awprot(S01_AXI_awprot),
        .s_axi_awqos(S01_AXI_awqos),
        .s_axi_awready(S01_AXI_awready),
        .s_axi_awregion(S01_AXI_awregion),
        .s_axi_awsize(S01_AXI_awsize),
        .s_axi_awvalid(S01_AXI_awvalid),
        .s_axi_bid(S01_AXI_bid),
        .s_axi_bready(S01_AXI_bready),
        .s_axi_bresp(S01_AXI_bresp),
        .s_axi_bvalid(S01_AXI_bvalid),
        .s_axi_rdata(S01_AXI_rdata),
        .s_axi_rid(S01_AXI_rid),
        .s_axi_rlast(S01_AXI_rlast),
        .s_axi_rready(S01_AXI_rready),
        .s_axi_rresp(S01_AXI_rresp),
        .s_axi_rvalid(S01_AXI_rvalid),
        .s_axi_wdata(S01_AXI_wdata),
        .s_axi_wlast(S01_AXI_wlast),
        .s_axi_wready(S01_AXI_wready),
        .s_axi_wstrb(S01_AXI_wstrb),
        .s_axi_wvalid(S01_AXI_wvalid));
endmodule

(* ORIG_REF_NAME = "s01_couplers_imp_9DN451" *) 
module ulp_s01_couplers_imp_9DN451
   (M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awsize,
    M_AXI_awburst,
    M_AXI_awlock,
    M_AXI_awcache,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awvalid,
    M_AXI_wdata,
    M_AXI_wstrb,
    M_AXI_wlast,
    M_AXI_wvalid,
    M_AXI_bready,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arsize,
    M_AXI_arburst,
    M_AXI_arlock,
    M_AXI_arcache,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arvalid,
    M_AXI_rready,
    S01_AXI_awready,
    S01_AXI_wready,
    S01_AXI_bid,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_arready,
    S01_AXI_rid,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S01_ACLK,
    S01_ARESETN,
    ACLK,
    M_AXI_awready,
    M_AXI_wready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_arready,
    M_AXI_rdata,
    M_AXI_rresp,
    M_AXI_rlast,
    M_AXI_rvalid,
    S01_AXI_awid,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awregion,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_bready,
    S01_AXI_arid,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arsize,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arregion,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_rready);
  output [63:0]M_AXI_awaddr;
  output [7:0]M_AXI_awlen;
  output [2:0]M_AXI_awsize;
  output [1:0]M_AXI_awburst;
  output [0:0]M_AXI_awlock;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  output M_AXI_awvalid;
  output [511:0]M_AXI_wdata;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wlast;
  output M_AXI_wvalid;
  output M_AXI_bready;
  output [63:0]M_AXI_araddr;
  output [7:0]M_AXI_arlen;
  output [2:0]M_AXI_arsize;
  output [1:0]M_AXI_arburst;
  output [0:0]M_AXI_arlock;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  output M_AXI_arvalid;
  output M_AXI_rready;
  output S01_AXI_awready;
  output S01_AXI_wready;
  output [0:0]S01_AXI_bid;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output S01_AXI_arready;
  output [0:0]S01_AXI_rid;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rlast;
  output S01_AXI_rvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input ACLK;
  input M_AXI_awready;
  input M_AXI_wready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_arready;
  input [511:0]M_AXI_rdata;
  input [1:0]M_AXI_rresp;
  input M_AXI_rlast;
  input M_AXI_rvalid;
  input [0:0]S01_AXI_awid;
  input [63:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awregion;
  input [3:0]S01_AXI_awqos;
  input S01_AXI_awvalid;
  input [31:0]S01_AXI_wdata;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  input S01_AXI_bready;
  input [0:0]S01_AXI_arid;
  input [63:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arregion;
  input [3:0]S01_AXI_arqos;
  input S01_AXI_arvalid;
  input S01_AXI_rready;

  wire ACLK;
  wire [63:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [7:0]M_AXI_arlen;
  wire [0:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire [2:0]M_AXI_arsize;
  wire M_AXI_arvalid;
  wire [63:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [511:0]M_AXI_rdata;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [511:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [63:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S01_ACLK;
  wire S01_ARESETN;
  wire [63:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [0:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [3:0]S01_AXI_arregion;
  wire [2:0]S01_AXI_arsize;
  wire S01_AXI_arvalid;
  wire [63:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [0:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [3:0]S01_AXI_awregion;
  wire [2:0]S01_AXI_awsize;
  wire S01_AXI_awvalid;
  wire [0:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [31:0]S01_AXI_rdata;
  wire [0:0]S01_AXI_rid;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [31:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [3:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [63:0]s01_regslice_to_auto_us_cc_df_ARADDR;
  wire [1:0]s01_regslice_to_auto_us_cc_df_ARBURST;
  wire [3:0]s01_regslice_to_auto_us_cc_df_ARCACHE;
  wire s01_regslice_to_auto_us_cc_df_ARID;
  wire [7:0]s01_regslice_to_auto_us_cc_df_ARLEN;
  wire s01_regslice_to_auto_us_cc_df_ARLOCK;
  wire [2:0]s01_regslice_to_auto_us_cc_df_ARPROT;
  wire [3:0]s01_regslice_to_auto_us_cc_df_ARQOS;
  wire s01_regslice_to_auto_us_cc_df_ARREADY;
  wire [3:0]s01_regslice_to_auto_us_cc_df_ARREGION;
  wire [2:0]s01_regslice_to_auto_us_cc_df_ARSIZE;
  wire s01_regslice_to_auto_us_cc_df_ARVALID;
  wire [63:0]s01_regslice_to_auto_us_cc_df_AWADDR;
  wire [1:0]s01_regslice_to_auto_us_cc_df_AWBURST;
  wire [3:0]s01_regslice_to_auto_us_cc_df_AWCACHE;
  wire s01_regslice_to_auto_us_cc_df_AWID;
  wire [7:0]s01_regslice_to_auto_us_cc_df_AWLEN;
  wire s01_regslice_to_auto_us_cc_df_AWLOCK;
  wire [2:0]s01_regslice_to_auto_us_cc_df_AWPROT;
  wire [3:0]s01_regslice_to_auto_us_cc_df_AWQOS;
  wire s01_regslice_to_auto_us_cc_df_AWREADY;
  wire [3:0]s01_regslice_to_auto_us_cc_df_AWREGION;
  wire [2:0]s01_regslice_to_auto_us_cc_df_AWSIZE;
  wire s01_regslice_to_auto_us_cc_df_AWVALID;
  wire s01_regslice_to_auto_us_cc_df_BID;
  wire s01_regslice_to_auto_us_cc_df_BREADY;
  wire [1:0]s01_regslice_to_auto_us_cc_df_BRESP;
  wire s01_regslice_to_auto_us_cc_df_BVALID;
  wire [31:0]s01_regslice_to_auto_us_cc_df_RDATA;
  wire s01_regslice_to_auto_us_cc_df_RID;
  wire s01_regslice_to_auto_us_cc_df_RLAST;
  wire s01_regslice_to_auto_us_cc_df_RREADY;
  wire [1:0]s01_regslice_to_auto_us_cc_df_RRESP;
  wire s01_regslice_to_auto_us_cc_df_RVALID;
  wire [31:0]s01_regslice_to_auto_us_cc_df_WDATA;
  wire s01_regslice_to_auto_us_cc_df_WLAST;
  wire s01_regslice_to_auto_us_cc_df_WREADY;
  wire [3:0]s01_regslice_to_auto_us_cc_df_WSTRB;
  wire s01_regslice_to_auto_us_cc_df_WVALID;
  wire [3:0]NLW_auto_us_cc_df_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_auto_us_cc_df_m_axi_awregion_UNCONNECTED;

  (* X_CORE_INFO = "axi_dwidth_converter_v2_1_24_top,Vivado 2021.1" *) 
  ulp_auto_us_cc_df_0 auto_us_cc_df
       (.m_axi_aclk(ACLK),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arburst(M_AXI_arburst),
        .m_axi_arcache(M_AXI_arcache),
        .m_axi_aresetn(S01_ARESETN),
        .m_axi_arlen(M_AXI_arlen),
        .m_axi_arlock(M_AXI_arlock),
        .m_axi_arprot(M_AXI_arprot),
        .m_axi_arqos(M_AXI_arqos),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arregion(NLW_auto_us_cc_df_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(M_AXI_arsize),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awregion(NLW_auto_us_cc_df_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(M_AXI_awsize),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rlast(M_AXI_rlast),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_aclk(S01_ACLK),
        .s_axi_araddr(s01_regslice_to_auto_us_cc_df_ARADDR),
        .s_axi_arburst(s01_regslice_to_auto_us_cc_df_ARBURST),
        .s_axi_arcache(s01_regslice_to_auto_us_cc_df_ARCACHE),
        .s_axi_aresetn(S01_ARESETN),
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
  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_s01_regslice_1 s01_regslice
       (.aclk(S01_ACLK),
        .aresetn(S01_ARESETN),
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
        .s_axi_araddr(S01_AXI_araddr),
        .s_axi_arburst(S01_AXI_arburst),
        .s_axi_arcache(S01_AXI_arcache),
        .s_axi_arid(S01_AXI_arid),
        .s_axi_arlen(S01_AXI_arlen),
        .s_axi_arlock(S01_AXI_arlock),
        .s_axi_arprot(S01_AXI_arprot),
        .s_axi_arqos(S01_AXI_arqos),
        .s_axi_arready(S01_AXI_arready),
        .s_axi_arregion(S01_AXI_arregion),
        .s_axi_arsize(S01_AXI_arsize),
        .s_axi_arvalid(S01_AXI_arvalid),
        .s_axi_awaddr(S01_AXI_awaddr),
        .s_axi_awburst(S01_AXI_awburst),
        .s_axi_awcache(S01_AXI_awcache),
        .s_axi_awid(S01_AXI_awid),
        .s_axi_awlen(S01_AXI_awlen),
        .s_axi_awlock(S01_AXI_awlock),
        .s_axi_awprot(S01_AXI_awprot),
        .s_axi_awqos(S01_AXI_awqos),
        .s_axi_awready(S01_AXI_awready),
        .s_axi_awregion(S01_AXI_awregion),
        .s_axi_awsize(S01_AXI_awsize),
        .s_axi_awvalid(S01_AXI_awvalid),
        .s_axi_bid(S01_AXI_bid),
        .s_axi_bready(S01_AXI_bready),
        .s_axi_bresp(S01_AXI_bresp),
        .s_axi_bvalid(S01_AXI_bvalid),
        .s_axi_rdata(S01_AXI_rdata),
        .s_axi_rid(S01_AXI_rid),
        .s_axi_rlast(S01_AXI_rlast),
        .s_axi_rready(S01_AXI_rready),
        .s_axi_rresp(S01_AXI_rresp),
        .s_axi_rvalid(S01_AXI_rvalid),
        .s_axi_wdata(S01_AXI_wdata),
        .s_axi_wlast(S01_AXI_wlast),
        .s_axi_wready(S01_AXI_wready),
        .s_axi_wstrb(S01_AXI_wstrb),
        .s_axi_wvalid(S01_AXI_wvalid));
endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_s01_regslice_1
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [63:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [63:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_s01_regslice_2
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* ORIG_REF_NAME = "s02_couplers_imp_7O094O" *) 
module ulp_s02_couplers_imp_7O094O
   (S02_AXI_awready,
    S02_AXI_wready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_arready,
    S02_AXI_rdata,
    S02_AXI_rresp,
    S02_AXI_rlast,
    S02_AXI_rvalid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_rready,
    ACLK,
    ARESETN,
    S02_AXI_awaddr,
    S02_AXI_awlen,
    S02_AXI_awsize,
    S02_AXI_awburst,
    S02_AXI_awlock,
    S02_AXI_awcache,
    S02_AXI_awprot,
    S02_AXI_awregion,
    S02_AXI_awqos,
    S02_AXI_awvalid,
    S02_AXI_wdata,
    S02_AXI_wstrb,
    S02_AXI_wlast,
    S02_AXI_wvalid,
    S02_AXI_bready,
    S02_AXI_araddr,
    S02_AXI_arlen,
    S02_AXI_arsize,
    S02_AXI_arburst,
    S02_AXI_arlock,
    S02_AXI_arcache,
    S02_AXI_arprot,
    S02_AXI_arregion,
    S02_AXI_arqos,
    S02_AXI_arvalid,
    S02_AXI_rready,
    s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid);
  output S02_AXI_awready;
  output S02_AXI_wready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output S02_AXI_arready;
  output [511:0]S02_AXI_rdata;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rlast;
  output S02_AXI_rvalid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  output m_axi_rready;
  input ACLK;
  input ARESETN;
  input [38:0]S02_AXI_awaddr;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awsize;
  input [1:0]S02_AXI_awburst;
  input [0:0]S02_AXI_awlock;
  input [3:0]S02_AXI_awcache;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awregion;
  input [3:0]S02_AXI_awqos;
  input S02_AXI_awvalid;
  input [511:0]S02_AXI_wdata;
  input [63:0]S02_AXI_wstrb;
  input S02_AXI_wlast;
  input S02_AXI_wvalid;
  input S02_AXI_bready;
  input [38:0]S02_AXI_araddr;
  input [7:0]S02_AXI_arlen;
  input [2:0]S02_AXI_arsize;
  input [1:0]S02_AXI_arburst;
  input [0:0]S02_AXI_arlock;
  input [3:0]S02_AXI_arcache;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arregion;
  input [3:0]S02_AXI_arqos;
  input S02_AXI_arvalid;
  input S02_AXI_rready;
  input [0:0]s_axi_awready;
  input [0:0]s_axi_wready;
  input [1:0]s_axi_bresp;
  input [0:0]s_axi_bvalid;
  input [0:0]s_axi_arready;
  input [511:0]s_axi_rdata;
  input [1:0]s_axi_rresp;
  input [0:0]s_axi_rlast;
  input [0:0]s_axi_rvalid;

  wire ACLK;
  wire ARESETN;
  wire [38:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire S02_AXI_arready;
  wire [3:0]S02_AXI_arregion;
  wire [2:0]S02_AXI_arsize;
  wire S02_AXI_arvalid;
  wire [38:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire S02_AXI_awready;
  wire [3:0]S02_AXI_awregion;
  wire [2:0]S02_AXI_awsize;
  wire S02_AXI_awvalid;
  wire S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire S02_AXI_bvalid;
  wire [511:0]S02_AXI_rdata;
  wire S02_AXI_rlast;
  wire S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire S02_AXI_rvalid;
  wire [511:0]S02_AXI_wdata;
  wire S02_AXI_wlast;
  wire S02_AXI_wready;
  wire [63:0]S02_AXI_wstrb;
  wire S02_AXI_wvalid;
  wire [38:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [38:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_rready;
  wire [511:0]m_axi_wdata;
  wire m_axi_wlast;
  wire [63:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [0:0]s_axi_arready;
  wire [0:0]s_axi_awready;
  wire [1:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [511:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rresp;
  wire [0:0]s_axi_rvalid;
  wire [0:0]s_axi_wready;
  wire [3:0]NLW_s02_regslice_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_s02_regslice_m_axi_awregion_UNCONNECTED;

  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_s02_regslice_0 s02_regslice
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(s_axi_arready),
        .m_axi_arregion(NLW_s02_regslice_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(s_axi_awready),
        .m_axi_awregion(NLW_s02_regslice_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(s_axi_bresp),
        .m_axi_bvalid(s_axi_bvalid),
        .m_axi_rdata(s_axi_rdata),
        .m_axi_rlast(s_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(s_axi_rresp),
        .m_axi_rvalid(s_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(s_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(S02_AXI_araddr),
        .s_axi_arburst(S02_AXI_arburst),
        .s_axi_arcache(S02_AXI_arcache),
        .s_axi_arlen(S02_AXI_arlen),
        .s_axi_arlock(S02_AXI_arlock),
        .s_axi_arprot(S02_AXI_arprot),
        .s_axi_arqos(S02_AXI_arqos),
        .s_axi_arready(S02_AXI_arready),
        .s_axi_arregion(S02_AXI_arregion),
        .s_axi_arsize(S02_AXI_arsize),
        .s_axi_arvalid(S02_AXI_arvalid),
        .s_axi_awaddr(S02_AXI_awaddr),
        .s_axi_awburst(S02_AXI_awburst),
        .s_axi_awcache(S02_AXI_awcache),
        .s_axi_awlen(S02_AXI_awlen),
        .s_axi_awlock(S02_AXI_awlock),
        .s_axi_awprot(S02_AXI_awprot),
        .s_axi_awqos(S02_AXI_awqos),
        .s_axi_awready(S02_AXI_awready),
        .s_axi_awregion(S02_AXI_awregion),
        .s_axi_awsize(S02_AXI_awsize),
        .s_axi_awvalid(S02_AXI_awvalid),
        .s_axi_bready(S02_AXI_bready),
        .s_axi_bresp(S02_AXI_bresp),
        .s_axi_bvalid(S02_AXI_bvalid),
        .s_axi_rdata(S02_AXI_rdata),
        .s_axi_rlast(S02_AXI_rlast),
        .s_axi_rready(S02_AXI_rready),
        .s_axi_rresp(S02_AXI_rresp),
        .s_axi_rvalid(S02_AXI_rvalid),
        .s_axi_wdata(S02_AXI_wdata),
        .s_axi_wlast(S02_AXI_wlast),
        .s_axi_wready(S02_AXI_wready),
        .s_axi_wstrb(S02_AXI_wstrb),
        .s_axi_wvalid(S02_AXI_wvalid));
endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_s02_regslice_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* ORIG_REF_NAME = "s03_couplers_imp_1IZX0HP" *) 
module ulp_s03_couplers_imp_1IZX0HP
   (M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awsize,
    M_AXI_awburst,
    M_AXI_awlock,
    M_AXI_awcache,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awvalid,
    M_AXI_wdata,
    M_AXI_wstrb,
    M_AXI_wlast,
    M_AXI_wvalid,
    M_AXI_bready,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arsize,
    M_AXI_arburst,
    M_AXI_arlock,
    M_AXI_arcache,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arvalid,
    M_AXI_rready,
    S_AXI_awready,
    S_AXI_wready,
    S_AXI_bid,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_arready,
    S_AXI_rid,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rlast,
    S_AXI_rvalid,
    ACLK,
    ARESETN,
    M_AXI_awready,
    M_AXI_wready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_arready,
    M_AXI_rdata,
    M_AXI_rresp,
    M_AXI_rlast,
    M_AXI_rvalid,
    S_AXI_awid,
    S_AXI_awaddr,
    S_AXI_awlen,
    S_AXI_awsize,
    S_AXI_awburst,
    S_AXI_awlock,
    S_AXI_awcache,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awvalid,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wlast,
    S_AXI_wvalid,
    S_AXI_bready,
    S_AXI_arid,
    S_AXI_araddr,
    S_AXI_arlen,
    S_AXI_arsize,
    S_AXI_arburst,
    S_AXI_arlock,
    S_AXI_arcache,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arvalid,
    S_AXI_rready);
  output [38:0]M_AXI_awaddr;
  output [7:0]M_AXI_awlen;
  output [2:0]M_AXI_awsize;
  output [1:0]M_AXI_awburst;
  output [0:0]M_AXI_awlock;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  output M_AXI_awvalid;
  output [511:0]M_AXI_wdata;
  output [63:0]M_AXI_wstrb;
  output M_AXI_wlast;
  output M_AXI_wvalid;
  output M_AXI_bready;
  output [38:0]M_AXI_araddr;
  output [7:0]M_AXI_arlen;
  output [2:0]M_AXI_arsize;
  output [1:0]M_AXI_arburst;
  output [0:0]M_AXI_arlock;
  output [3:0]M_AXI_arcache;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  output M_AXI_arvalid;
  output M_AXI_rready;
  output S_AXI_awready;
  output S_AXI_wready;
  output [3:0]S_AXI_bid;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_arready;
  output [3:0]S_AXI_rid;
  output [127:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output S_AXI_rlast;
  output S_AXI_rvalid;
  input ACLK;
  input ARESETN;
  input M_AXI_awready;
  input M_AXI_wready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_arready;
  input [511:0]M_AXI_rdata;
  input [1:0]M_AXI_rresp;
  input M_AXI_rlast;
  input M_AXI_rvalid;
  input [3:0]S_AXI_awid;
  input [38:0]S_AXI_awaddr;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awsize;
  input [1:0]S_AXI_awburst;
  input [0:0]S_AXI_awlock;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  input S_AXI_awvalid;
  input [127:0]S_AXI_wdata;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wlast;
  input S_AXI_wvalid;
  input S_AXI_bready;
  input [3:0]S_AXI_arid;
  input [38:0]S_AXI_araddr;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arsize;
  input [1:0]S_AXI_arburst;
  input [0:0]S_AXI_arlock;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  input S_AXI_arvalid;
  input S_AXI_rready;

  wire ACLK;
  wire ARESETN;
  wire [38:0]M_AXI_araddr;
  wire [1:0]M_AXI_arburst;
  wire [3:0]M_AXI_arcache;
  wire [7:0]M_AXI_arlen;
  wire [0:0]M_AXI_arlock;
  wire [2:0]M_AXI_arprot;
  wire [3:0]M_AXI_arqos;
  wire M_AXI_arready;
  wire [2:0]M_AXI_arsize;
  wire M_AXI_arvalid;
  wire [38:0]M_AXI_awaddr;
  wire [1:0]M_AXI_awburst;
  wire [3:0]M_AXI_awcache;
  wire [7:0]M_AXI_awlen;
  wire [0:0]M_AXI_awlock;
  wire [2:0]M_AXI_awprot;
  wire [3:0]M_AXI_awqos;
  wire M_AXI_awready;
  wire [2:0]M_AXI_awsize;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [511:0]M_AXI_rdata;
  wire M_AXI_rlast;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [511:0]M_AXI_wdata;
  wire M_AXI_wlast;
  wire M_AXI_wready;
  wire [63:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire [38:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [3:0]S_AXI_arid;
  wire [7:0]S_AXI_arlen;
  wire [0:0]S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire [2:0]S_AXI_arsize;
  wire S_AXI_arvalid;
  wire [38:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [3:0]S_AXI_awid;
  wire [7:0]S_AXI_awlen;
  wire [0:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire S_AXI_awvalid;
  wire [3:0]S_AXI_bid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [127:0]S_AXI_rdata;
  wire [3:0]S_AXI_rid;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [127:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [15:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire [38:0]auto_us_to_auto_rs_w_ARADDR;
  wire [1:0]auto_us_to_auto_rs_w_ARBURST;
  wire [3:0]auto_us_to_auto_rs_w_ARCACHE;
  wire [7:0]auto_us_to_auto_rs_w_ARLEN;
  wire auto_us_to_auto_rs_w_ARLOCK;
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
  wire auto_us_to_auto_rs_w_AWLOCK;
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
  wire [38:0]s03_regslice_to_auto_us_ARADDR;
  wire [1:0]s03_regslice_to_auto_us_ARBURST;
  wire [3:0]s03_regslice_to_auto_us_ARCACHE;
  wire [3:0]s03_regslice_to_auto_us_ARID;
  wire [7:0]s03_regslice_to_auto_us_ARLEN;
  wire s03_regslice_to_auto_us_ARLOCK;
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
  wire s03_regslice_to_auto_us_AWLOCK;
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
  wire [3:0]NLW_auto_rs_w_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_auto_rs_w_m_axi_awregion_UNCONNECTED;

  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_auto_rs_w_0 auto_rs_w
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arburst(M_AXI_arburst),
        .m_axi_arcache(M_AXI_arcache),
        .m_axi_arlen(M_AXI_arlen),
        .m_axi_arlock(M_AXI_arlock),
        .m_axi_arprot(M_AXI_arprot),
        .m_axi_arqos(M_AXI_arqos),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arregion(NLW_auto_rs_w_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(M_AXI_arsize),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awburst(M_AXI_awburst),
        .m_axi_awcache(M_AXI_awcache),
        .m_axi_awlen(M_AXI_awlen),
        .m_axi_awlock(M_AXI_awlock),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awqos(M_AXI_awqos),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awregion(NLW_auto_rs_w_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(M_AXI_awsize),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rlast(M_AXI_rlast),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wlast(M_AXI_wlast),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
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
  (* X_CORE_INFO = "axi_dwidth_converter_v2_1_24_top,Vivado 2021.1" *) 
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
        .s_axi_aclk(ACLK),
        .s_axi_araddr(s03_regslice_to_auto_us_ARADDR),
        .s_axi_arburst(s03_regslice_to_auto_us_ARBURST),
        .s_axi_arcache(s03_regslice_to_auto_us_ARCACHE),
        .s_axi_aresetn(ARESETN),
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
  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_s03_regslice_0 s03_regslice
       (.aclk(ACLK),
        .aresetn(ARESETN),
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
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_arburst(S_AXI_arburst),
        .s_axi_arcache(S_AXI_arcache),
        .s_axi_arid(S_AXI_arid),
        .s_axi_arlen(S_AXI_arlen),
        .s_axi_arlock(S_AXI_arlock),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arqos(S_AXI_arqos),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(S_AXI_arsize),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awid(S_AXI_awid),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(S_AXI_awlock),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bid(S_AXI_bid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rid(S_AXI_rid),
        .s_axi_rlast(S_AXI_rlast),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
endmodule

(* X_CORE_INFO = "axi_mmu_v2_1_22_top,Vivado 2021.1" *) 
module ulp_s03_mmu_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
module ulp_s03_regslice_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* ORIG_REF_NAME = "slr1_imp_1S5AAMB" *) 
module ulp_slr1_imp_1S5AAMB
   (M01_AXI1_araddr,
    M01_AXI1_arvalid,
    M01_AXI1_awaddr,
    M01_AXI1_awvalid,
    M01_AXI1_bready,
    M01_AXI1_rready,
    M01_AXI1_wdata,
    M01_AXI1_wstrb,
    M01_AXI1_wvalid,
    psreset_gate_pr_control_interconnect_aresetn,
    M01_AXI_araddr,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_rready,
    M01_AXI_wdata,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    psreset_gate_pr_kernel_interconnect_aresetn,
    psreset_gate_pr_data_interconnect_aresetn,
    logic_reset_op_Res,
    interconnect_aresetn,
    peripheral_aresetn,
    axi_cdc_data_static_M_AXI_awid,
    axi_cdc_data_static_M_AXI_awaddr,
    axi_cdc_data_static_M_AXI_awlen,
    axi_cdc_data_static_M_AXI_awsize,
    axi_cdc_data_static_M_AXI_awburst,
    axi_cdc_data_static_M_AXI_awlock,
    axi_cdc_data_static_M_AXI_awcache,
    axi_cdc_data_static_M_AXI_awprot,
    axi_cdc_data_static_M_AXI_awregion,
    axi_cdc_data_static_M_AXI_awqos,
    axi_cdc_data_static_M_AXI_awvalid,
    axi_cdc_data_static_M_AXI_wdata,
    axi_cdc_data_static_M_AXI_wstrb,
    axi_cdc_data_static_M_AXI_wlast,
    axi_cdc_data_static_M_AXI_wvalid,
    axi_cdc_data_static_M_AXI_bready,
    axi_cdc_data_static_M_AXI_arid,
    axi_cdc_data_static_M_AXI_araddr,
    axi_cdc_data_static_M_AXI_arlen,
    axi_cdc_data_static_M_AXI_arsize,
    axi_cdc_data_static_M_AXI_arburst,
    axi_cdc_data_static_M_AXI_arlock,
    axi_cdc_data_static_M_AXI_arcache,
    axi_cdc_data_static_M_AXI_arprot,
    axi_cdc_data_static_M_AXI_arregion,
    axi_cdc_data_static_M_AXI_arqos,
    axi_cdc_data_static_M_AXI_arvalid,
    axi_cdc_data_static_M_AXI_rready,
    axi_cdc_data_static_M_AXI1_awid,
    axi_cdc_data_static_M_AXI1_awaddr,
    axi_cdc_data_static_M_AXI1_awlen,
    axi_cdc_data_static_M_AXI1_awsize,
    axi_cdc_data_static_M_AXI1_awburst,
    axi_cdc_data_static_M_AXI1_awlock,
    axi_cdc_data_static_M_AXI1_awcache,
    axi_cdc_data_static_M_AXI1_awprot,
    axi_cdc_data_static_M_AXI1_awqos,
    axi_cdc_data_static_M_AXI1_awvalid,
    axi_cdc_data_static_M_AXI1_wdata,
    axi_cdc_data_static_M_AXI1_wstrb,
    axi_cdc_data_static_M_AXI1_wlast,
    axi_cdc_data_static_M_AXI1_wvalid,
    axi_cdc_data_static_M_AXI1_bready,
    axi_cdc_data_static_M_AXI1_arid,
    axi_cdc_data_static_M_AXI1_araddr,
    axi_cdc_data_static_M_AXI1_arlen,
    axi_cdc_data_static_M_AXI1_arsize,
    axi_cdc_data_static_M_AXI1_arburst,
    axi_cdc_data_static_M_AXI1_arlock,
    axi_cdc_data_static_M_AXI1_arcache,
    axi_cdc_data_static_M_AXI1_arprot,
    axi_cdc_data_static_M_AXI1_arqos,
    axi_cdc_data_static_M_AXI1_arvalid,
    axi_cdc_data_static_M_AXI1_rready,
    regslice_control_M_AXI_slr1_awready,
    regslice_control_M_AXI_slr1_wready,
    regslice_control_M_AXI_slr1_bresp,
    regslice_control_M_AXI_slr1_bvalid,
    regslice_control_M_AXI_slr1_arready,
    regslice_control_M_AXI_slr1_rdata,
    regslice_control_M_AXI_slr1_rresp,
    regslice_control_M_AXI_slr1_rvalid,
    regslice_control_userpf_M_AXI_slr1_awready,
    regslice_control_userpf_M_AXI_slr1_wready,
    regslice_control_userpf_M_AXI_slr1_bresp,
    regslice_control_userpf_M_AXI_slr1_bvalid,
    regslice_control_userpf_M_AXI_slr1_arready,
    regslice_control_userpf_M_AXI_slr1_rdata,
    regslice_control_userpf_M_AXI_slr1_rresp,
    regslice_control_userpf_M_AXI_slr1_rvalid,
    regslice_data_static_M_AXI_slr1_awready,
    regslice_data_static_M_AXI_slr1_wready,
    regslice_data_static_M_AXI_slr1_bid,
    regslice_data_static_M_AXI_slr1_bresp,
    regslice_data_static_M_AXI_slr1_bvalid,
    regslice_data_static_M_AXI_slr1_arready,
    regslice_data_static_M_AXI_slr1_rid,
    regslice_data_static_M_AXI_slr1_rdata,
    regslice_data_static_M_AXI_slr1_rresp,
    regslice_data_static_M_AXI_slr1_rlast,
    regslice_data_static_M_AXI_slr1_rvalid,
    regslice_data_static_M_AXI_slr2_awready,
    regslice_data_static_M_AXI_slr2_wready,
    regslice_data_static_M_AXI_slr2_bid,
    regslice_data_static_M_AXI_slr2_bresp,
    regslice_data_static_M_AXI_slr2_bvalid,
    regslice_data_static_M_AXI_slr2_arready,
    regslice_data_static_M_AXI_slr2_rid,
    regslice_data_static_M_AXI_slr2_rdata,
    regslice_data_static_M_AXI_slr2_rresp,
    regslice_data_static_M_AXI_slr2_rlast,
    regslice_data_static_M_AXI_slr2_rvalid,
    regslice_control_periph_M_AXI_slr1_awready,
    regslice_control_periph_M_AXI_slr1_wready,
    regslice_control_periph_M_AXI_slr1_bvalid,
    regslice_control_periph_M_AXI_slr1_bresp,
    regslice_control_periph_M_AXI_slr1_arready,
    regslice_control_periph_M_AXI_slr1_rdata,
    regslice_control_periph_M_AXI_slr1_rresp,
    regslice_control_periph_M_AXI_slr1_rvalid,
    axi_vip_ctrl_mgntpf_M_AXI_awaddr,
    axi_vip_ctrl_mgntpf_M_AXI_awvalid,
    axi_vip_ctrl_mgntpf_M_AXI_wdata,
    axi_vip_ctrl_mgntpf_M_AXI_wvalid,
    axi_vip_ctrl_mgntpf_M_AXI_bready,
    axi_vip_ctrl_mgntpf_M_AXI_araddr,
    axi_vip_ctrl_mgntpf_M_AXI_arvalid,
    axi_vip_ctrl_mgntpf_M_AXI_rready,
    clkwiz_sysclks_clk_out2,
    c0_ddr4_ui_clk,
    M00_ARESETN,
    M01_AXI1_arready,
    M01_AXI1_awready,
    M01_AXI1_bresp,
    M01_AXI1_bvalid,
    M01_AXI1_rdata,
    M01_AXI1_rresp,
    M01_AXI1_rvalid,
    M01_AXI1_wready,
    blp_s_aclk_kernel_ref_clk_00,
    M01_AXI_arready,
    M01_AXI_awready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wready,
    dma_pcie_axi_aclk,
    iob_static_perst_n_out,
    Dout,
    clkwiz_sysclks_locked_slr1,
    pcie_user_lnk_up_slr1,
    aux_reset_in,
    clkwiz_kernel_clk_out1,
    clkwiz_kernel_locked_slr1,
    clkwiz_kernel2_clk_out1,
    clkwiz_kernel2_locked_slr1,
    axi_cdc_data_static_M_AXI_awready,
    axi_cdc_data_static_M_AXI_wready,
    axi_cdc_data_static_M_AXI_bid,
    axi_cdc_data_static_M_AXI_bresp,
    axi_cdc_data_static_M_AXI_bvalid,
    axi_cdc_data_static_M_AXI_arready,
    axi_cdc_data_static_M_AXI_rid,
    axi_cdc_data_static_M_AXI_rdata,
    axi_cdc_data_static_M_AXI_rresp,
    axi_cdc_data_static_M_AXI_rlast,
    axi_cdc_data_static_M_AXI_rvalid,
    axi_cdc_data_static_M_AXI1_awready,
    axi_cdc_data_static_M_AXI1_wready,
    axi_cdc_data_static_M_AXI1_bid,
    axi_cdc_data_static_M_AXI1_bresp,
    axi_cdc_data_static_M_AXI1_bvalid,
    axi_cdc_data_static_M_AXI1_arready,
    axi_cdc_data_static_M_AXI1_rid,
    axi_cdc_data_static_M_AXI1_rdata,
    axi_cdc_data_static_M_AXI1_rresp,
    axi_cdc_data_static_M_AXI1_rlast,
    axi_cdc_data_static_M_AXI1_rvalid,
    regslice_control_M_AXI_slr1_awaddr,
    regslice_control_M_AXI_slr1_awprot,
    regslice_control_M_AXI_slr1_awvalid,
    regslice_control_M_AXI_slr1_wdata,
    regslice_control_M_AXI_slr1_wstrb,
    regslice_control_M_AXI_slr1_wvalid,
    regslice_control_M_AXI_slr1_bready,
    regslice_control_M_AXI_slr1_araddr,
    regslice_control_M_AXI_slr1_arprot,
    regslice_control_M_AXI_slr1_arvalid,
    regslice_control_M_AXI_slr1_rready,
    regslice_control_userpf_M_AXI_slr1_awaddr,
    regslice_control_userpf_M_AXI_slr1_awprot,
    regslice_control_userpf_M_AXI_slr1_awvalid,
    regslice_control_userpf_M_AXI_slr1_wdata,
    regslice_control_userpf_M_AXI_slr1_wstrb,
    regslice_control_userpf_M_AXI_slr1_wvalid,
    regslice_control_userpf_M_AXI_slr1_bready,
    regslice_control_userpf_M_AXI_slr1_araddr,
    regslice_control_userpf_M_AXI_slr1_arprot,
    regslice_control_userpf_M_AXI_slr1_arvalid,
    regslice_control_userpf_M_AXI_slr1_rready,
    regslice_data_static_M_AXI_slr1_awid,
    regslice_data_static_M_AXI_slr1_awaddr,
    regslice_data_static_M_AXI_slr1_awlen,
    regslice_data_static_M_AXI_slr1_awburst,
    regslice_data_static_M_AXI_slr1_awlock,
    regslice_data_static_M_AXI_slr1_awcache,
    regslice_data_static_M_AXI_slr1_awprot,
    regslice_data_static_M_AXI_slr1_awvalid,
    regslice_data_static_M_AXI_slr1_wdata,
    regslice_data_static_M_AXI_slr1_wstrb,
    regslice_data_static_M_AXI_slr1_wlast,
    regslice_data_static_M_AXI_slr1_wvalid,
    regslice_data_static_M_AXI_slr1_bready,
    regslice_data_static_M_AXI_slr1_arid,
    regslice_data_static_M_AXI_slr1_araddr,
    regslice_data_static_M_AXI_slr1_arlen,
    regslice_data_static_M_AXI_slr1_arburst,
    regslice_data_static_M_AXI_slr1_arlock,
    regslice_data_static_M_AXI_slr1_arcache,
    regslice_data_static_M_AXI_slr1_arprot,
    regslice_data_static_M_AXI_slr1_arvalid,
    regslice_data_static_M_AXI_slr1_rready,
    regslice_data_static_M_AXI_slr2_awid,
    regslice_data_static_M_AXI_slr2_awaddr,
    regslice_data_static_M_AXI_slr2_awlen,
    regslice_data_static_M_AXI_slr2_awburst,
    regslice_data_static_M_AXI_slr2_awlock,
    regslice_data_static_M_AXI_slr2_awcache,
    regslice_data_static_M_AXI_slr2_awprot,
    regslice_data_static_M_AXI_slr2_awvalid,
    regslice_data_static_M_AXI_slr2_wdata,
    regslice_data_static_M_AXI_slr2_wstrb,
    regslice_data_static_M_AXI_slr2_wlast,
    regslice_data_static_M_AXI_slr2_wvalid,
    regslice_data_static_M_AXI_slr2_bready,
    regslice_data_static_M_AXI_slr2_arid,
    regslice_data_static_M_AXI_slr2_araddr,
    regslice_data_static_M_AXI_slr2_arlen,
    regslice_data_static_M_AXI_slr2_arburst,
    regslice_data_static_M_AXI_slr2_arlock,
    regslice_data_static_M_AXI_slr2_arcache,
    regslice_data_static_M_AXI_slr2_arprot,
    regslice_data_static_M_AXI_slr2_arvalid,
    regslice_data_static_M_AXI_slr2_rready,
    regslice_control_periph_M_AXI_slr1_awaddr,
    regslice_control_periph_M_AXI_slr1_awprot,
    regslice_control_periph_M_AXI_slr1_awvalid,
    regslice_control_periph_M_AXI_slr1_wdata,
    regslice_control_periph_M_AXI_slr1_wstrb,
    regslice_control_periph_M_AXI_slr1_wvalid,
    regslice_control_periph_M_AXI_slr1_bready,
    regslice_control_periph_M_AXI_slr1_araddr,
    regslice_control_periph_M_AXI_slr1_arprot,
    regslice_control_periph_M_AXI_slr1_arvalid,
    regslice_control_periph_M_AXI_slr1_rready,
    axi_vip_ctrl_mgntpf_M_AXI_awready,
    axi_vip_ctrl_mgntpf_M_AXI_wready,
    axi_vip_ctrl_mgntpf_M_AXI_bresp,
    axi_vip_ctrl_mgntpf_M_AXI_bvalid,
    axi_vip_ctrl_mgntpf_M_AXI_arready,
    axi_vip_ctrl_mgntpf_M_AXI_rdata,
    axi_vip_ctrl_mgntpf_M_AXI_rresp,
    axi_vip_ctrl_mgntpf_M_AXI_rvalid);
  output [11:0]M01_AXI1_araddr;
  output [0:0]M01_AXI1_arvalid;
  output [11:0]M01_AXI1_awaddr;
  output [0:0]M01_AXI1_awvalid;
  output [0:0]M01_AXI1_bready;
  output [0:0]M01_AXI1_rready;
  output [31:0]M01_AXI1_wdata;
  output [3:0]M01_AXI1_wstrb;
  output [0:0]M01_AXI1_wvalid;
  output [0:0]psreset_gate_pr_control_interconnect_aresetn;
  output [6:0]M01_AXI_araddr;
  output M01_AXI_arvalid;
  output [6:0]M01_AXI_awaddr;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  output M01_AXI_rready;
  output [31:0]M01_AXI_wdata;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output [0:0]psreset_gate_pr_kernel_interconnect_aresetn;
  output [0:0]psreset_gate_pr_data_interconnect_aresetn;
  output [0:0]logic_reset_op_Res;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;
  output [3:0]axi_cdc_data_static_M_AXI_awid;
  output [38:0]axi_cdc_data_static_M_AXI_awaddr;
  output [7:0]axi_cdc_data_static_M_AXI_awlen;
  output [2:0]axi_cdc_data_static_M_AXI_awsize;
  output [1:0]axi_cdc_data_static_M_AXI_awburst;
  output [0:0]axi_cdc_data_static_M_AXI_awlock;
  output [3:0]axi_cdc_data_static_M_AXI_awcache;
  output [2:0]axi_cdc_data_static_M_AXI_awprot;
  output [3:0]axi_cdc_data_static_M_AXI_awregion;
  output [3:0]axi_cdc_data_static_M_AXI_awqos;
  output axi_cdc_data_static_M_AXI_awvalid;
  output [511:0]axi_cdc_data_static_M_AXI_wdata;
  output [63:0]axi_cdc_data_static_M_AXI_wstrb;
  output axi_cdc_data_static_M_AXI_wlast;
  output axi_cdc_data_static_M_AXI_wvalid;
  output axi_cdc_data_static_M_AXI_bready;
  output [3:0]axi_cdc_data_static_M_AXI_arid;
  output [38:0]axi_cdc_data_static_M_AXI_araddr;
  output [7:0]axi_cdc_data_static_M_AXI_arlen;
  output [2:0]axi_cdc_data_static_M_AXI_arsize;
  output [1:0]axi_cdc_data_static_M_AXI_arburst;
  output [0:0]axi_cdc_data_static_M_AXI_arlock;
  output [3:0]axi_cdc_data_static_M_AXI_arcache;
  output [2:0]axi_cdc_data_static_M_AXI_arprot;
  output [3:0]axi_cdc_data_static_M_AXI_arregion;
  output [3:0]axi_cdc_data_static_M_AXI_arqos;
  output axi_cdc_data_static_M_AXI_arvalid;
  output axi_cdc_data_static_M_AXI_rready;
  output [3:0]axi_cdc_data_static_M_AXI1_awid;
  output [38:0]axi_cdc_data_static_M_AXI1_awaddr;
  output [7:0]axi_cdc_data_static_M_AXI1_awlen;
  output [2:0]axi_cdc_data_static_M_AXI1_awsize;
  output [1:0]axi_cdc_data_static_M_AXI1_awburst;
  output [0:0]axi_cdc_data_static_M_AXI1_awlock;
  output [3:0]axi_cdc_data_static_M_AXI1_awcache;
  output [2:0]axi_cdc_data_static_M_AXI1_awprot;
  output [3:0]axi_cdc_data_static_M_AXI1_awqos;
  output axi_cdc_data_static_M_AXI1_awvalid;
  output [127:0]axi_cdc_data_static_M_AXI1_wdata;
  output [15:0]axi_cdc_data_static_M_AXI1_wstrb;
  output axi_cdc_data_static_M_AXI1_wlast;
  output axi_cdc_data_static_M_AXI1_wvalid;
  output axi_cdc_data_static_M_AXI1_bready;
  output [3:0]axi_cdc_data_static_M_AXI1_arid;
  output [38:0]axi_cdc_data_static_M_AXI1_araddr;
  output [7:0]axi_cdc_data_static_M_AXI1_arlen;
  output [2:0]axi_cdc_data_static_M_AXI1_arsize;
  output [1:0]axi_cdc_data_static_M_AXI1_arburst;
  output [0:0]axi_cdc_data_static_M_AXI1_arlock;
  output [3:0]axi_cdc_data_static_M_AXI1_arcache;
  output [2:0]axi_cdc_data_static_M_AXI1_arprot;
  output [3:0]axi_cdc_data_static_M_AXI1_arqos;
  output axi_cdc_data_static_M_AXI1_arvalid;
  output axi_cdc_data_static_M_AXI1_rready;
  output regslice_control_M_AXI_slr1_awready;
  output regslice_control_M_AXI_slr1_wready;
  output [1:0]regslice_control_M_AXI_slr1_bresp;
  output regslice_control_M_AXI_slr1_bvalid;
  output regslice_control_M_AXI_slr1_arready;
  output [31:0]regslice_control_M_AXI_slr1_rdata;
  output [1:0]regslice_control_M_AXI_slr1_rresp;
  output regslice_control_M_AXI_slr1_rvalid;
  output regslice_control_userpf_M_AXI_slr1_awready;
  output regslice_control_userpf_M_AXI_slr1_wready;
  output [1:0]regslice_control_userpf_M_AXI_slr1_bresp;
  output regslice_control_userpf_M_AXI_slr1_bvalid;
  output regslice_control_userpf_M_AXI_slr1_arready;
  output [31:0]regslice_control_userpf_M_AXI_slr1_rdata;
  output [1:0]regslice_control_userpf_M_AXI_slr1_rresp;
  output regslice_control_userpf_M_AXI_slr1_rvalid;
  output regslice_data_static_M_AXI_slr1_awready;
  output regslice_data_static_M_AXI_slr1_wready;
  output [3:0]regslice_data_static_M_AXI_slr1_bid;
  output [1:0]regslice_data_static_M_AXI_slr1_bresp;
  output regslice_data_static_M_AXI_slr1_bvalid;
  output regslice_data_static_M_AXI_slr1_arready;
  output [3:0]regslice_data_static_M_AXI_slr1_rid;
  output [511:0]regslice_data_static_M_AXI_slr1_rdata;
  output [1:0]regslice_data_static_M_AXI_slr1_rresp;
  output regslice_data_static_M_AXI_slr1_rlast;
  output regslice_data_static_M_AXI_slr1_rvalid;
  output regslice_data_static_M_AXI_slr2_awready;
  output regslice_data_static_M_AXI_slr2_wready;
  output [3:0]regslice_data_static_M_AXI_slr2_bid;
  output [1:0]regslice_data_static_M_AXI_slr2_bresp;
  output regslice_data_static_M_AXI_slr2_bvalid;
  output regslice_data_static_M_AXI_slr2_arready;
  output [3:0]regslice_data_static_M_AXI_slr2_rid;
  output [127:0]regslice_data_static_M_AXI_slr2_rdata;
  output [1:0]regslice_data_static_M_AXI_slr2_rresp;
  output regslice_data_static_M_AXI_slr2_rlast;
  output regslice_data_static_M_AXI_slr2_rvalid;
  output regslice_control_periph_M_AXI_slr1_awready;
  output regslice_control_periph_M_AXI_slr1_wready;
  output regslice_control_periph_M_AXI_slr1_bvalid;
  output [1:0]regslice_control_periph_M_AXI_slr1_bresp;
  output regslice_control_periph_M_AXI_slr1_arready;
  output [31:0]regslice_control_periph_M_AXI_slr1_rdata;
  output [1:0]regslice_control_periph_M_AXI_slr1_rresp;
  output regslice_control_periph_M_AXI_slr1_rvalid;
  output [25:0]axi_vip_ctrl_mgntpf_M_AXI_awaddr;
  output axi_vip_ctrl_mgntpf_M_AXI_awvalid;
  output [31:0]axi_vip_ctrl_mgntpf_M_AXI_wdata;
  output axi_vip_ctrl_mgntpf_M_AXI_wvalid;
  output axi_vip_ctrl_mgntpf_M_AXI_bready;
  output [25:0]axi_vip_ctrl_mgntpf_M_AXI_araddr;
  output axi_vip_ctrl_mgntpf_M_AXI_arvalid;
  output axi_vip_ctrl_mgntpf_M_AXI_rready;
  input clkwiz_sysclks_clk_out2;
  input c0_ddr4_ui_clk;
  input M00_ARESETN;
  input [0:0]M01_AXI1_arready;
  input [0:0]M01_AXI1_awready;
  input [1:0]M01_AXI1_bresp;
  input [0:0]M01_AXI1_bvalid;
  input [31:0]M01_AXI1_rdata;
  input [1:0]M01_AXI1_rresp;
  input [0:0]M01_AXI1_rvalid;
  input [0:0]M01_AXI1_wready;
  input blp_s_aclk_kernel_ref_clk_00;
  input M01_AXI_arready;
  input M01_AXI_awready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  input M01_AXI_wready;
  input dma_pcie_axi_aclk;
  input [0:0]iob_static_perst_n_out;
  input [0:0]Dout;
  input clkwiz_sysclks_locked_slr1;
  input pcie_user_lnk_up_slr1;
  input aux_reset_in;
  input clkwiz_kernel_clk_out1;
  input clkwiz_kernel_locked_slr1;
  input clkwiz_kernel2_clk_out1;
  input clkwiz_kernel2_locked_slr1;
  input axi_cdc_data_static_M_AXI_awready;
  input axi_cdc_data_static_M_AXI_wready;
  input [3:0]axi_cdc_data_static_M_AXI_bid;
  input [1:0]axi_cdc_data_static_M_AXI_bresp;
  input axi_cdc_data_static_M_AXI_bvalid;
  input axi_cdc_data_static_M_AXI_arready;
  input [3:0]axi_cdc_data_static_M_AXI_rid;
  input [511:0]axi_cdc_data_static_M_AXI_rdata;
  input [1:0]axi_cdc_data_static_M_AXI_rresp;
  input axi_cdc_data_static_M_AXI_rlast;
  input axi_cdc_data_static_M_AXI_rvalid;
  input axi_cdc_data_static_M_AXI1_awready;
  input axi_cdc_data_static_M_AXI1_wready;
  input [3:0]axi_cdc_data_static_M_AXI1_bid;
  input [1:0]axi_cdc_data_static_M_AXI1_bresp;
  input axi_cdc_data_static_M_AXI1_bvalid;
  input axi_cdc_data_static_M_AXI1_arready;
  input [3:0]axi_cdc_data_static_M_AXI1_rid;
  input [127:0]axi_cdc_data_static_M_AXI1_rdata;
  input [1:0]axi_cdc_data_static_M_AXI1_rresp;
  input axi_cdc_data_static_M_AXI1_rlast;
  input axi_cdc_data_static_M_AXI1_rvalid;
  input [24:0]regslice_control_M_AXI_slr1_awaddr;
  input [2:0]regslice_control_M_AXI_slr1_awprot;
  input regslice_control_M_AXI_slr1_awvalid;
  input [31:0]regslice_control_M_AXI_slr1_wdata;
  input [3:0]regslice_control_M_AXI_slr1_wstrb;
  input regslice_control_M_AXI_slr1_wvalid;
  input regslice_control_M_AXI_slr1_bready;
  input [24:0]regslice_control_M_AXI_slr1_araddr;
  input [2:0]regslice_control_M_AXI_slr1_arprot;
  input regslice_control_M_AXI_slr1_arvalid;
  input regslice_control_M_AXI_slr1_rready;
  input [24:0]regslice_control_userpf_M_AXI_slr1_awaddr;
  input [2:0]regslice_control_userpf_M_AXI_slr1_awprot;
  input regslice_control_userpf_M_AXI_slr1_awvalid;
  input [31:0]regslice_control_userpf_M_AXI_slr1_wdata;
  input [3:0]regslice_control_userpf_M_AXI_slr1_wstrb;
  input regslice_control_userpf_M_AXI_slr1_wvalid;
  input regslice_control_userpf_M_AXI_slr1_bready;
  input [24:0]regslice_control_userpf_M_AXI_slr1_araddr;
  input [2:0]regslice_control_userpf_M_AXI_slr1_arprot;
  input regslice_control_userpf_M_AXI_slr1_arvalid;
  input regslice_control_userpf_M_AXI_slr1_rready;
  input [3:0]regslice_data_static_M_AXI_slr1_awid;
  input [38:0]regslice_data_static_M_AXI_slr1_awaddr;
  input [7:0]regslice_data_static_M_AXI_slr1_awlen;
  input [1:0]regslice_data_static_M_AXI_slr1_awburst;
  input [0:0]regslice_data_static_M_AXI_slr1_awlock;
  input [3:0]regslice_data_static_M_AXI_slr1_awcache;
  input [2:0]regslice_data_static_M_AXI_slr1_awprot;
  input regslice_data_static_M_AXI_slr1_awvalid;
  input [511:0]regslice_data_static_M_AXI_slr1_wdata;
  input [63:0]regslice_data_static_M_AXI_slr1_wstrb;
  input regslice_data_static_M_AXI_slr1_wlast;
  input regslice_data_static_M_AXI_slr1_wvalid;
  input regslice_data_static_M_AXI_slr1_bready;
  input [3:0]regslice_data_static_M_AXI_slr1_arid;
  input [38:0]regslice_data_static_M_AXI_slr1_araddr;
  input [7:0]regslice_data_static_M_AXI_slr1_arlen;
  input [1:0]regslice_data_static_M_AXI_slr1_arburst;
  input [0:0]regslice_data_static_M_AXI_slr1_arlock;
  input [3:0]regslice_data_static_M_AXI_slr1_arcache;
  input [2:0]regslice_data_static_M_AXI_slr1_arprot;
  input regslice_data_static_M_AXI_slr1_arvalid;
  input regslice_data_static_M_AXI_slr1_rready;
  input [3:0]regslice_data_static_M_AXI_slr2_awid;
  input [38:0]regslice_data_static_M_AXI_slr2_awaddr;
  input [7:0]regslice_data_static_M_AXI_slr2_awlen;
  input [1:0]regslice_data_static_M_AXI_slr2_awburst;
  input [0:0]regslice_data_static_M_AXI_slr2_awlock;
  input [3:0]regslice_data_static_M_AXI_slr2_awcache;
  input [2:0]regslice_data_static_M_AXI_slr2_awprot;
  input regslice_data_static_M_AXI_slr2_awvalid;
  input [127:0]regslice_data_static_M_AXI_slr2_wdata;
  input [15:0]regslice_data_static_M_AXI_slr2_wstrb;
  input regslice_data_static_M_AXI_slr2_wlast;
  input regslice_data_static_M_AXI_slr2_wvalid;
  input regslice_data_static_M_AXI_slr2_bready;
  input [3:0]regslice_data_static_M_AXI_slr2_arid;
  input [38:0]regslice_data_static_M_AXI_slr2_araddr;
  input [7:0]regslice_data_static_M_AXI_slr2_arlen;
  input [1:0]regslice_data_static_M_AXI_slr2_arburst;
  input [0:0]regslice_data_static_M_AXI_slr2_arlock;
  input [3:0]regslice_data_static_M_AXI_slr2_arcache;
  input [2:0]regslice_data_static_M_AXI_slr2_arprot;
  input regslice_data_static_M_AXI_slr2_arvalid;
  input regslice_data_static_M_AXI_slr2_rready;
  input [24:0]regslice_control_periph_M_AXI_slr1_awaddr;
  input [2:0]regslice_control_periph_M_AXI_slr1_awprot;
  input regslice_control_periph_M_AXI_slr1_awvalid;
  input [31:0]regslice_control_periph_M_AXI_slr1_wdata;
  input [3:0]regslice_control_periph_M_AXI_slr1_wstrb;
  input regslice_control_periph_M_AXI_slr1_wvalid;
  input regslice_control_periph_M_AXI_slr1_bready;
  input [24:0]regslice_control_periph_M_AXI_slr1_araddr;
  input [2:0]regslice_control_periph_M_AXI_slr1_arprot;
  input regslice_control_periph_M_AXI_slr1_arvalid;
  input regslice_control_periph_M_AXI_slr1_rready;
  input axi_vip_ctrl_mgntpf_M_AXI_awready;
  input axi_vip_ctrl_mgntpf_M_AXI_wready;
  input [1:0]axi_vip_ctrl_mgntpf_M_AXI_bresp;
  input axi_vip_ctrl_mgntpf_M_AXI_bvalid;
  input axi_vip_ctrl_mgntpf_M_AXI_arready;
  input [31:0]axi_vip_ctrl_mgntpf_M_AXI_rdata;
  input [1:0]axi_vip_ctrl_mgntpf_M_AXI_rresp;
  input axi_vip_ctrl_mgntpf_M_AXI_rvalid;

  wire [0:0]Dout;
  wire M00_ARESETN;
  wire [11:0]M01_AXI1_araddr;
  wire [0:0]M01_AXI1_arready;
  wire [0:0]M01_AXI1_arvalid;
  wire [11:0]M01_AXI1_awaddr;
  wire [0:0]M01_AXI1_awready;
  wire [0:0]M01_AXI1_awvalid;
  wire [0:0]M01_AXI1_bready;
  wire [1:0]M01_AXI1_bresp;
  wire [0:0]M01_AXI1_bvalid;
  wire [31:0]M01_AXI1_rdata;
  wire [0:0]M01_AXI1_rready;
  wire [1:0]M01_AXI1_rresp;
  wire [0:0]M01_AXI1_rvalid;
  wire [31:0]M01_AXI1_wdata;
  wire [0:0]M01_AXI1_wready;
  wire [3:0]M01_AXI1_wstrb;
  wire [0:0]M01_AXI1_wvalid;
  wire [6:0]M01_AXI_araddr;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [6:0]M01_AXI_awaddr;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire aux_reset_in;
  wire [38:0]axi_cdc_data_static_M_AXI1_araddr;
  wire [1:0]axi_cdc_data_static_M_AXI1_arburst;
  wire [3:0]axi_cdc_data_static_M_AXI1_arcache;
  wire [3:0]axi_cdc_data_static_M_AXI1_arid;
  wire [7:0]axi_cdc_data_static_M_AXI1_arlen;
  wire [0:0]axi_cdc_data_static_M_AXI1_arlock;
  wire [2:0]axi_cdc_data_static_M_AXI1_arprot;
  wire [3:0]axi_cdc_data_static_M_AXI1_arqos;
  wire axi_cdc_data_static_M_AXI1_arready;
  wire [2:0]axi_cdc_data_static_M_AXI1_arsize;
  wire axi_cdc_data_static_M_AXI1_arvalid;
  wire [38:0]axi_cdc_data_static_M_AXI1_awaddr;
  wire [1:0]axi_cdc_data_static_M_AXI1_awburst;
  wire [3:0]axi_cdc_data_static_M_AXI1_awcache;
  wire [3:0]axi_cdc_data_static_M_AXI1_awid;
  wire [7:0]axi_cdc_data_static_M_AXI1_awlen;
  wire [0:0]axi_cdc_data_static_M_AXI1_awlock;
  wire [2:0]axi_cdc_data_static_M_AXI1_awprot;
  wire [3:0]axi_cdc_data_static_M_AXI1_awqos;
  wire axi_cdc_data_static_M_AXI1_awready;
  wire [2:0]axi_cdc_data_static_M_AXI1_awsize;
  wire axi_cdc_data_static_M_AXI1_awvalid;
  wire [3:0]axi_cdc_data_static_M_AXI1_bid;
  wire axi_cdc_data_static_M_AXI1_bready;
  wire [1:0]axi_cdc_data_static_M_AXI1_bresp;
  wire axi_cdc_data_static_M_AXI1_bvalid;
  wire [127:0]axi_cdc_data_static_M_AXI1_rdata;
  wire [3:0]axi_cdc_data_static_M_AXI1_rid;
  wire axi_cdc_data_static_M_AXI1_rlast;
  wire axi_cdc_data_static_M_AXI1_rready;
  wire [1:0]axi_cdc_data_static_M_AXI1_rresp;
  wire axi_cdc_data_static_M_AXI1_rvalid;
  wire [127:0]axi_cdc_data_static_M_AXI1_wdata;
  wire axi_cdc_data_static_M_AXI1_wlast;
  wire axi_cdc_data_static_M_AXI1_wready;
  wire [15:0]axi_cdc_data_static_M_AXI1_wstrb;
  wire axi_cdc_data_static_M_AXI1_wvalid;
  wire [38:0]axi_cdc_data_static_M_AXI_araddr;
  wire [1:0]axi_cdc_data_static_M_AXI_arburst;
  wire [3:0]axi_cdc_data_static_M_AXI_arcache;
  wire [3:0]axi_cdc_data_static_M_AXI_arid;
  wire [7:0]axi_cdc_data_static_M_AXI_arlen;
  wire [0:0]axi_cdc_data_static_M_AXI_arlock;
  wire [2:0]axi_cdc_data_static_M_AXI_arprot;
  wire [3:0]axi_cdc_data_static_M_AXI_arqos;
  wire axi_cdc_data_static_M_AXI_arready;
  wire [3:0]axi_cdc_data_static_M_AXI_arregion;
  wire [2:0]axi_cdc_data_static_M_AXI_arsize;
  wire axi_cdc_data_static_M_AXI_arvalid;
  wire [38:0]axi_cdc_data_static_M_AXI_awaddr;
  wire [1:0]axi_cdc_data_static_M_AXI_awburst;
  wire [3:0]axi_cdc_data_static_M_AXI_awcache;
  wire [3:0]axi_cdc_data_static_M_AXI_awid;
  wire [7:0]axi_cdc_data_static_M_AXI_awlen;
  wire [0:0]axi_cdc_data_static_M_AXI_awlock;
  wire [2:0]axi_cdc_data_static_M_AXI_awprot;
  wire [3:0]axi_cdc_data_static_M_AXI_awqos;
  wire axi_cdc_data_static_M_AXI_awready;
  wire [3:0]axi_cdc_data_static_M_AXI_awregion;
  wire [2:0]axi_cdc_data_static_M_AXI_awsize;
  wire axi_cdc_data_static_M_AXI_awvalid;
  wire [3:0]axi_cdc_data_static_M_AXI_bid;
  wire axi_cdc_data_static_M_AXI_bready;
  wire [1:0]axi_cdc_data_static_M_AXI_bresp;
  wire axi_cdc_data_static_M_AXI_bvalid;
  wire [511:0]axi_cdc_data_static_M_AXI_rdata;
  wire [3:0]axi_cdc_data_static_M_AXI_rid;
  wire axi_cdc_data_static_M_AXI_rlast;
  wire axi_cdc_data_static_M_AXI_rready;
  wire [1:0]axi_cdc_data_static_M_AXI_rresp;
  wire axi_cdc_data_static_M_AXI_rvalid;
  wire [511:0]axi_cdc_data_static_M_AXI_wdata;
  wire axi_cdc_data_static_M_AXI_wlast;
  wire axi_cdc_data_static_M_AXI_wready;
  wire [63:0]axi_cdc_data_static_M_AXI_wstrb;
  wire axi_cdc_data_static_M_AXI_wvalid;
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
  wire axi_vip_ctrl_mgntpf_M_AXI1_ARREADY;
  wire axi_vip_ctrl_mgntpf_M_AXI1_ARVALID;
  wire [24:0]axi_vip_ctrl_mgntpf_M_AXI1_AWADDR;
  wire [2:0]axi_vip_ctrl_mgntpf_M_AXI1_AWPROT;
  wire axi_vip_ctrl_mgntpf_M_AXI1_AWREADY;
  wire axi_vip_ctrl_mgntpf_M_AXI1_AWVALID;
  wire axi_vip_ctrl_mgntpf_M_AXI1_BREADY;
  wire [1:0]axi_vip_ctrl_mgntpf_M_AXI1_BRESP;
  wire axi_vip_ctrl_mgntpf_M_AXI1_BVALID;
  wire [31:0]axi_vip_ctrl_mgntpf_M_AXI1_RDATA;
  wire axi_vip_ctrl_mgntpf_M_AXI1_RREADY;
  wire [1:0]axi_vip_ctrl_mgntpf_M_AXI1_RRESP;
  wire axi_vip_ctrl_mgntpf_M_AXI1_RVALID;
  wire [31:0]axi_vip_ctrl_mgntpf_M_AXI1_WDATA;
  wire axi_vip_ctrl_mgntpf_M_AXI1_WREADY;
  wire [3:0]axi_vip_ctrl_mgntpf_M_AXI1_WSTRB;
  wire axi_vip_ctrl_mgntpf_M_AXI1_WVALID;
  wire [25:0]axi_vip_ctrl_mgntpf_M_AXI_araddr;
  wire axi_vip_ctrl_mgntpf_M_AXI_arready;
  wire axi_vip_ctrl_mgntpf_M_AXI_arvalid;
  wire [25:0]axi_vip_ctrl_mgntpf_M_AXI_awaddr;
  wire axi_vip_ctrl_mgntpf_M_AXI_awready;
  wire axi_vip_ctrl_mgntpf_M_AXI_awvalid;
  wire axi_vip_ctrl_mgntpf_M_AXI_bready;
  wire [1:0]axi_vip_ctrl_mgntpf_M_AXI_bresp;
  wire axi_vip_ctrl_mgntpf_M_AXI_bvalid;
  wire [31:0]axi_vip_ctrl_mgntpf_M_AXI_rdata;
  wire axi_vip_ctrl_mgntpf_M_AXI_rready;
  wire [1:0]axi_vip_ctrl_mgntpf_M_AXI_rresp;
  wire axi_vip_ctrl_mgntpf_M_AXI_rvalid;
  wire [31:0]axi_vip_ctrl_mgntpf_M_AXI_wdata;
  wire axi_vip_ctrl_mgntpf_M_AXI_wready;
  wire axi_vip_ctrl_mgntpf_M_AXI_wvalid;
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
  wire axi_vip_data_static1_M_AXI_ARLOCK;
  wire [2:0]axi_vip_data_static1_M_AXI_ARPROT;
  wire axi_vip_data_static1_M_AXI_ARREADY;
  wire axi_vip_data_static1_M_AXI_ARVALID;
  wire [38:0]axi_vip_data_static1_M_AXI_AWADDR;
  wire [1:0]axi_vip_data_static1_M_AXI_AWBURST;
  wire [3:0]axi_vip_data_static1_M_AXI_AWCACHE;
  wire [3:0]axi_vip_data_static1_M_AXI_AWID;
  wire [7:0]axi_vip_data_static1_M_AXI_AWLEN;
  wire axi_vip_data_static1_M_AXI_AWLOCK;
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
  wire axi_vip_data_static_M_AXI_ARLOCK;
  wire [2:0]axi_vip_data_static_M_AXI_ARPROT;
  wire axi_vip_data_static_M_AXI_ARREADY;
  wire axi_vip_data_static_M_AXI_ARVALID;
  wire [38:0]axi_vip_data_static_M_AXI_AWADDR;
  wire [1:0]axi_vip_data_static_M_AXI_AWBURST;
  wire [3:0]axi_vip_data_static_M_AXI_AWCACHE;
  wire [3:0]axi_vip_data_static_M_AXI_AWID;
  wire [7:0]axi_vip_data_static_M_AXI_AWLEN;
  wire axi_vip_data_static_M_AXI_AWLOCK;
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
  wire blp_s_aclk_kernel_ref_clk_00;
  wire c0_ddr4_ui_clk;
  wire clkwiz_kernel2_clk_out1;
  wire clkwiz_kernel2_locked_slr1;
  wire clkwiz_kernel_clk_out1;
  wire clkwiz_kernel_locked_slr1;
  wire clkwiz_sysclks_clk_out2;
  wire clkwiz_sysclks_locked_slr1;
  wire dma_pcie_axi_aclk;
  wire [0:0]interconnect_aresetn;
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
  wire [0:0]iob_static_perst_n_out;
  wire [0:0]logic_reset_op_Res;
  wire pcie_user_lnk_up_slr1;
  wire [0:0]peripheral_aresetn;
  wire [0:0]psreset_gate_pr_control_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_data_interconnect_aresetn;
  wire [0:0]psreset_gate_pr_kernel_interconnect_aresetn;
  wire [24:0]regslice_control_M_AXI_slr1_araddr;
  wire [2:0]regslice_control_M_AXI_slr1_arprot;
  wire regslice_control_M_AXI_slr1_arready;
  wire regslice_control_M_AXI_slr1_arvalid;
  wire [24:0]regslice_control_M_AXI_slr1_awaddr;
  wire [2:0]regslice_control_M_AXI_slr1_awprot;
  wire regslice_control_M_AXI_slr1_awready;
  wire regslice_control_M_AXI_slr1_awvalid;
  wire regslice_control_M_AXI_slr1_bready;
  wire [1:0]regslice_control_M_AXI_slr1_bresp;
  wire regslice_control_M_AXI_slr1_bvalid;
  wire [31:0]regslice_control_M_AXI_slr1_rdata;
  wire regslice_control_M_AXI_slr1_rready;
  wire [1:0]regslice_control_M_AXI_slr1_rresp;
  wire regslice_control_M_AXI_slr1_rvalid;
  wire [31:0]regslice_control_M_AXI_slr1_wdata;
  wire regslice_control_M_AXI_slr1_wready;
  wire [3:0]regslice_control_M_AXI_slr1_wstrb;
  wire regslice_control_M_AXI_slr1_wvalid;
  wire [24:0]regslice_control_periph_M_AXI_slr1_araddr;
  wire [2:0]regslice_control_periph_M_AXI_slr1_arprot;
  wire regslice_control_periph_M_AXI_slr1_arready;
  wire regslice_control_periph_M_AXI_slr1_arvalid;
  wire [24:0]regslice_control_periph_M_AXI_slr1_awaddr;
  wire [2:0]regslice_control_periph_M_AXI_slr1_awprot;
  wire regslice_control_periph_M_AXI_slr1_awready;
  wire regslice_control_periph_M_AXI_slr1_awvalid;
  wire regslice_control_periph_M_AXI_slr1_bready;
  wire [1:0]regslice_control_periph_M_AXI_slr1_bresp;
  wire regslice_control_periph_M_AXI_slr1_bvalid;
  wire [31:0]regslice_control_periph_M_AXI_slr1_rdata;
  wire regslice_control_periph_M_AXI_slr1_rready;
  wire [1:0]regslice_control_periph_M_AXI_slr1_rresp;
  wire regslice_control_periph_M_AXI_slr1_rvalid;
  wire [31:0]regslice_control_periph_M_AXI_slr1_wdata;
  wire regslice_control_periph_M_AXI_slr1_wready;
  wire [3:0]regslice_control_periph_M_AXI_slr1_wstrb;
  wire regslice_control_periph_M_AXI_slr1_wvalid;
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
  wire [24:0]regslice_control_userpf_M_AXI_slr1_araddr;
  wire [2:0]regslice_control_userpf_M_AXI_slr1_arprot;
  wire regslice_control_userpf_M_AXI_slr1_arready;
  wire regslice_control_userpf_M_AXI_slr1_arvalid;
  wire [24:0]regslice_control_userpf_M_AXI_slr1_awaddr;
  wire [2:0]regslice_control_userpf_M_AXI_slr1_awprot;
  wire regslice_control_userpf_M_AXI_slr1_awready;
  wire regslice_control_userpf_M_AXI_slr1_awvalid;
  wire regslice_control_userpf_M_AXI_slr1_bready;
  wire [1:0]regslice_control_userpf_M_AXI_slr1_bresp;
  wire regslice_control_userpf_M_AXI_slr1_bvalid;
  wire [31:0]regslice_control_userpf_M_AXI_slr1_rdata;
  wire regslice_control_userpf_M_AXI_slr1_rready;
  wire [1:0]regslice_control_userpf_M_AXI_slr1_rresp;
  wire regslice_control_userpf_M_AXI_slr1_rvalid;
  wire [31:0]regslice_control_userpf_M_AXI_slr1_wdata;
  wire regslice_control_userpf_M_AXI_slr1_wready;
  wire [3:0]regslice_control_userpf_M_AXI_slr1_wstrb;
  wire regslice_control_userpf_M_AXI_slr1_wvalid;
  wire [38:0]regslice_data_static1_M_AXI_ARADDR;
  wire [1:0]regslice_data_static1_M_AXI_ARBURST;
  wire [3:0]regslice_data_static1_M_AXI_ARCACHE;
  wire [3:0]regslice_data_static1_M_AXI_ARID;
  wire [7:0]regslice_data_static1_M_AXI_ARLEN;
  wire regslice_data_static1_M_AXI_ARLOCK;
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
  wire regslice_data_static1_M_AXI_AWLOCK;
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
  wire regslice_data_static_M_AXI1_ARLOCK;
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
  wire regslice_data_static_M_AXI1_AWLOCK;
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
  wire [38:0]regslice_data_static_M_AXI_slr1_araddr;
  wire [1:0]regslice_data_static_M_AXI_slr1_arburst;
  wire [3:0]regslice_data_static_M_AXI_slr1_arcache;
  wire [3:0]regslice_data_static_M_AXI_slr1_arid;
  wire [7:0]regslice_data_static_M_AXI_slr1_arlen;
  wire [0:0]regslice_data_static_M_AXI_slr1_arlock;
  wire [2:0]regslice_data_static_M_AXI_slr1_arprot;
  wire regslice_data_static_M_AXI_slr1_arready;
  wire regslice_data_static_M_AXI_slr1_arvalid;
  wire [38:0]regslice_data_static_M_AXI_slr1_awaddr;
  wire [1:0]regslice_data_static_M_AXI_slr1_awburst;
  wire [3:0]regslice_data_static_M_AXI_slr1_awcache;
  wire [3:0]regslice_data_static_M_AXI_slr1_awid;
  wire [7:0]regslice_data_static_M_AXI_slr1_awlen;
  wire [0:0]regslice_data_static_M_AXI_slr1_awlock;
  wire [2:0]regslice_data_static_M_AXI_slr1_awprot;
  wire regslice_data_static_M_AXI_slr1_awready;
  wire regslice_data_static_M_AXI_slr1_awvalid;
  wire [3:0]regslice_data_static_M_AXI_slr1_bid;
  wire regslice_data_static_M_AXI_slr1_bready;
  wire [1:0]regslice_data_static_M_AXI_slr1_bresp;
  wire regslice_data_static_M_AXI_slr1_bvalid;
  wire [511:0]regslice_data_static_M_AXI_slr1_rdata;
  wire [3:0]regslice_data_static_M_AXI_slr1_rid;
  wire regslice_data_static_M_AXI_slr1_rlast;
  wire regslice_data_static_M_AXI_slr1_rready;
  wire [1:0]regslice_data_static_M_AXI_slr1_rresp;
  wire regslice_data_static_M_AXI_slr1_rvalid;
  wire [511:0]regslice_data_static_M_AXI_slr1_wdata;
  wire regslice_data_static_M_AXI_slr1_wlast;
  wire regslice_data_static_M_AXI_slr1_wready;
  wire [63:0]regslice_data_static_M_AXI_slr1_wstrb;
  wire regslice_data_static_M_AXI_slr1_wvalid;
  wire [38:0]regslice_data_static_M_AXI_slr2_araddr;
  wire [1:0]regslice_data_static_M_AXI_slr2_arburst;
  wire [3:0]regslice_data_static_M_AXI_slr2_arcache;
  wire [3:0]regslice_data_static_M_AXI_slr2_arid;
  wire [7:0]regslice_data_static_M_AXI_slr2_arlen;
  wire [0:0]regslice_data_static_M_AXI_slr2_arlock;
  wire [2:0]regslice_data_static_M_AXI_slr2_arprot;
  wire regslice_data_static_M_AXI_slr2_arready;
  wire regslice_data_static_M_AXI_slr2_arvalid;
  wire [38:0]regslice_data_static_M_AXI_slr2_awaddr;
  wire [1:0]regslice_data_static_M_AXI_slr2_awburst;
  wire [3:0]regslice_data_static_M_AXI_slr2_awcache;
  wire [3:0]regslice_data_static_M_AXI_slr2_awid;
  wire [7:0]regslice_data_static_M_AXI_slr2_awlen;
  wire [0:0]regslice_data_static_M_AXI_slr2_awlock;
  wire [2:0]regslice_data_static_M_AXI_slr2_awprot;
  wire regslice_data_static_M_AXI_slr2_awready;
  wire regslice_data_static_M_AXI_slr2_awvalid;
  wire [3:0]regslice_data_static_M_AXI_slr2_bid;
  wire regslice_data_static_M_AXI_slr2_bready;
  wire [1:0]regslice_data_static_M_AXI_slr2_bresp;
  wire regslice_data_static_M_AXI_slr2_bvalid;
  wire [127:0]regslice_data_static_M_AXI_slr2_rdata;
  wire [3:0]regslice_data_static_M_AXI_slr2_rid;
  wire regslice_data_static_M_AXI_slr2_rlast;
  wire regslice_data_static_M_AXI_slr2_rready;
  wire [1:0]regslice_data_static_M_AXI_slr2_rresp;
  wire regslice_data_static_M_AXI_slr2_rvalid;
  wire [127:0]regslice_data_static_M_AXI_slr2_wdata;
  wire regslice_data_static_M_AXI_slr2_wlast;
  wire regslice_data_static_M_AXI_slr2_wready;
  wire [15:0]regslice_data_static_M_AXI_slr2_wstrb;
  wire regslice_data_static_M_AXI_slr2_wvalid;
  wire [3:0]NLW_axi_cdc_data_static1_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_axi_cdc_data_static1_m_axi_awregion_UNCONNECTED;
  wire [31:0]NLW_axi_gpio_null_gpio_io_o_UNCONNECTED;
  wire [31:0]NLW_axi_gpio_null_gpio_io_t_UNCONNECTED;
  wire [24:12]NLW_axi_interconnect_0_M01_AXI_araddr_UNCONNECTED;
  wire [24:12]NLW_axi_interconnect_0_M01_AXI_awaddr_UNCONNECTED;
  wire [2:0]NLW_regslice_control_mgntpf_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_regslice_control_mgntpf_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_regslice_control_mgntpf_m_axi_wstrb_UNCONNECTED;

  (* X_CORE_INFO = "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1" *) 
  ulp_axi_cdc_data_static_0 axi_cdc_data_static
       (.m_axi_aclk(clkwiz_kernel_clk_out1),
        .m_axi_araddr(axi_cdc_data_static_M_AXI_araddr),
        .m_axi_arburst(axi_cdc_data_static_M_AXI_arburst),
        .m_axi_arcache(axi_cdc_data_static_M_AXI_arcache),
        .m_axi_aresetn(psreset_gate_pr_kernel_interconnect_aresetn),
        .m_axi_arid(axi_cdc_data_static_M_AXI_arid),
        .m_axi_arlen(axi_cdc_data_static_M_AXI_arlen),
        .m_axi_arlock(axi_cdc_data_static_M_AXI_arlock),
        .m_axi_arprot(axi_cdc_data_static_M_AXI_arprot),
        .m_axi_arqos(axi_cdc_data_static_M_AXI_arqos),
        .m_axi_arready(axi_cdc_data_static_M_AXI_arready),
        .m_axi_arregion(axi_cdc_data_static_M_AXI_arregion),
        .m_axi_arsize(axi_cdc_data_static_M_AXI_arsize),
        .m_axi_arvalid(axi_cdc_data_static_M_AXI_arvalid),
        .m_axi_awaddr(axi_cdc_data_static_M_AXI_awaddr),
        .m_axi_awburst(axi_cdc_data_static_M_AXI_awburst),
        .m_axi_awcache(axi_cdc_data_static_M_AXI_awcache),
        .m_axi_awid(axi_cdc_data_static_M_AXI_awid),
        .m_axi_awlen(axi_cdc_data_static_M_AXI_awlen),
        .m_axi_awlock(axi_cdc_data_static_M_AXI_awlock),
        .m_axi_awprot(axi_cdc_data_static_M_AXI_awprot),
        .m_axi_awqos(axi_cdc_data_static_M_AXI_awqos),
        .m_axi_awready(axi_cdc_data_static_M_AXI_awready),
        .m_axi_awregion(axi_cdc_data_static_M_AXI_awregion),
        .m_axi_awsize(axi_cdc_data_static_M_AXI_awsize),
        .m_axi_awvalid(axi_cdc_data_static_M_AXI_awvalid),
        .m_axi_bid(axi_cdc_data_static_M_AXI_bid),
        .m_axi_bready(axi_cdc_data_static_M_AXI_bready),
        .m_axi_bresp(axi_cdc_data_static_M_AXI_bresp),
        .m_axi_bvalid(axi_cdc_data_static_M_AXI_bvalid),
        .m_axi_rdata(axi_cdc_data_static_M_AXI_rdata),
        .m_axi_rid(axi_cdc_data_static_M_AXI_rid),
        .m_axi_rlast(axi_cdc_data_static_M_AXI_rlast),
        .m_axi_rready(axi_cdc_data_static_M_AXI_rready),
        .m_axi_rresp(axi_cdc_data_static_M_AXI_rresp),
        .m_axi_rvalid(axi_cdc_data_static_M_AXI_rvalid),
        .m_axi_wdata(axi_cdc_data_static_M_AXI_wdata),
        .m_axi_wlast(axi_cdc_data_static_M_AXI_wlast),
        .m_axi_wready(axi_cdc_data_static_M_AXI_wready),
        .m_axi_wstrb(axi_cdc_data_static_M_AXI_wstrb),
        .m_axi_wvalid(axi_cdc_data_static_M_AXI_wvalid),
        .s_axi_aclk(dma_pcie_axi_aclk),
        .s_axi_araddr(regslice_data_static_M_AXI1_ARADDR),
        .s_axi_arburst(regslice_data_static_M_AXI1_ARBURST),
        .s_axi_arcache(regslice_data_static_M_AXI1_ARCACHE),
        .s_axi_aresetn(psreset_gate_pr_data_interconnect_aresetn),
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
  (* X_CORE_INFO = "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1" *) 
  ulp_axi_cdc_data_static1_0 axi_cdc_data_static1
       (.m_axi_aclk(clkwiz_kernel_clk_out1),
        .m_axi_araddr(axi_cdc_data_static_M_AXI1_araddr),
        .m_axi_arburst(axi_cdc_data_static_M_AXI1_arburst),
        .m_axi_arcache(axi_cdc_data_static_M_AXI1_arcache),
        .m_axi_aresetn(psreset_gate_pr_kernel_interconnect_aresetn),
        .m_axi_arid(axi_cdc_data_static_M_AXI1_arid),
        .m_axi_arlen(axi_cdc_data_static_M_AXI1_arlen),
        .m_axi_arlock(axi_cdc_data_static_M_AXI1_arlock),
        .m_axi_arprot(axi_cdc_data_static_M_AXI1_arprot),
        .m_axi_arqos(axi_cdc_data_static_M_AXI1_arqos),
        .m_axi_arready(axi_cdc_data_static_M_AXI1_arready),
        .m_axi_arregion(NLW_axi_cdc_data_static1_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(axi_cdc_data_static_M_AXI1_arsize),
        .m_axi_arvalid(axi_cdc_data_static_M_AXI1_arvalid),
        .m_axi_awaddr(axi_cdc_data_static_M_AXI1_awaddr),
        .m_axi_awburst(axi_cdc_data_static_M_AXI1_awburst),
        .m_axi_awcache(axi_cdc_data_static_M_AXI1_awcache),
        .m_axi_awid(axi_cdc_data_static_M_AXI1_awid),
        .m_axi_awlen(axi_cdc_data_static_M_AXI1_awlen),
        .m_axi_awlock(axi_cdc_data_static_M_AXI1_awlock),
        .m_axi_awprot(axi_cdc_data_static_M_AXI1_awprot),
        .m_axi_awqos(axi_cdc_data_static_M_AXI1_awqos),
        .m_axi_awready(axi_cdc_data_static_M_AXI1_awready),
        .m_axi_awregion(NLW_axi_cdc_data_static1_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(axi_cdc_data_static_M_AXI1_awsize),
        .m_axi_awvalid(axi_cdc_data_static_M_AXI1_awvalid),
        .m_axi_bid(axi_cdc_data_static_M_AXI1_bid),
        .m_axi_bready(axi_cdc_data_static_M_AXI1_bready),
        .m_axi_bresp(axi_cdc_data_static_M_AXI1_bresp),
        .m_axi_bvalid(axi_cdc_data_static_M_AXI1_bvalid),
        .m_axi_rdata(axi_cdc_data_static_M_AXI1_rdata),
        .m_axi_rid(axi_cdc_data_static_M_AXI1_rid),
        .m_axi_rlast(axi_cdc_data_static_M_AXI1_rlast),
        .m_axi_rready(axi_cdc_data_static_M_AXI1_rready),
        .m_axi_rresp(axi_cdc_data_static_M_AXI1_rresp),
        .m_axi_rvalid(axi_cdc_data_static_M_AXI1_rvalid),
        .m_axi_wdata(axi_cdc_data_static_M_AXI1_wdata),
        .m_axi_wlast(axi_cdc_data_static_M_AXI1_wlast),
        .m_axi_wready(axi_cdc_data_static_M_AXI1_wready),
        .m_axi_wstrb(axi_cdc_data_static_M_AXI1_wstrb),
        .m_axi_wvalid(axi_cdc_data_static_M_AXI1_wvalid),
        .s_axi_aclk(dma_pcie_axi_aclk),
        .s_axi_araddr(regslice_data_static1_M_AXI_ARADDR),
        .s_axi_arburst(regslice_data_static1_M_AXI_ARBURST),
        .s_axi_arcache(regslice_data_static1_M_AXI_ARCACHE),
        .s_axi_aresetn(psreset_gate_pr_data_interconnect_aresetn),
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
  (* X_CORE_INFO = "axi_gpio,Vivado 2021.1" *) 
  ulp_axi_gpio_null_0 axi_gpio_null
       (.gpio_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio_io_o(NLW_axi_gpio_null_gpio_io_o_UNCONNECTED[31:0]),
        .gpio_io_t(NLW_axi_gpio_null_gpio_io_t_UNCONNECTED[31:0]),
        .s_axi_aclk(dma_pcie_axi_aclk),
        .s_axi_araddr(interconnect_axilite_user_M00_AXI_ARADDR),
        .s_axi_aresetn(psreset_gate_pr_data_interconnect_aresetn),
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
       (.ACLK(clkwiz_sysclks_clk_out2),
        .ARESETN(psreset_gate_pr_control_interconnect_aresetn),
        .M00_ACLK(c0_ddr4_ui_clk),
        .M00_ARESETN(M00_ARESETN),
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
        .M01_ACLK(1'b0),
        .M01_ARESETN(1'b0),
        .M01_AXI_araddr({NLW_axi_interconnect_0_M01_AXI_araddr_UNCONNECTED[24:12],M01_AXI1_araddr}),
        .M01_AXI_arready(M01_AXI1_arready),
        .M01_AXI_arvalid(M01_AXI1_arvalid),
        .M01_AXI_awaddr({NLW_axi_interconnect_0_M01_AXI_awaddr_UNCONNECTED[24:12],M01_AXI1_awaddr}),
        .M01_AXI_awready(M01_AXI1_awready),
        .M01_AXI_awvalid(M01_AXI1_awvalid),
        .M01_AXI_bready(M01_AXI1_bready),
        .M01_AXI_bresp(M01_AXI1_bresp),
        .M01_AXI_bvalid(M01_AXI1_bvalid),
        .M01_AXI_rdata(M01_AXI1_rdata),
        .M01_AXI_rready(M01_AXI1_rready),
        .M01_AXI_rresp(M01_AXI1_rresp),
        .M01_AXI_rvalid(M01_AXI1_rvalid),
        .M01_AXI_wdata(M01_AXI1_wdata),
        .M01_AXI_wready(M01_AXI1_wready),
        .M01_AXI_wstrb(M01_AXI1_wstrb),
        .M01_AXI_wvalid(M01_AXI1_wvalid),
        .S00_ACLK(1'b0),
        .S00_ARESETN(1'b0),
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
  (* X_CORE_INFO = "axi_vip_v1_1_10_top,Vivado 2021.1" *) 
  ulp_axi_vip_ctrl_mgntpf_0 axi_vip_ctrl_mgntpf
       (.aclk(clkwiz_sysclks_clk_out2),
        .aresetn(psreset_gate_pr_control_interconnect_aresetn),
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
        .s_axi_araddr(regslice_control_M_AXI_slr1_araddr),
        .s_axi_arprot(regslice_control_M_AXI_slr1_arprot),
        .s_axi_arready(regslice_control_M_AXI_slr1_arready),
        .s_axi_arvalid(regslice_control_M_AXI_slr1_arvalid),
        .s_axi_awaddr(regslice_control_M_AXI_slr1_awaddr),
        .s_axi_awprot(regslice_control_M_AXI_slr1_awprot),
        .s_axi_awready(regslice_control_M_AXI_slr1_awready),
        .s_axi_awvalid(regslice_control_M_AXI_slr1_awvalid),
        .s_axi_bready(regslice_control_M_AXI_slr1_bready),
        .s_axi_bresp(regslice_control_M_AXI_slr1_bresp),
        .s_axi_bvalid(regslice_control_M_AXI_slr1_bvalid),
        .s_axi_rdata(regslice_control_M_AXI_slr1_rdata),
        .s_axi_rready(regslice_control_M_AXI_slr1_rready),
        .s_axi_rresp(regslice_control_M_AXI_slr1_rresp),
        .s_axi_rvalid(regslice_control_M_AXI_slr1_rvalid),
        .s_axi_wdata(regslice_control_M_AXI_slr1_wdata),
        .s_axi_wready(regslice_control_M_AXI_slr1_wready),
        .s_axi_wstrb(regslice_control_M_AXI_slr1_wstrb),
        .s_axi_wvalid(regslice_control_M_AXI_slr1_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_10_top,Vivado 2021.1" *) 
  ulp_axi_vip_ctrl_userpf_0 axi_vip_ctrl_userpf
       (.aclk(dma_pcie_axi_aclk),
        .aresetn(psreset_gate_pr_data_interconnect_aresetn),
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
        .s_axi_araddr(regslice_control_userpf_M_AXI_slr1_araddr),
        .s_axi_arprot(regslice_control_userpf_M_AXI_slr1_arprot),
        .s_axi_arready(regslice_control_userpf_M_AXI_slr1_arready),
        .s_axi_arvalid(regslice_control_userpf_M_AXI_slr1_arvalid),
        .s_axi_awaddr(regslice_control_userpf_M_AXI_slr1_awaddr),
        .s_axi_awprot(regslice_control_userpf_M_AXI_slr1_awprot),
        .s_axi_awready(regslice_control_userpf_M_AXI_slr1_awready),
        .s_axi_awvalid(regslice_control_userpf_M_AXI_slr1_awvalid),
        .s_axi_bready(regslice_control_userpf_M_AXI_slr1_bready),
        .s_axi_bresp(regslice_control_userpf_M_AXI_slr1_bresp),
        .s_axi_bvalid(regslice_control_userpf_M_AXI_slr1_bvalid),
        .s_axi_rdata(regslice_control_userpf_M_AXI_slr1_rdata),
        .s_axi_rready(regslice_control_userpf_M_AXI_slr1_rready),
        .s_axi_rresp(regslice_control_userpf_M_AXI_slr1_rresp),
        .s_axi_rvalid(regslice_control_userpf_M_AXI_slr1_rvalid),
        .s_axi_wdata(regslice_control_userpf_M_AXI_slr1_wdata),
        .s_axi_wready(regslice_control_userpf_M_AXI_slr1_wready),
        .s_axi_wstrb(regslice_control_userpf_M_AXI_slr1_wstrb),
        .s_axi_wvalid(regslice_control_userpf_M_AXI_slr1_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_10_top,Vivado 2021.1" *) 
  ulp_axi_vip_data_static_0 axi_vip_data_static
       (.aclk(dma_pcie_axi_aclk),
        .aresetn(psreset_gate_pr_data_interconnect_aresetn),
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
        .s_axi_araddr(regslice_data_static_M_AXI_slr1_araddr),
        .s_axi_arburst(regslice_data_static_M_AXI_slr1_arburst),
        .s_axi_arcache(regslice_data_static_M_AXI_slr1_arcache),
        .s_axi_arid(regslice_data_static_M_AXI_slr1_arid),
        .s_axi_arlen(regslice_data_static_M_AXI_slr1_arlen),
        .s_axi_arlock(regslice_data_static_M_AXI_slr1_arlock),
        .s_axi_arprot(regslice_data_static_M_AXI_slr1_arprot),
        .s_axi_arready(regslice_data_static_M_AXI_slr1_arready),
        .s_axi_arvalid(regslice_data_static_M_AXI_slr1_arvalid),
        .s_axi_awaddr(regslice_data_static_M_AXI_slr1_awaddr),
        .s_axi_awburst(regslice_data_static_M_AXI_slr1_awburst),
        .s_axi_awcache(regslice_data_static_M_AXI_slr1_awcache),
        .s_axi_awid(regslice_data_static_M_AXI_slr1_awid),
        .s_axi_awlen(regslice_data_static_M_AXI_slr1_awlen),
        .s_axi_awlock(regslice_data_static_M_AXI_slr1_awlock),
        .s_axi_awprot(regslice_data_static_M_AXI_slr1_awprot),
        .s_axi_awready(regslice_data_static_M_AXI_slr1_awready),
        .s_axi_awvalid(regslice_data_static_M_AXI_slr1_awvalid),
        .s_axi_bid(regslice_data_static_M_AXI_slr1_bid),
        .s_axi_bready(regslice_data_static_M_AXI_slr1_bready),
        .s_axi_bresp(regslice_data_static_M_AXI_slr1_bresp),
        .s_axi_bvalid(regslice_data_static_M_AXI_slr1_bvalid),
        .s_axi_rdata(regslice_data_static_M_AXI_slr1_rdata),
        .s_axi_rid(regslice_data_static_M_AXI_slr1_rid),
        .s_axi_rlast(regslice_data_static_M_AXI_slr1_rlast),
        .s_axi_rready(regslice_data_static_M_AXI_slr1_rready),
        .s_axi_rresp(regslice_data_static_M_AXI_slr1_rresp),
        .s_axi_rvalid(regslice_data_static_M_AXI_slr1_rvalid),
        .s_axi_wdata(regslice_data_static_M_AXI_slr1_wdata),
        .s_axi_wlast(regslice_data_static_M_AXI_slr1_wlast),
        .s_axi_wready(regslice_data_static_M_AXI_slr1_wready),
        .s_axi_wstrb(regslice_data_static_M_AXI_slr1_wstrb),
        .s_axi_wvalid(regslice_data_static_M_AXI_slr1_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_10_top,Vivado 2021.1" *) 
  ulp_axi_vip_data_static1_0 axi_vip_data_static1
       (.aclk(dma_pcie_axi_aclk),
        .aresetn(psreset_gate_pr_data_interconnect_aresetn),
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
        .s_axi_araddr(regslice_data_static_M_AXI_slr2_araddr),
        .s_axi_arburst(regslice_data_static_M_AXI_slr2_arburst),
        .s_axi_arcache(regslice_data_static_M_AXI_slr2_arcache),
        .s_axi_arid(regslice_data_static_M_AXI_slr2_arid),
        .s_axi_arlen(regslice_data_static_M_AXI_slr2_arlen),
        .s_axi_arlock(regslice_data_static_M_AXI_slr2_arlock),
        .s_axi_arprot(regslice_data_static_M_AXI_slr2_arprot),
        .s_axi_arready(regslice_data_static_M_AXI_slr2_arready),
        .s_axi_arvalid(regslice_data_static_M_AXI_slr2_arvalid),
        .s_axi_awaddr(regslice_data_static_M_AXI_slr2_awaddr),
        .s_axi_awburst(regslice_data_static_M_AXI_slr2_awburst),
        .s_axi_awcache(regslice_data_static_M_AXI_slr2_awcache),
        .s_axi_awid(regslice_data_static_M_AXI_slr2_awid),
        .s_axi_awlen(regslice_data_static_M_AXI_slr2_awlen),
        .s_axi_awlock(regslice_data_static_M_AXI_slr2_awlock),
        .s_axi_awprot(regslice_data_static_M_AXI_slr2_awprot),
        .s_axi_awready(regslice_data_static_M_AXI_slr2_awready),
        .s_axi_awvalid(regslice_data_static_M_AXI_slr2_awvalid),
        .s_axi_bid(regslice_data_static_M_AXI_slr2_bid),
        .s_axi_bready(regslice_data_static_M_AXI_slr2_bready),
        .s_axi_bresp(regslice_data_static_M_AXI_slr2_bresp),
        .s_axi_bvalid(regslice_data_static_M_AXI_slr2_bvalid),
        .s_axi_rdata(regslice_data_static_M_AXI_slr2_rdata),
        .s_axi_rid(regslice_data_static_M_AXI_slr2_rid),
        .s_axi_rlast(regslice_data_static_M_AXI_slr2_rlast),
        .s_axi_rready(regslice_data_static_M_AXI_slr2_rready),
        .s_axi_rresp(regslice_data_static_M_AXI_slr2_rresp),
        .s_axi_rvalid(regslice_data_static_M_AXI_slr2_rvalid),
        .s_axi_wdata(regslice_data_static_M_AXI_slr2_wdata),
        .s_axi_wlast(regslice_data_static_M_AXI_slr2_wlast),
        .s_axi_wready(regslice_data_static_M_AXI_slr2_wready),
        .s_axi_wstrb(regslice_data_static_M_AXI_slr2_wstrb),
        .s_axi_wvalid(regslice_data_static_M_AXI_slr2_wvalid));
  (* X_CORE_INFO = "freq_counter,Vivado 2021.1" *) 
  ulp_freq_counter_0_0 freq_counter_0
       (.axil_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,regslice_control_periph_M_AXI_slr1_araddr}),
        .axil_arprot(regslice_control_periph_M_AXI_slr1_arprot),
        .axil_arready(regslice_control_periph_M_AXI_slr1_arready),
        .axil_arvalid(regslice_control_periph_M_AXI_slr1_arvalid),
        .axil_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,regslice_control_periph_M_AXI_slr1_awaddr}),
        .axil_awprot(regslice_control_periph_M_AXI_slr1_awprot),
        .axil_awready(regslice_control_periph_M_AXI_slr1_awready),
        .axil_awvalid(regslice_control_periph_M_AXI_slr1_awvalid),
        .axil_bready(regslice_control_periph_M_AXI_slr1_bready),
        .axil_bresp(regslice_control_periph_M_AXI_slr1_bresp),
        .axil_bvalid(regslice_control_periph_M_AXI_slr1_bvalid),
        .axil_rdata(regslice_control_periph_M_AXI_slr1_rdata),
        .axil_rready(regslice_control_periph_M_AXI_slr1_rready),
        .axil_rresp(regslice_control_periph_M_AXI_slr1_rresp),
        .axil_rvalid(regslice_control_periph_M_AXI_slr1_rvalid),
        .axil_wdata(regslice_control_periph_M_AXI_slr1_wdata),
        .axil_wready(regslice_control_periph_M_AXI_slr1_wready),
        .axil_wstrb(regslice_control_periph_M_AXI_slr1_wstrb),
        .axil_wvalid(regslice_control_periph_M_AXI_slr1_wvalid),
        .clk(clkwiz_sysclks_clk_out2),
        .reset_n(psreset_gate_pr_control_interconnect_aresetn),
        .test_clk0(clkwiz_kernel_clk_out1),
        .test_clk1(clkwiz_kernel2_clk_out1));
  ulp_interconnect_axilite_user_0 interconnect_axilite_user
       (.ACLK(1'b0),
        .ARESETN(1'b0),
        .M00_ACLK(1'b0),
        .M00_ARESETN(1'b0),
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
        .M01_ACLK(blp_s_aclk_kernel_ref_clk_00),
        .M01_ARESETN(psreset_gate_pr_kernel_interconnect_aresetn),
        .M01_AXI_araddr(M01_AXI_araddr),
        .M01_AXI_arready(M01_AXI_arready),
        .M01_AXI_arvalid(M01_AXI_arvalid),
        .M01_AXI_awaddr(M01_AXI_awaddr),
        .M01_AXI_awready(M01_AXI_awready),
        .M01_AXI_awvalid(M01_AXI_awvalid),
        .M01_AXI_bready(M01_AXI_bready),
        .M01_AXI_bresp(M01_AXI_bresp),
        .M01_AXI_bvalid(M01_AXI_bvalid),
        .M01_AXI_rdata(M01_AXI_rdata),
        .M01_AXI_rready(M01_AXI_rready),
        .M01_AXI_rresp(M01_AXI_rresp),
        .M01_AXI_rvalid(M01_AXI_rvalid),
        .M01_AXI_wdata(M01_AXI_wdata),
        .M01_AXI_wready(M01_AXI_wready),
        .M01_AXI_wstrb(M01_AXI_wstrb),
        .M01_AXI_wvalid(M01_AXI_wvalid),
        .S00_ACLK(dma_pcie_axi_aclk),
        .S00_ARESETN(psreset_gate_pr_data_interconnect_aresetn),
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
  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_regslice_control_mgntpf_0 regslice_control_mgntpf
       (.aclk(c0_ddr4_ui_clk),
        .aresetn(M00_ARESETN),
        .m_axi_araddr(axi_vip_ctrl_mgntpf_M_AXI_araddr),
        .m_axi_arprot(NLW_regslice_control_mgntpf_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(axi_vip_ctrl_mgntpf_M_AXI_arready),
        .m_axi_arvalid(axi_vip_ctrl_mgntpf_M_AXI_arvalid),
        .m_axi_awaddr(axi_vip_ctrl_mgntpf_M_AXI_awaddr),
        .m_axi_awprot(NLW_regslice_control_mgntpf_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(axi_vip_ctrl_mgntpf_M_AXI_awready),
        .m_axi_awvalid(axi_vip_ctrl_mgntpf_M_AXI_awvalid),
        .m_axi_bready(axi_vip_ctrl_mgntpf_M_AXI_bready),
        .m_axi_bresp(axi_vip_ctrl_mgntpf_M_AXI_bresp),
        .m_axi_bvalid(axi_vip_ctrl_mgntpf_M_AXI_bvalid),
        .m_axi_rdata(axi_vip_ctrl_mgntpf_M_AXI_rdata),
        .m_axi_rready(axi_vip_ctrl_mgntpf_M_AXI_rready),
        .m_axi_rresp(axi_vip_ctrl_mgntpf_M_AXI_rresp),
        .m_axi_rvalid(axi_vip_ctrl_mgntpf_M_AXI_rvalid),
        .m_axi_wdata(axi_vip_ctrl_mgntpf_M_AXI_wdata),
        .m_axi_wready(axi_vip_ctrl_mgntpf_M_AXI_wready),
        .m_axi_wstrb(NLW_regslice_control_mgntpf_m_axi_wstrb_UNCONNECTED[3:0]),
        .m_axi_wvalid(axi_vip_ctrl_mgntpf_M_AXI_wvalid),
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
  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_regslice_control_userpf_0 regslice_control_userpf
       (.aclk(dma_pcie_axi_aclk),
        .aresetn(psreset_gate_pr_data_interconnect_aresetn),
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
  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_regslice_data_static_0 regslice_data_static
       (.aclk(dma_pcie_axi_aclk),
        .aresetn(psreset_gate_pr_data_interconnect_aresetn),
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
  (* X_CORE_INFO = "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1" *) 
  ulp_regslice_data_static1_0 regslice_data_static1
       (.aclk(dma_pcie_axi_aclk),
        .aresetn(psreset_gate_pr_data_interconnect_aresetn),
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
  ulp_reset_controllers_imp_440OZ2 reset_controllers
       (.Dout(Dout),
        .aux_reset_in(aux_reset_in),
        .c0_ddr4_ui_clk(c0_ddr4_ui_clk),
        .clkwiz_kernel2_clk_out1(clkwiz_kernel2_clk_out1),
        .clkwiz_kernel2_locked_slr1(clkwiz_kernel2_locked_slr1),
        .clkwiz_kernel_clk_out1(clkwiz_kernel_clk_out1),
        .clkwiz_kernel_locked_slr1(clkwiz_kernel_locked_slr1),
        .clkwiz_sysclks_clk_out2(clkwiz_sysclks_clk_out2),
        .clkwiz_sysclks_locked_slr1(clkwiz_sysclks_locked_slr1),
        .dma_pcie_axi_aclk(dma_pcie_axi_aclk),
        .interconnect_aresetn(interconnect_aresetn),
        .iob_static_perst_n_out(iob_static_perst_n_out),
        .logic_reset_op_Res(logic_reset_op_Res),
        .pcie_user_lnk_up_slr1(pcie_user_lnk_up_slr1),
        .peripheral_aresetn(peripheral_aresetn),
        .psreset_gate_pr_control_interconnect_aresetn(psreset_gate_pr_control_interconnect_aresetn),
        .psreset_gate_pr_data_interconnect_aresetn(psreset_gate_pr_data_interconnect_aresetn),
        .psreset_gate_pr_kernel_interconnect_aresetn(psreset_gate_pr_kernel_interconnect_aresetn));
endmodule

(* X_CORE_INFO = "bd_9997,Vivado 2021.1" *) 
module ulp_user_debug_bridge_0
   (s_axi_aclk,
    s_axi_aresetn,
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
    S_AXI_wvalid,
    m0_bscan_bscanid_en,
    m0_bscan_capture,
    m0_bscan_drck,
    m0_bscan_reset,
    m0_bscan_runtest,
    m0_bscan_sel,
    m0_bscan_shift,
    m0_bscan_tck,
    m0_bscan_tdi,
    m0_bscan_tdo,
    m0_bscan_tms,
    m0_bscan_update);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [4:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [4:0]S_AXI_awaddr;
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
  output m0_bscan_bscanid_en;
  output m0_bscan_capture;
  output m0_bscan_drck;
  output m0_bscan_reset;
  output m0_bscan_runtest;
  output m0_bscan_sel;
  output m0_bscan_shift;
  output m0_bscan_tck;
  output m0_bscan_tdi;
  input m0_bscan_tdo;
  output m0_bscan_tms;
  output m0_bscan_update;


endmodule

(* X_CORE_INFO = "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1" *) 
module ulp_xbar_2
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [23:0]s_axi_awid;
  input [255:0]s_axi_awaddr;
  input [31:0]s_axi_awlen;
  input [11:0]s_axi_awsize;
  input [7:0]s_axi_awburst;
  input [3:0]s_axi_awlock;
  input [15:0]s_axi_awcache;
  input [11:0]s_axi_awprot;
  input [15:0]s_axi_awqos;
  input [3:0]s_axi_awvalid;
  output [3:0]s_axi_awready;
  input [2047:0]s_axi_wdata;
  input [255:0]s_axi_wstrb;
  input [3:0]s_axi_wlast;
  input [3:0]s_axi_wvalid;
  output [3:0]s_axi_wready;
  output [23:0]s_axi_bid;
  output [7:0]s_axi_bresp;
  output [3:0]s_axi_bvalid;
  input [3:0]s_axi_bready;
  input [23:0]s_axi_arid;
  input [255:0]s_axi_araddr;
  input [31:0]s_axi_arlen;
  input [11:0]s_axi_arsize;
  input [7:0]s_axi_arburst;
  input [3:0]s_axi_arlock;
  input [15:0]s_axi_arcache;
  input [11:0]s_axi_arprot;
  input [15:0]s_axi_arqos;
  input [3:0]s_axi_arvalid;
  output [3:0]s_axi_arready;
  output [23:0]s_axi_rid;
  output [2047:0]s_axi_rdata;
  output [7:0]s_axi_rresp;
  output [3:0]s_axi_rlast;
  output [3:0]s_axi_rvalid;
  input [3:0]s_axi_rready;
  output [11:0]m_axi_awid;
  output [127:0]m_axi_awaddr;
  output [15:0]m_axi_awlen;
  output [5:0]m_axi_awsize;
  output [3:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [7:0]m_axi_awcache;
  output [5:0]m_axi_awprot;
  output [7:0]m_axi_awregion;
  output [7:0]m_axi_awqos;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [1023:0]m_axi_wdata;
  output [127:0]m_axi_wstrb;
  output [1:0]m_axi_wlast;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [11:0]m_axi_bid;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [11:0]m_axi_arid;
  output [127:0]m_axi_araddr;
  output [15:0]m_axi_arlen;
  output [5:0]m_axi_arsize;
  output [3:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [7:0]m_axi_arcache;
  output [5:0]m_axi_arprot;
  output [7:0]m_axi_arregion;
  output [7:0]m_axi_arqos;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [11:0]m_axi_rid;
  input [1023:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rlast;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1" *) 
module ulp_xbar_3
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [24:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [24:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [49:0]m_axi_awaddr;
  output [5:0]m_axi_awprot;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [49:0]m_axi_araddr;
  output [5:0]m_axi_arprot;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [63:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1" *) 
module ulp_xbar_4
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [1:0]s_axi_awid;
  input [127:0]s_axi_awaddr;
  input [15:0]s_axi_awlen;
  input [5:0]s_axi_awsize;
  input [3:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [7:0]s_axi_awcache;
  input [5:0]s_axi_awprot;
  input [7:0]s_axi_awqos;
  input [1:0]s_axi_awvalid;
  output [1:0]s_axi_awready;
  input [1023:0]s_axi_wdata;
  input [127:0]s_axi_wstrb;
  input [1:0]s_axi_wlast;
  input [1:0]s_axi_wvalid;
  output [1:0]s_axi_wready;
  output [1:0]s_axi_bid;
  output [3:0]s_axi_bresp;
  output [1:0]s_axi_bvalid;
  input [1:0]s_axi_bready;
  input [1:0]s_axi_arid;
  input [127:0]s_axi_araddr;
  input [15:0]s_axi_arlen;
  input [5:0]s_axi_arsize;
  input [3:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [7:0]s_axi_arcache;
  input [5:0]s_axi_arprot;
  input [7:0]s_axi_arqos;
  input [1:0]s_axi_arvalid;
  output [1:0]s_axi_arready;
  output [1:0]s_axi_rid;
  output [1023:0]s_axi_rdata;
  output [3:0]s_axi_rresp;
  output [1:0]s_axi_rlast;
  output [1:0]s_axi_rvalid;
  input [1:0]s_axi_rready;
  output [0:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awvalid;
  input [0:0]m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output [0:0]m_axi_wlast;
  output [0:0]m_axi_wvalid;
  input [0:0]m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_bvalid;
  output [0:0]m_axi_bready;
  output [0:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_arvalid;
  input [0:0]m_axi_arready;
  input [0:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input [0:0]m_axi_rlast;
  input [0:0]m_axi_rvalid;
  output [0:0]m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1" *) 
module ulp_xbar_5
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [24:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [24:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [49:0]m_axi_awaddr;
  output [5:0]m_axi_awprot;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [49:0]m_axi_araddr;
  output [5:0]m_axi_arprot;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [63:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;


endmodule

(* CHECK_LICENSE_TYPE = "ulp_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.1" *) 
module ulp_xlslice_0_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "ulp_xlslice_1_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.1" *) 
module ulp_xlslice_1_0
   (Din,
    Dout);
  input [1:0]Din;
  output [0:0]Dout;

  wire [1:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "ulp_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.1" *) 
module ulp_xlslice_2_0
   (Din,
    Dout);
  input [2:0]Din;
  output [0:0]Dout;

  wire [2:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "ulp_xlslice_3_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.1" *) 
module ulp_xlslice_3_0
   (Din,
    Dout);
  input [2:0]Din;
  output [0:0]Dout;

  wire [2:0]Din;

  assign Dout[0] = Din[1];
endmodule

(* CHECK_LICENSE_TYPE = "ulp_xlslice_4_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2021.1" *) 
module ulp_xlslice_4_0
   (Din,
    Dout);
  input [2:0]Din;
  output [0:0]Dout;

  wire [2:0]Din;

  assign Dout[0] = Din[2];
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
