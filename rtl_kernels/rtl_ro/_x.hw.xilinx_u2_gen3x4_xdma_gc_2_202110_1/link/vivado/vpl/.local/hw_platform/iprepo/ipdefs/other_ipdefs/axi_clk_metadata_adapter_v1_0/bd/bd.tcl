###############################################################################
##
## (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
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

source [::bd::get_vlnv_dir xilinx.com:ip:ifx_util:1.1]/bd/ifx_common_debug_util.tcl
source [::bd::get_vlnv_dir xilinx.com:ip:ifx_util:1.1]/bd/ifx_common_ipi_util.tcl
source [::bd::get_vlnv_dir xilinx.com:ip:axi_infrastructure:1.1]/bd/axi_common_propagator.tcl

proc init { cell_name undefined_params } {
#  set_property CONFIG.ASSOCIATED_BUSIF {S_AXI:M_AXI} [get_bd_pins $cell_name/ACLK]
#  set_property CONFIG.ASSOCIATED_RESET {ARESETN} [get_bd_pins $cell_name/ACLK]
  set_property BRIDGES {M_AXI} [get_bd_intf_pins $cell_name/S_AXI]
  set_property CONFIG.TYPE INTERCONNECT [get_bd_pins $cell_name/S_AXI_ARESETN]
  set_property CONFIG.TYPE INTERCONNECT [get_bd_pins $cell_name/M_AXI_ARESETN]

  set_property CONFIG.POLARITY.VALUE_SRC CONSTANT [get_bd_pins $cell_name/S_AXI_ARESETN]
  set_property CONFIG.POLARITY.VALUE_SRC CONSTANT [get_bd_pins $cell_name/M_AXI_ARESETN]

  bd::mark_propagate_overrideable [get_bd_cells $cell_name] {ADDR_WIDTH DATA_WIDTH ID_WIDTH AWUSER_WIDTH ARUSER_WIDTH WUSER_WIDTH RUSER_WIDTH BUSER_WIDTH READ_WRITE_MODE PROTOCOL WUSER_BITS_PER_BYTE RUSER_BITS_PER_BYTE SUPPORTS_NARROW_BURST HAS_BURST HAS_CACHE HAS_PROT HAS_REGION HAS_QOS HAS_WSTRB HAS_BRESP HAS_RRESP HAS_LOCK MAX_BURST_LENGTH NUM_READ_THREADS NUM_WRITE_THREADS NUM_READ_OUTSTANDING NUM_WRITE_OUTSTANDING M_CLK_DOMAIN} 

  foreach i [get_bd_intf_pins -of_objects [get_bd_cells $cell_name]] { set_property BD_ATTRIBUTE.TYPE interior $i }
}

proc post_config_ip { cell_name args } {
  ifx_puts "----------------------------------------------------------------------"
  ifx_puts "[info level [info level]]"
  ifx_dependent_strength $cell_name
  set ip [get_bd_cells $cell_name]
  set m_axi_aclk [get_bd_pins $ip/m_axi_aclk]

  if {[get_property CONFIG.M_CLK_DOMAIN.VALUE_SRC $ip] == "USER" } {
    set_property CONFIG.CLK_DOMAIN [get_property CONFIG.M_CLK_DOMAIN $ip] $m_axi_aclk
    set_property CONFIG.CLK_DOMAIN.VALUE_SRC CONSTANT $m_axi_aclk
  } else {
    set_property CONFIG.CLK_DOMAIN.VALUE_SRC DEFAULT $m_axi_aclk
  }

}

proc propagate { cell_name prop_info  } { 
  ifx_puts "----------------------------------------------------------------------"
  ifx_puts "[info level [info level]]"
  ifx_validate_axi_interfaces $cell_name

  set sp {PROTOCOL ADDR_WIDTH READ_WRITE_MODE DATA_WIDTH }
  set fp {NUM_READ_OUTSTANDING NUM_WRITE_OUTSTANDING SUPPORTS_NARROW_BURST MAX_BURST_LENGTH NUM_READ_THREADS NUM_WRITE_THREADS RUSER_BITS_PER_BYTE WUSER_BITS_PER_BYTE}
  set ufp {ID_WIDTH AWUSER_WIDTH ARUSER_WIDTH WUSER_WIDTH RUSER_WIDTH BUSER_WIDTH }
  set fpco {HAS_BURST HAS_LOCK HAS_CACHE HAS_PROT HAS_QOS HAS_REGION HAS_WSTRB HAS_BRESP}

  ifx_common_propagate $cell_name $sp 
  ifx_common_propagate $cell_name $fp {} {si ip mi} {si mi}
  ifx_common_propagate $cell_name $ufp {} {ip si} {si ip mi}

  ifx_puts "INFO: begin fpco <$fpco>"
  set ip [get_bd_cells $cell_name]
  set si [get_bd_intf_pins $cell_name/S_AXI]
  set mi [get_bd_intf_pins $cell_name/M_AXI]
  foreach p $fpco {
    if { [string match "USER" [get_property CONFIG.${p}.VALUE_SRC $ip]] } {
      set_property CONFIG.$p [get_property CONFIG.$p $ip] $si
      set_property CONFIG.${p}.VALUE_SRC PROPAGATED $si
      set_property CONFIG.$p [get_property CONFIG.$p $ip] $mi
      set_property CONFIG.${p}.VALUE_SRC PROPAGATED $mi
    } elseif {[string match "CONSTANT" [get_property CONFIG.${p}.VALUE_SRC $si]]} {
      set_property CONFIG.$p [get_property CONFIG.$p $si] $mi
      set_property CONFIG.${p}.VALUE_SRC CONSTANT $mi
      ifx_puts "$p: overriding mi value with si [get_property CONFIG.$p $si] @ CONSTANT"
    } else {
      ifx_puts "$p: si is non-constant, no change to MI"
    }
  }
  ifx_puts "INFO: end fpco"

  #ifx_infrastructure_propagate $cell_name $prop_info $sp $sp_exclusions $fp $fp_exclusions $ufp $ufp_exclusions $fpco $fpco_exclusions
  
}

ifx_debug_trace_setup
