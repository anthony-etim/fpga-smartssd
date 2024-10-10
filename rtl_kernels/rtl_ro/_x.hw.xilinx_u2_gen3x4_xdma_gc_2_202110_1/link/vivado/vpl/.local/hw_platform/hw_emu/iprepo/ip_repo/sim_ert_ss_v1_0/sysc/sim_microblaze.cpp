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

#include <dlfcn.h>
#include "sim_microblaze.h"

namespace xsc {

    sim_microblaze::sim_microblaze(sc_module_name name
            ,xsc::common_cpp::properties& properties)
        :sc_module(name)
         ,maxi_lite_mb_aclk("maxi_lite_mb_aclk")
         ,maxi_lite_mb_aresetn("maxi_lite_mb_aresetn")
         ,m_interrupt_enable(false), m_clk_period(10, sc_core::SC_NS)
    {
        DEFINE_XTLM_AXIMM_MASTER_IF(maxi_lite_mb, 32);
        m_log = new xsc::common_cpp::report_handler("sim_microblaze");

        load_ert_firmware();

        //! SystemC threads for sc_module_loop and cu_interrupt_handler...
        SC_THREAD(thread_scheduler_loop);
        SC_THREAD(thread_cu_interrupt_handler);
        SC_THREAD(calculate_clock_period);
        sensitive << maxi_lite_mb_aclk;
    }

    void sim_microblaze::load_ert_firmware()
    {
        const std::string xrt_env = "XILINX_XRT";
        char* xrt_path = getenv(xrt_env.c_str());
        if(xrt_path == nullptr) {
            SC_REPORT_ERROR("Microblaze", 
                    "XILINX_XRT env is not set. Unable to find libsched_em_v30.so");
            return;
        }

        std::string scheduler_lib_path = std::string(xrt_path) + "/lib/libsched_em_v30.so";
        //std::string scheduler_lib_path = "/wrk/xhdhdnobkup2/madhusud/ert_v3/software/libert.so";

        void* handle = dlopen(scheduler_lib_path.c_str(), RTLD_GLOBAL | RTLD_LAZY); 
        if (!handle) {
            SC_REPORT_ERROR("Cannot load schedular library ", dlerror());
        }

        dlerror(); //reset errors
        scheduler_loop = (sch_func_ptr)dlsym(handle,"scheduler_v30_loop");
        const char* dlsym_error = dlerror();
        if (dlsym_error) {
            SC_REPORT_ERROR("Cannot load symbol scheduler_loop: ", dlsym_error);
        }

        cu_interrupt_handler = (sch_func_ptr)dlsym(handle,"cu_interrupt_handler_v30");
        dlsym_error = dlerror();
        if (dlsym_error) {
            SC_REPORT_ERROR("Cannot load symbol cu_interrupt_handler: ", dlsym_error);
        }
    }

    void sim_microblaze::thread_scheduler_loop() 
    {
        //! Wait until model comes out of reset
        while(maxi_lite_mb_aresetn.read()!=1) {
            wait(maxi_lite_mb_aresetn.default_event());
        }

        //! Scheduler loop runs in a while loop until simulation ends...
        (*scheduler_loop)();
    }


    void sim_microblaze::thread_cu_interrupt_handler() 
    {
        while (1) {
            if(m_interrupt_enable && irq.read()==1) {

                m_ss.str("");
                m_ss <<"Calling cu_interrupt_handler"; 
                XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
                (*cu_interrupt_handler)();

                //! If irq is not cleared process it again 
                // on next clock edge until it is  cleared...
                wait(m_clk_period);
            }
            else {
                //! Wait on interrupt or interrupt enable
                wait(ev_interrupt_enable | irq.posedge_event());
            }
        }
    }

    uint32_t sim_microblaze::read_reg(uint32_t addr) 
    {
        uint32_t data = 0;
        maxi_lite_mb->read(addr, (unsigned char*)&data);
                
        m_ss.str("");
        m_ss <<"Reading from Addr = 0x" << std::hex << addr << ", data = 0x" << data;
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        return data;
    }

    void sim_microblaze::write_reg(uint32_t addr, uint32_t data) 
    {
        m_ss.str("");
        m_ss <<"Writing to Addr = 0x" << std::hex << addr << ", data = 0x" << data;
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        maxi_lite_mb->write(addr, (unsigned char*)&data);
    }

    void sim_microblaze::enable_interrupts() 
    {
        m_ss.str("");
        m_ss <<"Enabling Microblaze interrupts"; 
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        m_interrupt_enable = true;
        ev_interrupt_enable.notify(SC_ZERO_TIME);
    }

    void sim_microblaze::disable_interrupts() 
    {
        m_ss.str("");
        m_ss <<"Disabling Microblaze interrupts"; 
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        m_interrupt_enable = false;
    }

    sc_core::sc_time sim_microblaze::get_clock_period()
    {
    	return m_clk_period;
    }

    void sim_microblaze::calculate_clock_period()
    {
    	auto start_time = sc_core::sc_time_stamp();
    	wait();
    	m_clk_period = 2*(sc_core::sc_time_stamp() - start_time);
    }


}; //namespace xsc
