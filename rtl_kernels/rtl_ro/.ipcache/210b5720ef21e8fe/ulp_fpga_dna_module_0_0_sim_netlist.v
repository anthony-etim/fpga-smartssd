// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Dec 31 12:05:58 2021
// Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_fpga_dna_module_0_0_sim_netlist.v
// Design      : ulp_fpga_dna_module_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku15p-ffva1156-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fpga_dna_module
   (s_axi_lite_rvalid,
    fpga_dna_data,
    s_axi_lite_rdata,
    s_axi_lite_bvalid_i_reg_0,
    s_axi_lite_awready,
    s_axi_lite_arready,
    s_axi_lite_wready,
    dna_dyn_data_ports,
    s_axi_lite_aclk,
    s_axi_lite_aresetn,
    s_axi_lite_wdata,
    dna_dyn_data_dout,
    s_axi_lite_araddr,
    s_axi_lite_bready,
    s_axi_lite_awvalid,
    s_axi_lite_arvalid,
    s_axi_lite_awaddr,
    s_axi_lite_wvalid,
    s_axi_lite_rready);
  output s_axi_lite_rvalid;
  output [95:0]fpga_dna_data;
  output [31:0]s_axi_lite_rdata;
  output s_axi_lite_bvalid_i_reg_0;
  output s_axi_lite_awready;
  output s_axi_lite_arready;
  output s_axi_lite_wready;
  output [1:0]dna_dyn_data_ports;
  input s_axi_lite_aclk;
  input s_axi_lite_aresetn;
  input [7:0]s_axi_lite_wdata;
  input dna_dyn_data_dout;
  input [11:0]s_axi_lite_araddr;
  input s_axi_lite_bready;
  input s_axi_lite_awvalid;
  input s_axi_lite_arvalid;
  input [11:0]s_axi_lite_awaddr;
  input s_axi_lite_wvalid;
  input s_axi_lite_rready;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_4_n_0 ;
  wire \FSM_onehot_state[3]_i_5_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [7:0]dna_data_cnt_val_reg;
  wire \dna_data_cnt_val_reg[7]_i_2_n_0 ;
  wire \dna_data_cnt_val_reg[7]_i_3_n_0 ;
  wire dna_data_cnt_val_reg_0;
  wire \dna_data_out[95]_i_1_n_0 ;
  wire \dna_data_out_reg_n_0_[0] ;
  wire \dna_data_out_reg_n_0_[10] ;
  wire \dna_data_out_reg_n_0_[11] ;
  wire \dna_data_out_reg_n_0_[12] ;
  wire \dna_data_out_reg_n_0_[13] ;
  wire \dna_data_out_reg_n_0_[14] ;
  wire \dna_data_out_reg_n_0_[15] ;
  wire \dna_data_out_reg_n_0_[16] ;
  wire \dna_data_out_reg_n_0_[17] ;
  wire \dna_data_out_reg_n_0_[18] ;
  wire \dna_data_out_reg_n_0_[19] ;
  wire \dna_data_out_reg_n_0_[1] ;
  wire \dna_data_out_reg_n_0_[20] ;
  wire \dna_data_out_reg_n_0_[21] ;
  wire \dna_data_out_reg_n_0_[22] ;
  wire \dna_data_out_reg_n_0_[23] ;
  wire \dna_data_out_reg_n_0_[24] ;
  wire \dna_data_out_reg_n_0_[25] ;
  wire \dna_data_out_reg_n_0_[26] ;
  wire \dna_data_out_reg_n_0_[27] ;
  wire \dna_data_out_reg_n_0_[28] ;
  wire \dna_data_out_reg_n_0_[29] ;
  wire \dna_data_out_reg_n_0_[2] ;
  wire \dna_data_out_reg_n_0_[30] ;
  wire \dna_data_out_reg_n_0_[31] ;
  wire \dna_data_out_reg_n_0_[32] ;
  wire \dna_data_out_reg_n_0_[33] ;
  wire \dna_data_out_reg_n_0_[34] ;
  wire \dna_data_out_reg_n_0_[35] ;
  wire \dna_data_out_reg_n_0_[36] ;
  wire \dna_data_out_reg_n_0_[37] ;
  wire \dna_data_out_reg_n_0_[38] ;
  wire \dna_data_out_reg_n_0_[39] ;
  wire \dna_data_out_reg_n_0_[3] ;
  wire \dna_data_out_reg_n_0_[40] ;
  wire \dna_data_out_reg_n_0_[41] ;
  wire \dna_data_out_reg_n_0_[42] ;
  wire \dna_data_out_reg_n_0_[43] ;
  wire \dna_data_out_reg_n_0_[44] ;
  wire \dna_data_out_reg_n_0_[45] ;
  wire \dna_data_out_reg_n_0_[46] ;
  wire \dna_data_out_reg_n_0_[47] ;
  wire \dna_data_out_reg_n_0_[48] ;
  wire \dna_data_out_reg_n_0_[49] ;
  wire \dna_data_out_reg_n_0_[4] ;
  wire \dna_data_out_reg_n_0_[50] ;
  wire \dna_data_out_reg_n_0_[51] ;
  wire \dna_data_out_reg_n_0_[52] ;
  wire \dna_data_out_reg_n_0_[53] ;
  wire \dna_data_out_reg_n_0_[54] ;
  wire \dna_data_out_reg_n_0_[55] ;
  wire \dna_data_out_reg_n_0_[56] ;
  wire \dna_data_out_reg_n_0_[57] ;
  wire \dna_data_out_reg_n_0_[58] ;
  wire \dna_data_out_reg_n_0_[59] ;
  wire \dna_data_out_reg_n_0_[5] ;
  wire \dna_data_out_reg_n_0_[60] ;
  wire \dna_data_out_reg_n_0_[61] ;
  wire \dna_data_out_reg_n_0_[62] ;
  wire \dna_data_out_reg_n_0_[63] ;
  wire \dna_data_out_reg_n_0_[64] ;
  wire \dna_data_out_reg_n_0_[65] ;
  wire \dna_data_out_reg_n_0_[66] ;
  wire \dna_data_out_reg_n_0_[67] ;
  wire \dna_data_out_reg_n_0_[68] ;
  wire \dna_data_out_reg_n_0_[69] ;
  wire \dna_data_out_reg_n_0_[6] ;
  wire \dna_data_out_reg_n_0_[70] ;
  wire \dna_data_out_reg_n_0_[71] ;
  wire \dna_data_out_reg_n_0_[72] ;
  wire \dna_data_out_reg_n_0_[73] ;
  wire \dna_data_out_reg_n_0_[74] ;
  wire \dna_data_out_reg_n_0_[75] ;
  wire \dna_data_out_reg_n_0_[76] ;
  wire \dna_data_out_reg_n_0_[77] ;
  wire \dna_data_out_reg_n_0_[78] ;
  wire \dna_data_out_reg_n_0_[79] ;
  wire \dna_data_out_reg_n_0_[7] ;
  wire \dna_data_out_reg_n_0_[80] ;
  wire \dna_data_out_reg_n_0_[81] ;
  wire \dna_data_out_reg_n_0_[82] ;
  wire \dna_data_out_reg_n_0_[83] ;
  wire \dna_data_out_reg_n_0_[84] ;
  wire \dna_data_out_reg_n_0_[85] ;
  wire \dna_data_out_reg_n_0_[86] ;
  wire \dna_data_out_reg_n_0_[87] ;
  wire \dna_data_out_reg_n_0_[88] ;
  wire \dna_data_out_reg_n_0_[89] ;
  wire \dna_data_out_reg_n_0_[8] ;
  wire \dna_data_out_reg_n_0_[90] ;
  wire \dna_data_out_reg_n_0_[91] ;
  wire \dna_data_out_reg_n_0_[92] ;
  wire \dna_data_out_reg_n_0_[93] ;
  wire \dna_data_out_reg_n_0_[94] ;
  wire \dna_data_out_reg_n_0_[95] ;
  wire \dna_data_out_reg_n_0_[9] ;
  wire [7:0]dna_data_reg_cnt;
  wire \dna_data_reg_cnt[0]_i_1_n_0 ;
  wire \dna_data_reg_cnt[5]_i_2_n_0 ;
  wire \dna_data_reg_cnt[7]_i_2_n_0 ;
  wire [7:1]dna_data_reg_cnt_2;
  wire dna_dyn_data_dout;
  wire [1:0]dna_dyn_data_ports;
  wire \dna_ip_r3_data[31]_i_1_n_0 ;
  wire dna_port_read;
  wire dna_port_read_i_1_n_0;
  wire dna_port_shift_i_1_n_0;
  wire dyn_trig_reg;
  wire dyn_trig_reg2_out;
  wire dyn_trig_reg_i_1_n_0;
  wire dyn_trig_reg_i_3_n_0;
  wire dyn_trig_reg_i_4_n_0;
  wire dyn_trig_reg_reg_n_0;
  wire [95:0]fpga_dna_data;
  wire [7:0]p_0_in;
  wire p_0_in0;
  wire [31:0]p_1_in;
  wire [11:0]p_2_in;
  wire [11:0]rd_addr_r;
  wire rd_req_r;
  wire rd_req_r06_out;
  wire rd_req_r_i_1_n_0;
  wire reset_released_r;
  wire rvalid_delayed;
  wire rvalid_delayed_1;
  wire s_axi_lite_aclk;
  wire [11:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [11:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid_i_i_1_n_0;
  wire s_axi_lite_bvalid_i_reg_0;
  wire [31:0]s_axi_lite_rdata;
  wire \s_axi_lite_rdata[0]_i_2_n_0 ;
  wire \s_axi_lite_rdata[0]_i_3_n_0 ;
  wire \s_axi_lite_rdata[10]_i_2_n_0 ;
  wire \s_axi_lite_rdata[11]_i_2_n_0 ;
  wire \s_axi_lite_rdata[12]_i_2_n_0 ;
  wire \s_axi_lite_rdata[13]_i_2_n_0 ;
  wire \s_axi_lite_rdata[15]_i_2_n_0 ;
  wire \s_axi_lite_rdata[16]_i_2_n_0 ;
  wire \s_axi_lite_rdata[18]_i_2_n_0 ;
  wire \s_axi_lite_rdata[19]_i_2_n_0 ;
  wire \s_axi_lite_rdata[1]_i_2_n_0 ;
  wire \s_axi_lite_rdata[21]_i_2_n_0 ;
  wire \s_axi_lite_rdata[22]_i_2_n_0 ;
  wire \s_axi_lite_rdata[23]_i_2_n_0 ;
  wire \s_axi_lite_rdata[24]_i_2_n_0 ;
  wire \s_axi_lite_rdata[24]_i_3_n_0 ;
  wire \s_axi_lite_rdata[24]_i_4_n_0 ;
  wire \s_axi_lite_rdata[25]_i_2_n_0 ;
  wire \s_axi_lite_rdata[26]_i_2_n_0 ;
  wire \s_axi_lite_rdata[27]_i_2_n_0 ;
  wire \s_axi_lite_rdata[28]_i_2_n_0 ;
  wire \s_axi_lite_rdata[29]_i_2_n_0 ;
  wire \s_axi_lite_rdata[29]_i_3_n_0 ;
  wire \s_axi_lite_rdata[29]_i_4_n_0 ;
  wire \s_axi_lite_rdata[29]_i_5_n_0 ;
  wire \s_axi_lite_rdata[29]_i_6_n_0 ;
  wire \s_axi_lite_rdata[29]_i_7_n_0 ;
  wire \s_axi_lite_rdata[29]_i_8_n_0 ;
  wire \s_axi_lite_rdata[29]_i_9_n_0 ;
  wire \s_axi_lite_rdata[2]_i_2_n_0 ;
  wire \s_axi_lite_rdata[30]_i_2_n_0 ;
  wire \s_axi_lite_rdata[31]_i_1_n_0 ;
  wire \s_axi_lite_rdata[31]_i_2_n_0 ;
  wire \s_axi_lite_rdata[31]_i_4_n_0 ;
  wire \s_axi_lite_rdata[31]_i_5_n_0 ;
  wire \s_axi_lite_rdata[31]_i_6_n_0 ;
  wire \s_axi_lite_rdata[31]_i_7_n_0 ;
  wire \s_axi_lite_rdata[31]_i_8_n_0 ;
  wire \s_axi_lite_rdata[31]_i_9_n_0 ;
  wire \s_axi_lite_rdata[3]_i_2_n_0 ;
  wire \s_axi_lite_rdata[4]_i_2_n_0 ;
  wire \s_axi_lite_rdata[4]_i_3_n_0 ;
  wire \s_axi_lite_rdata[4]_i_4_n_0 ;
  wire \s_axi_lite_rdata[4]_i_5_n_0 ;
  wire \s_axi_lite_rdata[4]_i_6_n_0 ;
  wire \s_axi_lite_rdata[4]_i_7_n_0 ;
  wire \s_axi_lite_rdata[4]_i_8_n_0 ;
  wire \s_axi_lite_rdata[5]_i_2_n_0 ;
  wire \s_axi_lite_rdata[6]_i_2_n_0 ;
  wire \s_axi_lite_rdata[7]_i_2_n_0 ;
  wire \s_axi_lite_rdata[9]_i_2_n_0 ;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [7:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire s_axi_lite_wvalid;
  wire [1:0]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire static_read_cnt;
  wire \static_read_cnt[7]_i_2_n_0 ;
  wire [7:0]static_read_cnt_reg;
  wire [5:0]wr_addr_r;
  wire \wr_addr_r[11]_i_1_n_0 ;
  wire \wr_addr_r_reg_n_0_[10] ;
  wire \wr_addr_r_reg_n_0_[11] ;
  wire \wr_addr_r_reg_n_0_[7] ;
  wire \wr_addr_r_reg_n_0_[8] ;
  wire \wr_addr_r_reg_n_0_[9] ;
  wire wr_req_r;
  wire wr_req_r08_out;

  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(dyn_trig_reg_reg_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(dyn_trig_reg),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(dyn_trig_reg_reg_n_0),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(static_read_cnt),
        .I1(\FSM_onehot_state[3]_i_5_n_0 ),
        .I2(\FSM_onehot_state[3]_i_4_n_0 ),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(\FSM_onehot_state[3]_i_2_n_0 ),
        .I5(dna_port_read),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(static_read_cnt),
        .I1(\FSM_onehot_state[3]_i_2_n_0 ),
        .I2(\FSM_onehot_state[3]_i_3_n_0 ),
        .I3(\FSM_onehot_state[3]_i_4_n_0 ),
        .I4(\FSM_onehot_state[3]_i_5_n_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(dna_data_reg_cnt[4]),
        .I1(dna_data_cnt_val_reg[4]),
        .I2(dna_data_reg_cnt[5]),
        .I3(dna_data_cnt_val_reg[5]),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(dna_data_reg_cnt[6]),
        .I1(dna_data_cnt_val_reg[6]),
        .I2(dna_data_reg_cnt[7]),
        .I3(dna_data_cnt_val_reg[7]),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(dna_data_reg_cnt[0]),
        .I1(dna_data_cnt_val_reg[0]),
        .I2(dna_data_reg_cnt[1]),
        .I3(dna_data_cnt_val_reg[1]),
        .O(\FSM_onehot_state[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \FSM_onehot_state[3]_i_5 
       (.I0(dna_data_reg_cnt[2]),
        .I1(dna_data_cnt_val_reg[2]),
        .I2(dna_data_reg_cnt[3]),
        .I3(dna_data_cnt_val_reg[3]),
        .O(\FSM_onehot_state[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0001,READ:0010,LOAD:0100,STOP:1000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0001,READ:0010,LOAD:0100,STOP:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(dna_port_read),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0001,READ:0010,LOAD:0100,STOP:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(static_read_cnt),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0001,READ:0010,LOAD:0100,STOP:1000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(dyn_trig_reg),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \dna_data_cnt_val_reg[7]_i_1 
       (.I0(\dna_data_cnt_val_reg[7]_i_2_n_0 ),
        .I1(s_axi_lite_wvalid),
        .I2(wr_req_r),
        .I3(s_axi_lite_bvalid_i_reg_0),
        .I4(wr_addr_r[0]),
        .I5(\dna_data_cnt_val_reg[7]_i_3_n_0 ),
        .O(dna_data_cnt_val_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \dna_data_cnt_val_reg[7]_i_2 
       (.I0(\wr_addr_r_reg_n_0_[9] ),
        .I1(\wr_addr_r_reg_n_0_[10] ),
        .I2(\wr_addr_r_reg_n_0_[7] ),
        .I3(\wr_addr_r_reg_n_0_[8] ),
        .I4(dyn_trig_reg),
        .I5(\wr_addr_r_reg_n_0_[11] ),
        .O(\dna_data_cnt_val_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \dna_data_cnt_val_reg[7]_i_3 
       (.I0(wr_addr_r[3]),
        .I1(wr_addr_r[4]),
        .I2(wr_addr_r[1]),
        .I3(wr_addr_r[2]),
        .I4(p_0_in0),
        .I5(wr_addr_r[5]),
        .O(\dna_data_cnt_val_reg[7]_i_3_n_0 ));
  FDRE \dna_data_cnt_val_reg_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(dna_data_cnt_val_reg_0),
        .D(s_axi_lite_wdata[0]),
        .Q(dna_data_cnt_val_reg[0]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDSE \dna_data_cnt_val_reg_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(dna_data_cnt_val_reg_0),
        .D(s_axi_lite_wdata[1]),
        .Q(dna_data_cnt_val_reg[1]),
        .S(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \dna_data_cnt_val_reg_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(dna_data_cnt_val_reg_0),
        .D(s_axi_lite_wdata[2]),
        .Q(dna_data_cnt_val_reg[2]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \dna_data_cnt_val_reg_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(dna_data_cnt_val_reg_0),
        .D(s_axi_lite_wdata[3]),
        .Q(dna_data_cnt_val_reg[3]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \dna_data_cnt_val_reg_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(dna_data_cnt_val_reg_0),
        .D(s_axi_lite_wdata[4]),
        .Q(dna_data_cnt_val_reg[4]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDSE \dna_data_cnt_val_reg_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(dna_data_cnt_val_reg_0),
        .D(s_axi_lite_wdata[5]),
        .Q(dna_data_cnt_val_reg[5]),
        .S(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDSE \dna_data_cnt_val_reg_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(dna_data_cnt_val_reg_0),
        .D(s_axi_lite_wdata[6]),
        .Q(dna_data_cnt_val_reg[6]),
        .S(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \dna_data_cnt_val_reg_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(dna_data_cnt_val_reg_0),
        .D(s_axi_lite_wdata[7]),
        .Q(dna_data_cnt_val_reg[7]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dna_data_out[95]_i_1 
       (.I0(s_axi_lite_aresetn),
        .I1(static_read_cnt),
        .O(\dna_data_out[95]_i_1_n_0 ));
  FDRE \dna_data_out_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[1] ),
        .Q(\dna_data_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[11] ),
        .Q(\dna_data_out_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[12] ),
        .Q(\dna_data_out_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[13] ),
        .Q(\dna_data_out_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[14] ),
        .Q(\dna_data_out_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[15] ),
        .Q(\dna_data_out_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[16] ),
        .Q(\dna_data_out_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[17] ),
        .Q(\dna_data_out_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[18] ),
        .Q(\dna_data_out_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[19] ),
        .Q(\dna_data_out_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[20] ),
        .Q(\dna_data_out_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[2] ),
        .Q(\dna_data_out_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[21] ),
        .Q(\dna_data_out_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[22] ),
        .Q(\dna_data_out_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[23] ),
        .Q(\dna_data_out_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[24] ),
        .Q(\dna_data_out_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[25] ),
        .Q(\dna_data_out_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[26] ),
        .Q(\dna_data_out_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[27] ),
        .Q(\dna_data_out_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[28] ),
        .Q(\dna_data_out_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[29] ),
        .Q(\dna_data_out_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[30] ),
        .Q(\dna_data_out_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[3] ),
        .Q(\dna_data_out_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[31] ),
        .Q(\dna_data_out_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[32] ),
        .Q(\dna_data_out_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[32] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[33] ),
        .Q(\dna_data_out_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[33] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[34] ),
        .Q(\dna_data_out_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[34] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[35] ),
        .Q(\dna_data_out_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[35] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[36] ),
        .Q(\dna_data_out_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[36] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[37] ),
        .Q(\dna_data_out_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[37] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[38] ),
        .Q(\dna_data_out_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[38] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[39] ),
        .Q(\dna_data_out_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[39] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[40] ),
        .Q(\dna_data_out_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[4] ),
        .Q(\dna_data_out_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[40] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[41] ),
        .Q(\dna_data_out_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[41] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[42] ),
        .Q(\dna_data_out_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[42] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[43] ),
        .Q(\dna_data_out_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[43] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[44] ),
        .Q(\dna_data_out_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[44] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[45] ),
        .Q(\dna_data_out_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[45] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[46] ),
        .Q(\dna_data_out_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[46] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[47] ),
        .Q(\dna_data_out_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[47] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[48] ),
        .Q(\dna_data_out_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[48] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[49] ),
        .Q(\dna_data_out_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[49] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[50] ),
        .Q(\dna_data_out_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[5] ),
        .Q(\dna_data_out_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[50] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[51] ),
        .Q(\dna_data_out_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[51] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[52] ),
        .Q(\dna_data_out_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[52] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[53] ),
        .Q(\dna_data_out_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[53] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[54] ),
        .Q(\dna_data_out_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[54] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[55] ),
        .Q(\dna_data_out_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[55] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[56] ),
        .Q(\dna_data_out_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[56] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[57] ),
        .Q(\dna_data_out_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[57] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[58] ),
        .Q(\dna_data_out_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[58] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[59] ),
        .Q(\dna_data_out_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[59] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[60] ),
        .Q(\dna_data_out_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[6] ),
        .Q(\dna_data_out_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[60] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[61] ),
        .Q(\dna_data_out_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[61] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[62] ),
        .Q(\dna_data_out_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[62] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[63] ),
        .Q(\dna_data_out_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[63] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[64] ),
        .Q(\dna_data_out_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[64] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[65] ),
        .Q(\dna_data_out_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[65] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[66] ),
        .Q(\dna_data_out_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[66] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[67] ),
        .Q(\dna_data_out_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[67] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[68] ),
        .Q(\dna_data_out_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[68] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[69] ),
        .Q(\dna_data_out_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[69] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[70] ),
        .Q(\dna_data_out_reg_n_0_[69] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[7] ),
        .Q(\dna_data_out_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[70] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[71] ),
        .Q(\dna_data_out_reg_n_0_[70] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[71] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[72] ),
        .Q(\dna_data_out_reg_n_0_[71] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[72] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[73] ),
        .Q(\dna_data_out_reg_n_0_[72] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[73] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[74] ),
        .Q(\dna_data_out_reg_n_0_[73] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[74] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[75] ),
        .Q(\dna_data_out_reg_n_0_[74] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[75] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[76] ),
        .Q(\dna_data_out_reg_n_0_[75] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[76] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[77] ),
        .Q(\dna_data_out_reg_n_0_[76] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[77] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[78] ),
        .Q(\dna_data_out_reg_n_0_[77] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[78] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[79] ),
        .Q(\dna_data_out_reg_n_0_[78] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[79] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[80] ),
        .Q(\dna_data_out_reg_n_0_[79] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[8] ),
        .Q(\dna_data_out_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[80] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[81] ),
        .Q(\dna_data_out_reg_n_0_[80] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[81] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[82] ),
        .Q(\dna_data_out_reg_n_0_[81] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[82] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[83] ),
        .Q(\dna_data_out_reg_n_0_[82] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[83] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[84] ),
        .Q(\dna_data_out_reg_n_0_[83] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[84] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[85] ),
        .Q(\dna_data_out_reg_n_0_[84] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[85] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[86] ),
        .Q(\dna_data_out_reg_n_0_[85] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[86] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[87] ),
        .Q(\dna_data_out_reg_n_0_[86] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[87] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[88] ),
        .Q(\dna_data_out_reg_n_0_[87] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[88] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[89] ),
        .Q(\dna_data_out_reg_n_0_[88] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[89] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[90] ),
        .Q(\dna_data_out_reg_n_0_[89] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[9] ),
        .Q(\dna_data_out_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[90] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[91] ),
        .Q(\dna_data_out_reg_n_0_[90] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[91] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[92] ),
        .Q(\dna_data_out_reg_n_0_[91] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[92] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[93] ),
        .Q(\dna_data_out_reg_n_0_[92] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[93] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[94] ),
        .Q(\dna_data_out_reg_n_0_[93] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[94] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[95] ),
        .Q(\dna_data_out_reg_n_0_[94] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[95] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(dna_dyn_data_dout),
        .Q(\dna_data_out_reg_n_0_[95] ),
        .R(1'b0));
  FDRE \dna_data_out_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_data_out[95]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[10] ),
        .Q(\dna_data_out_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dna_data_reg_cnt[0]_i_1 
       (.I0(static_read_cnt),
        .I1(dna_data_reg_cnt[0]),
        .O(\dna_data_reg_cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \dna_data_reg_cnt[1]_i_1 
       (.I0(dna_data_reg_cnt[0]),
        .I1(static_read_cnt),
        .I2(dna_data_reg_cnt[1]),
        .O(dna_data_reg_cnt_2[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \dna_data_reg_cnt[2]_i_1 
       (.I0(dna_data_reg_cnt[0]),
        .I1(dna_data_reg_cnt[1]),
        .I2(static_read_cnt),
        .I3(dna_data_reg_cnt[2]),
        .O(dna_data_reg_cnt_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \dna_data_reg_cnt[3]_i_1 
       (.I0(dna_data_reg_cnt[1]),
        .I1(dna_data_reg_cnt[0]),
        .I2(dna_data_reg_cnt[2]),
        .I3(static_read_cnt),
        .I4(dna_data_reg_cnt[3]),
        .O(dna_data_reg_cnt_2[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \dna_data_reg_cnt[4]_i_1 
       (.I0(dna_data_reg_cnt[2]),
        .I1(dna_data_reg_cnt[0]),
        .I2(dna_data_reg_cnt[1]),
        .I3(dna_data_reg_cnt[3]),
        .I4(static_read_cnt),
        .I5(dna_data_reg_cnt[4]),
        .O(dna_data_reg_cnt_2[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \dna_data_reg_cnt[5]_i_1 
       (.I0(\dna_data_reg_cnt[5]_i_2_n_0 ),
        .I1(static_read_cnt),
        .I2(dna_data_reg_cnt[5]),
        .O(dna_data_reg_cnt_2[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \dna_data_reg_cnt[5]_i_2 
       (.I0(dna_data_reg_cnt[3]),
        .I1(dna_data_reg_cnt[1]),
        .I2(dna_data_reg_cnt[0]),
        .I3(dna_data_reg_cnt[2]),
        .I4(dna_data_reg_cnt[4]),
        .O(\dna_data_reg_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \dna_data_reg_cnt[6]_i_1 
       (.I0(\dna_data_reg_cnt[7]_i_2_n_0 ),
        .I1(static_read_cnt),
        .I2(dna_data_reg_cnt[6]),
        .O(dna_data_reg_cnt_2[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \dna_data_reg_cnt[7]_i_1 
       (.I0(\dna_data_reg_cnt[7]_i_2_n_0 ),
        .I1(dna_data_reg_cnt[6]),
        .I2(static_read_cnt),
        .I3(dna_data_reg_cnt[7]),
        .O(dna_data_reg_cnt_2[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \dna_data_reg_cnt[7]_i_2 
       (.I0(dna_data_reg_cnt[4]),
        .I1(dna_data_reg_cnt[2]),
        .I2(dna_data_reg_cnt[0]),
        .I3(dna_data_reg_cnt[1]),
        .I4(dna_data_reg_cnt[3]),
        .I5(dna_data_reg_cnt[5]),
        .O(\dna_data_reg_cnt[7]_i_2_n_0 ));
  FDRE \dna_data_reg_cnt_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(dna_port_shift_i_1_n_0),
        .D(\dna_data_reg_cnt[0]_i_1_n_0 ),
        .Q(dna_data_reg_cnt[0]),
        .R(1'b0));
  FDRE \dna_data_reg_cnt_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(dna_port_shift_i_1_n_0),
        .D(dna_data_reg_cnt_2[1]),
        .Q(dna_data_reg_cnt[1]),
        .R(1'b0));
  FDRE \dna_data_reg_cnt_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(dna_port_shift_i_1_n_0),
        .D(dna_data_reg_cnt_2[2]),
        .Q(dna_data_reg_cnt[2]),
        .R(1'b0));
  FDRE \dna_data_reg_cnt_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(dna_port_shift_i_1_n_0),
        .D(dna_data_reg_cnt_2[3]),
        .Q(dna_data_reg_cnt[3]),
        .R(1'b0));
  FDRE \dna_data_reg_cnt_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(dna_port_shift_i_1_n_0),
        .D(dna_data_reg_cnt_2[4]),
        .Q(dna_data_reg_cnt[4]),
        .R(1'b0));
  FDRE \dna_data_reg_cnt_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(dna_port_shift_i_1_n_0),
        .D(dna_data_reg_cnt_2[5]),
        .Q(dna_data_reg_cnt[5]),
        .R(1'b0));
  FDRE \dna_data_reg_cnt_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(dna_port_shift_i_1_n_0),
        .D(dna_data_reg_cnt_2[6]),
        .Q(dna_data_reg_cnt[6]),
        .R(1'b0));
  FDRE \dna_data_reg_cnt_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(dna_port_shift_i_1_n_0),
        .D(dna_data_reg_cnt_2[7]),
        .Q(dna_data_reg_cnt[7]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[0] ),
        .Q(fpga_dna_data[0]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[10] ),
        .Q(fpga_dna_data[10]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[11] ),
        .Q(fpga_dna_data[11]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[12] ),
        .Q(fpga_dna_data[12]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[13] ),
        .Q(fpga_dna_data[13]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[14] ),
        .Q(fpga_dna_data[14]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[15] ),
        .Q(fpga_dna_data[15]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[16] ),
        .Q(fpga_dna_data[16]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[17] ),
        .Q(fpga_dna_data[17]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[18] ),
        .Q(fpga_dna_data[18]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[19] ),
        .Q(fpga_dna_data[19]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[1] ),
        .Q(fpga_dna_data[1]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[20] ),
        .Q(fpga_dna_data[20]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[21] ),
        .Q(fpga_dna_data[21]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[22] ),
        .Q(fpga_dna_data[22]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[23] ),
        .Q(fpga_dna_data[23]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[24] ),
        .Q(fpga_dna_data[24]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[25] ),
        .Q(fpga_dna_data[25]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[26] ),
        .Q(fpga_dna_data[26]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[27] ),
        .Q(fpga_dna_data[27]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[28] ),
        .Q(fpga_dna_data[28]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[29] ),
        .Q(fpga_dna_data[29]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[2] ),
        .Q(fpga_dna_data[2]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[30] ),
        .Q(fpga_dna_data[30]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[31] ),
        .Q(fpga_dna_data[31]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[3] ),
        .Q(fpga_dna_data[3]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[4] ),
        .Q(fpga_dna_data[4]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[5] ),
        .Q(fpga_dna_data[5]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[6] ),
        .Q(fpga_dna_data[6]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[7] ),
        .Q(fpga_dna_data[7]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[8] ),
        .Q(fpga_dna_data[8]),
        .R(1'b0));
  FDRE \dna_ip_r1_data_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[9] ),
        .Q(fpga_dna_data[9]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[32] ),
        .Q(fpga_dna_data[32]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[42] ),
        .Q(fpga_dna_data[42]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[43] ),
        .Q(fpga_dna_data[43]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[44] ),
        .Q(fpga_dna_data[44]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[45] ),
        .Q(fpga_dna_data[45]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[46] ),
        .Q(fpga_dna_data[46]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[47] ),
        .Q(fpga_dna_data[47]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[48] ),
        .Q(fpga_dna_data[48]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[49] ),
        .Q(fpga_dna_data[49]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[50] ),
        .Q(fpga_dna_data[50]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[51] ),
        .Q(fpga_dna_data[51]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[33] ),
        .Q(fpga_dna_data[33]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[52] ),
        .Q(fpga_dna_data[52]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[53] ),
        .Q(fpga_dna_data[53]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[54] ),
        .Q(fpga_dna_data[54]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[55] ),
        .Q(fpga_dna_data[55]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[56] ),
        .Q(fpga_dna_data[56]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[57] ),
        .Q(fpga_dna_data[57]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[58] ),
        .Q(fpga_dna_data[58]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[59] ),
        .Q(fpga_dna_data[59]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[60] ),
        .Q(fpga_dna_data[60]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[61] ),
        .Q(fpga_dna_data[61]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[34] ),
        .Q(fpga_dna_data[34]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[62] ),
        .Q(fpga_dna_data[62]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[63] ),
        .Q(fpga_dna_data[63]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[35] ),
        .Q(fpga_dna_data[35]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[36] ),
        .Q(fpga_dna_data[36]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[37] ),
        .Q(fpga_dna_data[37]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[38] ),
        .Q(fpga_dna_data[38]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[39] ),
        .Q(fpga_dna_data[39]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[40] ),
        .Q(fpga_dna_data[40]),
        .R(1'b0));
  FDRE \dna_ip_r2_data_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[41] ),
        .Q(fpga_dna_data[41]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \dna_ip_r3_data[31]_i_1 
       (.I0(s_axi_lite_aresetn),
        .I1(dyn_trig_reg),
        .O(\dna_ip_r3_data[31]_i_1_n_0 ));
  FDRE \dna_ip_r3_data_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[64] ),
        .Q(fpga_dna_data[64]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[74] ),
        .Q(fpga_dna_data[74]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[75] ),
        .Q(fpga_dna_data[75]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[76] ),
        .Q(fpga_dna_data[76]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[77] ),
        .Q(fpga_dna_data[77]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[78] ),
        .Q(fpga_dna_data[78]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[79] ),
        .Q(fpga_dna_data[79]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[80] ),
        .Q(fpga_dna_data[80]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[81] ),
        .Q(fpga_dna_data[81]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[82] ),
        .Q(fpga_dna_data[82]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[83] ),
        .Q(fpga_dna_data[83]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[65] ),
        .Q(fpga_dna_data[65]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[84] ),
        .Q(fpga_dna_data[84]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[85] ),
        .Q(fpga_dna_data[85]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[86] ),
        .Q(fpga_dna_data[86]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[87] ),
        .Q(fpga_dna_data[87]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[88] ),
        .Q(fpga_dna_data[88]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[89] ),
        .Q(fpga_dna_data[89]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[90] ),
        .Q(fpga_dna_data[90]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[91] ),
        .Q(fpga_dna_data[91]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[92] ),
        .Q(fpga_dna_data[92]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[93] ),
        .Q(fpga_dna_data[93]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[66] ),
        .Q(fpga_dna_data[66]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[94] ),
        .Q(fpga_dna_data[94]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[95] ),
        .Q(fpga_dna_data[95]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[67] ),
        .Q(fpga_dna_data[67]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[68] ),
        .Q(fpga_dna_data[68]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[69] ),
        .Q(fpga_dna_data[69]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[70] ),
        .Q(fpga_dna_data[70]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[71] ),
        .Q(fpga_dna_data[71]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[72] ),
        .Q(fpga_dna_data[72]),
        .R(1'b0));
  FDRE \dna_ip_r3_data_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\dna_ip_r3_data[31]_i_1_n_0 ),
        .D(\dna_data_out_reg_n_0_[73] ),
        .Q(fpga_dna_data[73]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBBF8888)) 
    dna_port_read_i_1
       (.I0(dna_port_read),
        .I1(s_axi_lite_aresetn),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(static_read_cnt),
        .I4(dna_dyn_data_ports[0]),
        .O(dna_port_read_i_1_n_0));
  FDRE dna_port_read_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(dna_port_read_i_1_n_0),
        .Q(dna_dyn_data_ports[0]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE00)) 
    dna_port_shift_i_1
       (.I0(dyn_trig_reg),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(static_read_cnt),
        .I3(s_axi_lite_aresetn),
        .O(dna_port_shift_i_1_n_0));
  FDRE dna_port_shift_reg
       (.C(s_axi_lite_aclk),
        .CE(dna_port_shift_i_1_n_0),
        .D(static_read_cnt),
        .Q(dna_dyn_data_ports[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h44400040)) 
    dyn_trig_reg_i_1
       (.I0(dyn_trig_reg),
        .I1(s_axi_lite_aresetn),
        .I2(dyn_trig_reg_reg_n_0),
        .I3(dyn_trig_reg2_out),
        .I4(s_axi_lite_wdata[0]),
        .O(dyn_trig_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    dyn_trig_reg_i_2
       (.I0(s_axi_lite_bvalid_i_reg_0),
        .I1(wr_req_r),
        .I2(s_axi_lite_wvalid),
        .I3(dyn_trig_reg_i_3_n_0),
        .I4(dyn_trig_reg_i_4_n_0),
        .O(dyn_trig_reg2_out));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dyn_trig_reg_i_3
       (.I0(\wr_addr_r_reg_n_0_[8] ),
        .I1(\wr_addr_r_reg_n_0_[9] ),
        .I2(p_0_in0),
        .I3(\wr_addr_r_reg_n_0_[7] ),
        .I4(\wr_addr_r_reg_n_0_[11] ),
        .I5(\wr_addr_r_reg_n_0_[10] ),
        .O(dyn_trig_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    dyn_trig_reg_i_4
       (.I0(wr_addr_r[2]),
        .I1(wr_addr_r[3]),
        .I2(wr_addr_r[0]),
        .I3(wr_addr_r[1]),
        .I4(wr_addr_r[5]),
        .I5(wr_addr_r[4]),
        .O(dyn_trig_reg_i_4_n_0));
  FDRE dyn_trig_reg_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(dyn_trig_reg_i_1_n_0),
        .Q(dyn_trig_reg_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0400)) 
    \rd_addr_r[11]_i_1 
       (.I0(wr_req_r),
        .I1(reset_released_r),
        .I2(rd_req_r),
        .I3(s_axi_lite_arvalid),
        .O(rd_req_r06_out));
  FDRE \rd_addr_r_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r06_out),
        .D(s_axi_lite_araddr[0]),
        .Q(rd_addr_r[0]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \rd_addr_r_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r06_out),
        .D(s_axi_lite_araddr[10]),
        .Q(rd_addr_r[10]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \rd_addr_r_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r06_out),
        .D(s_axi_lite_araddr[11]),
        .Q(rd_addr_r[11]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \rd_addr_r_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r06_out),
        .D(s_axi_lite_araddr[1]),
        .Q(rd_addr_r[1]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \rd_addr_r_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r06_out),
        .D(s_axi_lite_araddr[2]),
        .Q(rd_addr_r[2]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \rd_addr_r_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r06_out),
        .D(s_axi_lite_araddr[3]),
        .Q(rd_addr_r[3]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \rd_addr_r_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r06_out),
        .D(s_axi_lite_araddr[4]),
        .Q(rd_addr_r[4]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \rd_addr_r_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r06_out),
        .D(s_axi_lite_araddr[5]),
        .Q(rd_addr_r[5]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \rd_addr_r_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r06_out),
        .D(s_axi_lite_araddr[6]),
        .Q(rd_addr_r[6]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \rd_addr_r_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r06_out),
        .D(s_axi_lite_araddr[7]),
        .Q(rd_addr_r[7]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \rd_addr_r_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r06_out),
        .D(s_axi_lite_araddr[8]),
        .Q(rd_addr_r[8]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \rd_addr_r_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r06_out),
        .D(s_axi_lite_araddr[9]),
        .Q(rd_addr_r[9]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7700770077F07700)) 
    rd_req_r_i_1
       (.I0(s_axi_lite_rvalid),
        .I1(s_axi_lite_rready),
        .I2(s_axi_lite_arvalid),
        .I3(rd_req_r),
        .I4(reset_released_r),
        .I5(wr_req_r),
        .O(rd_req_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_req_r_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(rd_req_r_i_1_n_0),
        .Q(rd_req_r),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    reset_released_r_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_aresetn),
        .Q(reset_released_r),
        .R(1'b0));
  FDRE rvalid_delayed_reg
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r),
        .D(rd_req_r),
        .Q(rvalid_delayed),
        .R(rvalid_delayed_1));
  LUT3 #(
    .INIT(8'h04)) 
    s_axi_lite_arready_INST_0
       (.I0(rd_req_r),
        .I1(reset_released_r),
        .I2(wr_req_r),
        .O(s_axi_lite_arready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    s_axi_lite_awready_INST_0
       (.I0(wr_req_r),
        .I1(reset_released_r),
        .I2(rd_req_r),
        .I3(s_axi_lite_arvalid),
        .O(s_axi_lite_awready));
  LUT4 #(
    .INIT(16'h08F8)) 
    s_axi_lite_bvalid_i_i_1
       (.I0(s_axi_lite_wvalid),
        .I1(wr_req_r),
        .I2(s_axi_lite_bvalid_i_reg_0),
        .I3(s_axi_lite_bready),
        .O(s_axi_lite_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_lite_bvalid_i_reg
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(s_axi_lite_bvalid_i_i_1_n_0),
        .Q(s_axi_lite_bvalid_i_reg_0),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \s_axi_lite_rdata[0]_i_1 
       (.I0(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I1(\s_axi_lite_rdata[0]_i_2_n_0 ),
        .I2(\s_axi_lite_rdata[0]_i_3_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[0]_i_2 
       (.I0(rd_addr_r[8]),
        .I1(dna_dyn_data_dout),
        .I2(rd_addr_r[4]),
        .I3(dyn_trig_reg_reg_n_0),
        .I4(dna_data_cnt_val_reg[0]),
        .I5(rd_addr_r[5]),
        .O(\s_axi_lite_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[0]_i_3 
       (.I0(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .I1(fpga_dna_data[0]),
        .I2(fpga_dna_data[64]),
        .I3(rd_addr_r[3]),
        .I4(rd_addr_r[2]),
        .I5(fpga_dna_data[32]),
        .O(\s_axi_lite_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[10]_i_1 
       (.I0(fpga_dna_data[42]),
        .I1(rd_addr_r[2]),
        .I2(rd_addr_r[3]),
        .I3(fpga_dna_data[74]),
        .I4(\s_axi_lite_rdata[10]_i_2_n_0 ),
        .I5(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_lite_rdata[10]_i_2 
       (.I0(rd_addr_r[2]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[5]),
        .I4(rd_addr_r[3]),
        .I5(fpga_dna_data[10]),
        .O(\s_axi_lite_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[11]_i_1 
       (.I0(fpga_dna_data[43]),
        .I1(rd_addr_r[2]),
        .I2(rd_addr_r[3]),
        .I3(fpga_dna_data[75]),
        .I4(\s_axi_lite_rdata[11]_i_2_n_0 ),
        .I5(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_lite_rdata[11]_i_2 
       (.I0(rd_addr_r[2]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[5]),
        .I4(rd_addr_r[3]),
        .I5(fpga_dna_data[11]),
        .O(\s_axi_lite_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[12]_i_1 
       (.I0(fpga_dna_data[44]),
        .I1(rd_addr_r[2]),
        .I2(rd_addr_r[3]),
        .I3(fpga_dna_data[76]),
        .I4(\s_axi_lite_rdata[12]_i_2_n_0 ),
        .I5(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_lite_rdata[12]_i_2 
       (.I0(rd_addr_r[2]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[5]),
        .I4(rd_addr_r[3]),
        .I5(fpga_dna_data[12]),
        .O(\s_axi_lite_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[13]_i_1 
       (.I0(fpga_dna_data[45]),
        .I1(rd_addr_r[2]),
        .I2(rd_addr_r[3]),
        .I3(fpga_dna_data[77]),
        .I4(\s_axi_lite_rdata[13]_i_2_n_0 ),
        .I5(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_lite_rdata[13]_i_2 
       (.I0(rd_addr_r[2]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[5]),
        .I4(rd_addr_r[3]),
        .I5(fpga_dna_data[13]),
        .O(\s_axi_lite_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[14]_i_1 
       (.I0(\s_axi_lite_rdata[22]_i_2_n_0 ),
        .I1(fpga_dna_data[14]),
        .I2(\s_axi_lite_rdata[29]_i_4_n_0 ),
        .I3(fpga_dna_data[46]),
        .I4(fpga_dna_data[78]),
        .I5(\s_axi_lite_rdata[29]_i_5_n_0 ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[15]_i_1 
       (.I0(fpga_dna_data[47]),
        .I1(rd_addr_r[2]),
        .I2(rd_addr_r[3]),
        .I3(fpga_dna_data[79]),
        .I4(\s_axi_lite_rdata[15]_i_2_n_0 ),
        .I5(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_lite_rdata[15]_i_2 
       (.I0(rd_addr_r[2]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[5]),
        .I4(rd_addr_r[3]),
        .I5(fpga_dna_data[15]),
        .O(\s_axi_lite_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[16]_i_1 
       (.I0(fpga_dna_data[48]),
        .I1(rd_addr_r[2]),
        .I2(rd_addr_r[3]),
        .I3(fpga_dna_data[80]),
        .I4(\s_axi_lite_rdata[16]_i_2_n_0 ),
        .I5(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_lite_rdata[16]_i_2 
       (.I0(rd_addr_r[2]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[5]),
        .I4(rd_addr_r[3]),
        .I5(fpga_dna_data[16]),
        .O(\s_axi_lite_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[17]_i_1 
       (.I0(\s_axi_lite_rdata[22]_i_2_n_0 ),
        .I1(fpga_dna_data[17]),
        .I2(\s_axi_lite_rdata[29]_i_4_n_0 ),
        .I3(fpga_dna_data[49]),
        .I4(fpga_dna_data[81]),
        .I5(\s_axi_lite_rdata[29]_i_5_n_0 ),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[18]_i_1 
       (.I0(fpga_dna_data[50]),
        .I1(rd_addr_r[2]),
        .I2(rd_addr_r[3]),
        .I3(fpga_dna_data[82]),
        .I4(\s_axi_lite_rdata[18]_i_2_n_0 ),
        .I5(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_lite_rdata[18]_i_2 
       (.I0(rd_addr_r[2]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[5]),
        .I4(rd_addr_r[3]),
        .I5(fpga_dna_data[18]),
        .O(\s_axi_lite_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[19]_i_1 
       (.I0(fpga_dna_data[51]),
        .I1(rd_addr_r[2]),
        .I2(rd_addr_r[3]),
        .I3(fpga_dna_data[83]),
        .I4(\s_axi_lite_rdata[19]_i_2_n_0 ),
        .I5(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_lite_rdata[19]_i_2 
       (.I0(rd_addr_r[2]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[5]),
        .I4(rd_addr_r[3]),
        .I5(fpga_dna_data[19]),
        .O(\s_axi_lite_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \s_axi_lite_rdata[1]_i_1 
       (.I0(\s_axi_lite_rdata[1]_i_2_n_0 ),
        .I1(fpga_dna_data[33]),
        .I2(rd_addr_r[2]),
        .I3(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I4(fpga_dna_data[65]),
        .I5(rd_addr_r[3]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[1]_i_2 
       (.I0(rd_addr_r[8]),
        .I1(dna_dyn_data_ports[0]),
        .I2(rd_addr_r[5]),
        .I3(dna_data_cnt_val_reg[1]),
        .I4(fpga_dna_data[1]),
        .I5(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .O(\s_axi_lite_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[20]_i_1 
       (.I0(\s_axi_lite_rdata[22]_i_2_n_0 ),
        .I1(fpga_dna_data[20]),
        .I2(\s_axi_lite_rdata[29]_i_4_n_0 ),
        .I3(fpga_dna_data[52]),
        .I4(fpga_dna_data[84]),
        .I5(\s_axi_lite_rdata[29]_i_5_n_0 ),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[21]_i_1 
       (.I0(fpga_dna_data[53]),
        .I1(rd_addr_r[2]),
        .I2(rd_addr_r[3]),
        .I3(fpga_dna_data[85]),
        .I4(\s_axi_lite_rdata[21]_i_2_n_0 ),
        .I5(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_lite_rdata[21]_i_2 
       (.I0(rd_addr_r[2]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[5]),
        .I4(rd_addr_r[3]),
        .I5(fpga_dna_data[21]),
        .O(\s_axi_lite_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[22]_i_1 
       (.I0(\s_axi_lite_rdata[22]_i_2_n_0 ),
        .I1(fpga_dna_data[22]),
        .I2(\s_axi_lite_rdata[29]_i_4_n_0 ),
        .I3(fpga_dna_data[54]),
        .I4(fpga_dna_data[86]),
        .I5(\s_axi_lite_rdata[29]_i_5_n_0 ),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \s_axi_lite_rdata[22]_i_2 
       (.I0(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .I1(rd_addr_r[11]),
        .I2(rd_addr_r[10]),
        .I3(rd_addr_r[0]),
        .I4(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .O(\s_axi_lite_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[23]_i_1 
       (.I0(fpga_dna_data[55]),
        .I1(rd_addr_r[2]),
        .I2(rd_addr_r[3]),
        .I3(fpga_dna_data[87]),
        .I4(\s_axi_lite_rdata[23]_i_2_n_0 ),
        .I5(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_lite_rdata[23]_i_2 
       (.I0(rd_addr_r[2]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[5]),
        .I4(rd_addr_r[3]),
        .I5(fpga_dna_data[23]),
        .O(\s_axi_lite_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \s_axi_lite_rdata[24]_i_1 
       (.I0(\s_axi_lite_rdata[24]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[24]_i_3_n_0 ),
        .I2(\s_axi_lite_rdata[29]_i_4_n_0 ),
        .I3(fpga_dna_data[56]),
        .I4(fpga_dna_data[88]),
        .I5(\s_axi_lite_rdata[29]_i_5_n_0 ),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \s_axi_lite_rdata[24]_i_2 
       (.I0(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .I1(rd_addr_r[0]),
        .I2(rd_addr_r[10]),
        .I3(rd_addr_r[11]),
        .I4(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .I5(fpga_dna_data[24]),
        .O(\s_axi_lite_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \s_axi_lite_rdata[24]_i_3 
       (.I0(\s_axi_lite_rdata[24]_i_4_n_0 ),
        .I1(rd_addr_r[3]),
        .I2(\s_axi_lite_rdata[29]_i_7_n_0 ),
        .I3(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .I4(rd_addr_r[2]),
        .O(\s_axi_lite_rdata[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_lite_rdata[24]_i_4 
       (.I0(static_read_cnt_reg[0]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[5]),
        .I3(rd_addr_r[4]),
        .O(\s_axi_lite_rdata[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \s_axi_lite_rdata[25]_i_1 
       (.I0(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I1(fpga_dna_data[57]),
        .I2(rd_addr_r[2]),
        .I3(\s_axi_lite_rdata[25]_i_2_n_0 ),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[25]_i_2 
       (.I0(rd_addr_r[8]),
        .I1(static_read_cnt_reg[1]),
        .I2(fpga_dna_data[89]),
        .I3(rd_addr_r[3]),
        .I4(fpga_dna_data[25]),
        .I5(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .O(\s_axi_lite_rdata[25]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \s_axi_lite_rdata[26]_i_1 
       (.I0(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I1(fpga_dna_data[58]),
        .I2(rd_addr_r[2]),
        .I3(\s_axi_lite_rdata[26]_i_2_n_0 ),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[26]_i_2 
       (.I0(rd_addr_r[8]),
        .I1(static_read_cnt_reg[2]),
        .I2(fpga_dna_data[90]),
        .I3(rd_addr_r[3]),
        .I4(fpga_dna_data[26]),
        .I5(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .O(\s_axi_lite_rdata[26]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \s_axi_lite_rdata[27]_i_1 
       (.I0(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I1(fpga_dna_data[59]),
        .I2(rd_addr_r[2]),
        .I3(\s_axi_lite_rdata[27]_i_2_n_0 ),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[27]_i_2 
       (.I0(rd_addr_r[8]),
        .I1(static_read_cnt_reg[3]),
        .I2(fpga_dna_data[91]),
        .I3(rd_addr_r[3]),
        .I4(fpga_dna_data[27]),
        .I5(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .O(\s_axi_lite_rdata[27]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \s_axi_lite_rdata[28]_i_1 
       (.I0(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I1(fpga_dna_data[60]),
        .I2(rd_addr_r[2]),
        .I3(\s_axi_lite_rdata[28]_i_2_n_0 ),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[28]_i_2 
       (.I0(rd_addr_r[8]),
        .I1(static_read_cnt_reg[4]),
        .I2(fpga_dna_data[92]),
        .I3(rd_addr_r[3]),
        .I4(fpga_dna_data[28]),
        .I5(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .O(\s_axi_lite_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \s_axi_lite_rdata[29]_i_1 
       (.I0(\s_axi_lite_rdata[29]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[29]_i_3_n_0 ),
        .I2(\s_axi_lite_rdata[29]_i_4_n_0 ),
        .I3(fpga_dna_data[61]),
        .I4(fpga_dna_data[93]),
        .I5(\s_axi_lite_rdata[29]_i_5_n_0 ),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \s_axi_lite_rdata[29]_i_2 
       (.I0(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .I1(rd_addr_r[0]),
        .I2(rd_addr_r[10]),
        .I3(rd_addr_r[11]),
        .I4(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .I5(fpga_dna_data[29]),
        .O(\s_axi_lite_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \s_axi_lite_rdata[29]_i_3 
       (.I0(\s_axi_lite_rdata[29]_i_6_n_0 ),
        .I1(rd_addr_r[3]),
        .I2(\s_axi_lite_rdata[29]_i_7_n_0 ),
        .I3(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .I4(rd_addr_r[2]),
        .O(\s_axi_lite_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_lite_rdata[29]_i_4 
       (.I0(\s_axi_lite_rdata[29]_i_8_n_0 ),
        .I1(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .I2(rd_addr_r[0]),
        .I3(rd_addr_r[10]),
        .I4(rd_addr_r[11]),
        .I5(rd_addr_r[2]),
        .O(\s_axi_lite_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \s_axi_lite_rdata[29]_i_5 
       (.I0(\s_axi_lite_rdata[29]_i_9_n_0 ),
        .I1(rd_addr_r[2]),
        .I2(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .I3(rd_addr_r[0]),
        .I4(rd_addr_r[10]),
        .I5(rd_addr_r[11]),
        .O(\s_axi_lite_rdata[29]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_lite_rdata[29]_i_6 
       (.I0(static_read_cnt_reg[5]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[5]),
        .I3(rd_addr_r[4]),
        .O(\s_axi_lite_rdata[29]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \s_axi_lite_rdata[29]_i_7 
       (.I0(rd_addr_r[11]),
        .I1(rd_addr_r[10]),
        .I2(rd_addr_r[0]),
        .O(\s_axi_lite_rdata[29]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_axi_lite_rdata[29]_i_8 
       (.I0(rd_addr_r[8]),
        .I1(rd_addr_r[4]),
        .I2(rd_addr_r[5]),
        .I3(rd_addr_r[3]),
        .O(\s_axi_lite_rdata[29]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \s_axi_lite_rdata[29]_i_9 
       (.I0(rd_addr_r[3]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[5]),
        .O(\s_axi_lite_rdata[29]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \s_axi_lite_rdata[2]_i_1 
       (.I0(\s_axi_lite_rdata[2]_i_2_n_0 ),
        .I1(fpga_dna_data[34]),
        .I2(rd_addr_r[2]),
        .I3(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I4(fpga_dna_data[66]),
        .I5(rd_addr_r[3]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[2]_i_2 
       (.I0(rd_addr_r[8]),
        .I1(dna_dyn_data_ports[1]),
        .I2(rd_addr_r[5]),
        .I3(dna_data_cnt_val_reg[2]),
        .I4(fpga_dna_data[2]),
        .I5(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .O(\s_axi_lite_rdata[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \s_axi_lite_rdata[30]_i_1 
       (.I0(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I1(fpga_dna_data[62]),
        .I2(rd_addr_r[2]),
        .I3(\s_axi_lite_rdata[30]_i_2_n_0 ),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[30]_i_2 
       (.I0(rd_addr_r[8]),
        .I1(static_read_cnt_reg[6]),
        .I2(fpga_dna_data[94]),
        .I3(rd_addr_r[3]),
        .I4(fpga_dna_data[30]),
        .I5(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .O(\s_axi_lite_rdata[30]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axi_lite_rdata[31]_i_1 
       (.I0(s_axi_lite_aresetn),
        .O(\s_axi_lite_rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_lite_rdata[31]_i_2 
       (.I0(rd_req_r),
        .I1(s_axi_lite_rvalid),
        .O(\s_axi_lite_rdata[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \s_axi_lite_rdata[31]_i_3 
       (.I0(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I1(fpga_dna_data[63]),
        .I2(rd_addr_r[2]),
        .I3(\s_axi_lite_rdata[31]_i_5_n_0 ),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_axi_lite_rdata[31]_i_4 
       (.I0(\s_axi_lite_rdata[31]_i_6_n_0 ),
        .I1(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .I2(rd_addr_r[0]),
        .I3(rd_addr_r[10]),
        .I4(rd_addr_r[11]),
        .I5(\s_axi_lite_rdata[31]_i_8_n_0 ),
        .O(\s_axi_lite_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[31]_i_5 
       (.I0(rd_addr_r[8]),
        .I1(static_read_cnt_reg[7]),
        .I2(fpga_dna_data[95]),
        .I3(rd_addr_r[3]),
        .I4(fpga_dna_data[31]),
        .I5(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .O(\s_axi_lite_rdata[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \s_axi_lite_rdata[31]_i_6 
       (.I0(rd_addr_r[8]),
        .I1(rd_addr_r[4]),
        .I2(rd_addr_r[5]),
        .O(\s_axi_lite_rdata[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_axi_lite_rdata[31]_i_7 
       (.I0(rd_addr_r[6]),
        .I1(rd_addr_r[1]),
        .I2(rd_addr_r[9]),
        .I3(rd_addr_r[7]),
        .O(\s_axi_lite_rdata[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEEEEEEE8)) 
    \s_axi_lite_rdata[31]_i_8 
       (.I0(rd_addr_r[2]),
        .I1(rd_addr_r[3]),
        .I2(rd_addr_r[5]),
        .I3(rd_addr_r[4]),
        .I4(rd_addr_r[8]),
        .O(\s_axi_lite_rdata[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \s_axi_lite_rdata[31]_i_9 
       (.I0(rd_addr_r[3]),
        .I1(rd_addr_r[5]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[8]),
        .I4(rd_addr_r[2]),
        .O(\s_axi_lite_rdata[31]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \s_axi_lite_rdata[3]_i_1 
       (.I0(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I1(fpga_dna_data[35]),
        .I2(rd_addr_r[2]),
        .I3(\s_axi_lite_rdata[3]_i_2_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[3]_i_2 
       (.I0(rd_addr_r[5]),
        .I1(dna_data_cnt_val_reg[3]),
        .I2(fpga_dna_data[67]),
        .I3(rd_addr_r[3]),
        .I4(fpga_dna_data[3]),
        .I5(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .O(\s_axi_lite_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFAFA)) 
    \s_axi_lite_rdata[4]_i_1 
       (.I0(\s_axi_lite_rdata[4]_i_2_n_0 ),
        .I1(\s_axi_lite_rdata[4]_i_3_n_0 ),
        .I2(\s_axi_lite_rdata[4]_i_4_n_0 ),
        .I3(\s_axi_lite_rdata[4]_i_5_n_0 ),
        .I4(\s_axi_lite_rdata[4]_i_6_n_0 ),
        .I5(\s_axi_lite_rdata[4]_i_7_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \s_axi_lite_rdata[4]_i_2 
       (.I0(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .I1(rd_addr_r[0]),
        .I2(rd_addr_r[10]),
        .I3(rd_addr_r[11]),
        .I4(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .I5(fpga_dna_data[4]),
        .O(\s_axi_lite_rdata[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \s_axi_lite_rdata[4]_i_3 
       (.I0(\state_reg_n_0_[0] ),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[5]),
        .I3(rd_addr_r[4]),
        .O(\s_axi_lite_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \s_axi_lite_rdata[4]_i_4 
       (.I0(\s_axi_lite_rdata[29]_i_7_n_0 ),
        .I1(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .I2(rd_addr_r[2]),
        .I3(rd_addr_r[3]),
        .I4(\s_axi_lite_rdata[4]_i_8_n_0 ),
        .I5(fpga_dna_data[68]),
        .O(\s_axi_lite_rdata[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \s_axi_lite_rdata[4]_i_5 
       (.I0(rd_addr_r[4]),
        .I1(rd_addr_r[5]),
        .I2(rd_addr_r[8]),
        .I3(dna_data_cnt_val_reg[4]),
        .O(\s_axi_lite_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_axi_lite_rdata[4]_i_6 
       (.I0(rd_addr_r[2]),
        .I1(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .I2(rd_addr_r[0]),
        .I3(rd_addr_r[10]),
        .I4(rd_addr_r[11]),
        .I5(rd_addr_r[3]),
        .O(\s_axi_lite_rdata[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \s_axi_lite_rdata[4]_i_7 
       (.I0(rd_addr_r[2]),
        .I1(\s_axi_lite_rdata[29]_i_7_n_0 ),
        .I2(\s_axi_lite_rdata[31]_i_7_n_0 ),
        .I3(\s_axi_lite_rdata[29]_i_8_n_0 ),
        .I4(fpga_dna_data[36]),
        .O(\s_axi_lite_rdata[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \s_axi_lite_rdata[4]_i_8 
       (.I0(rd_addr_r[5]),
        .I1(rd_addr_r[4]),
        .I2(rd_addr_r[8]),
        .O(\s_axi_lite_rdata[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFEAFFEA)) 
    \s_axi_lite_rdata[5]_i_1 
       (.I0(\s_axi_lite_rdata[5]_i_2_n_0 ),
        .I1(fpga_dna_data[37]),
        .I2(rd_addr_r[2]),
        .I3(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I4(fpga_dna_data[69]),
        .I5(rd_addr_r[3]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[5]_i_2 
       (.I0(rd_addr_r[8]),
        .I1(\state_reg_n_0_[1] ),
        .I2(rd_addr_r[5]),
        .I3(dna_data_cnt_val_reg[5]),
        .I4(fpga_dna_data[5]),
        .I5(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .O(\s_axi_lite_rdata[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \s_axi_lite_rdata[6]_i_1 
       (.I0(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I1(fpga_dna_data[38]),
        .I2(rd_addr_r[2]),
        .I3(\s_axi_lite_rdata[6]_i_2_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[6]_i_2 
       (.I0(rd_addr_r[5]),
        .I1(dna_data_cnt_val_reg[6]),
        .I2(fpga_dna_data[70]),
        .I3(rd_addr_r[3]),
        .I4(fpga_dna_data[6]),
        .I5(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .O(\s_axi_lite_rdata[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \s_axi_lite_rdata[7]_i_1 
       (.I0(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .I1(fpga_dna_data[39]),
        .I2(rd_addr_r[2]),
        .I3(\s_axi_lite_rdata[7]_i_2_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[7]_i_2 
       (.I0(rd_addr_r[5]),
        .I1(dna_data_cnt_val_reg[7]),
        .I2(fpga_dna_data[71]),
        .I3(rd_addr_r[3]),
        .I4(fpga_dna_data[7]),
        .I5(\s_axi_lite_rdata[31]_i_9_n_0 ),
        .O(\s_axi_lite_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \s_axi_lite_rdata[8]_i_1 
       (.I0(\s_axi_lite_rdata[22]_i_2_n_0 ),
        .I1(fpga_dna_data[8]),
        .I2(\s_axi_lite_rdata[29]_i_4_n_0 ),
        .I3(fpga_dna_data[40]),
        .I4(fpga_dna_data[72]),
        .I5(\s_axi_lite_rdata[29]_i_5_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \s_axi_lite_rdata[9]_i_1 
       (.I0(fpga_dna_data[41]),
        .I1(rd_addr_r[2]),
        .I2(rd_addr_r[3]),
        .I3(fpga_dna_data[73]),
        .I4(\s_axi_lite_rdata[9]_i_2_n_0 ),
        .I5(\s_axi_lite_rdata[31]_i_4_n_0 ),
        .O(p_1_in[9]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_axi_lite_rdata[9]_i_2 
       (.I0(rd_addr_r[2]),
        .I1(rd_addr_r[8]),
        .I2(rd_addr_r[4]),
        .I3(rd_addr_r[5]),
        .I4(rd_addr_r[3]),
        .I5(fpga_dna_data[9]),
        .O(\s_axi_lite_rdata[9]_i_2_n_0 ));
  FDRE \s_axi_lite_rdata_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(s_axi_lite_rdata[0]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[10]),
        .Q(s_axi_lite_rdata[10]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[11]),
        .Q(s_axi_lite_rdata[11]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[12] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[12]),
        .Q(s_axi_lite_rdata[12]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[13] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[13]),
        .Q(s_axi_lite_rdata[13]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[14] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[14]),
        .Q(s_axi_lite_rdata[14]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[15] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[15]),
        .Q(s_axi_lite_rdata[15]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[16] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[16]),
        .Q(s_axi_lite_rdata[16]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[17] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[17]),
        .Q(s_axi_lite_rdata[17]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[18] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[18]),
        .Q(s_axi_lite_rdata[18]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[19] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[19]),
        .Q(s_axi_lite_rdata[19]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(s_axi_lite_rdata[1]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[20] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[20]),
        .Q(s_axi_lite_rdata[20]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[21] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[21]),
        .Q(s_axi_lite_rdata[21]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[22] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[22]),
        .Q(s_axi_lite_rdata[22]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[23] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[23]),
        .Q(s_axi_lite_rdata[23]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[24] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[24]),
        .Q(s_axi_lite_rdata[24]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[25] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[25]),
        .Q(s_axi_lite_rdata[25]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[26] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[26]),
        .Q(s_axi_lite_rdata[26]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[27] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[27]),
        .Q(s_axi_lite_rdata[27]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[28] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[28]),
        .Q(s_axi_lite_rdata[28]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[29] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[29]),
        .Q(s_axi_lite_rdata[29]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(s_axi_lite_rdata[2]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[30] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[30]),
        .Q(s_axi_lite_rdata[30]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[31] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[31]),
        .Q(s_axi_lite_rdata[31]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(s_axi_lite_rdata[3]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[4]),
        .Q(s_axi_lite_rdata[4]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[5]),
        .Q(s_axi_lite_rdata[5]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[6]),
        .Q(s_axi_lite_rdata[6]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[7]),
        .Q(s_axi_lite_rdata[7]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[8]),
        .Q(s_axi_lite_rdata[8]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \s_axi_lite_rdata_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\s_axi_lite_rdata[31]_i_2_n_0 ),
        .D(p_1_in[9]),
        .Q(s_axi_lite_rdata[9]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    s_axi_lite_rvalid_i_i_1
       (.I0(s_axi_lite_rready),
        .I1(s_axi_lite_rvalid),
        .I2(rd_req_r),
        .I3(s_axi_lite_aresetn),
        .O(rvalid_delayed_1));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_lite_rvalid_i_reg
       (.C(s_axi_lite_aclk),
        .CE(rd_req_r),
        .D(rvalid_delayed),
        .Q(s_axi_lite_rvalid),
        .R(rvalid_delayed_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_lite_wready_INST_0
       (.I0(wr_req_r),
        .I1(s_axi_lite_bvalid_i_reg_0),
        .O(s_axi_lite_wready));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h01010F00)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(dyn_trig_reg_reg_n_0),
        .I4(\state_reg_n_0_[1] ),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \state[0]_i_2 
       (.I0(dna_data_cnt_val_reg[1]),
        .I1(dna_data_reg_cnt[1]),
        .I2(dna_data_cnt_val_reg[0]),
        .I3(dna_data_reg_cnt[0]),
        .I4(\FSM_onehot_state[3]_i_5_n_0 ),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \state[0]_i_3 
       (.I0(dna_data_cnt_val_reg[5]),
        .I1(dna_data_reg_cnt[5]),
        .I2(dna_data_cnt_val_reg[4]),
        .I3(dna_data_reg_cnt[4]),
        .I4(\FSM_onehot_state[3]_i_3_n_0 ),
        .O(\state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(state[1]));
  FDRE \state_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \state_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \static_read_cnt[0]_i_1 
       (.I0(static_read_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \static_read_cnt[1]_i_1 
       (.I0(static_read_cnt_reg[0]),
        .I1(static_read_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \static_read_cnt[2]_i_1 
       (.I0(static_read_cnt_reg[1]),
        .I1(static_read_cnt_reg[0]),
        .I2(static_read_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \static_read_cnt[3]_i_1 
       (.I0(static_read_cnt_reg[2]),
        .I1(static_read_cnt_reg[0]),
        .I2(static_read_cnt_reg[1]),
        .I3(static_read_cnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \static_read_cnt[4]_i_1 
       (.I0(static_read_cnt_reg[3]),
        .I1(static_read_cnt_reg[1]),
        .I2(static_read_cnt_reg[0]),
        .I3(static_read_cnt_reg[2]),
        .I4(static_read_cnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \static_read_cnt[5]_i_1 
       (.I0(static_read_cnt_reg[4]),
        .I1(static_read_cnt_reg[2]),
        .I2(static_read_cnt_reg[0]),
        .I3(static_read_cnt_reg[1]),
        .I4(static_read_cnt_reg[3]),
        .I5(static_read_cnt_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \static_read_cnt[6]_i_1 
       (.I0(\static_read_cnt[7]_i_2_n_0 ),
        .I1(static_read_cnt_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \static_read_cnt[7]_i_1 
       (.I0(static_read_cnt_reg[6]),
        .I1(\static_read_cnt[7]_i_2_n_0 ),
        .I2(static_read_cnt_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \static_read_cnt[7]_i_2 
       (.I0(static_read_cnt_reg[4]),
        .I1(static_read_cnt_reg[2]),
        .I2(static_read_cnt_reg[0]),
        .I3(static_read_cnt_reg[1]),
        .I4(static_read_cnt_reg[3]),
        .I5(static_read_cnt_reg[5]),
        .O(\static_read_cnt[7]_i_2_n_0 ));
  FDRE \static_read_cnt_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(static_read_cnt),
        .D(p_0_in[0]),
        .Q(static_read_cnt_reg[0]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \static_read_cnt_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(static_read_cnt),
        .D(p_0_in[1]),
        .Q(static_read_cnt_reg[1]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \static_read_cnt_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(static_read_cnt),
        .D(p_0_in[2]),
        .Q(static_read_cnt_reg[2]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \static_read_cnt_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(static_read_cnt),
        .D(p_0_in[3]),
        .Q(static_read_cnt_reg[3]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \static_read_cnt_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(static_read_cnt),
        .D(p_0_in[4]),
        .Q(static_read_cnt_reg[4]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \static_read_cnt_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(static_read_cnt),
        .D(p_0_in[5]),
        .Q(static_read_cnt_reg[5]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \static_read_cnt_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(static_read_cnt),
        .D(p_0_in[6]),
        .Q(static_read_cnt_reg[6]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \static_read_cnt_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(static_read_cnt),
        .D(p_0_in[7]),
        .Q(static_read_cnt_reg[7]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \wr_addr_r[0]_i_1 
       (.I0(s_axi_lite_awvalid),
        .I1(wr_req_r),
        .I2(reset_released_r),
        .I3(rd_req_r),
        .I4(s_axi_lite_arvalid),
        .I5(s_axi_lite_awaddr[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \wr_addr_r[10]_i_1 
       (.I0(s_axi_lite_awvalid),
        .I1(wr_req_r),
        .I2(reset_released_r),
        .I3(rd_req_r),
        .I4(s_axi_lite_arvalid),
        .I5(s_axi_lite_awaddr[10]),
        .O(p_2_in[10]));
  LUT3 #(
    .INIT(8'hF8)) 
    \wr_addr_r[11]_i_1 
       (.I0(s_axi_lite_bvalid_i_reg_0),
        .I1(s_axi_lite_bready),
        .I2(wr_req_r08_out),
        .O(\wr_addr_r[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \wr_addr_r[11]_i_2 
       (.I0(s_axi_lite_awvalid),
        .I1(wr_req_r),
        .I2(reset_released_r),
        .I3(rd_req_r),
        .I4(s_axi_lite_arvalid),
        .I5(s_axi_lite_awaddr[11]),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \wr_addr_r[1]_i_1 
       (.I0(s_axi_lite_awvalid),
        .I1(wr_req_r),
        .I2(reset_released_r),
        .I3(rd_req_r),
        .I4(s_axi_lite_arvalid),
        .I5(s_axi_lite_awaddr[1]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \wr_addr_r[2]_i_1 
       (.I0(s_axi_lite_awvalid),
        .I1(wr_req_r),
        .I2(reset_released_r),
        .I3(rd_req_r),
        .I4(s_axi_lite_arvalid),
        .I5(s_axi_lite_awaddr[2]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \wr_addr_r[3]_i_1 
       (.I0(s_axi_lite_awvalid),
        .I1(wr_req_r),
        .I2(reset_released_r),
        .I3(rd_req_r),
        .I4(s_axi_lite_arvalid),
        .I5(s_axi_lite_awaddr[3]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \wr_addr_r[4]_i_1 
       (.I0(s_axi_lite_awvalid),
        .I1(wr_req_r),
        .I2(reset_released_r),
        .I3(rd_req_r),
        .I4(s_axi_lite_arvalid),
        .I5(s_axi_lite_awaddr[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \wr_addr_r[5]_i_1 
       (.I0(s_axi_lite_awvalid),
        .I1(wr_req_r),
        .I2(reset_released_r),
        .I3(rd_req_r),
        .I4(s_axi_lite_arvalid),
        .I5(s_axi_lite_awaddr[5]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \wr_addr_r[6]_i_1 
       (.I0(s_axi_lite_awvalid),
        .I1(wr_req_r),
        .I2(reset_released_r),
        .I3(rd_req_r),
        .I4(s_axi_lite_arvalid),
        .I5(s_axi_lite_awaddr[6]),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \wr_addr_r[7]_i_1 
       (.I0(s_axi_lite_awvalid),
        .I1(wr_req_r),
        .I2(reset_released_r),
        .I3(rd_req_r),
        .I4(s_axi_lite_arvalid),
        .I5(s_axi_lite_awaddr[7]),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \wr_addr_r[8]_i_1 
       (.I0(s_axi_lite_awvalid),
        .I1(wr_req_r),
        .I2(reset_released_r),
        .I3(rd_req_r),
        .I4(s_axi_lite_arvalid),
        .I5(s_axi_lite_awaddr[8]),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \wr_addr_r[9]_i_1 
       (.I0(s_axi_lite_awvalid),
        .I1(wr_req_r),
        .I2(reset_released_r),
        .I3(rd_req_r),
        .I4(s_axi_lite_arvalid),
        .I5(s_axi_lite_awaddr[9]),
        .O(p_2_in[9]));
  FDRE \wr_addr_r_reg[0] 
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(wr_addr_r[0]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \wr_addr_r_reg[10] 
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(\wr_addr_r_reg_n_0_[10] ),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \wr_addr_r_reg[11] 
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(\wr_addr_r_reg_n_0_[11] ),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \wr_addr_r_reg[1] 
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(wr_addr_r[1]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \wr_addr_r_reg[2] 
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(wr_addr_r[2]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \wr_addr_r_reg[3] 
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(wr_addr_r[3]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \wr_addr_r_reg[4] 
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(wr_addr_r[4]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \wr_addr_r_reg[5] 
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(wr_addr_r[5]),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \wr_addr_r_reg[6] 
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(p_0_in0),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \wr_addr_r_reg[7] 
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(\wr_addr_r_reg_n_0_[7] ),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \wr_addr_r_reg[8] 
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(\wr_addr_r_reg_n_0_[8] ),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  FDRE \wr_addr_r_reg[9] 
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(\wr_addr_r_reg_n_0_[9] ),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    wr_req_r_i_1
       (.I0(s_axi_lite_arvalid),
        .I1(rd_req_r),
        .I2(reset_released_r),
        .I3(wr_req_r),
        .I4(s_axi_lite_awvalid),
        .O(wr_req_r08_out));
  FDRE #(
    .INIT(1'b0)) 
    wr_req_r_reg
       (.C(s_axi_lite_aclk),
        .CE(\wr_addr_r[11]_i_1_n_0 ),
        .D(wr_req_r08_out),
        .Q(wr_req_r),
        .R(\s_axi_lite_rdata[31]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "ulp_fpga_dna_module_0_0,fpga_dna_module,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "fpga_dna_module,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_BUSIF s_axi_lite, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input s_axi_lite_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_lite_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR" *) input [11:0]s_axi_lite_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY" *) output s_axi_lite_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite AWVALID" *) input s_axi_lite_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARADDR" *) input [11:0]s_axi_lite_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARREADY" *) output s_axi_lite_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite ARVALID" *) input s_axi_lite_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WDATA" *) input [31:0]s_axi_lite_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WSTRB" *) input [3:0]s_axi_lite_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WREADY" *) output s_axi_lite_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite WVALID" *) input s_axi_lite_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA" *) output [31:0]s_axi_lite_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RRESP" *) output [1:0]s_axi_lite_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RREADY" *) input s_axi_lite_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID" *) output s_axi_lite_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BRESP" *) output [1:0]s_axi_lite_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BREADY" *) input s_axi_lite_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output s_axi_lite_bvalid;
  input dna_dyn_data_dout;
  output [2:0]dna_dyn_data_ports;
  output [95:0]fpga_dna_data;

  wire \<const0> ;
  wire dna_dyn_data_dout;
  wire [2:1]\^dna_dyn_data_ports ;
  wire [95:0]fpga_dna_data;
  wire s_axi_lite_aclk;
  wire [11:0]s_axi_lite_araddr;
  wire s_axi_lite_aresetn;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [11:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire s_axi_lite_wvalid;

  assign dna_dyn_data_ports[2:1] = \^dna_dyn_data_ports [2:1];
  assign dna_dyn_data_ports[0] = dna_dyn_data_dout;
  assign s_axi_lite_bresp[1] = \<const0> ;
  assign s_axi_lite_bresp[0] = \<const0> ;
  assign s_axi_lite_rresp[1] = \<const0> ;
  assign s_axi_lite_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fpga_dna_module inst
       (.dna_dyn_data_dout(dna_dyn_data_dout),
        .dna_dyn_data_ports(\^dna_dyn_data_ports ),
        .fpga_dna_data(fpga_dna_data),
        .s_axi_lite_aclk(s_axi_lite_aclk),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_aresetn(s_axi_lite_aresetn),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bvalid_i_reg_0(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata[7:0]),
        .s_axi_lite_wready(s_axi_lite_wready),
        .s_axi_lite_wvalid(s_axi_lite_wvalid));
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
