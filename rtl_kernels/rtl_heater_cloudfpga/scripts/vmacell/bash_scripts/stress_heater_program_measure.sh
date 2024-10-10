#! /bin/bash

source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh
sudo rm /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/fpga_temp.log

## intitial reset
/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/scripts/vmacell/bash_scripts/expect_response.exp 

## taking measurements continously
/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/scripts/vmacell/bash_scripts/stress_heater_measure.sh >> fpga_temp.log &

./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1 4 8Gb 0 &
sleep 60
/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/scripts/vmacell/bash_scripts/expect_response.exp ## final reset
sleep 300
kill $(ps aux | grep /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/scripts/vmacell/bash_scripts/stress_heater_measure.sh | awk '{print $2}')
