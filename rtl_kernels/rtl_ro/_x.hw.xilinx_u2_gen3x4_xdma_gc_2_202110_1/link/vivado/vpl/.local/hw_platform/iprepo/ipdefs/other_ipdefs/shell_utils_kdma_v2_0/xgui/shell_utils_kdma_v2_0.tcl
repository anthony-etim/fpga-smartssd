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

# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  
  ipgui::add_param $IPINST -name "Component_Name"

    #---> Adding Page ---------------------------------------------------------------------------------------------------------------------#

    set M_AXI_GMEM_CONFIG [ipgui::add_page $IPINST -name "M_AXI_GMEM Interface Config"]
    
        #---> Adding Params ---------------------------------------------------------------------------------------------------------------#

        set C_M_AXI_GMEM_ADDR_WIDTH [ipgui::add_param $IPINST -name C_M_AXI_GMEM_ADDR_WIDTH -parent $M_AXI_GMEM_CONFIG -layout horizontal]
        set_property display_name "M_AXI_GMEM Address Width" [ipgui::get_guiparamspec C_M_AXI_GMEM_ADDR_WIDTH -of $IPINST]     
        
        set C_M_AXI_GMEM_DATA_WIDTH [ipgui::add_param $IPINST -name C_M_AXI_GMEM_DATA_WIDTH -parent $M_AXI_GMEM_CONFIG -widget comboBox]
        set_property display_name "M_AXI_GMEM Data Width" [ipgui::get_guiparamspec C_M_AXI_GMEM_DATA_WIDTH -of $IPINST]
        
        set C_M_AXI_GMEM_ID_WIDTH [ipgui::add_param $IPINST -name C_M_AXI_GMEM_ID_WIDTH -parent $M_AXI_GMEM_CONFIG -layout horizontal]
        set_property display_name "M_AXI_GMEM ID Width" [ipgui::get_guiparamspec C_M_AXI_GMEM_ID_WIDTH -of $IPINST]
        
        set C_M_AXI_GMEM_AWUSER_WIDTH [ipgui::add_param $IPINST -name C_M_AXI_GMEM_AWUSER_WIDTH -parent $M_AXI_GMEM_CONFIG -layout horizontal]
        set_property display_name "M_AXI_GMEM AWUSER Width" [ipgui::get_guiparamspec C_M_AXI_GMEM_AWUSER_WIDTH -of $IPINST]
        
        set C_M_AXI_GMEM_WUSER_WIDTH [ipgui::add_param $IPINST -name C_M_AXI_GMEM_WUSER_WIDTH -parent $M_AXI_GMEM_CONFIG -layout horizontal]
        set_property display_name "M_AXI_GMEM WUSER Width" [ipgui::get_guiparamspec C_M_AXI_GMEM_WUSER_WIDTH -of $IPINST]
        
        set C_M_AXI_GMEM_ARUSER_WIDTH [ipgui::add_param $IPINST -name C_M_AXI_GMEM_ARUSER_WIDTH -parent $M_AXI_GMEM_CONFIG -layout horizontal]
        set_property display_name "M_AXI_GMEM ARUSER Width" [ipgui::get_guiparamspec C_M_AXI_GMEM_ARUSER_WIDTH -of $IPINST]
        
        set C_M_AXI_GMEM_RUSER_WIDTH [ipgui::add_param $IPINST -name C_M_AXI_GMEM_RUSER_WIDTH -parent $M_AXI_GMEM_CONFIG -layout horizontal]
        set_property display_name "M_AXI_GMEM RUSER Width" [ipgui::get_guiparamspec C_M_AXI_GMEM_RUSER_WIDTH -of $IPINST]
        
        set C_M_AXI_GMEM_BUSER_WIDTH [ipgui::add_param $IPINST -name C_M_AXI_GMEM_BUSER_WIDTH -parent $M_AXI_GMEM_CONFIG -layout horizontal]
        set_property display_name "M_AXI_GMEM BUSER Width" [ipgui::get_guiparamspec C_M_AXI_GMEM_BUSER_WIDTH -of $IPINST]
        
        set C_M_AXI_GMEM_USER_VALUE [ipgui::add_param $IPINST -name C_M_AXI_GMEM_USER_VALUE -parent $M_AXI_GMEM_CONFIG -layout horizontal]
        set_property display_name "M_AXI_GMEM USER Value" [ipgui::get_guiparamspec C_M_AXI_GMEM_USER_VALUE -of $IPINST]
        
        set C_M_AXI_GMEM_PROT_VALUE [ipgui::add_param $IPINST -name C_M_AXI_GMEM_PROT_VALUE -parent $M_AXI_GMEM_CONFIG -layout horizontal]
        set_property display_name "M_AXI_GMEM PROT Value" [ipgui::get_guiparamspec C_M_AXI_GMEM_PROT_VALUE -of $IPINST]
        
        set C_M_AXI_GMEM_CACHE_VALUE [ipgui::add_param $IPINST -name C_M_AXI_GMEM_CACHE_VALUE -parent $M_AXI_GMEM_CONFIG -layout horizontal]
        set_property display_name "M_AXI_GMEM CACHE Value" [ipgui::get_guiparamspec C_M_AXI_GMEM_CACHE_VALUE -of $IPINST]
        
    #---> Adding Page ---------------------------------------------------------------------------------------------------------------------#

    set S_AXI_CONTROL_CONFIG [ipgui::add_page $IPINST -name "S_AXI_CONTROL Interface Config"]
    
        #---> Adding Params ---------------------------------------------------------------------------------------------------------------#        
        
        set C_S_AXI_CONTROL_ADDR_WIDTH [ipgui::add_param $IPINST -name C_S_AXI_CONTROL_ADDR_WIDTH -parent $S_AXI_CONTROL_CONFIG -layout horizontal]
        set_property display_name "S_AXI_CONTROL Address Width" [ipgui::get_guiparamspec C_S_AXI_CONTROL_ADDR_WIDTH -of $IPINST]
        
        set C_S_AXI_CONTROL_DATA_WIDTH [ipgui::add_param $IPINST -name C_S_AXI_CONTROL_DATA_WIDTH -parent $S_AXI_CONTROL_CONFIG -layout horizontal]
        set_property display_name "S_AXI_CONTROL Data Width" [ipgui::get_guiparamspec C_S_AXI_CONTROL_DATA_WIDTH -of $IPINST]

}

