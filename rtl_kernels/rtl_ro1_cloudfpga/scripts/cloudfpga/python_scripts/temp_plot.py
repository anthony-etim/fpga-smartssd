#!/usr/bin/python3.8
import matplotlib
matplotlib.use('Agg')
import ast
import glob
import os
import sys
from matplotlib import pyplot as plt
import numpy as np

# Please modify paths accordingly!
if __name__ == "__main__":
    ## fig 1
    ssd  = [72.6, 71.3, 70.6, 70.3, 70, 69.6, 69.6, 69.3, 69, 68.6, 68.6, 68.6, 68.3, 68, 67.6, 67.6, 67.6, 67.6, 67.6, 67.3, 67.3, 67, 66.6, 66.6, 66.6, 66.6, 66.6, 66.6, 66.6, 66.3, 66.3, 66.3, 66.3, 66.3, 65.6, 65.6, 65.6, 65.6, 65.6, 65.6, 65.6]
    fpga = [75, 74, 73, 73, 72, 72, 72, 72, 72, 72, 71, 71, 71, 71, 71, 71, 70, 70, 70, 70, 70, 70, 70, 70 ,70, 69, 69, 69, 69, 69, 69, 69, 68, 68, 68, 67, 67, 67, 67, 67, 67]
    x = list(range(0,615,15))

    plot_path     = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/temperature/'
    plt.plot(x,ssd, color = 'r', marker="o", label='SSD Temperature')
    plt.show
    plt.plot(x,fpga, color = 'b', marker="o", label='FPGA Temperature ')
    # plt.title('Total Measured Time = 10 mins (max =73)')
    plt.xlabel("Time (s)", fontsize=18)
    plt.ylabel("Temperature (C)", fontsize=18)
    plt.xticks(fontsize=12)
    plt.yticks(fontsize=12)
    plt.grid()
    plt.legend(loc='best', fontsize=15)
    plt.savefig(plot_path + "fpga_ssd_temperature_cloud_fpga.pdf")
    plt.clf()

    ## fig 2
    ssd  = [63, 61.6, 61, 60.6, 60.3, 60, 59.3, 59.3, 59, 58.6, 58.6, 58.3, 58.3, 57.6, 57.6, 57.6, 57.3, 57.3, 57.3, 57, 56.6, 56.6, 56.6, 56.3, 56.3, 56.3, 56.3, 56.3, 56.3, 56.3, 56.3, 56, 55.6, 55.6, 55.6, 55.3, 55.3, 55.3, 55.3, 55.3, 55.3]
    fpga = [65, 64, 63, 63, 62, 62, 62, 61, 61, 61, 60, 60, 60, 60, 60, 59, 60, 59, 59, 59, 59, 59, 58, 58, 58, 58, 58, 59, 58, 58, 58, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57]

    plot_path     = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/temperature/'
    plt.plot(x,ssd, color = 'r', marker="o", label='SSD Temperature')
    plt.show
    plt.plot(x,fpga, color = 'b', marker="o", label='FPGA Temperature ')
    # plt.title('Total Measured Time = 10 mins (max =73)')
    plt.xlabel("Time (s)", fontsize=18)
    plt.ylabel("Temperature (C)", fontsize=18)
    plt.xticks(fontsize=12)
    plt.yticks(fontsize=12)
    plt.grid()
    plt.legend(loc='best', fontsize=15)
    plt.savefig(plot_path + "fpga_ssd_temperature_vmacell.pdf")
    plt.clf()