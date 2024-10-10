############################################################################################################################################
#
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
#
############################################################################################################################################

proc init_gui { IPINST } {

  set Component_Name [ ipgui::add_param  $IPINST  -parent $IPINST -name Component_Name ]

  #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

  set General_Config [ipgui::add_page $IPINST -name "General Config"]

  #------> Adding Group -------------------------------------------------------------------------------------------------------------------#
  set CQ_Group [ipgui::add_group $IPINST -name "CQ Width Settings" -parent $General_Config]

  set PCIE_LINK_CAP_MAX [ipgui::add_param $IPINST -name PCIE_LINK_CAP_MAX -widget comboBox -parent $CQ_Group]
  set_property tooltip  "Set PCIe Link Width Capability"  $PCIE_LINK_CAP_MAX

}

proc update_PARAM_VALUE.Component_Name {PARAM_VALUE.Component_Name } {
  set value [get_property value ${PARAM_VALUE.Component_Name}]
  set Component_Name ${PARAM_VALUE.Component_Name}
}

proc update_MODELPARAM_VALUE.C_TDATA_WIDTH { MODELPARAM_VALUE.C_TDATA_WIDTH PARAM_VALUE.PCIE_LINK_CAP_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	
  # Configure TDATA_WIDTH based on Max Link Capability
  set pcie_link_cap [get_property value ${PARAM_VALUE.PCIE_LINK_CAP_MAX}]
  
  if {($pcie_link_cap eq "Gen3x16") || ($pcie_link_cap eq "Gen4x8")} {
  
      set tdata_width 512
      
  } elseif {($pcie_link_cap eq "Gen4x4") || ($pcie_link_cap eq "Gen3x8")} {
  
      set tdata_width 256
      
  } else {
  
      # Gen3x4
      set tdata_width 128
      
  }

  # Set tdata width model parameter
  set_property value $tdata_width ${MODELPARAM_VALUE.C_TDATA_WIDTH}
  
}


proc update_MODELPARAM_VALUE.C_TUSER_WIDTH { MODELPARAM_VALUE.C_TUSER_WIDTH PARAM_VALUE.PCIE_LINK_CAP_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
  
  # Configure TUSER_WIDTH based on Max Link Capability
  set pcie_link_cap [get_property value ${PARAM_VALUE.PCIE_LINK_CAP_MAX}]
  
  if {($pcie_link_cap eq "Gen3x16") || ($pcie_link_cap eq "Gen4x8")} {
  
      set tuser_width 183
      
  } elseif {($pcie_link_cap eq "Gen4x4") || ($pcie_link_cap eq "Gen3x8")} {
  
      set tuser_width 88
      
  } else {
  
      # Gen3x4
      set tuser_width 88
      
  }
  
  # Set tuser width model parameter
	set_property value $tuser_width ${MODELPARAM_VALUE.C_TUSER_WIDTH}
  
}
