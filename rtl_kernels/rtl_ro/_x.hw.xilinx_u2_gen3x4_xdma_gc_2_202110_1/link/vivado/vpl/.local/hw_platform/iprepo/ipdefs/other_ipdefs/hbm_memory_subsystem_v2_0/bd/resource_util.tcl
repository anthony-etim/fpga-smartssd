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


namespace eval ::hbm_memory_subsystem {

  # ----------------------------------------------------------------------
  # Set up HBM memory info
  set HBM_DEVICE [get_property DEVICE [get_parts [get_property PART [current_project]]]]
  source config_part.tcl
  variable HBM_MEM_INFO [::util_config_part::get_hbm_mem_info $HBM_DEVICE]

  # May be less than 32 on CCIX platform
  variable total_hbm_num_mi [dict get $HBM_MEM_INFO total_hbm_num_mi]
  # Up to 33 ports allowed - 32 kernels + host
  variable total_hmss_num_mi [expr $total_hbm_num_mi+1]
  # May be less in other devices
  variable total_hbm_num_mc 16
  # Is PCIe DMA address space auto-mapping enabled?
  variable pcie_dma_auto_address 1
  variable pcie_dma_auto_address_port 0
  # Debug Control
  variable debugs 0
  variable quiet_str "-quiet"

  namespace eval util {

    # ####################################################################
    # find_associated_clock_pin
    ##
    proc find_associated_clock_pin { bd_intf_pin } {
      set interface [get_bd_intf_pins $bd_intf_pin]

      set parent_cell [get_bd_cells -of $interface]
      set interface_name [get_property NAME $interface]
      if {[llength $parent_cell] == 0 } {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Can't recover parent bdcell of $bd_intf_pin..."
        return {}
      }

      set parent_cell_clocks [get_bd_pins -of $parent_cell -filter {type=~clk}]
      foreach clock_pin $parent_cell_clocks {
        set associations [split [get_property CONFIG.ASSOCIATED_BUSIF $clock_pin] :]
        foreach a $associations {
          if {[string equal -nocase $a $interface_name]} {
            return $clock_pin
          }
        }
      }
    }
    
    # ####################################################################
    # get_clock_domain
    ##
    proc get_clock_domain { bd_obj } {
      return "[get_property CONFIG.CLK_DOMAIN $bd_obj]"
    }

    # ####################################################################
    # Figure out how many prohibited ports
    ##
    proc calc_hbm_prohibit_port_count {bd_obj} {
      set prohibit_count 0
      set ADVANCED_PROPERTIES [get_property CONFIG.ADVANCED_PROPERTIES [get_bd_cells $bd_obj]]
      if [dict exists $ADVANCED_PROPERTIES HBM_PORT_PROHIBIT] {
        set prohibit_list [dict get $ADVANCED_PROPERTIES HBM_PORT_PROHIBIT]
        foreach port $prohibit_list {
           if {[regexp {^S[0-3][0-9]_AXI$} $port] == 1} {
              incr prohibit_count
           }
        }
      }
      return $prohibit_count
    }

    # ####################################################################
    # Validate master interface
    ##
    proc validate_master_interface {master_interface} {
      set intf_pins [get_bd_intf_pins $master_interface]
      if {[llength $intf_pins] > 0} {
        set mi_vlnv [get_property VLNV $master_interface]
        if {![string match "xilinx.com:interface:aximm_rtl:*" $mi_vlnv]} {
          send_msg_id {hbm_memory_subsystem 1-1} ERROR "$master_interface is not an AXI Memory Mapped Master Interface :: $mi_vlnv"
          return;
        }
      } else {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "$master_interface is not a valid interface port"
        return;
      }
    }
    
    # ####################################################################
    # Validate hmss cell
    ##
    proc validate_hmss_cell {hmss_cell} {
      set memory_subsystem [get_bd_cells $hmss_cell]
      set memory_subsystem_vlnv [get_property VLNV $hmss_cell]
      if {![string match "xilinx.com:ip:hbm_memory_subsystem:*" $memory_subsystem_vlnv]} {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "$hmss_cell is not a hbm_memory_subsystem instance"
        return;
      }
    }

  }

  # ####################################################################
  # debug_info
  ##
  proc debug_info {msg} {

     variable debugs

     if {$debugs} {
        send_msg_id {hbm_memory_subsystem 1-2} INFO $msg
     }

  }

