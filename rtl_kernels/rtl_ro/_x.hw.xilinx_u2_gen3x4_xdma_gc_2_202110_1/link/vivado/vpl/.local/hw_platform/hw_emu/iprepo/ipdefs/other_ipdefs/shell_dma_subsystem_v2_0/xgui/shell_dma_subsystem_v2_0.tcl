############################################################################################################################################
#
# (c) Copyright 2019 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
############################################################
#
############################################################################################################################################

#==========================================================================================================================================#
# GUI Initialisation Procedure
#==========================================================================================================================================#

proc init_gui { IPINST } {

  ipgui::add_param $IPINST -name "Component_Name"

  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set General_Config [ipgui::add_page $IPINST -name "General Configuration"]

      #------> Adding Group -------------------------------------------------------------------------------------------------------------------#
      set Impl_Group [ipgui::add_group $IPINST -name "Implementation Settings" -parent $General_Config]

          set HAS_TDM_SLR_CROSSING [ipgui::add_param $IPINST -name HAS_TDM_SLR_CROSSING -widget checkBox -parent $Impl_Group]
          set_property tooltip  "Enable AXI4-Stream TDM SLR Crossing logic. Not supported for Gen3x4 or -2LV Gen3x8"  $HAS_TDM_SLR_CROSSING

          set SUPPORTS_P2P [ipgui::add_param $IPINST -name SUPPORTS_P2P -parent $Impl_Group]
          set_property tooltip "Enable DMA Bypass AXI4 interface for P2P" $SUPPORTS_P2P

          set DMA_TYPE [ipgui::add_param $IPINST -name DMA_TYPE -widget comboBox -parent $Impl_Group]
          set_property tooltip "Select the required DMA IP instance type" $DMA_TYPE

          set PCIE_LINK_CAP_MAX [ipgui::add_param $IPINST -name PCIE_LINK_CAP_MAX -widget comboBox -parent $Impl_Group]
          set_property tooltip  "Select the required PCIE Link Width. This scales the AXI/AXIS interfaces and should align with the corresponding setting in the HIF Subsystem."  $PCIE_LINK_CAP_MAX
          
  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set Interrupt_Config [ipgui::add_page $IPINST -name "Interrupt Configuration"]
  
      #------> Adding Group -------------------------------------------------------------------------------------------------------------------#
      set Mgmt_Group [ipgui::add_group $IPINST -name "Management Interrupt Configuration" -parent $Interrupt_Config]
          
          set NUM_MGMT_IRQS [ipgui::add_param $IPINST -name NUM_MGMT_IRQS -parent $Mgmt_Group]
          set_property tooltip "Configure the required number of Management interrupt ports. The total number of interrupts across all enabled ports must not exceed 8." $NUM_MGMT_IRQS
          
          set MGMT_IRQ_WIDTH_0 [ipgui::add_param $IPINST -name MGMT_IRQ_WIDTH_0 -parent $Mgmt_Group]
          set_property tooltip "Configure the required width of Management interrupt port 0" $MGMT_IRQ_WIDTH_0
          
          set MGMT_IRQ_WIDTH_1 [ipgui::add_param $IPINST -name MGMT_IRQ_WIDTH_1 -parent $Mgmt_Group]
          set_property tooltip "Configure the required width of Management interrupt port 1" $MGMT_IRQ_WIDTH_1
          
          set MGMT_IRQ_WIDTH_2 [ipgui::add_param $IPINST -name MGMT_IRQ_WIDTH_2 -parent $Mgmt_Group]
          set_property tooltip "Configure the required width of Management interrupt port 2" $MGMT_IRQ_WIDTH_2
          
          set MGMT_IRQ_WIDTH_3 [ipgui::add_param $IPINST -name MGMT_IRQ_WIDTH_3 -parent $Mgmt_Group]
          set_property tooltip "Configure the required width of Management interrupt port 3" $MGMT_IRQ_WIDTH_3
          
          set MGMT_IRQ_WIDTH_4 [ipgui::add_param $IPINST -name MGMT_IRQ_WIDTH_4 -parent $Mgmt_Group]
          set_property tooltip "Configure the required width of Management interrupt port 4" $MGMT_IRQ_WIDTH_4
          
          set MGMT_IRQ_WIDTH_5 [ipgui::add_param $IPINST -name MGMT_IRQ_WIDTH_5 -parent $Mgmt_Group]
          set_property tooltip "Configure the required width of Management interrupt port 5" $MGMT_IRQ_WIDTH_5
          
          set MGMT_IRQ_WIDTH_6 [ipgui::add_param $IPINST -name MGMT_IRQ_WIDTH_6 -parent $Mgmt_Group]
          set_property tooltip "Configure the required width of Management interrupt port 6" $MGMT_IRQ_WIDTH_6
          
          set MGMT_IRQ_WIDTH_7 [ipgui::add_param $IPINST -name MGMT_IRQ_WIDTH_7 -parent $Mgmt_Group]
          set_property tooltip "Configure the required width of Management interrupt port 7" $MGMT_IRQ_WIDTH_7
          
      #------> Adding Group -------------------------------------------------------------------------------------------------------------------#
      set User_Group [ipgui::add_group $IPINST -name "User Interrupt Configuration" -parent $Interrupt_Config]    
          
          set NUM_USER_IRQS [ipgui::add_param $IPINST -name NUM_USER_IRQS -parent $User_Group]
          set_property tooltip "Configure the required number of User interrupt ports. The total number of interrupts across all enabled ports must not exceed 8." $NUM_USER_IRQS
          
          set USER_IRQ_WIDTH_0 [ipgui::add_param $IPINST -name USER_IRQ_WIDTH_0 -parent $User_Group]
          set_property tooltip "Configure the required width of User interrupt port 0" $USER_IRQ_WIDTH_0
          
          set USER_IRQ_WIDTH_1 [ipgui::add_param $IPINST -name USER_IRQ_WIDTH_1 -parent $User_Group]
          set_property tooltip "Configure the required width of User interrupt port 1" $USER_IRQ_WIDTH_1
          
          set USER_IRQ_WIDTH_2 [ipgui::add_param $IPINST -name USER_IRQ_WIDTH_2 -parent $User_Group]
          set_property tooltip "Configure the required width of User interrupt port 2" $USER_IRQ_WIDTH_2
          
          set USER_IRQ_WIDTH_3 [ipgui::add_param $IPINST -name USER_IRQ_WIDTH_3 -parent $User_Group]
          set_property tooltip "Configure the required width of User interrupt port 3" $USER_IRQ_WIDTH_3
          
          set USER_IRQ_WIDTH_4 [ipgui::add_param $IPINST -name USER_IRQ_WIDTH_4 -parent $User_Group]
          set_property tooltip "Configure the required width of User interrupt port 4" $USER_IRQ_WIDTH_4
          
          set USER_IRQ_WIDTH_5 [ipgui::add_param $IPINST -name USER_IRQ_WIDTH_5 -parent $User_Group]
          set_property tooltip "Configure the required width of User interrupt port 5" $USER_IRQ_WIDTH_5
          
          set USER_IRQ_WIDTH_6 [ipgui::add_param $IPINST -name USER_IRQ_WIDTH_6 -parent $User_Group]
          set_property tooltip "Configure the required width of User interrupt port 6" $USER_IRQ_WIDTH_6
          
          set USER_IRQ_WIDTH_7 [ipgui::add_param $IPINST -name USER_IRQ_WIDTH_7 -parent $User_Group]
          set_property tooltip "Configure the required width of User interrupt port 7" $USER_IRQ_WIDTH_7

}

