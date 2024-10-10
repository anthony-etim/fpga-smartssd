proc init {cellpath otherinfo} {
   set cellobj [get_bd_cells $cellpath]
   bd::mark_propagate_overrideable $cellobj [list C_AXI_ADDR_WIDTH C_AXI_ARUSER_WIDTH C_AXI_AWUSER_WIDTH C_AXI_BUSER_WIDTH C_AXI_DATA_WIDTH C_AXI_ID_WIDTH C_AXI_RUSER_WIDTH C_AXI_WUSER_WIDTH]
   set_property BD_ATTRIBUTE.FUNCTION MONITOR [get_bd_intf_pins $cellobj/MON_AXI]
   
}

proc propagate {cellpath otherinfo} {

   set cellobj [get_bd_cells $cellpath]
   set port_handle [get_bd_intf_pins $cellobj/MON_AXI]
   if { $port_handle != ""} {
     set C_AXI_ADDR_WIDTH [get_property CONFIG.ADDR_WIDTH $port_handle]
     set C_AXI_ARUSER_WIDTH [get_property CONFIG.ARUSER_WIDTH $port_handle]
     set C_AXI_AWUSER_WIDTH [get_property CONFIG.AWUSER_WIDTH $port_handle]
     set C_AXI_BUSER_WIDTH [get_property CONFIG.BUSER_WIDTH $port_handle]
     set C_AXI_DATA_WIDTH [get_property CONFIG.DATA_WIDTH $port_handle]
     set C_AXI_ID_WIDTH [get_property CONFIG.ID_WIDTH $port_handle]
     set C_AXI_RUSER_WIDTH [get_property CONFIG.RUSER_WIDTH $port_handle]
     set C_AXI_WUSER_WIDTH [get_property CONFIG.WUSER_WIDTH $port_handle]

     set_property -dict [list CONFIG.C_AXI_ADDR_WIDTH $C_AXI_ADDR_WIDTH CONFIG.C_AXI_ARUSER_WIDTH $C_AXI_ARUSER_WIDTH CONFIG.C_AXI_AWUSER_WIDTH $C_AXI_AWUSER_WIDTH CONFIG.C_AXI_BUSER_WIDTH $C_AXI_BUSER_WIDTH CONFIG.C_AXI_DATA_WIDTH $C_AXI_DATA_WIDTH CONFIG.C_AXI_ID_WIDTH $C_AXI_ID_WIDTH CONFIG.C_AXI_RUSER_WIDTH $C_AXI_RUSER_WIDTH CONFIG.C_AXI_WUSER_WIDTH $C_AXI_WUSER_WIDTH] $cellobj
   }
}
