puts "--------------------------------------------------------"
puts "BEGIN: PACKAGE_BD"

set output_dir_name generated_ip

# TODO: move this to a util.tcl file...
namespace eval sdx::util {
  proc clog2 { i } {
    set l 1
    while {[expr 1<<$l] <= $i} { incr l }
    return $l
  }

  proc get_low_high_addr_pair { d } {
    set first 1
    set lowest_addr undefined
    set highest_addr 0
    foreach pair [dict values $d] {
      lassign $pair offset range
      if {$first || $offset < $lowest_addr} { 
        set lowest_addr $offset
        set first 0
      }
      set segment_high_addr [expr $offset + [range_str_to_bytes $range] -1]
      if {$segment_high_addr > $highest_addr} {
        set highest_addr $segment_high_addr
      }
    }
    return "$lowest_addr $highest_addr"
  }

  proc range_str_to_bytes { range_string } {
    set range_string [string tolower $range_string]
    if {![regexp {(\d+)(k|m|g|t)} $range_string {} range_value range_type]} {
      send_error "Segment range format incorrect: $range_string"
    }
    set clog_range_type_map {k 10 m 20 g 30 t 40}
    set clog_range_exponent [dict get $clog_range_type_map $range_type]

    set range_bytes [expr $range_value*(1 << $clog_range_exponent)]
    return $range_bytes
  }

  proc xil_clog2_range { range } {
    if {![regexp {(\d+)(k|m|g|t)} $range {} range_value range_type]} {
      send_error "Segment range format incorrect: $range"
    }

    set clog_range_type_map {k 10 m 20 g 30 t 40}
    set clog_range_type [dict get $clog_range_type_map $range_type]
    set range_high_addr [expr ($range_value*(1<<$clog_range_type))-1]
    set clog_range [xil_clog2 $range_high_addr]

    return $clog_range
  }
}

set gen {}
set wiz_gen_properties [list_property $wiz_ip CONFIG.II.*]
foreach p $wiz_gen_properties {
  set p [string tolower $p]
  set v [get_property $p $wiz_ip]
  dict set gen {*}[lrange [split $p .] 2 end] $v
}
#puts "[pdict $gen]"
#puts "gen: $gen"

# For some reason VLNV is called IPDEF in the ipinst object :?
set wiz_ip [get_ips -filter {IPDEF=~*pxi_ii_wizard*}]
puts "-- Wizard IP instance: $wiz_ip"

set config_mode [get_property CONFIG.MODE $wiz_ip]
puts "-- config_mode: $config_mode" 

foreach p {vendor library name version} {
  set vlnv_$p [get_property CONFIG.VLNV.$p $wiz_ip]
}

if {[get_property CONFIG.PACKAGE_TYPE $wiz_ip] == "DCP"} {
  set_property SYNTH_CHECKPOINT_MODE Singular [get_files isolation_interface.bd]

  set wrapper_file [make_wrapper -files [get_files isolation_interface.bd] -top]
  add_files -norecurse $wrapper_file

  update_compile_order -fileset sources_1

  set_property top isolation_interface_wrapper [current_fileset]

  set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-mode out_of_context} -objects [get_runs synth_1]
  launch_runs synth_1
  wait_on_run synth_1
  open_run synth_1
  write_checkpoint ii.dcp  

  set core [ipx::package_checkpoint -dcp_file ii.dcp -root_dir $output_dir_name -vendor $vlnv_vendor -library $vlnv_library -name $vlnv_name -version $vlnv_version]

} else {
  puts "-- package_project as VLNV: $vlnv_vendor:$vlnv_library:$vlnv_name:$vlnv_version"
  ipx::package_project -root_dir $output_dir_name -vendor $vlnv_vendor -library $vlnv_library -taxonomy /PR_Isolation_Interfaces -module $vlnv_name -import_files -set_current false {}
}

# TODO: This load shouldn't have been necessary -
# Contact ben/brian/file-CR to get core object returned from package_project
set core [ipx::open_ipxact_file $output_dir_name/component.xml]
puts "-- core: $core"

