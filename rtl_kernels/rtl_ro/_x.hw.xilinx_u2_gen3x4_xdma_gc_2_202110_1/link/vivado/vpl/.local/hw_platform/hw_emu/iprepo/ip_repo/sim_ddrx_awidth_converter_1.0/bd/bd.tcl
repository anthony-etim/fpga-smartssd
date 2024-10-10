
proc init { cellpath otherInfo } {                                                                   
	set cell_handle [get_bd_cells $cellpath]                                                                 
  set cellobj [get_bd_cells $cellpath]
  bd::mark_propagate_overrideable $cellobj [list C_S00_AXI_ARUSER_WIDTH C_S00_AXI_AWUSER_WIDTH C_S00_AXI_BUSER_WIDTH C_S00_AXI_ID_WIDTH C_S00_AXI_RUSER_WIDTH C_S00_AXI_WUSER_WIDTH]
}


proc pre_propagate {cellpath otherInfo } {                                                           
                                                                                                             
	set cell_handle [get_bd_cells $cellpath]                                                                 
	set all_busif [get_bd_intf_pins $cellpath/*]		                                                     
	set axi_standard_param_list [list ID_WIDTH AWUSER_WIDTH ARUSER_WIDTH WUSER_WIDTH RUSER_WIDTH BUSER_WIDTH]
	                                                                                                         
	foreach busif $all_busif {	                                                                             
		if { [string equal -nocase [get_property CONFIG.PROTOCOL $busif] "AXI4"] != 1 } {                  
			continue                                                                                         
		}                                                                                                    
		if { [string equal -nocase [get_property MODE $busif] "master"] != 1 } {                           
			continue                                                                                         
		}			                                                                                         
		                                                                                                     
		set busif_name [get_property NAME $busif]			                                                 
		foreach tparam $axi_standard_param_list {		                                                     
			set busif_param_name "C_${busif_name}_${tparam}"			                                     
			                                                                                                 
			set val_on_cell_intf_pin [get_property CONFIG.${tparam} $busif]                                  
			set val_on_cell [get_property CONFIG.${busif_param_name} $cell_handle]                           
			                                                                                                 
			if { [string equal -nocase $val_on_cell_intf_pin $val_on_cell] != 1 } {                          
				if { $val_on_cell != "" } {                                                                  
					set_property CONFIG.${tparam} $val_on_cell $busif                                        
				}                                                                                            
			}			                                                                                     
		}		                                                                                             
	}                                                                                                        
}


proc propagate {cellpath otherInfo } {                                                               
  
   set cellobj [get_bd_cells $cellpath]
   set port_handle [get_bd_intf_pins $cellobj/S00_AXI]
   if { $port_handle != ""} {
     set C_S00_AXI_ARUSER_WIDTH [get_property CONFIG.ARUSER_WIDTH $port_handle]
     set C_S00_AXI_AWUSER_WIDTH [get_property CONFIG.AWUSER_WIDTH $port_handle]
     set C_S00_AXI_BUSER_WIDTH [get_property CONFIG.BUSER_WIDTH $port_handle]
     set C_S00_AXI_ID_WIDTH [get_property CONFIG.ID_WIDTH $port_handle]
     set C_S00_AXI_RUSER_WIDTH [get_property CONFIG.RUSER_WIDTH $port_handle]
     set C_S00_AXI_WUSER_WIDTH [get_property CONFIG.WUSER_WIDTH $port_handle]
     set_property -dict [list  CONFIG.C_S00_AXI_ARUSER_WIDTH $C_S00_AXI_ARUSER_WIDTH CONFIG.C_S00_AXI_AWUSER_WIDTH $C_S00_AXI_AWUSER_WIDTH CONFIG.C_S00_AXI_BUSER_WIDTH $C_S00_AXI_BUSER_WIDTH  CONFIG.C_S00_AXI_ID_WIDTH $C_S00_AXI_ID_WIDTH CONFIG.C_S00_AXI_RUSER_WIDTH $C_S00_AXI_RUSER_WIDTH CONFIG.C_S00_AXI_WUSER_WIDTH $C_S00_AXI_WUSER_WIDTH] $cellobj
   }                                                                                                           
}

