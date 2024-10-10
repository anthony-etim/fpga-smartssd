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

if __name__ == "__main__":

    ssd_temp_1 = []
    ssd_temp_2 = []
    ssd_temp_3 = []
    fpga_temp  = []
    fpga_time  = []

    # ssd_temp_1_new = []
    # ssd_temp_2_new = []
    # ssd_temp_3_new = []
    # fpga_temp_new  = []

    original_bits_str = []
    original_bits = []
    predicted_bits = []
    ssd_0_threshold = 62 ## baseline temperature for experiment

    data_path_pwd = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/heater_logs/covert_channel_fpga_ssd_single/covert_channel_fpga_ssd_0/'
    plot_path = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/plots/heater/'
    bit_path = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/heater_logs/covert_channel_fpga_ssd_single/covert_channel_fpga_ssd_0_32_bit.log'
    data_path_list = []

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

    ## Getting all log files for heater log files
    os.chdir(data_path_pwd)
    for file in glob.glob("*.log"):
        data_path_list.append(file)
    
    data_path_list = sorted(data_path_list,key=natural_keys)
    
    # print(data_path_list)
    # data_path_list.sort()

    #############################
    ## PARSING ALL 32 LOG FILES
    #############################
    
    for i in range(len(data_path_list)):
        ssd_temp_3 = []
        ssd_temp_3_new = []
        ssd_time   = []
        file1 = open(data_path_list[i], 'r')
        Lines = file1.readlines()

        ssd_3_pattern = re.compile(r"Temperature Sensor 3\s+:\s\d\d\sC", re.IGNORECASE)
        time_pattern  = re.compile(r"^[0-9]+$", re.IGNORECASE)
        
        for line in Lines:
            temp_ssd_3 = ssd_3_pattern.match(line)
            temp_time = time_pattern.match(line)
        
            if temp_ssd_3:
                ssd_temp_3.append(temp_ssd_3.group())
            
            if temp_time:
                ssd_time.append(temp_time.group())
        
        ####################
        ## SSD Time
        ssd_time = [int(s) for s in ssd_time]
        ssd_time.insert(0,ssd_time[0])

        ssd_time = [item - ssd_time[idx - 1] for idx, item in enumerate(ssd_time)][1:]
        # ssd_time = [item - ssd_time[idx - 1] for idx, item in enumerate(ssd_time) if idx > 0]
        ssd_time = [x/1000 for x in ssd_time]
        ssd_time = np.array(ssd_time)
        ssd_time = np.cumsum(ssd_time)
        res = next(x for x, val in enumerate(ssd_time) if val >= 40) ## finding index of datapoint around 40s
        #####################

        #############################
        ## PARSING AGAIN INDIVIDUALLY
        #############################        
        for line in ssd_temp_3:
            temp_ssd_3 = [int(s) for s in re.findall(r'\b\d+\b', line)]
            ssd_temp_3_new.append(temp_ssd_3[1])
        
        # ssd_temp_3_new = np.mean(ssd_temp_3_new)
        # ssd_temp_3_new = np.max(ssd_temp_3_new)
        ssd_temp_3_new = ssd_temp_3_new[res]
        print(ssd_temp_3_new)
        if(ssd_temp_3_new > ssd_0_threshold):
            predicted_bits.append(1)
        else:
            predicted_bits.append(0)

############################# 
## ACCURACY
accuracy = 0
count = 0

print(original_bits)
print((predicted_bits))

for i in range(len(predicted_bits)):
    if(original_bits[i] == predicted_bits[i]):
        count = count + 1
accuracy = (count/len(predicted_bits)) * 100
    
print("Accuracy:", accuracy)