#==========================================================================================================================================#
# Meta Parameter Initialisation Procedure
#==========================================================================================================================================#

proc init_meta_params { IPINST } {

    add_meta_param $IPINST -name MAX_MGMT_IRQS -type string -value 8
    add_meta_param $IPINST -name MAX_USER_IRQS -type string -value 8
    
}

#==========================================================================================================================================#
# Parameter Validation Procedures
#==========================================================================================================================================#

# Management Interrupt validation procedures

proc validate_PARAM_VALUE.MGMT_IRQ_WIDTH_0 { PARAM_VALUE.NUM_MGMT_IRQS PARAM_VALUE.MGMT_IRQ_WIDTH_0 PARAM_VALUE.MGMT_IRQ_WIDTH_1 PARAM_VALUE.MGMT_IRQ_WIDTH_2 PARAM_VALUE.MGMT_IRQ_WIDTH_3 PARAM_VALUE.MGMT_IRQ_WIDTH_4 PARAM_VALUE.MGMT_IRQ_WIDTH_5 PARAM_VALUE.MGMT_IRQ_WIDTH_6 PARAM_VALUE.MGMT_IRQ_WIDTH_7 IPINST } {

    set param_list [list MGMT_IRQ_WIDTH_0 MGMT_IRQ_WIDTH_1 MGMT_IRQ_WIDTH_2 MGMT_IRQ_WIDTH_3 MGMT_IRQ_WIDTH_4 MGMT_IRQ_WIDTH_5 MGMT_IRQ_WIDTH_6 MGMT_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_MGMT_IRQS]]} {
    
        set errmsg [concat "Total number of configured Management interrupts must not exceed " [get_metaparam_value MAX_MGMT_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.MGMT_IRQ_WIDTH_0}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.MGMT_IRQ_WIDTH_1 { PARAM_VALUE.NUM_MGMT_IRQS PARAM_VALUE.MGMT_IRQ_WIDTH_0 PARAM_VALUE.MGMT_IRQ_WIDTH_1 PARAM_VALUE.MGMT_IRQ_WIDTH_2 PARAM_VALUE.MGMT_IRQ_WIDTH_3 PARAM_VALUE.MGMT_IRQ_WIDTH_4 PARAM_VALUE.MGMT_IRQ_WIDTH_5 PARAM_VALUE.MGMT_IRQ_WIDTH_6 PARAM_VALUE.MGMT_IRQ_WIDTH_7 IPINST } {

    set param_list [list MGMT_IRQ_WIDTH_0 MGMT_IRQ_WIDTH_1 MGMT_IRQ_WIDTH_2 MGMT_IRQ_WIDTH_3 MGMT_IRQ_WIDTH_4 MGMT_IRQ_WIDTH_5 MGMT_IRQ_WIDTH_6 MGMT_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_MGMT_IRQS]]} {
    
        set errmsg [concat "Total number of configured Management interrupts must not exceed " [get_metaparam_value MAX_MGMT_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.MGMT_IRQ_WIDTH_1}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.MGMT_IRQ_WIDTH_2 { PARAM_VALUE.NUM_MGMT_IRQS PARAM_VALUE.MGMT_IRQ_WIDTH_0 PARAM_VALUE.MGMT_IRQ_WIDTH_1 PARAM_VALUE.MGMT_IRQ_WIDTH_2 PARAM_VALUE.MGMT_IRQ_WIDTH_3 PARAM_VALUE.MGMT_IRQ_WIDTH_4 PARAM_VALUE.MGMT_IRQ_WIDTH_5 PARAM_VALUE.MGMT_IRQ_WIDTH_6 PARAM_VALUE.MGMT_IRQ_WIDTH_7 IPINST } {

    set param_list [list MGMT_IRQ_WIDTH_0 MGMT_IRQ_WIDTH_1 MGMT_IRQ_WIDTH_2 MGMT_IRQ_WIDTH_3 MGMT_IRQ_WIDTH_4 MGMT_IRQ_WIDTH_5 MGMT_IRQ_WIDTH_6 MGMT_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_MGMT_IRQS]]} {
    
        set errmsg [concat "Total number of configured Management interrupts must not exceed " [get_metaparam_value MAX_MGMT_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.MGMT_IRQ_WIDTH_2}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.MGMT_IRQ_WIDTH_3 { PARAM_VALUE.NUM_MGMT_IRQS PARAM_VALUE.MGMT_IRQ_WIDTH_0 PARAM_VALUE.MGMT_IRQ_WIDTH_1 PARAM_VALUE.MGMT_IRQ_WIDTH_2 PARAM_VALUE.MGMT_IRQ_WIDTH_3 PARAM_VALUE.MGMT_IRQ_WIDTH_4 PARAM_VALUE.MGMT_IRQ_WIDTH_5 PARAM_VALUE.MGMT_IRQ_WIDTH_6 PARAM_VALUE.MGMT_IRQ_WIDTH_7 IPINST } {

    set param_list [list MGMT_IRQ_WIDTH_0 MGMT_IRQ_WIDTH_1 MGMT_IRQ_WIDTH_2 MGMT_IRQ_WIDTH_3 MGMT_IRQ_WIDTH_4 MGMT_IRQ_WIDTH_5 MGMT_IRQ_WIDTH_6 MGMT_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_MGMT_IRQS]]} {
    
        set errmsg [concat "Total number of configured Management interrupts must not exceed " [get_metaparam_value MAX_MGMT_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.MGMT_IRQ_WIDTH_3}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.MGMT_IRQ_WIDTH_4 { PARAM_VALUE.NUM_MGMT_IRQS PARAM_VALUE.MGMT_IRQ_WIDTH_0 PARAM_VALUE.MGMT_IRQ_WIDTH_1 PARAM_VALUE.MGMT_IRQ_WIDTH_2 PARAM_VALUE.MGMT_IRQ_WIDTH_3 PARAM_VALUE.MGMT_IRQ_WIDTH_4 PARAM_VALUE.MGMT_IRQ_WIDTH_5 PARAM_VALUE.MGMT_IRQ_WIDTH_6 PARAM_VALUE.MGMT_IRQ_WIDTH_7 IPINST } {

    set param_list [list MGMT_IRQ_WIDTH_0 MGMT_IRQ_WIDTH_1 MGMT_IRQ_WIDTH_2 MGMT_IRQ_WIDTH_3 MGMT_IRQ_WIDTH_4 MGMT_IRQ_WIDTH_5 MGMT_IRQ_WIDTH_6 MGMT_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_MGMT_IRQS]]} {
    
        set errmsg [concat "Total number of configured Management interrupts must not exceed " [get_metaparam_value MAX_MGMT_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.MGMT_IRQ_WIDTH_4}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.MGMT_IRQ_WIDTH_5 { PARAM_VALUE.NUM_MGMT_IRQS PARAM_VALUE.MGMT_IRQ_WIDTH_0 PARAM_VALUE.MGMT_IRQ_WIDTH_1 PARAM_VALUE.MGMT_IRQ_WIDTH_2 PARAM_VALUE.MGMT_IRQ_WIDTH_3 PARAM_VALUE.MGMT_IRQ_WIDTH_4 PARAM_VALUE.MGMT_IRQ_WIDTH_5 PARAM_VALUE.MGMT_IRQ_WIDTH_6 PARAM_VALUE.MGMT_IRQ_WIDTH_7 IPINST } {

    set param_list [list MGMT_IRQ_WIDTH_0 MGMT_IRQ_WIDTH_1 MGMT_IRQ_WIDTH_2 MGMT_IRQ_WIDTH_3 MGMT_IRQ_WIDTH_4 MGMT_IRQ_WIDTH_5 MGMT_IRQ_WIDTH_6 MGMT_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_MGMT_IRQS]]} {
    
        set errmsg [concat "Total number of configured Management interrupts must not exceed " [get_metaparam_value MAX_MGMT_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.MGMT_IRQ_WIDTH_5}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.MGMT_IRQ_WIDTH_6 { PARAM_VALUE.NUM_MGMT_IRQS PARAM_VALUE.MGMT_IRQ_WIDTH_0 PARAM_VALUE.MGMT_IRQ_WIDTH_1 PARAM_VALUE.MGMT_IRQ_WIDTH_2 PARAM_VALUE.MGMT_IRQ_WIDTH_3 PARAM_VALUE.MGMT_IRQ_WIDTH_4 PARAM_VALUE.MGMT_IRQ_WIDTH_5 PARAM_VALUE.MGMT_IRQ_WIDTH_6 PARAM_VALUE.MGMT_IRQ_WIDTH_7 IPINST } {

    set param_list [list MGMT_IRQ_WIDTH_0 MGMT_IRQ_WIDTH_1 MGMT_IRQ_WIDTH_2 MGMT_IRQ_WIDTH_3 MGMT_IRQ_WIDTH_4 MGMT_IRQ_WIDTH_5 MGMT_IRQ_WIDTH_6 MGMT_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_MGMT_IRQS]]} {
    
        set errmsg [concat "Total number of configured Management interrupts must not exceed " [get_metaparam_value MAX_MGMT_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.MGMT_IRQ_WIDTH_6}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.MGMT_IRQ_WIDTH_7 { PARAM_VALUE.NUM_MGMT_IRQS PARAM_VALUE.MGMT_IRQ_WIDTH_0 PARAM_VALUE.MGMT_IRQ_WIDTH_1 PARAM_VALUE.MGMT_IRQ_WIDTH_2 PARAM_VALUE.MGMT_IRQ_WIDTH_3 PARAM_VALUE.MGMT_IRQ_WIDTH_4 PARAM_VALUE.MGMT_IRQ_WIDTH_5 PARAM_VALUE.MGMT_IRQ_WIDTH_6 PARAM_VALUE.MGMT_IRQ_WIDTH_7 IPINST } {

    set param_list [list MGMT_IRQ_WIDTH_0 MGMT_IRQ_WIDTH_1 MGMT_IRQ_WIDTH_2 MGMT_IRQ_WIDTH_3 MGMT_IRQ_WIDTH_4 MGMT_IRQ_WIDTH_5 MGMT_IRQ_WIDTH_6 MGMT_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_MGMT_IRQS]]} {
    
        set errmsg [concat "Total number of configured Management interrupts must not exceed " [get_metaparam_value MAX_MGMT_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.MGMT_IRQ_WIDTH_7}
        return false
        
    }
    
    return true
    
}

# User Interrupt validation procedures

proc validate_PARAM_VALUE.USER_IRQ_WIDTH_0 { PARAM_VALUE.NUM_USER_IRQS PARAM_VALUE.USER_IRQ_WIDTH_0 PARAM_VALUE.USER_IRQ_WIDTH_1 PARAM_VALUE.USER_IRQ_WIDTH_2 PARAM_VALUE.USER_IRQ_WIDTH_3 PARAM_VALUE.USER_IRQ_WIDTH_4 PARAM_VALUE.USER_IRQ_WIDTH_5 PARAM_VALUE.USER_IRQ_WIDTH_6 PARAM_VALUE.USER_IRQ_WIDTH_7 IPINST } {

    set param_list [list USER_IRQ_WIDTH_0 USER_IRQ_WIDTH_1 USER_IRQ_WIDTH_2 USER_IRQ_WIDTH_3 USER_IRQ_WIDTH_4 USER_IRQ_WIDTH_5 USER_IRQ_WIDTH_6 USER_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_USER_IRQS]]} {
    
        set errmsg [concat "Total number of configured User interrupts must not exceed " [get_metaparam_value MAX_USER_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.USER_IRQ_WIDTH_0}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.USER_IRQ_WIDTH_1 { PARAM_VALUE.NUM_USER_IRQS PARAM_VALUE.USER_IRQ_WIDTH_0 PARAM_VALUE.USER_IRQ_WIDTH_1 PARAM_VALUE.USER_IRQ_WIDTH_2 PARAM_VALUE.USER_IRQ_WIDTH_3 PARAM_VALUE.USER_IRQ_WIDTH_4 PARAM_VALUE.USER_IRQ_WIDTH_5 PARAM_VALUE.USER_IRQ_WIDTH_6 PARAM_VALUE.USER_IRQ_WIDTH_7 IPINST } {

    set param_list [list USER_IRQ_WIDTH_0 USER_IRQ_WIDTH_1 USER_IRQ_WIDTH_2 USER_IRQ_WIDTH_3 USER_IRQ_WIDTH_4 USER_IRQ_WIDTH_5 USER_IRQ_WIDTH_6 USER_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_USER_IRQS]]} {
    
        set errmsg [concat "Total number of configured User interrupts must not exceed " [get_metaparam_value MAX_USER_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.USER_IRQ_WIDTH_1}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.USER_IRQ_WIDTH_2 { PARAM_VALUE.NUM_USER_IRQS PARAM_VALUE.USER_IRQ_WIDTH_0 PARAM_VALUE.USER_IRQ_WIDTH_1 PARAM_VALUE.USER_IRQ_WIDTH_2 PARAM_VALUE.USER_IRQ_WIDTH_3 PARAM_VALUE.USER_IRQ_WIDTH_4 PARAM_VALUE.USER_IRQ_WIDTH_5 PARAM_VALUE.USER_IRQ_WIDTH_6 PARAM_VALUE.USER_IRQ_WIDTH_7 IPINST } {

    set param_list [list USER_IRQ_WIDTH_0 USER_IRQ_WIDTH_1 USER_IRQ_WIDTH_2 USER_IRQ_WIDTH_3 USER_IRQ_WIDTH_4 USER_IRQ_WIDTH_5 USER_IRQ_WIDTH_6 USER_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_USER_IRQS]]} {
    
        set errmsg [concat "Total number of configured User interrupts must not exceed " [get_metaparam_value MAX_USER_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.USER_IRQ_WIDTH_2}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.USER_IRQ_WIDTH_3 { PARAM_VALUE.NUM_USER_IRQS PARAM_VALUE.USER_IRQ_WIDTH_0 PARAM_VALUE.USER_IRQ_WIDTH_1 PARAM_VALUE.USER_IRQ_WIDTH_2 PARAM_VALUE.USER_IRQ_WIDTH_3 PARAM_VALUE.USER_IRQ_WIDTH_4 PARAM_VALUE.USER_IRQ_WIDTH_5 PARAM_VALUE.USER_IRQ_WIDTH_6 PARAM_VALUE.USER_IRQ_WIDTH_7 IPINST } {

    set param_list [list USER_IRQ_WIDTH_0 USER_IRQ_WIDTH_1 USER_IRQ_WIDTH_2 USER_IRQ_WIDTH_3 USER_IRQ_WIDTH_4 USER_IRQ_WIDTH_5 USER_IRQ_WIDTH_6 USER_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_USER_IRQS]]} {
    
        set errmsg [concat "Total number of configured User interrupts must not exceed " [get_metaparam_value MAX_USER_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.USER_IRQ_WIDTH_3}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.USER_IRQ_WIDTH_4 { PARAM_VALUE.NUM_USER_IRQS PARAM_VALUE.USER_IRQ_WIDTH_0 PARAM_VALUE.USER_IRQ_WIDTH_1 PARAM_VALUE.USER_IRQ_WIDTH_2 PARAM_VALUE.USER_IRQ_WIDTH_3 PARAM_VALUE.USER_IRQ_WIDTH_4 PARAM_VALUE.USER_IRQ_WIDTH_5 PARAM_VALUE.USER_IRQ_WIDTH_6 PARAM_VALUE.USER_IRQ_WIDTH_7 IPINST } {

    set param_list [list USER_IRQ_WIDTH_0 USER_IRQ_WIDTH_1 USER_IRQ_WIDTH_2 USER_IRQ_WIDTH_3 USER_IRQ_WIDTH_4 USER_IRQ_WIDTH_5 USER_IRQ_WIDTH_6 USER_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_USER_IRQS]]} {
    
        set errmsg [concat "Total number of configured User interrupts must not exceed " [get_metaparam_value MAX_USER_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.USER_IRQ_WIDTH_4}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.USER_IRQ_WIDTH_5 { PARAM_VALUE.NUM_USER_IRQS PARAM_VALUE.USER_IRQ_WIDTH_0 PARAM_VALUE.USER_IRQ_WIDTH_1 PARAM_VALUE.USER_IRQ_WIDTH_2 PARAM_VALUE.USER_IRQ_WIDTH_3 PARAM_VALUE.USER_IRQ_WIDTH_4 PARAM_VALUE.USER_IRQ_WIDTH_5 PARAM_VALUE.USER_IRQ_WIDTH_6 PARAM_VALUE.USER_IRQ_WIDTH_7 IPINST } {

    set param_list [list USER_IRQ_WIDTH_0 USER_IRQ_WIDTH_1 USER_IRQ_WIDTH_2 USER_IRQ_WIDTH_3 USER_IRQ_WIDTH_4 USER_IRQ_WIDTH_5 USER_IRQ_WIDTH_6 USER_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_USER_IRQS]]} {
    
        set errmsg [concat "Total number of configured User interrupts must not exceed " [get_metaparam_value MAX_USER_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.USER_IRQ_WIDTH_5}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.USER_IRQ_WIDTH_6 { PARAM_VALUE.NUM_USER_IRQS PARAM_VALUE.USER_IRQ_WIDTH_0 PARAM_VALUE.USER_IRQ_WIDTH_1 PARAM_VALUE.USER_IRQ_WIDTH_2 PARAM_VALUE.USER_IRQ_WIDTH_3 PARAM_VALUE.USER_IRQ_WIDTH_4 PARAM_VALUE.USER_IRQ_WIDTH_5 PARAM_VALUE.USER_IRQ_WIDTH_6 PARAM_VALUE.USER_IRQ_WIDTH_7 IPINST } {

    set param_list [list USER_IRQ_WIDTH_0 USER_IRQ_WIDTH_1 USER_IRQ_WIDTH_2 USER_IRQ_WIDTH_3 USER_IRQ_WIDTH_4 USER_IRQ_WIDTH_5 USER_IRQ_WIDTH_6 USER_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_USER_IRQS]]} {
    
        set errmsg [concat "Total number of configured User interrupts must not exceed " [get_metaparam_value MAX_USER_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.USER_IRQ_WIDTH_6}
        return false
        
    }
    
    return true
    
}

proc validate_PARAM_VALUE.USER_IRQ_WIDTH_7 { PARAM_VALUE.NUM_USER_IRQS PARAM_VALUE.USER_IRQ_WIDTH_0 PARAM_VALUE.USER_IRQ_WIDTH_1 PARAM_VALUE.USER_IRQ_WIDTH_2 PARAM_VALUE.USER_IRQ_WIDTH_3 PARAM_VALUE.USER_IRQ_WIDTH_4 PARAM_VALUE.USER_IRQ_WIDTH_5 PARAM_VALUE.USER_IRQ_WIDTH_6 PARAM_VALUE.USER_IRQ_WIDTH_7 IPINST } {

    set param_list [list USER_IRQ_WIDTH_0 USER_IRQ_WIDTH_1 USER_IRQ_WIDTH_2 USER_IRQ_WIDTH_3 USER_IRQ_WIDTH_4 USER_IRQ_WIDTH_5 USER_IRQ_WIDTH_6 USER_IRQ_WIDTH_7]
    
    if {[expr [get_num_configured_irqs $param_list $IPINST] > [get_metaparam_value MAX_USER_IRQS]]} {
    
        set errmsg [concat "Total number of configured User interrupts must not exceed " [get_metaparam_value MAX_USER_IRQS]]
        set_property errmsg $errmsg ${PARAM_VALUE.USER_IRQ_WIDTH_7}
        return false
        
    }
    
    return true
    
}

#==========================================================================================================================================#
# Parameter Update Procedures
#==========================================================================================================================================#

proc update_PARAM_VALUE.VERSION.MAJOR_VERSION { PARAM_VALUE.VERSION.MAJOR_VERSION PROJECT_PARAM.DEVICE IPINST } {

    set version [get_property VERSION [current_ipcomp]]
    regexp {^(\d+)\.(\d+)$} $version -> major minor
    set_property value $major ${PARAM_VALUE.VERSION.MAJOR_VERSION}
    
    # Parameter not user configurable, disabled
    set_property enabled false ${PARAM_VALUE.VERSION.MAJOR_VERSION}
    
}

proc update_PARAM_VALUE.VERSION.MINOR_VERSION { PARAM_VALUE.VERSION.MINOR_VERSION PROJECT_PARAM.DEVICE IPINST } {

    set version [get_property VERSION [current_ipcomp]]
    regexp {^(\d+)\.(\d+)$} $version -> major minor
    set_property value $minor ${PARAM_VALUE.VERSION.MINOR_VERSION}
    
    # Parameter not user configurable, disabled
    set_property enabled false ${PARAM_VALUE.VERSION.MINOR_VERSION}
    
}

proc update_PARAM_VALUE.VERSION.CORE_REVISION { PARAM_VALUE.VERSION.CORE_REVISION PROJECT_PARAM.DEVICE IPINST } {

    set revision [get_property CORE_REVISION [current_ipcomp]]
    set_property value $revision ${PARAM_VALUE.VERSION.CORE_REVISION}
    
    # Parameter not user configurable, disabled
    set_property enabled false ${PARAM_VALUE.VERSION.CORE_REVISION}
    
}

proc update_PARAM_VALUE.VERSION.PATCH_REVISION { PARAM_VALUE.VERSION.PATCH_REVISION PROJECT_PARAM.DEVICE IPINST } {

    # Parameter not user configurable, disabled
    set_property enabled false ${PARAM_VALUE.VERSION.PATCH_REVISION}
    
}

proc update_PARAM_VALUE.HAS_TDM_SLR_CROSSING { PARAM_VALUE.HAS_TDM_SLR_CROSSING PARAM_VALUE.PCIE_LINK_CAP_MAX PROJECT_PARAM.SPEEDGRADE IPINST } {

    set has_tdm_slr_crossing ${PARAM_VALUE.HAS_TDM_SLR_CROSSING}
    set pcie_link_cap_max [get_property value ${PARAM_VALUE.PCIE_LINK_CAP_MAX}]
    set c_speedgrade [string toupper ${PROJECT_PARAM.SPEEDGRADE}]
    
    # TDM SLR crossing not supported for Gen3x4 or Gen3x8 -2LV, no 2x clock at this rate
    if {$pcie_link_cap_max eq "Gen3x4" || ($pcie_link_cap_max eq "Gen3x8" && $c_speedgrade eq "-2LV")} {
    
        set_property value false $has_tdm_slr_crossing
        set_property enabled false $has_tdm_slr_crossing
    
    } else {
    
        set_property enabled true $has_tdm_slr_crossing
        
    }
    
}

proc update_PARAM_VALUE.DMA_TYPE { PARAM_VALUE.DMA_TYPE PROJECT_PARAM.DEVICE IPINST } {

    set dma_type ${PARAM_VALUE.DMA_TYPE}
    set c_device [string toupper ${PROJECT_PARAM.DEVICE}]
    
    # Only XDMA supported for U25 & U30 currently, as QDMA configuration is currently Gen3x16 only
    if {$c_device eq "XCU25" || $c_device eq "XCU30"} {
    
        set_property value "XDMA" $dma_type
        set_property enabled false $dma_type
        
    }
    
}

proc update_PARAM_VALUE.PCIE_LINK_CAP_MAX { PARAM_VALUE.PCIE_LINK_CAP_MAX PARAM_VALUE.DMA_TYPE PROJECT_PARAM.DEVICE IPINST } {

    set pcie_link_cap_max ${PARAM_VALUE.PCIE_LINK_CAP_MAX}
    set c_device [string toupper ${PROJECT_PARAM.DEVICE}]
    set dma_type [get_property value ${PARAM_VALUE.DMA_TYPE}]

    if {$c_device eq "XCU25"} {
    
        # U25 supports only Gen3x4 or Gen3x8
        set_property range_value "Gen3x8,Gen3x4,Gen3x8" $pcie_link_cap_max
        set_property enabled true $pcie_link_cap_max
        
    } elseif {$c_device eq "XCU30"} {
    
        # U30 supports only Gen3x4
        set_property value "Gen3x4" $pcie_link_cap_max
        set_property enabled false $pcie_link_cap_max
        
    } elseif {$dma_type eq "XDMA"} {

        # All other devices support all 3 widths when configured for XDMA
        set_property enabled true $pcie_link_cap_max

    } else {

        # Only Gen3x16 supported for QDMA currently 
        set_property value "Gen3x16" $pcie_link_cap_max
        set_property enabled false $pcie_link_cap_max

    }

}

proc update_PARAM_VALUE.PCIE_BLK_LOCN { PARAM_VALUE.PCIE_BLK_LOCN PROJECT_PARAM.DEVICE PROJECT_PARAM.PACKAGE IPINST } {

    set pcie_block_locn ${PARAM_VALUE.PCIE_BLK_LOCN}
    set c_device [string toupper ${PROJECT_PARAM.DEVICE}]
    set c_package [string toupper ${PROJECT_PARAM.PACKAGE}]

    # Set the default XDMA/QDMA PCIE Block Location to a block that supports all link widths
    # This is required in case the default block setting in the DMA restricts the link width preventing a valid configuration

    set_property value "X1Y2" $pcie_block_locn

    if {($c_package eq "FSVH2892" && $c_device eq "XCU280") || (($c_package eq "FSVH2892" || $c_package eq "FSVH2104") && $c_device eq "XCVU35P") || ($c_package eq "FSVH2104" && $c_device eq "XCU50")} {

        set_property value "PCIE4C_X1Y0" $pcie_block_locn

    } elseif {$c_package eq "FIGD2104" && $c_device eq "XCU250"} {

        set_property value "X0Y1" $pcie_block_locn

    } elseif {($c_package eq "FSGD2104" && $c_device eq "XCU200") || $c_device eq "XCVU9P"} {

        set_property value "X1Y2" $pcie_block_locn

    } elseif {$c_package eq "FFVC1760" && $c_device eq "XCU25"} {
    
        set_property value "X1Y0" $pcie_block_locn
    
    } elseif {$c_package eq "FBVB900" && $c_device eq "XCU30"} {
    
        set_property value "X0Y0" $pcie_block_locn
        
    }

    # Not user configurable
    set_property enabled false $pcie_block_locn

}

# Management Interrupt update procedures

proc update_PARAM_VALUE.MGMT_IRQ_WIDTH_0 { PARAM_VALUE.MGMT_IRQ_WIDTH_0 PARAM_VALUE.NUM_MGMT_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.MGMT_IRQ_WIDTH_0}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_MGMT_IRQS}] < 1]} {
    
        set_property value 1 ${PARAM_VALUE.MGMT_IRQ_WIDTH_0}
        set_property enabled false ${PARAM_VALUE.MGMT_IRQ_WIDTH_0}
    
    }
    
}

proc update_PARAM_VALUE.MGMT_IRQ_WIDTH_1 { PARAM_VALUE.MGMT_IRQ_WIDTH_1 PARAM_VALUE.NUM_MGMT_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.MGMT_IRQ_WIDTH_1}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_MGMT_IRQS}] < 2]} {
    
        set_property value 1 ${PARAM_VALUE.MGMT_IRQ_WIDTH_1}
        set_property enabled false ${PARAM_VALUE.MGMT_IRQ_WIDTH_1}
    
    }
    
}

proc update_PARAM_VALUE.MGMT_IRQ_WIDTH_2 { PARAM_VALUE.MGMT_IRQ_WIDTH_2 PARAM_VALUE.NUM_MGMT_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.MGMT_IRQ_WIDTH_2}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_MGMT_IRQS}] < 3]} {
    
        set_property value 1 ${PARAM_VALUE.MGMT_IRQ_WIDTH_2}
        set_property enabled false ${PARAM_VALUE.MGMT_IRQ_WIDTH_2}
    
    }
    
}

