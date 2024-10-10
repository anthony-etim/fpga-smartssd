#! /bin/bash

cd /home/theodoros/vitis_accel_examples/rtl_kernels/rtl_ro1

for VARIABLE in {1..5};
do
    echo "Iteration number $VARIABLE"
    ./quick_stress_and_run.sh
    ./quick_plot.sh
done