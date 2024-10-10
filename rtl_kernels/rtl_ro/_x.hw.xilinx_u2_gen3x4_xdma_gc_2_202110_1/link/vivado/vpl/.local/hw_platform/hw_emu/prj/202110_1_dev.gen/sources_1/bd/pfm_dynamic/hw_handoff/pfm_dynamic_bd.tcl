
################################################################
# This is a generated script based on design: pfm_dynamic
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
# source pfm_dynamic_script.tcl

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
set design_name pfm_dynamic

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

   create_bd_design $design_name

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


# Hierarchical cell: slr0
proc create_hier_cell_slr0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_slr0() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 PLP_S_AXI_CTRL_USER_00


  # Create pins
  create_bd_pin -dir I -type clk dma_pcie_aclk
  create_bd_pin -dir I -type rst dma_pcie_arst

  # Create instance: interconnect_axilite_user_0, and set properties
  set interconnect_axilite_user_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 interconnect_axilite_user_0 ]
  set_property -dict [ list \
   CONFIG.M01_HAS_REGSLICE {1} \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
   CONFIG.SLR_ASSIGNMENTS {SLR0} \
 ] $interconnect_axilite_user_0
  set_property HDL_ATTRIBUTE.DPA_AXILITE_MASTER {primary} [get_bd_cells /slr0/interconnect_axilite_user_0]

  # Create instance: to_delete_kernel_ctrl_0, and set properties
  set to_delete_kernel_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 to_delete_kernel_ctrl_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net interconnect_axilite_0_M00_AXI [get_bd_intf_pins interconnect_axilite_user_0/M00_AXI] [get_bd_intf_pins to_delete_kernel_ctrl_0/S_AXI]
  connect_bd_intf_net -intf_net urp_ctrl_PLP_S_AXI_CTRL_USER_00 [get_bd_intf_pins PLP_S_AXI_CTRL_USER_00] [get_bd_intf_pins interconnect_axilite_user_0/S00_AXI]

  # Create port connections
  connect_bd_net -net dma_pcie_aclk_net [get_bd_pins dma_pcie_aclk] [get_bd_pins interconnect_axilite_user_0/ACLK] [get_bd_pins interconnect_axilite_user_0/M00_ACLK] [get_bd_pins interconnect_axilite_user_0/M01_ACLK] [get_bd_pins interconnect_axilite_user_0/S00_ACLK] [get_bd_pins to_delete_kernel_ctrl_0/s_axi_aclk]
  connect_bd_net -net dma_pcie_arst_net [get_bd_pins dma_pcie_arst] [get_bd_pins interconnect_axilite_user_0/ARESETN] [get_bd_pins interconnect_axilite_user_0/M00_ARESETN] [get_bd_pins interconnect_axilite_user_0/M01_ARESETN] [get_bd_pins interconnect_axilite_user_0/S00_ARESETN] [get_bd_pins to_delete_kernel_ctrl_0/s_axi_aresetn]

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

  # Create port connections
  connect_bd_net -net xlconcat_interrupt_0_dout [get_bd_pins xlconcat_interrupt/In0] [get_bd_pins xlconcat_interrupt_0/dout]
  connect_bd_net -net xlconcat_interrupt_1_dout [get_bd_pins xlconcat_interrupt/In1] [get_bd_pins xlconcat_interrupt_1/dout]
  connect_bd_net -net xlconcat_interrupt_2_dout [get_bd_pins xlconcat_interrupt/In2] [get_bd_pins xlconcat_interrupt_2/dout]
  connect_bd_net -net xlconcat_interrupt_3_dout [get_bd_pins xlconcat_interrupt/In3] [get_bd_pins xlconcat_interrupt_3/dout]
  connect_bd_net -net xlconcat_interrupt_dout [get_bd_pins xlconcat_interrupt_dout] [get_bd_pins xlconcat_interrupt/dout]

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
  set DDR4_MEM00_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 DDR4_MEM00_0 ]

  set PLP_S_AXI_CTRL_USER_00 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 PLP_S_AXI_CTRL_USER_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {300000000} \
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
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $PLP_S_AXI_CTRL_USER_00
  set_property APERTURES {{0x1C00_0000 16M}} [get_bd_intf_ports PLP_S_AXI_CTRL_USER_00]

  set PLP_S_AXI_DATA_H2C_00 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 PLP_S_AXI_DATA_H2C_00 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {300000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {0} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $PLP_S_AXI_DATA_H2C_00
  set_property APERTURES {{0x0 1T}} [get_bd_intf_ports PLP_S_AXI_DATA_H2C_00]

  set S_AXI_CTRL_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_CTRL_0 ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {300000000} \
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
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $S_AXI_CTRL_0


  # Create ports
  set clkwiz_kernel2_clk_0 [ create_bd_port -dir I -type clk -freq_hz 500000000 clkwiz_kernel2_clk_0 ]
  set clkwiz_kernel2_rst_0 [ create_bd_port -dir I -type rst clkwiz_kernel2_rst_0 ]
  set clkwiz_kernel_clk_0 [ create_bd_port -dir I -type clk -freq_hz 300000000 clkwiz_kernel_clk_0 ]
  set clkwiz_kernel_rst_0 [ create_bd_port -dir I -type rst clkwiz_kernel_rst_0 ]
  set dma_pcie_aclk [ create_bd_port -dir I -type clk -freq_hz 300000000 dma_pcie_aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {PLP_S_AXI_CTRL_USER_00:PLP_S_AXI_DATA_H2C_00:S_AXI_CTRL_0} \
 ] $dma_pcie_aclk
  set dma_pcie_arst [ create_bd_port -dir I -from 0 -to 0 -type rst dma_pcie_arst ]
  set irq [ create_bd_port -dir O -from 127 -to 0 -type intr irq ]

  # Create instance: axi_bram_null_0, and set properties
  set axi_bram_null_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_null_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.ECC_TYPE {0} \
 ] $axi_bram_null_0

  # Create instance: c0_sys, and set properties
  set c0_sys [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 c0_sys ]
  set_property -dict [ list \
   CONFIG.CLOCK_TYPE {Differential} \
   CONFIG.FREQ_HZ {100000000} \
 ] $c0_sys

  set_property SELECTED_SIM_MODEL rtl  $c0_sys

  # Create instance: interrupt_concat
  create_hier_cell_interrupt_concat [current_bd_instance .] interrupt_concat

  # Create instance: kernel2_clk, and set properties
  set kernel2_clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 kernel2_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {500000000} \
 ] $kernel2_clk

  set_property SELECTED_SIM_MODEL rtl  $kernel2_clk

  # Create instance: kernel_clk, and set properties
  set kernel_clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 kernel_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
 ] $kernel_clk

  set_property SELECTED_SIM_MODEL rtl  $kernel_clk

  # Create instance: memory_subsystem, and set properties
  set memory_subsystem [ create_bd_cell -type ip -vlnv xilinx.com:ip:sdx_memory_subsystem:1.0 memory_subsystem ]
  set_property -dict [ list \
   CONFIG.ADVANCED_PROPERTIES {resource_map_replication { S00_AXI {} } plram_specifications {  { SIZE 128K AXI_DATA_WIDTH 512 SLR_ASSIGNMENT SLR0 }  } resource_access_constraints {S00_AXI {DDR4_MEM00 PLRAM_MEM00}} __temp_dsa_info {excluded_board_components {} axi_passthrough {}}} \
   CONFIG.NUM_CLKS {1} \
   CONFIG.NUM_SI {1} \
 ] $memory_subsystem
  set_property HDL_ATTRIBUTE.DPA_TRACE_SLAVE {true} [get_bd_cells memory_subsystem]

  # Create instance: pfm_clk_2, and set properties
  set pfm_clk_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 pfm_clk_2 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
 ] $pfm_clk_2

  set_property SELECTED_SIM_MODEL rtl  $pfm_clk_2

  # Create instance: pfm_clk_3, and set properties
  set pfm_clk_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 pfm_clk_3 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {250000000} \
 ] $pfm_clk_3

  set_property SELECTED_SIM_MODEL rtl  $pfm_clk_3

  # Create instance: profile_vip_0, and set properties
  set profile_vip_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 profile_vip_0 ]
  set_property -dict [ list \
   CONFIG.INTERFACE_MODE {PASS_THROUGH} \
 ] $profile_vip_0
  set_property HDL_ATTRIBUTE.DPA_TRACE_MASTER {true} [get_bd_intf_pins /profile_vip_0/M_AXI]

  # Create instance: psr_kernel2_clk_0, and set properties
  set psr_kernel2_clk_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_kernel2_clk_0 ]

  # Create instance: psr_kernel_clk_0, and set properties
  set psr_kernel_clk_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_kernel_clk_0 ]

  # Create instance: psr_pfm_clk_0_2, and set properties
  set psr_pfm_clk_0_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_pfm_clk_0_2 ]

  # Create instance: psr_pfm_clk_0_3, and set properties
  set psr_pfm_clk_0_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_pfm_clk_0_3 ]

  # Create instance: slr0
  create_hier_cell_slr0 [current_bd_instance .] slr0

  # Create instance: smartconn_data_0, and set properties
  set smartconn_data_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconn_data_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $smartconn_data_0

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXI_CTRL_0_1 [get_bd_intf_ports S_AXI_CTRL_0] [get_bd_intf_pins memory_subsystem/S_AXI_CTRL]
  connect_bd_intf_net -intf_net c0_sys [get_bd_intf_pins c0_sys/diff_clk] [get_bd_intf_pins memory_subsystem/DDR4_MEM00_DIFF_CLK]
  connect_bd_intf_net -intf_net memory_subsystem_DDR4_MEM00 [get_bd_intf_ports DDR4_MEM00_0] [get_bd_intf_pins memory_subsystem/DDR4_MEM00]
  connect_bd_intf_net -intf_net profile_vip_0_M_AXI [get_bd_intf_pins axi_bram_null_0/S_AXI] [get_bd_intf_pins profile_vip_0/M_AXI]
  connect_bd_intf_net -intf_net smartconn_data_0_ICN_S_AXI_0_AXI [get_bd_intf_pins memory_subsystem/S00_AXI] [get_bd_intf_pins smartconn_data_0/M00_AXI]
  connect_bd_intf_net -intf_net smartconn_data_0_M01_AXI [get_bd_intf_pins profile_vip_0/S_AXI] [get_bd_intf_pins smartconn_data_0/M01_AXI]
  connect_bd_intf_net -intf_net urp_conn_PLP_S_AXI_DATA_H2C_00 [get_bd_intf_ports PLP_S_AXI_DATA_H2C_00] [get_bd_intf_pins smartconn_data_0/S00_AXI]
  connect_bd_intf_net -intf_net urp_ctrl_PLP_S_AXI_CTRL_USER_00 [get_bd_intf_ports PLP_S_AXI_CTRL_USER_00] [get_bd_intf_pins slr0/PLP_S_AXI_CTRL_USER_00]

  # Create port connections
  connect_bd_net -net dma_pcie_aclk_net [get_bd_ports dma_pcie_aclk] [get_bd_pins axi_bram_null_0/s_axi_aclk] [get_bd_pins memory_subsystem/aclk] [get_bd_pins profile_vip_0/aclk] [get_bd_pins slr0/dma_pcie_aclk] [get_bd_pins smartconn_data_0/aclk]
  connect_bd_net -net dma_pcie_arst_net [get_bd_ports dma_pcie_arst] [get_bd_pins axi_bram_null_0/s_axi_aresetn] [get_bd_pins memory_subsystem/aresetn] [get_bd_pins profile_vip_0/aresetn] [get_bd_pins slr0/dma_pcie_arst] [get_bd_pins smartconn_data_0/aresetn]
  connect_bd_net -net irq_cu_1 [get_bd_ports irq] [get_bd_pins interrupt_concat/xlconcat_interrupt_dout]
  connect_bd_net -net kernel2_clk_clk [get_bd_pins kernel2_clk/clk] [get_bd_pins psr_kernel2_clk_0/slowest_sync_clk]
  connect_bd_net -net kernel2_clk_sync_rst [get_bd_pins kernel2_clk/sync_rst] [get_bd_pins psr_kernel2_clk_0/ext_reset_in]
  connect_bd_net -net kernel_clk_clk [get_bd_pins kernel_clk/clk] [get_bd_pins psr_kernel_clk_0/slowest_sync_clk]
  connect_bd_net -net kernel_clk_sync_rst [get_bd_pins kernel_clk/sync_rst] [get_bd_pins psr_kernel_clk_0/ext_reset_in]
  connect_bd_net -net pfm_clk_2_clk [get_bd_pins pfm_clk_2/clk] [get_bd_pins psr_pfm_clk_0_2/slowest_sync_clk]
  connect_bd_net -net pfm_clk_2_sync_rst [get_bd_pins pfm_clk_2/sync_rst] [get_bd_pins psr_pfm_clk_0_2/ext_reset_in]
  connect_bd_net -net pfm_clk_3_clk [get_bd_pins pfm_clk_3/clk] [get_bd_pins psr_pfm_clk_0_3/slowest_sync_clk]
  connect_bd_net -net pfm_clk_3_sync_rst [get_bd_pins pfm_clk_3/sync_rst] [get_bd_pins psr_pfm_clk_0_3/ext_reset_in]
  connect_bd_net -net psr_kernel_clk_0_peripheral_reset [get_bd_pins memory_subsystem/ddr4_mem00_sys_rst] [get_bd_pins psr_kernel_clk_0/peripheral_reset]

  # Create address segments
  assign_bd_address -offset 0xC0000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces PLP_S_AXI_DATA_H2C_00] [get_bd_addr_segs axi_bram_null_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x1C000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces PLP_S_AXI_CTRL_USER_00] [get_bd_addr_segs slr0/to_delete_kernel_ctrl_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x000400000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces PLP_S_AXI_DATA_H2C_00] [get_bd_addr_segs memory_subsystem/S00_AXI/DDR4_MEM00] -force
  assign_bd_address -offset 0x76000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces PLP_S_AXI_DATA_H2C_00] [get_bd_addr_segs memory_subsystem/S00_AXI/PLRAM_MEM00] -force

  # Exclude Address Segments
  exclude_bd_addr_seg -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces S_AXI_CTRL_0] [get_bd_addr_segs memory_subsystem/S_AXI_CTRL/DDR4_MEM00_CTRL]


  # Restore current instance
  current_bd_instance $oldCurInst

  # Create PFM attributes
  set_property PFM_NAME {xilinx:au2:xilinx_u2_gen3x4_xdma_gc_2_202110_1:202110.1} [get_files [current_bd_design].bd]
  set_property PFM.CLOCK {clk {id 1 is_default false  proc_sys_reset psr_kernel2_clk_0 status scalable}} [get_bd_cells /kernel2_clk]
  set_property PFM.CLOCK {clk {id 0 is_default true proc_sys_reset psr_kernel_clk_0 status scalable}} [get_bd_cells /kernel_clk]
  set_property PFM.MEMSS {DDR {DDR4_MEM00 "auto true slr SLR0 sptag bank0"} PLRAM {PLRAM_MEM00 "auto true slr SLR0 sptag plram"} HOST {}} [get_bd_cells /memory_subsystem]
  set_property PFM.CLOCK {clk {id 2 is_default false proc_sys_reset psr_pfm_clk_0_2 status fixed}} [get_bd_cells /pfm_clk_2]
  set_property PFM.CLOCK {clk {id 3 is_default false proc_sys_reset psr_pfm_clk_0_3 status fixed}} [get_bd_cells /pfm_clk_3]
  set_property PFM.IRQ {In0 {id 0} In1 {id 1} In2 {id 2} In3 {id 3} In4 {id 4} In5 {id 5} In6 {id 6} In7 {id 7} In8 {id 8} In9 {id 9}  In10 {id 10} In11 {id 11} In12 {id 12} In13 {id 13} In14 {id 14} In15 {id 15} In16 {id 16} In17 {id 17} In18 {id 18} In19 {id 19}  In20 {id 20} In21 {id 21} In22 {id 22} In23 {id 23} In24 {id 24} In25 {id 25} In26 {id 26} In27 {id 27} In28 {id 28} In29 {id 29}  In30 {id 30} In31 {id 31}} [get_bd_cells /interrupt_concat/xlconcat_interrupt_0]
  set_property PFM.IRQ {In0 {id 32} In1 {id 33} In2 {id 34} In3 {id 35} In4 {id 36} In5 {id 37} In6 {id 38} In7 {id 39} In8 {id 40}  In9 {id 41} In10 {id 42} In11 {id 43} In12 {id 44} In13 {id 45} In14 {id 46} In15 {id 47} In16 {id 48} In17 {id 49} In18 {id 50}  In19 {id 51} In20 {id 52} In21 {id 53} In22 {id 54} In23 {id 55} In24 {id 56} In25 {id 57} In26 {id 58} In27 {id 59} In28 {id 60}  In29 {id 61} In30 {id 62} In31 {id 63}} [get_bd_cells /interrupt_concat/xlconcat_interrupt_1]
  set_property PFM.IRQ {In0 {id 64} In1 {id 65} In2 {id 66} In3 {id 67} In4 {id 68} In5 {id 69} In6 {id 70} In7 {id 71} In8 {id 72} In9 {id 73} In10 {id 74}  In11 {id 75} In12 {id 76} In13 {id 77} In14 {id 78} In15 {id 79} In16 {id 80} In17 {id 81} In18 {id 82} In19 {id 83} In20 {id 84}  In21 {id 85} In22 {id 86} In23 {id 87} In24 {id 88} In25 {id 89} In26 {id 90} In27 {id 91} In28 {id 92} In29 {id 93}  In30 {id 94} In31 {id 95}} [get_bd_cells /interrupt_concat/xlconcat_interrupt_2]
  set_property PFM.IRQ {In0 {id 96} In1 {id 97} In2 {id 98} In3 {id 99} In4 {id 100} In5 {id 101} In6 {id 102} In7 {id 103} In8 {id 104} In9 {id 105}  In10 {id 106} In11 {id 107} In12 {id 108} In13 {id 109} In14 {id 110} In15 {id 111} In16 {id 112} In17 {id 113} In18 {id 114}  In19 {id 115} In20 {id 116} In21 {id 117} In22 {id 118} In23 {id 119} In24 {id 120} In25 {id 121} In26 {id 122} In27 {id 123}  In28 {id 124} In29 {id 125} In30 {id 126} In31 {id 127}} [get_bd_cells /interrupt_concat/xlconcat_interrupt_3]
  set_property PFM.AXI_PORT {M02_AXI {memport "M_AXI_GP"} M03_AXI {memport "M_AXI_GP"} M04_AXI {memport "M_AXI_GP"} M05_AXI {memport "M_AXI_GP"} M06_AXI {memport "M_AXI_GP"} M07_AXI {memport "M_AXI_GP"} M08_AXI {memport "M_AXI_GP"} M09_AXI {memport "M_AXI_GP"} M10_AXI {memport "M_AXI_GP"} M11_AXI {memport "M_AXI_GP"} M12_AXI {memport "M_AXI_GP"} M13_AXI {memport "M_AXI_GP"} M14_AXI {memport "M_AXI_GP"} M15_AXI {memport "M_AXI_GP"} M16_AXI {memport "M_AXI_GP"} M17_AXI {memport "M_AXI_GP"} M18_AXI {memport "M_AXI_GP"} M19_AXI {memport "M_AXI_GP"} M20_AXI {memport "M_AXI_GP"} M21_AXI {memport "M_AXI_GP"} M22_AXI {memport "M_AXI_GP"} M23_AXI {memport "M_AXI_GP"} M24_AXI {memport "M_AXI_GP"} M25_AXI {memport "M_AXI_GP"} M26_AXI {memport "M_AXI_GP"} M27_AXI {memport "M_AXI_GP"} M28_AXI {memport "M_AXI_GP"} M29_AXI {memport "M_AXI_GP"} M30_AXI {memport "M_AXI_GP"} M31_AXI {memport "M_AXI_GP"}} [get_bd_cells /slr0/interconnect_axilite_user_0]


  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


