#! /bin/bash

# reset smart ssd initially and sleep
source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh
sudo xbutil validate --device 0000:0e:00.1 -r verify
sleep 360

STRESS_NUM_JOBS=4
STRESS_SIZE=8Gb
STRESS_SIZE_INT=8Gb_init_measurement
RUN_TIME=300
SSD_N0=0
#Go back to the main directory, where rtl_ro is
# cd ../../..

for x in {60..360..60}
do
    for y in {0..9..1}
    do
        bit=$(($RANDOM%2))
        # saving bit
        echo "x is  ${x}" >> "/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/scripts/vmacell/bash_scripts/logs_covert_channel_parallel_ssd_0/bit.log"
        echo "y is  ${y}" >> "/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/scripts/vmacell/bash_scripts/logs_covert_channel_parallel_ssd_0/bit.log"
        echo "bit is ${bit}" >> "/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/scripts/vmacell/bash_scripts/logs_covert_channel_parallel_ssd_0/bit.log"
        echo "" >> "/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/scripts/vmacell/bash_scripts/logs_covert_channel_parallel_ssd_0/bit.log"
        # loading bitstream and taking initial fpga measurements
        ./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1 $STRESS_NUM_JOBS $STRESS_SIZE_INT $SSD_N0
        if (($bit == 1))
        then
            sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=$STRESS_SIZE --numjobs=$STRESS_NUM_JOBS --iodepth=16 --runtime=$RUN_TIME --time_based --end_fsync=1  
        else 
            sleep $RUN_TIME
        fi
        sleep $x
        # reset fpga
        sudo xbutil validate --device 0000:0e:00.1 -r verify
        sudo nvme smart-log /dev/nvme1n1
        ./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1800 $STRESS_NUM_JOBS $STRESS_SIZE $SSD_N0
        sleep 900
    done
done