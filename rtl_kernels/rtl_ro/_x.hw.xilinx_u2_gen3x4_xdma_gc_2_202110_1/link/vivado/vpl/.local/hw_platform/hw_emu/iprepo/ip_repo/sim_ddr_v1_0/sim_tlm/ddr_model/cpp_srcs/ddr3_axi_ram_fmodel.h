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

#ifndef DDR3_AXI_RAM_FMODEL__H 
#define DDR3_AXI_RAM_FMODEL__H

#include "ddr3_fmodel_base.h"

class ddr3_axi_ram_fmodel : public ddr3_fmodel_base
{
  public:
    unsigned int writeDevMem(uint64_t offset, void* src, unsigned int size);
    unsigned int readDevMem(uint64_t offset, void* dest, unsigned int size,bool debug=false);
    unsigned char* get_page(uint64_t offset, std::string& p2pFileName, uint64_t size = 0);
    bool createMMappedBuffer(uint64_t base_address,uint64_t size,std::string& buffer_filename);
    bool freePage(uint64_t base_address);
    bool copyBO(uint64_t offset, std::string dst_filename, uint64_t size, uint64_t src_offset, uint64_t dst_offset);
    bool importBO(uint64_t offset, std::string dst_filename,uint64_t size);
    void serialize();
    void serialize_ddr_memory();

  public:
    ddr3_axi_ram_fmodel(std::string p_module_name);
    ~ ddr3_axi_ram_fmodel();

  private:
    //Paging
    std::map<uint64_t,unsigned char*> pageCache;
    std::map<uint64_t,unsigned char*>::iterator pageCacheItr;

};

#endif


