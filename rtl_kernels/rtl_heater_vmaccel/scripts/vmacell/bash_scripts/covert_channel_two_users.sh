#! /bin/bash

source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh

STRESS_NUM_JOBS=4
STRESS_SIZE=8Gb

#Go back to the main directory, where rtl_ro is
cd /home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1

# reset fpga, loading bitstream and taking fpga measurements
sudo xbutil validate --device 0000:0c:00.1 -r verify
sudo nvme smart-log /dev/nvme0n1
./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1800 $STRESS_NUM_JOBS $STRESS_SIZE
sleep 800
