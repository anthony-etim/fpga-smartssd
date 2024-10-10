
          set fd [open "./_post_sys_link_gen_constrs.xdc" w]
          puts $fd "# No content"
          close $fd
          
 set ::env(SDX_DISABLE_INTERNAL_VIP) true 
 set_property generate_synth_checkpoint 0 [get_files pfm_dynamic.bd]
 assign_bd_address -boundary -combine_segments

          set_property preferred_sim_model "tlm" [current_project]
          
