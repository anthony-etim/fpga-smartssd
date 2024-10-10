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

    #---> Adding Page ---------------------------------------------------------------------------------------------------------------------#

    set General_Config [ipgui::add_page $IPINST -name "General Config"]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------#

        set Partition_Name [ipgui::add_group $IPINST -parent $General_Config -name "Partition Type" ]

            #---> Adding Params -----------------------------------------------------------------------------------------------------------#

            set PARTITION_NAME [ipgui::add_param $IPINST -parent $Partition_Name -name PARTITION_NAME -layout horizontal -widget comboBox]
            set_property display_name "Partition Name" [ipgui::get_guiparamspec PARTITION_NAME -of $IPINST]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------#

        set General_Group [ipgui::add_group $IPINST -parent $General_Config -name "Enable Peripherals" ]

            #---> Adding Params -----------------------------------------------------------------------------------------------------------#

            set HAS_JTAG_AXI_MASTER [ipgui::add_param $IPINST -parent $General_Group -name HAS_JTAG_AXI_MASTER -layout horizontal -widget checkBox]
            set_property display_name "Enable JTAG AXI Master" [ipgui::get_guiparamspec HAS_JTAG_AXI_MASTER -of $IPINST]

            set HAS_USER_DEBUG [ipgui::add_param $IPINST -parent $General_Group -name HAS_USER_DEBUG -layout horizontal -widget checkBox]
            set_property display_name "Enable User Debug Bridge" [ipgui::get_guiparamspec HAS_USER_DEBUG -of $IPINST]

            set HAS_UUID_ROM [ipgui::add_param $IPINST -parent $General_Group -name HAS_UUID_ROM -layout horizontal -widget checkBox]
            set_property display_name "Enable UUID ROM Peripheral" [ipgui::get_guiparamspec HAS_UUID_ROM -of $IPINST]

            set HAS_AXI_HWICAP [ipgui::add_param $IPINST -parent $General_Group -name HAS_AXI_HWICAP -layout horizontal -widget checkBox]
            set_property display_name "Enable HW ICAP Peripheral" [ipgui::get_guiparamspec HAS_AXI_HWICAP -of $IPINST]

            set HAS_MGMT_DEBUG [ipgui::add_param $IPINST -parent $General_Group -name HAS_MGMT_DEBUG -layout horizontal -widget checkBox]
            set_property display_name "Enable Management Debug Bridge" [ipgui::get_guiparamspec HAS_MGMT_DEBUG -of $IPINST]

            #  General_Group_Panel
            # .-----------------------------------------.
            # | .-----------------. .-----------------. |
            # | |                 | |                 | |
            # | |  Feature_Panel  | |  Config_Panel   | |
            # | |                 | |                 | |
            # | |                 | |                 | |
            # | '-----------------' '-----------------' |
            # '-----------------------------------------'

            set General_Group_Panel [ipgui::add_panel $IPINST -parent $General_Group -name General_Group_Panel -layout horizontal]

                set Feature_Panel [ipgui::add_panel $IPINST -parent $General_Group_Panel -name Feature_Panel]

                    set HAS_MEMORY_CALIB_STATUS [ipgui::add_param $IPINST -parent $Feature_Panel -name HAS_MEMORY_CALIB_STATUS -layout horizontal -widget checkBox]
                    set_property display_name "Enable DDR Calibration Status GPIO" [ipgui::get_guiparamspec HAS_MEMORY_CALIB_STATUS -of $IPINST]

                    set NUM_MEMORY_CALIB [ipgui::add_param $IPINST -name NUM_MEMORY_CALIB -parent $Feature_Panel -layout horizontal]
                    set_property display_name "Num DDR calibration bits" [ipgui::get_guiparamspec NUM_MEMORY_CALIB -of $IPINST]

                    set NUM_MB_DEBUG_PORTS [ipgui::add_param $IPINST -name NUM_MB_DEBUG_PORTS -parent $Feature_Panel -layout horizontal]
                    set_property display_name "Num MDM MB debug Ports" [ipgui::get_guiparamspec NUM_MB_DEBUG_PORTS -of $IPINST]

                set Config_Panel [ipgui::add_panel $IPINST -parent $General_Group_Panel -name Config_Panel]

    #---> Adding Page ---------------------------------------------------------------------------------------------------------------------#

    set SLR_Crossing_Config [ipgui::add_page $IPINST -name "SLR Crossing Config"]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------#

        set Regslice_Group [ipgui::add_group $IPINST -parent $SLR_Crossing_Config -name "SLR Crossing Regslice Options" ]

            #---> Adding Params -----------------------------------------------------------------------------------------------------------#

            set REGSLICE_USER_DEBUG_BRIDGE [ipgui::add_param $IPINST -parent $Regslice_Group -name REGSLICE_USER_DEBUG_BRIDGE -layout horizontal -widget comboBox]
            set_property display_name "User Debug Bridge" [ ipgui::get_guiparamspec REGSLICE_USER_DEBUG_BRIDGE -of $IPINST ]

            set REGSLICE_UUID_ROM [ipgui::add_param $IPINST -parent $Regslice_Group -name REGSLICE_UUID_ROM -layout horizontal -widget comboBox]
            set_property display_name "UUID ROM Peripheral" [ ipgui::get_guiparamspec REGSLICE_UUID_ROM -of $IPINST ]

            set REGSLICE_MEMORY_CALIB_STATUS [ipgui::add_param $IPINST -parent $Regslice_Group -name REGSLICE_MEMORY_CALIB_STATUS -layout horizontal -widget comboBox]
            set_property display_name "DDR Calibration Status GPIO" [ ipgui::get_guiparamspec REGSLICE_MEMORY_CALIB_STATUS -of $IPINST ]

            set REGSLICE_AXI_HWICAP [ipgui::add_param $IPINST -parent $Regslice_Group -name REGSLICE_AXI_HWICAP -layout horizontal -widget comboBox]
            set_property display_name "AXI HW ICAP Peripheral" [ ipgui::get_guiparamspec REGSLICE_AXI_HWICAP -of $IPINST ]

            set REGSLICE_MGMT_DEBUG [ipgui::add_param $IPINST -parent $Regslice_Group -name REGSLICE_MGMT_DEBUG -layout horizontal -widget comboBox]
            set_property display_name "Management Debug Bridge" [ ipgui::get_guiparamspec REGSLICE_MGMT_DEBUG -of $IPINST ]

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