  # ####################################################################
  # enable_debug
  ##
  proc enable_debug {} {

     variable debugs
     variable quiet_str

     set debugs 1
     set quiet_str ""

  }

  # ####################################################################
  # get_memory_resources
  ##
  proc get_memory_resources { hmss_cell } {
  
     variable total_hmss_num_mi
     variable HBM_MEM_INFO

     # Validate hmss_cell
     util::validate_hmss_cell $hmss_cell

     # Return fixed value for memory resources
     for {set i 0} {$i < 32} {incr i} {
        set bank [format HBM_MEM%.2d $i]
        dict set resources $bank size [lindex [dict get $HBM_MEM_INFO RANGE_OFFSET $bank] 0]
        dict set resources $bank data_width 256
        # 100% efficiency
        dict set resources $bank peak_memory_bandwidth 14400
        # Total - host (take prohibit ports into account)
        set hbm_port_prohibit_count [util::calc_hbm_prohibit_port_count $hmss_cell]
        set total_available_port [expr ($total_hmss_num_mi - $hbm_port_prohibit_count)]
        dict set resources $bank max_masters [expr $total_available_port-1]
        dict set resources $bank slr SLR0
      }
      return $resources
  }

  # ####################################################################
  # map_memory_resource
  ##
  proc map_memory_resource { master_interface hmss_cell memory_dict } {

     # ---------------------------------------------------------------------------------
     # Gather all required info and error check
     # Memory parameters
     variable total_hmss_num_mi
     variable total_hbm_num_mc
     variable pcie_dma_auto_address
     variable pcie_dma_auto_address_port
     variable quiet_str

     # TODO remove this
     variable HBM_MEM_INFO

     # This will hold all the connection parameters
     set this_connection [dict create]

     # If PCIe DMA auto-mapping is enabled then have to have that port connected now
     if {$pcie_dma_auto_address} {
        set dma_port [format s%.2d_AXI $pcie_dma_auto_address_port]
        if {[get_property CONFIG.NUM_SI $hmss_cell] <= $pcie_dma_auto_address_port} {
           send_msg_id {hbm_memory_subsystem 1-1} ERROR "PCIE DMA (auto-mapping is enabled) should be connected to port $pcie_dma_auto_address_port. This port is not even enabled."
           return;
        }
     }

     # Validate master_interface
     util::validate_master_interface $master_interface
     dict set this_connection master_interface $master_interface

     # Validate hmss_cell
     util::validate_hmss_cell $hmss_cell

     # Check contents of dictionary
     if {[dict exists $memory_dict mems]} {
        set mem_list  [dict get $memory_dict mems]
        set rama_list [dict get $memory_dict ra]
        foreach mem $mem_list {
           if {[regexp {^HBM_MEM[0-1][0-9]$} $mem] == 0} {
              send_msg_id {hbm_memory_subsystem 1-1} ERROR "Memory segment $mem specified for master $master_interface is not of form HBM_MEM[0-3][0-9]"
              return;
           }
        }
     } else {
        # HACK for now....list of memory segments
        set mem_list  $memory_dict
        set rama_list 0
        foreach mem $mem_list {
           if {[regexp {^HBM_MEM[0-3][0-9]$} $mem] == 0} {
              send_msg_id {hbm_memory_subsystem 1-1} ERROR "Memory segment $mem specified for master $master_interface is not of form HBM_MEM[0-3][0-9]"
              return;
           }
        }
        # Add this back in if API gets extended
        #send_msg_id {hbm_memory_subsystem 1-1} ERROR "It is neccessary to specify a set of memory segment in the dictionary dict key::mems"
        #return;
     }
     dict set this_connection mems $mem_list
     dict set this_connection ra   $rama_list
     
     # Find the master interface and check that it is not already connected to something
     set mi_net [get_bd_intf_nets -quiet -of [dict get $this_connection master_interface]]
     if {[llength $mi_net] > 0} {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Master interface [dict get $this_connection master_interface] is already connected to $mi_net - not permitted currently"
        return;
     }

     # Find the clock associated with the master interface
     set master_cell [get_bd_cells -of $master_interface]
     set source_clock_pin [util::find_associated_clock_pin $master_interface]
     set master_clock_pin [find_bd_objs -thru_hier -relation connected_to $source_clock_pin]
     set source_clock_domain [util::get_clock_domain $master_interface]
     if {[llength $source_clock_pin] == 0} {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Could not identify a clock source pin of $master_interface on $master_cell..."
        return;
     }
     set mi_clock_net [get_bd_nets -quiet -of $master_clock_pin]
     if {[llength $mi_clock_net] == 0} {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Clock source pin $source_clock_pin of $master_interface on $master_cell is not connected..."
        return;
     }
     dict set this_connection source_clock_pin $source_clock_pin
     dict set this_connection source_clock     $mi_clock_net

     # Figure out if clock is already connected
     set attached_clocks {}
     foreach clock_pin [get_bd_pins $hmss_cell/aclk*] {
        set attached_clock_source [find_bd_objs -thru_hier -relation connected_to $clock_pin]
        set attached_clock_net [get_bd_nets -quiet -of $attached_clock_source]
        if {[llength $attached_clock_source] == 1} {
          dict set attached_clocks $attached_clock_net $attached_clock_source
        } else {
          send_msg_id {hbm_memory_subsystem 1-1} ERROR "Found $clock_pin but it is not connected to any clock source"
          return;
        }
     }

     # Clock domains don't work at this stage - using clock net
     if {[dict exists $attached_clocks $mi_clock_net]} {
        dict set this_connection new_clk 0
        dict set this_connection num_si_clk [get_property CONFIG.NUM_SI_CLKS $hmss_cell]
     } else {
        dict set this_connection new_clk 1
        dict set this_connection num_si_clk [expr [get_property CONFIG.NUM_SI_CLKS $hmss_cell] + 1]
     }
     
     # Find resets already connected
     set attached_resets {}
     foreach reset_pin [get_bd_pins $hmss_cell/aresetn*] {
        set attached_reset [get_bd_nets -quiet -of $reset_pin]
        if {[llength $attached_reset] == 1} {
          dict set attached_resets [get_property NAME $attached_reset] $reset_pin
        } else {
          send_msg_id {hbm_memory_subsystem 1-1} ERROR "Found $reset_pin but it is not connected to any reset source"
          return;
        }
     }

     # Find the reset associated with the clock
     set source_reset_pin [get_property CONFIG.ASSOCIATED_RESET $source_clock_pin]
     set mi_reset_net {}
     # If no associated reset then warn
     if {[llength $source_reset_pin] == 0} {
        send_msg_id {hbm_memory_subsystem 1-1} WARNING "Could not identify a reset source pin of $master_interface on $master_cell..."
     # If we have an associated reset then check that it is connected and error out if not
     } else {
        set parent_cell [get_bd_cells -of [dict get $this_connection master_interface]]
        set source_reset_pin [get_bd_pins $parent_cell/$source_reset_pin]
        set mi_reset_net [get_bd_nets -quiet -of $source_reset_pin]
        if {[llength $mi_reset_net] == 0} {
           send_msg_id {hbm_memory_subsystem 1-1} ERROR "Reset source pin $mi_reset_net of $master_interface on $master_cell is not connected..."
           return;
        }
     }
     dict set this_connection source_reset_pin $source_reset_pin

     # Check if this reset is already connected
     dict set this_connection new_reset 0
     dict set this_connection num_si_aresetn [get_property CONFIG.NUM_SI_ARESETN $hmss_cell]
     # If we found a reset and it is not already connected then flag it for connection
     if {[llength $source_reset_pin] > 0} {
        set source_reset_net [get_property NAME $mi_reset_net]
        if {![dict exists $attached_resets $source_reset_net]} {
           dict set this_connection new_reset 1
           dict set this_connection num_si_aresetn [expr [get_property CONFIG.NUM_SI_ARESETN $hmss_cell] + 1]
        }
     }

     # Find the next available port to connect to on hbm_memory_subsystem
     set port_idx [get_property CONFIG.NUM_SI $hmss_cell]

     # Check if we have overflowed - total ports = $total_hmss_num_mi - hbm prohibited ports
     # - Figure out number of prohibited ports
     set hbm_port_prohibit_count [util::calc_hbm_prohibit_port_count $hmss_cell]
     set total_available_port [expr ($total_hmss_num_mi - $hbm_port_prohibit_count)]

     if {$port_idx == $total_available_port} {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "You have run out of port connections on $hmss_cell. All $total_available_port connections are used ($hbm_port_prohibit_count ports prohibited)..."
        return;
     }
     dict set this_connection port_idx $port_idx
     dict set this_connection num_si [expr $port_idx + 1]

     # ---------------------------------------------------------------------------------
     # Have all the info now reconfigure/connect/map for this port

     send_msg_id {hbm_memory_subsystem 1-1} INFO "Mapping resources for kernel master [dict get $this_connection master_interface] on HMSS port [dict get $this_connection port_idx]."

     # ---------
     # Reconfigure IP

     # Enable new AXI port

     # Enable RAMA
     set rama_en [format S%.2d_RA [dict get $this_connection port_idx]]

     # Configure AXI port
     set si_mem [format S%.2d_MEM [dict get $this_connection port_idx]]

     # Set CONFIG properties together for speed (IP is regenerated)
     set_property -dict [list CONFIG.NUM_SI         [dict get $this_connection num_si] \
                              CONFIG.NUM_SI_CLKS    [dict get $this_connection num_si_clk] \
                              CONFIG.NUM_SI_ARESETN [dict get $this_connection num_si_aresetn] \
                              CONFIG.$si_mem        [dict get $this_connection mems] \
                              CONFIG.$rama_en       [dict get $this_connection ra]] $hmss_cell
               
     # --------
     # Connect to IP

     # Connect AXI port
     set si_port [format S%.2d_AXI [dict get $this_connection port_idx]]
     set si [get_bd_intf_pins $hmss_cell/$si_port]
     connect_bd_intf_net [dict get $this_connection master_interface] $si

     # Connect AXI clock/reset
     if [dict get $this_connection new_clk] {
        set num_clks [dict get $this_connection num_si_clk]
        set si_clk aclk
        if {$num_clks > 1} { set si_clk aclk[expr $num_clks - 1] }
        connect_bd_net [get_bd_pins $hmss_cell/$si_clk] [dict get $this_connection source_clock_pin]
     }
     
     if [dict get $this_connection new_reset] {
        set num_resets [dict get $this_connection num_si_aresetn]
        set si_aresetn aresetn
        if {$num_resets > 1} { set si_aresetn aresetn[expr $num_resets - 1] }
        connect_bd_net [get_bd_pins $hmss_cell/$si_aresetn] [dict get $this_connection source_reset_pin]
     }
     
     # --------
     # Address segments for this port

     # Map data memory segments for this master - note that no attempt here to map through soft switches etc
     # - HBM has a hard switch. This should be used for any switching - point-to-point only for now...
     set mem_segs [get_bd_addr_segs -of $si]
     # Check that segment number are as expected
     if {[llength $mem_segs] != [llength [dict get $this_connection mems]]} {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Memory segments requested not presented at output of IP (count different)"
     }

     debug_info "Mapping data segments for kernel master [dict get $this_connection master_interface]."

     # Assign the segments
     set mas [get_bd_addr_space -of [dict get $this_connection master_interface]]
     # Correct way...expose only the correct segments
     foreach slave_seg $mem_segs {
        if {[info exists ::env(HMSS_BOUNDARY_EASY_ASSIGN_ADDR)]} {
           assign_bd_address $quiet_str -target_address_space $mas $slave_seg
        } else {
           foreach hbm_seg [dict keys [dict get $HBM_MEM_INFO RANGE_OFFSET]] {
             if [regexp $hbm_seg $slave_seg] {
                set range  [lindex [dict get $HBM_MEM_INFO RANGE_OFFSET $hbm_seg] 0]
                set offset [lindex [dict get $HBM_MEM_INFO RANGE_OFFSET $hbm_seg] 1]
                #assign_bd_address $quiet_str $seg
                set created_seg [create_bd_addr_seg -range $range -offset $offset $mas $slave_seg $hbm_seg]
             }
           }
        }
     }

     debug_info "Mapping control segments for kernel master [dict get $this_connection master_interface]."

     # ---------------------------------------------------------------------------------
     # CTRL segment mapping
     # If any new CTRL memory segments are created then map

     # Get master segments
     set ctrl_master [find_bd_objs -relation CONNECTED_TO [get_bd_intf_pins $hmss_cell/S_AXI_CTRL]]
     set cmas [get_bd_addr_space -of $ctrl_master]
     set cmas_segs [get_bd_addr_segs -of $cmas]

     # Get slave segments
     set cmem_segs [get_bd_addr_segs -of [get_bd_intf_pins $hmss_cell/S_AXI_CTRL]]

     # Check for each slave segment if it is already mapped into ctrl_master
     # if not then map it..probably don't need to worry about this (remapping is not a problem)
     foreach cslave_seg $cmem_segs {
        # Exclude first and only include "desired" segments
        exclude_bd_addr_seg $quiet_str $cslave_seg -target_address_space $cmas
        if {[lsearch -exact $cmas_segs $cslave_seg] == -1} {
           # Loose mapping due to /Mem problem
           assign_bd_address $quiet_str -target_address_space $cmas $cslave_seg
           include_bd_addr_seg $quiet_str [get_bd_addr_segs -excluded -of $cslave_seg]
        }
     }

     # ---------------------------------------------------------------------------------
     # Update PCIe address mappings

     if {$pcie_dma_auto_address} {
        set dma_mem_store {}

        debug_info "Updating segment mapping for PCIe DMA on port $pcie_dma_auto_address_port."

        # First find all of the segments that should be mapped into PCIe DMA space
        for {set port_idx 0} {$port_idx < [dict get $this_connection num_si]} {incr port_idx} {
           # Note: Need to skip DMA port in summary as this starts off as all segments
           if {$port_idx != $pcie_dma_auto_address_port} {
              set si_mem [format S%.2d_MEM $port_idx]
              lappend dma_mem_store {*}[get_property CONFIG.$si_mem $hmss_cell]
           }
        }

        # Update the port MEM properties
        set dma_mem [format S%.2d_MEM $pcie_dma_auto_address_port]
        set dma_mem_unique [lsort -unique $dma_mem_store]
        # PCIe always sees HBM_MEM00 due to need for base segment for IPI segment combining (IPI limitation)
        lappend dma_mem_unique HBM_MEM00
        set dma_mem_unique [lsort -unique $dma_mem_unique]        
        set_property CONFIG.$dma_mem $dma_mem_unique [get_bd_cells $hmss_cell]

        # Remapping is not a problem...remap everything each time
        set dma_si_port [format S%.2d_AXI $pcie_dma_auto_address_port]
        set dma_si [get_bd_intf_pins $hmss_cell/$dma_si_port]
        set dma_master [find_bd_objs -relation addressing_master $dma_si]
        
        # Find unaddressed segments
        set current_segs [get_bd_addr_segs -of $dma_si]
        set addressed_segs [get_bd_addr_segs -addressed -of $dma_si]
        # Find all unaddressed segs
        foreach seg $addressed_segs {
           set current_segs [lsort -unique [lsearch -all -inline -not -exact $current_segs $seg]]
        }

        # Correct way...expose only the correct segments
        if {[llength $current_segs] > 0} {
           foreach seg $current_segs  {
              if {[info exists ::env(HMSS_BOUNDARY_EASY_ASSIGN_ADDR)]} {
                 assign_bd_address $quiet_str $seg
              } else {
                 foreach hbm_seg [dict keys [dict get $HBM_MEM_INFO RANGE_OFFSET]] {
                   if [regexp $hbm_seg $seg] {
                      set range  [lindex [dict get $HBM_MEM_INFO RANGE_OFFSET $hbm_seg] 0]
                      set offset [lindex [dict get $HBM_MEM_INFO RANGE_OFFSET $hbm_seg] 1]
                      #assign_bd_address $quiet_str $seg
                      set created_seg [create_bd_addr_seg -range $range -offset $offset [get_bd_addr_space -of $dma_master] $seg $hbm_seg]
                   }
                 }
              }
           }
        }
     }
  }

