puts "--------------------------------------------------------"
puts "BEGIN: GENERATE_BD"

proc pdict { d {i 0} {c " "}} {
  set s ""
  set p [string repeat $c $i ]
  dict for {k v } $d {
    if {([llength $v] % 2) || ([llength $v] == 0)} {
      append s "$p{$k $v}\n"
    } else {
      append s "$p{$k\n[pdict $v [expr $i+2]]$p}\n"
    }
  }
  if {[string length $s] > 0} {
    return $s
  }
}

proc send_info {s} {
  send_msg_id {pxi_ii_wizard 1-1} INFO $s
}

proc send_cw {s} {
  send_msg_id {pxi_ii_wizard 1-1} {CRITICAL WARNING} $s
}

proc send_warning {s} {
  send_msg_id {pxi_ii_wizard 1-1} WARNING $s
}

proc send_error {s} {
  send_msg_id {pxi_ii_wizard 1-1} ERROR $s
}

set sep "."

# For some reason VLNV is called IPDEF in the ipinst object :?
set wiz_ip [get_ips -filter {IPDEF=~*pxi_ii_wizard*}]

# TODO: complete this DRC
# foreach num_instance_param [list_property $wiz_ip *.NUM_INSTANCES] {
#   set prefix [join [lrange [split $num_instance_param .] 0 end-1] .] 
#   for {set i 0} {$i < [get_property $num_instance_param $wiz_ip]} {incr i} {
#     set idx [format %.2d $i]
#     set prefix_params [list_property $wiz_ip ${prefix}.${idx}.*]
#     foreach p $prefix_params {
#       if {![string match USER [get_property ${p}.VALUE_SRC $wiz_ip]]} {
#         send_cw "Incomplete specification detected.  Property $p is required but has not been assigned a value..."
#       }    
#     }
#   }
# }

set config_mode [get_property CONFIG.MODE $wiz_ip]
puts "-- config_mode: $config_mode" 

foreach p [list_property $wiz_ip CONFIG.VLNV.*] {
  set vlnv_[string tolower [lindex [split $p .] end]] [get_property $p $wiz_ip]
}

set bd [create_bd_design $vlnv_name]
current_bd_design $bd

puts "-- Instantiate Isolation Core"
set ip [create_bd_cell -vlnv xilinx.com:ip:pxi_ii_core -set_params [list CONFIG.MODE $config_mode] pxi_ii_core]

puts "-- Construct Isolation Core Configuration Dictionary"
set d {}
set gen {}
set wiz_gen_properties [list_property $wiz_ip CONFIG.II.*]
foreach p $wiz_gen_properties {
  set v [get_property $p $wiz_ip]
  dict set gen {*}[lrange [split $p .] 2 end] $v
}

# Standardize on lower case
# TODO: move this to lowercase only for the property names - IPI / IP services has issues with case-sensitivity in value assignments
set gen [string tolower $gen]

dict for { type instances } $gen  {
  puts "-- type: $type"
  dict for { role role_spec } $instances {
    puts "-- role: $role"
    set num_instances [dict get $role_spec num_instances]
    if {$num_instances == 0} {
#      send_info "No instances of $type $role enabled."
    }
    for {set i 0} {$i < [dict get $role_spec num_instances]} {incr i} {
      set idx [format %.2d $i]
      set role_inst [dict get $role_spec $idx]
      
      set role_name ${role}_${idx}      
      if {$role == "custom_role"} {
        set custom_role_name [dict get $role_inst gen_params custom_role_name]
        set custom_role_index [format %.2d [dict get $role_inst gen_params custom_role_index]]        
        set role_name ${custom_role_name}_${custom_role_index}
        send_warning "Detected custom role: $role_name.   Custom roles should be avoided - contact the Raptor 2.0 platform architecture team for guidance."
      }

      dict for {class paramset} $role_inst {
        if {[string match -nocase $class "addr_segs"]} { continue }
        dict for { p v } $paramset {
          if {[string match -nocase $class "gen_params"] && [string match -nocase "custom_role_*" $p]} { continue }
          if {[string match -nocase "bif_params" $class] || [string match -nocase "ip_params" $class]} {
            set p config.$p
          }
          dict set d $type $role_name $class $p $v
        }
      }
    }
  }
}

if {[llength $d] == 0} {
  send_error "No instances enabled in pxi_ii_wizard"
}

set_property CONFIG.DICT $d $ip

puts "-- Create top-level interfaces to match isolation core configuration..."
#foreach i [get_bd_intf_pins -of $ip] {
#  make_bd_intf_pins_external -name [get_property NAME $i] $i
#}

puts "-- Create top-level signal ports to match isolation core configuration..."
#foreach i [get_bd_pins -of $ip -filter {INTF==FALSE}] {
#  make_bd_pins_external -name [get_property NAME $i] [get_bd_pins $ip/[get_property NAME $i]]
#}

#puts "-- Copy clock metadata to toplevel clock ports..."
## IPI BUG: (CR XXXXXXX) clock metadata is corrupted during make external
#foreach ip_clk_pin [get_bd_pins -filter {type==clk} -of $ip] {
#  set port [find_bd_objs -relation CONNECTED_TO $ip_clk_pin]
#  foreach p [list_property $port CONFIG.*] {
#    set_property CONFIG.$p [get_property CONFIG.$p $ip_clk_pin] $port
#  }
#}

foreach bif [get_bd_intf_pins -of $ip] {
  foreach p {vlnv mode name} {
    set $p [get_property $p $bif]
  }
  set ext_bif [create_bd_intf_port -mode $mode -vlnv $vlnv -name $name]
  foreach p [list_property $bif CONFIG.*] {
    set v [get_property $p $bif]
    set_property -quiet $p $v $ext_bif
  }
  connect_bd_intf_net $bif $ext_bif
}

foreach pin [get_bd_pins -of $ip -filter {INTF==false}] {
  foreach p {dir type name left right} {
    set $p [get_property $p $pin]
  }
  if {$left == ""} {
    set ext_pin [create_bd_port -dir $dir -type $type -name $name]
  } else {
    set ext_pin [create_bd_port -dir $dir -type $type -from $left -to $right -name $name]
  }
  foreach p [list_property $pin CONFIG.*] {
    set v [get_property $p $pin]
    set_property -quiet $p $v $ext_pin
  }
  connect_bd_net $pin $ext_pin
}

puts "-- Assign addresses, save and validate BD..."

assign_bd_addr
save_bd_design
validate_bd_design

puts "END: GENERATE_BD"
puts "--------------------------------------------------------"
