#! /bin/bash

source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh

STRESS_NUM_JOBS=4
STRESS_SIZE=8Gb
STRESS_SIZE_INT=8Gb_init_measurement
RUN_TIME=40

## removing previous ssd data log files if they exist
for x in {0..31..1}
do
    sudo rm /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_cloudfpga/experiments/ro_counts_logs/covert_channel_ssd_fpga_single/covert_channel_ssd_fpga_0/*
done

## removing bit log file for transmitter ssd 0
sudo rm /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_cloudfpga/experiments/ro_counts_logs/covert_channel_ssd_fpga_single/covert_channel_ssd_fpga_0_32_bit.log

## intitial reset
# /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_cloudfpga/scripts/cloudfpga/bash_scripts/expect_response.exp 
xbutil validate --device 0000:04:00.1 -r 'Verify Kernel'

for x in {0..31..1}
# for x in {0..4..1}
do 
    bit=$(($RANDOM%2))
    # bit=1
    echo "bit is ${bit}" >> "/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_cloudfpga/experiments/ro_counts_logs/covert_channel_ssd_fpga_single/covert_channel_ssd_fpga_0_32_bit.log"
    # taking measurements continuously for 60s
    /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_cloudfpga/rtl_ro /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_cloudfpga/build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1800 $STRESS_NUM_JOBS $STRESS_SIZE 0 &
    if (($bit == 1))
    then
        # stress ssd for 40s
        sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=$STRESS_SIZE --numjobs=$STRESS_NUM_JOBS --iodepth=16 --runtime=$RUN_TIME --time_based --end_fsync=1 
    else
        sleep 40
    fi
    # allow fpga to rest
    sleep 100
    # reset again
    xbutil validate --device 0000:04:00.1 -r 'Verify Kernel'
done