// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// (c) Copyright(C) 2013 - 2018 by Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

#ifndef DDR3_FMODEL_BASE__H 
#define DDR3_FMODEL_BASE__H
#include <math.h>
#include <iostream>

#include <string.h> // memcpy
#include <stdlib.h> //realloc
#include <stdint.h>
#include <vector>
#include <map> //realloc
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
//Uncomment to print the latency calculation log
//#define DEBUGMSG

//For google protobuf
//#include "rpc_messages.pb.h"

#define ONE_KB (0x400)
#define ONE_MB (ONE_KB * ONE_KB)
#define PAGESIZE (ONE_MB)
//#define ADDRBITS (log2(PAGESIZE))
#define ADDRBITS (20)
//Optimize the size later
#define N_1MBARRAYS 4096

//Calculations for Strb
//Its Array of 64bit integer
#define STRB_SIZE 64
#define ONE_KB_STRB (ONE_KB / STRB_SIZE)
#define ONE_MB_STRB (ONE_KB_STRB * ONE_KB)

//using namespace std;

#define RBC 0
#define BRC 1
#define RCB 2

enum fileType {MEM,MEM_STRB};
class ddr_mem_msg;
class ddr3_fmodel_base
{
  public:
    virtual unsigned int writeDevMem(uint64_t offset, void* src, unsigned int size) = 0 ;
    virtual unsigned int readDevMem(uint64_t offset, void* dest, unsigned int size,bool debug=false) = 0;
    virtual bool createMMappedBuffer(uint64_t base_address,uint64_t size,std::string& buffer_filename) = 0 ;
    virtual bool freePage(uint64_t base_address) = 0 ;
    virtual unsigned char* get_page(uint64_t offset, std::string& p2pFileName, uint64_t size = 0) = 0;
    virtual bool copyBO(uint64_t offset, std::string dst_filename, uint64_t size, uint64_t src_offset, uint64_t dst_offset) = 0;
    virtual bool importBO(uint64_t offset, std::string dst_filename,uint64_t size) = 0;


    virtual void serialize() = 0;
    virtual void serialize_ddr_memory() = 0 ;
    ddr3_fmodel_base(std::string p_module_name);
    virtual ~ ddr3_fmodel_base();

    void init_fmodel();
    void set_standalone_flag(int standalone_flag) { if(1==standalone_flag) { isStandalone = true; } }
    virtual void reset_fmodel() = 0;

  protected:
    std::string get_mem_file_name(uint64_t pageIdx);
    void write_strb(uint64_t addr, uint64_t size);
    void check_strb(uint64_t addr, uint64_t size);
    void serialize_strb(uint64_t page_idx);
    bool enable_serialization;
    bool enable_umr;
    bool enable_oob;
    bool isStandalone;
    void init_env();
    bool env_read;
    ddr_mem_msg* serialize_msg;
    ddr_mem_msg* deserialize_msg;
    std::string module_name;

  private:
    std::string get_strb_file_name(uint64_t pageIdx);
    std::vector<uint64_t>* get_strb_vec(uint64_t addr,bool create_new);
    std::map<uint64_t,std::vector<uint64_t>*> memStrbCache;

};

#endif


