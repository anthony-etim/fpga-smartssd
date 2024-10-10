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

        #---> Adding Params ------------------------------------------------------------------------------------------------------------#

        set HAS_HBM_CLK [ipgui::add_param $IPINST -parent $General_Config -name HAS_HBM_CLK -layout horizontal -widget comboBox]
        set_property display_name "Include HBM Clock" [ipgui::get_guiparamspec HAS_HBM_CLK -of $IPINST]

        set EDGE_ALIGNED_DIVIDED_KERNEL_CLOCK_DIVIDE_VALUE [ipgui::add_param $IPINST -parent $General_Config -name EDGE_ALIGNED_DIVIDED_KERNEL_CLOCK_DIVIDE_VALUE -layout horizontal -widget comboBox]
        set_property display_name "Select Edge Aligned Divided Kernel Clock Divide Value" [ipgui::get_guiparamspec EDGE_ALIGNED_DIVIDED_KERNEL_CLOCK_DIVIDE_VALUE -of $IPINST]

        set EDGE_ALIGNED_DIVIDED_KERNEL2_CLOCK_DIVIDE_VALUE [ipgui::add_param $IPINST -parent $General_Config -name EDGE_ALIGNED_DIVIDED_KERNEL2_CLOCK_DIVIDE_VALUE -layout horizontal -widget comboBox]
        set_property display_name "Select Edge Aligned Divided Kernel2 Clock Divide Value" [ipgui::get_guiparamspec EDGE_ALIGNED_DIVIDED_KERNEL2_CLOCK_DIVIDE_VALUE -of $IPINST]

        set ENABLE_KERNEL_CONT_CLOCK [ipgui::add_param $IPINST -parent $General_Config -name ENABLE_KERNEL_CONT_CLOCK -layout horizontal -widget checkBox]
        set_property display_name "Enable Kernel Continuous Clock" [ipgui::get_guiparamspec ENABLE_KERNEL_CONT_CLOCK -of $IPINST]

        set ENABLE_KERNEL2_CONT_CLOCK [ipgui::add_param $IPINST -parent $General_Config -name ENABLE_KERNEL2_CONT_CLOCK -layout horizontal -widget checkBox]
        set_property display_name "Enable Kernel2 Continuous Clock" [ipgui::get_guiparamspec ENABLE_KERNEL2_CONT_CLOCK -of $IPINST]

        set NUM_SLR [ipgui::add_param $IPINST -parent $General_Config -name NUM_SLR -layout horizontal -widget textBox]
        set_property display_name "Configure number of SLRs for reset fanout" [ipgui::get_guiparamspec NUM_SLR -of $IPINST]

        set FREQ_CNT_REF_CLK_HZ [ipgui::add_param $IPINST -parent $General_Config -name FREQ_CNT_REF_CLK_HZ -layout horizontal -widget textBox]
        set_property display_name "Frequency Counter Reference Clock (Hz)" [ipgui::get_guiparamspec FREQ_CNT_REF_CLK_HZ -of $IPINST]

        set CLK_DOMAIN_CLK_KERNEL [ipgui::add_param $IPINST -parent $General_Config -name CLK_DOMAIN_CLK_KERNEL -layout horizontal -widget textBox]
        set_property display_name "clk_kernel clock domain" [ipgui::get_guiparamspec CLK_DOMAIN_CLK_KERNEL -of $IPINST]

        set CLK_DOMAIN_CLK_KERNEL_2 [ipgui::add_param $IPINST -parent $General_Config -name CLK_DOMAIN_CLK_KERNEL_2 -layout horizontal -widget textBox]
        set_property display_name "clk_kernel2 clock domain" [ipgui::get_guiparamspec CLK_DOMAIN_CLK_KERNEL_2 -of $IPINST]

        set CLK_DOMAIN_CLK_HBM [ipgui::add_param $IPINST -parent $General_Config -name CLK_DOMAIN_CLK_HBM -layout horizontal -widget textBox]
        set_property display_name "clk_hbm clock domain" [ipgui::get_guiparamspec CLK_DOMAIN_CLK_HBM -of $IPINST]

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
