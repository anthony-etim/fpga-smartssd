#! /bin/bash
echo "Measure Initial temperature"

sudo nvme smart-log /dev/nvme0n1 # Measure initial temperature
sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=120 --time_based --end_fsync=1 >> stress.txt
#echo "Measure intermediate temperature 1"

#sudo nvme smart-log /dev/nvme0n1
#sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt

#echo "Measure intermediate temperature 2"
#sudo nvme smart-log /dev/nvme0n1
#sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt


#sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
#sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt
#sudo fio --name=fiotest --filename=/dev/nvme0n1 --ioengine=posixaio --rw=randwrite --bs=64k --size=8gb --numjobs=4 --iodepth=16 --runtime=240 --time_based --end_fsync=1 >> stress.txt

sudo nvme smart-log /dev/nvme0n1 # Let's measure at what temperature we reached
echo "Measure final temperature that we reached"
#sudo nvme smart-log /dev/nvme0n1 # Let's measure at what temperature we reached

for i in {1..60}
do
    echo "Iteration number: $i"
    sleep 15 # Wait for 15 secs, then measure temperature for 60 times (60*15secs=15mins)
    sudo nvme smart-log /dev/nvme0n1
done