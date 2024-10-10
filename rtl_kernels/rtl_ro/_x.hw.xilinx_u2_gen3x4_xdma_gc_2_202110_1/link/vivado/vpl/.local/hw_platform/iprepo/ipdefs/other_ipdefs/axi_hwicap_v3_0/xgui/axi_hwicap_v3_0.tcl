proc init_gui { IPINST  PROJECT_PARAM.ARCHITECTURE } {
    set c_family_int1 [string tolower ${PROJECT_PARAM.ARCHITECTURE}]
    set Component_Name [ ipgui::add_param  $IPINST  -parent  $IPINST  -name Component_Name ]
    set Page0 [ ipgui::add_page $IPINST  -name "Basic" -layout vertical]
    set C_ICAP_EXTERNAL [ipgui::add_param $IPINST -parent $Page0 -name C_ICAP_EXTERNAL -widget checkBox]
    set C_MODE [ipgui::add_param $IPINST -parent $Page0 -name C_MODE -widget checkBox]
    set UC_FAMILY [ipgui::add_param $IPINST -parent $Page0 -name UC_FAMILY]
    set_property visible false [ipgui::get_guiparamspec UC_FAMILY -of $IPINST]
    set C_NOREAD [ipgui::add_param $IPINST -parent $Page0 -name C_NOREAD -widget checkBox]
    set C_ICAP_DWIDTH [ipgui::add_param $IPINST -parent $Page0 -name C_ICAP_DWIDTH -widget comboBox]	
    set C_INCLUDE_STARTUP [ipgui::add_param $IPINST -parent $Page0 -name C_INCLUDE_STARTUP -widget checkBox]
    set C_SHARED_STARTUP [ipgui::add_param $IPINST -parent $Page0 -name C_SHARED_STARTUP -widget checkBox]
    set Advanced [ ipgui::add_page $IPINST  -name "Advanced" -layout vertical]
    set C_ENABLE_ASYNC [ ipgui::add_param  $IPINST  -parent  $Advanced  -name C_ENABLE_ASYNC -widget checkBox]
    set C_OPERATION [ ipgui::add_param  $IPINST  -parent  $Advanced  -name C_OPERATION -widget checkBox]
    set C_BRAM_SRL_FIFO_TYPE [ipgui::add_param $IPINST -parent $Advanced -name C_BRAM_SRL_FIFO_TYPE -widget comboBox]
    set C_WRITE_FIFO_DEPTH [ipgui::add_param $IPINST -parent $Advanced -name C_WRITE_FIFO_DEPTH -widget comboBox]
    set C_READ_FIFO_DEPTH [ipgui::add_param $IPINST -parent $Advanced -name C_READ_FIFO_DEPTH -widget comboBox]
    set C_FAMILY [ipgui::add_param $IPINST -parent $Advanced -name C_FAMILY]
    set C_DEVICE_ID [ipgui::add_param $IPINST -parent $Advanced -name C_DEVICE_ID]

    set_property visible false $C_FAMILY
    set_property visible false $C_DEVICE_ID
    if {$c_family_int1 == "virtex7" || $c_family_int1 == "kintex7" || $c_family_int1 == "artix7" || $c_family_int1 == "zynq" || $c_family_int1 == "spartan7"} {
      set_property visible true $C_INCLUDE_STARTUP
        set_property visible true $C_ICAP_DWIDTH
    } else {
      set_property visible false $C_INCLUDE_STARTUP
        set_property visible false $C_ICAP_DWIDTH
    }
}
#set family [string tolower [PROJECT_PARAM.ARCHITECTURE]]

proc update_PARAM_VALUE.C_ICAP_DWIDTH  {PARAM_VALUE.C_ICAP_DWIDTH  PROJECT_PARAM.ARCHITECTURE} {
set c_family_int1 [string tolower ${PROJECT_PARAM.ARCHITECTURE}]
  if {($c_family_int1 != "virtex7" && $c_family_int1 != "kintex7" && $c_family_int1 != "artix7" && $c_family_int1 != "zynq" && $c_family_int1 != "spartan7")} {
	    set_property enabled false ${PARAM_VALUE.C_ICAP_DWIDTH}
       } else {
	    set_property enabled true ${PARAM_VALUE.C_ICAP_DWIDTH}
    }

  
  	return true
}
proc update_PARAM_VALUE.C_FAMILY {PROJECT_PARAM.ARCHITECTURE PARAM_VALUE.C_FAMILY} {
 
     set c_family [string tolower ${PROJECT_PARAM.ARCHITECTURE}]
	 set_property value $c_family ${PARAM_VALUE.C_FAMILY}
	 
}