  # ####################################################################
  # map_memory_resources
  ##
  proc map_memory_resources { hmss_cell memories_dict } {

     # Loop through each of the keys expanding and passing to map_memory_resource
     foreach master_interface [dict keys $memories_dict] {
        set memory_dict [dict get $memories_dict $master_interface]
        set master_interface [get_bd_intf_pins [format %s $master_interface]]

        map_memory_resource $master_interface $hmss_cell $memory_dict
     }

  }
  
   # ####################################################################
   # Gather random access information
   ##
   proc ra_master_interface { master_interface hmss_cell } {

     # Validate master_interface
     util::validate_master_interface $master_interface

     # Validate hmss_cell
     util::validate_hmss_cell $hmss_cell
     
     # Get pin
     set master_port [get_bd_intf_pins $master_interface]

     # Validate hmss_cell
     set memory_subsystem $hmss_cell
     set memory_subsystem_vlnv [get_property VLNV $hmss_cell]
     if {![string match "xilinx.com:ip:hbm_memory_subsystem:*" $memory_subsystem_vlnv]} {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "$hmss_cell is not a hbm_memory_subsystem instance"
        return;
     }

     # Port is found, now get related HMSS port to apply actual constraint on
     set match 0
     foreach si [get_bd_intf_pins $hmss_cell/S*AXI] {
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
        set port_idx [lsearch -exact [list $master_port] $endpoint]
        if {$port_idx > -1} {
          set_property -dict [list CONFIG.$key 1] $hmss_cell
          send_msg_id {hbm_memory_subsystem 1-1} INFO "Random access noted on port $si from port $master_interface"
          set match 1
        }
     }
     if {$match == 0} {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Interface $master_interface does not seem to be connected to cell $hmss_cell"
     }
   }
   
