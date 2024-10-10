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

# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/Monitor_AXI_Master_v1_0.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "EN_AXI_LITE" -parent ${Page_0} -widget checkBox
  set CAPTURE_BURSTS [ipgui::add_param $IPINST -name "CAPTURE_BURSTS" -parent ${Page_0} -widget checkBox]
  set_property tooltip {Capture AXI Bursts} ${CAPTURE_BURSTS}
  #Adding Group
  set Trace [ipgui::add_group $IPINST -name "Trace" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "ENABLE_TRACE" -parent ${Trace} -widget checkBox
  ipgui::add_param $IPINST -name "TRACE_WRITE_ID" -parent ${Trace}
  ipgui::add_param $IPINST -name "TRACE_READ_ID" -parent ${Trace}

  #Adding Group
  set Counters [ipgui::add_group $IPINST -name "Counters" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "ENABLE_COUNTERS" -parent ${Counters} -widget checkBox

  #Adding Group
  set Address_Filtering [ipgui::add_group $IPINST -name "Address Filtering" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "ENABLE_ADDR_FILTER" -parent ${Address_Filtering} -widget checkBox
  ipgui::add_param $IPINST -name "ADDR_MIN" -parent ${Address_Filtering}
  ipgui::add_param $IPINST -name "ADDR_MAX" -parent ${Address_Filtering}



}

proc update_PARAM_VALUE.ADDR_MAX { PARAM_VALUE.ADDR_MAX PARAM_VALUE.ENABLE_ADDR_FILTER } {
	# Procedure called to update ADDR_MAX when any of the dependent parameters in the arguments change
	
	set ADDR_MAX ${PARAM_VALUE.ADDR_MAX}
	set ENABLE_ADDR_FILTER ${PARAM_VALUE.ENABLE_ADDR_FILTER}
	set values(ENABLE_ADDR_FILTER) [get_property value $ENABLE_ADDR_FILTER]
	if { [gen_USERPARAMETER_ADDR_MAX_ENABLEMENT $values(ENABLE_ADDR_FILTER)] } {
		set_property enabled true $ADDR_MAX
	} else {
		set_property enabled false $ADDR_MAX
		set_property value [gen_USERPARAMETER_ADDR_MAX_VALUE $values(ENABLE_ADDR_FILTER)] $ADDR_MAX
	}
}

proc validate_PARAM_VALUE.ADDR_MAX { PARAM_VALUE.ADDR_MAX } {
	# Procedure called to validate ADDR_MAX
	return true
}

proc update_PARAM_VALUE.ADDR_MIN { PARAM_VALUE.ADDR_MIN PARAM_VALUE.ENABLE_ADDR_FILTER } {
	# Procedure called to update ADDR_MIN when any of the dependent parameters in the arguments change
	
	set ADDR_MIN ${PARAM_VALUE.ADDR_MIN}
	set ENABLE_ADDR_FILTER ${PARAM_VALUE.ENABLE_ADDR_FILTER}
	set values(ENABLE_ADDR_FILTER) [get_property value $ENABLE_ADDR_FILTER]
	if { [gen_USERPARAMETER_ADDR_MIN_ENABLEMENT $values(ENABLE_ADDR_FILTER)] } {
		set_property enabled true $ADDR_MIN
	} else {
		set_property enabled false $ADDR_MIN
		set_property value [gen_USERPARAMETER_ADDR_MIN_VALUE $values(ENABLE_ADDR_FILTER)] $ADDR_MIN
	}
}

proc validate_PARAM_VALUE.ADDR_MIN { PARAM_VALUE.ADDR_MIN } {
	# Procedure called to validate ADDR_MIN
	return true
}

proc update_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to update ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to validate ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.CAPTURE_BURSTS { PARAM_VALUE.CAPTURE_BURSTS } {
	# Procedure called to update CAPTURE_BURSTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CAPTURE_BURSTS { PARAM_VALUE.CAPTURE_BURSTS } {
	# Procedure called to validate CAPTURE_BURSTS
	return true
}

proc update_PARAM_VALUE.COUNT_WIDTH { PARAM_VALUE.COUNT_WIDTH } {
	# Procedure called to update COUNT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNT_WIDTH { PARAM_VALUE.COUNT_WIDTH } {
	# Procedure called to validate COUNT_WIDTH
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.ENABLE_ADDR_FILTER { PARAM_VALUE.ENABLE_ADDR_FILTER } {
	# Procedure called to update ENABLE_ADDR_FILTER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_ADDR_FILTER { PARAM_VALUE.ENABLE_ADDR_FILTER } {
	# Procedure called to validate ENABLE_ADDR_FILTER
	return true
}

proc update_PARAM_VALUE.ENABLE_COUNTERS { PARAM_VALUE.ENABLE_COUNTERS } {
	# Procedure called to update ENABLE_COUNTERS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_COUNTERS { PARAM_VALUE.ENABLE_COUNTERS } {
	# Procedure called to validate ENABLE_COUNTERS
	return true
}

proc update_PARAM_VALUE.ENABLE_DEBUG { PARAM_VALUE.ENABLE_DEBUG } {
	# Procedure called to update ENABLE_DEBUG when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_DEBUG { PARAM_VALUE.ENABLE_DEBUG } {
	# Procedure called to validate ENABLE_DEBUG
	return true
}

proc update_PARAM_VALUE.ENABLE_TRACE { PARAM_VALUE.ENABLE_TRACE } {
	# Procedure called to update ENABLE_TRACE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_TRACE { PARAM_VALUE.ENABLE_TRACE } {
	# Procedure called to validate ENABLE_TRACE
	return true
}

proc update_PARAM_VALUE.EN_AXI_LITE { PARAM_VALUE.EN_AXI_LITE } {
	# Procedure called to update EN_AXI_LITE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EN_AXI_LITE { PARAM_VALUE.EN_AXI_LITE } {
	# Procedure called to validate EN_AXI_LITE
	return true
}

proc update_PARAM_VALUE.ID_WIDTH { PARAM_VALUE.ID_WIDTH } {
	# Procedure called to update ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ID_WIDTH { PARAM_VALUE.ID_WIDTH } {
	# Procedure called to validate ID_WIDTH
	return true
}

proc update_PARAM_VALUE.MODE_SDACCEL { PARAM_VALUE.MODE_SDACCEL } {
	# Procedure called to update MODE_SDACCEL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MODE_SDACCEL { PARAM_VALUE.MODE_SDACCEL } {
	# Procedure called to validate MODE_SDACCEL
	return true
}

proc update_PARAM_VALUE.NUM_REG_STAGES { PARAM_VALUE.NUM_REG_STAGES } {
	# Procedure called to update NUM_REG_STAGES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_REG_STAGES { PARAM_VALUE.NUM_REG_STAGES } {
	# Procedure called to validate NUM_REG_STAGES
	return true
}

proc update_PARAM_VALUE.READ_START_SELECT { PARAM_VALUE.READ_START_SELECT } {
	# Procedure called to update READ_START_SELECT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ_START_SELECT { PARAM_VALUE.READ_START_SELECT } {
	# Procedure called to validate READ_START_SELECT
	return true
}

proc update_PARAM_VALUE.READ_STOP_SELECT { PARAM_VALUE.READ_STOP_SELECT } {
	# Procedure called to update READ_STOP_SELECT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.READ_STOP_SELECT { PARAM_VALUE.READ_STOP_SELECT } {
	# Procedure called to validate READ_STOP_SELECT
	return true
}

proc update_PARAM_VALUE.TRACE_READ_ID { PARAM_VALUE.TRACE_READ_ID } {
	# Procedure called to update TRACE_READ_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TRACE_READ_ID { PARAM_VALUE.TRACE_READ_ID } {
	# Procedure called to validate TRACE_READ_ID
	return true
}

proc update_PARAM_VALUE.TRACE_WRITE_ID { PARAM_VALUE.TRACE_WRITE_ID } {
	# Procedure called to update TRACE_WRITE_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TRACE_WRITE_ID { PARAM_VALUE.TRACE_WRITE_ID } {
	# Procedure called to validate TRACE_WRITE_ID
	return true
}

proc update_PARAM_VALUE.USER_WIDTH { PARAM_VALUE.USER_WIDTH } {
	# Procedure called to update USER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USER_WIDTH { PARAM_VALUE.USER_WIDTH } {
	# Procedure called to validate USER_WIDTH
	return true
}

proc update_PARAM_VALUE.WRITE_START_SELECT { PARAM_VALUE.WRITE_START_SELECT } {
	# Procedure called to update WRITE_START_SELECT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRITE_START_SELECT { PARAM_VALUE.WRITE_START_SELECT } {
	# Procedure called to validate WRITE_START_SELECT
	return true
}

proc update_PARAM_VALUE.WRITE_STOP_SELECT { PARAM_VALUE.WRITE_STOP_SELECT } {
	# Procedure called to update WRITE_STOP_SELECT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WRITE_STOP_SELECT { PARAM_VALUE.WRITE_STOP_SELECT } {
	# Procedure called to validate WRITE_STOP_SELECT
	return true
}


proc update_MODELPARAM_VALUE.TRACE_READ_ID { MODELPARAM_VALUE.TRACE_READ_ID PARAM_VALUE.TRACE_READ_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TRACE_READ_ID}] ${MODELPARAM_VALUE.TRACE_READ_ID}
}

proc update_MODELPARAM_VALUE.TRACE_WRITE_ID { MODELPARAM_VALUE.TRACE_WRITE_ID PARAM_VALUE.TRACE_WRITE_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TRACE_WRITE_ID}] ${MODELPARAM_VALUE.TRACE_WRITE_ID}
}

