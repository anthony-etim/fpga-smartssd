#!/usr/bin/python3.8
import matplotlib
matplotlib.use('Agg')
import ast
import glob
import os
from matplotlib import pyplot as plt
import numpy as np
import sys

# Please modify paths accordingly!
if __name__ == "__main__":
    data_path_pwd = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_cloudfpga/experiments/ro_counts_logs/covert_channel_ssd_fpga_single/covert_channel_ssd_fpga_0/'
    plot_path     = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_cloudfpga/experiments/ro_counts_logs/plots/'
    data_path_list = []
    ro_counts = []
    
    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    data_path_list.sort()
    print(data_path_list)
    # sys.exit()
    
    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    # print(len(ro_counts))
    # ro_counts = [x[0:1500] for x in ro_counts] 
    # ro_counts = [x[1000:1400] for x in ro_counts] 
    # ro_counts_tmp = [] 
    # for i in range(len(data_path_list)):
    #     ro_counts_tmp.append((sum(ro_counts[i]))/len(ro_counts[i]))
    
    # print(ro_counts_tmp)
    # plt.figure(figsize=(40,12))
    for i in range(len(data_path_list)):
        plt.figure(figsize=(7.8,4.8))
        # x = np.arange(0,600,30)
        # print(x)
        plt.plot(ro_counts[i], color = 'r', marker="o")
        # plt.title('Total Measured Time = 10 mins (max =73)')
        plt.xlabel("Time (s)", fontsize=18)
        plt.ylabel("RO Counts", fontsize=18)
        plt.xticks(fontsize=12)
        plt.yticks(fontsize=12)
        # plt.xlim(-2,601)
        plt.grid()
        plt.savefig(plot_path + "ro_counts_sequential_cloudfpga_ssd_fpga_" + str(i) + ".pdf")
        plt.clf()
    
    ro_counts_new = ro_counts[0] + ro_counts[1] + ro_counts[2] + ro_counts[3] + ro_counts[4]
    # print(len(ro_counts_new))
    plt.plot(ro_counts_new, color = 'r', marker="o")
    # plt.title('Total Measured Time = 10 mins (max =73)')
    plt.xlabel("Time (s)", fontsize=18)
    plt.ylabel("RO Counts", fontsize=18)
    plt.xticks(fontsize=12)
    plt.yticks(fontsize=12)
    # plt.xlim(-2,601)
    plt.grid()
    plt.savefig(plot_path + "ro_counts_sequential_cloudfpga_ssd_fpga_full.pdf")
    plt.clf()

    # for i in range(len(data_path_list)):
    #     # fig_ro_1 = plt.hist(ro_counts[i], bins='auto', alpha=0.8, label=data_path_list[i])
    #     print(ro_counts[i][0])
    #     plt.plot(ro_counts[i][0], color = 'r')
    #     # plt.legend(loc='best', prop={'size': 5})  
    #     plt.title('RO COUNTS VS TIME')
    #     plt.xlabel("Time")
    #     plt.ylabel("RO Counts")
    #     # plt.xlim(24850000, 25100000)

    # plt.savefig(plot_path + "temp_cloudfpga.png")
    # plt.clf()
        