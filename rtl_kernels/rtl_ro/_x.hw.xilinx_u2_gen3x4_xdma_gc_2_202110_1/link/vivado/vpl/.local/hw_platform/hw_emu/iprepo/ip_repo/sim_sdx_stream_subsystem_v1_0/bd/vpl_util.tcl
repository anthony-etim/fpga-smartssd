# (c) Copyright 2018 Xilinx, Inc. All rights reserved.
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
namespace eval ::sdx_stream_subsystem {  
#  proc dbg_puts { s } { puts "DBG: $s" }
  proc dbg_puts { s } { }

  namespace eval util {
    proc get_parent { axis_intf } { 
      if {![string equal [get_property -quiet VLNV $axis_intf] {xilinx.com:interface:axis_rtl:1.0}]} { 
        send_msg_id {sdx_stream_subystem 1-1} ERROR "Object '$axis_intf' is not an axi4-stream interface. [get_property -quiet VLNV $axis_intf]"
        return {}
      }
      set parent [get_bd_cells -quiet -of_objects $axis_intf]
      if {[llength $parent] != 1} { 
        send_msg_id {sdx_stream_subystem 1-1} ERROR "get_bd_cells -of_objects '$axis_intf' returned [llength $parent] items. Expected 1."
        return {}
      }
      if {![string equal [get_property -quiet VLNV $parent] {xilinx.com:ip:sdx_stream_subsystem:1.0}]} { 
        send_msg_id {sdx_stream_subystem 1-1} ERROR "Parent object '$parent' of '$axis_intf' is not the sdx_stream_subsystem. [get_property -quiet VLNV $parent]"
        return {}
      }
      return $parent
    }

    proc get_port_num             { axis_intf } { 
      # Only supports 00-99
      if {[regexp {^[MS]0?(\d{1,2})_AXIS$} [get_property NAME $axis_intf] dummy port_num] != 1} { 
        send_msg_id {sdx_stream_subystem 1-1} ERROR "Interface [get_property NAME $axis_intf] does not have an associated Route or Flow ID."
        return {} 
      }
      return $port_num
    }
  }  

  proc get_routeid      { axis_intf } { 
    return [lindex [get_routeid_pair $axis_intf] 0]

  }
  proc get_routeid_pair { axis_intf } { 
    set parent   [util::get_parent $axis_intf]
    set port_num [util::get_port_num $axis_intf]

    set routeid_hex [get_property -quiet [format {CONFIG.ROUTE_ID%02d} $port_num] $parent]

    if {[llength $routeid_hex] != 1} { 
      send_msg_id {sdx_stream_subystem 1-1} ERROR "Could not find [format {CONFIG.ROUTE_ID%02d} $port_num] on object $parent. $routeid_hex"
      return {}
    }
    set base [format {%d} $routeid_hex]
    set high $base
    return [list $base $high]

  }
  proc get_flowid { axis_intf } { 
    set parent   [util::get_parent $axis_intf]
    if {[llength $parent] == 0} { 
      return {}
    }
    set port_num [util::get_port_num $axis_intf]
    if {[llength $port_num] == 0} { 
      return {} 
    }
    set flowid_hex [get_property -quiet [format {CONFIG.FLOW_ID%02d} $port_num] $parent]
    if {[llength $flowid_hex] != 1} { 
      send_msg_id {sdx_stream_subystem 1-1} ERROR "Could not find [format {CONFIG.FLOW_ID%02d} $port_num] on object $parent. $flowid_hex"
      return {}
    }

    set flowid [format {%d} $flowid_hex]

    return $flowid
  }

}
