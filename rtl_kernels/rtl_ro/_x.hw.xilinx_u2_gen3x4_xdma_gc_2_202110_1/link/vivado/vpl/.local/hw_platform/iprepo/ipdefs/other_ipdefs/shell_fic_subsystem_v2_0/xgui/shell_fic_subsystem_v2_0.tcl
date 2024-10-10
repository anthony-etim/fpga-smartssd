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

    #---> Adding Page ----------------------------------------------------------------------------------------------------------------------#

    set General_Config [ipgui::add_page $IPINST -name "General Config"]

        #---> Adding Group -----------------------------------------------------------------------------------------------------------------#

        set General_Config_Group [ipgui::add_group $IPINST -parent $General_Config -name "General Config"]

            #---> Adding Params ------------------------------------------------------------------------------------------------------------#


            set ENABLE_M2M [ipgui::add_param $IPINST -parent $General_Config_Group -name ENABLE_M2M -layout horizontal -widget checkBox]
            set_property display_name "Enable M2M AXI interface" [ipgui::get_guiparamspec ENABLE_M2M -of $IPINST]

            set ENABLE_P2P [ipgui::add_param $IPINST -parent $General_Config_Group -name ENABLE_P2P -layout horizontal -widget checkBox]
            set_property display_name "Enable P2P AXI interface" [ipgui::get_guiparamspec ENABLE_P2P -of $IPINST]

            set NUM_SLR [ipgui::add_param $IPINST -name NUM_SLR -parent $General_Config_Group -layout horizontal]
            set_property display_name "Configure number of SLRs" [ipgui::get_guiparamspec NUM_SLR -of $IPINST]

            set NUM_ISOLATED_STREAM [ipgui::add_param $IPINST -name NUM_ISOLATED_STREAM -parent $General_Config_Group -layout horizontal]
            set_property display_name "Configure number of isolated stream interfaces" [ipgui::get_guiparamspec NUM_ISOLATED_STREAM -of $IPINST]

            set PCIE_LINK_CAP_MAX [ipgui::add_param $IPINST -name PCIE_LINK_CAP_MAX -parent $General_Config_Group -layout horizontal -widget comboBox]
            set_property display_name "Select Max PCIe Link Capacity" [ipgui::get_guiparamspec PCIE_LINK_CAP_MAX -of $IPINST]

    #---> Adding Page ----------------------------------------------------------------------------------------------------------------------#

    set Regslice_Config [ipgui::add_page $IPINST -name "Regslice Config"]

        #---> Adding Group -----------------------------------------------------------------------------------------------------------------#

        set Isolation_Ctrl_Regslice_Group [ipgui::add_group $IPINST -parent $Regslice_Config -name "Isolation Control Regslice Config"]

            set SLR_DIST_ISOLATED_CTRL_0 [ipgui::add_param $IPINST -name SLR_DIST_ISOLATED_CTRL_0 -parent $Isolation_Ctrl_Regslice_Group -layout horizontal]
            set_property display_name "SLR Distance of Isolation Control 0" [ipgui::get_guiparamspec SLR_DIST_ISOLATED_CTRL_0 -of $IPINST]

            set SLR_DIST_ISOLATED_CTRL_1 [ipgui::add_param $IPINST -name SLR_DIST_ISOLATED_CTRL_1 -parent $Isolation_Ctrl_Regslice_Group -layout horizontal]
            set_property display_name "SLR Distance of Isolation Control 1" [ipgui::get_guiparamspec SLR_DIST_ISOLATED_CTRL_1 -of $IPINST]

            set SLR_DIST_ISOLATED_CTRL_2 [ipgui::add_param $IPINST -name SLR_DIST_ISOLATED_CTRL_2 -parent $Isolation_Ctrl_Regslice_Group -layout horizontal]
            set_property display_name "SLR Distance of Isolation Control 2" [ipgui::get_guiparamspec SLR_DIST_ISOLATED_CTRL_2 -of $IPINST]

            set SLR_DIST_ISOLATED_CTRL_3 [ipgui::add_param $IPINST -name SLR_DIST_ISOLATED_CTRL_3 -parent $Isolation_Ctrl_Regslice_Group -layout horizontal]
            set_property display_name "SLR Distance of Isolation Control 3" [ipgui::get_guiparamspec SLR_DIST_ISOLATED_CTRL_3 -of $IPINST]

            set SLR_DIST_ISOLATED_CTRL_USER_DBG [ipgui::add_param $IPINST -name SLR_DIST_ISOLATED_CTRL_USER_DBG -parent $Isolation_Ctrl_Regslice_Group -layout horizontal]
            set_property display_name "SLR Distance of Isolation Control User Debug" [ipgui::get_guiparamspec SLR_DIST_ISOLATED_CTRL_USER_DBG -of $IPINST]

        #---> Adding Group -----------------------------------------------------------------------------------------------------------------#

        set Isolation_Data_Regslice_Group [ipgui::add_group $IPINST -parent $Regslice_Config -name "Isolation Memory Regslice Config"]

            #---> Adding Params ------------------------------------------------------------------------------------------------------------#

            set SLR_DIST_DATA_DMA [ipgui::add_param $IPINST -name SLR_DIST_DATA_DMA -parent $Isolation_Data_Regslice_Group -layout horizontal]
            set_property display_name "SLR Distance of DMA Datapath" [ipgui::get_guiparamspec SLR_DIST_DATA_DMA -of $IPINST]

            set SLR_DIST_DATA_M2M [ipgui::add_param $IPINST -name SLR_DIST_DATA_M2M -parent $Isolation_Data_Regslice_Group -layout horizontal]
            set_property display_name "SLR Distance of M2M Datapath" [ipgui::get_guiparamspec SLR_DIST_DATA_M2M -of $IPINST]

            set SLR_DIST_DATA_P2P [ipgui::add_param $IPINST -name SLR_DIST_DATA_P2P -parent $Isolation_Data_Regslice_Group -layout horizontal]
            set_property display_name "SLR Distance of P2P Datapath" [ipgui::get_guiparamspec SLR_DIST_DATA_P2P -of $IPINST]

        #---> Adding Group -----------------------------------------------------------------------------------------------------------------#

        set Isolation_Stream_Regslice_Group [ipgui::add_group $IPINST -parent $Regslice_Config -name "Isolation Stream Regslice Config"]

            #---> Adding Params ------------------------------------------------------------------------------------------------------------#

            set SLR_DIST_ISOLATED_STREAM_0 [ipgui::add_param $IPINST -name SLR_DIST_ISOLATED_STREAM_0 -parent $Isolation_Stream_Regslice_Group -layout horizontal]
            set_property display_name "SLR Distance of Isolated Stream Interface 0" [ipgui::get_guiparamspec SLR_DIST_ISOLATED_STREAM_0 -of $IPINST]

            set SLR_DIST_ISOLATED_STREAM_1 [ipgui::add_param $IPINST -name SLR_DIST_ISOLATED_STREAM_1 -parent $Isolation_Stream_Regslice_Group -layout horizontal]
            set_property display_name "SLR Distance of Isolated Stream Interface 1" [ipgui::get_guiparamspec SLR_DIST_ISOLATED_STREAM_1 -of $IPINST]

            set SLR_DIST_ISOLATED_STREAM_2 [ipgui::add_param $IPINST -name SLR_DIST_ISOLATED_STREAM_2 -parent $Isolation_Stream_Regslice_Group -layout horizontal]
            set_property display_name "SLR Distance of Isolated Stream Interface 2" [ipgui::get_guiparamspec SLR_DIST_ISOLATED_STREAM_2 -of $IPINST]

            set SLR_DIST_ISOLATED_STREAM_3 [ipgui::add_param $IPINST -name SLR_DIST_ISOLATED_STREAM_3 -parent $Isolation_Stream_Regslice_Group -layout horizontal]
            set_property display_name "SLR Distance of Isolated Stream Interface 3" [ipgui::get_guiparamspec SLR_DIST_ISOLATED_STREAM_3 -of $IPINST]

    #---> Adding Page ----------------------------------------------------------------------------------------------------------------------#

    set Addressing_Config [ipgui::add_page $IPINST -name "Addressing Config"]

        #---> Adding Group -----------------------------------------------------------------------------------------------------------------#

        set Addressing_Group2 [ipgui::add_group $IPINST -parent $Addressing_Config -name "S_AXI_CTRL_MGMT segments"]

            #  Addressing_Group2_Panel
            # .-----------------------------------------.
            # | .-----------------. .-----------------. |
            # | |                 | |                 | |
            # | |  Offset_Panel2  | |  Range_Panel2   | |
            # | |                 | |                 | |
            # | |                 | |                 | |
            # | '-----------------' '-----------------' |
            # '-----------------------------------------'

            #---> Adding Panel -------------------------------------------------------------------------------------------------------------#

            set Addressing_Group2_Panel [ipgui::add_panel $IPINST -parent $Addressing_Group2 -name Addressing_Group2_Panel -layout horizontal]

                #---> Adding Panel ---------------------------------------------------------------------------------------------------------#

                set Offset_Panel2 [ipgui::add_panel $IPINST -parent $Addressing_Group2_Panel -name Offset_Panel2]

                    #---> Adding Params ----------------------------------------------------------------------------------------------------#

                    set OFFSET_M_AXI_CTRL_MGMT_0_SEG [ipgui::add_param $IPINST -parent $Offset_Panel2 -name OFFSET_M_AXI_CTRL_MGMT_0_SEG -layout horizontal -widget hexEdit]
                    set OFFSET_M_AXI_CTRL_MGMT_1_SEG [ipgui::add_param $IPINST -parent $Offset_Panel2 -name OFFSET_M_AXI_CTRL_MGMT_1_SEG -layout horizontal -widget hexEdit]
                    set OFFSET_M_AXI_CTRL_MGMT_2_SEG [ipgui::add_param $IPINST -parent $Offset_Panel2 -name OFFSET_M_AXI_CTRL_MGMT_2_SEG -layout horizontal -widget hexEdit]
                    set OFFSET_M_AXI_CTRL_MGMT_3_SEG [ipgui::add_param $IPINST -parent $Offset_Panel2 -name OFFSET_M_AXI_CTRL_MGMT_3_SEG -layout horizontal -widget hexEdit]

                #---> Adding Panel ---------------------------------------------------------------------------------------------------------#

                set Range_Panel2 [ipgui::add_panel $IPINST -parent $Addressing_Group2_Panel -name Range_Panel2]

                    #---> Adding Params ----------------------------------------------------------------------------------------------------#

                    set RANGE_M_AXI_CTRL_MGMT_0_SEG [ipgui::add_param $IPINST -parent $Range_Panel2 -name RANGE_M_AXI_CTRL_MGMT_0_SEG -layout horizontal -widget comboBox]
                    set RANGE_M_AXI_CTRL_MGMT_1_SEG [ipgui::add_param $IPINST -parent $Range_Panel2 -name RANGE_M_AXI_CTRL_MGMT_1_SEG -layout horizontal -widget comboBox]
                    set RANGE_M_AXI_CTRL_MGMT_2_SEG [ipgui::add_param $IPINST -parent $Range_Panel2 -name RANGE_M_AXI_CTRL_MGMT_2_SEG -layout horizontal -widget comboBox]
                    set RANGE_M_AXI_CTRL_MGMT_3_SEG [ipgui::add_param $IPINST -parent $Range_Panel2 -name RANGE_M_AXI_CTRL_MGMT_3_SEG -layout horizontal -widget comboBox]

        #---> Adding Group -----------------------------------------------------------------------------------------------------------------#

        set Addressing_Group3 [ipgui::add_group $IPINST -parent $Addressing_Config -name "S_AXI_CTRL_USER segments"]

            #  Addressing_Group3_Panel
            # .-----------------------------------------.
            # | .-----------------. .-----------------. |
            # | |                 | |                 | |
            # | |  Offset_Panel3  | |  Range_Panel3   | |
            # | |                 | |                 | |
            # | |                 | |                 | |
            # | '-----------------' '-----------------' |
            # '-----------------------------------------'

            #---> Adding Panel -------------------------------------------------------------------------------------------------------------#

            set Addressing_Group3_Panel [ipgui::add_panel $IPINST -parent $Addressing_Group3 -name Addressing_Group3_Panel -layout horizontal]

                #---> Adding Panel ---------------------------------------------------------------------------------------------------------#

                set Offset_Panel3 [ipgui::add_panel $IPINST -parent $Addressing_Group3_Panel -name Offset_Panel3]

                    #---> Adding Params ----------------------------------------------------------------------------------------------------#

                    set OFFSET_M_AXI_CTRL_USER_0_SEG   [ipgui::add_param $IPINST -parent $Offset_Panel3 -name OFFSET_M_AXI_CTRL_USER_0_SEG   -layout horizontal -widget hexEdit]
                    set OFFSET_M_AXI_CTRL_USER_1_SEG   [ipgui::add_param $IPINST -parent $Offset_Panel3 -name OFFSET_M_AXI_CTRL_USER_1_SEG   -layout horizontal -widget hexEdit]
                    set OFFSET_M_AXI_CTRL_USER_2_SEG   [ipgui::add_param $IPINST -parent $Offset_Panel3 -name OFFSET_M_AXI_CTRL_USER_2_SEG   -layout horizontal -widget hexEdit]
                    set OFFSET_M_AXI_CTRL_USER_3_SEG   [ipgui::add_param $IPINST -parent $Offset_Panel3 -name OFFSET_M_AXI_CTRL_USER_3_SEG   -layout horizontal -widget hexEdit]
                    set OFFSET_M_AXI_CTRL_USER_DBG_SEG [ipgui::add_param $IPINST -parent $Offset_Panel3 -name OFFSET_M_AXI_CTRL_USER_DBG_SEG -layout horizontal -widget hexEdit]

                #---> Adding Panel ---------------------------------------------------------------------------------------------------------#

                set Range_Panel3 [ipgui::add_panel $IPINST -parent $Addressing_Group3_Panel -name Range_Panel3]

                    #---> Adding Params ----------------------------------------------------------------------------------------------------#

                    set RANGE_M_AXI_CTRL_USER_0_SEG   [ipgui::add_param $IPINST -parent $Range_Panel3 -name RANGE_M_AXI_CTRL_USER_0_SEG   -layout horizontal -widget comboBox]
                    set RANGE_M_AXI_CTRL_USER_1_SEG   [ipgui::add_param $IPINST -parent $Range_Panel3 -name RANGE_M_AXI_CTRL_USER_1_SEG   -layout horizontal -widget comboBox]
                    set RANGE_M_AXI_CTRL_USER_2_SEG   [ipgui::add_param $IPINST -parent $Range_Panel3 -name RANGE_M_AXI_CTRL_USER_2_SEG   -layout horizontal -widget comboBox]
                    set RANGE_M_AXI_CTRL_USER_3_SEG   [ipgui::add_param $IPINST -parent $Range_Panel3 -name RANGE_M_AXI_CTRL_USER_3_SEG   -layout horizontal -widget comboBox]
                    set RANGE_M_AXI_CTRL_USER_DBG_SEG [ipgui::add_param $IPINST -parent $Range_Panel3 -name RANGE_M_AXI_CTRL_USER_DBG_SEG -layout horizontal -widget comboBox]

        #---> Adding Group -----------------------------------------------------------------------------------------------------------------#

        set Addressing_Group4 [ipgui::add_group $IPINST -parent $Addressing_Config -name "S_AXI_DATA segments"]

            #  Addressing_Group4_Panel
            # .-----------------------------------------.
            # | .-----------------. .-----------------. |
            # | |                 | |                 | |
            # | |  Offset_Panel4  | |  Range_Panel4   | |
            # | |                 | |                 | |
            # | |                 | |                 | |
            # | '-----------------' '-----------------' |
            # '-----------------------------------------'

            #---> Adding Panel -------------------------------------------------------------------------------------------------------------#

            set Addressing_Group4_Panel [ipgui::add_panel $IPINST -parent $Addressing_Group4 -name Addressing_Group4_Panel -layout horizontal]

                #---> Adding Panel ---------------------------------------------------------------------------------------------------------#

                set Offset_Panel4 [ipgui::add_panel $IPINST -parent $Addressing_Group4_Panel -name Offset_Panel4]

                    #---> Adding Params ----------------------------------------------------------------------------------------------------#

                    set OFFSET_M_AXI_DATA_DMA_SEG       [ipgui::add_param $IPINST -parent $Offset_Panel4 -name OFFSET_M_AXI_DATA_DMA_SEG      -layout horizontal -widget hexEdit]
                    set OFFSET_M_AXI_DATA_M2M_SEG       [ipgui::add_param $IPINST -parent $Offset_Panel4 -name OFFSET_M_AXI_DATA_M2M_SEG      -layout horizontal -widget hexEdit]
                    set OFFSET_M_AXI_DATA_P2P_SEG       [ipgui::add_param $IPINST -parent $Offset_Panel4 -name OFFSET_M_AXI_DATA_P2P_SEG      -layout horizontal -widget hexEdit]

                #---> Adding Panel ---------------------------------------------------------------------------------------------------------#

                set Range_Panel4 [ipgui::add_panel $IPINST -parent $Addressing_Group4_Panel -name Range_Panel4]

                    #---> Adding Params ----------------------------------------------------------------------------------------------------#

                    set RANGE_M_AXI_DATA_DMA_SEG        [ipgui::add_param $IPINST -parent $Range_Panel4 -name RANGE_M_AXI_DATA_DMA_SEG        -layout horizontal -widget comboBox]
                    set RANGE_M_AXI_DATA_M2M_SEG        [ipgui::add_param $IPINST -parent $Range_Panel4 -name RANGE_M_AXI_DATA_M2M_SEG        -layout horizontal -widget comboBox]
                    set RANGE_M_AXI_DATA_P2P_SEG        [ipgui::add_param $IPINST -parent $Range_Panel4 -name RANGE_M_AXI_DATA_P2P_SEG        -layout horizontal -widget comboBox]

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
