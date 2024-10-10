# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "REF_CLK_FREQ_HZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TEST_CLK_0_TYPE" -widget comboBox -parent ${Page_0}
  ipgui::add_param $IPINST -name "TEST_CLK_1_TYPE" -widget comboBox -parent ${Page_0}
  ipgui::add_param $IPINST -name "TEST_CLK_2_TYPE" -widget comboBox -parent ${Page_0}
  ipgui::add_param $IPINST -name "TEST_CLK_3_TYPE" -widget comboBox -parent ${Page_0}
}

proc update_PARAM_VALUE.REF_CLK_FREQ_HZ { PARAM_VALUE.REF_CLK_FREQ_HZ } {
	# Procedure called to update REF_CLK_FREQ_HZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REF_CLK_FREQ_HZ { PARAM_VALUE.REF_CLK_FREQ_HZ } {
	# Procedure called to validate REF_CLK_FREQ_HZ
	return true
}

proc update_MODELPARAM_VALUE.REF_CLK_FREQ_HZ { MODELPARAM_VALUE.REF_CLK_FREQ_HZ PARAM_VALUE.REF_CLK_FREQ_HZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REF_CLK_FREQ_HZ}] ${MODELPARAM_VALUE.REF_CLK_FREQ_HZ}
}

proc update_PARAM_VALUE.TEST_CLK_0_TYPE { PARAM_VALUE.TEST_CLK_0_TYPE } {
	# Procedure called to update TEST_CLK_0_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TEST_CLK_0_TYPE { PARAM_VALUE.TEST_CLK_0_TYPE } {
	# Procedure called to validate TEST_CLK_0_TYPE
	return true
}

proc update_MODELPARAM_VALUE.TEST_CLK_0_TYPE { MODELPARAM_VALUE.TEST_CLK_0_TYPE PARAM_VALUE.TEST_CLK_0_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TEST_CLK_0_TYPE}] ${MODELPARAM_VALUE.TEST_CLK_0_TYPE}
}

proc update_PARAM_VALUE.TEST_CLK_1_TYPE { PARAM_VALUE.TEST_CLK_1_TYPE } {
	# Procedure called to update TEST_CLK_1_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TEST_CLK_1_TYPE { PARAM_VALUE.TEST_CLK_1_TYPE } {
	# Procedure called to validate TEST_CLK_1_TYPE
	return true
}

proc update_MODELPARAM_VALUE.TEST_CLK_1_TYPE { MODELPARAM_VALUE.TEST_CLK_1_TYPE PARAM_VALUE.TEST_CLK_1_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TEST_CLK_1_TYPE}] ${MODELPARAM_VALUE.TEST_CLK_1_TYPE}
}

proc update_PARAM_VALUE.TEST_CLK_2_TYPE { PARAM_VALUE.TEST_CLK_2_TYPE } {
	# Procedure called to update TEST_CLK_2_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TEST_CLK_2_TYPE { PARAM_VALUE.TEST_CLK_2_TYPE } {
	# Procedure called to validate TEST_CLK_2_TYPE
	return true
}

proc update_MODELPARAM_VALUE.TEST_CLK_2_TYPE { MODELPARAM_VALUE.TEST_CLK_2_TYPE PARAM_VALUE.TEST_CLK_2_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TEST_CLK_2_TYPE}] ${MODELPARAM_VALUE.TEST_CLK_2_TYPE}
}

proc update_PARAM_VALUE.TEST_CLK_3_TYPE { PARAM_VALUE.TEST_CLK_3_TYPE } {
	# Procedure called to update TEST_CLK_3_TYPE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TEST_CLK_3_TYPE { PARAM_VALUE.TEST_CLK_3_TYPE } {
	# Procedure called to validate TEST_CLK_3_TYPE
	return true
}

proc update_MODELPARAM_VALUE.TEST_CLK_3_TYPE { MODELPARAM_VALUE.TEST_CLK_3_TYPE PARAM_VALUE.TEST_CLK_3_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TEST_CLK_3_TYPE}] ${MODELPARAM_VALUE.TEST_CLK_3_TYPE}
}
