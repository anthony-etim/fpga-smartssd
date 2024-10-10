#!/usr/bin/python3.8
import matplotlib
matplotlib.use('Agg')
import ast
import glob
import os
import re
import sys
from matplotlib import pyplot as plt

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split(r'(\d+)', text) ]

if __name__ == "__main__":
    
    data_path_pwd = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_parallel_every_hour/'
    plot_path     = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/parallel_histogram/'
    data_path_list = []
    ro_counts = []
    
    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)

    data_path_list = sorted(data_path_list,key=natural_keys)
    
    # data_path_list.remove('ro_counts_stress_num_jobs_1_stress_size_4Gb_14-01-2023_16-57-33.txt')
    # data_path_list.remove('ro_counts_stress_num_jobs_1_stress_size_16Gb_14-01-2023_18-04-43.txt')

    # data_path_list.remove('ro_counts_stress_num_jobs_0_stress_size_0Gb_14-01-2023_15-50-27.txt')
    # data_path_list.remove('ro_counts_stress_num_jobs_8_stress_size_4Gb_14-01-2023_19-11-59.txt')
    # data_path_list.remove('ro_counts_stress_num_jobs_32_stress_size_1Gb_14-01-2023_21-06-53.txt')
    # data_path_list.remove('ro_counts_stress_num_jobs_64_stress_size_128Gb_14-01-2023_22-14-07.txt')

    print(data_path_list)
    # sys.exit()
    
    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    # plt.figure(figsize=(20,12))
    for i in range(len(data_path_list)):
        fig_ro_1 = plt.hist(ro_counts[i], bins='auto', alpha=0.8, label=data_path_list[i])
  
        
    plt.legend(loc='best', prop={'size': 5})  
    plt.title('RO COUNTS HISTOGRAM')
    plt.xlabel("RO Counts")
    plt.ylabel("Frequency")
    plt.xlim(24850000, 25100000)
    # plt.xlim(25040000, 25080000)
    plt.savefig(plot_path + "ro_counts_histogram_every_hour_cloudfpga.png")
    plt.clf()