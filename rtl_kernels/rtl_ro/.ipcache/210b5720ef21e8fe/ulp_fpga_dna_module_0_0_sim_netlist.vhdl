-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Dec 31 12:05:58 2021
-- Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_fpga_dna_module_0_0_sim_netlist.vhdl
-- Design      : ulp_fpga_dna_module_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku15p-ffva1156-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fpga_dna_module is
  port (
    s_axi_lite_rvalid : out STD_LOGIC;
    fpga_dna_data : out STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bvalid_i_reg_0 : out STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    dna_dyn_data_ports : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dna_dyn_data_dout : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fpga_dna_module;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fpga_dna_module is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal dna_data_cnt_val_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dna_data_cnt_val_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \dna_data_cnt_val_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal dna_data_cnt_val_reg_0 : STD_LOGIC;
  signal \dna_data_out[95]_i_1_n_0\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[10]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[11]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[12]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[13]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[14]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[15]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[16]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[17]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[18]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[19]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[20]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[21]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[22]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[23]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[24]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[25]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[26]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[27]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[28]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[29]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[30]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[31]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[32]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[33]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[34]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[35]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[36]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[37]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[38]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[39]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[40]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[41]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[42]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[43]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[44]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[45]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[46]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[47]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[48]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[49]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[50]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[51]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[52]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[53]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[54]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[55]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[56]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[57]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[58]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[59]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[60]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[61]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[62]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[63]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[64]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[65]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[66]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[67]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[68]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[69]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[70]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[71]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[72]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[73]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[74]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[75]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[76]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[77]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[78]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[79]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[7]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[80]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[81]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[82]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[83]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[84]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[85]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[86]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[87]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[88]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[89]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[8]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[90]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[91]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[92]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[93]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[94]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[95]\ : STD_LOGIC;
  signal \dna_data_out_reg_n_0_[9]\ : STD_LOGIC;
  signal dna_data_reg_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dna_data_reg_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \dna_data_reg_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \dna_data_reg_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal dna_data_reg_cnt_2 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^dna_dyn_data_ports\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \dna_ip_r3_data[31]_i_1_n_0\ : STD_LOGIC;
  signal dna_port_read : STD_LOGIC;
  signal dna_port_read_i_1_n_0 : STD_LOGIC;
  signal dna_port_shift_i_1_n_0 : STD_LOGIC;
  signal dyn_trig_reg : STD_LOGIC;
  signal dyn_trig_reg2_out : STD_LOGIC;
  signal dyn_trig_reg_i_1_n_0 : STD_LOGIC;
  signal dyn_trig_reg_i_3_n_0 : STD_LOGIC;
  signal dyn_trig_reg_i_4_n_0 : STD_LOGIC;
  signal dyn_trig_reg_reg_n_0 : STD_LOGIC;
  signal \^fpga_dna_data\ : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rd_addr_r : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal rd_req_r : STD_LOGIC;
  signal rd_req_r06_out : STD_LOGIC;
  signal rd_req_r_i_1_n_0 : STD_LOGIC;
  signal reset_released_r : STD_LOGIC;
  signal rvalid_delayed : STD_LOGIC;
  signal rvalid_delayed_1 : STD_LOGIC;
  signal s_axi_lite_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_lite_bvalid_i_reg_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[29]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[29]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[29]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[29]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[29]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[29]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[31]_i_9_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[4]_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_lite_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_lite_rvalid\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[0]_i_3_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal static_read_cnt : STD_LOGIC;
  signal \static_read_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal static_read_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_addr_r : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \wr_addr_r[11]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \wr_addr_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \wr_addr_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \wr_addr_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \wr_addr_r_reg_n_0_[9]\ : STD_LOGIC;
  signal wr_req_r : STD_LOGIC;
  signal wr_req_r08_out : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "IDLE:0001,READ:0010,LOAD:0100,STOP:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "IDLE:0001,READ:0010,LOAD:0100,STOP:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "IDLE:0001,READ:0010,LOAD:0100,STOP:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "IDLE:0001,READ:0010,LOAD:0100,STOP:1000";
  attribute SOFT_HLUTNM of \dna_data_reg_cnt[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dna_data_reg_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dna_data_reg_cnt[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dna_data_reg_cnt[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dna_data_reg_cnt[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \dna_data_reg_cnt[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of dyn_trig_reg_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axi_lite_awready_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[22]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[24]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[29]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[29]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[29]_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[29]_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[31]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[31]_i_8\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[31]_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[4]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[4]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_axi_lite_rdata[4]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of s_axi_lite_wready_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state[0]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \static_read_cnt[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \static_read_cnt[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \static_read_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \static_read_cnt[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \static_read_cnt[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \static_read_cnt[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of wr_req_r_i_1 : label is "soft_lutpair0";
begin
  dna_dyn_data_ports(1 downto 0) <= \^dna_dyn_data_ports\(1 downto 0);
  fpga_dna_data(95 downto 0) <= \^fpga_dna_data\(95 downto 0);
  s_axi_lite_bvalid_i_reg_0 <= \^s_axi_lite_bvalid_i_reg_0\;
  s_axi_lite_rvalid <= \^s_axi_lite_rvalid\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => dyn_trig_reg_reg_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => dyn_trig_reg,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => dyn_trig_reg_reg_n_0,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => static_read_cnt,
      I1 => \FSM_onehot_state[3]_i_5_n_0\,
      I2 => \FSM_onehot_state[3]_i_4_n_0\,
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => \FSM_onehot_state[3]_i_2_n_0\,
      I5 => dna_port_read,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => static_read_cnt,
      I1 => \FSM_onehot_state[3]_i_2_n_0\,
      I2 => \FSM_onehot_state[3]_i_3_n_0\,
      I3 => \FSM_onehot_state[3]_i_4_n_0\,
      I4 => \FSM_onehot_state[3]_i_5_n_0\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => dna_data_reg_cnt(4),
      I1 => dna_data_cnt_val_reg(4),
      I2 => dna_data_reg_cnt(5),
      I3 => dna_data_cnt_val_reg(5),
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => dna_data_reg_cnt(6),
      I1 => dna_data_cnt_val_reg(6),
      I2 => dna_data_reg_cnt(7),
      I3 => dna_data_cnt_val_reg(7),
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => dna_data_reg_cnt(0),
      I1 => dna_data_cnt_val_reg(0),
      I2 => dna_data_reg_cnt(1),
      I3 => dna_data_cnt_val_reg(1),
      O => \FSM_onehot_state[3]_i_4_n_0\
    );
\FSM_onehot_state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => dna_data_reg_cnt(2),
      I1 => dna_data_cnt_val_reg(2),
      I2 => dna_data_reg_cnt(3),
      I3 => dna_data_cnt_val_reg(3),
      O => \FSM_onehot_state[3]_i_5_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => dna_port_read,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => static_read_cnt,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => dyn_trig_reg,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\dna_data_cnt_val_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \dna_data_cnt_val_reg[7]_i_2_n_0\,
      I1 => s_axi_lite_wvalid,
      I2 => wr_req_r,
      I3 => \^s_axi_lite_bvalid_i_reg_0\,
      I4 => wr_addr_r(0),
      I5 => \dna_data_cnt_val_reg[7]_i_3_n_0\,
      O => dna_data_cnt_val_reg_0
    );
\dna_data_cnt_val_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \wr_addr_r_reg_n_0_[9]\,
      I1 => \wr_addr_r_reg_n_0_[10]\,
      I2 => \wr_addr_r_reg_n_0_[7]\,
      I3 => \wr_addr_r_reg_n_0_[8]\,
      I4 => dyn_trig_reg,
      I5 => \wr_addr_r_reg_n_0_[11]\,
      O => \dna_data_cnt_val_reg[7]_i_2_n_0\
    );
\dna_data_cnt_val_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => wr_addr_r(3),
      I1 => wr_addr_r(4),
      I2 => wr_addr_r(1),
      I3 => wr_addr_r(2),
      I4 => p_0_in0,
      I5 => wr_addr_r(5),
      O => \dna_data_cnt_val_reg[7]_i_3_n_0\
    );
\dna_data_cnt_val_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_data_cnt_val_reg_0,
      D => s_axi_lite_wdata(0),
      Q => dna_data_cnt_val_reg(0),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\dna_data_cnt_val_reg_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_data_cnt_val_reg_0,
      D => s_axi_lite_wdata(1),
      Q => dna_data_cnt_val_reg(1),
      S => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\dna_data_cnt_val_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_data_cnt_val_reg_0,
      D => s_axi_lite_wdata(2),
      Q => dna_data_cnt_val_reg(2),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\dna_data_cnt_val_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_data_cnt_val_reg_0,
      D => s_axi_lite_wdata(3),
      Q => dna_data_cnt_val_reg(3),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\dna_data_cnt_val_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_data_cnt_val_reg_0,
      D => s_axi_lite_wdata(4),
      Q => dna_data_cnt_val_reg(4),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\dna_data_cnt_val_reg_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_data_cnt_val_reg_0,
      D => s_axi_lite_wdata(5),
      Q => dna_data_cnt_val_reg(5),
      S => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\dna_data_cnt_val_reg_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_data_cnt_val_reg_0,
      D => s_axi_lite_wdata(6),
      Q => dna_data_cnt_val_reg(6),
      S => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\dna_data_cnt_val_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_data_cnt_val_reg_0,
      D => s_axi_lite_wdata(7),
      Q => dna_data_cnt_val_reg(7),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\dna_data_out[95]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_lite_aresetn,
      I1 => static_read_cnt,
      O => \dna_data_out[95]_i_1_n_0\
    );
\dna_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[1]\,
      Q => \dna_data_out_reg_n_0_[0]\,
      R => '0'
    );
\dna_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[11]\,
      Q => \dna_data_out_reg_n_0_[10]\,
      R => '0'
    );
\dna_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[12]\,
      Q => \dna_data_out_reg_n_0_[11]\,
      R => '0'
    );
\dna_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[13]\,
      Q => \dna_data_out_reg_n_0_[12]\,
      R => '0'
    );
\dna_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[14]\,
      Q => \dna_data_out_reg_n_0_[13]\,
      R => '0'
    );
\dna_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[15]\,
      Q => \dna_data_out_reg_n_0_[14]\,
      R => '0'
    );
\dna_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[16]\,
      Q => \dna_data_out_reg_n_0_[15]\,
      R => '0'
    );
