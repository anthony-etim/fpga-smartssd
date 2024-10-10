#! /bin/bash

echo "Measure Initial temperature"
#sudo nvme smart-log /dev/nvme0n1 # Measure initial SSD temperature
xbutil examine -r all --device # Measure initial FPGA temperature

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=1gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=2gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=4gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=16gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=32gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=64gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=128gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200
#####################----------runtime=240s----------######################
echo "Measure Initial temperature"
#sudo nvme smart-log /dev/nvme0n1 # Measure initial SSD temperature
xbutil examine -r all --device # Measure initial FPGA temperature

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=1gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=2gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=4gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=16gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=32gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=64gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=128gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

##################------runtime=300s---------######################
echo "Measure Initial temperature"
#sudo nvme smart-log /dev/nvme0n1 # Measure initial SSD temperature
xbutil examine -r all --device # Measure initial FPGA temperature

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=1gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=2gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=4gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=16gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=32gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=64gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200

sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=128gb --numjobs=4 --iodepth=16 --runtime=300 --time_based --end_fsync=1 >> stress.txt
echo "Measure Final temperature"
xbutil examine -r all --device # Measure final FPGA temperature
sleep 1200