proc update_PARAM_VALUE.MGMT_IRQ_WIDTH_3 { PARAM_VALUE.MGMT_IRQ_WIDTH_3 PARAM_VALUE.NUM_MGMT_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.MGMT_IRQ_WIDTH_3}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_MGMT_IRQS}] < 4]} {
    
        set_property value 1 ${PARAM_VALUE.MGMT_IRQ_WIDTH_3}
        set_property enabled false ${PARAM_VALUE.MGMT_IRQ_WIDTH_3}
    
    }
    
}

proc update_PARAM_VALUE.MGMT_IRQ_WIDTH_4 { PARAM_VALUE.MGMT_IRQ_WIDTH_4 PARAM_VALUE.NUM_MGMT_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.MGMT_IRQ_WIDTH_4}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_MGMT_IRQS}] < 5]} {
    
        set_property value 1 ${PARAM_VALUE.MGMT_IRQ_WIDTH_4}
        set_property enabled false ${PARAM_VALUE.MGMT_IRQ_WIDTH_4}
    
    }
    
}

proc update_PARAM_VALUE.MGMT_IRQ_WIDTH_5 { PARAM_VALUE.MGMT_IRQ_WIDTH_5 PARAM_VALUE.NUM_MGMT_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.MGMT_IRQ_WIDTH_5}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_MGMT_IRQS}] < 6]} {
    
        set_property value 1 ${PARAM_VALUE.MGMT_IRQ_WIDTH_5}
        set_property enabled false ${PARAM_VALUE.MGMT_IRQ_WIDTH_5}
    
    }
    
}