\dna_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[17]\,
      Q => \dna_data_out_reg_n_0_[16]\,
      R => '0'
    );
\dna_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[18]\,
      Q => \dna_data_out_reg_n_0_[17]\,
      R => '0'
    );
\dna_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[19]\,
      Q => \dna_data_out_reg_n_0_[18]\,
      R => '0'
    );
\dna_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[20]\,
      Q => \dna_data_out_reg_n_0_[19]\,
      R => '0'
    );
\dna_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[2]\,
      Q => \dna_data_out_reg_n_0_[1]\,
      R => '0'
    );
\dna_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[21]\,
      Q => \dna_data_out_reg_n_0_[20]\,
      R => '0'
    );
\dna_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[22]\,
      Q => \dna_data_out_reg_n_0_[21]\,
      R => '0'
    );
\dna_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[23]\,
      Q => \dna_data_out_reg_n_0_[22]\,
      R => '0'
    );
\dna_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[24]\,
      Q => \dna_data_out_reg_n_0_[23]\,
      R => '0'
    );
\dna_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[25]\,
      Q => \dna_data_out_reg_n_0_[24]\,
      R => '0'
    );
\dna_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[26]\,
      Q => \dna_data_out_reg_n_0_[25]\,
      R => '0'
    );
\dna_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[27]\,
      Q => \dna_data_out_reg_n_0_[26]\,
      R => '0'
    );
\dna_data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[28]\,
      Q => \dna_data_out_reg_n_0_[27]\,
      R => '0'
    );
\dna_data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[29]\,
      Q => \dna_data_out_reg_n_0_[28]\,
      R => '0'
    );
\dna_data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[30]\,
      Q => \dna_data_out_reg_n_0_[29]\,
      R => '0'
    );
\dna_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[3]\,
      Q => \dna_data_out_reg_n_0_[2]\,
      R => '0'
    );
\dna_data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[31]\,
      Q => \dna_data_out_reg_n_0_[30]\,
      R => '0'
    );
\dna_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[32]\,
      Q => \dna_data_out_reg_n_0_[31]\,
      R => '0'
    );
\dna_data_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[33]\,
      Q => \dna_data_out_reg_n_0_[32]\,
      R => '0'
    );
\dna_data_out_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[34]\,
      Q => \dna_data_out_reg_n_0_[33]\,
      R => '0'
    );
\dna_data_out_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[35]\,
      Q => \dna_data_out_reg_n_0_[34]\,
      R => '0'
    );
\dna_data_out_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[36]\,
      Q => \dna_data_out_reg_n_0_[35]\,
      R => '0'
    );
\dna_data_out_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[37]\,
      Q => \dna_data_out_reg_n_0_[36]\,
      R => '0'
    );
\dna_data_out_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[38]\,
      Q => \dna_data_out_reg_n_0_[37]\,
      R => '0'
    );
\dna_data_out_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[39]\,
      Q => \dna_data_out_reg_n_0_[38]\,
      R => '0'
    );
\dna_data_out_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[40]\,
      Q => \dna_data_out_reg_n_0_[39]\,
      R => '0'
    );
\dna_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[4]\,
      Q => \dna_data_out_reg_n_0_[3]\,
      R => '0'
    );
\dna_data_out_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[41]\,
      Q => \dna_data_out_reg_n_0_[40]\,
      R => '0'
    );
\dna_data_out_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[42]\,
      Q => \dna_data_out_reg_n_0_[41]\,
      R => '0'
    );
\dna_data_out_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[43]\,
      Q => \dna_data_out_reg_n_0_[42]\,
      R => '0'
    );
\dna_data_out_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[44]\,
      Q => \dna_data_out_reg_n_0_[43]\,
      R => '0'
    );
\dna_data_out_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[45]\,
      Q => \dna_data_out_reg_n_0_[44]\,
      R => '0'
    );
\dna_data_out_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[46]\,
      Q => \dna_data_out_reg_n_0_[45]\,
      R => '0'
    );
\dna_data_out_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[47]\,
      Q => \dna_data_out_reg_n_0_[46]\,
      R => '0'
    );
\dna_data_out_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[48]\,
      Q => \dna_data_out_reg_n_0_[47]\,
      R => '0'
    );
\dna_data_out_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[49]\,
      Q => \dna_data_out_reg_n_0_[48]\,
      R => '0'
    );
\dna_data_out_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[50]\,
      Q => \dna_data_out_reg_n_0_[49]\,
      R => '0'
    );
\dna_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[5]\,
      Q => \dna_data_out_reg_n_0_[4]\,
      R => '0'
    );
\dna_data_out_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[51]\,
      Q => \dna_data_out_reg_n_0_[50]\,
      R => '0'
    );
\dna_data_out_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[52]\,
      Q => \dna_data_out_reg_n_0_[51]\,
      R => '0'
    );
\dna_data_out_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[53]\,
      Q => \dna_data_out_reg_n_0_[52]\,
      R => '0'
    );
\dna_data_out_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[54]\,
      Q => \dna_data_out_reg_n_0_[53]\,
      R => '0'
    );
\dna_data_out_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[55]\,
      Q => \dna_data_out_reg_n_0_[54]\,
      R => '0'
    );
\dna_data_out_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[56]\,
      Q => \dna_data_out_reg_n_0_[55]\,
      R => '0'
    );
\dna_data_out_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[57]\,
      Q => \dna_data_out_reg_n_0_[56]\,
      R => '0'
    );
\dna_data_out_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[58]\,
      Q => \dna_data_out_reg_n_0_[57]\,
      R => '0'
    );
\dna_data_out_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[59]\,
      Q => \dna_data_out_reg_n_0_[58]\,
      R => '0'
    );
\dna_data_out_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[60]\,
      Q => \dna_data_out_reg_n_0_[59]\,
      R => '0'
    );
\dna_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[6]\,
      Q => \dna_data_out_reg_n_0_[5]\,
      R => '0'
    );
\dna_data_out_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[61]\,
      Q => \dna_data_out_reg_n_0_[60]\,
      R => '0'
    );
\dna_data_out_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[62]\,
      Q => \dna_data_out_reg_n_0_[61]\,
      R => '0'
    );
\dna_data_out_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[63]\,
      Q => \dna_data_out_reg_n_0_[62]\,
      R => '0'
    );
\dna_data_out_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[64]\,
      Q => \dna_data_out_reg_n_0_[63]\,
      R => '0'
    );
\dna_data_out_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[65]\,
      Q => \dna_data_out_reg_n_0_[64]\,
      R => '0'
    );
\dna_data_out_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[66]\,
      Q => \dna_data_out_reg_n_0_[65]\,
      R => '0'
    );
\dna_data_out_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[67]\,
      Q => \dna_data_out_reg_n_0_[66]\,
      R => '0'
    );
\dna_data_out_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[68]\,
      Q => \dna_data_out_reg_n_0_[67]\,
      R => '0'
    );
\dna_data_out_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[69]\,
      Q => \dna_data_out_reg_n_0_[68]\,
      R => '0'
    );
\dna_data_out_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[70]\,
      Q => \dna_data_out_reg_n_0_[69]\,
      R => '0'
    );
\dna_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[7]\,
      Q => \dna_data_out_reg_n_0_[6]\,
      R => '0'
    );
\dna_data_out_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[71]\,
      Q => \dna_data_out_reg_n_0_[70]\,
      R => '0'
    );
\dna_data_out_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[72]\,
      Q => \dna_data_out_reg_n_0_[71]\,
      R => '0'
    );
\dna_data_out_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[73]\,
      Q => \dna_data_out_reg_n_0_[72]\,
      R => '0'
    );
\dna_data_out_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[74]\,
      Q => \dna_data_out_reg_n_0_[73]\,
      R => '0'
    );
\dna_data_out_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[75]\,
      Q => \dna_data_out_reg_n_0_[74]\,
      R => '0'
    );
\dna_data_out_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[76]\,
      Q => \dna_data_out_reg_n_0_[75]\,
      R => '0'
    );
\dna_data_out_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[77]\,
      Q => \dna_data_out_reg_n_0_[76]\,
      R => '0'
    );
\dna_data_out_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[78]\,
      Q => \dna_data_out_reg_n_0_[77]\,
      R => '0'
    );
\dna_data_out_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[79]\,
      Q => \dna_data_out_reg_n_0_[78]\,
      R => '0'
    );
\dna_data_out_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[80]\,
      Q => \dna_data_out_reg_n_0_[79]\,
      R => '0'
    );
\dna_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[8]\,
      Q => \dna_data_out_reg_n_0_[7]\,
      R => '0'
    );
\dna_data_out_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[81]\,
      Q => \dna_data_out_reg_n_0_[80]\,
      R => '0'
    );
\dna_data_out_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[82]\,
      Q => \dna_data_out_reg_n_0_[81]\,
      R => '0'
    );
\dna_data_out_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[83]\,
      Q => \dna_data_out_reg_n_0_[82]\,
      R => '0'
    );
\dna_data_out_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[84]\,
      Q => \dna_data_out_reg_n_0_[83]\,
      R => '0'
    );
\dna_data_out_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[85]\,
      Q => \dna_data_out_reg_n_0_[84]\,
      R => '0'
    );
\dna_data_out_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[86]\,
      Q => \dna_data_out_reg_n_0_[85]\,
      R => '0'
    );
\dna_data_out_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[87]\,
      Q => \dna_data_out_reg_n_0_[86]\,
      R => '0'
    );
\dna_data_out_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[88]\,
      Q => \dna_data_out_reg_n_0_[87]\,
      R => '0'
    );
\dna_data_out_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[89]\,
      Q => \dna_data_out_reg_n_0_[88]\,
      R => '0'
    );
\dna_data_out_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[90]\,
      Q => \dna_data_out_reg_n_0_[89]\,
      R => '0'
    );
\dna_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[9]\,
      Q => \dna_data_out_reg_n_0_[8]\,
      R => '0'
    );
\dna_data_out_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[91]\,
      Q => \dna_data_out_reg_n_0_[90]\,
      R => '0'
    );
\dna_data_out_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[92]\,
      Q => \dna_data_out_reg_n_0_[91]\,
      R => '0'
    );
\dna_data_out_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[93]\,
      Q => \dna_data_out_reg_n_0_[92]\,
      R => '0'
    );
\dna_data_out_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[94]\,
      Q => \dna_data_out_reg_n_0_[93]\,
      R => '0'
    );
\dna_data_out_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[95]\,
      Q => \dna_data_out_reg_n_0_[94]\,
      R => '0'
    );
