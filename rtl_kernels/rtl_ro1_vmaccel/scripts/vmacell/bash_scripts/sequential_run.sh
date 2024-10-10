#! /bin/bash

# reset smart ssd initially and sleep
source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh
sudo xbutil validate --device 0000:0c:00.1
sleep 300

STRESS_NUM_JOBS=4
STRESS_SIZE=8Gb

echo “Measure Initial temperature”
sudo nvme smart-log /dev/nvme0n1 # Measure initial temperature
# sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 
# >> stress.txt

#echo “Measure intermediate temperature 1"
#sudo nvme smart-log /dev/nvme0n1
# sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 
# >> stress.txt

# #echo “Measure intermediate temperature 2”
# #sudo nvme smart-log /dev/nvme0n1
# sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 
# # >> stress.txt

# sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 
# # >> stress.txt
# sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 
# # >> stress.txt
# sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 
# # >> stress.txt

echo “Measuring final temperature that we reached”
sudo nvme smart-log /dev/nvme0n1 # Let’s measure at what temperature we reached
echo “Measured final temperature that we reached”

# for i in {1..80} # 20 mins
for i in {0..570..30} # increments of 30
do
    sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 
    sleep $i
    echo “Measuring final temperature that we reached”
    sudo nvme smart-log /dev/nvme0n1 # Let’s measure at what temperature we reached
    echo “Measured final temperature that we reached”
    iteration=`expr $i / 30 + 1`
    echo “Iteration number: $iteration”
    # measuring for 10s
    ./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 150 $STRESS_NUM_JOBS $STRESS_SIZE
    sleep 20
    sudo nvme smart-log /dev/nvme0n1
    sudo xbutil validate --device 0000:0c:00.1
    sleep 300 # sleep for 5 mins after every  reset
done
