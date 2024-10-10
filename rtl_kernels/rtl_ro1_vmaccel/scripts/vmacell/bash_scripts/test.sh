source /opt/xilinx/xrt/setup.sh
source /tools/Xilinx/Vitis/2021.1/settings64.sh
sudo xbutil validate --device 0000:0c:00.1 -r verify

STRESS_NUM_JOBS=4
STRESS_SIZE=8Gb
STRESS_SIZE_INT=8Gb_init_measurement
RUN_TIME=300
#Go back to the main directory, where rtl_ro is
cd ../../..

start=`date +%s`
./rtl_ro build_dir.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/ro.xclbin 1997 1 $STRESS_NUM_JOBS $STRESS_SIZE_INT
end=`date +%s`
echo Execution time was `expr $end - $start` seconds.