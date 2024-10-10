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

# ----------------------------------------------------------------------
# Set up HBM memory info
# Entirely fixed based on part

namespace eval ::util_config_part {

   proc get_hbm_mem_info {HBM_DEVICE} {

      # Figure out based on the part some info
      # Parts obviously need to be added here manually
      switch -regexp -- $HBM_DEVICE {
          xcvu31p {set hbm_size 256M; set hbm_offset 0x010000000; set hbm_stack 1; set hbm_single_stack_size 4GB; set hbm_dual_stack_size 8GB; set hbm_axi_port_append ""; set hbm_pc_awidth 28; set total_hbm_awidth 33}
          xcvu33p {set hbm_size 256M; set hbm_offset 0x010000000; set hbm_stack 2; set hbm_single_stack_size 4GB; set hbm_dual_stack_size 8GB; set hbm_axi_port_append ""; set hbm_pc_awidth 28; set total_hbm_awidth 33}
          xcvu35p {set hbm_size 256M; set hbm_offset 0x010000000; set hbm_stack 2; set hbm_single_stack_size 4GB; set hbm_dual_stack_size 8GB; set hbm_axi_port_append ""; set hbm_pc_awidth 28; set total_hbm_awidth 33}
          xcvu37p {set hbm_size 256M; set hbm_offset 0x010000000; set hbm_stack 2; set hbm_single_stack_size 4GB; set hbm_dual_stack_size 8GB; set hbm_axi_port_append ""; set hbm_pc_awidth 28; set total_hbm_awidth 33}
          xcu50   {set hbm_size 256M; set hbm_offset 0x010000000; set hbm_stack 2; set hbm_single_stack_size 4GB; set hbm_dual_stack_size 8GB; set hbm_axi_port_append ""; set hbm_pc_awidth 28; set total_hbm_awidth 33}
          xcu280  {set hbm_size 256M; set hbm_offset 0x010000000; set hbm_stack 2; set hbm_single_stack_size 4GB; set hbm_dual_stack_size 8GB; set hbm_axi_port_append ""; set hbm_pc_awidth 28; set total_hbm_awidth 33}
          xcvu45p {set hbm_size 512M; set hbm_offset 0x020000000; set hbm_stack 2; set hbm_single_stack_size 8GB; set hbm_dual_stack_size 16GB; set hbm_axi_port_append "_8HI"; set hbm_pc_awidth 29; set total_hbm_awidth 34}
          xcvu47p {set hbm_size 512M; set hbm_offset 0x020000000; set hbm_stack 2; set hbm_single_stack_size 8GB; set hbm_dual_stack_size 16GB; set hbm_axi_port_append "_8HI"; set hbm_pc_awidth 29; set total_hbm_awidth 34}
          default {send_msg_id {hbm_memory_subsystem 3-1} ERROR "Device - $HBM_DEVICE - is not supported yet"}
      }
      set hbm_mc [expr $hbm_stack*8]
      set hbm_pc [expr $hbm_mc*2]

      # Total amount of potential master HBM connections and mem controllers
      set HBM_MEM_INFO [dict create]
      dict set HBM_MEM_INFO total_hbm_num_mi        32
      dict set HBM_MEM_INFO total_hbm_num_mc        $hbm_mc
      dict set HBM_MEM_INFO total_hbm_num_pc        $hbm_pc
      dict set HBM_MEM_INFO total_hbm_num_mi_1stack 16
      dict set HBM_MEM_INFO total_hbm_num_stack     2
      dict set HBM_MEM_INFO hbm_single_stack_size   $hbm_single_stack_size
      dict set HBM_MEM_INFO hbm_dual_stack_size     $hbm_dual_stack_size
      dict set HBM_MEM_INFO hbm_axi_port_append     $hbm_axi_port_append
      dict set HBM_MEM_INFO hbm_range               $hbm_offset
      dict set HBM_MEM_INFO hbm_pc_awidth           $hbm_pc_awidth
      dict set HBM_MEM_INFO total_hbm_awidth        $total_hbm_awidth

      for {set stack 0} {$stack < $hbm_stack} {incr stack} {
      
         # Set control address ranges per stack
         dict lappend HBM_MEM_INFO CTRL_RANGE_OFFSET [format HBM_CTRL%.2d $stack] [list 4M [format 0x%06x [expr 0x400000*$stack]]]
      
         for {set mc 0} {$mc < 8} {incr mc} {
            for {set pc 0} {$pc < 2} {incr pc} {
               set current_mc [expr $stack*8+$mc]
               set current_pc [expr $current_mc*2+$pc]
      
               # Create segment sizes and default offsets
               dict lappend HBM_MEM_INFO RANGE_OFFSET [format HBM_MEM%.2d $current_pc] [list $hbm_size [format 0x%09x [expr $hbm_offset*$current_pc]]]
               # Create map of mem segments to control regions
               dict lappend HBM_MEM_INFO MEM_CTRL_MAP [format HBM_MEM%.2d $current_pc] [format HBM_CTRL%.2d $stack]
               # Set up map of mem segments to control regions
               dict lappend HBM_MEM_INFO MC_CTRL_MAP [format HBM_MEM%.2d $current_pc] [format USER_MC_ENABLE_%.2d $current_mc]
            }
         }
      }

      return $HBM_MEM_INFO
   }

}
