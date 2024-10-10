#connect_debug_cores -master [get_cells -hierarchical -filter {NAME =~ *debug_bridge_xsdbm/inst/xsdbm}] \
#                    -slaves [list \
#                       [get_cells -hierarchical -filter {NAME =~ *memory_subsystem/inst/memory/ddr4_mem00}] \
#                       [get_cells -hierarchical -filter {NAME =~ *memory_subsystem/inst/memory/ddr4_mem01}] \
#                       [get_cells -hierarchical -filter {NAME =~ *memory_subsystem/inst/memory/ddr4_mem02}]]
#

connect_debug_cores -master [get_cells -hierarchical -filter {NAME =~ *debug_bridge_xsdbm/inst/xsdbm}] -slaves [get_cells -hierarchical -filter {NAME =~ *ddrmem_1}]
