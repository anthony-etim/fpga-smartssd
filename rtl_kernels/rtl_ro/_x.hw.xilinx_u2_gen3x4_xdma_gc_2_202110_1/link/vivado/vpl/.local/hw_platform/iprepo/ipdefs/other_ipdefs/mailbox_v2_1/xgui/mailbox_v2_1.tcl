###############################################################################
##
## (c) Copyright 2011-2013,2015,2018,2020 Xilinx, Inc. All rights reserved.
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
## mailbox_v2_1.tcl
##
###############################################################################

proc init_gui { IPINST } {
  set Component_Name [ ipgui::add_param $IPINST  -parent $IPINST -name Component_Name ]

  set_property hide_disabled_pins true [ipgui::get_canvasspec -of $IPINST]

  set tabgroup0 [ipgui::add_page $IPINST -name User -layout vertical]
  set groupbox0 [ipgui::add_group $IPINST -parent $tabgroup0 -name "System" ]
  set C_INTERCONNECT_PORT_0 [ipgui::add_param $IPINST -parent $groupbox0 -name C_INTERCONNECT_PORT_0 -widget comboBox]
  set_property tooltip {Select the interface type. Address mapped AXI4 interface can be used by any bus master. AXI4-Stream is intended for direct attachment of the mailbox to a MicroBlaze processor or other stream compatible peripheral.} $C_INTERCONNECT_PORT_0
  set C_INTERCONNECT_PORT_1 [ipgui::add_param $IPINST -parent $groupbox0 -name C_INTERCONNECT_PORT_1 -widget comboBox]
  set_property tooltip {Select the interface type. Address mapped AXI4 interface can be used by any bus master. AXI4-Stream is intended for direct attachment of the mailbox to a MicroBlaze processor or other stream compatible peripheral.} $C_INTERCONNECT_PORT_1
  set C_EXT_RESET_HIGH [ipgui::add_param $IPINST -parent $groupbox0 -name C_EXT_RESET_HIGH -widget checkBox]
  set groupbox1 [ipgui::add_group $IPINST -parent $tabgroup0 -name "Mailbox" ]
  set C_ASYNC_CLKS [ipgui::add_param $IPINST -parent $groupbox1 -name C_ASYNC_CLKS -widget checkBox]
  set_property tooltip {Specifies whether the FIFO in the mailbox is implemented as asynchronous or synchronous FIFO. When set to 1, the mailbox implements an asynchronous FIFO. In this case, the clock ports S0_AXIS_ACLK, S1_AXIS_ACLK, M0_AXIS_ACLK and M1_AXIS_ACLK are used as the master and slave clocks. If set to 0, the mailbox is implemented as a synchronous FIFO. In this case, the clock port S0_AXI_ACLK or S0_AXIS_ACLK is used for both the master and slave interfaces.} $C_ASYNC_CLKS
  set C_IMPL_STYLE [ipgui::add_param $IPINST -parent $groupbox1 -name C_IMPL_STYLE -widget comboBox]
  set C_MAILBOX_DEPTH [ipgui::add_param $IPINST -parent $groupbox1 -name C_MAILBOX_DEPTH]
  set_property tooltip {Specifies the depth of the FIFO implemented by the mailbox. The depth of the FIFO can be as low as 16 or as high as 8192. The depth that can be specified is dependent on the implementation scheme of the FIFO. When the FIFO operates asynchronously (C_ASYNC_CLKS=1) and BRAMs are used (C_IMPL_STYLE=1) the allowable depth is between 512 and 8192, otherwise it is between 16 and 8192.} $C_MAILBOX_DEPTH
  set C_READ_CLOCK_PERIOD_0 [ipgui::add_param $IPINST -parent $groupbox1 -name C_READ_CLOCK_PERIOD_0]
  set_property tooltip {Specifies the period of the read clock on interface 0 (in ps). This value must be set when the FIFO operates asynchronously (C_ASYNC_CLKS=1), and can otherwise be ignored} $C_READ_CLOCK_PERIOD_0
  set C_READ_CLOCK_PERIOD_1 [ipgui::add_param $IPINST -parent $groupbox1 -name C_READ_CLOCK_PERIOD_1]
  set_property tooltip {Specifies the period of the read clock on interface 1 (in ps). This value must be set when the FIFO operates asynchronously (C_ASYNC_CLKS=1), and can otherwise be ignored} $C_READ_CLOCK_PERIOD_1

  # Hidden parameters - added to avoid warnings
  set C_NUM_SYNC_FF [ipgui::add_param $IPINST -parent $groupbox1 -name C_NUM_SYNC_FF]
  set_property tooltip {This parameter specifies how many synchronization FF that will be used for clock domain crossings.} $C_NUM_SYNC_FF
  set_property visible false $C_NUM_SYNC_FF
  set C_ASYNC_INTERRUPTS [ipgui::add_param $IPINST -parent $groupbox1 -name C_ASYNC_INTERRUPTS -widget checkBox]
  set_property tooltip {Specifies whether the mailbox interrupt outputs are clocked.} $C_ASYNC_INTERRUPTS
  set_property visible false $C_ASYNC_INTERRUPTS
  set C_ENABLE_BUS_ERROR [ipgui::add_param $IPINST -parent $groupbox1 -name C_ENABLE_BUS_ERROR]
  set_property visible false $C_ENABLE_BUS_ERROR
  for {set index 0} {$index < 2} {incr index} {
    set C_S${index}_AXI_BASEADDR [ipgui::add_param $IPINST -parent $groupbox1 -name C_S${index}_AXI_BASEADDR]
    set_property visible false [set C_S${index}_AXI_BASEADDR]
    set C_S${index}_AXI_HIGHADDR [ipgui::add_param $IPINST -parent $groupbox1 -name C_S${index}_AXI_HIGHADDR]
    set_property visible false [set C_S${index}_AXI_HIGHADDR]
    set C_S${index}_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -parent $groupbox1 -name C_S${index}_AXI_ADDR_WIDTH]
    set_property visible false [set C_S${index}_AXI_ADDR_WIDTH]
    set C_S${index}_AXI_DATA_WIDTH [ipgui::add_param $IPINST -parent $groupbox1 -name C_S${index}_AXI_DATA_WIDTH]
    set_property visible false [set C_S${index}_AXI_DATA_WIDTH]
    set C_S${index}_AXI_ACLK_FREQ_HZ [ipgui::add_param $IPINST -parent $groupbox1 -name C_S${index}_AXI_ACLK_FREQ_HZ]
    set_property visible false [set C_S${index}_AXI_ACLK_FREQ_HZ]
  }
  for {set index 0} {$index < 2} {incr index} {
    set C_M${index}_AXIS_DATA_WIDTH [ipgui::add_param $IPINST -parent $groupbox1 -name C_M${index}_AXIS_DATA_WIDTH]
    set_property visible false [set C_M${index}_AXIS_DATA_WIDTH]
    set C_S${index}_AXIS_DATA_WIDTH [ipgui::add_param $IPINST -parent $groupbox1 -name C_S${index}_AXIS_DATA_WIDTH]
    set_property visible false [set C_S${index}_AXIS_DATA_WIDTH]
    set C_M${index}_AXIS_PROTOCOL [ipgui::add_param $IPINST -parent $groupbox1 -name C_M${index}_AXIS_PROTOCOL]
    set_property visible false [set C_M${index}_AXIS_PROTOCOL]
    set C_S${index}_AXIS_PROTOCOL [ipgui::add_param $IPINST -parent $groupbox1 -name C_S${index}_AXIS_PROTOCOL]
    set_property visible false [set C_S${index}_AXIS_PROTOCOL]
  }

  # Clocks tab for OOC clock frequencies
  set tabgroup1 [ipgui::add_page $IPINST -name Clocks -layout vertical]
  set text [ipgui::add_static_text -name "Clock constraints" -text "Enter the target frequency for the input clock(s) for the IP.\nThese frequencies will be used during the default out-of-context synthesis flow" -parent $tabgroup1 $IPINST]
  for {set index 0} {$index < 2} {incr index} {
    set C_S${index}_AXI_ACLK_FREQ_MHZ [ipgui::add_param $IPINST -parent $tabgroup1 -name C_S${index}_AXI_ACLK_FREQ_MHZ]
    set C_M${index}_AXIS_ACLK_FREQ_MHZ [ipgui::add_param $IPINST -parent $tabgroup1 -name C_M${index}_AXIS_ACLK_FREQ_MHZ]
    set C_S${index}_AXIS_ACLK_FREQ_MHZ [ipgui::add_param $IPINST -parent $tabgroup1 -name C_S${index}_AXIS_ACLK_FREQ_MHZ]
  }
}

