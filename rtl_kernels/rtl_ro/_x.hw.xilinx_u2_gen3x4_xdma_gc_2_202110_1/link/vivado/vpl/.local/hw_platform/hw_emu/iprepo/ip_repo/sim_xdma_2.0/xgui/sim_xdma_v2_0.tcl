# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_M_AXI_2_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_M_AXI_2_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}]
  set_property tooltip {Base address of targeted slave} ${C_M_AXI_2_TARGET_SLAVE_BASE_ADDR}
  ipgui::add_param $IPINST -name "C_M_AXI_1_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXI_2_ENABLE" -parent ${Page_0}
  set C_M_AXI_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_M_AXI_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}]
  set_property tooltip {Base address of targeted slave} ${C_M_AXI_TARGET_SLAVE_BASE_ADDR}
  set C_M_AXI_2_BURST_LEN [ipgui::add_param $IPINST -name "C_M_AXI_2_BURST_LEN" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_M_AXI_2_BURST_LEN}
  set C_M_AXI_2_ID_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_2_ID_WIDTH" -parent ${Page_0}]
  set_property tooltip {Thread ID Width} ${C_M_AXI_2_ID_WIDTH}
  set C_M_AXI_2_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_2_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of Address Bus} ${C_M_AXI_2_ADDR_WIDTH}
  set C_M_AXI_2_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_2_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_M_AXI_2_DATA_WIDTH}
  set C_M_AXI_2_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_2_AWUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Address Bus} ${C_M_AXI_2_AWUSER_WIDTH}
  set C_M_AXI_2_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_2_ARUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Address Bus} ${C_M_AXI_2_ARUSER_WIDTH}
  set C_M_AXI_2_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_2_WUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Data Bus} ${C_M_AXI_2_WUSER_WIDTH}
  set C_M_AXI_2_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_2_RUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Data Bus} ${C_M_AXI_2_RUSER_WIDTH}
  set C_M_AXI_2_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_2_BUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Response Bus} ${C_M_AXI_2_BUSER_WIDTH}
  set C_M_AXI_1_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_M_AXI_1_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}]
  set_property tooltip {Base address of targeted slave} ${C_M_AXI_1_TARGET_SLAVE_BASE_ADDR}
  set C_M_AXI_1_BURST_LEN [ipgui::add_param $IPINST -name "C_M_AXI_1_BURST_LEN" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_M_AXI_1_BURST_LEN}
  set C_M_AXI_1_ID_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_1_ID_WIDTH" -parent ${Page_0}]
  set_property tooltip {Thread ID Width} ${C_M_AXI_1_ID_WIDTH}
  set C_M_AXI_1_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_1_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of Address Bus} ${C_M_AXI_1_ADDR_WIDTH}
  set C_M_AXI_1_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_1_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_M_AXI_1_DATA_WIDTH}
  set C_M_AXI_1_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_1_AWUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Address Bus} ${C_M_AXI_1_AWUSER_WIDTH}
  set C_M_AXI_1_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_1_ARUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Address Bus} ${C_M_AXI_1_ARUSER_WIDTH}
  set C_M_AXI_1_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_1_WUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Data Bus} ${C_M_AXI_1_WUSER_WIDTH}
  set C_M_AXI_1_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_1_RUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Data Bus} ${C_M_AXI_1_RUSER_WIDTH}
  set C_M_AXI_1_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_1_BUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Response Bus} ${C_M_AXI_1_BUSER_WIDTH}
  set C_M_AXI_LITE_START_DATA_VALUE [ipgui::add_param $IPINST -name "C_M_AXI_LITE_START_DATA_VALUE" -parent ${Page_0}]
  set_property tooltip {The master will start generating data from the C_M_START_DATA_VALUE value} ${C_M_AXI_LITE_START_DATA_VALUE}
  set C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}]
  set_property tooltip {The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.} ${C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR}
  set C_M_AXI_LITE_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_LITE_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of M_AXI address bus.      // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.} ${C_M_AXI_LITE_ADDR_WIDTH}
  set C_M_AXI_LITE_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_LITE_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of M_AXI data bus.      // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH} ${C_M_AXI_LITE_DATA_WIDTH}
  set C_M_AXI_LITE_TRANSACTIONS_NUM [ipgui::add_param $IPINST -name "C_M_AXI_LITE_TRANSACTIONS_NUM" -parent ${Page_0}]
  set_property tooltip {Transaction number is the number of write 
    // and read transactions the master will perform as a part of this example memory test.} ${C_M_AXI_LITE_TRANSACTIONS_NUM}
  set C_M_AXI_BURST_LEN [ipgui::add_param $IPINST -name "C_M_AXI_BURST_LEN" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_M_AXI_BURST_LEN}
  set C_M_AXI_ID_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_ID_WIDTH" -parent ${Page_0}]
  set_property tooltip {Thread ID Width} ${C_M_AXI_ID_WIDTH}
  set C_M_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of Address Bus} ${C_M_AXI_ADDR_WIDTH}
  set C_M_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_M_AXI_DATA_WIDTH}
  set C_M_AXI_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_AWUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Address Bus} ${C_M_AXI_AWUSER_WIDTH}
  set C_M_AXI_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_ARUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Address Bus} ${C_M_AXI_ARUSER_WIDTH}
  set C_M_AXI_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_WUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Data Bus} ${C_M_AXI_WUSER_WIDTH}
  set C_M_AXI_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_RUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Data Bus} ${C_M_AXI_RUSER_WIDTH}
  set C_M_AXI_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXI_BUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Response Bus} ${C_M_AXI_BUSER_WIDTH}


}

