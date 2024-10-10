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

    #############################
    ## RO COUNTS DATA ACCURACY
    #############################
    data_path_pwd = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_covert_channel_one_user/'
    plot_path     = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/covert_channel/'
    data_path_list = []
    ro_counts = []
    run_1_bits = [0,0,0,0,1,0,0,0,0,1] # 60
    run_2_bits = [0,1,0,0,1,1,0,1,0,1] # 120
    run_3_bits = [1,1,0,1,1,0,1,0,0,0] # 180

    run_4_bits = [1,1,0,0,1,0,1,1,0,1] # 240
    run_5_bits = [0,1,0,0,1,1,1,1,1,0] # 300
    run_6_bits = [0,1,1,1,1,0,0,0,0,0] # 360

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
    middle_threshold = 2.585* (10**7)
    threshold_right = 2.59475* (10**7)
    threshold_left = 2.57475* (10**7)
    
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
    run_1_temp = [[51,50,56],[51,50,56],[51,50,56],[51,50,56],[56,55,61],[51,50,56],[51,50,56],[51,50,56],[51,50,56],[57,55,61]]
    run_2_temp = [[51,50,56],[55,54,60],[51,50,56],[51,50,56],[55,54,60],[55,54,60],[51,50,56],[55,54,60],[51,50,56],[55,54,60]]
    run_3_temp = [[54,53,59],[54,53,59],[51,50,56],[54,53,59],[54,53,59],[51,50,56],[54,53,59],[51,50,56],[51,50,56],[51,50,56]]
    run_4_temp = [[53,53,59],[53,52,58],[51,50,56],[51,50,56],[54,53,59],[51,50,56],[53,52,58],[54,53,59],[51,50,56],[53,52,58]]
    run_5_temp = [[51,50,56],[53,52,58],[51,50,56],[51,50,56],[53,52,58],[53,52,58],[53,52,58],[53,52,58],[53,52,58],[51,50,56]]
    run_6_temp = [[51,50,56],[53,52,58],[52,52,58],[53,52,58],[53,52,58],[51,50,56],[51,50,56],[51,50,56],[51,50,56],[51,50,56]]

    run_1_temp = [np.mean(arr) for arr in run_1_temp]  
    run_2_temp = [np.mean(arr) for arr in run_2_temp]  
    run_3_temp = [np.mean(arr) for arr in run_3_temp]  
    run_4_temp = [np.mean(arr) for arr in run_4_temp]  
    run_5_temp = [np.mean(arr) for arr in run_5_temp]  
    run_6_temp = [np.mean(arr) for arr in run_6_temp]  

    run_temp = run_1_temp + run_2_temp + run_3_temp + run_4_temp + run_5_temp + run_6_temp
    baseline_temp = np.mean([51,50,56])
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
    plt.savefig(plot_path + "covert_channel_accuracy_runs_vmacell.pdf")
    plt.clf()