# Apply VLNV properties to generated core...
foreach p {vendor library name version} {
  set_property $p [set vlnv_$p] $core
}

# Discard inferred addressing - explicit packaging of address objects will occur below...
ipx::remove_all_memory_map $core
ipx::remove_all_address_space $core

set associated_busifs {}
set associated_reset {}

# -----------------------------------------------------------------------------
# pre-work
#
# hmmm - is there a better way to achieve this correlation?
set partition_clock_map {}
dict for {role role_spec} [dict get $gen aclk] {
  for {set i 0} {$i < [dict get $role_spec num_instances]} {incr i} {
    set idx [format %.2d $i]
    set role_name ${role}_$idx
    if {$role == "custom_role"} {
      set custom_role_name [dict get $role_spec $idx gen_params custom_role_name]
      set custom_role_idx [format %.2d [dict get $role_spec $idx gen_params custom_role_index]]
      set role_name ${custom_role_name}_${custom_role_idx}
    }
    foreach r {s m} {
      set partition [string tolower [dict get $role_spec $idx gen_params ${r}_partition]]
      dict set partition_clock_map $partition aclk_$role_name ${partition}_${r}_aclk_$role_name
    }
  } 
}

# Case sensitive lookup of busifs so standardize on lowercase and access via this dictionary...
foreach i [ipx::get_bus_interfaces -of $core] {
  set n [string tolower [get_property NAME $i]]

  # IP packager alters the name of clock and reset busifs (presumably to disambiguate from ports?)...
  set n [string map {clk. {} rst. {} data. {} intr. {}} $n]
  dict set ipx_busifs $n $i  
}

