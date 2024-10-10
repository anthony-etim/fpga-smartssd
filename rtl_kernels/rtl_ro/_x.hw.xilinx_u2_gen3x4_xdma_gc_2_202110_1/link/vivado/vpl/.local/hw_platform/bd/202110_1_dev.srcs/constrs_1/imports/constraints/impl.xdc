#create_pblock pblock_dynamic_region
#add_cells_to_pblock [get_pblocks pblock_dynamic_region] [get_cells -quiet [list level0_i/ulp]]
#resize_pblock [get_pblocks pblock_dynamic_region] -add {SLICE_X41Y240:SLICE_X104Y299 SLICE_X0Y240:SLICE_X40Y659}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {BUFG_GT_X0Y96:BUFG_GT_X1Y119}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {BUFG_GT_SYNC_X0Y60:BUFG_GT_SYNC_X1Y74}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {CMACE4_X0Y1:CMACE4_X0Y3}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {DSP48E2_X6Y96:DSP48E2_X7Y119 DSP48E2_X0Y96:DSP48E2_X5Y263#}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {GTHE4_CHANNEL_X0Y16:GTHE4_CHANNEL_X0Y19}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {GTHE4_COMMON_X0Y4:GTHE4_COMMON_X0Y4}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {GTYE4_CHANNEL_X0Y4:GTYE4_CHANNEL_X0Y31}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {GTYE4_COMMON_X0Y1:GTYE4_COMMON_X0Y7}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {ILKNE4_X0Y0:ILKNE4_X0Y2}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {IOB_X0Y208:IOB_X0Y259}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {PCIE40E4_X0Y3:PCIE40E4_X1Y2}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {RAMB18_X4Y96:RAMB18_X7Y119 RAMB18_X0Y96:RAMB18_X3Y263}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {RAMB36_X4Y48:RAMB36_X7Y59 RAMB36_X0Y48:RAMB36_X3Y131}
#resize_pblock [get_pblocks pblock_dynamic_region] -add {URAM288_X0Y16:URAM288_X0Y127}
#resize_pblock pblock_dynamic_region -add {CLOCKREGION_X0Y4:CLOCKREGION_X3Y10} 
#set_property SNAPPING_MODE ON [get_pblocks pblock_dynamic_region]

# #######################################################################
#
# These constraints are added as a workaround to CR-1038346 
# Remove these constraints when CR is resolved.
#
# Error codes: ERROR: [VPL 30-1112] 
#
#set_property CONTAIN_ROUTING 0 [get_pblocks pblock_dynamic_region]
#set_property EXCLUDE_PLACEMENT 0 [get_pblocks pblock_dynamic_region]
#set_property CONTAIN_ROUTING 0 [get_pblocks pblock_dynamic_SLR1]
#set_property EXCLUDE_PLACEMENT 0 [get_pblocks pblock_dynamic_SLR1]

