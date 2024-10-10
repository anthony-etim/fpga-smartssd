# (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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

# Procedure to update the PLP Logic UUID ROM within the CMP Subsystem
# Input argument is 64 hex character string (256-bit UUID)
proc update_logic_uuid_rom {uuid} {

    # Find the path where this script is located
    set script_path [ dict get [ info frame 0 ] file ]
    
    # Get the absolute directory path
    set script_dir [file dirname [file normalize ${script_path}]]
    
    # Source the UUID ROM script, return an error if not found
    if {[file exists ${script_dir}/../../shell_utils_uuid_rom_v1_0/tcl/update_uuid_rom.tcl]} {
    
        source ${script_dir}/../../shell_utils_uuid_rom_v1_0/tcl/update_uuid_rom.tcl
        
    } else {
    
        return -code error "ERROR: update_uuid_rom.tcl script not found, BLP Logic UUID not populated."
        
    }
    
    # Search for the PLP_LOGIC_UUID_ROM cell path in the netlist, return an error if not found
    set uuid_cell [get_cells -hier -filter {PLP_LOGIC_UUID_ROM == 1}]
    
    if {$uuid_cell eq ""} {
    
        return -code error "ERROR: PLP_LOGIC_UUID_ROM cell not found in netlist, PLP Logic UUID not populated."
        
    }
    
    # Call the update_uuid_rom script to update the PLP Logic UUID ROM, return the response
    return [update_uuid_rom $uuid $uuid_cell]
    
}
