# This file was automatically generated by Vpl
if { ![info exists _is_init_cmds] } {
  source ../../../.local/vpl_init.tcl
  source $local_dir/ocl_util.tcl
  source $local_dir/platform.tcl
  source $local_dir/debug_profile_hooks.tcl
  namespace import ocl_util::*

  set _is_init_cmds true
}


ocl_util::report_utilization_drc "luts 342496 brams 646 registers 684992 dsps 1344" "level0_i/ulp" 0.8 $steps_log $vivado_output_dir