set_false_path -through  [get_pins -hierarchical -filter {NAME=~level0_i/ulp/*lp_s_irq_cu_00*}]

set_false_path -from [get_pins level0_i/ulp/ddrmem_1/inst/u_ddr4_mem_intfc/u_ddr_cal_top/calDone_gated_reg/C] -to [get_pins {level0_i/ii_level0_pipe/inst/pxi_ii_core/inst/ip_data_memory_calib_complete_00/inst/q_i_reg[0]/D}]


set_property HIGH_PRIORITY true [get_nets level0_i/ulp/ddrmem_1/inst/u_ddr4_infrastructure/div_clk]
set_property HIGH_PRIORITY true [get_nets {level0_i/ulp/ddrmem*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/u_ddr4_phy_pll/pll_clk[*]}]


# Need to Confirm that this BACKBONE constraint is needed in ulp's impl.xdc
#set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets level0_i/blp/blp_i/freerun_clk_bufg/U0/BUFG_O[0]]

#set_property LOC MMCM_X0Y0 [get_cells level0_i/ulp/ulp_ucs/inst/clkwiz_hbm/inst/CLK_CORE_DRP_I/clk_inst/mmcme4_adv_inst]

# DDR Constraints
set_property PACKAGE_PIN V26 [get_ports {io_ddr_00_adr[16]}]
set_property PACKAGE_PIN U25 [get_ports {io_ddr_00_adr[15]}]
set_property PACKAGE_PIN W29 [get_ports {io_ddr_00_adr[14]}]
set_property PACKAGE_PIN AB22 [get_ports {io_ddr_00_adr[13]}]
set_property PACKAGE_PIN U24 [get_ports {io_ddr_00_adr[12]}]
set_property PACKAGE_PIN AC21 [get_ports {io_ddr_00_adr[11]}]
set_property PACKAGE_PIN W28 [get_ports {io_ddr_00_adr[10]}]
set_property PACKAGE_PIN U21 [get_ports {io_ddr_00_adr[9]}]
set_property PACKAGE_PIN AC22 [get_ports {io_ddr_00_adr[8]}]
set_property PACKAGE_PIN T22 [get_ports {io_ddr_00_adr[7]}]
set_property PACKAGE_PIN AA22 [get_ports {io_ddr_00_adr[6]}]
set_property PACKAGE_PIN U22 [get_ports {io_ddr_00_adr[5]}]
set_property PACKAGE_PIN W26 [get_ports {io_ddr_00_adr[4]}]
set_property PACKAGE_PIN W21 [get_ports {io_ddr_00_adr[3]}]
set_property PACKAGE_PIN AA20 [get_ports {io_ddr_00_adr[2]}]
set_property PACKAGE_PIN V21 [get_ports {io_ddr_00_adr[1]}]
set_property PACKAGE_PIN Y25 [get_ports {io_ddr_00_adr[0]}]

set_property PACKAGE_PIN V22 [get_ports {io_ddr_00_ba[1]}]
set_property PACKAGE_PIN W25 [get_ports {io_ddr_00_ba[0]}]
set_property PACKAGE_PIN V29 [get_ports {io_ddr_00_cke}]
set_property PACKAGE_PIN V23 [get_ports {io_ddr_00_cs_n}]
set_property PACKAGE_PIN Y26 [get_ports {io_ddr_00_dm_n[8]}]
set_property PACKAGE_PIN W33 [get_ports {io_ddr_00_dm_n[7]}]
set_property PACKAGE_PIN AA32 [get_ports {io_ddr_00_dm_n[6]}]
set_property PACKAGE_PIN AG31 [get_ports {io_ddr_00_dm_n[5]}]
set_property PACKAGE_PIN AE27 [get_ports {io_ddr_00_dm_n[4]}]
set_property PACKAGE_PIN AL32 [get_ports {io_ddr_00_dm_n[3]}]
set_property PACKAGE_PIN AJ29 [get_ports {io_ddr_00_dm_n[2]}]
set_property PACKAGE_PIN AN26 [get_ports {io_ddr_00_dm_n[1]}]
set_property PACKAGE_PIN AH26 [get_ports {io_ddr_00_dm_n[0]}]

set_property PACKAGE_PIN AB25 [get_ports {io_ddr_00_dq[71]}]
set_property PACKAGE_PIN AD26 [get_ports {io_ddr_00_dq[70]}]
set_property PACKAGE_PIN AC24 [get_ports {io_ddr_00_dq[69]}]
set_property PACKAGE_PIN AB27 [get_ports {io_ddr_00_dq[68]}]
set_property PACKAGE_PIN AD25 [get_ports {io_ddr_00_dq[67]}]
set_property PACKAGE_PIN AB26 [get_ports {io_ddr_00_dq[66]}]
set_property PACKAGE_PIN AB24 [get_ports {io_ddr_00_dq[65]}]
set_property PACKAGE_PIN AA27 [get_ports {io_ddr_00_dq[64]}]
set_property PACKAGE_PIN V34 [get_ports {io_ddr_00_dq[63]}]
set_property PACKAGE_PIN V31 [get_ports {io_ddr_00_dq[62]}]
set_property PACKAGE_PIN U34 [get_ports {io_ddr_00_dq[61]}]
set_property PACKAGE_PIN W31 [get_ports {io_ddr_00_dq[60]}]
set_property PACKAGE_PIN V33 [get_ports {io_ddr_00_dq[59]}]
set_property PACKAGE_PIN W30 [get_ports {io_ddr_00_dq[58]}]
set_property PACKAGE_PIN W34 [get_ports {io_ddr_00_dq[57]}]
set_property PACKAGE_PIN Y30 [get_ports {io_ddr_00_dq[56]}]
set_property PACKAGE_PIN AA34 [get_ports {io_ddr_00_dq[55]}]
set_property PACKAGE_PIN AD34 [get_ports {io_ddr_00_dq[54]}]
set_property PACKAGE_PIN AB34 [get_ports {io_ddr_00_dq[53]}]
set_property PACKAGE_PIN AD33 [get_ports {io_ddr_00_dq[52]}]
set_property PACKAGE_PIN AC34 [get_ports {io_ddr_00_dq[51]}]
set_property PACKAGE_PIN AB30 [get_ports {io_ddr_00_dq[50]}]
set_property PACKAGE_PIN AC33 [get_ports {io_ddr_00_dq[49]}]
set_property PACKAGE_PIN AB31 [get_ports {io_ddr_00_dq[48]}]
set_property PACKAGE_PIN AC31 [get_ports {io_ddr_00_dq[47]}]
set_property PACKAGE_PIN AE32 [get_ports {io_ddr_00_dq[46]}]
set_property PACKAGE_PIN AC32 [get_ports {io_ddr_00_dq[45]}]
set_property PACKAGE_PIN AF33 [get_ports {io_ddr_00_dq[44]}]
set_property PACKAGE_PIN AD30 [get_ports {io_ddr_00_dq[43]}]
set_property PACKAGE_PIN AF32 [get_ports {io_ddr_00_dq[42]}]
set_property PACKAGE_PIN AD31 [get_ports {io_ddr_00_dq[41]}]
set_property PACKAGE_PIN AG34 [get_ports {io_ddr_00_dq[40]}]
set_property PACKAGE_PIN AE28 [get_ports {io_ddr_00_dq[39]}]
set_property PACKAGE_PIN AF28  [get_ports {io_ddr_00_dq[38]}]
set_property PACKAGE_PIN AD28 [get_ports {io_ddr_00_dq[37]}]
set_property PACKAGE_PIN AF30 [get_ports {io_ddr_00_dq[36]}]
set_property PACKAGE_PIN AD29 [get_ports {io_ddr_00_dq[35]}]
set_property PACKAGE_PIN AE30 [get_ports {io_ddr_00_dq[34]}]
set_property PACKAGE_PIN AC28 [get_ports {io_ddr_00_dq[33]}]
set_property PACKAGE_PIN AG30 [get_ports {io_ddr_00_dq[32]}]
set_property PACKAGE_PIN AN31 [get_ports {io_ddr_00_dq[31]}]
set_property PACKAGE_PIN AP31 [get_ports {io_ddr_00_dq[30]}]
set_property PACKAGE_PIN AN32 [get_ports {io_ddr_00_dq[29]}]
set_property PACKAGE_PIN AM34 [get_ports {io_ddr_00_dq[28]}]
set_property PACKAGE_PIN AM32 [get_ports {io_ddr_00_dq[27]}]
set_property PACKAGE_PIN AN33 [get_ports {io_ddr_00_dq[26]}]
set_property PACKAGE_PIN AP33 [get_ports {io_ddr_00_dq[25]}]
set_property PACKAGE_PIN AL34 [get_ports {io_ddr_00_dq[24]}]
set_property PACKAGE_PIN AJ34 [get_ports {io_ddr_00_dq[23]}]
set_property PACKAGE_PIN AH31 [get_ports {io_ddr_00_dq[22]}]
set_property PACKAGE_PIN AK32 [get_ports {io_ddr_00_dq[21]}]
set_property PACKAGE_PIN AH32 [get_ports {io_ddr_00_dq[20]}]
set_property PACKAGE_PIN AJ31 [get_ports {io_ddr_00_dq[19]}]
set_property PACKAGE_PIN AH34 [get_ports {io_ddr_00_dq[18]}]
set_property PACKAGE_PIN AK31 [get_ports {io_ddr_00_dq[17]}]
set_property PACKAGE_PIN AJ30 [get_ports {io_ddr_00_dq[16]}]
set_property PACKAGE_PIN AM29 [get_ports {io_ddr_00_dq[15]}]
set_property PACKAGE_PIN AN27 [get_ports {io_ddr_00_dq[14]}]
set_property PACKAGE_PIN AM30 [get_ports {io_ddr_00_dq[13]}]
set_property PACKAGE_PIN AP28 [get_ports {io_ddr_00_dq[12]}]
set_property PACKAGE_PIN AL29 [get_ports {io_ddr_00_dq[11]}]
set_property PACKAGE_PIN AN28 [get_ports {io_ddr_00_dq[10]}]
set_property PACKAGE_PIN AL30 [get_ports {io_ddr_00_dq[9]}]
set_property PACKAGE_PIN AP29 [get_ports {io_ddr_00_dq[8]}]
set_property PACKAGE_PIN AH28 [get_ports {io_ddr_00_dq[7]}]
set_property PACKAGE_PIN AK27 [get_ports {io_ddr_00_dq[6]}]
set_property PACKAGE_PIN AH27 [get_ports {io_ddr_00_dq[5]}]
set_property PACKAGE_PIN AK26 [get_ports {io_ddr_00_dq[4]}]
set_property PACKAGE_PIN AK28 [get_ports {io_ddr_00_dq[3]}]
set_property PACKAGE_PIN AM26 [get_ports {io_ddr_00_dq[2]}]
set_property PACKAGE_PIN AJ28 [get_ports {io_ddr_00_dq[1]}]
set_property PACKAGE_PIN AM27 [get_ports {io_ddr_00_dq[0]}]

set_property PACKAGE_PIN AC26 [get_ports {io_ddr_00_dqs_t[8]}]
set_property PACKAGE_PIN AC27 [get_ports {io_ddr_00_dqs_c[8]}]
set_property PACKAGE_PIN Y31 [get_ports {io_ddr_00_dqs_t[7]}]
set_property PACKAGE_PIN Y32 [get_ports {io_ddr_00_dqs_c[7]}]
set_property PACKAGE_PIN AA29 [get_ports {io_ddr_00_dqs_t[6]}]
set_property PACKAGE_PIN AB29 [get_ports {io_ddr_00_dqs_c[6]}]
set_property PACKAGE_PIN AE33 [get_ports {io_ddr_00_dqs_t[5]}]
set_property PACKAGE_PIN AF34 [get_ports {io_ddr_00_dqs_c[5]}]
set_property PACKAGE_PIN AF29 [get_ports {io_ddr_00_dqs_t[4]}]
set_property PACKAGE_PIN AG29 [get_ports {io_ddr_00_dqs_c[4]}]
set_property PACKAGE_PIN AN34 [get_ports {io_ddr_00_dqs_t[3]}]
set_property PACKAGE_PIN AP34 [get_ports {io_ddr_00_dqs_c[3]}]
set_property PACKAGE_PIN AH33 [get_ports {io_ddr_00_dqs_t[2]}]
set_property PACKAGE_PIN AJ33 [get_ports {io_ddr_00_dqs_c[2]}]
set_property PACKAGE_PIN AN29 [get_ports {io_ddr_00_dqs_t[1]}]
set_property PACKAGE_PIN AP30 [get_ports {io_ddr_00_dqs_c[1]}]
set_property PACKAGE_PIN AL27 [get_ports {io_ddr_00_dqs_t[0]}]
set_property PACKAGE_PIN AL28 [get_ports {io_ddr_00_dqs_c[0]}]
set_property PACKAGE_PIN V27 [get_ports {io_ddr_00_odt}]
set_property PACKAGE_PIN Y28 [get_ports {io_ddr_00_bg}]
set_property PACKAGE_PIN Y23 [get_ports io_ddr_00_reset_n]
set_property PACKAGE_PIN V28 [get_ports io_ddr_00_act_n]
set_property PACKAGE_PIN U26 [get_ports {io_ddr_00_ck_t}]
set_property PACKAGE_PIN U27 [get_ports {io_ddr_00_ck_c}]

set_property IOSTANDARD SSTL12_DCI [get_ports {io_ddr_00_cke}]
set_property IOSTANDARD SSTL12_DCI [get_ports {io_ddr_00_cs_n}]
set_property IOSTANDARD SSTL12_DCI [get_ports {io_ddr_00_odt}]
set_property IOSTANDARD SSTL12_DCI [get_ports {io_ddr_00_bg}]
set_property IOSTANDARD LVCMOS12 [get_ports io_ddr_00_reset_n]
set_property IOSTANDARD SSTL12_DCI [get_ports io_ddr_00_act_n]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports {io_ddr_00_ck_t}]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports {io_ddr_00_ck_c}]
set_property IOSTANDARD SSTL12_DCI [get_ports {io_ddr_00_adr[*]}]
set_property IOSTANDARD SSTL12_DCI [get_ports {io_ddr_00_ba[*]}]
set_property IOSTANDARD POD12_DCI [get_ports {io_ddr_00_dm_n[*]}]
set_property IOSTANDARD POD12_DCI [get_ports {io_ddr_00_dq[*]}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {io_ddr_00_dqs_c[*]}]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports {io_ddr_00_dqs_t[*]}]

create_clock -period 9.996 -name c0_sys_clk_p [get_ports io_clk_ddr_00_clk_p]

# DDR4 channel 1 reference clock
set_property PACKAGE_PIN W23           [get_ports io_clk_ddr_00_clk_p]
set_property IOSTANDARD DIFF_SSTL12    [get_ports io_clk_ddr_00_clk_p]
set_property ODT RTT_NONE              [get_ports io_clk_ddr_00_clk_p]
set_property PACKAGE_PIN W24           [get_ports io_clk_ddr_00_clk_n]
set_property IOSTANDARD DIFF_SSTL12    [get_ports io_clk_ddr_00_clk_n]
set_property ODT RTT_NONE              [get_ports io_clk_ddr_00_clk_n]