# -----------------------------------------------------------------------------------
dict for {type instances} $gen {
  puts "-- type: $type"
  dict for {role role_spec} $instances { 
    puts "-- >> role: $role"         
    
    for {set i 0} {$i < [dict get $role_spec num_instances]} {incr i} {
      set idx [format %.2d $i]
      set role_instance [dict get $role_spec $idx]
      foreach r {s m} {
        set partition [string tolower [dict get $role_instance gen_params ${r}_partition]]
        set role_name ${role}_$idx
        if {[string match "custom_role" $role]} {
          set custom_role_name [dict get $role_instance gen_params custom_role_name]
          set custom_role_idx [format %.2d [dict get $role_instance gen_params custom_role_index]]
          set role_name ${custom_role_name}_${custom_role_idx}
        }
        set intf_name [string tolower ${partition}_${r}_${type}_$role_name]        
        set ipx_intf [dict get $ipx_busifs $intf_name]
        
        if {[llength $ipx_intf] == 0} {
          send_error "ERROR: Could not recover bus interface: $intf_name"
        }

        # Explicitly package all the expected BIF_PARAMs
        ipx::remove_all_bus_parameter $ipx_intf
        if {[dict exists $role_instance bif_params]} {
          dict for {p v} [dict get $role_instance bif_params] {
            # BIF PARAMs are typically uppercase
            set p [string toupper $p]
            set bif_param [ipx::add_bus_parameter $p $ipx_intf]
            set_property value $v $bif_param
          }
        }
        if {[dict exists $role_instance gen_params aclk_src]} {
          set aclk_src [dict get $role_instance gen_params aclk_src]

          if {$type != "aclk" && $type != "aresetn"} {          
            set aclk_port [dict get $partition_clock_map $partition $aclk_src]          
            dict lappend associated_busifs $aclk_port $intf_name
          }
          if {$type == "aresetn"} {
            # Multiple synchronous clocks (on the same clock domain) mean that a reset pin
            # may reference multiple aclk_src values
            foreach aclk_port_name [split $aclk_src :] {
              set aclk_port [dict get $partition_clock_map $partition $aclk_port_name]
              dict lappend associated_reset $aclk_port $intf_name
            }
          }
        }
        if {[dict exists $role_instance addr_segs]} {
          # Determine the low/high address of all the address segments declared on the interface
          set low_addr {}
          set high_addr 0
          dict for {segment_class segment_specs} [dict get $role_instance addr_segs] {
            for {set seg_num 0} {$seg_num < [dict get $segment_specs num_instances]} {incr seg_num} {
              set seg_idx [format %.2d $seg_num]
              set segment_instance_spec [dict get $segment_specs $seg_idx]
              dict with segment_instance_spec {
                if {$low_addr == {} || $offset < $low_addr} {
                  set low_addr $offset
                }
                set segment_high_addr [expr $offset + [sdx::util::range_str_to_bytes $range] -1]
                if {$segment_high_addr > $high_addr} {
                  set high_addr $segment_high_addr
                }                  
              }
            }
          }

          if {[llength $low_addr] == 0} {
            send_error "No address segments were enabled for $type $role_name"
          }

          # Create an appropriate address segment container based on the master/slave mode of the bus interface:  
          if {[string match -nocase Slave [get_property INTERFACE_MODE $ipx_intf]]} {
            set segment_container [ipx::add_memory_map $intf_name $core]  
            set_property SLAVE_MEMORY_MAP_REF $intf_name $ipx_intf
          } else {  
            set_property MASTER_ADDRESS_SPACE_REF $intf_name $ipx_intf              
            set_property MASTER_BASE_ADDRESS $low_addr $ipx_intf

            set segment_container [ipx::add_address_space $intf_name $core]
            set mas_range [expr $high_addr - $low_addr]
            set mas_bsl [sdx::util::clog2 $mas_range]

            set assign {}
            dict set assign RANGE             $mas_range
            dict set assign RANGE_FORMAT        bitString 
            dict set assign RANGE_BIT_STRING_LENGTH   $mas_bsl

            # TODO: fix this 
            dict set assign WIDTH             512

            dict set assign DISPLAY_NAME        $intf_name
            set_property -dict $assign $segment_container
          }

          # Construct actual segments and insert into the segment container
          dict for {segment_class segment_specs} [dict get $role_instance addr_segs] {
            for {set seg_num 0} {$seg_num < [dict get $segment_specs num_instances]} {incr seg_num} {
              set seg_idx [format %.2d $seg_num]
              set segment_instance_spec [dict get $segment_specs $seg_idx]
              
              set segment_offset [dict get $segment_instance_spec offset]
              set segment_range [dict get $segment_instance_spec range]

              set ipx_bus_interface_mode [get_property INTERFACE_MODE $ipx_intf]

              # Only custom_segment_roles have a dynamic name all others are aligned to segment class
              set segment_name ${segment_class}
              if {$segment_class == "custom_segment_role"} {
                set segment_name [dict get $segment_instance_spec custom_segment_role_name]
              }

              # Custom segment index is always applied for custom segment roles.
              # Standard segment roles can optionally specify a custom non-zero segment index. 
              set custom_segment_index [dict get $segment_instance_spec custom_segment_index]
              if {($segment_class == "custom_segment_role" || [llength $custom_segment_index] == 1) && [string is integer $custom_segment_index]} {
                set segment_name ${segment_name}_[format %.2d $custom_segment_index]
              } else {
                set segment_name ${segment_name}_${seg_idx}
              }

              if {[string match -nocase slave $ipx_bus_interface_mode]} {
                set ipx_segment [ipx::add_address_block $segment_name $segment_container]
              } else {
                set ipx_segment [ipx::add_segment $segment_name $segment_container]
              }

              set assign {}
              dict set assign NAME [string toupper $segment_name]
              dict set assign DISPLAY_NAME $segment_name

              # Different property names / property set based on role :/
              if {[string match -nocase slave $ipx_bus_interface_mode]} {
                dict set assign BASE_ADDRESS $segment_offset
                dict set assign BASE_ADDRESS_FORMAT bitString
                dict set assign BASE_ADDRESS_BIT_STRING_LENGTH [sdx::util::clog2 $segment_offset]

                # TODO: FIX THIS
                dict set assign WIDTH 512
                dict set assign USAGE memory
                dict set assign ACCESS "read-write"
              } else {
                dict set assign ADDRESS_OFFSET $segment_offset
                dict set assign ADDRESS_OFFSET_FORMAT bitString
                dict set assign ADDRESS_OFFSET_BIT_STRING_LENGTH [sdx::util::clog2 $segment_offset]
              }

              set range_bytes  [sdx::util::range_str_to_bytes $segment_range]
              dict set assign RANGE $range_bytes
              dict set assign RANGE_FORMAT bitString
              dict set assign RANGE_BIT_STRING_LENGTH [sdx::util::clog2 $range_bytes] 

              set_property -dict $assign $ipx_segment
            }
          }
        }
      }        
    }
  }
}


