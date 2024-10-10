source_subcore_ipfile xilinx.com:ip:ifx_util:1.1 bd/ifx_common_debug_util.tcl
source_ipfile xgui/ifx_common_xgui2_util.tcl
source_ipfile xgui/axi_common_xgui2_util.tcl


proc init_meta_params {IPINST} {
  add_meta_param $IPINST -name enablement_conditions -type list -value [ list \
  AWUSER_WIDTH {[get_property value ${PARAM_VALUE.READ_WRITE_MODE}] != "READ_ONLY"  && [get_property value ${PARAM_VALUE.PROTOCOL}] != "AXI4LITE"} \
  WUSER_WIDTH  {[get_property value ${PARAM_VALUE.READ_WRITE_MODE}] != "READ_ONLY"  && [get_property value ${PARAM_VALUE.PROTOCOL}] != "AXI4LITE"} \
  BUSER_WIDTH  {[get_property value ${PARAM_VALUE.READ_WRITE_MODE}] != "READ_ONLY"  && [get_property value ${PARAM_VALUE.PROTOCOL}] != "AXI4LITE"} \
  ARUSER_WIDTH {[get_property value ${PARAM_VALUE.READ_WRITE_MODE}] != "WRITE_ONLY" && [get_property value ${PARAM_VALUE.PROTOCOL}] != "AXI4LITE"} \
  REG_AW       {[get_property value ${PARAM_VALUE.READ_WRITE_MODE}] != "READ_ONLY"  } \
  REG_AR       {[get_property value ${PARAM_VALUE.READ_WRITE_MODE}] != "WRITE_ONLY" } \
  REG_W        {[get_property value ${PARAM_VALUE.READ_WRITE_MODE}] != "READ_ONLY"  } \
  REG_R        {[get_property value ${PARAM_VALUE.READ_WRITE_MODE}] != "WRITE_ONLY" } \
  REG_B        {[get_property value ${PARAM_VALUE.READ_WRITE_MODE}] != "READ_ONLY"  } \
  ID_WIDTH     {[get_property value ${PARAM_VALUE.PROTOCOL}]        != "AXI4LITE"   } \
]
}

proc init_gui { IPINST} {
  #Adding Page
  # ifx_debug_trace_setup
  # #set_property show_ipsymbol false [ipgui::get_canvasspec -of $IPINST]

  set Page0 [ ipgui::add_page $IPINST  -name "Settings" -layout vertical]
  set Component_Name [ ipgui::add_param  $IPINST  -parent  $Page0  -name Component_Name ]

  add_param $IPINST -parent $Page0 -name M_CLK_DOMAIN
  create_common_axi_view $IPINST $Page0
  create_axi_user_view $IPINST $Page0

  set Page2 [ ipgui::add_page $IPINST  -name "Advanced Settings" -layout vertical]
  set option_group [ipgui::add_group $IPINST -parent $Page2 -name {optional choice} -layout vertical]
  set option_widgets {
    WUSER_BITS_PER_BYTE      textEdit {Defines the size of the AXI WUSER signal of the master and slave interface} 
    RUSER_BITS_PER_BYTE      textEdit {Defines the size of the AXI RUSER signal of the master and slave interface}
    NUM_READ_THREADS   textEdit {Defines Number of Read threads}
    NUM_WRITE_THREADS  textEdit {Defines Number of Write threads}
    NUM_READ_OUTSTANDING   textEdit {Defines Number of Read outstanding}
    NUM_WRITE_OUTSTANDING  textEdit {Defines Number of Write outstanding}
    MAX_BURST_LENGTH   textEdit {Defines Max Burst Length} 
    SUPPORTS_NARROW_BURST   comboBox {This controls enablement of AxSIZE ports}
    HAS_BURST         comboBox {This controls enablement of AxBURST ports}
    HAS_LOCK          comboBox {This controls enablement of AxLOCK ports}
    HAS_CACHE         comboBox {This controls enablement of AxCACHE ports}
    HAS_REGION        comboBox {This controls enablement of AxREGION ports}
    HAS_PROT          comboBox {This controls enablement of AxPROT ports}
    HAS_QOS           comboBox {This controls enablement of AxQOS ports}
    HAS_WSTRB         comboBox {This controls enablement of AxWSTRB ports}
    HAS_BRESP         comboBox {This controls enablement of AxBRESP ports}
    HAS_RRESP         comboBox {This controls enablement of AxPRESP ports}
  }
  add_widgets $IPINST $option_group $option_widgets
}

#As this part doesn't support in init_gui
generate_direct_model_procs { DATA_WIDTH C_AXI_DATA_WIDTH ADDR_WIDTH C_AXI_ADDR_WIDTH }