\dna_data_out_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => dna_dyn_data_dout,
      Q => \dna_data_out_reg_n_0_[95]\,
      R => '0'
    );
\dna_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_data_out[95]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[10]\,
      Q => \dna_data_out_reg_n_0_[9]\,
      R => '0'
    );
\dna_data_reg_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => static_read_cnt,
      I1 => dna_data_reg_cnt(0),
      O => \dna_data_reg_cnt[0]_i_1_n_0\
    );
\dna_data_reg_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => dna_data_reg_cnt(0),
      I1 => static_read_cnt,
      I2 => dna_data_reg_cnt(1),
      O => dna_data_reg_cnt_2(1)
    );
\dna_data_reg_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => dna_data_reg_cnt(0),
      I1 => dna_data_reg_cnt(1),
      I2 => static_read_cnt,
      I3 => dna_data_reg_cnt(2),
      O => dna_data_reg_cnt_2(2)
    );
\dna_data_reg_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => dna_data_reg_cnt(1),
      I1 => dna_data_reg_cnt(0),
      I2 => dna_data_reg_cnt(2),
      I3 => static_read_cnt,
      I4 => dna_data_reg_cnt(3),
      O => dna_data_reg_cnt_2(3)
    );
\dna_data_reg_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => dna_data_reg_cnt(2),
      I1 => dna_data_reg_cnt(0),
      I2 => dna_data_reg_cnt(1),
      I3 => dna_data_reg_cnt(3),
      I4 => static_read_cnt,
      I5 => dna_data_reg_cnt(4),
      O => dna_data_reg_cnt_2(4)
    );
\dna_data_reg_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \dna_data_reg_cnt[5]_i_2_n_0\,
      I1 => static_read_cnt,
      I2 => dna_data_reg_cnt(5),
      O => dna_data_reg_cnt_2(5)
    );
\dna_data_reg_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => dna_data_reg_cnt(3),
      I1 => dna_data_reg_cnt(1),
      I2 => dna_data_reg_cnt(0),
      I3 => dna_data_reg_cnt(2),
      I4 => dna_data_reg_cnt(4),
      O => \dna_data_reg_cnt[5]_i_2_n_0\
    );
\dna_data_reg_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \dna_data_reg_cnt[7]_i_2_n_0\,
      I1 => static_read_cnt,
      I2 => dna_data_reg_cnt(6),
      O => dna_data_reg_cnt_2(6)
    );
\dna_data_reg_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \dna_data_reg_cnt[7]_i_2_n_0\,
      I1 => dna_data_reg_cnt(6),
      I2 => static_read_cnt,
      I3 => dna_data_reg_cnt(7),
      O => dna_data_reg_cnt_2(7)
    );
\dna_data_reg_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => dna_data_reg_cnt(4),
      I1 => dna_data_reg_cnt(2),
      I2 => dna_data_reg_cnt(0),
      I3 => dna_data_reg_cnt(1),
      I4 => dna_data_reg_cnt(3),
      I5 => dna_data_reg_cnt(5),
      O => \dna_data_reg_cnt[7]_i_2_n_0\
    );
\dna_data_reg_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_port_shift_i_1_n_0,
      D => \dna_data_reg_cnt[0]_i_1_n_0\,
      Q => dna_data_reg_cnt(0),
      R => '0'
    );
\dna_data_reg_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_port_shift_i_1_n_0,
      D => dna_data_reg_cnt_2(1),
      Q => dna_data_reg_cnt(1),
      R => '0'
    );
\dna_data_reg_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_port_shift_i_1_n_0,
      D => dna_data_reg_cnt_2(2),
      Q => dna_data_reg_cnt(2),
      R => '0'
    );
\dna_data_reg_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_port_shift_i_1_n_0,
      D => dna_data_reg_cnt_2(3),
      Q => dna_data_reg_cnt(3),
      R => '0'
    );
\dna_data_reg_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_port_shift_i_1_n_0,
      D => dna_data_reg_cnt_2(4),
      Q => dna_data_reg_cnt(4),
      R => '0'
    );
\dna_data_reg_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_port_shift_i_1_n_0,
      D => dna_data_reg_cnt_2(5),
      Q => dna_data_reg_cnt(5),
      R => '0'
    );
\dna_data_reg_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_port_shift_i_1_n_0,
      D => dna_data_reg_cnt_2(6),
      Q => dna_data_reg_cnt(6),
      R => '0'
    );
\dna_data_reg_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_port_shift_i_1_n_0,
      D => dna_data_reg_cnt_2(7),
      Q => dna_data_reg_cnt(7),
      R => '0'
    );
\dna_ip_r1_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[0]\,
      Q => \^fpga_dna_data\(0),
      R => '0'
    );
\dna_ip_r1_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[10]\,
      Q => \^fpga_dna_data\(10),
      R => '0'
    );
\dna_ip_r1_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[11]\,
      Q => \^fpga_dna_data\(11),
      R => '0'
    );
\dna_ip_r1_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[12]\,
      Q => \^fpga_dna_data\(12),
      R => '0'
    );
\dna_ip_r1_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[13]\,
      Q => \^fpga_dna_data\(13),
      R => '0'
    );
\dna_ip_r1_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[14]\,
      Q => \^fpga_dna_data\(14),
      R => '0'
    );
\dna_ip_r1_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[15]\,
      Q => \^fpga_dna_data\(15),
      R => '0'
    );
\dna_ip_r1_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[16]\,
      Q => \^fpga_dna_data\(16),
      R => '0'
    );
\dna_ip_r1_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[17]\,
      Q => \^fpga_dna_data\(17),
      R => '0'
    );
\dna_ip_r1_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[18]\,
      Q => \^fpga_dna_data\(18),
      R => '0'
    );
\dna_ip_r1_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[19]\,
      Q => \^fpga_dna_data\(19),
      R => '0'
    );
\dna_ip_r1_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[1]\,
      Q => \^fpga_dna_data\(1),
      R => '0'
    );
\dna_ip_r1_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[20]\,
      Q => \^fpga_dna_data\(20),
      R => '0'
    );
\dna_ip_r1_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[21]\,
      Q => \^fpga_dna_data\(21),
      R => '0'
    );
\dna_ip_r1_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[22]\,
      Q => \^fpga_dna_data\(22),
      R => '0'
    );
\dna_ip_r1_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[23]\,
      Q => \^fpga_dna_data\(23),
      R => '0'
    );
\dna_ip_r1_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[24]\,
      Q => \^fpga_dna_data\(24),
      R => '0'
    );
\dna_ip_r1_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[25]\,
      Q => \^fpga_dna_data\(25),
      R => '0'
    );
\dna_ip_r1_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[26]\,
      Q => \^fpga_dna_data\(26),
      R => '0'
    );
\dna_ip_r1_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[27]\,
      Q => \^fpga_dna_data\(27),
      R => '0'
    );
\dna_ip_r1_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[28]\,
      Q => \^fpga_dna_data\(28),
      R => '0'
    );
\dna_ip_r1_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[29]\,
      Q => \^fpga_dna_data\(29),
      R => '0'
    );
\dna_ip_r1_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[2]\,
      Q => \^fpga_dna_data\(2),
      R => '0'
    );
\dna_ip_r1_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[30]\,
      Q => \^fpga_dna_data\(30),
      R => '0'
    );
\dna_ip_r1_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[31]\,
      Q => \^fpga_dna_data\(31),
      R => '0'
    );
\dna_ip_r1_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[3]\,
      Q => \^fpga_dna_data\(3),
      R => '0'
    );
\dna_ip_r1_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[4]\,
      Q => \^fpga_dna_data\(4),
      R => '0'
    );
\dna_ip_r1_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[5]\,
      Q => \^fpga_dna_data\(5),
      R => '0'
    );
\dna_ip_r1_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[6]\,
      Q => \^fpga_dna_data\(6),
      R => '0'
    );
\dna_ip_r1_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[7]\,
      Q => \^fpga_dna_data\(7),
      R => '0'
    );
\dna_ip_r1_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[8]\,
      Q => \^fpga_dna_data\(8),
      R => '0'
    );
\dna_ip_r1_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[9]\,
      Q => \^fpga_dna_data\(9),
      R => '0'
    );
\dna_ip_r2_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[32]\,
      Q => \^fpga_dna_data\(32),
      R => '0'
    );
\dna_ip_r2_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[42]\,
      Q => \^fpga_dna_data\(42),
      R => '0'
    );
\dna_ip_r2_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[43]\,
      Q => \^fpga_dna_data\(43),
      R => '0'
    );
\dna_ip_r2_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[44]\,
      Q => \^fpga_dna_data\(44),
      R => '0'
    );
\dna_ip_r2_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[45]\,
      Q => \^fpga_dna_data\(45),
      R => '0'
    );
\dna_ip_r2_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[46]\,
      Q => \^fpga_dna_data\(46),
      R => '0'
    );
\dna_ip_r2_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[47]\,
      Q => \^fpga_dna_data\(47),
      R => '0'
    );
\dna_ip_r2_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[48]\,
      Q => \^fpga_dna_data\(48),
      R => '0'
    );
\dna_ip_r2_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[49]\,
      Q => \^fpga_dna_data\(49),
      R => '0'
    );
\dna_ip_r2_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[50]\,
      Q => \^fpga_dna_data\(50),
      R => '0'
    );
\dna_ip_r2_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[51]\,
      Q => \^fpga_dna_data\(51),
      R => '0'
    );
\dna_ip_r2_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[33]\,
      Q => \^fpga_dna_data\(33),
      R => '0'
    );
\dna_ip_r2_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[52]\,
      Q => \^fpga_dna_data\(52),
      R => '0'
    );
\dna_ip_r2_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[53]\,
      Q => \^fpga_dna_data\(53),
      R => '0'
    );
\dna_ip_r2_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[54]\,
      Q => \^fpga_dna_data\(54),
      R => '0'
    );
\dna_ip_r2_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[55]\,
      Q => \^fpga_dna_data\(55),
      R => '0'
    );
\dna_ip_r2_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[56]\,
      Q => \^fpga_dna_data\(56),
      R => '0'
    );
\dna_ip_r2_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[57]\,
      Q => \^fpga_dna_data\(57),
      R => '0'
    );
\dna_ip_r2_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[58]\,
      Q => \^fpga_dna_data\(58),
      R => '0'
    );
