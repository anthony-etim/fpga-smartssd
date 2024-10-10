# Monitor points

# Call debug/profiling automation
set dpa_dict [list \
             ]
set dpa_opts [list \
              AIE_TRACE  {FIFO_DEPTH 4096 PACKET_RATE 0 CLK_SELECT default PROFILE_STREAMS 0 MEM_SPACE {} MEM_INDEX {}} \
             ]

set_param bd.enable_dpa 1
set_param bd.debug_profile.script /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro/_x.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/link/vivado/vpl/.local/debug_profile_automation.tcl
apply_bd_automation -rule xilinx.com:bd_rule:debug_profile -opts $dpa_opts -dict $dpa_dict

# Write debug_ip_layout
debug_profile::write_debug_ip_layout false "xilinx:u2:gen3x4_xdma_gc_2:202110.1" "/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro/_x.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/link/int"
