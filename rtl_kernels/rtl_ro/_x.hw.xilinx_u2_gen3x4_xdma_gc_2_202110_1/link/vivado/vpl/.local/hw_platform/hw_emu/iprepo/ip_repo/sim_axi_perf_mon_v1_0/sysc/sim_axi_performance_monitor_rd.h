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

#ifndef _AXI_PERFORMANCE_MONITOR_RD_H_
#define _AXI_PERFORMANCE_MONITOR_RD_H_

#include "systemc.h"
#include "sim_axi_performance_monitor_rd_impl.h"

namespace xsc {
  namespace axi_perf_mon {
    template<unsigned int ID_WIDTH,unsigned int ADDR_WIDTH>
      class sim_axi_performance_monitor_rd : public sc_module {
        SC_HAS_PROCESS(sim_axi_performance_monitor_rd);
      public:
        sc_in<sc_bv< ID_WIDTH > > axi_arid;
        sc_in<sc_bv< ADDR_WIDTH > > axi_araddr;
        sc_in<sc_bv<8> > axi_arlen;
        sc_in<sc_bv<3> > axi_arsize;
        sc_in<sc_bv<2> > axi_arburst;
        sc_in<bool> axi_arvalid;
        sc_in<bool> axi_arready;
        sc_in<bool> axi_rlast;
        sc_in<sc_bv< ID_WIDTH > > axi_rid;
        sc_in<bool> axi_rvalid;
        sc_in<bool> axi_rready;
        sc_in<bool> axi_aclk;
        sc_in<bool> axi_aresetn;

        sim_axi_performance_monitor_rd(sc_core::sc_module_name p_name, std::string profiler_name, uint64_t addr_min, 
          uint64_t addr_max, bool enable_addr_filter) : sc_module (p_name) {
          m_impl = new axi_performance_monitor_rd_impl(profiler_name, addr_min, addr_max, enable_addr_filter);
        }

        void simulate_single_cycle() {
          sample_signals();
        }
      private:
        axi_performance_monitor_rd_impl* m_impl;
        void sample_signals() {
          unsigned int arid = axi_arid.read().to_uint();
          // Check if tranx is valid
          // Return if filter is enabled
          if (m_impl->filter_addr_en) {
            if (axi_arvalid.read() && axi_arready.read()) {
              auto cur_addr = axi_araddr.read().to_uint64();
              // addr_max = addr_min + range - 1
              m_impl->filter_current_trax = (cur_addr >= m_impl->filter_addr_min && 
                                            cur_addr <= m_impl->filter_addr_max) ? false : true;
            }
            if (m_impl->filter_current_trax)
              return;
          }

          if (axi_arvalid.read()) {
            if (m_impl->trans_vec.empty()) {
              m_impl->trans_vec.push_back(
                  axi_performance_monitor_rd_impl::transaction());
              m_impl->trans_vec.back().id = arid;
            } else {
              int i;
              //If condition to avoid multiple entry of same transaction
              //if VALID is high for more than one cycle and READY took time to
              //sample it
              if (m_impl->trans_vec.back().id == arid) {
                if (m_impl->trans_vec.back().addr_sampled) {
                  m_impl->trans_vec.push_back(axi_performance_monitor_rd_impl::transaction());
                  m_impl->trans_vec.back().id = arid;
                }
              } else {
                m_impl->trans_vec.push_back(axi_performance_monitor_rd_impl::transaction());
                m_impl->trans_vec.back().id = arid;
              }
            }
          }
          for (auto it = m_impl->trans_vec.begin(); it != m_impl->trans_vec.end();
              ++it) {
            it->counter += 1;
            if (it->counter % m_impl->max_rd_latency == 0 && (it->counter > 0)) {
              m_impl->m_profiler->report_uncompleted_read(it->counter, it->id,
                  it->addr);
            }
          }
          if (axi_arvalid.read() && axi_arready.read()) {
            auto it = m_impl->trans_vec.end() - 1;
            if ((m_impl->trans_vec.back().addr_sampled == false)
                && (m_impl->trans_vec.back().id == arid)) {
              m_impl->trans_vec.back().addr_sampled = true;
              if (axi_arlen.read().to_uint() > 0)
                m_impl->trans_vec.back().burst = true;

              int arlen = axi_arlen.read().to_uint();
              int asize = 1 << axi_arsize.read().to_uint();

              m_impl->m_profiler->set_rd_address_event();
              m_impl->m_profiler->set_ar_length_event(arlen);
              m_impl->m_profiler->set_rd_bytes((arlen + 1) * asize);

              m_impl->trans_vec.back().bytes = (arlen + 1) * asize;
              m_impl->trans_vec.back().addr = axi_araddr.read().to_uint64();
            }
          }
          unsigned int rid = axi_rid.read().to_uint();

          if (axi_rvalid.read() && axi_rready.read()) {
            if(!m_impl->first_read_done) {
              m_impl->m_profiler->set_rd_first_event();
              m_impl->first_read_done = true;
            }
            if (axi_rlast.read()) {
              for (auto it = m_impl->trans_vec.begin();
                  it != m_impl->trans_vec.end(); ++it) {
                if ((it->addr_sampled == true) && (it->id == rid)) {
                  m_impl->m_profiler->set_rd_last_event();
                  m_impl->first_read_done = false;
                  m_impl->m_profiler->register_axi_memory_access_latency(
                      it->counter, it->id);
                  m_impl->m_profiler->register_axi_memory_read_latency(
                      it->counter, it->id, it->bytes);
                  m_impl->m_profiler->register_read_burst(it->burst, it->id);
                  m_impl->trans_vec.erase(it);
                  break;
                }
              }
            }
          }
        }
      };
  }
}



#endif