proc update_PARAM_VALUE.MGMT_IRQ_WIDTH_6 { PARAM_VALUE.MGMT_IRQ_WIDTH_6 PARAM_VALUE.NUM_MGMT_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.MGMT_IRQ_WIDTH_6}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_MGMT_IRQS}] < 7]} {
    
        set_property value 1 ${PARAM_VALUE.MGMT_IRQ_WIDTH_6}
        set_property enabled false ${PARAM_VALUE.MGMT_IRQ_WIDTH_6}
    
    }
    
}

proc update_PARAM_VALUE.MGMT_IRQ_WIDTH_7 { PARAM_VALUE.MGMT_IRQ_WIDTH_7 PARAM_VALUE.NUM_MGMT_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.MGMT_IRQ_WIDTH_7}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_MGMT_IRQS}] < 8]} {
    
        set_property value 1 ${PARAM_VALUE.MGMT_IRQ_WIDTH_7}
        set_property enabled false ${PARAM_VALUE.MGMT_IRQ_WIDTH_7}
    
    }
    
}

# User Interrupt update procedures

proc update_PARAM_VALUE.USER_IRQ_WIDTH_0 { PARAM_VALUE.USER_IRQ_WIDTH_0 PARAM_VALUE.NUM_USER_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.USER_IRQ_WIDTH_0}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_USER_IRQS}] < 1]} {
    
        set_property value 1 ${PARAM_VALUE.USER_IRQ_WIDTH_0}
        set_property enabled false ${PARAM_VALUE.USER_IRQ_WIDTH_0}
    
    }
    
}

