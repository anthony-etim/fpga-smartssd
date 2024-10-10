
################################################################
# This is a generated script based on design: ulp
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2021.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source ulp_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku15p-ffva1156-2LV-e
   set_property BOARD_PART xilinx.com:u2:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name ulp

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource Vitis $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: reset_controllers
proc create_hier_cell_reset_controllers { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_reset_controllers() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type rst aux_reset_in
  create_bd_pin -dir I -type clk c0_ddr4_ui_clk
  create_bd_pin -dir I -type clk clkwiz_kernel2_clk_out1
  create_bd_pin -dir I clkwiz_kernel2_locked_slr1
  create_bd_pin -dir I -type clk clkwiz_kernel_clk_out1
  create_bd_pin -dir I clkwiz_kernel_locked_slr1
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out2
  create_bd_pin -dir I clkwiz_sysclks_locked_slr1
  create_bd_pin -dir I -type clk dma_pcie_axi_aclk
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 iob_static_perst_n_out
  create_bd_pin -dir O -from 0 -to 0 logic_reset_op_Res
  create_bd_pin -dir I pcie_user_lnk_up_slr1
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_control_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_data_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_ddrmem_1_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_kernel_interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst slice_reset_kernel_pr_Dout_slr1

  # Create instance: logic_reset_op, and set properties
  set logic_reset_op [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 logic_reset_op ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $logic_reset_op

  # Create instance: psreset_gate_pr_control, and set properties
  set psreset_gate_pr_control [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_gate_pr_control ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_gate_pr_control

  # Create instance: psreset_gate_pr_data, and set properties
  set psreset_gate_pr_data [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_gate_pr_data ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_gate_pr_data

  # Create instance: psreset_gate_pr_ddrmem_1, and set properties
  set psreset_gate_pr_ddrmem_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_gate_pr_ddrmem_1 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_gate_pr_ddrmem_1

  # Create instance: psreset_gate_pr_kernel, and set properties
  set psreset_gate_pr_kernel [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_gate_pr_kernel ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_gate_pr_kernel

  # Create instance: psreset_gate_pr_kernel2, and set properties
  set psreset_gate_pr_kernel2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_gate_pr_kernel2 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_gate_pr_kernel2

  # Create port connections
  connect_bd_net -net Op1_1 [get_bd_pins iob_static_perst_n_out] [get_bd_pins logic_reset_op/Op1]
  connect_bd_net -net aux_reset_in_1 [get_bd_pins aux_reset_in] [get_bd_pins psreset_gate_pr_ddrmem_1/aux_reset_in]
  connect_bd_net -net c0_ddr4_ui_clk_1 [get_bd_pins c0_ddr4_ui_clk] [get_bd_pins psreset_gate_pr_ddrmem_1/slowest_sync_clk]
  connect_bd_net -net clkwiz_kernel2_locked_slr1_1 [get_bd_pins clkwiz_kernel2_locked_slr1] [get_bd_pins psreset_gate_pr_kernel2/aux_reset_in]
  connect_bd_net -net clkwiz_kernel_clk_out1 [get_bd_pins clkwiz_kernel_clk_out1] [get_bd_pins psreset_gate_pr_kernel/slowest_sync_clk]
  connect_bd_net -net clkwiz_kernel_locked_slr1_1 [get_bd_pins clkwiz_kernel_locked_slr1] [get_bd_pins psreset_gate_pr_kernel/aux_reset_in]
  connect_bd_net -net clkwiz_sysclks_locked_slr1_1 [get_bd_pins clkwiz_sysclks_locked_slr1] [get_bd_pins psreset_gate_pr_control/aux_reset_in]
  connect_bd_net -net dma_pcie_axi_aclk_1 [get_bd_pins dma_pcie_axi_aclk] [get_bd_pins psreset_gate_pr_data/slowest_sync_clk]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins slice_reset_kernel_pr_Dout_slr1] [get_bd_pins psreset_gate_pr_control/ext_reset_in] [get_bd_pins psreset_gate_pr_data/ext_reset_in] [get_bd_pins psreset_gate_pr_ddrmem_1/ext_reset_in] [get_bd_pins psreset_gate_pr_kernel/ext_reset_in] [get_bd_pins psreset_gate_pr_kernel2/ext_reset_in]
  connect_bd_net -net logic_reset_op_Res [get_bd_pins logic_reset_op_Res] [get_bd_pins logic_reset_op/Res]
  connect_bd_net -net pcie_user_lnk_up_slr1_1 [get_bd_pins pcie_user_lnk_up_slr1] [get_bd_pins psreset_gate_pr_data/aux_reset_in]
  connect_bd_net -net psreset_gate_pr_control_interconnect_aresetn1 [get_bd_pins psreset_gate_pr_control_interconnect_aresetn] [get_bd_pins psreset_gate_pr_control/interconnect_aresetn]
  connect_bd_net -net psreset_gate_pr_data_interconnect_aresetn [get_bd_pins psreset_gate_pr_data_interconnect_aresetn] [get_bd_pins psreset_gate_pr_data/interconnect_aresetn]
  connect_bd_net -net psreset_gate_pr_ddrmem_1_interconnect_aresetn1 [get_bd_pins interconnect_aresetn] [get_bd_pins psreset_gate_pr_ddrmem_1/interconnect_aresetn]
  connect_bd_net -net psreset_gate_pr_kernel_interconnect_aresetn [get_bd_pins psreset_gate_pr_kernel_interconnect_aresetn] [get_bd_pins psreset_gate_pr_kernel/interconnect_aresetn]
  connect_bd_net -net psreset_gate_pr_kernel_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins psreset_gate_pr_kernel/peripheral_aresetn]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins clkwiz_sysclks_clk_out2] [get_bd_pins psreset_gate_pr_control/slowest_sync_clk]
  connect_bd_net -net slowest_sync_clk_4 [get_bd_pins clkwiz_kernel2_clk_out1] [get_bd_pins psreset_gate_pr_kernel2/slowest_sync_clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: slr1
proc create_hier_cell_slr1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_slr1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M01_AXI1

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 axi_cdc_data_dynamic_M_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 axi_cdc_data_static_M_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 axi_cdc_data_static_M_AXI1

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 axi_vip_ctrl_mgntpf_M_AXI

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_control_M_AXI_slr1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_control_periph_M_AXI_slr1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_control_userpf_M_AXI_slr1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_data_static_M_AXI_slr1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 regslice_data_static_M_AXI_slr2


  # Create pins
  create_bd_pin -dir I -type clk M00_ACLK
  create_bd_pin -dir I -type rst M00_ARESETN
  create_bd_pin -dir I -type rst aux_reset_in
  create_bd_pin -dir I -type clk blp_s_aclk_kernel_ref_clk_00
  create_bd_pin -dir I -type clk clkwiz_kernel2_clk_out1
  create_bd_pin -dir I clkwiz_kernel2_locked_slr1
  create_bd_pin -dir I -type clk clkwiz_kernel_clk_out1
  create_bd_pin -dir I clkwiz_kernel_locked_slr1
  create_bd_pin -dir I -type clk clkwiz_sysclks_clk_out2
  create_bd_pin -dir I clkwiz_sysclks_locked_slr1
  create_bd_pin -dir I -type clk dma_pcie_axi_aclk
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 iob_static_perst_n_out
  create_bd_pin -dir O -from 0 -to 0 logic_reset_op_Res
  create_bd_pin -dir I pcie_user_lnk_up_slr1
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_control_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_data_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_ddrmem_1_interconnect_aresetn
  create_bd_pin -dir O -from 0 -to 0 -type rst psreset_gate_pr_kernel_interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst slice_reset_kernel_pr_Dout_slr1

  # Create instance: axi_cdc_data_static, and set properties
  set axi_cdc_data_static [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_clock_converter:2.1 axi_cdc_data_static ]

  # Create instance: axi_cdc_data_static1, and set properties
  set axi_cdc_data_static1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_clock_converter:2.1 axi_cdc_data_static1 ]

  # Create instance: axi_gpio_null, and set properties
  set axi_gpio_null [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_null ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
 ] $axi_interconnect_0

  # Create instance: axi_vip_ctrl_mgntpf, and set properties
  set axi_vip_ctrl_mgntpf [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 axi_vip_ctrl_mgntpf ]

  # Create instance: axi_vip_ctrl_userpf, and set properties
  set axi_vip_ctrl_userpf [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 axi_vip_ctrl_userpf ]

  # Create instance: axi_vip_data_static, and set properties
  set axi_vip_data_static [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 axi_vip_data_static ]

  # Create instance: axi_vip_data_static1, and set properties
  set axi_vip_data_static1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 axi_vip_data_static1 ]

  # Create instance: freq_counter_0, and set properties
  set freq_counter_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:freq_counter:1.0 freq_counter_0 ]
  set_property -dict [ list \
   CONFIG.REF_CLK_FREQ_HZ {50925} \
 ] $freq_counter_0

  # Create instance: interconnect_axilite_user, and set properties
  set interconnect_axilite_user [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 interconnect_axilite_user ]
  set_property -dict [ list \
   CONFIG.M00_HAS_REGSLICE {4} \
   CONFIG.M01_HAS_REGSLICE {1} \
   CONFIG.M02_HAS_REGSLICE {4} \
   CONFIG.M03_HAS_REGSLICE {4} \
   CONFIG.M04_HAS_REGSLICE {4} \
   CONFIG.M05_HAS_REGSLICE {4} \
   CONFIG.M06_HAS_REGSLICE {4} \
   CONFIG.M07_HAS_REGSLICE {4} \
   CONFIG.M08_HAS_REGSLICE {4} \
   CONFIG.M09_HAS_REGSLICE {4} \
   CONFIG.M10_HAS_REGSLICE {4} \
   CONFIG.M11_HAS_REGSLICE {4} \
   CONFIG.M12_HAS_REGSLICE {4} \
   CONFIG.M13_HAS_REGSLICE {4} \
   CONFIG.M14_HAS_REGSLICE {4} \
   CONFIG.M15_HAS_REGSLICE {4} \
   CONFIG.M16_HAS_REGSLICE {4} \
   CONFIG.M17_HAS_REGSLICE {4} \
   CONFIG.M18_HAS_REGSLICE {4} \
   CONFIG.M19_HAS_REGSLICE {4} \
   CONFIG.M20_HAS_REGSLICE {4} \
   CONFIG.M21_HAS_REGSLICE {4} \
   CONFIG.M22_HAS_REGSLICE {4} \
   CONFIG.M23_HAS_REGSLICE {4} \
   CONFIG.M24_HAS_REGSLICE {4} \
   CONFIG.M25_HAS_REGSLICE {4} \
   CONFIG.M26_HAS_REGSLICE {4} \
   CONFIG.M27_HAS_REGSLICE {4} \
   CONFIG.M28_HAS_REGSLICE {4} \
   CONFIG.M29_HAS_REGSLICE {4} \
   CONFIG.M30_HAS_REGSLICE {4} \
   CONFIG.M31_HAS_REGSLICE {4} \
   CONFIG.M32_HAS_REGSLICE {4} \
   CONFIG.M33_HAS_REGSLICE {4} \
   CONFIG.M34_HAS_REGSLICE {4} \
   CONFIG.M35_HAS_REGSLICE {4} \
   CONFIG.M36_HAS_REGSLICE {4} \
   CONFIG.M37_HAS_REGSLICE {4} \
   CONFIG.M38_HAS_REGSLICE {4} \
   CONFIG.M39_HAS_REGSLICE {4} \
   CONFIG.M40_HAS_REGSLICE {4} \
   CONFIG.M41_HAS_REGSLICE {4} \
   CONFIG.M42_HAS_REGSLICE {4} \
   CONFIG.M43_HAS_REGSLICE {4} \
   CONFIG.M44_HAS_REGSLICE {4} \
   CONFIG.M45_HAS_REGSLICE {4} \
   CONFIG.M46_HAS_REGSLICE {4} \
   CONFIG.M47_HAS_REGSLICE {4} \
   CONFIG.M48_HAS_REGSLICE {4} \
   CONFIG.M49_HAS_REGSLICE {4} \
   CONFIG.M50_HAS_REGSLICE {4} \
   CONFIG.M51_HAS_REGSLICE {4} \
   CONFIG.M52_HAS_REGSLICE {4} \
   CONFIG.M53_HAS_REGSLICE {4} \
   CONFIG.M54_HAS_REGSLICE {4} \
   CONFIG.M55_HAS_REGSLICE {4} \
   CONFIG.M56_HAS_REGSLICE {4} \
   CONFIG.M57_HAS_REGSLICE {4} \
   CONFIG.M58_HAS_REGSLICE {4} \
   CONFIG.M59_HAS_REGSLICE {4} \
   CONFIG.M60_HAS_REGSLICE {4} \
   CONFIG.M61_HAS_REGSLICE {4} \
   CONFIG.M62_HAS_REGSLICE {4} \
   CONFIG.M63_HAS_REGSLICE {4} \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_REGSLICE {4} \
 ] $interconnect_axilite_user

  # Create instance: regslice_control_mgntpf, and set properties
  set regslice_control_mgntpf [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 regslice_control_mgntpf ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {26} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
 ] $regslice_control_mgntpf

  # Create instance: regslice_control_userpf, and set properties
  set regslice_control_userpf [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 regslice_control_userpf ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
 ] $regslice_control_userpf

  # Create instance: regslice_data_static, and set properties
  set regslice_data_static [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 regslice_data_static ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.ID_WIDTH {4} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {1} \
   CONFIG.REG_AW {1} \
   CONFIG.REG_B {1} \
   CONFIG.REG_W {1} \
 ] $regslice_data_static

  # Create instance: regslice_data_static1, and set properties
  set regslice_data_static1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 regslice_data_static1 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.ID_WIDTH {4} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {1} \
   CONFIG.REG_AW {1} \
   CONFIG.REG_B {1} \
   CONFIG.REG_W {1} \
 ] $regslice_data_static1

  # Create instance: reset_controllers
  create_hier_cell_reset_controllers $hier_obj reset_controllers

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M01_AXI] [get_bd_intf_pins interconnect_axilite_user/M01_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins M01_AXI1] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_cdc_data_static1_M_AXI [get_bd_intf_pins axi_cdc_data_static_M_AXI1] [get_bd_intf_pins axi_cdc_data_static1/M_AXI]
  connect_bd_intf_net -intf_net axi_cdc_data_static_M_AXI [get_bd_intf_pins axi_cdc_data_static_M_AXI] [get_bd_intf_pins axi_cdc_data_static/M_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins regslice_control_mgntpf/S_AXI]
  connect_bd_intf_net -intf_net axi_vip_ctrl_mgntpf_M_AXI1 [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins axi_vip_ctrl_mgntpf/M_AXI]
  connect_bd_intf_net -intf_net axi_vip_ctrl_userpf_M_AXI [get_bd_intf_pins axi_vip_ctrl_userpf/M_AXI] [get_bd_intf_pins regslice_control_userpf/S_AXI]
  connect_bd_intf_net -intf_net axi_vip_data_static1_M_AXI [get_bd_intf_pins axi_vip_data_static1/M_AXI] [get_bd_intf_pins regslice_data_static1/S_AXI]
  connect_bd_intf_net -intf_net axi_vip_data_static_M_AXI [get_bd_intf_pins axi_vip_data_static/M_AXI] [get_bd_intf_pins regslice_data_static/S_AXI]
  connect_bd_intf_net -intf_net interconnect_axilite_user_M00_AXI [get_bd_intf_pins axi_gpio_null/S_AXI] [get_bd_intf_pins interconnect_axilite_user/M00_AXI]
  connect_bd_intf_net -intf_net regslice_control_M_AXI_slr1_1 [get_bd_intf_pins regslice_control_M_AXI_slr1] [get_bd_intf_pins axi_vip_ctrl_mgntpf/S_AXI]
  connect_bd_intf_net -intf_net regslice_control_mgntpf_M_AXI [get_bd_intf_pins axi_vip_ctrl_mgntpf_M_AXI] [get_bd_intf_pins regslice_control_mgntpf/M_AXI]
  connect_bd_intf_net -intf_net regslice_control_periph_M_AXI_slr1_1 [get_bd_intf_pins regslice_control_periph_M_AXI_slr1] [get_bd_intf_pins freq_counter_0/axil]
  connect_bd_intf_net -intf_net regslice_control_userpf_M_AXI [get_bd_intf_pins interconnect_axilite_user/S00_AXI] [get_bd_intf_pins regslice_control_userpf/M_AXI]
  connect_bd_intf_net -intf_net regslice_control_userpf_M_AXI_slr1_1 [get_bd_intf_pins regslice_control_userpf_M_AXI_slr1] [get_bd_intf_pins axi_vip_ctrl_userpf/S_AXI]
  connect_bd_intf_net -intf_net regslice_data_static1_M_AXI [get_bd_intf_pins axi_cdc_data_static1/S_AXI] [get_bd_intf_pins regslice_data_static1/M_AXI]
  connect_bd_intf_net -intf_net regslice_data_static_M_AXI1 [get_bd_intf_pins axi_cdc_data_static/S_AXI] [get_bd_intf_pins regslice_data_static/M_AXI]
  connect_bd_intf_net -intf_net regslice_data_static_M_AXI_slr1_1 [get_bd_intf_pins regslice_data_static_M_AXI_slr1] [get_bd_intf_pins axi_vip_data_static/S_AXI]
  connect_bd_intf_net -intf_net regslice_data_static_M_AXI_slr2_1 [get_bd_intf_pins regslice_data_static_M_AXI_slr2] [get_bd_intf_pins axi_vip_data_static1/S_AXI]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins psreset_gate_pr_control_interconnect_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_vip_ctrl_mgntpf/aresetn] [get_bd_pins freq_counter_0/reset_n] [get_bd_pins reset_controllers/psreset_gate_pr_control_interconnect_aresetn]
  connect_bd_net -net M00_ACLK_1 [get_bd_pins M00_ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins regslice_control_mgntpf/aclk] [get_bd_pins reset_controllers/c0_ddr4_ui_clk]
  connect_bd_net -net M00_ARESETN_1 [get_bd_pins M00_ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins regslice_control_mgntpf/aresetn]
  connect_bd_net -net M01_ACLK_1 [get_bd_pins blp_s_aclk_kernel_ref_clk_00] [get_bd_pins interconnect_axilite_user/M01_ACLK]
  connect_bd_net -net aclk_0_1 [get_bd_pins dma_pcie_axi_aclk] [get_bd_pins axi_cdc_data_static/s_axi_aclk] [get_bd_pins axi_cdc_data_static1/s_axi_aclk] [get_bd_pins axi_gpio_null/s_axi_aclk] [get_bd_pins axi_vip_ctrl_userpf/aclk] [get_bd_pins axi_vip_data_static/aclk] [get_bd_pins axi_vip_data_static1/aclk] [get_bd_pins interconnect_axilite_user/ACLK] [get_bd_pins interconnect_axilite_user/M00_ACLK] [get_bd_pins interconnect_axilite_user/S00_ACLK] [get_bd_pins regslice_control_userpf/aclk] [get_bd_pins regslice_data_static/aclk] [get_bd_pins regslice_data_static1/aclk] [get_bd_pins reset_controllers/dma_pcie_axi_aclk]
  connect_bd_net -net aux_reset_in_1 [get_bd_pins aux_reset_in] [get_bd_pins reset_controllers/aux_reset_in]
  connect_bd_net -net clkwiz_kernel2_clk_out1_1 [get_bd_pins clkwiz_kernel2_clk_out1] [get_bd_pins freq_counter_0/test_clk1] [get_bd_pins reset_controllers/clkwiz_kernel2_clk_out1]
  connect_bd_net -net clkwiz_kernel2_locked_1 [get_bd_pins clkwiz_kernel2_locked_slr1] [get_bd_pins reset_controllers/clkwiz_kernel2_locked_slr1]
  connect_bd_net -net clkwiz_kernel_clk_out1_1 [get_bd_pins clkwiz_kernel_clk_out1] [get_bd_pins axi_cdc_data_static/m_axi_aclk] [get_bd_pins axi_cdc_data_static1/m_axi_aclk] [get_bd_pins freq_counter_0/test_clk0] [get_bd_pins reset_controllers/clkwiz_kernel_clk_out1]
  connect_bd_net -net clkwiz_kernel_locked_1 [get_bd_pins clkwiz_kernel_locked_slr1] [get_bd_pins reset_controllers/clkwiz_kernel_locked_slr1]
  connect_bd_net -net clkwiz_sysclks_locked_1 [get_bd_pins clkwiz_sysclks_locked_slr1] [get_bd_pins reset_controllers/clkwiz_sysclks_locked_slr1]
  connect_bd_net -net dcm_locked_0_1 [get_bd_pins pcie_user_lnk_up_slr1] [get_bd_pins reset_controllers/pcie_user_lnk_up_slr1]
  connect_bd_net -net iob_static_perst_n_out_1 [get_bd_pins iob_static_perst_n_out] [get_bd_pins reset_controllers/iob_static_perst_n_out]
  connect_bd_net -net reset_controllers_interconnect_aresetn [get_bd_pins psreset_gate_pr_data_interconnect_aresetn] [get_bd_pins axi_cdc_data_static/s_axi_aresetn] [get_bd_pins axi_cdc_data_static1/s_axi_aresetn] [get_bd_pins axi_gpio_null/s_axi_aresetn] [get_bd_pins axi_vip_ctrl_userpf/aresetn] [get_bd_pins axi_vip_data_static/aresetn] [get_bd_pins axi_vip_data_static1/aresetn] [get_bd_pins interconnect_axilite_user/ARESETN] [get_bd_pins interconnect_axilite_user/M00_ARESETN] [get_bd_pins interconnect_axilite_user/S00_ARESETN] [get_bd_pins regslice_control_userpf/aresetn] [get_bd_pins regslice_data_static/aresetn] [get_bd_pins regslice_data_static1/aresetn] [get_bd_pins reset_controllers/psreset_gate_pr_data_interconnect_aresetn]
  connect_bd_net -net reset_controllers_interconnect_aresetn1 [get_bd_pins interconnect_aresetn] [get_bd_pins reset_controllers/interconnect_aresetn]
  connect_bd_net -net reset_controllers_logic_reset_op_Res [get_bd_pins logic_reset_op_Res] [get_bd_pins reset_controllers/logic_reset_op_Res]
  connect_bd_net -net reset_controllers_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins reset_controllers/peripheral_aresetn]
  connect_bd_net -net reset_controllers_psreset_gate_pr_kernel_interconnect_aresetn [get_bd_pins psreset_gate_pr_kernel_interconnect_aresetn] [get_bd_pins axi_cdc_data_static/m_axi_aresetn] [get_bd_pins axi_cdc_data_static1/m_axi_aresetn] [get_bd_pins interconnect_axilite_user/M01_ARESETN] [get_bd_pins reset_controllers/psreset_gate_pr_kernel_interconnect_aresetn]
  connect_bd_net -net slice_reset_kernel_pr_Dout_1 [get_bd_pins slice_reset_kernel_pr_Dout_slr1] [get_bd_pins reset_controllers/slice_reset_kernel_pr_Dout_slr1]
  connect_bd_net -net slowest_sync_clk_1 [get_bd_pins clkwiz_sysclks_clk_out2] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_vip_ctrl_mgntpf/aclk] [get_bd_pins freq_counter_0/clk] [get_bd_pins reset_controllers/clkwiz_sysclks_clk_out2]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: interrupt_concat