proc has_uram { ARCHITECTURE } {
  set arch [string tolower $ARCHITECTURE]
  return [expr [string first "uplus" $arch] != -1]
}

proc update_gui_for_PARAM_VALUE.C_IMPL_STYLE { IPINST PARAM_VALUE.C_IMPL_STYLE PARAM_VALUE.C_ASYNC_CLKS PROJECT_PARAM.ARCHITECTURE } {
  set use_uram   [ has_uram ${PROJECT_PARAM.ARCHITECTURE} ]
  set async_clks [ get_property value ${PARAM_VALUE.C_ASYNC_CLKS} ]

  set uram1 ""
  set uram2 ""
  if {$use_uram && ! $async_clks} {
    set uram1 ", and if set to 2 it is implemented with Ultra RAM"
    set uram2 " and Ultra RAM"
  }
  set tooltip "Specifies the implementation style of the FIFO of the mailbox. If set to 1, the FIFO is implemented using Block RAM${uram1}. This parameter affects timing. There is an additional cycle of latency with Block RAM${uram2} when a write is performed on an empty FIFO, since the M0_AXIS_TVALID or M1_AXIS_TVALID signal goes high one cycle after the write in this case."
  set_property tooltip $tooltip [ipgui::get_guiparamspec C_IMPL_STYLE -of $IPINST]
}

