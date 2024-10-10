
################################################################
# This is a generated script based on design: pfm_top
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
# source pfm_top_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# pfm_dynamic

# Please add the sources of those modules before sourcing this Tcl script.

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
set design_name pfm_top

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


# Hierarchical cell: clk_reset_wizard
proc create_hier_cell_clk_reset_wizard { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_clk_reset_wizard() - Empty argument(s)!"}
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
  create_bd_pin -dir O -type clk clkwiz_kernel2_clk
  create_bd_pin -dir O -type rst clkwiz_kernel2_rst
  create_bd_pin -dir O -type clk clkwiz_kernel_clk
  create_bd_pin -dir O -type rst clkwiz_kernel_rst

  # Create instance: kernel2_clk, and set properties
  set kernel2_clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 kernel2_clk ]
  set_property -dict [ list \
   CONFIG.CLOCK_CYCLES_BEFORE_SHUTDOWN {150} \
   CONFIG.FREQ_HZ {500000000} \
 ] $kernel2_clk

  set_property SELECTED_SIM_MODEL rtl  $kernel2_clk

  # Create instance: kernel_clk, and set properties
  set kernel_clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 kernel_clk ]
  set_property -dict [ list \
   CONFIG.CLOCK_CYCLES_BEFORE_SHUTDOWN {150} \
   CONFIG.FREQ_HZ {300000000} \
 ] $kernel_clk

  set_property SELECTED_SIM_MODEL rtl  $kernel_clk

  # Create port connections
  connect_bd_net -net kernel2_clk_clk [get_bd_pins clkwiz_kernel2_clk] [get_bd_pins kernel2_clk/clk]
  connect_bd_net -net kernel2_clk_sync_rst [get_bd_pins clkwiz_kernel2_rst] [get_bd_pins kernel2_clk/sync_rst]
  connect_bd_net -net kernel_clk_clk [get_bd_pins clkwiz_kernel_clk] [get_bd_pins kernel_clk/clk]
  connect_bd_net -net kernel_clk_sync_rst [get_bd_pins clkwiz_kernel_rst] [get_bd_pins kernel_clk/sync_rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: static_region
proc create_hier_cell_static_region { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_static_region() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXIMM


  # Create pins
  create_bd_pin -dir O -type clk clkwiz_kernel2_clk_0
  create_bd_pin -dir O -type rst clkwiz_kernel2_rst_0
  create_bd_pin -dir O -type clk clkwiz_kernel_clk_0
  create_bd_pin -dir O -type rst clkwiz_kernel_rst_0
  create_bd_pin -dir O -type clk dma_pcie_aclk
  create_bd_pin -dir O -from 0 -to 0 -type rst dma_pcie_arst
  create_bd_pin -dir I -from 127 -to 0 -type intr irq_cu

  # Create instance: axi_vip_0, and set properties
  set axi_vip_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 axi_vip_0 ]
  set_property -dict [ list \
   CONFIG.INTERFACE_MODE {PASS_THROUGH} \
 ] $axi_vip_0

  # Create instance: clk_reset_wizard
  create_hier_cell_clk_reset_wizard $hier_obj clk_reset_wizard

  # Create instance: connect_to_es_cu, and set properties
  set connect_to_es_cu [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 connect_to_es_cu ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {2} \
 ] $connect_to_es_cu

  # Create instance: dma_pcie_clk, and set properties
  set dma_pcie_clk [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 dma_pcie_clk ]
  set_property -dict [ list \
   CONFIG.CLOCK_CYCLES_BEFORE_SHUTDOWN {150} \
   CONFIG.FREQ_HZ {300000000.0} \
 ] $dma_pcie_clk

  set_property SELECTED_SIM_MODEL rtl  $dma_pcie_clk

  # Create instance: embedded_schedular, and set properties
  set embedded_schedular [ create_bd_cell -type ip -vlnv xilinx:ip:sim_ert_ss:1.0 embedded_schedular ]

  # Create instance: sim_address_0, and set properties
  set sim_address_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xtlm_aximm_decoupler:1.0 sim_address_0 ]
  set_property -dict [ list \
   CONFIG.C_M_AXIMM_ADDR_WIDTH {64} \
 ] $sim_address_0

  # Create instance: sim_qdma_0, and set properties
  set sim_qdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_qdma:1.0 sim_qdma_0 ]
  set_property -dict [ list \
   CONFIG.C_M_AXICTRL_ADDR_WIDTH {64} \
   CONFIG.C_M_AXICTRL_DATA_WIDTH {32} \
   CONFIG.C_M_AXIMM_ADDR_WIDTH {64} \
   CONFIG.C_M_AXIMM_ARUSER_WIDTH {32} \
   CONFIG.C_M_AXIMM_AWUSER_WIDTH {32} \
   CONFIG.C_M_AXIMM_DATA_WIDTH {32} \
   CONFIG.C_M_AXIMM_RUSER_WIDTH {32} \
   CONFIG.C_M_AXIMM_WUSER_WIDTH {32} \
 ] $sim_qdma_0

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {2} \
 ] $smartconnect_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins M_AXIMM] [get_bd_intf_pins sim_address_0/M_AXIMM]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins M00_AXI] [get_bd_intf_pins connect_to_es_cu/M00_AXI]
  connect_bd_intf_net -intf_net axi_vip_0_M_AXI [get_bd_intf_pins axi_vip_0/M_AXI] [get_bd_intf_pins sim_address_0/S_AXIMM]
  connect_bd_intf_net -intf_net connect_to_es_cu_M01_AXI [get_bd_intf_pins connect_to_es_cu/M01_AXI] [get_bd_intf_pins embedded_schedular/s_axi_ctrl_user]
  connect_bd_intf_net -intf_net embedded_schedular_m_axi_data_m2m [get_bd_intf_pins embedded_schedular/m_axi_data_m2m] [get_bd_intf_pins smartconnect_0/S01_AXI]
  connect_bd_intf_net -intf_net sim_ert_subsystem_0_maxi_lite_mb [get_bd_intf_pins connect_to_es_cu/S01_AXI] [get_bd_intf_pins embedded_schedular/maxi_lite_mb]
  connect_bd_intf_net -intf_net sim_qdma_0_M_AXICTRL [get_bd_intf_pins connect_to_es_cu/S00_AXI] [get_bd_intf_pins sim_qdma_0/M_AXICTRL]
  connect_bd_intf_net -intf_net sim_qdma_0_M_AXIMM [get_bd_intf_pins sim_qdma_0/M_AXIMM] [get_bd_intf_pins smartconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins axi_vip_0/S_AXI] [get_bd_intf_pins smartconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M01_AXI [get_bd_intf_pins embedded_schedular/s_axi_data_p2p] [get_bd_intf_pins smartconnect_0/M01_AXI]

  # Create port connections
  connect_bd_net -net clk_clkwiz_kernel2_clk [get_bd_pins clkwiz_kernel2_clk_0] [get_bd_pins clk_reset_wizard/clkwiz_kernel2_clk]
  connect_bd_net -net clk_clkwiz_kernel2_rst [get_bd_pins clkwiz_kernel2_rst_0] [get_bd_pins clk_reset_wizard/clkwiz_kernel2_rst]
  connect_bd_net -net clk_clkwiz_kernel_clk [get_bd_pins clkwiz_kernel_clk_0] [get_bd_pins clk_reset_wizard/clkwiz_kernel_clk]
  connect_bd_net -net clk_clkwiz_kernel_rst [get_bd_pins clkwiz_kernel_rst_0] [get_bd_pins clk_reset_wizard/clkwiz_kernel_rst]
  connect_bd_net -net dma_pcie_clk_clk [get_bd_pins dma_pcie_aclk] [get_bd_pins axi_vip_0/aclk] [get_bd_pins connect_to_es_cu/ACLK] [get_bd_pins connect_to_es_cu/M00_ACLK] [get_bd_pins connect_to_es_cu/M01_ACLK] [get_bd_pins connect_to_es_cu/S00_ACLK] [get_bd_pins connect_to_es_cu/S01_ACLK] [get_bd_pins dma_pcie_clk/clk] [get_bd_pins embedded_schedular/m_axi_data_m2m_aclk] [get_bd_pins embedded_schedular/maxi_lite_mb_aclk] [get_bd_pins embedded_schedular/s_axi_ctrl_user_aclk] [get_bd_pins embedded_schedular/s_axi_data_p2p_aclk] [get_bd_pins sim_address_0/m_aximm_aclk] [get_bd_pins sim_address_0/s_aximm_aclk] [get_bd_pins sim_qdma_0/m_axictrl_aclk] [get_bd_pins sim_qdma_0/m_aximm_aclk] [get_bd_pins smartconnect_0/aclk]
  connect_bd_net -net dma_pcie_clk_sync_rst [get_bd_pins dma_pcie_arst] [get_bd_pins axi_vip_0/aresetn] [get_bd_pins connect_to_es_cu/ARESETN] [get_bd_pins connect_to_es_cu/M00_ARESETN] [get_bd_pins connect_to_es_cu/M01_ARESETN] [get_bd_pins connect_to_es_cu/S00_ARESETN] [get_bd_pins connect_to_es_cu/S01_ARESETN] [get_bd_pins dma_pcie_clk/sync_rst] [get_bd_pins embedded_schedular/m_axi_data_m2m_aresetn] [get_bd_pins embedded_schedular/maxi_lite_mb_aresetn] [get_bd_pins embedded_schedular/s_axi_ctrl_user_aresetn] [get_bd_pins embedded_schedular/s_axi_data_p2p_aresetn] [get_bd_pins sim_address_0/m_aximm_aresetn] [get_bd_pins sim_address_0/s_aximm_aresetn] [get_bd_pins sim_qdma_0/m_axictrl_aresetn] [get_bd_pins sim_qdma_0/m_aximm_aresetn] [get_bd_pins smartconnect_0/aresetn]
  connect_bd_net -net irq_cu_1 [get_bd_pins irq_cu] [get_bd_pins embedded_schedular/interrupt_cu]

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

  # Create ports

  # Create instance: pfm_dynamic_inst, and set properties
  set pfm_dynamic_inst [ create_bd_cell -type module -reference pfm_dynamic pfm_dynamic_inst ]

  # Create instance: static_region
  create_hier_cell_static_region [current_bd_instance .] static_region

  # Create interface connections
  connect_bd_intf_net -intf_net static_region_M00_AXI [get_bd_intf_pins pfm_dynamic_inst/PLP_S_AXI_CTRL_USER_00] [get_bd_intf_pins static_region/M00_AXI]
  connect_bd_intf_net -intf_net static_region_M_AXIMM [get_bd_intf_pins pfm_dynamic_inst/PLP_S_AXI_DATA_H2C_00] [get_bd_intf_pins static_region/M_AXIMM]

  # Create port connections
  connect_bd_net -net irq_cu_1 [get_bd_pins pfm_dynamic_inst/irq] [get_bd_pins static_region/irq_cu]
  connect_bd_net -net static_region_clkwiz_kernel2_clk_0 [get_bd_pins pfm_dynamic_inst/clkwiz_kernel2_clk_0] [get_bd_pins static_region/clkwiz_kernel2_clk_0]
  connect_bd_net -net static_region_clkwiz_kernel2_rst_0 [get_bd_pins pfm_dynamic_inst/clkwiz_kernel2_rst_0] [get_bd_pins static_region/clkwiz_kernel2_rst_0]
  connect_bd_net -net static_region_clkwiz_kernel_clk_0 [get_bd_pins pfm_dynamic_inst/clkwiz_kernel_clk_0] [get_bd_pins static_region/clkwiz_kernel_clk_0]
  connect_bd_net -net static_region_clkwiz_kernel_rst_0 [get_bd_pins pfm_dynamic_inst/clkwiz_kernel_rst_0] [get_bd_pins static_region/clkwiz_kernel_rst_0]
  connect_bd_net -net static_region_dma_pcie_aclk [get_bd_pins pfm_dynamic_inst/dma_pcie_aclk] [get_bd_pins static_region/dma_pcie_aclk]
  connect_bd_net -net static_region_dma_pcie_arst [get_bd_pins pfm_dynamic_inst/dma_pcie_arst] [get_bd_pins static_region/dma_pcie_arst]

  # Create address segments
  assign_bd_address -offset 0x1C000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/maxi_lite_mb] [get_bd_addr_segs pfm_dynamic_inst/PLP_S_AXI_CTRL_USER_00/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/maxi_lite_mb] [get_bd_addr_segs static_region/embedded_schedular/s_axi_ctrl_user/s_axi_ctrl_user_reg] -force
  assign_bd_address -offset 0x76000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces static_region/sim_address_0/M_AXIMM] [get_bd_addr_segs pfm_dynamic_inst/PLP_S_AXI_DATA_H2C_00/Mem] -force
  assign_bd_address -offset 0x1C000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces static_region/sim_qdma_0/M_AXICTRL] [get_bd_addr_segs pfm_dynamic_inst/PLP_S_AXI_CTRL_USER_00/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x008000000000 -target_address_space [get_bd_addr_spaces static_region/sim_qdma_0/M_AXIMM] [get_bd_addr_segs static_region/sim_address_0/S_AXIMM/Reg] -force
  assign_bd_address -offset 0x008000000000 -range 0x00100000 -target_address_space [get_bd_addr_spaces static_region/sim_qdma_0/M_AXIMM] [get_bd_addr_segs static_region/embedded_schedular/s_axi_data_p2p/s_axi_data_p2p_mem] -force
  assign_bd_address -offset 0x00000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces static_region/sim_qdma_0/M_AXICTRL] [get_bd_addr_segs static_region/embedded_schedular/s_axi_ctrl_user/s_axi_ctrl_user_reg] -force

  # Exclude Address Segments
  exclude_bd_addr_seg -offset 0x008000000000 -range 0x00100000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/m_axi_data_m2m] [get_bd_addr_segs static_region/embedded_schedular/s_axi_data_p2p/s_axi_data_p2p_mem]
  exclude_bd_addr_seg -offset 0x00000000 -range 0x008000000000 -target_address_space [get_bd_addr_spaces static_region/embedded_schedular/m_axi_data_m2m] [get_bd_addr_segs static_region/sim_address_0/S_AXIMM/Reg]


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


