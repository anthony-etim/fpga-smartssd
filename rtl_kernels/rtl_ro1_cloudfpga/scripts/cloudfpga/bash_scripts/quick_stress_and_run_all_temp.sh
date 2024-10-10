#! /bin/bash

# Baseline 
# STRESS_NUM_JOBS=0
# STRESS_SIZE=0Gb
# ./quick_run.sh | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
# sleep 900

########################
## 70 Seconds
########################
# Inital Reset
source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh
./expect_response.exp
sleep 60

# Test 1
STRESS_NUM_JOBS=4
STRESS_SIZE=1Gb
RUN_TIME=70
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 2
STRESS_NUM_JOBS=4
STRESS_SIZE=2Gb
RUN_TIME=70
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 3
STRESS_NUM_JOBS=4
STRESS_SIZE=4Gb
RUN_TIME=70
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 4
STRESS_NUM_JOBS=4
STRESS_SIZE=8Gb
RUN_TIME=70
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 5
STRESS_NUM_JOBS=4
STRESS_SIZE=16Gb
RUN_TIME=70
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 6
STRESS_NUM_JOBS=4
STRESS_SIZE=32Gb
RUN_TIME=70
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 7
STRESS_NUM_JOBS=4
STRESS_SIZE=64Gb
RUN_TIME=70
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 8
STRESS_NUM_JOBS=4
STRESS_SIZE=128Gb
RUN_TIME=70
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900


########################
## 80 Seconds
########################
# Inital Reset
source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh
./expect_response.exp
sleep 60

# Test 1
STRESS_NUM_JOBS=4
STRESS_SIZE=1Gb
RUN_TIME=80
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 2
STRESS_NUM_JOBS=4
STRESS_SIZE=2Gb
RUN_TIME=80
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 3
STRESS_NUM_JOBS=4
STRESS_SIZE=4Gb
RUN_TIME=80
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 4
STRESS_NUM_JOBS=4
STRESS_SIZE=8Gb
RUN_TIME=80
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 5
STRESS_NUM_JOBS=4
STRESS_SIZE=16Gb
RUN_TIME=80
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 6
STRESS_NUM_JOBS=4
STRESS_SIZE=32Gb
RUN_TIME=80
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 7
STRESS_NUM_JOBS=4
STRESS_SIZE=64Gb
RUN_TIME=80
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900

# Test 8
STRESS_NUM_JOBS=4
STRESS_SIZE=128Gb
RUN_TIME=80
./quick_stress_temp.sh $STRESS_NUM_JOBS $STRESS_SIZE $RUN_TIME | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE-$RUN_TIME-s.log
sleep 900