proc update_PARAM_VALUE.C_M_AXI_1_ENABLE { PARAM_VALUE.C_M_AXI_1_ENABLE } {
	# Procedure called to update C_M_AXI_1_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_1_ENABLE { PARAM_VALUE.C_M_AXI_1_ENABLE } {
	# Procedure called to validate C_M_AXI_1_ENABLE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_2_ENABLE { PARAM_VALUE.C_M_AXI_2_ENABLE } {
	# Procedure called to update C_M_AXI_2_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_2_ENABLE { PARAM_VALUE.C_M_AXI_2_ENABLE } {
	# Procedure called to validate C_M_AXI_2_ENABLE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_2_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXI_2_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M_AXI_2_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_2_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXI_2_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M_AXI_2_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M_AXI_2_BURST_LEN { PARAM_VALUE.C_M_AXI_2_BURST_LEN } {
	# Procedure called to update C_M_AXI_2_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_2_BURST_LEN { PARAM_VALUE.C_M_AXI_2_BURST_LEN } {
	# Procedure called to validate C_M_AXI_2_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M_AXI_2_ID_WIDTH { PARAM_VALUE.C_M_AXI_2_ID_WIDTH } {
	# Procedure called to update C_M_AXI_2_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_2_ID_WIDTH { PARAM_VALUE.C_M_AXI_2_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_2_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_2_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_2_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_2_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_2_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_2_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_2_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_2_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_2_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_2_DATA_WIDTH { PARAM_VALUE.C_M_AXI_2_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_2_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_2_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_2_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_2_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_2_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_2_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_2_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_2_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_2_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_2_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_2_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_2_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_2_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_2_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_2_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_2_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_2_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_2_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_2_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_2_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_2_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_2_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_2_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_2_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_2_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_2_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_1_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXI_1_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M_AXI_1_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_1_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXI_1_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M_AXI_1_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M_AXI_1_BURST_LEN { PARAM_VALUE.C_M_AXI_1_BURST_LEN } {
	# Procedure called to update C_M_AXI_1_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_1_BURST_LEN { PARAM_VALUE.C_M_AXI_1_BURST_LEN } {
	# Procedure called to validate C_M_AXI_1_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M_AXI_1_ID_WIDTH { PARAM_VALUE.C_M_AXI_1_ID_WIDTH } {
	# Procedure called to update C_M_AXI_1_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_1_ID_WIDTH { PARAM_VALUE.C_M_AXI_1_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_1_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_1_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_1_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_1_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_1_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_1_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_1_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_1_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_1_DATA_WIDTH { PARAM_VALUE.C_M_AXI_1_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_1_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_1_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_1_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_1_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_1_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_1_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_1_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_1_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_1_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_1_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_1_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_1_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_1_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_1_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_1_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_1_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_1_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_1_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_1_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_1_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_1_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_1_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_1_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_1_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_1_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_1_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_LITE_START_DATA_VALUE { PARAM_VALUE.C_M_AXI_LITE_START_DATA_VALUE } {
	# Procedure called to update C_M_AXI_LITE_START_DATA_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_LITE_START_DATA_VALUE { PARAM_VALUE.C_M_AXI_LITE_START_DATA_VALUE } {
	# Procedure called to validate C_M_AXI_LITE_START_DATA_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M_AXI_LITE_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_LITE_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_LITE_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_LITE_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_LITE_DATA_WIDTH { PARAM_VALUE.C_M_AXI_LITE_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_LITE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_LITE_DATA_WIDTH { PARAM_VALUE.C_M_AXI_LITE_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_LITE_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_LITE_TRANSACTIONS_NUM { PARAM_VALUE.C_M_AXI_LITE_TRANSACTIONS_NUM } {
	# Procedure called to update C_M_AXI_LITE_TRANSACTIONS_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_LITE_TRANSACTIONS_NUM { PARAM_VALUE.C_M_AXI_LITE_TRANSACTIONS_NUM } {
	# Procedure called to validate C_M_AXI_LITE_TRANSACTIONS_NUM
	return true
}

