# Set necessary params
set_param bd.skipSupportedIPCheck true
# Enable creation of boundary segments on hier IP with proper naming/mapping  
set_param bd.hooks.addr.debug_scoped_use_ms_name 1

# Set HIP SLR automation level
set __sdx_hip_slr_automation_level 2
if {[info exists ::env(SDX_HIP_SLR_AUTOMATION_LEVEL)]} {
  set __sdx_hip_slr_automation_level $::env(SDX_HIP_SLR_AUTOMATION_LEVEL)
}
set_param ips.enableSLRParameter $__sdx_hip_slr_automation_level
