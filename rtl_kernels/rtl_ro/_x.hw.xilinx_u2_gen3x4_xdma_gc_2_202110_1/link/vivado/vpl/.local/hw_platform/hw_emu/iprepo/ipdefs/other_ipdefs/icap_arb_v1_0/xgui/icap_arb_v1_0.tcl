# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  #set C_S00_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  #set_property tooltip {Width of S_AXI data bus} ${C_S00_AXI_DATA_WIDTH}
  #set C_S00_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}]
  #set_property tooltip {Width of S_AXI address bus} ${C_S00_AXI_ADDR_WIDTH}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_NUM_ICAP_MASTERS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_USE_EXT_ICAP" -parent ${Page_0}
  set C_INPUT_PIPE_STAGES [ipgui::add_param $IPINST -parent ${Page_0} -name C_INPUT_PIPE_STAGES -widget comboBox]
  set_property display_name "Input Pipe Stages" [ipgui::get_guiparamspec  C_INPUT_PIPE_STAGES -of $IPINST]
  set_property tooltip "Number of input pipe stages" [ipgui::get_guiparamspec  C_INPUT_PIPE_STAGES -of $IPINST]	
}

#proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
#	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
#}
#
#proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
#	# Procedure called to validate C_S00_AXI_DATA_WIDTH
#	return true
#}

proc update_PARAM_VALUE.C_NUM_ICAP_MASTERS { PARAM_VALUE.C_NUM_ICAP_MASTERS } {
	# Procedure called to update C_NUM_ICAP_MASTERS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_NUM_ICAP_MASTERS { PARAM_VALUE.C_NUM_ICAP_MASTERS } {
	# Procedure called to validate C_NUM_ICAP_MASTERS
	return true
}

proc update_PARAM_VALUE.C_USE_EXT_ICAP { PARAM_VALUE.C_USE_EXT_ICAP } {
	# Procedure called to update C_USE_EXT_ICAP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_USE_EXT_ICAP { PARAM_VALUE.C_USE_EXT_ICAP } {
	# Procedure called to validate C_USE_EXT_ICAP
	return true
}

proc update_PARAM_VALUE.C_INPUT_PIPE_STAGES { PARAM_VALUE.C_INPUT_PIPE_STAGES } {
	# Procedure called to update C_INPUT_PIPE_STAGES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_INPUT_PIPE_STAGES { PARAM_VALUE.C_INPUT_PIPE_STAGES } {
	# Procedure called to validate C_INPUT_PIPE_STAGES
	return true
}

#proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
#	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
#}
#
#proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
#	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
#	return true
#}

#proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
#	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
#}
#
#proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
#	# Procedure called to validate C_S00_AXI_BASEADDR
#	return true
#}

#proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
#	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
#}
#
#proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
#	# Procedure called to validate C_S00_AXI_HIGHADDR
#	return true
#}


#proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
#	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
#	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
#}
#
#proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
#	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
#	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
#}

proc update_MODELPARAM_VALUE.C_NUM_ICAP_MASTERS { MODELPARAM_VALUE.C_NUM_ICAP_MASTERS PARAM_VALUE.C_NUM_ICAP_MASTERS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_NUM_ICAP_MASTERS}] ${MODELPARAM_VALUE.C_NUM_ICAP_MASTERS}
}

proc update_MODELPARAM_VALUE.C_USE_EXT_ICAP { MODELPARAM_VALUE.C_USE_EXT_ICAP PARAM_VALUE.C_USE_EXT_ICAP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_USE_EXT_ICAP}] ${MODELPARAM_VALUE.C_USE_EXT_ICAP}
}

proc update_MODELPARAM_VALUE.C_INPUT_PIPE_STAGES { MODELPARAM_VALUE.C_INPUT_PIPE_STAGES PARAM_VALUE.C_INPUT_PIPE_STAGES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_INPUT_PIPE_STAGES}] ${MODELPARAM_VALUE.C_INPUT_PIPE_STAGES}
}