#
# Procedures called when parameter value is changed
#
proc update_PARAM_VALUE.C_EXT_RESET_HIGH { PARAM_VALUE.C_EXT_RESET_HIGH PARAM_VALUE.C_INTERCONNECT_PORT_0 PARAM_VALUE.C_INTERCONNECT_PORT_1} {

  set interconnect_port_0 [ get_property value ${PARAM_VALUE.C_INTERCONNECT_PORT_0} ]
  set interconnect_port_1 [ get_property value ${PARAM_VALUE.C_INTERCONNECT_PORT_1} ]
  set value               [expr (($interconnect_port_0 == 3) || ($interconnect_port_0 == 4)) && \
                                (($interconnect_port_1 == 3) || ($interconnect_port_1 == 4)) ]
  if {$value != 0} {
    set_property enabled true ${PARAM_VALUE.C_EXT_RESET_HIGH} 
  } else {
    set_property enabled false ${PARAM_VALUE.C_EXT_RESET_HIGH}
  }
                                
} 

proc update_PARAM_VALUE.C_S0_AXI_ACLK_FREQ_MHZ {PARAM_VALUE.C_S0_AXI_ACLK_FREQ_MHZ PARAM_VALUE.C_INTERCONNECT_PORT_0} {
  set interconnect_port_0 [ get_property value ${PARAM_VALUE.C_INTERCONNECT_PORT_0} ]

  if {$interconnect_port_0 == 2} {
    set_property enabled true ${PARAM_VALUE.C_S0_AXI_ACLK_FREQ_MHZ}
  } else {
    set_property enabled false ${PARAM_VALUE.C_S0_AXI_ACLK_FREQ_MHZ}
  }
} 

