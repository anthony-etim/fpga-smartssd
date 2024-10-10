# (c) Copyright 2012-2013, 2019 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
############################################################

proc init { cell_name undefined_params } {
  set_property CONFIG.ASSOCIATED_BUSIF {s_axi} [get_bd_pins $cell_name/s_aclk]
  set_property CONFIG.ASSOCIATED_RESET {aresetn} [get_bd_pins $cell_name/s_aclk]
  set_property CONFIG.ASSOCIATED_BUSIF {m_axi} [get_bd_pins $cell_name/m_aclk]
  set_property CONFIG.ASSOCIATED_RESET {m_aresetn} [get_bd_pins $cell_name/m_aclk]
  set_property BRIDGES {m_axi} [get_bd_intf_pins $cell_name/s_axi]
  set_property CONFIG.TYPE INTERCONNECT [get_bd_pins $cell_name/aresetn]
#  set_property CONFIG.POLARITY.VALUE_SRC CONSTANT [get_bd_pins $cell_name/aresetn]
  set_property CONFIG.TYPE INTERCONNECT [get_bd_pins $cell_name/m_aresetn]
  set_property CONFIG.POLARITY.VALUE_SRC CONSTANT [get_bd_pins $cell_name/m_aresetn]

  bd::mark_propagate_overrideable [get_bd_cells $cell_name] {C_AXI_ADDR_WIDTH C_AXI_DATA_WIDTH} 
  foreach i [get_bd_intf_pins -of_objects [get_bd_cells $cell_name]] { set_property BD_ATTRIBUTE.TYPE interior $i }
}

#proc post_config_ip { cell_name args } {
#  ifx_puts "----------------------------------------------------------------------"
#  ifx_puts "[info level [info level]]"
#  ifx_dependent_strength $cell_name
#}
#
#
#proc propagate { cell_name  prop_info } { 
#  ifx_puts "----------------------------------------------------------------------"
#  ifx_puts "[info level [info level]]"
#  ifx_validate_axi_interfaces $cell_name
#  ifx_infrastructure_propagate $cell_name $prop_info 
#
#  set ip [get_bd_cells $cell_name]
#
#  if {[get_property CONFIG.ACLK_ASYNC.VALUE_SRC $ip] == "USER" || [get_property CONFIG.ACLK_RATIO.VALUE_SRC $ip] == "USER"} {
#    ifx_puts "One or more clock parameters are at user strength - both paramters will be retained"
#  } else {
#    set_param bd.suppressValidationErrorMsgs true
#    set settings [ifx_calculate_clk_properties [get_bd_pins $cell_name/S_AXI_ACLK] [get_bd_pins $cell_name/M_AXI_ACLK]]
#    ifx_puts "Clock Conversion settings are: $settings"
#    array set remap [list aclk_async ACLK_ASYNC aclk_ratio ACLK_RATIO]
#    foreach {p v} $settings {
#      ifx_puts "Setting $remap($p) to $v"
#      set_property CONFIG.$remap($p) $v $ip
#    }
#    set_param bd.suppressValidationErrorMsgs false
#  }
#}
#
#ifx_debug_trace_setup
