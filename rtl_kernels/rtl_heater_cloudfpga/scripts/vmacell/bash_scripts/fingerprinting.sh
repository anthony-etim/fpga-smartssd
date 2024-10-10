#! /bin/bash

source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh

for i in {1..96}
do
echo "Itertion number $i"
sudo nvme smart-log /dev/nvme0n1 # Measure SSD temperature
xbutil examine -r all --device # Measure FPGA temperature
sleep 900
done