generate_map_model_procs_direct_mapping {
  PROTOCOL C_AXI_PROTOCOL {AXI4 0 AXI3 1 AXI4LITE 2}
}


proc update_PARAM_VALUE.RUSER_WIDTH {PARAM_VALUE.RUSER_WIDTH PARAM_VALUE.PROTOCOL PARAM_VALUE.READ_WRITE_MODE PARAM_VALUE.DATA_WIDTH PARAM_VALUE.RUSER_BITS_PER_BYTE} {
   set protocol [get_property value ${PARAM_VALUE.PROTOCOL}]
   set rwm [get_property value ${PARAM_VALUE.READ_WRITE_MODE}]
   set ubpb [get_property value ${PARAM_VALUE.RUSER_BITS_PER_BYTE}]
   set dw [get_property value ${PARAM_VALUE.DATA_WIDTH}]
   
   if { $ubpb > 0 } {
      set_property value [expr $ubpb*($dw/8)] ${PARAM_VALUE.RUSER_WIDTH}
   } elseif {$protocol == "AXI4LITE"} {
        set_property range 0,0 ${PARAM_VALUE.RUSER_WIDTH}   
    } else {    
        set_property range 0,1024 ${PARAM_VALUE.RUSER_WIDTH}    
    }

    if { $rwm != "WRITE_ONLY" && $protocol != "AXI4LITE" } {
      set_property enabled true ${PARAM_VALUE.RUSER_WIDTH}
    } else { 
      set_property enabled false ${PARAM_VALUE.RUSER_WIDTH}
    }
}

proc update_PARAM_VALUE.WUSER_WIDTH {PARAM_VALUE.WUSER_WIDTH PARAM_VALUE.PROTOCOL PARAM_VALUE.READ_WRITE_MODE PARAM_VALUE.DATA_WIDTH PARAM_VALUE.WUSER_BITS_PER_BYTE} {
   set protocol [get_property value ${PARAM_VALUE.PROTOCOL}]
   set rwm [get_property value ${PARAM_VALUE.READ_WRITE_MODE}]
   set ubpb [get_property value ${PARAM_VALUE.WUSER_BITS_PER_BYTE}]
   set dw [get_property value ${PARAM_VALUE.DATA_WIDTH}]
   
   if { $ubpb > 0 } {
      set_property value [expr $ubpb*($dw/8)] ${PARAM_VALUE.WUSER_WIDTH}
   } elseif {$protocol == "AXI4LITE"} {
        set_property range 0,0 ${PARAM_VALUE.WUSER_WIDTH}   
    } else {    
        set_property range 0,1024 ${PARAM_VALUE.WUSER_WIDTH}    
    }

    if { $rwm != "READ_ONLY" && $protocol != "AXI4LITE" } {
      set_property enabled true ${PARAM_VALUE.WUSER_WIDTH}
    } else { 
      set_property enabled false ${PARAM_VALUE.WUSER_WIDTH}
    }
}


proc update_PARAM_VALUE.SUPPORTS_NARROW_BURST {PARAM_VALUE.SUPPORTS_NARROW_BURST } {

}

proc update_PARAM_VALUE.HAS_BURST {PARAM_VALUE.HAS_BURST } {

}

proc update_PARAM_VALUE.HAS_LOCK { PARAM_VALUE.HAS_LOCK} {

}

proc update_PARAM_VALUE.HAS_CACHE {PARAM_VALUE.HAS_CACHE } {
  
}

proc update_PARAM_VALUE.HAS_REGION {PARAM_VALUE.HAS_REGION } {

}

proc update_PARAM_VALUE.HAS_QOS {PARAM_VALUE.HAS_QOS } {

}

proc update_PARAM_VALUE.HAS_WSTRB {PARAM_VALUE.HAS_WSTRB } {

}

proc update_PARAM_VALUE.HAS_BRESP {PARAM_VALUE.HAS_BRESP } {
   
}  

proc update_PARAM_VALUE.HAS_RRESP { PARAM_VALUE.HAS_RRESP } {
 
}

proc update_PARAM_VALUE.WUSER_BITS_PER_BYTE {PARAM_VALUE.READ_WRITE_MODE PARAM_VALUE.WUSER_BITS_PER_BYTE } {
  set rwm [get_property value ${PARAM_VALUE.READ_WRITE_MODE}]
  set WUSER_BITS_PER_BYTE ${PARAM_VALUE.WUSER_BITS_PER_BYTE} 
  if { $rwm !="READ_ONLY"  } {
    set_property range 0,32 $WUSER_BITS_PER_BYTE 
    set_property enabled true $WUSER_BITS_PER_BYTE
   } else {
    set_property range 0,0 $WUSER_BITS_PER_BYTE 
    set_property enabled false $WUSER_BITS_PER_BYTE
   }
}  