   # ####################################################################
   # Assign host port
   ##
   proc force_kernel_port {master_interface interface_num include_traffic_calc hmss_cell } {

     # Global
     variable total_hbm_num_mi
     
     # Validate master_interface
     util::validate_master_interface $master_interface

     # Validate hmss_cell
     util::validate_hmss_cell $hmss_cell

     # Get master_interface pin
     set master_port [get_bd_intf_pins $master_interface]

     # Port is found, now get related HMSS port to apply actual constraint on
     set match 0
     foreach si [get_bd_intf_pins $hmss_cell/S*AXI] {
        # Get param to be applied
        regsub _AXI [get_property NAME $si] _PORTLOC key
        # Skip PCIe port
        if {$::hbm_memory_subsystem::pcie_dma_auto_address} {
           set pci_port [format S%.2d_AXI $::hbm_memory_subsystem::pcie_dma_auto_address_port]
           if [regexp $pci_port $si] {
              continue
           }
        }
        set endpoint [find_bd_objs -thru_hier -relation addressing_master $si]
        # Presume single match
        set port_idx [lsearch -exact [list $master_port] $endpoint]
        if {$port_idx > -1} {
          set match 1
          set interface $key
        }
     }
     if {$match == 0} {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Interface $master_interface does not seem to be connected to cell $hmss_cell"
        return;
     }

     # Check values
     if {($interface_num >= 0) && ($interface_num < $total_hbm_num_mi)} {
        if {!(($include_traffic_calc >= 0) && ($include_traffic_calc <= 1))} {
           send_msg_id {hbm_memory_subsystem 1-1} ERROR "Force HBM traffic enable for a particular kernel master - $master_port - should be <0/1> not $include_traffic_calc"
           return;
        }
     } else {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Force HBM port for a particular kernel master - $master_port - should be <0-31> not $interface_num"
        return;
     }
     
     # Pass into HIP - retain properties already there...
     set current_properties [get_property CONFIG.ADVANCED_PROPERTIES [get_bd_cells $hmss_cell]]
     if {[llength $current_properties] > 1} {
        set ADVANCED_PROPERTIES $current_properties
     }
     dict set ADVANCED_PROPERTIES PORTLOC $interface [list $interface_num $include_traffic_calc]
     set_property -dict [list CONFIG.ADVANCED_PROPERTIES $ADVANCED_PROPERTIES] [get_bd_cells $hmss_cell]
     send_msg_id {hbm_memory_subsystem 1-1} INFO "Forced kernel port $master_interface through $hmss_cell port $si to connect to HBM port $interface_num - traffic calculation = $include_traffic_calc"
   }
   