proc update_PARAM_VALUE.C_S1_AXI_ACLK_FREQ_MHZ {PARAM_VALUE.C_S1_AXI_ACLK_FREQ_MHZ PARAM_VALUE.C_INTERCONNECT_PORT_1} {
  set interconnect_port_1 [ get_property value ${PARAM_VALUE.C_INTERCONNECT_PORT_1} ]

  if {$interconnect_port_1 == 2} {
    set_property enabled true ${PARAM_VALUE.C_S1_AXI_ACLK_FREQ_MHZ}
  } else {
    set_property enabled false ${PARAM_VALUE.C_S1_AXI_ACLK_FREQ_MHZ}
  }
} 

proc update_PARAM_VALUE.C_M0_AXIS_ACLK_FREQ_MHZ {PARAM_VALUE.C_M0_AXIS_ACLK_FREQ_MHZ PARAM_VALUE.C_INTERCONNECT_PORT_0} {
  set interconnect_port_0 [ get_property value ${PARAM_VALUE.C_INTERCONNECT_PORT_0} ]

  if {$interconnect_port_0 == 2} {
    set_property enabled false ${PARAM_VALUE.C_M0_AXIS_ACLK_FREQ_MHZ}
  } else {
    set_property enabled true ${PARAM_VALUE.C_M0_AXIS_ACLK_FREQ_MHZ}
  }
} 

proc update_PARAM_VALUE.C_S0_AXIS_ACLK_FREQ_MHZ {PARAM_VALUE.C_S0_AXIS_ACLK_FREQ_MHZ PARAM_VALUE.C_INTERCONNECT_PORT_0} {
  set interconnect_port_0 [ get_property value ${PARAM_VALUE.C_INTERCONNECT_PORT_0} ]

  if {$interconnect_port_0 == 2} {
    set_property enabled false ${PARAM_VALUE.C_S0_AXIS_ACLK_FREQ_MHZ}
  } else {
    set_property enabled true ${PARAM_VALUE.C_S0_AXIS_ACLK_FREQ_MHZ}
  }
} 

proc update_PARAM_VALUE.C_M1_AXIS_ACLK_FREQ_MHZ {PARAM_VALUE.C_M1_AXIS_ACLK_FREQ_MHZ PARAM_VALUE.C_INTERCONNECT_PORT_1} {
  set interconnect_port_1 [ get_property value ${PARAM_VALUE.C_INTERCONNECT_PORT_1} ]

  if {$interconnect_port_1 == 2} {
    set_property enabled false ${PARAM_VALUE.C_M1_AXIS_ACLK_FREQ_MHZ}
  } else {
    set_property enabled true ${PARAM_VALUE.C_M1_AXIS_ACLK_FREQ_MHZ}
  }
} 

proc update_PARAM_VALUE.C_S1_AXIS_ACLK_FREQ_MHZ {PARAM_VALUE.C_S1_AXIS_ACLK_FREQ_MHZ PARAM_VALUE.C_INTERCONNECT_PORT_1} {
  set interconnect_port_1 [ get_property value ${PARAM_VALUE.C_INTERCONNECT_PORT_1} ]

  if {$interconnect_port_1 == 2} {
    set_property enabled false ${PARAM_VALUE.C_S1_AXIS_ACLK_FREQ_MHZ}
  } else {
    set_property enabled true ${PARAM_VALUE.C_S1_AXIS_ACLK_FREQ_MHZ}
  }
} 

proc update_PARAM_VALUE.C_READ_CLOCK_PERIOD_0 {PARAM_VALUE.C_READ_CLOCK_PERIOD_0 PARAM_VALUE.C_ASYNC_CLKS} {
  set async_clks [ get_property value ${PARAM_VALUE.C_ASYNC_CLKS} ]
  set value [expr $async_clks == 1]
  
  if {$value != 0} {
    set_property enabled true ${PARAM_VALUE.C_READ_CLOCK_PERIOD_0}
  } else {
    set_property enabled false ${PARAM_VALUE.C_READ_CLOCK_PERIOD_0}
  }
}

