###############################################################################
##
## (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distroibuted herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.
##

source resource_util.tcl

proc init { cell params } {

}

# SLR automation pre propogate...forgiving --> allowed not to set on kernel masters
# hard-coded at the moment to SLR0-2
proc set_slr_info_env { cell } {

   global env

   # Get SLR information
   if {[get_param ips.enableSLRParameter] != 0} {
   
      set slr_info [dict create]

      # Loop through all slave ports and discover AXI connection
      foreach si [get_bd_intf_pins $cell/S*AXI] {
         if {$::hbm_memory_subsystem::pcie_dma_auto_address} {
            set pci_port [format S%.2d_AXI $::hbm_memory_subsystem::pcie_dma_auto_address_port]
            if [regexp $pci_port $si] {
               continue
            }
         }
         set endpoint [find_bd_objs -thru_hier -relation addressing_master $si]
         if {[llength $endpoint] == 1} {
            set slr_assignment [get_property CONFIG.SLR_ASSIGNMENT $endpoint]
            if {[llength $slr_assignment] == 1} {
               # hardcoded to 0/1/2 - check per device here?
               if {![regexp {^SLR[012]$} $slr_assignment]} {
                  send_msg_id {hbm_memory_subsystem 1-1} ERROR "Master interface $i has invalid SLR_ASSIGNMENT - $slr_assignment - should be limited to SLR0-2"
                  return;
               }
               # Snn_SLR key
               regsub _AXI [get_property NAME $si] _SLR key
               dict set slr_info $key $slr_assignment
            } else {
               # Allowed not to set but default will be used in the IP
            }
         # Think this should be OK
         } else {
            send_msg_id {hbm_memory_subsystem 1-1} ERROR "Point to point connections allowed only on $si - more than one connection :: $endpoint"
         }
      }
      set env(HMSS_SLR_INFO) "$slr_info"
   } else {
      send_msg_id {hbm_memory_subsystem 1-1} INFO "SLR automation is not enabled for HMSS"
   }
}

# Gather random access information
proc set_ra_info_env { cell } {

   global env

   # Get Random Access information
   # - Note that currently supplied by environment variable, should be supplied by properties
   #   on IP in longer term
   if [info exists ::env(HMSS_RA_PORT_LIST)] {

      set list_of_ra_ports {}
      set port_error 0
      set ra_info [dict create]

      # This should contain a list of strings used to find ports that are to be marked as 
      # random access...first check that string matches a bd_intf_pin(s)
      if {[llength $::env(HMSS_RA_PORT_LIST)] > 0} {
         foreach master_string $::env(HMSS_RA_PORT_LIST) {
            set master_ports [get_bd_intf_pins $master_string]
            # Should match at least one port or we get an error
            if {[llength $master_ports] > 0} {
               foreach port $master_ports {
                  lappend list_of_ra_ports $port
               }
            } else {
               incr port_error
               send_msg_id {hbm_memory_subsystem 1-1} WARNING "Could not find a kernel master port match for $master_string in order to apply random access constraint"
            }
         }
      }


      # Error out only when all mismatches are found
      if {$port_error > 0} {
         send_msg_id {hbm_memory_subsystem 1-1} ERROR "Could not find $port_error kernel master ports to apply random access constraint"
      }


      # Ports are found, now get related HMSS port to apply actual constraint on
      foreach si [get_bd_intf_pins $cell/S*AXI] {
         # Get param to be applied
         regsub _AXI [get_property NAME $si] _RA key
         # Skip PCIe port
         if {$::hbm_memory_subsystem::pcie_dma_auto_address} {
            set pci_port [format S%.2d_AXI $::hbm_memory_subsystem::pcie_dma_auto_address_port]
            if [regexp $pci_port $si] {
               continue
            }
         }
         set endpoint [find_bd_objs -thru_hier -relation addressing_master $si]
         # Presume single match
         set port_idx [lsearch -exact $list_of_ra_ports $endpoint]
         if {$port_idx > -1} {
            dict set ra_info $key 1
            # Delete from list for book-keeping
            set list_of_ra_ports [lreplace $list_of_ra_ports $port_idx $port_idx]
         }
      }


      # Final check that all ports were consumed i.e. ports not connecting to HMSS were not specified
      if {[llength $list_of_ra_ports] > 0} {
         send_msg_id {hbm_memory_subsystem 1-1} ERROR "Ports not connected to hbm_memory_subsystem cannot be specified for random access :: $list_of_ra_ports"
      }

      set env(HMSS_RA_INFO) "$ra_info"
   }

}

