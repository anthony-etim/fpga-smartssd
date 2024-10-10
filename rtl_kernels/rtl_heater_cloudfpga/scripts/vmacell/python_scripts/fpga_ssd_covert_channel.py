#!/usr/bin/python3.8
import matplotlib
matplotlib.use('Agg')
import ast
import glob
import os
import sys
from matplotlib import pyplot as plt
import numpy as np
import subprocess
import secrets
import multiprocessing

def kill_proc(proc=None):
    if proc:
        subprocess.call(['pkill', '-TERM', '-P', str(proc.pid)])


# Please modify paths accordingly!
if __name__ == "__main__":
    
    source_1_cmd = ['source', '/opt/xilinx/xrt/setup.sh']
    subprocess.Popen(source_1_cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE)
    
    # ## Generating random 32 bits  maybe manchester encoding
    # num_bits = 32
    # tx_bit_str = '0x' + secrets.token_hex(8)[8:]
    # tx_bit = int(tx_bit_str, 16)  
    # binary = ('{0:0%db}' % num_bits).format(tx_bit)
    # binary = [b for b in binary]
    
    # ## Covert channel
    # for i in range(len(binary)):
    #     if(binary[i] == '1'):
    #         sensor_proc = subprocess.Popen(sensor_cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE)
   