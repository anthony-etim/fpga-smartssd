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
      set implementation_group [ipgui::add_group $IPINST -name "Implementation Settings" -parent $General_Config]
      
      set HAS_USER_AXI_CC [ipgui::add_param $IPINST -name HAS_USER_AXI_CC -parent $implementation_group]
      set_property tooltip "When selected m_axi_ctrl_user is synchronous with aclk_ctrl, otherwise this interface operates using aclk_pcie" $HAS_USER_AXI_CC
      
      #------> Adding Group -------------------------------------------------------------------------------------------------------------------#
      set Pcie_Group [ipgui::add_group $IPINST -name "PCI-Express Settings" -parent $General_Config]
      
      set HAS_PCIE4C [ipgui::add_param $IPINST -name HAS_PCIE4C -parent $Pcie_Group]
      set_property tooltip  "Enables selection of PCIE4C Integrated Blocks"  $HAS_PCIE4C
      
      set PCIE_BLK_LOCN [ipgui::add_param $IPINST -name PCIE_BLK_LOCN -widget comboBox -parent $Pcie_Group]
      set_property tooltip  "Select the required PCIe Block Location"  $PCIE_BLK_LOCN
      
      set PCIE_LINK_CAP_MAX [ipgui::add_param $IPINST -name PCIE_LINK_CAP_MAX -widget comboBox -parent $Pcie_Group]
      set_property tooltip  "Set the maximum supported Link Width"  $PCIE_LINK_CAP_MAX
      
      set PF0_DEVICE_ID [ipgui::add_param $IPINST -name PF0_DEVICE_ID -parent $Pcie_Group]
      set_property tooltip  "Set the Device ID for Physical Function 0"  $PF0_DEVICE_ID
      
      set PF1_DEVICE_ID [ipgui::add_param $IPINST -name PF1_DEVICE_ID -parent $Pcie_Group]
      set_property tooltip  "Set the Device ID for Physical Function 1"  $PF1_DEVICE_ID  

  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set Metadata_Config [ipgui::add_page $IPINST -name "Metadata_Config"]
  set_property display_name "Metadata Configuration" $Metadata_Config
  
      #------> Adding Group -------------------------------------------------------------------------------------------------------------------#
      set Clock_Metadata_Group [ipgui::add_group $IPINST -name "Clock Domain Metadata Configuration" -parent $Metadata_Config]
      
      set ACLK_PCIE_CLK_DOMAIN [ipgui::add_param $IPINST -name ACLK_PCIE_CLK_DOMAIN -parent $Clock_Metadata_Group]
      set_property tooltip  "Configure the required clock domain metadata for aclk_pcie"  $ACLK_PCIE_CLK_DOMAIN
      
      set ACLK_CTRL_CLK_DOMAIN [ipgui::add_param $IPINST -name ACLK_CTRL_CLK_DOMAIN -parent $Clock_Metadata_Group]
      set_property tooltip  "Configure the required clock domain metadata for aclk_ctrl"  $ACLK_CTRL_CLK_DOMAIN
      
      #------> Adding Group -------------------------------------------------------------------------------------------------------------------#
      set Platform_Metadata_Group [ipgui::add_group $IPINST -name "Platform Metadata Configuration" -parent $Metadata_Config]
      
      set PLATFORM_TYPE [ipgui::add_param $IPINST -name PLATFORM_TYPE -widget comboBox -parent $Platform_Metadata_Group]
      set_property tooltip  "Configure the Platform Type for use in H/W Discovery"  $PLATFORM_TYPE
  
}

#==========================================================================================================================================#
# Parameter Validation Procedures
#==========================================================================================================================================#

# Validate the entered PF Device IDs

proc validate_PARAM_VALUE.PF0_DEVICE_ID {PARAM_VALUE.PF0_DEVICE_ID IPINST} {

    return [RangeCheck4HexDec PF0_DEVICE_ID [get_property value ${PARAM_VALUE.PF0_DEVICE_ID}] 0000 FFFF $IPINST]
    
}

