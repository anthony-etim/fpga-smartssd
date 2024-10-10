
proc init {cellpath otherInfo } {
  # cell initialization here
  set cell [get_bd_cells $cellpath]
  set paramList { C_MON_AXI_ID_WIDTH C_MON_AXI_DATA_WIDTH C_MON_AXI_ADDR_WIDTH }
  bd::mark_propagate_overrideable $cell $paramList
}

proc post_config_ip {cellpath otherInfo } {
  # Nothing to do
}

proc propagate {cellpath otherInfo } {
  # standard parameter propagation here
  set ip [get_bd_cells $cellpath]
  set mon_protocol [get_property CONFIG.C_MON_AXI_PROTOCOL $ip]
  set intf_in [get_bd_intf_pins ${ip}/mon_axi]

  set id_width [get_property CONFIG.ID_WIDTH $intf_in]
  set_property CONFIG.C_MON_AXI_ID_WIDTH $id_width $ip

  set data_width [get_property CONFIG.DATA_WIDTH $intf_in]
  set_property CONFIG.C_MON_AXI_DATA_WIDTH $data_width $ip
  
  set addr_width [get_property CONFIG.ADDR_WIDTH $intf_in]
  set_property CONFIG.C_MON_AXI_ADDR_WIDTH $addr_width $ip
}

proc post_propagate {cellpath otherInfo} {
  # Nothing to do 
}

proc set_base_high {cellpath} {
  # Nothing to do
}
