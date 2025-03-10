# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set MONITOR_ID [ipgui::add_param $IPINST -name "MONITOR_ID" -parent ${Page_0}]
  set_property tooltip {Unique ID for each Monitor} ${MONITOR_ID}
  #Adding Group
  set AXI_Properties [ipgui::add_group $IPINST -name "AXI Properties" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "C_AXI_ID_WIDTH" -parent ${AXI_Properties}
  ipgui::add_param $IPINST -name "C_AXI_DATA_WIDTH" -parent ${AXI_Properties} -widget comboBox
  ipgui::add_param $IPINST -name "C_AXI_ADDR_WIDTH" -parent ${AXI_Properties}
  ipgui::add_param $IPINST -name "C_AXI_AWUSER_WIDTH" -parent ${AXI_Properties}
  ipgui::add_param $IPINST -name "C_AXI_WUSER_WIDTH" -parent ${AXI_Properties}
  ipgui::add_param $IPINST -name "C_AXI_BUSER_WIDTH" -parent ${AXI_Properties}
  ipgui::add_param $IPINST -name "C_AXI_ARUSER_WIDTH" -parent ${AXI_Properties}
  ipgui::add_param $IPINST -name "C_AXI_RUSER_WIDTH" -parent ${AXI_Properties}



}

proc update_PARAM_VALUE.MONITOR_ID { PARAM_VALUE.MONITOR_ID } {
	# Procedure called to update MONITOR_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MONITOR_ID { PARAM_VALUE.MONITOR_ID } {
	# Procedure called to validate MONITOR_ID
	return true
}

proc update_PARAM_VALUE.C_AXI_ID_WIDTH { PARAM_VALUE.C_AXI_ID_WIDTH } {
	# Procedure called to update C_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_ID_WIDTH { PARAM_VALUE.C_AXI_ID_WIDTH } {
	# Procedure called to validate C_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to update C_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_DATA_WIDTH { PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to validate C_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to update C_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_AWUSER_WIDTH { PARAM_VALUE.C_AXI_AWUSER_WIDTH } {
	# Procedure called to update C_AXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_AWUSER_WIDTH { PARAM_VALUE.C_AXI_AWUSER_WIDTH } {
	# Procedure called to validate C_AXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_ARUSER_WIDTH { PARAM_VALUE.C_AXI_ARUSER_WIDTH } {
	# Procedure called to update C_AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_ARUSER_WIDTH { PARAM_VALUE.C_AXI_ARUSER_WIDTH } {
	# Procedure called to validate C_AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_WUSER_WIDTH { PARAM_VALUE.C_AXI_WUSER_WIDTH } {
	# Procedure called to update C_AXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_WUSER_WIDTH { PARAM_VALUE.C_AXI_WUSER_WIDTH } {
	# Procedure called to validate C_AXI_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_RUSER_WIDTH { PARAM_VALUE.C_AXI_RUSER_WIDTH } {
	# Procedure called to update C_AXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_RUSER_WIDTH { PARAM_VALUE.C_AXI_RUSER_WIDTH } {
	# Procedure called to validate C_AXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_BUSER_WIDTH { PARAM_VALUE.C_AXI_BUSER_WIDTH } {
	# Procedure called to update C_AXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_BUSER_WIDTH { PARAM_VALUE.C_AXI_BUSER_WIDTH } {
	# Procedure called to validate C_AXI_BUSER_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_AXI_ID_WIDTH { MODELPARAM_VALUE.C_AXI_ID_WIDTH PARAM_VALUE.C_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_AXI_DATA_WIDTH PARAM_VALUE.C_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_AXI_ADDR_WIDTH PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_AXI_AWUSER_WIDTH PARAM_VALUE.C_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_AXI_ARUSER_WIDTH PARAM_VALUE.C_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_WUSER_WIDTH { MODELPARAM_VALUE.C_AXI_WUSER_WIDTH PARAM_VALUE.C_AXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_AXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_RUSER_WIDTH { MODELPARAM_VALUE.C_AXI_RUSER_WIDTH PARAM_VALUE.C_AXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_AXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_BUSER_WIDTH { MODELPARAM_VALUE.C_AXI_BUSER_WIDTH PARAM_VALUE.C_AXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_AXI_BUSER_WIDTH}
}

