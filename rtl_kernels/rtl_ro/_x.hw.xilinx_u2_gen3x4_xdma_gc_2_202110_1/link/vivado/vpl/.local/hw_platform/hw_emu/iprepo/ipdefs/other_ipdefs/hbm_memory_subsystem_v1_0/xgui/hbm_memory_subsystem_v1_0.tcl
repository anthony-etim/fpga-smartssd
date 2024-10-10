###############################################################################
##
## (c) Copyright 2014 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.
##

variable tcl_scope
variable tcl_IPINST

set tcl_scope xgui
set tcl_IPINST [ ::ipgui::current_inst ]

proc init_params {IPINST PROJECT_PARAM.BOARD} {

}

proc init_gui { IPINST PROJECT_PARAM.BOARD} {

  set ipview $IPINST
  set Page0                    [ipgui::add_page  $ipview -name "AXI Port Configuration" -layout vertical]
  set basic_grp                [add_group -name {Basic Configuration} -parent $Page0 $ipview]
  set Component_Name           [ipgui::add_param $ipview -parent $Page0 -name Component_Name ]
  set NUM_SI                   [ipgui::add_param $ipview -parent $basic_grp -name NUM_SI         -widget comboBox]
  set NUM_SI_CLKS              [ipgui::add_param $ipview -parent $basic_grp -name NUM_SI_CLKS    -widget comboBox]
  set NUM_SI_ARESETN           [ipgui::add_param $ipview -parent $basic_grp -name NUM_SI_ARESETN -widget comboBox]
  set Page1                    [ipgui::add_page  $ipview -name "Port 0 Specific Configuration" -layout vertical]
  set host_grp                 [add_group -name {Host Port SLR Configuration} -parent $Page1 $ipview]
  set S00_SLR                  [ipgui::add_param $ipview -parent $host_grp -name S00_SLR -widget comboBox]
  set Page2                    [ipgui::add_page  $ipview -name "Reliability Configuration" -layout vertical]
  set ecc_grp                  [add_group -name {ECC Configuration} -parent $Page2 $ipview]
  set ECC_EN                   [ipgui::add_param $ipview -parent $ecc_grp -name ECC_EN -widget checkBox]
  set ECC_SCRUB_EN             [ipgui::add_param $ipview -parent $ecc_grp -name ECC_SCRUB_EN -widget checkBox]
  set Page3                    [ipgui::add_page  $ipview -name "HBM Configuration" -layout vertical]
  set hbm_grp                  [add_group -name {HBM Configuration} -parent $Page3 $ipview]
  set DISABLE_HBM_REF_CLK_BUFG [ipgui::add_param $ipview -parent $hbm_grp -name DISABLE_HBM_REF_CLK_BUFG -widget checkBox]
}

proc update_gui_for_PARAM_VALUE.ECC_EN {IPINST PARAM_VALUE.ECC_EN PARAM_VALUE.ECC_SCRUB_EN} {
	# Make ECC_SCRUB_EN invalid when ECC is not enabled
	if {[get_property value ${PARAM_VALUE.ECC_EN}] == "false"} {
	   set_property visible false [ ipgui::get_guiparamspec ${PARAM_VALUE.ECC_SCRUB_EN} -of $IPINST ]
	} else {
	   set_property visible true [ ipgui::get_guiparamspec ${PARAM_VALUE.ECC_SCRUB_EN} -of $IPINST ]
	}
}