\dna_ip_r2_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[59]\,
      Q => \^fpga_dna_data\(59),
      R => '0'
    );
\dna_ip_r2_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[60]\,
      Q => \^fpga_dna_data\(60),
      R => '0'
    );
\dna_ip_r2_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[61]\,
      Q => \^fpga_dna_data\(61),
      R => '0'
    );
\dna_ip_r2_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[34]\,
      Q => \^fpga_dna_data\(34),
      R => '0'
    );
\dna_ip_r2_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[62]\,
      Q => \^fpga_dna_data\(62),
      R => '0'
    );
\dna_ip_r2_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[63]\,
      Q => \^fpga_dna_data\(63),
      R => '0'
    );
\dna_ip_r2_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[35]\,
      Q => \^fpga_dna_data\(35),
      R => '0'
    );
\dna_ip_r2_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[36]\,
      Q => \^fpga_dna_data\(36),
      R => '0'
    );
\dna_ip_r2_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[37]\,
      Q => \^fpga_dna_data\(37),
      R => '0'
    );
\dna_ip_r2_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[38]\,
      Q => \^fpga_dna_data\(38),
      R => '0'
    );
\dna_ip_r2_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[39]\,
      Q => \^fpga_dna_data\(39),
      R => '0'
    );
\dna_ip_r2_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[40]\,
      Q => \^fpga_dna_data\(40),
      R => '0'
    );
\dna_ip_r2_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[41]\,
      Q => \^fpga_dna_data\(41),
      R => '0'
    );
\dna_ip_r3_data[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_lite_aresetn,
      I1 => dyn_trig_reg,
      O => \dna_ip_r3_data[31]_i_1_n_0\
    );
\dna_ip_r3_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[64]\,
      Q => \^fpga_dna_data\(64),
      R => '0'
    );
\dna_ip_r3_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[74]\,
      Q => \^fpga_dna_data\(74),
      R => '0'
    );
\dna_ip_r3_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[75]\,
      Q => \^fpga_dna_data\(75),
      R => '0'
    );
\dna_ip_r3_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[76]\,
      Q => \^fpga_dna_data\(76),
      R => '0'
    );
\dna_ip_r3_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[77]\,
      Q => \^fpga_dna_data\(77),
      R => '0'
    );
\dna_ip_r3_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[78]\,
      Q => \^fpga_dna_data\(78),
      R => '0'
    );
\dna_ip_r3_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[79]\,
      Q => \^fpga_dna_data\(79),
      R => '0'
    );
\dna_ip_r3_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[80]\,
      Q => \^fpga_dna_data\(80),
      R => '0'
    );
\dna_ip_r3_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[81]\,
      Q => \^fpga_dna_data\(81),
      R => '0'
    );
\dna_ip_r3_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[82]\,
      Q => \^fpga_dna_data\(82),
      R => '0'
    );
\dna_ip_r3_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[83]\,
      Q => \^fpga_dna_data\(83),
      R => '0'
    );
\dna_ip_r3_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[65]\,
      Q => \^fpga_dna_data\(65),
      R => '0'
    );
\dna_ip_r3_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[84]\,
      Q => \^fpga_dna_data\(84),
      R => '0'
    );
\dna_ip_r3_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[85]\,
      Q => \^fpga_dna_data\(85),
      R => '0'
    );
\dna_ip_r3_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[86]\,
      Q => \^fpga_dna_data\(86),
      R => '0'
    );
\dna_ip_r3_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[87]\,
      Q => \^fpga_dna_data\(87),
      R => '0'
    );
\dna_ip_r3_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[88]\,
      Q => \^fpga_dna_data\(88),
      R => '0'
    );
\dna_ip_r3_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[89]\,
      Q => \^fpga_dna_data\(89),
      R => '0'
    );
\dna_ip_r3_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[90]\,
      Q => \^fpga_dna_data\(90),
      R => '0'
    );
\dna_ip_r3_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[91]\,
      Q => \^fpga_dna_data\(91),
      R => '0'
    );
\dna_ip_r3_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[92]\,
      Q => \^fpga_dna_data\(92),
      R => '0'
    );
\dna_ip_r3_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[93]\,
      Q => \^fpga_dna_data\(93),
      R => '0'
    );
\dna_ip_r3_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[66]\,
      Q => \^fpga_dna_data\(66),
      R => '0'
    );
\dna_ip_r3_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[94]\,
      Q => \^fpga_dna_data\(94),
      R => '0'
    );
\dna_ip_r3_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[95]\,
      Q => \^fpga_dna_data\(95),
      R => '0'
    );
\dna_ip_r3_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[67]\,
      Q => \^fpga_dna_data\(67),
      R => '0'
    );
\dna_ip_r3_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[68]\,
      Q => \^fpga_dna_data\(68),
      R => '0'
    );
\dna_ip_r3_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[69]\,
      Q => \^fpga_dna_data\(69),
      R => '0'
    );
\dna_ip_r3_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[70]\,
      Q => \^fpga_dna_data\(70),
      R => '0'
    );
\dna_ip_r3_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[71]\,
      Q => \^fpga_dna_data\(71),
      R => '0'
    );
\dna_ip_r3_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[72]\,
      Q => \^fpga_dna_data\(72),
      R => '0'
    );
\dna_ip_r3_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \dna_ip_r3_data[31]_i_1_n_0\,
      D => \dna_data_out_reg_n_0_[73]\,
      Q => \^fpga_dna_data\(73),
      R => '0'
    );
dna_port_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBF8888"
    )
        port map (
      I0 => dna_port_read,
      I1 => s_axi_lite_aresetn,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => static_read_cnt,
      I4 => \^dna_dyn_data_ports\(0),
      O => dna_port_read_i_1_n_0
    );
dna_port_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => dna_port_read_i_1_n_0,
      Q => \^dna_dyn_data_ports\(0),
      R => '0'
    );
dna_port_shift_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => dyn_trig_reg,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => static_read_cnt,
      I3 => s_axi_lite_aresetn,
      O => dna_port_shift_i_1_n_0
    );
dna_port_shift_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => dna_port_shift_i_1_n_0,
      D => static_read_cnt,
      Q => \^dna_dyn_data_ports\(1),
      R => '0'
    );
dyn_trig_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => dyn_trig_reg,
      I1 => s_axi_lite_aresetn,
      I2 => dyn_trig_reg_reg_n_0,
      I3 => dyn_trig_reg2_out,
      I4 => s_axi_lite_wdata(0),
      O => dyn_trig_reg_i_1_n_0
    );
dyn_trig_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^s_axi_lite_bvalid_i_reg_0\,
      I1 => wr_req_r,
      I2 => s_axi_lite_wvalid,
      I3 => dyn_trig_reg_i_3_n_0,
      I4 => dyn_trig_reg_i_4_n_0,
      O => dyn_trig_reg2_out
    );
dyn_trig_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \wr_addr_r_reg_n_0_[8]\,
      I1 => \wr_addr_r_reg_n_0_[9]\,
      I2 => p_0_in0,
      I3 => \wr_addr_r_reg_n_0_[7]\,
      I4 => \wr_addr_r_reg_n_0_[11]\,
      I5 => \wr_addr_r_reg_n_0_[10]\,
      O => dyn_trig_reg_i_3_n_0
    );
dyn_trig_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => wr_addr_r(2),
      I1 => wr_addr_r(3),
      I2 => wr_addr_r(0),
      I3 => wr_addr_r(1),
      I4 => wr_addr_r(5),
      I5 => wr_addr_r(4),
      O => dyn_trig_reg_i_4_n_0
    );
dyn_trig_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => dyn_trig_reg_i_1_n_0,
      Q => dyn_trig_reg_reg_n_0,
      R => '0'
    );
\rd_addr_r[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => wr_req_r,
      I1 => reset_released_r,
      I2 => rd_req_r,
      I3 => s_axi_lite_arvalid,
      O => rd_req_r06_out
    );
\rd_addr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r06_out,
      D => s_axi_lite_araddr(0),
      Q => rd_addr_r(0),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\rd_addr_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r06_out,
      D => s_axi_lite_araddr(10),
      Q => rd_addr_r(10),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\rd_addr_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r06_out,
      D => s_axi_lite_araddr(11),
      Q => rd_addr_r(11),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\rd_addr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r06_out,
      D => s_axi_lite_araddr(1),
      Q => rd_addr_r(1),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\rd_addr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r06_out,
      D => s_axi_lite_araddr(2),
      Q => rd_addr_r(2),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\rd_addr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r06_out,
      D => s_axi_lite_araddr(3),
      Q => rd_addr_r(3),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\rd_addr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r06_out,
      D => s_axi_lite_araddr(4),
      Q => rd_addr_r(4),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\rd_addr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r06_out,
      D => s_axi_lite_araddr(5),
      Q => rd_addr_r(5),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\rd_addr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r06_out,
      D => s_axi_lite_araddr(6),
      Q => rd_addr_r(6),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\rd_addr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r06_out,
      D => s_axi_lite_araddr(7),
      Q => rd_addr_r(7),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\rd_addr_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r06_out,
      D => s_axi_lite_araddr(8),
      Q => rd_addr_r(8),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\rd_addr_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r06_out,
      D => s_axi_lite_araddr(9),
      Q => rd_addr_r(9),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
rd_req_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700770077F07700"
    )
        port map (
      I0 => \^s_axi_lite_rvalid\,
      I1 => s_axi_lite_rready,
      I2 => s_axi_lite_arvalid,
      I3 => rd_req_r,
      I4 => reset_released_r,
      I5 => wr_req_r,
      O => rd_req_r_i_1_n_0
    );
rd_req_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => rd_req_r_i_1_n_0,
      Q => rd_req_r,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
reset_released_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => s_axi_lite_aresetn,
      Q => reset_released_r,
      R => '0'
    );
rvalid_delayed_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r,
      D => rd_req_r,
      Q => rvalid_delayed,
      R => rvalid_delayed_1
    );
s_axi_lite_arready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rd_req_r,
      I1 => reset_released_r,
      I2 => wr_req_r,
      O => s_axi_lite_arready
    );
s_axi_lite_awready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => wr_req_r,
      I1 => reset_released_r,
      I2 => rd_req_r,
      I3 => s_axi_lite_arvalid,
      O => s_axi_lite_awready
    );
s_axi_lite_bvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s_axi_lite_wvalid,
      I1 => wr_req_r,
      I2 => \^s_axi_lite_bvalid_i_reg_0\,
      I3 => s_axi_lite_bready,
      O => s_axi_lite_bvalid_i_i_1_n_0
    );