proc update_PARAM_VALUE.USER_IRQ_WIDTH_1 { PARAM_VALUE.USER_IRQ_WIDTH_1 PARAM_VALUE.NUM_USER_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.USER_IRQ_WIDTH_1}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_USER_IRQS}] < 2]} {
    
        set_property value 1 ${PARAM_VALUE.USER_IRQ_WIDTH_1}
        set_property enabled false ${PARAM_VALUE.USER_IRQ_WIDTH_1}
    
    }
    
}

proc update_PARAM_VALUE.USER_IRQ_WIDTH_2 { PARAM_VALUE.USER_IRQ_WIDTH_2 PARAM_VALUE.NUM_USER_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.USER_IRQ_WIDTH_2}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_USER_IRQS}] < 3]} {
    
        set_property value 1 ${PARAM_VALUE.USER_IRQ_WIDTH_2}
        set_property enabled false ${PARAM_VALUE.USER_IRQ_WIDTH_2}
    
    }
    
}

proc update_PARAM_VALUE.USER_IRQ_WIDTH_3 { PARAM_VALUE.USER_IRQ_WIDTH_3 PARAM_VALUE.NUM_USER_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.USER_IRQ_WIDTH_3}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_USER_IRQS}] < 4]} {
    
        set_property value 1 ${PARAM_VALUE.USER_IRQ_WIDTH_3}
        set_property enabled false ${PARAM_VALUE.USER_IRQ_WIDTH_3}
    
    }
    
}