puts "-------------------------------------------------------"
puts "-- APPLY ASSOCIATED_BUSIF"
dict for {clock_port associated_interfaces } $associated_busifs {
  set associated_interface_names {}
  set ipx_intf [dict get $ipx_busifs $clock_port]
  foreach i $associated_interfaces {
    set ipx_bif_name [get_property NAME [dict get $ipx_busifs $i]]
    set ipx_bif_name [string map -nocase {data. {} intr. {}} $ipx_bif_name]
    lappend associated_interface_names $ipx_bif_name
  }
  set v [join $associated_interface_names :]
  set bif_param [ipx::add_bus_parameter ASSOCIATED_BUSIF $ipx_intf]
  set_property VALUE $v $bif_param
}

puts "-------------------------------------------------------"
puts "-- APPLY ASSOCIATED_RESET"
dict for {clock_port reset_ports} $associated_reset {
  set ipx_intf [dict get $ipx_busifs $clock_port]
  set bif_param [ipx::add_bus_parameter ASSOCIATED_RESET $ipx_intf]
  set_property VALUE [join $reset_ports :] $bif_param
}

puts "-------------------------------------------------------"
puts "-- Add Interface UUID user parameter"
set interface_uuid_parameter [ipx::add_user_parameter INTERFACE_UUID $core]
set_property VALUE 0 $interface_uuid_parameter

# The enablement of this parameter must be set to FALSE.   
# This parameter is intended to be read-only within the vivado tool flow.
# Raptor2 will adjust the value of the property using packager tcl when the resolved 
# interface-uuid value is calculated during chassis implementation.
set_property ENABLEMENT_VALUE false $interface_uuid_parameter
set_property ENABLEMENT_RESOLVE_TYPE immediate $interface_uuid_parameter

puts "-------------------------------------------------------"
puts "-- GUI FILES"
ipx::create_xgui_files $core

set wiz_ipdef [ipx::get_cores *pxi_ii_wizard*]
set wiz_ipdef_path [get_property ROOT_DIRECTORY $wiz_ipdef]
puts "wiz_ipdef_path $wiz_ipdef_path"
file mkdir $output_dir_name/data
file copy -force $wiz_ipdef_path/data/icon.png $output_dir_name/data/icon.png
set util_filegroup [ipx::add_file_group -type utility {} $core]
set util_file [ipx::add_file data/icon.png $util_filegroup]
set_property type LOGO $util_file

puts "-------------------------------------------------------"
puts "-- FAMILY_SUPPORT"

set_property supported_families { } $core
set_property auto_family_support_level level_2 $core

set_property DISPLAY_NAME [get_property CONFIG.VLNV.NAME $wiz_ip] $core

puts "-------------------------------------------------------"
puts "-- BUILD IDENTIFIER"
set build_param [ipx::add_user_parameter "IPDEF.P4CL" $core]
set_property display_name "IPDEF.P4CL" $build_param
set_property value_resolve_type USER $build_param
set_property value_format long $build_param
catch {exec p4 opened} p4opened
set p4cl 0
if {[string match -nocase "File(s) not opened on this client." $p4opened]} {
  set p4have [exec p4 changes -m1 \#have]
  set p4cl [lindex [split $p4have " "] 1]
} 
 
set_property value $p4cl $build_param
set_property enablement_resolve_type immediate $build_param
set_property enablement_value false $build_param

puts "-------------------------------------------------------"
puts "-- CHECKSUM INTEGRITY AND SAVE"
ipx::update_checksums $core
ipx::check_integrity $core
ipx::save_core $core

puts "END: PACKAGE_BD"
puts "--------------------------------------------------------"
