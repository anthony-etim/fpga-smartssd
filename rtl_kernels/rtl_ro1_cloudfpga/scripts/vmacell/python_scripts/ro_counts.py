#!/usr/bin/python3.8
import matplotlib
matplotlib.use('Agg')
import ast
import glob
import os
from matplotlib import pyplot as plt

# Please modify paths accordingly!
if __name__ == "__main__":
    data_path_pwd = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data/'
    plot_path     = '/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/plots/parallel/'
    data_path_list = []
    ro_counts = []
    
    os.chdir(data_path_pwd)
    for file in glob.glob("*.txt"):
        data_path_list.append(file)
    
    print(data_path_list)
    
    for i in range(len(data_path_list)):
        with open(data_path_list[i], 'r') as f:
            ro_counts.append(ast.literal_eval(f.read()))
    
    # plt.figure(figsize=(15,15))
    for i in range(len(data_path_list)):
        fig_ro_1 = plt.hist(ro_counts[i], bins='auto', alpha=0.8, label=data_path_list[i])
  
    # plt.legend()    
    plt.legend(loc='best', prop={'size': 6})
    plt.title('RO COUNTS HISTOGRAM')
    plt.xlabel("RO Counts")
    plt.ylabel("Frequency")
    plt.xlim(25725000, 25980000)
    plt.savefig(plot_path + "ro_counts_vmacell.png")
    plt.clf()
        