   # ####################################################################
   # Assign host port
   ##
   proc force_host_port { interface_num include_traffic_calc hmss_cell } {
   
     # Variables
     variable total_hbm_num_mi
     variable pcie_dma_auto_address_port

     # Validate hmss_cell
     util::validate_hmss_cell $hmss_cell
     
     # Check values
     if {($interface_num >= 0) && ($interface_num < $total_hbm_num_mi)} {
        if {!(($include_traffic_calc >= 0) && ($include_traffic_calc <= 1))} {
           send_msg_id {hbm_memory_subsystem 1-1} ERROR "Force HBM traffic enable for a particular kernel master - $master_port - should be <0/1> not $include_traffic_calc"
           return;
        }
     } else {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Force HBM port for a particular kernel master - $master_port - should be <0-31> not $interface_num"
        return;
     }

     # Pass in correct port loc'ing...retain properties already there
     set interface [format S%.2d_PORTLOC $pcie_dma_auto_address_port]
     set current_properties [get_property CONFIG.ADVANCED_PROPERTIES [get_bd_cells $hmss_cell]]
     if {[llength $current_properties] > 1} {
        set ADVANCED_PROPERTIES $current_properties
     }
     dict set ADVANCED_PROPERTIES PORTLOC $interface [list $interface_num $include_traffic_calc]
     set_property -dict [list CONFIG.ADVANCED_PROPERTIES $ADVANCED_PROPERTIES] [get_bd_cells $hmss_cell]
     send_msg_id {hbm_memory_subsystem 1-1} INFO "Forced host port through $hmss_cell port $interface to connect to HBM port $interface_num - traffic calculation = $include_traffic_calc"
   }

