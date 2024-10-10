############################################################################################################################################
#
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

proc init_gui { IPINST } {

  set Component_Name [ ipgui::add_param  $IPINST  -parent $IPINST -name Component_Name ]

  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set General_Config [ipgui::add_page $IPINST -name "General Config"]

  set C_VIV_VERSION [ipgui::add_param $IPINST -name C_VIV_VERSION -parent $General_Config]
  set_property tooltip  "Set the Target Vivado Tool Version"  $C_VIV_VERSION
  
  set C_SUBSYSTEM_ID [ipgui::add_param $IPINST -name C_SUBSYSTEM_ID -parent $General_Config]
  set_property tooltip  "Set the Subsystem ID"  $C_SUBSYSTEM_ID
  
  set C_MAJOR_VERSION [ipgui::add_param $IPINST -name C_MAJOR_VERSION -parent $General_Config]
  set_property tooltip  "Set the Subsystem Major Version"  $C_MAJOR_VERSION
  
  set C_MINOR_VERSION [ipgui::add_param $IPINST -name C_MINOR_VERSION -parent $General_Config]
  set_property tooltip  "Set the Subsystem Minor Version"  $C_MINOR_VERSION
  
  set C_CORE_REVISION [ipgui::add_param $IPINST -name C_CORE_REVISION -parent $General_Config]
  set_property tooltip  "Set the Subsystem Core Revision"  $C_CORE_REVISION
  
  set C_PATCH_REVISION [ipgui::add_param $IPINST -name C_PATCH_REVISION -parent $General_Config]
  set_property tooltip  "Set the Subsystem Patch Version"  $C_PATCH_REVISION
  
  set C_PERFORCE_CL [ipgui::add_param $IPINST -name C_PERFORCE_CL -parent $General_Config]
  set_property tooltip  "Set the Subsystem Perforce Changelist Number"  $C_PERFORCE_CL
  
  set C_RESERVED_TAG [ipgui::add_param $IPINST -name C_RESERVED_TAG -parent $General_Config]
  set_property tooltip  "Set the Reserved Tag"  $C_RESERVED_TAG

}

#==========================================================================================================================================#
# Model Parameter Update Procedures
#==========================================================================================================================================#

proc update_MODELPARAM_VALUE.C_VIV_VERSION { MODELPARAM_VALUE.C_VIV_VERSION PARAM_VALUE.C_VIV_VERSION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  # Pass the integer value to the Model Parameter
	set_property value [expr [get_property value ${PARAM_VALUE.C_VIV_VERSION}]] ${MODELPARAM_VALUE.C_VIV_VERSION}
  
}

proc update_MODELPARAM_VALUE.C_SUBSYSTEM_ID { MODELPARAM_VALUE.C_SUBSYSTEM_ID PARAM_VALUE.C_SUBSYSTEM_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  # Pass the integer value to the Model Parameter
	set_property value [expr [get_property value ${PARAM_VALUE.C_SUBSYSTEM_ID}]] ${MODELPARAM_VALUE.C_SUBSYSTEM_ID}
  
}

proc update_MODELPARAM_VALUE.C_MAJOR_VERSION { MODELPARAM_VALUE.C_MAJOR_VERSION PARAM_VALUE.C_MAJOR_VERSION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  # Pass the integer value to the Model Parameter
	set_property value [get_property value ${PARAM_VALUE.C_MAJOR_VERSION}] ${MODELPARAM_VALUE.C_MAJOR_VERSION}
  
}

proc update_MODELPARAM_VALUE.C_MINOR_VERSION { MODELPARAM_VALUE.C_MINOR_VERSION PARAM_VALUE.C_MINOR_VERSION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  # Pass the integer value to the Model Parameter
	set_property value [get_property value ${PARAM_VALUE.C_MINOR_VERSION}] ${MODELPARAM_VALUE.C_MINOR_VERSION}
  
}

proc update_MODELPARAM_VALUE.C_CORE_REVISION { MODELPARAM_VALUE.C_CORE_REVISION PARAM_VALUE.C_CORE_REVISION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  # Pass the integer value to the Model Parameter
	set_property value [get_property value ${PARAM_VALUE.C_CORE_REVISION}] ${MODELPARAM_VALUE.C_CORE_REVISION}
  
}

proc update_MODELPARAM_VALUE.C_PATCH_REVISION { MODELPARAM_VALUE.C_PATCH_REVISION PARAM_VALUE.C_PATCH_REVISION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  # Pass the integer value to the Model Parameter
	set_property value [get_property value ${PARAM_VALUE.C_PATCH_REVISION}] ${MODELPARAM_VALUE.C_PATCH_REVISION}
  
}

proc update_MODELPARAM_VALUE.C_PERFORCE_CL { MODELPARAM_VALUE.C_PERFORCE_CL PARAM_VALUE.C_PERFORCE_CL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  # Pass the integer value to the Model Parameter
	set_property value [get_property value ${PARAM_VALUE.C_PERFORCE_CL}] ${MODELPARAM_VALUE.C_PERFORCE_CL}
  
}

proc update_MODELPARAM_VALUE.C_RESERVED_TAG { MODELPARAM_VALUE.C_RESERVED_TAG PARAM_VALUE.C_RESERVED_TAG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  set_property bitstring_length 32 ${MODELPARAM_VALUE.C_RESERVED_TAG}
  set_property value [get_param_hexvalue ${PARAM_VALUE.C_RESERVED_TAG} 32] ${MODELPARAM_VALUE.C_RESERVED_TAG}
}

#==========================================================================================================================================#
# Helper Procedures
#==========================================================================================================================================#

# Convert to bitstring: valid syntax is 8'b11111111 X"FF" 0xFF "11111111" 11111111
proc to_bitstring {value} {
  if {[regexp {([0-9]*)\'b([0-1]*)} $value match bitlen bitvalue]} {
    set len [string length $bitvalue]
    set bitvalue [format "%0${bitlen}s" [string range $bitvalue [expr ($len > $bitlen) ? $len - $bitlen : 0] end]]
  } elseif {[regexp {X\"([0-9A-Fa-f]*)\"} $value match hexvalue] || [regexp {0x([0-9A-Fa-f]*)} $value match hexvalue]} {
    binary scan [binary format H* $hexvalue] B* bitvalue
  } else {
    set bitvalue 0
    regexp {\"*([0-1]*)\"*} $value match bitvalue
  }
  return $bitvalue
}

# Convert to hex of given length: truncate if longer, prepend zeros if shorter
proc to_hex {value {length 32}} {
  set bitvalue [to_bitstring $value]
  set bitlen   [string length $bitvalue]
  set bitvalue [format "%0${length}s" [string range $bitvalue [expr ($bitlen > $length) ? $bitlen - $length : 0] end]]
  binary scan [binary format B* $bitvalue] H* hexvalue
  return "0x${hexvalue}"
}

proc get_param_hexvalue {parameter {length 32}} {
  return [to_hex [get_property value $parameter] $length]
}