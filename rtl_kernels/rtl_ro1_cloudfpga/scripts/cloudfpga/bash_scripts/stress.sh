#! /bin/bash
source /opt/xilinx/xrt/setup.sh

####################runtime=120##########################

echo "Measure Initial temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure initial SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=1gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=2gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=4gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=16gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=32gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=64gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=128gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy # Measure initial FPGA temperature
sleep 2100

########################runtime=240###############

echo "Measure Initial temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure initial SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=1gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=2gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=4gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=16gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=32gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=64gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=128gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy # Measure initial FPGA temperature
sleep 2100

####################runtime=300###############################

echo "Measure Initial temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure initial SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=1gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=2gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=4gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=16gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=32gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=64gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy  # Measure initial FPGA temperature
sleep 2100

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=128gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
sudo nvme smart-log /dev/nvme0n1 # Measure final SSD temperature
xbutil query --legacy # Measure initial FPGA temperature
sleep 2100