proc create_hier_cell_interrupt_concat { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_interrupt_concat() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 127 -to 0 xlconcat_interrupt_dout

  # Create instance: xlconcat_interrupt, and set properties
  set xlconcat_interrupt [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_interrupt ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {4} \
 ] $xlconcat_interrupt

  # Create instance: xlconcat_interrupt_0, and set properties
  set xlconcat_interrupt_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_interrupt_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {32} \
 ] $xlconcat_interrupt_0

  # Create instance: xlconcat_interrupt_1, and set properties
  set xlconcat_interrupt_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_interrupt_1 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {32} \
 ] $xlconcat_interrupt_1

  # Create instance: xlconcat_interrupt_2, and set properties
  set xlconcat_interrupt_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_interrupt_2 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {32} \
 ] $xlconcat_interrupt_2

  # Create instance: xlconcat_interrupt_3, and set properties
  set xlconcat_interrupt_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_interrupt_3 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {32} \
 ] $xlconcat_interrupt_3

  # Create instance: xlconstant_gnd, and set properties
  set xlconstant_gnd [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_gnd ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_gnd

  # Create port connections
  connect_bd_net -net xlconcat_interrupt_0_dout [get_bd_pins xlconcat_interrupt/In0] [get_bd_pins xlconcat_interrupt_0/dout]
  connect_bd_net -net xlconcat_interrupt_1_dout [get_bd_pins xlconcat_interrupt/In1] [get_bd_pins xlconcat_interrupt_1/dout]
  connect_bd_net -net xlconcat_interrupt_2_dout [get_bd_pins xlconcat_interrupt/In2] [get_bd_pins xlconcat_interrupt_2/dout]
  connect_bd_net -net xlconcat_interrupt_3_dout [get_bd_pins xlconcat_interrupt/In3] [get_bd_pins xlconcat_interrupt_3/dout]
  connect_bd_net -net xlconcat_interrupt_dout [get_bd_pins xlconcat_interrupt_dout] [get_bd_pins xlconcat_interrupt/dout]
  connect_bd_net -net xlconstant_gnd_dout [get_bd_pins xlconcat_interrupt_0/In0] [get_bd_pins xlconcat_interrupt_0/In1] [get_bd_pins xlconcat_interrupt_0/In2] [get_bd_pins xlconcat_interrupt_0/In3] [get_bd_pins xlconcat_interrupt_0/In4] [get_bd_pins xlconcat_interrupt_0/In5] [get_bd_pins xlconcat_interrupt_0/In6] [get_bd_pins xlconcat_interrupt_0/In7] [get_bd_pins xlconcat_interrupt_0/In8] [get_bd_pins xlconcat_interrupt_0/In9] [get_bd_pins xlconcat_interrupt_0/In10] [get_bd_pins xlconcat_interrupt_0/In11] [get_bd_pins xlconcat_interrupt_0/In12] [get_bd_pins xlconcat_interrupt_0/In13] [get_bd_pins xlconcat_interrupt_0/In14] [get_bd_pins xlconcat_interrupt_0/In15] [get_bd_pins xlconcat_interrupt_0/In16] [get_bd_pins xlconcat_interrupt_0/In17] [get_bd_pins xlconcat_interrupt_0/In18] [get_bd_pins xlconcat_interrupt_0/In19] [get_bd_pins xlconcat_interrupt_0/In20] [get_bd_pins xlconcat_interrupt_0/In21] [get_bd_pins xlconcat_interrupt_0/In22] [get_bd_pins xlconcat_interrupt_0/In23] [get_bd_pins xlconcat_interrupt_0/In24] [get_bd_pins xlconcat_interrupt_0/In25] [get_bd_pins xlconcat_interrupt_0/In26] [get_bd_pins xlconcat_interrupt_0/In27] [get_bd_pins xlconcat_interrupt_0/In28] [get_bd_pins xlconcat_interrupt_0/In29] [get_bd_pins xlconcat_interrupt_0/In30] [get_bd_pins xlconcat_interrupt_0/In31] [get_bd_pins xlconcat_interrupt_1/In0] [get_bd_pins xlconcat_interrupt_1/In1] [get_bd_pins xlconcat_interrupt_1/In2] [get_bd_pins xlconcat_interrupt_1/In3] [get_bd_pins xlconcat_interrupt_1/In4] [get_bd_pins xlconcat_interrupt_1/In5] [get_bd_pins xlconcat_interrupt_1/In6] [get_bd_pins xlconcat_interrupt_1/In7] [get_bd_pins xlconcat_interrupt_1/In8] [get_bd_pins xlconcat_interrupt_1/In9] [get_bd_pins xlconcat_interrupt_1/In10] [get_bd_pins xlconcat_interrupt_1/In11] [get_bd_pins xlconcat_interrupt_1/In12] [get_bd_pins xlconcat_interrupt_1/In13] [get_bd_pins xlconcat_interrupt_1/In14] [get_bd_pins xlconcat_interrupt_1/In15] [get_bd_pins xlconcat_interrupt_1/In16] [get_bd_pins xlconcat_interrupt_1/In17] [get_bd_pins xlconcat_interrupt_1/In18] [get_bd_pins xlconcat_interrupt_1/In19] [get_bd_pins xlconcat_interrupt_1/In20] [get_bd_pins xlconcat_interrupt_1/In21] [get_bd_pins xlconcat_interrupt_1/In22] [get_bd_pins xlconcat_interrupt_1/In23] [get_bd_pins xlconcat_interrupt_1/In24] [get_bd_pins xlconcat_interrupt_1/In25] [get_bd_pins xlconcat_interrupt_1/In26] [get_bd_pins xlconcat_interrupt_1/In27] [get_bd_pins xlconcat_interrupt_1/In28] [get_bd_pins xlconcat_interrupt_1/In29] [get_bd_pins xlconcat_interrupt_1/In30] [get_bd_pins xlconcat_interrupt_1/In31] [get_bd_pins xlconcat_interrupt_2/In0] [get_bd_pins xlconcat_interrupt_2/In1] [get_bd_pins xlconcat_interrupt_2/In2] [get_bd_pins xlconcat_interrupt_2/In3] [get_bd_pins xlconcat_interrupt_2/In4] [get_bd_pins xlconcat_interrupt_2/In5] [get_bd_pins xlconcat_interrupt_2/In6] [get_bd_pins xlconcat_interrupt_2/In7] [get_bd_pins xlconcat_interrupt_2/In8] [get_bd_pins xlconcat_interrupt_2/In9] [get_bd_pins xlconcat_interrupt_2/In10] [get_bd_pins xlconcat_interrupt_2/In11] [get_bd_pins xlconcat_interrupt_2/In12] [get_bd_pins xlconcat_interrupt_2/In13] [get_bd_pins xlconcat_interrupt_2/In14] [get_bd_pins xlconcat_interrupt_2/In15] [get_bd_pins xlconcat_interrupt_2/In16] [get_bd_pins xlconcat_interrupt_2/In17] [get_bd_pins xlconcat_interrupt_2/In18] [get_bd_pins xlconcat_interrupt_2/In19] [get_bd_pins xlconcat_interrupt_2/In20] [get_bd_pins xlconcat_interrupt_2/In21] [get_bd_pins xlconcat_interrupt_2/In22] [get_bd_pins xlconcat_interrupt_2/In23] [get_bd_pins xlconcat_interrupt_2/In24] [get_bd_pins xlconcat_interrupt_2/In25] [get_bd_pins xlconcat_interrupt_2/In26] [get_bd_pins xlconcat_interrupt_2/In27] [get_bd_pins xlconcat_interrupt_2/In28] [get_bd_pins xlconcat_interrupt_2/In29] [get_bd_pins xlconcat_interrupt_2/In30] [get_bd_pins xlconcat_interrupt_2/In31] [get_bd_pins xlconcat_interrupt_3/In0] [get_bd_pins xlconcat_interrupt_3/In1] [get_bd_pins xlconcat_interrupt_3/In2] [get_bd_pins xlconcat_interrupt_3/In3] [get_bd_pins xlconcat_interrupt_3/In4] [get_bd_pins xlconcat_interrupt_3/In5] [get_bd_pins xlconcat_interrupt_3/In6] [get_bd_pins xlconcat_interrupt_3/In7] [get_bd_pins xlconcat_interrupt_3/In8] [get_bd_pins xlconcat_interrupt_3/In9] [get_bd_pins xlconcat_interrupt_3/In10] [get_bd_pins xlconcat_interrupt_3/In11] [get_bd_pins xlconcat_interrupt_3/In12] [get_bd_pins xlconcat_interrupt_3/In13] [get_bd_pins xlconcat_interrupt_3/In14] [get_bd_pins xlconcat_interrupt_3/In15] [get_bd_pins xlconcat_interrupt_3/In16] [get_bd_pins xlconcat_interrupt_3/In17] [get_bd_pins xlconcat_interrupt_3/In18] [get_bd_pins xlconcat_interrupt_3/In19] [get_bd_pins xlconcat_interrupt_3/In20] [get_bd_pins xlconcat_interrupt_3/In21] [get_bd_pins xlconcat_interrupt_3/In22] [get_bd_pins xlconcat_interrupt_3/In23] [get_bd_pins xlconcat_interrupt_3/In24] [get_bd_pins xlconcat_interrupt_3/In25] [get_bd_pins xlconcat_interrupt_3/In26] [get_bd_pins xlconcat_interrupt_3/In27] [get_bd_pins xlconcat_interrupt_3/In28] [get_bd_pins xlconcat_interrupt_3/In29] [get_bd_pins xlconcat_interrupt_3/In30] [get_bd_pins xlconcat_interrupt_3/In31] [get_bd_pins xlconstant_gnd/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set BLP_S_AXI_CTRL_USER_00 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name BLP_S_AXI_CTRL_USER_00_araddr direction I left 24 right 0 } \
   ARPROT { physical_name BLP_S_AXI_CTRL_USER_00_arprot direction I left 2 right 0 } \
   ARREADY { physical_name BLP_S_AXI_CTRL_USER_00_arready direction O } \
   ARVALID { physical_name BLP_S_AXI_CTRL_USER_00_arvalid direction I } \
   AWADDR { physical_name BLP_S_AXI_CTRL_USER_00_awaddr direction I left 24 right 0 } \
   AWPROT { physical_name BLP_S_AXI_CTRL_USER_00_awprot direction I left 2 right 0 } \
   AWREADY { physical_name BLP_S_AXI_CTRL_USER_00_awready direction O } \
   AWVALID { physical_name BLP_S_AXI_CTRL_USER_00_awvalid direction I } \
   BREADY { physical_name BLP_S_AXI_CTRL_USER_00_bready direction I } \
   BRESP { physical_name BLP_S_AXI_CTRL_USER_00_bresp direction O left 1 right 0 } \
   BVALID { physical_name BLP_S_AXI_CTRL_USER_00_bvalid direction O } \
   RDATA { physical_name BLP_S_AXI_CTRL_USER_00_rdata direction O left 31 right 0 } \
   RREADY { physical_name BLP_S_AXI_CTRL_USER_00_rready direction I } \
   RRESP { physical_name BLP_S_AXI_CTRL_USER_00_rresp direction O left 1 right 0 } \
   RVALID { physical_name BLP_S_AXI_CTRL_USER_00_rvalid direction O } \
   WDATA { physical_name BLP_S_AXI_CTRL_USER_00_wdata direction I left 31 right 0 } \
   WREADY { physical_name BLP_S_AXI_CTRL_USER_00_wready direction O } \
   WSTRB { physical_name BLP_S_AXI_CTRL_USER_00_wstrb direction I left 3 right 0 } \
   WVALID { physical_name BLP_S_AXI_CTRL_USER_00_wvalid direction I } \
   } \
  BLP_S_AXI_CTRL_USER_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PHASE {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_CTRL_USER_00
  set_property HDL_ATTRIBUTE.LOCKED {true} [get_bd_intf_ports BLP_S_AXI_CTRL_USER_00]

  set BLP_S_AXI_CTRL_USER_01 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name BLP_S_AXI_CTRL_USER_01_araddr direction I left 24 right 0 } \
   ARPROT { physical_name BLP_S_AXI_CTRL_USER_01_arprot direction I left 2 right 0 } \
   ARREADY { physical_name BLP_S_AXI_CTRL_USER_01_arready direction O } \
   ARVALID { physical_name BLP_S_AXI_CTRL_USER_01_arvalid direction I } \
   AWADDR { physical_name BLP_S_AXI_CTRL_USER_01_awaddr direction I left 24 right 0 } \
   AWPROT { physical_name BLP_S_AXI_CTRL_USER_01_awprot direction I left 2 right 0 } \
   AWREADY { physical_name BLP_S_AXI_CTRL_USER_01_awready direction O } \
   AWVALID { physical_name BLP_S_AXI_CTRL_USER_01_awvalid direction I } \
   BREADY { physical_name BLP_S_AXI_CTRL_USER_01_bready direction I } \
   BRESP { physical_name BLP_S_AXI_CTRL_USER_01_bresp direction O left 1 right 0 } \
   BVALID { physical_name BLP_S_AXI_CTRL_USER_01_bvalid direction O } \
   RDATA { physical_name BLP_S_AXI_CTRL_USER_01_rdata direction O left 31 right 0 } \
   RREADY { physical_name BLP_S_AXI_CTRL_USER_01_rready direction I } \
   RRESP { physical_name BLP_S_AXI_CTRL_USER_01_rresp direction O left 1 right 0 } \
   RVALID { physical_name BLP_S_AXI_CTRL_USER_01_rvalid direction O } \
   WDATA { physical_name BLP_S_AXI_CTRL_USER_01_wdata direction I left 31 right 0 } \
   WREADY { physical_name BLP_S_AXI_CTRL_USER_01_wready direction O } \
   WSTRB { physical_name BLP_S_AXI_CTRL_USER_01_wstrb direction I left 3 right 0 } \
   WVALID { physical_name BLP_S_AXI_CTRL_USER_01_wvalid direction I } \
   } \
  BLP_S_AXI_CTRL_USER_01 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PHASE {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_CTRL_USER_01
  set_property HDL_ATTRIBUTE.LOCKED {true} [get_bd_intf_ports BLP_S_AXI_CTRL_USER_01]

  set BLP_S_AXI_CTRL_USER_02 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name BLP_S_AXI_CTRL_USER_02_araddr direction I left 24 right 0 } \
   ARPROT { physical_name BLP_S_AXI_CTRL_USER_02_arprot direction I left 2 right 0 } \
   ARREADY { physical_name BLP_S_AXI_CTRL_USER_02_arready direction O } \
   ARVALID { physical_name BLP_S_AXI_CTRL_USER_02_arvalid direction I } \
   AWADDR { physical_name BLP_S_AXI_CTRL_USER_02_awaddr direction I left 24 right 0 } \
   AWPROT { physical_name BLP_S_AXI_CTRL_USER_02_awprot direction I left 2 right 0 } \
   AWREADY { physical_name BLP_S_AXI_CTRL_USER_02_awready direction O } \
   AWVALID { physical_name BLP_S_AXI_CTRL_USER_02_awvalid direction I } \
   BREADY { physical_name BLP_S_AXI_CTRL_USER_02_bready direction I } \
   BRESP { physical_name BLP_S_AXI_CTRL_USER_02_bresp direction O left 1 right 0 } \
   BVALID { physical_name BLP_S_AXI_CTRL_USER_02_bvalid direction O } \
   RDATA { physical_name BLP_S_AXI_CTRL_USER_02_rdata direction O left 31 right 0 } \
   RREADY { physical_name BLP_S_AXI_CTRL_USER_02_rready direction I } \
   RRESP { physical_name BLP_S_AXI_CTRL_USER_02_rresp direction O left 1 right 0 } \
   RVALID { physical_name BLP_S_AXI_CTRL_USER_02_rvalid direction O } \
   WDATA { physical_name BLP_S_AXI_CTRL_USER_02_wdata direction I left 31 right 0 } \
   WREADY { physical_name BLP_S_AXI_CTRL_USER_02_wready direction O } \
   WSTRB { physical_name BLP_S_AXI_CTRL_USER_02_wstrb direction I left 3 right 0 } \
   WVALID { physical_name BLP_S_AXI_CTRL_USER_02_wvalid direction I } \
   } \
  BLP_S_AXI_CTRL_USER_02 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {25} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {0} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PHASE {0} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_CTRL_USER_02
  set_property HDL_ATTRIBUTE.LOCKED {true} [get_bd_intf_ports BLP_S_AXI_CTRL_USER_02]

  set BLP_S_AXI_DATA_H2C_00 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name BLP_S_AXI_DATA_H2C_00_araddr direction I left 38 right 0 } \
   ARBURST { physical_name BLP_S_AXI_DATA_H2C_00_arburst direction I left 1 right 0 } \
   ARCACHE { physical_name BLP_S_AXI_DATA_H2C_00_arcache direction I left 3 right 0 } \
   ARID { physical_name BLP_S_AXI_DATA_H2C_00_arid direction I left 3 right 0 } \
   ARLEN { physical_name BLP_S_AXI_DATA_H2C_00_arlen direction I left 7 right 0 } \
   ARLOCK { physical_name BLP_S_AXI_DATA_H2C_00_arlock direction I left 0 right 0 } \
   ARPROT { physical_name BLP_S_AXI_DATA_H2C_00_arprot direction I left 2 right 0 } \
   ARREADY { physical_name BLP_S_AXI_DATA_H2C_00_arready direction O } \
   ARVALID { physical_name BLP_S_AXI_DATA_H2C_00_arvalid direction I } \
   AWADDR { physical_name BLP_S_AXI_DATA_H2C_00_awaddr direction I left 38 right 0 } \
   AWBURST { physical_name BLP_S_AXI_DATA_H2C_00_awburst direction I left 1 right 0 } \
   AWCACHE { physical_name BLP_S_AXI_DATA_H2C_00_awcache direction I left 3 right 0 } \
   AWID { physical_name BLP_S_AXI_DATA_H2C_00_awid direction I left 3 right 0 } \
   AWLEN { physical_name BLP_S_AXI_DATA_H2C_00_awlen direction I left 7 right 0 } \
   AWLOCK { physical_name BLP_S_AXI_DATA_H2C_00_awlock direction I left 0 right 0 } \
   AWPROT { physical_name BLP_S_AXI_DATA_H2C_00_awprot direction I left 2 right 0 } \
   AWREADY { physical_name BLP_S_AXI_DATA_H2C_00_awready direction O } \
   AWVALID { physical_name BLP_S_AXI_DATA_H2C_00_awvalid direction I } \
   BID { physical_name BLP_S_AXI_DATA_H2C_00_bid direction O left 3 right 0 } \
   BREADY { physical_name BLP_S_AXI_DATA_H2C_00_bready direction I } \
   BRESP { physical_name BLP_S_AXI_DATA_H2C_00_bresp direction O left 1 right 0 } \
   BVALID { physical_name BLP_S_AXI_DATA_H2C_00_bvalid direction O } \
   RDATA { physical_name BLP_S_AXI_DATA_H2C_00_rdata direction O left 511 right 0 } \
   RID { physical_name BLP_S_AXI_DATA_H2C_00_rid direction O left 3 right 0 } \
   RLAST { physical_name BLP_S_AXI_DATA_H2C_00_rlast direction O } \
   RREADY { physical_name BLP_S_AXI_DATA_H2C_00_rready direction I } \
   RRESP { physical_name BLP_S_AXI_DATA_H2C_00_rresp direction O left 1 right 0 } \
   RVALID { physical_name BLP_S_AXI_DATA_H2C_00_rvalid direction O } \
   WDATA { physical_name BLP_S_AXI_DATA_H2C_00_wdata direction I left 511 right 0 } \
   WLAST { physical_name BLP_S_AXI_DATA_H2C_00_wlast direction I } \
   WREADY { physical_name BLP_S_AXI_DATA_H2C_00_wready direction O } \
   WSTRB { physical_name BLP_S_AXI_DATA_H2C_00_wstrb direction I left 63 right 0 } \
   WVALID { physical_name BLP_S_AXI_DATA_H2C_00_wvalid direction I } \
   } \
  BLP_S_AXI_DATA_H2C_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {4} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {16} \
   CONFIG.NUM_READ_THREADS {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {16} \
   CONFIG.NUM_WRITE_THREADS {2} \
   CONFIG.PHASE {0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_DATA_H2C_00
  set_property HDL_ATTRIBUTE.LOCKED {true} [get_bd_intf_ports BLP_S_AXI_DATA_H2C_00]

  set BLP_S_AXI_DATA_H2C_01 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name BLP_S_AXI_DATA_H2C_01_araddr direction I left 39 right 0 } \
   ARBURST { physical_name BLP_S_AXI_DATA_H2C_01_arburst direction I left 1 right 0 } \
   ARCACHE { physical_name BLP_S_AXI_DATA_H2C_01_arcache direction I left 3 right 0 } \
   ARID { physical_name BLP_S_AXI_DATA_H2C_01_arid direction I left 1 right 0 } \
   ARLEN { physical_name BLP_S_AXI_DATA_H2C_01_arlen direction I left 7 right 0 } \
   ARLOCK { physical_name BLP_S_AXI_DATA_H2C_01_arlock direction I left 0 right 0 } \
   ARPROT { physical_name BLP_S_AXI_DATA_H2C_01_arprot direction I left 2 right 0 } \
   ARREADY { physical_name BLP_S_AXI_DATA_H2C_01_arready direction O } \
   ARVALID { physical_name BLP_S_AXI_DATA_H2C_01_arvalid direction I } \
   AWADDR { physical_name BLP_S_AXI_DATA_H2C_01_awaddr direction I left 39 right 0 } \
   AWBURST { physical_name BLP_S_AXI_DATA_H2C_01_awburst direction I left 1 right 0 } \
   AWCACHE { physical_name BLP_S_AXI_DATA_H2C_01_awcache direction I left 3 right 0 } \
   AWID { physical_name BLP_S_AXI_DATA_H2C_01_awid direction I left 1 right 0 } \
   AWLEN { physical_name BLP_S_AXI_DATA_H2C_01_awlen direction I left 7 right 0 } \
   AWLOCK { physical_name BLP_S_AXI_DATA_H2C_01_awlock direction I left 0 right 0 } \
   AWPROT { physical_name BLP_S_AXI_DATA_H2C_01_awprot direction I left 2 right 0 } \
   AWREADY { physical_name BLP_S_AXI_DATA_H2C_01_awready direction O } \
   AWVALID { physical_name BLP_S_AXI_DATA_H2C_01_awvalid direction I } \
   BID { physical_name BLP_S_AXI_DATA_H2C_01_bid direction O left 1 right 0 } \
   BREADY { physical_name BLP_S_AXI_DATA_H2C_01_bready direction I } \
   BRESP { physical_name BLP_S_AXI_DATA_H2C_01_bresp direction O left 1 right 0 } \
   BVALID { physical_name BLP_S_AXI_DATA_H2C_01_bvalid direction O } \
   RDATA { physical_name BLP_S_AXI_DATA_H2C_01_rdata direction O left 63 right 0 } \
   RID { physical_name BLP_S_AXI_DATA_H2C_01_rid direction O left 1 right 0 } \
   RLAST { physical_name BLP_S_AXI_DATA_H2C_01_rlast direction O } \
   RREADY { physical_name BLP_S_AXI_DATA_H2C_01_rready direction I } \
   RRESP { physical_name BLP_S_AXI_DATA_H2C_01_rresp direction O left 1 right 0 } \
   RVALID { physical_name BLP_S_AXI_DATA_H2C_01_rvalid direction O } \
   WDATA { physical_name BLP_S_AXI_DATA_H2C_01_wdata direction I left 63 right 0 } \
   WLAST { physical_name BLP_S_AXI_DATA_H2C_01_wlast direction I } \
   WREADY { physical_name BLP_S_AXI_DATA_H2C_01_wready direction O } \
   WSTRB { physical_name BLP_S_AXI_DATA_H2C_01_wstrb direction I left 7 right 0 } \
   WVALID { physical_name BLP_S_AXI_DATA_H2C_01_wvalid direction I } \
   } \
  BLP_S_AXI_DATA_H2C_01 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {40} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {2} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {16} \
   CONFIG.NUM_READ_THREADS {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {16} \
   CONFIG.NUM_WRITE_THREADS {2} \
   CONFIG.PHASE {0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_DATA_H2C_01
  set_property HDL_ATTRIBUTE.LOCKED {true} [get_bd_intf_ports BLP_S_AXI_DATA_H2C_01]

  set BLP_S_AXI_DATA_H2C_02 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name BLP_S_AXI_DATA_H2C_02_araddr direction I left 31 right 0 } \
   ARBURST { physical_name BLP_S_AXI_DATA_H2C_02_arburst direction I left 1 right 0 } \
   ARCACHE { physical_name BLP_S_AXI_DATA_H2C_02_arcache direction I left 3 right 0 } \
   ARLEN { physical_name BLP_S_AXI_DATA_H2C_02_arlen direction I left 7 right 0 } \
   ARLOCK { physical_name BLP_S_AXI_DATA_H2C_02_arlock direction I left 0 right 0 } \
   ARPROT { physical_name BLP_S_AXI_DATA_H2C_02_arprot direction I left 2 right 0 } \
   ARREADY { physical_name BLP_S_AXI_DATA_H2C_02_arready direction O } \
   ARVALID { physical_name BLP_S_AXI_DATA_H2C_02_arvalid direction I } \
   AWADDR { physical_name BLP_S_AXI_DATA_H2C_02_awaddr direction I left 31 right 0 } \
   AWBURST { physical_name BLP_S_AXI_DATA_H2C_02_awburst direction I left 1 right 0 } \
   AWCACHE { physical_name BLP_S_AXI_DATA_H2C_02_awcache direction I left 3 right 0 } \
   AWLEN { physical_name BLP_S_AXI_DATA_H2C_02_awlen direction I left 7 right 0 } \
   AWLOCK { physical_name BLP_S_AXI_DATA_H2C_02_awlock direction I left 0 right 0 } \
   AWPROT { physical_name BLP_S_AXI_DATA_H2C_02_awprot direction I left 2 right 0 } \
   AWREADY { physical_name BLP_S_AXI_DATA_H2C_02_awready direction O } \
   AWVALID { physical_name BLP_S_AXI_DATA_H2C_02_awvalid direction I } \
   BREADY { physical_name BLP_S_AXI_DATA_H2C_02_bready direction I } \
   BRESP { physical_name BLP_S_AXI_DATA_H2C_02_bresp direction O left 1 right 0 } \
   BVALID { physical_name BLP_S_AXI_DATA_H2C_02_bvalid direction O } \
   RDATA { physical_name BLP_S_AXI_DATA_H2C_02_rdata direction O left 31 right 0 } \
   RLAST { physical_name BLP_S_AXI_DATA_H2C_02_rlast direction O } \
   RREADY { physical_name BLP_S_AXI_DATA_H2C_02_rready direction I } \
   RRESP { physical_name BLP_S_AXI_DATA_H2C_02_rresp direction O left 1 right 0 } \
   RVALID { physical_name BLP_S_AXI_DATA_H2C_02_rvalid direction O } \
   WDATA { physical_name BLP_S_AXI_DATA_H2C_02_wdata direction I left 31 right 0 } \
   WLAST { physical_name BLP_S_AXI_DATA_H2C_02_wlast direction I } \
   WREADY { physical_name BLP_S_AXI_DATA_H2C_02_wready direction O } \
   WSTRB { physical_name BLP_S_AXI_DATA_H2C_02_wstrb direction I left 3 right 0 } \
   WVALID { physical_name BLP_S_AXI_DATA_H2C_02_wvalid direction I } \
   } \
  BLP_S_AXI_DATA_H2C_02 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {16} \
   CONFIG.NUM_READ_THREADS {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {16} \
   CONFIG.NUM_WRITE_THREADS {2} \
   CONFIG.PHASE {0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_DATA_H2C_02
  set_property HDL_ATTRIBUTE.LOCKED {true} [get_bd_intf_ports BLP_S_AXI_DATA_H2C_02]

  set BLP_S_AXI_DATA_H2C_03 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 -portmaps { \
   ARADDR { physical_name BLP_S_AXI_DATA_H2C_03_araddr direction I left 38 right 0 } \
   ARBURST { physical_name BLP_S_AXI_DATA_H2C_03_arburst direction I left 1 right 0 } \
   ARCACHE { physical_name BLP_S_AXI_DATA_H2C_03_arcache direction I left 3 right 0 } \
   ARID { physical_name BLP_S_AXI_DATA_H2C_03_arid direction I left 3 right 0 } \
   ARLEN { physical_name BLP_S_AXI_DATA_H2C_03_arlen direction I left 7 right 0 } \
   ARLOCK { physical_name BLP_S_AXI_DATA_H2C_03_arlock direction I left 0 right 0 } \
   ARPROT { physical_name BLP_S_AXI_DATA_H2C_03_arprot direction I left 2 right 0 } \
   ARREADY { physical_name BLP_S_AXI_DATA_H2C_03_arready direction O } \
   ARVALID { physical_name BLP_S_AXI_DATA_H2C_03_arvalid direction I } \
   AWADDR { physical_name BLP_S_AXI_DATA_H2C_03_awaddr direction I left 38 right 0 } \
   AWBURST { physical_name BLP_S_AXI_DATA_H2C_03_awburst direction I left 1 right 0 } \
   AWCACHE { physical_name BLP_S_AXI_DATA_H2C_03_awcache direction I left 3 right 0 } \
   AWID { physical_name BLP_S_AXI_DATA_H2C_03_awid direction I left 3 right 0 } \
   AWLEN { physical_name BLP_S_AXI_DATA_H2C_03_awlen direction I left 7 right 0 } \
   AWLOCK { physical_name BLP_S_AXI_DATA_H2C_03_awlock direction I left 0 right 0 } \
   AWPROT { physical_name BLP_S_AXI_DATA_H2C_03_awprot direction I left 2 right 0 } \
   AWREADY { physical_name BLP_S_AXI_DATA_H2C_03_awready direction O } \
   AWVALID { physical_name BLP_S_AXI_DATA_H2C_03_awvalid direction I } \
   BID { physical_name BLP_S_AXI_DATA_H2C_03_bid direction O left 3 right 0 } \
   BREADY { physical_name BLP_S_AXI_DATA_H2C_03_bready direction I } \
   BRESP { physical_name BLP_S_AXI_DATA_H2C_03_bresp direction O left 1 right 0 } \
   BVALID { physical_name BLP_S_AXI_DATA_H2C_03_bvalid direction O } \
   RDATA { physical_name BLP_S_AXI_DATA_H2C_03_rdata direction O left 127 right 0 } \
   RID { physical_name BLP_S_AXI_DATA_H2C_03_rid direction O left 3 right 0 } \
   RLAST { physical_name BLP_S_AXI_DATA_H2C_03_rlast direction O } \
   RREADY { physical_name BLP_S_AXI_DATA_H2C_03_rready direction I } \
   RRESP { physical_name BLP_S_AXI_DATA_H2C_03_rresp direction O left 1 right 0 } \
   RVALID { physical_name BLP_S_AXI_DATA_H2C_03_rvalid direction O } \
   WDATA { physical_name BLP_S_AXI_DATA_H2C_03_wdata direction I left 127 right 0 } \
   WLAST { physical_name BLP_S_AXI_DATA_H2C_03_wlast direction I } \
   WREADY { physical_name BLP_S_AXI_DATA_H2C_03_wready direction O } \
   WSTRB { physical_name BLP_S_AXI_DATA_H2C_03_wstrb direction I left 15 right 0 } \
   WVALID { physical_name BLP_S_AXI_DATA_H2C_03_wvalid direction I } \
   } \
  BLP_S_AXI_DATA_H2C_03 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {128} \
   CONFIG.FREQ_HZ {250000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {4} \
   CONFIG.INSERT_VIP {0} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {16} \
   CONFIG.NUM_READ_THREADS {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {16} \
   CONFIG.NUM_WRITE_THREADS {2} \
   CONFIG.PHASE {0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $BLP_S_AXI_DATA_H2C_03
  set_property HDL_ATTRIBUTE.LOCKED {true} [get_bd_intf_ports BLP_S_AXI_DATA_H2C_03]

  set io_clk_ddr_00 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 -portmaps { \
   CLK_N { physical_name io_clk_ddr_00_clk_n direction I left 0 right 0 } \
   CLK_P { physical_name io_clk_ddr_00_clk_p direction I left 0 right 0 } \
   } \
  io_clk_ddr_00 ]
  set_property -dict [ list \
   CONFIG.CAN_DEBUG {false} \
   CONFIG.FREQ_HZ {100000000} \
   ] $io_clk_ddr_00
  set_property HDL_ATTRIBUTE.LOCKED {true} [get_bd_intf_ports io_clk_ddr_00]

  set io_ddr_00 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 -portmaps { \
   ACT_N { physical_name io_ddr_00_act_n direction O } \
   ADR { physical_name io_ddr_00_adr direction O left 16 right 0 } \
   BA { physical_name io_ddr_00_ba direction O left 1 right 0 } \
   BG { physical_name io_ddr_00_bg direction O left 0 right 0 } \
   CK_C { physical_name io_ddr_00_ck_c direction O left 0 right 0 } \
   CK_T { physical_name io_ddr_00_ck_t direction O left 0 right 0 } \
   CKE { physical_name io_ddr_00_cke direction O left 0 right 0 } \
   CS_N { physical_name io_ddr_00_cs_n direction O left 0 right 0 } \
   DM_N { physical_name io_ddr_00_dm_n direction IO left 8 right 0 } \
   DQ { physical_name io_ddr_00_dq direction IO left 71 right 0 } \
   DQS_C { physical_name io_ddr_00_dqs_c direction IO left 8 right 0 } \
   DQS_T { physical_name io_ddr_00_dqs_t direction IO left 8 right 0 } \
   ODT { physical_name io_ddr_00_odt direction O left 0 right 0 } \
   RESET_N { physical_name io_ddr_00_reset_n direction O } \
   } \
  io_ddr_00 ]
  set_property -dict [ list \
   CONFIG.CAN_DEBUG {false} \
   ] $io_ddr_00
  set_property HDL_ATTRIBUTE.LOCKED {true} [get_bd_intf_ports io_ddr_00]


  # Create ports
  set blp_m_data_dna_from_ulp_00 [ create_bd_port -dir O -from 2 -to 0 -type data blp_m_data_dna_from_ulp_00 ]
  set blp_m_data_memory_calib_complete_00 [ create_bd_port -dir O -from 0 -to 0 -type data blp_m_data_memory_calib_complete_00 ]
  set blp_m_irq_cu_00 [ create_bd_port -dir O -from 127 -to 0 -type intr blp_m_irq_cu_00 ]
  set blp_s_aclk_ctrl_00 [ create_bd_port -dir I -type clk -freq_hz 50000000 blp_s_aclk_ctrl_00 ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {cd_ctrl_00} \
   CONFIG.PHASE {0} \
 ] $blp_s_aclk_ctrl_00
  set blp_s_aclk_kernel2_ref_clk_00 [ create_bd_port -dir I -type clk -freq_hz 500000000 blp_s_aclk_kernel2_ref_clk_00 ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {cd_kernel2_ref_clk_00} \
   CONFIG.PHASE {0} \
 ] $blp_s_aclk_kernel2_ref_clk_00
  set blp_s_aclk_kernel_ref_clk_00 [ create_bd_port -dir I -type clk -freq_hz 300000000 blp_s_aclk_kernel_ref_clk_00 ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {cd_kernel_ref_clk_00} \
   CONFIG.PHASE {0} \
 ] $blp_s_aclk_kernel_ref_clk_00
  set blp_s_aclk_pcie_00 [ create_bd_port -dir I -type clk -freq_hz 250000000 blp_s_aclk_pcie_00 ]
  set_property -dict [ list \
   CONFIG.CLK_DOMAIN {cd_pcie_00} \
   CONFIG.PHASE {0} \
 ] $blp_s_aclk_pcie_00
  set blp_s_aresetn_ctrl_00 [ create_bd_port -dir I -from 0 -to 0 -type rst blp_s_aresetn_ctrl_00 ]
  set blp_s_aresetn_kernel_ref_clk_00 [ create_bd_port -dir I -from 0 -to 0 -type rst blp_s_aresetn_kernel_ref_clk_00 ]
  set blp_s_aresetn_pcie_00 [ create_bd_port -dir I -from 0 -to 0 -type rst blp_s_aresetn_pcie_00 ]
  set blp_s_data_clkwiz_kernel_clk_out1_locked_00 [ create_bd_port -dir I -from 0 -to 0 -type data blp_s_data_clkwiz_kernel_clk_out1_locked_00 ]
  set blp_s_data_dout_dna_00 [ create_bd_port -dir I -from 0 -to 0 -type data blp_s_data_dout_dna_00 ]
  set blp_s_data_perstn_out_00 [ create_bd_port -dir I -from 2 -to 0 -type data blp_s_data_perstn_out_00 ]
  set blp_s_data_slice_pr_reset_to_ulp_00 [ create_bd_port -dir I -from 1 -to 0 -type data blp_s_data_slice_pr_reset_to_ulp_00 ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.ECC_TYPE {0} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 axi_bram_ctrl_0_bram ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {NO_CHANGE} \
   CONFIG.Operating_Mode_B {NO_CHANGE} \
   CONFIG.PRIM_type_to_Implement {URAM} \
 ] $axi_bram_ctrl_0_bram

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {2} \
   CONFIG.S00_HAS_REGSLICE {4} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.S01_HAS_REGSLICE {1} \
 ] $axi_interconnect_0

  # Create instance: axi_interconnect_0_p, and set properties
  set axi_interconnect_0_p [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0_p ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_REGSLICE {4} \
 ] $axi_interconnect_0_p

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {4} \
   CONFIG.S00_HAS_REGSLICE {4} \
   CONFIG.S01_HAS_REGSLICE {4} \
   CONFIG.S02_HAS_REGSLICE {4} \
   CONFIG.S03_HAS_REGSLICE {4} \
 ] $axi_interconnect_1

  # Create instance: axi_protocol_convert_0, and set properties
  set axi_protocol_convert_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {32} \
 ] $axi_protocol_convert_0

  # Create instance: axi_vip_0, and set properties
  set axi_vip_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 axi_vip_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.INTERFACE_MODE {MASTER} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
 ] $axi_vip_0

  # Create instance: axi_vip_0_p, and set properties
  set axi_vip_0_p [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 axi_vip_0_p ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {39} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {512} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {1} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.INTERFACE_MODE {MASTER} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
 ] $axi_vip_0_p

  # Create instance: ddr1_clk_bufg, and set properties
  set ddr1_clk_bufg [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.2 ddr1_clk_bufg ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {BUFG} \
 ] $ddr1_clk_bufg

  # Create instance: ddr1_clk_ibufds, and set properties
  set ddr1_clk_ibufds [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.2 ddr1_clk_ibufds ]

  # Create instance: ddrmem_1, and set properties
  set ddrmem_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4:2.2 ddrmem_1 ]
  set_property -dict [ list \
   CONFIG.C0.BANK_GROUP_WIDTH {1} \
   CONFIG.C0.DDR4_AxiAddressWidth {32} \
   CONFIG.C0.DDR4_AxiDataWidth {512} \
   CONFIG.C0.DDR4_CLKFBOUT_MULT {15} \
   CONFIG.C0.DDR4_CLKOUT0_DIVIDE {5} \
   CONFIG.C0.DDR4_CasLatency {17} \
   CONFIG.C0.DDR4_CasWriteLatency {12} \
   CONFIG.C0.DDR4_CustomParts {no_file_loaded} \
   CONFIG.C0.DDR4_DIVCLK_DIVIDE {1} \
   CONFIG.C0.DDR4_DataMask {NO_DM_NO_DBI} \
   CONFIG.C0.DDR4_DataWidth {72} \
   CONFIG.C0.DDR4_Ecc {true} \
   CONFIG.C0.DDR4_InputClockPeriod {9996} \
   CONFIG.C0.DDR4_MemoryPart {MT40A512M16HA-075E} \
   CONFIG.C0.DDR4_TimePeriod {833} \
   CONFIG.C0.DDR4_isCustom {false} \
   CONFIG.System_Clock {No_Buffer} \
 ] $ddrmem_1

  # Create instance: debug_bridge_xsdbm, and set properties
  set debug_bridge_xsdbm [ create_bd_cell -type ip -vlnv xilinx.com:ip:debug_bridge:3.0 debug_bridge_xsdbm ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_MODE {1} \
   CONFIG.C_DESIGN_TYPE {1} \
   CONFIG.C_ENABLE_CLK_DIVIDER {false} \
 ] $debug_bridge_xsdbm

  # Create instance: fpga_dna_module_0, and set properties
  set fpga_dna_module_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fpga_dna_module:1.0 fpga_dna_module_0 ]

  # Create instance: ii_level0_wire, and set properties
  set ii_level0_wire [ create_bd_cell -type ip -vlnv xilinx.com:ip:ii_level0_wire:1.0 ii_level0_wire ]

  # Create instance: ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat, and set properties
  set ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {4} \
 ] $ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat

  # Create instance: ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0, and set properties
  set ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {32} \
 ] $ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0

  # Create instance: ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1, and set properties
  set ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {32} \
 ] $ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1

  # Create instance: ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2, and set properties
  set ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {32} \
 ] $ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2

  # Create instance: ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3, and set properties
  set ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {32} \
 ] $ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3

  # Create instance: interrupt_concat
  create_hier_cell_interrupt_concat [current_bd_instance .] interrupt_concat

  # Create instance: irq_const_tieoff, and set properties
  set irq_const_tieoff [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 irq_const_tieoff ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $irq_const_tieoff

  # Create instance: krnl_ro_rtl_1, and set properties
  set krnl_ro_rtl_1 [ create_bd_cell -type ip -vlnv xilinx.com:RTLKernel:krnl_ro_rtl_int:1.0 krnl_ro_rtl_1 ]

  # Create instance: psreset_ddrmem_n_1, and set properties
  set psreset_ddrmem_n_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psreset_ddrmem_n_1 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $psreset_ddrmem_n_1

  # Create instance: regslice_periph_null, and set properties
  set regslice_periph_null [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_register_slice:2.1 regslice_periph_null ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {40} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.NUM_READ_OUTSTANDING {32} \
   CONFIG.NUM_WRITE_OUTSTANDING {32} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.REG_AR {0} \
   CONFIG.REG_AW {0} \
   CONFIG.REG_B {0} \
   CONFIG.REG_R {0} \
   CONFIG.REG_W {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
 ] $regslice_periph_null

  # Create instance: slr1
  create_hier_cell_slr1 [current_bd_instance .] slr1

  # Create instance: user_debug_bridge, and set properties
  set user_debug_bridge [ create_bd_cell -type ip -vlnv xilinx.com:ip:debug_bridge:3.0 user_debug_bridge ]
  set_property -dict [ list \
   CONFIG.C_BSCAN_MUX {1} \
   CONFIG.C_DEBUG_MODE {2} \
   CONFIG.C_NUM_BS_MASTER {1} \
   CONFIG.C_XVC_HW_ID {0x0001} \
 ] $user_debug_bridge

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {2} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {3} \
 ] $xlslice_2

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {3} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_3

  # Create instance: xlslice_4, and set properties
  set xlslice_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_4 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {3} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_4

  # Create interface connections
  connect_bd_intf_net -intf_net BLP_S_AXI_CTRL_USER_00_1 [get_bd_intf_ports BLP_S_AXI_CTRL_USER_00] [get_bd_intf_pins ii_level0_wire/BLP_S_AXI_CTRL_USER_00]
  connect_bd_intf_net -intf_net BLP_S_AXI_CTRL_USER_01_1 [get_bd_intf_ports BLP_S_AXI_CTRL_USER_01] [get_bd_intf_pins ii_level0_wire/BLP_S_AXI_CTRL_USER_01]
  connect_bd_intf_net -intf_net BLP_S_AXI_CTRL_USER_02_1 [get_bd_intf_ports BLP_S_AXI_CTRL_USER_02] [get_bd_intf_pins ii_level0_wire/BLP_S_AXI_CTRL_USER_02]
  connect_bd_intf_net -intf_net BLP_S_AXI_DATA_H2C_00_1 [get_bd_intf_ports BLP_S_AXI_DATA_H2C_00] [get_bd_intf_pins ii_level0_wire/BLP_S_AXI_DATA_H2C_00]
  connect_bd_intf_net -intf_net BLP_S_AXI_DATA_H2C_01_1 [get_bd_intf_ports BLP_S_AXI_DATA_H2C_01] [get_bd_intf_pins ii_level0_wire/BLP_S_AXI_DATA_H2C_01]
  connect_bd_intf_net -intf_net BLP_S_AXI_DATA_H2C_02_1 [get_bd_intf_ports BLP_S_AXI_DATA_H2C_02] [get_bd_intf_pins ii_level0_wire/BLP_S_AXI_DATA_H2C_02]
  connect_bd_intf_net -intf_net BLP_S_AXI_DATA_H2C_03_1 [get_bd_intf_ports BLP_S_AXI_DATA_H2C_03] [get_bd_intf_pins ii_level0_wire/BLP_S_AXI_DATA_H2C_03]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins axi_interconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI_P [get_bd_intf_pins axi_interconnect_0_p/M00_AXI] [get_bd_intf_pins axi_interconnect_1/S02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins axi_interconnect_1/M00_AXI] [get_bd_intf_pins ddrmem_1/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M01_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_interconnect_1/M01_AXI]
  connect_bd_intf_net -intf_net axi_protocol_convert_0_M_AXI [get_bd_intf_pins axi_protocol_convert_0/M_AXI] [get_bd_intf_pins user_debug_bridge/S_AXI]
  connect_bd_intf_net -intf_net axi_vip_0_M_AXI [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins axi_vip_0/M_AXI]
  connect_bd_intf_net -intf_net axi_vip_0_M_AXI_P [get_bd_intf_pins axi_interconnect_0_p/S00_AXI] [get_bd_intf_pins axi_vip_0_p/M_AXI]
  connect_bd_intf_net -intf_net ddrmem_1_C0_DDR4 [get_bd_intf_ports io_ddr_00] [get_bd_intf_pins ddrmem_1/C0_DDR4]
  connect_bd_intf_net -intf_net ii_level0_wire_ULP_M_AXI_CTRL_USER_00 [get_bd_intf_pins ii_level0_wire/ULP_M_AXI_CTRL_USER_00] [get_bd_intf_pins slr1/regslice_control_M_AXI_slr1]
  connect_bd_intf_net -intf_net ii_level0_wire_ULP_M_AXI_CTRL_USER_01 [get_bd_intf_pins ii_level0_wire/ULP_M_AXI_CTRL_USER_01] [get_bd_intf_pins slr1/regslice_control_periph_M_AXI_slr1]
  connect_bd_intf_net -intf_net ii_level0_wire_ULP_M_AXI_CTRL_USER_02 [get_bd_intf_pins ii_level0_wire/ULP_M_AXI_CTRL_USER_02] [get_bd_intf_pins slr1/regslice_control_userpf_M_AXI_slr1]
  connect_bd_intf_net -intf_net ii_level0_wire_ULP_M_AXI_DATA_H2C_00 [get_bd_intf_pins ii_level0_wire/ULP_M_AXI_DATA_H2C_00] [get_bd_intf_pins slr1/regslice_data_static_M_AXI_slr1]
  connect_bd_intf_net -intf_net ii_level0_wire_ULP_M_AXI_DATA_H2C_01 [get_bd_intf_pins ii_level0_wire/ULP_M_AXI_DATA_H2C_01] [get_bd_intf_pins regslice_periph_null/S_AXI]
  connect_bd_intf_net -intf_net ii_level0_wire_ULP_M_AXI_DATA_H2C_02 [get_bd_intf_pins axi_protocol_convert_0/S_AXI] [get_bd_intf_pins ii_level0_wire/ULP_M_AXI_DATA_H2C_02]
  connect_bd_intf_net -intf_net ii_level0_wire_ULP_M_AXI_DATA_H2C_03 [get_bd_intf_pins ii_level0_wire/ULP_M_AXI_DATA_H2C_03] [get_bd_intf_pins slr1/regslice_data_static_M_AXI_slr2]
  connect_bd_intf_net -intf_net io_clk_ddr_00_1 [get_bd_intf_ports io_clk_ddr_00] [get_bd_intf_pins ddr1_clk_ibufds/CLK_IN_D]
  connect_bd_intf_net -intf_net krnl_ro_rtl_1_m_axi_gmem [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins krnl_ro_rtl_1/m_axi_gmem]
  connect_bd_intf_net -intf_net slr1_M01_AXI [get_bd_intf_pins krnl_ro_rtl_1/s_axi_control] [get_bd_intf_pins slr1/M01_AXI]
  connect_bd_intf_net -intf_net slr1_M01_AXI1 [get_bd_intf_pins fpga_dna_module_0/s_axi_lite] [get_bd_intf_pins slr1/M01_AXI1]
  connect_bd_intf_net -intf_net slr1_axi_cdc_data_static_M_AXI [get_bd_intf_pins axi_interconnect_1/S01_AXI] [get_bd_intf_pins slr1/axi_cdc_data_static_M_AXI]
  connect_bd_intf_net -intf_net slr1_axi_cdc_data_static_M_AXI1 [get_bd_intf_pins axi_interconnect_1/S03_AXI] [get_bd_intf_pins slr1/axi_cdc_data_static_M_AXI1]
  connect_bd_intf_net -intf_net slr1_axi_vip_ctrl_mgntpf_M_AXI [get_bd_intf_pins ddrmem_1/C0_DDR4_S_AXI_CTRL] [get_bd_intf_pins slr1/axi_vip_ctrl_mgntpf_M_AXI]
  connect_bd_intf_net -intf_net user_debug_bridge_m0_bscan [get_bd_intf_pins debug_bridge_xsdbm/S_BSCAN] [get_bd_intf_pins user_debug_bridge/m0_bscan]

  # Create port connections
  connect_bd_net -net M00_ACLK_1 [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins ddrmem_1/c0_ddr4_ui_clk] [get_bd_pins psreset_ddrmem_n_1/slowest_sync_clk] [get_bd_pins slr1/M00_ACLK]
  connect_bd_net -net aux_reset_in_1 [get_bd_pins ddrmem_1/c0_init_calib_complete] [get_bd_pins ii_level0_wire/ulp_s_data_memory_calib_complete_00] [get_bd_pins slr1/aux_reset_in]
  connect_bd_net -net blp_s_aclk_ctrl_00_1 [get_bd_ports blp_s_aclk_ctrl_00] [get_bd_pins ii_level0_wire/blp_s_aclk_ctrl_00]
  connect_bd_net -net blp_s_aclk_kernel2_ref_clk_00_1 [get_bd_ports blp_s_aclk_kernel2_ref_clk_00] [get_bd_pins ii_level0_wire/blp_s_aclk_kernel2_ref_clk_00]
  connect_bd_net -net blp_s_aclk_kernel_ref_clk_00_1 [get_bd_ports blp_s_aclk_kernel_ref_clk_00] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins ii_level0_wire/blp_s_aclk_kernel_ref_clk_00] [get_bd_pins krnl_ro_rtl_1/ap_clk] [get_bd_pins slr1/blp_s_aclk_kernel_ref_clk_00]
  connect_bd_net -net blp_s_aclk_pcie_00_1 [get_bd_ports blp_s_aclk_pcie_00] [get_bd_pins ii_level0_wire/blp_s_aclk_pcie_00]
  connect_bd_net -net blp_s_aresetn_ctrl_00_1 [get_bd_ports blp_s_aresetn_ctrl_00] [get_bd_pins ii_level0_wire/blp_s_aresetn_ctrl_00]
  connect_bd_net -net blp_s_aresetn_kernel_ref_clk_00_1 [get_bd_ports blp_s_aresetn_kernel_ref_clk_00] [get_bd_pins ii_level0_wire/blp_s_aresetn_kernel_ref_clk_00]
  connect_bd_net -net blp_s_aresetn_pcie_00_1 [get_bd_ports blp_s_aresetn_pcie_00] [get_bd_pins ii_level0_wire/blp_s_aresetn_pcie_00]
  connect_bd_net -net blp_s_data_clkwiz_kernel_clk_out1_locked_00_1 [get_bd_ports blp_s_data_clkwiz_kernel_clk_out1_locked_00] [get_bd_pins ii_level0_wire/blp_s_data_clkwiz_kernel_clk_out1_locked_00]
  connect_bd_net -net blp_s_data_dout_dna_00_1 [get_bd_ports blp_s_data_dout_dna_00] [get_bd_pins ii_level0_wire/blp_s_data_dout_dna_00]
  connect_bd_net -net blp_s_data_perstn_out_00_1 [get_bd_ports blp_s_data_perstn_out_00] [get_bd_pins ii_level0_wire/blp_s_data_perstn_out_00]
  connect_bd_net -net blp_s_data_slice_pr_reset_to_ulp_00_1 [get_bd_ports blp_s_data_slice_pr_reset_to_ulp_00] [get_bd_pins ii_level0_wire/blp_s_data_slice_pr_reset_to_ulp_00]
  connect_bd_net -net clkwiz_kernel_clk_out1_1 [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0_p/ACLK] [get_bd_pins axi_interconnect_0_p/M00_ACLK] [get_bd_pins axi_interconnect_0_p/S00_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M01_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins axi_interconnect_1/S01_ACLK] [get_bd_pins axi_interconnect_1/S02_ACLK] [get_bd_pins axi_interconnect_1/S03_ACLK] [get_bd_pins axi_vip_0/aclk] [get_bd_pins axi_vip_0_p/aclk] [get_bd_pins ii_level0_wire/ulp_m_aclk_kernel_ref_clk_00] [get_bd_pins slr1/clkwiz_kernel_clk_out1]
  connect_bd_net -net clkwiz_sysclks_clk_out2_1 [get_bd_pins axi_protocol_convert_0/aclk] [get_bd_pins debug_bridge_xsdbm/clk] [get_bd_pins fpga_dna_module_0/s_axi_lite_aclk] [get_bd_pins ii_level0_wire/ulp_m_aclk_ctrl_00] [get_bd_pins slr1/clkwiz_sysclks_clk_out2] [get_bd_pins user_debug_bridge/s_axi_aclk]
  connect_bd_net -net ddr1_clk_bufg_BUFG_O [get_bd_pins ddr1_clk_bufg/BUFG_O] [get_bd_pins ddrmem_1/c0_sys_clk_i]
  connect_bd_net -net ddr1_clk_ibufds_IBUF_OUT [get_bd_pins ddr1_clk_bufg/BUFG_I] [get_bd_pins ddr1_clk_ibufds/IBUF_OUT]
  connect_bd_net -net ddrmem_1_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddrmem_1/c0_ddr4_ui_clk_sync_rst] [get_bd_pins psreset_ddrmem_n_1/ext_reset_in]
  connect_bd_net -net ii_level0_wire_blp_m_data_dna_from_ulp_00 [get_bd_ports blp_m_data_dna_from_ulp_00] [get_bd_pins ii_level0_wire/blp_m_data_dna_from_ulp_00]
  connect_bd_net -net ii_level0_wire_blp_m_data_memory_calib_complete_00 [get_bd_ports blp_m_data_memory_calib_complete_00] [get_bd_pins ii_level0_wire/blp_m_data_memory_calib_complete_00]
  connect_bd_net -net ii_level0_wire_blp_m_irq_cu_00 [get_bd_ports blp_m_irq_cu_00] [get_bd_pins ii_level0_wire/blp_m_irq_cu_00]
  connect_bd_net -net ii_level0_wire_ulp_m_aclk_kernel2_ref_clk_00 [get_bd_pins ii_level0_wire/ulp_m_aclk_kernel2_ref_clk_00] [get_bd_pins slr1/clkwiz_kernel2_clk_out1]
  connect_bd_net -net ii_level0_wire_ulp_m_aclk_pcie_00 [get_bd_pins ii_level0_wire/ulp_m_aclk_pcie_00] [get_bd_pins regslice_periph_null/aclk] [get_bd_pins slr1/dma_pcie_axi_aclk]
  connect_bd_net -net ii_level0_wire_ulp_m_aresetn_ctrl_00 [get_bd_pins axi_protocol_convert_0/aresetn] [get_bd_pins ii_level0_wire/ulp_m_aresetn_ctrl_00] [get_bd_pins user_debug_bridge/s_axi_aresetn]
  connect_bd_net -net ii_level0_wire_ulp_m_data_clkwiz_kernel2_clk_out1_locked_00 [get_bd_pins slr1/clkwiz_kernel2_locked_slr1] [get_bd_pins xlslice_3/Dout]
  connect_bd_net -net ii_level0_wire_ulp_m_data_clkwiz_kernel_clk_out1_locked_00 [get_bd_pins ii_level0_wire/ulp_m_data_clkwiz_kernel_clk_out1_locked_00] [get_bd_pins slr1/clkwiz_kernel_locked_slr1]
  connect_bd_net -net ii_level0_wire_ulp_m_data_clkwiz_sysclks_clk_out2_locked_00 [get_bd_pins slr1/clkwiz_sysclks_locked_slr1] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net ii_level0_wire_ulp_m_data_pcie_user_link_up_00 [get_bd_pins slr1/pcie_user_lnk_up_slr1] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net ii_level0_wire_ulp_m_data_perstn_out_00 [get_bd_pins ii_level0_wire/ulp_m_data_perstn_out_00] [get_bd_pins xlslice_2/Din] [get_bd_pins xlslice_3/Din] [get_bd_pins xlslice_4/Din]
  connect_bd_net -net ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00 [get_bd_pins ii_level0_wire/ulp_m_data_slice_pr_reset_to_ulp_00] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat/In0] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/dout]
  connect_bd_net -net ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1_dout [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat/In1] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/dout]
  connect_bd_net -net ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2_dout [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat/In2] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/dout]
  connect_bd_net -net ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3_dout [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat/In3] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/dout]
  connect_bd_net -net ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout [get_bd_pins ii_level0_wire/ulp_s_irq_cu_00] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat/dout]
  connect_bd_net -net irq_const_tieoff_dout [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In0] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In2] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In3] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In4] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In5] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In6] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In7] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In8] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In9] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In10] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In11] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In12] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In13] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In14] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In15] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In16] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In17] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In18] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In19] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In20] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In21] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In22] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In23] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In24] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In25] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In26] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In27] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In28] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In29] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In30] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In31] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In0] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In1] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In2] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In3] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In4] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In5] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In6] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In7] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In8] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In9] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In10] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In11] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In12] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In13] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In14] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In15] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In16] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In17] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In18] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In19] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In20] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In21] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In22] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In23] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In24] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In25] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In26] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In27] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In28] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In29] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In30] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_1/In31] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In0] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In1] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In2] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In3] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In4] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In5] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In6] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In7] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In8] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In9] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In10] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In11] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In12] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In13] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In14] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In15] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In16] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In17] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In18] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In19] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In20] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In21] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In22] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In23] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In24] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In25] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In26] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In27] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In28] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In29] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In30] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_2/In31] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In0] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In1] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In2] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In3] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In4] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In5] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In6] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In7] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In8] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In9] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In10] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In11] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In12] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In13] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In14] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In15] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In16] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In17] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In18] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In19] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In20] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In21] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In22] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In23] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In24] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In25] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In26] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In27] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In28] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In29] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In30] [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_3/In31] [get_bd_pins irq_const_tieoff/dout]
  connect_bd_net -net krnl_ro_rtl_1_interrupt [get_bd_pins ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0/In1] [get_bd_pins krnl_ro_rtl_1/interrupt]
  connect_bd_net -net psreset_ddrmem_n_1_interconnect_aresetn [get_bd_pins ddrmem_1/c0_ddr4_aresetn] [get_bd_pins psreset_ddrmem_n_1/interconnect_aresetn] [get_bd_pins slr1/M00_ARESETN]
  connect_bd_net -net slr1_interconnect_aresetn [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins slr1/interconnect_aresetn]
  connect_bd_net -net slr1_logic_reset_op_Res [get_bd_pins ddrmem_1/sys_rst] [get_bd_pins slr1/logic_reset_op_Res]
  connect_bd_net -net slr1_peripheral_aresetn [get_bd_pins krnl_ro_rtl_1/ap_rst_n] [get_bd_pins slr1/peripheral_aresetn]
  connect_bd_net -net slr1_psreset_gate_pr_control_interconnect_aresetn [get_bd_pins fpga_dna_module_0/s_axi_lite_aresetn] [get_bd_pins slr1/psreset_gate_pr_control_interconnect_aresetn]
  connect_bd_net -net slr1_psreset_gate_pr_data_interconnect_aresetn [get_bd_pins regslice_periph_null/aresetn] [get_bd_pins slr1/psreset_gate_pr_data_interconnect_aresetn]
  connect_bd_net -net slr1_psreset_gate_pr_kernel_interconnect_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_interconnect_0_p/ARESETN] [get_bd_pins axi_interconnect_0_p/M00_ARESETN] [get_bd_pins axi_interconnect_0_p/S00_ARESETN] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins axi_interconnect_1/M01_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins axi_interconnect_1/S01_ARESETN] [get_bd_pins axi_interconnect_1/S02_ARESETN] [get_bd_pins axi_interconnect_1/S03_ARESETN] [get_bd_pins axi_vip_0/aresetn] [get_bd_pins axi_vip_0_p/aresetn] [get_bd_pins slr1/psreset_gate_pr_kernel_interconnect_aresetn]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins slr1/slice_reset_kernel_pr_Dout_slr1] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_4_Dout [get_bd_pins slr1/iob_static_perst_n_out] [get_bd_pins xlslice_4/Dout]

  # Create address segments
  assign_bd_address -offset 0x004100000000 -range 0x00008000 -target_address_space [get_bd_addr_spaces axi_vip_0/Master_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x004000000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces axi_vip_0/Master_AXI] [get_bd_addr_segs ddrmem_1/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] -force
  assign_bd_address -offset 0x004100000000 -range 0x00008000 -target_address_space [get_bd_addr_spaces axi_vip_0_p/Master_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x004000000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces axi_vip_0_p/Master_AXI] [get_bd_addr_segs ddrmem_1/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] -force
  assign_bd_address -offset 0x004100000000 -range 0x00008000 -target_address_space [get_bd_addr_spaces ii_level0_wire/ulp_m_axi_data_h2c_00] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x004100000000 -range 0x00008000 -target_address_space [get_bd_addr_spaces ii_level0_wire/ulp_m_axi_data_h2c_03] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x01800000 -range 0x00010000 -target_address_space [get_bd_addr_spaces ii_level0_wire/ulp_m_axi_ctrl_user_02] [get_bd_addr_segs slr1/axi_gpio_null/S_AXI/Reg] -force
  assign_bd_address -offset 0x004000000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces ii_level0_wire/ulp_m_axi_data_h2c_00] [get_bd_addr_segs ddrmem_1/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] -force
  assign_bd_address -offset 0x01000000 -range 0x00100000 -target_address_space [get_bd_addr_spaces ii_level0_wire/ulp_m_axi_ctrl_user_00] [get_bd_addr_segs ddrmem_1/C0_DDR4_MEMORY_MAP_CTRL/C0_REG] -force
  assign_bd_address -offset 0x01100000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ii_level0_wire/ulp_m_axi_ctrl_user_00] [get_bd_addr_segs fpga_dna_module_0/s_axi_lite/reg0] -force
  assign_bd_address -offset 0x00052000 -range 0x00001000 -target_address_space [get_bd_addr_spaces ii_level0_wire/ulp_m_axi_ctrl_user_01] [get_bd_addr_segs slr1/freq_counter_0/axil/reg0] -force
  assign_bd_address -offset 0x01810000 -range 0x00010000 -target_address_space [get_bd_addr_spaces ii_level0_wire/ulp_m_axi_ctrl_user_02] [get_bd_addr_segs krnl_ro_rtl_1/s_axi_control/reg0] -force
  assign_bd_address -offset 0x000C0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces ii_level0_wire/ulp_m_axi_data_h2c_02] [get_bd_addr_segs user_debug_bridge/S_AXI/REG] -force
  assign_bd_address -offset 0x004100000000 -range 0x00008000 -target_address_space [get_bd_addr_spaces krnl_ro_rtl_1/m_axi_gmem] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x004000000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces krnl_ro_rtl_1/m_axi_gmem] [get_bd_addr_segs ddrmem_1/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] -force
  assign_bd_address -offset 0x004000000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces BLP_S_AXI_DATA_H2C_00] [get_bd_addr_segs ii_level0_wire/blp_s_axi_data_h2c_00/DDR4_MEM_00] -force
  assign_bd_address -offset 0x000C0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces BLP_S_AXI_DATA_H2C_02] [get_bd_addr_segs ii_level0_wire/blp_s_axi_data_h2c_02/DDR4_MEM_00] -force
  assign_bd_address -offset 0x004100000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces BLP_S_AXI_DATA_H2C_03] [get_bd_addr_segs ii_level0_wire/blp_s_axi_data_h2c_03/PLRAM_MEM_00] -force
  assign_bd_address -offset 0x008000000000 -range 0x000400000000 -target_address_space [get_bd_addr_spaces BLP_S_AXI_DATA_H2C_01] [get_bd_addr_segs ii_level0_wire/blp_s_axi_data_h2c_01/PROFILE_MEM_00] -force
  assign_bd_address -offset 0x01000000 -range 0x00800000 -target_address_space [get_bd_addr_spaces BLP_S_AXI_CTRL_USER_00] [get_bd_addr_segs ii_level0_wire/blp_s_axi_ctrl_user_00/UNKNOWN_SEGMENTS_00] -force
  assign_bd_address -offset 0x00052000 -range 0x00001000 -target_address_space [get_bd_addr_spaces BLP_S_AXI_CTRL_USER_01] [get_bd_addr_segs ii_level0_wire/blp_s_axi_ctrl_user_01/UNKNOWN_SEGMENTS_00] -force
  assign_bd_address -offset 0x01800000 -range 0x00400000 -target_address_space [get_bd_addr_spaces BLP_S_AXI_CTRL_USER_02] [get_bd_addr_segs ii_level0_wire/blp_s_axi_ctrl_user_02/UNKNOWN_SEGMENTS_00] -force

  # Exclude Address Segments
  exclude_bd_addr_seg -offset 0x004000000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces ii_level0_wire/ulp_m_axi_data_h2c_03] [get_bd_addr_segs ddrmem_1/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK]


  # Restore current instance
  current_bd_instance $oldCurInst

  # Create PFM attributes
  set_property PFM_NAME {xilinx.com:xd:xilinx_u2_gen3x4_xdma_202020_1:202020.1} [get_files [current_bd_design].bd]
  set_property PFM.CLOCK {
                        clkwiz_kernel2_clk_out1 {id "1"  is_default "false"  proc_sys_reset "slr1/reset_controllers/psreset_gate_pr_kernel2"  status "scalable"}  } [get_bd_ports /blp_s_aclk_kernel2_ref_clk_00]
  set_property PFM.CLOCK {
                        clkwiz_kernel_clk_out1 {id "0"  is_default "true"  proc_sys_reset "slr1/reset_controllers/psreset_gate_pr_kernel"  status "scalable" }  } [get_bd_ports /blp_s_aclk_kernel_ref_clk_00]
  set_property PFM.AXI_PORT {S01_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S02_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S03_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S04_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S05_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S06_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S07_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S08_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S09_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S10_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S11_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S12_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S13_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S14_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"} S15_AXI {memport "S_AXI_HP" sptag "bank0" memory "ddrmem_1 C0_DDR4_ADDRESS_BLOCK"}} [get_bd_cells /axi_interconnect_0]
  set_property PFM.AXI_PORT {S01_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S02_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S03_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S04_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S05_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S06_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S07_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S08_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S09_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S10_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S11_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S12_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S13_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S14_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"} S15_AXI {memport "S_AXI_HP" sptag "plram" memory "axi_bram_ctrl_0 Mem0"}} [get_bd_cells /axi_interconnect_0_p]
  set_property PFM.IRQ { ulp_s_irq_cu_00 { id 0 range 128} } [get_bd_cells /ii_level0_wire]
  set_property PFM.AXI_PORT {M01_AXI {memport "M_AXI_GP"} M02_AXI {memport "M_AXI_GP"} M03_AXI {memport "M_AXI_GP"} M04_AXI {memport "M_AXI_GP"} M05_AXI {memport "M_AXI_GP"} M06_AXI {memport "M_AXI_GP"} M07_AXI {memport "M_AXI_GP"} M08_AXI {memport "M_AXI_GP"} M09_AXI {memport "M_AXI_GP"} M10_AXI {memport "M_AXI_GP"} M11_AXI {memport "M_AXI_GP"} M12_AXI {memport "M_AXI_GP"} M13_AXI {memport "M_AXI_GP"} M14_AXI {memport "M_AXI_GP"} M15_AXI {memport "M_AXI_GP"} M16_AXI {memport "M_AXI_GP"} M17_AXI {memport "M_AXI_GP"} M18_AXI {memport "M_AXI_GP"} M19_AXI {memport "M_AXI_GP"} M20_AXI {memport "M_AXI_GP"} M21_AXI {memport "M_AXI_GP"} M22_AXI {memport "M_AXI_GP"} M23_AXI {memport "M_AXI_GP"} M24_AXI {memport "M_AXI_GP"} M25_AXI {memport "M_AXI_GP"} M26_AXI {memport "M_AXI_GP"} M27_AXI {memport "M_AXI_GP"} M28_AXI {memport "M_AXI_GP"} M29_AXI {memport "M_AXI_GP"} M30_AXI {memport "M_AXI_GP"} M31_AXI {memport "M_AXI_GP"} M32_AXI {memport "M_AXI_GP"} M33_AXI {memport "M_AXI_GP"} M34_AXI {memport "M_AXI_GP"} M35_AXI {memport "M_AXI_GP"} M36_AXI {memport "M_AXI_GP"} M37_AXI {memport "M_AXI_GP"} M38_AXI {memport "M_AXI_GP"} M39_AXI {memport "M_AXI_GP"} M40_AXI {memport "M_AXI_GP"} M41_AXI {memport "M_AXI_GP"} M42_AXI {memport "M_AXI_GP"} M43_AXI {memport "M_AXI_GP"} M44_AXI {memport "M_AXI_GP"} M45_AXI {memport "M_AXI_GP"} M46_AXI {memport "M_AXI_GP"} M47_AXI {memport "M_AXI_GP"} M48_AXI {memport "M_AXI_GP"} M49_AXI {memport "M_AXI_GP"} M50_AXI {memport "M_AXI_GP"} M51_AXI {memport "M_AXI_GP"} M52_AXI {memport "M_AXI_GP"} M53_AXI {memport "M_AXI_GP"} M54_AXI {memport "M_AXI_GP"} M55_AXI {memport "M_AXI_GP"} M56_AXI {memport "M_AXI_GP"} M57_AXI {memport "M_AXI_GP"} M58_AXI {memport "M_AXI_GP"} M59_AXI {memport "M_AXI_GP"} M60_AXI {memport "M_AXI_GP"} M61_AXI {memport "M_AXI_GP"} M62_AXI {memport "M_AXI_GP"}} [get_bd_cells /slr1/interconnect_axilite_user]


  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


