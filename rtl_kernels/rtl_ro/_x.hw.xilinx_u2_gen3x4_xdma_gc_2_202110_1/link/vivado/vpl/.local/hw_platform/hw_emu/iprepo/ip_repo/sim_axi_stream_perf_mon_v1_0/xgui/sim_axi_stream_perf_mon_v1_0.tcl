# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  set MONITOR_ID [ipgui::add_param $IPINST -name "MONITOR_ID"]
  set_property tooltip {Unique ID for each Monitor} ${MONITOR_ID}
  ipgui::add_param $IPINST -name "C_AXI_STRM_TUSER_WIDTH"
  ipgui::add_param $IPINST -name "C_AXI_STRM_DATA_WIDTH"
  ipgui::add_param $IPINST -name "C_AXI_STRM_TDEST_WIDTH"
  ipgui::add_param $IPINST -name "C_AXI_STRM_ID_WIDTH"

}

proc update_PARAM_VALUE.C_AXI_STRM_DATA_WIDTH { PARAM_VALUE.C_AXI_STRM_DATA_WIDTH } {
	# Procedure called to update C_AXI_STRM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_STRM_DATA_WIDTH { PARAM_VALUE.C_AXI_STRM_DATA_WIDTH } {
	# Procedure called to validate C_AXI_STRM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_STRM_ID_WIDTH { PARAM_VALUE.C_AXI_STRM_ID_WIDTH } {
	# Procedure called to update C_AXI_STRM_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_STRM_ID_WIDTH { PARAM_VALUE.C_AXI_STRM_ID_WIDTH } {
	# Procedure called to validate C_AXI_STRM_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_STRM_TDEST_WIDTH { PARAM_VALUE.C_AXI_STRM_TDEST_WIDTH } {
	# Procedure called to update C_AXI_STRM_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_STRM_TDEST_WIDTH { PARAM_VALUE.C_AXI_STRM_TDEST_WIDTH } {
	# Procedure called to validate C_AXI_STRM_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_STRM_TUSER_WIDTH { PARAM_VALUE.C_AXI_STRM_TUSER_WIDTH } {
	# Procedure called to update C_AXI_STRM_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_STRM_TUSER_WIDTH { PARAM_VALUE.C_AXI_STRM_TUSER_WIDTH } {
	# Procedure called to validate C_AXI_STRM_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.MONITOR_ID { PARAM_VALUE.MONITOR_ID } {
	# Procedure called to update MONITOR_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MONITOR_ID { PARAM_VALUE.MONITOR_ID } {
	# Procedure called to validate MONITOR_ID
	return true
}