proc update_MODELPARAM_VALUE.MODE_SDACCEL { MODELPARAM_VALUE.MODE_SDACCEL PARAM_VALUE.MODE_SDACCEL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MODE_SDACCEL}] ${MODELPARAM_VALUE.MODE_SDACCEL}
}

proc update_MODELPARAM_VALUE.CAPTURE_BURSTS { MODELPARAM_VALUE.CAPTURE_BURSTS PARAM_VALUE.CAPTURE_BURSTS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CAPTURE_BURSTS}] ${MODELPARAM_VALUE.CAPTURE_BURSTS}
}

proc update_MODELPARAM_VALUE.ENABLE_DEBUG { MODELPARAM_VALUE.ENABLE_DEBUG PARAM_VALUE.ENABLE_DEBUG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_DEBUG}] ${MODELPARAM_VALUE.ENABLE_DEBUG}
}

proc update_MODELPARAM_VALUE.NUM_REG_STAGES { MODELPARAM_VALUE.NUM_REG_STAGES PARAM_VALUE.NUM_REG_STAGES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_REG_STAGES}] ${MODELPARAM_VALUE.NUM_REG_STAGES}
}

proc update_MODELPARAM_VALUE.ENABLE_COUNTERS { MODELPARAM_VALUE.ENABLE_COUNTERS PARAM_VALUE.ENABLE_COUNTERS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_COUNTERS}] ${MODELPARAM_VALUE.ENABLE_COUNTERS}
}

