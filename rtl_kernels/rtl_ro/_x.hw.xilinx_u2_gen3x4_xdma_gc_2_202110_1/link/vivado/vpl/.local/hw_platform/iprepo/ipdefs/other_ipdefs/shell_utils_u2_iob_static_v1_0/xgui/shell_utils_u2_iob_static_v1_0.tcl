# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BMC_GPIO" -parent ${Page_0}


}

proc update_PARAM_VALUE.BMC_GPIO { PARAM_VALUE.BMC_GPIO } {
	# Procedure called to update BMC_GPIO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BMC_GPIO { PARAM_VALUE.BMC_GPIO } {
	# Procedure called to validate BMC_GPIO
	return true
}


proc update_MODELPARAM_VALUE.BMC_GPIO { MODELPARAM_VALUE.BMC_GPIO PARAM_VALUE.BMC_GPIO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BMC_GPIO}] ${MODELPARAM_VALUE.BMC_GPIO}
}

