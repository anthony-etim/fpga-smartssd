
# *************************************************************************
#    ____  ____
#   /   /\/   /
#  /___/  \  /
#  \   \   \/    © Copyright 2017 Xilinx, Inc. All rights reserved.
#   \   \        This file contains confidential and proprietary
#   /   /        information of Xilinx, Inc. and is protected under U.S.
#  /___/   /\    and international copyright and other intellectual
#  \   \  /  \   property laws.
#   \___\/\___ #
#
# *************************************************************************
#
# Disclaimer:
#
#       This disclaimer is not a license and does not grant any rights to
#       the materials distributed herewith. Except as otherwise provided in
#       a valid license issued to you by Xilinx, and to the maximum extent
#       permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE
#       "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
#       WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
#       INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY,
#       NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#       (2) Xilinx shall not be liable (whether in contract or tort,
#       including negligence, or under any other theory of liability) for
#       any loss or damage of any kind or nature related to, arising under
#       or in connection with these materials, including for any direct, or
#       any indirect, special, incidental, or consequential loss or damage
#       (including loss of data, profits, goodwill, or any type of loss or
#       damage suffered as a result of any action brought by a third party)
#       even if such damage or loss was reasonably foreseeable or Xilinx
#       had been advised of the possibility of the same.
#
# Critical Applications:
#
#       Xilinx products are not designed or intended to be fail-safe, or
#       for use in any application requiring fail-safe performance, such as
#       life-support or safety devices or systems, Class III medical
#       devices, nuclear facilities, applications related to the deployment
#       of airbags, or any other applications that could lead to death,
#       personal injury, or severe property or environmental damage
#       (individually and collectively, "Critical Applications"). Customer
#       assumes the sole risk and liability of any use of Xilinx products
#       in Critical Applications, subject only to applicable laws and
#       regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS
# FILE AT ALL TIMES.
#
# *************************************************************************

# ----------------------------------------------------------------------
# Interconnect Switchboard PBLOCK assignments
# ----------------------------------------------------------------------
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] [get_cells [list interconnect/interconnect_s00_axi/inst/switchboards ] ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] [get_cells memory/interconnect_ddrmem_ctrl]
add_cells_to_pblock  [get_pblocks pblock_dynamic_SLR0] [get_cells memory/ddr4_mem00_ctrl_cc]


# ----------------------------------------------------------------------
# SLR-crossing PBLOCK assignments
# ----------------------------------------------------------------------
# ------------------------------------------------------------
# BEGIN interconnect_s00_axi
# ------------------------------------------------------------

# S00_AXI:SLR0 -> interconnect_s00_axi:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_w_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/s00_entry_pipeline \
  interconnect/interconnect_s00_axi/inst/s00_axi2sc \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_aw_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_ar_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_w_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_r_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_b_node/inst/inst_si_handler \
 ]

# interconnect_s00_axi:SLR0 -> M00_AXI:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_w_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_aw_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_ar_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_w_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_r_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_b_node/inst/inst_si_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m00_exit_pipeline \
  interconnect/interconnect_s00_axi/inst/m00_sc2axi \
 ]

# interconnect_s00_axi:SLR0 -> M01_AXI:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_aw_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_ar_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_w_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_r_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_aw_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_ar_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_w_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_r_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_b_node/inst/inst_si_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m01_exit_pipeline \
  interconnect/interconnect_s00_axi/inst/m01_sc2axi \
 ]
# ------------------------------------------------------------
# END interconnect_s00_axi
# ------------------------------------------------------------
# ------------------------------------------------------------
# BEGIN interconnect_ddr4_mem00
# ------------------------------------------------------------

# interconnect_ddr4_mem00:SLR0 -> M00_AXI:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_ddr4_mem00/inst/m00_exit_pipeline \
  interconnect/interconnect_ddr4_mem00/inst/m00_sc2axi \
 ]

# S00_AXI:SLR0 -> interconnect_ddr4_mem00:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_ddr4_mem00/inst/s00_nodes/s00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem00/inst/s00_nodes/s00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem00/inst/s00_nodes/s00_w_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem00/inst/s00_nodes/s00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_ddr4_mem00/inst/s00_nodes/s00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_ddr4_mem00/inst/s00_entry_pipeline \
  interconnect/interconnect_ddr4_mem00/inst/s00_axi2sc \
 ]
# ------------------------------------------------------------
# END interconnect_ddr4_mem00
# ------------------------------------------------------------
# ------------------------------------------------------------
# BEGIN interconnect_plram_mem00
# ------------------------------------------------------------

# interconnect_plram_mem00:SLR0 -> M00_AXI:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_plram_mem00/inst/m00_exit_pipeline \
  interconnect/interconnect_plram_mem00/inst/m00_sc2axi \
 ]

# S00_AXI:SLR0 -> interconnect_plram_mem00:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_plram_mem00/inst/s00_nodes/s00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_plram_mem00/inst/s00_nodes/s00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_plram_mem00/inst/s00_nodes/s00_w_node/inst/inst_si_handler \
  interconnect/interconnect_plram_mem00/inst/s00_nodes/s00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_plram_mem00/inst/s00_nodes/s00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_plram_mem00/inst/s00_entry_pipeline \
  interconnect/interconnect_plram_mem00/inst/s00_axi2sc \
 ]
# ------------------------------------------------------------
# END interconnect_plram_mem00
# ------------------------------------------------------------