# Gather clock and reset info and pass in
proc set_clkrst_info_env { cell } {

   global env
   
   # Figure out all of the clock domains connected
   set attached_clocks {}
   foreach clock_pin [get_bd_pins $cell/aclk*] {
      set attached_clock_source [find_bd_objs -thru_hier -relation connected_to $clock_pin]
      set attached_clock_net [get_bd_nets -quiet -of $attached_clock_source]
      if {[llength $attached_clock_source] == 1} {
        dict set attached_clocks $attached_clock_net [get_property NAME $clock_pin]
      } else {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Clock info gather :: Found $clock_pin on $cell but it is not connected to any clock source"
        return;
      }
   }
   
   # Figure out all of the resets connected
   set attached_resets {}
   foreach reset_pin [get_bd_pins $cell/aresetn*] {
      set attached_reset [get_bd_nets -quiet -of $reset_pin]
      if {[llength $attached_reset] == 1} {
        dict set attached_resets $attached_reset [get_property NAME $reset_pin]
      } else {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Found $reset_pin but it is not connected to any reset source"
        return;
      }
   }

   # Loop through all interfaces and for each interface
   # - Tag the clock that it MUST be connected to
   # - Tag WHETHER there is a reset and if so WHICH reset
   foreach si [get_bd_intf_pins $cell/S*AXI] {

      # Key for storage
      set key [get_property NAME $si]
      
      # Fixed for PCIe port
      if {$::hbm_memory_subsystem::pcie_dma_auto_address} {
         set pci_port [format S%.2d_AXI $::hbm_memory_subsystem::pcie_dma_auto_address_port]
         if [regexp $pci_port $si] {
            dict set clkrst_info $key ACLK     aclk
            dict set clkrst_info $key ARESETN  aresetn
            dict set clkrst_info $key KERNEL   PCIE_HOST_MASTER
            continue
         }
      }

      # ---------
      # Clocking
      # Find the connected AXI port
      set master_interface [find_bd_objs -thru_hier -relation addressing_master $si]

      # Get the related clock domain
      set master_cell [get_bd_cells -of $master_interface]
      set source_clock_pin [hbm_memory_subsystem::util::find_associated_clock_pin $master_interface]
      set master_clock_pin [find_bd_objs -thru_hier -relation connected_to $source_clock_pin]
      if {[llength $source_clock_pin] == 0} {
         send_msg_id {hbm_memory_subsystem 1-1} ERROR "Clock info gather :: Could not identify a clock source pin of $master_interface on $master_cell..."
         return;
      }
      set mi_clock_net [get_bd_nets -quiet -of $master_clock_pin]
      if {[llength $mi_clock_net] == 0} {
         send_msg_id {hbm_memory_subsystem 1-1} ERROR "Clock info gather :: Clock source pin $source_clock_pin of $master_interface on $master_cell is not connected..."
         return;
      }
      set source_clock_domain [hbm_memory_subsystem::util::get_clock_domain $source_clock_pin]
      
      # Store the relevant clock input for this port (Note also store the kernel bd cell for use in grouping)
      # - Not using clock domains here...does not seem to work correctly..net should be fine
      if {[dict exists $attached_clocks $mi_clock_net]} {
         dict set clkrst_info $key ACLK [dict get $attached_clocks $mi_clock_net]
         dict set clkrst_info $key KERNEL [get_property NAME $master_cell]
      } else {
         send_msg_id {hbm_memory_subsystem 1-1} ERROR "Clock info gather :: Clock source pin $source_clock_pin of $master_interface on $master_cell is not connected..."
         return;
       }
       
      # ---------
      # Related
      # Get the related reset if there
      set source_reset_pin [get_property CONFIG.ASSOCIATED_RESET $source_clock_pin]
      set mi_reset_net NA
      # If no associated reset then warn
      if {[llength $source_reset_pin]> 0} {
         set source_reset_pin [get_bd_pins $master_cell/$source_reset_pin]
         set mi_reset_net [get_bd_nets -quiet -of $source_reset_pin]
         if {[llength $mi_reset_net] == 0} {
            send_msg_id {hbm_memory_subsystem 1-1} ERROR "Reset Info gather :: Reset source pin $mi_reset_net of $master_interface on $master_cell is not connected..."
            return;
         }
      }

      # Store the relevant reset input for this port (NA if none)
      if {[dict exists $attached_resets $mi_reset_net]} {
         dict set clkrst_info $key ARESETN [dict get $attached_resets $mi_reset_net]
      } else {
         dict set clkrst_info $key ARESETN NA
       }
   }

   set env(HMSS_CLK_RST_KRNL_INFO) "$clkrst_info"

}

