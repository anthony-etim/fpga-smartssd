# (c) Copyright 2014, 2018 Xilinx, Inc. All rights reserved.
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


proc init_gui { IPINST PROJECT_PARAM.BOARD} {
  set ipview $IPINST
  set Page0           [ ipgui::add_page  $ipview -name "Settings" -layout vertical]
  set spgroup         [ipgui::add_group $ipview -parent $Page0 -name {Standard Properties} -layout vertical]
  set Component_Name  [ ipgui::add_param $ipview -parent  $spgroup -name Component_Name ]
  set NUM_SI          [ ipgui::add_param $ipview -parent  $spgroup -name NUM_SI -widget comboBox]
  set NUM_MI          [ ipgui::add_param $ipview -parent  $spgroup -name NUM_MI -widget comboBox]
  set NUM_CLKS        [ ipgui::add_param $ipview -parent  $spgroup -name NUM_CLKS -widget comboBox]
  set HAS_CREDIT_CHANNEL [ ipgui::add_param $ipview -parent  $spgroup -name HAS_CREDIT_CHANNEL -widget comboBox]

  set Page1           [ ipgui::add_page  $ipview -name "Flow/Route ID" -layout vertical]
  set max_num_axis 16
  set idTable [ipgui::add_table $ipview -name idTable -rows [expr {$max_num_axis + 1}] -columns 3 -parent $Page1 -layout horizontal]
  set INT [ipgui::add_static_text $ipview -name INT -parent $idTable -text "<b>Kernel Interface</b>"]
  set_property cell_location 0,0  [ipgui::get_textspec INT -of $ipview]
  set BTD [ipgui::add_static_text $ipview -name BTD -parent $idTable -text "<b>Flow ID</b>"]
  set_property cell_location 0,1  [ipgui::get_textspec BTD -of $ipview]
  set HTD [ipgui::add_static_text $ipview -name HTD -parent $idTable -text "<b>Route ID</b>"]
  set_property cell_location 0,2  [ipgui::get_textspec HTD -of $ipview]
  for {set ro 1} {$ro <= $max_num_axis} {incr ro} {
    set x [format {%02d} [expr {$ro - 1}]]
    set SS$x [ipgui::add_static_text $ipview -name SS$x -parent $idTable -text "<b>${x}</b>"]
    set_property cell_location $ro,0 [ipgui::get_textspec SS$x -of $ipview]

    set FLOW_ID$x    [ipgui::add_param $ipview -parent $idTable -name FLOW_ID$x]
    set_property cell_location $ro,1 [set FLOW_ID$x]

    set ROUTE_ID$x   [ipgui::add_param $ipview -parent $idTable -name ROUTE_ID$x]
    set_property cell_location $ro,2 [set ROUTE_ID$x]
  }

}
