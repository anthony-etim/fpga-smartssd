#  (c) Copyright 2012 Xilinx, Inc. All rights reserved.
#
#  This file contains confidential and proprietary information
#  of Xilinx, Inc. and is protected under U.S. and
#  international copyright and other intellectual property
#  laws.
#
#  DISCLAIMER
#  This disclaimer is not a license and does not grant any
#  rights to the materials distributed herewith. Except as
#  otherwise provided in a valid license issued to you by
#  Xilinx, and to the maximum extent permitted by applicable
#  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#  (2) Xilinx shall not be liable (whether in contract or tort,
#  including negligence, or under any other theory of
#  liability) for any loss or damage of any kind or nature
#  related to, arising under or in connection with these
#  materials, including for any direct, or any indirect,
#  special, incidental, or consequential loss or damage
#  (including loss of data, profits, goodwill, or any type of
#  loss or damage suffered as a result of any action brought
#  by a third party) even if such damage or loss was
#  reasonably foreseeable or Xilinx had been advised of the
#  possibility of the same.
#
#  CRITICAL APPLICATIONS
#  Xilinx products are not designed or intended to be fail-
#  safe, or for use in any application requiring fail-safe
#  performance, such as life-support or safety devices or
#  systems, Class III medical devices, nuclear facilities,
#  applications related to the deployment of airbags, or any
#  other applications that could lead to death, personal
#  injury, or severe property or environmental damage
#  (individually and collectively, "Critical
#  Applications"). Customer assumes the sole risk and
#  liability of any use of Xilinx products in Critical
#  Applications, subject only to applicable laws and
#  regulations governing limitations on product liability.
#
#  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#  PART OF THIS FILE AT ALL TIMES. 
############################################################
#Definitional proc to organize widgets for parameters.

source_subcore_ipfile xilinx.com:ip:ifx_util:1.1 bd/ifx_common_debug_util.tcl
source_subcore_ipfile xilinx.com:ip:ifx_util:1.1 xgui/ifx_common_xgui_util.tcl

proc init_gui { IPINST } {
  set Component_Name [ ipgui::add_param  $IPINST -name Component_Name ]
  set Page0 [ ipgui::add_page $IPINST  -name "AXI4-Stream Clock Metadata Adapter" -layout vertical]
#  set_property visible false $REG_CONFIG
  set tabgroup0 [ipgui::add_group $IPINST -parent $Page0 -name {Properties} -layout vertical] 
  set M_CLK_DOMAIN [ipgui::add_param $IPINST -parent $tabgroup0 -name M_CLK_DOMAIN]
  set HAS_TREADY [ipgui::add_param $IPINST -parent $tabgroup0 -name HAS_TREADY -widget comboBox]
  set TDATA_NUM_BYTES [ipgui::add_param $IPINST -parent $tabgroup0 -name TDATA_NUM_BYTES]
  ipgui::add_indent $IPINST -parent $tabgroup0
  set HAS_TSTRB [ipgui::add_param $IPINST -parent $tabgroup0 -name HAS_TSTRB -widget comboBox]
  ipgui::add_indent $IPINST -parent $tabgroup0
  set HAS_TKEEP [ipgui::add_param $IPINST -parent $tabgroup0 -name HAS_TKEEP -widget comboBox]
  set HAS_TLAST [ipgui::add_param $IPINST -parent $tabgroup0 -name HAS_TLAST -widget comboBox]
  set TID_WIDTH [ipgui::add_param $IPINST -parent $tabgroup0 -name TID_WIDTH]
  set TDEST_WIDTH [ipgui::add_param $IPINST -parent $tabgroup0 -name TDEST_WIDTH]
  set TUSER_WIDTH [ipgui::add_param $IPINST -parent $tabgroup0 -name TUSER_WIDTH]
}

proc init_params {IPINST} {
  set param_list {}
  lappend param_list "MODELPARAM_VALUE.C_FAMILY"
  lappend param_list "MODELPARAM_VALUE.C_AXIS_SIGNAL_SET"
  ipgui::update_params -params_list $param_list $IPINST 
}

proc update_PARAM_VALUE.HAS_TSTRB {PARAM_VALUE.TDATA_NUM_BYTES PARAM_VALUE.HAS_TSTRB} {

 set value [get_property value ${PARAM_VALUE.TDATA_NUM_BYTES}]
 set HAS_TSTRB ${PARAM_VALUE.HAS_TSTRB}
  if {$value > 0} {
    set_property enabled true $HAS_TSTRB
  } else {
    set_property value 0 $HAS_TSTRB
    set_property enabled false $HAS_TSTRB
  }
}