proc validate_PARAM_VALUE.PF1_DEVICE_ID {PARAM_VALUE.PF1_DEVICE_ID IPINST} {

    return [RangeCheck4HexDec PF1_DEVICE_ID [get_property value ${PARAM_VALUE.PF1_DEVICE_ID}] 0000 FFFF $IPINST]
    
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

proc update_PARAM_VALUE.HAS_PCIE4C { PARAM_VALUE.HAS_PCIE4C PROJECT_PARAM.DEVICE PROJECT_PARAM.PACKAGE IPINST } {

    set enable_pcie4c ${PARAM_VALUE.HAS_PCIE4C}
    set c_device [string toupper ${PROJECT_PARAM.DEVICE}]
    set c_package [string toupper ${PROJECT_PARAM.PACKAGE}]
  
    # Only enable the pcie4c core when a U280/U50/VU35P device is loaded
    if {$c_device eq "XCU280" || $c_device eq "XCVU35P" || $c_device eq "XCU50"} {
    
        set_property value true $enable_pcie4c
        
    } else {
    
        set_property value false $enable_pcie4c
      
    }
  
    # Parameter currently not user configurable, determined based on device loaded  
    set_property enabled false $enable_pcie4c
  
}

proc update_PARAM_VALUE.PCIE_BLK_LOCN { PARAM_VALUE.PCIE_BLK_LOCN PROJECT_PARAM.DEVICE PROJECT_PARAM.PACKAGE IPINST } {
  
    set pcie_block_locn ${PARAM_VALUE.PCIE_BLK_LOCN}
    set c_device [string toupper ${PROJECT_PARAM.DEVICE}]
    set c_package [string toupper ${PROJECT_PARAM.PACKAGE}]
  
    # Restrict the available pcie block location range based on device loaded
    if {($c_package eq "FSVH2892" && $c_device eq "XCU280") || (($c_package eq "FSVH2892" || $c_package eq "FSVH2104") && $c_device eq "XCVU35P") || ($c_package eq "FSVH2104" && $c_device eq "XCU50")} {
    
        set_property range_value "X1Y0,X1Y0,X1Y1" $pcie_block_locn
      
    } elseif {$c_package eq "FIGD2104" && $c_device eq "XCU250"} {
    
        set_property range_value "X0Y1,X0Y1,X0Y2" $pcie_block_locn
      
    } elseif {($c_package eq "FSGD2104" && $c_device eq "XCU200") || $c_device eq "XCVU9P"} {
    
        # VU9P restricted to same blocks as U200
        set_property range_value "X1Y2,X1Y2,X1Y4" $pcie_block_locn
      
    } elseif {$c_package eq "FFVC1760" && $c_device eq "XCU25"} {
    
        set_property range_value "X1Y0,X1Y0" $pcie_block_locn
    
    } elseif {$c_package eq "FBVB900" && $c_device eq "XCU30"} {
    
        set_property range_value "X0Y0,X0Y0,X0Y1" $pcie_block_locn
        
    }

}

proc update_PARAM_VALUE.PCIE_LINK_CAP_MAX { PARAM_VALUE.PCIE_LINK_CAP_MAX PARAM_VALUE.PCIE_BLK_LOCN PROJECT_PARAM.DEVICE PROJECT_PARAM.PACKAGE IPINST } {

    set pcie_link_width ${PARAM_VALUE.PCIE_LINK_CAP_MAX}
    set pcie_block_locn [get_property value ${PARAM_VALUE.PCIE_BLK_LOCN}]
    set c_device [string toupper ${PROJECT_PARAM.DEVICE}]
    set c_package [string toupper ${PROJECT_PARAM.PACKAGE}]
    
    # Default range to all supported link widths
    set_property range_value "Gen3x16,Gen3x4,Gen3x8,Gen3x16" $pcie_link_width
    
    # Restrict the default available pcie link widths based on selected block location  
    if {$c_package eq "FSGD2104" && $c_device eq "XCU200"} {
    
        if {$pcie_block_locn eq "X1Y4"} {
        
            set_property range_value "Gen3x8,Gen3x4,Gen3x8" $pcie_link_width
          
        }
      
    } elseif {$c_package eq "FIGD2104" && $c_device eq "XCU250"} {
    
        if {$pcie_block_locn eq "X0Y2"} {
        
            set_property range_value "Gen3x8,Gen3x4,Gen3x8" $pcie_link_width
          
        }
      
    } elseif {$c_device eq "XCVU9P"} {
    
        if {$pcie_block_locn eq "X1Y4" && $c_package eq "FLGA2104"} {
    
            set_property range_value "Gen3x8,Gen3x4,Gen3x8" $pcie_link_width
            
        }
        
    } elseif {$c_device eq "XCU25"} {
    
        set_property range_value "Gen3x8,Gen3x4,Gen3x8" $pcie_link_width
    
    } elseif {$c_device eq "XCU30"} {
    
        set_property range_value "Gen3x4,Gen3x4" $pcie_link_width
        
    }
    
}

proc update_PARAM_VALUE.EN_GT_QUAD_SEL { PARAM_VALUE.EN_GT_QUAD_SEL PROJECT_PARAM.DEVICE PROJECT_PARAM.PACKAGE IPINST } {

    set en_gt_quad_sel ${PARAM_VALUE.EN_GT_QUAD_SEL}
    set c_device [string toupper ${PROJECT_PARAM.DEVICE}]
    set c_package [string toupper ${PROJECT_PARAM.PACKAGE}]
    
    # Enable non-default GT Quad selection for U25 & U30 parts
    if {$c_device eq "XCU25" || $c_device eq "XCU30"} {
    
        set_property value true $en_gt_quad_sel
        
    } else {
    
        set_property value false $en_gt_quad_sel
      
    }
    
    # Parameter not user configurable, disabled
    set_property enabled false $en_gt_quad_sel
    
}

proc update_PARAM_VALUE.GT_QUAD { PARAM_VALUE.GT_QUAD PARAM_VALUE.PCIE_LINK_CAP_MAX PROJECT_PARAM.DEVICE PROJECT_PARAM.PACKAGE IPINST } {

    set gt_quad ${PARAM_VALUE.GT_QUAD}
    set pcie_link_cap_max [get_property value ${PARAM_VALUE.PCIE_LINK_CAP_MAX}]
    set c_device [string toupper ${PROJECT_PARAM.DEVICE}]
    set c_package [string toupper ${PROJECT_PARAM.PACKAGE}]
    
    # U25 & U30 use non-default GTH Quads, assign based on link width
    if {$c_device eq "XCU25"} {
    
        if {$pcie_link_cap_max eq "Gen3x8"} {
        
            set_property value "GTH_Quad_225" $gt_quad
            
        } else {
        
            set_property value "GTH_Quad_224" $gt_quad
            
        }
        
    } elseif {$c_device eq "XCU30"} {
    
        set_property value "GTH_Quad_224" $gt_quad
        
    }
    
    # Parameter not user configurable, disabled
    set_property enabled false $gt_quad
    
}

#==========================================================================================================================================#
# GUI Element Update Procedures
#==========================================================================================================================================#

# Update the display_name for PCIE_BLK_LOCN to match the selected block type
proc update_gui_for_PARAM_VALUE.HAS_PCIE4C { PARAM_VALUE.HAS_PCIE4C IPINST } {

    if {[get_property value ${PARAM_VALUE.HAS_PCIE4C}]} {
    
        set_property display_name "PCIE4C Block Location" [ipgui::get_guiparamspec -name PCIE_BLK_LOCN -of $IPINST]
        
    } else {
    
        set_property display_name "PCIE4 Block Location" [ipgui::get_guiparamspec -name PCIE_BLK_LOCN -of $IPINST]
        
    }
    
}

#==========================================================================================================================================#
# Helper Procedures
#==========================================================================================================================================#

# Proc to validate that the entered Hex string value is within the correct range
proc RangeCheck4HexDec {param paramValue MinValue MaxValue IPINST} {

    if { [regexp -all {[a-fA-F0-9]} $paramValue] != [ string length $paramValue ]} {
    
        set_property errmsg "Entered invalid Hexadecimal value $paramValue" [ipgui::get_paramspec -name $param -of $IPINST ]
        return false
      
    }
    
    if {$paramValue  == ""} {
    
        set_property errmsg "Entered invalid Hexadecimal value $paramValue" [ipgui::get_paramspec -name $param -of $IPINST ]
        return false
    
    }
  
    if {[expr 0x$MaxValue ] < [expr 0x$paramValue ] ||  [expr 0x$paramValue ] < [expr 0x$MinValue]} {
    
        set_property errmsg "Entered Hexadecimal value $paramValue is out of range." [ipgui::get_paramspec -name $param -of $IPINST ]
        return false
      
    }
    
    return true
    
}
