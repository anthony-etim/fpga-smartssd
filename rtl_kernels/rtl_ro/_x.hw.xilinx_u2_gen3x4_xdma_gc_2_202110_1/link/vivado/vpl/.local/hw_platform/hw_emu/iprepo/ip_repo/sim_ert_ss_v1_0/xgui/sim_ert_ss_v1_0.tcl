# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_s_axi_data_p2p_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_s_axi_data_p2p_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_s_axi_data_p2p_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_s_axi_data_p2p_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_s_axi_data_p2p_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_s_axi_data_p2p_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_s_axi_data_p2p_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_s_axi_data_p2p_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_s_axi_data_p2p_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_s_axi_data_p2p_HIGHADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_maxi_lite_mb_START_DATA_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_maxi_lite_mb_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_maxi_lite_mb_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_maxi_lite_mb_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_maxi_lite_mb_TRANSACTIONS_NUM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_m_axi_data_m2m_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_m_axi_data_m2m_BURST_LEN" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_m_axi_data_m2m_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_m_axi_data_m2m_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_m_axi_data_m2m_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_m_axi_data_m2m_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_m_axi_data_m2m_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_m_axi_data_m2m_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_m_axi_data_m2m_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_m_axi_data_m2m_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_s_axi_ctrl_user_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_s_axi_ctrl_user_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_s_axi_ctrl_user_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_s_axi_ctrl_user_HIGHADDR" -parent ${Page_0}

  ipgui::add_param $IPINST -name "C_s_axi_data_p2p_SUPPORTS_NARROW_BURST"

}

proc update_PARAM_VALUE.C_s_axi_data_p2p_SUPPORTS_NARROW_BURST { PARAM_VALUE.C_s_axi_data_p2p_SUPPORTS_NARROW_BURST } {
	# Procedure called to update C_s_axi_data_p2p_SUPPORTS_NARROW_BURST when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_data_p2p_SUPPORTS_NARROW_BURST { PARAM_VALUE.C_s_axi_data_p2p_SUPPORTS_NARROW_BURST } {
	# Procedure called to validate C_s_axi_data_p2p_SUPPORTS_NARROW_BURST
	return true
}

