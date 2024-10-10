
proc init { cellpath otherInfo } {
  set cell_handle [get_bd_cells $cellpath]
  bd::mark_propagate_only $cell_handle [list DATA_WIDTH ADDR_WIDTH USER_WIDTH ID_WIDTH]
}

proc propagate { cellpath otherInfo } {
  set cell_handle [get_bd_cells $cellpath]
  set connected_to [find_bd_objs -thru_hier -relation connected_to [get_bd_intf_pins $cell_handle/MON_M_AXI]]
  for {set idx 0} {$idx < [llength $connected_to]} {incr idx} {
    set interface [lindex $connected_to $idx]
    set mode [get_property MODE $interface]

    if {$mode == "Master"} {
      set data_width [get_property config.DATA_WIDTH $interface]
      set addr_width [get_property config.ADDR_WIDTH $interface]
      set user_width [get_property config.WUSER_WIDTH $interface]
      set id_width   [get_property config.ID_WIDTH   $interface]
      
      set_property config.DATA_WIDTH $data_width $cell_handle
      set_property config.ADDR_WIDTH $addr_width $cell_handle
      set_property config.USER_WIDTH $user_width $cell_handle
      set_property config.ID_WIDTH   $id_width   $cell_handle
    }
  }
}