proc update_PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M_AXI_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M_AXI_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BURST_LEN { PARAM_VALUE.C_M_AXI_BURST_LEN } {
	# Procedure called to update C_M_AXI_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BURST_LEN { PARAM_VALUE.C_M_AXI_BURST_LEN } {
	# Procedure called to validate C_M_AXI_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ID_WIDTH { PARAM_VALUE.C_M_AXI_ID_WIDTH } {
	# Procedure called to update C_M_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ID_WIDTH { PARAM_VALUE.C_M_AXI_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_DATA_WIDTH { PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_BUSER_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_M_AXI_2_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M_AXI_2_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M_AXI_2_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_2_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M_AXI_2_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M_AXI_2_BURST_LEN { MODELPARAM_VALUE.C_M_AXI_2_BURST_LEN PARAM_VALUE.C_M_AXI_2_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_2_BURST_LEN}] ${MODELPARAM_VALUE.C_M_AXI_2_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_M_AXI_2_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_2_ID_WIDTH PARAM_VALUE.C_M_AXI_2_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_2_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_2_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_2_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_2_ADDR_WIDTH PARAM_VALUE.C_M_AXI_2_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_2_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_2_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_2_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_2_DATA_WIDTH PARAM_VALUE.C_M_AXI_2_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_2_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_2_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_2_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_2_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_2_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_2_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_2_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_2_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_2_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_2_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_2_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_2_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_2_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_2_WUSER_WIDTH PARAM_VALUE.C_M_AXI_2_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_2_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_2_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_2_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_2_RUSER_WIDTH PARAM_VALUE.C_M_AXI_2_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_2_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_2_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_2_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_2_BUSER_WIDTH PARAM_VALUE.C_M_AXI_2_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_2_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_2_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_1_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M_AXI_1_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M_AXI_1_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_1_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M_AXI_1_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M_AXI_1_BURST_LEN { MODELPARAM_VALUE.C_M_AXI_1_BURST_LEN PARAM_VALUE.C_M_AXI_1_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_1_BURST_LEN}] ${MODELPARAM_VALUE.C_M_AXI_1_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_M_AXI_1_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_1_ID_WIDTH PARAM_VALUE.C_M_AXI_1_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_1_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_1_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_1_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_1_ADDR_WIDTH PARAM_VALUE.C_M_AXI_1_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_1_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_1_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_1_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_1_DATA_WIDTH PARAM_VALUE.C_M_AXI_1_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_1_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_1_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_1_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_1_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_1_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_1_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_1_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_1_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_1_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_1_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_1_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_1_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_1_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_1_WUSER_WIDTH PARAM_VALUE.C_M_AXI_1_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_1_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_1_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_1_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_1_RUSER_WIDTH PARAM_VALUE.C_M_AXI_1_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_1_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_1_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_1_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_1_BUSER_WIDTH PARAM_VALUE.C_M_AXI_1_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_1_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_1_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_LITE_START_DATA_VALUE { MODELPARAM_VALUE.C_M_AXI_LITE_START_DATA_VALUE PARAM_VALUE.C_M_AXI_LITE_START_DATA_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_LITE_START_DATA_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_LITE_START_DATA_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M_AXI_LITE_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M_AXI_LITE_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_LITE_ADDR_WIDTH PARAM_VALUE.C_M_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_LITE_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_LITE_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_LITE_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_LITE_DATA_WIDTH PARAM_VALUE.C_M_AXI_LITE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_LITE_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_LITE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_LITE_TRANSACTIONS_NUM { MODELPARAM_VALUE.C_M_AXI_LITE_TRANSACTIONS_NUM PARAM_VALUE.C_M_AXI_LITE_TRANSACTIONS_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_LITE_TRANSACTIONS_NUM}] ${MODELPARAM_VALUE.C_M_AXI_LITE_TRANSACTIONS_NUM}
}

proc update_MODELPARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M_AXI_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BURST_LEN { MODELPARAM_VALUE.C_M_AXI_BURST_LEN PARAM_VALUE.C_M_AXI_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BURST_LEN}] ${MODELPARAM_VALUE.C_M_AXI_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_ID_WIDTH PARAM_VALUE.C_M_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH PARAM_VALUE.C_M_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH PARAM_VALUE.C_M_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_WUSER_WIDTH PARAM_VALUE.C_M_AXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_RUSER_WIDTH PARAM_VALUE.C_M_AXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_BUSER_WIDTH PARAM_VALUE.C_M_AXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_BUSER_WIDTH}
}
proc update_MODELPARAM_VALUE.C_M_AXI_1_ENABLE { MODELPARAM_VALUE.C_M_AXI_1_ENABLE PARAM_VALUE.C_M_AXI_1_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_1_ENABLE}] ${MODELPARAM_VALUE.C_M_AXI_1_ENABLE}
}
proc update_MODELPARAM_VALUE.C_M_AXI_2_ENABLE { MODELPARAM_VALUE.C_M_AXI_2_ENABLE PARAM_VALUE.C_M_AXI_2_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_2_ENABLE}] ${MODELPARAM_VALUE.C_M_AXI_2_ENABLE}
}
