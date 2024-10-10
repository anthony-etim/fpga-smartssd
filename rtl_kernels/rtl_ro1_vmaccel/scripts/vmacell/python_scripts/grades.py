#!/usr/bin/python3.8
import matplotlib
matplotlib.use('Agg')
import ast
import glob
import os
import sys
from matplotlib import pyplot as plt
import numpy as np
    
    
if __name__ == "__main__":  
    # number = 4
    # r = np.arange(number)
    # width = 0.4
    # values= [1,1,3,15]
    # courses = ['80','85','90','100']
    # plt.figure(figsize=(9.5,6))
    # #plt.bar(r, accuracy_ro_counts, color='blue', width = width, edgecolor = 'black', label='Ro Counts')
    # plt.bar(courses, values, color ='maroon',width = 0.4)
    # # plt.bar(delay, accuracy_temp, color='red', width = width, edgecolor = 'black', label='Temperature')
    # plt.xlabel("Delay Time (Seconds)")
    # plt.ylabel("Accuracy")
    # plt.xticks(r + width/2, courses)
    # plt.legend(loc='best')        
    # plt.savefig("grades.png")
    # plt.clf()
# creating the dataset
    #data = {'<80':1, '80':1, '85':1, '90':3, '100':15}
    courses = [5,80,85,90,100]
    values = [1,1,1,3,15]
    #courses = list(data.keys())
    #values = list(data.values())

    fig = plt.figure(figsize = (10, 5))

    # creating the bar plot
    plt.bar(courses, values, color ='maroon',
            width = 3)

    plt.xlabel("Scores")
    plt.ylabel("No. of students")
    plt.title("Grades Histogram")
    plt.yticks(np.arange(0, 16, 1)) 
    plt.xticks(np.arange(5, 105, 5))
    plt.show()
    plt.savefig("grades.png")