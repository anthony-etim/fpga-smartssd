# (c) Copyright 1986-2017, 2019 Xilinx, Inc. All rights reserved.
#
# This file contains confidential and proprietary information
# of Xilinx, Inc. and is protected under U.S. and
# international copyright and other intellectual property
# laws.
#
# DISCLAIMER
# This disclaimer is not a license and does not grant any
# rights to the materials distributed herewith. Except as
# otherwise provided in a valid license issued to you by
# Xilinx, and to the maximum extent permitted by applicable
# law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# (2) Xilinx shall not be liable (whether in contract or tort,
# including negligence, or under any other theory of
# liability) for any loss or damage of any kind or nature
# related to, arising under or in connection with these
# materials, including for any direct, or any indirect,
# special, incidental, or consequential loss or damage
# (including loss of data, profits, goodwill, or any type of
# loss or damage suffered as a result of any action brought
# by a third party) even if such damage or loss was
# reasonably foreseeable or Xilinx had been advised of the
# possibility of the same.
#
# CRITICAL APPLICATIONS
# Xilinx products are not designed or intended to be fail-
# safe, or for use in any application requiring fail-safe
# performance, such as life-support or safety devices or
# systems, Class III medical devices, nuclear facilities,
# applications related to the deployment of airbags, or any
# other applications that could lead to death, personal
# injury, or severe property or environmental damage
# (individually and collectively, "Critical
# Applications"). Customer assumes the sole risk and
# liability of any use of Xilinx products in Critical
# Applications, subject only to applicable laws and
# regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# PART OF THIS FILE AT ALL TIMES.
############################################################

#
# define some helpful variables, dirs, etc.
#
source ./settings.tcl
source ./extraction.tcl

set projectName cuisr
set solutionName solution1
set targetPart ${device}${package}${speed}
set outputBaseName $top_module
set outputDir ./report 
file mkdir $outputDir

# create project 
create_project project . -part $targetPart -force
set_property target_language $language [current_project]


# setup design sources and constraints
set hdlfs [glob -nocomplain ./*.vhd ./*.v]
if {$hdlfs != "" } {
    add_files -norecurse $hdlfs
}
set xdcfs [glob -nocomplain ./*.xdc]
if {$xdcfs != "" } {
    add_files -fileset constrs_1 -norecurse $xdcfs
}

# vivado scripts to generate IP
set tclfiles [glob -nocomplain *_ip.tcl]
if { $tclfiles != ""} {
    foreach file $tclfiles {
         source $file
    }
}

# properties setting
if { $add_io_buffers == "false" } {
    set_property -name {STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS} -value {-no_iobuf -mode out_of_context} -objects [get_runs synth_1]
}

# XPM library support
set_property XPM_LIBRARIES {XPM_MEMORY} [current_project]
# launch run synth
launch_runs synth_1
wait_on_run synth_1
open_run synth_1
# write a few files and reports after synthesis
report_utilization -file $outputDir/${outputBaseName}_utilization_synth.rpt
report_timing -file $outputDir/${outputBaseName}_timing_synth.rpt

# launch run impl
set_property STEPS.PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
launch_runs impl_1
wait_on_run impl_1
open_run impl_1
# write a few files and reports after route
report_timing_summary -file $outputDir/${outputBaseName}_timing_routed.rpt
report_utilization -file $outputDir/${outputBaseName}_utilization_routed.rpt

if { [catch { compile_reports_rodin $top_module $language $targetPart $projectName $solutionName } err] } {
    puts "@E \[IMPL-251\] Errors occured while compiling report: $err"
    exit 1
}