s_axi_lite_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => s_axi_lite_bvalid_i_i_1_n_0,
      Q => \^s_axi_lite_bvalid_i_reg_0\,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I1 => \s_axi_lite_rdata[0]_i_2_n_0\,
      I2 => \s_axi_lite_rdata[0]_i_3_n_0\,
      O => p_1_in(0)
    );
\s_axi_lite_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(8),
      I1 => dna_dyn_data_dout,
      I2 => rd_addr_r(4),
      I3 => dyn_trig_reg_reg_n_0,
      I4 => dna_data_cnt_val_reg(0),
      I5 => rd_addr_r(5),
      O => \s_axi_lite_rdata[0]_i_2_n_0\
    );
\s_axi_lite_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_9_n_0\,
      I1 => \^fpga_dna_data\(0),
      I2 => \^fpga_dna_data\(64),
      I3 => rd_addr_r(3),
      I4 => rd_addr_r(2),
      I5 => \^fpga_dna_data\(32),
      O => \s_axi_lite_rdata[0]_i_3_n_0\
    );
\s_axi_lite_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^fpga_dna_data\(42),
      I1 => rd_addr_r(2),
      I2 => rd_addr_r(3),
      I3 => \^fpga_dna_data\(74),
      I4 => \s_axi_lite_rdata[10]_i_2_n_0\,
      I5 => \s_axi_lite_rdata[31]_i_4_n_0\,
      O => p_1_in(10)
    );
\s_axi_lite_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(5),
      I4 => rd_addr_r(3),
      I5 => \^fpga_dna_data\(10),
      O => \s_axi_lite_rdata[10]_i_2_n_0\
    );
\s_axi_lite_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^fpga_dna_data\(43),
      I1 => rd_addr_r(2),
      I2 => rd_addr_r(3),
      I3 => \^fpga_dna_data\(75),
      I4 => \s_axi_lite_rdata[11]_i_2_n_0\,
      I5 => \s_axi_lite_rdata[31]_i_4_n_0\,
      O => p_1_in(11)
    );
\s_axi_lite_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(5),
      I4 => rd_addr_r(3),
      I5 => \^fpga_dna_data\(11),
      O => \s_axi_lite_rdata[11]_i_2_n_0\
    );
\s_axi_lite_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^fpga_dna_data\(44),
      I1 => rd_addr_r(2),
      I2 => rd_addr_r(3),
      I3 => \^fpga_dna_data\(76),
      I4 => \s_axi_lite_rdata[12]_i_2_n_0\,
      I5 => \s_axi_lite_rdata[31]_i_4_n_0\,
      O => p_1_in(12)
    );
\s_axi_lite_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(5),
      I4 => rd_addr_r(3),
      I5 => \^fpga_dna_data\(12),
      O => \s_axi_lite_rdata[12]_i_2_n_0\
    );
\s_axi_lite_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^fpga_dna_data\(45),
      I1 => rd_addr_r(2),
      I2 => rd_addr_r(3),
      I3 => \^fpga_dna_data\(77),
      I4 => \s_axi_lite_rdata[13]_i_2_n_0\,
      I5 => \s_axi_lite_rdata[31]_i_4_n_0\,
      O => p_1_in(13)
    );
\s_axi_lite_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(5),
      I4 => rd_addr_r(3),
      I5 => \^fpga_dna_data\(13),
      O => \s_axi_lite_rdata[13]_i_2_n_0\
    );
\s_axi_lite_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_lite_rdata[22]_i_2_n_0\,
      I1 => \^fpga_dna_data\(14),
      I2 => \s_axi_lite_rdata[29]_i_4_n_0\,
      I3 => \^fpga_dna_data\(46),
      I4 => \^fpga_dna_data\(78),
      I5 => \s_axi_lite_rdata[29]_i_5_n_0\,
      O => p_1_in(14)
    );
\s_axi_lite_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^fpga_dna_data\(47),
      I1 => rd_addr_r(2),
      I2 => rd_addr_r(3),
      I3 => \^fpga_dna_data\(79),
      I4 => \s_axi_lite_rdata[15]_i_2_n_0\,
      I5 => \s_axi_lite_rdata[31]_i_4_n_0\,
      O => p_1_in(15)
    );
\s_axi_lite_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(5),
      I4 => rd_addr_r(3),
      I5 => \^fpga_dna_data\(15),
      O => \s_axi_lite_rdata[15]_i_2_n_0\
    );
\s_axi_lite_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^fpga_dna_data\(48),
      I1 => rd_addr_r(2),
      I2 => rd_addr_r(3),
      I3 => \^fpga_dna_data\(80),
      I4 => \s_axi_lite_rdata[16]_i_2_n_0\,
      I5 => \s_axi_lite_rdata[31]_i_4_n_0\,
      O => p_1_in(16)
    );
\s_axi_lite_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(5),
      I4 => rd_addr_r(3),
      I5 => \^fpga_dna_data\(16),
      O => \s_axi_lite_rdata[16]_i_2_n_0\
    );
\s_axi_lite_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_lite_rdata[22]_i_2_n_0\,
      I1 => \^fpga_dna_data\(17),
      I2 => \s_axi_lite_rdata[29]_i_4_n_0\,
      I3 => \^fpga_dna_data\(49),
      I4 => \^fpga_dna_data\(81),
      I5 => \s_axi_lite_rdata[29]_i_5_n_0\,
      O => p_1_in(17)
    );
\s_axi_lite_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^fpga_dna_data\(50),
      I1 => rd_addr_r(2),
      I2 => rd_addr_r(3),
      I3 => \^fpga_dna_data\(82),
      I4 => \s_axi_lite_rdata[18]_i_2_n_0\,
      I5 => \s_axi_lite_rdata[31]_i_4_n_0\,
      O => p_1_in(18)
    );
\s_axi_lite_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(5),
      I4 => rd_addr_r(3),
      I5 => \^fpga_dna_data\(18),
      O => \s_axi_lite_rdata[18]_i_2_n_0\
    );
\s_axi_lite_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^fpga_dna_data\(51),
      I1 => rd_addr_r(2),
      I2 => rd_addr_r(3),
      I3 => \^fpga_dna_data\(83),
      I4 => \s_axi_lite_rdata[19]_i_2_n_0\,
      I5 => \s_axi_lite_rdata[31]_i_4_n_0\,
      O => p_1_in(19)
    );
\s_axi_lite_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(5),
      I4 => rd_addr_r(3),
      I5 => \^fpga_dna_data\(19),
      O => \s_axi_lite_rdata[19]_i_2_n_0\
    );
\s_axi_lite_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \s_axi_lite_rdata[1]_i_2_n_0\,
      I1 => \^fpga_dna_data\(33),
      I2 => rd_addr_r(2),
      I3 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I4 => \^fpga_dna_data\(65),
      I5 => rd_addr_r(3),
      O => p_1_in(1)
    );
\s_axi_lite_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(8),
      I1 => \^dna_dyn_data_ports\(0),
      I2 => rd_addr_r(5),
      I3 => dna_data_cnt_val_reg(1),
      I4 => \^fpga_dna_data\(1),
      I5 => \s_axi_lite_rdata[31]_i_9_n_0\,
      O => \s_axi_lite_rdata[1]_i_2_n_0\
    );
\s_axi_lite_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_lite_rdata[22]_i_2_n_0\,
      I1 => \^fpga_dna_data\(20),
      I2 => \s_axi_lite_rdata[29]_i_4_n_0\,
      I3 => \^fpga_dna_data\(52),
      I4 => \^fpga_dna_data\(84),
      I5 => \s_axi_lite_rdata[29]_i_5_n_0\,
      O => p_1_in(20)
    );
\s_axi_lite_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^fpga_dna_data\(53),
      I1 => rd_addr_r(2),
      I2 => rd_addr_r(3),
      I3 => \^fpga_dna_data\(85),
      I4 => \s_axi_lite_rdata[21]_i_2_n_0\,
      I5 => \s_axi_lite_rdata[31]_i_4_n_0\,
      O => p_1_in(21)
    );
\s_axi_lite_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(5),
      I4 => rd_addr_r(3),
      I5 => \^fpga_dna_data\(21),
      O => \s_axi_lite_rdata[21]_i_2_n_0\
    );
\s_axi_lite_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_lite_rdata[22]_i_2_n_0\,
      I1 => \^fpga_dna_data\(22),
      I2 => \s_axi_lite_rdata[29]_i_4_n_0\,
      I3 => \^fpga_dna_data\(54),
      I4 => \^fpga_dna_data\(86),
      I5 => \s_axi_lite_rdata[29]_i_5_n_0\,
      O => p_1_in(22)
    );
\s_axi_lite_rdata[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_9_n_0\,
      I1 => rd_addr_r(11),
      I2 => rd_addr_r(10),
      I3 => rd_addr_r(0),
      I4 => \s_axi_lite_rdata[31]_i_7_n_0\,
      O => \s_axi_lite_rdata[22]_i_2_n_0\
    );
\s_axi_lite_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^fpga_dna_data\(55),
      I1 => rd_addr_r(2),
      I2 => rd_addr_r(3),
      I3 => \^fpga_dna_data\(87),
      I4 => \s_axi_lite_rdata[23]_i_2_n_0\,
      I5 => \s_axi_lite_rdata[31]_i_4_n_0\,
      O => p_1_in(23)
    );
\s_axi_lite_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(5),
      I4 => rd_addr_r(3),
      I5 => \^fpga_dna_data\(23),
      O => \s_axi_lite_rdata[23]_i_2_n_0\
    );
\s_axi_lite_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \s_axi_lite_rdata[24]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[24]_i_3_n_0\,
      I2 => \s_axi_lite_rdata[29]_i_4_n_0\,
      I3 => \^fpga_dna_data\(56),
      I4 => \^fpga_dna_data\(88),
      I5 => \s_axi_lite_rdata[29]_i_5_n_0\,
      O => p_1_in(24)
    );
\s_axi_lite_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_7_n_0\,
      I1 => rd_addr_r(0),
      I2 => rd_addr_r(10),
      I3 => rd_addr_r(11),
      I4 => \s_axi_lite_rdata[31]_i_9_n_0\,
      I5 => \^fpga_dna_data\(24),
      O => \s_axi_lite_rdata[24]_i_2_n_0\
    );
