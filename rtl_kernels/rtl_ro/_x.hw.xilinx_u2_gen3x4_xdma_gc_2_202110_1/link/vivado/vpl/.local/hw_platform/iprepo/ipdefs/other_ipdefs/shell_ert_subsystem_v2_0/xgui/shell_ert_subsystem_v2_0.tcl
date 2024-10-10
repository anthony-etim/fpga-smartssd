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

    ipgui::add_param $IPINST -name "Component_Name"

    #---> Adding Page -----------------------------------------------------------------------------------------------------------------------#

    set Memory_Config [ipgui::add_page $IPINST -name "Memory Config"]

    #---> Adding Group ----------------------------------------------------------------------------------------------------------------------#

        set KDMA_Group [ipgui::add_group $IPINST -parent $Memory_Config -name "General Configuration" ]

            set REMOVE_KDMA [ipgui::add_param $IPINST -parent $KDMA_Group -name REMOVE_KDMA -layout horizontal -widget checkBox]
            set_property display_name "Disable Copy Kernel" [ipgui::get_guiparamspec REMOVE_KDMA -of $IPINST]       

            #  KDMA_Group_Panel
            # .-----------------------------------------.
            # | .-----------------.                    |
            # | |                 |                    |
            # | |  Range_Panel3   |                    |
            # | |                 |                    |
            # | |                 |                    |
            # | '-----------------'                    |
            # '-----------------------------------------'

            set KDMA_Group_Panel [ipgui::add_panel $IPINST -parent $KDMA_Group -name KDMA_Group_Panel -layout horizontal]

                set Range_Panel3 [ipgui::add_panel $IPINST -parent $KDMA_Group_Panel -name Range_Panel3]

                    #---> Adding Params ---------------------------------------------------------------------------------------------------------------------#

                    set PCIE_LINK_CAP_MAX [ipgui::add_param $IPINST -parent $Range_Panel3 -name PCIE_LINK_CAP_MAX -layout horizontal -widget comboBox]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------------#

        set Memory_Group1 [ipgui::add_group $IPINST -parent $Memory_Config -name "CQ Memory Size" ]

            #  Memory_Group1_Panel
            # .-----------------------------------------.
            # | .-----------------.                    |
            # | |                 |                    |
            # | |  Range_Panel1   |                    |
            # | |                 |                    |
            # | |                 |                    |
            # | '-----------------'                    |
            # '-----------------------------------------'

            set Memory_Group1_Panel [ipgui::add_panel $IPINST -parent $Memory_Group1 -name Memory_Group1_Panel -layout horizontal]

                set Range_Panel1 [ipgui::add_panel $IPINST -parent $Memory_Group1_Panel -name Range_Panel1]

                    #---> Adding Params ---------------------------------------------------------------------------------------------------------------------#

                    set RANGE_CQ_BRAM_CTRL_SEG [ipgui::add_param $IPINST -parent $Range_Panel1 -name RANGE_CQ_BRAM_CTRL_SEG -layout horizontal -widget comboBox]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------------#

        set Memory_Group2 [ipgui::add_group $IPINST -parent $Memory_Config -name "Scheduler Memory Size" ]

            #  Memory_Group2_Panel
            # .-----------------------------------------.
            # | .-----------------.                    |
            # | |                 |                    |
            # | |  Range_Panel2   |                    |
            # | |                 |                    |
            # | |                 |                    |
            # | '-----------------'                    |
            # '-----------------------------------------'

            set Memory_Group2_Panel [ipgui::add_panel $IPINST -parent $Memory_Group2 -name Memory_Group2_Panel -layout horizontal]

                set Range_Panel2 [ipgui::add_panel $IPINST -parent $Memory_Group2_Panel -name Range_Panel2]

                    #---> Adding Params ---------------------------------------------------------------------------------------------------------------------#

                    set RANGE_AXI_BRAM_CTRL_LMB_SEG [ipgui::add_param $IPINST -parent $Range_Panel2 -name RANGE_AXI_BRAM_CTRL_LMB_SEG -layout horizontal -widget comboBox]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------------#
        set MB_Group1 [ipgui::add_group $IPINST -parent $Memory_Config -name "MicroBlaze Address Configuration" ]

            #  MB_Group1_Panel
            # .-----------------------------------------.
            # |                                         |
            # |                                         |
            # |                                         |
            # |                                         |
            # |                                         |
            # |                                         |
            # '-----------------------------------------'

            set MB_Group1_Panel [ipgui::add_panel $IPINST -parent $MB_Group1 -name MB_Group1_Panel -layout horizontal]

                set MB_BASE_VECTORS [ipgui::add_param $IPINST -parent $MB_Group1_Panel -name MB_BASE_VECTORS -layout horizontal -widget textBox]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------------#
        set ERT_Base_Group1 [ipgui::add_group $IPINST -parent $Memory_Config -name "ERT Subsystem Base Address" ]

            #  MB_Group1_Panel
            # .-----------------------------------------.
            # |                                         |
            # |                                         |
            # |                                         |
            # |                                         |
            # |                                         |
            # |                                         |
            # '-----------------------------------------'

            set ERT_MGMT_Base_Group1_Panel [ipgui::add_panel $IPINST -parent $ERT_Base_Group1 -name ERT_MGMT_Base_Group1_Panel -layout horizontal]

                set ERT_MGMT_PF_BASE_ADDR [ipgui::add_param $IPINST -parent $ERT_MGMT_Base_Group1_Panel -name ERT_MGMT_PF_BASE_ADDR -layout horizontal -widget textBox]

            set ERT_USER_Base_Group1_Panel [ipgui::add_panel $IPINST -parent $ERT_Base_Group1 -name ERT_USER_Base_Group1_Panel -layout horizontal]

                set ERT_USER_PF_BASE_ADDR [ipgui::add_param $IPINST -parent $ERT_USER_Base_Group1_Panel -name ERT_USER_PF_BASE_ADDR -layout horizontal -widget textBox]


}

