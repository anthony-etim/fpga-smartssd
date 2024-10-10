// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Dec 31 12:11:08 2021
// Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top ulp_krnl_ro_rtl_1_0 -prefix
//               ulp_krnl_ro_rtl_1_0_ ulp_krnl_ro_rtl_1_0_sim_netlist.v
// Design      : ulp_krnl_ro_rtl_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku15p-ffva1156-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* COUNTER_BIT = "32" *) 
module ulp_krnl_ro_rtl_1_0_counter
   (tick,
    reset,
    count);
  input tick;
  input reset;
  output [31:0]count;

  wire [31:0]count;
  wire \count_reg[7]_i_2_n_0 ;
  wire \count_reg_reg[15]_i_1_n_0 ;
  wire \count_reg_reg[15]_i_1_n_1 ;
  wire \count_reg_reg[15]_i_1_n_10 ;
  wire \count_reg_reg[15]_i_1_n_11 ;
  wire \count_reg_reg[15]_i_1_n_12 ;
  wire \count_reg_reg[15]_i_1_n_13 ;
  wire \count_reg_reg[15]_i_1_n_14 ;
  wire \count_reg_reg[15]_i_1_n_15 ;
  wire \count_reg_reg[15]_i_1_n_2 ;
  wire \count_reg_reg[15]_i_1_n_3 ;
  wire \count_reg_reg[15]_i_1_n_4 ;
  wire \count_reg_reg[15]_i_1_n_5 ;
  wire \count_reg_reg[15]_i_1_n_6 ;
  wire \count_reg_reg[15]_i_1_n_7 ;
  wire \count_reg_reg[15]_i_1_n_8 ;
  wire \count_reg_reg[15]_i_1_n_9 ;
  wire \count_reg_reg[23]_i_1_n_0 ;
  wire \count_reg_reg[23]_i_1_n_1 ;
  wire \count_reg_reg[23]_i_1_n_10 ;
  wire \count_reg_reg[23]_i_1_n_11 ;
  wire \count_reg_reg[23]_i_1_n_12 ;
  wire \count_reg_reg[23]_i_1_n_13 ;
  wire \count_reg_reg[23]_i_1_n_14 ;
  wire \count_reg_reg[23]_i_1_n_15 ;
  wire \count_reg_reg[23]_i_1_n_2 ;
  wire \count_reg_reg[23]_i_1_n_3 ;
  wire \count_reg_reg[23]_i_1_n_4 ;
  wire \count_reg_reg[23]_i_1_n_5 ;
  wire \count_reg_reg[23]_i_1_n_6 ;
  wire \count_reg_reg[23]_i_1_n_7 ;
  wire \count_reg_reg[23]_i_1_n_8 ;
  wire \count_reg_reg[23]_i_1_n_9 ;
  wire \count_reg_reg[31]_i_1_n_1 ;
  wire \count_reg_reg[31]_i_1_n_10 ;
  wire \count_reg_reg[31]_i_1_n_11 ;
  wire \count_reg_reg[31]_i_1_n_12 ;
  wire \count_reg_reg[31]_i_1_n_13 ;
  wire \count_reg_reg[31]_i_1_n_14 ;
  wire \count_reg_reg[31]_i_1_n_15 ;
  wire \count_reg_reg[31]_i_1_n_2 ;
  wire \count_reg_reg[31]_i_1_n_3 ;
  wire \count_reg_reg[31]_i_1_n_4 ;
  wire \count_reg_reg[31]_i_1_n_5 ;
  wire \count_reg_reg[31]_i_1_n_6 ;
  wire \count_reg_reg[31]_i_1_n_7 ;
  wire \count_reg_reg[31]_i_1_n_8 ;
  wire \count_reg_reg[31]_i_1_n_9 ;
  wire \count_reg_reg[7]_i_1_n_0 ;
  wire \count_reg_reg[7]_i_1_n_1 ;
  wire \count_reg_reg[7]_i_1_n_10 ;
  wire \count_reg_reg[7]_i_1_n_11 ;
  wire \count_reg_reg[7]_i_1_n_12 ;
  wire \count_reg_reg[7]_i_1_n_13 ;
  wire \count_reg_reg[7]_i_1_n_14 ;
  wire \count_reg_reg[7]_i_1_n_15 ;
  wire \count_reg_reg[7]_i_1_n_2 ;
  wire \count_reg_reg[7]_i_1_n_3 ;
  wire \count_reg_reg[7]_i_1_n_4 ;
  wire \count_reg_reg[7]_i_1_n_5 ;
  wire \count_reg_reg[7]_i_1_n_6 ;
  wire \count_reg_reg[7]_i_1_n_7 ;
  wire \count_reg_reg[7]_i_1_n_8 ;
  wire \count_reg_reg[7]_i_1_n_9 ;
  wire reset;
  wire tick;
  wire [7:7]\NLW_count_reg_reg[31]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_reg[7]_i_2 
       (.I0(count[0]),
        .O(\count_reg[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[7]_i_1_n_15 ),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[10] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[15]_i_1_n_13 ),
        .Q(count[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[11] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[15]_i_1_n_12 ),
        .Q(count[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[12] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[15]_i_1_n_11 ),
        .Q(count[12]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[13] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[15]_i_1_n_10 ),
        .Q(count[13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[14] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[15]_i_1_n_9 ),
        .Q(count[14]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[15] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[15]_i_1_n_8 ),
        .Q(count[15]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg_reg[15]_i_1 
       (.CI(\count_reg_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_reg_reg[15]_i_1_n_0 ,\count_reg_reg[15]_i_1_n_1 ,\count_reg_reg[15]_i_1_n_2 ,\count_reg_reg[15]_i_1_n_3 ,\count_reg_reg[15]_i_1_n_4 ,\count_reg_reg[15]_i_1_n_5 ,\count_reg_reg[15]_i_1_n_6 ,\count_reg_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[15]_i_1_n_8 ,\count_reg_reg[15]_i_1_n_9 ,\count_reg_reg[15]_i_1_n_10 ,\count_reg_reg[15]_i_1_n_11 ,\count_reg_reg[15]_i_1_n_12 ,\count_reg_reg[15]_i_1_n_13 ,\count_reg_reg[15]_i_1_n_14 ,\count_reg_reg[15]_i_1_n_15 }),
        .S(count[15:8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[16] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[23]_i_1_n_15 ),
        .Q(count[16]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[17] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[23]_i_1_n_14 ),
        .Q(count[17]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[18] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[23]_i_1_n_13 ),
        .Q(count[18]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[19] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[23]_i_1_n_12 ),
        .Q(count[19]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[7]_i_1_n_14 ),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[20] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[23]_i_1_n_11 ),
        .Q(count[20]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[21] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[23]_i_1_n_10 ),
        .Q(count[21]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[22] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[23]_i_1_n_9 ),
        .Q(count[22]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[23] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[23]_i_1_n_8 ),
        .Q(count[23]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg_reg[23]_i_1 
       (.CI(\count_reg_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_reg_reg[23]_i_1_n_0 ,\count_reg_reg[23]_i_1_n_1 ,\count_reg_reg[23]_i_1_n_2 ,\count_reg_reg[23]_i_1_n_3 ,\count_reg_reg[23]_i_1_n_4 ,\count_reg_reg[23]_i_1_n_5 ,\count_reg_reg[23]_i_1_n_6 ,\count_reg_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[23]_i_1_n_8 ,\count_reg_reg[23]_i_1_n_9 ,\count_reg_reg[23]_i_1_n_10 ,\count_reg_reg[23]_i_1_n_11 ,\count_reg_reg[23]_i_1_n_12 ,\count_reg_reg[23]_i_1_n_13 ,\count_reg_reg[23]_i_1_n_14 ,\count_reg_reg[23]_i_1_n_15 }),
        .S(count[23:16]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[24] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[31]_i_1_n_15 ),
        .Q(count[24]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[25] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[31]_i_1_n_14 ),
        .Q(count[25]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[26] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[31]_i_1_n_13 ),
        .Q(count[26]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[27] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[31]_i_1_n_12 ),
        .Q(count[27]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[28] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[31]_i_1_n_11 ),
        .Q(count[28]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[29] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[31]_i_1_n_10 ),
        .Q(count[29]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[7]_i_1_n_13 ),
        .Q(count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[30] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[31]_i_1_n_9 ),
        .Q(count[30]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[31] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[31]_i_1_n_8 ),
        .Q(count[31]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg_reg[31]_i_1 
       (.CI(\count_reg_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_reg_reg[31]_i_1_CO_UNCONNECTED [7],\count_reg_reg[31]_i_1_n_1 ,\count_reg_reg[31]_i_1_n_2 ,\count_reg_reg[31]_i_1_n_3 ,\count_reg_reg[31]_i_1_n_4 ,\count_reg_reg[31]_i_1_n_5 ,\count_reg_reg[31]_i_1_n_6 ,\count_reg_reg[31]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg_reg[31]_i_1_n_8 ,\count_reg_reg[31]_i_1_n_9 ,\count_reg_reg[31]_i_1_n_10 ,\count_reg_reg[31]_i_1_n_11 ,\count_reg_reg[31]_i_1_n_12 ,\count_reg_reg[31]_i_1_n_13 ,\count_reg_reg[31]_i_1_n_14 ,\count_reg_reg[31]_i_1_n_15 }),
        .S(count[31:24]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[3] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[7]_i_1_n_12 ),
        .Q(count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[4] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[7]_i_1_n_11 ),
        .Q(count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[5] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[7]_i_1_n_10 ),
        .Q(count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[6] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[7]_i_1_n_9 ),
        .Q(count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[7] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[7]_i_1_n_8 ),
        .Q(count[7]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_reg_reg[7]_i_1_n_0 ,\count_reg_reg[7]_i_1_n_1 ,\count_reg_reg[7]_i_1_n_2 ,\count_reg_reg[7]_i_1_n_3 ,\count_reg_reg[7]_i_1_n_4 ,\count_reg_reg[7]_i_1_n_5 ,\count_reg_reg[7]_i_1_n_6 ,\count_reg_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg_reg[7]_i_1_n_8 ,\count_reg_reg[7]_i_1_n_9 ,\count_reg_reg[7]_i_1_n_10 ,\count_reg_reg[7]_i_1_n_11 ,\count_reg_reg[7]_i_1_n_12 ,\count_reg_reg[7]_i_1_n_13 ,\count_reg_reg[7]_i_1_n_14 ,\count_reg_reg[7]_i_1_n_15 }),
        .S({count[7:1],\count_reg[7]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[8] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[15]_i_1_n_15 ),
        .Q(count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[9] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\count_reg_reg[15]_i_1_n_14 ),
        .Q(count[9]));
endmodule

module ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_axi_read_master
   (\addr_reg[0]_3 ,
    \addr_reg[1]_4 ,
    \id_reg[0]_0 ,
    arvalid_r_reg_0,
    m_axi_gmem_ARLEN,
    m_axi_gmem_ARADDR,
    ap_start_pulse,
    ap_clk,
    areset,
    \addr_reg[0][0]_0 ,
    \addr_reg[0][1]_0 ,
    \addr_reg[0][2]_0 ,
    \addr_reg[0][3]_0 ,
    \addr_reg[0][4]_0 ,
    \addr_reg[0][5]_0 ,
    \addr_reg[0][6]_0 ,
    \addr_reg[0][7]_0 ,
    \addr_reg[0][8]_0 ,
    O,
    \addr_reg[0][24]_0 ,
    \addr_reg[0][32]_0 ,
    \addr_reg[0][40]_0 ,
    \addr_reg[0][48]_0 ,
    \addr_reg[0][56]_0 ,
    \addr_reg[0][63]_0 ,
    \addr_reg[1][0]_0 ,
    \addr_reg[1][1]_0 ,
    \addr_reg[1][2]_0 ,
    \addr_reg[1][3]_0 ,
    \addr_reg[1][4]_0 ,
    \addr_reg[1][5]_0 ,
    \addr_reg[1][6]_0 ,
    \addr_reg[1][7]_0 ,
    \addr_reg[1][8]_0 ,
    \addr_reg[1][16]_0 ,
    \addr_reg[1][24]_0 ,
    \addr_reg[1][32]_0 ,
    \addr_reg[1][40]_0 ,
    \addr_reg[1][48]_0 ,
    \addr_reg[1][56]_0 ,
    \addr_reg[1][63]_0 ,
    m_axi_gmem_RLAST,
    m_axi_gmem_RVALID,
    m_axi_gmem_RID,
    m_axi_gmem_ARREADY,
    prog_full,
    D,
    \final_burst_len_reg[7]_0 );
  output [63:0]\addr_reg[0]_3 ;
  output [63:0]\addr_reg[1]_4 ;
  output \id_reg[0]_0 ;
  output arvalid_r_reg_0;
  output [7:0]m_axi_gmem_ARLEN;
  output [63:0]m_axi_gmem_ARADDR;
  input ap_start_pulse;
  input ap_clk;
  input areset;
  input \addr_reg[0][0]_0 ;
  input \addr_reg[0][1]_0 ;
  input \addr_reg[0][2]_0 ;
  input \addr_reg[0][3]_0 ;
  input \addr_reg[0][4]_0 ;
  input \addr_reg[0][5]_0 ;
  input \addr_reg[0][6]_0 ;
  input \addr_reg[0][7]_0 ;
  input \addr_reg[0][8]_0 ;
  input [7:0]O;
  input [7:0]\addr_reg[0][24]_0 ;
  input [7:0]\addr_reg[0][32]_0 ;
  input [7:0]\addr_reg[0][40]_0 ;
  input [7:0]\addr_reg[0][48]_0 ;
  input [7:0]\addr_reg[0][56]_0 ;
  input [6:0]\addr_reg[0][63]_0 ;
  input \addr_reg[1][0]_0 ;
  input \addr_reg[1][1]_0 ;
  input \addr_reg[1][2]_0 ;
  input \addr_reg[1][3]_0 ;
  input \addr_reg[1][4]_0 ;
  input \addr_reg[1][5]_0 ;
  input \addr_reg[1][6]_0 ;
  input \addr_reg[1][7]_0 ;
  input \addr_reg[1][8]_0 ;
  input [7:0]\addr_reg[1][16]_0 ;
  input [7:0]\addr_reg[1][24]_0 ;
  input [7:0]\addr_reg[1][32]_0 ;
  input [7:0]\addr_reg[1][40]_0 ;
  input [7:0]\addr_reg[1][48]_0 ;
  input [7:0]\addr_reg[1][56]_0 ;
  input [6:0]\addr_reg[1][63]_0 ;
  input m_axi_gmem_RLAST;
  input m_axi_gmem_RVALID;
  input [0:0]m_axi_gmem_RID;
  input m_axi_gmem_ARREADY;
  input [1:0]prog_full;
  input [23:0]D;
  input [7:0]\final_burst_len_reg[7]_0 ;

  wire [23:0]D;
  wire [7:0]O;
  wire \addr[0][0]_i_1_n_0 ;
  wire \addr[1][0]_i_1_n_0 ;
  wire \addr_reg[0][0]_0 ;
  wire \addr_reg[0][1]_0 ;
  wire [7:0]\addr_reg[0][24]_0 ;
  wire \addr_reg[0][2]_0 ;
  wire [7:0]\addr_reg[0][32]_0 ;
  wire \addr_reg[0][3]_0 ;
  wire [7:0]\addr_reg[0][40]_0 ;
  wire [7:0]\addr_reg[0][48]_0 ;
  wire \addr_reg[0][4]_0 ;
  wire [7:0]\addr_reg[0][56]_0 ;
  wire \addr_reg[0][5]_0 ;
  wire [6:0]\addr_reg[0][63]_0 ;
  wire \addr_reg[0][6]_0 ;
  wire \addr_reg[0][7]_0 ;
  wire \addr_reg[0][8]_0 ;
  wire [63:0]\addr_reg[0]_3 ;
  wire \addr_reg[1][0]_0 ;
  wire [7:0]\addr_reg[1][16]_0 ;
  wire \addr_reg[1][1]_0 ;
  wire [7:0]\addr_reg[1][24]_0 ;
  wire \addr_reg[1][2]_0 ;
  wire [7:0]\addr_reg[1][32]_0 ;
  wire \addr_reg[1][3]_0 ;
  wire [7:0]\addr_reg[1][40]_0 ;
  wire [7:0]\addr_reg[1][48]_0 ;
  wire \addr_reg[1][4]_0 ;
  wire [7:0]\addr_reg[1][56]_0 ;
  wire \addr_reg[1][5]_0 ;
  wire [6:0]\addr_reg[1][63]_0 ;
  wire \addr_reg[1][6]_0 ;
  wire \addr_reg[1][7]_0 ;
  wire \addr_reg[1][8]_0 ;
  wire [63:0]\addr_reg[1]_4 ;
  wire ap_clk;
  wire ap_start_pulse;
  wire ar_idle;
  wire areset;
  wire arvalid_r_i_2_n_0;
  wire arvalid_r_reg_0;
  wire [7:0]final_burst_len;
  wire [7:0]\final_burst_len_reg[7]_0 ;
  wire \id[0]_i_1_n_0 ;
  wire \id_reg[0]_0 ;
  wire \inst_ar_to_r_transaction_cntr_n_0_[0] ;
  wire \inst_ar_to_r_transaction_cntr_n_0_[1] ;
  wire inst_ar_transaction_cntr_n_8;
  wire [63:0]m_axi_gmem_ARADDR;
  wire [7:0]m_axi_gmem_ARLEN;
  wire m_axi_gmem_ARREADY;
  wire [0:0]m_axi_gmem_RID;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RVALID;
  wire [23:0]num_transactions;
  wire [1:0]prog_full;
  wire start;

  LUT4 #(
    .INIT(16'hFF08)) 
    \addr[0][0]_i_1 
       (.I0(m_axi_gmem_ARREADY),
        .I1(arvalid_r_reg_0),
        .I2(\id_reg[0]_0 ),
        .I3(ap_start_pulse),
        .O(\addr[0][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \addr[1][0]_i_1 
       (.I0(m_axi_gmem_ARREADY),
        .I1(arvalid_r_reg_0),
        .I2(\id_reg[0]_0 ),
        .I3(ap_start_pulse),
        .O(\addr[1][0]_i_1_n_0 ));
  FDRE \addr_reg[0][0] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][0]_0 ),
        .Q(\addr_reg[0]_3 [0]),
        .R(1'b0));
  FDRE \addr_reg[0][10] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(O[1]),
        .Q(\addr_reg[0]_3 [10]),
        .R(1'b0));
  FDRE \addr_reg[0][11] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(O[2]),
        .Q(\addr_reg[0]_3 [11]),
        .R(1'b0));
  FDRE \addr_reg[0][12] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(O[3]),
        .Q(\addr_reg[0]_3 [12]),
        .R(1'b0));
  FDRE \addr_reg[0][13] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(O[4]),
        .Q(\addr_reg[0]_3 [13]),
        .R(1'b0));
  FDRE \addr_reg[0][14] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(O[5]),
        .Q(\addr_reg[0]_3 [14]),
        .R(1'b0));
  FDRE \addr_reg[0][15] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(O[6]),
        .Q(\addr_reg[0]_3 [15]),
        .R(1'b0));
  FDRE \addr_reg[0][16] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(O[7]),
        .Q(\addr_reg[0]_3 [16]),
        .R(1'b0));
  FDRE \addr_reg[0][17] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][24]_0 [0]),
        .Q(\addr_reg[0]_3 [17]),
        .R(1'b0));
  FDRE \addr_reg[0][18] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][24]_0 [1]),
        .Q(\addr_reg[0]_3 [18]),
        .R(1'b0));
  FDRE \addr_reg[0][19] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][24]_0 [2]),
        .Q(\addr_reg[0]_3 [19]),
        .R(1'b0));
  FDRE \addr_reg[0][1] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][1]_0 ),
        .Q(\addr_reg[0]_3 [1]),
        .R(1'b0));
  FDRE \addr_reg[0][20] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][24]_0 [3]),
        .Q(\addr_reg[0]_3 [20]),
        .R(1'b0));
  FDRE \addr_reg[0][21] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][24]_0 [4]),
        .Q(\addr_reg[0]_3 [21]),
        .R(1'b0));
  FDRE \addr_reg[0][22] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][24]_0 [5]),
        .Q(\addr_reg[0]_3 [22]),
        .R(1'b0));
  FDRE \addr_reg[0][23] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][24]_0 [6]),
        .Q(\addr_reg[0]_3 [23]),
        .R(1'b0));
  FDRE \addr_reg[0][24] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][24]_0 [7]),
        .Q(\addr_reg[0]_3 [24]),
        .R(1'b0));
  FDRE \addr_reg[0][25] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][32]_0 [0]),
        .Q(\addr_reg[0]_3 [25]),
        .R(1'b0));
  FDRE \addr_reg[0][26] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][32]_0 [1]),
        .Q(\addr_reg[0]_3 [26]),
        .R(1'b0));
  FDRE \addr_reg[0][27] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][32]_0 [2]),
        .Q(\addr_reg[0]_3 [27]),
        .R(1'b0));
  FDRE \addr_reg[0][28] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][32]_0 [3]),
        .Q(\addr_reg[0]_3 [28]),
        .R(1'b0));
  FDRE \addr_reg[0][29] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][32]_0 [4]),
        .Q(\addr_reg[0]_3 [29]),
        .R(1'b0));
  FDRE \addr_reg[0][2] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][2]_0 ),
        .Q(\addr_reg[0]_3 [2]),
        .R(1'b0));
  FDRE \addr_reg[0][30] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][32]_0 [5]),
        .Q(\addr_reg[0]_3 [30]),
        .R(1'b0));
  FDRE \addr_reg[0][31] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][32]_0 [6]),
        .Q(\addr_reg[0]_3 [31]),
        .R(1'b0));
  FDRE \addr_reg[0][32] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][32]_0 [7]),
        .Q(\addr_reg[0]_3 [32]),
        .R(1'b0));
  FDRE \addr_reg[0][33] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][40]_0 [0]),
        .Q(\addr_reg[0]_3 [33]),
        .R(1'b0));
  FDRE \addr_reg[0][34] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][40]_0 [1]),
        .Q(\addr_reg[0]_3 [34]),
        .R(1'b0));
  FDRE \addr_reg[0][35] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][40]_0 [2]),
        .Q(\addr_reg[0]_3 [35]),
        .R(1'b0));
  FDRE \addr_reg[0][36] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][40]_0 [3]),
        .Q(\addr_reg[0]_3 [36]),
        .R(1'b0));
  FDRE \addr_reg[0][37] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][40]_0 [4]),
        .Q(\addr_reg[0]_3 [37]),
        .R(1'b0));
  FDRE \addr_reg[0][38] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][40]_0 [5]),
        .Q(\addr_reg[0]_3 [38]),
        .R(1'b0));
  FDRE \addr_reg[0][39] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][40]_0 [6]),
        .Q(\addr_reg[0]_3 [39]),
        .R(1'b0));
  FDRE \addr_reg[0][3] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][3]_0 ),
        .Q(\addr_reg[0]_3 [3]),
        .R(1'b0));
  FDRE \addr_reg[0][40] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][40]_0 [7]),
        .Q(\addr_reg[0]_3 [40]),
        .R(1'b0));
  FDRE \addr_reg[0][41] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][48]_0 [0]),
        .Q(\addr_reg[0]_3 [41]),
        .R(1'b0));
  FDRE \addr_reg[0][42] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][48]_0 [1]),
        .Q(\addr_reg[0]_3 [42]),
        .R(1'b0));
  FDRE \addr_reg[0][43] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][48]_0 [2]),
        .Q(\addr_reg[0]_3 [43]),
        .R(1'b0));
  FDRE \addr_reg[0][44] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][48]_0 [3]),
        .Q(\addr_reg[0]_3 [44]),
        .R(1'b0));
  FDRE \addr_reg[0][45] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][48]_0 [4]),
        .Q(\addr_reg[0]_3 [45]),
        .R(1'b0));
  FDRE \addr_reg[0][46] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][48]_0 [5]),
        .Q(\addr_reg[0]_3 [46]),
        .R(1'b0));
  FDRE \addr_reg[0][47] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][48]_0 [6]),
        .Q(\addr_reg[0]_3 [47]),
        .R(1'b0));
  FDRE \addr_reg[0][48] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][48]_0 [7]),
        .Q(\addr_reg[0]_3 [48]),
        .R(1'b0));
  FDRE \addr_reg[0][49] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][56]_0 [0]),
        .Q(\addr_reg[0]_3 [49]),
        .R(1'b0));
  FDRE \addr_reg[0][4] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][4]_0 ),
        .Q(\addr_reg[0]_3 [4]),
        .R(1'b0));
  FDRE \addr_reg[0][50] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][56]_0 [1]),
        .Q(\addr_reg[0]_3 [50]),
        .R(1'b0));
  FDRE \addr_reg[0][51] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][56]_0 [2]),
        .Q(\addr_reg[0]_3 [51]),
        .R(1'b0));
  FDRE \addr_reg[0][52] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][56]_0 [3]),
        .Q(\addr_reg[0]_3 [52]),
        .R(1'b0));
  FDRE \addr_reg[0][53] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][56]_0 [4]),
        .Q(\addr_reg[0]_3 [53]),
        .R(1'b0));
  FDRE \addr_reg[0][54] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][56]_0 [5]),
        .Q(\addr_reg[0]_3 [54]),
        .R(1'b0));
  FDRE \addr_reg[0][55] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][56]_0 [6]),
        .Q(\addr_reg[0]_3 [55]),
        .R(1'b0));
  FDRE \addr_reg[0][56] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][56]_0 [7]),
        .Q(\addr_reg[0]_3 [56]),
        .R(1'b0));
  FDRE \addr_reg[0][57] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][63]_0 [0]),
        .Q(\addr_reg[0]_3 [57]),
        .R(1'b0));
  FDRE \addr_reg[0][58] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][63]_0 [1]),
        .Q(\addr_reg[0]_3 [58]),
        .R(1'b0));
  FDRE \addr_reg[0][59] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][63]_0 [2]),
        .Q(\addr_reg[0]_3 [59]),
        .R(1'b0));
  FDRE \addr_reg[0][5] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][5]_0 ),
        .Q(\addr_reg[0]_3 [5]),
        .R(1'b0));
  FDRE \addr_reg[0][60] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][63]_0 [3]),
        .Q(\addr_reg[0]_3 [60]),
        .R(1'b0));
  FDRE \addr_reg[0][61] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][63]_0 [4]),
        .Q(\addr_reg[0]_3 [61]),
        .R(1'b0));
  FDRE \addr_reg[0][62] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][63]_0 [5]),
        .Q(\addr_reg[0]_3 [62]),
        .R(1'b0));
  FDRE \addr_reg[0][63] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][63]_0 [6]),
        .Q(\addr_reg[0]_3 [63]),
        .R(1'b0));
  FDRE \addr_reg[0][6] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][6]_0 ),
        .Q(\addr_reg[0]_3 [6]),
        .R(1'b0));
  FDRE \addr_reg[0][7] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][7]_0 ),
        .Q(\addr_reg[0]_3 [7]),
        .R(1'b0));
  FDRE \addr_reg[0][8] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(\addr_reg[0][8]_0 ),
        .Q(\addr_reg[0]_3 [8]),
        .R(1'b0));
  FDRE \addr_reg[0][9] 
       (.C(ap_clk),
        .CE(\addr[0][0]_i_1_n_0 ),
        .D(O[0]),
        .Q(\addr_reg[0]_3 [9]),
        .R(1'b0));
  FDRE \addr_reg[1][0] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][0]_0 ),
        .Q(\addr_reg[1]_4 [0]),
        .R(1'b0));
  FDRE \addr_reg[1][10] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][16]_0 [1]),
        .Q(\addr_reg[1]_4 [10]),
        .R(1'b0));
  FDRE \addr_reg[1][11] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][16]_0 [2]),
        .Q(\addr_reg[1]_4 [11]),
        .R(1'b0));
  FDRE \addr_reg[1][12] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][16]_0 [3]),
        .Q(\addr_reg[1]_4 [12]),
        .R(1'b0));
  FDRE \addr_reg[1][13] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][16]_0 [4]),
        .Q(\addr_reg[1]_4 [13]),
        .R(1'b0));
  FDRE \addr_reg[1][14] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][16]_0 [5]),
        .Q(\addr_reg[1]_4 [14]),
        .R(1'b0));
  FDRE \addr_reg[1][15] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][16]_0 [6]),
        .Q(\addr_reg[1]_4 [15]),
        .R(1'b0));
  FDRE \addr_reg[1][16] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][16]_0 [7]),
        .Q(\addr_reg[1]_4 [16]),
        .R(1'b0));
  FDRE \addr_reg[1][17] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][24]_0 [0]),
        .Q(\addr_reg[1]_4 [17]),
        .R(1'b0));
  FDRE \addr_reg[1][18] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][24]_0 [1]),
        .Q(\addr_reg[1]_4 [18]),
        .R(1'b0));
  FDRE \addr_reg[1][19] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][24]_0 [2]),
        .Q(\addr_reg[1]_4 [19]),
        .R(1'b0));
  FDRE \addr_reg[1][1] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][1]_0 ),
        .Q(\addr_reg[1]_4 [1]),
        .R(1'b0));
  FDRE \addr_reg[1][20] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][24]_0 [3]),
        .Q(\addr_reg[1]_4 [20]),
        .R(1'b0));
  FDRE \addr_reg[1][21] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][24]_0 [4]),
        .Q(\addr_reg[1]_4 [21]),
        .R(1'b0));
  FDRE \addr_reg[1][22] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][24]_0 [5]),
        .Q(\addr_reg[1]_4 [22]),
        .R(1'b0));
  FDRE \addr_reg[1][23] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][24]_0 [6]),
        .Q(\addr_reg[1]_4 [23]),
        .R(1'b0));
  FDRE \addr_reg[1][24] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][24]_0 [7]),
        .Q(\addr_reg[1]_4 [24]),
        .R(1'b0));
  FDRE \addr_reg[1][25] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][32]_0 [0]),
        .Q(\addr_reg[1]_4 [25]),
        .R(1'b0));
  FDRE \addr_reg[1][26] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][32]_0 [1]),
        .Q(\addr_reg[1]_4 [26]),
        .R(1'b0));
  FDRE \addr_reg[1][27] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][32]_0 [2]),
        .Q(\addr_reg[1]_4 [27]),
        .R(1'b0));
  FDRE \addr_reg[1][28] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][32]_0 [3]),
        .Q(\addr_reg[1]_4 [28]),
        .R(1'b0));
  FDRE \addr_reg[1][29] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][32]_0 [4]),
        .Q(\addr_reg[1]_4 [29]),
        .R(1'b0));
  FDRE \addr_reg[1][2] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][2]_0 ),
        .Q(\addr_reg[1]_4 [2]),
        .R(1'b0));
  FDRE \addr_reg[1][30] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][32]_0 [5]),
        .Q(\addr_reg[1]_4 [30]),
        .R(1'b0));
  FDRE \addr_reg[1][31] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][32]_0 [6]),
        .Q(\addr_reg[1]_4 [31]),
        .R(1'b0));
  FDRE \addr_reg[1][32] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][32]_0 [7]),
        .Q(\addr_reg[1]_4 [32]),
        .R(1'b0));
  FDRE \addr_reg[1][33] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][40]_0 [0]),
        .Q(\addr_reg[1]_4 [33]),
        .R(1'b0));
  FDRE \addr_reg[1][34] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][40]_0 [1]),
        .Q(\addr_reg[1]_4 [34]),
        .R(1'b0));
  FDRE \addr_reg[1][35] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][40]_0 [2]),
        .Q(\addr_reg[1]_4 [35]),
        .R(1'b0));
  FDRE \addr_reg[1][36] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][40]_0 [3]),
        .Q(\addr_reg[1]_4 [36]),
        .R(1'b0));
  FDRE \addr_reg[1][37] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][40]_0 [4]),
        .Q(\addr_reg[1]_4 [37]),
        .R(1'b0));
  FDRE \addr_reg[1][38] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][40]_0 [5]),
        .Q(\addr_reg[1]_4 [38]),
        .R(1'b0));
  FDRE \addr_reg[1][39] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][40]_0 [6]),
        .Q(\addr_reg[1]_4 [39]),
        .R(1'b0));
  FDRE \addr_reg[1][3] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][3]_0 ),
        .Q(\addr_reg[1]_4 [3]),
        .R(1'b0));
  FDRE \addr_reg[1][40] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][40]_0 [7]),
        .Q(\addr_reg[1]_4 [40]),
        .R(1'b0));
  FDRE \addr_reg[1][41] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][48]_0 [0]),
        .Q(\addr_reg[1]_4 [41]),
        .R(1'b0));
  FDRE \addr_reg[1][42] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][48]_0 [1]),
        .Q(\addr_reg[1]_4 [42]),
        .R(1'b0));
  FDRE \addr_reg[1][43] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][48]_0 [2]),
        .Q(\addr_reg[1]_4 [43]),
        .R(1'b0));
  FDRE \addr_reg[1][44] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][48]_0 [3]),
        .Q(\addr_reg[1]_4 [44]),
        .R(1'b0));
  FDRE \addr_reg[1][45] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][48]_0 [4]),
        .Q(\addr_reg[1]_4 [45]),
        .R(1'b0));
  FDRE \addr_reg[1][46] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][48]_0 [5]),
        .Q(\addr_reg[1]_4 [46]),
        .R(1'b0));
  FDRE \addr_reg[1][47] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][48]_0 [6]),
        .Q(\addr_reg[1]_4 [47]),
        .R(1'b0));
  FDRE \addr_reg[1][48] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][48]_0 [7]),
        .Q(\addr_reg[1]_4 [48]),
        .R(1'b0));
  FDRE \addr_reg[1][49] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][56]_0 [0]),
        .Q(\addr_reg[1]_4 [49]),
        .R(1'b0));
  FDRE \addr_reg[1][4] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][4]_0 ),
        .Q(\addr_reg[1]_4 [4]),
        .R(1'b0));
  FDRE \addr_reg[1][50] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][56]_0 [1]),
        .Q(\addr_reg[1]_4 [50]),
        .R(1'b0));
  FDRE \addr_reg[1][51] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][56]_0 [2]),
        .Q(\addr_reg[1]_4 [51]),
        .R(1'b0));
  FDRE \addr_reg[1][52] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][56]_0 [3]),
        .Q(\addr_reg[1]_4 [52]),
        .R(1'b0));
  FDRE \addr_reg[1][53] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][56]_0 [4]),
        .Q(\addr_reg[1]_4 [53]),
        .R(1'b0));
  FDRE \addr_reg[1][54] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][56]_0 [5]),
        .Q(\addr_reg[1]_4 [54]),
        .R(1'b0));
  FDRE \addr_reg[1][55] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][56]_0 [6]),
        .Q(\addr_reg[1]_4 [55]),
        .R(1'b0));
  FDRE \addr_reg[1][56] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][56]_0 [7]),
        .Q(\addr_reg[1]_4 [56]),
        .R(1'b0));
  FDRE \addr_reg[1][57] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][63]_0 [0]),
        .Q(\addr_reg[1]_4 [57]),
        .R(1'b0));
  FDRE \addr_reg[1][58] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][63]_0 [1]),
        .Q(\addr_reg[1]_4 [58]),
        .R(1'b0));
  FDRE \addr_reg[1][59] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][63]_0 [2]),
        .Q(\addr_reg[1]_4 [59]),
        .R(1'b0));
  FDRE \addr_reg[1][5] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][5]_0 ),
        .Q(\addr_reg[1]_4 [5]),
        .R(1'b0));
  FDRE \addr_reg[1][60] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][63]_0 [3]),
        .Q(\addr_reg[1]_4 [60]),
        .R(1'b0));
  FDRE \addr_reg[1][61] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][63]_0 [4]),
        .Q(\addr_reg[1]_4 [61]),
        .R(1'b0));
  FDRE \addr_reg[1][62] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][63]_0 [5]),
        .Q(\addr_reg[1]_4 [62]),
        .R(1'b0));
  FDRE \addr_reg[1][63] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][63]_0 [6]),
        .Q(\addr_reg[1]_4 [63]),
        .R(1'b0));
  FDRE \addr_reg[1][6] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][6]_0 ),
        .Q(\addr_reg[1]_4 [6]),
        .R(1'b0));
  FDRE \addr_reg[1][7] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][7]_0 ),
        .Q(\addr_reg[1]_4 [7]),
        .R(1'b0));
  FDRE \addr_reg[1][8] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][8]_0 ),
        .Q(\addr_reg[1]_4 [8]),
        .R(1'b0));
  FDRE \addr_reg[1][9] 
       (.C(ap_clk),
        .CE(\addr[1][0]_i_1_n_0 ),
        .D(\addr_reg[1][16]_0 [0]),
        .Q(\addr_reg[1]_4 [9]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    ar_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inst_ar_transaction_cntr_n_8),
        .Q(ar_idle),
        .S(areset));
  LUT4 #(
    .INIT(16'hFEAE)) 
    arvalid_r_i_2
       (.I0(ar_idle),
        .I1(prog_full[0]),
        .I2(\id_reg[0]_0 ),
        .I3(prog_full[1]),
        .O(arvalid_r_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    arvalid_r_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inst_ar_to_r_transaction_cntr_n_0_[0] ),
        .Q(arvalid_r_reg_0),
        .R(areset));
  FDRE \final_burst_len_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\final_burst_len_reg[7]_0 [0]),
        .Q(final_burst_len[0]),
        .R(1'b0));
  FDRE \final_burst_len_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\final_burst_len_reg[7]_0 [1]),
        .Q(final_burst_len[1]),
        .R(1'b0));
  FDRE \final_burst_len_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\final_burst_len_reg[7]_0 [2]),
        .Q(final_burst_len[2]),
        .R(1'b0));
  FDRE \final_burst_len_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\final_burst_len_reg[7]_0 [3]),
        .Q(final_burst_len[3]),
        .R(1'b0));
  FDRE \final_burst_len_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\final_burst_len_reg[7]_0 [4]),
        .Q(final_burst_len[4]),
        .R(1'b0));
  FDRE \final_burst_len_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\final_burst_len_reg[7]_0 [5]),
        .Q(final_burst_len[5]),
        .R(1'b0));
  FDRE \final_burst_len_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\final_burst_len_reg[7]_0 [6]),
        .Q(final_burst_len[6]),
        .R(1'b0));
  FDRE \final_burst_len_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\final_burst_len_reg[7]_0 [7]),
        .Q(final_burst_len[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF6A)) 
    \id[0]_i_1 
       (.I0(\id_reg[0]_0 ),
        .I1(m_axi_gmem_ARREADY),
        .I2(arvalid_r_reg_0),
        .I3(start),
        .O(\id[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \id_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\id[0]_i_1_n_0 ),
        .Q(\id_reg[0]_0 ),
        .R(1'b0));
  ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter__parameterized0 \inst_ar_to_r_transaction_cntr[0] 
       (.ap_clk(ap_clk),
        .areset(areset),
        .arvalid_r_reg(arvalid_r_reg_0),
        .arvalid_r_reg_0(\id_reg[0]_0 ),
        .arvalid_r_reg_1(arvalid_r_i_2_n_0),
        .arvalid_r_reg_2(\inst_ar_to_r_transaction_cntr_n_0_[1] ),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREADY_0(\inst_ar_to_r_transaction_cntr_n_0_[0] ),
        .m_axi_gmem_RID(m_axi_gmem_RID),
        .m_axi_gmem_RLAST(m_axi_gmem_RLAST),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID));
  ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter__parameterized0_1 \inst_ar_to_r_transaction_cntr[1] 
       (.ap_clk(ap_clk),
        .areset(areset),
        .\count_r_reg[1]_0 (arvalid_r_reg_0),
        .\count_r_reg[1]_1 (\id_reg[0]_0 ),
        .is_zero_r_reg_0(\inst_ar_to_r_transaction_cntr_n_0_[1] ),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .m_axi_gmem_RID(m_axi_gmem_RID),
        .m_axi_gmem_RLAST(m_axi_gmem_RLAST),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID));
  ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter_2 inst_ar_transaction_cntr
       (.Q(num_transactions),
        .ap_clk(ap_clk),
        .ar_idle(ar_idle),
        .ar_idle_reg(arvalid_r_reg_0),
        .ar_idle_reg_0(\id_reg[0]_0 ),
        .areset(areset),
        .m_axi_gmem_ARLEN(m_axi_gmem_ARLEN),
        .\m_axi_gmem_ARLEN[7] (final_burst_len),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .start(start),
        .start_reg(inst_ar_transaction_cntr_n_8));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[0]_INST_0 
       (.I0(\addr_reg[1]_4 [0]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [0]),
        .O(m_axi_gmem_ARADDR[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[10]_INST_0 
       (.I0(\addr_reg[1]_4 [10]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [10]),
        .O(m_axi_gmem_ARADDR[10]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[11]_INST_0 
       (.I0(\addr_reg[1]_4 [11]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [11]),
        .O(m_axi_gmem_ARADDR[11]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[12]_INST_0 
       (.I0(\addr_reg[1]_4 [12]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [12]),
        .O(m_axi_gmem_ARADDR[12]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[13]_INST_0 
       (.I0(\addr_reg[1]_4 [13]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [13]),
        .O(m_axi_gmem_ARADDR[13]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[14]_INST_0 
       (.I0(\addr_reg[1]_4 [14]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [14]),
        .O(m_axi_gmem_ARADDR[14]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[15]_INST_0 
       (.I0(\addr_reg[1]_4 [15]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [15]),
        .O(m_axi_gmem_ARADDR[15]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[16]_INST_0 
       (.I0(\addr_reg[1]_4 [16]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [16]),
        .O(m_axi_gmem_ARADDR[16]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[17]_INST_0 
       (.I0(\addr_reg[1]_4 [17]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [17]),
        .O(m_axi_gmem_ARADDR[17]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[18]_INST_0 
       (.I0(\addr_reg[1]_4 [18]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [18]),
        .O(m_axi_gmem_ARADDR[18]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[19]_INST_0 
       (.I0(\addr_reg[1]_4 [19]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [19]),
        .O(m_axi_gmem_ARADDR[19]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[1]_INST_0 
       (.I0(\addr_reg[1]_4 [1]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [1]),
        .O(m_axi_gmem_ARADDR[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[20]_INST_0 
       (.I0(\addr_reg[1]_4 [20]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [20]),
        .O(m_axi_gmem_ARADDR[20]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[21]_INST_0 
       (.I0(\addr_reg[1]_4 [21]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [21]),
        .O(m_axi_gmem_ARADDR[21]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[22]_INST_0 
       (.I0(\addr_reg[1]_4 [22]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [22]),
        .O(m_axi_gmem_ARADDR[22]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[23]_INST_0 
       (.I0(\addr_reg[1]_4 [23]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [23]),
        .O(m_axi_gmem_ARADDR[23]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[24]_INST_0 
       (.I0(\addr_reg[1]_4 [24]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [24]),
        .O(m_axi_gmem_ARADDR[24]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[25]_INST_0 
       (.I0(\addr_reg[1]_4 [25]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [25]),
        .O(m_axi_gmem_ARADDR[25]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[26]_INST_0 
       (.I0(\addr_reg[1]_4 [26]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [26]),
        .O(m_axi_gmem_ARADDR[26]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[27]_INST_0 
       (.I0(\addr_reg[1]_4 [27]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [27]),
        .O(m_axi_gmem_ARADDR[27]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[28]_INST_0 
       (.I0(\addr_reg[1]_4 [28]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [28]),
        .O(m_axi_gmem_ARADDR[28]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[29]_INST_0 
       (.I0(\addr_reg[1]_4 [29]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [29]),
        .O(m_axi_gmem_ARADDR[29]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[2]_INST_0 
       (.I0(\addr_reg[1]_4 [2]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [2]),
        .O(m_axi_gmem_ARADDR[2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[30]_INST_0 
       (.I0(\addr_reg[1]_4 [30]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [30]),
        .O(m_axi_gmem_ARADDR[30]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[31]_INST_0 
       (.I0(\addr_reg[1]_4 [31]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [31]),
        .O(m_axi_gmem_ARADDR[31]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[32]_INST_0 
       (.I0(\addr_reg[1]_4 [32]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [32]),
        .O(m_axi_gmem_ARADDR[32]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[33]_INST_0 
       (.I0(\addr_reg[1]_4 [33]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [33]),
        .O(m_axi_gmem_ARADDR[33]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[34]_INST_0 
       (.I0(\addr_reg[1]_4 [34]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [34]),
        .O(m_axi_gmem_ARADDR[34]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[35]_INST_0 
       (.I0(\addr_reg[1]_4 [35]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [35]),
        .O(m_axi_gmem_ARADDR[35]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[36]_INST_0 
       (.I0(\addr_reg[1]_4 [36]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [36]),
        .O(m_axi_gmem_ARADDR[36]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[37]_INST_0 
       (.I0(\addr_reg[1]_4 [37]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [37]),
        .O(m_axi_gmem_ARADDR[37]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[38]_INST_0 
       (.I0(\addr_reg[1]_4 [38]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [38]),
        .O(m_axi_gmem_ARADDR[38]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[39]_INST_0 
       (.I0(\addr_reg[1]_4 [39]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [39]),
        .O(m_axi_gmem_ARADDR[39]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[3]_INST_0 
       (.I0(\addr_reg[1]_4 [3]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [3]),
        .O(m_axi_gmem_ARADDR[3]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[40]_INST_0 
       (.I0(\addr_reg[1]_4 [40]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [40]),
        .O(m_axi_gmem_ARADDR[40]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[41]_INST_0 
       (.I0(\addr_reg[1]_4 [41]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [41]),
        .O(m_axi_gmem_ARADDR[41]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[42]_INST_0 
       (.I0(\addr_reg[1]_4 [42]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [42]),
        .O(m_axi_gmem_ARADDR[42]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[43]_INST_0 
       (.I0(\addr_reg[1]_4 [43]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [43]),
        .O(m_axi_gmem_ARADDR[43]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[44]_INST_0 
       (.I0(\addr_reg[1]_4 [44]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [44]),
        .O(m_axi_gmem_ARADDR[44]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[45]_INST_0 
       (.I0(\addr_reg[1]_4 [45]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [45]),
        .O(m_axi_gmem_ARADDR[45]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[46]_INST_0 
       (.I0(\addr_reg[1]_4 [46]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [46]),
        .O(m_axi_gmem_ARADDR[46]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[47]_INST_0 
       (.I0(\addr_reg[1]_4 [47]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [47]),
        .O(m_axi_gmem_ARADDR[47]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[48]_INST_0 
       (.I0(\addr_reg[1]_4 [48]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [48]),
        .O(m_axi_gmem_ARADDR[48]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[49]_INST_0 
       (.I0(\addr_reg[1]_4 [49]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [49]),
        .O(m_axi_gmem_ARADDR[49]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[4]_INST_0 
       (.I0(\addr_reg[1]_4 [4]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [4]),
        .O(m_axi_gmem_ARADDR[4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[50]_INST_0 
       (.I0(\addr_reg[1]_4 [50]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [50]),
        .O(m_axi_gmem_ARADDR[50]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[51]_INST_0 
       (.I0(\addr_reg[1]_4 [51]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [51]),
        .O(m_axi_gmem_ARADDR[51]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[52]_INST_0 
       (.I0(\addr_reg[1]_4 [52]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [52]),
        .O(m_axi_gmem_ARADDR[52]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[53]_INST_0 
       (.I0(\addr_reg[1]_4 [53]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [53]),
        .O(m_axi_gmem_ARADDR[53]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[54]_INST_0 
       (.I0(\addr_reg[1]_4 [54]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [54]),
        .O(m_axi_gmem_ARADDR[54]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[55]_INST_0 
       (.I0(\addr_reg[1]_4 [55]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [55]),
        .O(m_axi_gmem_ARADDR[55]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[56]_INST_0 
       (.I0(\addr_reg[1]_4 [56]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [56]),
        .O(m_axi_gmem_ARADDR[56]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[57]_INST_0 
       (.I0(\addr_reg[1]_4 [57]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [57]),
        .O(m_axi_gmem_ARADDR[57]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[58]_INST_0 
       (.I0(\addr_reg[1]_4 [58]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [58]),
        .O(m_axi_gmem_ARADDR[58]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[59]_INST_0 
       (.I0(\addr_reg[1]_4 [59]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [59]),
        .O(m_axi_gmem_ARADDR[59]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[5]_INST_0 
       (.I0(\addr_reg[1]_4 [5]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [5]),
        .O(m_axi_gmem_ARADDR[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[60]_INST_0 
       (.I0(\addr_reg[1]_4 [60]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [60]),
        .O(m_axi_gmem_ARADDR[60]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[61]_INST_0 
       (.I0(\addr_reg[1]_4 [61]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [61]),
        .O(m_axi_gmem_ARADDR[61]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[62]_INST_0 
       (.I0(\addr_reg[1]_4 [62]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [62]),
        .O(m_axi_gmem_ARADDR[62]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[63]_INST_0 
       (.I0(\addr_reg[1]_4 [63]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [63]),
        .O(m_axi_gmem_ARADDR[63]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[6]_INST_0 
       (.I0(\addr_reg[1]_4 [6]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [6]),
        .O(m_axi_gmem_ARADDR[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[7]_INST_0 
       (.I0(\addr_reg[1]_4 [7]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [7]),
        .O(m_axi_gmem_ARADDR[7]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[8]_INST_0 
       (.I0(\addr_reg[1]_4 [8]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [8]),
        .O(m_axi_gmem_ARADDR[8]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_gmem_ARADDR[9]_INST_0 
       (.I0(\addr_reg[1]_4 [9]),
        .I1(\id_reg[0]_0 ),
        .I2(\addr_reg[0]_3 [9]),
        .O(m_axi_gmem_ARADDR[9]));
  FDRE \num_transactions_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(num_transactions[0]),
        .R(1'b0));
  FDRE \num_transactions_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(num_transactions[10]),
        .R(1'b0));
  FDRE \num_transactions_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(num_transactions[11]),
        .R(1'b0));
  FDRE \num_transactions_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(num_transactions[12]),
        .R(1'b0));
  FDRE \num_transactions_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(num_transactions[13]),
        .R(1'b0));
  FDRE \num_transactions_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(num_transactions[14]),
        .R(1'b0));
  FDRE \num_transactions_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(num_transactions[15]),
        .R(1'b0));
  FDRE \num_transactions_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[16]),
        .Q(num_transactions[16]),
        .R(1'b0));
  FDRE \num_transactions_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[17]),
        .Q(num_transactions[17]),
        .R(1'b0));
  FDRE \num_transactions_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[18]),
        .Q(num_transactions[18]),
        .R(1'b0));
  FDRE \num_transactions_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[19]),
        .Q(num_transactions[19]),
        .R(1'b0));
  FDRE \num_transactions_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(num_transactions[1]),
        .R(1'b0));
  FDRE \num_transactions_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[20]),
        .Q(num_transactions[20]),
        .R(1'b0));
  FDRE \num_transactions_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[21]),
        .Q(num_transactions[21]),
        .R(1'b0));
  FDRE \num_transactions_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[22]),
        .Q(num_transactions[22]),
        .R(1'b0));
  FDRE \num_transactions_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[23]),
        .Q(num_transactions[23]),
        .R(1'b0));
  FDRE \num_transactions_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(num_transactions[2]),
        .R(1'b0));
  FDRE \num_transactions_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(num_transactions[3]),
        .R(1'b0));
  FDRE \num_transactions_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(num_transactions[4]),
        .R(1'b0));
  FDRE \num_transactions_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(num_transactions[5]),
        .R(1'b0));
  FDRE \num_transactions_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(num_transactions[6]),
        .R(1'b0));
  FDRE \num_transactions_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(num_transactions[7]),
        .R(1'b0));
  FDRE \num_transactions_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(num_transactions[8]),
        .R(1'b0));
  FDRE \num_transactions_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(num_transactions[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_start_pulse),
        .Q(start),
        .R(1'b0));
endmodule

module ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_axi_write_master
   (m_axi_gmem_AWADDR,
    m_axi_gmem_WLAST,
    is_zero_r_reg,
    awvalid_r_reg_0,
    m_axi_gmem_AWLEN,
    wm_ctrl_start0,
    m_axi_gmem_BVALID_0,
    areset,
    ap_clk,
    wm_ctrl_start,
    m_axi_gmem_AWREADY,
    m_axi_gmem_BVALID,
    sent_mul,
    Q,
    wm_ctrl_length);
  output [63:0]m_axi_gmem_AWADDR;
  output m_axi_gmem_WLAST;
  output is_zero_r_reg;
  output awvalid_r_reg_0;
  output [7:0]m_axi_gmem_AWLEN;
  output wm_ctrl_start0;
  output m_axi_gmem_BVALID_0;
  input areset;
  input ap_clk;
  input wm_ctrl_start;
  input m_axi_gmem_AWREADY;
  input m_axi_gmem_BVALID;
  input sent_mul;
  input [63:0]Q;
  input [31:0]wm_ctrl_length;

  wire [63:0]Q;
  wire \addr[0][0]_i_1__0_n_0 ;
  wire \addr[0][10]_i_1_n_0 ;
  wire \addr[0][11]_i_1_n_0 ;
  wire \addr[0][12]_i_1_n_0 ;
  wire \addr[0][13]_i_1_n_0 ;
  wire \addr[0][14]_i_1_n_0 ;
  wire \addr[0][15]_i_1_n_0 ;
  wire \addr[0][16]_i_1_n_0 ;
  wire \addr[0][17]_i_1_n_0 ;
  wire \addr[0][18]_i_1_n_0 ;
  wire \addr[0][19]_i_1_n_0 ;
  wire \addr[0][1]_i_1__0_n_0 ;
  wire \addr[0][20]_i_1_n_0 ;
  wire \addr[0][21]_i_1_n_0 ;
  wire \addr[0][22]_i_1_n_0 ;
  wire \addr[0][23]_i_1_n_0 ;
  wire \addr[0][24]_i_1_n_0 ;
  wire \addr[0][25]_i_1_n_0 ;
  wire \addr[0][26]_i_1_n_0 ;
  wire \addr[0][27]_i_1_n_0 ;
  wire \addr[0][28]_i_1_n_0 ;
  wire \addr[0][29]_i_1_n_0 ;
  wire \addr[0][2]_i_1__0_n_0 ;
  wire \addr[0][30]_i_1_n_0 ;
  wire \addr[0][31]_i_1_n_0 ;
  wire \addr[0][32]_i_1_n_0 ;
  wire \addr[0][33]_i_1_n_0 ;
  wire \addr[0][34]_i_1_n_0 ;
  wire \addr[0][35]_i_1_n_0 ;
  wire \addr[0][36]_i_1_n_0 ;
  wire \addr[0][37]_i_1_n_0 ;
  wire \addr[0][38]_i_1_n_0 ;
  wire \addr[0][39]_i_1_n_0 ;
  wire \addr[0][3]_i_1__0_n_0 ;
  wire \addr[0][40]_i_1_n_0 ;
  wire \addr[0][41]_i_1_n_0 ;
  wire \addr[0][42]_i_1_n_0 ;
  wire \addr[0][43]_i_1_n_0 ;
  wire \addr[0][44]_i_1_n_0 ;
  wire \addr[0][45]_i_1_n_0 ;
  wire \addr[0][46]_i_1_n_0 ;
  wire \addr[0][47]_i_1_n_0 ;
  wire \addr[0][48]_i_1_n_0 ;
  wire \addr[0][49]_i_1_n_0 ;
  wire \addr[0][4]_i_1__0_n_0 ;
  wire \addr[0][50]_i_1_n_0 ;
  wire \addr[0][51]_i_1_n_0 ;
  wire \addr[0][52]_i_1_n_0 ;
  wire \addr[0][53]_i_1_n_0 ;
  wire \addr[0][54]_i_1_n_0 ;
  wire \addr[0][55]_i_1_n_0 ;
  wire \addr[0][56]_i_1_n_0 ;
  wire \addr[0][57]_i_1_n_0 ;
  wire \addr[0][58]_i_1_n_0 ;
  wire \addr[0][59]_i_1_n_0 ;
  wire \addr[0][5]_i_1__0_n_0 ;
  wire \addr[0][60]_i_1_n_0 ;
  wire \addr[0][61]_i_1_n_0 ;
  wire \addr[0][62]_i_1_n_0 ;
  wire \addr[0][63]_i_1_n_0 ;
  wire \addr[0][63]_i_2_n_0 ;
  wire \addr[0][6]_i_1__0_n_0 ;
  wire \addr[0][7]_i_1__0_n_0 ;
  wire \addr[0][8]_i_1__0_n_0 ;
  wire \addr[0][9]_i_1_n_0 ;
  wire ap_clk;
  wire areset;
  wire awvalid_r_reg_0;
  wire [7:0]final_burst_len;
  wire [7:0]final_burst_len0;
  wire \final_burst_len[7]_i_2__0_n_0 ;
  wire inst_aw_transaction_cntr_n_8;
  wire inst_aw_transaction_cntr_n_9;
  wire \inst_b_transaction_cntr_n_1_[1] ;
  wire \inst_w_to_aw_cntr_n_0_[1] ;
  wire is_zero_r_reg;
  wire [63:0]m_axi_gmem_AWADDR;
  wire [7:0]m_axi_gmem_AWLEN;
  wire m_axi_gmem_AWREADY;
  wire m_axi_gmem_BVALID;
  wire m_axi_gmem_BVALID_0;
  wire m_axi_gmem_WLAST;
  wire [23:0]num_transactions;
  wire [23:0]num_transactions0;
  wire num_transactions1_carry__0_i_1_n_0;
  wire num_transactions1_carry__0_i_2_n_0;
  wire num_transactions1_carry__0_i_3_n_0;
  wire num_transactions1_carry__0_i_4_n_0;
  wire num_transactions1_carry__0_i_5_n_0;
  wire num_transactions1_carry__0_i_6_n_0;
  wire num_transactions1_carry__0_i_7_n_0;
  wire num_transactions1_carry__0_i_8_n_0;
  wire num_transactions1_carry__0_n_0;
  wire num_transactions1_carry__0_n_1;
  wire num_transactions1_carry__0_n_2;
  wire num_transactions1_carry__0_n_3;
  wire num_transactions1_carry__0_n_4;
  wire num_transactions1_carry__0_n_5;
  wire num_transactions1_carry__0_n_6;
  wire num_transactions1_carry__0_n_7;
  wire num_transactions1_carry__1_i_1_n_0;
  wire num_transactions1_carry__1_i_2_n_0;
  wire num_transactions1_carry__1_i_3_n_0;
  wire num_transactions1_carry__1_i_4_n_0;
  wire num_transactions1_carry__1_i_5_n_0;
  wire num_transactions1_carry__1_i_6_n_0;
  wire num_transactions1_carry__1_i_7_n_0;
  wire num_transactions1_carry__1_i_8_n_0;
  wire num_transactions1_carry__1_n_1;
  wire num_transactions1_carry__1_n_2;
  wire num_transactions1_carry__1_n_3;
  wire num_transactions1_carry__1_n_4;
  wire num_transactions1_carry__1_n_5;
  wire num_transactions1_carry__1_n_6;
  wire num_transactions1_carry__1_n_7;
  wire num_transactions1_carry_i_1_n_0;
  wire num_transactions1_carry_i_2_n_0;
  wire num_transactions1_carry_i_3_n_0;
  wire num_transactions1_carry_i_4_n_0;
  wire num_transactions1_carry_i_5_n_0;
  wire num_transactions1_carry_i_6_n_0;
  wire num_transactions1_carry_i_7_n_0;
  wire num_transactions1_carry_i_8_n_0;
  wire num_transactions1_carry_n_0;
  wire num_transactions1_carry_n_1;
  wire num_transactions1_carry_n_2;
  wire num_transactions1_carry_n_3;
  wire num_transactions1_carry_n_4;
  wire num_transactions1_carry_n_5;
  wire num_transactions1_carry_n_6;
  wire num_transactions1_carry_n_7;
  wire p_0_in0_carry__0_n_0;
  wire p_0_in0_carry__0_n_1;
  wire p_0_in0_carry__0_n_10;
  wire p_0_in0_carry__0_n_11;
  wire p_0_in0_carry__0_n_12;
  wire p_0_in0_carry__0_n_13;
  wire p_0_in0_carry__0_n_14;
  wire p_0_in0_carry__0_n_15;
  wire p_0_in0_carry__0_n_2;
  wire p_0_in0_carry__0_n_3;
  wire p_0_in0_carry__0_n_4;
  wire p_0_in0_carry__0_n_5;
  wire p_0_in0_carry__0_n_6;
  wire p_0_in0_carry__0_n_7;
  wire p_0_in0_carry__0_n_8;
  wire p_0_in0_carry__0_n_9;
  wire p_0_in0_carry__1_n_0;
  wire p_0_in0_carry__1_n_1;
  wire p_0_in0_carry__1_n_10;
  wire p_0_in0_carry__1_n_11;
  wire p_0_in0_carry__1_n_12;
  wire p_0_in0_carry__1_n_13;
  wire p_0_in0_carry__1_n_14;
  wire p_0_in0_carry__1_n_15;
  wire p_0_in0_carry__1_n_2;
  wire p_0_in0_carry__1_n_3;
  wire p_0_in0_carry__1_n_4;
  wire p_0_in0_carry__1_n_5;
  wire p_0_in0_carry__1_n_6;
  wire p_0_in0_carry__1_n_7;
  wire p_0_in0_carry__1_n_8;
  wire p_0_in0_carry__1_n_9;
  wire p_0_in0_carry__2_n_0;
  wire p_0_in0_carry__2_n_1;
  wire p_0_in0_carry__2_n_10;
  wire p_0_in0_carry__2_n_11;
  wire p_0_in0_carry__2_n_12;
  wire p_0_in0_carry__2_n_13;
  wire p_0_in0_carry__2_n_14;
  wire p_0_in0_carry__2_n_15;
  wire p_0_in0_carry__2_n_2;
  wire p_0_in0_carry__2_n_3;
  wire p_0_in0_carry__2_n_4;
  wire p_0_in0_carry__2_n_5;
  wire p_0_in0_carry__2_n_6;
  wire p_0_in0_carry__2_n_7;
  wire p_0_in0_carry__2_n_8;
  wire p_0_in0_carry__2_n_9;
  wire p_0_in0_carry__3_n_0;
  wire p_0_in0_carry__3_n_1;
  wire p_0_in0_carry__3_n_10;
  wire p_0_in0_carry__3_n_11;
  wire p_0_in0_carry__3_n_12;
  wire p_0_in0_carry__3_n_13;
  wire p_0_in0_carry__3_n_14;
  wire p_0_in0_carry__3_n_15;
  wire p_0_in0_carry__3_n_2;
  wire p_0_in0_carry__3_n_3;
  wire p_0_in0_carry__3_n_4;
  wire p_0_in0_carry__3_n_5;
  wire p_0_in0_carry__3_n_6;
  wire p_0_in0_carry__3_n_7;
  wire p_0_in0_carry__3_n_8;
  wire p_0_in0_carry__3_n_9;
  wire p_0_in0_carry__4_n_0;
  wire p_0_in0_carry__4_n_1;
  wire p_0_in0_carry__4_n_10;
  wire p_0_in0_carry__4_n_11;
  wire p_0_in0_carry__4_n_12;
  wire p_0_in0_carry__4_n_13;
  wire p_0_in0_carry__4_n_14;
  wire p_0_in0_carry__4_n_15;
  wire p_0_in0_carry__4_n_2;
  wire p_0_in0_carry__4_n_3;
  wire p_0_in0_carry__4_n_4;
  wire p_0_in0_carry__4_n_5;
  wire p_0_in0_carry__4_n_6;
  wire p_0_in0_carry__4_n_7;
  wire p_0_in0_carry__4_n_8;
  wire p_0_in0_carry__4_n_9;
  wire p_0_in0_carry__5_n_10;
  wire p_0_in0_carry__5_n_11;
  wire p_0_in0_carry__5_n_12;
  wire p_0_in0_carry__5_n_13;
  wire p_0_in0_carry__5_n_14;
  wire p_0_in0_carry__5_n_15;
  wire p_0_in0_carry__5_n_2;
  wire p_0_in0_carry__5_n_3;
  wire p_0_in0_carry__5_n_4;
  wire p_0_in0_carry__5_n_5;
  wire p_0_in0_carry__5_n_6;
  wire p_0_in0_carry__5_n_7;
  wire p_0_in0_carry__5_n_9;
  wire p_0_in0_carry_i_1_n_0;
  wire p_0_in0_carry_n_0;
  wire p_0_in0_carry_n_1;
  wire p_0_in0_carry_n_10;
  wire p_0_in0_carry_n_11;
  wire p_0_in0_carry_n_12;
  wire p_0_in0_carry_n_13;
  wire p_0_in0_carry_n_14;
  wire p_0_in0_carry_n_15;
  wire p_0_in0_carry_n_2;
  wire p_0_in0_carry_n_3;
  wire p_0_in0_carry_n_4;
  wire p_0_in0_carry_n_5;
  wire p_0_in0_carry_n_6;
  wire p_0_in0_carry_n_7;
  wire p_0_in0_carry_n_8;
  wire p_0_in0_carry_n_9;
  wire sent_mul;
  wire start;
  wire [31:0]wm_ctrl_length;
  wire wm_ctrl_start;
  wire wm_ctrl_start0;
  wire [7:7]NLW_num_transactions1_carry__1_CO_UNCONNECTED;
  wire [7:6]NLW_p_0_in0_carry__5_CO_UNCONNECTED;
  wire [7:7]NLW_p_0_in0_carry__5_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][0]_i_1__0 
       (.I0(Q[0]),
        .I1(wm_ctrl_start),
        .I2(m_axi_gmem_AWADDR[0]),
        .O(\addr[0][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][10]_i_1 
       (.I0(Q[10]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry_n_14),
        .O(\addr[0][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][11]_i_1 
       (.I0(Q[11]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry_n_13),
        .O(\addr[0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][12]_i_1 
       (.I0(Q[12]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry_n_12),
        .O(\addr[0][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][13]_i_1 
       (.I0(Q[13]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry_n_11),
        .O(\addr[0][13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][14]_i_1 
       (.I0(Q[14]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry_n_10),
        .O(\addr[0][14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][15]_i_1 
       (.I0(Q[15]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry_n_9),
        .O(\addr[0][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][16]_i_1 
       (.I0(Q[16]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry_n_8),
        .O(\addr[0][16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][17]_i_1 
       (.I0(Q[17]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__0_n_15),
        .O(\addr[0][17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][18]_i_1 
       (.I0(Q[18]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__0_n_14),
        .O(\addr[0][18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][19]_i_1 
       (.I0(Q[19]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__0_n_13),
        .O(\addr[0][19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][1]_i_1__0 
       (.I0(Q[1]),
        .I1(wm_ctrl_start),
        .I2(m_axi_gmem_AWADDR[1]),
        .O(\addr[0][1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][20]_i_1 
       (.I0(Q[20]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__0_n_12),
        .O(\addr[0][20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][21]_i_1 
       (.I0(Q[21]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__0_n_11),
        .O(\addr[0][21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][22]_i_1 
       (.I0(Q[22]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__0_n_10),
        .O(\addr[0][22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][23]_i_1 
       (.I0(Q[23]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__0_n_9),
        .O(\addr[0][23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][24]_i_1 
       (.I0(Q[24]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__0_n_8),
        .O(\addr[0][24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][25]_i_1 
       (.I0(Q[25]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__1_n_15),
        .O(\addr[0][25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][26]_i_1 
       (.I0(Q[26]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__1_n_14),
        .O(\addr[0][26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][27]_i_1 
       (.I0(Q[27]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__1_n_13),
        .O(\addr[0][27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][28]_i_1 
       (.I0(Q[28]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__1_n_12),
        .O(\addr[0][28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][29]_i_1 
       (.I0(Q[29]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__1_n_11),
        .O(\addr[0][29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][2]_i_1__0 
       (.I0(Q[2]),
        .I1(wm_ctrl_start),
        .I2(m_axi_gmem_AWADDR[2]),
        .O(\addr[0][2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][30]_i_1 
       (.I0(Q[30]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__1_n_10),
        .O(\addr[0][30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][31]_i_1 
       (.I0(Q[31]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__1_n_9),
        .O(\addr[0][31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][32]_i_1 
       (.I0(Q[32]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__1_n_8),
        .O(\addr[0][32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][33]_i_1 
       (.I0(Q[33]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__2_n_15),
        .O(\addr[0][33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][34]_i_1 
       (.I0(Q[34]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__2_n_14),
        .O(\addr[0][34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][35]_i_1 
       (.I0(Q[35]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__2_n_13),
        .O(\addr[0][35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][36]_i_1 
       (.I0(Q[36]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__2_n_12),
        .O(\addr[0][36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][37]_i_1 
       (.I0(Q[37]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__2_n_11),
        .O(\addr[0][37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][38]_i_1 
       (.I0(Q[38]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__2_n_10),
        .O(\addr[0][38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][39]_i_1 
       (.I0(Q[39]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__2_n_9),
        .O(\addr[0][39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][3]_i_1__0 
       (.I0(Q[3]),
        .I1(wm_ctrl_start),
        .I2(m_axi_gmem_AWADDR[3]),
        .O(\addr[0][3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][40]_i_1 
       (.I0(Q[40]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__2_n_8),
        .O(\addr[0][40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][41]_i_1 
       (.I0(Q[41]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__3_n_15),
        .O(\addr[0][41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][42]_i_1 
       (.I0(Q[42]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__3_n_14),
        .O(\addr[0][42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][43]_i_1 
       (.I0(Q[43]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__3_n_13),
        .O(\addr[0][43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][44]_i_1 
       (.I0(Q[44]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__3_n_12),
        .O(\addr[0][44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][45]_i_1 
       (.I0(Q[45]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__3_n_11),
        .O(\addr[0][45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][46]_i_1 
       (.I0(Q[46]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__3_n_10),
        .O(\addr[0][46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][47]_i_1 
       (.I0(Q[47]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__3_n_9),
        .O(\addr[0][47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][48]_i_1 
       (.I0(Q[48]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__3_n_8),
        .O(\addr[0][48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][49]_i_1 
       (.I0(Q[49]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__4_n_15),
        .O(\addr[0][49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][4]_i_1__0 
       (.I0(Q[4]),
        .I1(wm_ctrl_start),
        .I2(m_axi_gmem_AWADDR[4]),
        .O(\addr[0][4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][50]_i_1 
       (.I0(Q[50]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__4_n_14),
        .O(\addr[0][50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][51]_i_1 
       (.I0(Q[51]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__4_n_13),
        .O(\addr[0][51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][52]_i_1 
       (.I0(Q[52]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__4_n_12),
        .O(\addr[0][52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][53]_i_1 
       (.I0(Q[53]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__4_n_11),
        .O(\addr[0][53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][54]_i_1 
       (.I0(Q[54]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__4_n_10),
        .O(\addr[0][54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][55]_i_1 
       (.I0(Q[55]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__4_n_9),
        .O(\addr[0][55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][56]_i_1 
       (.I0(Q[56]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__4_n_8),
        .O(\addr[0][56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][57]_i_1 
       (.I0(Q[57]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__5_n_15),
        .O(\addr[0][57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][58]_i_1 
       (.I0(Q[58]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__5_n_14),
        .O(\addr[0][58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][59]_i_1 
       (.I0(Q[59]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__5_n_13),
        .O(\addr[0][59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][5]_i_1__0 
       (.I0(Q[5]),
        .I1(wm_ctrl_start),
        .I2(m_axi_gmem_AWADDR[5]),
        .O(\addr[0][5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][60]_i_1 
       (.I0(Q[60]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__5_n_12),
        .O(\addr[0][60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][61]_i_1 
       (.I0(Q[61]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__5_n_11),
        .O(\addr[0][61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][62]_i_1 
       (.I0(Q[62]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__5_n_10),
        .O(\addr[0][62]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \addr[0][63]_i_1 
       (.I0(wm_ctrl_start),
        .I1(m_axi_gmem_AWREADY),
        .I2(awvalid_r_reg_0),
        .O(\addr[0][63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][63]_i_2 
       (.I0(Q[63]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry__5_n_9),
        .O(\addr[0][63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][6]_i_1__0 
       (.I0(Q[6]),
        .I1(wm_ctrl_start),
        .I2(m_axi_gmem_AWADDR[6]),
        .O(\addr[0][6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][7]_i_1__0 
       (.I0(Q[7]),
        .I1(wm_ctrl_start),
        .I2(m_axi_gmem_AWADDR[7]),
        .O(\addr[0][7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][8]_i_1__0 
       (.I0(Q[8]),
        .I1(wm_ctrl_start),
        .I2(m_axi_gmem_AWADDR[8]),
        .O(\addr[0][8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][9]_i_1 
       (.I0(Q[9]),
        .I1(wm_ctrl_start),
        .I2(p_0_in0_carry_n_15),
        .O(\addr[0][9]_i_1_n_0 ));
  FDRE \addr_reg[0][0] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][0]_i_1__0_n_0 ),
        .Q(m_axi_gmem_AWADDR[0]),
        .R(1'b0));
  FDRE \addr_reg[0][10] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][10]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[10]),
        .R(1'b0));
  FDRE \addr_reg[0][11] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][11]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[11]),
        .R(1'b0));
  FDRE \addr_reg[0][12] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][12]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[12]),
        .R(1'b0));
  FDRE \addr_reg[0][13] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][13]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[13]),
        .R(1'b0));
  FDRE \addr_reg[0][14] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][14]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[14]),
        .R(1'b0));
  FDRE \addr_reg[0][15] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][15]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[15]),
        .R(1'b0));
  FDRE \addr_reg[0][16] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][16]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[16]),
        .R(1'b0));
  FDRE \addr_reg[0][17] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][17]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[17]),
        .R(1'b0));
  FDRE \addr_reg[0][18] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][18]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[18]),
        .R(1'b0));
  FDRE \addr_reg[0][19] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][19]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[19]),
        .R(1'b0));
  FDRE \addr_reg[0][1] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][1]_i_1__0_n_0 ),
        .Q(m_axi_gmem_AWADDR[1]),
        .R(1'b0));
  FDRE \addr_reg[0][20] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][20]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[20]),
        .R(1'b0));
  FDRE \addr_reg[0][21] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][21]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[21]),
        .R(1'b0));
  FDRE \addr_reg[0][22] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][22]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[22]),
        .R(1'b0));
  FDRE \addr_reg[0][23] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][23]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[23]),
        .R(1'b0));
  FDRE \addr_reg[0][24] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][24]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[24]),
        .R(1'b0));
  FDRE \addr_reg[0][25] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][25]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[25]),
        .R(1'b0));
  FDRE \addr_reg[0][26] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][26]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[26]),
        .R(1'b0));
  FDRE \addr_reg[0][27] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][27]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[27]),
        .R(1'b0));
  FDRE \addr_reg[0][28] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][28]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[28]),
        .R(1'b0));
  FDRE \addr_reg[0][29] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][29]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[29]),
        .R(1'b0));
  FDRE \addr_reg[0][2] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][2]_i_1__0_n_0 ),
        .Q(m_axi_gmem_AWADDR[2]),
        .R(1'b0));
  FDRE \addr_reg[0][30] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][30]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[30]),
        .R(1'b0));
  FDRE \addr_reg[0][31] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][31]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[31]),
        .R(1'b0));
  FDRE \addr_reg[0][32] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][32]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[32]),
        .R(1'b0));
  FDRE \addr_reg[0][33] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][33]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[33]),
        .R(1'b0));
  FDRE \addr_reg[0][34] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][34]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[34]),
        .R(1'b0));
  FDRE \addr_reg[0][35] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][35]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[35]),
        .R(1'b0));
  FDRE \addr_reg[0][36] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][36]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[36]),
        .R(1'b0));
  FDRE \addr_reg[0][37] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][37]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[37]),
        .R(1'b0));
  FDRE \addr_reg[0][38] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][38]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[38]),
        .R(1'b0));
  FDRE \addr_reg[0][39] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][39]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[39]),
        .R(1'b0));
  FDRE \addr_reg[0][3] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][3]_i_1__0_n_0 ),
        .Q(m_axi_gmem_AWADDR[3]),
        .R(1'b0));
  FDRE \addr_reg[0][40] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][40]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[40]),
        .R(1'b0));
  FDRE \addr_reg[0][41] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][41]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[41]),
        .R(1'b0));
  FDRE \addr_reg[0][42] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][42]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[42]),
        .R(1'b0));
  FDRE \addr_reg[0][43] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][43]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[43]),
        .R(1'b0));
  FDRE \addr_reg[0][44] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][44]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[44]),
        .R(1'b0));
  FDRE \addr_reg[0][45] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][45]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[45]),
        .R(1'b0));
  FDRE \addr_reg[0][46] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][46]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[46]),
        .R(1'b0));
  FDRE \addr_reg[0][47] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][47]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[47]),
        .R(1'b0));
  FDRE \addr_reg[0][48] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][48]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[48]),
        .R(1'b0));
  FDRE \addr_reg[0][49] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][49]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[49]),
        .R(1'b0));
  FDRE \addr_reg[0][4] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][4]_i_1__0_n_0 ),
        .Q(m_axi_gmem_AWADDR[4]),
        .R(1'b0));
  FDRE \addr_reg[0][50] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][50]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[50]),
        .R(1'b0));
  FDRE \addr_reg[0][51] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][51]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[51]),
        .R(1'b0));
  FDRE \addr_reg[0][52] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][52]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[52]),
        .R(1'b0));
  FDRE \addr_reg[0][53] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][53]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[53]),
        .R(1'b0));
  FDRE \addr_reg[0][54] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][54]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[54]),
        .R(1'b0));
  FDRE \addr_reg[0][55] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][55]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[55]),
        .R(1'b0));
  FDRE \addr_reg[0][56] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][56]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[56]),
        .R(1'b0));
  FDRE \addr_reg[0][57] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][57]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[57]),
        .R(1'b0));
  FDRE \addr_reg[0][58] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][58]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[58]),
        .R(1'b0));
  FDRE \addr_reg[0][59] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][59]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[59]),
        .R(1'b0));
  FDRE \addr_reg[0][5] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][5]_i_1__0_n_0 ),
        .Q(m_axi_gmem_AWADDR[5]),
        .R(1'b0));
  FDRE \addr_reg[0][60] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][60]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[60]),
        .R(1'b0));
  FDRE \addr_reg[0][61] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][61]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[61]),
        .R(1'b0));
  FDRE \addr_reg[0][62] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][62]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[62]),
        .R(1'b0));
  FDRE \addr_reg[0][63] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][63]_i_2_n_0 ),
        .Q(m_axi_gmem_AWADDR[63]),
        .R(1'b0));
  FDRE \addr_reg[0][6] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][6]_i_1__0_n_0 ),
        .Q(m_axi_gmem_AWADDR[6]),
        .R(1'b0));
  FDRE \addr_reg[0][7] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][7]_i_1__0_n_0 ),
        .Q(m_axi_gmem_AWADDR[7]),
        .R(1'b0));
  FDRE \addr_reg[0][8] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][8]_i_1__0_n_0 ),
        .Q(m_axi_gmem_AWADDR[8]),
        .R(1'b0));
  FDRE \addr_reg[0][9] 
       (.C(ap_clk),
        .CE(\addr[0][63]_i_1_n_0 ),
        .D(\addr[0][9]_i_1_n_0 ),
        .Q(m_axi_gmem_AWADDR[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    awvalid_r_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(\inst_w_to_aw_cntr_n_0_[1] ),
        .Q(awvalid_r_reg_0),
        .R(areset));
  LUT1 #(
    .INIT(2'h1)) 
    \final_burst_len[0]_i_1__0 
       (.I0(wm_ctrl_length[0]),
        .O(final_burst_len0[0]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \final_burst_len[1]_i_1 
       (.I0(wm_ctrl_length[1]),
        .I1(wm_ctrl_length[0]),
        .O(final_burst_len0[1]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \final_burst_len[2]_i_1__0 
       (.I0(wm_ctrl_length[2]),
        .I1(wm_ctrl_length[0]),
        .I2(wm_ctrl_length[1]),
        .O(final_burst_len0[2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \final_burst_len[3]_i_1__0 
       (.I0(wm_ctrl_length[3]),
        .I1(wm_ctrl_length[1]),
        .I2(wm_ctrl_length[0]),
        .I3(wm_ctrl_length[2]),
        .O(final_burst_len0[3]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \final_burst_len[4]_i_1 
       (.I0(wm_ctrl_length[4]),
        .I1(wm_ctrl_length[2]),
        .I2(wm_ctrl_length[0]),
        .I3(wm_ctrl_length[1]),
        .I4(wm_ctrl_length[3]),
        .O(final_burst_len0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \final_burst_len[5]_i_1__0 
       (.I0(wm_ctrl_length[5]),
        .I1(wm_ctrl_length[3]),
        .I2(wm_ctrl_length[1]),
        .I3(wm_ctrl_length[0]),
        .I4(wm_ctrl_length[2]),
        .I5(wm_ctrl_length[4]),
        .O(final_burst_len0[5]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \final_burst_len[6]_i_1__0 
       (.I0(wm_ctrl_length[6]),
        .I1(\final_burst_len[7]_i_2__0_n_0 ),
        .O(final_burst_len0[6]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \final_burst_len[7]_i_1__0 
       (.I0(wm_ctrl_length[6]),
        .I1(\final_burst_len[7]_i_2__0_n_0 ),
        .I2(wm_ctrl_length[7]),
        .O(final_burst_len0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \final_burst_len[7]_i_2__0 
       (.I0(wm_ctrl_length[4]),
        .I1(wm_ctrl_length[2]),
        .I2(wm_ctrl_length[0]),
        .I3(wm_ctrl_length[1]),
        .I4(wm_ctrl_length[3]),
        .I5(wm_ctrl_length[5]),
        .O(\final_burst_len[7]_i_2__0_n_0 ));
  FDRE \final_burst_len_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(final_burst_len0[0]),
        .Q(final_burst_len[0]),
        .R(1'b0));
  FDRE \final_burst_len_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(final_burst_len0[1]),
        .Q(final_burst_len[1]),
        .R(1'b0));
  FDRE \final_burst_len_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(final_burst_len0[2]),
        .Q(final_burst_len[2]),
        .R(1'b0));
  FDRE \final_burst_len_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(final_burst_len0[3]),
        .Q(final_burst_len[3]),
        .R(1'b0));
  FDRE \final_burst_len_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(final_burst_len0[4]),
        .Q(final_burst_len[4]),
        .R(1'b0));
  FDRE \final_burst_len_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(final_burst_len0[5]),
        .Q(final_burst_len[5]),
        .R(1'b0));
  FDRE \final_burst_len_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(final_burst_len0[6]),
        .Q(final_burst_len[6]),
        .R(1'b0));
  FDRE \final_burst_len_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(final_burst_len0[7]),
        .Q(final_burst_len[7]),
        .R(1'b0));
  ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter inst_aw_transaction_cntr
       (.Q(num_transactions),
        .ap_clk(ap_clk),
        .areset(areset),
        .awvalid_r_reg(inst_aw_transaction_cntr_n_9),
        .\count_r_reg[23]_0 (awvalid_r_reg_0),
        .\count_r_reg[7]_0 (\inst_b_transaction_cntr_n_1_[1] ),
        .m_axi_gmem_AWLEN(m_axi_gmem_AWLEN),
        .\m_axi_gmem_AWLEN[7] (final_burst_len),
        .m_axi_gmem_AWREADY(m_axi_gmem_AWREADY),
        .\num_transactions_reg[15] (inst_aw_transaction_cntr_n_8),
        .start(start));
  ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter_0 \inst_b_transaction_cntr[1] 
       (.Q(num_transactions),
        .ap_clk(ap_clk),
        .areset(areset),
        .is_zero_r_reg_0(is_zero_r_reg),
        .is_zero_r_reg_1(inst_aw_transaction_cntr_n_8),
        .m_axi_gmem_BVALID(m_axi_gmem_BVALID),
        .m_axi_gmem_BVALID_0(m_axi_gmem_BVALID_0),
        .sent_mul(sent_mul),
        .start(start),
        .start_reg(\inst_b_transaction_cntr_n_1_[1] ),
        .wm_ctrl_start0(wm_ctrl_start0));
  ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter__parameterized1 inst_burst_cntr
       (.Q(final_burst_len),
        .ap_clk(ap_clk),
        .areset(areset),
        .is_zero_r_reg_0(inst_aw_transaction_cntr_n_8),
        .m_axi_gmem_WLAST(m_axi_gmem_WLAST));
  ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter__parameterized2 \inst_w_to_aw_cntr[1] 
       (.ap_clk(ap_clk),
        .areset(areset),
        .awvalid_r_reg(awvalid_r_reg_0),
        .is_zero_r_reg_0(inst_aw_transaction_cntr_n_9),
        .m_axi_gmem_AWREADY(m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREADY_0(\inst_w_to_aw_cntr_n_0_[1] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 num_transactions1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({num_transactions1_carry_n_0,num_transactions1_carry_n_1,num_transactions1_carry_n_2,num_transactions1_carry_n_3,num_transactions1_carry_n_4,num_transactions1_carry_n_5,num_transactions1_carry_n_6,num_transactions1_carry_n_7}),
        .DI(wm_ctrl_length[15:8]),
        .O(num_transactions0[7:0]),
        .S({num_transactions1_carry_i_1_n_0,num_transactions1_carry_i_2_n_0,num_transactions1_carry_i_3_n_0,num_transactions1_carry_i_4_n_0,num_transactions1_carry_i_5_n_0,num_transactions1_carry_i_6_n_0,num_transactions1_carry_i_7_n_0,num_transactions1_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 num_transactions1_carry__0
       (.CI(num_transactions1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({num_transactions1_carry__0_n_0,num_transactions1_carry__0_n_1,num_transactions1_carry__0_n_2,num_transactions1_carry__0_n_3,num_transactions1_carry__0_n_4,num_transactions1_carry__0_n_5,num_transactions1_carry__0_n_6,num_transactions1_carry__0_n_7}),
        .DI(wm_ctrl_length[23:16]),
        .O(num_transactions0[15:8]),
        .S({num_transactions1_carry__0_i_1_n_0,num_transactions1_carry__0_i_2_n_0,num_transactions1_carry__0_i_3_n_0,num_transactions1_carry__0_i_4_n_0,num_transactions1_carry__0_i_5_n_0,num_transactions1_carry__0_i_6_n_0,num_transactions1_carry__0_i_7_n_0,num_transactions1_carry__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_1
       (.I0(wm_ctrl_length[23]),
        .O(num_transactions1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_2
       (.I0(wm_ctrl_length[22]),
        .O(num_transactions1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_3
       (.I0(wm_ctrl_length[21]),
        .O(num_transactions1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_4
       (.I0(wm_ctrl_length[20]),
        .O(num_transactions1_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_5
       (.I0(wm_ctrl_length[19]),
        .O(num_transactions1_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_6
       (.I0(wm_ctrl_length[18]),
        .O(num_transactions1_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_7
       (.I0(wm_ctrl_length[17]),
        .O(num_transactions1_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__0_i_8
       (.I0(wm_ctrl_length[16]),
        .O(num_transactions1_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 num_transactions1_carry__1
       (.CI(num_transactions1_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_num_transactions1_carry__1_CO_UNCONNECTED[7],num_transactions1_carry__1_n_1,num_transactions1_carry__1_n_2,num_transactions1_carry__1_n_3,num_transactions1_carry__1_n_4,num_transactions1_carry__1_n_5,num_transactions1_carry__1_n_6,num_transactions1_carry__1_n_7}),
        .DI({1'b0,wm_ctrl_length[30:24]}),
        .O(num_transactions0[23:16]),
        .S({num_transactions1_carry__1_i_1_n_0,num_transactions1_carry__1_i_2_n_0,num_transactions1_carry__1_i_3_n_0,num_transactions1_carry__1_i_4_n_0,num_transactions1_carry__1_i_5_n_0,num_transactions1_carry__1_i_6_n_0,num_transactions1_carry__1_i_7_n_0,num_transactions1_carry__1_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_1
       (.I0(wm_ctrl_length[31]),
        .O(num_transactions1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_2
       (.I0(wm_ctrl_length[30]),
        .O(num_transactions1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_3
       (.I0(wm_ctrl_length[29]),
        .O(num_transactions1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_4
       (.I0(wm_ctrl_length[28]),
        .O(num_transactions1_carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_5
       (.I0(wm_ctrl_length[27]),
        .O(num_transactions1_carry__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_6
       (.I0(wm_ctrl_length[26]),
        .O(num_transactions1_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_7
       (.I0(wm_ctrl_length[25]),
        .O(num_transactions1_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry__1_i_8
       (.I0(wm_ctrl_length[24]),
        .O(num_transactions1_carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_1
       (.I0(wm_ctrl_length[15]),
        .O(num_transactions1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_2
       (.I0(wm_ctrl_length[14]),
        .O(num_transactions1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_3
       (.I0(wm_ctrl_length[13]),
        .O(num_transactions1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_4
       (.I0(wm_ctrl_length[12]),
        .O(num_transactions1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_5
       (.I0(wm_ctrl_length[11]),
        .O(num_transactions1_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_6
       (.I0(wm_ctrl_length[10]),
        .O(num_transactions1_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    num_transactions1_carry_i_7
       (.I0(wm_ctrl_length[9]),
        .O(num_transactions1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h5556)) 
    num_transactions1_carry_i_8
       (.I0(wm_ctrl_length[8]),
        .I1(wm_ctrl_length[7]),
        .I2(\final_burst_len[7]_i_2__0_n_0 ),
        .I3(wm_ctrl_length[6]),
        .O(num_transactions1_carry_i_8_n_0));
  FDRE \num_transactions_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[0]),
        .Q(num_transactions[0]),
        .R(1'b0));
  FDRE \num_transactions_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[10]),
        .Q(num_transactions[10]),
        .R(1'b0));
  FDRE \num_transactions_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[11]),
        .Q(num_transactions[11]),
        .R(1'b0));
  FDRE \num_transactions_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[12]),
        .Q(num_transactions[12]),
        .R(1'b0));
  FDRE \num_transactions_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[13]),
        .Q(num_transactions[13]),
        .R(1'b0));
  FDRE \num_transactions_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[14]),
        .Q(num_transactions[14]),
        .R(1'b0));
  FDRE \num_transactions_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[15]),
        .Q(num_transactions[15]),
        .R(1'b0));
  FDRE \num_transactions_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[16]),
        .Q(num_transactions[16]),
        .R(1'b0));
  FDRE \num_transactions_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[17]),
        .Q(num_transactions[17]),
        .R(1'b0));
  FDRE \num_transactions_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[18]),
        .Q(num_transactions[18]),
        .R(1'b0));
  FDRE \num_transactions_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[19]),
        .Q(num_transactions[19]),
        .R(1'b0));
  FDRE \num_transactions_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[1]),
        .Q(num_transactions[1]),
        .R(1'b0));
  FDRE \num_transactions_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[20]),
        .Q(num_transactions[20]),
        .R(1'b0));
  FDRE \num_transactions_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[21]),
        .Q(num_transactions[21]),
        .R(1'b0));
  FDRE \num_transactions_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[22]),
        .Q(num_transactions[22]),
        .R(1'b0));
  FDRE \num_transactions_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[23]),
        .Q(num_transactions[23]),
        .R(1'b0));
  FDRE \num_transactions_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[2]),
        .Q(num_transactions[2]),
        .R(1'b0));
  FDRE \num_transactions_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[3]),
        .Q(num_transactions[3]),
        .R(1'b0));
  FDRE \num_transactions_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[4]),
        .Q(num_transactions[4]),
        .R(1'b0));
  FDRE \num_transactions_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[5]),
        .Q(num_transactions[5]),
        .R(1'b0));
  FDRE \num_transactions_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[6]),
        .Q(num_transactions[6]),
        .R(1'b0));
  FDRE \num_transactions_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[7]),
        .Q(num_transactions[7]),
        .R(1'b0));
  FDRE \num_transactions_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[8]),
        .Q(num_transactions[8]),
        .R(1'b0));
  FDRE \num_transactions_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(num_transactions0[9]),
        .Q(num_transactions[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 p_0_in0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({p_0_in0_carry_n_0,p_0_in0_carry_n_1,p_0_in0_carry_n_2,p_0_in0_carry_n_3,p_0_in0_carry_n_4,p_0_in0_carry_n_5,p_0_in0_carry_n_6,p_0_in0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,m_axi_gmem_AWADDR[10],1'b0}),
        .O({p_0_in0_carry_n_8,p_0_in0_carry_n_9,p_0_in0_carry_n_10,p_0_in0_carry_n_11,p_0_in0_carry_n_12,p_0_in0_carry_n_13,p_0_in0_carry_n_14,p_0_in0_carry_n_15}),
        .S({m_axi_gmem_AWADDR[16:11],p_0_in0_carry_i_1_n_0,m_axi_gmem_AWADDR[9]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 p_0_in0_carry__0
       (.CI(p_0_in0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({p_0_in0_carry__0_n_0,p_0_in0_carry__0_n_1,p_0_in0_carry__0_n_2,p_0_in0_carry__0_n_3,p_0_in0_carry__0_n_4,p_0_in0_carry__0_n_5,p_0_in0_carry__0_n_6,p_0_in0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({p_0_in0_carry__0_n_8,p_0_in0_carry__0_n_9,p_0_in0_carry__0_n_10,p_0_in0_carry__0_n_11,p_0_in0_carry__0_n_12,p_0_in0_carry__0_n_13,p_0_in0_carry__0_n_14,p_0_in0_carry__0_n_15}),
        .S(m_axi_gmem_AWADDR[24:17]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 p_0_in0_carry__1
       (.CI(p_0_in0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({p_0_in0_carry__1_n_0,p_0_in0_carry__1_n_1,p_0_in0_carry__1_n_2,p_0_in0_carry__1_n_3,p_0_in0_carry__1_n_4,p_0_in0_carry__1_n_5,p_0_in0_carry__1_n_6,p_0_in0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({p_0_in0_carry__1_n_8,p_0_in0_carry__1_n_9,p_0_in0_carry__1_n_10,p_0_in0_carry__1_n_11,p_0_in0_carry__1_n_12,p_0_in0_carry__1_n_13,p_0_in0_carry__1_n_14,p_0_in0_carry__1_n_15}),
        .S(m_axi_gmem_AWADDR[32:25]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 p_0_in0_carry__2
       (.CI(p_0_in0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({p_0_in0_carry__2_n_0,p_0_in0_carry__2_n_1,p_0_in0_carry__2_n_2,p_0_in0_carry__2_n_3,p_0_in0_carry__2_n_4,p_0_in0_carry__2_n_5,p_0_in0_carry__2_n_6,p_0_in0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({p_0_in0_carry__2_n_8,p_0_in0_carry__2_n_9,p_0_in0_carry__2_n_10,p_0_in0_carry__2_n_11,p_0_in0_carry__2_n_12,p_0_in0_carry__2_n_13,p_0_in0_carry__2_n_14,p_0_in0_carry__2_n_15}),
        .S(m_axi_gmem_AWADDR[40:33]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 p_0_in0_carry__3
       (.CI(p_0_in0_carry__2_n_0),
        .CI_TOP(1'b0),
        .CO({p_0_in0_carry__3_n_0,p_0_in0_carry__3_n_1,p_0_in0_carry__3_n_2,p_0_in0_carry__3_n_3,p_0_in0_carry__3_n_4,p_0_in0_carry__3_n_5,p_0_in0_carry__3_n_6,p_0_in0_carry__3_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({p_0_in0_carry__3_n_8,p_0_in0_carry__3_n_9,p_0_in0_carry__3_n_10,p_0_in0_carry__3_n_11,p_0_in0_carry__3_n_12,p_0_in0_carry__3_n_13,p_0_in0_carry__3_n_14,p_0_in0_carry__3_n_15}),
        .S(m_axi_gmem_AWADDR[48:41]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 p_0_in0_carry__4
       (.CI(p_0_in0_carry__3_n_0),
        .CI_TOP(1'b0),
        .CO({p_0_in0_carry__4_n_0,p_0_in0_carry__4_n_1,p_0_in0_carry__4_n_2,p_0_in0_carry__4_n_3,p_0_in0_carry__4_n_4,p_0_in0_carry__4_n_5,p_0_in0_carry__4_n_6,p_0_in0_carry__4_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({p_0_in0_carry__4_n_8,p_0_in0_carry__4_n_9,p_0_in0_carry__4_n_10,p_0_in0_carry__4_n_11,p_0_in0_carry__4_n_12,p_0_in0_carry__4_n_13,p_0_in0_carry__4_n_14,p_0_in0_carry__4_n_15}),
        .S(m_axi_gmem_AWADDR[56:49]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 p_0_in0_carry__5
       (.CI(p_0_in0_carry__4_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_p_0_in0_carry__5_CO_UNCONNECTED[7:6],p_0_in0_carry__5_n_2,p_0_in0_carry__5_n_3,p_0_in0_carry__5_n_4,p_0_in0_carry__5_n_5,p_0_in0_carry__5_n_6,p_0_in0_carry__5_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_p_0_in0_carry__5_O_UNCONNECTED[7],p_0_in0_carry__5_n_9,p_0_in0_carry__5_n_10,p_0_in0_carry__5_n_11,p_0_in0_carry__5_n_12,p_0_in0_carry__5_n_13,p_0_in0_carry__5_n_14,p_0_in0_carry__5_n_15}),
        .S({1'b0,m_axi_gmem_AWADDR[63:57]}));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_in0_carry_i_1
       (.I0(m_axi_gmem_AWADDR[10]),
        .O(p_0_in0_carry_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(wm_ctrl_start),
        .Q(start),
        .R(1'b0));
endmodule

module ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_control_s_axi
   (FSM_sequential_rstate_reg_0,
    ap_start_pulse,
    sent_mul_reg,
    \int_length_r_reg[7]_0 ,
    Q,
    s_axi_control_AWREADY,
    s_axi_control_ARREADY,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_control_BVALID,
    interrupt,
    ap_idle_reg,
    \int_ro_in_reg[0]_0 ,
    \int_ro_in_reg[1]_0 ,
    \int_ro_in_reg[2]_0 ,
    \int_ro_in_reg[3]_0 ,
    \int_ro_in_reg[4]_0 ,
    \int_ro_in_reg[5]_0 ,
    \int_ro_in_reg[6]_0 ,
    \int_ro_in_reg[7]_0 ,
    \int_ro_in_reg[8]_0 ,
    \int_a_reg[0]_0 ,
    \int_a_reg[1]_0 ,
    \int_a_reg[2]_0 ,
    \int_a_reg[3]_0 ,
    \int_a_reg[4]_0 ,
    \int_a_reg[5]_0 ,
    \int_a_reg[6]_0 ,
    \int_a_reg[7]_0 ,
    \int_a_reg[8]_0 ,
    ap_start_r_reg,
    ap_start,
    D,
    \int_length_r_reg[0]_0 ,
    \int_length_r_reg[30]_0 ,
    O,
    \int_ro_in_reg[24]_0 ,
    \int_ro_in_reg[32]_0 ,
    \int_ro_in_reg[40]_0 ,
    \int_ro_in_reg[48]_0 ,
    \int_ro_in_reg[56]_0 ,
    \int_ro_in_reg[63]_0 ,
    ap_start_r_reg_0,
    \int_a_reg[24]_0 ,
    \int_a_reg[32]_0 ,
    \int_a_reg[40]_0 ,
    \int_a_reg[48]_0 ,
    \int_a_reg[56]_0 ,
    \int_a_reg[63]_0 ,
    s_axi_control_RDATA,
    areset,
    ap_clk,
    \addr_reg[1]_4 ,
    \addr_reg[0]_3 ,
    sent_mul,
    m_axi_gmem_BVALID,
    ap_done_reg,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    s_axi_control_AWVALID,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_WDATA,
    s_axi_control_BREADY,
    ap_idle,
    ap_done,
    ap_start_r,
    s_axi_control_AWADDR);
  output FSM_sequential_rstate_reg_0;
  output ap_start_pulse;
  output sent_mul_reg;
  output [7:0]\int_length_r_reg[7]_0 ;
  output [30:0]Q;
  output s_axi_control_AWREADY;
  output s_axi_control_ARREADY;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_control_BVALID;
  output interrupt;
  output ap_idle_reg;
  output \int_ro_in_reg[0]_0 ;
  output \int_ro_in_reg[1]_0 ;
  output \int_ro_in_reg[2]_0 ;
  output \int_ro_in_reg[3]_0 ;
  output \int_ro_in_reg[4]_0 ;
  output \int_ro_in_reg[5]_0 ;
  output \int_ro_in_reg[6]_0 ;
  output \int_ro_in_reg[7]_0 ;
  output \int_ro_in_reg[8]_0 ;
  output \int_a_reg[0]_0 ;
  output \int_a_reg[1]_0 ;
  output \int_a_reg[2]_0 ;
  output \int_a_reg[3]_0 ;
  output \int_a_reg[4]_0 ;
  output \int_a_reg[5]_0 ;
  output \int_a_reg[6]_0 ;
  output \int_a_reg[7]_0 ;
  output \int_a_reg[8]_0 ;
  output ap_start_r_reg;
  output ap_start;
  output [63:0]D;
  output [0:0]\int_length_r_reg[0]_0 ;
  output [23:0]\int_length_r_reg[30]_0 ;
  output [7:0]O;
  output [7:0]\int_ro_in_reg[24]_0 ;
  output [7:0]\int_ro_in_reg[32]_0 ;
  output [7:0]\int_ro_in_reg[40]_0 ;
  output [7:0]\int_ro_in_reg[48]_0 ;
  output [7:0]\int_ro_in_reg[56]_0 ;
  output [6:0]\int_ro_in_reg[63]_0 ;
  output [7:0]ap_start_r_reg_0;
  output [7:0]\int_a_reg[24]_0 ;
  output [7:0]\int_a_reg[32]_0 ;
  output [7:0]\int_a_reg[40]_0 ;
  output [7:0]\int_a_reg[48]_0 ;
  output [7:0]\int_a_reg[56]_0 ;
  output [6:0]\int_a_reg[63]_0 ;
  output [31:0]s_axi_control_RDATA;
  input areset;
  input ap_clk;
  input [63:0]\addr_reg[1]_4 ;
  input [63:0]\addr_reg[0]_3 ;
  input sent_mul;
  input m_axi_gmem_BVALID;
  input ap_done_reg;
  input [6:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_BREADY;
  input ap_idle;
  input ap_done;
  input ap_start_r;
  input [6:0]s_axi_control_AWADDR;

  wire [63:0]D;
  wire \FSM_onehot_wstate[0]_i_1_n_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg_n_0_[0] ;
  wire FSM_sequential_rstate_reg_0;
  wire [7:0]O;
  wire [30:0]Q;
  wire [63:0]a;
  wire \addr[0][17]_i_2_n_0 ;
  wire \addr[0][17]_i_3_n_0 ;
  wire \addr[0][17]_i_4_n_0 ;
  wire \addr[0][17]_i_5_n_0 ;
  wire \addr[0][17]_i_6_n_0 ;
  wire \addr[0][17]_i_7_n_0 ;
  wire \addr[0][17]_i_8_n_0 ;
  wire \addr[0][17]_i_9_n_0 ;
  wire \addr[0][25]_i_2_n_0 ;
  wire \addr[0][25]_i_3_n_0 ;
  wire \addr[0][25]_i_4_n_0 ;
  wire \addr[0][25]_i_5_n_0 ;
  wire \addr[0][25]_i_6_n_0 ;
  wire \addr[0][25]_i_7_n_0 ;
  wire \addr[0][25]_i_8_n_0 ;
  wire \addr[0][25]_i_9_n_0 ;
  wire \addr[0][33]_i_2_n_0 ;
  wire \addr[0][33]_i_3_n_0 ;
  wire \addr[0][33]_i_4_n_0 ;
  wire \addr[0][33]_i_5_n_0 ;
  wire \addr[0][33]_i_6_n_0 ;
  wire \addr[0][33]_i_7_n_0 ;
  wire \addr[0][33]_i_8_n_0 ;
  wire \addr[0][33]_i_9_n_0 ;
  wire \addr[0][41]_i_2_n_0 ;
  wire \addr[0][41]_i_3_n_0 ;
  wire \addr[0][41]_i_4_n_0 ;
  wire \addr[0][41]_i_5_n_0 ;
  wire \addr[0][41]_i_6_n_0 ;
  wire \addr[0][41]_i_7_n_0 ;
  wire \addr[0][41]_i_8_n_0 ;
  wire \addr[0][41]_i_9_n_0 ;
  wire \addr[0][49]_i_2_n_0 ;
  wire \addr[0][49]_i_3_n_0 ;
  wire \addr[0][49]_i_4_n_0 ;
  wire \addr[0][49]_i_5_n_0 ;
  wire \addr[0][49]_i_6_n_0 ;
  wire \addr[0][49]_i_7_n_0 ;
  wire \addr[0][49]_i_8_n_0 ;
  wire \addr[0][49]_i_9_n_0 ;
  wire \addr[0][57]_i_2_n_0 ;
  wire \addr[0][57]_i_3_n_0 ;
  wire \addr[0][57]_i_4_n_0 ;
  wire \addr[0][57]_i_5_n_0 ;
  wire \addr[0][57]_i_6_n_0 ;
  wire \addr[0][57]_i_7_n_0 ;
  wire \addr[0][57]_i_8_n_0 ;
  wire \addr[0][9]_i_10_n_0 ;
  wire \addr[0][9]_i_2_n_0 ;
  wire \addr[0][9]_i_3_n_0 ;
  wire \addr[0][9]_i_4_n_0 ;
  wire \addr[0][9]_i_5_n_0 ;
  wire \addr[0][9]_i_6_n_0 ;
  wire \addr[0][9]_i_7_n_0 ;
  wire \addr[0][9]_i_8_n_0 ;
  wire \addr[0][9]_i_9_n_0 ;
  wire \addr[1][17]_i_2_n_0 ;
  wire \addr[1][17]_i_3_n_0 ;
  wire \addr[1][17]_i_4_n_0 ;
  wire \addr[1][17]_i_5_n_0 ;
  wire \addr[1][17]_i_6_n_0 ;
  wire \addr[1][17]_i_7_n_0 ;
  wire \addr[1][17]_i_8_n_0 ;
  wire \addr[1][17]_i_9_n_0 ;
  wire \addr[1][25]_i_2_n_0 ;
  wire \addr[1][25]_i_3_n_0 ;
  wire \addr[1][25]_i_4_n_0 ;
  wire \addr[1][25]_i_5_n_0 ;
  wire \addr[1][25]_i_6_n_0 ;
  wire \addr[1][25]_i_7_n_0 ;
  wire \addr[1][25]_i_8_n_0 ;
  wire \addr[1][25]_i_9_n_0 ;
  wire \addr[1][33]_i_2_n_0 ;
  wire \addr[1][33]_i_3_n_0 ;
  wire \addr[1][33]_i_4_n_0 ;
  wire \addr[1][33]_i_5_n_0 ;
  wire \addr[1][33]_i_6_n_0 ;
  wire \addr[1][33]_i_7_n_0 ;
  wire \addr[1][33]_i_8_n_0 ;
  wire \addr[1][33]_i_9_n_0 ;
  wire \addr[1][41]_i_2_n_0 ;
  wire \addr[1][41]_i_3_n_0 ;
  wire \addr[1][41]_i_4_n_0 ;
  wire \addr[1][41]_i_5_n_0 ;
  wire \addr[1][41]_i_6_n_0 ;
  wire \addr[1][41]_i_7_n_0 ;
  wire \addr[1][41]_i_8_n_0 ;
  wire \addr[1][41]_i_9_n_0 ;
  wire \addr[1][49]_i_2_n_0 ;
  wire \addr[1][49]_i_3_n_0 ;
  wire \addr[1][49]_i_4_n_0 ;
  wire \addr[1][49]_i_5_n_0 ;
  wire \addr[1][49]_i_6_n_0 ;
  wire \addr[1][49]_i_7_n_0 ;
  wire \addr[1][49]_i_8_n_0 ;
  wire \addr[1][49]_i_9_n_0 ;
  wire \addr[1][57]_i_2_n_0 ;
  wire \addr[1][57]_i_3_n_0 ;
  wire \addr[1][57]_i_4_n_0 ;
  wire \addr[1][57]_i_5_n_0 ;
  wire \addr[1][57]_i_6_n_0 ;
  wire \addr[1][57]_i_7_n_0 ;
  wire \addr[1][57]_i_8_n_0 ;
  wire \addr[1][9]_i_10_n_0 ;
  wire \addr[1][9]_i_2_n_0 ;
  wire \addr[1][9]_i_3_n_0 ;
  wire \addr[1][9]_i_4_n_0 ;
  wire \addr[1][9]_i_5_n_0 ;
  wire \addr[1][9]_i_6_n_0 ;
  wire \addr[1][9]_i_7_n_0 ;
  wire \addr[1][9]_i_8_n_0 ;
  wire \addr[1][9]_i_9_n_0 ;
  wire \addr_reg[0][17]_i_1_n_0 ;
  wire \addr_reg[0][17]_i_1_n_1 ;
  wire \addr_reg[0][17]_i_1_n_2 ;
  wire \addr_reg[0][17]_i_1_n_3 ;
  wire \addr_reg[0][17]_i_1_n_4 ;
  wire \addr_reg[0][17]_i_1_n_5 ;
  wire \addr_reg[0][17]_i_1_n_6 ;
  wire \addr_reg[0][17]_i_1_n_7 ;
  wire \addr_reg[0][25]_i_1_n_0 ;
  wire \addr_reg[0][25]_i_1_n_1 ;
  wire \addr_reg[0][25]_i_1_n_2 ;
  wire \addr_reg[0][25]_i_1_n_3 ;
  wire \addr_reg[0][25]_i_1_n_4 ;
  wire \addr_reg[0][25]_i_1_n_5 ;
  wire \addr_reg[0][25]_i_1_n_6 ;
  wire \addr_reg[0][25]_i_1_n_7 ;
  wire \addr_reg[0][33]_i_1_n_0 ;
  wire \addr_reg[0][33]_i_1_n_1 ;
  wire \addr_reg[0][33]_i_1_n_2 ;
  wire \addr_reg[0][33]_i_1_n_3 ;
  wire \addr_reg[0][33]_i_1_n_4 ;
  wire \addr_reg[0][33]_i_1_n_5 ;
  wire \addr_reg[0][33]_i_1_n_6 ;
  wire \addr_reg[0][33]_i_1_n_7 ;
  wire \addr_reg[0][41]_i_1_n_0 ;
  wire \addr_reg[0][41]_i_1_n_1 ;
  wire \addr_reg[0][41]_i_1_n_2 ;
  wire \addr_reg[0][41]_i_1_n_3 ;
  wire \addr_reg[0][41]_i_1_n_4 ;
  wire \addr_reg[0][41]_i_1_n_5 ;
  wire \addr_reg[0][41]_i_1_n_6 ;
  wire \addr_reg[0][41]_i_1_n_7 ;
  wire \addr_reg[0][49]_i_1_n_0 ;
  wire \addr_reg[0][49]_i_1_n_1 ;
  wire \addr_reg[0][49]_i_1_n_2 ;
  wire \addr_reg[0][49]_i_1_n_3 ;
  wire \addr_reg[0][49]_i_1_n_4 ;
  wire \addr_reg[0][49]_i_1_n_5 ;
  wire \addr_reg[0][49]_i_1_n_6 ;
  wire \addr_reg[0][49]_i_1_n_7 ;
  wire \addr_reg[0][57]_i_1_n_2 ;
  wire \addr_reg[0][57]_i_1_n_3 ;
  wire \addr_reg[0][57]_i_1_n_4 ;
  wire \addr_reg[0][57]_i_1_n_5 ;
  wire \addr_reg[0][57]_i_1_n_6 ;
  wire \addr_reg[0][57]_i_1_n_7 ;
  wire \addr_reg[0][9]_i_1_n_0 ;
  wire \addr_reg[0][9]_i_1_n_1 ;
  wire \addr_reg[0][9]_i_1_n_2 ;
  wire \addr_reg[0][9]_i_1_n_3 ;
  wire \addr_reg[0][9]_i_1_n_4 ;
  wire \addr_reg[0][9]_i_1_n_5 ;
  wire \addr_reg[0][9]_i_1_n_6 ;
  wire \addr_reg[0][9]_i_1_n_7 ;
  wire [63:0]\addr_reg[0]_3 ;
  wire \addr_reg[1][17]_i_1_n_0 ;
  wire \addr_reg[1][17]_i_1_n_1 ;
  wire \addr_reg[1][17]_i_1_n_2 ;
  wire \addr_reg[1][17]_i_1_n_3 ;
  wire \addr_reg[1][17]_i_1_n_4 ;
  wire \addr_reg[1][17]_i_1_n_5 ;
  wire \addr_reg[1][17]_i_1_n_6 ;
  wire \addr_reg[1][17]_i_1_n_7 ;
  wire \addr_reg[1][25]_i_1_n_0 ;
  wire \addr_reg[1][25]_i_1_n_1 ;
  wire \addr_reg[1][25]_i_1_n_2 ;
  wire \addr_reg[1][25]_i_1_n_3 ;
  wire \addr_reg[1][25]_i_1_n_4 ;
  wire \addr_reg[1][25]_i_1_n_5 ;
  wire \addr_reg[1][25]_i_1_n_6 ;
  wire \addr_reg[1][25]_i_1_n_7 ;
  wire \addr_reg[1][33]_i_1_n_0 ;
  wire \addr_reg[1][33]_i_1_n_1 ;
  wire \addr_reg[1][33]_i_1_n_2 ;
  wire \addr_reg[1][33]_i_1_n_3 ;
  wire \addr_reg[1][33]_i_1_n_4 ;
  wire \addr_reg[1][33]_i_1_n_5 ;
  wire \addr_reg[1][33]_i_1_n_6 ;
  wire \addr_reg[1][33]_i_1_n_7 ;
  wire \addr_reg[1][41]_i_1_n_0 ;
  wire \addr_reg[1][41]_i_1_n_1 ;
  wire \addr_reg[1][41]_i_1_n_2 ;
  wire \addr_reg[1][41]_i_1_n_3 ;
  wire \addr_reg[1][41]_i_1_n_4 ;
  wire \addr_reg[1][41]_i_1_n_5 ;
  wire \addr_reg[1][41]_i_1_n_6 ;
  wire \addr_reg[1][41]_i_1_n_7 ;
  wire \addr_reg[1][49]_i_1_n_0 ;
  wire \addr_reg[1][49]_i_1_n_1 ;
  wire \addr_reg[1][49]_i_1_n_2 ;
  wire \addr_reg[1][49]_i_1_n_3 ;
  wire \addr_reg[1][49]_i_1_n_4 ;
  wire \addr_reg[1][49]_i_1_n_5 ;
  wire \addr_reg[1][49]_i_1_n_6 ;
  wire \addr_reg[1][49]_i_1_n_7 ;
  wire \addr_reg[1][57]_i_1_n_2 ;
  wire \addr_reg[1][57]_i_1_n_3 ;
  wire \addr_reg[1][57]_i_1_n_4 ;
  wire \addr_reg[1][57]_i_1_n_5 ;
  wire \addr_reg[1][57]_i_1_n_6 ;
  wire \addr_reg[1][57]_i_1_n_7 ;
  wire \addr_reg[1][9]_i_1_n_0 ;
  wire \addr_reg[1][9]_i_1_n_1 ;
  wire \addr_reg[1][9]_i_1_n_2 ;
  wire \addr_reg[1][9]_i_1_n_3 ;
  wire \addr_reg[1][9]_i_1_n_4 ;
  wire \addr_reg[1][9]_i_1_n_5 ;
  wire \addr_reg[1][9]_i_1_n_6 ;
  wire \addr_reg[1][9]_i_1_n_7 ;
  wire [63:0]\addr_reg[1]_4 ;
  wire ap_clk;
  wire ap_done;
  wire ap_done_reg;
  wire ap_idle;
  wire ap_idle_reg;
  wire ap_start;
  wire ap_start_pulse;
  wire ap_start_r;
  wire ap_start_r_reg;
  wire [7:0]ap_start_r_reg_0;
  wire ar_hs;
  wire areset;
  wire [63:0]b;
  wire [63:0]c;
  wire [63:0]d;
  wire \final_burst_len[7]_i_2_n_0 ;
  wire \int_a[31]_i_1_n_0 ;
  wire \int_a[63]_i_1_n_0 ;
  wire [31:0]int_a_reg0;
  wire [31:0]int_a_reg012_out;
  wire \int_a_reg[0]_0 ;
  wire \int_a_reg[1]_0 ;
  wire [7:0]\int_a_reg[24]_0 ;
  wire \int_a_reg[2]_0 ;
  wire [7:0]\int_a_reg[32]_0 ;
  wire \int_a_reg[3]_0 ;
  wire [7:0]\int_a_reg[40]_0 ;
  wire [7:0]\int_a_reg[48]_0 ;
  wire \int_a_reg[4]_0 ;
  wire [7:0]\int_a_reg[56]_0 ;
  wire \int_a_reg[5]_0 ;
  wire [6:0]\int_a_reg[63]_0 ;
  wire \int_a_reg[6]_0 ;
  wire \int_a_reg[7]_0 ;
  wire \int_a_reg[8]_0 ;
  wire int_ap_done__0;
  wire int_ap_done_i_1_n_0;
  wire int_ap_done_i_2_n_0;
  wire int_ap_done_i_3_n_0;
  wire int_ap_start1;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_0;
  wire int_auto_restart_i_1_n_0;
  wire int_auto_restart_reg_n_0;
  wire \int_b[31]_i_1_n_0 ;
  wire \int_b[63]_i_1_n_0 ;
  wire \int_b[63]_i_3_n_0 ;
  wire [31:0]int_b_reg0;
  wire [31:0]int_b_reg09_out;
  wire \int_c[31]_i_1_n_0 ;
  wire \int_c[63]_i_1_n_0 ;
  wire [31:0]int_c_reg0;
  wire [31:0]int_c_reg07_out;
  wire \int_d[31]_i_1_n_0 ;
  wire \int_d[63]_i_1_n_0 ;
  wire [31:0]int_d_reg0;
  wire [31:0]int_d_reg05_out;
  wire int_gie_i_1_n_0;
  wire int_gie_i_2_n_0;
  wire int_gie_reg_n_0;
  wire int_ier9_out;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire [31:0]int_length_r0;
  wire \int_length_r[31]_i_1_n_0 ;
  wire \int_length_r[31]_i_3_n_0 ;
  wire [0:0]\int_length_r_reg[0]_0 ;
  wire [23:0]\int_length_r_reg[30]_0 ;
  wire [7:0]\int_length_r_reg[7]_0 ;
  wire \int_ro_in[31]_i_1_n_0 ;
  wire \int_ro_in[63]_i_1_n_0 ;
  wire [31:0]int_ro_in_reg0;
  wire [31:0]int_ro_in_reg03_out;
  wire \int_ro_in_reg[0]_0 ;
  wire \int_ro_in_reg[1]_0 ;
  wire [7:0]\int_ro_in_reg[24]_0 ;
  wire \int_ro_in_reg[2]_0 ;
  wire [7:0]\int_ro_in_reg[32]_0 ;
  wire \int_ro_in_reg[3]_0 ;
  wire [7:0]\int_ro_in_reg[40]_0 ;
  wire [7:0]\int_ro_in_reg[48]_0 ;
  wire \int_ro_in_reg[4]_0 ;
  wire [7:0]\int_ro_in_reg[56]_0 ;
  wire \int_ro_in_reg[5]_0 ;
  wire [6:0]\int_ro_in_reg[63]_0 ;
  wire \int_ro_in_reg[6]_0 ;
  wire \int_ro_in_reg[7]_0 ;
  wire \int_ro_in_reg[8]_0 ;
  wire \int_ro_out[31]_i_1_n_0 ;
  wire \int_ro_out[63]_i_1_n_0 ;
  wire [31:0]int_ro_out_reg0;
  wire [31:0]int_ro_out_reg01_out;
  wire interrupt;
  wire [0:0]length_r;
  wire m_axi_gmem_BVALID;
  wire \num_transactions[15]_i_2_n_0 ;
  wire \num_transactions[15]_i_3_n_0 ;
  wire \num_transactions[15]_i_4_n_0 ;
  wire \num_transactions[15]_i_5_n_0 ;
  wire \num_transactions[15]_i_6_n_0 ;
  wire \num_transactions[15]_i_7_n_0 ;
  wire \num_transactions[15]_i_8_n_0 ;
  wire \num_transactions[15]_i_9_n_0 ;
  wire \num_transactions[23]_i_2_n_0 ;
  wire \num_transactions[23]_i_3_n_0 ;
  wire \num_transactions[23]_i_4_n_0 ;
  wire \num_transactions[23]_i_5_n_0 ;
  wire \num_transactions[23]_i_6_n_0 ;
  wire \num_transactions[23]_i_7_n_0 ;
  wire \num_transactions[23]_i_8_n_0 ;
  wire \num_transactions[23]_i_9_n_0 ;
  wire \num_transactions[7]_i_2_n_0 ;
  wire \num_transactions[7]_i_3_n_0 ;
  wire \num_transactions[7]_i_4_n_0 ;
  wire \num_transactions[7]_i_5_n_0 ;
  wire \num_transactions[7]_i_6_n_0 ;
  wire \num_transactions[7]_i_7_n_0 ;
  wire \num_transactions[7]_i_8_n_0 ;
  wire \num_transactions[7]_i_9_n_0 ;
  wire \num_transactions_reg[15]_i_1_n_0 ;
  wire \num_transactions_reg[15]_i_1_n_1 ;
  wire \num_transactions_reg[15]_i_1_n_2 ;
  wire \num_transactions_reg[15]_i_1_n_3 ;
  wire \num_transactions_reg[15]_i_1_n_4 ;
  wire \num_transactions_reg[15]_i_1_n_5 ;
  wire \num_transactions_reg[15]_i_1_n_6 ;
  wire \num_transactions_reg[15]_i_1_n_7 ;
  wire \num_transactions_reg[23]_i_1_n_1 ;
  wire \num_transactions_reg[23]_i_1_n_2 ;
  wire \num_transactions_reg[23]_i_1_n_3 ;
  wire \num_transactions_reg[23]_i_1_n_4 ;
  wire \num_transactions_reg[23]_i_1_n_5 ;
  wire \num_transactions_reg[23]_i_1_n_6 ;
  wire \num_transactions_reg[23]_i_1_n_7 ;
  wire \num_transactions_reg[7]_i_1_n_0 ;
  wire \num_transactions_reg[7]_i_1_n_1 ;
  wire \num_transactions_reg[7]_i_1_n_2 ;
  wire \num_transactions_reg[7]_i_1_n_3 ;
  wire \num_transactions_reg[7]_i_1_n_4 ;
  wire \num_transactions_reg[7]_i_1_n_5 ;
  wire \num_transactions_reg[7]_i_1_n_6 ;
  wire \num_transactions_reg[7]_i_1_n_7 ;
  wire p_0_in;
  wire p_1_in;
  wire [31:0]rdata;
  wire \rdata[0]_i_10_n_0 ;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_7_n_0 ;
  wire \rdata[0]_i_8_n_0 ;
  wire \rdata[0]_i_9_n_0 ;
  wire \rdata[10]_i_2_n_0 ;
  wire \rdata[10]_i_3_n_0 ;
  wire \rdata[10]_i_4_n_0 ;
  wire \rdata[10]_i_5_n_0 ;
  wire \rdata[10]_i_6_n_0 ;
  wire \rdata[11]_i_2_n_0 ;
  wire \rdata[11]_i_3_n_0 ;
  wire \rdata[11]_i_4_n_0 ;
  wire \rdata[11]_i_5_n_0 ;
  wire \rdata[11]_i_6_n_0 ;
  wire \rdata[12]_i_2_n_0 ;
  wire \rdata[12]_i_3_n_0 ;
  wire \rdata[12]_i_4_n_0 ;
  wire \rdata[12]_i_5_n_0 ;
  wire \rdata[12]_i_6_n_0 ;
  wire \rdata[12]_i_7_n_0 ;
  wire \rdata[13]_i_2_n_0 ;
  wire \rdata[13]_i_3_n_0 ;
  wire \rdata[13]_i_4_n_0 ;
  wire \rdata[13]_i_5_n_0 ;
  wire \rdata[13]_i_6_n_0 ;
  wire \rdata[13]_i_7_n_0 ;
  wire \rdata[14]_i_2_n_0 ;
  wire \rdata[14]_i_3_n_0 ;
  wire \rdata[14]_i_4_n_0 ;
  wire \rdata[14]_i_5_n_0 ;
  wire \rdata[14]_i_6_n_0 ;
  wire \rdata[14]_i_7_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[15]_i_3_n_0 ;
  wire \rdata[15]_i_4_n_0 ;
  wire \rdata[15]_i_5_n_0 ;
  wire \rdata[15]_i_6_n_0 ;
  wire \rdata[15]_i_7_n_0 ;
  wire \rdata[16]_i_2_n_0 ;
  wire \rdata[16]_i_3_n_0 ;
  wire \rdata[16]_i_4_n_0 ;
  wire \rdata[16]_i_5_n_0 ;
  wire \rdata[16]_i_6_n_0 ;
  wire \rdata[16]_i_7_n_0 ;
  wire \rdata[17]_i_2_n_0 ;
  wire \rdata[17]_i_3_n_0 ;
  wire \rdata[17]_i_4_n_0 ;
  wire \rdata[17]_i_5_n_0 ;
  wire \rdata[17]_i_6_n_0 ;
  wire \rdata[17]_i_7_n_0 ;
  wire \rdata[18]_i_2_n_0 ;
  wire \rdata[18]_i_3_n_0 ;
  wire \rdata[18]_i_4_n_0 ;
  wire \rdata[18]_i_5_n_0 ;
  wire \rdata[18]_i_6_n_0 ;
  wire \rdata[18]_i_7_n_0 ;
  wire \rdata[19]_i_2_n_0 ;
  wire \rdata[19]_i_3_n_0 ;
  wire \rdata[19]_i_4_n_0 ;
  wire \rdata[19]_i_5_n_0 ;
  wire \rdata[19]_i_6_n_0 ;
  wire \rdata[1]_i_10_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_7_n_0 ;
  wire \rdata[1]_i_8_n_0 ;
  wire \rdata[1]_i_9_n_0 ;
  wire \rdata[20]_i_2_n_0 ;
  wire \rdata[20]_i_3_n_0 ;
  wire \rdata[20]_i_4_n_0 ;
  wire \rdata[20]_i_5_n_0 ;
  wire \rdata[20]_i_6_n_0 ;
  wire \rdata[20]_i_7_n_0 ;
  wire \rdata[21]_i_2_n_0 ;
  wire \rdata[21]_i_3_n_0 ;
  wire \rdata[21]_i_4_n_0 ;
  wire \rdata[21]_i_5_n_0 ;
  wire \rdata[21]_i_6_n_0 ;
  wire \rdata[21]_i_7_n_0 ;
  wire \rdata[22]_i_2_n_0 ;
  wire \rdata[22]_i_3_n_0 ;
  wire \rdata[22]_i_4_n_0 ;
  wire \rdata[22]_i_5_n_0 ;
  wire \rdata[22]_i_6_n_0 ;
  wire \rdata[22]_i_7_n_0 ;
  wire \rdata[23]_i_2_n_0 ;
  wire \rdata[23]_i_3_n_0 ;
  wire \rdata[23]_i_4_n_0 ;
  wire \rdata[23]_i_5_n_0 ;
  wire \rdata[23]_i_6_n_0 ;
  wire \rdata[23]_i_7_n_0 ;
  wire \rdata[24]_i_2_n_0 ;
  wire \rdata[24]_i_3_n_0 ;
  wire \rdata[24]_i_4_n_0 ;
  wire \rdata[24]_i_5_n_0 ;
  wire \rdata[24]_i_6_n_0 ;
  wire \rdata[24]_i_7_n_0 ;
  wire \rdata[25]_i_2_n_0 ;
  wire \rdata[25]_i_3_n_0 ;
  wire \rdata[25]_i_4_n_0 ;
  wire \rdata[25]_i_5_n_0 ;
  wire \rdata[25]_i_6_n_0 ;
  wire \rdata[25]_i_7_n_0 ;
  wire \rdata[26]_i_2_n_0 ;
  wire \rdata[26]_i_3_n_0 ;
  wire \rdata[26]_i_4_n_0 ;
  wire \rdata[26]_i_5_n_0 ;
  wire \rdata[26]_i_6_n_0 ;
  wire \rdata[26]_i_7_n_0 ;
  wire \rdata[27]_i_2_n_0 ;
  wire \rdata[27]_i_3_n_0 ;
  wire \rdata[27]_i_4_n_0 ;
  wire \rdata[27]_i_5_n_0 ;
  wire \rdata[27]_i_6_n_0 ;
  wire \rdata[27]_i_7_n_0 ;
  wire \rdata[28]_i_2_n_0 ;
  wire \rdata[28]_i_3_n_0 ;
  wire \rdata[28]_i_4_n_0 ;
  wire \rdata[28]_i_5_n_0 ;
  wire \rdata[28]_i_6_n_0 ;
  wire \rdata[28]_i_7_n_0 ;
  wire \rdata[29]_i_2_n_0 ;
  wire \rdata[29]_i_3_n_0 ;
  wire \rdata[29]_i_4_n_0 ;
  wire \rdata[29]_i_5_n_0 ;
  wire \rdata[29]_i_6_n_0 ;
  wire \rdata[29]_i_7_n_0 ;
  wire \rdata[2]_i_1_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[2]_i_3_n_0 ;
  wire \rdata[2]_i_4_n_0 ;
  wire \rdata[2]_i_5_n_0 ;
  wire \rdata[2]_i_6_n_0 ;
  wire \rdata[2]_i_7_n_0 ;
  wire \rdata[2]_i_8_n_0 ;
  wire \rdata[30]_i_2_n_0 ;
  wire \rdata[30]_i_3_n_0 ;
  wire \rdata[30]_i_4_n_0 ;
  wire \rdata[30]_i_5_n_0 ;
  wire \rdata[30]_i_6_n_0 ;
  wire \rdata[30]_i_7_n_0 ;
  wire \rdata[31]_i_10_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_4_n_0 ;
  wire \rdata[31]_i_5_n_0 ;
  wire \rdata[31]_i_6_n_0 ;
  wire \rdata[31]_i_7_n_0 ;
  wire \rdata[31]_i_8_n_0 ;
  wire \rdata[31]_i_9_n_0 ;
  wire \rdata[3]_i_1_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[3]_i_4_n_0 ;
  wire \rdata[3]_i_5_n_0 ;
  wire \rdata[3]_i_6_n_0 ;
  wire \rdata[3]_i_7_n_0 ;
  wire \rdata[3]_i_8_n_0 ;
  wire \rdata[4]_i_2_n_0 ;
  wire \rdata[4]_i_3_n_0 ;
  wire \rdata[4]_i_4_n_0 ;
  wire \rdata[4]_i_5_n_0 ;
  wire \rdata[4]_i_6_n_0 ;
  wire \rdata[4]_i_7_n_0 ;
  wire \rdata[5]_i_2_n_0 ;
  wire \rdata[5]_i_3_n_0 ;
  wire \rdata[5]_i_4_n_0 ;
  wire \rdata[5]_i_5_n_0 ;
  wire \rdata[5]_i_6_n_0 ;
  wire \rdata[5]_i_7_n_0 ;
  wire \rdata[6]_i_2_n_0 ;
  wire \rdata[6]_i_3_n_0 ;
  wire \rdata[6]_i_4_n_0 ;
  wire \rdata[6]_i_5_n_0 ;
  wire \rdata[6]_i_6_n_0 ;
  wire \rdata[6]_i_7_n_0 ;
  wire \rdata[7]_i_10_n_0 ;
  wire \rdata[7]_i_1_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[7]_i_3_n_0 ;
  wire \rdata[7]_i_4_n_0 ;
  wire \rdata[7]_i_5_n_0 ;
  wire \rdata[7]_i_6_n_0 ;
  wire \rdata[7]_i_7_n_0 ;
  wire \rdata[7]_i_8_n_0 ;
  wire \rdata[7]_i_9_n_0 ;
  wire \rdata[8]_i_2_n_0 ;
  wire \rdata[8]_i_3_n_0 ;
  wire \rdata[8]_i_4_n_0 ;
  wire \rdata[8]_i_5_n_0 ;
  wire \rdata[8]_i_6_n_0 ;
  wire \rdata[8]_i_7_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire \rdata[9]_i_3_n_0 ;
  wire \rdata[9]_i_4_n_0 ;
  wire \rdata[9]_i_5_n_0 ;
  wire \rdata[9]_i_6_n_0 ;
  wire \rdata[9]_i_7_n_0 ;
  wire \rdata_reg[0]_i_4_n_0 ;
  wire \rdata_reg[0]_i_5_n_0 ;
  wire \rdata_reg[0]_i_6_n_0 ;
  wire \rdata_reg[1]_i_4_n_0 ;
  wire \rdata_reg[1]_i_5_n_0 ;
  wire \rdata_reg[1]_i_6_n_0 ;
  wire rnext;
  wire [63:0]ro_in;
  wire [63:0]ro_out;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [6:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire sent_mul;
  wire sent_mul_reg;
  wire waddr;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire [7:6]\NLW_addr_reg[0][57]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_addr_reg[0][57]_i_1_O_UNCONNECTED ;
  wire [7:6]\NLW_addr_reg[1][57]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_addr_reg[1][57]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_num_transactions_reg[23]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[0]_i_1 
       (.I0(s_axi_control_BVALID),
        .I1(s_axi_control_BREADY),
        .I2(s_axi_control_AWVALID),
        .I3(\FSM_onehot_wstate_reg_n_0_[0] ),
        .O(\FSM_onehot_wstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg_n_0_[0] ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h88F8)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_BVALID),
        .I3(s_axi_control_BREADY),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:010,WRRESP:100,WRIDLE:001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_wstate_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[0]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg_n_0_[0] ),
        .S(areset));
  (* FSM_ENCODED_STATES = "WRDATA:010,WRRESP:100,WRIDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(areset));
  (* FSM_ENCODED_STATES = "WRDATA:010,WRRESP:100,WRIDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(areset));
  LUT3 #(
    .INIT(8'h3A)) 
    FSM_sequential_rstate_i_1
       (.I0(s_axi_control_ARVALID),
        .I1(s_axi_control_RREADY),
        .I2(FSM_sequential_rstate_reg_0),
        .O(rnext));
  (* FSM_ENCODED_STATES = "RDIDLE:0,RDDATA:1" *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_rstate_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(rnext),
        .Q(FSM_sequential_rstate_reg_0),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][0]_i_2 
       (.I0(ro_in[0]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [0]),
        .O(\int_ro_in_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][17]_i_2 
       (.I0(ro_in[24]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [24]),
        .O(\addr[0][17]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][17]_i_3 
       (.I0(ro_in[23]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [23]),
        .O(\addr[0][17]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][17]_i_4 
       (.I0(ro_in[22]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [22]),
        .O(\addr[0][17]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][17]_i_5 
       (.I0(ro_in[21]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [21]),
        .O(\addr[0][17]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][17]_i_6 
       (.I0(ro_in[20]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [20]),
        .O(\addr[0][17]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][17]_i_7 
       (.I0(ro_in[19]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [19]),
        .O(\addr[0][17]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][17]_i_8 
       (.I0(ro_in[18]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [18]),
        .O(\addr[0][17]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][17]_i_9 
       (.I0(ro_in[17]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [17]),
        .O(\addr[0][17]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][1]_i_1 
       (.I0(ro_in[1]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [1]),
        .O(\int_ro_in_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][25]_i_2 
       (.I0(ro_in[32]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [32]),
        .O(\addr[0][25]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][25]_i_3 
       (.I0(ro_in[31]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [31]),
        .O(\addr[0][25]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][25]_i_4 
       (.I0(ro_in[30]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [30]),
        .O(\addr[0][25]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][25]_i_5 
       (.I0(ro_in[29]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [29]),
        .O(\addr[0][25]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][25]_i_6 
       (.I0(ro_in[28]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [28]),
        .O(\addr[0][25]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][25]_i_7 
       (.I0(ro_in[27]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [27]),
        .O(\addr[0][25]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][25]_i_8 
       (.I0(ro_in[26]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [26]),
        .O(\addr[0][25]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][25]_i_9 
       (.I0(ro_in[25]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [25]),
        .O(\addr[0][25]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][2]_i_1 
       (.I0(ro_in[2]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [2]),
        .O(\int_ro_in_reg[2]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][33]_i_2 
       (.I0(ro_in[40]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [40]),
        .O(\addr[0][33]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][33]_i_3 
       (.I0(ro_in[39]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [39]),
        .O(\addr[0][33]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][33]_i_4 
       (.I0(ro_in[38]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [38]),
        .O(\addr[0][33]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][33]_i_5 
       (.I0(ro_in[37]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [37]),
        .O(\addr[0][33]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][33]_i_6 
       (.I0(ro_in[36]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [36]),
        .O(\addr[0][33]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][33]_i_7 
       (.I0(ro_in[35]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [35]),
        .O(\addr[0][33]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][33]_i_8 
       (.I0(ro_in[34]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [34]),
        .O(\addr[0][33]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][33]_i_9 
       (.I0(ro_in[33]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [33]),
        .O(\addr[0][33]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][3]_i_1 
       (.I0(ro_in[3]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [3]),
        .O(\int_ro_in_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][41]_i_2 
       (.I0(ro_in[48]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [48]),
        .O(\addr[0][41]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][41]_i_3 
       (.I0(ro_in[47]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [47]),
        .O(\addr[0][41]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][41]_i_4 
       (.I0(ro_in[46]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [46]),
        .O(\addr[0][41]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][41]_i_5 
       (.I0(ro_in[45]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [45]),
        .O(\addr[0][41]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][41]_i_6 
       (.I0(ro_in[44]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [44]),
        .O(\addr[0][41]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][41]_i_7 
       (.I0(ro_in[43]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [43]),
        .O(\addr[0][41]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][41]_i_8 
       (.I0(ro_in[42]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [42]),
        .O(\addr[0][41]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][41]_i_9 
       (.I0(ro_in[41]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [41]),
        .O(\addr[0][41]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][49]_i_2 
       (.I0(ro_in[56]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [56]),
        .O(\addr[0][49]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][49]_i_3 
       (.I0(ro_in[55]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [55]),
        .O(\addr[0][49]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][49]_i_4 
       (.I0(ro_in[54]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [54]),
        .O(\addr[0][49]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][49]_i_5 
       (.I0(ro_in[53]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [53]),
        .O(\addr[0][49]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][49]_i_6 
       (.I0(ro_in[52]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [52]),
        .O(\addr[0][49]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][49]_i_7 
       (.I0(ro_in[51]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [51]),
        .O(\addr[0][49]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][49]_i_8 
       (.I0(ro_in[50]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [50]),
        .O(\addr[0][49]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][49]_i_9 
       (.I0(ro_in[49]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [49]),
        .O(\addr[0][49]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][4]_i_1 
       (.I0(ro_in[4]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [4]),
        .O(\int_ro_in_reg[4]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][57]_i_2 
       (.I0(ro_in[63]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [63]),
        .O(\addr[0][57]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][57]_i_3 
       (.I0(ro_in[62]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [62]),
        .O(\addr[0][57]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][57]_i_4 
       (.I0(ro_in[61]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [61]),
        .O(\addr[0][57]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][57]_i_5 
       (.I0(ro_in[60]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [60]),
        .O(\addr[0][57]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][57]_i_6 
       (.I0(ro_in[59]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [59]),
        .O(\addr[0][57]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][57]_i_7 
       (.I0(ro_in[58]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [58]),
        .O(\addr[0][57]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][57]_i_8 
       (.I0(ro_in[57]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [57]),
        .O(\addr[0][57]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][5]_i_1 
       (.I0(ro_in[5]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [5]),
        .O(\int_ro_in_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][6]_i_1 
       (.I0(ro_in[6]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [6]),
        .O(\int_ro_in_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][7]_i_1 
       (.I0(ro_in[7]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [7]),
        .O(\int_ro_in_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][8]_i_1 
       (.I0(ro_in[8]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [8]),
        .O(\int_ro_in_reg[8]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][9]_i_10 
       (.I0(ro_in[9]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [9]),
        .O(\addr[0][9]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \addr[0][9]_i_2 
       (.I0(ap_start_r),
        .I1(ap_start),
        .O(\addr[0][9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][9]_i_3 
       (.I0(ro_in[16]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [16]),
        .O(\addr[0][9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][9]_i_4 
       (.I0(ro_in[15]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [15]),
        .O(\addr[0][9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][9]_i_5 
       (.I0(ro_in[14]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [14]),
        .O(\addr[0][9]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][9]_i_6 
       (.I0(ro_in[13]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [13]),
        .O(\addr[0][9]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][9]_i_7 
       (.I0(ro_in[12]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [12]),
        .O(\addr[0][9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0][9]_i_8 
       (.I0(ro_in[11]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[0]_3 [11]),
        .O(\addr[0][9]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \addr[0][9]_i_9 
       (.I0(\addr_reg[0]_3 [10]),
        .I1(ro_in[10]),
        .I2(ap_start_pulse),
        .O(\addr[0][9]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][0]_i_2 
       (.I0(a[0]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [0]),
        .O(\int_a_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][17]_i_2 
       (.I0(a[24]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [24]),
        .O(\addr[1][17]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][17]_i_3 
       (.I0(a[23]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [23]),
        .O(\addr[1][17]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][17]_i_4 
       (.I0(a[22]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [22]),
        .O(\addr[1][17]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][17]_i_5 
       (.I0(a[21]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [21]),
        .O(\addr[1][17]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][17]_i_6 
       (.I0(a[20]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [20]),
        .O(\addr[1][17]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][17]_i_7 
       (.I0(a[19]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [19]),
        .O(\addr[1][17]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][17]_i_8 
       (.I0(a[18]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [18]),
        .O(\addr[1][17]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][17]_i_9 
       (.I0(a[17]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [17]),
        .O(\addr[1][17]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][1]_i_1 
       (.I0(a[1]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [1]),
        .O(\int_a_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][25]_i_2 
       (.I0(a[32]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [32]),
        .O(\addr[1][25]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][25]_i_3 
       (.I0(a[31]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [31]),
        .O(\addr[1][25]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][25]_i_4 
       (.I0(a[30]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [30]),
        .O(\addr[1][25]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][25]_i_5 
       (.I0(a[29]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [29]),
        .O(\addr[1][25]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][25]_i_6 
       (.I0(a[28]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [28]),
        .O(\addr[1][25]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][25]_i_7 
       (.I0(a[27]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [27]),
        .O(\addr[1][25]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][25]_i_8 
       (.I0(a[26]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [26]),
        .O(\addr[1][25]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][25]_i_9 
       (.I0(a[25]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [25]),
        .O(\addr[1][25]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][2]_i_1 
       (.I0(a[2]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [2]),
        .O(\int_a_reg[2]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][33]_i_2 
       (.I0(a[40]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [40]),
        .O(\addr[1][33]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][33]_i_3 
       (.I0(a[39]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [39]),
        .O(\addr[1][33]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][33]_i_4 
       (.I0(a[38]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [38]),
        .O(\addr[1][33]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][33]_i_5 
       (.I0(a[37]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [37]),
        .O(\addr[1][33]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][33]_i_6 
       (.I0(a[36]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [36]),
        .O(\addr[1][33]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][33]_i_7 
       (.I0(a[35]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [35]),
        .O(\addr[1][33]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][33]_i_8 
       (.I0(a[34]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [34]),
        .O(\addr[1][33]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][33]_i_9 
       (.I0(a[33]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [33]),
        .O(\addr[1][33]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][3]_i_1 
       (.I0(a[3]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [3]),
        .O(\int_a_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][41]_i_2 
       (.I0(a[48]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [48]),
        .O(\addr[1][41]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][41]_i_3 
       (.I0(a[47]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [47]),
        .O(\addr[1][41]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][41]_i_4 
       (.I0(a[46]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [46]),
        .O(\addr[1][41]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][41]_i_5 
       (.I0(a[45]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [45]),
        .O(\addr[1][41]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][41]_i_6 
       (.I0(a[44]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [44]),
        .O(\addr[1][41]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][41]_i_7 
       (.I0(a[43]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [43]),
        .O(\addr[1][41]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][41]_i_8 
       (.I0(a[42]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [42]),
        .O(\addr[1][41]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][41]_i_9 
       (.I0(a[41]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [41]),
        .O(\addr[1][41]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][49]_i_2 
       (.I0(a[56]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [56]),
        .O(\addr[1][49]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][49]_i_3 
       (.I0(a[55]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [55]),
        .O(\addr[1][49]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][49]_i_4 
       (.I0(a[54]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [54]),
        .O(\addr[1][49]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][49]_i_5 
       (.I0(a[53]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [53]),
        .O(\addr[1][49]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][49]_i_6 
       (.I0(a[52]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [52]),
        .O(\addr[1][49]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][49]_i_7 
       (.I0(a[51]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [51]),
        .O(\addr[1][49]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][49]_i_8 
       (.I0(a[50]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [50]),
        .O(\addr[1][49]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][49]_i_9 
       (.I0(a[49]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [49]),
        .O(\addr[1][49]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][4]_i_1 
       (.I0(a[4]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [4]),
        .O(\int_a_reg[4]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][57]_i_2 
       (.I0(a[63]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [63]),
        .O(\addr[1][57]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][57]_i_3 
       (.I0(a[62]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [62]),
        .O(\addr[1][57]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][57]_i_4 
       (.I0(a[61]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [61]),
        .O(\addr[1][57]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][57]_i_5 
       (.I0(a[60]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [60]),
        .O(\addr[1][57]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][57]_i_6 
       (.I0(a[59]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [59]),
        .O(\addr[1][57]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][57]_i_7 
       (.I0(a[58]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [58]),
        .O(\addr[1][57]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][57]_i_8 
       (.I0(a[57]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [57]),
        .O(\addr[1][57]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][5]_i_1 
       (.I0(a[5]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [5]),
        .O(\int_a_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][6]_i_1 
       (.I0(a[6]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [6]),
        .O(\int_a_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][7]_i_1 
       (.I0(a[7]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [7]),
        .O(\int_a_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][8]_i_1 
       (.I0(a[8]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [8]),
        .O(\int_a_reg[8]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][9]_i_10 
       (.I0(a[9]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [9]),
        .O(\addr[1][9]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \addr[1][9]_i_2 
       (.I0(ap_start_r),
        .I1(ap_start),
        .O(\addr[1][9]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][9]_i_3 
       (.I0(a[16]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [16]),
        .O(\addr[1][9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][9]_i_4 
       (.I0(a[15]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [15]),
        .O(\addr[1][9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][9]_i_5 
       (.I0(a[14]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [14]),
        .O(\addr[1][9]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][9]_i_6 
       (.I0(a[13]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [13]),
        .O(\addr[1][9]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][9]_i_7 
       (.I0(a[12]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [12]),
        .O(\addr[1][9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1][9]_i_8 
       (.I0(a[11]),
        .I1(ap_start_pulse),
        .I2(\addr_reg[1]_4 [11]),
        .O(\addr[1][9]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \addr[1][9]_i_9 
       (.I0(\addr_reg[1]_4 [10]),
        .I1(a[10]),
        .I2(ap_start_pulse),
        .O(\addr[1][9]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][17]_i_1 
       (.CI(\addr_reg[0][9]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[0][17]_i_1_n_0 ,\addr_reg[0][17]_i_1_n_1 ,\addr_reg[0][17]_i_1_n_2 ,\addr_reg[0][17]_i_1_n_3 ,\addr_reg[0][17]_i_1_n_4 ,\addr_reg[0][17]_i_1_n_5 ,\addr_reg[0][17]_i_1_n_6 ,\addr_reg[0][17]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_ro_in_reg[24]_0 ),
        .S({\addr[0][17]_i_2_n_0 ,\addr[0][17]_i_3_n_0 ,\addr[0][17]_i_4_n_0 ,\addr[0][17]_i_5_n_0 ,\addr[0][17]_i_6_n_0 ,\addr[0][17]_i_7_n_0 ,\addr[0][17]_i_8_n_0 ,\addr[0][17]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][25]_i_1 
       (.CI(\addr_reg[0][17]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[0][25]_i_1_n_0 ,\addr_reg[0][25]_i_1_n_1 ,\addr_reg[0][25]_i_1_n_2 ,\addr_reg[0][25]_i_1_n_3 ,\addr_reg[0][25]_i_1_n_4 ,\addr_reg[0][25]_i_1_n_5 ,\addr_reg[0][25]_i_1_n_6 ,\addr_reg[0][25]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_ro_in_reg[32]_0 ),
        .S({\addr[0][25]_i_2_n_0 ,\addr[0][25]_i_3_n_0 ,\addr[0][25]_i_4_n_0 ,\addr[0][25]_i_5_n_0 ,\addr[0][25]_i_6_n_0 ,\addr[0][25]_i_7_n_0 ,\addr[0][25]_i_8_n_0 ,\addr[0][25]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][33]_i_1 
       (.CI(\addr_reg[0][25]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[0][33]_i_1_n_0 ,\addr_reg[0][33]_i_1_n_1 ,\addr_reg[0][33]_i_1_n_2 ,\addr_reg[0][33]_i_1_n_3 ,\addr_reg[0][33]_i_1_n_4 ,\addr_reg[0][33]_i_1_n_5 ,\addr_reg[0][33]_i_1_n_6 ,\addr_reg[0][33]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_ro_in_reg[40]_0 ),
        .S({\addr[0][33]_i_2_n_0 ,\addr[0][33]_i_3_n_0 ,\addr[0][33]_i_4_n_0 ,\addr[0][33]_i_5_n_0 ,\addr[0][33]_i_6_n_0 ,\addr[0][33]_i_7_n_0 ,\addr[0][33]_i_8_n_0 ,\addr[0][33]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][41]_i_1 
       (.CI(\addr_reg[0][33]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[0][41]_i_1_n_0 ,\addr_reg[0][41]_i_1_n_1 ,\addr_reg[0][41]_i_1_n_2 ,\addr_reg[0][41]_i_1_n_3 ,\addr_reg[0][41]_i_1_n_4 ,\addr_reg[0][41]_i_1_n_5 ,\addr_reg[0][41]_i_1_n_6 ,\addr_reg[0][41]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_ro_in_reg[48]_0 ),
        .S({\addr[0][41]_i_2_n_0 ,\addr[0][41]_i_3_n_0 ,\addr[0][41]_i_4_n_0 ,\addr[0][41]_i_5_n_0 ,\addr[0][41]_i_6_n_0 ,\addr[0][41]_i_7_n_0 ,\addr[0][41]_i_8_n_0 ,\addr[0][41]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][49]_i_1 
       (.CI(\addr_reg[0][41]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[0][49]_i_1_n_0 ,\addr_reg[0][49]_i_1_n_1 ,\addr_reg[0][49]_i_1_n_2 ,\addr_reg[0][49]_i_1_n_3 ,\addr_reg[0][49]_i_1_n_4 ,\addr_reg[0][49]_i_1_n_5 ,\addr_reg[0][49]_i_1_n_6 ,\addr_reg[0][49]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_ro_in_reg[56]_0 ),
        .S({\addr[0][49]_i_2_n_0 ,\addr[0][49]_i_3_n_0 ,\addr[0][49]_i_4_n_0 ,\addr[0][49]_i_5_n_0 ,\addr[0][49]_i_6_n_0 ,\addr[0][49]_i_7_n_0 ,\addr[0][49]_i_8_n_0 ,\addr[0][49]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][57]_i_1 
       (.CI(\addr_reg[0][49]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_addr_reg[0][57]_i_1_CO_UNCONNECTED [7:6],\addr_reg[0][57]_i_1_n_2 ,\addr_reg[0][57]_i_1_n_3 ,\addr_reg[0][57]_i_1_n_4 ,\addr_reg[0][57]_i_1_n_5 ,\addr_reg[0][57]_i_1_n_6 ,\addr_reg[0][57]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_reg[0][57]_i_1_O_UNCONNECTED [7],\int_ro_in_reg[63]_0 }),
        .S({1'b0,\addr[0][57]_i_2_n_0 ,\addr[0][57]_i_3_n_0 ,\addr[0][57]_i_4_n_0 ,\addr[0][57]_i_5_n_0 ,\addr[0][57]_i_6_n_0 ,\addr[0][57]_i_7_n_0 ,\addr[0][57]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[0][9]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\addr_reg[0][9]_i_1_n_0 ,\addr_reg[0][9]_i_1_n_1 ,\addr_reg[0][9]_i_1_n_2 ,\addr_reg[0][9]_i_1_n_3 ,\addr_reg[0][9]_i_1_n_4 ,\addr_reg[0][9]_i_1_n_5 ,\addr_reg[0][9]_i_1_n_6 ,\addr_reg[0][9]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\addr[0][9]_i_2_n_0 ,1'b0}),
        .O(O),
        .S({\addr[0][9]_i_3_n_0 ,\addr[0][9]_i_4_n_0 ,\addr[0][9]_i_5_n_0 ,\addr[0][9]_i_6_n_0 ,\addr[0][9]_i_7_n_0 ,\addr[0][9]_i_8_n_0 ,\addr[0][9]_i_9_n_0 ,\addr[0][9]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[1][17]_i_1 
       (.CI(\addr_reg[1][9]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[1][17]_i_1_n_0 ,\addr_reg[1][17]_i_1_n_1 ,\addr_reg[1][17]_i_1_n_2 ,\addr_reg[1][17]_i_1_n_3 ,\addr_reg[1][17]_i_1_n_4 ,\addr_reg[1][17]_i_1_n_5 ,\addr_reg[1][17]_i_1_n_6 ,\addr_reg[1][17]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_a_reg[24]_0 ),
        .S({\addr[1][17]_i_2_n_0 ,\addr[1][17]_i_3_n_0 ,\addr[1][17]_i_4_n_0 ,\addr[1][17]_i_5_n_0 ,\addr[1][17]_i_6_n_0 ,\addr[1][17]_i_7_n_0 ,\addr[1][17]_i_8_n_0 ,\addr[1][17]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[1][25]_i_1 
       (.CI(\addr_reg[1][17]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[1][25]_i_1_n_0 ,\addr_reg[1][25]_i_1_n_1 ,\addr_reg[1][25]_i_1_n_2 ,\addr_reg[1][25]_i_1_n_3 ,\addr_reg[1][25]_i_1_n_4 ,\addr_reg[1][25]_i_1_n_5 ,\addr_reg[1][25]_i_1_n_6 ,\addr_reg[1][25]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_a_reg[32]_0 ),
        .S({\addr[1][25]_i_2_n_0 ,\addr[1][25]_i_3_n_0 ,\addr[1][25]_i_4_n_0 ,\addr[1][25]_i_5_n_0 ,\addr[1][25]_i_6_n_0 ,\addr[1][25]_i_7_n_0 ,\addr[1][25]_i_8_n_0 ,\addr[1][25]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[1][33]_i_1 
       (.CI(\addr_reg[1][25]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[1][33]_i_1_n_0 ,\addr_reg[1][33]_i_1_n_1 ,\addr_reg[1][33]_i_1_n_2 ,\addr_reg[1][33]_i_1_n_3 ,\addr_reg[1][33]_i_1_n_4 ,\addr_reg[1][33]_i_1_n_5 ,\addr_reg[1][33]_i_1_n_6 ,\addr_reg[1][33]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_a_reg[40]_0 ),
        .S({\addr[1][33]_i_2_n_0 ,\addr[1][33]_i_3_n_0 ,\addr[1][33]_i_4_n_0 ,\addr[1][33]_i_5_n_0 ,\addr[1][33]_i_6_n_0 ,\addr[1][33]_i_7_n_0 ,\addr[1][33]_i_8_n_0 ,\addr[1][33]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[1][41]_i_1 
       (.CI(\addr_reg[1][33]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[1][41]_i_1_n_0 ,\addr_reg[1][41]_i_1_n_1 ,\addr_reg[1][41]_i_1_n_2 ,\addr_reg[1][41]_i_1_n_3 ,\addr_reg[1][41]_i_1_n_4 ,\addr_reg[1][41]_i_1_n_5 ,\addr_reg[1][41]_i_1_n_6 ,\addr_reg[1][41]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_a_reg[48]_0 ),
        .S({\addr[1][41]_i_2_n_0 ,\addr[1][41]_i_3_n_0 ,\addr[1][41]_i_4_n_0 ,\addr[1][41]_i_5_n_0 ,\addr[1][41]_i_6_n_0 ,\addr[1][41]_i_7_n_0 ,\addr[1][41]_i_8_n_0 ,\addr[1][41]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[1][49]_i_1 
       (.CI(\addr_reg[1][41]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[1][49]_i_1_n_0 ,\addr_reg[1][49]_i_1_n_1 ,\addr_reg[1][49]_i_1_n_2 ,\addr_reg[1][49]_i_1_n_3 ,\addr_reg[1][49]_i_1_n_4 ,\addr_reg[1][49]_i_1_n_5 ,\addr_reg[1][49]_i_1_n_6 ,\addr_reg[1][49]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_a_reg[56]_0 ),
        .S({\addr[1][49]_i_2_n_0 ,\addr[1][49]_i_3_n_0 ,\addr[1][49]_i_4_n_0 ,\addr[1][49]_i_5_n_0 ,\addr[1][49]_i_6_n_0 ,\addr[1][49]_i_7_n_0 ,\addr[1][49]_i_8_n_0 ,\addr[1][49]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[1][57]_i_1 
       (.CI(\addr_reg[1][49]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_addr_reg[1][57]_i_1_CO_UNCONNECTED [7:6],\addr_reg[1][57]_i_1_n_2 ,\addr_reg[1][57]_i_1_n_3 ,\addr_reg[1][57]_i_1_n_4 ,\addr_reg[1][57]_i_1_n_5 ,\addr_reg[1][57]_i_1_n_6 ,\addr_reg[1][57]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_reg[1][57]_i_1_O_UNCONNECTED [7],\int_a_reg[63]_0 }),
        .S({1'b0,\addr[1][57]_i_2_n_0 ,\addr[1][57]_i_3_n_0 ,\addr[1][57]_i_4_n_0 ,\addr[1][57]_i_5_n_0 ,\addr[1][57]_i_6_n_0 ,\addr[1][57]_i_7_n_0 ,\addr[1][57]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[1][9]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\addr_reg[1][9]_i_1_n_0 ,\addr_reg[1][9]_i_1_n_1 ,\addr_reg[1][9]_i_1_n_2 ,\addr_reg[1][9]_i_1_n_3 ,\addr_reg[1][9]_i_1_n_4 ,\addr_reg[1][9]_i_1_n_5 ,\addr_reg[1][9]_i_1_n_6 ,\addr_reg[1][9]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\addr[1][9]_i_2_n_0 ,1'b0}),
        .O(ap_start_r_reg_0),
        .S({\addr[1][9]_i_3_n_0 ,\addr[1][9]_i_4_n_0 ,\addr[1][9]_i_5_n_0 ,\addr[1][9]_i_6_n_0 ,\addr[1][9]_i_7_n_0 ,\addr[1][9]_i_8_n_0 ,\addr[1][9]_i_9_n_0 ,\addr[1][9]_i_10_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    ap_done_i_1
       (.I0(ap_start_pulse),
        .I1(sent_mul),
        .I2(m_axi_gmem_BVALID),
        .I3(ap_done_reg),
        .O(sent_mul_reg));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    ap_idle_i_1
       (.I0(ap_start_pulse),
        .I1(ap_idle),
        .I2(areset),
        .I3(ap_done),
        .O(ap_idle_reg));
  (* SOFT_HLUTNM = "soft_lutpair354" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \final_burst_len[0]_i_1 
       (.I0(length_r),
        .O(\int_length_r_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair354" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \final_burst_len[1]_i_1__0 
       (.I0(Q[0]),
        .I1(length_r),
        .O(\int_length_r_reg[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \final_burst_len[2]_i_1 
       (.I0(Q[0]),
        .I1(length_r),
        .I2(Q[1]),
        .O(\int_length_r_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \final_burst_len[3]_i_1 
       (.I0(Q[1]),
        .I1(length_r),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\int_length_r_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \final_burst_len[4]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(length_r),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\int_length_r_reg[7]_0 [4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \final_burst_len[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(length_r),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\int_length_r_reg[7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \final_burst_len[6]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(\final_burst_len[7]_i_2_n_0 ),
        .O(\int_length_r_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \final_burst_len[7]_i_1 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\final_burst_len[7]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\int_length_r_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \final_burst_len[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(length_r),
        .I3(Q[1]),
        .O(\final_burst_len[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[0]),
        .O(int_a_reg012_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[10]),
        .O(int_a_reg012_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[11]),
        .O(int_a_reg012_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[12]),
        .O(int_a_reg012_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[13]),
        .O(int_a_reg012_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[14]),
        .O(int_a_reg012_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[15]),
        .O(int_a_reg012_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[16]),
        .O(int_a_reg012_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[17]),
        .O(int_a_reg012_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[18]),
        .O(int_a_reg012_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[19]),
        .O(int_a_reg012_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[1]),
        .O(int_a_reg012_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[20]),
        .O(int_a_reg012_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[21]),
        .O(int_a_reg012_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[22]),
        .O(int_a_reg012_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[23]),
        .O(int_a_reg012_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[24]),
        .O(int_a_reg012_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[25]),
        .O(int_a_reg012_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[26]),
        .O(int_a_reg012_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[27]),
        .O(int_a_reg012_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[28]),
        .O(int_a_reg012_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[29]),
        .O(int_a_reg012_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[2]),
        .O(int_a_reg012_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[30]),
        .O(int_a_reg012_out[30]));
  LUT4 #(
    .INIT(16'h0010)) 
    \int_a[31]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .O(\int_a[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[31]),
        .O(int_a_reg012_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[32]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[32]),
        .O(int_a_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[33]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[33]),
        .O(int_a_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[34]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[34]),
        .O(int_a_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[35]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[35]),
        .O(int_a_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[36]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[36]),
        .O(int_a_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[37]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[37]),
        .O(int_a_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[38]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[38]),
        .O(int_a_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[39]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[39]),
        .O(int_a_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[3]),
        .O(int_a_reg012_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[40]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[40]),
        .O(int_a_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[41]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[41]),
        .O(int_a_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[42]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[42]),
        .O(int_a_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[43]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[43]),
        .O(int_a_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[44]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[44]),
        .O(int_a_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[45]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[45]),
        .O(int_a_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[46]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[46]),
        .O(int_a_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[47]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[47]),
        .O(int_a_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[48]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[48]),
        .O(int_a_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[49]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[49]),
        .O(int_a_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[4]),
        .O(int_a_reg012_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[50]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[50]),
        .O(int_a_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[51]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[51]),
        .O(int_a_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[52]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[52]),
        .O(int_a_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[53]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[53]),
        .O(int_a_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[54]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[54]),
        .O(int_a_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[55]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(a[55]),
        .O(int_a_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[56]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[56]),
        .O(int_a_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[57]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[57]),
        .O(int_a_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[58]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[58]),
        .O(int_a_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[59]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[59]),
        .O(int_a_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[5]),
        .O(int_a_reg012_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[60]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[60]),
        .O(int_a_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[61]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[61]),
        .O(int_a_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[62]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[62]),
        .O(int_a_reg0[30]));
  LUT4 #(
    .INIT(16'h0040)) 
    \int_a[63]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .O(\int_a[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[63]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(a[63]),
        .O(int_a_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[6]),
        .O(int_a_reg012_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(a[7]),
        .O(int_a_reg012_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[8]),
        .O(int_a_reg012_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_a[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(a[9]),
        .O(int_a_reg012_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[0] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[0]),
        .Q(a[0]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[10] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[10]),
        .Q(a[10]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[11] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[11]),
        .Q(a[11]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[12] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[12]),
        .Q(a[12]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[13] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[13]),
        .Q(a[13]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[14] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[14]),
        .Q(a[14]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[15] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[15]),
        .Q(a[15]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[16] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[16]),
        .Q(a[16]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[17] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[17]),
        .Q(a[17]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[18] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[18]),
        .Q(a[18]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[19] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[19]),
        .Q(a[19]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[1] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[1]),
        .Q(a[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[20] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[20]),
        .Q(a[20]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[21] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[21]),
        .Q(a[21]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[22] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[22]),
        .Q(a[22]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[23] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[23]),
        .Q(a[23]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[24] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[24]),
        .Q(a[24]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[25] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[25]),
        .Q(a[25]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[26] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[26]),
        .Q(a[26]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[27] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[27]),
        .Q(a[27]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[28] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[28]),
        .Q(a[28]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[29] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[29]),
        .Q(a[29]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[2] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[2]),
        .Q(a[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[30] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[30]),
        .Q(a[30]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[31] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[31]),
        .Q(a[31]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[32] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[0]),
        .Q(a[32]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[33] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[1]),
        .Q(a[33]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[34] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[2]),
        .Q(a[34]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[35] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[3]),
        .Q(a[35]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[36] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[4]),
        .Q(a[36]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[37] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[5]),
        .Q(a[37]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[38] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[6]),
        .Q(a[38]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[39] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[7]),
        .Q(a[39]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[3] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[3]),
        .Q(a[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[40] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[8]),
        .Q(a[40]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[41] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[9]),
        .Q(a[41]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[42] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[10]),
        .Q(a[42]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[43] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[11]),
        .Q(a[43]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[44] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[12]),
        .Q(a[44]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[45] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[13]),
        .Q(a[45]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[46] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[14]),
        .Q(a[46]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[47] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[15]),
        .Q(a[47]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[48] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[16]),
        .Q(a[48]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[49] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[17]),
        .Q(a[49]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[4] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[4]),
        .Q(a[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[50] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[18]),
        .Q(a[50]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[51] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[19]),
        .Q(a[51]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[52] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[20]),
        .Q(a[52]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[53] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[21]),
        .Q(a[53]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[54] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[22]),
        .Q(a[54]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[55] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[23]),
        .Q(a[55]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[56] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[24]),
        .Q(a[56]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[57] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[25]),
        .Q(a[57]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[58] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[26]),
        .Q(a[58]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[59] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[27]),
        .Q(a[59]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[5] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[5]),
        .Q(a[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[60] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[28]),
        .Q(a[60]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[61] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[29]),
        .Q(a[61]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[62] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[30]),
        .Q(a[62]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[63] 
       (.C(ap_clk),
        .CE(\int_a[63]_i_1_n_0 ),
        .D(int_a_reg0[31]),
        .Q(a[63]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[6] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[6]),
        .Q(a[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[7] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[7]),
        .Q(a[7]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[8] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[8]),
        .Q(a[8]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_a_reg[9] 
       (.C(ap_clk),
        .CE(\int_a[31]_i_1_n_0 ),
        .D(int_a_reg012_out[9]),
        .Q(a[9]),
        .R(areset));
  LUT6 #(
    .INIT(64'hFFFBFFFFAAAAAAAA)) 
    int_ap_done_i_1
       (.I0(ap_done),
        .I1(int_ap_done_i_2_n_0),
        .I2(int_ap_done_i_3_n_0),
        .I3(\rdata[24]_i_4_n_0 ),
        .I4(ar_hs),
        .I5(int_ap_done__0),
        .O(int_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h1)) 
    int_ap_done_i_2
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .O(int_ap_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'hE)) 
    int_ap_done_i_3
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[3]),
        .O(int_ap_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_0),
        .Q(int_ap_done__0),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(int_auto_restart_reg_n_0),
        .I1(ap_done),
        .I2(int_ap_start3_out),
        .I3(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    int_ap_start_i_2
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(\waddr_reg_n_0_[4] ),
        .O(int_ap_start3_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(areset));
  LUT3 #(
    .INIT(8'hB8)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(int_ap_start1),
        .I2(int_auto_restart_reg_n_0),
        .O(int_auto_restart_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    int_auto_restart_i_2
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(\waddr_reg_n_0_[2] ),
        .O(int_ap_start1));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(int_auto_restart_reg_n_0),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[0]),
        .O(int_b_reg09_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[10]),
        .O(int_b_reg09_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[11]),
        .O(int_b_reg09_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[12]),
        .O(int_b_reg09_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[13]),
        .O(int_b_reg09_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[14]),
        .O(int_b_reg09_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[15]),
        .O(int_b_reg09_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[16]),
        .O(int_b_reg09_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[17]),
        .O(int_b_reg09_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[18]),
        .O(int_b_reg09_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[19]),
        .O(int_b_reg09_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[1]),
        .O(int_b_reg09_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[20]),
        .O(int_b_reg09_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[21]),
        .O(int_b_reg09_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[22]),
        .O(int_b_reg09_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[23]),
        .O(int_b_reg09_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[24]),
        .O(int_b_reg09_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[25]),
        .O(int_b_reg09_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[26]),
        .O(int_b_reg09_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[27]),
        .O(int_b_reg09_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[28]),
        .O(int_b_reg09_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[29]),
        .O(int_b_reg09_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[2]),
        .O(int_b_reg09_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[30]),
        .O(int_b_reg09_out[30]));
  LUT4 #(
    .INIT(16'h0080)) 
    \int_b[31]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\int_ier[1]_i_2_n_0 ),
        .O(\int_b[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[31]),
        .O(int_b_reg09_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[32]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[32]),
        .O(int_b_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[33]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[33]),
        .O(int_b_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[34]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[34]),
        .O(int_b_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[35]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[35]),
        .O(int_b_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[36]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[36]),
        .O(int_b_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[37]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[37]),
        .O(int_b_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[38]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[38]),
        .O(int_b_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[39]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[39]),
        .O(int_b_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[3]),
        .O(int_b_reg09_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[40]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[40]),
        .O(int_b_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[41]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[41]),
        .O(int_b_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[42]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[42]),
        .O(int_b_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[43]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[43]),
        .O(int_b_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[44]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[44]),
        .O(int_b_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[45]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[45]),
        .O(int_b_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[46]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[46]),
        .O(int_b_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[47]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[47]),
        .O(int_b_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[48]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[48]),
        .O(int_b_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[49]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[49]),
        .O(int_b_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[4]),
        .O(int_b_reg09_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[50]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[50]),
        .O(int_b_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[51]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[51]),
        .O(int_b_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[52]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[52]),
        .O(int_b_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[53]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[53]),
        .O(int_b_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[54]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[54]),
        .O(int_b_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[55]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(b[55]),
        .O(int_b_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[56]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[56]),
        .O(int_b_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[57]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[57]),
        .O(int_b_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[58]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[58]),
        .O(int_b_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[59]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[59]),
        .O(int_b_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[5]),
        .O(int_b_reg09_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[60]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[60]),
        .O(int_b_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[61]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[61]),
        .O(int_b_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[62]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[62]),
        .O(int_b_reg0[30]));
  LUT4 #(
    .INIT(16'h0001)) 
    \int_b[63]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\int_b[63]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[4] ),
        .O(\int_b[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[63]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(b[63]),
        .O(int_b_reg0[31]));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \int_b[63]_i_3 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_WVALID),
        .I2(\waddr_reg_n_0_[1] ),
        .I3(\waddr_reg_n_0_[0] ),
        .I4(\waddr_reg_n_0_[6] ),
        .I5(\waddr_reg_n_0_[5] ),
        .O(\int_b[63]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[6]),
        .O(int_b_reg09_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(b[7]),
        .O(int_b_reg09_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[8]),
        .O(int_b_reg09_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_b[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(b[9]),
        .O(int_b_reg09_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[0] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[0]),
        .Q(b[0]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[10] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[10]),
        .Q(b[10]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[11] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[11]),
        .Q(b[11]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[12] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[12]),
        .Q(b[12]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[13] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[13]),
        .Q(b[13]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[14] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[14]),
        .Q(b[14]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[15] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[15]),
        .Q(b[15]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[16] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[16]),
        .Q(b[16]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[17] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[17]),
        .Q(b[17]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[18] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[18]),
        .Q(b[18]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[19] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[19]),
        .Q(b[19]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[1] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[1]),
        .Q(b[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[20] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[20]),
        .Q(b[20]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[21] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[21]),
        .Q(b[21]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[22] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[22]),
        .Q(b[22]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[23] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[23]),
        .Q(b[23]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[24] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[24]),
        .Q(b[24]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[25] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[25]),
        .Q(b[25]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[26] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[26]),
        .Q(b[26]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[27] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[27]),
        .Q(b[27]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[28] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[28]),
        .Q(b[28]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[29] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[29]),
        .Q(b[29]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[2] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[2]),
        .Q(b[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[30] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[30]),
        .Q(b[30]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[31] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[31]),
        .Q(b[31]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[32] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[0]),
        .Q(b[32]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[33] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[1]),
        .Q(b[33]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[34] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[2]),
        .Q(b[34]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[35] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[3]),
        .Q(b[35]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[36] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[4]),
        .Q(b[36]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[37] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[5]),
        .Q(b[37]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[38] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[6]),
        .Q(b[38]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[39] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[7]),
        .Q(b[39]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[3] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[3]),
        .Q(b[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[40] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[8]),
        .Q(b[40]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[41] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[9]),
        .Q(b[41]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[42] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[10]),
        .Q(b[42]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[43] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[11]),
        .Q(b[43]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[44] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[12]),
        .Q(b[44]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[45] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[13]),
        .Q(b[45]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[46] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[14]),
        .Q(b[46]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[47] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[15]),
        .Q(b[47]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[48] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[16]),
        .Q(b[48]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[49] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[17]),
        .Q(b[49]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[4] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[4]),
        .Q(b[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[50] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[18]),
        .Q(b[50]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[51] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[19]),
        .Q(b[51]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[52] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[20]),
        .Q(b[52]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[53] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[21]),
        .Q(b[53]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[54] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[22]),
        .Q(b[54]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[55] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[23]),
        .Q(b[55]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[56] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[24]),
        .Q(b[56]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[57] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[25]),
        .Q(b[57]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[58] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[26]),
        .Q(b[58]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[59] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[27]),
        .Q(b[59]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[5] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[5]),
        .Q(b[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[60] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[28]),
        .Q(b[60]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[61] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[29]),
        .Q(b[61]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[62] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[30]),
        .Q(b[62]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[63] 
       (.C(ap_clk),
        .CE(\int_b[63]_i_1_n_0 ),
        .D(int_b_reg0[31]),
        .Q(b[63]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[6] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[6]),
        .Q(b[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[7] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[7]),
        .Q(b[7]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[8] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[8]),
        .Q(b[8]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_b_reg[9] 
       (.C(ap_clk),
        .CE(\int_b[31]_i_1_n_0 ),
        .D(int_b_reg09_out[9]),
        .Q(b[9]),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[0]),
        .O(int_c_reg07_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[10]),
        .O(int_c_reg07_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[11]),
        .O(int_c_reg07_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[12]),
        .O(int_c_reg07_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[13]),
        .O(int_c_reg07_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[14]),
        .O(int_c_reg07_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[15]),
        .O(int_c_reg07_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[16]),
        .O(int_c_reg07_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[17]),
        .O(int_c_reg07_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[18]),
        .O(int_c_reg07_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[19]),
        .O(int_c_reg07_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[1]),
        .O(int_c_reg07_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[20]),
        .O(int_c_reg07_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[21]),
        .O(int_c_reg07_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[22]),
        .O(int_c_reg07_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[23]),
        .O(int_c_reg07_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[24]),
        .O(int_c_reg07_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[25]),
        .O(int_c_reg07_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[26]),
        .O(int_c_reg07_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[27]),
        .O(int_c_reg07_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[28]),
        .O(int_c_reg07_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[29]),
        .O(int_c_reg07_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[2]),
        .O(int_c_reg07_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[30]),
        .O(int_c_reg07_out[30]));
  LUT4 #(
    .INIT(16'h0040)) 
    \int_c[31]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\int_b[63]_i_3_n_0 ),
        .O(\int_c[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[31]),
        .O(int_c_reg07_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[32]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[32]),
        .O(int_c_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[33]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[33]),
        .O(int_c_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[34]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[34]),
        .O(int_c_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[35]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[35]),
        .O(int_c_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[36]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[36]),
        .O(int_c_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[37]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[37]),
        .O(int_c_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[38]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[38]),
        .O(int_c_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[39]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[39]),
        .O(int_c_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[3]),
        .O(int_c_reg07_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[40]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[40]),
        .O(int_c_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[41]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[41]),
        .O(int_c_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[42]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[42]),
        .O(int_c_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[43]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[43]),
        .O(int_c_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[44]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[44]),
        .O(int_c_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[45]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[45]),
        .O(int_c_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[46]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[46]),
        .O(int_c_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[47]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[47]),
        .O(int_c_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[48]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[48]),
        .O(int_c_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[49]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[49]),
        .O(int_c_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[4]),
        .O(int_c_reg07_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[50]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[50]),
        .O(int_c_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[51]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[51]),
        .O(int_c_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[52]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[52]),
        .O(int_c_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[53]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[53]),
        .O(int_c_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[54]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[54]),
        .O(int_c_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[55]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(c[55]),
        .O(int_c_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[56]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[56]),
        .O(int_c_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[57]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[57]),
        .O(int_c_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[58]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[58]),
        .O(int_c_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[59]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[59]),
        .O(int_c_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[5]),
        .O(int_c_reg07_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[60]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[60]),
        .O(int_c_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[61]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[61]),
        .O(int_c_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[62]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[62]),
        .O(int_c_reg0[30]));
  LUT4 #(
    .INIT(16'h0040)) 
    \int_c[63]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\int_b[63]_i_3_n_0 ),
        .O(\int_c[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[63]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(c[63]),
        .O(int_c_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[6]),
        .O(int_c_reg07_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(c[7]),
        .O(int_c_reg07_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[8]),
        .O(int_c_reg07_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_c[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(c[9]),
        .O(int_c_reg07_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[0] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[0]),
        .Q(c[0]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[10] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[10]),
        .Q(c[10]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[11] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[11]),
        .Q(c[11]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[12] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[12]),
        .Q(c[12]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[13] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[13]),
        .Q(c[13]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[14] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[14]),
        .Q(c[14]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[15] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[15]),
        .Q(c[15]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[16] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[16]),
        .Q(c[16]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[17] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[17]),
        .Q(c[17]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[18] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[18]),
        .Q(c[18]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[19] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[19]),
        .Q(c[19]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[1] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[1]),
        .Q(c[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[20] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[20]),
        .Q(c[20]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[21] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[21]),
        .Q(c[21]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[22] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[22]),
        .Q(c[22]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[23] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[23]),
        .Q(c[23]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[24] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[24]),
        .Q(c[24]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[25] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[25]),
        .Q(c[25]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[26] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[26]),
        .Q(c[26]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[27] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[27]),
        .Q(c[27]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[28] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[28]),
        .Q(c[28]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[29] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[29]),
        .Q(c[29]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[2] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[2]),
        .Q(c[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[30] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[30]),
        .Q(c[30]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[31] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[31]),
        .Q(c[31]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[32] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[0]),
        .Q(c[32]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[33] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[1]),
        .Q(c[33]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[34] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[2]),
        .Q(c[34]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[35] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[3]),
        .Q(c[35]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[36] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[4]),
        .Q(c[36]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[37] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[5]),
        .Q(c[37]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[38] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[6]),
        .Q(c[38]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[39] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[7]),
        .Q(c[39]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[3] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[3]),
        .Q(c[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[40] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[8]),
        .Q(c[40]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[41] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[9]),
        .Q(c[41]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[42] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[10]),
        .Q(c[42]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[43] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[11]),
        .Q(c[43]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[44] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[12]),
        .Q(c[44]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[45] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[13]),
        .Q(c[45]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[46] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[14]),
        .Q(c[46]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[47] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[15]),
        .Q(c[47]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[48] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[16]),
        .Q(c[48]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[49] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[17]),
        .Q(c[49]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[4] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[4]),
        .Q(c[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[50] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[18]),
        .Q(c[50]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[51] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[19]),
        .Q(c[51]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[52] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[20]),
        .Q(c[52]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[53] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[21]),
        .Q(c[53]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[54] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[22]),
        .Q(c[54]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[55] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[23]),
        .Q(c[55]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[56] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[24]),
        .Q(c[56]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[57] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[25]),
        .Q(c[57]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[58] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[26]),
        .Q(c[58]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[59] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[27]),
        .Q(c[59]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[5] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[5]),
        .Q(c[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[60] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[28]),
        .Q(c[60]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[61] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[29]),
        .Q(c[61]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[62] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[30]),
        .Q(c[62]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[63] 
       (.C(ap_clk),
        .CE(\int_c[63]_i_1_n_0 ),
        .D(int_c_reg0[31]),
        .Q(c[63]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[6] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[6]),
        .Q(c[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[7] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[7]),
        .Q(c[7]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[8] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[8]),
        .Q(c[8]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_c_reg[9] 
       (.C(ap_clk),
        .CE(\int_c[31]_i_1_n_0 ),
        .D(int_c_reg07_out[9]),
        .Q(c[9]),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[0]),
        .O(int_d_reg05_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[10]),
        .O(int_d_reg05_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[11]),
        .O(int_d_reg05_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[12]),
        .O(int_d_reg05_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[13]),
        .O(int_d_reg05_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[14]),
        .O(int_d_reg05_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[15]),
        .O(int_d_reg05_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[16]),
        .O(int_d_reg05_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[17]),
        .O(int_d_reg05_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[18]),
        .O(int_d_reg05_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[19]),
        .O(int_d_reg05_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[1]),
        .O(int_d_reg05_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[20]),
        .O(int_d_reg05_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[21]),
        .O(int_d_reg05_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[22]),
        .O(int_d_reg05_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[23]),
        .O(int_d_reg05_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[24]),
        .O(int_d_reg05_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[25]),
        .O(int_d_reg05_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[26]),
        .O(int_d_reg05_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[27]),
        .O(int_d_reg05_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[28]),
        .O(int_d_reg05_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[29]),
        .O(int_d_reg05_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[2]),
        .O(int_d_reg05_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[30]),
        .O(int_d_reg05_out[30]));
  LUT4 #(
    .INIT(16'h0004)) 
    \int_d[31]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_b[63]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[4] ),
        .O(\int_d[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[31]),
        .O(int_d_reg05_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[32]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[32]),
        .O(int_d_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[33]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[33]),
        .O(int_d_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[34]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[34]),
        .O(int_d_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[35]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[35]),
        .O(int_d_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[36]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[36]),
        .O(int_d_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[37]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[37]),
        .O(int_d_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[38]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[38]),
        .O(int_d_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[39]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[39]),
        .O(int_d_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[3]),
        .O(int_d_reg05_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[40]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[40]),
        .O(int_d_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[41]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[41]),
        .O(int_d_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[42]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[42]),
        .O(int_d_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[43]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[43]),
        .O(int_d_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[44]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[44]),
        .O(int_d_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[45]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[45]),
        .O(int_d_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[46]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[46]),
        .O(int_d_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[47]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[47]),
        .O(int_d_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[48]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[48]),
        .O(int_d_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[49]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[49]),
        .O(int_d_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[4]),
        .O(int_d_reg05_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[50]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[50]),
        .O(int_d_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[51]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[51]),
        .O(int_d_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[52]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[52]),
        .O(int_d_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[53]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[53]),
        .O(int_d_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[54]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[54]),
        .O(int_d_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[55]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(d[55]),
        .O(int_d_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[56]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[56]),
        .O(int_d_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[57]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[57]),
        .O(int_d_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[58]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[58]),
        .O(int_d_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[59]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[59]),
        .O(int_d_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[5]),
        .O(int_d_reg05_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[60]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[60]),
        .O(int_d_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[61]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[61]),
        .O(int_d_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[62]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[62]),
        .O(int_d_reg0[30]));
  LUT4 #(
    .INIT(16'h0008)) 
    \int_d[63]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\int_b[63]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[4] ),
        .O(\int_d[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[63]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(d[63]),
        .O(int_d_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[6]),
        .O(int_d_reg05_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(d[7]),
        .O(int_d_reg05_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[8]),
        .O(int_d_reg05_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_d[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(d[9]),
        .O(int_d_reg05_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[0] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[0]),
        .Q(d[0]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[10] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[10]),
        .Q(d[10]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[11] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[11]),
        .Q(d[11]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[12] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[12]),
        .Q(d[12]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[13] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[13]),
        .Q(d[13]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[14] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[14]),
        .Q(d[14]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[15] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[15]),
        .Q(d[15]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[16] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[16]),
        .Q(d[16]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[17] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[17]),
        .Q(d[17]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[18] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[18]),
        .Q(d[18]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[19] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[19]),
        .Q(d[19]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[1] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[1]),
        .Q(d[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[20] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[20]),
        .Q(d[20]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[21] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[21]),
        .Q(d[21]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[22] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[22]),
        .Q(d[22]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[23] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[23]),
        .Q(d[23]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[24] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[24]),
        .Q(d[24]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[25] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[25]),
        .Q(d[25]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[26] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[26]),
        .Q(d[26]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[27] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[27]),
        .Q(d[27]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[28] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[28]),
        .Q(d[28]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[29] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[29]),
        .Q(d[29]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[2] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[2]),
        .Q(d[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[30] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[30]),
        .Q(d[30]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[31] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[31]),
        .Q(d[31]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[32] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[0]),
        .Q(d[32]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[33] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[1]),
        .Q(d[33]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[34] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[2]),
        .Q(d[34]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[35] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[3]),
        .Q(d[35]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[36] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[4]),
        .Q(d[36]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[37] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[5]),
        .Q(d[37]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[38] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[6]),
        .Q(d[38]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[39] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[7]),
        .Q(d[39]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[3] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[3]),
        .Q(d[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[40] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[8]),
        .Q(d[40]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[41] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[9]),
        .Q(d[41]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[42] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[10]),
        .Q(d[42]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[43] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[11]),
        .Q(d[43]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[44] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[12]),
        .Q(d[44]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[45] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[13]),
        .Q(d[45]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[46] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[14]),
        .Q(d[46]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[47] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[15]),
        .Q(d[47]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[48] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[16]),
        .Q(d[48]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[49] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[17]),
        .Q(d[49]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[4] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[4]),
        .Q(d[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[50] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[18]),
        .Q(d[50]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[51] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[19]),
        .Q(d[51]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[52] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[20]),
        .Q(d[52]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[53] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[21]),
        .Q(d[53]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[54] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[22]),
        .Q(d[54]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[55] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[23]),
        .Q(d[55]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[56] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[24]),
        .Q(d[56]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[57] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[25]),
        .Q(d[57]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[58] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[26]),
        .Q(d[58]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[59] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[27]),
        .Q(d[59]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[5] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[5]),
        .Q(d[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[60] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[28]),
        .Q(d[60]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[61] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[29]),
        .Q(d[61]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[62] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[30]),
        .Q(d[62]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[63] 
       (.C(ap_clk),
        .CE(\int_d[63]_i_1_n_0 ),
        .D(int_d_reg0[31]),
        .Q(d[63]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[6] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[6]),
        .Q(d[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[7] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[7]),
        .Q(d[7]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[8] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[8]),
        .Q(d[8]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_d_reg[9] 
       (.C(ap_clk),
        .CE(\int_d[31]_i_1_n_0 ),
        .D(int_d_reg05_out[9]),
        .Q(d[9]),
        .R(areset));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_gie_i_2_n_0),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(s_axi_control_WSTRB[0]),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    int_gie_i_2
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[4] ),
        .O(int_gie_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(areset));
  LUT5 #(
    .INIT(32'h00000020)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .O(int_ier9_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\waddr_reg_n_0_[1] ),
        .I4(\waddr_reg_n_0_[0] ),
        .I5(\waddr_reg_n_0_[6] ),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier9_out),
        .D(s_axi_control_WDATA[0]),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier9_out),
        .D(s_axi_control_WDATA[1]),
        .Q(p_0_in),
        .R(areset));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr6_out),
        .I2(\int_ier_reg_n_0_[0] ),
        .I3(ap_done),
        .I4(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .O(int_isr6_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr6_out),
        .I2(p_0_in),
        .I3(ap_done),
        .I4(p_1_in),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(p_1_in),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(length_r),
        .O(int_length_r0[0]));
  (* SOFT_HLUTNM = "soft_lutpair304" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[9]),
        .O(int_length_r0[10]));
  (* SOFT_HLUTNM = "soft_lutpair303" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[10]),
        .O(int_length_r0[11]));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[11]),
        .O(int_length_r0[12]));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[12]),
        .O(int_length_r0[13]));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[13]),
        .O(int_length_r0[14]));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[14]),
        .O(int_length_r0[15]));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[15]),
        .O(int_length_r0[16]));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[16]),
        .O(int_length_r0[17]));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[17]),
        .O(int_length_r0[18]));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[18]),
        .O(int_length_r0[19]));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[0]),
        .O(int_length_r0[1]));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[19]),
        .O(int_length_r0[20]));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[20]),
        .O(int_length_r0[21]));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[21]),
        .O(int_length_r0[22]));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(Q[22]),
        .O(int_length_r0[23]));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[23]),
        .O(int_length_r0[24]));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[24]),
        .O(int_length_r0[25]));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[25]),
        .O(int_length_r0[26]));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[26]),
        .O(int_length_r0[27]));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[27]),
        .O(int_length_r0[28]));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[28]),
        .O(int_length_r0[29]));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[1]),
        .O(int_length_r0[2]));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[29]),
        .O(int_length_r0[30]));
  LUT4 #(
    .INIT(16'h0001)) 
    \int_length_r[31]_i_1 
       (.I0(\int_length_r[31]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[2] ),
        .O(\int_length_r[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(Q[30]),
        .O(int_length_r0[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \int_length_r[31]_i_3 
       (.I0(\waddr_reg_n_0_[0] ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(\waddr_reg_n_0_[6] ),
        .I5(\waddr_reg_n_0_[5] ),
        .O(\int_length_r[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[2]),
        .O(int_length_r0[3]));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[3]),
        .O(int_length_r0[4]));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[4]),
        .O(int_length_r0[5]));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[5]),
        .O(int_length_r0[6]));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q[6]),
        .O(int_length_r0[7]));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[7]),
        .O(int_length_r0[8]));
  (* SOFT_HLUTNM = "soft_lutpair305" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_length_r[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(Q[8]),
        .O(int_length_r0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[0] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[0]),
        .Q(length_r),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[10] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[10]),
        .Q(Q[9]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[11] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[11]),
        .Q(Q[10]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[12] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[12]),
        .Q(Q[11]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[13] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[13]),
        .Q(Q[12]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[14] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[14]),
        .Q(Q[13]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[15] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[15]),
        .Q(Q[14]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[16] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[16]),
        .Q(Q[15]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[17] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[17]),
        .Q(Q[16]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[18] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[18]),
        .Q(Q[17]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[19] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[19]),
        .Q(Q[18]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[1] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[1]),
        .Q(Q[0]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[20] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[20]),
        .Q(Q[19]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[21] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[21]),
        .Q(Q[20]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[22] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[22]),
        .Q(Q[21]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[23] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[23]),
        .Q(Q[22]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[24] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[24]),
        .Q(Q[23]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[25] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[25]),
        .Q(Q[24]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[26] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[26]),
        .Q(Q[25]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[27] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[27]),
        .Q(Q[26]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[28] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[28]),
        .Q(Q[27]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[29] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[29]),
        .Q(Q[28]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[2] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[2]),
        .Q(Q[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[30] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[30]),
        .Q(Q[29]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[31] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[31]),
        .Q(Q[30]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[3] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[3]),
        .Q(Q[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[4] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[4]),
        .Q(Q[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[5] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[5]),
        .Q(Q[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[6] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[6]),
        .Q(Q[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[7] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[7]),
        .Q(Q[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[8] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[8]),
        .Q(Q[7]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_length_r_reg[9] 
       (.C(ap_clk),
        .CE(\int_length_r[31]_i_1_n_0 ),
        .D(int_length_r0[9]),
        .Q(Q[8]),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[0]),
        .O(int_ro_in_reg03_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair304" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[10]),
        .O(int_ro_in_reg03_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair303" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[11]),
        .O(int_ro_in_reg03_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[12]),
        .O(int_ro_in_reg03_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[13]),
        .O(int_ro_in_reg03_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[14]),
        .O(int_ro_in_reg03_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[15]),
        .O(int_ro_in_reg03_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[16]),
        .O(int_ro_in_reg03_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[17]),
        .O(int_ro_in_reg03_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[18]),
        .O(int_ro_in_reg03_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[19]),
        .O(int_ro_in_reg03_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[1]),
        .O(int_ro_in_reg03_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[20]),
        .O(int_ro_in_reg03_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[21]),
        .O(int_ro_in_reg03_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[22]),
        .O(int_ro_in_reg03_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[23]),
        .O(int_ro_in_reg03_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[24]),
        .O(int_ro_in_reg03_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[25]),
        .O(int_ro_in_reg03_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[26]),
        .O(int_ro_in_reg03_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[27]),
        .O(int_ro_in_reg03_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[28]),
        .O(int_ro_in_reg03_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[29]),
        .O(int_ro_in_reg03_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[2]),
        .O(int_ro_in_reg03_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[30]),
        .O(int_ro_in_reg03_out[30]));
  LUT4 #(
    .INIT(16'h0004)) 
    \int_ro_in[31]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_length_r[31]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[4] ),
        .O(\int_ro_in[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[31]),
        .O(int_ro_in_reg03_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair337" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[32]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[32]),
        .O(int_ro_in_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair336" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[33]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[33]),
        .O(int_ro_in_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair335" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[34]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[34]),
        .O(int_ro_in_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair334" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[35]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[35]),
        .O(int_ro_in_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair333" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[36]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[36]),
        .O(int_ro_in_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair332" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[37]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[37]),
        .O(int_ro_in_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair331" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[38]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[38]),
        .O(int_ro_in_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair330" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[39]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[39]),
        .O(int_ro_in_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[3]),
        .O(int_ro_in_reg03_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair329" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[40]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[40]),
        .O(int_ro_in_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair328" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[41]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[41]),
        .O(int_ro_in_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair327" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[42]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[42]),
        .O(int_ro_in_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair326" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[43]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[43]),
        .O(int_ro_in_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair325" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[44]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[44]),
        .O(int_ro_in_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair324" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[45]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[45]),
        .O(int_ro_in_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair323" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[46]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[46]),
        .O(int_ro_in_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair322" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[47]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[47]),
        .O(int_ro_in_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair321" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[48]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[48]),
        .O(int_ro_in_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair320" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[49]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[49]),
        .O(int_ro_in_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[4]),
        .O(int_ro_in_reg03_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair319" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[50]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[50]),
        .O(int_ro_in_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair318" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[51]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[51]),
        .O(int_ro_in_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair317" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[52]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[52]),
        .O(int_ro_in_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair316" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[53]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[53]),
        .O(int_ro_in_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair315" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[54]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[54]),
        .O(int_ro_in_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair314" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[55]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_in[55]),
        .O(int_ro_in_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair313" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[56]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[56]),
        .O(int_ro_in_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair312" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[57]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[57]),
        .O(int_ro_in_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair311" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[58]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[58]),
        .O(int_ro_in_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair310" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[59]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[59]),
        .O(int_ro_in_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[5]),
        .O(int_ro_in_reg03_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair309" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[60]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[60]),
        .O(int_ro_in_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair308" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[61]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[61]),
        .O(int_ro_in_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair307" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[62]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[62]),
        .O(int_ro_in_reg0[30]));
  LUT4 #(
    .INIT(16'h1000)) 
    \int_ro_in[63]_i_1 
       (.I0(\int_length_r[31]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[2] ),
        .O(\int_ro_in[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair306" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[63]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_in[63]),
        .O(int_ro_in_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[6]),
        .O(int_ro_in_reg03_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_in[7]),
        .O(int_ro_in_reg03_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[8]),
        .O(int_ro_in_reg03_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair305" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_in[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_in[9]),
        .O(int_ro_in_reg03_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[0] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[0]),
        .Q(ro_in[0]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[10] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[10]),
        .Q(ro_in[10]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[11] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[11]),
        .Q(ro_in[11]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[12] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[12]),
        .Q(ro_in[12]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[13] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[13]),
        .Q(ro_in[13]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[14] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[14]),
        .Q(ro_in[14]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[15] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[15]),
        .Q(ro_in[15]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[16] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[16]),
        .Q(ro_in[16]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[17] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[17]),
        .Q(ro_in[17]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[18] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[18]),
        .Q(ro_in[18]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[19] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[19]),
        .Q(ro_in[19]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[1] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[1]),
        .Q(ro_in[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[20] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[20]),
        .Q(ro_in[20]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[21] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[21]),
        .Q(ro_in[21]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[22] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[22]),
        .Q(ro_in[22]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[23] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[23]),
        .Q(ro_in[23]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[24] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[24]),
        .Q(ro_in[24]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[25] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[25]),
        .Q(ro_in[25]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[26] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[26]),
        .Q(ro_in[26]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[27] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[27]),
        .Q(ro_in[27]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[28] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[28]),
        .Q(ro_in[28]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[29] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[29]),
        .Q(ro_in[29]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[2] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[2]),
        .Q(ro_in[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[30] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[30]),
        .Q(ro_in[30]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[31] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[31]),
        .Q(ro_in[31]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[32] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[0]),
        .Q(ro_in[32]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[33] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[1]),
        .Q(ro_in[33]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[34] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[2]),
        .Q(ro_in[34]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[35] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[3]),
        .Q(ro_in[35]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[36] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[4]),
        .Q(ro_in[36]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[37] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[5]),
        .Q(ro_in[37]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[38] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[6]),
        .Q(ro_in[38]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[39] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[7]),
        .Q(ro_in[39]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[3] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[3]),
        .Q(ro_in[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[40] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[8]),
        .Q(ro_in[40]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[41] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[9]),
        .Q(ro_in[41]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[42] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[10]),
        .Q(ro_in[42]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[43] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[11]),
        .Q(ro_in[43]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[44] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[12]),
        .Q(ro_in[44]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[45] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[13]),
        .Q(ro_in[45]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[46] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[14]),
        .Q(ro_in[46]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[47] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[15]),
        .Q(ro_in[47]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[48] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[16]),
        .Q(ro_in[48]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[49] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[17]),
        .Q(ro_in[49]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[4] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[4]),
        .Q(ro_in[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[50] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[18]),
        .Q(ro_in[50]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[51] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[19]),
        .Q(ro_in[51]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[52] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[20]),
        .Q(ro_in[52]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[53] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[21]),
        .Q(ro_in[53]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[54] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[22]),
        .Q(ro_in[54]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[55] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[23]),
        .Q(ro_in[55]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[56] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[24]),
        .Q(ro_in[56]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[57] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[25]),
        .Q(ro_in[57]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[58] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[26]),
        .Q(ro_in[58]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[59] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[27]),
        .Q(ro_in[59]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[5] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[5]),
        .Q(ro_in[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[60] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[28]),
        .Q(ro_in[60]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[61] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[29]),
        .Q(ro_in[61]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[62] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[30]),
        .Q(ro_in[62]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[63] 
       (.C(ap_clk),
        .CE(\int_ro_in[63]_i_1_n_0 ),
        .D(int_ro_in_reg0[31]),
        .Q(ro_in[63]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[6] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[6]),
        .Q(ro_in[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[7] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[7]),
        .Q(ro_in[7]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[8] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[8]),
        .Q(ro_in[8]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_in_reg[9] 
       (.C(ap_clk),
        .CE(\int_ro_in[31]_i_1_n_0 ),
        .D(int_ro_in_reg03_out[9]),
        .Q(ro_in[9]),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair337" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[0]),
        .O(int_ro_out_reg01_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair327" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[10]),
        .O(int_ro_out_reg01_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair326" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[11]),
        .O(int_ro_out_reg01_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair325" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[12]),
        .O(int_ro_out_reg01_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair324" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[13]),
        .O(int_ro_out_reg01_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair323" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[14]),
        .O(int_ro_out_reg01_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair322" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[15]),
        .O(int_ro_out_reg01_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair321" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[16]),
        .O(int_ro_out_reg01_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair320" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[17]),
        .O(int_ro_out_reg01_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair319" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[18]),
        .O(int_ro_out_reg01_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair318" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[19]),
        .O(int_ro_out_reg01_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair336" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[1]),
        .O(int_ro_out_reg01_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair317" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[20]),
        .O(int_ro_out_reg01_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair316" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[21]),
        .O(int_ro_out_reg01_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair315" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[22]),
        .O(int_ro_out_reg01_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair314" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[23]),
        .O(int_ro_out_reg01_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair313" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[24]),
        .O(int_ro_out_reg01_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair312" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[25]),
        .O(int_ro_out_reg01_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair311" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[26]),
        .O(int_ro_out_reg01_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair310" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[27]),
        .O(int_ro_out_reg01_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair309" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[28]),
        .O(int_ro_out_reg01_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair308" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[29]),
        .O(int_ro_out_reg01_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair335" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[2]),
        .O(int_ro_out_reg01_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair307" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[30]),
        .O(int_ro_out_reg01_out[30]));
  LUT4 #(
    .INIT(16'h0400)) 
    \int_ro_out[31]_i_1 
       (.I0(\int_length_r[31]_i_3_n_0 ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[2] ),
        .O(\int_ro_out[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair306" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[31]),
        .O(int_ro_out_reg01_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair353" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[32]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[32]),
        .O(int_ro_out_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair353" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[33]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[33]),
        .O(int_ro_out_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair352" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[34]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[34]),
        .O(int_ro_out_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair352" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[35]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[35]),
        .O(int_ro_out_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair351" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[36]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[36]),
        .O(int_ro_out_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair351" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[37]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[37]),
        .O(int_ro_out_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair350" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[38]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[38]),
        .O(int_ro_out_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair350" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[39]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[39]),
        .O(int_ro_out_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair334" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[3]),
        .O(int_ro_out_reg01_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair349" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[40]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[40]),
        .O(int_ro_out_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair349" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[41]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[41]),
        .O(int_ro_out_reg0[9]));
  (* SOFT_HLUTNM = "soft_lutpair348" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[42]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[42]),
        .O(int_ro_out_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair348" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[43]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[43]),
        .O(int_ro_out_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair347" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[44]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[44]),
        .O(int_ro_out_reg0[12]));
  (* SOFT_HLUTNM = "soft_lutpair347" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[45]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[45]),
        .O(int_ro_out_reg0[13]));
  (* SOFT_HLUTNM = "soft_lutpair346" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[46]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[46]),
        .O(int_ro_out_reg0[14]));
  (* SOFT_HLUTNM = "soft_lutpair346" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[47]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[47]),
        .O(int_ro_out_reg0[15]));
  (* SOFT_HLUTNM = "soft_lutpair345" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[48]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[48]),
        .O(int_ro_out_reg0[16]));
  (* SOFT_HLUTNM = "soft_lutpair345" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[49]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[49]),
        .O(int_ro_out_reg0[17]));
  (* SOFT_HLUTNM = "soft_lutpair333" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[4]),
        .O(int_ro_out_reg01_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair344" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[50]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[50]),
        .O(int_ro_out_reg0[18]));
  (* SOFT_HLUTNM = "soft_lutpair344" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[51]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[51]),
        .O(int_ro_out_reg0[19]));
  (* SOFT_HLUTNM = "soft_lutpair343" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[52]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[52]),
        .O(int_ro_out_reg0[20]));
  (* SOFT_HLUTNM = "soft_lutpair343" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[53]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[53]),
        .O(int_ro_out_reg0[21]));
  (* SOFT_HLUTNM = "soft_lutpair342" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[54]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[54]),
        .O(int_ro_out_reg0[22]));
  (* SOFT_HLUTNM = "soft_lutpair342" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[55]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(ro_out[55]),
        .O(int_ro_out_reg0[23]));
  (* SOFT_HLUTNM = "soft_lutpair341" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[56]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[56]),
        .O(int_ro_out_reg0[24]));
  (* SOFT_HLUTNM = "soft_lutpair341" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[57]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[57]),
        .O(int_ro_out_reg0[25]));
  (* SOFT_HLUTNM = "soft_lutpair340" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[58]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[58]),
        .O(int_ro_out_reg0[26]));
  (* SOFT_HLUTNM = "soft_lutpair340" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[59]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[59]),
        .O(int_ro_out_reg0[27]));
  (* SOFT_HLUTNM = "soft_lutpair332" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[5]),
        .O(int_ro_out_reg01_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair339" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[60]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[60]),
        .O(int_ro_out_reg0[28]));
  (* SOFT_HLUTNM = "soft_lutpair339" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[61]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[61]),
        .O(int_ro_out_reg0[29]));
  (* SOFT_HLUTNM = "soft_lutpair338" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[62]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[62]),
        .O(int_ro_out_reg0[30]));
  LUT4 #(
    .INIT(16'h0400)) 
    \int_ro_out[63]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_length_r[31]_i_3_n_0 ),
        .I3(\waddr_reg_n_0_[4] ),
        .O(\int_ro_out[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair338" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[63]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(ro_out[63]),
        .O(int_ro_out_reg0[31]));
  (* SOFT_HLUTNM = "soft_lutpair331" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[6]),
        .O(int_ro_out_reg01_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair330" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(ro_out[7]),
        .O(int_ro_out_reg01_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair329" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[8]),
        .O(int_ro_out_reg01_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair328" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ro_out[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(ro_out[9]),
        .O(int_ro_out_reg01_out[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[0] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[0]),
        .Q(ro_out[0]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[10] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[10]),
        .Q(ro_out[10]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[11] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[11]),
        .Q(ro_out[11]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[12] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[12]),
        .Q(ro_out[12]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[13] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[13]),
        .Q(ro_out[13]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[14] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[14]),
        .Q(ro_out[14]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[15] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[15]),
        .Q(ro_out[15]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[16] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[16]),
        .Q(ro_out[16]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[17] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[17]),
        .Q(ro_out[17]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[18] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[18]),
        .Q(ro_out[18]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[19] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[19]),
        .Q(ro_out[19]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[1] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[1]),
        .Q(ro_out[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[20] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[20]),
        .Q(ro_out[20]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[21] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[21]),
        .Q(ro_out[21]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[22] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[22]),
        .Q(ro_out[22]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[23] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[23]),
        .Q(ro_out[23]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[24] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[24]),
        .Q(ro_out[24]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[25] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[25]),
        .Q(ro_out[25]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[26] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[26]),
        .Q(ro_out[26]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[27] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[27]),
        .Q(ro_out[27]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[28] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[28]),
        .Q(ro_out[28]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[29] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[29]),
        .Q(ro_out[29]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[2] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[2]),
        .Q(ro_out[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[30] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[30]),
        .Q(ro_out[30]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[31] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[31]),
        .Q(ro_out[31]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[32] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[0]),
        .Q(ro_out[32]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[33] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[1]),
        .Q(ro_out[33]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[34] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[2]),
        .Q(ro_out[34]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[35] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[3]),
        .Q(ro_out[35]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[36] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[4]),
        .Q(ro_out[36]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[37] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[5]),
        .Q(ro_out[37]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[38] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[6]),
        .Q(ro_out[38]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[39] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[7]),
        .Q(ro_out[39]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[3] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[3]),
        .Q(ro_out[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[40] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[8]),
        .Q(ro_out[40]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[41] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[9]),
        .Q(ro_out[41]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[42] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[10]),
        .Q(ro_out[42]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[43] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[11]),
        .Q(ro_out[43]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[44] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[12]),
        .Q(ro_out[44]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[45] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[13]),
        .Q(ro_out[45]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[46] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[14]),
        .Q(ro_out[46]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[47] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[15]),
        .Q(ro_out[47]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[48] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[16]),
        .Q(ro_out[48]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[49] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[17]),
        .Q(ro_out[49]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[4] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[4]),
        .Q(ro_out[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[50] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[18]),
        .Q(ro_out[50]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[51] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[19]),
        .Q(ro_out[51]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[52] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[20]),
        .Q(ro_out[52]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[53] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[21]),
        .Q(ro_out[53]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[54] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[22]),
        .Q(ro_out[54]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[55] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[23]),
        .Q(ro_out[55]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[56] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[24]),
        .Q(ro_out[56]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[57] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[25]),
        .Q(ro_out[57]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[58] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[26]),
        .Q(ro_out[58]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[59] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[27]),
        .Q(ro_out[59]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[5] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[5]),
        .Q(ro_out[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[60] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[28]),
        .Q(ro_out[60]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[61] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[29]),
        .Q(ro_out[61]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[62] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[30]),
        .Q(ro_out[62]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[63] 
       (.C(ap_clk),
        .CE(\int_ro_out[63]_i_1_n_0 ),
        .D(int_ro_out_reg0[31]),
        .Q(ro_out[63]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[6] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[6]),
        .Q(ro_out[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[7] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[7]),
        .Q(ro_out[7]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[8] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[8]),
        .Q(ro_out[8]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \int_ro_out_reg[9] 
       (.C(ap_clk),
        .CE(\int_ro_out[31]_i_1_n_0 ),
        .D(int_ro_out_reg01_out[9]),
        .Q(ro_out[9]),
        .R(areset));
  LUT3 #(
    .INIT(8'hA8)) 
    interrupt_INST_0
       (.I0(int_gie_reg_n_0),
        .I1(p_1_in),
        .I2(\int_isr_reg_n_0_[0] ),
        .O(interrupt));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_2 
       (.I0(Q[22]),
        .O(\num_transactions[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_3 
       (.I0(Q[21]),
        .O(\num_transactions[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_4 
       (.I0(Q[20]),
        .O(\num_transactions[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_5 
       (.I0(Q[19]),
        .O(\num_transactions[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_6 
       (.I0(Q[18]),
        .O(\num_transactions[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_7 
       (.I0(Q[17]),
        .O(\num_transactions[15]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_8 
       (.I0(Q[16]),
        .O(\num_transactions[15]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[15]_i_9 
       (.I0(Q[15]),
        .O(\num_transactions[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_2 
       (.I0(Q[30]),
        .O(\num_transactions[23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_3 
       (.I0(Q[29]),
        .O(\num_transactions[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_4 
       (.I0(Q[28]),
        .O(\num_transactions[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_5 
       (.I0(Q[27]),
        .O(\num_transactions[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_6 
       (.I0(Q[26]),
        .O(\num_transactions[23]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_7 
       (.I0(Q[25]),
        .O(\num_transactions[23]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_8 
       (.I0(Q[24]),
        .O(\num_transactions[23]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[23]_i_9 
       (.I0(Q[23]),
        .O(\num_transactions[23]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_2 
       (.I0(Q[14]),
        .O(\num_transactions[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_3 
       (.I0(Q[13]),
        .O(\num_transactions[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_4 
       (.I0(Q[12]),
        .O(\num_transactions[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_5 
       (.I0(Q[11]),
        .O(\num_transactions[7]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_6 
       (.I0(Q[10]),
        .O(\num_transactions[7]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_7 
       (.I0(Q[9]),
        .O(\num_transactions[7]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \num_transactions[7]_i_8 
       (.I0(Q[8]),
        .O(\num_transactions[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \num_transactions[7]_i_9 
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(\final_burst_len[7]_i_2_n_0 ),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\num_transactions[7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \num_transactions_reg[15]_i_1 
       (.CI(\num_transactions_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\num_transactions_reg[15]_i_1_n_0 ,\num_transactions_reg[15]_i_1_n_1 ,\num_transactions_reg[15]_i_1_n_2 ,\num_transactions_reg[15]_i_1_n_3 ,\num_transactions_reg[15]_i_1_n_4 ,\num_transactions_reg[15]_i_1_n_5 ,\num_transactions_reg[15]_i_1_n_6 ,\num_transactions_reg[15]_i_1_n_7 }),
        .DI(Q[22:15]),
        .O(\int_length_r_reg[30]_0 [15:8]),
        .S({\num_transactions[15]_i_2_n_0 ,\num_transactions[15]_i_3_n_0 ,\num_transactions[15]_i_4_n_0 ,\num_transactions[15]_i_5_n_0 ,\num_transactions[15]_i_6_n_0 ,\num_transactions[15]_i_7_n_0 ,\num_transactions[15]_i_8_n_0 ,\num_transactions[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \num_transactions_reg[23]_i_1 
       (.CI(\num_transactions_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_num_transactions_reg[23]_i_1_CO_UNCONNECTED [7],\num_transactions_reg[23]_i_1_n_1 ,\num_transactions_reg[23]_i_1_n_2 ,\num_transactions_reg[23]_i_1_n_3 ,\num_transactions_reg[23]_i_1_n_4 ,\num_transactions_reg[23]_i_1_n_5 ,\num_transactions_reg[23]_i_1_n_6 ,\num_transactions_reg[23]_i_1_n_7 }),
        .DI({1'b0,Q[29:23]}),
        .O(\int_length_r_reg[30]_0 [23:16]),
        .S({\num_transactions[23]_i_2_n_0 ,\num_transactions[23]_i_3_n_0 ,\num_transactions[23]_i_4_n_0 ,\num_transactions[23]_i_5_n_0 ,\num_transactions[23]_i_6_n_0 ,\num_transactions[23]_i_7_n_0 ,\num_transactions[23]_i_8_n_0 ,\num_transactions[23]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \num_transactions_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\num_transactions_reg[7]_i_1_n_0 ,\num_transactions_reg[7]_i_1_n_1 ,\num_transactions_reg[7]_i_1_n_2 ,\num_transactions_reg[7]_i_1_n_3 ,\num_transactions_reg[7]_i_1_n_4 ,\num_transactions_reg[7]_i_1_n_5 ,\num_transactions_reg[7]_i_1_n_6 ,\num_transactions_reg[7]_i_1_n_7 }),
        .DI(Q[14:7]),
        .O(\int_length_r_reg[30]_0 [7:0]),
        .S({\num_transactions[7]_i_2_n_0 ,\num_transactions[7]_i_3_n_0 ,\num_transactions[7]_i_4_n_0 ,\num_transactions[7]_i_5_n_0 ,\num_transactions[7]_i_6_n_0 ,\num_transactions[7]_i_7_n_0 ,\num_transactions[7]_i_8_n_0 ,\num_transactions[7]_i_9_n_0 }));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \rdata[0]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[0]_i_2_n_0 ),
        .I2(\rdata[0]_i_3_n_0 ),
        .I3(\rdata[24]_i_4_n_0 ),
        .I4(\rdata_reg[0]_i_4_n_0 ),
        .O(rdata[0]));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[0]_i_10 
       (.I0(c[32]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[0]),
        .O(\rdata[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[0]_i_2 
       (.I0(ro_in[32]),
        .I1(ro_in[0]),
        .I2(length_r),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[0]_i_3 
       (.I0(ro_out[0]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[32]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_7 
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(\int_ier_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[3]),
        .I3(int_gie_reg_n_0),
        .I4(s_axi_control_ARADDR[2]),
        .I5(ap_start),
        .O(\rdata[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \rdata[0]_i_8 
       (.I0(b[0]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(a[32]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(a[0]),
        .O(\rdata[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[0]_i_9 
       (.I0(d[32]),
        .I1(d[0]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[32]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[10]_i_1 
       (.I0(\rdata[10]_i_2_n_0 ),
        .I1(\rdata[10]_i_3_n_0 ),
        .I2(\rdata[24]_i_4_n_0 ),
        .I3(\rdata[10]_i_4_n_0 ),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\rdata[10]_i_5_n_0 ),
        .O(rdata[10]));
  LUT6 #(
    .INIT(64'hFABFFFBFAAAAAAAA)) 
    \rdata[10]_i_2 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(ro_out[42]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(ro_out[10]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA00CCF0)) 
    \rdata[10]_i_3 
       (.I0(ro_in[42]),
        .I1(ro_in[10]),
        .I2(Q[9]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3808FFFF38080000)) 
    \rdata[10]_i_4 
       (.I0(c[42]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[10]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata[10]_i_6_n_0 ),
        .O(\rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[10]_i_5 
       (.I0(a[10]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[42]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[10]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[10]_i_6 
       (.I0(d[42]),
        .I1(d[10]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[42]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[11]_i_1 
       (.I0(\rdata[11]_i_2_n_0 ),
        .I1(\rdata[11]_i_3_n_0 ),
        .I2(\rdata[24]_i_4_n_0 ),
        .I3(\rdata[11]_i_4_n_0 ),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\rdata[11]_i_5_n_0 ),
        .O(rdata[11]));
  LUT6 #(
    .INIT(64'hFABFFFBFAAAAAAAA)) 
    \rdata[11]_i_2 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(ro_out[43]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(ro_out[11]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA00CCF0)) 
    \rdata[11]_i_3 
       (.I0(ro_in[43]),
        .I1(ro_in[11]),
        .I2(Q[10]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3808FFFF38080000)) 
    \rdata[11]_i_4 
       (.I0(c[43]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[11]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata[11]_i_6_n_0 ),
        .O(\rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[11]_i_5 
       (.I0(a[11]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[43]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[11]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[11]_i_6 
       (.I0(d[43]),
        .I1(d[11]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[43]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[12]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[12]_i_2_n_0 ),
        .I2(\rdata[12]_i_3_n_0 ),
        .I3(\rdata[12]_i_4_n_0 ),
        .O(rdata[12]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[12]_i_2 
       (.I0(ro_in[44]),
        .I1(ro_in[12]),
        .I2(Q[11]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[12]_i_3 
       (.I0(ro_out[12]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[44]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[12]_i_4 
       (.I0(\rdata[12]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[12]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[12]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[12]_i_5 
       (.I0(a[12]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[44]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[12]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[12]_i_6 
       (.I0(d[44]),
        .I1(d[12]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[44]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[12]_i_7 
       (.I0(c[44]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[12]),
        .O(\rdata[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[13]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[13]_i_2_n_0 ),
        .I2(\rdata[13]_i_3_n_0 ),
        .I3(\rdata[13]_i_4_n_0 ),
        .O(rdata[13]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[13]_i_2 
       (.I0(ro_in[45]),
        .I1(ro_in[13]),
        .I2(Q[12]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[13]_i_3 
       (.I0(ro_out[13]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[45]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[13]_i_4 
       (.I0(\rdata[13]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[13]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[13]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[13]_i_5 
       (.I0(a[13]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[45]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[13]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[13]_i_6 
       (.I0(d[45]),
        .I1(d[13]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[45]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[13]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[13]_i_7 
       (.I0(c[45]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[13]),
        .O(\rdata[13]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[14]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[14]_i_2_n_0 ),
        .I2(\rdata[14]_i_3_n_0 ),
        .I3(\rdata[14]_i_4_n_0 ),
        .O(rdata[14]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[14]_i_2 
       (.I0(ro_in[46]),
        .I1(ro_in[14]),
        .I2(Q[13]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[14]_i_3 
       (.I0(ro_out[14]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[46]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[14]_i_4 
       (.I0(\rdata[14]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[14]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[14]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[14]_i_5 
       (.I0(a[14]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[46]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[14]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[14]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[14]_i_6 
       (.I0(d[46]),
        .I1(d[14]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[46]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[14]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[14]_i_7 
       (.I0(c[46]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[14]),
        .O(\rdata[14]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[15]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[15]_i_2_n_0 ),
        .I2(\rdata[15]_i_3_n_0 ),
        .I3(\rdata[15]_i_4_n_0 ),
        .O(rdata[15]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[15]_i_2 
       (.I0(ro_in[47]),
        .I1(ro_in[15]),
        .I2(Q[14]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[15]_i_3 
       (.I0(ro_out[15]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[47]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[15]_i_4 
       (.I0(\rdata[15]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[15]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[15]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[15]_i_5 
       (.I0(a[15]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[47]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[15]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[15]_i_6 
       (.I0(d[47]),
        .I1(d[15]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[47]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[15]_i_7 
       (.I0(c[47]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[15]),
        .O(\rdata[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[16]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[16]_i_2_n_0 ),
        .I2(\rdata[16]_i_3_n_0 ),
        .I3(\rdata[16]_i_4_n_0 ),
        .O(rdata[16]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[16]_i_2 
       (.I0(ro_in[48]),
        .I1(ro_in[16]),
        .I2(Q[15]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[16]_i_3 
       (.I0(ro_out[16]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[48]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[16]_i_4 
       (.I0(\rdata[16]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[16]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[16]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[16]_i_5 
       (.I0(a[16]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[48]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[16]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[16]_i_6 
       (.I0(d[48]),
        .I1(d[16]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[48]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[16]_i_7 
       (.I0(c[48]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[16]),
        .O(\rdata[16]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[17]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[17]_i_2_n_0 ),
        .I2(\rdata[17]_i_3_n_0 ),
        .I3(\rdata[17]_i_4_n_0 ),
        .O(rdata[17]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[17]_i_2 
       (.I0(ro_in[49]),
        .I1(ro_in[17]),
        .I2(Q[16]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[17]_i_3 
       (.I0(ro_out[17]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[49]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[17]_i_4 
       (.I0(\rdata[17]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[17]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[17]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[17]_i_5 
       (.I0(a[17]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[49]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[17]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[17]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[17]_i_6 
       (.I0(d[49]),
        .I1(d[17]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[49]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[17]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[17]_i_7 
       (.I0(c[49]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[17]),
        .O(\rdata[17]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[18]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[18]_i_2_n_0 ),
        .I2(\rdata[18]_i_3_n_0 ),
        .I3(\rdata[18]_i_4_n_0 ),
        .O(rdata[18]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[18]_i_2 
       (.I0(ro_in[50]),
        .I1(ro_in[18]),
        .I2(Q[17]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[18]_i_3 
       (.I0(ro_out[18]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[50]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[18]_i_4 
       (.I0(\rdata[18]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[18]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[18]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[18]_i_5 
       (.I0(a[18]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[50]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[18]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[18]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[18]_i_6 
       (.I0(d[50]),
        .I1(d[18]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[50]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[18]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[18]_i_7 
       (.I0(c[50]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[18]),
        .O(\rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[19]_i_1 
       (.I0(\rdata[19]_i_2_n_0 ),
        .I1(\rdata[19]_i_3_n_0 ),
        .I2(\rdata[24]_i_4_n_0 ),
        .I3(\rdata[19]_i_4_n_0 ),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\rdata[19]_i_5_n_0 ),
        .O(rdata[19]));
  LUT6 #(
    .INIT(64'hFABFFFBFAAAAAAAA)) 
    \rdata[19]_i_2 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(ro_out[51]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(ro_out[19]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA00CCF0)) 
    \rdata[19]_i_3 
       (.I0(ro_in[51]),
        .I1(ro_in[19]),
        .I2(Q[18]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3808FFFF38080000)) 
    \rdata[19]_i_4 
       (.I0(c[51]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[19]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata[19]_i_6_n_0 ),
        .O(\rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[19]_i_5 
       (.I0(a[19]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[51]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[19]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[19]_i_6 
       (.I0(d[51]),
        .I1(d[19]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[51]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[19]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \rdata[1]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[1]_i_2_n_0 ),
        .I2(\rdata[1]_i_3_n_0 ),
        .I3(\rdata[24]_i_4_n_0 ),
        .I4(\rdata_reg[1]_i_4_n_0 ),
        .O(rdata[1]));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[1]_i_10 
       (.I0(c[33]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[1]),
        .O(\rdata[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[1]_i_2 
       (.I0(ro_in[33]),
        .I1(ro_in[1]),
        .I2(Q[0]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[1]_i_3 
       (.I0(ro_out[1]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[33]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[1]_i_7 
       (.I0(p_1_in),
        .I1(p_0_in),
        .I2(s_axi_control_ARADDR[3]),
        .I3(int_ap_done__0),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \rdata[1]_i_8 
       (.I0(b[1]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(a[33]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(a[1]),
        .O(\rdata[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[1]_i_9 
       (.I0(d[33]),
        .I1(d[1]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[33]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[1]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[20]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[20]_i_2_n_0 ),
        .I2(\rdata[20]_i_3_n_0 ),
        .I3(\rdata[20]_i_4_n_0 ),
        .O(rdata[20]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[20]_i_2 
       (.I0(ro_in[52]),
        .I1(ro_in[20]),
        .I2(Q[19]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[20]_i_3 
       (.I0(ro_out[20]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[52]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[20]_i_4 
       (.I0(\rdata[20]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[20]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[20]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[20]_i_5 
       (.I0(a[20]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[52]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[20]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[20]_i_6 
       (.I0(d[52]),
        .I1(d[20]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[52]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[20]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[20]_i_7 
       (.I0(c[52]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[20]),
        .O(\rdata[20]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[21]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[21]_i_2_n_0 ),
        .I2(\rdata[21]_i_3_n_0 ),
        .I3(\rdata[21]_i_4_n_0 ),
        .O(rdata[21]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[21]_i_2 
       (.I0(ro_in[53]),
        .I1(ro_in[21]),
        .I2(Q[20]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[21]_i_3 
       (.I0(ro_out[21]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[53]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[21]_i_4 
       (.I0(\rdata[21]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[21]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[21]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[21]_i_5 
       (.I0(a[21]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[53]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[21]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[21]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[21]_i_6 
       (.I0(d[53]),
        .I1(d[21]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[53]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[21]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[21]_i_7 
       (.I0(c[53]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[21]),
        .O(\rdata[21]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[22]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[22]_i_2_n_0 ),
        .I2(\rdata[22]_i_3_n_0 ),
        .I3(\rdata[22]_i_4_n_0 ),
        .O(rdata[22]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[22]_i_2 
       (.I0(ro_in[54]),
        .I1(ro_in[22]),
        .I2(Q[21]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[22]_i_3 
       (.I0(ro_out[22]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[54]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[22]_i_4 
       (.I0(\rdata[22]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[22]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[22]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[22]_i_5 
       (.I0(a[22]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[54]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[22]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[22]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[22]_i_6 
       (.I0(d[54]),
        .I1(d[22]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[54]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[22]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[22]_i_7 
       (.I0(c[54]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[22]),
        .O(\rdata[22]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[23]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[23]_i_2_n_0 ),
        .I2(\rdata[23]_i_3_n_0 ),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[23]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[23]_i_2 
       (.I0(ro_in[55]),
        .I1(ro_in[23]),
        .I2(Q[22]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[23]_i_3 
       (.I0(ro_out[23]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[55]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[23]_i_4 
       (.I0(\rdata[23]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[23]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[23]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[23]_i_5 
       (.I0(a[23]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[55]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[23]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[23]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[23]_i_6 
       (.I0(d[55]),
        .I1(d[23]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[55]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[23]_i_7 
       (.I0(c[55]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[23]),
        .O(\rdata[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \rdata[24]_i_1 
       (.I0(\rdata[24]_i_2_n_0 ),
        .I1(\rdata[24]_i_3_n_0 ),
        .I2(\rdata[24]_i_4_n_0 ),
        .I3(\rdata[24]_i_5_n_0 ),
        .I4(s_axi_control_ARADDR[5]),
        .I5(\rdata[24]_i_6_n_0 ),
        .O(rdata[24]));
  LUT6 #(
    .INIT(64'hFABFFFBFAAAAAAAA)) 
    \rdata[24]_i_2 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(ro_out[56]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(ro_out[24]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA00CCF0)) 
    \rdata[24]_i_3 
       (.I0(ro_in[56]),
        .I1(ro_in[24]),
        .I2(Q[23]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \rdata[24]_i_4 
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[0]),
        .O(\rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3808FFFF38080000)) 
    \rdata[24]_i_5 
       (.I0(c[56]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[24]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(\rdata[24]_i_7_n_0 ),
        .O(\rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[24]_i_6 
       (.I0(a[24]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[56]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[24]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[24]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[24]_i_7 
       (.I0(d[56]),
        .I1(d[24]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[56]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[25]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[25]_i_2_n_0 ),
        .I2(\rdata[25]_i_3_n_0 ),
        .I3(\rdata[25]_i_4_n_0 ),
        .O(rdata[25]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[25]_i_2 
       (.I0(ro_in[57]),
        .I1(ro_in[25]),
        .I2(Q[24]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[25]_i_3 
       (.I0(ro_out[25]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[57]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[25]_i_4 
       (.I0(\rdata[25]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[25]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[25]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[25]_i_5 
       (.I0(a[25]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[57]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[25]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[25]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[25]_i_6 
       (.I0(d[57]),
        .I1(d[25]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[57]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[25]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[25]_i_7 
       (.I0(c[57]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[25]),
        .O(\rdata[25]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[26]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[26]_i_2_n_0 ),
        .I2(\rdata[26]_i_3_n_0 ),
        .I3(\rdata[26]_i_4_n_0 ),
        .O(rdata[26]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[26]_i_2 
       (.I0(ro_in[58]),
        .I1(ro_in[26]),
        .I2(Q[25]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[26]_i_3 
       (.I0(ro_out[26]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[58]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[26]_i_4 
       (.I0(\rdata[26]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[26]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[26]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[26]_i_5 
       (.I0(a[26]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[58]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[26]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[26]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[26]_i_6 
       (.I0(d[58]),
        .I1(d[26]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[58]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[26]_i_7 
       (.I0(c[58]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[26]),
        .O(\rdata[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[27]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[27]_i_2_n_0 ),
        .I2(\rdata[27]_i_3_n_0 ),
        .I3(\rdata[27]_i_4_n_0 ),
        .O(rdata[27]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[27]_i_2 
       (.I0(ro_in[59]),
        .I1(ro_in[27]),
        .I2(Q[26]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[27]_i_3 
       (.I0(ro_out[27]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[59]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[27]_i_4 
       (.I0(\rdata[27]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[27]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[27]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[27]_i_5 
       (.I0(a[27]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[59]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[27]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[27]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[27]_i_6 
       (.I0(d[59]),
        .I1(d[27]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[59]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[27]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[27]_i_7 
       (.I0(c[59]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[27]),
        .O(\rdata[27]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[28]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[28]_i_2_n_0 ),
        .I2(\rdata[28]_i_3_n_0 ),
        .I3(\rdata[28]_i_4_n_0 ),
        .O(rdata[28]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[28]_i_2 
       (.I0(ro_in[60]),
        .I1(ro_in[28]),
        .I2(Q[27]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[28]_i_3 
       (.I0(ro_out[28]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[60]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[28]_i_4 
       (.I0(\rdata[28]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[28]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[28]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[28]_i_5 
       (.I0(a[28]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[60]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[28]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[28]_i_6 
       (.I0(d[60]),
        .I1(d[28]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[60]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[28]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[28]_i_7 
       (.I0(c[60]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[28]),
        .O(\rdata[28]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[29]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[29]_i_2_n_0 ),
        .I2(\rdata[29]_i_3_n_0 ),
        .I3(\rdata[29]_i_4_n_0 ),
        .O(rdata[29]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[29]_i_2 
       (.I0(ro_in[61]),
        .I1(ro_in[29]),
        .I2(Q[28]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[29]_i_3 
       (.I0(ro_out[29]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[61]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[29]_i_4 
       (.I0(\rdata[29]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[29]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[29]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[29]_i_5 
       (.I0(a[29]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[61]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[29]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[29]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[29]_i_6 
       (.I0(d[61]),
        .I1(d[29]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[61]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[29]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[29]_i_7 
       (.I0(c[61]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[29]),
        .O(\rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444445455)) 
    \rdata[2]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(\rdata[2]_i_2_n_0 ),
        .I2(\rdata[2]_i_3_n_0 ),
        .I3(\rdata[2]_i_4_n_0 ),
        .I4(\rdata[2]_i_5_n_0 ),
        .I5(\rdata[2]_i_6_n_0 ),
        .O(\rdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h0000E200)) 
    \rdata[2]_i_2 
       (.I0(\rdata[2]_i_7_n_0 ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\rdata[2]_i_8_n_0 ),
        .I3(s_axi_control_ARADDR[6]),
        .I4(s_axi_control_ARADDR[5]),
        .O(\rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2C200000FFFFFFFF)) 
    \rdata[2]_i_3 
       (.I0(c[34]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(c[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFBBEFEEEFFFEF)) 
    \rdata[2]_i_4 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(b[34]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(d[2]),
        .I5(d[34]),
        .O(\rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFFFB)) 
    \rdata[2]_i_5 
       (.I0(s_axi_control_ARADDR[6]),
        .I1(ap_idle),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F55FF33)) 
    \rdata[2]_i_6 
       (.I0(a[34]),
        .I1(a[2]),
        .I2(b[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[7]_i_10_n_0 ),
        .O(\rdata[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[2]_i_7 
       (.I0(ro_in[34]),
        .I1(ro_in[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(Q[1]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[2]_i_8 
       (.I0(ro_out[34]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(ro_out[2]),
        .O(\rdata[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[30]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[30]_i_2_n_0 ),
        .I2(\rdata[30]_i_3_n_0 ),
        .I3(\rdata[30]_i_4_n_0 ),
        .O(rdata[30]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[30]_i_2 
       (.I0(ro_in[62]),
        .I1(ro_in[30]),
        .I2(Q[29]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[30]_i_3 
       (.I0(ro_out[30]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[62]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[30]_i_4 
       (.I0(\rdata[30]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[30]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[30]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[30]_i_5 
       (.I0(a[30]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[62]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[30]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[30]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[30]_i_6 
       (.I0(d[62]),
        .I1(d[30]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[62]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[30]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[30]_i_7 
       (.I0(c[62]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[30]),
        .O(\rdata[30]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \rdata[31]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(areset),
        .I2(FSM_sequential_rstate_reg_0),
        .O(ar_hs));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[31]_i_10 
       (.I0(c[63]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[31]),
        .O(\rdata[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[31]_i_2 
       (.I0(\rdata[31]_i_3_n_0 ),
        .I1(\rdata[31]_i_4_n_0 ),
        .I2(\rdata[31]_i_5_n_0 ),
        .I3(\rdata[31]_i_6_n_0 ),
        .O(rdata[31]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[31]_i_3 
       (.I0(ro_in[63]),
        .I1(ro_in[31]),
        .I2(Q[30]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \rdata[31]_i_4 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(s_axi_control_ARADDR[5]),
        .O(\rdata[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[31]_i_5 
       (.I0(ro_out[31]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[63]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[31]_i_6 
       (.I0(\rdata[31]_i_8_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[31]_i_9_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[31]_i_10_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    \rdata[31]_i_7 
       (.I0(s_axi_control_ARADDR[6]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[5]),
        .O(\rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[31]_i_8 
       (.I0(a[31]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[63]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[31]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[31]_i_9 
       (.I0(d[63]),
        .I1(d[31]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[63]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444445455)) 
    \rdata[3]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(\rdata[3]_i_2_n_0 ),
        .I2(\rdata[3]_i_3_n_0 ),
        .I3(\rdata[3]_i_4_n_0 ),
        .I4(\rdata[3]_i_5_n_0 ),
        .I5(\rdata[3]_i_6_n_0 ),
        .O(\rdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h0000E200)) 
    \rdata[3]_i_2 
       (.I0(\rdata[3]_i_7_n_0 ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\rdata[3]_i_8_n_0 ),
        .I3(s_axi_control_ARADDR[6]),
        .I4(s_axi_control_ARADDR[5]),
        .O(\rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2C200000FFFFFFFF)) 
    \rdata[3]_i_3 
       (.I0(c[35]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(c[3]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFBBEFEEEFFFEF)) 
    \rdata[3]_i_4 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(b[35]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(d[3]),
        .I5(d[35]),
        .O(\rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFFFB)) 
    \rdata[3]_i_5 
       (.I0(s_axi_control_ARADDR[6]),
        .I1(ap_done),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F55FF33)) 
    \rdata[3]_i_6 
       (.I0(a[35]),
        .I1(a[3]),
        .I2(b[3]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[7]_i_10_n_0 ),
        .O(\rdata[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[3]_i_7 
       (.I0(ro_in[35]),
        .I1(ro_in[3]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(Q[2]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[3]_i_8 
       (.I0(ro_out[35]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(ro_out[3]),
        .O(\rdata[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[4]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[4]_i_2_n_0 ),
        .I2(\rdata[4]_i_3_n_0 ),
        .I3(\rdata[4]_i_4_n_0 ),
        .O(rdata[4]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[4]_i_2 
       (.I0(ro_in[36]),
        .I1(ro_in[4]),
        .I2(Q[3]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[4]_i_3 
       (.I0(ro_out[4]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[36]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[4]_i_4 
       (.I0(\rdata[4]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[4]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[4]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[4]_i_5 
       (.I0(a[4]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[36]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[4]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[4]_i_6 
       (.I0(d[36]),
        .I1(d[4]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[36]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[4]_i_7 
       (.I0(c[36]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[4]),
        .O(\rdata[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[5]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[5]_i_2_n_0 ),
        .I2(\rdata[5]_i_3_n_0 ),
        .I3(\rdata[5]_i_4_n_0 ),
        .O(rdata[5]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[5]_i_2 
       (.I0(ro_in[37]),
        .I1(ro_in[5]),
        .I2(Q[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[5]_i_3 
       (.I0(ro_out[5]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[37]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[5]_i_4 
       (.I0(\rdata[5]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[5]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[5]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[5]_i_5 
       (.I0(a[5]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[37]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[5]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[5]_i_6 
       (.I0(d[37]),
        .I1(d[5]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[37]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[5]_i_7 
       (.I0(c[37]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[5]),
        .O(\rdata[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[6]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[6]_i_2_n_0 ),
        .I2(\rdata[6]_i_3_n_0 ),
        .I3(\rdata[6]_i_4_n_0 ),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[6]_i_2 
       (.I0(ro_in[38]),
        .I1(ro_in[6]),
        .I2(Q[5]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[6]_i_3 
       (.I0(ro_out[6]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[38]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[6]_i_4 
       (.I0(\rdata[6]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[6]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[6]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[6]_i_5 
       (.I0(a[6]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[38]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[6]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[6]_i_6 
       (.I0(d[38]),
        .I1(d[6]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[38]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[6]_i_7 
       (.I0(c[38]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[6]),
        .O(\rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444445455)) 
    \rdata[7]_i_1 
       (.I0(\rdata[7]_i_2_n_0 ),
        .I1(\rdata[7]_i_3_n_0 ),
        .I2(\rdata[7]_i_4_n_0 ),
        .I3(\rdata[7]_i_5_n_0 ),
        .I4(\rdata[7]_i_6_n_0 ),
        .I5(\rdata[7]_i_7_n_0 ),
        .O(\rdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rdata[7]_i_10 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .O(\rdata[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[7]_i_2 
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARADDR[1]),
        .O(\rdata[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h0000E200)) 
    \rdata[7]_i_3 
       (.I0(\rdata[7]_i_8_n_0 ),
        .I1(s_axi_control_ARADDR[4]),
        .I2(\rdata[7]_i_9_n_0 ),
        .I3(s_axi_control_ARADDR[6]),
        .I4(s_axi_control_ARADDR[5]),
        .O(\rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2C200000FFFFFFFF)) 
    \rdata[7]_i_4 
       (.I0(c[39]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(c[7]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFBBEFEEEFFFEF)) 
    \rdata[7]_i_5 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(b[39]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(d[7]),
        .I5(d[39]),
        .O(\rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAFFFB)) 
    \rdata[7]_i_6 
       (.I0(s_axi_control_ARADDR[6]),
        .I1(int_auto_restart_reg_n_0),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[5]),
        .O(\rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F55FF33)) 
    \rdata[7]_i_7 
       (.I0(a[39]),
        .I1(a[7]),
        .I2(b[7]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[7]_i_10_n_0 ),
        .O(\rdata[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[7]_i_8 
       (.I0(ro_in[39]),
        .I1(ro_in[7]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(Q[6]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[7]_i_9 
       (.I0(ro_out[39]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(ro_out[7]),
        .O(\rdata[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[8]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[8]_i_2_n_0 ),
        .I2(\rdata[8]_i_3_n_0 ),
        .I3(\rdata[8]_i_4_n_0 ),
        .O(rdata[8]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[8]_i_2 
       (.I0(ro_in[40]),
        .I1(ro_in[8]),
        .I2(Q[7]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[8]_i_3 
       (.I0(ro_out[8]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[40]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[8]_i_4 
       (.I0(\rdata[8]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[8]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[8]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[8]_i_5 
       (.I0(a[8]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[40]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[8]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[8]_i_6 
       (.I0(d[40]),
        .I1(d[8]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[40]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[8]_i_7 
       (.I0(c[40]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[8]),
        .O(\rdata[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF10)) 
    \rdata[9]_i_1 
       (.I0(\rdata[31]_i_4_n_0 ),
        .I1(\rdata[9]_i_2_n_0 ),
        .I2(\rdata[9]_i_3_n_0 ),
        .I3(\rdata[9]_i_4_n_0 ),
        .O(rdata[9]));
  LUT6 #(
    .INIT(64'h0000000055FF330F)) 
    \rdata[9]_i_2 
       (.I0(ro_in[41]),
        .I1(ro_in[9]),
        .I2(Q[8]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[31]_i_7_n_0 ),
        .O(\rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3808FFFF)) 
    \rdata[9]_i_3 
       (.I0(ro_out[9]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(ro_out[41]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \rdata[9]_i_4 
       (.I0(\rdata[9]_i_5_n_0 ),
        .I1(s_axi_control_ARADDR[5]),
        .I2(\rdata[9]_i_6_n_0 ),
        .I3(s_axi_control_ARADDR[4]),
        .I4(\rdata[9]_i_7_n_0 ),
        .I5(\rdata[24]_i_4_n_0 ),
        .O(\rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCE200E200000000)) 
    \rdata[9]_i_5 
       (.I0(a[9]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(a[41]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(b[9]),
        .I5(s_axi_control_ARADDR[4]),
        .O(\rdata[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[9]_i_6 
       (.I0(d[41]),
        .I1(d[9]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(b[41]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[9]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \rdata[9]_i_7 
       (.I0(c[41]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(c[9]),
        .O(\rdata[9]_i_7_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  MUXF8 \rdata_reg[0]_i_4 
       (.I0(\rdata_reg[0]_i_5_n_0 ),
        .I1(\rdata_reg[0]_i_6_n_0 ),
        .O(\rdata_reg[0]_i_4_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  MUXF7 \rdata_reg[0]_i_5 
       (.I0(\rdata[0]_i_7_n_0 ),
        .I1(\rdata[0]_i_8_n_0 ),
        .O(\rdata_reg[0]_i_5_n_0 ),
        .S(s_axi_control_ARADDR[4]));
  MUXF7 \rdata_reg[0]_i_6 
       (.I0(\rdata[0]_i_9_n_0 ),
        .I1(\rdata[0]_i_10_n_0 ),
        .O(\rdata_reg[0]_i_6_n_0 ),
        .S(s_axi_control_ARADDR[4]));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[10]),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[11]),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[12]),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[13]),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[14]),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[15]),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[16]),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[17]),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[18]),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[19]),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  MUXF8 \rdata_reg[1]_i_4 
       (.I0(\rdata_reg[1]_i_5_n_0 ),
        .I1(\rdata_reg[1]_i_6_n_0 ),
        .O(\rdata_reg[1]_i_4_n_0 ),
        .S(s_axi_control_ARADDR[5]));
  MUXF7 \rdata_reg[1]_i_5 
       (.I0(\rdata[1]_i_7_n_0 ),
        .I1(\rdata[1]_i_8_n_0 ),
        .O(\rdata_reg[1]_i_5_n_0 ),
        .S(s_axi_control_ARADDR[4]));
  MUXF7 \rdata_reg[1]_i_6 
       (.I0(\rdata[1]_i_9_n_0 ),
        .I1(\rdata[1]_i_10_n_0 ),
        .O(\rdata_reg[1]_i_6_n_0 ),
        .S(s_axi_control_ARADDR[4]));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[20]),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[21]),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[22]),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[23]),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[24]),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[25]),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[26]),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[27]),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[28]),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[29]),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[2]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[30]),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[31]),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[3]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[7]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[8]),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[9]),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_control_ARREADY_INST_0
       (.I0(areset),
        .I1(FSM_sequential_rstate_reg_0),
        .O(s_axi_control_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_control_AWREADY_INST_0
       (.I0(\FSM_onehot_wstate_reg_n_0_[0] ),
        .I1(areset),
        .O(s_axi_control_AWREADY));
  LUT2 #(
    .INIT(4'h2)) 
    start_i_1
       (.I0(ap_start),
        .I1(ap_start_r),
        .O(ap_start_pulse));
  LUT3 #(
    .INIT(8'h08)) 
    \waddr[6]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg_n_0_[0] ),
        .I2(areset),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[6]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h8888B888)) 
    \wm_ctrl_length[0]_i_1 
       (.I0(length_r),
        .I1(ap_start_pulse),
        .I2(m_axi_gmem_BVALID),
        .I3(ap_done_reg),
        .I4(sent_mul),
        .O(\int_length_r_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wm_ctrl_length[31]_i_1 
       (.I0(ap_start_r),
        .I1(ap_start),
        .O(ap_start_r_reg));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[0]_i_1 
       (.I0(c[0]),
        .I1(ap_start_pulse),
        .I2(ro_out[0]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[10]_i_1 
       (.I0(c[10]),
        .I1(ap_start_pulse),
        .I2(ro_out[10]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[11]_i_1 
       (.I0(c[11]),
        .I1(ap_start_pulse),
        .I2(ro_out[11]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[12]_i_1 
       (.I0(c[12]),
        .I1(ap_start_pulse),
        .I2(ro_out[12]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[13]_i_1 
       (.I0(c[13]),
        .I1(ap_start_pulse),
        .I2(ro_out[13]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[14]_i_1 
       (.I0(c[14]),
        .I1(ap_start_pulse),
        .I2(ro_out[14]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[15]_i_1 
       (.I0(c[15]),
        .I1(ap_start_pulse),
        .I2(ro_out[15]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[16]_i_1 
       (.I0(c[16]),
        .I1(ap_start_pulse),
        .I2(ro_out[16]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[16]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[17]_i_1 
       (.I0(c[17]),
        .I1(ap_start_pulse),
        .I2(ro_out[17]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[17]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[18]_i_1 
       (.I0(c[18]),
        .I1(ap_start_pulse),
        .I2(ro_out[18]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[19]_i_1 
       (.I0(c[19]),
        .I1(ap_start_pulse),
        .I2(ro_out[19]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[1]_i_1 
       (.I0(c[1]),
        .I1(ap_start_pulse),
        .I2(ro_out[1]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[20]_i_1 
       (.I0(c[20]),
        .I1(ap_start_pulse),
        .I2(ro_out[20]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[21]_i_1 
       (.I0(c[21]),
        .I1(ap_start_pulse),
        .I2(ro_out[21]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[21]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[22]_i_1 
       (.I0(c[22]),
        .I1(ap_start_pulse),
        .I2(ro_out[22]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[22]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[23]_i_1 
       (.I0(c[23]),
        .I1(ap_start_pulse),
        .I2(ro_out[23]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[24]_i_1 
       (.I0(c[24]),
        .I1(ap_start_pulse),
        .I2(ro_out[24]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[24]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[25]_i_1 
       (.I0(c[25]),
        .I1(ap_start_pulse),
        .I2(ro_out[25]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[26]_i_1 
       (.I0(c[26]),
        .I1(ap_start_pulse),
        .I2(ro_out[26]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[27]_i_1 
       (.I0(c[27]),
        .I1(ap_start_pulse),
        .I2(ro_out[27]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[28]_i_1 
       (.I0(c[28]),
        .I1(ap_start_pulse),
        .I2(ro_out[28]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[29]_i_1 
       (.I0(c[29]),
        .I1(ap_start_pulse),
        .I2(ro_out[29]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[2]_i_1 
       (.I0(c[2]),
        .I1(ap_start_pulse),
        .I2(ro_out[2]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[30]_i_1 
       (.I0(c[30]),
        .I1(ap_start_pulse),
        .I2(ro_out[30]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[31]_i_1 
       (.I0(c[31]),
        .I1(ap_start_pulse),
        .I2(ro_out[31]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[32]_i_1 
       (.I0(c[32]),
        .I1(ap_start_pulse),
        .I2(ro_out[32]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[32]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[33]_i_1 
       (.I0(c[33]),
        .I1(ap_start_pulse),
        .I2(ro_out[33]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[33]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[34]_i_1 
       (.I0(c[34]),
        .I1(ap_start_pulse),
        .I2(ro_out[34]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[34]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[35]_i_1 
       (.I0(c[35]),
        .I1(ap_start_pulse),
        .I2(ro_out[35]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[35]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[36]_i_1 
       (.I0(c[36]),
        .I1(ap_start_pulse),
        .I2(ro_out[36]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[36]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[37]_i_1 
       (.I0(c[37]),
        .I1(ap_start_pulse),
        .I2(ro_out[37]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[37]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[38]_i_1 
       (.I0(c[38]),
        .I1(ap_start_pulse),
        .I2(ro_out[38]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[38]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[39]_i_1 
       (.I0(c[39]),
        .I1(ap_start_pulse),
        .I2(ro_out[39]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[39]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[3]_i_1 
       (.I0(c[3]),
        .I1(ap_start_pulse),
        .I2(ro_out[3]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[40]_i_1 
       (.I0(c[40]),
        .I1(ap_start_pulse),
        .I2(ro_out[40]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[40]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[41]_i_1 
       (.I0(c[41]),
        .I1(ap_start_pulse),
        .I2(ro_out[41]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[41]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[42]_i_1 
       (.I0(c[42]),
        .I1(ap_start_pulse),
        .I2(ro_out[42]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[42]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[43]_i_1 
       (.I0(c[43]),
        .I1(ap_start_pulse),
        .I2(ro_out[43]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[43]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[44]_i_1 
       (.I0(c[44]),
        .I1(ap_start_pulse),
        .I2(ro_out[44]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[44]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[45]_i_1 
       (.I0(c[45]),
        .I1(ap_start_pulse),
        .I2(ro_out[45]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[45]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[46]_i_1 
       (.I0(c[46]),
        .I1(ap_start_pulse),
        .I2(ro_out[46]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[46]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[47]_i_1 
       (.I0(c[47]),
        .I1(ap_start_pulse),
        .I2(ro_out[47]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[47]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[48]_i_1 
       (.I0(c[48]),
        .I1(ap_start_pulse),
        .I2(ro_out[48]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[48]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[49]_i_1 
       (.I0(c[49]),
        .I1(ap_start_pulse),
        .I2(ro_out[49]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[49]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[4]_i_1 
       (.I0(c[4]),
        .I1(ap_start_pulse),
        .I2(ro_out[4]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[50]_i_1 
       (.I0(c[50]),
        .I1(ap_start_pulse),
        .I2(ro_out[50]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[50]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[51]_i_1 
       (.I0(c[51]),
        .I1(ap_start_pulse),
        .I2(ro_out[51]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[51]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[52]_i_1 
       (.I0(c[52]),
        .I1(ap_start_pulse),
        .I2(ro_out[52]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[52]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[53]_i_1 
       (.I0(c[53]),
        .I1(ap_start_pulse),
        .I2(ro_out[53]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[53]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[54]_i_1 
       (.I0(c[54]),
        .I1(ap_start_pulse),
        .I2(ro_out[54]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[54]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[55]_i_1 
       (.I0(c[55]),
        .I1(ap_start_pulse),
        .I2(ro_out[55]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[55]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[56]_i_1 
       (.I0(c[56]),
        .I1(ap_start_pulse),
        .I2(ro_out[56]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[56]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[57]_i_1 
       (.I0(c[57]),
        .I1(ap_start_pulse),
        .I2(ro_out[57]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[57]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[58]_i_1 
       (.I0(c[58]),
        .I1(ap_start_pulse),
        .I2(ro_out[58]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[58]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[59]_i_1 
       (.I0(c[59]),
        .I1(ap_start_pulse),
        .I2(ro_out[59]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[59]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[5]_i_1 
       (.I0(c[5]),
        .I1(ap_start_pulse),
        .I2(ro_out[5]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[60]_i_1 
       (.I0(c[60]),
        .I1(ap_start_pulse),
        .I2(ro_out[60]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[60]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[61]_i_1 
       (.I0(c[61]),
        .I1(ap_start_pulse),
        .I2(ro_out[61]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[61]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[62]_i_1 
       (.I0(c[62]),
        .I1(ap_start_pulse),
        .I2(ro_out[62]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[62]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[63]_i_1 
       (.I0(c[63]),
        .I1(ap_start_pulse),
        .I2(ro_out[63]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[63]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[6]_i_1 
       (.I0(c[6]),
        .I1(ap_start_pulse),
        .I2(ro_out[6]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[7]_i_1 
       (.I0(c[7]),
        .I1(ap_start_pulse),
        .I2(ro_out[7]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[8]_i_1 
       (.I0(c[8]),
        .I1(ap_start_pulse),
        .I2(ro_out[8]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \wm_ctrl_offset[9]_i_1 
       (.I0(c[9]),
        .I1(ap_start_pulse),
        .I2(ro_out[9]),
        .I3(m_axi_gmem_BVALID),
        .I4(ap_done_reg),
        .I5(sent_mul),
        .O(D[9]));
endmodule

module ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter
   (m_axi_gmem_AWLEN,
    \num_transactions_reg[15] ,
    awvalid_r_reg,
    areset,
    ap_clk,
    start,
    m_axi_gmem_AWREADY,
    \count_r_reg[23]_0 ,
    Q,
    \m_axi_gmem_AWLEN[7] ,
    \count_r_reg[7]_0 );
  output [7:0]m_axi_gmem_AWLEN;
  output \num_transactions_reg[15] ;
  output awvalid_r_reg;
  input areset;
  input ap_clk;
  input start;
  input m_axi_gmem_AWREADY;
  input \count_r_reg[23]_0 ;
  input [23:0]Q;
  input [7:0]\m_axi_gmem_AWLEN[7] ;
  input \count_r_reg[7]_0 ;

  wire [23:0]Q;
  wire ap_clk;
  wire areset;
  wire aw_final_transaction;
  wire awvalid_r_reg;
  wire \count_r[0]_i_10__0_n_0 ;
  wire \count_r[0]_i_11__0_n_0 ;
  wire \count_r[0]_i_12__0_n_0 ;
  wire \count_r[0]_i_13__0_n_0 ;
  wire \count_r[0]_i_14__0_n_0 ;
  wire \count_r[0]_i_15__0_n_0 ;
  wire \count_r[0]_i_16__0_n_0 ;
  wire \count_r[0]_i_17__1_n_0 ;
  wire \count_r[0]_i_18__0_n_0 ;
  wire \count_r[0]_i_1__4_n_0 ;
  wire \count_r[0]_i_4__0_n_0 ;
  wire \count_r[0]_i_5__0_n_0 ;
  wire \count_r[0]_i_6__0_n_0 ;
  wire \count_r[0]_i_7__0_n_0 ;
  wire \count_r[0]_i_8__0_n_0 ;
  wire \count_r[0]_i_9__0_n_0 ;
  wire \count_r[16]_i_10__0_n_0 ;
  wire \count_r[16]_i_11__0_n_0 ;
  wire \count_r[16]_i_12__0_n_0 ;
  wire \count_r[16]_i_13__0_n_0 ;
  wire \count_r[16]_i_14__0_n_0 ;
  wire \count_r[16]_i_15__0_n_0 ;
  wire \count_r[16]_i_16__0_n_0 ;
  wire \count_r[16]_i_2__0_n_0 ;
  wire \count_r[16]_i_3__0_n_0 ;
  wire \count_r[16]_i_4__0_n_0 ;
  wire \count_r[16]_i_5__0_n_0 ;
  wire \count_r[16]_i_6__0_n_0 ;
  wire \count_r[16]_i_7__0_n_0 ;
  wire \count_r[16]_i_8__0_n_0 ;
  wire \count_r[16]_i_9__1_n_0 ;
  wire \count_r[8]_i_10__0_n_0 ;
  wire \count_r[8]_i_11__0_n_0 ;
  wire \count_r[8]_i_12__0_n_0 ;
  wire \count_r[8]_i_13__0_n_0 ;
  wire \count_r[8]_i_14__0_n_0 ;
  wire \count_r[8]_i_15__0_n_0 ;
  wire \count_r[8]_i_16__0_n_0 ;
  wire \count_r[8]_i_17__0_n_0 ;
  wire \count_r[8]_i_2__0_n_0 ;
  wire \count_r[8]_i_3__0_n_0 ;
  wire \count_r[8]_i_4__0_n_0 ;
  wire \count_r[8]_i_5__0_n_0 ;
  wire \count_r[8]_i_6__0_n_0 ;
  wire \count_r[8]_i_7__0_n_0 ;
  wire \count_r[8]_i_8__0_n_0 ;
  wire \count_r[8]_i_9__0_n_0 ;
  wire \count_r_reg[0]_i_2__0_n_0 ;
  wire \count_r_reg[0]_i_2__0_n_1 ;
  wire \count_r_reg[0]_i_2__0_n_10 ;
  wire \count_r_reg[0]_i_2__0_n_11 ;
  wire \count_r_reg[0]_i_2__0_n_12 ;
  wire \count_r_reg[0]_i_2__0_n_13 ;
  wire \count_r_reg[0]_i_2__0_n_14 ;
  wire \count_r_reg[0]_i_2__0_n_15 ;
  wire \count_r_reg[0]_i_2__0_n_2 ;
  wire \count_r_reg[0]_i_2__0_n_3 ;
  wire \count_r_reg[0]_i_2__0_n_4 ;
  wire \count_r_reg[0]_i_2__0_n_5 ;
  wire \count_r_reg[0]_i_2__0_n_6 ;
  wire \count_r_reg[0]_i_2__0_n_7 ;
  wire \count_r_reg[0]_i_2__0_n_8 ;
  wire \count_r_reg[0]_i_2__0_n_9 ;
  wire \count_r_reg[16]_i_1__0_n_1 ;
  wire \count_r_reg[16]_i_1__0_n_10 ;
  wire \count_r_reg[16]_i_1__0_n_11 ;
  wire \count_r_reg[16]_i_1__0_n_12 ;
  wire \count_r_reg[16]_i_1__0_n_13 ;
  wire \count_r_reg[16]_i_1__0_n_14 ;
  wire \count_r_reg[16]_i_1__0_n_15 ;
  wire \count_r_reg[16]_i_1__0_n_2 ;
  wire \count_r_reg[16]_i_1__0_n_3 ;
  wire \count_r_reg[16]_i_1__0_n_4 ;
  wire \count_r_reg[16]_i_1__0_n_5 ;
  wire \count_r_reg[16]_i_1__0_n_6 ;
  wire \count_r_reg[16]_i_1__0_n_7 ;
  wire \count_r_reg[16]_i_1__0_n_8 ;
  wire \count_r_reg[16]_i_1__0_n_9 ;
  wire \count_r_reg[23]_0 ;
  wire \count_r_reg[7]_0 ;
  wire \count_r_reg[8]_i_1__0_n_0 ;
  wire \count_r_reg[8]_i_1__0_n_1 ;
  wire \count_r_reg[8]_i_1__0_n_10 ;
  wire \count_r_reg[8]_i_1__0_n_11 ;
  wire \count_r_reg[8]_i_1__0_n_12 ;
  wire \count_r_reg[8]_i_1__0_n_13 ;
  wire \count_r_reg[8]_i_1__0_n_14 ;
  wire \count_r_reg[8]_i_1__0_n_15 ;
  wire \count_r_reg[8]_i_1__0_n_2 ;
  wire \count_r_reg[8]_i_1__0_n_3 ;
  wire \count_r_reg[8]_i_1__0_n_4 ;
  wire \count_r_reg[8]_i_1__0_n_5 ;
  wire \count_r_reg[8]_i_1__0_n_6 ;
  wire \count_r_reg[8]_i_1__0_n_7 ;
  wire \count_r_reg[8]_i_1__0_n_8 ;
  wire \count_r_reg[8]_i_1__0_n_9 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[10] ;
  wire \count_r_reg_n_0_[11] ;
  wire \count_r_reg_n_0_[12] ;
  wire \count_r_reg_n_0_[13] ;
  wire \count_r_reg_n_0_[14] ;
  wire \count_r_reg_n_0_[15] ;
  wire \count_r_reg_n_0_[16] ;
  wire \count_r_reg_n_0_[17] ;
  wire \count_r_reg_n_0_[18] ;
  wire \count_r_reg_n_0_[19] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[20] ;
  wire \count_r_reg_n_0_[21] ;
  wire \count_r_reg_n_0_[22] ;
  wire \count_r_reg_n_0_[23] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire \count_r_reg_n_0_[4] ;
  wire \count_r_reg_n_0_[5] ;
  wire \count_r_reg_n_0_[6] ;
  wire \count_r_reg_n_0_[7] ;
  wire \count_r_reg_n_0_[8] ;
  wire \count_r_reg_n_0_[9] ;
  wire is_zero_r_i_1__1_n_0;
  wire is_zero_r_i_2__4_n_0;
  wire is_zero_r_i_3__0_n_0;
  wire is_zero_r_i_4__1_n_0;
  wire is_zero_r_i_5__0_n_0;
  wire is_zero_r_i_6__0_n_0;
  wire is_zero_r_i_7__0_n_0;
  wire [7:0]m_axi_gmem_AWLEN;
  wire [7:0]\m_axi_gmem_AWLEN[7] ;
  wire \m_axi_gmem_AWLEN[7]_INST_0_i_2_n_0 ;
  wire \m_axi_gmem_AWLEN[7]_INST_0_i_3_n_0 ;
  wire \m_axi_gmem_AWLEN[7]_INST_0_i_4_n_0 ;
  wire \m_axi_gmem_AWLEN[7]_INST_0_i_5_n_0 ;
  wire \m_axi_gmem_AWLEN[7]_INST_0_i_6_n_0 ;
  wire \m_axi_gmem_AWLEN[7]_INST_0_i_7_n_0 ;
  wire m_axi_gmem_AWREADY;
  wire \num_transactions_reg[15] ;
  wire start;
  wire [7:7]\NLW_count_r_reg[16]_i_1__0_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_10__0 
       (.I0(start),
        .O(\count_r[0]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_11__0 
       (.I0(\count_r_reg_n_0_[7] ),
        .I1(start),
        .I2(Q[7]),
        .O(\count_r[0]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_12__0 
       (.I0(\count_r_reg_n_0_[6] ),
        .I1(start),
        .I2(Q[6]),
        .O(\count_r[0]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_13__0 
       (.I0(\count_r_reg_n_0_[5] ),
        .I1(start),
        .I2(Q[5]),
        .O(\count_r[0]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_14__0 
       (.I0(\count_r_reg_n_0_[4] ),
        .I1(start),
        .I2(Q[4]),
        .O(\count_r[0]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_15__0 
       (.I0(\count_r_reg_n_0_[3] ),
        .I1(start),
        .I2(Q[3]),
        .O(\count_r[0]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_16__0 
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(start),
        .I2(Q[2]),
        .O(\count_r[0]_i_16__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_17__1 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(start),
        .I2(Q[1]),
        .O(\count_r[0]_i_17__1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[0]_i_18__0 
       (.I0(Q[0]),
        .I1(start),
        .I2(\count_r_reg_n_0_[0] ),
        .O(\count_r[0]_i_18__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \count_r[0]_i_1__4 
       (.I0(start),
        .I1(m_axi_gmem_AWREADY),
        .I2(\count_r_reg[23]_0 ),
        .O(\count_r[0]_i_1__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_4__0 
       (.I0(start),
        .O(\count_r[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_5__0 
       (.I0(start),
        .O(\count_r[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_6__0 
       (.I0(start),
        .O(\count_r[0]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_7__0 
       (.I0(start),
        .O(\count_r[0]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_8__0 
       (.I0(start),
        .O(\count_r[0]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_9__0 
       (.I0(start),
        .O(\count_r[0]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_10__0 
       (.I0(\count_r_reg_n_0_[22] ),
        .I1(start),
        .I2(Q[22]),
        .O(\count_r[16]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_11__0 
       (.I0(\count_r_reg_n_0_[21] ),
        .I1(start),
        .I2(Q[21]),
        .O(\count_r[16]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_12__0 
       (.I0(\count_r_reg_n_0_[20] ),
        .I1(start),
        .I2(Q[20]),
        .O(\count_r[16]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_13__0 
       (.I0(\count_r_reg_n_0_[19] ),
        .I1(start),
        .I2(Q[19]),
        .O(\count_r[16]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_14__0 
       (.I0(\count_r_reg_n_0_[18] ),
        .I1(start),
        .I2(Q[18]),
        .O(\count_r[16]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_15__0 
       (.I0(\count_r_reg_n_0_[17] ),
        .I1(start),
        .I2(Q[17]),
        .O(\count_r[16]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_16__0 
       (.I0(\count_r_reg_n_0_[16] ),
        .I1(start),
        .I2(Q[16]),
        .O(\count_r[16]_i_16__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_2__0 
       (.I0(start),
        .O(\count_r[16]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_3__0 
       (.I0(start),
        .O(\count_r[16]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_4__0 
       (.I0(start),
        .O(\count_r[16]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_5__0 
       (.I0(start),
        .O(\count_r[16]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_6__0 
       (.I0(start),
        .O(\count_r[16]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_7__0 
       (.I0(start),
        .O(\count_r[16]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_8__0 
       (.I0(start),
        .O(\count_r[16]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \count_r[16]_i_9__1 
       (.I0(Q[23]),
        .I1(\count_r_reg_n_0_[23] ),
        .I2(start),
        .O(\count_r[16]_i_9__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_10__0 
       (.I0(\count_r_reg_n_0_[15] ),
        .I1(start),
        .I2(Q[15]),
        .O(\count_r[8]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_11__0 
       (.I0(\count_r_reg_n_0_[14] ),
        .I1(start),
        .I2(Q[14]),
        .O(\count_r[8]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_12__0 
       (.I0(\count_r_reg_n_0_[13] ),
        .I1(start),
        .I2(Q[13]),
        .O(\count_r[8]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_13__0 
       (.I0(\count_r_reg_n_0_[12] ),
        .I1(start),
        .I2(Q[12]),
        .O(\count_r[8]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_14__0 
       (.I0(\count_r_reg_n_0_[11] ),
        .I1(start),
        .I2(Q[11]),
        .O(\count_r[8]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_15__0 
       (.I0(\count_r_reg_n_0_[10] ),
        .I1(start),
        .I2(Q[10]),
        .O(\count_r[8]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_16__0 
       (.I0(\count_r_reg_n_0_[9] ),
        .I1(start),
        .I2(Q[9]),
        .O(\count_r[8]_i_16__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_17__0 
       (.I0(\count_r_reg_n_0_[8] ),
        .I1(start),
        .I2(Q[8]),
        .O(\count_r[8]_i_17__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_2__0 
       (.I0(start),
        .O(\count_r[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_3__0 
       (.I0(start),
        .O(\count_r[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_4__0 
       (.I0(start),
        .O(\count_r[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_5__0 
       (.I0(start),
        .O(\count_r[8]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_6__0 
       (.I0(start),
        .O(\count_r[8]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_7__0 
       (.I0(start),
        .O(\count_r[8]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_8__0 
       (.I0(start),
        .O(\count_r[8]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_9__0 
       (.I0(start),
        .O(\count_r[8]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[0]_i_2__0_n_15 ),
        .Q(\count_r_reg_n_0_[0] ),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[0]_i_2__0 
       (.CI(\count_r_reg[7]_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[0]_i_2__0_n_0 ,\count_r_reg[0]_i_2__0_n_1 ,\count_r_reg[0]_i_2__0_n_2 ,\count_r_reg[0]_i_2__0_n_3 ,\count_r_reg[0]_i_2__0_n_4 ,\count_r_reg[0]_i_2__0_n_5 ,\count_r_reg[0]_i_2__0_n_6 ,\count_r_reg[0]_i_2__0_n_7 }),
        .DI({\count_r[0]_i_4__0_n_0 ,\count_r[0]_i_5__0_n_0 ,\count_r[0]_i_6__0_n_0 ,\count_r[0]_i_7__0_n_0 ,\count_r[0]_i_8__0_n_0 ,\count_r[0]_i_9__0_n_0 ,\count_r[0]_i_10__0_n_0 ,1'b0}),
        .O({\count_r_reg[0]_i_2__0_n_8 ,\count_r_reg[0]_i_2__0_n_9 ,\count_r_reg[0]_i_2__0_n_10 ,\count_r_reg[0]_i_2__0_n_11 ,\count_r_reg[0]_i_2__0_n_12 ,\count_r_reg[0]_i_2__0_n_13 ,\count_r_reg[0]_i_2__0_n_14 ,\count_r_reg[0]_i_2__0_n_15 }),
        .S({\count_r[0]_i_11__0_n_0 ,\count_r[0]_i_12__0_n_0 ,\count_r[0]_i_13__0_n_0 ,\count_r[0]_i_14__0_n_0 ,\count_r[0]_i_15__0_n_0 ,\count_r[0]_i_16__0_n_0 ,\count_r[0]_i_17__1_n_0 ,\count_r[0]_i_18__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[10] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[8]_i_1__0_n_13 ),
        .Q(\count_r_reg_n_0_[10] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[8]_i_1__0_n_12 ),
        .Q(\count_r_reg_n_0_[11] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[8]_i_1__0_n_11 ),
        .Q(\count_r_reg_n_0_[12] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[8]_i_1__0_n_10 ),
        .Q(\count_r_reg_n_0_[13] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[8]_i_1__0_n_9 ),
        .Q(\count_r_reg_n_0_[14] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[8]_i_1__0_n_8 ),
        .Q(\count_r_reg_n_0_[15] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[16]_i_1__0_n_15 ),
        .Q(\count_r_reg_n_0_[16] ),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[16]_i_1__0 
       (.CI(\count_r_reg[8]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_r_reg[16]_i_1__0_CO_UNCONNECTED [7],\count_r_reg[16]_i_1__0_n_1 ,\count_r_reg[16]_i_1__0_n_2 ,\count_r_reg[16]_i_1__0_n_3 ,\count_r_reg[16]_i_1__0_n_4 ,\count_r_reg[16]_i_1__0_n_5 ,\count_r_reg[16]_i_1__0_n_6 ,\count_r_reg[16]_i_1__0_n_7 }),
        .DI({1'b0,\count_r[16]_i_2__0_n_0 ,\count_r[16]_i_3__0_n_0 ,\count_r[16]_i_4__0_n_0 ,\count_r[16]_i_5__0_n_0 ,\count_r[16]_i_6__0_n_0 ,\count_r[16]_i_7__0_n_0 ,\count_r[16]_i_8__0_n_0 }),
        .O({\count_r_reg[16]_i_1__0_n_8 ,\count_r_reg[16]_i_1__0_n_9 ,\count_r_reg[16]_i_1__0_n_10 ,\count_r_reg[16]_i_1__0_n_11 ,\count_r_reg[16]_i_1__0_n_12 ,\count_r_reg[16]_i_1__0_n_13 ,\count_r_reg[16]_i_1__0_n_14 ,\count_r_reg[16]_i_1__0_n_15 }),
        .S({\count_r[16]_i_9__1_n_0 ,\count_r[16]_i_10__0_n_0 ,\count_r[16]_i_11__0_n_0 ,\count_r[16]_i_12__0_n_0 ,\count_r[16]_i_13__0_n_0 ,\count_r[16]_i_14__0_n_0 ,\count_r[16]_i_15__0_n_0 ,\count_r[16]_i_16__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[17] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[16]_i_1__0_n_14 ),
        .Q(\count_r_reg_n_0_[17] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[16]_i_1__0_n_13 ),
        .Q(\count_r_reg_n_0_[18] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[16]_i_1__0_n_12 ),
        .Q(\count_r_reg_n_0_[19] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[0]_i_2__0_n_14 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[16]_i_1__0_n_11 ),
        .Q(\count_r_reg_n_0_[20] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[16]_i_1__0_n_10 ),
        .Q(\count_r_reg_n_0_[21] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[16]_i_1__0_n_9 ),
        .Q(\count_r_reg_n_0_[22] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[16]_i_1__0_n_8 ),
        .Q(\count_r_reg_n_0_[23] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[0]_i_2__0_n_13 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[0]_i_2__0_n_12 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[0]_i_2__0_n_11 ),
        .Q(\count_r_reg_n_0_[4] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[0]_i_2__0_n_10 ),
        .Q(\count_r_reg_n_0_[5] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[0]_i_2__0_n_9 ),
        .Q(\count_r_reg_n_0_[6] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[0]_i_2__0_n_8 ),
        .Q(\count_r_reg_n_0_[7] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[8]_i_1__0_n_15 ),
        .Q(\count_r_reg_n_0_[8] ),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[8]_i_1__0 
       (.CI(\count_r_reg[0]_i_2__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[8]_i_1__0_n_0 ,\count_r_reg[8]_i_1__0_n_1 ,\count_r_reg[8]_i_1__0_n_2 ,\count_r_reg[8]_i_1__0_n_3 ,\count_r_reg[8]_i_1__0_n_4 ,\count_r_reg[8]_i_1__0_n_5 ,\count_r_reg[8]_i_1__0_n_6 ,\count_r_reg[8]_i_1__0_n_7 }),
        .DI({\count_r[8]_i_2__0_n_0 ,\count_r[8]_i_3__0_n_0 ,\count_r[8]_i_4__0_n_0 ,\count_r[8]_i_5__0_n_0 ,\count_r[8]_i_6__0_n_0 ,\count_r[8]_i_7__0_n_0 ,\count_r[8]_i_8__0_n_0 ,\count_r[8]_i_9__0_n_0 }),
        .O({\count_r_reg[8]_i_1__0_n_8 ,\count_r_reg[8]_i_1__0_n_9 ,\count_r_reg[8]_i_1__0_n_10 ,\count_r_reg[8]_i_1__0_n_11 ,\count_r_reg[8]_i_1__0_n_12 ,\count_r_reg[8]_i_1__0_n_13 ,\count_r_reg[8]_i_1__0_n_14 ,\count_r_reg[8]_i_1__0_n_15 }),
        .S({\count_r[8]_i_10__0_n_0 ,\count_r[8]_i_11__0_n_0 ,\count_r[8]_i_12__0_n_0 ,\count_r[8]_i_13__0_n_0 ,\count_r[8]_i_14__0_n_0 ,\count_r[8]_i_15__0_n_0 ,\count_r[8]_i_16__0_n_0 ,\count_r[8]_i_17__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[9] 
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(\count_r_reg[8]_i_1__0_n_14 ),
        .Q(\count_r_reg_n_0_[9] ),
        .R(areset));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    is_zero_r_i_1__1
       (.I0(\num_transactions_reg[15] ),
        .I1(is_zero_r_i_2__4_n_0),
        .I2(\count_r_reg_n_0_[9] ),
        .I3(\count_r_reg_n_0_[4] ),
        .I4(\count_r_reg_n_0_[11] ),
        .I5(is_zero_r_i_3__0_n_0),
        .O(is_zero_r_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    is_zero_r_i_2__4
       (.I0(awvalid_r_reg),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(start),
        .I3(is_zero_r_i_4__1_n_0),
        .I4(is_zero_r_i_5__0_n_0),
        .I5(is_zero_r_i_6__0_n_0),
        .O(is_zero_r_i_2__4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_zero_r_i_3__0
       (.I0(\count_r_reg_n_0_[5] ),
        .I1(\count_r_reg_n_0_[19] ),
        .I2(\count_r_reg_n_0_[13] ),
        .I3(\count_r_reg_n_0_[20] ),
        .I4(is_zero_r_i_7__0_n_0),
        .O(is_zero_r_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    is_zero_r_i_4__0
       (.I0(\count_r_reg[23]_0 ),
        .I1(m_axi_gmem_AWREADY),
        .O(awvalid_r_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_4__1
       (.I0(\count_r_reg_n_0_[10] ),
        .I1(\count_r_reg_n_0_[7] ),
        .I2(\count_r_reg_n_0_[12] ),
        .I3(\count_r_reg_n_0_[6] ),
        .O(is_zero_r_i_4__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_5__0
       (.I0(\count_r_reg_n_0_[23] ),
        .I1(\count_r_reg_n_0_[2] ),
        .I2(\count_r_reg_n_0_[8] ),
        .I3(\count_r_reg_n_0_[1] ),
        .O(is_zero_r_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_6__0
       (.I0(\count_r_reg_n_0_[17] ),
        .I1(\count_r_reg_n_0_[15] ),
        .I2(\count_r_reg_n_0_[22] ),
        .I3(\count_r_reg_n_0_[3] ),
        .O(is_zero_r_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_7__0
       (.I0(\count_r_reg_n_0_[21] ),
        .I1(\count_r_reg_n_0_[18] ),
        .I2(\count_r_reg_n_0_[16] ),
        .I3(\count_r_reg_n_0_[14] ),
        .O(is_zero_r_i_7__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(\count_r[0]_i_1__4_n_0 ),
        .D(is_zero_r_i_1__1_n_0),
        .Q(aw_final_transaction),
        .S(areset));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_AWLEN[0]_INST_0 
       (.I0(\m_axi_gmem_AWLEN[7] [0]),
        .I1(\num_transactions_reg[15] ),
        .I2(aw_final_transaction),
        .O(m_axi_gmem_AWLEN[0]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_AWLEN[1]_INST_0 
       (.I0(\m_axi_gmem_AWLEN[7] [1]),
        .I1(\num_transactions_reg[15] ),
        .I2(aw_final_transaction),
        .O(m_axi_gmem_AWLEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_AWLEN[2]_INST_0 
       (.I0(\m_axi_gmem_AWLEN[7] [2]),
        .I1(\num_transactions_reg[15] ),
        .I2(aw_final_transaction),
        .O(m_axi_gmem_AWLEN[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_AWLEN[3]_INST_0 
       (.I0(\m_axi_gmem_AWLEN[7] [3]),
        .I1(\num_transactions_reg[15] ),
        .I2(aw_final_transaction),
        .O(m_axi_gmem_AWLEN[3]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_AWLEN[4]_INST_0 
       (.I0(\m_axi_gmem_AWLEN[7] [4]),
        .I1(\num_transactions_reg[15] ),
        .I2(aw_final_transaction),
        .O(m_axi_gmem_AWLEN[4]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_AWLEN[5]_INST_0 
       (.I0(\m_axi_gmem_AWLEN[7] [5]),
        .I1(\num_transactions_reg[15] ),
        .I2(aw_final_transaction),
        .O(m_axi_gmem_AWLEN[5]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_AWLEN[6]_INST_0 
       (.I0(\m_axi_gmem_AWLEN[7] [6]),
        .I1(\num_transactions_reg[15] ),
        .I2(aw_final_transaction),
        .O(m_axi_gmem_AWLEN[6]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_AWLEN[7]_INST_0 
       (.I0(\m_axi_gmem_AWLEN[7] [7]),
        .I1(\num_transactions_reg[15] ),
        .I2(aw_final_transaction),
        .O(m_axi_gmem_AWLEN[7]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_1 
       (.I0(\m_axi_gmem_AWLEN[7]_INST_0_i_2_n_0 ),
        .I1(\m_axi_gmem_AWLEN[7]_INST_0_i_3_n_0 ),
        .I2(\m_axi_gmem_AWLEN[7]_INST_0_i_4_n_0 ),
        .I3(\m_axi_gmem_AWLEN[7]_INST_0_i_5_n_0 ),
        .I4(\m_axi_gmem_AWLEN[7]_INST_0_i_6_n_0 ),
        .I5(\m_axi_gmem_AWLEN[7]_INST_0_i_7_n_0 ),
        .O(\num_transactions_reg[15] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_2 
       (.I0(Q[15]),
        .I1(Q[14]),
        .I2(Q[10]),
        .I3(Q[3]),
        .O(\m_axi_gmem_AWLEN[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_3 
       (.I0(Q[17]),
        .I1(Q[13]),
        .I2(Q[23]),
        .I3(Q[4]),
        .O(\m_axi_gmem_AWLEN[7]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_4 
       (.I0(Q[9]),
        .I1(Q[6]),
        .I2(Q[11]),
        .O(\m_axi_gmem_AWLEN[7]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_5 
       (.I0(Q[19]),
        .I1(Q[0]),
        .I2(Q[5]),
        .I3(Q[1]),
        .O(\m_axi_gmem_AWLEN[7]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_6 
       (.I0(Q[22]),
        .I1(Q[8]),
        .I2(Q[18]),
        .I3(Q[7]),
        .O(\m_axi_gmem_AWLEN[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \m_axi_gmem_AWLEN[7]_INST_0_i_7 
       (.I0(start),
        .I1(Q[20]),
        .I2(Q[2]),
        .I3(Q[16]),
        .I4(Q[12]),
        .I5(Q[21]),
        .O(\m_axi_gmem_AWLEN[7]_INST_0_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "krnl_ro_rtl_counter" *) 
module ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter_0
   (is_zero_r_reg_0,
    start_reg,
    wm_ctrl_start0,
    m_axi_gmem_BVALID_0,
    areset,
    ap_clk,
    start,
    Q,
    is_zero_r_reg_1,
    m_axi_gmem_BVALID,
    sent_mul);
  output is_zero_r_reg_0;
  output start_reg;
  output wm_ctrl_start0;
  output m_axi_gmem_BVALID_0;
  input areset;
  input ap_clk;
  input start;
  input [23:0]Q;
  input is_zero_r_reg_1;
  input m_axi_gmem_BVALID;
  input sent_mul;

  wire [23:0]Q;
  wire ap_clk;
  wire areset;
  wire \count_r[0]_i_10__1_n_0 ;
  wire \count_r[0]_i_11__1_n_0 ;
  wire \count_r[0]_i_12__1_n_0 ;
  wire \count_r[0]_i_13__1_n_0 ;
  wire \count_r[0]_i_14__1_n_0 ;
  wire \count_r[0]_i_15__1_n_0 ;
  wire \count_r[0]_i_16__1_n_0 ;
  wire \count_r[0]_i_17_n_0 ;
  wire \count_r[0]_i_3__1_n_0 ;
  wire \count_r[0]_i_4__1_n_0 ;
  wire \count_r[0]_i_5__1_n_0 ;
  wire \count_r[0]_i_6__1_n_0 ;
  wire \count_r[0]_i_7__1_n_0 ;
  wire \count_r[0]_i_8__1_n_0 ;
  wire \count_r[0]_i_9__1_n_0 ;
  wire \count_r[16]_i_10__1_n_0 ;
  wire \count_r[16]_i_11__1_n_0 ;
  wire \count_r[16]_i_12__1_n_0 ;
  wire \count_r[16]_i_13__1_n_0 ;
  wire \count_r[16]_i_14__1_n_0 ;
  wire \count_r[16]_i_15__1_n_0 ;
  wire \count_r[16]_i_16__1_n_0 ;
  wire \count_r[16]_i_2__1_n_0 ;
  wire \count_r[16]_i_3__1_n_0 ;
  wire \count_r[16]_i_4__1_n_0 ;
  wire \count_r[16]_i_5__1_n_0 ;
  wire \count_r[16]_i_6__1_n_0 ;
  wire \count_r[16]_i_7__1_n_0 ;
  wire \count_r[16]_i_8__1_n_0 ;
  wire \count_r[16]_i_9__0_n_0 ;
  wire \count_r[8]_i_10__1_n_0 ;
  wire \count_r[8]_i_11__1_n_0 ;
  wire \count_r[8]_i_12__1_n_0 ;
  wire \count_r[8]_i_13__1_n_0 ;
  wire \count_r[8]_i_14__1_n_0 ;
  wire \count_r[8]_i_15__1_n_0 ;
  wire \count_r[8]_i_16__1_n_0 ;
  wire \count_r[8]_i_17__1_n_0 ;
  wire \count_r[8]_i_2__1_n_0 ;
  wire \count_r[8]_i_3__1_n_0 ;
  wire \count_r[8]_i_4__1_n_0 ;
  wire \count_r[8]_i_5__1_n_0 ;
  wire \count_r[8]_i_6__1_n_0 ;
  wire \count_r[8]_i_7__1_n_0 ;
  wire \count_r[8]_i_8__1_n_0 ;
  wire \count_r[8]_i_9__1_n_0 ;
  wire \count_r_reg[0]_i_2__1_n_0 ;
  wire \count_r_reg[0]_i_2__1_n_1 ;
  wire \count_r_reg[0]_i_2__1_n_10 ;
  wire \count_r_reg[0]_i_2__1_n_11 ;
  wire \count_r_reg[0]_i_2__1_n_12 ;
  wire \count_r_reg[0]_i_2__1_n_13 ;
  wire \count_r_reg[0]_i_2__1_n_14 ;
  wire \count_r_reg[0]_i_2__1_n_15 ;
  wire \count_r_reg[0]_i_2__1_n_2 ;
  wire \count_r_reg[0]_i_2__1_n_3 ;
  wire \count_r_reg[0]_i_2__1_n_4 ;
  wire \count_r_reg[0]_i_2__1_n_5 ;
  wire \count_r_reg[0]_i_2__1_n_6 ;
  wire \count_r_reg[0]_i_2__1_n_7 ;
  wire \count_r_reg[0]_i_2__1_n_8 ;
  wire \count_r_reg[0]_i_2__1_n_9 ;
  wire \count_r_reg[16]_i_1__1_n_1 ;
  wire \count_r_reg[16]_i_1__1_n_10 ;
  wire \count_r_reg[16]_i_1__1_n_11 ;
  wire \count_r_reg[16]_i_1__1_n_12 ;
  wire \count_r_reg[16]_i_1__1_n_13 ;
  wire \count_r_reg[16]_i_1__1_n_14 ;
  wire \count_r_reg[16]_i_1__1_n_15 ;
  wire \count_r_reg[16]_i_1__1_n_2 ;
  wire \count_r_reg[16]_i_1__1_n_3 ;
  wire \count_r_reg[16]_i_1__1_n_4 ;
  wire \count_r_reg[16]_i_1__1_n_5 ;
  wire \count_r_reg[16]_i_1__1_n_6 ;
  wire \count_r_reg[16]_i_1__1_n_7 ;
  wire \count_r_reg[16]_i_1__1_n_8 ;
  wire \count_r_reg[16]_i_1__1_n_9 ;
  wire \count_r_reg[8]_i_1__1_n_0 ;
  wire \count_r_reg[8]_i_1__1_n_1 ;
  wire \count_r_reg[8]_i_1__1_n_10 ;
  wire \count_r_reg[8]_i_1__1_n_11 ;
  wire \count_r_reg[8]_i_1__1_n_12 ;
  wire \count_r_reg[8]_i_1__1_n_13 ;
  wire \count_r_reg[8]_i_1__1_n_14 ;
  wire \count_r_reg[8]_i_1__1_n_15 ;
  wire \count_r_reg[8]_i_1__1_n_2 ;
  wire \count_r_reg[8]_i_1__1_n_3 ;
  wire \count_r_reg[8]_i_1__1_n_4 ;
  wire \count_r_reg[8]_i_1__1_n_5 ;
  wire \count_r_reg[8]_i_1__1_n_6 ;
  wire \count_r_reg[8]_i_1__1_n_7 ;
  wire \count_r_reg[8]_i_1__1_n_8 ;
  wire \count_r_reg[8]_i_1__1_n_9 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[10] ;
  wire \count_r_reg_n_0_[11] ;
  wire \count_r_reg_n_0_[12] ;
  wire \count_r_reg_n_0_[13] ;
  wire \count_r_reg_n_0_[14] ;
  wire \count_r_reg_n_0_[15] ;
  wire \count_r_reg_n_0_[16] ;
  wire \count_r_reg_n_0_[17] ;
  wire \count_r_reg_n_0_[18] ;
  wire \count_r_reg_n_0_[19] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[20] ;
  wire \count_r_reg_n_0_[21] ;
  wire \count_r_reg_n_0_[22] ;
  wire \count_r_reg_n_0_[23] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire \count_r_reg_n_0_[4] ;
  wire \count_r_reg_n_0_[5] ;
  wire \count_r_reg_n_0_[6] ;
  wire \count_r_reg_n_0_[7] ;
  wire \count_r_reg_n_0_[8] ;
  wire \count_r_reg_n_0_[9] ;
  wire is_zero_r;
  wire is_zero_r_i_1__0_n_0;
  wire is_zero_r_i_2__5_n_0;
  wire is_zero_r_i_3__1_n_0;
  wire is_zero_r_i_4__2_n_0;
  wire is_zero_r_i_5__1_n_0;
  wire is_zero_r_i_6__1_n_0;
  wire is_zero_r_i_7__1_n_0;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_1;
  wire m_axi_gmem_BVALID;
  wire m_axi_gmem_BVALID_0;
  wire sent_mul;
  wire start;
  wire start_reg;
  wire wm_ctrl_start0;
  wire [7:7]\NLW_count_r_reg[16]_i_1__1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_10__1 
       (.I0(\count_r_reg_n_0_[7] ),
        .I1(start),
        .I2(Q[7]),
        .O(\count_r[0]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_11__1 
       (.I0(\count_r_reg_n_0_[6] ),
        .I1(start),
        .I2(Q[6]),
        .O(\count_r[0]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_12__1 
       (.I0(\count_r_reg_n_0_[5] ),
        .I1(start),
        .I2(Q[5]),
        .O(\count_r[0]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_13__1 
       (.I0(\count_r_reg_n_0_[4] ),
        .I1(start),
        .I2(Q[4]),
        .O(\count_r[0]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_14__1 
       (.I0(\count_r_reg_n_0_[3] ),
        .I1(start),
        .I2(Q[3]),
        .O(\count_r[0]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_15__1 
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(start),
        .I2(Q[2]),
        .O(\count_r[0]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_16__1 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(start),
        .I2(Q[1]),
        .O(\count_r[0]_i_16__1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[0]_i_17 
       (.I0(Q[0]),
        .I1(start),
        .I2(\count_r_reg_n_0_[0] ),
        .O(\count_r[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count_r[0]_i_1__0 
       (.I0(start),
        .I1(m_axi_gmem_BVALID),
        .O(is_zero_r));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_3__0 
       (.I0(start),
        .O(start_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_3__1 
       (.I0(start),
        .O(\count_r[0]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_4__1 
       (.I0(start),
        .O(\count_r[0]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_5__1 
       (.I0(start),
        .O(\count_r[0]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_6__1 
       (.I0(start),
        .O(\count_r[0]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_7__1 
       (.I0(start),
        .O(\count_r[0]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_8__1 
       (.I0(start),
        .O(\count_r[0]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_9__1 
       (.I0(start),
        .O(\count_r[0]_i_9__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_10__1 
       (.I0(\count_r_reg_n_0_[22] ),
        .I1(start),
        .I2(Q[22]),
        .O(\count_r[16]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_11__1 
       (.I0(\count_r_reg_n_0_[21] ),
        .I1(start),
        .I2(Q[21]),
        .O(\count_r[16]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_12__1 
       (.I0(\count_r_reg_n_0_[20] ),
        .I1(start),
        .I2(Q[20]),
        .O(\count_r[16]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_13__1 
       (.I0(\count_r_reg_n_0_[19] ),
        .I1(start),
        .I2(Q[19]),
        .O(\count_r[16]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_14__1 
       (.I0(\count_r_reg_n_0_[18] ),
        .I1(start),
        .I2(Q[18]),
        .O(\count_r[16]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_15__1 
       (.I0(\count_r_reg_n_0_[17] ),
        .I1(start),
        .I2(Q[17]),
        .O(\count_r[16]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_16__1 
       (.I0(\count_r_reg_n_0_[16] ),
        .I1(start),
        .I2(Q[16]),
        .O(\count_r[16]_i_16__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_2__1 
       (.I0(start),
        .O(\count_r[16]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_3__1 
       (.I0(start),
        .O(\count_r[16]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_4__1 
       (.I0(start),
        .O(\count_r[16]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_5__1 
       (.I0(start),
        .O(\count_r[16]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_6__1 
       (.I0(start),
        .O(\count_r[16]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_7__1 
       (.I0(start),
        .O(\count_r[16]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_8__1 
       (.I0(start),
        .O(\count_r[16]_i_8__1_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \count_r[16]_i_9__0 
       (.I0(Q[23]),
        .I1(\count_r_reg_n_0_[23] ),
        .I2(start),
        .O(\count_r[16]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_10__1 
       (.I0(\count_r_reg_n_0_[15] ),
        .I1(start),
        .I2(Q[15]),
        .O(\count_r[8]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_11__1 
       (.I0(\count_r_reg_n_0_[14] ),
        .I1(start),
        .I2(Q[14]),
        .O(\count_r[8]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_12__1 
       (.I0(\count_r_reg_n_0_[13] ),
        .I1(start),
        .I2(Q[13]),
        .O(\count_r[8]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_13__1 
       (.I0(\count_r_reg_n_0_[12] ),
        .I1(start),
        .I2(Q[12]),
        .O(\count_r[8]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_14__1 
       (.I0(\count_r_reg_n_0_[11] ),
        .I1(start),
        .I2(Q[11]),
        .O(\count_r[8]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_15__1 
       (.I0(\count_r_reg_n_0_[10] ),
        .I1(start),
        .I2(Q[10]),
        .O(\count_r[8]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_16__1 
       (.I0(\count_r_reg_n_0_[9] ),
        .I1(start),
        .I2(Q[9]),
        .O(\count_r[8]_i_16__1_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_17__1 
       (.I0(\count_r_reg_n_0_[8] ),
        .I1(start),
        .I2(Q[8]),
        .O(\count_r[8]_i_17__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_2__1 
       (.I0(start),
        .O(\count_r[8]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_3__1 
       (.I0(start),
        .O(\count_r[8]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_4__1 
       (.I0(start),
        .O(\count_r[8]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_5__1 
       (.I0(start),
        .O(\count_r[8]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_6__1 
       (.I0(start),
        .O(\count_r[8]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_7__1 
       (.I0(start),
        .O(\count_r[8]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_8__1 
       (.I0(start),
        .O(\count_r[8]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_9__1 
       (.I0(start),
        .O(\count_r[8]_i_9__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__1_n_15 ),
        .Q(\count_r_reg_n_0_[0] ),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[0]_i_2__1 
       (.CI(start_reg),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[0]_i_2__1_n_0 ,\count_r_reg[0]_i_2__1_n_1 ,\count_r_reg[0]_i_2__1_n_2 ,\count_r_reg[0]_i_2__1_n_3 ,\count_r_reg[0]_i_2__1_n_4 ,\count_r_reg[0]_i_2__1_n_5 ,\count_r_reg[0]_i_2__1_n_6 ,\count_r_reg[0]_i_2__1_n_7 }),
        .DI({\count_r[0]_i_3__1_n_0 ,\count_r[0]_i_4__1_n_0 ,\count_r[0]_i_5__1_n_0 ,\count_r[0]_i_6__1_n_0 ,\count_r[0]_i_7__1_n_0 ,\count_r[0]_i_8__1_n_0 ,\count_r[0]_i_9__1_n_0 ,1'b0}),
        .O({\count_r_reg[0]_i_2__1_n_8 ,\count_r_reg[0]_i_2__1_n_9 ,\count_r_reg[0]_i_2__1_n_10 ,\count_r_reg[0]_i_2__1_n_11 ,\count_r_reg[0]_i_2__1_n_12 ,\count_r_reg[0]_i_2__1_n_13 ,\count_r_reg[0]_i_2__1_n_14 ,\count_r_reg[0]_i_2__1_n_15 }),
        .S({\count_r[0]_i_10__1_n_0 ,\count_r[0]_i_11__1_n_0 ,\count_r[0]_i_12__1_n_0 ,\count_r[0]_i_13__1_n_0 ,\count_r[0]_i_14__1_n_0 ,\count_r[0]_i_15__1_n_0 ,\count_r[0]_i_16__1_n_0 ,\count_r[0]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[10] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__1_n_13 ),
        .Q(\count_r_reg_n_0_[10] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__1_n_12 ),
        .Q(\count_r_reg_n_0_[11] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__1_n_11 ),
        .Q(\count_r_reg_n_0_[12] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__1_n_10 ),
        .Q(\count_r_reg_n_0_[13] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__1_n_9 ),
        .Q(\count_r_reg_n_0_[14] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__1_n_8 ),
        .Q(\count_r_reg_n_0_[15] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__1_n_15 ),
        .Q(\count_r_reg_n_0_[16] ),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[16]_i_1__1 
       (.CI(\count_r_reg[8]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_r_reg[16]_i_1__1_CO_UNCONNECTED [7],\count_r_reg[16]_i_1__1_n_1 ,\count_r_reg[16]_i_1__1_n_2 ,\count_r_reg[16]_i_1__1_n_3 ,\count_r_reg[16]_i_1__1_n_4 ,\count_r_reg[16]_i_1__1_n_5 ,\count_r_reg[16]_i_1__1_n_6 ,\count_r_reg[16]_i_1__1_n_7 }),
        .DI({1'b0,\count_r[16]_i_2__1_n_0 ,\count_r[16]_i_3__1_n_0 ,\count_r[16]_i_4__1_n_0 ,\count_r[16]_i_5__1_n_0 ,\count_r[16]_i_6__1_n_0 ,\count_r[16]_i_7__1_n_0 ,\count_r[16]_i_8__1_n_0 }),
        .O({\count_r_reg[16]_i_1__1_n_8 ,\count_r_reg[16]_i_1__1_n_9 ,\count_r_reg[16]_i_1__1_n_10 ,\count_r_reg[16]_i_1__1_n_11 ,\count_r_reg[16]_i_1__1_n_12 ,\count_r_reg[16]_i_1__1_n_13 ,\count_r_reg[16]_i_1__1_n_14 ,\count_r_reg[16]_i_1__1_n_15 }),
        .S({\count_r[16]_i_9__0_n_0 ,\count_r[16]_i_10__1_n_0 ,\count_r[16]_i_11__1_n_0 ,\count_r[16]_i_12__1_n_0 ,\count_r[16]_i_13__1_n_0 ,\count_r[16]_i_14__1_n_0 ,\count_r[16]_i_15__1_n_0 ,\count_r[16]_i_16__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[17] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__1_n_14 ),
        .Q(\count_r_reg_n_0_[17] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__1_n_13 ),
        .Q(\count_r_reg_n_0_[18] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__1_n_12 ),
        .Q(\count_r_reg_n_0_[19] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__1_n_14 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__1_n_11 ),
        .Q(\count_r_reg_n_0_[20] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__1_n_10 ),
        .Q(\count_r_reg_n_0_[21] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__1_n_9 ),
        .Q(\count_r_reg_n_0_[22] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1__1_n_8 ),
        .Q(\count_r_reg_n_0_[23] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__1_n_13 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__1_n_12 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__1_n_11 ),
        .Q(\count_r_reg_n_0_[4] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__1_n_10 ),
        .Q(\count_r_reg_n_0_[5] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__1_n_9 ),
        .Q(\count_r_reg_n_0_[6] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2__1_n_8 ),
        .Q(\count_r_reg_n_0_[7] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__1_n_15 ),
        .Q(\count_r_reg_n_0_[8] ),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[8]_i_1__1 
       (.CI(\count_r_reg[0]_i_2__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[8]_i_1__1_n_0 ,\count_r_reg[8]_i_1__1_n_1 ,\count_r_reg[8]_i_1__1_n_2 ,\count_r_reg[8]_i_1__1_n_3 ,\count_r_reg[8]_i_1__1_n_4 ,\count_r_reg[8]_i_1__1_n_5 ,\count_r_reg[8]_i_1__1_n_6 ,\count_r_reg[8]_i_1__1_n_7 }),
        .DI({\count_r[8]_i_2__1_n_0 ,\count_r[8]_i_3__1_n_0 ,\count_r[8]_i_4__1_n_0 ,\count_r[8]_i_5__1_n_0 ,\count_r[8]_i_6__1_n_0 ,\count_r[8]_i_7__1_n_0 ,\count_r[8]_i_8__1_n_0 ,\count_r[8]_i_9__1_n_0 }),
        .O({\count_r_reg[8]_i_1__1_n_8 ,\count_r_reg[8]_i_1__1_n_9 ,\count_r_reg[8]_i_1__1_n_10 ,\count_r_reg[8]_i_1__1_n_11 ,\count_r_reg[8]_i_1__1_n_12 ,\count_r_reg[8]_i_1__1_n_13 ,\count_r_reg[8]_i_1__1_n_14 ,\count_r_reg[8]_i_1__1_n_15 }),
        .S({\count_r[8]_i_10__1_n_0 ,\count_r[8]_i_11__1_n_0 ,\count_r[8]_i_12__1_n_0 ,\count_r[8]_i_13__1_n_0 ,\count_r[8]_i_14__1_n_0 ,\count_r[8]_i_15__1_n_0 ,\count_r[8]_i_16__1_n_0 ,\count_r[8]_i_17__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[9] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1__1_n_14 ),
        .Q(\count_r_reg_n_0_[9] ),
        .R(areset));
  LUT3 #(
    .INIT(8'hBA)) 
    is_zero_r_i_1__0
       (.I0(is_zero_r_reg_1),
        .I1(is_zero_r_i_2__5_n_0),
        .I2(is_zero_r_i_3__1_n_0),
        .O(is_zero_r_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    is_zero_r_i_2__5
       (.I0(is_zero_r_i_4__2_n_0),
        .I1(is_zero_r_i_5__1_n_0),
        .I2(m_axi_gmem_BVALID),
        .I3(\count_r_reg_n_0_[16] ),
        .I4(\count_r_reg_n_0_[6] ),
        .I5(\count_r_reg_n_0_[3] ),
        .O(is_zero_r_i_2__5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_3__1
       (.I0(\count_r_reg_n_0_[10] ),
        .I1(\count_r_reg_n_0_[14] ),
        .I2(\count_r_reg_n_0_[12] ),
        .I3(\count_r_reg_n_0_[18] ),
        .I4(is_zero_r_i_6__1_n_0),
        .I5(is_zero_r_i_7__1_n_0),
        .O(is_zero_r_i_3__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    is_zero_r_i_4__2
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(start),
        .I2(\count_r_reg_n_0_[7] ),
        .I3(\count_r_reg_n_0_[21] ),
        .I4(\count_r_reg_n_0_[1] ),
        .I5(\count_r_reg_n_0_[8] ),
        .O(is_zero_r_i_4__2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_5__1
       (.I0(\count_r_reg_n_0_[23] ),
        .I1(\count_r_reg_n_0_[19] ),
        .I2(\count_r_reg_n_0_[22] ),
        .I3(\count_r_reg_n_0_[20] ),
        .O(is_zero_r_i_5__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_6__1
       (.I0(\count_r_reg_n_0_[5] ),
        .I1(\count_r_reg_n_0_[2] ),
        .I2(\count_r_reg_n_0_[17] ),
        .I3(\count_r_reg_n_0_[9] ),
        .O(is_zero_r_i_6__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_7__1
       (.I0(\count_r_reg_n_0_[15] ),
        .I1(\count_r_reg_n_0_[4] ),
        .I2(\count_r_reg_n_0_[13] ),
        .I3(\count_r_reg_n_0_[11] ),
        .O(is_zero_r_i_7__1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(is_zero_r_i_1__0_n_0),
        .Q(is_zero_r_reg_0),
        .S(areset));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h78)) 
    sent_mul_i_1
       (.I0(m_axi_gmem_BVALID),
        .I1(is_zero_r_reg_0),
        .I2(sent_mul),
        .O(m_axi_gmem_BVALID_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h08)) 
    wm_ctrl_start_i_1
       (.I0(m_axi_gmem_BVALID),
        .I1(is_zero_r_reg_0),
        .I2(sent_mul),
        .O(wm_ctrl_start0));
endmodule

(* ORIG_REF_NAME = "krnl_ro_rtl_counter" *) 
module ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter_2
   (m_axi_gmem_ARLEN,
    start_reg,
    areset,
    ap_clk,
    start,
    Q,
    m_axi_gmem_ARREADY,
    ar_idle_reg,
    ar_idle_reg_0,
    \m_axi_gmem_ARLEN[7] ,
    ar_idle);
  output [7:0]m_axi_gmem_ARLEN;
  output start_reg;
  input areset;
  input ap_clk;
  input start;
  input [23:0]Q;
  input m_axi_gmem_ARREADY;
  input ar_idle_reg;
  input ar_idle_reg_0;
  input [7:0]\m_axi_gmem_ARLEN[7] ;
  input ar_idle;

  wire [23:0]Q;
  wire ap_clk;
  wire ar_final_transaction;
  wire ar_idle;
  wire ar_idle_reg;
  wire ar_idle_reg_0;
  wire areset;
  wire \count_r[0]_i_10_n_0 ;
  wire \count_r[0]_i_11_n_0 ;
  wire \count_r[0]_i_12_n_0 ;
  wire \count_r[0]_i_13_n_0 ;
  wire \count_r[0]_i_14_n_0 ;
  wire \count_r[0]_i_15_n_0 ;
  wire \count_r[0]_i_16_n_0 ;
  wire \count_r[0]_i_17__0_n_0 ;
  wire \count_r[0]_i_18_n_0 ;
  wire \count_r[0]_i_3_n_0 ;
  wire \count_r[0]_i_4_n_0 ;
  wire \count_r[0]_i_5_n_0 ;
  wire \count_r[0]_i_6_n_0 ;
  wire \count_r[0]_i_7_n_0 ;
  wire \count_r[0]_i_8_n_0 ;
  wire \count_r[0]_i_9_n_0 ;
  wire \count_r[16]_i_10_n_0 ;
  wire \count_r[16]_i_11_n_0 ;
  wire \count_r[16]_i_12_n_0 ;
  wire \count_r[16]_i_13_n_0 ;
  wire \count_r[16]_i_14_n_0 ;
  wire \count_r[16]_i_15_n_0 ;
  wire \count_r[16]_i_16_n_0 ;
  wire \count_r[16]_i_2_n_0 ;
  wire \count_r[16]_i_3_n_0 ;
  wire \count_r[16]_i_4_n_0 ;
  wire \count_r[16]_i_5_n_0 ;
  wire \count_r[16]_i_6_n_0 ;
  wire \count_r[16]_i_7_n_0 ;
  wire \count_r[16]_i_8_n_0 ;
  wire \count_r[16]_i_9_n_0 ;
  wire \count_r[8]_i_10_n_0 ;
  wire \count_r[8]_i_11_n_0 ;
  wire \count_r[8]_i_12_n_0 ;
  wire \count_r[8]_i_13_n_0 ;
  wire \count_r[8]_i_14_n_0 ;
  wire \count_r[8]_i_15_n_0 ;
  wire \count_r[8]_i_16_n_0 ;
  wire \count_r[8]_i_17_n_0 ;
  wire \count_r[8]_i_2_n_0 ;
  wire \count_r[8]_i_3_n_0 ;
  wire \count_r[8]_i_4_n_0 ;
  wire \count_r[8]_i_5_n_0 ;
  wire \count_r[8]_i_6_n_0 ;
  wire \count_r[8]_i_7_n_0 ;
  wire \count_r[8]_i_8_n_0 ;
  wire \count_r[8]_i_9_n_0 ;
  wire \count_r_reg[0]_i_2_n_0 ;
  wire \count_r_reg[0]_i_2_n_1 ;
  wire \count_r_reg[0]_i_2_n_10 ;
  wire \count_r_reg[0]_i_2_n_11 ;
  wire \count_r_reg[0]_i_2_n_12 ;
  wire \count_r_reg[0]_i_2_n_13 ;
  wire \count_r_reg[0]_i_2_n_14 ;
  wire \count_r_reg[0]_i_2_n_15 ;
  wire \count_r_reg[0]_i_2_n_2 ;
  wire \count_r_reg[0]_i_2_n_3 ;
  wire \count_r_reg[0]_i_2_n_4 ;
  wire \count_r_reg[0]_i_2_n_5 ;
  wire \count_r_reg[0]_i_2_n_6 ;
  wire \count_r_reg[0]_i_2_n_7 ;
  wire \count_r_reg[0]_i_2_n_8 ;
  wire \count_r_reg[0]_i_2_n_9 ;
  wire \count_r_reg[16]_i_1_n_1 ;
  wire \count_r_reg[16]_i_1_n_10 ;
  wire \count_r_reg[16]_i_1_n_11 ;
  wire \count_r_reg[16]_i_1_n_12 ;
  wire \count_r_reg[16]_i_1_n_13 ;
  wire \count_r_reg[16]_i_1_n_14 ;
  wire \count_r_reg[16]_i_1_n_15 ;
  wire \count_r_reg[16]_i_1_n_2 ;
  wire \count_r_reg[16]_i_1_n_3 ;
  wire \count_r_reg[16]_i_1_n_4 ;
  wire \count_r_reg[16]_i_1_n_5 ;
  wire \count_r_reg[16]_i_1_n_6 ;
  wire \count_r_reg[16]_i_1_n_7 ;
  wire \count_r_reg[16]_i_1_n_8 ;
  wire \count_r_reg[16]_i_1_n_9 ;
  wire \count_r_reg[8]_i_1_n_0 ;
  wire \count_r_reg[8]_i_1_n_1 ;
  wire \count_r_reg[8]_i_1_n_10 ;
  wire \count_r_reg[8]_i_1_n_11 ;
  wire \count_r_reg[8]_i_1_n_12 ;
  wire \count_r_reg[8]_i_1_n_13 ;
  wire \count_r_reg[8]_i_1_n_14 ;
  wire \count_r_reg[8]_i_1_n_15 ;
  wire \count_r_reg[8]_i_1_n_2 ;
  wire \count_r_reg[8]_i_1_n_3 ;
  wire \count_r_reg[8]_i_1_n_4 ;
  wire \count_r_reg[8]_i_1_n_5 ;
  wire \count_r_reg[8]_i_1_n_6 ;
  wire \count_r_reg[8]_i_1_n_7 ;
  wire \count_r_reg[8]_i_1_n_8 ;
  wire \count_r_reg[8]_i_1_n_9 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[10] ;
  wire \count_r_reg_n_0_[11] ;
  wire \count_r_reg_n_0_[12] ;
  wire \count_r_reg_n_0_[13] ;
  wire \count_r_reg_n_0_[14] ;
  wire \count_r_reg_n_0_[15] ;
  wire \count_r_reg_n_0_[16] ;
  wire \count_r_reg_n_0_[17] ;
  wire \count_r_reg_n_0_[18] ;
  wire \count_r_reg_n_0_[19] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[20] ;
  wire \count_r_reg_n_0_[21] ;
  wire \count_r_reg_n_0_[22] ;
  wire \count_r_reg_n_0_[23] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire \count_r_reg_n_0_[4] ;
  wire \count_r_reg_n_0_[5] ;
  wire \count_r_reg_n_0_[6] ;
  wire \count_r_reg_n_0_[7] ;
  wire \count_r_reg_n_0_[8] ;
  wire \count_r_reg_n_0_[9] ;
  wire is_zero_r;
  wire is_zero_r_i_1_n_0;
  wire is_zero_r_i_2_n_0;
  wire is_zero_r_i_3_n_0;
  wire is_zero_r_i_4_n_0;
  wire is_zero_r_i_5_n_0;
  wire is_zero_r_i_6_n_0;
  wire is_zero_r_i_7_n_0;
  wire [7:0]m_axi_gmem_ARLEN;
  wire [7:0]\m_axi_gmem_ARLEN[7] ;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_1_n_0 ;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_2_n_0 ;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_3_n_0 ;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_4_n_0 ;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_5_n_0 ;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_6_n_0 ;
  wire \m_axi_gmem_ARLEN[7]_INST_0_i_7_n_0 ;
  wire m_axi_gmem_ARREADY;
  wire start;
  wire start_reg;
  wire [7:7]\NLW_count_r_reg[16]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h5555555510000000)) 
    ar_idle_i_1
       (.I0(start),
        .I1(ar_idle_reg_0),
        .I2(ar_idle_reg),
        .I3(m_axi_gmem_ARREADY),
        .I4(ar_final_transaction),
        .I5(ar_idle),
        .O(start_reg));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \count_r[0]_i_1 
       (.I0(start),
        .I1(m_axi_gmem_ARREADY),
        .I2(ar_idle_reg),
        .I3(ar_idle_reg_0),
        .O(is_zero_r));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_10 
       (.I0(start),
        .O(\count_r[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_11 
       (.I0(\count_r_reg_n_0_[7] ),
        .I1(start),
        .I2(Q[7]),
        .O(\count_r[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_12 
       (.I0(\count_r_reg_n_0_[6] ),
        .I1(start),
        .I2(Q[6]),
        .O(\count_r[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_13 
       (.I0(\count_r_reg_n_0_[5] ),
        .I1(start),
        .I2(Q[5]),
        .O(\count_r[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_14 
       (.I0(\count_r_reg_n_0_[4] ),
        .I1(start),
        .I2(Q[4]),
        .O(\count_r[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_15 
       (.I0(\count_r_reg_n_0_[3] ),
        .I1(start),
        .I2(Q[3]),
        .O(\count_r[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_16 
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(start),
        .I2(Q[2]),
        .O(\count_r[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[0]_i_17__0 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(start),
        .I2(Q[1]),
        .O(\count_r[0]_i_17__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count_r[0]_i_18 
       (.I0(Q[0]),
        .I1(start),
        .I2(\count_r_reg_n_0_[0] ),
        .O(\count_r[0]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_3 
       (.I0(start),
        .O(\count_r[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_4 
       (.I0(start),
        .O(\count_r[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_5 
       (.I0(start),
        .O(\count_r[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_6 
       (.I0(start),
        .O(\count_r[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_7 
       (.I0(start),
        .O(\count_r[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_8 
       (.I0(start),
        .O(\count_r[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_9 
       (.I0(start),
        .O(\count_r[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_10 
       (.I0(\count_r_reg_n_0_[22] ),
        .I1(start),
        .I2(Q[22]),
        .O(\count_r[16]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_11 
       (.I0(\count_r_reg_n_0_[21] ),
        .I1(start),
        .I2(Q[21]),
        .O(\count_r[16]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_12 
       (.I0(\count_r_reg_n_0_[20] ),
        .I1(start),
        .I2(Q[20]),
        .O(\count_r[16]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_13 
       (.I0(\count_r_reg_n_0_[19] ),
        .I1(start),
        .I2(Q[19]),
        .O(\count_r[16]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_14 
       (.I0(\count_r_reg_n_0_[18] ),
        .I1(start),
        .I2(Q[18]),
        .O(\count_r[16]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_15 
       (.I0(\count_r_reg_n_0_[17] ),
        .I1(start),
        .I2(Q[17]),
        .O(\count_r[16]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[16]_i_16 
       (.I0(\count_r_reg_n_0_[16] ),
        .I1(start),
        .I2(Q[16]),
        .O(\count_r[16]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_2 
       (.I0(start),
        .O(\count_r[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_3 
       (.I0(start),
        .O(\count_r[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_4 
       (.I0(start),
        .O(\count_r[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_5 
       (.I0(start),
        .O(\count_r[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_6 
       (.I0(start),
        .O(\count_r[16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_7 
       (.I0(start),
        .O(\count_r[16]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_8 
       (.I0(start),
        .O(\count_r[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \count_r[16]_i_9 
       (.I0(Q[23]),
        .I1(\count_r_reg_n_0_[23] ),
        .I2(start),
        .O(\count_r[16]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_10 
       (.I0(\count_r_reg_n_0_[15] ),
        .I1(start),
        .I2(Q[15]),
        .O(\count_r[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_11 
       (.I0(\count_r_reg_n_0_[14] ),
        .I1(start),
        .I2(Q[14]),
        .O(\count_r[8]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_12 
       (.I0(\count_r_reg_n_0_[13] ),
        .I1(start),
        .I2(Q[13]),
        .O(\count_r[8]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_13 
       (.I0(\count_r_reg_n_0_[12] ),
        .I1(start),
        .I2(Q[12]),
        .O(\count_r[8]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_14 
       (.I0(\count_r_reg_n_0_[11] ),
        .I1(start),
        .I2(Q[11]),
        .O(\count_r[8]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_15 
       (.I0(\count_r_reg_n_0_[10] ),
        .I1(start),
        .I2(Q[10]),
        .O(\count_r[8]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_16 
       (.I0(\count_r_reg_n_0_[9] ),
        .I1(start),
        .I2(Q[9]),
        .O(\count_r[8]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD1)) 
    \count_r[8]_i_17 
       (.I0(\count_r_reg_n_0_[8] ),
        .I1(start),
        .I2(Q[8]),
        .O(\count_r[8]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_2 
       (.I0(start),
        .O(\count_r[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_3 
       (.I0(start),
        .O(\count_r[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_4 
       (.I0(start),
        .O(\count_r[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_5 
       (.I0(start),
        .O(\count_r[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_6 
       (.I0(start),
        .O(\count_r[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_7 
       (.I0(start),
        .O(\count_r[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_8 
       (.I0(start),
        .O(\count_r[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_9 
       (.I0(start),
        .O(\count_r[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2_n_15 ),
        .Q(\count_r_reg_n_0_[0] ),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[0]_i_2 
       (.CI(\count_r[0]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[0]_i_2_n_0 ,\count_r_reg[0]_i_2_n_1 ,\count_r_reg[0]_i_2_n_2 ,\count_r_reg[0]_i_2_n_3 ,\count_r_reg[0]_i_2_n_4 ,\count_r_reg[0]_i_2_n_5 ,\count_r_reg[0]_i_2_n_6 ,\count_r_reg[0]_i_2_n_7 }),
        .DI({\count_r[0]_i_4_n_0 ,\count_r[0]_i_5_n_0 ,\count_r[0]_i_6_n_0 ,\count_r[0]_i_7_n_0 ,\count_r[0]_i_8_n_0 ,\count_r[0]_i_9_n_0 ,\count_r[0]_i_10_n_0 ,1'b0}),
        .O({\count_r_reg[0]_i_2_n_8 ,\count_r_reg[0]_i_2_n_9 ,\count_r_reg[0]_i_2_n_10 ,\count_r_reg[0]_i_2_n_11 ,\count_r_reg[0]_i_2_n_12 ,\count_r_reg[0]_i_2_n_13 ,\count_r_reg[0]_i_2_n_14 ,\count_r_reg[0]_i_2_n_15 }),
        .S({\count_r[0]_i_11_n_0 ,\count_r[0]_i_12_n_0 ,\count_r[0]_i_13_n_0 ,\count_r[0]_i_14_n_0 ,\count_r[0]_i_15_n_0 ,\count_r[0]_i_16_n_0 ,\count_r[0]_i_17__0_n_0 ,\count_r[0]_i_18_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[10] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1_n_13 ),
        .Q(\count_r_reg_n_0_[10] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1_n_12 ),
        .Q(\count_r_reg_n_0_[11] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1_n_11 ),
        .Q(\count_r_reg_n_0_[12] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1_n_10 ),
        .Q(\count_r_reg_n_0_[13] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1_n_9 ),
        .Q(\count_r_reg_n_0_[14] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1_n_8 ),
        .Q(\count_r_reg_n_0_[15] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1_n_15 ),
        .Q(\count_r_reg_n_0_[16] ),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[16]_i_1 
       (.CI(\count_r_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_r_reg[16]_i_1_CO_UNCONNECTED [7],\count_r_reg[16]_i_1_n_1 ,\count_r_reg[16]_i_1_n_2 ,\count_r_reg[16]_i_1_n_3 ,\count_r_reg[16]_i_1_n_4 ,\count_r_reg[16]_i_1_n_5 ,\count_r_reg[16]_i_1_n_6 ,\count_r_reg[16]_i_1_n_7 }),
        .DI({1'b0,\count_r[16]_i_2_n_0 ,\count_r[16]_i_3_n_0 ,\count_r[16]_i_4_n_0 ,\count_r[16]_i_5_n_0 ,\count_r[16]_i_6_n_0 ,\count_r[16]_i_7_n_0 ,\count_r[16]_i_8_n_0 }),
        .O({\count_r_reg[16]_i_1_n_8 ,\count_r_reg[16]_i_1_n_9 ,\count_r_reg[16]_i_1_n_10 ,\count_r_reg[16]_i_1_n_11 ,\count_r_reg[16]_i_1_n_12 ,\count_r_reg[16]_i_1_n_13 ,\count_r_reg[16]_i_1_n_14 ,\count_r_reg[16]_i_1_n_15 }),
        .S({\count_r[16]_i_9_n_0 ,\count_r[16]_i_10_n_0 ,\count_r[16]_i_11_n_0 ,\count_r[16]_i_12_n_0 ,\count_r[16]_i_13_n_0 ,\count_r[16]_i_14_n_0 ,\count_r[16]_i_15_n_0 ,\count_r[16]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[17] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1_n_14 ),
        .Q(\count_r_reg_n_0_[17] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1_n_13 ),
        .Q(\count_r_reg_n_0_[18] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1_n_12 ),
        .Q(\count_r_reg_n_0_[19] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2_n_14 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1_n_11 ),
        .Q(\count_r_reg_n_0_[20] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1_n_10 ),
        .Q(\count_r_reg_n_0_[21] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1_n_9 ),
        .Q(\count_r_reg_n_0_[22] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[16]_i_1_n_8 ),
        .Q(\count_r_reg_n_0_[23] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2_n_13 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2_n_12 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2_n_11 ),
        .Q(\count_r_reg_n_0_[4] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2_n_10 ),
        .Q(\count_r_reg_n_0_[5] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2_n_9 ),
        .Q(\count_r_reg_n_0_[6] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[0]_i_2_n_8 ),
        .Q(\count_r_reg_n_0_[7] ),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1_n_15 ),
        .Q(\count_r_reg_n_0_[8] ),
        .R(areset));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[8]_i_1 
       (.CI(\count_r_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[8]_i_1_n_0 ,\count_r_reg[8]_i_1_n_1 ,\count_r_reg[8]_i_1_n_2 ,\count_r_reg[8]_i_1_n_3 ,\count_r_reg[8]_i_1_n_4 ,\count_r_reg[8]_i_1_n_5 ,\count_r_reg[8]_i_1_n_6 ,\count_r_reg[8]_i_1_n_7 }),
        .DI({\count_r[8]_i_2_n_0 ,\count_r[8]_i_3_n_0 ,\count_r[8]_i_4_n_0 ,\count_r[8]_i_5_n_0 ,\count_r[8]_i_6_n_0 ,\count_r[8]_i_7_n_0 ,\count_r[8]_i_8_n_0 ,\count_r[8]_i_9_n_0 }),
        .O({\count_r_reg[8]_i_1_n_8 ,\count_r_reg[8]_i_1_n_9 ,\count_r_reg[8]_i_1_n_10 ,\count_r_reg[8]_i_1_n_11 ,\count_r_reg[8]_i_1_n_12 ,\count_r_reg[8]_i_1_n_13 ,\count_r_reg[8]_i_1_n_14 ,\count_r_reg[8]_i_1_n_15 }),
        .S({\count_r[8]_i_10_n_0 ,\count_r[8]_i_11_n_0 ,\count_r[8]_i_12_n_0 ,\count_r[8]_i_13_n_0 ,\count_r[8]_i_14_n_0 ,\count_r[8]_i_15_n_0 ,\count_r[8]_i_16_n_0 ,\count_r[8]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[9] 
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(\count_r_reg[8]_i_1_n_14 ),
        .Q(\count_r_reg_n_0_[9] ),
        .R(areset));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    is_zero_r_i_1
       (.I0(\m_axi_gmem_ARLEN[7]_INST_0_i_1_n_0 ),
        .I1(is_zero_r_i_2_n_0),
        .I2(is_zero_r_i_3_n_0),
        .O(is_zero_r_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    is_zero_r_i_2
       (.I0(is_zero_r_i_4_n_0),
        .I1(is_zero_r_i_5_n_0),
        .I2(\count_r_reg_n_0_[23] ),
        .I3(\count_r_reg_n_0_[12] ),
        .I4(\count_r_reg_n_0_[18] ),
        .I5(\count_r_reg_n_0_[1] ),
        .O(is_zero_r_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    is_zero_r_i_3
       (.I0(is_zero_r_i_6_n_0),
        .I1(\count_r_reg_n_0_[10] ),
        .I2(\count_r_reg_n_0_[0] ),
        .I3(\count_r_reg_n_0_[19] ),
        .I4(\count_r_reg_n_0_[5] ),
        .I5(is_zero_r_i_7_n_0),
        .O(is_zero_r_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    is_zero_r_i_4
       (.I0(\count_r_reg_n_0_[6] ),
        .I1(start),
        .I2(\count_r_reg_n_0_[14] ),
        .I3(\count_r_reg_n_0_[21] ),
        .I4(\count_r_reg_n_0_[3] ),
        .I5(\count_r_reg_n_0_[17] ),
        .O(is_zero_r_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_5
       (.I0(\count_r_reg_n_0_[15] ),
        .I1(\count_r_reg_n_0_[8] ),
        .I2(\count_r_reg_n_0_[20] ),
        .I3(\count_r_reg_n_0_[2] ),
        .O(is_zero_r_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_6
       (.I0(\count_r_reg_n_0_[11] ),
        .I1(\count_r_reg_n_0_[7] ),
        .I2(\count_r_reg_n_0_[22] ),
        .I3(\count_r_reg_n_0_[9] ),
        .O(is_zero_r_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    is_zero_r_i_7
       (.I0(m_axi_gmem_ARREADY),
        .I1(ar_idle_reg),
        .I2(ar_idle_reg_0),
        .I3(\count_r_reg_n_0_[13] ),
        .I4(\count_r_reg_n_0_[16] ),
        .I5(\count_r_reg_n_0_[4] ),
        .O(is_zero_r_i_7_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(is_zero_r),
        .D(is_zero_r_i_1_n_0),
        .Q(ar_final_transaction),
        .S(areset));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_ARLEN[0]_INST_0 
       (.I0(\m_axi_gmem_ARLEN[7] [0]),
        .I1(\m_axi_gmem_ARLEN[7]_INST_0_i_1_n_0 ),
        .I2(ar_final_transaction),
        .O(m_axi_gmem_ARLEN[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_ARLEN[1]_INST_0 
       (.I0(\m_axi_gmem_ARLEN[7] [1]),
        .I1(\m_axi_gmem_ARLEN[7]_INST_0_i_1_n_0 ),
        .I2(ar_final_transaction),
        .O(m_axi_gmem_ARLEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_ARLEN[2]_INST_0 
       (.I0(\m_axi_gmem_ARLEN[7] [2]),
        .I1(\m_axi_gmem_ARLEN[7]_INST_0_i_1_n_0 ),
        .I2(ar_final_transaction),
        .O(m_axi_gmem_ARLEN[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_ARLEN[3]_INST_0 
       (.I0(\m_axi_gmem_ARLEN[7] [3]),
        .I1(\m_axi_gmem_ARLEN[7]_INST_0_i_1_n_0 ),
        .I2(ar_final_transaction),
        .O(m_axi_gmem_ARLEN[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_ARLEN[4]_INST_0 
       (.I0(\m_axi_gmem_ARLEN[7] [4]),
        .I1(\m_axi_gmem_ARLEN[7]_INST_0_i_1_n_0 ),
        .I2(ar_final_transaction),
        .O(m_axi_gmem_ARLEN[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_ARLEN[5]_INST_0 
       (.I0(\m_axi_gmem_ARLEN[7] [5]),
        .I1(\m_axi_gmem_ARLEN[7]_INST_0_i_1_n_0 ),
        .I2(ar_final_transaction),
        .O(m_axi_gmem_ARLEN[5]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_ARLEN[6]_INST_0 
       (.I0(\m_axi_gmem_ARLEN[7] [6]),
        .I1(\m_axi_gmem_ARLEN[7]_INST_0_i_1_n_0 ),
        .I2(ar_final_transaction),
        .O(m_axi_gmem_ARLEN[6]));
  LUT3 #(
    .INIT(8'hAB)) 
    \m_axi_gmem_ARLEN[7]_INST_0 
       (.I0(\m_axi_gmem_ARLEN[7] [7]),
        .I1(\m_axi_gmem_ARLEN[7]_INST_0_i_1_n_0 ),
        .I2(ar_final_transaction),
        .O(m_axi_gmem_ARLEN[7]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_1 
       (.I0(\m_axi_gmem_ARLEN[7]_INST_0_i_2_n_0 ),
        .I1(\m_axi_gmem_ARLEN[7]_INST_0_i_3_n_0 ),
        .I2(\m_axi_gmem_ARLEN[7]_INST_0_i_4_n_0 ),
        .I3(\m_axi_gmem_ARLEN[7]_INST_0_i_5_n_0 ),
        .I4(\m_axi_gmem_ARLEN[7]_INST_0_i_6_n_0 ),
        .I5(\m_axi_gmem_ARLEN[7]_INST_0_i_7_n_0 ),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_2 
       (.I0(Q[21]),
        .I1(Q[8]),
        .I2(Q[15]),
        .I3(Q[7]),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_3 
       (.I0(Q[22]),
        .I1(Q[0]),
        .I2(Q[11]),
        .I3(Q[4]),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[5]),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_5 
       (.I0(Q[17]),
        .I1(Q[3]),
        .I2(Q[14]),
        .I3(Q[12]),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_6 
       (.I0(Q[10]),
        .I1(Q[9]),
        .I2(Q[18]),
        .I3(Q[16]),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \m_axi_gmem_ARLEN[7]_INST_0_i_7 
       (.I0(start),
        .I1(Q[20]),
        .I2(Q[13]),
        .I3(Q[19]),
        .I4(Q[6]),
        .I5(Q[23]),
        .O(\m_axi_gmem_ARLEN[7]_INST_0_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "krnl_ro_rtl_counter" *) 
module ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter__parameterized0
   (m_axi_gmem_ARREADY_0,
    areset,
    ap_clk,
    m_axi_gmem_RLAST,
    m_axi_gmem_RID,
    m_axi_gmem_RVALID,
    m_axi_gmem_ARREADY,
    arvalid_r_reg,
    arvalid_r_reg_0,
    arvalid_r_reg_1,
    arvalid_r_reg_2);
  output m_axi_gmem_ARREADY_0;
  input areset;
  input ap_clk;
  input m_axi_gmem_RLAST;
  input [0:0]m_axi_gmem_RID;
  input m_axi_gmem_RVALID;
  input m_axi_gmem_ARREADY;
  input arvalid_r_reg;
  input arvalid_r_reg_0;
  input arvalid_r_reg_1;
  input arvalid_r_reg_2;

  wire ap_clk;
  wire areset;
  wire arvalid_r_reg;
  wire arvalid_r_reg_0;
  wire arvalid_r_reg_1;
  wire arvalid_r_reg_2;
  wire \count_r[0]_i_1__3_n_0 ;
  wire \count_r[1]_i_1__0_n_0 ;
  wire \count_r[1]_i_2__0_n_0 ;
  wire \count_r[1]_i_3__0_n_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[1] ;
  wire is_zero_r_i_1__4_n_0;
  wire is_zero_r_i_2__1_n_0;
  wire is_zero_r_reg_n_0;
  wire m_axi_gmem_ARREADY;
  wire m_axi_gmem_ARREADY_0;
  wire [0:0]m_axi_gmem_RID;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RVALID;

  LUT6 #(
    .INIT(64'h5050505353535053)) 
    arvalid_r_i_1
       (.I0(m_axi_gmem_ARREADY),
        .I1(arvalid_r_reg_1),
        .I2(arvalid_r_reg),
        .I3(is_zero_r_reg_n_0),
        .I4(arvalid_r_reg_0),
        .I5(arvalid_r_reg_2),
        .O(m_axi_gmem_ARREADY_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_1__3 
       (.I0(\count_r_reg_n_0_[0] ),
        .O(\count_r[0]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0808F70808080808)) 
    \count_r[1]_i_1__0 
       (.I0(m_axi_gmem_ARREADY),
        .I1(arvalid_r_reg),
        .I2(arvalid_r_reg_0),
        .I3(m_axi_gmem_RVALID),
        .I4(m_axi_gmem_RID),
        .I5(m_axi_gmem_RLAST),
        .O(\count_r[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFBFF04000400FBFF)) 
    \count_r[1]_i_2__0 
       (.I0(\count_r[1]_i_3__0_n_0 ),
        .I1(m_axi_gmem_RLAST),
        .I2(m_axi_gmem_RID),
        .I3(m_axi_gmem_RVALID),
        .I4(\count_r_reg_n_0_[0] ),
        .I5(\count_r_reg_n_0_[1] ),
        .O(\count_r[1]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \count_r[1]_i_3__0 
       (.I0(arvalid_r_reg_0),
        .I1(arvalid_r_reg),
        .I2(m_axi_gmem_ARREADY),
        .O(\count_r[1]_i_3__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[0] 
       (.C(ap_clk),
        .CE(\count_r[1]_i_1__0_n_0 ),
        .D(\count_r[0]_i_1__3_n_0 ),
        .Q(\count_r_reg_n_0_[0] ),
        .S(areset));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(\count_r[1]_i_1__0_n_0 ),
        .D(\count_r[1]_i_2__0_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .S(areset));
  LUT5 #(
    .INIT(32'hF82F0820)) 
    is_zero_r_i_1__4
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(\count_r[1]_i_3__0_n_0 ),
        .I3(is_zero_r_i_2__1_n_0),
        .I4(is_zero_r_reg_n_0),
        .O(is_zero_r_i_1__4_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    is_zero_r_i_2__1
       (.I0(m_axi_gmem_RLAST),
        .I1(m_axi_gmem_RID),
        .I2(m_axi_gmem_RVALID),
        .O(is_zero_r_i_2__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(is_zero_r_i_1__4_n_0),
        .Q(is_zero_r_reg_n_0),
        .R(areset));
endmodule

(* ORIG_REF_NAME = "krnl_ro_rtl_counter" *) 
module ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter__parameterized0_1
   (is_zero_r_reg_0,
    areset,
    ap_clk,
    m_axi_gmem_RLAST,
    m_axi_gmem_RVALID,
    m_axi_gmem_RID,
    m_axi_gmem_ARREADY,
    \count_r_reg[1]_0 ,
    \count_r_reg[1]_1 );
  output is_zero_r_reg_0;
  input areset;
  input ap_clk;
  input m_axi_gmem_RLAST;
  input m_axi_gmem_RVALID;
  input [0:0]m_axi_gmem_RID;
  input m_axi_gmem_ARREADY;
  input \count_r_reg[1]_0 ;
  input \count_r_reg[1]_1 ;

  wire ap_clk;
  wire areset;
  wire \count_r[0]_i_1__2_n_0 ;
  wire \count_r[1]_i_1_n_0 ;
  wire \count_r[1]_i_2_n_0 ;
  wire \count_r[1]_i_3_n_0 ;
  wire \count_r_reg[1]_0 ;
  wire \count_r_reg[1]_1 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[1] ;
  wire is_zero_r_i_1__5_n_0;
  wire is_zero_r_i_2__0_n_0;
  wire is_zero_r_reg_0;
  wire m_axi_gmem_ARREADY;
  wire [0:0]m_axi_gmem_RID;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RVALID;

  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_1__2 
       (.I0(\count_r_reg_n_0_[0] ),
        .O(\count_r[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7F80808080808080)) 
    \count_r[1]_i_1 
       (.I0(m_axi_gmem_RID),
        .I1(m_axi_gmem_RVALID),
        .I2(m_axi_gmem_RLAST),
        .I3(m_axi_gmem_ARREADY),
        .I4(\count_r_reg[1]_0 ),
        .I5(\count_r_reg[1]_1 ),
        .O(\count_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF40004000BFFF)) 
    \count_r[1]_i_2 
       (.I0(\count_r[1]_i_3_n_0 ),
        .I1(m_axi_gmem_RLAST),
        .I2(m_axi_gmem_RVALID),
        .I3(m_axi_gmem_RID),
        .I4(\count_r_reg_n_0_[0] ),
        .I5(\count_r_reg_n_0_[1] ),
        .O(\count_r[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \count_r[1]_i_3 
       (.I0(\count_r_reg[1]_1 ),
        .I1(\count_r_reg[1]_0 ),
        .I2(m_axi_gmem_ARREADY),
        .O(\count_r[1]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[0] 
       (.C(ap_clk),
        .CE(\count_r[1]_i_1_n_0 ),
        .D(\count_r[0]_i_1__2_n_0 ),
        .Q(\count_r_reg_n_0_[0] ),
        .S(areset));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(\count_r[1]_i_1_n_0 ),
        .D(\count_r[1]_i_2_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .S(areset));
  LUT5 #(
    .INIT(32'hF28F0280)) 
    is_zero_r_i_1__5
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(is_zero_r_i_2__0_n_0),
        .I3(\count_r[1]_i_3_n_0 ),
        .I4(is_zero_r_reg_0),
        .O(is_zero_r_i_1__5_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    is_zero_r_i_2__0
       (.I0(m_axi_gmem_RLAST),
        .I1(m_axi_gmem_RVALID),
        .I2(m_axi_gmem_RID),
        .O(is_zero_r_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(is_zero_r_i_1__5_n_0),
        .Q(is_zero_r_reg_0),
        .R(areset));
endmodule

(* ORIG_REF_NAME = "krnl_ro_rtl_counter" *) 
module ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter__parameterized1
   (m_axi_gmem_WLAST,
    areset,
    is_zero_r_reg_0,
    ap_clk,
    Q);
  output m_axi_gmem_WLAST;
  input areset;
  input is_zero_r_reg_0;
  input ap_clk;
  input [7:0]Q;

  wire [7:0]Q;
  wire ap_clk;
  wire areset;
  wire is_zero_r_i_1__3_n_0;
  wire is_zero_r_i_2__2_n_0;
  wire is_zero_r_reg_0;
  wire m_axi_gmem_WLAST;

  LUT5 #(
    .INIT(32'h00000001)) 
    is_zero_r_i_1__3
       (.I0(is_zero_r_i_2__2_n_0),
        .I1(Q[6]),
        .I2(Q[2]),
        .I3(Q[7]),
        .I4(Q[0]),
        .O(is_zero_r_i_1__3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_2__2
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(is_zero_r_i_2__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(is_zero_r_reg_0),
        .D(is_zero_r_i_1__3_n_0),
        .Q(m_axi_gmem_WLAST),
        .R(areset));
endmodule

(* ORIG_REF_NAME = "krnl_ro_rtl_counter" *) 
module ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_counter__parameterized2
   (m_axi_gmem_AWREADY_0,
    areset,
    ap_clk,
    m_axi_gmem_AWREADY,
    awvalid_r_reg,
    is_zero_r_reg_0);
  output m_axi_gmem_AWREADY_0;
  input areset;
  input ap_clk;
  input m_axi_gmem_AWREADY;
  input awvalid_r_reg;
  input is_zero_r_reg_0;

  wire ap_clk;
  wire areset;
  wire awvalid_r_reg;
  wire count_r0_carry_i_1_n_0;
  wire count_r0_carry_i_2_n_0;
  wire count_r0_carry_i_3_n_0;
  wire count_r0_carry_i_4_n_0;
  wire count_r0_carry_i_5_n_0;
  wire count_r0_carry_i_6_n_0;
  wire count_r0_carry_i_7_n_0;
  wire count_r0_carry_n_10;
  wire count_r0_carry_n_11;
  wire count_r0_carry_n_12;
  wire count_r0_carry_n_13;
  wire count_r0_carry_n_14;
  wire count_r0_carry_n_15;
  wire count_r0_carry_n_2;
  wire count_r0_carry_n_3;
  wire count_r0_carry_n_4;
  wire count_r0_carry_n_5;
  wire count_r0_carry_n_6;
  wire count_r0_carry_n_7;
  wire count_r0_carry_n_9;
  wire \count_r[0]_i_1__1_n_0 ;
  wire idle_aw;
  wire [7:0]\inst_w_to_aw_cntr[0]/count_r_reg ;
  wire is_zero_r_i_1__2_n_0;
  wire is_zero_r_i_2__3_n_0;
  wire is_zero_r_i_3__2_n_0;
  wire is_zero_r_reg_0;
  wire m_axi_gmem_AWREADY;
  wire m_axi_gmem_AWREADY_0;
  wire [7:6]NLW_count_r0_carry_CO_UNCONNECTED;
  wire [7:7]NLW_count_r0_carry_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h53)) 
    awvalid_r_i_1
       (.I0(m_axi_gmem_AWREADY),
        .I1(idle_aw),
        .I2(awvalid_r_reg),
        .O(m_axi_gmem_AWREADY_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 count_r0_carry
       (.CI(\inst_w_to_aw_cntr[0]/count_r_reg [0]),
        .CI_TOP(1'b0),
        .CO({NLW_count_r0_carry_CO_UNCONNECTED[7:6],count_r0_carry_n_2,count_r0_carry_n_3,count_r0_carry_n_4,count_r0_carry_n_5,count_r0_carry_n_6,count_r0_carry_n_7}),
        .DI({1'b0,1'b0,\inst_w_to_aw_cntr[0]/count_r_reg [5:1],1'b0}),
        .O({NLW_count_r0_carry_O_UNCONNECTED[7],count_r0_carry_n_9,count_r0_carry_n_10,count_r0_carry_n_11,count_r0_carry_n_12,count_r0_carry_n_13,count_r0_carry_n_14,count_r0_carry_n_15}),
        .S({1'b0,count_r0_carry_i_1_n_0,count_r0_carry_i_2_n_0,count_r0_carry_i_3_n_0,count_r0_carry_i_4_n_0,count_r0_carry_i_5_n_0,count_r0_carry_i_6_n_0,count_r0_carry_i_7_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    count_r0_carry_i_1
       (.I0(\inst_w_to_aw_cntr[0]/count_r_reg [6]),
        .I1(\inst_w_to_aw_cntr[0]/count_r_reg [7]),
        .O(count_r0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count_r0_carry_i_2
       (.I0(\inst_w_to_aw_cntr[0]/count_r_reg [5]),
        .I1(\inst_w_to_aw_cntr[0]/count_r_reg [6]),
        .O(count_r0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count_r0_carry_i_3
       (.I0(\inst_w_to_aw_cntr[0]/count_r_reg [4]),
        .I1(\inst_w_to_aw_cntr[0]/count_r_reg [5]),
        .O(count_r0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count_r0_carry_i_4
       (.I0(\inst_w_to_aw_cntr[0]/count_r_reg [3]),
        .I1(\inst_w_to_aw_cntr[0]/count_r_reg [4]),
        .O(count_r0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count_r0_carry_i_5
       (.I0(\inst_w_to_aw_cntr[0]/count_r_reg [2]),
        .I1(\inst_w_to_aw_cntr[0]/count_r_reg [3]),
        .O(count_r0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    count_r0_carry_i_6
       (.I0(\inst_w_to_aw_cntr[0]/count_r_reg [1]),
        .I1(\inst_w_to_aw_cntr[0]/count_r_reg [2]),
        .O(count_r0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_r0_carry_i_7
       (.I0(\inst_w_to_aw_cntr[0]/count_r_reg [1]),
        .O(count_r0_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_1__1 
       (.I0(\inst_w_to_aw_cntr[0]/count_r_reg [0]),
        .O(\count_r[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(ap_clk),
        .CE(is_zero_r_i_1__2_n_0),
        .D(\count_r[0]_i_1__1_n_0 ),
        .Q(\inst_w_to_aw_cntr[0]/count_r_reg [0]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(ap_clk),
        .CE(is_zero_r_i_1__2_n_0),
        .D(count_r0_carry_n_15),
        .Q(\inst_w_to_aw_cntr[0]/count_r_reg [1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(ap_clk),
        .CE(is_zero_r_i_1__2_n_0),
        .D(count_r0_carry_n_14),
        .Q(\inst_w_to_aw_cntr[0]/count_r_reg [2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(ap_clk),
        .CE(is_zero_r_i_1__2_n_0),
        .D(count_r0_carry_n_13),
        .Q(\inst_w_to_aw_cntr[0]/count_r_reg [3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(ap_clk),
        .CE(is_zero_r_i_1__2_n_0),
        .D(count_r0_carry_n_12),
        .Q(\inst_w_to_aw_cntr[0]/count_r_reg [4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(ap_clk),
        .CE(is_zero_r_i_1__2_n_0),
        .D(count_r0_carry_n_11),
        .Q(\inst_w_to_aw_cntr[0]/count_r_reg [5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(ap_clk),
        .CE(is_zero_r_i_1__2_n_0),
        .D(count_r0_carry_n_10),
        .Q(\inst_w_to_aw_cntr[0]/count_r_reg [6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(ap_clk),
        .CE(is_zero_r_i_1__2_n_0),
        .D(count_r0_carry_n_9),
        .Q(\inst_w_to_aw_cntr[0]/count_r_reg [7]),
        .R(areset));
  LUT2 #(
    .INIT(4'h8)) 
    is_zero_r_i_1__2
       (.I0(m_axi_gmem_AWREADY),
        .I1(awvalid_r_reg),
        .O(is_zero_r_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    is_zero_r_i_2__3
       (.I0(is_zero_r_i_3__2_n_0),
        .I1(\inst_w_to_aw_cntr[0]/count_r_reg [6]),
        .I2(\inst_w_to_aw_cntr[0]/count_r_reg [7]),
        .I3(is_zero_r_reg_0),
        .I4(\inst_w_to_aw_cntr[0]/count_r_reg [0]),
        .I5(\inst_w_to_aw_cntr[0]/count_r_reg [5]),
        .O(is_zero_r_i_2__3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    is_zero_r_i_3__2
       (.I0(\inst_w_to_aw_cntr[0]/count_r_reg [3]),
        .I1(\inst_w_to_aw_cntr[0]/count_r_reg [2]),
        .I2(\inst_w_to_aw_cntr[0]/count_r_reg [4]),
        .I3(\inst_w_to_aw_cntr[0]/count_r_reg [1]),
        .O(is_zero_r_i_3__2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(ap_clk),
        .CE(is_zero_r_i_1__2_n_0),
        .D(is_zero_r_i_2__3_n_0),
        .Q(idle_aw),
        .S(areset));
endmodule

module ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_int
   (awvalid_r_reg,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[1] ,
    s_axi_control_RDATA,
    m_axi_gmem_AWADDR,
    s_axi_control_AWREADY,
    FSM_sequential_rstate_reg,
    s_axi_control_ARREADY,
    interrupt,
    arvalid_r_reg,
    \id_reg[0] ,
    m_axi_gmem_ARLEN,
    m_axi_gmem_AWLEN,
    m_axi_gmem_ARADDR,
    m_axi_gmem_WLAST,
    m_axi_gmem_BVALID,
    m_axi_gmem_AWREADY,
    s_axi_control_ARADDR,
    ap_clk,
    s_axi_control_AWADDR,
    s_axi_control_WDATA,
    m_axi_gmem_RDATA,
    s_axi_control_ARVALID,
    s_axi_control_RREADY,
    s_axi_control_AWVALID,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_BREADY,
    m_axi_gmem_RLAST,
    m_axi_gmem_RVALID,
    m_axi_gmem_RID,
    m_axi_gmem_ARREADY,
    ap_rst_n);
  output awvalid_r_reg;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[1] ;
  output [31:0]s_axi_control_RDATA;
  output [63:0]m_axi_gmem_AWADDR;
  output s_axi_control_AWREADY;
  output FSM_sequential_rstate_reg;
  output s_axi_control_ARREADY;
  output interrupt;
  output arvalid_r_reg;
  output \id_reg[0] ;
  output [7:0]m_axi_gmem_ARLEN;
  output [7:0]m_axi_gmem_AWLEN;
  output [63:0]m_axi_gmem_ARADDR;
  output m_axi_gmem_WLAST;
  input m_axi_gmem_BVALID;
  input m_axi_gmem_AWREADY;
  input [6:0]s_axi_control_ARADDR;
  input ap_clk;
  input [6:0]s_axi_control_AWADDR;
  input [31:0]s_axi_control_WDATA;
  input [31:0]m_axi_gmem_RDATA;
  input s_axi_control_ARVALID;
  input s_axi_control_RREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_BREADY;
  input m_axi_gmem_RLAST;
  input m_axi_gmem_RVALID;
  input [0:0]m_axi_gmem_RID;
  input m_axi_gmem_ARREADY;
  input ap_rst_n;

  wire \FSM_onehot_wstate_reg[1] ;
  wire FSM_sequential_rstate_reg;
  wire [31:0]\adder_tdata[1]_0 ;
  wire [1:1]adder_tvalid;
  wire [63:0]\addr_reg[0]_3 ;
  wire [63:0]\addr_reg[1]_4 ;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_start;
  wire ap_start_pulse;
  wire ap_start_r;
  wire areset;
  wire areset_i_1_n_0;
  wire arvalid_r_reg;
  wire awvalid_r_reg;
  wire [1:0]ctrl_rd_fifo_prog_full;
  wire [7:0]final_burst_len0;
  wire \id_reg[0] ;
  wire inst_axi_write_master_n_65;
  wire inst_axi_write_master_n_76;
  wire inst_krnl_ro_control_s_axi_n_132;
  wire inst_krnl_ro_control_s_axi_n_157;
  wire inst_krnl_ro_control_s_axi_n_158;
  wire inst_krnl_ro_control_s_axi_n_159;
  wire inst_krnl_ro_control_s_axi_n_160;
  wire inst_krnl_ro_control_s_axi_n_161;
  wire inst_krnl_ro_control_s_axi_n_162;
  wire inst_krnl_ro_control_s_axi_n_163;
  wire inst_krnl_ro_control_s_axi_n_164;
  wire inst_krnl_ro_control_s_axi_n_165;
  wire inst_krnl_ro_control_s_axi_n_166;
  wire inst_krnl_ro_control_s_axi_n_167;
  wire inst_krnl_ro_control_s_axi_n_168;
  wire inst_krnl_ro_control_s_axi_n_169;
  wire inst_krnl_ro_control_s_axi_n_170;
  wire inst_krnl_ro_control_s_axi_n_171;
  wire inst_krnl_ro_control_s_axi_n_172;
  wire inst_krnl_ro_control_s_axi_n_173;
  wire inst_krnl_ro_control_s_axi_n_174;
  wire inst_krnl_ro_control_s_axi_n_175;
  wire inst_krnl_ro_control_s_axi_n_176;
  wire inst_krnl_ro_control_s_axi_n_177;
  wire inst_krnl_ro_control_s_axi_n_178;
  wire inst_krnl_ro_control_s_axi_n_179;
  wire inst_krnl_ro_control_s_axi_n_180;
  wire inst_krnl_ro_control_s_axi_n_181;
  wire inst_krnl_ro_control_s_axi_n_182;
  wire inst_krnl_ro_control_s_axi_n_183;
  wire inst_krnl_ro_control_s_axi_n_184;
  wire inst_krnl_ro_control_s_axi_n_185;
  wire inst_krnl_ro_control_s_axi_n_186;
  wire inst_krnl_ro_control_s_axi_n_187;
  wire inst_krnl_ro_control_s_axi_n_188;
  wire inst_krnl_ro_control_s_axi_n_189;
  wire inst_krnl_ro_control_s_axi_n_190;
  wire inst_krnl_ro_control_s_axi_n_191;
  wire inst_krnl_ro_control_s_axi_n_192;
  wire inst_krnl_ro_control_s_axi_n_193;
  wire inst_krnl_ro_control_s_axi_n_194;
  wire inst_krnl_ro_control_s_axi_n_195;
  wire inst_krnl_ro_control_s_axi_n_196;
  wire inst_krnl_ro_control_s_axi_n_197;
  wire inst_krnl_ro_control_s_axi_n_198;
  wire inst_krnl_ro_control_s_axi_n_199;
  wire inst_krnl_ro_control_s_axi_n_2;
  wire inst_krnl_ro_control_s_axi_n_200;
  wire inst_krnl_ro_control_s_axi_n_201;
  wire inst_krnl_ro_control_s_axi_n_202;
  wire inst_krnl_ro_control_s_axi_n_203;
  wire inst_krnl_ro_control_s_axi_n_204;
  wire inst_krnl_ro_control_s_axi_n_205;
  wire inst_krnl_ro_control_s_axi_n_206;
  wire inst_krnl_ro_control_s_axi_n_207;
  wire inst_krnl_ro_control_s_axi_n_208;
  wire inst_krnl_ro_control_s_axi_n_209;
  wire inst_krnl_ro_control_s_axi_n_210;
  wire inst_krnl_ro_control_s_axi_n_211;
  wire inst_krnl_ro_control_s_axi_n_212;
  wire inst_krnl_ro_control_s_axi_n_213;
  wire inst_krnl_ro_control_s_axi_n_214;
  wire inst_krnl_ro_control_s_axi_n_215;
  wire inst_krnl_ro_control_s_axi_n_216;
  wire inst_krnl_ro_control_s_axi_n_217;
  wire inst_krnl_ro_control_s_axi_n_218;
  wire inst_krnl_ro_control_s_axi_n_219;
  wire inst_krnl_ro_control_s_axi_n_220;
  wire inst_krnl_ro_control_s_axi_n_221;
  wire inst_krnl_ro_control_s_axi_n_222;
  wire inst_krnl_ro_control_s_axi_n_223;
  wire inst_krnl_ro_control_s_axi_n_224;
  wire inst_krnl_ro_control_s_axi_n_225;
  wire inst_krnl_ro_control_s_axi_n_226;
  wire inst_krnl_ro_control_s_axi_n_227;
  wire inst_krnl_ro_control_s_axi_n_228;
  wire inst_krnl_ro_control_s_axi_n_229;
  wire inst_krnl_ro_control_s_axi_n_230;
  wire inst_krnl_ro_control_s_axi_n_231;
  wire inst_krnl_ro_control_s_axi_n_232;
  wire inst_krnl_ro_control_s_axi_n_233;
  wire inst_krnl_ro_control_s_axi_n_234;
  wire inst_krnl_ro_control_s_axi_n_235;
  wire inst_krnl_ro_control_s_axi_n_236;
  wire inst_krnl_ro_control_s_axi_n_237;
  wire inst_krnl_ro_control_s_axi_n_238;
  wire inst_krnl_ro_control_s_axi_n_239;
  wire inst_krnl_ro_control_s_axi_n_240;
  wire inst_krnl_ro_control_s_axi_n_241;
  wire inst_krnl_ro_control_s_axi_n_242;
  wire inst_krnl_ro_control_s_axi_n_243;
  wire inst_krnl_ro_control_s_axi_n_244;
  wire inst_krnl_ro_control_s_axi_n_245;
  wire inst_krnl_ro_control_s_axi_n_246;
  wire inst_krnl_ro_control_s_axi_n_247;
  wire inst_krnl_ro_control_s_axi_n_248;
  wire inst_krnl_ro_control_s_axi_n_249;
  wire inst_krnl_ro_control_s_axi_n_250;
  wire inst_krnl_ro_control_s_axi_n_251;
  wire inst_krnl_ro_control_s_axi_n_252;
  wire inst_krnl_ro_control_s_axi_n_253;
  wire inst_krnl_ro_control_s_axi_n_254;
  wire inst_krnl_ro_control_s_axi_n_255;
  wire inst_krnl_ro_control_s_axi_n_256;
  wire inst_krnl_ro_control_s_axi_n_257;
  wire inst_krnl_ro_control_s_axi_n_258;
  wire inst_krnl_ro_control_s_axi_n_259;
  wire inst_krnl_ro_control_s_axi_n_260;
  wire inst_krnl_ro_control_s_axi_n_261;
  wire inst_krnl_ro_control_s_axi_n_262;
  wire inst_krnl_ro_control_s_axi_n_263;
  wire inst_krnl_ro_control_s_axi_n_264;
  wire inst_krnl_ro_control_s_axi_n_265;
  wire inst_krnl_ro_control_s_axi_n_266;
  wire inst_krnl_ro_control_s_axi_n_47;
  wire inst_krnl_ro_control_s_axi_n_48;
  wire inst_krnl_ro_control_s_axi_n_49;
  wire inst_krnl_ro_control_s_axi_n_50;
  wire inst_krnl_ro_control_s_axi_n_51;
  wire inst_krnl_ro_control_s_axi_n_52;
  wire inst_krnl_ro_control_s_axi_n_53;
  wire inst_krnl_ro_control_s_axi_n_54;
  wire inst_krnl_ro_control_s_axi_n_55;
  wire inst_krnl_ro_control_s_axi_n_56;
  wire inst_krnl_ro_control_s_axi_n_57;
  wire inst_krnl_ro_control_s_axi_n_58;
  wire inst_krnl_ro_control_s_axi_n_59;
  wire inst_krnl_ro_control_s_axi_n_6;
  wire inst_krnl_ro_control_s_axi_n_60;
  wire inst_krnl_ro_control_s_axi_n_61;
  wire inst_krnl_ro_control_s_axi_n_62;
  wire inst_krnl_ro_control_s_axi_n_63;
  wire inst_krnl_ro_control_s_axi_n_64;
  wire inst_krnl_ro_control_s_axi_n_65;
  wire inst_krnl_ro_control_s_axi_n_66;
  wire inst_krnl_ro_control_s_axi_n_9;
  wire \inst_rd_xpm_fifo_sync_n_17_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_18_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_19_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_20_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_21_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_22_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_23_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_24_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_25_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_26_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_27_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_28_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_29_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_30_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_31_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_32_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_33_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_34_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_35_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_36_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_37_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_38_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_39_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_40_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_41_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_42_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_43_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_44_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_45_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_46_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_47_[0] ;
  wire \inst_rd_xpm_fifo_sync_n_48_[0] ;
  wire inst_ro_sensor_i_1_n_0;
  wire inst_ro_sensor_i_2_n_0;
  wire \inst_wr_xpm_fifo_sync_n_0_[1] ;
  wire interrupt;
  wire [31:1]length_r;
  wire [63:0]m_axi_gmem_ARADDR;
  wire [7:0]m_axi_gmem_ARLEN;
  wire m_axi_gmem_ARREADY;
  wire [63:0]m_axi_gmem_AWADDR;
  wire [7:0]m_axi_gmem_AWLEN;
  wire m_axi_gmem_AWREADY;
  wire m_axi_gmem_BVALID;
  wire [31:0]m_axi_gmem_RDATA;
  wire [0:0]m_axi_gmem_RID;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RVALID;
  wire m_axi_gmem_WLAST;
  wire [23:0]num_transactions0;
  wire p_0_in;
  wire [63:0]p_0_in__0;
  wire [31:0]\rd_fifo_tdata[1]_2 ;
  wire [31:0]\rd_fifo_tdata[3]_1 ;
  wire [3:3]rd_fifo_tready;
  wire [1:0]rd_tvalid;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [6:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire sent_mul;
  wire [31:0]wm_ctrl_length;
  wire [63:0]wm_ctrl_offset;
  wire wm_ctrl_start;
  wire wm_ctrl_start0;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_almost_empty_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_almost_full_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_data_valid_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_dbiterr_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_empty_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_full_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_overflow_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_prog_empty_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_rd_rst_busy_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_sbiterr_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_underflow_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_wr_ack_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[0]_wr_rst_busy_UNCONNECTED ;
  wire [10:0]\NLW_inst_rd_xpm_fifo_sync[0]_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_inst_rd_xpm_fifo_sync[0]_wr_data_count_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_almost_empty_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_almost_full_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_data_valid_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_dbiterr_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_empty_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_full_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_overflow_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_prog_empty_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_rd_rst_busy_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_sbiterr_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_underflow_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_wr_ack_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[1]_wr_rst_busy_UNCONNECTED ;
  wire [10:0]\NLW_inst_rd_xpm_fifo_sync[1]_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_inst_rd_xpm_fifo_sync[1]_wr_data_count_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_almost_empty_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_almost_full_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_data_valid_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_dbiterr_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_full_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_overflow_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_prog_empty_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_prog_full_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_rd_rst_busy_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_sbiterr_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_underflow_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_wr_ack_UNCONNECTED ;
  wire \NLW_inst_rd_xpm_fifo_sync[3]_wr_rst_busy_UNCONNECTED ;
  wire [10:0]\NLW_inst_rd_xpm_fifo_sync[3]_rd_data_count_UNCONNECTED ;
  wire [10:0]\NLW_inst_rd_xpm_fifo_sync[3]_wr_data_count_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_almost_empty_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_almost_full_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_data_valid_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_dbiterr_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_empty_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_overflow_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_prog_empty_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_prog_full_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_rd_rst_busy_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_sbiterr_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_underflow_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_wr_ack_UNCONNECTED ;
  wire \NLW_inst_wr_xpm_fifo_sync[1]_wr_rst_busy_UNCONNECTED ;
  wire [31:0]\NLW_inst_wr_xpm_fifo_sync[1]_dout_UNCONNECTED ;
  wire [7:0]\NLW_inst_wr_xpm_fifo_sync[1]_rd_data_count_UNCONNECTED ;
  wire [7:0]\NLW_inst_wr_xpm_fifo_sync[1]_wr_data_count_UNCONNECTED ;

  FDRE ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inst_krnl_ro_control_s_axi_n_2),
        .Q(ap_done),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inst_krnl_ro_control_s_axi_n_47),
        .Q(ap_idle),
        .R(1'b0));
  FDRE ap_start_r_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_start),
        .Q(ap_start_r),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    areset_i_1
       (.I0(ap_rst_n),
        .O(areset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    areset_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(areset_i_1_n_0),
        .Q(areset),
        .R(1'b0));
  ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_axi_read_master inst_axi_read_master
       (.D(num_transactions0),
        .O({inst_krnl_ro_control_s_axi_n_157,inst_krnl_ro_control_s_axi_n_158,inst_krnl_ro_control_s_axi_n_159,inst_krnl_ro_control_s_axi_n_160,inst_krnl_ro_control_s_axi_n_161,inst_krnl_ro_control_s_axi_n_162,inst_krnl_ro_control_s_axi_n_163,inst_krnl_ro_control_s_axi_n_164}),
        .\addr_reg[0][0]_0 (inst_krnl_ro_control_s_axi_n_48),
        .\addr_reg[0][1]_0 (inst_krnl_ro_control_s_axi_n_49),
        .\addr_reg[0][24]_0 ({inst_krnl_ro_control_s_axi_n_165,inst_krnl_ro_control_s_axi_n_166,inst_krnl_ro_control_s_axi_n_167,inst_krnl_ro_control_s_axi_n_168,inst_krnl_ro_control_s_axi_n_169,inst_krnl_ro_control_s_axi_n_170,inst_krnl_ro_control_s_axi_n_171,inst_krnl_ro_control_s_axi_n_172}),
        .\addr_reg[0][2]_0 (inst_krnl_ro_control_s_axi_n_50),
        .\addr_reg[0][32]_0 ({inst_krnl_ro_control_s_axi_n_173,inst_krnl_ro_control_s_axi_n_174,inst_krnl_ro_control_s_axi_n_175,inst_krnl_ro_control_s_axi_n_176,inst_krnl_ro_control_s_axi_n_177,inst_krnl_ro_control_s_axi_n_178,inst_krnl_ro_control_s_axi_n_179,inst_krnl_ro_control_s_axi_n_180}),
        .\addr_reg[0][3]_0 (inst_krnl_ro_control_s_axi_n_51),
        .\addr_reg[0][40]_0 ({inst_krnl_ro_control_s_axi_n_181,inst_krnl_ro_control_s_axi_n_182,inst_krnl_ro_control_s_axi_n_183,inst_krnl_ro_control_s_axi_n_184,inst_krnl_ro_control_s_axi_n_185,inst_krnl_ro_control_s_axi_n_186,inst_krnl_ro_control_s_axi_n_187,inst_krnl_ro_control_s_axi_n_188}),
        .\addr_reg[0][48]_0 ({inst_krnl_ro_control_s_axi_n_189,inst_krnl_ro_control_s_axi_n_190,inst_krnl_ro_control_s_axi_n_191,inst_krnl_ro_control_s_axi_n_192,inst_krnl_ro_control_s_axi_n_193,inst_krnl_ro_control_s_axi_n_194,inst_krnl_ro_control_s_axi_n_195,inst_krnl_ro_control_s_axi_n_196}),
        .\addr_reg[0][4]_0 (inst_krnl_ro_control_s_axi_n_52),
        .\addr_reg[0][56]_0 ({inst_krnl_ro_control_s_axi_n_197,inst_krnl_ro_control_s_axi_n_198,inst_krnl_ro_control_s_axi_n_199,inst_krnl_ro_control_s_axi_n_200,inst_krnl_ro_control_s_axi_n_201,inst_krnl_ro_control_s_axi_n_202,inst_krnl_ro_control_s_axi_n_203,inst_krnl_ro_control_s_axi_n_204}),
        .\addr_reg[0][5]_0 (inst_krnl_ro_control_s_axi_n_53),
        .\addr_reg[0][63]_0 ({inst_krnl_ro_control_s_axi_n_205,inst_krnl_ro_control_s_axi_n_206,inst_krnl_ro_control_s_axi_n_207,inst_krnl_ro_control_s_axi_n_208,inst_krnl_ro_control_s_axi_n_209,inst_krnl_ro_control_s_axi_n_210,inst_krnl_ro_control_s_axi_n_211}),
        .\addr_reg[0][6]_0 (inst_krnl_ro_control_s_axi_n_54),
        .\addr_reg[0][7]_0 (inst_krnl_ro_control_s_axi_n_55),
        .\addr_reg[0][8]_0 (inst_krnl_ro_control_s_axi_n_56),
        .\addr_reg[0]_3 (\addr_reg[0]_3 ),
        .\addr_reg[1][0]_0 (inst_krnl_ro_control_s_axi_n_57),
        .\addr_reg[1][16]_0 ({inst_krnl_ro_control_s_axi_n_212,inst_krnl_ro_control_s_axi_n_213,inst_krnl_ro_control_s_axi_n_214,inst_krnl_ro_control_s_axi_n_215,inst_krnl_ro_control_s_axi_n_216,inst_krnl_ro_control_s_axi_n_217,inst_krnl_ro_control_s_axi_n_218,inst_krnl_ro_control_s_axi_n_219}),
        .\addr_reg[1][1]_0 (inst_krnl_ro_control_s_axi_n_58),
        .\addr_reg[1][24]_0 ({inst_krnl_ro_control_s_axi_n_220,inst_krnl_ro_control_s_axi_n_221,inst_krnl_ro_control_s_axi_n_222,inst_krnl_ro_control_s_axi_n_223,inst_krnl_ro_control_s_axi_n_224,inst_krnl_ro_control_s_axi_n_225,inst_krnl_ro_control_s_axi_n_226,inst_krnl_ro_control_s_axi_n_227}),
        .\addr_reg[1][2]_0 (inst_krnl_ro_control_s_axi_n_59),
        .\addr_reg[1][32]_0 ({inst_krnl_ro_control_s_axi_n_228,inst_krnl_ro_control_s_axi_n_229,inst_krnl_ro_control_s_axi_n_230,inst_krnl_ro_control_s_axi_n_231,inst_krnl_ro_control_s_axi_n_232,inst_krnl_ro_control_s_axi_n_233,inst_krnl_ro_control_s_axi_n_234,inst_krnl_ro_control_s_axi_n_235}),
        .\addr_reg[1][3]_0 (inst_krnl_ro_control_s_axi_n_60),
        .\addr_reg[1][40]_0 ({inst_krnl_ro_control_s_axi_n_236,inst_krnl_ro_control_s_axi_n_237,inst_krnl_ro_control_s_axi_n_238,inst_krnl_ro_control_s_axi_n_239,inst_krnl_ro_control_s_axi_n_240,inst_krnl_ro_control_s_axi_n_241,inst_krnl_ro_control_s_axi_n_242,inst_krnl_ro_control_s_axi_n_243}),
        .\addr_reg[1][48]_0 ({inst_krnl_ro_control_s_axi_n_244,inst_krnl_ro_control_s_axi_n_245,inst_krnl_ro_control_s_axi_n_246,inst_krnl_ro_control_s_axi_n_247,inst_krnl_ro_control_s_axi_n_248,inst_krnl_ro_control_s_axi_n_249,inst_krnl_ro_control_s_axi_n_250,inst_krnl_ro_control_s_axi_n_251}),
        .\addr_reg[1][4]_0 (inst_krnl_ro_control_s_axi_n_61),
        .\addr_reg[1][56]_0 ({inst_krnl_ro_control_s_axi_n_252,inst_krnl_ro_control_s_axi_n_253,inst_krnl_ro_control_s_axi_n_254,inst_krnl_ro_control_s_axi_n_255,inst_krnl_ro_control_s_axi_n_256,inst_krnl_ro_control_s_axi_n_257,inst_krnl_ro_control_s_axi_n_258,inst_krnl_ro_control_s_axi_n_259}),
        .\addr_reg[1][5]_0 (inst_krnl_ro_control_s_axi_n_62),
        .\addr_reg[1][63]_0 ({inst_krnl_ro_control_s_axi_n_260,inst_krnl_ro_control_s_axi_n_261,inst_krnl_ro_control_s_axi_n_262,inst_krnl_ro_control_s_axi_n_263,inst_krnl_ro_control_s_axi_n_264,inst_krnl_ro_control_s_axi_n_265,inst_krnl_ro_control_s_axi_n_266}),
        .\addr_reg[1][6]_0 (inst_krnl_ro_control_s_axi_n_63),
        .\addr_reg[1][7]_0 (inst_krnl_ro_control_s_axi_n_64),
        .\addr_reg[1][8]_0 (inst_krnl_ro_control_s_axi_n_65),
        .\addr_reg[1]_4 (\addr_reg[1]_4 ),
        .ap_clk(ap_clk),
        .ap_start_pulse(ap_start_pulse),
        .areset(areset),
        .arvalid_r_reg_0(arvalid_r_reg),
        .\final_burst_len_reg[7]_0 ({final_burst_len0[7:5],inst_krnl_ro_control_s_axi_n_6,final_burst_len0[3:2],inst_krnl_ro_control_s_axi_n_9,final_burst_len0[0]}),
        .\id_reg[0]_0 (\id_reg[0] ),
        .m_axi_gmem_ARADDR(m_axi_gmem_ARADDR),
        .m_axi_gmem_ARLEN(m_axi_gmem_ARLEN),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .m_axi_gmem_RID(m_axi_gmem_RID),
        .m_axi_gmem_RLAST(m_axi_gmem_RLAST),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID),
        .prog_full(ctrl_rd_fifo_prog_full));
  ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_axi_write_master inst_axi_write_master
       (.Q(wm_ctrl_offset),
        .ap_clk(ap_clk),
        .areset(areset),
        .awvalid_r_reg_0(awvalid_r_reg),
        .is_zero_r_reg(inst_axi_write_master_n_65),
        .m_axi_gmem_AWADDR(m_axi_gmem_AWADDR),
        .m_axi_gmem_AWLEN(m_axi_gmem_AWLEN),
        .m_axi_gmem_AWREADY(m_axi_gmem_AWREADY),
        .m_axi_gmem_BVALID(m_axi_gmem_BVALID),
        .m_axi_gmem_BVALID_0(inst_axi_write_master_n_76),
        .m_axi_gmem_WLAST(m_axi_gmem_WLAST),
        .sent_mul(sent_mul),
        .wm_ctrl_length(wm_ctrl_length),
        .wm_ctrl_start(wm_ctrl_start),
        .wm_ctrl_start0(wm_ctrl_start0));
  ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_control_s_axi inst_krnl_ro_control_s_axi
       (.D(p_0_in__0),
        .\FSM_onehot_wstate_reg[1]_0 (\FSM_onehot_wstate_reg[1] ),
        .FSM_sequential_rstate_reg_0(FSM_sequential_rstate_reg),
        .O({inst_krnl_ro_control_s_axi_n_157,inst_krnl_ro_control_s_axi_n_158,inst_krnl_ro_control_s_axi_n_159,inst_krnl_ro_control_s_axi_n_160,inst_krnl_ro_control_s_axi_n_161,inst_krnl_ro_control_s_axi_n_162,inst_krnl_ro_control_s_axi_n_163,inst_krnl_ro_control_s_axi_n_164}),
        .Q(length_r),
        .\addr_reg[0]_3 (\addr_reg[0]_3 ),
        .\addr_reg[1]_4 (\addr_reg[1]_4 ),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_done_reg(inst_axi_write_master_n_65),
        .ap_idle(ap_idle),
        .ap_idle_reg(inst_krnl_ro_control_s_axi_n_47),
        .ap_start(ap_start),
        .ap_start_pulse(ap_start_pulse),
        .ap_start_r(ap_start_r),
        .ap_start_r_reg(inst_krnl_ro_control_s_axi_n_66),
        .ap_start_r_reg_0({inst_krnl_ro_control_s_axi_n_212,inst_krnl_ro_control_s_axi_n_213,inst_krnl_ro_control_s_axi_n_214,inst_krnl_ro_control_s_axi_n_215,inst_krnl_ro_control_s_axi_n_216,inst_krnl_ro_control_s_axi_n_217,inst_krnl_ro_control_s_axi_n_218,inst_krnl_ro_control_s_axi_n_219}),
        .areset(areset),
        .\int_a_reg[0]_0 (inst_krnl_ro_control_s_axi_n_57),
        .\int_a_reg[1]_0 (inst_krnl_ro_control_s_axi_n_58),
        .\int_a_reg[24]_0 ({inst_krnl_ro_control_s_axi_n_220,inst_krnl_ro_control_s_axi_n_221,inst_krnl_ro_control_s_axi_n_222,inst_krnl_ro_control_s_axi_n_223,inst_krnl_ro_control_s_axi_n_224,inst_krnl_ro_control_s_axi_n_225,inst_krnl_ro_control_s_axi_n_226,inst_krnl_ro_control_s_axi_n_227}),
        .\int_a_reg[2]_0 (inst_krnl_ro_control_s_axi_n_59),
        .\int_a_reg[32]_0 ({inst_krnl_ro_control_s_axi_n_228,inst_krnl_ro_control_s_axi_n_229,inst_krnl_ro_control_s_axi_n_230,inst_krnl_ro_control_s_axi_n_231,inst_krnl_ro_control_s_axi_n_232,inst_krnl_ro_control_s_axi_n_233,inst_krnl_ro_control_s_axi_n_234,inst_krnl_ro_control_s_axi_n_235}),
        .\int_a_reg[3]_0 (inst_krnl_ro_control_s_axi_n_60),
        .\int_a_reg[40]_0 ({inst_krnl_ro_control_s_axi_n_236,inst_krnl_ro_control_s_axi_n_237,inst_krnl_ro_control_s_axi_n_238,inst_krnl_ro_control_s_axi_n_239,inst_krnl_ro_control_s_axi_n_240,inst_krnl_ro_control_s_axi_n_241,inst_krnl_ro_control_s_axi_n_242,inst_krnl_ro_control_s_axi_n_243}),
        .\int_a_reg[48]_0 ({inst_krnl_ro_control_s_axi_n_244,inst_krnl_ro_control_s_axi_n_245,inst_krnl_ro_control_s_axi_n_246,inst_krnl_ro_control_s_axi_n_247,inst_krnl_ro_control_s_axi_n_248,inst_krnl_ro_control_s_axi_n_249,inst_krnl_ro_control_s_axi_n_250,inst_krnl_ro_control_s_axi_n_251}),
        .\int_a_reg[4]_0 (inst_krnl_ro_control_s_axi_n_61),
        .\int_a_reg[56]_0 ({inst_krnl_ro_control_s_axi_n_252,inst_krnl_ro_control_s_axi_n_253,inst_krnl_ro_control_s_axi_n_254,inst_krnl_ro_control_s_axi_n_255,inst_krnl_ro_control_s_axi_n_256,inst_krnl_ro_control_s_axi_n_257,inst_krnl_ro_control_s_axi_n_258,inst_krnl_ro_control_s_axi_n_259}),
        .\int_a_reg[5]_0 (inst_krnl_ro_control_s_axi_n_62),
        .\int_a_reg[63]_0 ({inst_krnl_ro_control_s_axi_n_260,inst_krnl_ro_control_s_axi_n_261,inst_krnl_ro_control_s_axi_n_262,inst_krnl_ro_control_s_axi_n_263,inst_krnl_ro_control_s_axi_n_264,inst_krnl_ro_control_s_axi_n_265,inst_krnl_ro_control_s_axi_n_266}),
        .\int_a_reg[6]_0 (inst_krnl_ro_control_s_axi_n_63),
        .\int_a_reg[7]_0 (inst_krnl_ro_control_s_axi_n_64),
        .\int_a_reg[8]_0 (inst_krnl_ro_control_s_axi_n_65),
        .\int_length_r_reg[0]_0 (inst_krnl_ro_control_s_axi_n_132),
        .\int_length_r_reg[30]_0 (num_transactions0),
        .\int_length_r_reg[7]_0 ({final_burst_len0[7:5],inst_krnl_ro_control_s_axi_n_6,final_burst_len0[3:2],inst_krnl_ro_control_s_axi_n_9,final_burst_len0[0]}),
        .\int_ro_in_reg[0]_0 (inst_krnl_ro_control_s_axi_n_48),
        .\int_ro_in_reg[1]_0 (inst_krnl_ro_control_s_axi_n_49),
        .\int_ro_in_reg[24]_0 ({inst_krnl_ro_control_s_axi_n_165,inst_krnl_ro_control_s_axi_n_166,inst_krnl_ro_control_s_axi_n_167,inst_krnl_ro_control_s_axi_n_168,inst_krnl_ro_control_s_axi_n_169,inst_krnl_ro_control_s_axi_n_170,inst_krnl_ro_control_s_axi_n_171,inst_krnl_ro_control_s_axi_n_172}),
        .\int_ro_in_reg[2]_0 (inst_krnl_ro_control_s_axi_n_50),
        .\int_ro_in_reg[32]_0 ({inst_krnl_ro_control_s_axi_n_173,inst_krnl_ro_control_s_axi_n_174,inst_krnl_ro_control_s_axi_n_175,inst_krnl_ro_control_s_axi_n_176,inst_krnl_ro_control_s_axi_n_177,inst_krnl_ro_control_s_axi_n_178,inst_krnl_ro_control_s_axi_n_179,inst_krnl_ro_control_s_axi_n_180}),
        .\int_ro_in_reg[3]_0 (inst_krnl_ro_control_s_axi_n_51),
        .\int_ro_in_reg[40]_0 ({inst_krnl_ro_control_s_axi_n_181,inst_krnl_ro_control_s_axi_n_182,inst_krnl_ro_control_s_axi_n_183,inst_krnl_ro_control_s_axi_n_184,inst_krnl_ro_control_s_axi_n_185,inst_krnl_ro_control_s_axi_n_186,inst_krnl_ro_control_s_axi_n_187,inst_krnl_ro_control_s_axi_n_188}),
        .\int_ro_in_reg[48]_0 ({inst_krnl_ro_control_s_axi_n_189,inst_krnl_ro_control_s_axi_n_190,inst_krnl_ro_control_s_axi_n_191,inst_krnl_ro_control_s_axi_n_192,inst_krnl_ro_control_s_axi_n_193,inst_krnl_ro_control_s_axi_n_194,inst_krnl_ro_control_s_axi_n_195,inst_krnl_ro_control_s_axi_n_196}),
        .\int_ro_in_reg[4]_0 (inst_krnl_ro_control_s_axi_n_52),
        .\int_ro_in_reg[56]_0 ({inst_krnl_ro_control_s_axi_n_197,inst_krnl_ro_control_s_axi_n_198,inst_krnl_ro_control_s_axi_n_199,inst_krnl_ro_control_s_axi_n_200,inst_krnl_ro_control_s_axi_n_201,inst_krnl_ro_control_s_axi_n_202,inst_krnl_ro_control_s_axi_n_203,inst_krnl_ro_control_s_axi_n_204}),
        .\int_ro_in_reg[5]_0 (inst_krnl_ro_control_s_axi_n_53),
        .\int_ro_in_reg[63]_0 ({inst_krnl_ro_control_s_axi_n_205,inst_krnl_ro_control_s_axi_n_206,inst_krnl_ro_control_s_axi_n_207,inst_krnl_ro_control_s_axi_n_208,inst_krnl_ro_control_s_axi_n_209,inst_krnl_ro_control_s_axi_n_210,inst_krnl_ro_control_s_axi_n_211}),
        .\int_ro_in_reg[6]_0 (inst_krnl_ro_control_s_axi_n_54),
        .\int_ro_in_reg[7]_0 (inst_krnl_ro_control_s_axi_n_55),
        .\int_ro_in_reg[8]_0 (inst_krnl_ro_control_s_axi_n_56),
        .interrupt(interrupt),
        .m_axi_gmem_BVALID(m_axi_gmem_BVALID),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .sent_mul(sent_mul),
        .sent_mul_reg(inst_krnl_ro_control_s_axi_n_2));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "254" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "fwft" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* XPM_MODULE = "TRUE" *) 
  ulp_krnl_ro_rtl_1_0_xpm_fifo_sync \inst_rd_xpm_fifo_sync[0] 
       (.almost_empty(\NLW_inst_rd_xpm_fifo_sync[0]_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_inst_rd_xpm_fifo_sync[0]_almost_full_UNCONNECTED ),
        .data_valid(\NLW_inst_rd_xpm_fifo_sync[0]_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_inst_rd_xpm_fifo_sync[0]_dbiterr_UNCONNECTED ),
        .din(m_axi_gmem_RDATA),
        .dout({\inst_rd_xpm_fifo_sync_n_17_[0] ,\inst_rd_xpm_fifo_sync_n_18_[0] ,\inst_rd_xpm_fifo_sync_n_19_[0] ,\inst_rd_xpm_fifo_sync_n_20_[0] ,\inst_rd_xpm_fifo_sync_n_21_[0] ,\inst_rd_xpm_fifo_sync_n_22_[0] ,\inst_rd_xpm_fifo_sync_n_23_[0] ,\inst_rd_xpm_fifo_sync_n_24_[0] ,\inst_rd_xpm_fifo_sync_n_25_[0] ,\inst_rd_xpm_fifo_sync_n_26_[0] ,\inst_rd_xpm_fifo_sync_n_27_[0] ,\inst_rd_xpm_fifo_sync_n_28_[0] ,\inst_rd_xpm_fifo_sync_n_29_[0] ,\inst_rd_xpm_fifo_sync_n_30_[0] ,\inst_rd_xpm_fifo_sync_n_31_[0] ,\inst_rd_xpm_fifo_sync_n_32_[0] ,\inst_rd_xpm_fifo_sync_n_33_[0] ,\inst_rd_xpm_fifo_sync_n_34_[0] ,\inst_rd_xpm_fifo_sync_n_35_[0] ,\inst_rd_xpm_fifo_sync_n_36_[0] ,\inst_rd_xpm_fifo_sync_n_37_[0] ,\inst_rd_xpm_fifo_sync_n_38_[0] ,\inst_rd_xpm_fifo_sync_n_39_[0] ,\inst_rd_xpm_fifo_sync_n_40_[0] ,\inst_rd_xpm_fifo_sync_n_41_[0] ,\inst_rd_xpm_fifo_sync_n_42_[0] ,\inst_rd_xpm_fifo_sync_n_43_[0] ,\inst_rd_xpm_fifo_sync_n_44_[0] ,\inst_rd_xpm_fifo_sync_n_45_[0] ,\inst_rd_xpm_fifo_sync_n_46_[0] ,\inst_rd_xpm_fifo_sync_n_47_[0] ,\inst_rd_xpm_fifo_sync_n_48_[0] }),
        .empty(\NLW_inst_rd_xpm_fifo_sync[0]_empty_UNCONNECTED ),
        .full(\NLW_inst_rd_xpm_fifo_sync[0]_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_inst_rd_xpm_fifo_sync[0]_overflow_UNCONNECTED ),
        .prog_empty(\NLW_inst_rd_xpm_fifo_sync[0]_prog_empty_UNCONNECTED ),
        .prog_full(ctrl_rd_fifo_prog_full[0]),
        .rd_data_count(\NLW_inst_rd_xpm_fifo_sync[0]_rd_data_count_UNCONNECTED [10:0]),
        .rd_en(1'b0),
        .rd_rst_busy(\NLW_inst_rd_xpm_fifo_sync[0]_rd_rst_busy_UNCONNECTED ),
        .rst(areset),
        .sbiterr(\NLW_inst_rd_xpm_fifo_sync[0]_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_inst_rd_xpm_fifo_sync[0]_underflow_UNCONNECTED ),
        .wr_ack(\NLW_inst_rd_xpm_fifo_sync[0]_wr_ack_UNCONNECTED ),
        .wr_clk(ap_clk),
        .wr_data_count(\NLW_inst_rd_xpm_fifo_sync[0]_wr_data_count_UNCONNECTED [10:0]),
        .wr_en(rd_tvalid[0]),
        .wr_rst_busy(\NLW_inst_rd_xpm_fifo_sync[0]_wr_rst_busy_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair355" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \inst_rd_xpm_fifo_sync[0]_i_1 
       (.I0(m_axi_gmem_RVALID),
        .I1(m_axi_gmem_RID),
        .O(rd_tvalid[0]));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "254" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "fwft" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* XPM_MODULE = "TRUE" *) 
  ulp_krnl_ro_rtl_1_0_xpm_fifo_sync__3 \inst_rd_xpm_fifo_sync[1] 
       (.almost_empty(\NLW_inst_rd_xpm_fifo_sync[1]_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_inst_rd_xpm_fifo_sync[1]_almost_full_UNCONNECTED ),
        .data_valid(\NLW_inst_rd_xpm_fifo_sync[1]_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_inst_rd_xpm_fifo_sync[1]_dbiterr_UNCONNECTED ),
        .din(m_axi_gmem_RDATA),
        .dout(\rd_fifo_tdata[1]_2 ),
        .empty(\NLW_inst_rd_xpm_fifo_sync[1]_empty_UNCONNECTED ),
        .full(\NLW_inst_rd_xpm_fifo_sync[1]_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_inst_rd_xpm_fifo_sync[1]_overflow_UNCONNECTED ),
        .prog_empty(\NLW_inst_rd_xpm_fifo_sync[1]_prog_empty_UNCONNECTED ),
        .prog_full(ctrl_rd_fifo_prog_full[1]),
        .rd_data_count(\NLW_inst_rd_xpm_fifo_sync[1]_rd_data_count_UNCONNECTED [10:0]),
        .rd_en(1'b0),
        .rd_rst_busy(\NLW_inst_rd_xpm_fifo_sync[1]_rd_rst_busy_UNCONNECTED ),
        .rst(areset),
        .sbiterr(\NLW_inst_rd_xpm_fifo_sync[1]_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_inst_rd_xpm_fifo_sync[1]_underflow_UNCONNECTED ),
        .wr_ack(\NLW_inst_rd_xpm_fifo_sync[1]_wr_ack_UNCONNECTED ),
        .wr_clk(ap_clk),
        .wr_data_count(\NLW_inst_rd_xpm_fifo_sync[1]_wr_data_count_UNCONNECTED [10:0]),
        .wr_en(rd_tvalid[1]),
        .wr_rst_busy(\NLW_inst_rd_xpm_fifo_sync[1]_wr_rst_busy_UNCONNECTED ));
  (* SOFT_HLUTNM = "soft_lutpair355" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \inst_rd_xpm_fifo_sync[1]_i_1 
       (.I0(m_axi_gmem_RID),
        .I1(m_axi_gmem_RVALID),
        .O(rd_tvalid[1]));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "254" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "fwft" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* XPM_MODULE = "TRUE" *) 
  ulp_krnl_ro_rtl_1_0_xpm_fifo_sync__1 \inst_rd_xpm_fifo_sync[3] 
       (.almost_empty(\NLW_inst_rd_xpm_fifo_sync[3]_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_inst_rd_xpm_fifo_sync[3]_almost_full_UNCONNECTED ),
        .data_valid(\NLW_inst_rd_xpm_fifo_sync[3]_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_inst_rd_xpm_fifo_sync[3]_dbiterr_UNCONNECTED ),
        .din(m_axi_gmem_RDATA),
        .dout(\rd_fifo_tdata[3]_1 ),
        .empty(p_0_in),
        .full(\NLW_inst_rd_xpm_fifo_sync[3]_full_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_inst_rd_xpm_fifo_sync[3]_overflow_UNCONNECTED ),
        .prog_empty(\NLW_inst_rd_xpm_fifo_sync[3]_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_inst_rd_xpm_fifo_sync[3]_prog_full_UNCONNECTED ),
        .rd_data_count(\NLW_inst_rd_xpm_fifo_sync[3]_rd_data_count_UNCONNECTED [10:0]),
        .rd_en(rd_fifo_tready),
        .rd_rst_busy(\NLW_inst_rd_xpm_fifo_sync[3]_rd_rst_busy_UNCONNECTED ),
        .rst(areset),
        .sbiterr(\NLW_inst_rd_xpm_fifo_sync[3]_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_inst_rd_xpm_fifo_sync[3]_underflow_UNCONNECTED ),
        .wr_ack(\NLW_inst_rd_xpm_fifo_sync[3]_wr_ack_UNCONNECTED ),
        .wr_clk(ap_clk),
        .wr_data_count(\NLW_inst_rd_xpm_fifo_sync[3]_wr_data_count_UNCONNECTED [10:0]),
        .wr_en(1'b0),
        .wr_rst_busy(\NLW_inst_rd_xpm_fifo_sync[3]_wr_rst_busy_UNCONNECTED ));
  (* CLOCKS_PER_BIT = "8388608" *) 
  (* CONTINUE_MEASURE = "3'b010" *) 
  (* COUNTER_BIT = "32" *) 
  (* C_DATA_WIDTH = "32" *) 
  (* C_NUM_CHANNELS_RO = "1" *) 
  (* DONT_TOUCH *) 
  (* IDLE = "3'b000" *) 
  (* ROMEASURE = "3'b001" *) 
  (* RO_TYPE = "1" *) 
  (* STAGES = "2" *) 
  ulp_krnl_ro_rtl_1_0_ro_sensor inst_ro_sensor
       (.aclk(ap_clk),
        .areset(areset),
        .m_tdata(\adder_tdata[1]_0 ),
        .m_tready(inst_ro_sensor_i_2_n_0),
        .m_tvalid(adder_tvalid),
        .\s_tdata[0] (\rd_fifo_tdata[3]_1 ),
        .s_tready(rd_fifo_tready),
        .s_tvalid(inst_ro_sensor_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    inst_ro_sensor_i_1
       (.I0(p_0_in),
        .O(inst_ro_sensor_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    inst_ro_sensor_i_2
       (.I0(\inst_wr_xpm_fifo_sync_n_0_[1] ),
        .O(inst_ro_sensor_i_2_n_0));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* FIFO_MEMORY_TYPE = "auto" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "256" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "8" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "fwft" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "8" *) 
  (* XPM_MODULE = "TRUE" *) 
  ulp_krnl_ro_rtl_1_0_xpm_fifo_sync__parameterized0__1 \inst_wr_xpm_fifo_sync[1] 
       (.almost_empty(\NLW_inst_wr_xpm_fifo_sync[1]_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_inst_wr_xpm_fifo_sync[1]_almost_full_UNCONNECTED ),
        .data_valid(\NLW_inst_wr_xpm_fifo_sync[1]_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_inst_wr_xpm_fifo_sync[1]_dbiterr_UNCONNECTED ),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(\NLW_inst_wr_xpm_fifo_sync[1]_dout_UNCONNECTED [31:0]),
        .empty(\NLW_inst_wr_xpm_fifo_sync[1]_empty_UNCONNECTED ),
        .full(\inst_wr_xpm_fifo_sync_n_0_[1] ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_inst_wr_xpm_fifo_sync[1]_overflow_UNCONNECTED ),
        .prog_empty(\NLW_inst_wr_xpm_fifo_sync[1]_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_inst_wr_xpm_fifo_sync[1]_prog_full_UNCONNECTED ),
        .rd_data_count(\NLW_inst_wr_xpm_fifo_sync[1]_rd_data_count_UNCONNECTED [7:0]),
        .rd_en(1'b0),
        .rd_rst_busy(\NLW_inst_wr_xpm_fifo_sync[1]_rd_rst_busy_UNCONNECTED ),
        .rst(areset),
        .sbiterr(\NLW_inst_wr_xpm_fifo_sync[1]_sbiterr_UNCONNECTED ),
        .sleep(1'b0),
        .underflow(\NLW_inst_wr_xpm_fifo_sync[1]_underflow_UNCONNECTED ),
        .wr_ack(\NLW_inst_wr_xpm_fifo_sync[1]_wr_ack_UNCONNECTED ),
        .wr_clk(ap_clk),
        .wr_data_count(\NLW_inst_wr_xpm_fifo_sync[1]_wr_data_count_UNCONNECTED [7:0]),
        .wr_en(adder_tvalid),
        .wr_rst_busy(\NLW_inst_wr_xpm_fifo_sync[1]_wr_rst_busy_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    sent_mul_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(inst_axi_write_master_n_76),
        .Q(sent_mul),
        .R(ap_start_pulse));
  FDRE \wm_ctrl_length_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(inst_krnl_ro_control_s_axi_n_132),
        .Q(wm_ctrl_length[0]),
        .R(1'b0));
  FDRE \wm_ctrl_length_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[10]),
        .Q(wm_ctrl_length[10]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[11]),
        .Q(wm_ctrl_length[11]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[12]),
        .Q(wm_ctrl_length[12]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[13]),
        .Q(wm_ctrl_length[13]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[14]),
        .Q(wm_ctrl_length[14]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[15]),
        .Q(wm_ctrl_length[15]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[16]),
        .Q(wm_ctrl_length[16]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[17]),
        .Q(wm_ctrl_length[17]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[18]),
        .Q(wm_ctrl_length[18]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[19]),
        .Q(wm_ctrl_length[19]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[1]),
        .Q(wm_ctrl_length[1]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[20]),
        .Q(wm_ctrl_length[20]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[21]),
        .Q(wm_ctrl_length[21]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[22]),
        .Q(wm_ctrl_length[22]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[23]),
        .Q(wm_ctrl_length[23]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[24]),
        .Q(wm_ctrl_length[24]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[25]),
        .Q(wm_ctrl_length[25]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[26]),
        .Q(wm_ctrl_length[26]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[27]),
        .Q(wm_ctrl_length[27]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[28]),
        .Q(wm_ctrl_length[28]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[29]),
        .Q(wm_ctrl_length[29]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[2]),
        .Q(wm_ctrl_length[2]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[30]),
        .Q(wm_ctrl_length[30]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[31]),
        .Q(wm_ctrl_length[31]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[3]),
        .Q(wm_ctrl_length[3]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[4]),
        .Q(wm_ctrl_length[4]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[5]),
        .Q(wm_ctrl_length[5]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[6]),
        .Q(wm_ctrl_length[6]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[7]),
        .Q(wm_ctrl_length[7]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[8]),
        .Q(wm_ctrl_length[8]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_length_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(length_r[9]),
        .Q(wm_ctrl_length[9]),
        .R(inst_krnl_ro_control_s_axi_n_66));
  FDRE \wm_ctrl_offset_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(wm_ctrl_offset[0]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[10]),
        .Q(wm_ctrl_offset[10]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[11]),
        .Q(wm_ctrl_offset[11]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[12]),
        .Q(wm_ctrl_offset[12]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[13]),
        .Q(wm_ctrl_offset[13]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[14]),
        .Q(wm_ctrl_offset[14]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[15]),
        .Q(wm_ctrl_offset[15]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[16]),
        .Q(wm_ctrl_offset[16]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[17]),
        .Q(wm_ctrl_offset[17]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[18]),
        .Q(wm_ctrl_offset[18]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[19]),
        .Q(wm_ctrl_offset[19]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(wm_ctrl_offset[1]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[20]),
        .Q(wm_ctrl_offset[20]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[21]),
        .Q(wm_ctrl_offset[21]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[22]),
        .Q(wm_ctrl_offset[22]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[23]),
        .Q(wm_ctrl_offset[23]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[24]),
        .Q(wm_ctrl_offset[24]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[25]),
        .Q(wm_ctrl_offset[25]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[26]),
        .Q(wm_ctrl_offset[26]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[27]),
        .Q(wm_ctrl_offset[27]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[28]),
        .Q(wm_ctrl_offset[28]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[29]),
        .Q(wm_ctrl_offset[29]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(wm_ctrl_offset[2]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[30]),
        .Q(wm_ctrl_offset[30]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[31]),
        .Q(wm_ctrl_offset[31]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[32] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[32]),
        .Q(wm_ctrl_offset[32]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[33] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[33]),
        .Q(wm_ctrl_offset[33]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[34] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[34]),
        .Q(wm_ctrl_offset[34]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[35] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[35]),
        .Q(wm_ctrl_offset[35]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[36] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[36]),
        .Q(wm_ctrl_offset[36]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[37] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[37]),
        .Q(wm_ctrl_offset[37]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[38] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[38]),
        .Q(wm_ctrl_offset[38]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[39] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[39]),
        .Q(wm_ctrl_offset[39]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(wm_ctrl_offset[3]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[40] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[40]),
        .Q(wm_ctrl_offset[40]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[41] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[41]),
        .Q(wm_ctrl_offset[41]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[42] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[42]),
        .Q(wm_ctrl_offset[42]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[43] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[43]),
        .Q(wm_ctrl_offset[43]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[44] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[44]),
        .Q(wm_ctrl_offset[44]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[45] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[45]),
        .Q(wm_ctrl_offset[45]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[46] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[46]),
        .Q(wm_ctrl_offset[46]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[47] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[47]),
        .Q(wm_ctrl_offset[47]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[48] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[48]),
        .Q(wm_ctrl_offset[48]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[49] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[49]),
        .Q(wm_ctrl_offset[49]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(wm_ctrl_offset[4]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[50] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[50]),
        .Q(wm_ctrl_offset[50]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[51] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[51]),
        .Q(wm_ctrl_offset[51]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[52] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[52]),
        .Q(wm_ctrl_offset[52]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[53] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[53]),
        .Q(wm_ctrl_offset[53]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[54] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[54]),
        .Q(wm_ctrl_offset[54]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[55] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[55]),
        .Q(wm_ctrl_offset[55]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[56] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[56]),
        .Q(wm_ctrl_offset[56]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[57] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[57]),
        .Q(wm_ctrl_offset[57]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[58] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[58]),
        .Q(wm_ctrl_offset[58]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[59] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[59]),
        .Q(wm_ctrl_offset[59]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(wm_ctrl_offset[5]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[60] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[60]),
        .Q(wm_ctrl_offset[60]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[61] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[61]),
        .Q(wm_ctrl_offset[61]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[62] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[62]),
        .Q(wm_ctrl_offset[62]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[63] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[63]),
        .Q(wm_ctrl_offset[63]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(wm_ctrl_offset[6]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(wm_ctrl_offset[7]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(wm_ctrl_offset[8]),
        .R(1'b0));
  FDRE \wm_ctrl_offset_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(wm_ctrl_offset[9]),
        .R(1'b0));
  FDSE wm_ctrl_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(wm_ctrl_start0),
        .Q(wm_ctrl_start),
        .S(ap_start_pulse));
endmodule

(* LAST = "3" *) (* RO_TYPE = "2" *) (* STAGES = "2" *) 
module ulp_krnl_ro_rtl_1_0_ring_oscillator
   (enable,
    ro_out);
  input enable;
  output ro_out;

  wire enable;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [3:0]ro_wire;

  assign ro_out = ro_wire[3];
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT2 #(
    .INIT(4'h4)) 
    ro_inv
       (.I0(ro_wire[0]),
        .I1(enable),
        .O(ro_wire[1]));
  (* ALLOW_COMBINATORIAL_LOOPS = "TRUE" *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ro_ld
       (.CLR(1'b0),
        .D(ro_wire[3]),
        .G(1'b1),
        .GE(1'b1),
        .Q(ro_wire[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \ro_stages[0].ro_buf 
       (.I0(ro_wire[1]),
        .O(ro_wire[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  LUT1 #(
    .INIT(2'h2)) 
    \ro_stages[1].ro_buf 
       (.I0(ro_wire[2]),
        .O(ro_wire[3]));
endmodule

(* CLOCKS_PER_BIT = "8388608" *) (* CONTINUE_MEASURE = "3'b010" *) (* COUNTER_BIT = "32" *) 
(* C_DATA_WIDTH = "32" *) (* C_NUM_CHANNELS_RO = "1" *) (* IDLE = "3'b000" *) 
(* ROMEASURE = "3'b001" *) (* RO_TYPE = "1" *) (* STAGES = "2" *) 
module ulp_krnl_ro_rtl_1_0_ro_sensor
   (aclk,
    areset,
    s_tvalid,
    \s_tdata[0] ,
    s_tready,
    m_tvalid,
    m_tdata,
    m_tready);
  input aclk;
  input areset;
  input [0:0]s_tvalid;
  input [31:0]\s_tdata[0] ;
  output [0:0]s_tready;
  output m_tvalid;
  output [31:0]m_tdata;
  input m_tready;

  wire aclk;
  wire areset;
  wire [23:0]counter_clk;
  wire counter_clk0;
  wire \counter_clk[0]_i_1_n_0 ;
  wire \counter_clk[23]_i_3_n_0 ;
  wire \counter_clk[23]_i_4_n_0 ;
  wire \counter_clk[23]_i_5_n_0 ;
  wire \counter_clk_reg[16]_i_2_n_0 ;
  wire \counter_clk_reg[16]_i_2_n_1 ;
  wire \counter_clk_reg[16]_i_2_n_10 ;
  wire \counter_clk_reg[16]_i_2_n_11 ;
  wire \counter_clk_reg[16]_i_2_n_12 ;
  wire \counter_clk_reg[16]_i_2_n_13 ;
  wire \counter_clk_reg[16]_i_2_n_14 ;
  wire \counter_clk_reg[16]_i_2_n_15 ;
  wire \counter_clk_reg[16]_i_2_n_2 ;
  wire \counter_clk_reg[16]_i_2_n_3 ;
  wire \counter_clk_reg[16]_i_2_n_4 ;
  wire \counter_clk_reg[16]_i_2_n_5 ;
  wire \counter_clk_reg[16]_i_2_n_6 ;
  wire \counter_clk_reg[16]_i_2_n_7 ;
  wire \counter_clk_reg[16]_i_2_n_8 ;
  wire \counter_clk_reg[16]_i_2_n_9 ;
  wire \counter_clk_reg[23]_i_6_n_10 ;
  wire \counter_clk_reg[23]_i_6_n_11 ;
  wire \counter_clk_reg[23]_i_6_n_12 ;
  wire \counter_clk_reg[23]_i_6_n_13 ;
  wire \counter_clk_reg[23]_i_6_n_14 ;
  wire \counter_clk_reg[23]_i_6_n_15 ;
  wire \counter_clk_reg[23]_i_6_n_2 ;
  wire \counter_clk_reg[23]_i_6_n_3 ;
  wire \counter_clk_reg[23]_i_6_n_4 ;
  wire \counter_clk_reg[23]_i_6_n_5 ;
  wire \counter_clk_reg[23]_i_6_n_6 ;
  wire \counter_clk_reg[23]_i_6_n_7 ;
  wire \counter_clk_reg[23]_i_6_n_9 ;
  wire \counter_clk_reg[8]_i_2_n_0 ;
  wire \counter_clk_reg[8]_i_2_n_1 ;
  wire \counter_clk_reg[8]_i_2_n_10 ;
  wire \counter_clk_reg[8]_i_2_n_11 ;
  wire \counter_clk_reg[8]_i_2_n_12 ;
  wire \counter_clk_reg[8]_i_2_n_13 ;
  wire \counter_clk_reg[8]_i_2_n_14 ;
  wire \counter_clk_reg[8]_i_2_n_15 ;
  wire \counter_clk_reg[8]_i_2_n_2 ;
  wire \counter_clk_reg[8]_i_2_n_3 ;
  wire \counter_clk_reg[8]_i_2_n_4 ;
  wire \counter_clk_reg[8]_i_2_n_5 ;
  wire \counter_clk_reg[8]_i_2_n_6 ;
  wire \counter_clk_reg[8]_i_2_n_7 ;
  wire \counter_clk_reg[8]_i_2_n_8 ;
  wire \counter_clk_reg[8]_i_2_n_9 ;
  wire [31:0]m_tdata;
  wire m_tdata_reg;
  wire m_tready;
  wire [1:0]p_0_in;
  wire [23:1]p_1_in__0;
  (* DONT_TOUCH *) wire [31:0]ro_counter_count;
  (* DONT_TOUCH *) wire ro_counter_reset;
  wire ro_counter_reset_i_1_n_0;
  wire ro_out;
  wire [31:0]\s_tdata[0] ;
  wire [0:0]s_tready;
  wire [0:0]s_tvalid;
  (* DONT_TOUCH *) wire [2:0]state;
  wire \state[0]_i_10_n_0 ;
  wire \state[0]_i_11_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[0]_i_7_n_0 ;
  wire \state[0]_i_8_n_0 ;
  wire \state[0]_i_9_n_0 ;
  wire [7:6]\NLW_counter_clk_reg[23]_i_6_CO_UNCONNECTED ;
  wire [7:7]\NLW_counter_clk_reg[23]_i_6_O_UNCONNECTED ;

  assign m_tvalid = s_tvalid;
  (* COUNTER_BIT = "32" *) 
  (* DONT_TOUCH *) 
  ulp_krnl_ro_rtl_1_0_counter counter_RO
       (.count(ro_counter_count),
        .reset(ro_counter_reset),
        .tick(ro_out));
  LUT2 #(
    .INIT(4'h2)) 
    \counter_clk[0]_i_1 
       (.I0(state[0]),
        .I1(counter_clk[0]),
        .O(\counter_clk[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[10]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[16]_i_2_n_14 ),
        .O(p_1_in__0[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[11]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[16]_i_2_n_13 ),
        .O(p_1_in__0[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[12]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[16]_i_2_n_12 ),
        .O(p_1_in__0[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[13]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[16]_i_2_n_11 ),
        .O(p_1_in__0[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[14]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[16]_i_2_n_10 ),
        .O(p_1_in__0[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[15]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[16]_i_2_n_9 ),
        .O(p_1_in__0[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[16]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[16]_i_2_n_8 ),
        .O(p_1_in__0[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[17]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[23]_i_6_n_15 ),
        .O(p_1_in__0[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[18]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[23]_i_6_n_14 ),
        .O(p_1_in__0[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[19]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[23]_i_6_n_13 ),
        .O(p_1_in__0[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[1]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[8]_i_2_n_15 ),
        .O(p_1_in__0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[20]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[23]_i_6_n_12 ),
        .O(p_1_in__0[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[21]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[23]_i_6_n_11 ),
        .O(p_1_in__0[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[22]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[23]_i_6_n_10 ),
        .O(p_1_in__0[22]));
  LUT6 #(
    .INIT(64'h5555555500000004)) 
    \counter_clk[23]_i_1 
       (.I0(state[2]),
        .I1(\s_tdata[0] [0]),
        .I2(\counter_clk[23]_i_3_n_0 ),
        .I3(\counter_clk[23]_i_4_n_0 ),
        .I4(\state[0]_i_2_n_0 ),
        .I5(\counter_clk[23]_i_5_n_0 ),
        .O(counter_clk0));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[23]_i_2 
       (.I0(state[0]),
        .I1(\counter_clk_reg[23]_i_6_n_9 ),
        .O(p_1_in__0[23]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter_clk[23]_i_3 
       (.I0(\s_tdata[0] [13]),
        .I1(\s_tdata[0] [12]),
        .I2(\s_tdata[0] [15]),
        .I3(\s_tdata[0] [14]),
        .I4(\state[0]_i_8_n_0 ),
        .O(\counter_clk[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter_clk[23]_i_4 
       (.I0(\state[0]_i_11_n_0 ),
        .I1(\s_tdata[0] [1]),
        .I2(state[0]),
        .I3(\s_tdata[0] [3]),
        .I4(\s_tdata[0] [2]),
        .O(\counter_clk[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1A)) 
    \counter_clk[23]_i_5 
       (.I0(state[1]),
        .I1(counter_clk[23]),
        .I2(state[0]),
        .O(\counter_clk[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[2]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[8]_i_2_n_14 ),
        .O(p_1_in__0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[3]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[8]_i_2_n_13 ),
        .O(p_1_in__0[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[4]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[8]_i_2_n_12 ),
        .O(p_1_in__0[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[5]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[8]_i_2_n_11 ),
        .O(p_1_in__0[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[6]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[8]_i_2_n_10 ),
        .O(p_1_in__0[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[7]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[8]_i_2_n_9 ),
        .O(p_1_in__0[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[8]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[8]_i_2_n_8 ),
        .O(p_1_in__0[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_clk[9]_i_1 
       (.I0(state[0]),
        .I1(\counter_clk_reg[16]_i_2_n_15 ),
        .O(p_1_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[0] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(\counter_clk[0]_i_1_n_0 ),
        .Q(counter_clk[0]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[10] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[10]),
        .Q(counter_clk[10]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[11] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[11]),
        .Q(counter_clk[11]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[12] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[12]),
        .Q(counter_clk[12]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[13] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[13]),
        .Q(counter_clk[13]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[14] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[14]),
        .Q(counter_clk[14]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[15] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[15]),
        .Q(counter_clk[15]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[16] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[16]),
        .Q(counter_clk[16]),
        .R(areset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \counter_clk_reg[16]_i_2 
       (.CI(\counter_clk_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_clk_reg[16]_i_2_n_0 ,\counter_clk_reg[16]_i_2_n_1 ,\counter_clk_reg[16]_i_2_n_2 ,\counter_clk_reg[16]_i_2_n_3 ,\counter_clk_reg[16]_i_2_n_4 ,\counter_clk_reg[16]_i_2_n_5 ,\counter_clk_reg[16]_i_2_n_6 ,\counter_clk_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[16]_i_2_n_8 ,\counter_clk_reg[16]_i_2_n_9 ,\counter_clk_reg[16]_i_2_n_10 ,\counter_clk_reg[16]_i_2_n_11 ,\counter_clk_reg[16]_i_2_n_12 ,\counter_clk_reg[16]_i_2_n_13 ,\counter_clk_reg[16]_i_2_n_14 ,\counter_clk_reg[16]_i_2_n_15 }),
        .S(counter_clk[16:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[17] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[17]),
        .Q(counter_clk[17]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[18] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[18]),
        .Q(counter_clk[18]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[19] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[19]),
        .Q(counter_clk[19]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[1] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[1]),
        .Q(counter_clk[1]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[20] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[20]),
        .Q(counter_clk[20]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[21] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[21]),
        .Q(counter_clk[21]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[22] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[22]),
        .Q(counter_clk[22]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[23] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[23]),
        .Q(counter_clk[23]),
        .R(areset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \counter_clk_reg[23]_i_6 
       (.CI(\counter_clk_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_clk_reg[23]_i_6_CO_UNCONNECTED [7:6],\counter_clk_reg[23]_i_6_n_2 ,\counter_clk_reg[23]_i_6_n_3 ,\counter_clk_reg[23]_i_6_n_4 ,\counter_clk_reg[23]_i_6_n_5 ,\counter_clk_reg[23]_i_6_n_6 ,\counter_clk_reg[23]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_clk_reg[23]_i_6_O_UNCONNECTED [7],\counter_clk_reg[23]_i_6_n_9 ,\counter_clk_reg[23]_i_6_n_10 ,\counter_clk_reg[23]_i_6_n_11 ,\counter_clk_reg[23]_i_6_n_12 ,\counter_clk_reg[23]_i_6_n_13 ,\counter_clk_reg[23]_i_6_n_14 ,\counter_clk_reg[23]_i_6_n_15 }),
        .S({1'b0,counter_clk[23:17]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[2] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[2]),
        .Q(counter_clk[2]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[3] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[3]),
        .Q(counter_clk[3]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[4] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[4]),
        .Q(counter_clk[4]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[5] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[5]),
        .Q(counter_clk[5]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[6] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[6]),
        .Q(counter_clk[6]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[7] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[7]),
        .Q(counter_clk[7]),
        .R(areset));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[8] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[8]),
        .Q(counter_clk[8]),
        .R(areset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \counter_clk_reg[8]_i_2 
       (.CI(counter_clk[0]),
        .CI_TOP(1'b0),
        .CO({\counter_clk_reg[8]_i_2_n_0 ,\counter_clk_reg[8]_i_2_n_1 ,\counter_clk_reg[8]_i_2_n_2 ,\counter_clk_reg[8]_i_2_n_3 ,\counter_clk_reg[8]_i_2_n_4 ,\counter_clk_reg[8]_i_2_n_5 ,\counter_clk_reg[8]_i_2_n_6 ,\counter_clk_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_clk_reg[8]_i_2_n_8 ,\counter_clk_reg[8]_i_2_n_9 ,\counter_clk_reg[8]_i_2_n_10 ,\counter_clk_reg[8]_i_2_n_11 ,\counter_clk_reg[8]_i_2_n_12 ,\counter_clk_reg[8]_i_2_n_13 ,\counter_clk_reg[8]_i_2_n_14 ,\counter_clk_reg[8]_i_2_n_15 }),
        .S(counter_clk[8:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_clk_reg[9] 
       (.C(aclk),
        .CE(counter_clk0),
        .D(p_1_in__0[9]),
        .Q(counter_clk[9]),
        .R(areset));
  LUT5 #(
    .INIT(32'h00001000)) 
    \m_tdata_reg[31]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(counter_clk[23]),
        .I4(areset),
        .O(m_tdata_reg));
  FDRE \m_tdata_reg_reg[0] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[0]),
        .Q(m_tdata[0]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[10] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[10]),
        .Q(m_tdata[10]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[11] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[11]),
        .Q(m_tdata[11]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[12] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[12]),
        .Q(m_tdata[12]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[13] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[13]),
        .Q(m_tdata[13]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[14] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[14]),
        .Q(m_tdata[14]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[15] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[15]),
        .Q(m_tdata[15]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[16] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[16]),
        .Q(m_tdata[16]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[17] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[17]),
        .Q(m_tdata[17]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[18] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[18]),
        .Q(m_tdata[18]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[19] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[19]),
        .Q(m_tdata[19]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[1] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[1]),
        .Q(m_tdata[1]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[20] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[20]),
        .Q(m_tdata[20]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[21] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[21]),
        .Q(m_tdata[21]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[22] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[22]),
        .Q(m_tdata[22]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[23] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[23]),
        .Q(m_tdata[23]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[24] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[24]),
        .Q(m_tdata[24]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[25] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[25]),
        .Q(m_tdata[25]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[26] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[26]),
        .Q(m_tdata[26]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[27] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[27]),
        .Q(m_tdata[27]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[28] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[28]),
        .Q(m_tdata[28]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[29] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[29]),
        .Q(m_tdata[29]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[2] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[2]),
        .Q(m_tdata[2]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[30] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[30]),
        .Q(m_tdata[30]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[31] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[31]),
        .Q(m_tdata[31]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[3] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[3]),
        .Q(m_tdata[3]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[4] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[4]),
        .Q(m_tdata[4]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[5] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[5]),
        .Q(m_tdata[5]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[6] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[6]),
        .Q(m_tdata[6]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[7] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[7]),
        .Q(m_tdata[7]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[8] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[8]),
        .Q(m_tdata[8]),
        .R(1'b0));
  FDRE \m_tdata_reg_reg[9] 
       (.C(aclk),
        .CE(m_tdata_reg),
        .D(ro_counter_count[9]),
        .Q(m_tdata[9]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* LAST = "3" *) 
  (* RO_TYPE = "2" *) 
  (* STAGES = "2" *) 
  ulp_krnl_ro_rtl_1_0_ring_oscillator ro_INST
       (.enable(1'b1),
        .ro_out(ro_out));
  LUT2 #(
    .INIT(4'h1)) 
    ro_counter_reset_i_1
       (.I0(state[2]),
        .I1(state[0]),
        .O(ro_counter_reset_i_1_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    ro_counter_reset_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ro_counter_reset_i_1_n_0),
        .Q(ro_counter_reset),
        .S(areset));
  LUT2 #(
    .INIT(4'h8)) 
    \s_tready[0]_INST_0 
       (.I0(m_tready),
        .I1(s_tvalid),
        .O(s_tready));
  LUT6 #(
    .INIT(64'h0000550100555501)) 
    \state[0]_i_1 
       (.I0(state[2]),
        .I1(\state[0]_i_2_n_0 ),
        .I2(\state[0]_i_3_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(counter_clk[23]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \state[0]_i_10 
       (.I0(\s_tdata[0] [3]),
        .I1(\s_tdata[0] [2]),
        .O(\state[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_11 
       (.I0(\s_tdata[0] [6]),
        .I1(\s_tdata[0] [7]),
        .I2(\s_tdata[0] [4]),
        .I3(\s_tdata[0] [5]),
        .O(\state[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_2 
       (.I0(\state[0]_i_4_n_0 ),
        .I1(\state[0]_i_5_n_0 ),
        .I2(\state[0]_i_6_n_0 ),
        .I3(\state[0]_i_7_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \state[0]_i_3 
       (.I0(\state[0]_i_8_n_0 ),
        .I1(\state[0]_i_9_n_0 ),
        .I2(\state[0]_i_10_n_0 ),
        .I3(\s_tdata[0] [0]),
        .I4(\s_tdata[0] [1]),
        .I5(\state[0]_i_11_n_0 ),
        .O(\state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_4 
       (.I0(\s_tdata[0] [26]),
        .I1(\s_tdata[0] [27]),
        .I2(\s_tdata[0] [24]),
        .I3(\s_tdata[0] [25]),
        .O(\state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_5 
       (.I0(\s_tdata[0] [31]),
        .I1(\s_tdata[0] [30]),
        .I2(\s_tdata[0] [28]),
        .I3(\s_tdata[0] [29]),
        .O(\state[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_6 
       (.I0(\s_tdata[0] [18]),
        .I1(\s_tdata[0] [19]),
        .I2(\s_tdata[0] [16]),
        .I3(\s_tdata[0] [17]),
        .O(\state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_7 
       (.I0(\s_tdata[0] [22]),
        .I1(\s_tdata[0] [23]),
        .I2(\s_tdata[0] [20]),
        .I3(\s_tdata[0] [21]),
        .O(\state[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_8 
       (.I0(\s_tdata[0] [10]),
        .I1(\s_tdata[0] [11]),
        .I2(\s_tdata[0] [8]),
        .I3(\s_tdata[0] [9]),
        .O(\state[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[0]_i_9 
       (.I0(\s_tdata[0] [14]),
        .I1(\s_tdata[0] [15]),
        .I2(\s_tdata[0] [12]),
        .I3(\s_tdata[0] [13]),
        .O(\state[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \state[1]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(counter_clk[23]),
        .O(p_0_in[1]));
  (* DONT_TOUCH *) 
  (* FSM_ENCODED_STATES = "IDLE:000,ROMEASURE:001,CONTINUE_MEASURE:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(state[0]),
        .R(areset));
  (* DONT_TOUCH *) 
  (* FSM_ENCODED_STATES = "IDLE:000,ROMEASURE:001,CONTINUE_MEASURE:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(state[1]),
        .R(areset));
  (* DONT_TOUCH *) 
  (* FSM_ENCODED_STATES = "IDLE:000,ROMEASURE:001,CONTINUE_MEASURE:010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(state[2]),
        .R(areset));
endmodule

(* CHECK_LICENSE_TYPE = "ulp_krnl_ro_rtl_1_0,krnl_ro_rtl_int,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "krnl_ro_rtl_int,Vivado 2021.1" *) 
(* NotValidForBitStream *)
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, ASSOCIATED_BUSIF m_axi_gmem:s_axi_control, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_kernel_ref_clk_00, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWVALID" *) output m_axi_gmem_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWREADY" *) input m_axi_gmem_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWADDR" *) output [63:0]m_axi_gmem_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWID" *) output [0:0]m_axi_gmem_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWLEN" *) output [7:0]m_axi_gmem_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWSIZE" *) output [2:0]m_axi_gmem_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWBURST" *) output [1:0]m_axi_gmem_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWLOCK" *) output [1:0]m_axi_gmem_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWCACHE" *) output [3:0]m_axi_gmem_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWPROT" *) output [2:0]m_axi_gmem_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWQOS" *) output [3:0]m_axi_gmem_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWREGION" *) output [3:0]m_axi_gmem_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WVALID" *) output m_axi_gmem_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WREADY" *) input m_axi_gmem_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WDATA" *) output [31:0]m_axi_gmem_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WSTRB" *) output [3:0]m_axi_gmem_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WLAST" *) output m_axi_gmem_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARVALID" *) output m_axi_gmem_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARREADY" *) input m_axi_gmem_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARADDR" *) output [63:0]m_axi_gmem_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARID" *) output [0:0]m_axi_gmem_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARLEN" *) output [7:0]m_axi_gmem_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARSIZE" *) output [2:0]m_axi_gmem_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARBURST" *) output [1:0]m_axi_gmem_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARLOCK" *) output [1:0]m_axi_gmem_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARCACHE" *) output [3:0]m_axi_gmem_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARPROT" *) output [2:0]m_axi_gmem_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARQOS" *) output [3:0]m_axi_gmem_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARREGION" *) output [3:0]m_axi_gmem_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RVALID" *) input m_axi_gmem_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RREADY" *) output m_axi_gmem_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RDATA" *) input [31:0]m_axi_gmem_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RLAST" *) input m_axi_gmem_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RID" *) input [0:0]m_axi_gmem_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RRESP" *) input [1:0]m_axi_gmem_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BVALID" *) input m_axi_gmem_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BREADY" *) output m_axi_gmem_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BRESP" *) input [1:0]m_axi_gmem_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_kernel_ref_clk_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]m_axi_gmem_BID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [6:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [6:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_kernel_ref_clk_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire \<const1> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [63:0]m_axi_gmem_ARADDR;
  wire [0:0]m_axi_gmem_ARID;
  wire [7:0]m_axi_gmem_ARLEN;
  wire m_axi_gmem_ARREADY;
  wire m_axi_gmem_ARVALID;
  wire [63:0]m_axi_gmem_AWADDR;
  wire [7:0]m_axi_gmem_AWLEN;
  wire m_axi_gmem_AWREADY;
  wire m_axi_gmem_AWVALID;
  wire m_axi_gmem_BVALID;
  wire [31:0]m_axi_gmem_RDATA;
  wire [0:0]m_axi_gmem_RID;
  wire m_axi_gmem_RLAST;
  wire m_axi_gmem_RVALID;
  wire m_axi_gmem_WLAST;
  wire [6:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [6:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;

  assign m_axi_gmem_ARBURST[1] = \<const0> ;
  assign m_axi_gmem_ARBURST[0] = \<const1> ;
  assign m_axi_gmem_ARCACHE[3] = \<const0> ;
  assign m_axi_gmem_ARCACHE[2] = \<const0> ;
  assign m_axi_gmem_ARCACHE[1] = \<const1> ;
  assign m_axi_gmem_ARCACHE[0] = \<const1> ;
  assign m_axi_gmem_ARLOCK[1] = \<const0> ;
  assign m_axi_gmem_ARLOCK[0] = \<const0> ;
  assign m_axi_gmem_ARPROT[2] = \<const0> ;
  assign m_axi_gmem_ARPROT[1] = \<const0> ;
  assign m_axi_gmem_ARPROT[0] = \<const0> ;
  assign m_axi_gmem_ARQOS[3] = \<const0> ;
  assign m_axi_gmem_ARQOS[2] = \<const0> ;
  assign m_axi_gmem_ARQOS[1] = \<const0> ;
  assign m_axi_gmem_ARQOS[0] = \<const0> ;
  assign m_axi_gmem_ARREGION[3] = \<const0> ;
  assign m_axi_gmem_ARREGION[2] = \<const0> ;
  assign m_axi_gmem_ARREGION[1] = \<const0> ;
  assign m_axi_gmem_ARREGION[0] = \<const0> ;
  assign m_axi_gmem_ARSIZE[2] = \<const0> ;
  assign m_axi_gmem_ARSIZE[1] = \<const1> ;
  assign m_axi_gmem_ARSIZE[0] = \<const0> ;
  assign m_axi_gmem_AWBURST[1] = \<const0> ;
  assign m_axi_gmem_AWBURST[0] = \<const1> ;
  assign m_axi_gmem_AWCACHE[3] = \<const0> ;
  assign m_axi_gmem_AWCACHE[2] = \<const0> ;
  assign m_axi_gmem_AWCACHE[1] = \<const1> ;
  assign m_axi_gmem_AWCACHE[0] = \<const1> ;
  assign m_axi_gmem_AWID[0] = \<const0> ;
  assign m_axi_gmem_AWLOCK[1] = \<const0> ;
  assign m_axi_gmem_AWLOCK[0] = \<const0> ;
  assign m_axi_gmem_AWPROT[2] = \<const0> ;
  assign m_axi_gmem_AWPROT[1] = \<const0> ;
  assign m_axi_gmem_AWPROT[0] = \<const0> ;
  assign m_axi_gmem_AWQOS[3] = \<const0> ;
  assign m_axi_gmem_AWQOS[2] = \<const0> ;
  assign m_axi_gmem_AWQOS[1] = \<const0> ;
  assign m_axi_gmem_AWQOS[0] = \<const0> ;
  assign m_axi_gmem_AWREGION[3] = \<const0> ;
  assign m_axi_gmem_AWREGION[2] = \<const0> ;
  assign m_axi_gmem_AWREGION[1] = \<const0> ;
  assign m_axi_gmem_AWREGION[0] = \<const0> ;
  assign m_axi_gmem_AWSIZE[2] = \<const0> ;
  assign m_axi_gmem_AWSIZE[1] = \<const1> ;
  assign m_axi_gmem_AWSIZE[0] = \<const0> ;
  assign m_axi_gmem_BREADY = \<const1> ;
  assign m_axi_gmem_RREADY = \<const1> ;
  assign m_axi_gmem_WDATA[31] = \<const0> ;
  assign m_axi_gmem_WDATA[30] = \<const0> ;
  assign m_axi_gmem_WDATA[29] = \<const0> ;
  assign m_axi_gmem_WDATA[28] = \<const0> ;
  assign m_axi_gmem_WDATA[27] = \<const0> ;
  assign m_axi_gmem_WDATA[26] = \<const0> ;
  assign m_axi_gmem_WDATA[25] = \<const0> ;
  assign m_axi_gmem_WDATA[24] = \<const0> ;
  assign m_axi_gmem_WDATA[23] = \<const0> ;
  assign m_axi_gmem_WDATA[22] = \<const0> ;
  assign m_axi_gmem_WDATA[21] = \<const0> ;
  assign m_axi_gmem_WDATA[20] = \<const0> ;
  assign m_axi_gmem_WDATA[19] = \<const0> ;
  assign m_axi_gmem_WDATA[18] = \<const0> ;
  assign m_axi_gmem_WDATA[17] = \<const0> ;
  assign m_axi_gmem_WDATA[16] = \<const0> ;
  assign m_axi_gmem_WDATA[15] = \<const0> ;
  assign m_axi_gmem_WDATA[14] = \<const0> ;
  assign m_axi_gmem_WDATA[13] = \<const0> ;
  assign m_axi_gmem_WDATA[12] = \<const0> ;
  assign m_axi_gmem_WDATA[11] = \<const0> ;
  assign m_axi_gmem_WDATA[10] = \<const0> ;
  assign m_axi_gmem_WDATA[9] = \<const0> ;
  assign m_axi_gmem_WDATA[8] = \<const0> ;
  assign m_axi_gmem_WDATA[7] = \<const0> ;
  assign m_axi_gmem_WDATA[6] = \<const0> ;
  assign m_axi_gmem_WDATA[5] = \<const0> ;
  assign m_axi_gmem_WDATA[4] = \<const0> ;
  assign m_axi_gmem_WDATA[3] = \<const0> ;
  assign m_axi_gmem_WDATA[2] = \<const0> ;
  assign m_axi_gmem_WDATA[1] = \<const0> ;
  assign m_axi_gmem_WDATA[0] = \<const0> ;
  assign m_axi_gmem_WSTRB[3] = \<const1> ;
  assign m_axi_gmem_WSTRB[2] = \<const1> ;
  assign m_axi_gmem_WSTRB[1] = \<const1> ;
  assign m_axi_gmem_WSTRB[0] = \<const1> ;
  assign m_axi_gmem_WVALID = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  ulp_krnl_ro_rtl_1_0_krnl_ro_rtl_int inst
       (.\FSM_onehot_wstate_reg[1] (s_axi_control_WREADY),
        .FSM_sequential_rstate_reg(s_axi_control_RVALID),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .arvalid_r_reg(m_axi_gmem_ARVALID),
        .awvalid_r_reg(m_axi_gmem_AWVALID),
        .\id_reg[0] (m_axi_gmem_ARID),
        .interrupt(interrupt),
        .m_axi_gmem_ARADDR(m_axi_gmem_ARADDR),
        .m_axi_gmem_ARLEN(m_axi_gmem_ARLEN),
        .m_axi_gmem_ARREADY(m_axi_gmem_ARREADY),
        .m_axi_gmem_AWADDR(m_axi_gmem_AWADDR),
        .m_axi_gmem_AWLEN(m_axi_gmem_AWLEN),
        .m_axi_gmem_AWREADY(m_axi_gmem_AWREADY),
        .m_axi_gmem_BVALID(m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(m_axi_gmem_RDATA),
        .m_axi_gmem_RID(m_axi_gmem_RID),
        .m_axi_gmem_RLAST(m_axi_gmem_RLAST),
        .m_axi_gmem_RVALID(m_axi_gmem_RVALID),
        .m_axi_gmem_WLAST(m_axi_gmem_WLAST),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized0
   (DI,
    Q,
    S,
    leaving_empty0,
    \count_value_i_reg[6]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[2]_0 ,
    ram_empty_i,
    ram_wr_en_pf,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ,
    \count_value_i_reg[0]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [0:0]DI;
  output [9:0]Q;
  output [1:0]S;
  output leaving_empty0;
  output [5:0]\count_value_i_reg[6]_0 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input [1:0]\count_value_i_reg[2]_0 ;
  input ram_empty_i;
  input ram_wr_en_pf;
  input [9:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ;
  input \count_value_i_reg[0]_0 ;
  input [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [0:0]DI;
  wire [9:0]Q;
  wire [1:0]S;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [1:0]\count_value_i_reg[2]_0 ;
  wire [5:0]\count_value_i_reg[6]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire [9:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire wr_clk;

  LUT3 #(
    .INIT(8'h4B)) 
    \count_value_i[0]_i_1__1 
       (.I0(\count_value_i_reg[2]_0 [0]),
        .I1(\count_value_i_reg[2]_0 [1]),
        .I2(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h2FD0)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[2]_0 [1]),
        .I1(\count_value_i_reg[2]_0 [0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h75FF8A00)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[2]_0 [0]),
        .I2(\count_value_i_reg[2]_0 [1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\count_value_i[7]_i_2_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(ram_empty_i),
        .I3(\count_value_i_reg[2]_0 [0]),
        .I4(\count_value_i_reg[2]_0 [1]),
        .I5(Q[1]),
        .O(\count_value_i[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .O(leaving_empty0));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [0]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [6]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [3]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_3 
       (.I0(Q[8]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [8]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [9]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_4 
       (.I0(Q[7]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [7]),
        .I2(Q[8]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [8]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_10 
       (.I0(Q[5]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [5]),
        .I2(Q[6]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [6]),
        .O(\count_value_i_reg[6]_0 [4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_11 
       (.I0(Q[4]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [4]),
        .I2(Q[5]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [5]),
        .O(\count_value_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_12 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [3]),
        .I2(Q[4]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [4]),
        .O(\count_value_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_13 
       (.I0(Q[2]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [2]),
        .I2(Q[3]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [3]),
        .O(\count_value_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_14 
       (.I0(Q[1]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [1]),
        .I2(Q[2]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [2]),
        .O(\count_value_i_reg[6]_0 [0]));
  LUT6 #(
    .INIT(64'hFF5D555555040000)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[2]_0 [1]),
        .I2(\count_value_i_reg[2]_0 [0]),
        .I3(ram_empty_i),
        .I4(ram_wr_en_pf),
        .I5(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [0]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [6]),
        .I2(Q[7]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [7]),
        .O(\count_value_i_reg[6]_0 [5]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized0_11
   (Q,
    leaving_empty0,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ,
    ram_wr_en_pf,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [9:0]Q;
  output leaving_empty0;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input \count_value_i_reg[0]_0 ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  input ram_wr_en_pf;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [9:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .O(leaving_empty0));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized0_14
   (ram_empty_i0,
    Q,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[9]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    wr_clk);
  output ram_empty_i0;
  output [9:0]Q;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[9]_0 ;
  input rst_d1;
  input [9:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input wr_clk;

  wire [9:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [9:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[9]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[9]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_pf),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized0_3
   (ram_empty_i0,
    \count_value_i_reg[9]_0 ,
    Q,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[9]_1 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    wr_clk);
  output ram_empty_i0;
  output [9:0]\count_value_i_reg[9]_0 ;
  input [1:0]Q;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[9]_1 ;
  input rst_d1;
  input [9:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  input wr_clk;

  wire [1:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [9:0]\count_value_i_reg[9]_0 ;
  wire [0:0]\count_value_i_reg[9]_1 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire [9:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(\count_value_i_reg[9]_0 [0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i_reg[9]_0 [0]),
        .I1(\count_value_i_reg[9]_0 [1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(\count_value_i_reg[9]_0 [0]),
        .I1(\count_value_i_reg[9]_0 [1]),
        .I2(\count_value_i_reg[9]_0 [2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(\count_value_i_reg[9]_0 [1]),
        .I1(\count_value_i_reg[9]_0 [0]),
        .I2(\count_value_i_reg[9]_0 [2]),
        .I3(\count_value_i_reg[9]_0 [3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(\count_value_i_reg[9]_0 [2]),
        .I1(\count_value_i_reg[9]_0 [0]),
        .I2(\count_value_i_reg[9]_0 [1]),
        .I3(\count_value_i_reg[9]_0 [3]),
        .I4(\count_value_i_reg[9]_0 [4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(\count_value_i_reg[9]_0 [3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[9]_0 [2]),
        .I3(\count_value_i_reg[9]_0 [4]),
        .I4(\count_value_i_reg[9]_0 [5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(\count_value_i_reg[9]_0 [4]),
        .I1(\count_value_i_reg[9]_0 [2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(\count_value_i_reg[9]_0 [3]),
        .I4(\count_value_i_reg[9]_0 [5]),
        .I5(\count_value_i_reg[9]_0 [6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(\count_value_i_reg[9]_0 [1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[9]_1 ),
        .I4(rst_d1),
        .I5(\count_value_i_reg[9]_0 [0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(\count_value_i_reg[9]_0 [5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[9]_0 [6]),
        .I3(\count_value_i_reg[9]_0 [7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(\count_value_i_reg[9]_0 [6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[9]_0 [5]),
        .I3(\count_value_i_reg[9]_0 [7]),
        .I4(\count_value_i_reg[9]_0 [8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(\count_value_i_reg[9]_0 [7]),
        .I1(\count_value_i_reg[9]_0 [5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(\count_value_i_reg[9]_0 [6]),
        .I4(\count_value_i_reg[9]_0 [8]),
        .I5(\count_value_i_reg[9]_0 [9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(\count_value_i_reg[9]_0 [4]),
        .I1(\count_value_i_reg[9]_0 [2]),
        .I2(\count_value_i_reg[9]_0 [0]),
        .I3(ram_wr_en_pf),
        .I4(\count_value_i_reg[9]_0 [1]),
        .I5(\count_value_i_reg[9]_0 [3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg[9]_0 [0]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[9]_0 [1]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(\count_value_i_reg[9]_0 [2]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(\count_value_i_reg[9]_0 [3]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(\count_value_i_reg[9]_0 [4]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[9]_0 [5]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[9]_0 [6]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[9]_0 [7]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[9]_0 [8]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[9]_0 [9]),
        .R(\count_value_i_reg[9]_1 ));
  LUT6 #(
    .INIT(64'h00FFFFFF0000B0B0)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(going_empty1),
        .I3(leaving_empty0),
        .I4(ram_wr_en_pf),
        .I5(ram_empty_i),
        .O(ram_empty_i0));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [9]),
        .I2(\count_value_i_reg[9]_0 [9]),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(\count_value_i_reg[9]_0 [0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [2]),
        .I3(\count_value_i_reg[9]_0 [2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [1]),
        .I5(\count_value_i_reg[9]_0 [1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(\count_value_i_reg[9]_0 [6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [8]),
        .I3(\count_value_i_reg[9]_0 [8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [7]),
        .I5(\count_value_i_reg[9]_0 [7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(\count_value_i_reg[9]_0 [3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [5]),
        .I3(\count_value_i_reg[9]_0 [5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [4]),
        .I5(\count_value_i_reg[9]_0 [4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized0_5
   (DI,
    Q,
    S,
    leaving_empty0,
    \count_value_i_reg[6]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[2]_0 ,
    ram_empty_i,
    ram_wr_en_pf,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ,
    \count_value_i_reg[0]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [0:0]DI;
  output [9:0]Q;
  output [1:0]S;
  output leaving_empty0;
  output [5:0]\count_value_i_reg[6]_0 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input [1:0]\count_value_i_reg[2]_0 ;
  input ram_empty_i;
  input ram_wr_en_pf;
  input [9:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ;
  input \count_value_i_reg[0]_0 ;
  input [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [0:0]DI;
  wire [9:0]Q;
  wire [1:0]S;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [1:0]\count_value_i_reg[2]_0 ;
  wire [5:0]\count_value_i_reg[6]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [9:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire [9:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire wr_clk;

  LUT3 #(
    .INIT(8'h4B)) 
    \count_value_i[0]_i_1__1 
       (.I0(\count_value_i_reg[2]_0 [0]),
        .I1(\count_value_i_reg[2]_0 [1]),
        .I2(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h2FD0)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[2]_0 [1]),
        .I1(\count_value_i_reg[2]_0 [0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h75FF8A00)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[2]_0 [0]),
        .I2(\count_value_i_reg[2]_0 [1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\count_value_i[7]_i_2_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(ram_empty_i),
        .I3(\count_value_i_reg[2]_0 [0]),
        .I4(\count_value_i_reg[2]_0 [1]),
        .I5(Q[1]),
        .O(\count_value_i[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .O(leaving_empty0));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [9]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [6]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [0]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [6]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [3]),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_3 
       (.I0(Q[8]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [8]),
        .I2(Q[9]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [9]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_4 
       (.I0(Q[7]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [7]),
        .I2(Q[8]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [8]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_10 
       (.I0(Q[5]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [5]),
        .I2(Q[6]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [6]),
        .O(\count_value_i_reg[6]_0 [4]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_11 
       (.I0(Q[4]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [4]),
        .I2(Q[5]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [5]),
        .O(\count_value_i_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_12 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [3]),
        .I2(Q[4]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [4]),
        .O(\count_value_i_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_13 
       (.I0(Q[2]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [2]),
        .I2(Q[3]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [3]),
        .O(\count_value_i_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_14 
       (.I0(Q[1]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [1]),
        .I2(Q[2]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [2]),
        .O(\count_value_i_reg[6]_0 [0]));
  LUT6 #(
    .INIT(64'hFF5D555555040000)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_8 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[2]_0 [1]),
        .I2(\count_value_i_reg[2]_0 [0]),
        .I3(ram_empty_i),
        .I4(ram_wr_en_pf),
        .I5(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [0]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [6]),
        .I2(Q[7]),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [7]),
        .O(\count_value_i_reg[6]_0 [5]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized0_8
   (ram_empty_i0,
    \count_value_i_reg[9]_0 ,
    Q,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[9]_1 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    wr_clk);
  output ram_empty_i0;
  output [9:0]\count_value_i_reg[9]_0 ;
  input [1:0]Q;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[9]_1 ;
  input rst_d1;
  input [9:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  input wr_clk;

  wire [1:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [9:0]\count_value_i_reg[9]_0 ;
  wire [0:0]\count_value_i_reg[9]_1 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire [9:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(\count_value_i_reg[9]_0 [0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i_reg[9]_0 [0]),
        .I1(\count_value_i_reg[9]_0 [1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(\count_value_i_reg[9]_0 [0]),
        .I1(\count_value_i_reg[9]_0 [1]),
        .I2(\count_value_i_reg[9]_0 [2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(\count_value_i_reg[9]_0 [1]),
        .I1(\count_value_i_reg[9]_0 [0]),
        .I2(\count_value_i_reg[9]_0 [2]),
        .I3(\count_value_i_reg[9]_0 [3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(\count_value_i_reg[9]_0 [2]),
        .I1(\count_value_i_reg[9]_0 [0]),
        .I2(\count_value_i_reg[9]_0 [1]),
        .I3(\count_value_i_reg[9]_0 [3]),
        .I4(\count_value_i_reg[9]_0 [4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(\count_value_i_reg[9]_0 [3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[9]_0 [2]),
        .I3(\count_value_i_reg[9]_0 [4]),
        .I4(\count_value_i_reg[9]_0 [5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(\count_value_i_reg[9]_0 [4]),
        .I1(\count_value_i_reg[9]_0 [2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(\count_value_i_reg[9]_0 [3]),
        .I4(\count_value_i_reg[9]_0 [5]),
        .I5(\count_value_i_reg[9]_0 [6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(\count_value_i_reg[9]_0 [1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[9]_1 ),
        .I4(rst_d1),
        .I5(\count_value_i_reg[9]_0 [0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(\count_value_i_reg[9]_0 [5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[9]_0 [6]),
        .I3(\count_value_i_reg[9]_0 [7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(\count_value_i_reg[9]_0 [6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[9]_0 [5]),
        .I3(\count_value_i_reg[9]_0 [7]),
        .I4(\count_value_i_reg[9]_0 [8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(\count_value_i_reg[9]_0 [7]),
        .I1(\count_value_i_reg[9]_0 [5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(\count_value_i_reg[9]_0 [6]),
        .I4(\count_value_i_reg[9]_0 [8]),
        .I5(\count_value_i_reg[9]_0 [9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(\count_value_i_reg[9]_0 [4]),
        .I1(\count_value_i_reg[9]_0 [2]),
        .I2(\count_value_i_reg[9]_0 [0]),
        .I3(ram_wr_en_pf),
        .I4(\count_value_i_reg[9]_0 [1]),
        .I5(\count_value_i_reg[9]_0 [3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg[9]_0 [0]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[9]_0 [1]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(\count_value_i_reg[9]_0 [2]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(\count_value_i_reg[9]_0 [3]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(\count_value_i_reg[9]_0 [4]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[9]_0 [5]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[9]_0 [6]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[9]_0 [7]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[9]_0 [8]),
        .R(\count_value_i_reg[9]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[9]_0 [9]),
        .R(\count_value_i_reg[9]_1 ));
  LUT6 #(
    .INIT(64'h00FFFFFF0000B0B0)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(going_empty1),
        .I3(leaving_empty0),
        .I4(ram_wr_en_pf),
        .I5(ram_empty_i),
        .O(ram_empty_i0));
  LUT5 #(
    .INIT(32'h82000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [9]),
        .I2(\count_value_i_reg[9]_0 [9]),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(\count_value_i_reg[9]_0 [0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [2]),
        .I3(\count_value_i_reg[9]_0 [2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [1]),
        .I5(\count_value_i_reg[9]_0 [1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(\count_value_i_reg[9]_0 [6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [8]),
        .I3(\count_value_i_reg[9]_0 [8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [7]),
        .I5(\count_value_i_reg[9]_0 [7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(\count_value_i_reg[9]_0 [3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [5]),
        .I3(\count_value_i_reg[9]_0 [5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [4]),
        .I5(\count_value_i_reg[9]_0 [4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized1
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    ram_empty_i,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [9:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[0]_0 ;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [9:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire ram_empty_i;
  wire wr_clk;

  LUT3 #(
    .INIT(8'h4B)) 
    \count_value_i[0]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [0]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h2FD0)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h75FF8A00)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\count_value_i[7]_i_2__0_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800000000)) 
    \count_value_i[7]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(ram_empty_i),
        .I3(\count_value_i_reg[0]_0 [0]),
        .I4(\count_value_i_reg[0]_0 [1]),
        .I5(Q[1]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized1_12
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [9:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [9:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized1_15
   (Q,
    ram_wr_en_pf,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    wr_clk);
  output [9:0]Q;
  input ram_wr_en_pf;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input wr_clk;

  wire [9:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized1_4
   (Q,
    D,
    ram_wr_en_pf,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    DI,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ,
    S,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ,
    ram_empty_i,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ,
    wr_clk);
  output [9:0]Q;
  output [9:0]D;
  input ram_wr_en_pf;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input [0:0]DI;
  input [5:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ;
  input [1:0]S;
  input [7:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ;
  input ram_empty_i;
  input [1:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ;
  input wr_clk;

  wire [9:0]D;
  wire [0:0]DI;
  wire [9:0]Q;
  wire [1:0]S;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ;
  wire [7:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_n_7 ;
  wire [5:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ;
  wire [1:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7 ;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [7:1]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2 
       (.I0(Q[7]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [7]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF75108AE08AEF751)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15 
       (.I0(Q[0]),
        .I1(ram_wr_en_pf),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [0]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6999696969996999)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [0]),
        .I2(ram_wr_en_pf),
        .I3(ram_empty_i),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [0]),
        .I5(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [6]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[5]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [5]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4 
       (.I0(Q[4]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6 
       (.I0(Q[2]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [2]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7 
       (.I0(Q[1]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED [7:1],\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0 }),
        .O({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED [7:2],D[9:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7 }),
        .DI({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ,DI,1'b0}),
        .O(D[7:0]),
        .S({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized1_6
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    ram_empty_i,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [9:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[0]_0 ;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [9:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire ram_empty_i;
  wire wr_clk;

  LUT3 #(
    .INIT(8'h4B)) 
    \count_value_i[0]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [0]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h2FD0)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h75FF8A00)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\count_value_i[7]_i_2__0_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800000000)) 
    \count_value_i[7]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(ram_empty_i),
        .I3(\count_value_i_reg[0]_0 [0]),
        .I4(\count_value_i_reg[0]_0 [1]),
        .I5(Q[1]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_1 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized1_9
   (Q,
    D,
    ram_wr_en_pf,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    DI,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ,
    S,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ,
    ram_empty_i,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ,
    wr_clk);
  output [9:0]Q;
  output [9:0]D;
  input ram_wr_en_pf;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input [0:0]DI;
  input [5:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ;
  input [1:0]S;
  input [7:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ;
  input ram_empty_i;
  input [1:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ;
  input \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ;
  input wr_clk;

  wire [9:0]D;
  wire [0:0]DI;
  wire [9:0]Q;
  wire [1:0]S;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ;
  wire [7:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_n_7 ;
  wire [5:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ;
  wire [1:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7 ;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [7:1]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2 
       (.I0(Q[7]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [7]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF75108AE08AEF751)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15 
       (.I0(Q[0]),
        .I1(ram_wr_en_pf),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [0]),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6999696969996999)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [0]),
        .I2(ram_wr_en_pf),
        .I3(ram_empty_i),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [0]),
        .I5(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 [1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [6]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[5]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [5]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4 
       (.I0(Q[4]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6 
       (.I0(Q[2]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [2]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7 
       (.I0(Q[1]),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] [1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED [7:1],\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0 }),
        .O({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED [7:2],D[9:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_4 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_5 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_6 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_7 }),
        .DI({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_6_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_7_n_0 ,DI,1'b0}),
        .O(D[7:0]),
        .S({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_15_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_16_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized3
   (leaving_empty0,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[0]_0 ,
    Q,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ,
    ram_wr_en_pf,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output leaving_empty0;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input \count_value_i_reg[0]_0 ;
  input [1:0]Q;
  input rd_en;
  input ram_empty_i;
  input [7:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [7:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  input ram_wr_en_pf;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [1:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_3__0_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [7:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire [7:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_pf;
  wire rd_en;
  wire [7:0]rd_pntr_ext;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(rd_pntr_ext[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rd_en),
        .I3(rd_pntr_ext[0]),
        .I4(rd_pntr_ext[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(rd_pntr_ext[0]),
        .I1(rd_pntr_ext[1]),
        .I2(rd_pntr_ext[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(rd_pntr_ext[1]),
        .I1(rd_pntr_ext[0]),
        .I2(rd_pntr_ext[2]),
        .I3(rd_pntr_ext[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(rd_pntr_ext[2]),
        .I1(rd_pntr_ext[0]),
        .I2(rd_pntr_ext[1]),
        .I3(rd_pntr_ext[3]),
        .I4(rd_pntr_ext[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(rd_pntr_ext[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(rd_pntr_ext[2]),
        .I3(rd_pntr_ext[4]),
        .I4(rd_pntr_ext[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(rd_pntr_ext[4]),
        .I1(rd_pntr_ext[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(rd_pntr_ext[3]),
        .I4(rd_pntr_ext[5]),
        .I5(rd_pntr_ext[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(rd_pntr_ext[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(rd_pntr_ext[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_2__1 
       (.I0(rd_pntr_ext[5]),
        .I1(\count_value_i[7]_i_3__0_n_0 ),
        .I2(rd_pntr_ext[6]),
        .I3(rd_pntr_ext[7]),
        .O(\count_value_i[7]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_3__0 
       (.I0(rd_pntr_ext[4]),
        .I1(rd_pntr_ext[2]),
        .I2(rd_pntr_ext[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rd_pntr_ext[1]),
        .I5(rd_pntr_ext[3]),
        .O(\count_value_i[7]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(rd_pntr_ext[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(rd_pntr_ext[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(rd_pntr_ext[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(rd_pntr_ext[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(rd_pntr_ext[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(rd_pntr_ext[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(rd_pntr_ext[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_2__1_n_0 ),
        .Q(rd_pntr_ext[7]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I1(\count_value_i_reg[0]_0 ),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(ram_wr_en_pf),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [7]),
        .I1(rd_pntr_ext[7]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [6]),
        .I3(rd_pntr_ext[6]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .O(leaving_empty0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [7]),
        .I1(rd_pntr_ext[7]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [6]),
        .I3(rd_pntr_ext[6]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(rd_pntr_ext[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [5]),
        .I3(rd_pntr_ext[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [4]),
        .I5(rd_pntr_ext[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(rd_pntr_ext[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(rd_pntr_ext[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(rd_pntr_ext[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(rd_pntr_ext[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [5]),
        .I3(rd_pntr_ext[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [4]),
        .I5(rd_pntr_ext[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(rd_pntr_ext[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(rd_pntr_ext[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(rd_pntr_ext[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized3_18
   (ram_empty_i0,
    Q,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[7]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    wr_clk);
  output ram_empty_i0;
  output [7:0]Q;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[7]_0 ;
  input rst_d1;
  input [7:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_3_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [0:0]\count_value_i_reg[7]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [7:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[7]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_2__0 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_3_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_2__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_pf),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg_0 [7]),
        .I1(Q[7]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I3(Q[6]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I5(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized4
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [7:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [7:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \count_value_i[7]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized4_19
   (Q,
    ram_wr_en_pf,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    wr_clk);
  output [7:0]Q;
  input ram_wr_en_pf;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "1024" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "32768" *) (* FIFO_WRITE_DEPTH = "1024" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "8" *) 
(* PE_THRESH_MAX = "1019" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "252" *) 
(* PF_THRESH_MAX = "1019" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "254" *) (* RD_DATA_COUNT_WIDTH = "11" *) (* RD_DC_WIDTH_EXT = "11" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "10" *) 
(* READ_DATA_WIDTH = "32" *) (* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "11" *) 
(* WR_DC_WIDTH_EXT = "11" *) (* WR_DEPTH_LOG = "10" *) (* WR_PNTR_WIDTH = "10" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "5" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* keep_hierarchy = "soft" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output full_n;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [9:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire [10:1]diff_pntr_pf_q;
  wire [10:1]diff_pntr_pf_q0;
  wire [31:0]din;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_34 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_35 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_36 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_37 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_38 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_39 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_40 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_41 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_42 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_43 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_44 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_45 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_46 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_47 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_48 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_49 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_50 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_51 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_52 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_53 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_54 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_55 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_56 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_57 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_58 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_59 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_60 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_61 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_62 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_63 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_64 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_65 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire prog_full;
  wire prog_full_i217_in;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf;
  wire ram_wr_en_pf_q;
  wire [9:0]rd_pntr_ext;
  wire rdp_inst_n_0;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_16;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdpp1_inst_n_10;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_2;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [9:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [31:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
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
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hA1)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_20),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[10]),
        .Q(diff_pntr_pf_q[10]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[1]),
        .Q(diff_pntr_pf_q[1]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf_q[9]),
        .R(xpm_fifo_rst_inst_n_1));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3 
       (.I0(diff_pntr_pf_q[2]),
        .I1(diff_pntr_pf_q[1]),
        .I2(diff_pntr_pf_q[8]),
        .I3(diff_pntr_pf_q[10]),
        .I4(diff_pntr_pf_q[9]),
        .I5(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0 ),
        .O(prog_full_i217_in));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4 
       (.I0(diff_pntr_pf_q[7]),
        .I1(diff_pntr_pf_q[6]),
        .I2(diff_pntr_pf_q[3]),
        .I3(diff_pntr_pf_q[4]),
        .I4(diff_pntr_pf_q[5]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_2),
        .Q(prog_full),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdpp1_inst_n_10),
        .Q(ram_rd_en_pf_q),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_wr_en_pf),
        .Q(ram_wr_en_pf_q),
        .R(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "32" *) 
  (* BYTE_WRITE_WIDTH_B = "32" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "31" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "32" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "32768" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "32" *) 
  (* P_MIN_WIDTH_DATA_A = "32" *) 
  (* P_MIN_WIDTH_DATA_B = "32" *) 
  (* P_MIN_WIDTH_DATA_ECC = "32" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "32" *) 
  (* P_WIDTH_COL_WRITE_B = "32" *) 
  (* READ_DATA_WIDTH_A = "32" *) 
  (* READ_DATA_WIDTH_B = "32" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "32" *) 
  (* WRITE_DATA_WIDTH_B = "32" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "32" *) 
  (* rstb_loop_iter = "32" *) 
  ulp_krnl_ro_rtl_1_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [31:0]),
        .doutb({\gen_sdpram.xpm_memory_base_inst_n_34 ,\gen_sdpram.xpm_memory_base_inst_n_35 ,\gen_sdpram.xpm_memory_base_inst_n_36 ,\gen_sdpram.xpm_memory_base_inst_n_37 ,\gen_sdpram.xpm_memory_base_inst_n_38 ,\gen_sdpram.xpm_memory_base_inst_n_39 ,\gen_sdpram.xpm_memory_base_inst_n_40 ,\gen_sdpram.xpm_memory_base_inst_n_41 ,\gen_sdpram.xpm_memory_base_inst_n_42 ,\gen_sdpram.xpm_memory_base_inst_n_43 ,\gen_sdpram.xpm_memory_base_inst_n_44 ,\gen_sdpram.xpm_memory_base_inst_n_45 ,\gen_sdpram.xpm_memory_base_inst_n_46 ,\gen_sdpram.xpm_memory_base_inst_n_47 ,\gen_sdpram.xpm_memory_base_inst_n_48 ,\gen_sdpram.xpm_memory_base_inst_n_49 ,\gen_sdpram.xpm_memory_base_inst_n_50 ,\gen_sdpram.xpm_memory_base_inst_n_51 ,\gen_sdpram.xpm_memory_base_inst_n_52 ,\gen_sdpram.xpm_memory_base_inst_n_53 ,\gen_sdpram.xpm_memory_base_inst_n_54 ,\gen_sdpram.xpm_memory_base_inst_n_55 ,\gen_sdpram.xpm_memory_base_inst_n_56 ,\gen_sdpram.xpm_memory_base_inst_n_57 ,\gen_sdpram.xpm_memory_base_inst_n_58 ,\gen_sdpram.xpm_memory_base_inst_n_59 ,\gen_sdpram.xpm_memory_base_inst_n_60 ,\gen_sdpram.xpm_memory_base_inst_n_61 ,\gen_sdpram.xpm_memory_base_inst_n_62 ,\gen_sdpram.xpm_memory_base_inst_n_63 ,\gen_sdpram.xpm_memory_base_inst_n_64 ,\gen_sdpram.xpm_memory_base_inst_n_65 }),
        .ena(1'b0),
        .enb(rdpp1_inst_n_10),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .O(\gen_fwft.ram_regout_en ));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized0 rdp_inst
       (.DI(rdp_inst_n_0),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_11,rdp_inst_n_12}),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_10),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[2]_0 (curr_fwft_state),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_14,rdp_inst_n_15,rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_20),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .wr_clk(wr_clk));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized1 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_10),
        .Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .wr_clk(wr_clk));
  ulp_krnl_ro_rtl_1_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg (rst_d1_inst_n_2),
        .prog_full(prog_full),
        .prog_full_i217_in(prog_full_i217_in),
        .ram_rd_en_pf_q(ram_rd_en_pf_q),
        .ram_wr_en_pf_q(ram_wr_en_pf_q),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized0_3 wrp_inst
       (.Q(curr_fwft_state),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\count_value_i_reg[9]_0 (wr_pntr_ext),
        .\count_value_i_reg[9]_1 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized1_4 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .DI(rdp_inst_n_0),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9}),
        .S({rdp_inst_n_11,rdp_inst_n_12}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] (rd_pntr_ext[7:0]),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ({rdp_inst_n_14,rdp_inst_n_15,rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19}),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 (curr_fwft_state),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 (rdpp1_inst_n_10),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ulp_krnl_ro_rtl_1_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[9] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "1024" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "32768" *) (* FIFO_WRITE_DEPTH = "1024" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "1019" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "252" *) (* PF_THRESH_MAX = "1019" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "254" *) (* RD_DATA_COUNT_WIDTH = "11" *) 
(* RD_DC_WIDTH_EXT = "11" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "10" *) (* READ_DATA_WIDTH = "32" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "32" *) 
(* WR_DATA_COUNT_WIDTH = "11" *) (* WR_DC_WIDTH_EXT = "11" *) (* WR_DEPTH_LOG = "10" *) 
(* WR_PNTR_WIDTH = "10" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "5" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_base__1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output full_n;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [9:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire empty_fwft_i0;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire [9:0]rd_pntr_ext;
  wire rdp_inst_n_11;
  wire rdpp1_inst_n_10;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [9:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [31:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(empty),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_11),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "32" *) 
  (* BYTE_WRITE_WIDTH_B = "32" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "31" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "32" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "32768" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "32" *) 
  (* P_MIN_WIDTH_DATA_A = "32" *) 
  (* P_MIN_WIDTH_DATA_B = "32" *) 
  (* P_MIN_WIDTH_DATA_ECC = "32" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "32" *) 
  (* P_WIDTH_COL_WRITE_B = "32" *) 
  (* READ_DATA_WIDTH_A = "32" *) 
  (* READ_DATA_WIDTH_B = "32" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "32" *) 
  (* WRITE_DATA_WIDTH_B = "32" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "32" *) 
  (* rstb_loop_iter = "32" *) 
  ulp_krnl_ro_rtl_1_0_xpm_memory_base__1 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [31:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdpp1_inst_n_10),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized0_11 rdp_inst
       (.Q(rd_pntr_ext),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_10),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_11),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized1_12 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_10),
        .Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  ulp_krnl_ro_rtl_1_0_xpm_fifo_reg_bit_13 rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized0_14 wrp_inst
       (.Q(wr_pntr_ext),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\count_value_i_reg[9]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_10),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized1_15 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ulp_krnl_ro_rtl_1_0_xpm_fifo_rst_16 xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[9] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "1024" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "32768" *) (* FIFO_WRITE_DEPTH = "1024" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "1019" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "252" *) (* PF_THRESH_MAX = "1019" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "254" *) (* RD_DATA_COUNT_WIDTH = "11" *) 
(* RD_DC_WIDTH_EXT = "11" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "10" *) (* READ_DATA_WIDTH = "32" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "32" *) 
(* WR_DATA_COUNT_WIDTH = "11" *) (* WR_DC_WIDTH_EXT = "11" *) (* WR_DEPTH_LOG = "10" *) 
(* WR_PNTR_WIDTH = "10" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "5" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_base__3
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output full_n;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [9:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire [10:1]diff_pntr_pf_q;
  wire [10:1]diff_pntr_pf_q0;
  wire [31:0]din;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_34 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_35 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_36 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_37 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_38 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_39 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_40 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_41 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_42 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_43 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_44 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_45 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_46 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_47 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_48 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_49 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_50 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_51 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_52 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_53 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_54 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_55 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_56 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_57 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_58 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_59 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_60 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_61 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_62 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_63 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_64 ;
  wire \gen_sdpram.xpm_memory_base_inst_n_65 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire prog_full;
  wire prog_full_i217_in;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf;
  wire ram_wr_en_pf_q;
  wire [9:0]rd_pntr_ext;
  wire rdp_inst_n_0;
  wire rdp_inst_n_11;
  wire rdp_inst_n_12;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_16;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdpp1_inst_n_10;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_2;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [9:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [31:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
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
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hA1)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_20),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[10]),
        .Q(diff_pntr_pf_q[10]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[1]),
        .Q(diff_pntr_pf_q[1]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf_q[9]),
        .R(xpm_fifo_rst_inst_n_1));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3 
       (.I0(diff_pntr_pf_q[2]),
        .I1(diff_pntr_pf_q[1]),
        .I2(diff_pntr_pf_q[8]),
        .I3(diff_pntr_pf_q[10]),
        .I4(diff_pntr_pf_q[9]),
        .I5(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0 ),
        .O(prog_full_i217_in));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4 
       (.I0(diff_pntr_pf_q[7]),
        .I1(diff_pntr_pf_q[6]),
        .I2(diff_pntr_pf_q[3]),
        .I3(diff_pntr_pf_q[4]),
        .I4(diff_pntr_pf_q[5]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_2),
        .Q(prog_full),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdpp1_inst_n_10),
        .Q(ram_rd_en_pf_q),
        .R(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_wr_en_pf),
        .Q(ram_wr_en_pf_q),
        .R(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "32" *) 
  (* BYTE_WRITE_WIDTH_B = "32" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "31" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "32" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "32768" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "32" *) 
  (* P_MIN_WIDTH_DATA_A = "32" *) 
  (* P_MIN_WIDTH_DATA_B = "32" *) 
  (* P_MIN_WIDTH_DATA_ECC = "32" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "32" *) 
  (* P_WIDTH_COL_WRITE_B = "32" *) 
  (* READ_DATA_WIDTH_A = "32" *) 
  (* READ_DATA_WIDTH_B = "32" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "32" *) 
  (* WRITE_DATA_WIDTH_B = "32" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "32" *) 
  (* rstb_loop_iter = "32" *) 
  ulp_krnl_ro_rtl_1_0_xpm_memory_base__3 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [31:0]),
        .doutb({\gen_sdpram.xpm_memory_base_inst_n_34 ,\gen_sdpram.xpm_memory_base_inst_n_35 ,\gen_sdpram.xpm_memory_base_inst_n_36 ,\gen_sdpram.xpm_memory_base_inst_n_37 ,\gen_sdpram.xpm_memory_base_inst_n_38 ,\gen_sdpram.xpm_memory_base_inst_n_39 ,\gen_sdpram.xpm_memory_base_inst_n_40 ,\gen_sdpram.xpm_memory_base_inst_n_41 ,\gen_sdpram.xpm_memory_base_inst_n_42 ,\gen_sdpram.xpm_memory_base_inst_n_43 ,\gen_sdpram.xpm_memory_base_inst_n_44 ,\gen_sdpram.xpm_memory_base_inst_n_45 ,\gen_sdpram.xpm_memory_base_inst_n_46 ,\gen_sdpram.xpm_memory_base_inst_n_47 ,\gen_sdpram.xpm_memory_base_inst_n_48 ,\gen_sdpram.xpm_memory_base_inst_n_49 ,\gen_sdpram.xpm_memory_base_inst_n_50 ,\gen_sdpram.xpm_memory_base_inst_n_51 ,\gen_sdpram.xpm_memory_base_inst_n_52 ,\gen_sdpram.xpm_memory_base_inst_n_53 ,\gen_sdpram.xpm_memory_base_inst_n_54 ,\gen_sdpram.xpm_memory_base_inst_n_55 ,\gen_sdpram.xpm_memory_base_inst_n_56 ,\gen_sdpram.xpm_memory_base_inst_n_57 ,\gen_sdpram.xpm_memory_base_inst_n_58 ,\gen_sdpram.xpm_memory_base_inst_n_59 ,\gen_sdpram.xpm_memory_base_inst_n_60 ,\gen_sdpram.xpm_memory_base_inst_n_61 ,\gen_sdpram.xpm_memory_base_inst_n_62 ,\gen_sdpram.xpm_memory_base_inst_n_63 ,\gen_sdpram.xpm_memory_base_inst_n_64 ,\gen_sdpram.xpm_memory_base_inst_n_65 }),
        .ena(1'b0),
        .enb(rdpp1_inst_n_10),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .O(\gen_fwft.ram_regout_en ));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized0_5 rdp_inst
       (.DI(rdp_inst_n_0),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_11,rdp_inst_n_12}),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_10),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[2]_0 (curr_fwft_state),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_14,rdp_inst_n_15,rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_20),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .wr_clk(wr_clk));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized1_6 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_10),
        .Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .wr_clk(wr_clk));
  ulp_krnl_ro_rtl_1_0_xpm_fifo_reg_bit_7 rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg (rst_d1_inst_n_2),
        .prog_full(prog_full),
        .prog_full_i217_in(prog_full_i217_in),
        .ram_rd_en_pf_q(ram_rd_en_pf_q),
        .ram_wr_en_pf_q(ram_wr_en_pf_q),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized0_8 wrp_inst
       (.Q(curr_fwft_state),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\count_value_i_reg[9]_0 (wr_pntr_ext),
        .\count_value_i_reg[9]_1 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized1_9 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .DI(rdp_inst_n_0),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9}),
        .S({rdp_inst_n_11,rdp_inst_n_12}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] (rd_pntr_ext[7:0]),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] ({rdp_inst_n_14,rdp_inst_n_15,rdp_inst_n_16,rdp_inst_n_17,rdp_inst_n_18,rdp_inst_n_19}),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_0 (curr_fwft_state),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_1 (rdpp1_inst_n_10),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ulp_krnl_ro_rtl_1_0_xpm_fifo_rst_10 xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[9] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "256" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "8192" *) (* FIFO_WRITE_DEPTH = "256" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "251" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "251" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* RD_DATA_COUNT_WIDTH = "8" *) 
(* RD_DC_WIDTH_EXT = "9" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "8" *) (* READ_DATA_WIDTH = "32" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "32" *) 
(* WR_DATA_COUNT_WIDTH = "8" *) (* WR_DC_WIDTH_EXT = "9" *) (* WR_DEPTH_LOG = "8" *) 
(* WR_PNTR_WIDTH = "8" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "5" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_base__parameterized0__1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output full_n;
  output prog_full;
  output [7:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [7:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [7:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire full;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire rdp_inst_n_1;
  wire rdpp1_inst_n_8;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [7:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire xpm_fifo_rst_inst_n_1;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
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
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_1),
        .Q(full),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized3 rdp_inst
       (.Q(curr_fwft_state),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_8),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_1),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 (full),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized4 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_8),
        .Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  ulp_krnl_ro_rtl_1_0_xpm_fifo_reg_bit_17 rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized3_18 wrp_inst
       (.Q(wr_pntr_ext),
        .\count_value_i_reg[5]_0 (full),
        .\count_value_i_reg[7]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_8),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ulp_krnl_ro_rtl_1_0_xpm_counter_updn__parameterized4_19 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (full),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ulp_krnl_ro_rtl_1_0_xpm_fifo_rst_20 xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[7] (full),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module ulp_krnl_ro_rtl_1_0_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ,
    Q,
    wr_clk,
    rst,
    prog_full_i217_in,
    ram_wr_en_pf_q,
    ram_rd_en_pf_q,
    prog_full);
  output rst_d1;
  output clr_full;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ;
  input [0:0]Q;
  input wr_clk;
  input rst;
  input prog_full_i217_in;
  input ram_wr_en_pf_q;
  input ram_rd_en_pf_q;
  input prog_full;

  wire [0:0]Q;
  wire clr_full;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ;
  wire prog_full;
  wire prog_full_i217_in;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf_q;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h51550040)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1 
       (.I0(clr_full),
        .I1(prog_full_i217_in),
        .I2(ram_wr_en_pf_q),
        .I3(ram_rd_en_pf_q),
        .I4(prog_full),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_reg_bit_13
   (rst_d1,
    clr_full,
    Q,
    wr_clk,
    rst);
  output rst_d1;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_reg_bit_17
   (rst_d1,
    clr_full,
    Q,
    wr_clk,
    rst);
  output rst_d1;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_reg_bit_7
   (rst_d1,
    clr_full,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ,
    Q,
    wr_clk,
    rst,
    prog_full_i217_in,
    ram_wr_en_pf_q,
    ram_rd_en_pf_q,
    prog_full);
  output rst_d1;
  output clr_full;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ;
  input [0:0]Q;
  input wr_clk;
  input rst;
  input prog_full_i217_in;
  input ram_wr_en_pf_q;
  input ram_rd_en_pf_q;
  input prog_full;

  wire [0:0]Q;
  wire clr_full;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ;
  wire prog_full;
  wire prog_full_i217_in;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf_q;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h51550040)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1 
       (.I0(clr_full),
        .I1(prog_full_i217_in),
        .I2(ram_wr_en_pf_q),
        .I3(ram_rd_en_pf_q),
        .I4(prog_full),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg ));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

module ulp_krnl_ro_rtl_1_0_xpm_fifo_rst
   (ram_wr_en_pf,
    Q,
    rst,
    wr_en,
    \count_value_i_reg[9] ,
    rst_d1,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  input rst;
  input wr_en;
  input \count_value_i_reg[9] ;
  input rst_d1;
  input wr_clk;

  wire [0:0]Q;
  wire \count_value_i_reg[9] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_wr_en_pf;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[9] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_rst_10
   (ram_wr_en_pf,
    Q,
    rst,
    wr_en,
    \count_value_i_reg[9] ,
    rst_d1,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  input rst;
  input wr_en;
  input \count_value_i_reg[9] ;
  input rst_d1;
  input wr_clk;

  wire [0:0]Q;
  wire \count_value_i_reg[9] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_wr_en_pf;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[9] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_rst_16
   (ram_wr_en_pf,
    Q,
    rst,
    wr_en,
    \count_value_i_reg[9] ,
    rst_d1,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  input rst;
  input wr_en;
  input \count_value_i_reg[9] ;
  input rst_d1;
  input wr_clk;

  wire [0:0]Q;
  wire \count_value_i_reg[9] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_wr_en_pf;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[9] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_rst_20
   (ram_wr_en_pf,
    Q,
    rst,
    wr_en,
    \count_value_i_reg[7] ,
    rst_d1,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  input rst;
  input wr_en;
  input \count_value_i_reg[7] ;
  input rst_d1;
  input wr_clk;

  wire [0:0]Q;
  wire \count_value_i_reg[7] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_wr_en_pf;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT4 #(
    .INIT(16'h0002)) 
    \count_value_i[7]_i_1__0 
       (.I0(wr_en),
        .I1(\count_value_i_reg[7] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) (* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "254" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) 
(* RD_DATA_COUNT_WIDTH = "11" *) (* READ_DATA_WIDTH = "32" *) (* READ_MODE = "fwft" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_sync
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [31:0]din;
  wire prog_full;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire xpm_fifo_base_inst_n_18;
  wire xpm_fifo_base_inst_n_19;
  wire xpm_fifo_base_inst_n_20;
  wire xpm_fifo_base_inst_n_21;
  wire xpm_fifo_base_inst_n_22;
  wire xpm_fifo_base_inst_n_23;
  wire xpm_fifo_base_inst_n_24;
  wire xpm_fifo_base_inst_n_25;
  wire xpm_fifo_base_inst_n_26;
  wire xpm_fifo_base_inst_n_27;
  wire xpm_fifo_base_inst_n_28;
  wire xpm_fifo_base_inst_n_29;
  wire xpm_fifo_base_inst_n_30;
  wire xpm_fifo_base_inst_n_31;
  wire xpm_fifo_base_inst_n_32;
  wire xpm_fifo_base_inst_n_33;
  wire xpm_fifo_base_inst_n_34;
  wire xpm_fifo_base_inst_n_35;
  wire xpm_fifo_base_inst_n_36;
  wire xpm_fifo_base_inst_n_37;
  wire xpm_fifo_base_inst_n_38;
  wire xpm_fifo_base_inst_n_39;
  wire xpm_fifo_base_inst_n_40;
  wire xpm_fifo_base_inst_n_41;
  wire xpm_fifo_base_inst_n_42;
  wire xpm_fifo_base_inst_n_43;
  wire xpm_fifo_base_inst_n_44;
  wire xpm_fifo_base_inst_n_45;
  wire xpm_fifo_base_inst_n_46;
  wire xpm_fifo_base_inst_n_47;
  wire xpm_fifo_base_inst_n_48;
  wire xpm_fifo_base_inst_n_49;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
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
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "1024" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "32768" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "1019" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "252" *) 
  (* PF_THRESH_MAX = "1019" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "254" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RD_DC_WIDTH_EXT = "11" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "10" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* WR_DC_WIDTH_EXT = "11" *) 
  (* WR_DEPTH_LOG = "10" *) 
  (* WR_PNTR_WIDTH = "10" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  ulp_krnl_ro_rtl_1_0_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout({xpm_fifo_base_inst_n_18,xpm_fifo_base_inst_n_19,xpm_fifo_base_inst_n_20,xpm_fifo_base_inst_n_21,xpm_fifo_base_inst_n_22,xpm_fifo_base_inst_n_23,xpm_fifo_base_inst_n_24,xpm_fifo_base_inst_n_25,xpm_fifo_base_inst_n_26,xpm_fifo_base_inst_n_27,xpm_fifo_base_inst_n_28,xpm_fifo_base_inst_n_29,xpm_fifo_base_inst_n_30,xpm_fifo_base_inst_n_31,xpm_fifo_base_inst_n_32,xpm_fifo_base_inst_n_33,xpm_fifo_base_inst_n_34,xpm_fifo_base_inst_n_35,xpm_fifo_base_inst_n_36,xpm_fifo_base_inst_n_37,xpm_fifo_base_inst_n_38,xpm_fifo_base_inst_n_39,xpm_fifo_base_inst_n_40,xpm_fifo_base_inst_n_41,xpm_fifo_base_inst_n_42,xpm_fifo_base_inst_n_43,xpm_fifo_base_inst_n_44,xpm_fifo_base_inst_n_45,xpm_fifo_base_inst_n_46,xpm_fifo_base_inst_n_47,xpm_fifo_base_inst_n_48,xpm_fifo_base_inst_n_49}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(prog_full),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(1'b0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) (* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) (* ORIG_REF_NAME = "xpm_fifo_sync" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "254" *) (* P_COMMON_CLOCK = "1" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "11" *) (* READ_DATA_WIDTH = "32" *) 
(* READ_MODE = "fwft" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "11" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_sync__1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire rd_en;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "1024" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "32768" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "1019" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "252" *) 
  (* PF_THRESH_MAX = "1019" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "254" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RD_DC_WIDTH_EXT = "11" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "10" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* WR_DC_WIDTH_EXT = "11" *) 
  (* WR_DEPTH_LOG = "10" *) 
  (* WR_PNTR_WIDTH = "10" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  ulp_krnl_ro_rtl_1_0_xpm_fifo_base__1 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) (* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) (* ORIG_REF_NAME = "xpm_fifo_sync" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "254" *) (* P_COMMON_CLOCK = "1" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "11" *) (* READ_DATA_WIDTH = "32" *) 
(* READ_MODE = "fwft" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "11" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_sync__3
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [31:0]din;
  wire prog_full;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire xpm_fifo_base_inst_n_18;
  wire xpm_fifo_base_inst_n_19;
  wire xpm_fifo_base_inst_n_20;
  wire xpm_fifo_base_inst_n_21;
  wire xpm_fifo_base_inst_n_22;
  wire xpm_fifo_base_inst_n_23;
  wire xpm_fifo_base_inst_n_24;
  wire xpm_fifo_base_inst_n_25;
  wire xpm_fifo_base_inst_n_26;
  wire xpm_fifo_base_inst_n_27;
  wire xpm_fifo_base_inst_n_28;
  wire xpm_fifo_base_inst_n_29;
  wire xpm_fifo_base_inst_n_30;
  wire xpm_fifo_base_inst_n_31;
  wire xpm_fifo_base_inst_n_32;
  wire xpm_fifo_base_inst_n_33;
  wire xpm_fifo_base_inst_n_34;
  wire xpm_fifo_base_inst_n_35;
  wire xpm_fifo_base_inst_n_36;
  wire xpm_fifo_base_inst_n_37;
  wire xpm_fifo_base_inst_n_38;
  wire xpm_fifo_base_inst_n_39;
  wire xpm_fifo_base_inst_n_40;
  wire xpm_fifo_base_inst_n_41;
  wire xpm_fifo_base_inst_n_42;
  wire xpm_fifo_base_inst_n_43;
  wire xpm_fifo_base_inst_n_44;
  wire xpm_fifo_base_inst_n_45;
  wire xpm_fifo_base_inst_n_46;
  wire xpm_fifo_base_inst_n_47;
  wire xpm_fifo_base_inst_n_48;
  wire xpm_fifo_base_inst_n_49;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
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
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "1024" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "32768" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "1019" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "252" *) 
  (* PF_THRESH_MAX = "1019" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "254" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RD_DC_WIDTH_EXT = "11" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "10" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* WR_DC_WIDTH_EXT = "11" *) 
  (* WR_DEPTH_LOG = "10" *) 
  (* WR_PNTR_WIDTH = "10" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  ulp_krnl_ro_rtl_1_0_xpm_fifo_base__3 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout({xpm_fifo_base_inst_n_18,xpm_fifo_base_inst_n_19,xpm_fifo_base_inst_n_20,xpm_fifo_base_inst_n_21,xpm_fifo_base_inst_n_22,xpm_fifo_base_inst_n_23,xpm_fifo_base_inst_n_24,xpm_fifo_base_inst_n_25,xpm_fifo_base_inst_n_26,xpm_fifo_base_inst_n_27,xpm_fifo_base_inst_n_28,xpm_fifo_base_inst_n_29,xpm_fifo_base_inst_n_30,xpm_fifo_base_inst_n_31,xpm_fifo_base_inst_n_32,xpm_fifo_base_inst_n_33,xpm_fifo_base_inst_n_34,xpm_fifo_base_inst_n_35,xpm_fifo_base_inst_n_36,xpm_fifo_base_inst_n_37,xpm_fifo_base_inst_n_38,xpm_fifo_base_inst_n_39,xpm_fifo_base_inst_n_40,xpm_fifo_base_inst_n_41,xpm_fifo_base_inst_n_42,xpm_fifo_base_inst_n_43,xpm_fifo_base_inst_n_44,xpm_fifo_base_inst_n_45,xpm_fifo_base_inst_n_46,xpm_fifo_base_inst_n_47,xpm_fifo_base_inst_n_48,xpm_fifo_base_inst_n_49}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(prog_full),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(1'b0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) (* FIFO_MEMORY_TYPE = "auto" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_WRITE_DEPTH = "256" *) (* FULL_RESET_VALUE = "1" *) (* ORIG_REF_NAME = "xpm_fifo_sync" *) 
(* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) (* P_COMMON_CLOCK = "1" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "8" *) (* READ_DATA_WIDTH = "32" *) 
(* READ_MODE = "fwft" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "8" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module ulp_krnl_ro_rtl_1_0_xpm_fifo_sync__parameterized0__1
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [31:0]din;
  output full;
  output prog_full;
  output [7:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [7:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire full;
  wire rd_en;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [31:0]NLW_xpm_fifo_base_inst_dout_UNCONNECTED;
  wire [7:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [7:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
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
  assign dout[1] = \<const0> ;
  assign dout[0] = \<const0> ;
  assign empty = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "256" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "8192" *) 
  (* FIFO_WRITE_DEPTH = "256" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "251" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "251" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "8" *) 
  (* RD_DC_WIDTH_EXT = "9" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "8" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "8" *) 
  (* WR_DC_WIDTH_EXT = "9" *) 
  (* WR_DEPTH_LOG = "8" *) 
  (* WR_PNTR_WIDTH = "8" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  ulp_krnl_ro_rtl_1_0_xpm_fifo_base__parameterized0__1 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout(NLW_xpm_fifo_base_inst_dout_UNCONNECTED[31:0]),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(full),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "32" *) (* BYTE_WRITE_WIDTH_B = "32" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "32768" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "1024" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "32" *) 
(* P_MIN_WIDTH_DATA_A = "32" *) (* P_MIN_WIDTH_DATA_B = "32" *) (* P_MIN_WIDTH_DATA_ECC = "32" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "32" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) 
(* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "32" *) 
(* P_WIDTH_COL_WRITE_B = "32" *) (* READ_DATA_WIDTH_A = "32" *) (* READ_DATA_WIDTH_B = "32" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "32" *) (* WRITE_DATA_WIDTH_B = "32" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "32" *) (* rstb_loop_iter = "32" *) 
module ulp_krnl_ro_rtl_1_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [31:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [31:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [31:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire enb;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_100 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_101 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_102 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_103 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_104 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_105 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_106 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_107 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_108 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_109 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_110 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_111 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_112 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_113 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_114 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_115 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_116 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_117 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_118 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_119 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_120 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_121 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_122 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_123 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_124 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_125 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_126 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_127 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_128 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_129 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_130 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_131 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "31" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "31" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN(dina),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_100 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_101 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_102 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_103 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_104 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_105 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_106 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_107 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_108 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_109 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_110 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_111 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_112 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_113 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_114 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_115 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_116 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_117 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_118 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_119 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_120 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_121 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_122 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_123 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_124 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_125 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_126 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_127 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_128 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_129 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_130 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_131 }),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "32" *) (* BYTE_WRITE_WIDTH_B = "32" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "32768" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "1024" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "32" *) (* P_MIN_WIDTH_DATA_A = "32" *) (* P_MIN_WIDTH_DATA_B = "32" *) 
(* P_MIN_WIDTH_DATA_ECC = "32" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) 
(* P_WIDTH_ADDR_READ_B = "10" *) (* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) 
(* P_WIDTH_COL_WRITE_A = "32" *) (* P_WIDTH_COL_WRITE_B = "32" *) (* READ_DATA_WIDTH_A = "32" *) 
(* READ_DATA_WIDTH_B = "32" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "32" *) (* WRITE_DATA_WIDTH_B = "32" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "32" *) 
(* rstb_loop_iter = "32" *) 
module ulp_krnl_ro_rtl_1_0_xpm_memory_base__1
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [31:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [31:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [31:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "31" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "31" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN(dina),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT(doutb),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "32" *) (* BYTE_WRITE_WIDTH_B = "32" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "32768" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "1024" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) 
(* P_MIN_WIDTH_DATA = "32" *) (* P_MIN_WIDTH_DATA_A = "32" *) (* P_MIN_WIDTH_DATA_B = "32" *) 
(* P_MIN_WIDTH_DATA_ECC = "32" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) 
(* P_WIDTH_ADDR_READ_B = "10" *) (* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) 
(* P_WIDTH_COL_WRITE_A = "32" *) (* P_WIDTH_COL_WRITE_B = "32" *) (* READ_DATA_WIDTH_A = "32" *) 
(* READ_DATA_WIDTH_B = "32" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "32" *) (* WRITE_DATA_WIDTH_B = "32" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "32" *) 
(* rstb_loop_iter = "32" *) 
module ulp_krnl_ro_rtl_1_0_xpm_memory_base__3
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [31:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [31:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [31:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire enb;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_100 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_101 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_102 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_103 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_104 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_105 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_106 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_107 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_108 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_109 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_110 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_111 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_112 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_113 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_114 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_115 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_116 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_117 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_118 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_119 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_120 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_121 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_122 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_123 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_124 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_125 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_126 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_127 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_128 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_129 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_130 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_131 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "31" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "31" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b1),
        .ADDRENB(1'b1),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN(dina),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:0]),
        .DOUTBDOUT({\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_100 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_101 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_102 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_103 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_104 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_105 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_106 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_107 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_108 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_109 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_110 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_111 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_112 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_113 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_114 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_115 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_116 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_117 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_118 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_119 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_120 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_121 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_122 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_123 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_124 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_125 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_126 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_127 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_128 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_129 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_130 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_n_131 }),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(1'b1),
        .ENBWREN(enb),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
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