   # ####################################################################
   # prohibit_hbm_ports
   ##
   proc prohibit_hbm_ports {hmss_cell port_list} {

     # Variables
     variable total_hbm_num_mi

     # Validate hmss_cell
     util::validate_hmss_cell $hmss_cell

     # Check that each port is of form "Snn_AXI"
     foreach port $port_list {
       if {[regexp {^S[0-3][0-9]_AXI$} $port] == 1} {
          send_msg_id {hbm_memory_subsystem 1-1} INFO "Prohibiting port $port on HBM instance for use"
       } else {
         send_msg_id {hbm_memory_subsystem 1-1} ERROR "Unable to prohibit HBM port $port, should be of form Snn_AXI (n<32)"
         return;
       }
     }

     # Set Advanced Properties (saving previous values)
     set current_properties [get_property CONFIG.ADVANCED_PROPERTIES [get_bd_cells $hmss_cell]]
     if {[llength $current_properties] > 1} {
        set ADVANCED_PROPERTIES $current_properties
     }
     dict lappend ADVANCED_PROPERTIES HBM_PORT_PROHIBIT {*}$port_list
     set_property -dict [list CONFIG.ADVANCED_PROPERTIES $ADVANCED_PROPERTIES] [get_bd_cells $hmss_cell]

   }

