proc conv_hex_bin { s } {
    binary scan [binary format H* $s] B* x
    return $x
}

proc conv_bin_hex { s } {
    binary scan [binary format B4 $s] H1 x
    return $x
}

proc update_uuid_rom {uuid cell} {

    puts "\nINFO: Updaing UUID ROM with UUID: ${uuid}"
    puts "INFO: Updating UUID ROM cell: ${cell}\n"

    # validate UUID format
    if {![string is xdigit ${uuid}]} {

        puts "ERROR: UUID should be a 128 bit hex value"
        puts "    Found ${uuid}"
        puts "Aborting UUID update"
        return 1

    }

    # validate UUID length
    set uuid_length [string length ${uuid}]

    if {${uuid_length} != 32} {

        puts "ERROR: UUID should be 128 bits.  Found [expr 4 * ${uuid_length}] bits"
        puts "    ${uuid}"
        puts "Aborting UUID update"
        return 1

    }

    # validate cell name
    if {[get_cells -quiet ${cell}] eq ""} {

        puts "ERROR: Specified UUID cell does not exist in the design"
        puts "    ${cell}"
        puts "Aborting UUID update"
        return 1

    }

    # get path to base of the UUID memory element
    set filter "PRIMITIVE_TYPE == CLB.LUTRAM.RAM32X1S && PRIMITIVE_LEVEL == \"MACRO\" && NAME =~  ${cell}*0_0"
    set uuid_rom_cell_base [string trimright [get_cells -hierarchical -filter ${filter}] 0_]

    if {${uuid_rom_cell_base} eq ""} {

        puts "ERROR: Correct UUID ROM structure not detected.  Please check the CLB.LUTRAM.RAM32X1S memory elements exist in the implemented design"
        puts "Aborting UUID update"
        return 1

    }

    # split uuid into 4x32 bit hex strings
    set uuid_split_hex {}
    for {set i 0} {$i < 4} {incr i} {
        lappend uuid_split_hex [string range ${uuid} [expr 8 * ${i}] [expr (8 * ${i}) + 7 ]]
    }


    # convert to 4x32 bit binary strings
    set uuid_split_bin {}
    foreach uuid_split_hex_item ${uuid_split_hex} {

        lappend uuid_split_bin [conv_hex_bin ${uuid_split_hex_item}]

    }

    # produce the muxed 32x4 bit binary string from the input 4x32 bit string
    set uuid_muxed_bin {}
    for {set j 0} {$j < 32} {incr j} {

        set temp ""
        for {set k 0} {$k < 4} {incr k} {

            append temp [string index [lindex ${uuid_split_bin} $k] [expr 31 - $j]]

        }
        lappend uuid_muxed_bin ${temp}
    }

    # convert to 32x4 bit hex strings
    set uuid_muxed_hex {}
    foreach uuid_muxed_bin_item ${uuid_muxed_bin} {

        lappend uuid_muxed_hex [conv_bin_hex ${uuid_muxed_bin_item}]

    }

    #puts "DEBUG: UUID length (chars): ${uuid_length}"
    #puts "DEBUG: UUID split (hex): ${uuid_split_hex}"
    #puts "DEBUG: UUID split (bin): ${uuid_split_bin}"
    #puts "DEBUG: UUID muxed (bin): ${uuid_muxed_bin}"
    #puts "DEBUG: UUID muxed (hex): ${uuid_muxed_hex}"
    #puts "DEBUG: UUID cell base: ${uuid_rom_cell_base}"

    # update INIT properties on the UUID ROM sub-memories
    set m 0
    foreach uuid_muxed_hex_item ${uuid_muxed_hex} {

        set uuid_rom_sub_cell [get_cells ${uuid_rom_cell_base}_${m}_${m}]
        if {${uuid_rom_sub_cell} eq ""} {

            puts "ERROR: UUID ROM sub-cell not found.  Please check it exists in the implemented design"
            puts "    ${uuid_rom_cell_base}_${m}_${m}"
            puts "Aborting UUID update"
            return 1

        }

        puts "INFO: Setting INIT=000000${uuid_muxed_hex_item} on cell ${uuid_rom_sub_cell}"
        set_property INIT 32'h00000000${uuid_muxed_hex_item} ${uuid_rom_sub_cell}
        incr m

    }
    puts "\nINFO: UUID ROM successfully updated\n"
    return 0

}
