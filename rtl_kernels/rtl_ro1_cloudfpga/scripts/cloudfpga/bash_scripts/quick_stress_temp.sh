#! /bin/bash
STRESS_NUM_JOBS=$1
STRESS_SIZE=$2
RUN_TIME=$3

source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh
./expect_response.exp
sleep 360

# Measuring Initial Temperatures
echo "Measure Initial temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure smart ssd initially the temperature
xbutil query --legacy # Measure fpga initial temperature

# Running Stress Test
sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=$STRESS_SIZE --numjobs=$STRESS_NUM_JOBS --iodepth=16 --runtime=$RUN_TIME --time_based --end_fsync=1  

# Measuring Final Temperatures
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure the temperature of the disk right after the stress test
xbutil query --legacy # Measure fpga temperature
