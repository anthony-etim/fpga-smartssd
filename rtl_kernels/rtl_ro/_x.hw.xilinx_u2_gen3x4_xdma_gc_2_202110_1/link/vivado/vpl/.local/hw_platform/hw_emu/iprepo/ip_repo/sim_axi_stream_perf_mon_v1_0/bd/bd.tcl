proc init {cellpath otherinfo} {
   set cellobj [get_bd_cells $cellpath]
   bd::mark_propagate_overrideable $cellobj [list C_AXI_STRM_ID_WIDTH C_AXI_STRM_DATA_WIDTH C_AXI_STRM_TDEST_WIDTH C_AXI_STRM_TUSER_WIDTH]
   set_property BD_ATTRIBUTE.FUNCTION MONITOR [get_bd_intf_pins $cellobj/MON_AXI_STRM]
   
}

proc propagate {cellpath otherinfo} {

   set cellobj [get_bd_cells $cellpath]
   set port_handle [get_bd_intf_pins $cellobj/MON_AXI_STRM]
   if { $port_handle != ""} {
     set C_AXI_STRM_ID_WIDTH [get_property CONFIG.TID_WIDTH $port_handle]
     set C_AXI_STRM_DATA_WIDTH [get_property CONFIG.TDATA_NUM_BYTES $port_handle]
     set C_AXI_STRM_TDEST_WIDTH [get_property CONFIG.TDEST_WIDTH $port_handle]
     set C_AXI_STRM_TUSER_WIDTH [get_property CONFIG.TUSER_WIDTH $port_handle]

     set_property -dict [list CONFIG.C_AXI_STRM_ID_WIDTH $C_AXI_STRM_ID_WIDTH CONFIG.C_AXI_STRM_DATA_WIDTH $C_AXI_STRM_DATA_WIDTH CONFIG.C_AXI_STRM_TDEST_WIDTH $C_AXI_STRM_TDEST_WIDTH CONFIG.C_AXI_STRM_TUSER_WIDTH $C_AXI_STRM_TUSER_WIDTH] $cellobj
   }
}
