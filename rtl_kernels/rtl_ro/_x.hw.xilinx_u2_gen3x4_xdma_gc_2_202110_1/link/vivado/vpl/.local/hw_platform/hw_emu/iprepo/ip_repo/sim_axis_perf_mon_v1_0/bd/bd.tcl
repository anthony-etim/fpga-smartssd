proc init {cellpath otherinfo} {
   set cellobj [get_bd_cells $cellpath]
   bd::mark_propagate_overrideable $cellobj [list TDATA_NUM_BYTES TID_WIDTH TDEST_WIDTH HAS_TLAST]
   set_property BD_ATTRIBUTE.FUNCTION MONITOR [get_bd_intf_pins $cellobj/MON_AXIS] 
}

proc propagate {cellpath otherinfo} {
   set cellobj [get_bd_cells $cellpath]
   set port_handle [get_bd_intf_pins $cellobj/MON_AXIS]
   if { $port_handle != ""} {
     set TDATA_NUM_BYTES [get_property CONFIG.TDATA_NUM_BYTES $port_handle]
     set TID_WIDTH [get_property CONFIG.TID_WIDTH $port_handle]
     set TDEST_WIDTH [get_property CONFIG.TDEST_WIDTH $port_handle]
     set HAS_TLAST [get_property CONFIG.HAS_TLAST $port_handle]

     set_property -dict [list CONFIG.AXISTREAM_DATA_WIDTH [expr {$TDATA_NUM_BYTES * 8}] CONFIG.AXISTREAM_ID_WIDTH $TID_WIDTH CONFIG.AXISTREAM_DEST_WIDTH $TDEST_WIDTH CONFIG.HAS_TLAST $HAS_TLAST] $cellobj
   }
}