\s_axi_lite_rdata[24]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \s_axi_lite_rdata[24]_i_4_n_0\,
      I1 => rd_addr_r(3),
      I2 => \s_axi_lite_rdata[29]_i_7_n_0\,
      I3 => \s_axi_lite_rdata[31]_i_7_n_0\,
      I4 => rd_addr_r(2),
      O => \s_axi_lite_rdata[24]_i_3_n_0\
    );
\s_axi_lite_rdata[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => static_read_cnt_reg(0),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(5),
      I3 => rd_addr_r(4),
      O => \s_axi_lite_rdata[24]_i_4_n_0\
    );
\s_axi_lite_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I1 => \^fpga_dna_data\(57),
      I2 => rd_addr_r(2),
      I3 => \s_axi_lite_rdata[25]_i_2_n_0\,
      O => p_1_in(25)
    );
\s_axi_lite_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(8),
      I1 => static_read_cnt_reg(1),
      I2 => \^fpga_dna_data\(89),
      I3 => rd_addr_r(3),
      I4 => \^fpga_dna_data\(25),
      I5 => \s_axi_lite_rdata[31]_i_9_n_0\,
      O => \s_axi_lite_rdata[25]_i_2_n_0\
    );
\s_axi_lite_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I1 => \^fpga_dna_data\(58),
      I2 => rd_addr_r(2),
      I3 => \s_axi_lite_rdata[26]_i_2_n_0\,
      O => p_1_in(26)
    );
\s_axi_lite_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(8),
      I1 => static_read_cnt_reg(2),
      I2 => \^fpga_dna_data\(90),
      I3 => rd_addr_r(3),
      I4 => \^fpga_dna_data\(26),
      I5 => \s_axi_lite_rdata[31]_i_9_n_0\,
      O => \s_axi_lite_rdata[26]_i_2_n_0\
    );
\s_axi_lite_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I1 => \^fpga_dna_data\(59),
      I2 => rd_addr_r(2),
      I3 => \s_axi_lite_rdata[27]_i_2_n_0\,
      O => p_1_in(27)
    );
\s_axi_lite_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(8),
      I1 => static_read_cnt_reg(3),
      I2 => \^fpga_dna_data\(91),
      I3 => rd_addr_r(3),
      I4 => \^fpga_dna_data\(27),
      I5 => \s_axi_lite_rdata[31]_i_9_n_0\,
      O => \s_axi_lite_rdata[27]_i_2_n_0\
    );
\s_axi_lite_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I1 => \^fpga_dna_data\(60),
      I2 => rd_addr_r(2),
      I3 => \s_axi_lite_rdata[28]_i_2_n_0\,
      O => p_1_in(28)
    );
\s_axi_lite_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(8),
      I1 => static_read_cnt_reg(4),
      I2 => \^fpga_dna_data\(92),
      I3 => rd_addr_r(3),
      I4 => \^fpga_dna_data\(28),
      I5 => \s_axi_lite_rdata[31]_i_9_n_0\,
      O => \s_axi_lite_rdata[28]_i_2_n_0\
    );
\s_axi_lite_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \s_axi_lite_rdata[29]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[29]_i_3_n_0\,
      I2 => \s_axi_lite_rdata[29]_i_4_n_0\,
      I3 => \^fpga_dna_data\(61),
      I4 => \^fpga_dna_data\(93),
      I5 => \s_axi_lite_rdata[29]_i_5_n_0\,
      O => p_1_in(29)
    );
\s_axi_lite_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_7_n_0\,
      I1 => rd_addr_r(0),
      I2 => rd_addr_r(10),
      I3 => rd_addr_r(11),
      I4 => \s_axi_lite_rdata[31]_i_9_n_0\,
      I5 => \^fpga_dna_data\(29),
      O => \s_axi_lite_rdata[29]_i_2_n_0\
    );
\s_axi_lite_rdata[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \s_axi_lite_rdata[29]_i_6_n_0\,
      I1 => rd_addr_r(3),
      I2 => \s_axi_lite_rdata[29]_i_7_n_0\,
      I3 => \s_axi_lite_rdata[31]_i_7_n_0\,
      I4 => rd_addr_r(2),
      O => \s_axi_lite_rdata[29]_i_3_n_0\
    );
\s_axi_lite_rdata[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \s_axi_lite_rdata[29]_i_8_n_0\,
      I1 => \s_axi_lite_rdata[31]_i_7_n_0\,
      I2 => rd_addr_r(0),
      I3 => rd_addr_r(10),
      I4 => rd_addr_r(11),
      I5 => rd_addr_r(2),
      O => \s_axi_lite_rdata[29]_i_4_n_0\
    );
\s_axi_lite_rdata[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \s_axi_lite_rdata[29]_i_9_n_0\,
      I1 => rd_addr_r(2),
      I2 => \s_axi_lite_rdata[31]_i_7_n_0\,
      I3 => rd_addr_r(0),
      I4 => rd_addr_r(10),
      I5 => rd_addr_r(11),
      O => \s_axi_lite_rdata[29]_i_5_n_0\
    );
\s_axi_lite_rdata[29]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => static_read_cnt_reg(5),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(5),
      I3 => rd_addr_r(4),
      O => \s_axi_lite_rdata[29]_i_6_n_0\
    );
\s_axi_lite_rdata[29]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rd_addr_r(11),
      I1 => rd_addr_r(10),
      I2 => rd_addr_r(0),
      O => \s_axi_lite_rdata[29]_i_7_n_0\
    );
\s_axi_lite_rdata[29]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rd_addr_r(8),
      I1 => rd_addr_r(4),
      I2 => rd_addr_r(5),
      I3 => rd_addr_r(3),
      O => \s_axi_lite_rdata[29]_i_8_n_0\
    );
\s_axi_lite_rdata[29]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => rd_addr_r(3),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(5),
      O => \s_axi_lite_rdata[29]_i_9_n_0\
    );
\s_axi_lite_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \s_axi_lite_rdata[2]_i_2_n_0\,
      I1 => \^fpga_dna_data\(34),
      I2 => rd_addr_r(2),
      I3 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I4 => \^fpga_dna_data\(66),
      I5 => rd_addr_r(3),
      O => p_1_in(2)
    );
\s_axi_lite_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(8),
      I1 => \^dna_dyn_data_ports\(1),
      I2 => rd_addr_r(5),
      I3 => dna_data_cnt_val_reg(2),
      I4 => \^fpga_dna_data\(2),
      I5 => \s_axi_lite_rdata[31]_i_9_n_0\,
      O => \s_axi_lite_rdata[2]_i_2_n_0\
    );
\s_axi_lite_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I1 => \^fpga_dna_data\(62),
      I2 => rd_addr_r(2),
      I3 => \s_axi_lite_rdata[30]_i_2_n_0\,
      O => p_1_in(30)
    );
\s_axi_lite_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(8),
      I1 => static_read_cnt_reg(6),
      I2 => \^fpga_dna_data\(94),
      I3 => rd_addr_r(3),
      I4 => \^fpga_dna_data\(30),
      I5 => \s_axi_lite_rdata[31]_i_9_n_0\,
      O => \s_axi_lite_rdata[30]_i_2_n_0\
    );
\s_axi_lite_rdata[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_lite_aresetn,
      O => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_req_r,
      I1 => \^s_axi_lite_rvalid\,
      O => \s_axi_lite_rdata[31]_i_2_n_0\
    );
\s_axi_lite_rdata[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I1 => \^fpga_dna_data\(63),
      I2 => rd_addr_r(2),
      I3 => \s_axi_lite_rdata[31]_i_5_n_0\,
      O => p_1_in(31)
    );
\s_axi_lite_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_6_n_0\,
      I1 => \s_axi_lite_rdata[31]_i_7_n_0\,
      I2 => rd_addr_r(0),
      I3 => rd_addr_r(10),
      I4 => rd_addr_r(11),
      I5 => \s_axi_lite_rdata[31]_i_8_n_0\,
      O => \s_axi_lite_rdata[31]_i_4_n_0\
    );
\s_axi_lite_rdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(8),
      I1 => static_read_cnt_reg(7),
      I2 => \^fpga_dna_data\(95),
      I3 => rd_addr_r(3),
      I4 => \^fpga_dna_data\(31),
      I5 => \s_axi_lite_rdata[31]_i_9_n_0\,
      O => \s_axi_lite_rdata[31]_i_5_n_0\
    );
\s_axi_lite_rdata[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rd_addr_r(8),
      I1 => rd_addr_r(4),
      I2 => rd_addr_r(5),
      O => \s_axi_lite_rdata[31]_i_6_n_0\
    );
\s_axi_lite_rdata[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rd_addr_r(6),
      I1 => rd_addr_r(1),
      I2 => rd_addr_r(9),
      I3 => rd_addr_r(7),
      O => \s_axi_lite_rdata[31]_i_7_n_0\
    );
\s_axi_lite_rdata[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEE8"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => rd_addr_r(3),
      I2 => rd_addr_r(5),
      I3 => rd_addr_r(4),
      I4 => rd_addr_r(8),
      O => \s_axi_lite_rdata[31]_i_8_n_0\
    );
\s_axi_lite_rdata[31]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => rd_addr_r(3),
      I1 => rd_addr_r(5),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(8),
      I4 => rd_addr_r(2),
      O => \s_axi_lite_rdata[31]_i_9_n_0\
    );
\s_axi_lite_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I1 => \^fpga_dna_data\(35),
      I2 => rd_addr_r(2),
      I3 => \s_axi_lite_rdata[3]_i_2_n_0\,
      O => p_1_in(3)
    );
\s_axi_lite_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(5),
      I1 => dna_data_cnt_val_reg(3),
      I2 => \^fpga_dna_data\(67),
      I3 => rd_addr_r(3),
      I4 => \^fpga_dna_data\(3),
      I5 => \s_axi_lite_rdata[31]_i_9_n_0\,
      O => \s_axi_lite_rdata[3]_i_2_n_0\
    );
\s_axi_lite_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFAFA"
    )
        port map (
      I0 => \s_axi_lite_rdata[4]_i_2_n_0\,
      I1 => \s_axi_lite_rdata[4]_i_3_n_0\,
      I2 => \s_axi_lite_rdata[4]_i_4_n_0\,
      I3 => \s_axi_lite_rdata[4]_i_5_n_0\,
      I4 => \s_axi_lite_rdata[4]_i_6_n_0\,
      I5 => \s_axi_lite_rdata[4]_i_7_n_0\,
      O => p_1_in(4)
    );
