#! /bin/bash

## removing previous log files if they exist
sudo rm /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/scripts/vmacell/bash_scripts/logs_covert_channel_parallel_ssd_0/covert_ssd_0.log
sudo rm /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/scripts/vmacell/bash_scripts/logs_covert_channel_parallel_ssd_1/covert_ssd_1.log

/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/scripts/vmacell/bash_scripts/covert_channel_parallel_ssd_0.sh | tee /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/scripts/vmacell/bash_scripts/logs_covert_channel_parallel_ssd_0/covert_ssd_0.log &
/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/scripts/vmacell/bash_scripts/covert_channel_parallel_ssd_1.sh | tee /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/scripts/vmacell/bash_scripts/logs_covert_channel_parallel_ssd_1/covert_ssd_1.log &
