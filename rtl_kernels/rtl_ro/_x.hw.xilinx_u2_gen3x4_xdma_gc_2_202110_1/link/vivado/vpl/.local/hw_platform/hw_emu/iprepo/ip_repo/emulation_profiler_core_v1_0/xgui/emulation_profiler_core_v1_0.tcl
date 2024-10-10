# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "EMULATION" -parent ${Page_0}
  set NUM_TRACE_PORTS [ipgui::add_param $IPINST -name "NUM_TRACE_PORTS" -parent ${Page_0}]
  set TRACE_OFFLOADING [ipgui::add_param $IPINST -name "TRACE_OFFLOADING" -widget comboBox -parent ${Page_0}]
  set_property tooltip {Number of hardware monitor cores} ${NUM_TRACE_PORTS}
  ipgui::add_param $IPINST -name "USE_PASSTHROUGH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_AXIMM_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "S_AXIMM_ADDR_RANGE" -parent ${Page_0} 

}

proc update_PARAM_VALUE.EMULATION { PARAM_VALUE.EMULATION } {
	# Procedure called to update EMULATION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EMULATION { PARAM_VALUE.EMULATION } {
	# Procedure called to validate EMULATION
	return true
}

proc update_PARAM_VALUE.TRACE_OFFLOADING { PARAM_VALUE.TRACE_OFFLOADING } {
	# Procedure called to update TRACE_OFFLOADING when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TRACE_OFFLOADING { PARAM_VALUE.TRACE_OFFLOADING } {
	# Procedure called to validate TRACE_OFFLOADING
	return true
}

proc update_PARAM_VALUE.NUM_TRACE_PORTS { PARAM_VALUE.NUM_TRACE_PORTS } {
	# Procedure called to update NUM_TRACE_PORTS when any of the dependent parameters in the arguments change
}

proc update_PARAM_VALUE.S_AXIMM_ID_WIDTH { PARAM_VALUE.S_AXIMM_ID_WIDTH } {
	# Procedure called to update NUM_TRACE_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_AXIMM_ID_WIDTH { PARAM_VALUE.S_AXIMM_ID_WIDTH } {
	# Procedure called to update NUM_TRACE_PORTS when any of the dependent parameters in the arguments change
  return true
}

proc update_PARAM_VALUE.S_AXIMM_DATA_WIDTH { PARAM_VALUE.S_AXIMM_DATA_WIDTH } {
	# Procedure called to update NUM_TRACE_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_AXIMM_DATA_WIDTH { PARAM_VALUE.S_AXIMM_DATA_WIDTH } {
	# Procedure called to update NUM_TRACE_PORTS when any of the dependent parameters in the arguments change
  return true
}

proc update_PARAM_VALUE.S_AXIMM_ADDR_WIDTH { PARAM_VALUE.S_AXIMM_ADDR_WIDTH } {
	# Procedure called to update NUM_TRACE_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_AXIMM_ADDR_WIDTH { PARAM_VALUE.S_AXIMM_ADDR_WIDTH } {
	# Procedure called to update NUM_TRACE_PORTS when any of the dependent parameters in the arguments change
  return true
}
proc update_PARAM_VALUE.S_AXIMM_ADDR_RANGE { PARAM_VALUE.S_AXIMM_ADDR_RANGE } {
	# Procedure called to update NUM_TRACE_PORTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_AXIMM_ADDR_RANGE { PARAM_VALUE.S_AXIMM_ADDR_RANGE } {
	# Procedure called to update NUM_TRACE_PORTS when any of the dependent parameters in the arguments change
  return true
}

proc validate_PARAM_VALUE.NUM_TRACE_PORTS { PARAM_VALUE.NUM_TRACE_PORTS } {
	# Procedure called to validate NUM_TRACE_PORTS
	return true
}

proc update_PARAM_VALUE.USE_PASSTHROUGH { PARAM_VALUE.USE_PASSTHROUGH } {
	# Procedure called to update USE_PASSTHROUGH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USE_PASSTHROUGH { PARAM_VALUE.USE_PASSTHROUGH } {
	# Procedure called to validate USE_PASSTHROUGH
	return true
}


proc update_MODELPARAM_VALUE.NUM_TRACE_PORTS { MODELPARAM_VALUE.NUM_TRACE_PORTS PARAM_VALUE.NUM_TRACE_PORTS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_TRACE_PORTS}] ${MODELPARAM_VALUE.NUM_TRACE_PORTS}
}

proc update_MODELPARAM_VALUE.TRACE_OFFLOADING { MODELPARAM_VALUE.TRACE_OFFLOADING PARAM_VALUE.TRACE_OFFLOADING } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TRACE_OFFLOADING}] ${MODELPARAM_VALUE.TRACE_OFFLOADING}
}

proc update_MODELPARAM_VALUE.USE_PASSTHROUGH { MODELPARAM_VALUE.USE_PASSTHROUGH PARAM_VALUE.USE_PASSTHROUGH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USE_PASSTHROUGH}] ${MODELPARAM_VALUE.USE_PASSTHROUGH}
}

proc update_MODELPARAM_VALUE.EMULATION { MODELPARAM_VALUE.EMULATION PARAM_VALUE.EMULATION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EMULATION}] ${MODELPARAM_VALUE.EMULATION}
}

proc update_MODELPARAM_VALUE.S_AXIMM_ID_WIDTH { MODELPARAM_VALUE.S_AXIMM_ID_WIDTH PARAM_VALUE.S_AXIMM_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_AXIMM_ID_WIDTH}] ${MODELPARAM_VALUE.S_AXIMM_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.S_AXIMM_ADDR_WIDTH { MODELPARAM_VALUE.S_AXIMM_ADDR_WIDTH PARAM_VALUE.S_AXIMM_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_AXIMM_ADDR_WIDTH}] ${MODELPARAM_VALUE.S_AXIMM_ADDR_WIDTH}
}
proc update_MODELPARAM_VALUE.S_AXIMM_ADDR_RANGE { MODELPARAM_VALUE.S_AXIMM_ADDR_RANGE PARAM_VALUE.S_AXIMM_ADDR_RANGE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_AXIMM_ADDR_RANGE}] ${MODELPARAM_VALUE.S_AXIMM_ADDR_RANGE}
}


proc update_MODELPARAM_VALUE.S_AXIMM_DATA_WIDTH { MODELPARAM_VALUE.S_AXIMM_DATA_WIDTH PARAM_VALUE.S_AXIMM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_AXIMM_DATA_WIDTH}] ${MODELPARAM_VALUE.S_AXIMM_DATA_WIDTH}
}
