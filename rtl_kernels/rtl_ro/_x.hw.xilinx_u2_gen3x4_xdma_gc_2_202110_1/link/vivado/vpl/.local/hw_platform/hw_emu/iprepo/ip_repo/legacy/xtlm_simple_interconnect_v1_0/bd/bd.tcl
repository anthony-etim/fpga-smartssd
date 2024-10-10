
proc init { cellpath otherInfo } {                                                                   
                                                                                                             
	set cell_handle [get_bd_cells $cellpath]                                                                 
	set all_busif [get_bd_intf_pins $cellpath/*]		                                                     
	set axi_standard_param_list [list ID_WIDTH AWUSER_WIDTH ARUSER_WIDTH WUSER_WIDTH RUSER_WIDTH BUSER_WIDTH]
	set full_sbusif_list [list  S00_AXI S01_AXI S02_AXI S03_AXI S04_AXI S05_AXI S06_AXI S07_AXI S08_AXI S09_AXI S10_AXI S11_AXI S12_AXI S13_AXI S14_AXI S15_AXI S16_AXI S17_AXI S18_AXI S19_AXI S20_AXI S21_AXI S22_AXI S23_AXI S24_AXI S25_AXI S26_AXI S27_AXI S28_AXI S29_AXI S30_AXI S31_AXI ]
			                                                                                                 
	foreach busif $all_busif {                                                                               
		if { [string equal -nocase [get_property MODE $busif] "slave"] == 1 } {                            
			set busif_param_list [list]                                                                      
			set busif_name [get_property NAME $busif]					                                     
			if { [lsearch -exact -nocase $full_sbusif_list $busif_name ] == -1 } {					         
			    continue                                                                                     
			}                                                                                                
			foreach tparam $axi_standard_param_list {                                                        
				lappend busif_param_list "C_${busif_name}_${tparam}"                                       
			}                                                                                                
			bd::mark_propagate_only $cell_handle $busif_param_list			                                 
		}		                                                                                             
	}      
   update_bridges $cellpath
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
                                                                                                             
	set cell_handle [get_bd_cells $cellpath]                                                                 
	set all_busif [get_bd_intf_pins $cellpath/*]		                                                     
	set axi_standard_param_list [list ID_WIDTH AWUSER_WIDTH ARUSER_WIDTH WUSER_WIDTH RUSER_WIDTH BUSER_WIDTH]
	                                                                                                         
	foreach busif $all_busif {                                                                               
		if { [string equal -nocase [get_property CONFIG.PROTOCOL $busif] "AXI4"] != 1 } {                  
			continue                                                                                         
		}                                                                                                    
		if { [string equal -nocase [get_property MODE $busif] "slave"] != 1 } {                            
			continue                                                                                         
		}			                                                                                         
	                                                                                                         
		set busif_name [get_property NAME $busif]		                                                     
		foreach tparam $axi_standard_param_list {			                                                 
			set busif_param_name "C_${busif_name}_${tparam}"			                                     
                                                                                                             
			set val_on_cell_intf_pin [get_property CONFIG.${tparam} $busif]                                  
			set val_on_cell [get_property CONFIG.${busif_param_name} $cell_handle]                           
			                                                                                                 
			if { [string equal -nocase $val_on_cell_intf_pin $val_on_cell] != 1 } {                          
				#override property of bd_interface_net to bd_cell -- only for slaves.  May check for supported values..
				if { $val_on_cell_intf_pin != "" } {                                                         
					set_property CONFIG.${busif_param_name} $val_on_cell_intf_pin $cell_handle               
				}                                                                                            
			}                                                                                                
		}		                                                                                             
	}                                                                                                        
}

proc update_bridges { cell_name } {

  set ip [get_bd_cells $cell_name]
  set num_si [get_property CONFIG.C_NUM_SI $ip]
  set num_mi [get_property CONFIG.C_NUM_MI $ip]
  # Update the associated interfaces based on sparse connectivity information
  for {set si 0} {$si < $num_si} {incr si} {
    set si_idx [format "%.2d" $si]
    for {set mi 0} {$mi < $num_mi} {incr mi} {
      set mi_idx [format "%.2d" $mi]
      set read_varname CONFIG.C_M${mi_idx}_S${si_idx}_CONNECTIVITY
      set read_connectivity [get_property $read_varname $ip]
      if {$read_connectivity != 0 } {
        set listname si${si}_connectivity
        lappend $listname M${mi_idx}_AXI
      }
    }
  }

  for {set si 0} {$si < $num_si} {incr si} {
    set si_idx [format "%.2d" $si]
    set assoc  [join [subst $[subst si${si}_connectivity]] :]
    set pin   "S${si_idx}_AXI"
    
    if {[llength [split $assoc :]] > 1 || [get_property BRIDGES [get_bd_intf_pins $cell_name/$pin]] == ""} {
      set_property BRIDGES $assoc [get_bd_intf_pins $cell_name/$pin]
    } else {
    }
  }

  
}
proc post_config_ip {cell_name changed_params} {
  update_bridges $cell_name
}
