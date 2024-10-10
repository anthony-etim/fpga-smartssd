#! /bin/bash

# reset smart ssd initially and sleep
source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh
./expect_response.exp
sleep 360

STRESS_NUM_JOBS=4
STRESS_SIZE=8Gb
STRESS_SIZE_INT=8Gb_init_measurement
RUN_TIME=80

for x in {60..360..60}
do
    for y in {0..9..1}
    do
        bit=$(($RANDOM%2))
        # saving bit
        echo "x is  ${x}" >> "logs_covert/bit.log"
        echo "y is  ${y}" >> "logs_covert/bit.log"
        echo "bit is ${bit}" >> "logs_covert/bit.log"
        echo "" >> "logs_covert/bit.log"
        # loading bitstream and taking initial fpga measurements
        ./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1 $STRESS_NUM_JOBS $STRESS_SIZE_INT 
        if (($bit == 1))
        then
            sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=$STRESS_SIZE --numjobs=$STRESS_NUM_JOBS --iodepth=16 --runtime=$RUN_TIME --time_based --end_fsync=1  
        else 
            sleep $RUN_TIME
        fi
        sleep $x
        # reset fpga
        ./expect_response.exp
        sudo nvme smart-log /dev/nvme0n1
        ./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1800 $STRESS_NUM_JOBS $STRESS_SIZE
        sleep 900
    done
done