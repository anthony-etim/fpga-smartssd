#! /bin/bash

source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh

## removing previous data files if they exist
# for x in {0..31..1}
# do
sudo rm /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_smart_ssd_0/*
sudo rm /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_smart_ssd_1/*
# done

## removing bit log file for transmitter ssd 0
sudo rm /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/heater_logs/covert_channel_ssd_heater_ssd_sensor/covert_channel_ssd_heater_ssd_sensor_32_bit.log

## intitial reset
sudo xbutil validate --device 0000:0e:00.1 -r verify ## initial reset for ssd 0
sudo xbutil validate --device 0000:0c:00.1 -r verify ## initial reset for ssd 1

for x in {0..31..1}
# for x in {0..4..1}
do 
    bit=$(($RANDOM%2))
    echo "bit is ${bit}" >> "/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/heater_logs/covert_channel_ssd_heater_ssd_sensor/covert_channel_ssd_heater_ssd_sensor_32_bit.log"
    
    ## taking measurements continously for ssd 0
    # /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/scripts/vmacell/bash_scripts/stress_heater_measure_ssd_1.sh >> "/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/heater_logs/covert_channel_fpga_ssd_parallel/covert_channel_fpga_ssd_1/fpga_temp_ssd_1_bit_$x.log" &
    if (($bit == 1))
    then
        #  Turn on ssd 0 RO Heater for 60s
        /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/rtl_ro /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1 4 8Gb 0 
        # sleep 60
        # Measure with ssd 1 RO Sensor for 60s
        /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/rtl_ro /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1800 4 8Gb 1 
    else
        # sleep 60
        # Measure with ssd 1 RO Sensor for 60s
        /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/rtl_ro /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1800 4 8Gb 1 
    fi
    # reset again
    sudo xbutil validate --device 0000:0e:00.1 -r verify  ## final reset for ssd 0
    sudo xbutil validate --device 0000:0c:00.1 -r verify  ## final reset for ssd 1
    # allow fpgas to rest
    sleep 100
    # kill $(ps aux | grep /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/scripts/vmacell/bash_scripts/stress_heater_measure_ssd_1.sh | awk '{print $2}')
done