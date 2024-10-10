# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"


}

proc update_PARAM_VALUE.C_saxi_lite_cq_DATA_WIDTH { PARAM_VALUE.C_saxi_lite_cq_DATA_WIDTH } {
	# Procedure called to update C_saxi_lite_cq_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_saxi_lite_cq_DATA_WIDTH { PARAM_VALUE.C_saxi_lite_cq_DATA_WIDTH } {
	# Procedure called to validate C_saxi_lite_cq_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_saxi_lite_cq_ADDR_WIDTH { PARAM_VALUE.C_saxi_lite_cq_ADDR_WIDTH } {
	# Procedure called to update C_saxi_lite_cq_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_saxi_lite_cq_ADDR_WIDTH { PARAM_VALUE.C_saxi_lite_cq_ADDR_WIDTH } {
	# Procedure called to validate C_saxi_lite_cq_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_saxi_lite_cq_BASEADDR { PARAM_VALUE.C_saxi_lite_cq_BASEADDR } {
	# Procedure called to update C_saxi_lite_cq_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_saxi_lite_cq_BASEADDR { PARAM_VALUE.C_saxi_lite_cq_BASEADDR } {
	# Procedure called to validate C_saxi_lite_cq_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_saxi_lite_cq_HIGHADDR { PARAM_VALUE.C_saxi_lite_cq_HIGHADDR } {
	# Procedure called to update C_saxi_lite_cq_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_saxi_lite_cq_HIGHADDR { PARAM_VALUE.C_saxi_lite_cq_HIGHADDR } {
	# Procedure called to validate C_saxi_lite_cq_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C_maxi_lite_mb_START_DATA_VALUE { PARAM_VALUE.C_maxi_lite_mb_START_DATA_VALUE } {
	# Procedure called to update C_maxi_lite_mb_START_DATA_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_maxi_lite_mb_START_DATA_VALUE { PARAM_VALUE.C_maxi_lite_mb_START_DATA_VALUE } {
	# Procedure called to validate C_maxi_lite_mb_START_DATA_VALUE
	return true
}

proc update_PARAM_VALUE.C_maxi_lite_mb_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_maxi_lite_mb_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_maxi_lite_mb_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_maxi_lite_mb_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_maxi_lite_mb_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_maxi_lite_mb_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_maxi_lite_mb_ADDR_WIDTH { PARAM_VALUE.C_maxi_lite_mb_ADDR_WIDTH } {
	# Procedure called to update C_maxi_lite_mb_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_maxi_lite_mb_ADDR_WIDTH { PARAM_VALUE.C_maxi_lite_mb_ADDR_WIDTH } {
	# Procedure called to validate C_maxi_lite_mb_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_maxi_lite_mb_DATA_WIDTH { PARAM_VALUE.C_maxi_lite_mb_DATA_WIDTH } {
	# Procedure called to update C_maxi_lite_mb_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_maxi_lite_mb_DATA_WIDTH { PARAM_VALUE.C_maxi_lite_mb_DATA_WIDTH } {
	# Procedure called to validate C_maxi_lite_mb_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_maxi_lite_mb_TRANSACTIONS_NUM { PARAM_VALUE.C_maxi_lite_mb_TRANSACTIONS_NUM } {
	# Procedure called to update C_maxi_lite_mb_TRANSACTIONS_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_maxi_lite_mb_TRANSACTIONS_NUM { PARAM_VALUE.C_maxi_lite_mb_TRANSACTIONS_NUM } {
	# Procedure called to validate C_maxi_lite_mb_TRANSACTIONS_NUM
	return true
}


proc update_MODELPARAM_VALUE.C_saxi_lite_cq_DATA_WIDTH { MODELPARAM_VALUE.C_saxi_lite_cq_DATA_WIDTH PARAM_VALUE.C_saxi_lite_cq_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_saxi_lite_cq_DATA_WIDTH}] ${MODELPARAM_VALUE.C_saxi_lite_cq_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_saxi_lite_cq_ADDR_WIDTH { MODELPARAM_VALUE.C_saxi_lite_cq_ADDR_WIDTH PARAM_VALUE.C_saxi_lite_cq_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_saxi_lite_cq_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_saxi_lite_cq_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_maxi_lite_mb_START_DATA_VALUE { MODELPARAM_VALUE.C_maxi_lite_mb_START_DATA_VALUE PARAM_VALUE.C_maxi_lite_mb_START_DATA_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_maxi_lite_mb_START_DATA_VALUE}] ${MODELPARAM_VALUE.C_maxi_lite_mb_START_DATA_VALUE}
}

proc update_MODELPARAM_VALUE.C_maxi_lite_mb_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_maxi_lite_mb_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_maxi_lite_mb_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_maxi_lite_mb_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_maxi_lite_mb_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_maxi_lite_mb_ADDR_WIDTH { MODELPARAM_VALUE.C_maxi_lite_mb_ADDR_WIDTH PARAM_VALUE.C_maxi_lite_mb_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_maxi_lite_mb_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_maxi_lite_mb_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_maxi_lite_mb_DATA_WIDTH { MODELPARAM_VALUE.C_maxi_lite_mb_DATA_WIDTH PARAM_VALUE.C_maxi_lite_mb_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_maxi_lite_mb_DATA_WIDTH}] ${MODELPARAM_VALUE.C_maxi_lite_mb_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_maxi_lite_mb_TRANSACTIONS_NUM { MODELPARAM_VALUE.C_maxi_lite_mb_TRANSACTIONS_NUM PARAM_VALUE.C_maxi_lite_mb_TRANSACTIONS_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_maxi_lite_mb_TRANSACTIONS_NUM}] ${MODELPARAM_VALUE.C_maxi_lite_mb_TRANSACTIONS_NUM}
}

