// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// (c) Copyright 2013 - 2018 Xilinx, Inc. All rights reserved.
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

#ifndef _AXI_ACCEL_MONITOR_CU_H_
#define _AXI_ACCEL_MONITOR_CU_H_

#include "systemc.h"
#include "sim_axi_accelerator_monitor_impl.h"

namespace xsc {
  namespace sim_axi_accel_mon_v1 {

    template<unsigned int ADDR_WIDTH, unsigned int DATA_WIDTH>
      class sim_axi_accelerator_monitor : public sc_module {
        SC_HAS_PROCESS(sim_axi_accelerator_monitor);
      public:
        sc_in<bool> axi_aclk;
        sc_in<bool> axi_aresetn;
        
        sc_in<sc_bv< ADDR_WIDTH > > axi_awaddr;
        sc_in<bool> axi_awvalid;
        sc_in<bool> axi_awready;
        sc_in<sc_bv< DATA_WIDTH> > axi_wdata;
        sc_in<bool> axi_wvalid;
        sc_in<bool> axi_wready;

        sc_in<sc_bv< ADDR_WIDTH > > axi_araddr;
        sc_in<bool> axi_arvalid;
        sc_in<bool> axi_arready;
        sc_in<sc_bv< DATA_WIDTH> > axi_rdata;
        sc_in<bool> axi_rvalid;
        sc_in<bool> axi_rready;

        sim_axi_accelerator_monitor(sc_core::sc_module_name p_name, std::string profiler_name) : sc_module (p_name) {
          m_impl = new axi_accelerator_monitor_impl(profiler_name);
        }
        void simulate_single_cycle() {
          sample_signals();
        }
      private:
        axi_accelerator_monitor_impl* m_impl;
        void sample_signals() {
          // Sample Last Read Address
          if (axi_arvalid.read() && axi_arready.read()) {
            m_impl->last_read_addr = axi_araddr.read().to_uint64();
          }
          // Sample Last Write Address
          if (axi_awvalid.read() && axi_awready.read()) {
            m_impl->last_write_addr = axi_awaddr.read().to_uint64();
          }
          if (!m_impl->cu_started) {
            if (axi_wready.read() && axi_wvalid.read() && axi_wdata.read().bit(0).to_bool() && m_impl->last_write_addr == 0) {
              m_impl->cu_started = true;
              m_impl->m_profiler->set_cu_start();
            }
          } else {
              if (axi_rready.read() && axi_rvalid.read() && axi_rdata.read().bit(1).to_bool() && m_impl->last_read_addr == 0) {
                m_impl->cu_started = false;
                m_impl->m_profiler->set_cu_end();
                m_impl->m_profiler->register_cu_exec_cycles(m_impl->cu_execution_cycles);
                m_impl->m_profiler->register_cu_min_exec_cycles(m_impl->cu_execution_cycles);
                m_impl->m_profiler->register_cu_max_exec_cycles(m_impl->cu_execution_cycles);
                m_impl->m_profiler->register_cu_exec_count();
                m_impl->cu_execution_cycles = 0;
              }
              m_impl->cu_execution_cycles += 1;
            }
        }
      };
}} // Namespaces



#endif