   # ####################################################################
   # enable_hbm_staged_calibration
   ##
   proc enable_hbm_staged_calibration {hmss_cell} {

     # Validate hmss_cell
     util::validate_hmss_cell $hmss_cell

     # Set Advanced Properties (saving previous values)
     set current_properties [get_property CONFIG.ADVANCED_PROPERTIES [get_bd_cells $hmss_cell]]
     if {[llength $current_properties] > 1} {
        set ADVANCED_PROPERTIES $current_properties
     }
     dict lappend ADVANCED_PROPERTIES HBM_STAGED_CALIBRATION true
     set_property -dict [list CONFIG.ADVANCED_PROPERTIES $ADVANCED_PROPERTIES] [get_bd_cells $hmss_cell]

   }

   # ####################################################################
   # bypass_register_slice
   # Note: Only effective when port is in SLR0 (or default)
   ##
   proc bypass_register_slice {master_interface hmss_cell } {

     # Global
     variable total_hbm_num_mi

     # Validate master_interface
     util::validate_master_interface $master_interface

     # Validate hmss_cell
     util::validate_hmss_cell $hmss_cell

     # Get master_interface pin
     set master_port [get_bd_intf_pins $master_interface]

     # Port is found, now get related HMSS port to apply actual constraint on
     set match 0
     foreach si [get_bd_intf_pins $hmss_cell/S*AXI] {
        set endpoint [find_bd_objs -thru_hier -relation addressing_master $si]
        # Presume single match
        set port_idx [lsearch -exact [list $master_port] $endpoint]
        if {$port_idx > -1} {
          set match 1
          set interface [get_property NAME $si]
        }
     }
     if {$match == 0} {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Interface $master_interface does not seem to be connected to cell $hmss_cell"
        return;
     }

     # Pass into HIP - retain properties already there...
     set current_properties [get_property CONFIG.ADVANCED_PROPERTIES [get_bd_cells $hmss_cell]]
     if {[llength $current_properties] > 1} {
        set ADVANCED_PROPERTIES $current_properties
     }
     dict set ADVANCED_PROPERTIES BYPASS_REG_SLICE $interface 1
     set_property -dict [list CONFIG.ADVANCED_PROPERTIES $ADVANCED_PROPERTIES] [get_bd_cells $hmss_cell]
     send_msg_id {hbm_memory_subsystem 1-1} INFO "Bypassing register slice on $master_interface through $hmss_cell port $interface"
   }
   
