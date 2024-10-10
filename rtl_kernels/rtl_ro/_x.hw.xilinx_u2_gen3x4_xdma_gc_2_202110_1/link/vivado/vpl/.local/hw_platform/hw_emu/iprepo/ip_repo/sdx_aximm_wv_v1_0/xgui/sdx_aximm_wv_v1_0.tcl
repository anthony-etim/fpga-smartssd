# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_MON_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MON_AXI_AWLEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MON_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MON_AXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MON_AXI_PROTOCOL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MON_AXI_SUB_PROTOCOL" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_MON_AXI_ADDR_WIDTH { PARAM_VALUE.C_MON_AXI_ADDR_WIDTH } {
	# Procedure called to update C_MON_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MON_AXI_ADDR_WIDTH { PARAM_VALUE.C_MON_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_MON_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MON_AXI_AWLEN { PARAM_VALUE.C_MON_AXI_AWLEN } {
	# Procedure called to update C_MON_AXI_AWLEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MON_AXI_AWLEN { PARAM_VALUE.C_MON_AXI_AWLEN } {
	# Procedure called to validate C_MON_AXI_AWLEN
	return true
}

proc update_PARAM_VALUE.C_MON_AXI_DATA_WIDTH { PARAM_VALUE.C_MON_AXI_DATA_WIDTH } {
	# Procedure called to update C_MON_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MON_AXI_DATA_WIDTH { PARAM_VALUE.C_MON_AXI_DATA_WIDTH } {
	# Procedure called to validate C_MON_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MON_AXI_ID_WIDTH { PARAM_VALUE.C_MON_AXI_ID_WIDTH } {
	# Procedure called to update C_MON_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MON_AXI_ID_WIDTH { PARAM_VALUE.C_MON_AXI_ID_WIDTH } {
	# Procedure called to validate C_MON_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MON_AXI_PROTOCOL { PARAM_VALUE.C_MON_AXI_PROTOCOL } {
	# Procedure called to update C_MON_AXI_PROTOCOL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MON_AXI_PROTOCOL { PARAM_VALUE.C_MON_AXI_PROTOCOL } {
	# Procedure called to validate C_MON_AXI_PROTOCOL
	return true
}

proc update_PARAM_VALUE.C_MON_AXI_SUB_PROTOCOL { PARAM_VALUE.C_MON_AXI_SUB_PROTOCOL } {
	# Procedure called to update C_MON_AXI_SUB_PROTOCOL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MON_AXI_SUB_PROTOCOL { PARAM_VALUE.C_MON_AXI_SUB_PROTOCOL } {
	# Procedure called to validate C_MON_AXI_SUB_PROTOCOL
	return true
}


proc update_MODELPARAM_VALUE.C_MON_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_MON_AXI_ADDR_WIDTH PARAM_VALUE.C_MON_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MON_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_MON_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MON_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_MON_AXI_DATA_WIDTH PARAM_VALUE.C_MON_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MON_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_MON_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MON_AXI_ID_WIDTH { MODELPARAM_VALUE.C_MON_AXI_ID_WIDTH PARAM_VALUE.C_MON_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MON_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_MON_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MON_AXI_AWLEN { MODELPARAM_VALUE.C_MON_AXI_AWLEN PARAM_VALUE.C_MON_AXI_AWLEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MON_AXI_AWLEN}] ${MODELPARAM_VALUE.C_MON_AXI_AWLEN}
}

proc update_MODELPARAM_VALUE.C_MON_AXI_PROTOCOL { MODELPARAM_VALUE.C_MON_AXI_PROTOCOL PARAM_VALUE.C_MON_AXI_PROTOCOL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MON_AXI_PROTOCOL}] ${MODELPARAM_VALUE.C_MON_AXI_PROTOCOL}
}

proc update_MODELPARAM_VALUE.C_MON_AXI_SUB_PROTOCOL { MODELPARAM_VALUE.C_MON_AXI_SUB_PROTOCOL PARAM_VALUE.C_MON_AXI_SUB_PROTOCOL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MON_AXI_SUB_PROTOCOL}] ${MODELPARAM_VALUE.C_MON_AXI_SUB_PROTOCOL}
}

