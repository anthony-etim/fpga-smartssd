#! /bin/bash

# Baseline 
STRESS_NUM_JOBS=0
STRESS_SIZE=0Gb
./quick_run.sh | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 600

# Test 1
STRESS_NUM_JOBS=1
STRESS_SIZE=4Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 600

# Test 2
STRESS_NUM_JOBS=1
STRESS_SIZE=16Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 600

# Test 3
STRESS_NUM_JOBS=1
STRESS_SIZE=32Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 600

# Test 4
STRESS_NUM_JOBS=1
STRESS_SIZE=64Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 600

# Test 5
STRESS_NUM_JOBS=4
STRESS_SIZE=4Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 600

# Test 6
STRESS_NUM_JOBS=4
STRESS_SIZE=16Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 600

# Test 7
STRESS_NUM_JOBS=4
STRESS_SIZE=32Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 600

# Test 8
STRESS_NUM_JOBS=4
STRESS_SIZE=64Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 600