proc update_PARAM_VALUE.UC_FAMILY {PARAM_VALUE.UC_FAMILY PROJECT_PARAM.ARCHITECTURE PARAM_VALUE.C_FAMILY} {
 
     set c_family [string tolower ${PROJECT_PARAM.ARCHITECTURE}]
		 if {[string match -nocase *kintex7* $c_family] || [string match -nocase *virtex7* $c_family] || [string match -nocase *artix7* $c_family] || [string match -nocase *zynq $c_family] || [string match -nocase *spartan7* $c_family] } {
	   set_property value 0 ${PARAM_VALUE.UC_FAMILY}

       } else {
	   set_property value 1 ${PARAM_VALUE.UC_FAMILY}
    }



}

proc update_gui_for_PARAM_VALUE.C_INCLUDE_STARTUP {PARAM_VALUE.C_INCLUDE_STARTUP PARAM_VALUE.C_SHARED_STARTUP IPINST} {
	set en_startup [get_property value ${PARAM_VALUE.C_INCLUDE_STARTUP} ]
  
  if {$en_startup == 1} {
    set_property visible true [ipgui::get_guiparamspec C_SHARED_STARTUP -of $IPINST] 
  } else {
    set_property visible false [ipgui::get_guiparamspec C_SHARED_STARTUP -of $IPINST] 
  }


}    
proc update_PARAM_VALUE.C_SHARED_STARTUP  {PARAM_VALUE.C_SHARED_STARTUP PARAM_VALUE.C_INCLUDE_STARTUP} {
set stup [get_property value ${PARAM_VALUE.C_INCLUDE_STARTUP} ]
  if {($stup == 1)} {
    set_property value 0 ${PARAM_VALUE.C_SHARED_STARTUP} 
    set_property enabled true ${PARAM_VALUE.C_SHARED_STARTUP} 
       } else {
    set_property value 0 ${PARAM_VALUE.C_SHARED_STARTUP} 
    set_property enabled false ${PARAM_VALUE.C_SHARED_STARTUP} 

    }

  
  	return true
}

proc validate_PARAM_VALUE.C_ICAP_EXTERNAL { PARAM_VALUE.C_ICAP_EXTERNAL} {
  	return true
}

proc validate_PARAM_VALUE.C_OPERATION { PARAM_VALUE.C_OPERATION} {
  	return true
}

proc validate_PARAM_VALUE.C_NOREAD { PARAM_VALUE.C_MODE  PARAM_VALUE.C_NOREAD} {
  	return true
}

proc validate_PARAM_VALUE.C_MODE { PARAM_VALUE.C_MODE} {

# Procedure called to validate C_WRITE_FIFO_DEPTH
	return true

}

proc validate_PARAM_VALUE.C_BRAM_SRL_FIFO_TYPE { PARAM_VALUE.C_BRAM_SRL_FIFO_TYPE} {

# Procedure called to validate C_BRAM_SRL_FIFO_TYPE
	return true

}

proc validate_PARAM_VALUE.C_WRITE_FIFO_DEPTH { PARAM_VALUE.C_WRITE_FIFO_DEPTH} {

# Procedure called to validate C_WRITE_FIFO_DEPTH
	return true

}

proc validate_PARAM_VALUE.C_INCLUDE_STARTUP { PARAM_VALUE.C_INCLUDE_STARTUP} {

  	return true

}

proc validate_PARAM_VALUE.C_READ_FIFO_DEPTH { PARAM_VALUE.C_READ_FIFO_DEPTH} {

# Procedure called to validate C_READ_FIFO_DEPTH
	return true

}

proc validate_PARAM_VALUE.C_ICAP_DWIDTH { PARAM_VALUE.C_ICAP_DWIDTH} {

# Procedure called to validate C_ICAP_DWIDTH
	return true

}


proc validate_PARAM_VALUE.C_ENABLE_ASYNC { PARAM_VALUE.C_ENABLE_ASYNC PARAM_VALUE.C_MODE} {
  set mode [ get_property value ${PARAM_VALUE.C_MODE} ]
  set async [ get_property value ${PARAM_VALUE.C_ENABLE_ASYNC} ]
  if {$mode== 1 && $async== 1} {
    set_property errmsg "Write FIFO can be disabled only if ICAP_Clk and s_axi_aclk are connected to the same clock source"  ${PARAM_VALUE.C_ENABLE_ASYNC} 
    return false
  } else {
  	return true
  }
}

