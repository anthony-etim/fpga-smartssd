proc init {cellpath otherinfo} {
   set cellobj [get_bd_cells $cellpath]
   bd::mark_propagate_overrideable $cellobj [list C_AXI_ADDR_WIDTH C_AXI_ID_WIDTH]
   set_property BD_ATTRIBUTE.FUNCTION MONITOR [get_bd_intf_pins $cellobj/MON_AXI] 
}

proc propagate {cellpath otherinfo} {
   set cellobj [get_bd_cells $cellpath]
   set port_handle [get_bd_intf_pins $cellobj/MON_AXI]
   if { $port_handle != ""} {
     set C_AXI_ADDR_WIDTH [get_property CONFIG.ADDR_WIDTH $port_handle]
     set C_AXI_ID_WIDTH [get_property CONFIG.ID_WIDTH $port_handle]

     set_property -dict [list CONFIG.C_AXI_ADDR_WIDTH $C_AXI_ADDR_WIDTH CONFIG.C_AXI_ID_WIDTH $C_AXI_ID_WIDTH] $cellobj
   }
}
