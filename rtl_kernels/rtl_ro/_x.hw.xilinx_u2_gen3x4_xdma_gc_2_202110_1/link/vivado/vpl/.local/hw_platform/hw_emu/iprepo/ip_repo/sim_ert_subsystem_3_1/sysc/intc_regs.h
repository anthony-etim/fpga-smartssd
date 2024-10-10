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
#include <new>

namespace xsc
{
    struct intc_regs 
    {
        enum INTC_REG_ADDR {
            ISR_ADDR = 0x0,
            IPR_ADDR = 0x4,
            IER_ADDR = 0x8,
            IAR_ADDR = 0xc,
            SIE_ADDR = 0x10,
            CIE_ADDR = 0x14,
            IVR_ADDR = 0x18,
            MER_ADDR = 0x1c,
            IMR_ADDR = 0x20,
            ILR_ADDR = 0x24,
            IVAR_ADDR  = 0x100,
            IVEAR_ADDR = 0x200,
            REG_MEM_SIZE = 0x300
        };

        intc_regs()
            :ISR(*(new (reg_mem + ISR_ADDR) uint32_t()))
             ,IPR(*(new (reg_mem + IPR_ADDR) uint32_t()))
             ,IER(*(new (reg_mem + IER_ADDR) uint32_t()))
             ,IAR(*(new (reg_mem + IAR_ADDR) uint32_t()))
             ,SIE(*(new (reg_mem + SIE_ADDR) uint32_t()))
             ,CIE(*(new (reg_mem + CIE_ADDR) uint32_t()))
             ,IVR(*(new (reg_mem + IVR_ADDR) uint32_t()))
             ,MER(*(new (reg_mem + MER_ADDR) uint32_t()))
             ,IMR(*(new (reg_mem + IMR_ADDR) uint32_t()))
             ,ILR(*(new (reg_mem + ILR_ADDR) uint32_t()))
        {
            //! Initialize regs...
            memset(reg_mem, 0, REG_MEM_SIZE);            
            memset(reg_mem + ILR_ADDR , 0xff , 4);  // Reset value of ILR Register is 0xffffffff          
        }

        //! Allocate memory to hold registers...
        unsigned char reg_mem[REG_MEM_SIZE];        

        //! Declare AXI INTC Registers
        uint32_t&  ISR; 
        uint32_t&  IPR;
        uint32_t&  IER;
        uint32_t&  IAR;
        uint32_t&  SIE;
        uint32_t&  CIE;
        uint32_t&  IVR;
        uint32_t&  MER;
        uint32_t&  IMR;
        uint32_t&  ILR;
    };
}
