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
#include "xtlm.h"

namespace xsc {

    class sim_microblaze: public sc_core::sc_module 
    {
        public:
            SC_HAS_PROCESS(sim_microblaze);
            sim_microblaze(sc_module_name name, xsc::common_cpp::properties& properties);

            //! Microblaze Master interface to access registers and cmdq
            DECLARE_XTLM_AXIMM_MASTER_IF(maxi_lite_mb);

            sc_in<bool>  maxi_lite_mb_aclk;     //Clock
            sc_in<bool>  maxi_lite_mb_aresetn;  //Reset for the module
            sc_in<bool>  irq;     //Interrupt signal

            //! Read/Write to ERT subsystem Registers and cmdq...
            uint32_t  read_reg(uint32_t addr);
            void      write_reg(uint32_t addr, uint32_t data);

            //! Controlled(called) by ERT firmware
            void enable_interrupts();
            void disable_interrupts();

            sc_core::sc_time get_clock_period();

        private:
            //! Load ERT firmware Scheduler library dynamically
            void load_ert_firmware();

            //! SystemC thread to run scheduler loop of ERT firmware
            void thread_scheduler_loop();

            //! SystemC thread to run interrupt handler of ERT firmware
            void thread_cu_interrupt_handler();

            //! Function to calculate clock period
            void calculate_clock_period();

            //! Function pointers to the ERT firmware functions.
            // The ERT firmware is loaded dynamically using dlopen...
            typedef void   (*sch_func_ptr)();
            sch_func_ptr   scheduler_loop;
            sch_func_ptr   cu_interrupt_handler;

            //! Enable/Disabled by ERT firmware...
            sc_event ev_interrupt_enable;
            bool     m_interrupt_enable;

            sc_core::sc_time m_clk_period;
            //! Logging 
            std::stringstream m_ss;
            xsc::common_cpp::report_handler* m_log; 
    };
}

