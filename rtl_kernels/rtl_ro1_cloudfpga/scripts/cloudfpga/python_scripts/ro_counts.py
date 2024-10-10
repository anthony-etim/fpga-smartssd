#!/usr/bin/python3.8
import ast
import glob
import os
from matplotlib import pyplot as plt


if __name__ == "__main__":
    
    data_path_pwd = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data/'
    plot_path     = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/parallel/'
    data_path_list = []
    ro_counts = []
    
    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    print(data_path_list)
    
    # ro_counts = []*len(data_path_list)
    
    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    plt.figure(figsize=(50,12))
    for i in range(len(data_path_list)):
        fig_ro_1 = plt.hist(ro_counts[i], bins='auto', alpha=0.8, label=data_path_list[i])
  
        
    plt.legend()    
    plt.title('RO COUNTS HISTOGRAM')
    plt.xlabel("RO Counts")
    plt.ylabel("Frequency")
<<<<<<< HEAD
    #plt.xlim(25740000, 26060000)
=======
    # plt.xlim(25740000, 25860000)
>>>>>>> 62d1ee4ec1f59dc4fb4960978190bb81d36c29cd
    plt.savefig(plot_path + "ro_counts.png")
    plt.clf()
        
    # print(ro_counts)
    # ro_counts_0 = []
    # ro_counts_1 = []
    # # data_path_0 = '/home/theodoros/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data/ro_counts_0.txt'
    # # data_path_1 = '/home/theodoros/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data/ro_counts_1.txt'
    

    # data_path_0 = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data/ro_counts_0.txt'
    # data_path_1 = '/home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data/ro_counts_1.txt'
    

    # with open(data_path_0, 'r') as f:
    #     ro_counts_0 = ast.literal_eval(f.read())
    
    # with open(data_path_1, 'r') as f:
    #     ro_counts_1 = ast.literal_eval(f.read())

    # # print(ro_counts)
    # fig_ro_1 = plt.hist(ro_counts_0, label='Without Stress', bins='auto', alpha=0.8, color='red')
    # fig_ro_1 = plt.hist(ro_counts_1, label='With Stress', bins='auto', alpha=0.7, color='blue')
    # plt.legend()
    # plt.title('RO COUNTS HISTOGRAM')
    # plt.xlabel("RO Counts")
    # plt.ylabel("Frequency")
    # # plt.xlim(25740000, 25860000)
    # plt.savefig(plot_path + "ro_counts.png")
    # plt.clf()