proc update_PARAM_VALUE.C_READ_CLOCK_PERIOD_1 {PARAM_VALUE.C_READ_CLOCK_PERIOD_1 PARAM_VALUE.C_ASYNC_CLKS} {
  set async_clks [ get_property value ${PARAM_VALUE.C_ASYNC_CLKS} ]
  set value [expr $async_clks == 1]
  
  if {$value != 0} {
    set_property enabled true ${PARAM_VALUE.C_READ_CLOCK_PERIOD_1}
  } else {
    set_property enabled false ${PARAM_VALUE.C_READ_CLOCK_PERIOD_1}
  }
}

proc update_PARAM_VALUE.C_IMPL_STYLE { PARAM_VALUE.C_IMPL_STYLE PARAM_VALUE.C_ASYNC_CLKS PROJECT_PARAM.ARCHITECTURE } {
  set use_uram   [ has_uram ${PROJECT_PARAM.ARCHITECTURE} ]
  set async_clks [ get_property value ${PARAM_VALUE.C_ASYNC_CLKS} ]

  # Set range for C_IMPL_STYLE
  if {$use_uram && ! $async_clks} {
    set_property range "0,1,2" ${PARAM_VALUE.C_IMPL_STYLE}
  } else {
    set_property range "0,1" ${PARAM_VALUE.C_IMPL_STYLE}
  }
}

proc update_PARAM_VALUE.C_MAILBOX_DEPTH { PARAM_VALUE.C_MAILBOX_DEPTH PARAM_VALUE.C_ASYNC_CLKS PARAM_VALUE.C_IMPL_STYLE} {
  set async_clks [ get_property value ${PARAM_VALUE.C_ASYNC_CLKS} ]
  set impl_style [ get_property value ${PARAM_VALUE.C_IMPL_STYLE} ]
  set distram    [expr $impl_style == 0]
  set bram       [expr $impl_style != 0]

  # Set min and max range values for C_MAILBOX_DEPTH
  set min [expr !$async_clks * 16   | $async_clks * $distram * 16  | $async_clks * $bram * 512]
  set max [expr !$async_clks * 8192 | $async_clks * $distram * 256 | $async_clks * $bram * 8192]
  set_property range "$min,$max" ${PARAM_VALUE.C_MAILBOX_DEPTH}
}

proc update_MODELPARAM_VALUE.C_INTERCONNECT_PORT_0 { MODELPARAM_VALUE.C_INTERCONNECT_PORT_0 PARAM_VALUE.C_INTERCONNECT_PORT_0} {
  set_property value [ get_property value ${PARAM_VALUE.C_INTERCONNECT_PORT_0} ]  ${MODELPARAM_VALUE.C_INTERCONNECT_PORT_0} 
}

proc update_MODELPARAM_VALUE.C_INTERCONNECT_PORT_1 { MODELPARAM_VALUE.C_INTERCONNECT_PORT_1 PARAM_VALUE.C_INTERCONNECT_PORT_1} {
  set_property value [ get_property value ${PARAM_VALUE.C_INTERCONNECT_PORT_1} ]  ${MODELPARAM_VALUE.C_INTERCONNECT_PORT_1} 
}

proc update_MODELPARAM_VALUE.C_EXT_RESET_HIGH { MODELPARAM_VALUE.C_EXT_RESET_HIGH PARAM_VALUE.C_EXT_RESET_HIGH} {
  set_property value [ get_property value ${PARAM_VALUE.C_EXT_RESET_HIGH} ]  ${MODELPARAM_VALUE.C_EXT_RESET_HIGH} 
}

proc update_MODELPARAM_VALUE.C_ASYNC_CLKS { MODELPARAM_VALUE.C_ASYNC_CLKS PARAM_VALUE.C_ASYNC_CLKS} {
  set_property value [ get_property value ${PARAM_VALUE.C_ASYNC_CLKS} ]  ${MODELPARAM_VALUE.C_ASYNC_CLKS} 
}

