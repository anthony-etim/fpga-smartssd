#! /bin/bash

source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh

## removing previous log files if they exist
for x in {0..31..1}
do
    sudo rm /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/heater_logs/covert_channel_fpga_ssd_single/covert_channel_fpga_ssd_0/fpga_temp_ssd_0_bit_$x.log
done

## removing bit log file for transmitter ssd 0
sudo rm /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/heater_logs/covert_channel_fpga_ssd_single/covert_channel_fpga_ssd_0_32_bit.log

## intitial reset
# /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/scripts/vmacell/bash_scripts/expect_response.exp 
xbutil validate --device 0000:04:00.1 -r 'Verify Kernel'

for x in {0..31..1}
# for x in {0..1..1}
do 
    bit=$(($RANDOM%2))
    echo "bit is ${bit}" >> "/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/heater_logs/covert_channel_fpga_ssd_single/covert_channel_fpga_ssd_0_32_bit.log"
    ## taking measurements continously
    /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/scripts/vmacell/bash_scripts/stress_heater_measure.sh >> "/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/heater_logs/covert_channel_fpga_ssd_single/covert_channel_fpga_ssd_0/fpga_temp_ssd_0_bit_$x.log" &
    if (($bit == 1))
    then
        ./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1 4 8Gb 0 &
        sleep 40
    else
        sleep 40
    fi
    # reset again
    # /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/scripts/vmacell/bash_scripts/expect_response.exp
    xbutil validate --device 0000:04:00.1 -r 'Verify Kernel' 
    # allow fpga to rest
    sleep 100
    kill $(ps aux | grep /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/scripts/vmacell/bash_scripts/stress_heater_measure.sh | awk '{print $2}')
done