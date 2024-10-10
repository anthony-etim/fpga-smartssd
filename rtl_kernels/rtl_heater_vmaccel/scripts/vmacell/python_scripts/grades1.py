#!/usr/bin/python3.8
# importing library
import matplotlib
matplotlib.use('Agg')
import ast
import glob
import os
import sys
from matplotlib import pyplot as plt
import numpy as np
    
 
# function to add value labels
def addlabels(x,y):
    for i in range(len(x)):
        plt.text(i,y[i],y[i])
 
if __name__ == '__main__':
    # creating data on which bar chart will be plot
    x = ["5", "80", "85",
         "90", "100"]
    y = [1, 1, 1, 3, 15]
     
    # making the bar chart on the data
    plt.bar(x, y)
     
    # calling the function to add value labels
    addlabels(x, y)
     
    # giving title to the plot
    plt.title("College Admission")
     
    # giving X and Y labels
    plt.xlabel("Courses")
    plt.ylabel("Number of Admissions")
     
    # visualizing the plot
    plt.show()
    plt.savefig("grades1.png")