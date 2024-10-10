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

  set C_NUM_TABLE_ENTRIES [ipgui::add_param $IPINST -name C_NUM_TABLE_ENTRIES -parent $General_Config]
  set_property tooltip  "Set the number of Table Entries to be implemented, excluding the End of Table identifier. i.e. when 1 only Table Entry 0 is implemented"  $C_NUM_TABLE_ENTRIES
  
  set C_ENTRY_TYPE_0 [ipgui::add_param $IPINST -name C_ENTRY_TYPE_0 -parent $General_Config]
  set_property tooltip  "Set the Type field for Table Entry 0"  $C_ENTRY_TYPE_0
  
  set C_ENTRY_BAR_0 [ipgui::add_param $IPINST -name C_ENTRY_BAR_0 -parent $General_Config]
  set_property tooltip  "Set the BAR number field for Table Entry 0"  $C_ENTRY_BAR_0
  
  set C_ENTRY_ADDR_0 [ipgui::add_param $IPINST -name C_ENTRY_ADDR_0 -parent $General_Config]
  set_property tooltip  "Set the Address field for Table Entry 0"  $C_ENTRY_ADDR_0
  
  set C_ENTRY_MAJOR_VERSION_0 [ipgui::add_param $IPINST -name C_ENTRY_MAJOR_VERSION_0 -parent $General_Config]
  set_property tooltip  "Set the Major Version field for Table Entry 0"  $C_ENTRY_MAJOR_VERSION_0
  
  set C_ENTRY_MINOR_VERSION_0 [ipgui::add_param $IPINST -name C_ENTRY_MINOR_VERSION_0 -parent $General_Config]
  set_property tooltip  "Set the Minor Version field for Table Entry 0"  $C_ENTRY_MINOR_VERSION_0
  
  set C_ENTRY_TYPE_1 [ipgui::add_param $IPINST -name C_ENTRY_TYPE_1 -parent $General_Config]
  set_property tooltip  "Set the Type field for Table Entry 1"  $C_ENTRY_TYPE_1
  
  set C_ENTRY_BAR_1 [ipgui::add_param $IPINST -name C_ENTRY_BAR_1 -parent $General_Config]
  set_property tooltip  "Set the BAR number field for Table Entry 1"  $C_ENTRY_BAR_1
  
  set C_ENTRY_ADDR_1 [ipgui::add_param $IPINST -name C_ENTRY_ADDR_1 -parent $General_Config]
  set_property tooltip  "Set the Address field for Table Entry 1"  $C_ENTRY_ADDR_1
  
  set C_ENTRY_MAJOR_VERSION_1 [ipgui::add_param $IPINST -name C_ENTRY_MAJOR_VERSION_1 -parent $General_Config]
  set_property tooltip  "Set the Major Version field for Table Entry 1"  $C_ENTRY_MAJOR_VERSION_1
  
  set C_ENTRY_MINOR_VERSION_1 [ipgui::add_param $IPINST -name C_ENTRY_MINOR_VERSION_1 -parent $General_Config]
  set_property tooltip  "Set the Minor Version field for Table Entry 1"  $C_ENTRY_MINOR_VERSION_1
  
  set C_ENTRY_TYPE_2 [ipgui::add_param $IPINST -name C_ENTRY_TYPE_2 -parent $General_Config]
  set_property tooltip  "Set the Type field for Table Entry 2"  $C_ENTRY_TYPE_2
  
  set C_ENTRY_BAR_2 [ipgui::add_param $IPINST -name C_ENTRY_BAR_2 -parent $General_Config]
  set_property tooltip  "Set the BAR number field for Table Entry 2"  $C_ENTRY_BAR_2
  
  set C_ENTRY_ADDR_2 [ipgui::add_param $IPINST -name C_ENTRY_ADDR_2 -parent $General_Config]
  set_property tooltip  "Set the Address field for Table Entry 2"  $C_ENTRY_ADDR_2
  
  set C_ENTRY_MAJOR_VERSION_2 [ipgui::add_param $IPINST -name C_ENTRY_MAJOR_VERSION_2 -parent $General_Config]
  set_property tooltip  "Set the Major Version field for Table Entry 2"  $C_ENTRY_MAJOR_VERSION_2
  
  set C_ENTRY_MINOR_VERSION_2 [ipgui::add_param $IPINST -name C_ENTRY_MINOR_VERSION_2 -parent $General_Config]
  set_property tooltip  "Set the Minor Version field for Table Entry 2"  $C_ENTRY_MINOR_VERSION_2
  
  set C_ENTRY_TYPE_3 [ipgui::add_param $IPINST -name C_ENTRY_TYPE_3 -parent $General_Config]
  set_property tooltip  "Set the Type field for Table Entry 3"  $C_ENTRY_TYPE_3
  
  set C_ENTRY_BAR_3 [ipgui::add_param $IPINST -name C_ENTRY_BAR_3 -parent $General_Config]
  set_property tooltip  "Set the BAR number field for Table Entry 3"  $C_ENTRY_BAR_3
  
  set C_ENTRY_ADDR_3 [ipgui::add_param $IPINST -name C_ENTRY_ADDR_3 -parent $General_Config]
  set_property tooltip  "Set the Address field for Table Entry 3"  $C_ENTRY_ADDR_3
  
  set C_ENTRY_MAJOR_VERSION_3 [ipgui::add_param $IPINST -name C_ENTRY_MAJOR_VERSION_3 -parent $General_Config]
  set_property tooltip  "Set the Major Version field for Table Entry 3"  $C_ENTRY_MAJOR_VERSION_3
  
  set C_ENTRY_MINOR_VERSION_3 [ipgui::add_param $IPINST -name C_ENTRY_MINOR_VERSION_3 -parent $General_Config]
  set_property tooltip  "Set the Minor Version field for Table Entry 3"  $C_ENTRY_MINOR_VERSION_3
  
  set C_ENTRY_TYPE_4 [ipgui::add_param $IPINST -name C_ENTRY_TYPE_4 -parent $General_Config]
  set_property tooltip  "Set the Type field for Table Entry 4"  $C_ENTRY_TYPE_4
  
  set C_ENTRY_BAR_4 [ipgui::add_param $IPINST -name C_ENTRY_BAR_4 -parent $General_Config]
  set_property tooltip  "Set the BAR number field for Table Entry 4"  $C_ENTRY_BAR_4
  
  set C_ENTRY_ADDR_4 [ipgui::add_param $IPINST -name C_ENTRY_ADDR_4 -parent $General_Config]
  set_property tooltip  "Set the Address field for Table Entry 4"  $C_ENTRY_ADDR_4
  
  set C_ENTRY_MAJOR_VERSION_4 [ipgui::add_param $IPINST -name C_ENTRY_MAJOR_VERSION_4 -parent $General_Config]
  set_property tooltip  "Set the Major Version field for Table Entry 4"  $C_ENTRY_MAJOR_VERSION_4
  
  set C_ENTRY_MINOR_VERSION_4 [ipgui::add_param $IPINST -name C_ENTRY_MINOR_VERSION_4 -parent $General_Config]
  set_property tooltip  "Set the Minor Version field for Table Entry 4"  $C_ENTRY_MINOR_VERSION_4
  
  set C_ENTRY_TYPE_5 [ipgui::add_param $IPINST -name C_ENTRY_TYPE_5 -parent $General_Config]
  set_property tooltip  "Set the Type field for Table Entry 5"  $C_ENTRY_TYPE_5
  
  set C_ENTRY_BAR_5 [ipgui::add_param $IPINST -name C_ENTRY_BAR_5 -parent $General_Config]
  set_property tooltip  "Set the BAR number field for Table Entry 5"  $C_ENTRY_BAR_5
  
  set C_ENTRY_ADDR_5 [ipgui::add_param $IPINST -name C_ENTRY_ADDR_5 -parent $General_Config]
  set_property tooltip  "Set the Address field for Table Entry 5"  $C_ENTRY_ADDR_5
  
  set C_ENTRY_MAJOR_VERSION_5 [ipgui::add_param $IPINST -name C_ENTRY_MAJOR_VERSION_5 -parent $General_Config]
  set_property tooltip  "Set the Major Version field for Table Entry 5"  $C_ENTRY_MAJOR_VERSION_5
  
  set C_ENTRY_MINOR_VERSION_5 [ipgui::add_param $IPINST -name C_ENTRY_MINOR_VERSION_5 -parent $General_Config]
  set_property tooltip  "Set the Minor Version field for Table Entry 5"  $C_ENTRY_MINOR_VERSION_5

}

