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
    
    data_path_pwd = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data/'
    plot_path     = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/covert_channel/'
    data_path_list = []
    ro_counts = []
    
    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    # data_path_list = sorted(data_path_list,key=natural_keys)
    data_path_list.sort()

    data_path_list= data_path_list[0:60]
    
    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    ro_counts_tmp = [] 
    for i in range(len(data_path_list)):
        ro_counts_tmp.append(ro_counts[i])
    
    ro_counts_tmp_run_1 = ro_counts_tmp[0:10]
    ro_counts_tmp_run_2 = ro_counts_tmp[10:20]
    ro_counts_tmp_run_3 = ro_counts_tmp[20:30]
    ro_counts_tmp_run_4 = ro_counts_tmp[30:40]
    ro_counts_tmp_run_5 = ro_counts_tmp[40:50]
    ro_counts_tmp_run_6 = ro_counts_tmp[50:60]    

    # plt.figure(figsize=(20,12))
    for i in range(len(ro_counts_tmp_run_4)):
        fig_ro_1 = plt.hist(ro_counts_tmp_run_4[i], bins='auto', alpha=0.8)
  
        
    # plt.legend(loc='best', prop={'size': 5})  
    plt.title('RO COUNTS HISTOGRAM')
    plt.xlabel("RO Counts")
    plt.ylabel("Frequency")
    # plt.xlim(24850000, 25100000)
    # plt.xlim(24850000, 24890000)
    plt.savefig(plot_path + "ro_counts_covert_threshold_histogram_cloudfpga.png")
    plt.clf()