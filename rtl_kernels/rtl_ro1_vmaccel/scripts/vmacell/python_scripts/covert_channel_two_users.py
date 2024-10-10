#!/usr/bin/python3.8
import matplotlib
matplotlib.use('Agg')
import ast
import glob
import os
import sys
import re
from matplotlib import pyplot as plt
import numpy as np

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [ atoi(c) for c in re.split(r'(\d+)', text) ]

# Please modify paths accordingly!
if __name__ == "__main__":

    #############################
    ## RO COUNTS DATA ACCURACY
    #############################
    data_path_pwd = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_covert_channel_two_users_all_delays/'
    # data_path_pwd = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_covert_channel_two_users_30_delay/'
    plot_path     = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/covert_channel/'
    data_path_list = []
    ro_counts = []
    run_1_bits = [1,1,1,0,0,0,1,0,0,0] # 0
    run_2_bits = [0,1,0,0,0,1,0,1,1,0] # 30
    run_3_bits = [0,0,1,0,0,1,1,0,0,0] # 60

    run_bits = [run_1_bits, run_2_bits, run_3_bits]
    # print(run_bits[0])
    predicted_bits_ro_counts = []
    accuracy_ro_counts = []

    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    # os.chdir(data_path_pwd_1)
    # for file in glob.glob("*.txt"):
    #     data_path_list.append(file)
    
    # data_path_list.sort()
    data_path_list = sorted(data_path_list,key=natural_keys)
    # print(data_path_list)
    
    # sys.exit()
    # data_path_list= data_path_list[0:21]
    # print(data_path_list)
    

    for i in range(len(data_path_list)):
        print(data_path_list[i])   
    
    # sys.exit()

    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))

    ro_counts_tmp = [] 
    for i in range(len(data_path_list)):
        ro_counts_tmp.append((sum(ro_counts[i]))/len(ro_counts[i]))

    print("")
    print(ro_counts_tmp)
    print(len(ro_counts_tmp))
    

    ro_counts_tmp_0 = ro_counts_tmp[0:10] 
    ro_counts_tmp_1 = ro_counts_tmp[10:20]  + ro_counts_tmp[20:30]
    print("")
    print(ro_counts_tmp_0)
    print(ro_counts_tmp_1)
    # sys.exit()
    
    # Threshold
    # run_1 = 2.5945 * 10^7
    # run_2 = 2.592 * 10^7
    # run_3 = 2.592 * 10^7
    # run_4 = 2.594 * 10^7
    # run_5 = 2.592 * 10^7
    # run_6 = 2.595 * 10^7
    # Average: 2.4867083333333333333333333333333 * 10^7
    threshold =  2.5945* (10**7)
    middle_threshold_0 = 2.585* (10**7)
    threshold_right_0 = 2.59475* (10**7)
    threshold_left_0 = 2.57475* (10**7)
    
    middle_threshold_1 = 2.5715* (10**7)
    threshold_right_1 = 2.5725* (10**7)
    threshold_left_1 = 2.5705* (10**7)
    
    # for i in range(0,len(ro_counts_tmp)):
    #     # if(i%10 == 0):
    #     #     print("")
    #     # print(ro_counts_tmp[i])
    #     # if(ro_counts_tmp[i] < 24866000):
    #     if(ro_counts_tmp[i] <= threshold):
    #         predicted_bits_ro_counts.append(1)
    #     else:
    #         predicted_bits_ro_counts.append(0)
    
    ## Run 1 RO counts
    for i in range(len(ro_counts_tmp_0)):
        if(ro_counts_tmp_0[i] > middle_threshold_0):
            if(ro_counts_tmp_0[i] <= threshold_right_0):
                predicted_bits_ro_counts.append(1)
            else:
                predicted_bits_ro_counts.append(0)
        else:
            if(ro_counts_tmp_0[i] <= threshold_left_0):
                predicted_bits_ro_counts.append(1)
            else:
                predicted_bits_ro_counts.append(0)
    
    ## Run 2 and 3 RO counts
    for i in range(len(ro_counts_tmp_1)):
        if(ro_counts_tmp_1[i] > middle_threshold_1):
            if(ro_counts_tmp_1[i] <= threshold_right_1):
                predicted_bits_ro_counts.append(1)
            else:
                predicted_bits_ro_counts.append(0)
        else:
            if(ro_counts_tmp_1[i] <= threshold_left_1):
                predicted_bits_ro_counts.append(1)
            else:
                predicted_bits_ro_counts.append(0)
                
    predicted_bits_ro_counts = [predicted_bits_ro_counts[i:i + 10] for i in range(0, len(predicted_bits_ro_counts), 10)]
    print(predicted_bits_ro_counts)
    # sys.exit()
    
    for i in range(len(predicted_bits_ro_counts)):
        count = 0
        for j in range(10):
            if(run_bits[i][j]==predicted_bits_ro_counts[i][j]):
                count = count + 1
        percent_correct = count * 10
        accuracy_ro_counts.append(percent_correct)
    
    print("Accuracy:", accuracy_ro_counts)
    #############################

    #############################
    ## TEMPERATURE DATA ACCURACY
    #############################
    run_1_temp = [[56,55,61],[57,55,61],[57,55,61],[50,49,56],[50,51,56],[50,49,56],[57,56,62],[50,49,56],[50,49,55],[50,49,55]]
    run_2_temp = [[57,55,60],[63,61,67],[57,55,61],[57,55,61],[57,55,60],[63,61,67],[57,55,61],[63,60,67],[63,61,67],[57,55,61]] # Done
    run_3_temp = [[57,55,61],[57,55,61],[63,60,67],[57,55,61],[57,56,61],[55,53,60],[58,56,61],[58,56,61],[57,56,61],[57,55,61]] # Done
    run_1_temp = [np.mean(arr) for arr in run_1_temp]  
    run_2_temp = [np.mean(arr) for arr in run_2_temp]  
    run_3_temp = [np.mean(arr) for arr in run_3_temp]  


    run_temp_0 = run_1_temp 
    run_temp_1 = run_2_temp + run_3_temp 
    run_temp_final = run_1_temp + run_2_temp + run_3_temp 
    ## change baseline too
    baseline_temp_0 = np.mean([51,50,56])
    baseline_temp_1 = np.mean([57,55,61])
    predicted_bits_temp = []
    accuracy_temp= []
    print(run_temp_final)
    print(baseline_temp_0)
    print(baseline_temp_1)

    ## Run 1 temp
    for i in range(0,len(run_temp_0)):
        if(run_temp_0[i] > baseline_temp_0 + 0.5):
            predicted_bits_temp.append(1)
        else:
            predicted_bits_temp.append(0)
    
    ## Run 2 and Run 3 temp
    for i in range(0,len(run_temp_1)):
        if(run_temp_1[i] > baseline_temp_1 + 0.5):
            predicted_bits_temp.append(1)
        else:
            predicted_bits_temp.append(0)

    predicted_bits_temp = [predicted_bits_temp[i:i + 10] for i in range(0, len(predicted_bits_temp), 10)]
    print(predicted_bits_temp)

    for i in range(len(predicted_bits_temp)):
        count = 0
        for j in range(10):
            if(run_bits[i][j]==predicted_bits_temp[i][j]):
                count = count + 1
        percent_correct = count * 10
        accuracy_temp.append(percent_correct)
    
    print("Accuracy:", accuracy_temp)

    # Creating the bar plot using Ro counts and Temperature Data
    number = 3
    r = np.arange(number)
    # r = np.arange(1)
    width = 0.4

    delay = ['0', '30', '60']
    # plt.figure(figsize=(9.5,6))
    plt.bar(r, accuracy_ro_counts, color='blue', width = width, edgecolor = 'black', label='RO Counts')
    plt.bar(r + width, accuracy_temp, color='red', width = width, edgecolor = 'black', label='Temperature')
    plt.xlabel("Extra Wait Time (s)", fontsize=18)
    plt.ylabel("Accuracy (%)", fontsize=18)
    plt.yticks(fontsize=12)
    plt.xticks(r + width/2, delay, fontsize=12)
    plt.legend(loc='lower right', fontsize=15)         
    plt.savefig(plot_path + "covert_channel_accuracy_runs_two_users_multi_delay.pdf")
    plt.clf()