#==========================================================================================================================================#
# Parameter Update Procedures
#==========================================================================================================================================#

proc update_PARAM_VALUE.VERSION.MAJOR_VERSION { PARAM_VALUE.VERSION.MAJOR_VERSION PROJECT_PARAM.DEVICE IPINST } {

    set version [get_property VERSION [current_ipcomp]]
    regexp {^(\d+)\.(\d+)$} $version -> major minor
    set_property value $major ${PARAM_VALUE.VERSION.MAJOR_VERSION}

    # Parameter not user configurable, disabled
    set_property enabled false ${PARAM_VALUE.VERSION.MAJOR_VERSION}

}

proc update_PARAM_VALUE.VERSION.MINOR_VERSION { PARAM_VALUE.VERSION.MINOR_VERSION PROJECT_PARAM.DEVICE IPINST } {

    set version [get_property VERSION [current_ipcomp]]
    regexp {^(\d+)\.(\d+)$} $version -> major minor
    set_property value $minor ${PARAM_VALUE.VERSION.MINOR_VERSION}

    # Parameter not user configurable, disabled
    set_property enabled false ${PARAM_VALUE.VERSION.MINOR_VERSION}

}

proc update_PARAM_VALUE.VERSION.CORE_REVISION { PARAM_VALUE.VERSION.CORE_REVISION PROJECT_PARAM.DEVICE IPINST } {

    set revision [get_property CORE_REVISION [current_ipcomp]]
    set_property value $revision ${PARAM_VALUE.VERSION.CORE_REVISION}

    # Parameter not user configurable, disabled
    set_property enabled false ${PARAM_VALUE.VERSION.CORE_REVISION}

}

proc update_PARAM_VALUE.VERSION.PATCH_REVISION { PARAM_VALUE.VERSION.PATCH_REVISION PROJECT_PARAM.DEVICE IPINST } {

    # Parameter not user configurable, disabled
    set_property enabled false ${PARAM_VALUE.VERSION.PATCH_REVISION}

}

# for ipgui documentation refer to http://confluence.xilinx.com/display/XSW/XGUI+2.0+IPGUI+Developer+Reference+Manual
