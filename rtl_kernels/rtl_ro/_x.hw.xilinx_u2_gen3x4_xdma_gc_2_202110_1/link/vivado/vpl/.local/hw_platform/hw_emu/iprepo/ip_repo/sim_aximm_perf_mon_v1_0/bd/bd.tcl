proc init {cellpath otherinfo} {
   set cellobj [get_bd_cells $cellpath]
   bd::mark_propagate_overrideable $cellobj [list ADDR_WIDTH ID_WIDTH DATA_WIDTH]
   set_property BD_ATTRIBUTE.FUNCTION MONITOR [get_bd_intf_pins $cellobj/MON_M_AXI] 
}

proc propagate {cellpath otherinfo} {
   set cellobj [get_bd_cells $cellpath]
   set port_handle [get_bd_intf_pins $cellobj/MON_M_AXI]
   if { $port_handle != ""} {
     set ADDR_WIDTH [get_property CONFIG.ADDR_WIDTH $port_handle]
     set ID_WIDTH [get_property CONFIG.ID_WIDTH $port_handle]
     set DATA_WIDTH [get_property CONFIG.DATA_WIDTH $port_handle]

     set_property -dict [list CONFIG.ADDR_WIDTH $ADDR_WIDTH CONFIG.ID_WIDTH $ID_WIDTH CONFIG.DATA_WIDTH $DATA_WIDTH] $cellobj
   }
}
