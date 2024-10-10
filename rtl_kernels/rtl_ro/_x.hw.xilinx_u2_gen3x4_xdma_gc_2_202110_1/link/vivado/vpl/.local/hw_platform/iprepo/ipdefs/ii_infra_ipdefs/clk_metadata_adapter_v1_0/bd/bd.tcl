proc init { cell args } {
  bd::mark_propagate_overrideable [get_bd_cells] CLK_DOMAIN
}

proc post_config_ip { cell args } {
  set ip [get_bd_cells $cell]
  set clk_out [get_bd_pins $cell/clk_out]

  set_property CONFIG.CLK_DOMAIN [get_property CONFIG.CLK_DOMAIN $ip] $clk_out
  set_property CONFIG.CLK_DOMAIN.VALUE_SRC CONSTANT $clk_out

}

proc propagate { cell args } {
  
  set ip [get_bd_cells $cell]
  set clk_in [get_bd_pins $cell/clk_in]
  set clk_out [get_bd_pins $cell/clk_out]

  set_property CONFIG.FREQ_HZ [get_property CONFIG.FREQ_HZ $clk_in] $clk_out
  set_property CONFIG.PHASE [get_property CONFIG.PHASE $clk_in] $clk_out

  if {[get_property CONFIG.CLK_DOMAIN.VALUE_SRC $ip] != "USER"} {
    set_property CONFIG.CLK_DOMAIN [get_property CONFIG.CLK_DOMAIN $clk_in] $clk_out
  }
}