proc update_MODELPARAM_VALUE.ENABLE_TRACE { MODELPARAM_VALUE.ENABLE_TRACE PARAM_VALUE.ENABLE_TRACE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_TRACE}] ${MODELPARAM_VALUE.ENABLE_TRACE}
}

proc update_MODELPARAM_VALUE.WRITE_START_SELECT { MODELPARAM_VALUE.WRITE_START_SELECT PARAM_VALUE.WRITE_START_SELECT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRITE_START_SELECT}] ${MODELPARAM_VALUE.WRITE_START_SELECT}
}

proc update_MODELPARAM_VALUE.WRITE_STOP_SELECT { MODELPARAM_VALUE.WRITE_STOP_SELECT PARAM_VALUE.WRITE_STOP_SELECT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WRITE_STOP_SELECT}] ${MODELPARAM_VALUE.WRITE_STOP_SELECT}
}

proc update_MODELPARAM_VALUE.READ_START_SELECT { MODELPARAM_VALUE.READ_START_SELECT PARAM_VALUE.READ_START_SELECT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ_START_SELECT}] ${MODELPARAM_VALUE.READ_START_SELECT}
}

proc update_MODELPARAM_VALUE.READ_STOP_SELECT { MODELPARAM_VALUE.READ_STOP_SELECT PARAM_VALUE.READ_STOP_SELECT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.READ_STOP_SELECT}] ${MODELPARAM_VALUE.READ_STOP_SELECT}
}

proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.ADDR_WIDTH { MODELPARAM_VALUE.ADDR_WIDTH PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_WIDTH}] ${MODELPARAM_VALUE.ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.COUNT_WIDTH { MODELPARAM_VALUE.COUNT_WIDTH PARAM_VALUE.COUNT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COUNT_WIDTH}] ${MODELPARAM_VALUE.COUNT_WIDTH}
}

proc update_MODELPARAM_VALUE.USER_WIDTH { MODELPARAM_VALUE.USER_WIDTH PARAM_VALUE.USER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USER_WIDTH}] ${MODELPARAM_VALUE.USER_WIDTH}
}

proc update_MODELPARAM_VALUE.ID_WIDTH { MODELPARAM_VALUE.ID_WIDTH PARAM_VALUE.ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ID_WIDTH}] ${MODELPARAM_VALUE.ID_WIDTH}
}

proc update_MODELPARAM_VALUE.ENABLE_ADDR_FILTER { MODELPARAM_VALUE.ENABLE_ADDR_FILTER PARAM_VALUE.ENABLE_ADDR_FILTER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_ADDR_FILTER}] ${MODELPARAM_VALUE.ENABLE_ADDR_FILTER}
}

proc update_MODELPARAM_VALUE.ADDR_MIN { MODELPARAM_VALUE.ADDR_MIN PARAM_VALUE.ADDR_MIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_MIN}] ${MODELPARAM_VALUE.ADDR_MIN}
}

proc update_MODELPARAM_VALUE.ADDR_MAX { MODELPARAM_VALUE.ADDR_MAX PARAM_VALUE.ADDR_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_MAX}] ${MODELPARAM_VALUE.ADDR_MAX}
}