proc update_PARAM_VALUE.C_s_axi_data_p2p_ID_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_ID_WIDTH } {
	# Procedure called to update C_s_axi_data_p2p_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_data_p2p_ID_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_ID_WIDTH } {
	# Procedure called to validate C_s_axi_data_p2p_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_data_p2p_DATA_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_DATA_WIDTH } {
	# Procedure called to update C_s_axi_data_p2p_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_data_p2p_DATA_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_DATA_WIDTH } {
	# Procedure called to validate C_s_axi_data_p2p_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_data_p2p_ADDR_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_ADDR_WIDTH } {
	# Procedure called to update C_s_axi_data_p2p_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_data_p2p_ADDR_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_ADDR_WIDTH } {
	# Procedure called to validate C_s_axi_data_p2p_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_data_p2p_AWUSER_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_AWUSER_WIDTH } {
	# Procedure called to update C_s_axi_data_p2p_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_data_p2p_AWUSER_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_AWUSER_WIDTH } {
	# Procedure called to validate C_s_axi_data_p2p_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_data_p2p_ARUSER_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_ARUSER_WIDTH } {
	# Procedure called to update C_s_axi_data_p2p_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_data_p2p_ARUSER_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_ARUSER_WIDTH } {
	# Procedure called to validate C_s_axi_data_p2p_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_data_p2p_WUSER_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_WUSER_WIDTH } {
	# Procedure called to update C_s_axi_data_p2p_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_data_p2p_WUSER_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_WUSER_WIDTH } {
	# Procedure called to validate C_s_axi_data_p2p_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_data_p2p_RUSER_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_RUSER_WIDTH } {
	# Procedure called to update C_s_axi_data_p2p_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_data_p2p_RUSER_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_RUSER_WIDTH } {
	# Procedure called to validate C_s_axi_data_p2p_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_data_p2p_BUSER_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_BUSER_WIDTH } {
	# Procedure called to update C_s_axi_data_p2p_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_data_p2p_BUSER_WIDTH { PARAM_VALUE.C_s_axi_data_p2p_BUSER_WIDTH } {
	# Procedure called to validate C_s_axi_data_p2p_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_data_p2p_BASEADDR { PARAM_VALUE.C_s_axi_data_p2p_BASEADDR } {
	# Procedure called to update C_s_axi_data_p2p_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_data_p2p_BASEADDR { PARAM_VALUE.C_s_axi_data_p2p_BASEADDR } {
	# Procedure called to validate C_s_axi_data_p2p_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_s_axi_data_p2p_HIGHADDR { PARAM_VALUE.C_s_axi_data_p2p_HIGHADDR } {
	# Procedure called to update C_s_axi_data_p2p_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_data_p2p_HIGHADDR { PARAM_VALUE.C_s_axi_data_p2p_HIGHADDR } {
	# Procedure called to validate C_s_axi_data_p2p_HIGHADDR
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

proc update_PARAM_VALUE.C_m_axi_data_m2m_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_m_axi_data_m2m_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_m_axi_data_m2m_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_data_m2m_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_m_axi_data_m2m_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_m_axi_data_m2m_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_m_axi_data_m2m_BURST_LEN { PARAM_VALUE.C_m_axi_data_m2m_BURST_LEN } {
	# Procedure called to update C_m_axi_data_m2m_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_data_m2m_BURST_LEN { PARAM_VALUE.C_m_axi_data_m2m_BURST_LEN } {
	# Procedure called to validate C_m_axi_data_m2m_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_m_axi_data_m2m_ID_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_ID_WIDTH } {
	# Procedure called to update C_m_axi_data_m2m_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_data_m2m_ID_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_ID_WIDTH } {
	# Procedure called to validate C_m_axi_data_m2m_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_data_m2m_ADDR_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_ADDR_WIDTH } {
	# Procedure called to update C_m_axi_data_m2m_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_data_m2m_ADDR_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_ADDR_WIDTH } {
	# Procedure called to validate C_m_axi_data_m2m_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_data_m2m_DATA_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_DATA_WIDTH } {
	# Procedure called to update C_m_axi_data_m2m_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_data_m2m_DATA_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_DATA_WIDTH } {
	# Procedure called to validate C_m_axi_data_m2m_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_data_m2m_AWUSER_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_AWUSER_WIDTH } {
	# Procedure called to update C_m_axi_data_m2m_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_data_m2m_AWUSER_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_AWUSER_WIDTH } {
	# Procedure called to validate C_m_axi_data_m2m_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_data_m2m_ARUSER_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_ARUSER_WIDTH } {
	# Procedure called to update C_m_axi_data_m2m_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_data_m2m_ARUSER_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_ARUSER_WIDTH } {
	# Procedure called to validate C_m_axi_data_m2m_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_data_m2m_WUSER_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_WUSER_WIDTH } {
	# Procedure called to update C_m_axi_data_m2m_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_data_m2m_WUSER_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_WUSER_WIDTH } {
	# Procedure called to validate C_m_axi_data_m2m_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_data_m2m_RUSER_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_RUSER_WIDTH } {
	# Procedure called to update C_m_axi_data_m2m_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_data_m2m_RUSER_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_RUSER_WIDTH } {
	# Procedure called to validate C_m_axi_data_m2m_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_data_m2m_BUSER_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_BUSER_WIDTH } {
	# Procedure called to update C_m_axi_data_m2m_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_data_m2m_BUSER_WIDTH { PARAM_VALUE.C_m_axi_data_m2m_BUSER_WIDTH } {
	# Procedure called to validate C_m_axi_data_m2m_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_ctrl_user_DATA_WIDTH { PARAM_VALUE.C_s_axi_ctrl_user_DATA_WIDTH } {
	# Procedure called to update C_s_axi_ctrl_user_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_ctrl_user_DATA_WIDTH { PARAM_VALUE.C_s_axi_ctrl_user_DATA_WIDTH } {
	# Procedure called to validate C_s_axi_ctrl_user_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_ctrl_user_ADDR_WIDTH { PARAM_VALUE.C_s_axi_ctrl_user_ADDR_WIDTH } {
	# Procedure called to update C_s_axi_ctrl_user_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_ctrl_user_ADDR_WIDTH { PARAM_VALUE.C_s_axi_ctrl_user_ADDR_WIDTH } {
	# Procedure called to validate C_s_axi_ctrl_user_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_ctrl_user_BASEADDR { PARAM_VALUE.C_s_axi_ctrl_user_BASEADDR } {
	# Procedure called to update C_s_axi_ctrl_user_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_ctrl_user_BASEADDR { PARAM_VALUE.C_s_axi_ctrl_user_BASEADDR } {
	# Procedure called to validate C_s_axi_ctrl_user_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_s_axi_ctrl_user_HIGHADDR { PARAM_VALUE.C_s_axi_ctrl_user_HIGHADDR } {
	# Procedure called to update C_s_axi_ctrl_user_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_ctrl_user_HIGHADDR { PARAM_VALUE.C_s_axi_ctrl_user_HIGHADDR } {
	# Procedure called to validate C_s_axi_ctrl_user_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_s_axi_data_p2p_ID_WIDTH { MODELPARAM_VALUE.C_s_axi_data_p2p_ID_WIDTH PARAM_VALUE.C_s_axi_data_p2p_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axi_data_p2p_ID_WIDTH}] ${MODELPARAM_VALUE.C_s_axi_data_p2p_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s_axi_data_p2p_DATA_WIDTH { MODELPARAM_VALUE.C_s_axi_data_p2p_DATA_WIDTH PARAM_VALUE.C_s_axi_data_p2p_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axi_data_p2p_DATA_WIDTH}] ${MODELPARAM_VALUE.C_s_axi_data_p2p_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s_axi_data_p2p_ADDR_WIDTH { MODELPARAM_VALUE.C_s_axi_data_p2p_ADDR_WIDTH PARAM_VALUE.C_s_axi_data_p2p_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axi_data_p2p_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_s_axi_data_p2p_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s_axi_data_p2p_AWUSER_WIDTH { MODELPARAM_VALUE.C_s_axi_data_p2p_AWUSER_WIDTH PARAM_VALUE.C_s_axi_data_p2p_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axi_data_p2p_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_s_axi_data_p2p_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s_axi_data_p2p_ARUSER_WIDTH { MODELPARAM_VALUE.C_s_axi_data_p2p_ARUSER_WIDTH PARAM_VALUE.C_s_axi_data_p2p_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axi_data_p2p_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_s_axi_data_p2p_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s_axi_data_p2p_WUSER_WIDTH { MODELPARAM_VALUE.C_s_axi_data_p2p_WUSER_WIDTH PARAM_VALUE.C_s_axi_data_p2p_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axi_data_p2p_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_s_axi_data_p2p_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s_axi_data_p2p_RUSER_WIDTH { MODELPARAM_VALUE.C_s_axi_data_p2p_RUSER_WIDTH PARAM_VALUE.C_s_axi_data_p2p_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axi_data_p2p_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_s_axi_data_p2p_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s_axi_data_p2p_BUSER_WIDTH { MODELPARAM_VALUE.C_s_axi_data_p2p_BUSER_WIDTH PARAM_VALUE.C_s_axi_data_p2p_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axi_data_p2p_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_s_axi_data_p2p_BUSER_WIDTH}
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

proc update_MODELPARAM_VALUE.C_m_axi_data_m2m_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_m_axi_data_m2m_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_m_axi_data_m2m_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_data_m2m_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_m_axi_data_m2m_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_m_axi_data_m2m_BURST_LEN { MODELPARAM_VALUE.C_m_axi_data_m2m_BURST_LEN PARAM_VALUE.C_m_axi_data_m2m_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_data_m2m_BURST_LEN}] ${MODELPARAM_VALUE.C_m_axi_data_m2m_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_m_axi_data_m2m_ID_WIDTH { MODELPARAM_VALUE.C_m_axi_data_m2m_ID_WIDTH PARAM_VALUE.C_m_axi_data_m2m_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_data_m2m_ID_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_data_m2m_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_data_m2m_ADDR_WIDTH { MODELPARAM_VALUE.C_m_axi_data_m2m_ADDR_WIDTH PARAM_VALUE.C_m_axi_data_m2m_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_data_m2m_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_data_m2m_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_data_m2m_DATA_WIDTH { MODELPARAM_VALUE.C_m_axi_data_m2m_DATA_WIDTH PARAM_VALUE.C_m_axi_data_m2m_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_data_m2m_DATA_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_data_m2m_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_data_m2m_AWUSER_WIDTH { MODELPARAM_VALUE.C_m_axi_data_m2m_AWUSER_WIDTH PARAM_VALUE.C_m_axi_data_m2m_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_data_m2m_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_data_m2m_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_data_m2m_ARUSER_WIDTH { MODELPARAM_VALUE.C_m_axi_data_m2m_ARUSER_WIDTH PARAM_VALUE.C_m_axi_data_m2m_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_data_m2m_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_data_m2m_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_data_m2m_WUSER_WIDTH { MODELPARAM_VALUE.C_m_axi_data_m2m_WUSER_WIDTH PARAM_VALUE.C_m_axi_data_m2m_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_data_m2m_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_data_m2m_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_data_m2m_RUSER_WIDTH { MODELPARAM_VALUE.C_m_axi_data_m2m_RUSER_WIDTH PARAM_VALUE.C_m_axi_data_m2m_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_data_m2m_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_data_m2m_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_data_m2m_BUSER_WIDTH { MODELPARAM_VALUE.C_m_axi_data_m2m_BUSER_WIDTH PARAM_VALUE.C_m_axi_data_m2m_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_data_m2m_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_data_m2m_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s_axi_ctrl_user_DATA_WIDTH { MODELPARAM_VALUE.C_s_axi_ctrl_user_DATA_WIDTH PARAM_VALUE.C_s_axi_ctrl_user_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axi_ctrl_user_DATA_WIDTH}] ${MODELPARAM_VALUE.C_s_axi_ctrl_user_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s_axi_ctrl_user_ADDR_WIDTH { MODELPARAM_VALUE.C_s_axi_ctrl_user_ADDR_WIDTH PARAM_VALUE.C_s_axi_ctrl_user_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axi_ctrl_user_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_s_axi_ctrl_user_ADDR_WIDTH}
}

