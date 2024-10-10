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
    
    # data_path_pwd = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data/'
    # data_path_pwd ='/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_smart_ssd_1_ssd_heater_ssd_sensor/'
    data_path_pwd ='/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_smart_ssd_1/'
    plot_path     = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/covert_channel_ssd_heater_ssd_sensor/'
    bit_path      = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/heater_logs/covert_channel_ssd_heater_ssd_sensor/covert_channel_ssd_heater_ssd_sensor_32_bit.log'
    data_path_list = []
    ro_counts = []
    original_bits_str = []
    original_bits = []

    #############################
    ## PARSING ALL BIT FILES
    #############################
    bit_pattern = re.compile(r"bit\sis\s\d", re.IGNORECASE)

    file1 = open(bit_path, 'r')
    Lines = file1.readlines()
    for line in Lines:
        temp_bit = bit_pattern.match(line)

        if temp_bit:
            original_bits_str.append(temp_bit.group())

    for line in original_bits_str:
        temp_bit = [int(s) for s in re.findall(r'\b\d+\b', line)]
        original_bits.append(temp_bit[0])
    #############################
    
    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    data_path_list = sorted(data_path_list,key=natural_keys)
    # print(data_path_list)
    # sys.exit()
    
    
    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    # ro_counts = [x[0:1792] for x in ro_counts]
    
    ro_counts_tmp = [] 
    for i in range(len(data_path_list)):
        ro_counts_tmp.append(ro_counts[i])

    for i in range(len(ro_counts_tmp)):
        fig_ro_1 = plt.hist(ro_counts_tmp[i], bins='auto', alpha=0.8, label=str(original_bits[i]))
  
        
    plt.title('RO COUNTS HISTOGRAM')
    plt.xlabel("RO Counts")
    plt.ylabel("Frequency")
    plt.legend()
    # plt.xlim(24850000, 25100000)
    # plt.xlim(24850000, 24890000)
    plt.savefig(plot_path + "ro_counts_covert_channel_histogram_ssd_heater_ssd_sensor_10000.pdf")
    plt.clf()