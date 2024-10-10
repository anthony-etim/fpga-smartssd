proc init {cellPath otherInfo} {
set cell_handle [get_bd_cells $cellPath]
set paramList "C_ENABLE_ASYNC"
bd::mark_propagate_only $cell_handle $paramList

# cell initialization here
}
#proc post_configure_ip {cellpath otherInfo} {
# Any updates to interface properties based on user configuration
#}

proc post_propagate {cellpath otherInfo } {
    set ip [get_bd_cells $cellpath]

         #set ip [get_bd_cells $cellName]
         set clk_a_freq [get_property CONFIG.FREQ_HZ [get_bd_pins $ip/s_axi_aclk]]
         set clk_b_freq [get_property CONFIG.FREQ_HZ [get_bd_pins $ip/icap_clk]]
         set clk_a_phase [get_property CONFIG.PHASE [get_bd_pins $ip/s_axi_aclk]]
         set clk_b_phase [get_property CONFIG.PHASE [get_bd_pins $ip/icap_clk]]
         set clk_a_dom [get_property CONFIG.CLK_DOMAIN [get_bd_pins $ip/s_axi_aclk]]
         set clk_b_dom [get_property CONFIG.CLK_DOMAIN [get_bd_pins $ip/icap_clk]]
         set mode [get_property CONFIG.C_MODE $ip]

         if {($clk_a_freq != 0 && $clk_b_freq != 0 && $clk_a_freq == $clk_b_freq) &&
             ($clk_a_phase == $clk_b_phase) && ($clk_a_dom == $clk_b_dom)} { 
              set_property  CONFIG.C_ENABLE_ASYNC 0 $ip
              bd::send_msg -of $cellpath -type INFO -msg_id 1 -text " 
                    ##########################################################################################
                    Clocks connected to AXI HWICAP are same. Configuring AXI HWICAP in SYNC mode ..........
                    ##########################################################################################"
              if {$clk_b_freq > 100000000} {
              bd::send_msg -of $cellpath -type INFO -msg_id 2 -text " 
                    ##########################################################################################
                    The ICAP clock freq is more than 100Mhz. Ensure it meets the device requirements.
                    ##########################################################################################"
              }
         } else {
              if {$mode == 0} {
              bd::send_msg -of $cellpath -type INFO -msg_id 3 -text " 
                    ##########################################################################################
                    Clocks connected to AXI HWICAP are different. Configuring AXI HWICAP in ASYNC mode .......
                    ##########################################################################################"
              if {$clk_b_freq > 100000000} {
              bd::send_msg -of $cellpath -type INFO -msg_id 4 -text " 
                    ##########################################################################################
                    The ICAP clock freq is more than 100Mhz. Ensure it meets the device requirements.
                    ##########################################################################################"
              }

              set clk_control_value 1
              set_property  CONFIG.C_ENABLE_ASYNC $clk_control_value $ip
              } else {
              bd::send_msg -of $cellpath -type ERROR -msg_id 5 -text " 
                    ##########################################################################################
                    Write FIFO has been disabled. Also the ICAP_clk and s_axi_aclk are different.
                    Either enable the Write FIFO or connect the same clock to ICAP_clk and s_axi_aclk.
                    ##########################################################################################"
              }
         }
}

