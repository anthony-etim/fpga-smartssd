#! /bin/bash

source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh
sudo rm /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/fpga_temp.log

## intitial reset for ssd 0 and 1
sudo xbutil validate --device 0000:0e:00.1 -r verify
# sudo xbutil validate --device 0000:0c:00.1 -r verify

## taking measurements continously
/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/scripts/vmacell/bash_scripts/stress_heater_measure_ssd_0.sh >> fpga_temp.log &

./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1 4 8Gb 0 &
# ./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1 4 8Gb 1 &
sleep 60
sudo xbutil validate --device 0000:0e:00.1 -r verify ## final reset for ssd 0
# sudo xbutil validate --device 0000:0c:00.1 -r verify ## final reset for ssd 1
sleep 300
kill $(ps aux | grep /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/scripts/vmacell/bash_scripts/stress_heater_measure_ssd_0.sh | awk '{print $2}')

## NOTE
## nvme1n1 and 0000:0e:00.1  is device 0
## nvme0n1 and 0000:0c:00.1  is device 1