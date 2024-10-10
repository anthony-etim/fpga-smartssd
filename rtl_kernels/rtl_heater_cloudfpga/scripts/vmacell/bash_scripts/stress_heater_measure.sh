#! /bin/bash

source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh

while true
    do
        date +%s%N | cut -b1-13
        sudo nvme smart-log /dev/nvme0n1  # Measure SSD temperature
        xbutil examine --device 0000:04:00.1 --report thermal   # Measure FPGA temperature
    done