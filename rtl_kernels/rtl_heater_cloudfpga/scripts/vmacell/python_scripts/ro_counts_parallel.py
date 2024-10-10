#!/usr/bin/python3.8
import matplotlib
matplotlib.use('Agg')
import ast
import glob
import os
from matplotlib import pyplot as plt
import numpy as np


if __name__ == "__main__":
    
    data_path_pwd = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data/'
    plot_path     = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/parallel/'
    data_path_list = []
    ro_counts = []
    
    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    data_path_list.sort()
    # print(data_path_list)
    
    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    ro_counts = ro_counts[0]
    ro_counts_tmp = []
    # for i in range(len(data_path_list)):
    for i in range(0,1800,30):
        ro_counts_tmp.append((sum(ro_counts[i:i+30]))/len(ro_counts[i:i+30]))
            # ro_counts_tmp = ro_counts_tmp + (ro_counts[i])

    # plt.figure(figsize=(20,12))
    # for i in range(len(data_path_list)):
        # fig_ro_1 = plt.hist(ro_counts[i], bins='auto', alpha=0.8, label=data_path_list[i])


    plt.plot(ro_counts_tmp, color = 'b',marker="o")
    # x = np.arange(0,60,0.03333333334)
    # plt.legend(loc='best', prop={'size': 5})  
    plt.title('Total Measured time = 60s')
    plt.xlabel("Seconds")
    plt.ylabel("RO Counts")
    plt.grid()
    # plt.xlim(24850000, 25100000)
    plt.savefig(plot_path + "ro_counts_parallel_vmacell_final_test.png")
    plt.clf()