proc validate_PARAM_VALUE.C_DEVICE_ID { PARAM_VALUE.C_DEVICE_ID} {

	return true

}

proc update_MODELPARAM_VALUE.C_READ_FIFO_DEPTH { MODELPARAM_VALUE.C_READ_FIFO_DEPTH PARAM_VALUE.C_READ_FIFO_DEPTH} {
	set_property value [get_property value ${PARAM_VALUE.C_READ_FIFO_DEPTH}]  ${MODELPARAM_VALUE.C_READ_FIFO_DEPTH} 
  return true
}

proc update_MODELPARAM_VALUE.C_DEVICE_ID { MODELPARAM_VALUE.C_DEVICE_ID PARAM_VALUE.C_DEVICE_ID} {

set_property value [get_property value ${PARAM_VALUE.C_DEVICE_ID}]  ${MODELPARAM_VALUE.C_DEVICE_ID} 
	return true

}

proc update_MODELPARAM_VALUE.C_ENABLE_ASYNC { MODELPARAM_VALUE.C_ENABLE_ASYNC PARAM_VALUE.C_ENABLE_ASYNC} {

  if {[ get_property value ${PARAM_VALUE.C_ENABLE_ASYNC} ] == 1} {set value 1} else {set value 0}
    set_property value $value  ${MODELPARAM_VALUE.C_ENABLE_ASYNC} 
        return true

}

proc update_MODELPARAM_VALUE.C_ICAP_WIDTH_S { MODELPARAM_VALUE.C_ICAP_WIDTH_S PARAM_VALUE.C_ICAP_DWIDTH  PROJECT_PARAM.ARCHITECTURE} {
set c_family_int1 [string tolower ${PROJECT_PARAM.ARCHITECTURE}]

  if {($c_family_int1 != "virtex7" && $c_family_int1 != "kintex7" && $c_family_int1 != "artix7" && $c_family_int1 != "zynq" && $c_family_int1 != "spartan7" )} {
        set value "X32" 
  } elseif {[ get_property value ${PARAM_VALUE.C_ICAP_DWIDTH} ] == 32} {
        set value "X32" 
  } elseif {[ get_property value ${PARAM_VALUE.C_ICAP_DWIDTH} ] == 16} {
        set value "X16" 
  } elseif {[ get_property value ${PARAM_VALUE.C_ICAP_DWIDTH} ] == 8} {
        set value "X8" 
  }
    set_property value $value  ${MODELPARAM_VALUE.C_ICAP_WIDTH_S} 
        return true

}

proc update_MODELPARAM_VALUE.C_WRITE_FIFO_DEPTH { MODELPARAM_VALUE.C_WRITE_FIFO_DEPTH PARAM_VALUE.C_WRITE_FIFO_DEPTH} {

	set_property value [get_property value ${PARAM_VALUE.C_WRITE_FIFO_DEPTH}]  ${MODELPARAM_VALUE.C_WRITE_FIFO_DEPTH} 
	return true

}

proc update_MODELPARAM_VALUE.C_MODE { MODELPARAM_VALUE.C_MODE PARAM_VALUE.C_MODE} {

  if {[ get_property value ${PARAM_VALUE.C_MODE} ] == 1} {set value 1} else {set value 0}
    set_property value $value  ${MODELPARAM_VALUE.C_MODE} 
        return true

}

proc update_MODELPARAM_VALUE.C_BRAM_SRL_FIFO_TYPE { MODELPARAM_VALUE.C_BRAM_SRL_FIFO_TYPE PARAM_VALUE.C_BRAM_SRL_FIFO_TYPE} {
	set_property value [get_property value ${PARAM_VALUE.C_BRAM_SRL_FIFO_TYPE}]  ${MODELPARAM_VALUE.C_BRAM_SRL_FIFO_TYPE} 
	return true
}

proc update_MODELPARAM_VALUE.C_INCLUDE_STARTUP { MODELPARAM_VALUE.C_INCLUDE_STARTUP PARAM_VALUE.C_INCLUDE_STARTUP  PROJECT_PARAM.ARCHITECTURE} {
    set c_family_int1 [string tolower ${PROJECT_PARAM.ARCHITECTURE}]
    if {[ get_property value ${PARAM_VALUE.C_INCLUDE_STARTUP} ] == 1 && ($c_family_int1 == "virtex7" || $c_family_int1 == "kintex7" || $c_family_int1 == "artix7" || $c_family_int1 == "zynq" || $c_family_int1 == "spartan7")} {
      set value 1
    } else {
      set value 0
    }
  set_property value $value  ${MODELPARAM_VALUE.C_INCLUDE_STARTUP} 
  return true
}

