# (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
