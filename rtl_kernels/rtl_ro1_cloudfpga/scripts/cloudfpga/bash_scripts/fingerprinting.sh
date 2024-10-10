#! /bin/bash
source /opt/xilinx/xrt/setup.sh

for i in {1..96}
do
    echo "Iteration number: $i"
    echo "theodoroseeng428" | sudo -S nvme smart-log /dev/nvme0n1 # Measure SSD temperature
    #sudo nvme smart-log /dev/nvme0n1 # Measure SSD temperature
    xbutil query --legacy # Measure FPGA temperature
    sleep 900 # Wait for 15 minutes, then measure temperature for 96 times (96*15mins=24h)
done