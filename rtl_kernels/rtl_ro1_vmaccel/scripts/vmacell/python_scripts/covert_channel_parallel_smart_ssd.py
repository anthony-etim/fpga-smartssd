#!/usr/bin/python3.8
import matplotlib
matplotlib.use('Agg')
import ast
import glob
import os
import sys
from matplotlib import pyplot as plt
import numpy as np

# Please modify paths accordingly!
if __name__ == "__main__":
    ####################################################################################################################
    ##########################################################
    ## RO COUNTS DATA ACCURACY Smart SSD_0
    ##########################################################
    data_path_pwd = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_smart_ssd_0/'
    plot_path     = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/covert_channel_parallel_smart_ssd/'
    data_path_list = []
    ro_counts = []
    
    ## change bits
    run_1_bits = [1,0,0,0,0,0,0,1,0,0] # 60
    run_2_bits = [0,0,0,0,0,1,1,1,1,0] # 120
    run_3_bits = [0,0,1,0,0,0,1,0,1,0] # 180

    run_4_bits = [1,0,0,0,0,1,1,1,1,1] # 240
    run_5_bits = [1,0,1,0,1,0,0,1,0,1] # 300
    run_6_bits = [0,0,0,1,1,1,0,1,0,0] # 360 ALL SET

    run_bits = [run_1_bits, run_2_bits, run_3_bits, run_4_bits, run_5_bits, run_6_bits]
    # print(run_bits[0])
    predicted_bits_ro_counts = []
    accuracy_ro_counts = []

    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    data_path_list.sort()

    data_path_list= data_path_list[0:60]

    for i in range(len(data_path_list)):
        print(data_path_list[i])

    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    # print((ro_counts[0]))
    # print("")
    # print(len(ro_counts[0]))
    ro_counts = [x[0:1792] for x in ro_counts]
    # print(len(ro_counts[0]))
    # print((ro_counts[0]))
    # sys.exit()

    ro_counts_tmp = [] 
    for i in range(len(data_path_list)):
        ro_counts_tmp.append((sum(ro_counts[i]))/len(ro_counts[i]))

    print("")
    print(ro_counts_tmp)
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
    middle_threshold = 2.5825* (10**7)
    threshold_right = 2.593* (10**7)
    threshold_left = 2.5729* (10**7)
    
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
    # print(predicted_bits_ro_counts)
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
    run_1_temp = [[63,61,67],[58,56,62],[58,56,62],[58,56,62],[58,56,62],[58,57,62],[58,56,62],[64,62,67],[58,56,62],[58,56,61]]
    run_2_temp = [[58,56,62],[59,57,62],[58,56,62],[58,56,62],[59,57,62],[64,61,67],[64,61,68],[64,61,68],[64,61,67],[58,56,62]]
    run_3_temp = [[58,56,61],[57,56,61],[62,60,66],[58,56,61],[57,56,61],[58,56,61],[62,60,66],[57,56,61],[62,60,66],[58,56,61]]
    run_4_temp = [[61,59,65],[58,56,61],[58,56,61],[58,56,62],[58,56,62],[61,59,65],[61,59,65],[61,59,65],[61,59,65],[61,59,65]]
    run_5_temp = [[61,59,64],[58,56,61],[60,58,64],[57,56,61],[60,58,64],[58,56,61],[58,56,61],[60,58,64],[57,56,61],[60,58,64]]
    run_6_temp = [[57,56,61],[58,56,61],[58,56,61],[60,58,63],[60,58,64],[60,58,64],[57,56,61],[60,58,64],[58,56,61],[57,56,61]] # ALL SET

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
    print(run_temp)
    print(baseline_temp)

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
            if(run_bits[i][j]==predicted_bits_temp[i][j]):
                count = count + 1
        percent_correct = count * 10
        accuracy_temp.append(percent_correct)
    
    print("Accuracy:", accuracy_temp)
    # sys.exit()
    ####################################################################################################################

    ####################################################################################################################
    ##########################################################
    ## RO COUNTS DATA ACCURACY Smart SSD_1
    ##########################################################
    data_path_pwd = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_smart_ssd_1/'
    plot_path     = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/covert_channel_parallel_smart_ssd/'
    data_path_list = []
    ro_counts = []
    
    ## change bits
    run_1_bits = [0,1,1,1,0,1,0,1,0,0] # 60
    run_2_bits = [0,1,0,0,1,0,1,1,0,0] # 120
    run_3_bits = [0,0,0,0,0,1,1,0,0,0] # 180

    run_4_bits = [0,1,1,1,1,0,1,0,0,0] # 240
    run_5_bits = [1,1,1,0,0,1,1,1,0,1] # 300
    run_6_bits = [0,1,1,0,1,1,0,1,1,0] # 360 ALL SET

    run_bits = [run_1_bits, run_2_bits, run_3_bits, run_4_bits, run_5_bits, run_6_bits]
    # print(run_bits[0])
    predicted_bits_ro_counts = []
    accuracy_ro_counts = []

    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    data_path_list.sort()

    data_path_list= data_path_list[0:60]

    for i in range(len(data_path_list)):
        print(data_path_list[i])

    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    # print((ro_counts[0]))
    # print("")
    # print(len(ro_counts[0]))
    ro_counts = [x[0:1792] for x in ro_counts]
    # print(len(ro_counts[0]))
    # print((ro_counts[0]))
    # sys.exit()

    ro_counts_tmp = [] 
    for i in range(len(data_path_list)):
        ro_counts_tmp.append((sum(ro_counts[i]))/len(ro_counts[i]))

    print("")
    print(ro_counts_tmp)
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
    middle_threshold = 2.595* (10**7)
    threshold_right = 2.605* (10**7)
    threshold_left = 2.5785* (10**7)
    
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
    # print(predicted_bits_ro_counts)
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
    run_1_temp = [[55,53,60],[61,58,66],[61,58,65],[61,59,66],[55,53,60],[61,59,66],[55,53,60],[60,58,65],[55,53,60],[55,53,60]]
    run_2_temp = [[55,53,60],[59,58,65],[55,53,60],[55,53,60],[60,58,65],[55,54,61],[59,58,65],[59,58,65],[55,54,61],[55,53,60]]
    run_3_temp = [[54,53,60],[54,53,60],[55,53,60],[54,53,59],[54,53,59],[58,56,64],[58,56,64],[54,53,60],[55,53,60],[54,53,60]] # ALL SET UNTIL HERE
    run_4_temp = [[55,53,60],[57,56,63],[57,56,63],[57,56,63],[57,56,63],[55,53,60],[58,56,63],[55,53,60],[55,53,60],[55,53,60]]
    run_5_temp = [[57,55,63],[57,55,62],[57,55,63],[54,53,60],[55,53,60],[57,55,62],[57,55,62],[57,55,63],[54,53,60],[57,55,63]]
    run_6_temp = [[54,53,60],[56,55,62],[56,55,62],[55,53,60],[57,55,62],[57,55,62],[54,53,60],[57,55,62],[56,55,62],[54,53,60]]

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
    print(run_temp)
    print(baseline_temp)

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
            if(run_bits[i][j]==predicted_bits_temp[i][j]):
                count = count + 1
        percent_correct = count * 10
        accuracy_temp.append(percent_correct)
    
    print("Accuracy:", accuracy_temp)
    sys.exit()
    
    # Creating the bar plot using Ro counts and Temperature Data
    number = 6
    r = np.arange(number)
    width = 0.4

    delay = ['60','120','180','240','300','360']
    # plt.figure(figsize=(9.5,6))
    plt.bar(r, accuracy_ro_counts, color='blue', width = width, edgecolor = 'black', label='RO Counts')
    plt.bar(r + width, accuracy_temp, color='red', width = width, edgecolor = 'black', label='Temperature')
    plt.xlabel("Delay Time (s)", fontsize=15)
    plt.ylabel("Accuracy", fontsize=15)
    plt.yticks(fontsize=15)
    plt.xticks(r + width/2, delay, fontsize=15)
    plt.legend(loc='lower right', fontsize=12)          
    plt.savefig(plot_path + "covert_channel_accuracy_runs.pdf")
    plt.clf()
