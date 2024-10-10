# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "EN_AXI_LITE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_TRACE" -parent ${Page_0} -widget checkBox
  set DETAILED_TRACE [ipgui::add_param $IPINST -name "DETAILED_TRACE" -parent ${Page_0} -widget checkBox]
  set_property tooltip {Detailed Stream Trace including stalls} ${DETAILED_TRACE}
  set AXI_Properties [ipgui::add_group $IPINST -name "AXI Properties" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "AXISTREAM_ID_WIDTH" -parent ${AXI_Properties}
  ipgui::add_param $IPINST -name "AXISTREAM_DEST_WIDTH" -parent ${AXI_Properties}
  ipgui::add_param $IPINST -name "AXISTREAM_DATA_WIDTH" -parent ${AXI_Properties}

  ipgui::add_param $IPINST -name "TRACE_ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MONITOR_ID" -parent ${Page_0}


}

proc update_PARAM_VALUE.DETAILED_TRACE { PARAM_VALUE.DETAILED_TRACE } {
	# Procedure called to update DETAILED_TRACE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DETAILED_TRACE { PARAM_VALUE.DETAILED_TRACE } {
	# Procedure called to validate DETAILED_TRACE
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

proc update_PARAM_VALUE.TDATA_NUM_BYTES { PARAM_VALUE.TDATA_NUM_BYTES } {
	# Procedure called to update TDATA_NUM_BYTES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TDATA_NUM_BYTES { PARAM_VALUE.TDATA_NUM_BYTES } {
	# Procedure called to validate TDATA_NUM_BYTES
	return true
}

proc update_PARAM_VALUE.TRACE_ID { PARAM_VALUE.TRACE_ID } {
	# Procedure called to update TRACE_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TRACE_ID { PARAM_VALUE.TRACE_ID } {
	# Procedure called to validate TRACE_ID
	return true
}

proc update_PARAM_VALUE.AXISTREAM_DEST_WIDTH { PARAM_VALUE.AXISTREAM_DEST_WIDTH } {
	# Procedure called to update ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXISTREAM_DEST_WIDTH { PARAM_VALUE.AXISTREAM_DEST_WIDTH } {
	# Procedure called to validate ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.AXISTREAM_DATA_WIDTH { PARAM_VALUE.AXISTREAM_DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXISTREAM_DATA_WIDTH { PARAM_VALUE.AXISTREAM_DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXISTREAM_ID_WIDTH { PARAM_VALUE.AXISTREAM_ID_WIDTH } {
	# Procedure called to update ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXISTREAM_ID_WIDTH { PARAM_VALUE.AXISTREAM_ID_WIDTH } {
	# Procedure called to validate ID_WIDTH
	return true
}

proc update_PARAM_VALUE.MONITOR_ID { PARAM_VALUE.MONITOR_ID } {
	# Procedure called to update MONITOR_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MONITOR_ID { PARAM_VALUE.MONITOR_ID } {
	# Procedure called to validate MONITOR_ID
	return true
}

proc update_PARAM_VALUE.HAS_TLAST { PARAM_VALUE.HAS_TLAST } {
	# Procedure called to update HAS_TLAST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HAS_TLAST { PARAM_VALUE.HAS_TLAST } {
	# Procedure called to validate HAS_TLAST
	return true
}

proc update_MODELPARAM_VALUE.HAS_TLAST { MODELPARAM_VALUE.HAS_TLAST PARAM_VALUE.HAS_TLAST } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HAS_TLAST}] ${MODELPARAM_VALUE.HAS_TLAST}
}

proc update_MODELPARAM_VALUE.TRACE_ID { MODELPARAM_VALUE.TRACE_ID PARAM_VALUE.TRACE_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TRACE_ID}] ${MODELPARAM_VALUE.TRACE_ID}
}

proc update_MODELPARAM_VALUE.EN_AXI_LITE { MODELPARAM_VALUE.EN_AXI_LITE PARAM_VALUE.EN_AXI_LITE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EN_AXI_LITE}] ${MODELPARAM_VALUE.EN_AXI_LITE}
}

proc update_MODELPARAM_VALUE.ENABLE_TRACE { MODELPARAM_VALUE.ENABLE_TRACE PARAM_VALUE.ENABLE_TRACE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_TRACE}] ${MODELPARAM_VALUE.ENABLE_TRACE}
}

proc update_MODELPARAM_VALUE.TDATA_NUM_BYTES { MODELPARAM_VALUE.TDATA_NUM_BYTES PARAM_VALUE.TDATA_NUM_BYTES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TDATA_NUM_BYTES}] ${MODELPARAM_VALUE.TDATA_NUM_BYTES}
}

proc update_MODELPARAM_VALUE.DETAILED_TRACE { MODELPARAM_VALUE.DETAILED_TRACE PARAM_VALUE.DETAILED_TRACE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DETAILED_TRACE}] ${MODELPARAM_VALUE.DETAILED_TRACE}
}

proc update_MODELPARAM_VALUE.AXISTREAM_DATA_WIDTH { MODELPARAM_VALUE.AXISTREAM_DATA_WIDTH PARAM_VALUE.AXISTREAM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXISTREAM_DATA_WIDTH}] ${MODELPARAM_VALUE.AXISTREAM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXISTREAM_DEST_WIDTH { MODELPARAM_VALUE.AXISTREAM_DEST_WIDTH PARAM_VALUE.AXISTREAM_DEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXISTREAM_DEST_WIDTH}] ${MODELPARAM_VALUE.AXISTREAM_DEST_WIDTH}
}

proc update_MODELPARAM_VALUE.AXISTREAM_ID_WIDTH { MODELPARAM_VALUE.AXISTREAM_ID_WIDTH PARAM_VALUE.AXISTREAM_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXISTREAM_ID_WIDTH}] ${MODELPARAM_VALUE.AXISTREAM_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.MONITOR_ID { MODELPARAM_VALUE.MONITOR_ID PARAM_VALUE.MONITOR_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MONITOR_ID}] ${MODELPARAM_VALUE.MONITOR_ID}
}
