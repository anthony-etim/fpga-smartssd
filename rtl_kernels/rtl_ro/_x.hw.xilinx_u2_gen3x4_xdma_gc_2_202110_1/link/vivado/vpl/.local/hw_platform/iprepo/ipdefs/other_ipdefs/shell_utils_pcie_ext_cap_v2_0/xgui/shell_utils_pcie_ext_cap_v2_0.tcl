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

proc init_gui { IPINST } {

  set Component_Name [ ipgui::add_param  $IPINST  -parent $IPINST -name Component_Name ]

  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set General_Config [ipgui::add_page $IPINST -name "General Config"]

  set C_CAP_BASE_ADDR [ipgui::add_param $IPINST -name C_CAP_BASE_ADDR -parent $General_Config]
  set_property tooltip  "Set the PCIe Extended Capability Base Address"  $C_CAP_BASE_ADDR
  
  set C_NEXT_CAP_ADDR [ipgui::add_param $IPINST -name C_NEXT_CAP_ADDR -parent $General_Config]
  set_property tooltip  "Set the Next Capability Pointer. Leave at 0 if this is the last capability."  $C_NEXT_CAP_ADDR
  
  set C_PF0_BAR_INDEX [ipgui::add_param $IPINST -name C_PF0_BAR_INDEX -parent $General_Config]
  set_property tooltip  "Set the BAR Index for PF0"  $C_PF0_BAR_INDEX
  
  set C_PF0_LOW_OFFSET [ipgui::add_param $IPINST -name C_PF0_LOW_OFFSET -parent $General_Config]
  set_property tooltip  "Set the Low Address Offset for PF0"  $C_PF0_LOW_OFFSET
  
  set C_PF0_HIGH_OFFSET [ipgui::add_param $IPINST -name C_PF0_HIGH_OFFSET -parent $General_Config]
  set_property tooltip  "Set the High Address Offset for PF0"  $C_PF0_HIGH_OFFSET
  
  set C_PF1_BAR_INDEX [ipgui::add_param $IPINST -name C_PF1_BAR_INDEX -parent $General_Config]
  set_property tooltip  "Set the BAR Index for PF1"  $C_PF1_BAR_INDEX
  
  set C_PF1_LOW_OFFSET [ipgui::add_param $IPINST -name C_PF1_LOW_OFFSET -parent $General_Config]
  set_property tooltip  "Set the Low Address Offset for PF1"  $C_PF1_LOW_OFFSET
  
  set C_PF1_HIGH_OFFSET [ipgui::add_param $IPINST -name C_PF1_HIGH_OFFSET -parent $General_Config]
  set_property tooltip  "Set the High Address Offset for PF1"  $C_PF1_HIGH_OFFSET

}

proc update_PARAM_VALUE.Component_Name {PARAM_VALUE.Component_Name } {
  set value [get_property value ${PARAM_VALUE.Component_Name}]
  set Component_Name ${PARAM_VALUE.Component_Name}
}

proc update_MODELPARAM_VALUE.C_CAP_BASE_ADDR { MODELPARAM_VALUE.C_CAP_BASE_ADDR PARAM_VALUE.C_CAP_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  set_property value [get_property value ${PARAM_VALUE.C_CAP_BASE_ADDR}] ${MODELPARAM_VALUE.C_CAP_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_NEXT_CAP_ADDR { MODELPARAM_VALUE.C_NEXT_CAP_ADDR PARAM_VALUE.C_NEXT_CAP_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  set_property value [get_property value ${PARAM_VALUE.C_NEXT_CAP_ADDR}] ${MODELPARAM_VALUE.C_NEXT_CAP_ADDR}
}

proc update_MODELPARAM_VALUE.C_PF0_BAR_INDEX { MODELPARAM_VALUE.C_PF0_BAR_INDEX PARAM_VALUE.C_PF0_BAR_INDEX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  set_property value [get_property value ${PARAM_VALUE.C_PF0_BAR_INDEX}] ${MODELPARAM_VALUE.C_PF0_BAR_INDEX}
}

proc update_MODELPARAM_VALUE.C_PF0_LOW_OFFSET { MODELPARAM_VALUE.C_PF0_LOW_OFFSET PARAM_VALUE.C_PF0_LOW_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  set_property value [get_property value ${PARAM_VALUE.C_PF0_LOW_OFFSET}] ${MODELPARAM_VALUE.C_PF0_LOW_OFFSET}
}

proc update_MODELPARAM_VALUE.C_PF0_HIGH_OFFSET { MODELPARAM_VALUE.C_PF0_HIGH_OFFSET PARAM_VALUE.C_PF0_HIGH_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  set_property value [get_property value ${PARAM_VALUE.C_PF0_HIGH_OFFSET}] ${MODELPARAM_VALUE.C_PF0_HIGH_OFFSET}
}

proc update_MODELPARAM_VALUE.C_PF1_BAR_INDEX { MODELPARAM_VALUE.C_PF1_BAR_INDEX PARAM_VALUE.C_PF1_BAR_INDEX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  set_property value [get_property value ${PARAM_VALUE.C_PF1_BAR_INDEX}] ${MODELPARAM_VALUE.C_PF1_BAR_INDEX}
}

proc update_MODELPARAM_VALUE.C_PF1_LOW_OFFSET { MODELPARAM_VALUE.C_PF1_LOW_OFFSET PARAM_VALUE.C_PF1_LOW_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  set_property value [get_property value ${PARAM_VALUE.C_PF1_LOW_OFFSET}] ${MODELPARAM_VALUE.C_PF1_LOW_OFFSET}
}

proc update_MODELPARAM_VALUE.C_PF1_HIGH_OFFSET { MODELPARAM_VALUE.C_PF1_HIGH_OFFSET PARAM_VALUE.C_PF1_HIGH_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  set_property value [get_property value ${PARAM_VALUE.C_PF1_HIGH_OFFSET}] ${MODELPARAM_VALUE.C_PF1_HIGH_OFFSET}
}
