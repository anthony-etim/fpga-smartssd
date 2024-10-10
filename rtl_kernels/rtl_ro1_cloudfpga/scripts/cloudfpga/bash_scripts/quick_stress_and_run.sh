#! /bin/bash

#source /opt/xilinx/xrt/setup.sh
#source /tools/Xilinx/Vitis/2021.1/settings64.sh
#xbutil reset --device 0000:04:00.1

#sudo nvme smart-log /dev/nvme0n1 # Measure initially the temperature

#sudo fio --name=random-write --ioengine=posixaio --rw=randwrite --bs=4k --size=4g --numjobs=1 --iodepth=1 --runtime=60 --time_based --end_fsync=1 &
sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=256k --size=2Gb --numjobs=8 --iodepth=16 --runtime=60 --time_based --end_fsync=1  #&
#P1=$!

#sudo fio --name=fiotest --filename=/dev/nvme0n1 --size=16Gb --rw=randwrite --bs=1M --direct=1 --numjobs=8 --ioengine=libaio --iodepth=8 --group_reporting --runtime=60 --startdelay=60
sudo nvme smart-log /dev/nvme0n1 # Measure the temperature of the disk right after the stress test

#./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1900 & #&
#P2=$!

#wait $P1
#sudo nvme smart-log /dev/nvme0n1 #&# Measure the temperature of the disk again
#P3=$!

#wait $P1 $P2 $P3
