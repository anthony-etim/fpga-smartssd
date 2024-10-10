proc propagate { cell args } {

  set ip [get_bd_cells $cell]

  set Clk_In       [get_bd_pins $cell/Clk_In]
  set Clk_Out      [get_bd_pins $cell/Clk_Out]
  set Clk_Out_Cont [get_bd_pins $cell/Clk_Out_Cont]

  set_property CONFIG.FREQ_HZ    [get_property CONFIG.FREQ_HZ    $Clk_In]     $Clk_Out
  set_property CONFIG.PHASE      [get_property CONFIG.PHASE      $Clk_In]     $Clk_Out
  set_property CONFIG.CLK_DOMAIN [get_property CONFIG.CLK_DOMAIN $Clk_In]_buf $Clk_Out

  set_property CONFIG.FREQ_HZ    [get_property CONFIG.FREQ_HZ    $Clk_In]     $Clk_Out_Cont
  set_property CONFIG.PHASE      [get_property CONFIG.PHASE      $Clk_In]     $Clk_Out_Cont
  set_property CONFIG.CLK_DOMAIN [get_property CONFIG.CLK_DOMAIN $Clk_In]_buf $Clk_Out_Cont

  set C_CLK_SLOW_DIV [get_property CONFIG.CLK_SLOW_DIV $ip]

  if {$C_CLK_SLOW_DIV > 1} {

      set Clk_Out_Div [get_bd_pins $cell/Clk_Out_Div]

      set Clk_Out_Div_Freq_Hz [expr [get_property CONFIG.FREQ_HZ $Clk_In] / $C_CLK_SLOW_DIV]

      set_property CONFIG.FREQ_HZ    $Clk_Out_Div_Freq_Hz                         $Clk_Out_Div
      set_property CONFIG.PHASE      [get_property CONFIG.PHASE      $Clk_In]     $Clk_Out_Div
      set_property CONFIG.CLK_DOMAIN [get_property CONFIG.CLK_DOMAIN $Clk_In]_buf $Clk_Out_Div

  }

}
