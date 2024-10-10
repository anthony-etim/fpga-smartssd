#! /bin/bash

# Baseline 
STRESS_NUM_JOBS=0
STRESS_SIZE=0Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs_parallel/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 3600

# Test 1
STRESS_NUM_JOBS=1
STRESS_SIZE=4Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs_parallel/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 3600

# Test 2
STRESS_NUM_JOBS=1
STRESS_SIZE=16Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs_parallel/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 3600

# Test 3
STRESS_NUM_JOBS=8
STRESS_SIZE=4Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs_parallel/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 3600

# Test 4
STRESS_NUM_JOBS=32
STRESS_SIZE=1Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs_parallel/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 3600

# Test 5
STRESS_NUM_JOBS=64
STRESS_SIZE=128Gb
./quick_stress_and_run.sh $STRESS_NUM_JOBS $STRESS_SIZE | tee logs_parallel/stress_log_threads_$STRESS_NUM_JOBS-$STRESS_SIZE.log
sleep 3600
