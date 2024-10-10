# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -display_name {Default Configuration}]
  ipgui::add_param $IPINST -name "AXI_LITE_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_LITE_DATA_WIDTH" -parent ${Page_0}  
  ipgui::add_param $IPINST -name "CFG_REG_USE" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "DATA_REG_USE" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_VAL_0" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_VAL_1" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_VAL_2" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_VAL_3" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_CFG_WR_ADDR_0" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_CFG_WR_ADDR_1" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_CFG_WR_ADDR_2" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_CFG_WR_ADDR_3" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_DATA_RD_ADDR_0" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_DATA_RD_ADDR_1" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_DATA_RD_ADDR_2" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_DATA_RD_ADDR_3" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_DATA_WR_ADDR_0" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_DATA_WR_ADDR_1" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_DATA_WR_ADDR_2" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_DATA_WR_ADDR_3" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "CFG_REG_CTR_VAL" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "NO_OF_SAMPLES_AVG" -parent ${Page_0} 
  ipgui::add_param $IPINST -name "SET_AUTO_TRIGGER" -parent ${Page_0} 

}


proc update_MODELPARAM_VALUE.C_AXI_LITE_ADDR_WIDTH { MODELPARAM_VALUE.C_AXI_LITE_ADDR_WIDTH PARAM_VALUE.AXI_LITE_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_LITE_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_AXI_LITE_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_AXI_LITE_DATA_WIDTH { MODELPARAM_VALUE.C_AXI_LITE_DATA_WIDTH PARAM_VALUE.AXI_LITE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_LITE_DATA_WIDTH}] ${MODELPARAM_VALUE.C_AXI_LITE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_USE { MODELPARAM_VALUE.C_CFG_REG_USE PARAM_VALUE.CFG_REG_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_USE}] ${MODELPARAM_VALUE.C_CFG_REG_USE}
}

