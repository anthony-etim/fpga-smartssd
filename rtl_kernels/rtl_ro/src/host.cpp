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
#include "xcl2.hpp"
#include <vector>

#define DATA_SIZE 256
#define DATA_SIZE_RO 256
#define CMD_SIZE_RO 1

int main(int argc, char** argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string binaryFile = argv[1];

    cl_int err;
    cl::CommandQueue q;
    cl::Context context;
    cl::Kernel krnl_ro;
    auto size = DATA_SIZE;
    
    auto size_ro_data = DATA_SIZE_RO;
    auto size_ro_cmd  = CMD_SIZE_RO;
    
    // Allocate Memory in Host Memory
    auto vector_size_bytes = sizeof(int) * size;
    
    std::vector<int, aligned_allocator<int> > source_input1(size);
    std::vector<int, aligned_allocator<int> > source_input2(size);
    std::vector<int, aligned_allocator<int> > source_input3(size);
    std::vector<int, aligned_allocator<int> > source_input_ro(size_ro_cmd);
    
    std::vector<int, aligned_allocator<int> > source_hw_results(size);
    std::vector<int, aligned_allocator<int> > source_hw_results_ro(size);
    
    std::vector<int, aligned_allocator<int> > source_sw_results(size);

    // Create the test data for multiplication and software result for checking
    for (int i = 0; i < size; i++) {
        source_input1[i] = i;
        source_input2[i] = i;
	    source_input3[i] = i;
        source_sw_results[i] = source_input1[i] * source_input2[i] * source_input3[i];
        source_hw_results[i] = 0;
    }

    // Create the test data for RO
    source_input_ro[0] = 1; // Send 0000_0000_0000_0001 --> start RO
    
    // OPENCL HOST CODE AREA START
    // Create Program and Kernel
    auto devices = xcl::get_xil_devices();

    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
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
            std::cout << "ocl check at line 72 was successfull" << std::endl;
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
    std::cout << "ocl check at line 94 was successfull" << std::endl;
    OCL_CHECK(err, cl::Buffer buffer_r2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, vector_size_bytes,
                                        source_input2.data(), &err));
    std::cout << "ocl check at line 97 was successfull" << std::endl;
    OCL_CHECK(err, cl::Buffer buffer_r3(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, vector_size_bytes,
                                        source_input3.data(), &err));
    std::cout << "ocl check at line 100 was successfull" << std::endl;
    OCL_CHECK(err, cl::Buffer buffer_w(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, vector_size_bytes,
                                       source_hw_results.data(), &err));
    std::cout << "ocl check at line 106 was successfull" << std::endl;
    OCL_CHECK(err, cl::Buffer buffer_r4(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, vector_size_bytes,
                                        source_input_ro.data(), &err));
    std::cout << "ocl check at line 103 was successfull" << std::endl;
    OCL_CHECK(err, cl::Buffer buffer_w2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, vector_size_bytes,
                                        source_hw_results_ro.data(), &err));
    std::cout << "ocl check at line 103 was successfull" << std::endl;

    // Set the Kernel Arguments
    OCL_CHECK(err, err = krnl_ro.setArg(0, buffer_r1));
    std::cout << "ocl check at line 98 was successfull" << std::endl;
    OCL_CHECK(err, err = krnl_ro.setArg(1, buffer_r2));
    std::cout << "ocl check at line 100 was successfull" << std::endl;
    OCL_CHECK(err, err = krnl_ro.setArg(2, buffer_r3));
    std::cout << "ocl check at line 102 was successfull" << std::endl;
    OCL_CHECK(err, err = krnl_ro.setArg(3, buffer_w));
    std::cout << "ocl check at line 104 was successfull" << std::endl;
    OCL_CHECK(err, err = krnl_ro.setArg(4, size));
    std::cout << "ocl check at line 106 was successfull" << std::endl;
    OCL_CHECK(err, err = krnl_ro.setArg(5, buffer_r4));
    std::cout << "ocl check at line 102 was successfull" << std::endl;
    OCL_CHECK(err, err = krnl_ro.setArg(6, buffer_w2));
    std::cout << "ocl check at line 102 was successfull" << std::endl;
    
    // Copy input data to device global memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_r1, buffer_r2, buffer_r3, buffer_r4}, 0 /* 0 means from host*/));
    std::cout << "ocl check at line 110 was successfull" << std::endl;

    // Launch the Kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_ro));
    std::cout << "ocl check at line 114 was successfull" << std::endl;

    // Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_w, buffer_w2}, CL_MIGRATE_MEM_OBJECT_HOST));
    std::cout << "ocl check at line 118 was successfull" << std::endl;
    OCL_CHECK(err, err = q.finish());
    std::cout << "ocl check at line 120 was successfull" << std::endl;

    // OPENCL HOST CODE AREA END

    // Compare the results of the Device to the simulation
    int match = 0;
    for (int i = 0; i < size; i++) {
        if (source_hw_results[i] != source_sw_results[i]) {
            std::cout << "Error: Result mismatch" << std::endl;
            std::cout << "i = " << i << " Software result = " << source_sw_results[i]
                      << " Device result = " << source_hw_results[i] << std::endl;
            match = 1;
            break;
        }
    }

    // Print RO results
    for (int i = 0; i < size; i++) {
        std::cout << "RO Counts = " << source_hw_results_ro[i] << std::endl;
    }
    
    std::cout << "TEST " << (match ? "FAILED" : "PASSED") << std::endl;
    return (match ? EXIT_FAILURE : EXIT_SUCCESS);
}