\s_axi_lite_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_7_n_0\,
      I1 => rd_addr_r(0),
      I2 => rd_addr_r(10),
      I3 => rd_addr_r(11),
      I4 => \s_axi_lite_rdata[31]_i_9_n_0\,
      I5 => \^fpga_dna_data\(4),
      O => \s_axi_lite_rdata[4]_i_2_n_0\
    );
\s_axi_lite_rdata[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(5),
      I3 => rd_addr_r(4),
      O => \s_axi_lite_rdata[4]_i_3_n_0\
    );
\s_axi_lite_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \s_axi_lite_rdata[29]_i_7_n_0\,
      I1 => \s_axi_lite_rdata[31]_i_7_n_0\,
      I2 => rd_addr_r(2),
      I3 => rd_addr_r(3),
      I4 => \s_axi_lite_rdata[4]_i_8_n_0\,
      I5 => \^fpga_dna_data\(68),
      O => \s_axi_lite_rdata[4]_i_4_n_0\
    );
\s_axi_lite_rdata[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rd_addr_r(4),
      I1 => rd_addr_r(5),
      I2 => rd_addr_r(8),
      I3 => dna_data_cnt_val_reg(4),
      O => \s_axi_lite_rdata[4]_i_5_n_0\
    );
\s_axi_lite_rdata[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => \s_axi_lite_rdata[31]_i_7_n_0\,
      I2 => rd_addr_r(0),
      I3 => rd_addr_r(10),
      I4 => rd_addr_r(11),
      I5 => rd_addr_r(3),
      O => \s_axi_lite_rdata[4]_i_6_n_0\
    );
\s_axi_lite_rdata[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => \s_axi_lite_rdata[29]_i_7_n_0\,
      I2 => \s_axi_lite_rdata[31]_i_7_n_0\,
      I3 => \s_axi_lite_rdata[29]_i_8_n_0\,
      I4 => \^fpga_dna_data\(36),
      O => \s_axi_lite_rdata[4]_i_7_n_0\
    );
\s_axi_lite_rdata[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rd_addr_r(5),
      I1 => rd_addr_r(4),
      I2 => rd_addr_r(8),
      O => \s_axi_lite_rdata[4]_i_8_n_0\
    );
\s_axi_lite_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAFFEAFFEA"
    )
        port map (
      I0 => \s_axi_lite_rdata[5]_i_2_n_0\,
      I1 => \^fpga_dna_data\(37),
      I2 => rd_addr_r(2),
      I3 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I4 => \^fpga_dna_data\(69),
      I5 => rd_addr_r(3),
      O => p_1_in(5)
    );
\s_axi_lite_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(8),
      I1 => \state_reg_n_0_[1]\,
      I2 => rd_addr_r(5),
      I3 => dna_data_cnt_val_reg(5),
      I4 => \^fpga_dna_data\(5),
      I5 => \s_axi_lite_rdata[31]_i_9_n_0\,
      O => \s_axi_lite_rdata[5]_i_2_n_0\
    );
\s_axi_lite_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I1 => \^fpga_dna_data\(38),
      I2 => rd_addr_r(2),
      I3 => \s_axi_lite_rdata[6]_i_2_n_0\,
      O => p_1_in(6)
    );
\s_axi_lite_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(5),
      I1 => dna_data_cnt_val_reg(6),
      I2 => \^fpga_dna_data\(70),
      I3 => rd_addr_r(3),
      I4 => \^fpga_dna_data\(6),
      I5 => \s_axi_lite_rdata[31]_i_9_n_0\,
      O => \s_axi_lite_rdata[6]_i_2_n_0\
    );
\s_axi_lite_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \s_axi_lite_rdata[31]_i_4_n_0\,
      I1 => \^fpga_dna_data\(39),
      I2 => rd_addr_r(2),
      I3 => \s_axi_lite_rdata[7]_i_2_n_0\,
      O => p_1_in(7)
    );
\s_axi_lite_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => rd_addr_r(5),
      I1 => dna_data_cnt_val_reg(7),
      I2 => \^fpga_dna_data\(71),
      I3 => rd_addr_r(3),
      I4 => \^fpga_dna_data\(7),
      I5 => \s_axi_lite_rdata[31]_i_9_n_0\,
      O => \s_axi_lite_rdata[7]_i_2_n_0\
    );
\s_axi_lite_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \s_axi_lite_rdata[22]_i_2_n_0\,
      I1 => \^fpga_dna_data\(8),
      I2 => \s_axi_lite_rdata[29]_i_4_n_0\,
      I3 => \^fpga_dna_data\(40),
      I4 => \^fpga_dna_data\(72),
      I5 => \s_axi_lite_rdata[29]_i_5_n_0\,
      O => p_1_in(8)
    );
\s_axi_lite_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \^fpga_dna_data\(41),
      I1 => rd_addr_r(2),
      I2 => rd_addr_r(3),
      I3 => \^fpga_dna_data\(73),
      I4 => \s_axi_lite_rdata[9]_i_2_n_0\,
      I5 => \s_axi_lite_rdata[31]_i_4_n_0\,
      O => p_1_in(9)
    );
\s_axi_lite_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => rd_addr_r(2),
      I1 => rd_addr_r(8),
      I2 => rd_addr_r(4),
      I3 => rd_addr_r(5),
      I4 => rd_addr_r(3),
      I5 => \^fpga_dna_data\(9),
      O => \s_axi_lite_rdata[9]_i_2_n_0\
    );
\s_axi_lite_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(0),
      Q => s_axi_lite_rdata(0),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(10),
      Q => s_axi_lite_rdata(10),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(11),
      Q => s_axi_lite_rdata(11),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(12),
      Q => s_axi_lite_rdata(12),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(13),
      Q => s_axi_lite_rdata(13),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(14),
      Q => s_axi_lite_rdata(14),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(15),
      Q => s_axi_lite_rdata(15),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(16),
      Q => s_axi_lite_rdata(16),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(17),
      Q => s_axi_lite_rdata(17),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(18),
      Q => s_axi_lite_rdata(18),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(19),
      Q => s_axi_lite_rdata(19),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(1),
      Q => s_axi_lite_rdata(1),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(20),
      Q => s_axi_lite_rdata(20),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(21),
      Q => s_axi_lite_rdata(21),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(22),
      Q => s_axi_lite_rdata(22),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(23),
      Q => s_axi_lite_rdata(23),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(24),
      Q => s_axi_lite_rdata(24),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(25),
      Q => s_axi_lite_rdata(25),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(26),
      Q => s_axi_lite_rdata(26),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(27),
      Q => s_axi_lite_rdata(27),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(28),
      Q => s_axi_lite_rdata(28),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(29),
      Q => s_axi_lite_rdata(29),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(2),
      Q => s_axi_lite_rdata(2),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(30),
      Q => s_axi_lite_rdata(30),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(31),
      Q => s_axi_lite_rdata(31),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(3),
      Q => s_axi_lite_rdata(3),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(4),
      Q => s_axi_lite_rdata(4),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(5),
      Q => s_axi_lite_rdata(5),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(6),
      Q => s_axi_lite_rdata(6),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(7),
      Q => s_axi_lite_rdata(7),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(8),
      Q => s_axi_lite_rdata(8),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\s_axi_lite_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \s_axi_lite_rdata[31]_i_2_n_0\,
      D => p_1_in(9),
      Q => s_axi_lite_rdata(9),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
s_axi_lite_rvalid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => s_axi_lite_rready,
      I1 => \^s_axi_lite_rvalid\,
      I2 => rd_req_r,
      I3 => s_axi_lite_aresetn,
      O => rvalid_delayed_1
    );
s_axi_lite_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => rd_req_r,
      D => rvalid_delayed,
      Q => \^s_axi_lite_rvalid\,
      R => rvalid_delayed_1
    );
s_axi_lite_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_req_r,
      I1 => \^s_axi_lite_bvalid_i_reg_0\,
      O => s_axi_lite_wready
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010F00"
    )
        port map (
      I0 => \state[0]_i_2_n_0\,
      I1 => \state[0]_i_3_n_0\,
      I2 => \state_reg_n_0_[0]\,
      I3 => dyn_trig_reg_reg_n_0,
      I4 => \state_reg_n_0_[1]\,
      O => state(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => dna_data_cnt_val_reg(1),
      I1 => dna_data_reg_cnt(1),
      I2 => dna_data_cnt_val_reg(0),
      I3 => dna_data_reg_cnt(0),
      I4 => \FSM_onehot_state[3]_i_5_n_0\,
      O => \state[0]_i_2_n_0\
    );
\state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FF6"
    )
        port map (
      I0 => dna_data_cnt_val_reg(5),
      I1 => dna_data_reg_cnt(5),
      I2 => dna_data_cnt_val_reg(4),
      I3 => dna_data_reg_cnt(4),
      I4 => \FSM_onehot_state[3]_i_3_n_0\,
      O => \state[0]_i_3_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => state(1)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => state(0),
      Q => \state_reg_n_0_[0]\,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => '1',
      D => state(1),
      Q => \state_reg_n_0_[1]\,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\static_read_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => static_read_cnt_reg(0),
      O => p_0_in(0)
    );
\static_read_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => static_read_cnt_reg(0),
      I1 => static_read_cnt_reg(1),
      O => p_0_in(1)
    );
\static_read_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => static_read_cnt_reg(1),
      I1 => static_read_cnt_reg(0),
      I2 => static_read_cnt_reg(2),
      O => p_0_in(2)
    );
\static_read_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => static_read_cnt_reg(2),
      I1 => static_read_cnt_reg(0),
      I2 => static_read_cnt_reg(1),
      I3 => static_read_cnt_reg(3),
      O => p_0_in(3)
    );
\static_read_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => static_read_cnt_reg(3),
      I1 => static_read_cnt_reg(1),
      I2 => static_read_cnt_reg(0),
      I3 => static_read_cnt_reg(2),
      I4 => static_read_cnt_reg(4),
      O => p_0_in(4)
    );
\static_read_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => static_read_cnt_reg(4),
      I1 => static_read_cnt_reg(2),
      I2 => static_read_cnt_reg(0),
      I3 => static_read_cnt_reg(1),
      I4 => static_read_cnt_reg(3),
      I5 => static_read_cnt_reg(5),
      O => p_0_in(5)
    );
\static_read_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \static_read_cnt[7]_i_2_n_0\,
      I1 => static_read_cnt_reg(6),
      O => p_0_in(6)
    );