proc update_PARAM_VALUE.HAS_TKEEP {PARAM_VALUE.TDATA_NUM_BYTES PARAM_VALUE.HAS_TKEEP} {

 set value [get_property value ${PARAM_VALUE.TDATA_NUM_BYTES}]
 set HAS_TKEEP ${PARAM_VALUE.HAS_TKEEP}
  if {$value > 0} {
    set_property enabled true $HAS_TKEEP
  } else {
    set_property value 0 $HAS_TKEEP
    set_property enabled false $HAS_TKEEP
  }
}

proc update_MODELPARAM_VALUE.C_AXIS_TDATA_WIDTH {MODELPARAM_VALUE.C_AXIS_TDATA_WIDTH PARAM_VALUE.TDATA_NUM_BYTES} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  set value [get_property value ${PARAM_VALUE.TDATA_NUM_BYTES}]
  if {$value == 0} {
    set value 1
  }
  set val [expr $value * 8]
  set_property value $val ${MODELPARAM_VALUE.C_AXIS_TDATA_WIDTH}

  return true
}

proc update_MODELPARAM_VALUE.C_AXIS_TID_WIDTH {MODELPARAM_VALUE.C_AXIS_TID_WIDTH PARAM_VALUE.TID_WIDTH} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  set value [get_property value ${PARAM_VALUE.TID_WIDTH}]
  if {$value == 0} {
    set value 1
  }

  set_property value $value ${MODELPARAM_VALUE.C_AXIS_TID_WIDTH}

  return true
}

proc update_MODELPARAM_VALUE.C_AXIS_TDEST_WIDTH {MODELPARAM_VALUE.C_AXIS_TDEST_WIDTH PARAM_VALUE.TDEST_WIDTH} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set value [get_property value ${PARAM_VALUE.TDEST_WIDTH}]
  if {$value == 0} {
    set value 1
  }

  set_property value $value ${MODELPARAM_VALUE.C_AXIS_TDEST_WIDTH}

  return true
}

proc update_MODELPARAM_VALUE.C_AXIS_TUSER_WIDTH {MODELPARAM_VALUE.C_AXIS_TUSER_WIDTH PARAM_VALUE.TUSER_WIDTH} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value

  set value [get_property value ${PARAM_VALUE.TUSER_WIDTH}]
  if {$value == 0} {
    set value 1
  }

  set_property value $value ${MODELPARAM_VALUE.C_AXIS_TUSER_WIDTH}

  return true
}

proc update_MODELPARAM_VALUE.C_AXIS_SIGNAL_SET {PARAM_VALUE.HAS_TREADY PARAM_VALUE.TDATA_NUM_BYTES PARAM_VALUE.HAS_TSTRB PARAM_VALUE.HAS_TKEEP PARAM_VALUE.HAS_TLAST PARAM_VALUE.TID_WIDTH PARAM_VALUE.TDEST_WIDTH PARAM_VALUE.TUSER_WIDTH MODELPARAM_VALUE.C_AXIS_SIGNAL_SET} {
# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  set E_TREADY  [get_property value ${PARAM_VALUE.HAS_TREADY}]
  set E_TDATA   [get_property value ${PARAM_VALUE.TDATA_NUM_BYTES}]
  if {$E_TDATA > 1} {
    set E_TDATA 1
  }
  
  set E_TSTRB   [get_property value ${PARAM_VALUE.HAS_TSTRB}]
  set E_TKEEP   [get_property value ${PARAM_VALUE.HAS_TKEEP}]
  set E_TLAST   [get_property value ${PARAM_VALUE.HAS_TLAST}]
  set E_TID     [get_property value ${PARAM_VALUE.TID_WIDTH} ]
  if {$E_TID > 1} {
    set E_TID 1
  }
  set E_TDEST   [get_property value ${PARAM_VALUE.TDEST_WIDTH}]
  if {$E_TDEST > 1} {
    set E_TDEST 1
  }
  set E_TUSER   [get_property value ${PARAM_VALUE.TUSER_WIDTH}]
  if {$E_TUSER > 1} {
    set E_TUSER 1
  }

  set val  "0b${E_TUSER}${E_TDEST}${E_TID}${E_TLAST}${E_TKEEP}${E_TSTRB}${E_TDATA}${E_TREADY}"

  set_property value $val ${MODELPARAM_VALUE.C_AXIS_SIGNAL_SET}

  return true
}
