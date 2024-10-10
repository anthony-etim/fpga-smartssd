create_clock -name blp_s_aclk_pcie_00        -period 4.000 [get_ports blp_s_aclk_pcie_00]
create_clock -name blp_s_aclk_ctrl_00        -period 20.000 [get_ports blp_s_aclk_ctrl_00]
create_clock -name blp_s_aclk_freerun_ref_00 -period 10.000 [get_ports blp_s_aclk_freerun_ref_00]
