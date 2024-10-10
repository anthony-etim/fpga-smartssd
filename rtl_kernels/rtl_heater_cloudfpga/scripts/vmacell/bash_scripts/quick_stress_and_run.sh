#! /bin/bash
STRESS_NUM_JOBS=$1
STRESS_SIZE=$2

# reset smart ssd initially and sleep
source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh
# ./expect_response.exp  # calls xbutil reset --device 0000:0c:00.1 and answers yes for you
sudo xbutil validate --device 0000:0c:00.1
sleep 360

sudo nvme smart-log /dev/nvme0n1 # Measure initially the temperature

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=$STRESS_SIZE --numjobs=$STRESS_NUM_JOBS --iodepth=16 --runtime=60 --time_based --end_fsync=1  &
P1=$!

#sudo fio --name=fiotest --filename=/dev/nvme0n1 --size=16Gb --rw=randwrite --bs=1M --direct=1 --numjobs=8 --ioengine=libaio --iodepth=8 --group_reporting --runtime=60 --startdelay=60
sudo nvme smart-log /dev/nvme0n1 # Measure the temperature of the disk right after the stress test

./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1800 $STRESS_NUM_JOBS $STRESS_SIZE &
P2=$!

wait $P1 $P2
sudo nvme smart-log /dev/nvme0n1 &  #Measure the temperature of the disk again
P3=$!

wait $P1 $P2 $P3
