# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_M_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXIS_TDEST_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXIS_TID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXIS_TUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STM_TDATA_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STM_TDEST_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STM_TID_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STM_TKEEP_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STM_TLAST_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STM_TREADY_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STM_TSTRB_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STM_TUSER_ENABLE" -parent ${Page_0}
  set C_M_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M_AXIS_TDATA_WIDTH}
  set C_M_AXIS_START_COUNT [ipgui::add_param $IPINST -name "C_M_AXIS_START_COUNT" -parent ${Page_0}]
  set_property tooltip {Start count is the number of clock cycles the master will wait before initiating/issuing any transaction.} ${C_M_AXIS_START_COUNT}
  set C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}]
  set_property tooltip {Base address of targeted slave} ${C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR}
  set C_M_AXIMM_AUX_BURST_LEN [ipgui::add_param $IPINST -name "C_M_AXIMM_AUX_BURST_LEN" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_M_AXIMM_AUX_BURST_LEN}
  set C_M_AXIMM_AUX_ID_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_AUX_ID_WIDTH" -parent ${Page_0}]
  set_property tooltip {Thread ID Width} ${C_M_AXIMM_AUX_ID_WIDTH}
  set C_M_AXIMM_AUX_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_AUX_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of Address Bus} ${C_M_AXIMM_AUX_ADDR_WIDTH}
  set C_M_AXIMM_AUX_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_AUX_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_M_AXIMM_AUX_DATA_WIDTH}
  set C_M_AXIMM_AUX_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_AUX_AWUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Address Bus} ${C_M_AXIMM_AUX_AWUSER_WIDTH}
  set C_M_AXIMM_AUX_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_AUX_ARUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Address Bus} ${C_M_AXIMM_AUX_ARUSER_WIDTH}
  set C_M_AXIMM_AUX_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_AUX_WUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Data Bus} ${C_M_AXIMM_AUX_WUSER_WIDTH}
  set C_M_AXIMM_AUX_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_AUX_RUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Data Bus} ${C_M_AXIMM_AUX_RUSER_WIDTH}
  set C_M_AXIMM_AUX_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_AUX_BUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Response Bus} ${C_M_AXIMM_AUX_BUSER_WIDTH}
  set C_M_AXICTRL_START_DATA_VALUE [ipgui::add_param $IPINST -name "C_M_AXICTRL_START_DATA_VALUE" -parent ${Page_0}]
  set_property tooltip {The master will start generating data from the C_M_START_DATA_VALUE value} ${C_M_AXICTRL_START_DATA_VALUE}
  set C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}]
  set_property tooltip {The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.} ${C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR}
  set C_M_AXICTRL_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_M_AXICTRL_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.} ${C_M_AXICTRL_ADDR_WIDTH}
  set C_M_AXICTRL_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M_AXICTRL_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH} ${C_M_AXICTRL_DATA_WIDTH}
  set C_M_AXICTRL_TRANSACTIONS_NUM [ipgui::add_param $IPINST -name "C_M_AXICTRL_TRANSACTIONS_NUM" -parent ${Page_0}]
  set_property tooltip {Transaction number is the number of write 
    // and read transactions the master will perform as a part of this example memory test.} ${C_M_AXICTRL_TRANSACTIONS_NUM}
  set C_M_AXIMM_TARGET_SLAVE_BASE_ADDR [ipgui::add_param $IPINST -name "C_M_AXIMM_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}]
  set_property tooltip {Base address of targeted slave} ${C_M_AXIMM_TARGET_SLAVE_BASE_ADDR}
  set C_M_AXIMM_BURST_LEN [ipgui::add_param $IPINST -name "C_M_AXIMM_BURST_LEN" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_M_AXIMM_BURST_LEN}
  set C_M_AXIMM_ID_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_ID_WIDTH" -parent ${Page_0}]
  set_property tooltip {Thread ID Width} ${C_M_AXIMM_ID_WIDTH}
  set C_M_AXIMM_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of Address Bus} ${C_M_AXIMM_ADDR_WIDTH}
  set C_M_AXIMM_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_M_AXIMM_DATA_WIDTH}
  set C_M_AXIMM_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_AWUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Address Bus} ${C_M_AXIMM_AWUSER_WIDTH}
  set C_M_AXIMM_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_ARUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Address Bus} ${C_M_AXIMM_ARUSER_WIDTH}
  set C_M_AXIMM_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_WUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Data Bus} ${C_M_AXIMM_WUSER_WIDTH}
  set C_M_AXIMM_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_RUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Data Bus} ${C_M_AXIMM_RUSER_WIDTH}
  set C_M_AXIMM_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIMM_BUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Response Bus} ${C_M_AXIMM_BUSER_WIDTH}
  set C_S_AXIS_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_S_AXIS_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {AXI4Stream sink: Data Width} ${C_S_AXIS_TDATA_WIDTH}
  set C_S_AXIMM_ID_WIDTH [ipgui::add_param $IPINST -name "C_S_AXIMM_ID_WIDTH" -parent ${Page_0}]
  set_property tooltip {Thread ID Width} ${C_S_AXIMM_ID_WIDTH}
  set C_S_AXIMM_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S_AXIMM_ADDR_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of Address Bus} ${C_S_AXIMM_ADDR_WIDTH}
  set C_S_AXIMM_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S_AXIMM_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_S_AXIMM_DATA_WIDTH}
  set C_S_AXIMM_AWUSER_WIDTH [ipgui::add_param $IPINST -name "C_S_AXIMM_AWUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Address Bus} ${C_S_AXIMM_AWUSER_WIDTH}
  set C_S_AXIMM_ARUSER_WIDTH [ipgui::add_param $IPINST -name "C_S_AXIMM_ARUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Address Bus} ${C_S_AXIMM_ARUSER_WIDTH}
  set C_S_AXIMM_WUSER_WIDTH [ipgui::add_param $IPINST -name "C_S_AXIMM_WUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Write Data Bus} ${C_S_AXIMM_WUSER_WIDTH}
  set C_S_AXIMM_RUSER_WIDTH [ipgui::add_param $IPINST -name "C_S_AXIMM_RUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Read Data Bus} ${C_S_AXIMM_RUSER_WIDTH}
  set C_S_AXIMM_BUSER_WIDTH [ipgui::add_param $IPINST -name "C_S_AXIMM_BUSER_WIDTH" -parent ${Page_0}]
  set_property tooltip {Width of User Response Bus} ${C_S_AXIMM_BUSER_WIDTH}

  #Adding Page
  set SIM_QDMA_configuration [ipgui::add_page $IPINST -name "SIM QDMA configuration"]
  set C_STM_ITF_ENABLE [ipgui::add_param $IPINST -name "C_STM_ITF_ENABLE" -parent ${SIM_QDMA_configuration}]
  set_property tooltip {Streaming interface to connect to STM model} ${C_STM_ITF_ENABLE}
  set C_M_AXIMM_AUX_ENABLE [ipgui::add_param $IPINST -name "C_M_AXIMM_AUX_ENABLE" -parent ${SIM_QDMA_configuration}]
  set_property tooltip {AXIMM Auxillary interface enable} ${C_M_AXIMM_AUX_ENABLE}
  set C_S_AXIMM_ENABLE [ipgui::add_param $IPINST -name "C_S_AXIMM_ENABLE" -parent ${SIM_QDMA_configuration}]
  set_property tooltip {Slave AXIMM interface enable} ${C_S_AXIMM_ENABLE}


  set MISC_tab [ipgui::add_page $IPINST -parent $IPINST -name "pcie_misc" -layout vertical]
  set_property display_name "PCIe : MISC" $MISC_tab

  #set User_Interrupts_Settings [ipgui::add_group $IPINST -parent $MISC_tab -name "User_Interrupts_Settings"]
  #set_property display_name "User Interrupts" $User_Interrupts_Settings
  #set QDMA_NUM_USR_IRQ  [ipgui::add_param  $IPINST -parent $User_Interrupts_Settings -name "QDMA_NUM_USR_IRQ" -widget comboBox]
  #set_property display_name "Number of User Interrupts Request (1-16)" $qdma_num_usr_irq
  #set_property tooltip "Indicated number of usert interrupts request" $qdma_num_usr_irq
  
}

proc update_PARAM_VALUE.C_M_AXIMM_AUX_ENABLE { PARAM_VALUE.C_M_AXIMM_AUX_ENABLE } {
	# Procedure called to update C_M_AXIMM_AUX_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_AUX_ENABLE { PARAM_VALUE.C_M_AXIMM_AUX_ENABLE } {
	# Procedure called to validate C_M_AXIMM_AUX_ENABLE
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_M_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_TDEST_WIDTH { PARAM_VALUE.C_M_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_M_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_TID_WIDTH { PARAM_VALUE.C_M_AXIS_TID_WIDTH } {
	# Procedure called to update C_M_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_TID_WIDTH { PARAM_VALUE.C_M_AXIS_TID_WIDTH } {
	# Procedure called to validate C_M_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_M_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_TUSER_WIDTH { PARAM_VALUE.C_M_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_M_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_STM_ITF_ENABLE { PARAM_VALUE.C_STM_ITF_ENABLE } {
	# Procedure called to update C_STM_ITF_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_STM_ITF_ENABLE { PARAM_VALUE.C_STM_ITF_ENABLE } {
	# Procedure called to validate C_STM_ITF_ENABLE
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S_AXIS_TDEST_WIDTH } {
	# Procedure called to update C_S_AXIS_TDEST_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_TDEST_WIDTH { PARAM_VALUE.C_S_AXIS_TDEST_WIDTH } {
	# Procedure called to validate C_S_AXIS_TDEST_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_TID_WIDTH { PARAM_VALUE.C_S_AXIS_TID_WIDTH } {
	# Procedure called to update C_S_AXIS_TID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_TID_WIDTH { PARAM_VALUE.C_S_AXIS_TID_WIDTH } {
	# Procedure called to validate C_S_AXIS_TID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S_AXIS_TUSER_WIDTH } {
	# Procedure called to update C_S_AXIS_TUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_TUSER_WIDTH { PARAM_VALUE.C_S_AXIS_TUSER_WIDTH } {
	# Procedure called to validate C_S_AXIS_TUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.STM_TDATA_ENABLE { PARAM_VALUE.STM_TDATA_ENABLE } {
	# Procedure called to update STM_TDATA_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STM_TDATA_ENABLE { PARAM_VALUE.STM_TDATA_ENABLE } {
	# Procedure called to validate STM_TDATA_ENABLE
	return true
}

proc update_PARAM_VALUE.STM_TDEST_ENABLE { PARAM_VALUE.STM_TDEST_ENABLE } {
	# Procedure called to update STM_TDEST_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STM_TDEST_ENABLE { PARAM_VALUE.STM_TDEST_ENABLE } {
	# Procedure called to validate STM_TDEST_ENABLE
	return true
}

proc update_PARAM_VALUE.STM_TID_ENABLE { PARAM_VALUE.STM_TID_ENABLE } {
	# Procedure called to update STM_TID_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STM_TID_ENABLE { PARAM_VALUE.STM_TID_ENABLE } {
	# Procedure called to validate STM_TID_ENABLE
	return true
}

proc update_PARAM_VALUE.STM_TKEEP_ENABLE { PARAM_VALUE.STM_TKEEP_ENABLE } {
	# Procedure called to update STM_TKEEP_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STM_TKEEP_ENABLE { PARAM_VALUE.STM_TKEEP_ENABLE } {
	# Procedure called to validate STM_TKEEP_ENABLE
	return true
}

proc update_PARAM_VALUE.STM_TLAST_ENABLE { PARAM_VALUE.STM_TLAST_ENABLE } {
	# Procedure called to update STM_TLAST_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STM_TLAST_ENABLE { PARAM_VALUE.STM_TLAST_ENABLE } {
	# Procedure called to validate STM_TLAST_ENABLE
	return true
}

proc update_PARAM_VALUE.STM_TREADY_ENABLE { PARAM_VALUE.STM_TREADY_ENABLE } {
	# Procedure called to update STM_TREADY_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STM_TREADY_ENABLE { PARAM_VALUE.STM_TREADY_ENABLE } {
	# Procedure called to validate STM_TREADY_ENABLE
	return true
}

proc update_PARAM_VALUE.STM_TSTRB_ENABLE { PARAM_VALUE.STM_TSTRB_ENABLE } {
	# Procedure called to update STM_TSTRB_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STM_TSTRB_ENABLE { PARAM_VALUE.STM_TSTRB_ENABLE } {
	# Procedure called to validate STM_TSTRB_ENABLE
	return true
}

proc update_PARAM_VALUE.STM_TUSER_ENABLE { PARAM_VALUE.STM_TUSER_ENABLE } {
	# Procedure called to update STM_TUSER_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STM_TUSER_ENABLE { PARAM_VALUE.STM_TUSER_ENABLE } {
	# Procedure called to validate STM_TUSER_ENABLE
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_M_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_M_AXIS_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_START_COUNT { PARAM_VALUE.C_M_AXIS_START_COUNT } {
	# Procedure called to update C_M_AXIS_START_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_START_COUNT { PARAM_VALUE.C_M_AXIS_START_COUNT } {
	# Procedure called to validate C_M_AXIS_START_COUNT
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_AUX_BURST_LEN { PARAM_VALUE.C_M_AXIMM_AUX_BURST_LEN } {
	# Procedure called to update C_M_AXIMM_AUX_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_AUX_BURST_LEN { PARAM_VALUE.C_M_AXIMM_AUX_BURST_LEN } {
	# Procedure called to validate C_M_AXIMM_AUX_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_AUX_ID_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_ID_WIDTH } {
	# Procedure called to update C_M_AXIMM_AUX_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_AUX_ID_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_ID_WIDTH } {
	# Procedure called to validate C_M_AXIMM_AUX_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_AUX_ADDR_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_ADDR_WIDTH } {
	# Procedure called to update C_M_AXIMM_AUX_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_AUX_ADDR_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXIMM_AUX_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_AUX_DATA_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_DATA_WIDTH } {
	# Procedure called to update C_M_AXIMM_AUX_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_AUX_DATA_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_DATA_WIDTH } {
	# Procedure called to validate C_M_AXIMM_AUX_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_AUX_AWUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXIMM_AUX_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_AUX_AWUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXIMM_AUX_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_AUX_ARUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXIMM_AUX_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_AUX_ARUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXIMM_AUX_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_AUX_WUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_WUSER_WIDTH } {
	# Procedure called to update C_M_AXIMM_AUX_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_AUX_WUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXIMM_AUX_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_AUX_RUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_RUSER_WIDTH } {
	# Procedure called to update C_M_AXIMM_AUX_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_AUX_RUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXIMM_AUX_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_AUX_BUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_BUSER_WIDTH } {
	# Procedure called to update C_M_AXIMM_AUX_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_AUX_BUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_AUX_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXIMM_AUX_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXICTRL_START_DATA_VALUE { PARAM_VALUE.C_M_AXICTRL_START_DATA_VALUE } {
	# Procedure called to update C_M_AXICTRL_START_DATA_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXICTRL_START_DATA_VALUE { PARAM_VALUE.C_M_AXICTRL_START_DATA_VALUE } {
	# Procedure called to validate C_M_AXICTRL_START_DATA_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M_AXICTRL_ADDR_WIDTH { PARAM_VALUE.C_M_AXICTRL_ADDR_WIDTH } {
	# Procedure called to update C_M_AXICTRL_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXICTRL_ADDR_WIDTH { PARAM_VALUE.C_M_AXICTRL_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXICTRL_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXICTRL_DATA_WIDTH { PARAM_VALUE.C_M_AXICTRL_DATA_WIDTH } {
	# Procedure called to update C_M_AXICTRL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXICTRL_DATA_WIDTH { PARAM_VALUE.C_M_AXICTRL_DATA_WIDTH } {
	# Procedure called to validate C_M_AXICTRL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXICTRL_TRANSACTIONS_NUM { PARAM_VALUE.C_M_AXICTRL_TRANSACTIONS_NUM } {
	# Procedure called to update C_M_AXICTRL_TRANSACTIONS_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXICTRL_TRANSACTIONS_NUM { PARAM_VALUE.C_M_AXICTRL_TRANSACTIONS_NUM } {
	# Procedure called to validate C_M_AXICTRL_TRANSACTIONS_NUM
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXIMM_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_M_AXIMM_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_M_AXIMM_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_M_AXIMM_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_BURST_LEN { PARAM_VALUE.C_M_AXIMM_BURST_LEN } {
	# Procedure called to update C_M_AXIMM_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_BURST_LEN { PARAM_VALUE.C_M_AXIMM_BURST_LEN } {
	# Procedure called to validate C_M_AXIMM_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_ID_WIDTH { PARAM_VALUE.C_M_AXIMM_ID_WIDTH } {
	# Procedure called to update C_M_AXIMM_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_ID_WIDTH { PARAM_VALUE.C_M_AXIMM_ID_WIDTH } {
	# Procedure called to validate C_M_AXIMM_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_ADDR_WIDTH { PARAM_VALUE.C_M_AXIMM_ADDR_WIDTH } {
	# Procedure called to update C_M_AXIMM_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_ADDR_WIDTH { PARAM_VALUE.C_M_AXIMM_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXIMM_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_DATA_WIDTH { PARAM_VALUE.C_M_AXIMM_DATA_WIDTH } {
	# Procedure called to update C_M_AXIMM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_DATA_WIDTH { PARAM_VALUE.C_M_AXIMM_DATA_WIDTH } {
	# Procedure called to validate C_M_AXIMM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_AWUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXIMM_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_AWUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXIMM_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_ARUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXIMM_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_ARUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXIMM_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_WUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_WUSER_WIDTH } {
	# Procedure called to update C_M_AXIMM_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_WUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXIMM_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_RUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_RUSER_WIDTH } {
	# Procedure called to update C_M_AXIMM_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_RUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXIMM_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIMM_BUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_BUSER_WIDTH } {
	# Procedure called to update C_M_AXIMM_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIMM_BUSER_WIDTH { PARAM_VALUE.C_M_AXIMM_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXIMM_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_TDATA_WIDTH } {
	# Procedure called to update C_S_AXIS_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIS_TDATA_WIDTH { PARAM_VALUE.C_S_AXIS_TDATA_WIDTH } {
	# Procedure called to validate C_S_AXIS_TDATA_WIDTH
	return true
}
proc update_PARAM_VALUE.C_S_AXIMM_ENABLE { PARAM_VALUE.C_S_AXIMM_ENABLE } {
	# Procedure called to update C_S_AXIMM_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIMM_ENABLE { PARAM_VALUE.C_S_AXIMM_ENABLE } {
	# Procedure called to validate C_S_AXIMM_ENABLE
	return true
}
proc update_PARAM_VALUE.C_S_AXIMM_ID_WIDTH { PARAM_VALUE.C_S_AXIMM_ID_WIDTH } {
	# Procedure called to update C_S_AXIMM_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIMM_ID_WIDTH { PARAM_VALUE.C_S_AXIMM_ID_WIDTH } {
	# Procedure called to validate C_S_AXIMM_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIMM_ADDR_WIDTH { PARAM_VALUE.C_S_AXIMM_ADDR_WIDTH } {
	# Procedure called to update C_S_AXIMM_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIMM_ADDR_WIDTH { PARAM_VALUE.C_S_AXIMM_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXIMM_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIMM_DATA_WIDTH { PARAM_VALUE.C_S_AXIMM_DATA_WIDTH } {
	# Procedure called to update C_S_AXIMM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIMM_DATA_WIDTH { PARAM_VALUE.C_S_AXIMM_DATA_WIDTH } {
	# Procedure called to validate C_S_AXIMM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIMM_AWUSER_WIDTH { PARAM_VALUE.C_S_AXIMM_AWUSER_WIDTH } {
	# Procedure called to update C_S_AXIMM_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIMM_AWUSER_WIDTH { PARAM_VALUE.C_S_AXIMM_AWUSER_WIDTH } {
	# Procedure called to validate C_S_AXIMM_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIMM_ARUSER_WIDTH { PARAM_VALUE.C_S_AXIMM_ARUSER_WIDTH } {
	# Procedure called to update C_S_AXIMM_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIMM_ARUSER_WIDTH { PARAM_VALUE.C_S_AXIMM_ARUSER_WIDTH } {
	# Procedure called to validate C_S_AXIMM_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIMM_WUSER_WIDTH { PARAM_VALUE.C_S_AXIMM_WUSER_WIDTH } {
	# Procedure called to update C_S_AXIMM_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIMM_WUSER_WIDTH { PARAM_VALUE.C_S_AXIMM_WUSER_WIDTH } {
	# Procedure called to validate C_S_AXIMM_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIMM_RUSER_WIDTH { PARAM_VALUE.C_S_AXIMM_RUSER_WIDTH } {
	# Procedure called to update C_S_AXIMM_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIMM_RUSER_WIDTH { PARAM_VALUE.C_S_AXIMM_RUSER_WIDTH } {
	# Procedure called to validate C_S_AXIMM_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXIMM_BUSER_WIDTH { PARAM_VALUE.C_S_AXIMM_BUSER_WIDTH } {
	# Procedure called to update C_S_AXIMM_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXIMM_BUSER_WIDTH { PARAM_VALUE.C_S_AXIMM_BUSER_WIDTH } {
	# Procedure called to validate C_S_AXIMM_BUSER_WIDTH
	return true
}



proc update_MODELPARAM_VALUE.C_M_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TUSER_WIDTH PARAM_VALUE.C_M_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TID_WIDTH PARAM_VALUE.C_M_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TDEST_WIDTH PARAM_VALUE.C_M_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_TUSER_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TUSER_WIDTH PARAM_VALUE.C_S_AXIS_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_TUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_TID_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TID_WIDTH PARAM_VALUE.C_S_AXIS_TID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_TID_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_TID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_TDEST_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TDEST_WIDTH PARAM_VALUE.C_S_AXIS_TDEST_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_TDEST_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_TDEST_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH PARAM_VALUE.C_M_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_START_COUNT { MODELPARAM_VALUE.C_M_AXIS_START_COUNT PARAM_VALUE.C_M_AXIS_START_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_START_COUNT}] ${MODELPARAM_VALUE.C_M_AXIS_START_COUNT}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M_AXIMM_AUX_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_AUX_BURST_LEN { MODELPARAM_VALUE.C_M_AXIMM_AUX_BURST_LEN PARAM_VALUE.C_M_AXIMM_AUX_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_AUX_BURST_LEN}] ${MODELPARAM_VALUE.C_M_AXIMM_AUX_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_AUX_ID_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_AUX_ID_WIDTH PARAM_VALUE.C_M_AXIMM_AUX_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_AUX_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_AUX_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_AUX_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_AUX_ADDR_WIDTH PARAM_VALUE.C_M_AXIMM_AUX_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_AUX_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_AUX_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_AUX_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_AUX_DATA_WIDTH PARAM_VALUE.C_M_AXIMM_AUX_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_AUX_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_AUX_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_AUX_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_AUX_AWUSER_WIDTH PARAM_VALUE.C_M_AXIMM_AUX_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_AUX_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_AUX_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_AUX_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_AUX_ARUSER_WIDTH PARAM_VALUE.C_M_AXIMM_AUX_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_AUX_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_AUX_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_AUX_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_AUX_WUSER_WIDTH PARAM_VALUE.C_M_AXIMM_AUX_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_AUX_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_AUX_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_AUX_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_AUX_RUSER_WIDTH PARAM_VALUE.C_M_AXIMM_AUX_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_AUX_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_AUX_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_AUX_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_AUX_BUSER_WIDTH PARAM_VALUE.C_M_AXIMM_AUX_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_AUX_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_AUX_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXICTRL_START_DATA_VALUE { MODELPARAM_VALUE.C_M_AXICTRL_START_DATA_VALUE PARAM_VALUE.C_M_AXICTRL_START_DATA_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXICTRL_START_DATA_VALUE}] ${MODELPARAM_VALUE.C_M_AXICTRL_START_DATA_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M_AXICTRL_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M_AXICTRL_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXICTRL_ADDR_WIDTH PARAM_VALUE.C_M_AXICTRL_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXICTRL_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXICTRL_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXICTRL_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXICTRL_DATA_WIDTH PARAM_VALUE.C_M_AXICTRL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXICTRL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXICTRL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXICTRL_TRANSACTIONS_NUM { MODELPARAM_VALUE.C_M_AXICTRL_TRANSACTIONS_NUM PARAM_VALUE.C_M_AXICTRL_TRANSACTIONS_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXICTRL_TRANSACTIONS_NUM}] ${MODELPARAM_VALUE.C_M_AXICTRL_TRANSACTIONS_NUM}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_M_AXIMM_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_M_AXIMM_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_M_AXIMM_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_BURST_LEN { MODELPARAM_VALUE.C_M_AXIMM_BURST_LEN PARAM_VALUE.C_M_AXIMM_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_BURST_LEN}] ${MODELPARAM_VALUE.C_M_AXIMM_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_ID_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_ID_WIDTH PARAM_VALUE.C_M_AXIMM_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_ADDR_WIDTH PARAM_VALUE.C_M_AXIMM_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_DATA_WIDTH PARAM_VALUE.C_M_AXIMM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_AWUSER_WIDTH PARAM_VALUE.C_M_AXIMM_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_ARUSER_WIDTH PARAM_VALUE.C_M_AXIMM_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_WUSER_WIDTH PARAM_VALUE.C_M_AXIMM_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_RUSER_WIDTH PARAM_VALUE.C_M_AXIMM_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXIMM_BUSER_WIDTH PARAM_VALUE.C_M_AXIMM_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIMM_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIS_TDATA_WIDTH { MODELPARAM_VALUE.C_S_AXIS_TDATA_WIDTH PARAM_VALUE.C_S_AXIS_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIS_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIS_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_STM_ITF_ENABLE { MODELPARAM_VALUE.C_STM_ITF_ENABLE PARAM_VALUE.C_STM_ITF_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_STM_ITF_ENABLE}] ${MODELPARAM_VALUE.C_STM_ITF_ENABLE}
}

proc update_MODELPARAM_VALUE.C_M_AXIMM_AUX_ENABLE { MODELPARAM_VALUE.C_M_AXIMM_AUX_ENABLE PARAM_VALUE.C_M_AXIMM_AUX_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIMM_AUX_ENABLE}] ${MODELPARAM_VALUE.C_M_AXIMM_AUX_ENABLE}
}

proc update_MODELPARAM_VALUE.C_S_AXIMM_ENABLE { MODELPARAM_VALUE.C_S_AXIMM_ENABLE PARAM_VALUE.C_S_AXIMM_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIMM_ENABLE}] ${MODELPARAM_VALUE.C_S_AXIMM_ENABLE}
}
proc update_MODELPARAM_VALUE.C_S_AXIMM_ID_WIDTH { MODELPARAM_VALUE.C_S_AXIMM_ID_WIDTH PARAM_VALUE.C_S_AXIMM_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIMM_ID_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIMM_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIMM_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXIMM_ADDR_WIDTH PARAM_VALUE.C_S_AXIMM_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIMM_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIMM_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIMM_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXIMM_DATA_WIDTH PARAM_VALUE.C_S_AXIMM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIMM_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIMM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIMM_AWUSER_WIDTH { MODELPARAM_VALUE.C_S_AXIMM_AWUSER_WIDTH PARAM_VALUE.C_S_AXIMM_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIMM_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIMM_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIMM_ARUSER_WIDTH { MODELPARAM_VALUE.C_S_AXIMM_ARUSER_WIDTH PARAM_VALUE.C_S_AXIMM_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIMM_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIMM_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIMM_WUSER_WIDTH { MODELPARAM_VALUE.C_S_AXIMM_WUSER_WIDTH PARAM_VALUE.C_S_AXIMM_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIMM_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIMM_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIMM_RUSER_WIDTH { MODELPARAM_VALUE.C_S_AXIMM_RUSER_WIDTH PARAM_VALUE.C_S_AXIMM_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIMM_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIMM_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXIMM_BUSER_WIDTH { MODELPARAM_VALUE.C_S_AXIMM_BUSER_WIDTH PARAM_VALUE.C_S_AXIMM_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXIMM_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_S_AXIMM_BUSER_WIDTH}
}
