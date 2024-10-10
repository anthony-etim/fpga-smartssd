# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ENABLE_TRACE" -parent ${Page_0} -widget checkBox
  ipgui::add_param $IPINST -name "TRACE_ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MONITOR_MODE" -parent ${Page_0} -widget comboBox


}

proc update_PARAM_VALUE.ENABLE_TRACE { PARAM_VALUE.ENABLE_TRACE } {
	# Procedure called to update ENABLE_TRACE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_TRACE { PARAM_VALUE.ENABLE_TRACE } {
	# Procedure called to validate ENABLE_TRACE
	return true
}

proc update_PARAM_VALUE.MONITOR_MODE { PARAM_VALUE.MONITOR_MODE } {
	# Procedure called to update MONITOR_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MONITOR_MODE { PARAM_VALUE.MONITOR_MODE } {
	# Procedure called to validate MONITOR_MODE
	return true
}

proc update_PARAM_VALUE.TRACE_ID { PARAM_VALUE.TRACE_ID } {
	# Procedure called to update TRACE_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TRACE_ID { PARAM_VALUE.TRACE_ID } {
	# Procedure called to validate TRACE_ID
	return true
}

proc update_MODELPARAM_VALUE.TRACE_ID { MODELPARAM_VALUE.TRACE_ID PARAM_VALUE.TRACE_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TRACE_ID}] ${MODELPARAM_VALUE.TRACE_ID}
}

proc update_MODELPARAM_VALUE.MONITOR_MODE { MODELPARAM_VALUE.MONITOR_MODE PARAM_VALUE.MONITOR_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MONITOR_MODE}] ${MODELPARAM_VALUE.MONITOR_MODE}
}

proc update_MODELPARAM_VALUE.ENABLE_TRACE { MODELPARAM_VALUE.ENABLE_TRACE PARAM_VALUE.ENABLE_TRACE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_TRACE}] ${MODELPARAM_VALUE.ENABLE_TRACE}
}

