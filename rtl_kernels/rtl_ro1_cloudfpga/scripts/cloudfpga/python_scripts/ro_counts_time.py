#!/usr/bin/python3.8
import ast
import glob
import os
from matplotlib import pyplot as plt


if __name__ == "__main__":
    
    data_path_pwd = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_1/'
    plot_path     = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/parallel/time/run_2/'
    data_path_list = []
    ro_counts = []
    
    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    print(data_path_list)
    
    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    # plt.figure(figsize=(20,12))
    for i in range(len(data_path_list)):
        # fig_ro_1 = plt.hist(ro_counts[i], bins='auto', alpha=0.8, label=data_path_list[i])
        plt.plot(ro_counts[i], color = 'r')
        # plt.legend(loc='best', prop={'size': 5})  
        plt.title('RO COUNTS VS TIME')
        plt.xlabel("Time")
        plt.ylabel("RO Counts")
        # plt.xlim(24850000, 25100000)
        plt.savefig(plot_path + data_path_list[i] + "_cloudfpga.png")
        plt.clf()