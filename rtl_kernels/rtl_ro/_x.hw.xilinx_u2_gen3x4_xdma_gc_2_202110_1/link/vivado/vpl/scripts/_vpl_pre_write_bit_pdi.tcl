# This file was automatically generated by Vpl
if { ![info exists _is_init_cmds] } {
  source ../../../.local/vpl_init.tcl
  source $local_dir/ocl_util.tcl
  source $local_dir/platform.tcl
  source $local_dir/debug_profile_hooks.tcl
  namespace import ocl_util::*

  set _is_init_cmds true
}



# run timing analysis and frequency scaling
if { ![report_timing_and_scale_freq "level0_i/ulp" "dr" $vivado_output_dir $vpl_output_dir "kernel_clock_freqs {blp_s_aclk_kernel2_ref_clk_00 {is_user_set false instance _bd_top port blp_s_aclk_kernel2_ref_clk_00 clk_id 1 freq 500.000000} blp_s_aclk_kernel_ref_clk_00 {is_user_set false instance _bd_top port blp_s_aclk_kernel_ref_clk_00 clk_id 0 freq 300.000000}} system_clock_freqs {} worst_negative_slack 0 max_frequency 650 min_frequency 10 error_on_hold_violation true skip_timing_and_scaling false enable_auto_freq_scale true" "ro.link"] } {
  return false
}