proc update_MODELPARAM_VALUE.C_NUM_SYNC_FF { MODELPARAM_VALUE.C_NUM_SYNC_FF PARAM_VALUE.C_NUM_SYNC_FF} {
  set_property value [ get_property value ${PARAM_VALUE.C_NUM_SYNC_FF} ]  ${MODELPARAM_VALUE.C_NUM_SYNC_FF}
}

proc update_MODELPARAM_VALUE.C_ASYNC_INTERRUPTS { MODELPARAM_VALUE.C_ASYNC_INTERRUPTS PARAM_VALUE.C_ASYNC_INTERRUPTS} {
  set_property value [ get_property value ${PARAM_VALUE.C_ASYNC_INTERRUPTS} ]  ${MODELPARAM_VALUE.C_ASYNC_INTERRUPTS} 
}

proc update_MODELPARAM_VALUE.C_IMPL_STYLE { MODELPARAM_VALUE.C_IMPL_STYLE PARAM_VALUE.C_IMPL_STYLE} {
  set_property value [ get_property value ${PARAM_VALUE.C_IMPL_STYLE} ]  ${MODELPARAM_VALUE.C_IMPL_STYLE}
}

proc update_MODELPARAM_VALUE.C_MAILBOX_DEPTH { MODELPARAM_VALUE.C_MAILBOX_DEPTH PARAM_VALUE.C_MAILBOX_DEPTH} {
  set_property value [ get_property value ${PARAM_VALUE.C_MAILBOX_DEPTH} ]  ${MODELPARAM_VALUE.C_MAILBOX_DEPTH} 

}

proc update_MODELPARAM_VALUE.C_ENABLE_BUS_ERROR { MODELPARAM_VALUE.C_ENABLE_BUS_ERROR PARAM_VALUE.C_ENABLE_BUS_ERROR} {
  set_property value [ get_property value ${PARAM_VALUE.C_ENABLE_BUS_ERROR} ]  ${MODELPARAM_VALUE.C_ENABLE_BUS_ERROR}
}

proc update_MODELPARAM_VALUE.C_S0_AXI_BASEADDR { MODELPARAM_VALUE.C_S0_AXI_BASEADDR PARAM_VALUE.C_S0_AXI_BASEADDR} {
  set_property value [ get_property value ${PARAM_VALUE.C_S0_AXI_BASEADDR} ]  ${MODELPARAM_VALUE.C_S0_AXI_BASEADDR}
}

proc update_MODELPARAM_VALUE.C_S0_AXI_HIGHADDR { MODELPARAM_VALUE.C_S0_AXI_HIGHADDR PARAM_VALUE.C_S0_AXI_HIGHADDR} {
  set_property value [ get_property value ${PARAM_VALUE.C_S0_AXI_HIGHADDR} ]  ${MODELPARAM_VALUE.C_S0_AXI_HIGHADDR}
}

proc update_MODELPARAM_VALUE.C_S1_AXI_BASEADDR { MODELPARAM_VALUE.C_S1_AXI_BASEADDR PARAM_VALUE.C_S1_AXI_BASEADDR} {
  set_property value [ get_property value ${PARAM_VALUE.C_S1_AXI_BASEADDR} ]  ${MODELPARAM_VALUE.C_S1_AXI_BASEADDR}
}

proc update_MODELPARAM_VALUE.C_S1_AXI_HIGHADDR { MODELPARAM_VALUE.C_S1_AXI_HIGHADDR PARAM_VALUE.C_S1_AXI_HIGHADDR} {
  set_property value [ get_property value ${PARAM_VALUE.C_S1_AXI_HIGHADDR} ]  ${MODELPARAM_VALUE.C_S1_AXI_HIGHADDR}
}

