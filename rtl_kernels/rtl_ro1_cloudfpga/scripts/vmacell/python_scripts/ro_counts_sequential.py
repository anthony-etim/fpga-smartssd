#!/usr/bin/python3.8
import matplotlib
matplotlib.use('Agg')
import ast
import glob
import os
import re
from matplotlib import pyplot as plt
import numpy as np

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split(r'(\d+)', text) ]

# Please modify paths accordingly!
if __name__ == "__main__":
    data_path_pwd = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data/'
    plot_path     = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/sequential/'
    data_path_list = []
    ro_counts = []
    
    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    data_path_list = sorted(data_path_list,key=natural_keys)
    print(data_path_list)
    
    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    # print(len(ro_counts))

    ro_counts_tmp = [] 
    for i in range(len(data_path_list)):
        ro_counts_tmp.append((sum(ro_counts[i]))/len(ro_counts[i]))
    
    # ro_counts_tmp.sort()
    print(ro_counts_tmp)
    # plt.figure(figsize=(40,12))
    x = np.arange(0,600,30)
    plt.plot(x, ro_counts_tmp, color = 'b', marker="o")
    plt.title('Total Measured Time = 10 mins (max =65)')
    plt.xlabel("Seconds")
    plt.ylabel("RO Counts")
    plt.grid()
    plt.savefig(plot_path + "rocounts_sequential_vmaccel_final_sequential.png")
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
        