proc update_MODELPARAM_VALUE.C_SHARED_STARTUP { MODELPARAM_VALUE.C_SHARED_STARTUP PARAM_VALUE.C_INCLUDE_STARTUP  PARAM_VALUE.C_SHARED_STARTUP} {
    if {[ get_property value ${PARAM_VALUE.C_INCLUDE_STARTUP} ] == 1 && [ get_property value ${PARAM_VALUE.C_SHARED_STARTUP} ] == 1} {
      set value 1
    } else {
      set value 0
    }
  set_property value $value  ${MODELPARAM_VALUE.C_SHARED_STARTUP} 
  return true
}

proc update_MODELPARAM_VALUE.C_OPERATION { MODELPARAM_VALUE.C_OPERATION PARAM_VALUE.C_OPERATION} {
  if {[ get_property value ${PARAM_VALUE.C_OPERATION} ] == 1} {set value 1} else {set value 0}
    set_property value $value  ${MODELPARAM_VALUE.C_OPERATION} 
        return true
}

proc update_MODELPARAM_VALUE.C_NOREAD { MODELPARAM_VALUE.C_NOREAD PARAM_VALUE.C_NOREAD} {
  if {[ get_property value ${PARAM_VALUE.C_NOREAD} ] == 1} {set value 1} else {set value 0}
    set_property value $value  ${MODELPARAM_VALUE.C_NOREAD} 
        return true
}

proc update_MODELPARAM_VALUE.C_ICAP_EXTERNAL { MODELPARAM_VALUE.C_ICAP_EXTERNAL PARAM_VALUE.C_ICAP_EXTERNAL} {
  if {[ get_property value ${PARAM_VALUE.C_ICAP_EXTERNAL} ] == 1} {set value 1} else {set value 0}
    set_property value $value  ${MODELPARAM_VALUE.C_ICAP_EXTERNAL} 
        return true
}


#########################################################################
# update_PARAM_VALUE procs
#########################################################################
proc update_PARAM_VALUE.C_NOREAD {PARAM_VALUE.C_NOREAD PARAM_VALUE.C_MODE} {
    set_property enabled true ${PARAM_VALUE.C_NOREAD} 
}

proc update_PARAM_VALUE.C_ENABLE_ASYNC {PARAM_VALUE.C_ENABLE_ASYNC PARAM_VALUE.C_MODE} {
  if {  [get_property value ${PARAM_VALUE.C_MODE}] == 1 } {
    set_property value 0 ${PARAM_VALUE.C_ENABLE_ASYNC}
    set_property enabled false ${PARAM_VALUE.C_ENABLE_ASYNC} 
  } else {
    set_property enabled true ${PARAM_VALUE.C_ENABLE_ASYNC} 
  }
}

proc update_PARAM_VALUE.C_WRITE_FIFO_DEPTH {PARAM_VALUE.C_WRITE_FIFO_DEPTH PARAM_VALUE.C_MODE} {
  if {[get_property value ${PARAM_VALUE.C_MODE}] == 1} {
    set_property enabled false ${PARAM_VALUE.C_WRITE_FIFO_DEPTH} 
  } else {
    set_property enabled true ${PARAM_VALUE.C_WRITE_FIFO_DEPTH} 
  }
}

proc update_PARAM_VALUE.C_READ_FIFO_DEPTH {PARAM_VALUE.C_READ_FIFO_DEPTH PARAM_VALUE.C_NOREAD} {
  if {[get_property value ${PARAM_VALUE.C_NOREAD}] == 1} {
    set_property enabled false ${PARAM_VALUE.C_READ_FIFO_DEPTH}
  } else {
    set_property enabled true ${PARAM_VALUE.C_READ_FIFO_DEPTH}
  }
}

proc update_PARAM_VALUE.C_BRAM_SRL_FIFO_TYPE {PARAM_VALUE.C_BRAM_SRL_FIFO_TYPE PARAM_VALUE.C_NOREAD} {
  if {[get_property value ${PARAM_VALUE.C_NOREAD}] == 1} {
    set_property enabled false ${PARAM_VALUE.C_BRAM_SRL_FIFO_TYPE}
  } else {
    set_property enabled true ${PARAM_VALUE.C_BRAM_SRL_FIFO_TYPE}
  }
}
