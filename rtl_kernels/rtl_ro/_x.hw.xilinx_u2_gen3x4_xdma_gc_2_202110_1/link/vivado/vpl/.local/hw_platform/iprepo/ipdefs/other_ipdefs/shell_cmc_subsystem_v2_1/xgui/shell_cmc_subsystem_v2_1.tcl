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

    set General_Config [ipgui::add_page $IPINST -name "General_Config"]

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------#

        set Peripheral_Group [ipgui::add_group $IPINST -parent $General_Config -name "CMC Peripherals" ]

            #---> Adding Params -----------------------------------------------------------------------------------------------------------#

            set HAS_AXI_IIC                 [ipgui::add_param $IPINST -name HAS_AXI_IIC               -parent $Peripheral_Group]
            set HAS_QSFP_GPIO               [ipgui::add_param $IPINST -name HAS_QSFP_GPIO             -parent $Peripheral_Group]
            set HAS_USB_UART                [ipgui::add_param $IPINST -name HAS_USB_UART              -parent $Peripheral_Group]
            set HAS_EXTERNAL_M_AXILITE      [ipgui::add_param $IPINST -name HAS_EXTERNAL_M_AXILITE    -parent $Peripheral_Group]

            #---> End Params --------------------------------------------------------------------------------------------------------------#

        #---> End Group -------------------------------------------------------------------------------------------------------------------#

        #---> Adding Group ----------------------------------------------------------------------------------------------------------------#

        set Optimization_Group [ipgui::add_group $IPINST -parent $General_Config -name "Optimization Options" ]

            #---> Adding Params -----------------------------------------------------------------------------------------------------------#

            set ENABLE_AXI_IC_PIPELINING    [ipgui::add_param $IPINST -name ENABLE_AXI_IC_PIPELINING  -parent $Optimization_Group]

            #---> End Params --------------------------------------------------------------------------------------------------------------#

        #---> End Group -------------------------------------------------------------------------------------------------------------------#

    #---> End Page ------------------------------------------------------------------------------------------------------------------------#

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