proc update_PARAM_VALUE.C_M_AXI_GMEM_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_ADDR_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_ADDR_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_ADDR_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_DATA_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_DATA_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_DATA_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_ID_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_ID_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_ID_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_AWUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_AWUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_AWUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_WUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_WUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_WUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_ARUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_ARUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_ARUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_RUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_RUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_RUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_BUSER_WIDTH } {
	# Procedure called to update C_M_AXI_GMEM_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_BUSER_WIDTH { PARAM_VALUE.C_M_AXI_GMEM_BUSER_WIDTH } {
	# Procedure called to validate C_M_AXI_GMEM_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_USER_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_USER_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_USER_VALUE { PARAM_VALUE.C_M_AXI_GMEM_USER_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_USER_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_PROT_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_PROT_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_PROT_VALUE { PARAM_VALUE.C_M_AXI_GMEM_PROT_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_PROT_VALUE
	return true
}

proc update_PARAM_VALUE.C_M_AXI_GMEM_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_CACHE_VALUE } {
	# Procedure called to update C_M_AXI_GMEM_CACHE_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXI_GMEM_CACHE_VALUE { PARAM_VALUE.C_M_AXI_GMEM_CACHE_VALUE } {
	# Procedure called to validate C_M_AXI_GMEM_CACHE_VALUE
	return true
}

proc update_PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_CONTROL_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_CONTROL_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_CONTROL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH { PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_CONTROL_DATA_WIDTH
	return true
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_ADDR_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_ADDR_WIDTH PARAM_VALUE.C_M_AXI_GMEM_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_DATA_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_DATA_WIDTH PARAM_VALUE.C_M_AXI_GMEM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_ID_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_ID_WIDTH PARAM_VALUE.C_M_AXI_GMEM_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_ID_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_AWUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_AWUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_WUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_WUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_ARUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_ARUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_RUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_RUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_BUSER_WIDTH { MODELPARAM_VALUE.C_M_AXI_GMEM_BUSER_WIDTH PARAM_VALUE.C_M_AXI_GMEM_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_USER_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_USER_VALUE PARAM_VALUE.C_M_AXI_GMEM_USER_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_USER_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_USER_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_PROT_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_PROT_VALUE PARAM_VALUE.C_M_AXI_GMEM_PROT_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_PROT_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_PROT_VALUE}
}

proc update_MODELPARAM_VALUE.C_M_AXI_GMEM_CACHE_VALUE { MODELPARAM_VALUE.C_M_AXI_GMEM_CACHE_VALUE PARAM_VALUE.C_M_AXI_GMEM_CACHE_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXI_GMEM_CACHE_VALUE}] ${MODELPARAM_VALUE.C_M_AXI_GMEM_CACHE_VALUE}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_CONTROL_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_CONTROL_DATA_WIDTH}
}