   # ####################################################################
   # disable_sc_mmu_entry_register_slice
   ##
   proc disable_sc_entry_register_slice {master_interface hmss_cell } {

     # Global
     variable total_hbm_num_mi

     # Validate master_interface
     util::validate_master_interface $master_interface

     # Validate hmss_cell
     util::validate_hmss_cell $hmss_cell

     # Get master_interface pin
     set master_port [get_bd_intf_pins $master_interface]

     # Port is found, now get related HMSS port to apply actual constraint on
     set match 0
     foreach si [get_bd_intf_pins $hmss_cell/S*AXI] {
        set endpoint [find_bd_objs -thru_hier -relation addressing_master $si]
        # Presume single match
        set port_idx [lsearch -exact [list $master_port] $endpoint]
        if {$port_idx > -1} {
          set match 1
          set interface [get_property NAME $si]
        }
     }
     if {$match == 0} {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Interface $master_interface does not seem to be connected to cell $hmss_cell"
        return;
     }

     # Pass into HIP - retain properties already there...
     set current_properties [get_property CONFIG.ADVANCED_PROPERTIES [get_bd_cells $hmss_cell]]
     if {[llength $current_properties] > 1} {
        set ADVANCED_PROPERTIES $current_properties
     }
     dict set ADVANCED_PROPERTIES DISABLE_SC_MMU_REG_SLICE $interface 1
     set_property -dict [list CONFIG.ADVANCED_PROPERTIES $ADVANCED_PROPERTIES] [get_bd_cells $hmss_cell]
     send_msg_id {hbm_memory_subsystem 1-1} INFO "Disabling SC MMU entry register slice on $master_interface through $hmss_cell port $interface"
   }
   
   # ####################################################################
   # disable_sc_mmu_exit_register_slice
   ##
   proc disable_sc_exit_register_slice {master_interface hmss_cell } {

     # Global
     variable total_hbm_num_mi

     # Validate master_interface
     util::validate_master_interface $master_interface

     # Validate hmss_cell
     util::validate_hmss_cell $hmss_cell

     # Get master_interface pin
     set master_port [get_bd_intf_pins $master_interface]

     # Port is found, now get related HMSS port to apply actual constraint on
     set match 0
     foreach si [get_bd_intf_pins $hmss_cell/S*AXI] {
        set endpoint [find_bd_objs -thru_hier -relation addressing_master $si]
        # Presume single match
        set port_idx [lsearch -exact [list $master_port] $endpoint]
        if {$port_idx > -1} {
          set match 1
          set interface [get_property NAME $si]
        }
     }
     if {$match == 0} {
        send_msg_id {hbm_memory_subsystem 1-1} ERROR "Interface $master_interface does not seem to be connected to cell $hmss_cell"
        return;
     }

     # Pass into HIP - retain properties already there...
     set current_properties [get_property CONFIG.ADVANCED_PROPERTIES [get_bd_cells $hmss_cell]]
     if {[llength $current_properties] > 1} {
        set ADVANCED_PROPERTIES $current_properties
     }
     dict set ADVANCED_PROPERTIES DISABLE_SC_MMU_EXIT_REG_SLICE $interface 1
     set_property -dict [list CONFIG.ADVANCED_PROPERTIES $ADVANCED_PROPERTIES] [get_bd_cells $hmss_cell]
     send_msg_id {hbm_memory_subsystem 1-1} INFO "Disabling SC MMU exit register slice on $master_interface through $hmss_cell port $interface"
   }

}
