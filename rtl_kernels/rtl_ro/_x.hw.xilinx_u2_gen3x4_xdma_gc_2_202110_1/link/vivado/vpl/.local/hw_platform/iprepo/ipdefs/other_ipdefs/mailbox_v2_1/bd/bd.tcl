###############################################################################
##
## (c) Copyright 2013-2015 Xilinx, Inc. All rights reserved.
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
###############################################################################
##
## mailbox_v2_1/bd/bd.tcl
##
###############################################################################

proc init { cellpath otherInfo } {
  set cell [get_bd_cells $cellpath]
  bd::mark_propagate_only $cell {C_EXT_RESET_HIGH}
  bd::mark_propagate_overrideable $cell {C_READ_CLOCK_PERIOD_0 C_READ_CLOCK_PERIOD_1}
}

proc post_config_ip {cellpath otherInfo} {} 

proc set_base_high {cell} {
  set ::env(IPI_SET_BASE_HIGH) FALSE

  # Get slave interfaces and slave segments
  set vSlvBifs [get_bd_intf_pins -of_object $cell -quiet -filter {Mode == "Slave"}]
  set vSlvSegs [get_bd_addr_segs -of_objects $vSlvBifs]

  # Set base and high for each slave segment
  foreach slvSeg $vSlvSegs {
    ::bd::addr::cfg_base_high_of_slv $cell $slvSeg 0xFFFFFFFF 0x00000000
  }
}

proc post_propagate {cellpath otherInfo} {
  set cell [get_bd_cells $cellpath]

  # C_EXT_RESET_HIGH
  set interconnect_port_0 [get_property CONFIG.C_INTERCONNECT_PORT_0 $cell]
  set interconnect_port_1 [get_property CONFIG.C_INTERCONNECT_PORT_1 $cell]
  if {$interconnect_port_0 == 4 && $interconnect_port_1 == 4} {
    set sys_rst [get_bd_pins $cellpath/SYS_Rst]
    set polarity [get_property CONFIG.POLARITY $sys_rst]
    if {"$polarity" == "ACTIVE_LOW"} {
      set_property CONFIG.C_EXT_RESET_HIGH 0 $cell
    }
    if {"$polarity" == "ACTIVE_HIGH"} {
      set_property CONFIG.C_EXT_RESET_HIGH 1 $cell
    }
  }

  # C_Sx_AXI_BASEADDR, C_Sx_AXI_HIGHADDR
  set_base_high $cell

  # C_READ_CLOCK_PERIOD_0, C_READ_CLOCK_PERIOD_1
  set async_clks [get_property CONFIG.C_ASYNC_CLKS $cell]
  if {$async_clks} {
    foreach index {0 1} {
      set value_src [get_property CONFIG.C_READ_CLOCK_PERIOD_${index}.VALUE_SRC $cell]
      if {$value_src == "USER"} {
        set ps [get_property CONFIG.C_READ_CLOCK_PERIOD_${index} $cell]
      } else {
        set interconnect_port [get_property CONFIG.C_INTERCONNECT_PORT_${index} $cell]
        if {$interconnect_port == 2} {
          set s_axi_pin  [get_bd_pins $cellpath/S${index}_AXI_ACLK]
          set freq_hz    [get_property CONFIG.FREQ_HZ $s_axi_pin]
        } else {
          set s_axis_pin [get_bd_pins $cellpath/S${index}_AXIS_ACLK]
          set m_axis_pin [get_bd_pins $cellpath/M${index}_AXIS_ACLK]
          set s_freq_hz  [get_property CONFIG.FREQ_HZ $s_axis_pin]
          set m_freq_hz  [get_property CONFIG.FREQ_HZ $m_axis_pin]
          set freq_hz    [expr $s_freq_hz > $m_freq_hz ? $s_freq_hz : $m_freq_hz]
        }
        set ps [expr int(1000000000000.0 / ${freq_hz})]
        set_property CONFIG.C_READ_CLOCK_PERIOD_${index} $ps $cell
      }
      if {$ps == 0} {
        bd::send_msg -of $cellpath -type ERROR -msg_id 1 -text ": Parameter C_READ_CLOCK_PERIOD_${index} must have a valid period in (ps) when 'C_ASYNC_CLKS = 1'"
      }
    }
  }

  # C_Sx_AXI_ACLK_FREQ_HZ, C_Sx_AXI_ACLK_FREQ_MHZ, C_Mx_AXIS_ACLK_FREQ_MHZ, C_Sx_AXIS_ACLK_FREQ_MHZ
  foreach index {0 1} {
    set interconnect_port [get_property CONFIG.C_INTERCONNECT_PORT_${index} $cell]
    if {$interconnect_port == 2} {
      set pin [get_bd_pins $cellpath/S${index}_AXI_ACLK]
      set freq_hz [get_property CONFIG.FREQ_HZ $pin]
      set_property CONFIG.C_S${index}_AXI_ACLK_FREQ_HZ $freq_hz $cell
      set_property CONFIG.C_S${index}_AXI_ACLK_FREQ_MHZ [expr $freq_hz / 1000000.0] $cell
    } else {
      foreach bif {M S} {
        set pin [get_bd_pins $cellpath/${bif}${index}_AXIS_ACLK]
        set freq_hz [get_property CONFIG.FREQ_HZ $pin]
        set_property CONFIG.C_${bif}${index}_AXIS_ACLK_FREQ_MHZ [expr $freq_hz / 1000000.0] $cell
      }
    }
  }
}