proc update_PARAM_VALUE.USER_IRQ_WIDTH_4 { PARAM_VALUE.USER_IRQ_WIDTH_4 PARAM_VALUE.NUM_USER_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.USER_IRQ_WIDTH_4}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_USER_IRQS}] < 5]} {
    
        set_property value 1 ${PARAM_VALUE.USER_IRQ_WIDTH_4}
        set_property enabled false ${PARAM_VALUE.USER_IRQ_WIDTH_4}
    
    }
    
}

proc update_PARAM_VALUE.USER_IRQ_WIDTH_5 { PARAM_VALUE.USER_IRQ_WIDTH_5 PARAM_VALUE.NUM_USER_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.USER_IRQ_WIDTH_5}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_USER_IRQS}] < 6]} {
    
        set_property value 1 ${PARAM_VALUE.USER_IRQ_WIDTH_5}
        set_property enabled false ${PARAM_VALUE.USER_IRQ_WIDTH_5}
    
    }
    
}

proc update_PARAM_VALUE.USER_IRQ_WIDTH_6 { PARAM_VALUE.USER_IRQ_WIDTH_6 PARAM_VALUE.NUM_USER_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.USER_IRQ_WIDTH_6}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_USER_IRQS}] < 7]} {
    
        set_property value 1 ${PARAM_VALUE.USER_IRQ_WIDTH_6}
        set_property enabled false ${PARAM_VALUE.USER_IRQ_WIDTH_6}
    
    }
    
}

proc update_PARAM_VALUE.USER_IRQ_WIDTH_7 { PARAM_VALUE.USER_IRQ_WIDTH_7 PARAM_VALUE.NUM_USER_IRQS IPINST } {

    set_property enabled true ${PARAM_VALUE.USER_IRQ_WIDTH_7}
    
    if {[expr [get_property value ${PARAM_VALUE.NUM_USER_IRQS}] < 8]} {
    
        set_property value 1 ${PARAM_VALUE.USER_IRQ_WIDTH_7}
        set_property enabled false ${PARAM_VALUE.USER_IRQ_WIDTH_7}
    
    }
    
}

#==========================================================================================================================================#
# Helper Procedures
#==========================================================================================================================================#

# Find the total number of configured interrupts across all enabled ports
proc get_num_configured_irqs { param_list IPINST } {

    set num_configured_irqs 0
    
    foreach param $param_list {
    
        if {[get_property enabled [ipgui::get_paramspec -name $param -of $IPINST ]]} {
        
            set num_configured_irqs [expr $num_configured_irqs + [get_property value [ipgui::get_paramspec -name $param -of $IPINST ]]]
            
        }
        
    }
    
    return $num_configured_irqs
    
}