#==========================================================================================================================================#
# Model Parameter Update Procedures
#==========================================================================================================================================#

proc update_MODELPARAM_VALUE.C_NUM_TABLE_ENTRIES { MODELPARAM_VALUE.C_NUM_TABLE_ENTRIES PARAM_VALUE.C_NUM_TABLE_ENTRIES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_NUM_TABLE_ENTRIES}] ${MODELPARAM_VALUE.C_NUM_TABLE_ENTRIES}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_TYPE_0 { MODELPARAM_VALUE.C_ENTRY_TYPE_0 PARAM_VALUE.C_ENTRY_TYPE_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_TYPE_0}] ${MODELPARAM_VALUE.C_ENTRY_TYPE_0}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_BAR_0 { MODELPARAM_VALUE.C_ENTRY_BAR_0 PARAM_VALUE.C_ENTRY_BAR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_BAR_0}] ${MODELPARAM_VALUE.C_ENTRY_BAR_0}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_ADDR_0 { MODELPARAM_VALUE.C_ENTRY_ADDR_0 PARAM_VALUE.C_ENTRY_ADDR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_ADDR_0}] ${MODELPARAM_VALUE.C_ENTRY_ADDR_0}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_0 { MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_0 PARAM_VALUE.C_ENTRY_MAJOR_VERSION_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_MAJOR_VERSION_0}] ${MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_0}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_0 { MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_0 PARAM_VALUE.C_ENTRY_MINOR_VERSION_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_MINOR_VERSION_0}] ${MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_0}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_TYPE_1 { MODELPARAM_VALUE.C_ENTRY_TYPE_1 PARAM_VALUE.C_ENTRY_TYPE_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_TYPE_1}] ${MODELPARAM_VALUE.C_ENTRY_TYPE_1}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_BAR_1 { MODELPARAM_VALUE.C_ENTRY_BAR_1 PARAM_VALUE.C_ENTRY_BAR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_BAR_1}] ${MODELPARAM_VALUE.C_ENTRY_BAR_1}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_ADDR_1 { MODELPARAM_VALUE.C_ENTRY_ADDR_1 PARAM_VALUE.C_ENTRY_ADDR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_ADDR_1}] ${MODELPARAM_VALUE.C_ENTRY_ADDR_1}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_1 { MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_1 PARAM_VALUE.C_ENTRY_MAJOR_VERSION_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_MAJOR_VERSION_1}] ${MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_1}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_1 { MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_1 PARAM_VALUE.C_ENTRY_MINOR_VERSION_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_MINOR_VERSION_1}] ${MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_1}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_TYPE_2 { MODELPARAM_VALUE.C_ENTRY_TYPE_2 PARAM_VALUE.C_ENTRY_TYPE_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_TYPE_2}] ${MODELPARAM_VALUE.C_ENTRY_TYPE_2}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_BAR_2 { MODELPARAM_VALUE.C_ENTRY_BAR_2 PARAM_VALUE.C_ENTRY_BAR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_BAR_2}] ${MODELPARAM_VALUE.C_ENTRY_BAR_2}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_ADDR_2 { MODELPARAM_VALUE.C_ENTRY_ADDR_2 PARAM_VALUE.C_ENTRY_ADDR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_ADDR_2}] ${MODELPARAM_VALUE.C_ENTRY_ADDR_2}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_2 { MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_2 PARAM_VALUE.C_ENTRY_MAJOR_VERSION_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_MAJOR_VERSION_2}] ${MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_2}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_2 { MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_2 PARAM_VALUE.C_ENTRY_MINOR_VERSION_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_MINOR_VERSION_2}] ${MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_2}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_TYPE_3 { MODELPARAM_VALUE.C_ENTRY_TYPE_3 PARAM_VALUE.C_ENTRY_TYPE_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_TYPE_3}] ${MODELPARAM_VALUE.C_ENTRY_TYPE_3}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_BAR_3 { MODELPARAM_VALUE.C_ENTRY_BAR_3 PARAM_VALUE.C_ENTRY_BAR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_BAR_3}] ${MODELPARAM_VALUE.C_ENTRY_BAR_3}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_ADDR_3 { MODELPARAM_VALUE.C_ENTRY_ADDR_3 PARAM_VALUE.C_ENTRY_ADDR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_ADDR_3}] ${MODELPARAM_VALUE.C_ENTRY_ADDR_3}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_3 { MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_3 PARAM_VALUE.C_ENTRY_MAJOR_VERSION_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_MAJOR_VERSION_3}] ${MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_3}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_3 { MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_3 PARAM_VALUE.C_ENTRY_MINOR_VERSION_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_MINOR_VERSION_3}] ${MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_3}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_TYPE_4 { MODELPARAM_VALUE.C_ENTRY_TYPE_4 PARAM_VALUE.C_ENTRY_TYPE_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_TYPE_4}] ${MODELPARAM_VALUE.C_ENTRY_TYPE_4}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_BAR_4 { MODELPARAM_VALUE.C_ENTRY_BAR_4 PARAM_VALUE.C_ENTRY_BAR_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_BAR_4}] ${MODELPARAM_VALUE.C_ENTRY_BAR_4}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_ADDR_4 { MODELPARAM_VALUE.C_ENTRY_ADDR_4 PARAM_VALUE.C_ENTRY_ADDR_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_ADDR_4}] ${MODELPARAM_VALUE.C_ENTRY_ADDR_4}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_4 { MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_4 PARAM_VALUE.C_ENTRY_MAJOR_VERSION_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_MAJOR_VERSION_4}] ${MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_4}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_4 { MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_4 PARAM_VALUE.C_ENTRY_MINOR_VERSION_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_MINOR_VERSION_4}] ${MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_4}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_TYPE_5 { MODELPARAM_VALUE.C_ENTRY_TYPE_5 PARAM_VALUE.C_ENTRY_TYPE_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_TYPE_5}] ${MODELPARAM_VALUE.C_ENTRY_TYPE_5}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_BAR_5 { MODELPARAM_VALUE.C_ENTRY_BAR_5 PARAM_VALUE.C_ENTRY_BAR_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_BAR_5}] ${MODELPARAM_VALUE.C_ENTRY_BAR_5}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_ADDR_5 { MODELPARAM_VALUE.C_ENTRY_ADDR_5 PARAM_VALUE.C_ENTRY_ADDR_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_ADDR_5}] ${MODELPARAM_VALUE.C_ENTRY_ADDR_5}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_5 { MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_5 PARAM_VALUE.C_ENTRY_MAJOR_VERSION_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_MAJOR_VERSION_5}] ${MODELPARAM_VALUE.C_ENTRY_MAJOR_VERSION_5}
  
}

proc update_MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_5 { MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_5 PARAM_VALUE.C_ENTRY_MINOR_VERSION_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
	set_property value [get_property value ${PARAM_VALUE.C_ENTRY_MINOR_VERSION_5}] ${MODELPARAM_VALUE.C_ENTRY_MINOR_VERSION_5}
  
}
