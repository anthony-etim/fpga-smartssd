#! /bin/bash

source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh

xbutil query --legacy  # Measure initial FPGA temperature
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature

./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1 4 8Gb 0

# while True:
#     xbutil query --legacy  # Measure initial FPGA temperature
# sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