\static_read_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => static_read_cnt_reg(6),
      I1 => \static_read_cnt[7]_i_2_n_0\,
      I2 => static_read_cnt_reg(7),
      O => p_0_in(7)
    );
\static_read_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => static_read_cnt_reg(4),
      I1 => static_read_cnt_reg(2),
      I2 => static_read_cnt_reg(0),
      I3 => static_read_cnt_reg(1),
      I4 => static_read_cnt_reg(3),
      I5 => static_read_cnt_reg(5),
      O => \static_read_cnt[7]_i_2_n_0\
    );
\static_read_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => static_read_cnt,
      D => p_0_in(0),
      Q => static_read_cnt_reg(0),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\static_read_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => static_read_cnt,
      D => p_0_in(1),
      Q => static_read_cnt_reg(1),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\static_read_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => static_read_cnt,
      D => p_0_in(2),
      Q => static_read_cnt_reg(2),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\static_read_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => static_read_cnt,
      D => p_0_in(3),
      Q => static_read_cnt_reg(3),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\static_read_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => static_read_cnt,
      D => p_0_in(4),
      Q => static_read_cnt_reg(4),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\static_read_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => static_read_cnt,
      D => p_0_in(5),
      Q => static_read_cnt_reg(5),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\static_read_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => static_read_cnt,
      D => p_0_in(6),
      Q => static_read_cnt_reg(6),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\static_read_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => static_read_cnt,
      D => p_0_in(7),
      Q => static_read_cnt_reg(7),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\wr_addr_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_lite_awvalid,
      I1 => wr_req_r,
      I2 => reset_released_r,
      I3 => rd_req_r,
      I4 => s_axi_lite_arvalid,
      I5 => s_axi_lite_awaddr(0),
      O => p_2_in(0)
    );
\wr_addr_r[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_lite_awvalid,
      I1 => wr_req_r,
      I2 => reset_released_r,
      I3 => rd_req_r,
      I4 => s_axi_lite_arvalid,
      I5 => s_axi_lite_awaddr(10),
      O => p_2_in(10)
    );
\wr_addr_r[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^s_axi_lite_bvalid_i_reg_0\,
      I1 => s_axi_lite_bready,
      I2 => wr_req_r08_out,
      O => \wr_addr_r[11]_i_1_n_0\
    );
\wr_addr_r[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_lite_awvalid,
      I1 => wr_req_r,
      I2 => reset_released_r,
      I3 => rd_req_r,
      I4 => s_axi_lite_arvalid,
      I5 => s_axi_lite_awaddr(11),
      O => p_2_in(11)
    );
\wr_addr_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_lite_awvalid,
      I1 => wr_req_r,
      I2 => reset_released_r,
      I3 => rd_req_r,
      I4 => s_axi_lite_arvalid,
      I5 => s_axi_lite_awaddr(1),
      O => p_2_in(1)
    );
\wr_addr_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_lite_awvalid,
      I1 => wr_req_r,
      I2 => reset_released_r,
      I3 => rd_req_r,
      I4 => s_axi_lite_arvalid,
      I5 => s_axi_lite_awaddr(2),
      O => p_2_in(2)
    );
\wr_addr_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_lite_awvalid,
      I1 => wr_req_r,
      I2 => reset_released_r,
      I3 => rd_req_r,
      I4 => s_axi_lite_arvalid,
      I5 => s_axi_lite_awaddr(3),
      O => p_2_in(3)
    );
\wr_addr_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_lite_awvalid,
      I1 => wr_req_r,
      I2 => reset_released_r,
      I3 => rd_req_r,
      I4 => s_axi_lite_arvalid,
      I5 => s_axi_lite_awaddr(4),
      O => p_2_in(4)
    );
\wr_addr_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_lite_awvalid,
      I1 => wr_req_r,
      I2 => reset_released_r,
      I3 => rd_req_r,
      I4 => s_axi_lite_arvalid,
      I5 => s_axi_lite_awaddr(5),
      O => p_2_in(5)
    );
\wr_addr_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_lite_awvalid,
      I1 => wr_req_r,
      I2 => reset_released_r,
      I3 => rd_req_r,
      I4 => s_axi_lite_arvalid,
      I5 => s_axi_lite_awaddr(6),
      O => p_2_in(6)
    );
\wr_addr_r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_lite_awvalid,
      I1 => wr_req_r,
      I2 => reset_released_r,
      I3 => rd_req_r,
      I4 => s_axi_lite_arvalid,
      I5 => s_axi_lite_awaddr(7),
      O => p_2_in(7)
    );
\wr_addr_r[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_lite_awvalid,
      I1 => wr_req_r,
      I2 => reset_released_r,
      I3 => rd_req_r,
      I4 => s_axi_lite_arvalid,
      I5 => s_axi_lite_awaddr(8),
      O => p_2_in(8)
    );
\wr_addr_r[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_lite_awvalid,
      I1 => wr_req_r,
      I2 => reset_released_r,
      I3 => rd_req_r,
      I4 => s_axi_lite_arvalid,
      I5 => s_axi_lite_awaddr(9),
      O => p_2_in(9)
    );
\wr_addr_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => p_2_in(0),
      Q => wr_addr_r(0),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\wr_addr_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => p_2_in(10),
      Q => \wr_addr_r_reg_n_0_[10]\,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\wr_addr_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => p_2_in(11),
      Q => \wr_addr_r_reg_n_0_[11]\,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\wr_addr_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => p_2_in(1),
      Q => wr_addr_r(1),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\wr_addr_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => p_2_in(2),
      Q => wr_addr_r(2),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\wr_addr_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => p_2_in(3),
      Q => wr_addr_r(3),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\wr_addr_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => p_2_in(4),
      Q => wr_addr_r(4),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\wr_addr_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => p_2_in(5),
      Q => wr_addr_r(5),
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\wr_addr_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => p_2_in(6),
      Q => p_0_in0,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\wr_addr_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => p_2_in(7),
      Q => \wr_addr_r_reg_n_0_[7]\,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\wr_addr_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => p_2_in(8),
      Q => \wr_addr_r_reg_n_0_[8]\,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
\wr_addr_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => p_2_in(9),
      Q => \wr_addr_r_reg_n_0_[9]\,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
wr_req_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => s_axi_lite_arvalid,
      I1 => rd_req_r,
      I2 => reset_released_r,
      I3 => wr_req_r,
      I4 => s_axi_lite_awvalid,
      O => wr_req_r08_out
    );
wr_req_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_lite_aclk,
      CE => \wr_addr_r[11]_i_1_n_0\,
      D => wr_req_r08_out,
      Q => wr_req_r,
      R => \s_axi_lite_rdata[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_bvalid : out STD_LOGIC;
    dna_dyn_data_dout : in STD_LOGIC;
    dna_dyn_data_ports : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpga_dna_data : out STD_LOGIC_VECTOR ( 95 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ulp_fpga_dna_module_0_0,fpga_dna_module,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fpga_dna_module,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^dna_dyn_data_dout\ : STD_LOGIC;
  signal \^dna_dyn_data_ports\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_lite_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_lite_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_lite_aclk : signal is "XIL_INTERFACENAME s_axi_lite_aclk, ASSOCIATED_BUSIF s_axi_lite, ASSOCIATED_RESET s_axi_lite_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_lite_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_lite_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_lite_aresetn : signal is "XIL_INTERFACENAME s_axi_lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_lite_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite ARREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite ARVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite AWREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite AWVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite BREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite BVALID";
  attribute X_INTERFACE_PARAMETER of s_axi_lite_bvalid : signal is "XIL_INTERFACENAME s_axi_lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_ctrl_00, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_lite_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite RREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite RVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite WREADY";
  attribute X_INTERFACE_INFO of s_axi_lite_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite WVALID";
  attribute X_INTERFACE_INFO of s_axi_lite_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite ARADDR";
  attribute X_INTERFACE_INFO of s_axi_lite_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite AWADDR";
  attribute X_INTERFACE_INFO of s_axi_lite_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite BRESP";
  attribute X_INTERFACE_INFO of s_axi_lite_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite RDATA";
  attribute X_INTERFACE_INFO of s_axi_lite_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite RRESP";
  attribute X_INTERFACE_INFO of s_axi_lite_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite WDATA";
  attribute X_INTERFACE_INFO of s_axi_lite_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi_lite WSTRB";
begin
  \^dna_dyn_data_dout\ <= dna_dyn_data_dout;
  dna_dyn_data_ports(2 downto 1) <= \^dna_dyn_data_ports\(2 downto 1);
  dna_dyn_data_ports(0) <= \^dna_dyn_data_dout\;
  s_axi_lite_bresp(1) <= \<const0>\;
  s_axi_lite_bresp(0) <= \<const0>\;
  s_axi_lite_rresp(1) <= \<const0>\;
  s_axi_lite_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fpga_dna_module
     port map (
      dna_dyn_data_dout => \^dna_dyn_data_dout\,
      dna_dyn_data_ports(1 downto 0) => \^dna_dyn_data_ports\(2 downto 1),
      fpga_dna_data(95 downto 0) => fpga_dna_data(95 downto 0),
      s_axi_lite_aclk => s_axi_lite_aclk,
      s_axi_lite_araddr(11 downto 0) => s_axi_lite_araddr(11 downto 0),
      s_axi_lite_aresetn => s_axi_lite_aresetn,
      s_axi_lite_arready => s_axi_lite_arready,
      s_axi_lite_arvalid => s_axi_lite_arvalid,
      s_axi_lite_awaddr(11 downto 0) => s_axi_lite_awaddr(11 downto 0),
      s_axi_lite_awready => s_axi_lite_awready,
      s_axi_lite_awvalid => s_axi_lite_awvalid,
      s_axi_lite_bready => s_axi_lite_bready,
      s_axi_lite_bvalid_i_reg_0 => s_axi_lite_bvalid,
      s_axi_lite_rdata(31 downto 0) => s_axi_lite_rdata(31 downto 0),
      s_axi_lite_rready => s_axi_lite_rready,
      s_axi_lite_rvalid => s_axi_lite_rvalid,
      s_axi_lite_wdata(7 downto 0) => s_axi_lite_wdata(7 downto 0),
      s_axi_lite_wready => s_axi_lite_wready,
      s_axi_lite_wvalid => s_axi_lite_wvalid
    );
end STRUCTURE;