# Gather any back-door specified port locations...get out of jail
proc set_portloc_info_env { cell } {

   global env

   # Gather portloc information from environment variable dictionary
   if [info exists ::env(HMSS_PORTLOC_PORT_DICT)] {
   
       if {[llength $::env(HMSS_PORTLOC_PORT_DICT)] > 0} {

         set hmss_portloc_port_dict $::env(HMSS_PORTLOC_PORT_DICT)

         # Pathetic check that value is a dict
         if [expr [llength $hmss_portloc_port_dict] % 2] {
            send_msg_id {hbm_memory_subsystem 1-1} ERROR "HMSS_PORTLOC_PORT_DICT env variable needs to a dictionary of form <kernel_port> <Integer 0-31>"
            return
         }
         
         set list_of_portloc_ports {}
         set port_error 0
         set portloc_info [dict create]
         set hmss_portloc_port_dict_resolved [dict create]

         
         foreach master_string [dict keys $hmss_portloc_port_dict] {
            # Special case for host
            if {$master_string eq "HOST_PORTLOC"} {
               set master_port HOST_PORTLOC
            } else {
               set master_port [get_bd_intf_pins $master_string]
            }
            # Should match at least one port or we get an error
            if {[llength $master_port] > 0} {
               foreach port $master_port {
                  lappend list_of_portloc_ports $port
               }
               set portloc_data [dict get $hmss_portloc_port_dict $master_string]
               if {[llength $portloc_data] == 2} {
                  set portloc_port [lindex $portloc_data 0]
                  set portloc_ten  [lindex $portloc_data 1]
                  if {($portloc_port >= 0) && ($portloc_port < $::hbm_memory_subsystem::total_hbm_num_mi)} {
                     if {($portloc_ten >= 0) && ($portloc_ten <= 1)} {
                        dict set hmss_portloc_port_dict_resolved $master_port $portloc_data
                     } else {
                        incr port_error
                        send_msg_id {hbm_memory_subsystem 1-1} WARNING "Portloc traffic enable for a particular kernel master - $master_port - should be <0/1> not $portloc_ten"
                     }
                  } else {
                     incr port_error
                     send_msg_id {hbm_memory_subsystem 1-1} WARNING "Portloc port for a particular kernel master - $master_port - should be <0-31> not $portloc_port"
                  }
               } else {
                  incr port_error
                  send_msg_id {hbm_memory_subsystem 1-1} WARNING "Portloc constraints for a particular kernel master - $master_port - should be of form {<HBM Port (0-31)> <Traffic Enable (0/1)>}"
               }
            } else {
               incr port_error
               send_msg_id {hbm_memory_subsystem 1-1} WARNING "Could not find a kernel master port match for $master_string in order to apply portloc constraint"
            }
         }

         # Error out only when all mismatches are found
         if {$port_error > 0} {
            send_msg_id {hbm_memory_subsystem 1-1} ERROR "There were $port_error problems trying to apply portloc constraints. See previous portloc warnings.."
            return
         }


         # Ports are found, now get related HMSS port to apply actual constraint on
         foreach si [get_bd_intf_pins $cell/S*AXI] {
            # Get param to be applied
            regsub _AXI [get_property NAME $si] _PORTLOC key
            # Skip PCIe port
            if {$::hbm_memory_subsystem::pcie_dma_auto_address} {
               set pci_port [format S%.2d_AXI $::hbm_memory_subsystem::pcie_dma_auto_address_port]
               if [regexp $pci_port $si] {
                  set endpoint HOST_PORTLOC
               } else {
                  set endpoint [find_bd_objs -thru_hier -relation addressing_master $si]
               }
            } else {
               set endpoint [find_bd_objs -thru_hier -relation addressing_master $si]
            }
            # Presume single match
            set port_idx [lsearch -exact $list_of_portloc_ports $endpoint]
            if {$port_idx > -1} {
               dict set portloc_info $key [dict get $hmss_portloc_port_dict_resolved [lindex $list_of_portloc_ports $port_idx]]
               # Delete from list for book-keeping
               set list_of_portloc_ports [lreplace $list_of_portloc_ports $port_idx $port_idx]
            }
         }
   
   
         # Final check that all ports were consumed i.e. ports not connecting to HMSS were not specified
         if {[llength $list_of_portloc_ports] > 0} {
            send_msg_id {hbm_memory_subsystem 1-1} ERROR "Ports not connected to hbm_memory_subsystem cannot be specified for port locking :: $list_of_portloc_ports"
            return
         }
   
         set env(HMSS_PORTLOC_INFO) "$portloc_info"
      }
   }
}

proc pre_propagate { cell params } {
   set_slr_info_env $cell
   set_ra_info_env $cell
   set_clkrst_info_env $cell
   set_portloc_info_env $cell
}

