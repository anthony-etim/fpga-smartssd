#! /bin/bash

# reset smart ssd initially and sleep
source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh
./expect_response.exp
sleep 360

STRESS_NUM_JOBS=4
STRESS_SIZE=8Gb

echo “Measure Initial temperature”
sudo nvme smart-log /dev/nvme0n1 # Measure initial temperature
sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 
# >> stress.txt

#echo “Measure intermediate temperature 1"
#sudo nvme smart-log /dev/nvme0n1
sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 
# >> stress.txt

echo “Measuring final temperature that we reached”
sudo nvme smart-log /dev/nvme0n1 # Let’s measure at what temperature we reached
echo “Measured final temperature that we reached”

for i in {1..20} # 10 mins 
do
    echo “Iteration number: $i”
    # measuring for 10s
    ./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 150 $STRESS_NUM_JOBS $STRESS_SIZE
    sleep 15 # Wait for 15 secs, then measure temperature for 20 times (20*30secs=10mins)
    sudo nvme smart-log /dev/nvme0n1
    ./expect_response.exp
done