proc update_MODELPARAM_VALUE.C_DATA_REG_USE { MODELPARAM_VALUE.C_DATA_REG_USE PARAM_VALUE.DATA_REG_USE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_REG_USE}] ${MODELPARAM_VALUE.C_DATA_REG_USE}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_VAL_0 { MODELPARAM_VALUE.C_CFG_REG_VAL_0 PARAM_VALUE.CFG_REG_VAL_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_VAL_0}] ${MODELPARAM_VALUE.C_CFG_REG_VAL_0}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_VAL_1 { MODELPARAM_VALUE.C_CFG_REG_VAL_1 PARAM_VALUE.CFG_REG_VAL_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_VAL_1}] ${MODELPARAM_VALUE.C_CFG_REG_VAL_1}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_VAL_2 { MODELPARAM_VALUE.C_CFG_REG_VAL_2 PARAM_VALUE.CFG_REG_VAL_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_VAL_2}] ${MODELPARAM_VALUE.C_CFG_REG_VAL_2}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_VAL_3 { MODELPARAM_VALUE.C_CFG_REG_VAL_3 PARAM_VALUE.CFG_REG_VAL_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_VAL_3}] ${MODELPARAM_VALUE.C_CFG_REG_VAL_3}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_CFG_WR_ADDR_0 { MODELPARAM_VALUE.C_CFG_REG_CFG_WR_ADDR_0 PARAM_VALUE.CFG_REG_CFG_WR_ADDR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_CFG_WR_ADDR_0}] ${MODELPARAM_VALUE.C_CFG_REG_CFG_WR_ADDR_0}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_CFG_WR_ADDR_1 { MODELPARAM_VALUE.C_CFG_REG_CFG_WR_ADDR_1 PARAM_VALUE.CFG_REG_CFG_WR_ADDR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_CFG_WR_ADDR_1}] ${MODELPARAM_VALUE.C_CFG_REG_CFG_WR_ADDR_1}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_CFG_WR_ADDR_2 { MODELPARAM_VALUE.C_CFG_REG_CFG_WR_ADDR_2 PARAM_VALUE.CFG_REG_CFG_WR_ADDR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_CFG_WR_ADDR_2}] ${MODELPARAM_VALUE.C_CFG_REG_CFG_WR_ADDR_2}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_CFG_WR_ADDR_3 { MODELPARAM_VALUE.C_CFG_REG_CFG_WR_ADDR_3 PARAM_VALUE.CFG_REG_CFG_WR_ADDR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_CFG_WR_ADDR_3}] ${MODELPARAM_VALUE.C_CFG_REG_CFG_WR_ADDR_3}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_DATA_RD_ADDR_0 { MODELPARAM_VALUE.C_CFG_REG_DATA_RD_ADDR_0 PARAM_VALUE.CFG_REG_DATA_RD_ADDR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_DATA_RD_ADDR_0}] ${MODELPARAM_VALUE.C_CFG_REG_DATA_RD_ADDR_0}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_DATA_RD_ADDR_1 { MODELPARAM_VALUE.C_CFG_REG_DATA_RD_ADDR_1 PARAM_VALUE.CFG_REG_DATA_RD_ADDR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_DATA_RD_ADDR_1}] ${MODELPARAM_VALUE.C_CFG_REG_DATA_RD_ADDR_1}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_DATA_RD_ADDR_2 { MODELPARAM_VALUE.C_CFG_REG_DATA_RD_ADDR_2 PARAM_VALUE.CFG_REG_DATA_RD_ADDR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_DATA_RD_ADDR_2}] ${MODELPARAM_VALUE.C_CFG_REG_DATA_RD_ADDR_2}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_DATA_RD_ADDR_3 { MODELPARAM_VALUE.C_CFG_REG_DATA_RD_ADDR_3 PARAM_VALUE.CFG_REG_DATA_RD_ADDR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_DATA_RD_ADDR_3}] ${MODELPARAM_VALUE.C_CFG_REG_DATA_RD_ADDR_3}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_DATA_WR_ADDR_0 { MODELPARAM_VALUE.C_CFG_REG_DATA_WR_ADDR_0 PARAM_VALUE.CFG_REG_DATA_WR_ADDR_0 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_DATA_WR_ADDR_0}] ${MODELPARAM_VALUE.C_CFG_REG_DATA_WR_ADDR_0}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_DATA_WR_ADDR_1 { MODELPARAM_VALUE.C_CFG_REG_DATA_WR_ADDR_1 PARAM_VALUE.CFG_REG_DATA_WR_ADDR_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_DATA_WR_ADDR_1}] ${MODELPARAM_VALUE.C_CFG_REG_DATA_WR_ADDR_1}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_DATA_WR_ADDR_2 { MODELPARAM_VALUE.C_CFG_REG_DATA_WR_ADDR_2 PARAM_VALUE.CFG_REG_DATA_WR_ADDR_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_DATA_WR_ADDR_2}] ${MODELPARAM_VALUE.C_CFG_REG_DATA_WR_ADDR_2}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_DATA_WR_ADDR_3 { MODELPARAM_VALUE.C_CFG_REG_DATA_WR_ADDR_3 PARAM_VALUE.CFG_REG_DATA_WR_ADDR_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_DATA_WR_ADDR_3}] ${MODELPARAM_VALUE.C_CFG_REG_DATA_WR_ADDR_3}
}

proc update_MODELPARAM_VALUE.C_CFG_REG_CTR_VAL { MODELPARAM_VALUE.C_CFG_REG_CTR_VAL PARAM_VALUE.CFG_REG_CTR_VAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CFG_REG_CTR_VAL}] ${MODELPARAM_VALUE.C_CFG_REG_CTR_VAL}
}

proc update_MODELPARAM_VALUE.C_NO_OF_SAMPLES_AVG { MODELPARAM_VALUE.C_NO_OF_SAMPLES_AVG PARAM_VALUE.NO_OF_SAMPLES_AVG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NO_OF_SAMPLES_AVG}] ${MODELPARAM_VALUE.C_NO_OF_SAMPLES_AVG}
}

proc update_MODELPARAM_VALUE.C_SET_AUTO_TRIGGER { MODELPARAM_VALUE.C_SET_AUTO_TRIGGER PARAM_VALUE.SET_AUTO_TRIGGER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  if { [get_property value ${PARAM_VALUE.SET_AUTO_TRIGGER} ] eq "true" } {
    set value 1
  } else { 
    set value 0
  }
    
	set_property value $value ${MODELPARAM_VALUE.C_SET_AUTO_TRIGGER} 

	#set_property value [get_property value ${PARAM_VALUE.SET_AUTO_TRIGGER}] ${MODELPARAM_VALUE.C_SET_AUTO_TRIGGER}
}


