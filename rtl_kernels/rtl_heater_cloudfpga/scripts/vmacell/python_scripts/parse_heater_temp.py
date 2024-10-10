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

if __name__ == "__main__":

    ssd_temp_1 = []
    ssd_temp_2 = []
    ssd_temp_3 = []
    fpga_temp  = []
    time       = []
    ssd_time   = []
    fpga_time  = []

    ssd_temp_1_new = []
    ssd_temp_2_new = []
    ssd_temp_3_new = []
    fpga_temp_new  = []

    # data_path = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/fpga_temp.log'
    # data_path = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/heater_logs/fpga_temp_60_mins.log'
    data_path = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/heater_logs/covert_channel_fpga_ssd_single/covert_channel_fpga_ssd_0/fpga_temp_ssd_0_bit_0.log'
    plot_path = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_heater/experiments/plots/heater/'

    file1 = open(data_path, 'r')
    Lines = file1.readlines()

    #############################
    ## PARSING LOG FILE
    #############################

    ssd_1_pattern = re.compile(r"Temperature Sensor 1\s+:\s\d\d\sC", re.IGNORECASE)
    ssd_2_pattern = re.compile(r"Temperature Sensor 2\s+:\s\d\d\sC", re.IGNORECASE)
    ssd_3_pattern = re.compile(r"Temperature Sensor 3\s+:\s\d\d\sC", re.IGNORECASE)
    fpga_pattern  = re.compile(r"\s+FPGA\s+:\s+\d\d\sC", re.IGNORECASE)
    time_pattern  = re.compile(r"^[0-9]+$", re.IGNORECASE)
    
    temp_time_prev = ''
    fpga_temp_prev = ''
    temp_time_flag = False
    fpga_time_flag = False
    
    for line in Lines:
        temp_ssd_1 = ssd_1_pattern.match(line)
        temp_ssd_2 = ssd_2_pattern.match(line)
        temp_ssd_3 = ssd_3_pattern.match(line)
        temp_time = time_pattern.match(line)
        temp_fpga = fpga_pattern.match(line)
        
        if temp_time:
            ssd_time.append(temp_time.group())
            temp_time_prev = temp_time.group()
            temp_time_flag = True
        
        if temp_ssd_1:
            ssd_temp_1.append(temp_ssd_1.group())
        
        if temp_ssd_2:
            ssd_temp_2.append(temp_ssd_2.group())

        if temp_ssd_3:
            ssd_temp_3.append(temp_ssd_3.group())
            
        if temp_fpga:
            fpga_temp_prev = temp_fpga.group()
            fpga_time_flag  = True
        
        if(temp_time_flag & fpga_time_flag):
            fpga_time.append(temp_time_prev)
            fpga_temp.append(fpga_temp_prev)
            temp_time_flag = False
            fpga_time_flag = False

    # print(len(ssd_time))
    # print(len(fpga_time))
    # print(len(fpga_temp))
    # sys.exit()        
    
    #############################
    ## PARSING AGAIN INDIVIDUALLY
    #############################
    for line in ssd_temp_1:
        temp_ssd_1 = [int(s) for s in re.findall(r'\b\d+\b', line)]
        ssd_temp_1_new.append(temp_ssd_1[1])
    
    for line in ssd_temp_2:
        temp_ssd_2 = [int(s) for s in re.findall(r'\b\d+\b', line)]
        ssd_temp_2_new.append(temp_ssd_2[1])
    
    for line in ssd_temp_3:
        temp_ssd_3 = [int(s) for s in re.findall(r'\b\d+\b', line)]
        ssd_temp_3_new.append(temp_ssd_3[1])

    for line in fpga_temp:
        temp_fpga = [int(s) for s in re.findall(r'\b\d+\b', line)]
        fpga_temp_new.append(temp_fpga[0])
    
    ####################
    ## SSD Time
    ssd_time = [int(s) for s in ssd_time]
    ssd_time.insert(0,ssd_time[0])

    ssd_time = [item - ssd_time[idx - 1] for idx, item in enumerate(ssd_time)][1:]
    # ssd_time = [item - ssd_time[idx - 1] for idx, item in enumerate(ssd_time) if idx > 0]
    ssd_time = [x/1000 for x in ssd_time]
    ssd_time = np.array(ssd_time)
    ssd_time = np.cumsum(ssd_time)
    #####################
    
    ####################
    ## FPGA Time
    fpga_time = [int(s) for s in fpga_time]
    fpga_time.insert(0,fpga_time[0])

    fpga_time = [item - fpga_time[idx - 1] for idx, item in enumerate(fpga_time)][1:]
    # fpga_time = [item - fpga_time[idx - 1] for idx, item in enumerate(fpga_time) if idx > 0]
    fpga_time = [x/1000 for x in fpga_time]
    fpga_time = np.array(fpga_time)
    fpga_time = np.cumsum(fpga_time)
    #####################

    ## FPGA TEMP PLOT
    plt.plot(fpga_time, fpga_temp_new, color = 'r',marker="o", label ='FPGA Temp')
    plt.plot(ssd_time, ssd_temp_1_new, color = 'g',marker="o", label ='SSD Sensor 1 Temp')
    plt.plot(ssd_time, ssd_temp_2_new, color = 'y',marker="o", label ='SSD Sensor 2 Temp')
    plt.plot(ssd_time, ssd_temp_3_new, color = 'b',marker="o", label ='SSD Sensor 3 Temp')
    plt.legend(loc='upper right', fontsize=15)   
    # plt.title('Temp When heater is enabled')
    plt.ylabel("Temperature (C)", fontsize=18)
    plt.xlabel("Time (s)", fontsize=18)
    plt.grid()
    # plt.savefig(plot_path + "heater_temp_60_mins_cloud_fpga.pdf")
    plt.savefig(plot_path + "heater_temp_40s_test_cloud_fpga.pdf")
    plt.clf()
    
    