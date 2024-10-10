#! /bin/bash

RUN_TIME=60
./parallel_run.sh $RUN_TIME | tee logs_parallel/parallel_run_$RUN_TIME-s.log