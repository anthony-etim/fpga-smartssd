/**
* Copyright (C) 2019-2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*/
#include <stdlib.h>
#include <stdio.h>
#include "xcl2.hpp"
#include <vector>
#include <iostream>
#include <fstream>
#include <string>
#include <sys/time.h>   // for gettimeofday()
#include <chrono>
#include <iomanip>
#include <ctime>

#define DATA_SIZE inputSize
#define DATA_SIZE_RO inputSize
#define CMD_SIZE_RO 1

int main(int argc, char** argv) {
    if (argc != 7) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << " <Input Number>" << " <Input Size>" << " <Stress Num Jobs>"<< " <Stress Size>" << " <Smart SSD Number>" <<std::endl;
        return EXIT_FAILURE;
    }

    struct timeval start, end;
    gettimeofday(&start, NULL);

    std::string binaryFile = argv[1];
    std::int32_t inputNumber = atoi(argv[2]);
    std::int32_t inputSize = atoi(argv[3]);
    std::string stress_num_jobs = argv[4];
    std::string stress_size = argv[5];
    std::int32_t ssd_no = atoi(argv[6]);

    cl_int err;
    cl::CommandQueue q;
    cl::Context context;
    cl::Kernel krnl_ro;
    auto size = DATA_SIZE;
    
    //auto size_ro_data = DATA_SIZE;
    auto size_ro_cmd  = CMD_SIZE_RO;
    
    // Allocate Memory in Host Memory
    auto vector_size_bytes = sizeof(int) * size;
    
    std::vector<int, aligned_allocator<int> > source_input1(size);
    std::vector<int, aligned_allocator<int> > source_input2(size);
    //std::vector<int, aligned_allocator<int> > source_input3(size);
    std::vector<int, aligned_allocator<int> > source_input_ro(size);
    
    //std::vector<int, aligned_allocator<int> > source_hw_results(size);
    std::vector<int, aligned_allocator<int> > source_hw_results_ro(size); // Check the size
    
    //std::vector<int, aligned_allocator<int> > source_sw_results(size);



    // Create the test data for multiplication and software result for checking
    for (int i = 0; i < size; i++) {
        //source_input1[i] = i;
        //source_input2[i] = i;
        source_hw_results_ro[i] = 0;
        //source_input_ro[i] = i+10;
         source_input_ro[i] = inputNumber;
	/*    source_input3[i] = i;
        source_sw_results[i] = source_input1[i] * source_input2[i] * source_input3[i];
        source_hw_results[i] = 0;
         source_input_ro[0] = 1997;
*/
    }

    // Create the test data for RO
    //source_input_ro[0] = 1997; // Send 0000_0000_0000_0000_0000_0000_0000_0001 --> start RO

    // OPENCL HOST CODE AREA START
    // Create Program and Kernel
    auto devices = xcl::get_xil_devices();

    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++) {
        // print(devices.size())
        std::cout << "Device size " << devices.size() << "\n";
        std::cout << "Using Smart SSD  " << ssd_no << "\n";
        // auto device = devices[i];
        auto device = devices[ssd_no];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context(device, nullptr, nullptr, nullptr, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

        std::cout << "Trying to program device[" << i << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        cl::Program program(context, {device}, bins, nullptr, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err, krnl_ro = cl::Kernel(program, "krnl_ro_rtl", &err));
            std::cout << "ocl check at line 86 was successfull" << std::endl;
            valid_device = true;
            break; // we break because we found a valid device
        }
    }
    if (!valid_device) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

    // Allocate Buffer in Global Memory
    
    OCL_CHECK(err, cl::Buffer buffer_r1(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, vector_size_bytes,
                                       source_input1.data(), &err));
    std::cout << "ocl check at line 100 was successfull" << std::endl;
    OCL_CHECK(err, cl::Buffer buffer_r2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, vector_size_bytes,
                                        source_input2.data(), &err));
    std::cout << "ocl check at line 103 was successfull" << std::endl;
    /*
    OCL_CHECK(err, cl::Buffer buffer_r4(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, vector_size_bytes,
                                        source_input3.data(), &err));
    std::cout << "ocl check at line 100 was successfull" << std::endl;
    OCL_CHECK(err, cl::Buffer buffer_w(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, vector_size_bytes,
                                       source_hw_results.data(), &err));
    std::cout << "ocl check at line 106 was successfull" << std::endl;
    */
    OCL_CHECK(err, cl::Buffer buffer_r3(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, vector_size_bytes,
                                        source_input_ro.data(), &err));
    std::cout << "ocl check at line 113 was successfull" << std::endl;
    OCL_CHECK(err, cl::Buffer buffer_w2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, vector_size_bytes,
                                        source_hw_results_ro.data(), &err));
    std::cout << "ocl check at line 117 was successfull" << std::endl;

    // Set the Kernel Arguments
    OCL_CHECK(err, err = krnl_ro.setArg(0, buffer_r1));
    std::cout << "ocl check at line 121 was successfull" << std::endl;
    OCL_CHECK(err, err = krnl_ro.setArg(1, buffer_r2));
    std::cout << "ocl check at line 123 was successfull" << std::endl;
    OCL_CHECK(err, err = krnl_ro.setArg(2, size));
    std::cout << "ocl check at line 125 was successfull" << std::endl;
    OCL_CHECK(err, err = krnl_ro.setArg(3, buffer_r3));
    std::cout << "ocl check at line 127 was successfull" << std::endl;
    OCL_CHECK(err, err = krnl_ro.setArg(4, buffer_w2));
    std::cout << "ocl check at line 129 was successfull" << std::endl;
    /*
    OCL_CHECK(err, err = krnl_ro.setArg(3, buffer_w));
    std::cout << "ocl check at line 104 was successfull" << std::endl;
    */
    //OCL_CHECK(err, err = krnl_ro.setArg(3, size));
    //std::cout << "ocl check at line 131 was successfull" << std::endl;
    /*
    OCL_CHECK(err, err = krnl_ro.setArg(3, buffer_r4));
    std::cout << "ocl check at line 102 was successfull" << std::endl;
    */
    //OCL_CHECK(err, err = krnl_ro.setArg(4, buffer_w2));
    //std::cout << "ocl check at line 137 was successfull" << std::endl;
    
    // Copy input data to device global memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_r1, buffer_r2, buffer_r3}, 0 /* 0 means from host*/));
    std::cout << "ocl check at line 145 was successfull" << std::endl;

    // Launch the Kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_ro));
    std::cout << "ocl check at line 149 was successfull" << std::endl;

    // Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_w2}, CL_MIGRATE_MEM_OBJECT_HOST));
    std::cout << "ocl check at line 153 was successfull" << std::endl;
    OCL_CHECK(err, err = q.finish());
    std::cout << "ocl check at line 155 was successfull" << std::endl;

    // OPENCL HOST CODE AREA END

    // Compare the results of the Device to the simulation
    
    //int match = 0;
    /*
    for (int i = 0; i < size; i++) {
        if (source_hw_results[i] != source_sw_results[i]) {
            std::cout << "Error: Result mismatch" << std::endl;
            std::cout << "i = " << i << " Software result = " << source_sw_results[i]
                      << " Device result = " << source_hw_results[i] << std::endl;
            match = 1;
            break;
        }
    }
    */

    // Print RO results
    int match = 0;
    for (int i = 0; i < size; i++) {
        std::cout << " RO counts =  " << i  << " " << source_hw_results_ro[i] << std::endl;
        //           << " RO counts = " << source_hw_results_ro[i] << std::endl;
        // if (source_hw_results_ro[i] != source_input_ro[i]) {
        //     std::cout << "Error: Result mismatch" << std::endl;
        //     std::cout << "i = " << i << " Software result = " << source_input_ro[i]
        //               << " RO counts = " << source_hw_results_ro[i] << std::endl;
        //     match = 1;
        //     break;
        // //std::cout << "RO Counts = " << source_hw_results_ro[i] << std::endl;
        // }
        // else { std::cout << "i = " << i << " Software result = " << source_input_ro[i]
        //           << " RO counts = " << source_hw_results_ro[i] << std::endl;
        // }
    }
    gettimeofday(&end, NULL);
    long seconds = (end.tv_sec - start.tv_sec);
    long micros = ((seconds * 1000000) + end.tv_usec) - (start.tv_usec);
 
    printf("The elapsed time is %d seconds and %d micros\n", seconds, micros);

    // Please modify path accordingly 
    std::string ssd_no_string = std::to_string(ssd_no);
    std::string data_path = "/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_smart_ssd_"; // path on VMAccel
    data_path = data_path + ssd_no_string + "/";
    // std::string data_path = "/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_smart_ssd_0/"; // path on VMAccel

    // std::string data_path = "/home/ubuntu/vitis_accel_examples/rtl_kernels/rtl_ro1/experiments/data_smart_ssd_1/"; // path on VMAccel
   
    auto t = std::time(nullptr);
    auto tm = *std::localtime(&t);
    std::ostringstream oss;
    oss << std::put_time(&tm, "%d-%m-%Y_%H-%M-%S");
    auto date_time = oss.str();

    std:: ofstream myfile (data_path + "ro_counts_stress_num_jobs_" + stress_num_jobs + "_stress_size_" + stress_size + "_" + date_time + ".txt");
    if (myfile.is_open())
    {   
        myfile << "[" ;
        for(int count = 0; count < DATA_SIZE; count ++){
            if(count == DATA_SIZE -1){
                myfile << source_hw_results_ro[count] << "]" ;
            } else {
                myfile << source_hw_results_ro[count] << ", " ;
            }
        }
        myfile.close();
    }
    else std::cout << "Unable to open file"<< std::endl;
    
    
    std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl;
    return (match ? EXIT_FAILURE : EXIT_SUCCESS);
}
