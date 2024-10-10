// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
/*  (c) Copyright 1995 - 2020 Xilinx, Inc. All rights reserved.

 This file contains confidential and proprietary information
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property
 laws.

 DISCLAIMER
 This disclaimer is not a license and does not grant any
 rights to the materials distributed herewith. Except as
 otherwise provided in a valid license issued to you by
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 (2) Xilinx shall not be liable (whether in contract or tort,
 including negligence, or under any other theory of
 liability) for any loss or damage of any kind or nature
 related to, arising under or in connection with these
 materials, including for any direct, or any indirect,
 special, incidental, or consequential loss or damage
 (including loss of data, profits, goodwill, or any type of
 loss or damage suffered as a result of any action brought
 by a third party) even if such damage or loss was
 reasonably foreseeable or Xilinx had been advised of the
 possibility of the same.

 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or
 systems, Class III medical devices, nuclear facilities,
 applications related to the deployment of airbags, or any
 other applications that could lead to death, personal
 injury, or severe property or environmental damage
 (individually and collectively, "Critical
 Applications"). Customer assumes the sole risk and
 liability of any use of Xilinx products in Critical
 Applications, subject only to applicable laws and
 regulations governing limitations on product liability.

 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 PART OF THIS FILE AT ALL TIMES.      */ 

#pragma once
#include <map>
#include <string>

namespace xsc {

    std::map<uint32_t, std::string> reg_map = 
    {
        /**
         * The STATUS REGISTER is for communicating completed CQ slot indices
         * MicroBlaze write, host reads.  MB(W) / HOST(COR)
         */
        { 0x0,  "ERT_STATUS_REGISTER_ADDR0" },
        { 0x4,  "ERT_STATUS_REGISTER_ADDR1" },
        { 0x8,  "ERT_STATUS_REGISTER_ADDR2" },
        { 0xC,  "ERT_STATUS_REGISTER_ADDR3" },

        /**
         * The SLOT SIZE is the size of slots in command queue, it is
         * configurable per xclbin. MB(W) / HW(R)
         */
        { 0x2C,  "ERT_CQ_SLOT_SIZE_ADDR" },

        /**
         * The CU_OFFSET is the size of a CU's address map in power of 2.  For
         * example a 64K regmap is 2^16 so 16 is written to the CU_OFFSET_ADDR.
         * MB(W) / HW(R)
         */
        { 0x30,  "ERT_CU_OFFSET_ADDR" },

        /**
         * The number of slots is command_queue_size / slot_size.
         * MB(W) / HW(R)
         */
        { 0x34,  "ERT_CQ_NUMBER_OF_SLOTS_ADDR" },

        /**
         * All CUs placed in same address space separated by CU_OFFSET. The
         * CU_BASE_ADDRESS is the address of the first CU. MB(W) / HW(R)
         */
        { 0x38,  "ERT_CU_BASE_ADDRESS_ADDR" },

        /**
         * The CQ_BASE_ADDRESS is the base address of the command queue.
         * MB(W) / HW(R)
         */
        { 0x3C,  "ERT_CQ_BASE_ADDRESS_ADDR" },

        /**
         * The CU_ISR_HANDLER_ENABLE (MB(W)/HW(R)) enables the HW handling of
         * CU interrupts.  When a CU interrupts (when done), hardware handles
         * the interrupt and writes the index of the CU that completed into
         * the CU_STATUS_REGISTER (HW(W)/MB(COR)) as a bitmask
         */
        { 0x40,  "ERT_CU_ISR_HANDLER_ENABLE_ADDR" },   
        { 0x44,  "ERT_CU_STATUS_REGISTER_ADDR0"   },   
        { 0x48,  "ERT_CU_STATUS_REGISTER_ADDR1"   },   
        { 0x4C,  "ERT_CU_STATUS_REGISTER_ADDR2"   },   
        { 0x50,  "ERT_CU_STATUS_REGISTER_ADDR3"   },   

        /**
         * The CQ_STATUS_ENABLE (MB(W)/HW(R)) enables interrupts from HOST to
         * MB to indicate the presense of a new command in some slot.  The
         * slot index is written to the CQ_STATUS_REGISTER (HOST(W)/MB(R))
         */
        { 0x54,  "ERT_CQ_STATUS_ENABLE_ADDR"  }, 
        { 0x58,  "ERT_CQ_STATUS_REGISTER_ADDR0" },  
        { 0x5C,  "ERT_CQ_STATUS_REGISTER_ADDR1" },  
        { 0x60,  "ERT_CQ_STATUS_REGISTER_ADDR2" },  
        { 0x64,  "ERT_CQ_STATUS_REGISTER_ADDR3" },  

        /**
         * The NUMBER_OF_CU (MB(W)/HW(R) is the number of CUs per current
         * xclbin.  This is an optimization that allows HW to only check CU
         * completion on actual CUs.
         */
        { 0x68,  "ERT_NUMBER_OF_CU_ADDR" },

        /**
         * Enable global interrupts from MB to HOST on command completion.
         * When enabled writing to STATUS_REGISTER causes an interrupt in HOST.
         * MB(W)
         */
        { 0x100,    "ERT_HOST_INTERRUPT_ENABLE_ADDR" }
    };

    std::string reg_name(unsigned int addr)
    {
        if(reg_map.find(addr) != reg_map.end()) {
            return reg_map[addr];
        }
        else {
            return "Unsupported ERT Register";
        }
    }

    bool is_ert_status_reg(uint32_t addr) 
    {
        //! 0x0 to 0xc are the ert status registers
        if(addr >= 0x0 && addr <= 0xc) {
            return true;
        }
        return false;
    }

    bool is_cq_status_reg(uint32_t addr) 
    {
        //! 0x58, 0x5c, 0x60 and 0x64 are the cq status registers
        if(addr >= 0x58 && addr <= 0x64) {
            return true;
        }
        return false;
    }
}
