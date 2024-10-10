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
    ####################################################################################################################
    ##########################################################
    ## RO COUNTS DATA ACCURACY Smart SSD_0
    ##########################################################
    data_path_pwd   = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_vmaccel/experiments/data_smart_ssd_0_parallel/'
    plot_path       = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_vmaccel/experiments/plots/covert_channel_parallel_smart_ssd/'
    bit_path_ssd_0  = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_vmaccel/scripts/vmacell/bash_scripts/logs_covert_channel_parallel_ssd_0/bit.log'
    temp_path_ssd_0 = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_vmaccel/scripts/vmacell/bash_scripts/logs_covert_channel_parallel_ssd_0/covert_ssd_0.log'
    data_path_list = []
    ro_counts = []
    original_bits_str = []
    original_bits = []

    #############################
    ## PARSING ALL BIT FILES
    #############################
    bit_pattern = re.compile(r"bit\sis\s\d", re.IGNORECASE)

    file1 = open(bit_path_ssd_0, 'r')
    Lines = file1.readlines()
    for line in Lines:
        temp_bit = bit_pattern.match(line)

        if temp_bit:
            original_bits_str.append(temp_bit.group())

    for line in original_bits_str:
        temp_bit = [int(s) for s in re.findall(r'\b\d+\b', line)]
        original_bits.append(temp_bit[0])

    original_bits = [original_bits[i:i + 10] for i in range(0, len(original_bits), 10)]
    #############################
    
    print(original_bits)
    # sys.exit()
    predicted_bits_ro_counts = []
    accuracy_ro_counts = []

    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    data_path_list = sorted(data_path_list,key=natural_keys)

    data_path_list= data_path_list[0:60]

    # for i in range(len(data_path_list)):
    #     print(data_path_list[i])

    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    # print((ro_counts[0]))
    # print("")
    # print(len(ro_counts[0]))
    # ro_counts = [x[0:1792] for x in ro_counts]
    # print(len(ro_counts[0]))
    # print((ro_counts[0]))
    # sys.exit()

    ro_counts_tmp = [] 
    for i in range(len(data_path_list)):
        ro_counts_tmp.append((sum(ro_counts[i]))/len(ro_counts[i]))

    # print("")
    # print(ro_counts_tmp)
    # sys.exit()

    # Threshold
    # run_1 = 2.5945 * 10^7
    # run_2 = 2.592 * 10^7
    # run_3 = 2.592 * 10^7
    # run_4 = 2.594 * 10^7
    # run_5 = 2.592 * 10^7
    # run_6 = 2.595 * 10^7
    # Average: 2.4867083333333333333333333333333 * 10^7
    middle_threshold = 2.58* (10**7)
    threshold_right = 2.5925* (10**7)
    threshold_left = 2.57125* (10**7)
    
    # for i in range(0,len(ro_counts_tmp)):
    #     # if(i%10 == 0):
    #     #     print("")
    #     # print(ro_counts_tmp[i])
    #     # if(ro_counts_tmp[i] < 24866000):
    #     if(ro_counts_tmp[i] <= threshold):
    #         predicted_bits_ro_counts.append(1)
    #     else:
    #         predicted_bits_ro_counts.append(0)
    
    for i in range(len(ro_counts_tmp)):
        if(ro_counts_tmp[i] > middle_threshold):
            if(ro_counts_tmp[i] <= threshold_right):
                predicted_bits_ro_counts.append(1)
            else:
                predicted_bits_ro_counts.append(0)
        else:
            if(ro_counts_tmp[i] <= threshold_left):
                predicted_bits_ro_counts.append(1)
            else:
                predicted_bits_ro_counts.append(0)
                
    predicted_bits_ro_counts = [predicted_bits_ro_counts[i:i + 10] for i in range(0, len(predicted_bits_ro_counts), 10)]
    print(predicted_bits_ro_counts)
    # sys.exit()
    
    for i in range(len(predicted_bits_ro_counts)):
        count = 0
        for j in range(10):
            if(original_bits[i][j]==predicted_bits_ro_counts[i][j]):
                count = count + 1
        percent_correct = count * 10
        accuracy_ro_counts.append(percent_correct)
    
    accuracy_ro_counts_ssd_0 = accuracy_ro_counts
    print("RO COUNTS Accuracy for SSD 0:", accuracy_ro_counts)
    #############################

    #############################
    ## TEMPERATURE DATA ACCURACY
    #############################
    ssd_temp = []
    ssd_temp_new = []
    file1 = open(temp_path_ssd_0, 'r')
    Lines = file1.readlines()
    
    #############################
    ## PARSING LOG FILE
    #############################
    
    ssd_1_pattern = re.compile(r"Temperature Sensor 1\s+:\s\d\d\sC", re.IGNORECASE)
    ssd_2_pattern = re.compile(r"Temperature Sensor 2\s+:\s\d\d\sC", re.IGNORECASE)
    ssd_3_pattern = re.compile(r"Temperature Sensor 3\s+:\s\d\d\sC", re.IGNORECASE)
    
    for line in Lines:
        temp_ssd_1 = ssd_1_pattern.match(line)
        temp_ssd_2 = ssd_2_pattern.match(line)
        temp_ssd_3 = ssd_3_pattern.match(line)
        
        if temp_ssd_1:
            ssd_temp.append(temp_ssd_1.group())
        
        if temp_ssd_2:
            ssd_temp.append(temp_ssd_2.group())

        if temp_ssd_3:
            ssd_temp.append(temp_ssd_3.group())
    
    #############################
    ## PARSING AGAIN INDIVIDUALLY
    #############################
    for line in ssd_temp:
        temp_ssd = [int(s) for s in re.findall(r'\b\d+\b', line)]
        ssd_temp_new.append(temp_ssd[1])
   
    ssd_temp_new = [ssd_temp_new[i:i + 3] for i in range(0, len(ssd_temp_new), 3)]
    # print(ssd_temp_new)
    
    run_1_temp = ssd_temp_new[0:10]
    run_2_temp = ssd_temp_new[10:20]
    run_3_temp = ssd_temp_new[20:30]
    run_4_temp = ssd_temp_new[30:40]
    run_5_temp = ssd_temp_new[40:50]
    run_6_temp = ssd_temp_new[50:60]

    run_1_temp = [np.mean(arr) for arr in run_1_temp]  
    run_2_temp = [np.mean(arr) for arr in run_2_temp]  
    run_3_temp = [np.mean(arr) for arr in run_3_temp]  
    run_4_temp = [np.mean(arr) for arr in run_4_temp]  
    run_5_temp = [np.mean(arr) for arr in run_5_temp]  
    run_6_temp = [np.mean(arr) for arr in run_6_temp]  

    run_temp = run_1_temp + run_2_temp + run_3_temp + run_4_temp + run_5_temp + run_6_temp
    baseline_temp = np.mean([59,57,62]) 
    predicted_bits_temp = []
    accuracy_temp= []
    # print(run_temp)
    # print(baseline_temp)

    for i in range(0,len(run_temp)):
        if(run_temp[i] > baseline_temp + 0.5):
            predicted_bits_temp.append(1)
        else:
            predicted_bits_temp.append(0)

    predicted_bits_temp = [predicted_bits_temp[i:i + 10] for i in range(0, len(predicted_bits_temp), 10)]
    print(predicted_bits_temp)

    for i in range(len(predicted_bits_temp)):
        count = 0
        for j in range(10):
            if(original_bits[i][j]==predicted_bits_temp[i][j]):
                count = count + 1
        percent_correct = count * 10
        accuracy_temp.append(percent_correct)
    
    accuracy_temp_ssd_0 = accuracy_temp
    print("Temperature Accuracy for SSD 0:", accuracy_temp)
    
    ## SSD 0 Plot
    # Creating the bar plot using Ro counts and Temperature Data
    number = 6
    r = np.arange(number)
    width = 0.4

    delay = ['60','120','180','240','300','360']
    # plt.figure(figsize=(9.5,6))
    plt.bar(r, accuracy_ro_counts, color='blue', width = width, edgecolor = 'black', label='RO Counts')
    plt.bar(r + width, accuracy_temp, color='red', width = width, edgecolor = 'black', label='Temperature')
    plt.xlabel("Delay Time (s)", fontsize=18)
    plt.ylabel("Accuracy (%)", fontsize=18)
    plt.yticks(fontsize=12)
    plt.xticks(r + width/2, delay, fontsize=12)
    plt.legend(loc='lower right', fontsize=15)          
    plt.savefig(plot_path + "covert_channel_ssd_0_accuracy_runs.pdf")
    plt.clf()
    ####################################################################################################################

    print("\n############################################################################################################\n")
    ####################################################################################################################
    ##########################################################
    ## RO COUNTS DATA ACCURACY Smart SSD_1
    ##########################################################
    data_path_pwd   = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_vmaccel/experiments/data_smart_ssd_1_parallel/'
    plot_path       = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_vmaccel/experiments/plots/covert_channel_parallel_smart_ssd/'
    bit_path_ssd_1  = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_vmaccel/scripts/vmacell/bash_scripts/logs_covert_channel_parallel_ssd_1/bit.log'
    temp_path_ssd_1 = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1_vmaccel/scripts/vmacell/bash_scripts/logs_covert_channel_parallel_ssd_1/covert_ssd_1.log'
    data_path_list = []
    ro_counts = []
    original_bits_str = []
    original_bits = []

    #############################
    ## PARSING ALL BIT FILES
    #############################
    bit_pattern = re.compile(r"bit\sis\s\d", re.IGNORECASE)

    file1 = open(bit_path_ssd_1, 'r')
    Lines = file1.readlines()
    for line in Lines:
        temp_bit = bit_pattern.match(line)

        if temp_bit:
            original_bits_str.append(temp_bit.group())

    for line in original_bits_str:
        temp_bit = [int(s) for s in re.findall(r'\b\d+\b', line)]
        original_bits.append(temp_bit[0])

    original_bits = [original_bits[i:i + 10] for i in range(0, len(original_bits), 10)]
    #############################
    
    print(original_bits)
    # sys.exit()
    predicted_bits_ro_counts = []
    accuracy_ro_counts = []

    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    data_path_list = sorted(data_path_list,key=natural_keys)

    data_path_list= data_path_list[0:60]

    # for i in range(len(data_path_list)):
    #     print(data_path_list[i])

    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    # print((ro_counts[0]))
    # print("")
    # print(len(ro_counts[0]))
    # ro_counts = [x[0:1792] for x in ro_counts]
    # print(len(ro_counts[0]))
    # print((ro_counts[0]))
    # sys.exit()

    ro_counts_tmp = [] 
    for i in range(len(data_path_list)):
        ro_counts_tmp.append((sum(ro_counts[i]))/len(ro_counts[i]))

    # print("")
    # print(ro_counts_tmp)
    # sys.exit()

    # Threshold
    # run_1 = 2.5945 * 10^7
    # run_2 = 2.592 * 10^7
    # run_3 = 2.592 * 10^7
    # run_4 = 2.594 * 10^7
    # run_5 = 2.592 * 10^7
    # run_6 = 2.595 * 10^7
    # Average: 2.4867083333333333333333333333333 * 10^7
    middle_threshold = 2.595* (10**7)
    threshold_right = 2.607* (10**7)
    threshold_left = 2.587* (10**7)
    
    # for i in range(0,len(ro_counts_tmp)):
    #     # if(i%10 == 0):
    #     #     print("")
    #     # print(ro_counts_tmp[i])
    #     # if(ro_counts_tmp[i] < 24866000):
    #     if(ro_counts_tmp[i] <= threshold):
    #         predicted_bits_ro_counts.append(1)
    #     else:
    #         predicted_bits_ro_counts.append(0)
    
    for i in range(len(ro_counts_tmp)):
        if(ro_counts_tmp[i] > middle_threshold):
            if(ro_counts_tmp[i] <= threshold_right):
                predicted_bits_ro_counts.append(1)
            else:
                predicted_bits_ro_counts.append(0)
        else:
            if(ro_counts_tmp[i] <= threshold_left):
                predicted_bits_ro_counts.append(1)
            else:
                predicted_bits_ro_counts.append(0)
                
    predicted_bits_ro_counts = [predicted_bits_ro_counts[i:i + 10] for i in range(0, len(predicted_bits_ro_counts), 10)]
    print(predicted_bits_ro_counts)
    # sys.exit()
    
    for i in range(len(predicted_bits_ro_counts)):
        count = 0
        for j in range(10):
            if(original_bits[i][j]==predicted_bits_ro_counts[i][j]):
                count = count + 1
        percent_correct = count * 10
        accuracy_ro_counts.append(percent_correct)
    
    accuracy_ro_counts_ssd_1 = accuracy_ro_counts
    print("RO COUNTS Accuracy for SSD 1:", accuracy_ro_counts)
    #############################

    #############################
    ## TEMPERATURE DATA ACCURACY
    #############################
    ssd_temp = []
    ssd_temp_new = []
    file1 = open(temp_path_ssd_1, 'r')
    Lines = file1.readlines()
    
    #############################
    ## PARSING LOG FILE
    #############################
    
    ssd_1_pattern = re.compile(r"Temperature Sensor 1\s+:\s\d\d\sC", re.IGNORECASE)
    ssd_2_pattern = re.compile(r"Temperature Sensor 2\s+:\s\d\d\sC", re.IGNORECASE)
    ssd_3_pattern = re.compile(r"Temperature Sensor 3\s+:\s\d\d\sC", re.IGNORECASE)
    
    for line in Lines:
        temp_ssd_1 = ssd_1_pattern.match(line)
        temp_ssd_2 = ssd_2_pattern.match(line)
        temp_ssd_3 = ssd_3_pattern.match(line)
        
        if temp_ssd_1:
            ssd_temp.append(temp_ssd_1.group())
        
        if temp_ssd_2:
            ssd_temp.append(temp_ssd_2.group())

        if temp_ssd_3:
            ssd_temp.append(temp_ssd_3.group())
    
    #############################
    ## PARSING AGAIN INDIVIDUALLY
    #############################
    for line in ssd_temp:
        temp_ssd = [int(s) for s in re.findall(r'\b\d+\b', line)]
        ssd_temp_new.append(temp_ssd[1])
   
    ssd_temp_new = [ssd_temp_new[i:i + 3] for i in range(0, len(ssd_temp_new), 3)]
    # print(ssd_temp_new)
    
    run_1_temp = ssd_temp_new[0:10]
    run_2_temp = ssd_temp_new[10:20]
    run_3_temp = ssd_temp_new[20:30]
    run_4_temp = ssd_temp_new[30:40]
    run_5_temp = ssd_temp_new[40:50]
    run_6_temp = ssd_temp_new[50:60]

    run_1_temp = [np.mean(arr) for arr in run_1_temp]  
    run_2_temp = [np.mean(arr) for arr in run_2_temp]  
    run_3_temp = [np.mean(arr) for arr in run_3_temp]  
    run_4_temp = [np.mean(arr) for arr in run_4_temp]  
    run_5_temp = [np.mean(arr) for arr in run_5_temp]  
    run_6_temp = [np.mean(arr) for arr in run_6_temp]  

    run_temp = run_1_temp + run_2_temp + run_3_temp + run_4_temp + run_5_temp + run_6_temp
    baseline_temp = np.mean([55,54,61]) 
    predicted_bits_temp = []
    accuracy_temp= []
    # print(run_temp)
    # print(baseline_temp)

    for i in range(0,len(run_temp)):
        if(run_temp[i] > baseline_temp + 0.5):
            predicted_bits_temp.append(1)
        else:
            predicted_bits_temp.append(0)

    predicted_bits_temp = [predicted_bits_temp[i:i + 10] for i in range(0, len(predicted_bits_temp), 10)]
    print(predicted_bits_temp)

    for i in range(len(predicted_bits_temp)):
        count = 0
        for j in range(10):
            if(original_bits[i][j]==predicted_bits_temp[i][j]):
                count = count + 1
        percent_correct = count * 10
        accuracy_temp.append(percent_correct)
    
    accuracy_temp_ssd_1 = accuracy_temp
    print("Temperature Accuracy for SSD 1:", accuracy_temp)
    
    ## SSD 1 Plot
    # Creating the bar plot using Ro counts and Temperature Data
    number = 6
    r = np.arange(number)
    width = 0.4

    delay = ['60','120','180','240','300','360']
    # plt.figure(figsize=(9.5,6))
    plt.bar(r, accuracy_ro_counts, color='blue', width = width, edgecolor = 'black', label='RO Counts')
    plt.bar(r + width, accuracy_temp, color='red', width = width, edgecolor = 'black', label='Temperature')
    plt.xlabel("Delay Time (s)", fontsize=18)
    plt.ylabel("Accuracy (%)", fontsize=18)
    plt.yticks(fontsize=12)
    plt.xticks(r + width/2, delay, fontsize=12)
    plt.legend(loc='lower right', fontsize=15)          
    plt.savefig(plot_path + "covert_channel_ssd_1_accuracy_runs.pdf")
    plt.clf()

    ####################################################################################################################


    ## Combined Plot
    # Creating the bar plot using Ro counts and Temperature Data
    number = 6
    r = np.arange(number)
    width = 0.4

    accuracy_ro_counts_combined = [(x + y)/2 for x, y in zip(accuracy_ro_counts_ssd_0, accuracy_ro_counts_ssd_1)]
    accuracy_temp_combined = [(x + y)/2 for x, y in zip(accuracy_temp_ssd_0, accuracy_temp_ssd_1)]
    
    delay = ['60','120','180','240','300','360']
    # plt.figure(figsize=(9.5,6))
    plt.bar(r, accuracy_ro_counts_combined, color='blue', width = width, edgecolor = 'black', label='RO Counts')
    plt.bar(r + width, accuracy_temp_combined, color='red', width = width, edgecolor = 'black', label='Temperature')
    plt.xlabel("Delay Time (s)", fontsize=18)
    plt.ylabel("Accuracy (%)", fontsize=18)
    plt.yticks(fontsize=12)
    plt.xticks(r + width/2, delay, fontsize=12)
    plt.legend(loc='lower right', fontsize=15)          
    plt.savefig(plot_path + "covert_channel_combined_ssd_accuracy_runs.pdf")
    plt.clf()
