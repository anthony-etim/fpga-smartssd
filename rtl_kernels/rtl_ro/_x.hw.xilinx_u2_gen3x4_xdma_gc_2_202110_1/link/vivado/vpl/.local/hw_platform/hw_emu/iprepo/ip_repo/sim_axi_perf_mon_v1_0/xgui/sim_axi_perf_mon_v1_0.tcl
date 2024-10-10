
# Loading additional proc with user specified bodies to compute parameter values.
source [file join [file dirname [file dirname [info script]]] gui/sim_axi_perf_mon_v1_0.gtcl]

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  #Adding Group
  set AXI_Properties [ipgui::add_group $IPINST -name "AXI Properties" -parent ${Page_0}]
  ipgui::add_param $IPINST -name "C_AXI_ID_WIDTH" -parent ${AXI_Properties}
  ipgui::add_param $IPINST -name "C_AXI_ADDR_WIDTH" -parent ${AXI_Properties}

  set MONITOR_ID [ipgui::add_param $IPINST -name "MONITOR_ID" -parent ${Page_0}]
  set_property tooltip {Unique ID for each Monitor} ${MONITOR_ID}
  #Adding Group
  set Address_Filtering [ipgui::add_group $IPINST -name "Address Filtering" -parent ${Page_0}]
  set_property tooltip {Filter AXI transactions using address range} ${Address_Filtering}
  ipgui::add_param $IPINST -name "ENABLE_ADDR_FILTER" -parent ${Address_Filtering}
  ipgui::add_param $IPINST -name "ADDR_MIN" -parent ${Address_Filtering}
  ipgui::add_param $IPINST -name "ADDR_MAX" -parent ${Address_Filtering}



}

proc update_PARAM_VALUE.ADDR_MAX { PARAM_VALUE.ADDR_MAX PARAM_VALUE.ENABLE_ADDR_FILTER } {
	# Procedure called to update ADDR_MAX when any of the dependent parameters in the arguments change
	
	set ADDR_MAX ${PARAM_VALUE.ADDR_MAX}
	set ENABLE_ADDR_FILTER ${PARAM_VALUE.ENABLE_ADDR_FILTER}
	set values(ENABLE_ADDR_FILTER) [get_property value $ENABLE_ADDR_FILTER]
	if { [gen_USERPARAMETER_ADDR_MAX_ENABLEMENT $values(ENABLE_ADDR_FILTER)] } {
		set_property enabled true $ADDR_MAX
	} else {
		set_property enabled false $ADDR_MAX
	}
}

proc validate_PARAM_VALUE.ADDR_MAX { PARAM_VALUE.ADDR_MAX } {
	# Procedure called to validate ADDR_MAX
	return true
}

proc update_PARAM_VALUE.ADDR_MIN { PARAM_VALUE.ADDR_MIN PARAM_VALUE.ENABLE_ADDR_FILTER } {
	# Procedure called to update ADDR_MIN when any of the dependent parameters in the arguments change
	
	set ADDR_MIN ${PARAM_VALUE.ADDR_MIN}
	set ENABLE_ADDR_FILTER ${PARAM_VALUE.ENABLE_ADDR_FILTER}
	set values(ENABLE_ADDR_FILTER) [get_property value $ENABLE_ADDR_FILTER]
	if { [gen_USERPARAMETER_ADDR_MIN_ENABLEMENT $values(ENABLE_ADDR_FILTER)] } {
		set_property enabled true $ADDR_MIN
	} else {
		set_property enabled false $ADDR_MIN
	}
}

proc validate_PARAM_VALUE.ADDR_MIN { PARAM_VALUE.ADDR_MIN } {
	# Procedure called to validate ADDR_MIN
	return true
}

proc update_PARAM_VALUE.ENABLE_ADDR_FILTER { PARAM_VALUE.ENABLE_ADDR_FILTER } {
	# Procedure called to update ENABLE_ADDR_FILTER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_ADDR_FILTER { PARAM_VALUE.ENABLE_ADDR_FILTER } {
	# Procedure called to validate ENABLE_ADDR_FILTER
	return true
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

proc update_PARAM_VALUE.C_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to update C_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_ADDR_WIDTH { PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_AXI_ADDR_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_AXI_ID_WIDTH { MODELPARAM_VALUE.C_AXI_ID_WIDTH PARAM_VALUE.C_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_AXI_ADDR_WIDTH PARAM_VALUE.C_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_AXI_ADDR_WIDTH}
}

