# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CFG_REG_DATA_RD_ADDR_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CFG_REG_DATA_WR_ADDR_0" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_REG_USE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_AXI_DATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.CFG_REG_DATA_RD_ADDR_0 { PARAM_VALUE.CFG_REG_DATA_RD_ADDR_0 } {
	# Procedure called to update CFG_REG_DATA_RD_ADDR_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CFG_REG_DATA_RD_ADDR_0 { PARAM_VALUE.CFG_REG_DATA_RD_ADDR_0 } {
	# Procedure called to validate CFG_REG_DATA_RD_ADDR_0
	return true
}

proc update_PARAM_VALUE.CFG_REG_DATA_WR_ADDR_0 { PARAM_VALUE.CFG_REG_DATA_WR_ADDR_0 } {
	# Procedure called to update CFG_REG_DATA_WR_ADDR_0 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CFG_REG_DATA_WR_ADDR_0 { PARAM_VALUE.CFG_REG_DATA_WR_ADDR_0 } {
	# Procedure called to validate CFG_REG_DATA_WR_ADDR_0
	return true
}

proc update_PARAM_VALUE.DATA_REG_USE { PARAM_VALUE.DATA_REG_USE } {
	# Procedure called to update DATA_REG_USE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_REG_USE { PARAM_VALUE.DATA_REG_USE } {
	# Procedure called to validate DATA_REG_USE
	return true
}

proc update_PARAM_VALUE.M_AXI_ADDR_WIDTH { PARAM_VALUE.M_AXI_ADDR_WIDTH } {
	# Procedure called to update M_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_AXI_ADDR_WIDTH { PARAM_VALUE.M_AXI_ADDR_WIDTH } {
	# Procedure called to validate M_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.M_AXI_DATA_WIDTH { PARAM_VALUE.M_AXI_DATA_WIDTH } {
	# Procedure called to update M_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_AXI_DATA_WIDTH { PARAM_VALUE.M_AXI_DATA_WIDTH } {
	# Procedure called to validate M_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.STRB_WIDTH { PARAM_VALUE.STRB_WIDTH } {
	# Procedure called to update STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STRB_WIDTH { PARAM_VALUE.STRB_WIDTH } {
	# Procedure called to validate STRB_WIDTH
	return true
}

proc update_PARAM_VALUE.S_AXI_ADDR_WIDTH { PARAM_VALUE.S_AXI_ADDR_WIDTH } {
	# Procedure called to update S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_AXI_ADDR_WIDTH { PARAM_VALUE.S_AXI_ADDR_WIDTH } {
	# Procedure called to validate S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.S_AXI_DATA_WIDTH { PARAM_VALUE.S_AXI_DATA_WIDTH } {
	# Procedure called to update S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.S_AXI_DATA_WIDTH { PARAM_VALUE.S_AXI_DATA_WIDTH } {
	# Procedure called to validate S_AXI_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.S_AXI_ADDR_WIDTH PARAM_VALUE.S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.S_AXI_DATA_WIDTH { MODELPARAM_VALUE.S_AXI_DATA_WIDTH PARAM_VALUE.S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.M_AXI_ADDR_WIDTH { MODELPARAM_VALUE.M_AXI_ADDR_WIDTH PARAM_VALUE.M_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.M_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.M_AXI_DATA_WIDTH { MODELPARAM_VALUE.M_AXI_DATA_WIDTH PARAM_VALUE.M_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.M_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.STRB_WIDTH { MODELPARAM_VALUE.STRB_WIDTH PARAM_VALUE.STRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STRB_WIDTH}] ${MODELPARAM_VALUE.STRB_WIDTH}
}

proc update_MODELPARAM_VALUE.DATA_REG_USE { MODELPARAM_VALUE.DATA_REG_USE PARAM_VALUE.DATA_REG_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_REG_USE}] ${MODELPARAM_VALUE.DATA_REG_USE}
}

proc update_MODELPARAM_VALUE.CFG_REG_DATA_RD_ADDR_0 { MODELPARAM_VALUE.CFG_REG_DATA_RD_ADDR_0 PARAM_VALUE.CFG_REG_DATA_RD_ADDR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_DATA_RD_ADDR_0}] ${MODELPARAM_VALUE.CFG_REG_DATA_RD_ADDR_0}
}

proc update_MODELPARAM_VALUE.CFG_REG_DATA_WR_ADDR_0 { MODELPARAM_VALUE.CFG_REG_DATA_WR_ADDR_0 PARAM_VALUE.CFG_REG_DATA_WR_ADDR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_DATA_WR_ADDR_0}] ${MODELPARAM_VALUE.CFG_REG_DATA_WR_ADDR_0}
}