proc update_PARAM_VALUE.RUSER_BITS_PER_BYTE {PARAM_VALUE.READ_WRITE_MODE PARAM_VALUE.RUSER_BITS_PER_BYTE } {
  set rwm [get_property value ${PARAM_VALUE.READ_WRITE_MODE}]
  set RUSER_BITS_PER_BYTE ${PARAM_VALUE.RUSER_BITS_PER_BYTE} 
  if { $rwm !="WRITE_ONLY" } {
    set_property range 0,32 $RUSER_BITS_PER_BYTE 
    set_property enabled true $RUSER_BITS_PER_BYTE
   } else {
    set_property range 0,0 $RUSER_BITS_PER_BYTE 
    set_property enabled false $RUSER_BITS_PER_BYTE
   }
}

proc update_PARAM_VALUE.NUM_READ_THREADS {PARAM_VALUE.READ_WRITE_MODE PARAM_VALUE.NUM_READ_THREADS } {
  set rwm [get_property value ${PARAM_VALUE.READ_WRITE_MODE}]
  set NUM_READ_THREADS ${PARAM_VALUE.NUM_READ_THREADS} 
  if { $rwm !="WRITE_ONLY" } {
    set_property range 0,16 $NUM_READ_THREADS 
    set_property enabled true $NUM_READ_THREADS
   } else {
    set_property range 0,0 $NUM_READ_THREADS 
    set_property enabled false $NUM_READ_THREADS
   }
}

proc update_PARAM_VALUE.NUM_WRITE_THREADS {PARAM_VALUE.READ_WRITE_MODE PARAM_VALUE.NUM_WRITE_THREADS } {
  set rwm [get_property value ${PARAM_VALUE.READ_WRITE_MODE}]
  set NUM_WRITE_THREADS ${PARAM_VALUE.NUM_WRITE_THREADS} 
  if { $rwm !="READ_ONLY" } {
    set_property range 0,16 $NUM_WRITE_THREADS 
    set_property enabled true $NUM_WRITE_THREADS
   } else {
    set_property range 0,0 $NUM_WRITE_THREADS 
    set_property enabled false $NUM_WRITE_THREADS
   }
}

proc update_PARAM_VALUE.MAX_BURST_LENGTH {PARAM_VALUE.PROTOCOL PARAM_VALUE.MAX_BURST_LENGTH } {
  set protocol [get_property value ${PARAM_VALUE.PROTOCOL}]
  set MAX_BURST_LENGTH ${PARAM_VALUE.MAX_BURST_LENGTH} 
  if { $protocol =="AXI4LITE" } {
    set_property value 1 $MAX_BURST_LENGTH 
   } elseif { $protocol == "AXI3" } {
    set_property range 1,16 $MAX_BURST_LENGTH 
   } else {
    set_property range 1,256 $MAX_BURST_LENGTH 
   }
}

proc update_PARAM_VALUE.NUM_READ_OUTSTANDING {PARAM_VALUE.READ_WRITE_MODE PARAM_VALUE.NUM_READ_OUTSTANDING } {
  set rwm [get_property value ${PARAM_VALUE.READ_WRITE_MODE}]
  set NUM_READ_OUTSTANDING ${PARAM_VALUE.NUM_READ_OUTSTANDING} 
  if { $rwm !="WRITE_ONLY" } {
    set_property range 0,256 $NUM_READ_OUTSTANDING 
    set_property enabled true $NUM_READ_OUTSTANDING
   } else {
    set_property range 0,0 $NUM_READ_OUTSTANDING 
    set_property enabled false $NUM_READ_OUTSTANDING
   }
}

proc update_PARAM_VALUE.NUM_WRITE_OUTSTANDING {PARAM_VALUE.READ_WRITE_MODE PARAM_VALUE.NUM_WRITE_OUTSTANDING } {
  set rwm [get_property value ${PARAM_VALUE.READ_WRITE_MODE}]
  set NUM_WRITE_OUTSTANDING ${PARAM_VALUE.NUM_WRITE_OUTSTANDING} 
  if { $rwm !="READ_ONLY" } {
    set_property range 0,256 $NUM_WRITE_OUTSTANDING 
    set_property enabled true $NUM_WRITE_OUTSTANDING
   } else {
    set_property range 0,0 $NUM_WRITE_OUTSTANDING 
    set_property enabled false $NUM_WRITE_OUTSTANDING
   }
}
