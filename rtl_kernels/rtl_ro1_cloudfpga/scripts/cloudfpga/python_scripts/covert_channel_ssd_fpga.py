#!/usr/bin/python3.8
import matplotlib
matplotlib.use('Agg')
import ast
import glob
import os
import sys
from matplotlib import pyplot as plt
import numpy as np
import re

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split(r'(\d+)', text) ]

# Please modify paths accordingly!
if __name__ == "__main__":

    #############################
    ## RO COUNTS DATA ACCURACY
    #############################
    # data_path_pwd = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_vmaccel/experiments/data_smart_ssd_1/'
    data_path_pwd = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_cloudfpga/experiments/ro_counts_logs/covert_channel_ssd_fpga_single/covert_channel_ssd_fpga_0/'
    bit_path      = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_cloudfpga/experiments/ro_counts_logs/covert_channel_ssd_fpga_single/covert_channel_ssd_fpga_0_32_bit.log'
    data_path_list = []
    ro_counts = []
    original_bits_str = []
    original_bits = []
    predicted_bits_ro_counts = []
    accuracy_ro_counts = []

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

    # print(original_bits)
    # sys.exit()

    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    data_path_list = sorted(data_path_list,key=natural_keys)

    # for i in range(len(data_path_list)):
    #     print(data_path_list[i])
    # sys.exit()

    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))

    ro_counts = [x[1000:1250] for x in ro_counts] # 40s
    # ro_counts = [x[0:900] for x in ro_counts] # 30s
    # ro_counts = [x[0:450] for x in ro_counts] # 15s
    # ro_counts = [x[0:150] for x in ro_counts] # 5s

    ro_counts_tmp = [] 
    for i in range(len(data_path_list)):
        ro_counts_tmp.append((sum(ro_counts[i]))/len(ro_counts[i]))

    print("")
    print(ro_counts_tmp)
    # sys.exit()

    # Threshold
    threshold =  2.5075* (10**7)
    # threshold =  2.6085* (10**7)
    # threshold =  2.58825* (10**7)
    # threshold =  2.58775* (10**7)
    middle_threshold = 2.595* (10**7)
    threshold_right = 2.607* (10**7)
    threshold_left = 2.587* (10**7)
    
    for i in range(0,len(ro_counts_tmp)):
        if(ro_counts_tmp[i] <= threshold):
            predicted_bits_ro_counts.append(1)
        else:
            predicted_bits_ro_counts.append(0)
    
    # for i in range(len(ro_counts_tmp)):
    #     if(ro_counts_tmp[i] > middle_threshold):
    #         if(ro_counts_tmp[i] <= threshold_right):
    #             predicted_bits_ro_counts.append(1)
    #         else:
    #             predicted_bits_ro_counts.append(0)
    #     else:
    #         if(ro_counts_tmp[i] <= threshold_left):
    #             predicted_bits_ro_counts.append(1)
    #         else:
    #             predicted_bits_ro_counts.append(0)
    
    ############################# 
    ## ACCURACY
    accuracy = 0
    count = 0

    print(original_bits)
    print(predicted_bits_ro_counts)

    for i in range(len(predicted_bits_ro_counts)):
        if(original_bits[i] == predicted_bits_ro_counts[i]):
            count = count + 1
    accuracy = (count/len(predicted_bits_ro_counts)) * 100
        
    print("Accuracy:", accuracy)

   