proc update_MODELPARAM_VALUE.C_S0_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S0_AXI_ADDR_WIDTH PARAM_VALUE.C_S0_AXI_ADDR_WIDTH} {
  set_property value [ get_property value ${PARAM_VALUE.C_S0_AXI_ADDR_WIDTH} ]  ${MODELPARAM_VALUE.C_S0_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S0_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S0_AXI_DATA_WIDTH PARAM_VALUE.C_S0_AXI_DATA_WIDTH} {
  set_property value [ get_property value ${PARAM_VALUE.C_S0_AXI_DATA_WIDTH} ]  ${MODELPARAM_VALUE.C_S0_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S1_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S1_AXI_ADDR_WIDTH PARAM_VALUE.C_S1_AXI_ADDR_WIDTH} {
  set_property value [ get_property value ${PARAM_VALUE.C_S1_AXI_ADDR_WIDTH} ]  ${MODELPARAM_VALUE.C_S1_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S1_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S1_AXI_DATA_WIDTH PARAM_VALUE.C_S1_AXI_DATA_WIDTH} {
  set_property value [ get_property value ${PARAM_VALUE.C_S1_AXI_DATA_WIDTH} ]  ${MODELPARAM_VALUE.C_S1_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXIS_DATA_WIDTH { MODELPARAM_VALUE.C_M0_AXIS_DATA_WIDTH PARAM_VALUE.C_M0_AXIS_DATA_WIDTH} {
  set_property value [ get_property value ${PARAM_VALUE.C_M0_AXIS_DATA_WIDTH} ]  ${MODELPARAM_VALUE.C_M0_AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S0_AXIS_DATA_WIDTH { MODELPARAM_VALUE.C_S0_AXIS_DATA_WIDTH PARAM_VALUE.C_S0_AXIS_DATA_WIDTH} {
  set_property value [ get_property value ${PARAM_VALUE.C_S0_AXIS_DATA_WIDTH} ]  ${MODELPARAM_VALUE.C_S0_AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXIS_PROTOCOL { MODELPARAM_VALUE.C_M0_AXIS_PROTOCOL PARAM_VALUE.C_M0_AXIS_PROTOCOL} {
  set_property value [ get_property value ${PARAM_VALUE.C_M0_AXIS_PROTOCOL} ]  ${MODELPARAM_VALUE.C_M0_AXIS_PROTOCOL}
}

proc update_MODELPARAM_VALUE.C_S0_AXIS_PROTOCOL { MODELPARAM_VALUE.C_S0_AXIS_PROTOCOL PARAM_VALUE.C_S0_AXIS_PROTOCOL} {
  set_property value [ get_property value ${PARAM_VALUE.C_S0_AXIS_PROTOCOL} ]  ${MODELPARAM_VALUE.C_S0_AXIS_PROTOCOL}
}

proc update_MODELPARAM_VALUE.C_M1_AXIS_DATA_WIDTH { MODELPARAM_VALUE.C_M1_AXIS_DATA_WIDTH PARAM_VALUE.C_M1_AXIS_DATA_WIDTH} {
  set_property value [ get_property value ${PARAM_VALUE.C_M1_AXIS_DATA_WIDTH} ]  ${MODELPARAM_VALUE.C_M1_AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S1_AXIS_DATA_WIDTH { MODELPARAM_VALUE.C_S1_AXIS_DATA_WIDTH PARAM_VALUE.C_S1_AXIS_DATA_WIDTH} {
  set_property value [ get_property value ${PARAM_VALUE.C_S1_AXIS_DATA_WIDTH} ]  ${MODELPARAM_VALUE.C_S1_AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M1_AXIS_PROTOCOL { MODELPARAM_VALUE.C_M1_AXIS_PROTOCOL PARAM_VALUE.C_M1_AXIS_PROTOCOL} {
  set_property value [ get_property value ${PARAM_VALUE.C_M1_AXIS_PROTOCOL} ]  ${MODELPARAM_VALUE.C_M1_AXIS_PROTOCOL}
}

proc update_MODELPARAM_VALUE.C_S1_AXIS_PROTOCOL { MODELPARAM_VALUE.C_S1_AXIS_PROTOCOL PARAM_VALUE.C_S1_AXIS_PROTOCOL} {
  set_property value [ get_property value ${PARAM_VALUE.C_S1_AXIS_PROTOCOL} ]  ${MODELPARAM_VALUE.C_S1_AXIS_PROTOCOL}
}
