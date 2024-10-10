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

#ifndef _AXI_PERFORMANCE_MONITOR_WR_H_
#define _AXI_PERFORMANCE_MONITOR_WR_H_

#include "systemc.h"
#include "sim_axi_performance_monitor_wr_impl.h"

namespace xsc {
  namespace axi_perf_mon {
    template<unsigned int ID_WIDTH,unsigned int ADDR_WIDTH>
      class sim_axi_performance_monitor_wr : public sc_module {
        SC_HAS_PROCESS(sim_axi_performance_monitor_wr);
      public:
        sc_in<sc_bv< ID_WIDTH > > axi_awid;
        sc_in<sc_bv< ADDR_WIDTH > > axi_awaddr;
        sc_in<sc_bv<8> > axi_awlen;
        sc_in<sc_bv<3> > axi_awsize;
        sc_in<sc_bv<2> > axi_awburst;
        sc_in<bool> axi_awvalid;
        sc_in<bool> axi_awready;
        sc_in<bool> axi_wlast;
        sc_in<bool> axi_wvalid;
        sc_in<bool> axi_wready;
        sc_in<bool> axi_bvalid;
        sc_in<bool> axi_bready;
        sc_in<bool> axi_aclk;
        sc_in<bool> axi_aresetn;

        sim_axi_performance_monitor_wr(sc_core::sc_module_name p_name, std::string monitor_id, uint64_t addr_min, 
          uint64_t addr_max, bool enable_addr_filter) : sc_module(p_name) {
          m_impl = new axi_performance_monitor_wr_impl(monitor_id, addr_min, addr_max, enable_addr_filter);
        }

        void simulate_single_cycle() {
          sample_signals();
        }

      private:
        axi_performance_monitor_wr_impl* m_impl;
        void sample_signals() {
          // Check if tranx is valid
          // Return if filter is enabled
          if (m_impl->filter_addr_en) {
            if (axi_awvalid.read() && axi_awready.read()) {
              auto cur_addr = axi_awaddr.read().to_uint64();
              m_impl->filter_current_trax = (cur_addr >= m_impl->filter_addr_min && 
                                            cur_addr <= m_impl->filter_addr_max) ? false : true;
            }
            if (m_impl->filter_current_trax)
              return;
          }

          //NOTE::Calculating latency as soon as master is ready for
          //the transaction
          if (axi_awvalid.read() || axi_wvalid.read()) {
            if (m_impl->trans_vec.empty()) {
              m_impl->trans_vec.push_back(axi_performance_monitor_wr_impl::transaction());
              m_impl->trans_vec.back().id = axi_awid.read().to_uint();
            }
            //New address phase before completion of first transaction
            if (axi_awvalid.read() && (m_impl->trans_vec.back().addr_sampled)) {
              m_impl->trans_vec.push_back(axi_performance_monitor_wr_impl::transaction());
              m_impl->trans_vec.back().id = axi_awid.read().to_uint();
            }
            //New transaction : With data phase before address phase
            if (axi_wvalid.read() && (m_impl->trans_vec.back().data_sampled)) {
              m_impl->trans_vec.push_back(axi_performance_monitor_wr_impl::transaction());
            }
          }
          for (auto it = m_impl->trans_vec.begin(); it != m_impl->trans_vec.end(); ++it) {
            it->counter += 1;
            if (it->counter % m_impl->max_wr_latency == 0 && (it->counter > 0)) {
              m_impl->m_profiler->report_uncompleted_write(it->counter, it->id,
                  it->addr);
            }
          }

          //Handshake done
          if (axi_awready.read() && axi_awvalid.read()) {
            for (auto it = m_impl->trans_vec.begin(); it != m_impl->trans_vec.end();
                ++it) {
              if (it->addr_sampled == false) {
                it->addr_sampled = true;
                if (axi_awlen.read().to_uint() > 0)
                  it->burst = true;

                it->addr = axi_awaddr.read().to_uint64();
                int awlen = axi_awlen.read().to_uint();

                m_impl->m_profiler->set_wr_address_event();
                m_impl->m_profiler->set_aw_length_event(awlen);
                int awsize = 1 << axi_awsize.read().to_uint();
                m_impl->m_profiler->set_wr_bytes((awlen + 1) * awsize);
                //std::cout << "AWLEN " << awlen << "AWSIZE " << awsize << "ORIG AWSIZE " << xaximm_wr_addr_if->get_pin_val(XAXIMM_ENUM_AWSIZE) << std::endl;
                it->bytes = (awlen + 1) * awsize;
                break;
              }
            }
          }
          if (axi_wready.read() && axi_wvalid.read()) {
            //TODO first_read_done flag will handle only transactions if they r coming from a single id.
            //need to change the code for multiple id's
            if(!m_impl->first_write_done) {
              m_impl->m_profiler->set_wr_first_event();
              m_impl->first_write_done = true;
            }

            if (axi_wlast.read()) {
              m_impl->m_profiler->set_wr_last_event();
              m_impl->first_write_done = false;
              for (auto it = m_impl->trans_vec.begin();
                  it != m_impl->trans_vec.end(); ++it) {
                if (it->data_sampled == false) {
                  it->data_sampled = true;
                  break;
                }
              }
            }
          }
          if (axi_bvalid.read() && axi_bready.read()) {
            //Interleaving is not supported for write in AXI4 protocol.
            //assert(wr_transaction_id == xaximm_wr_addr_if->get_pin_val(XAXIMM_ENUM_AWID));//.to_uint());
            m_impl->m_profiler->set_wr_response_event();

            //register the time elapsed in wr transaction
            m_impl->m_profiler->register_axi_memory_access_latency(
                m_impl->trans_vec.front().counter, m_impl->trans_vec.front().id);
            m_impl->m_profiler->register_axi_memory_write_latency(
                m_impl->trans_vec.front().counter, m_impl->trans_vec.front().id,
                m_impl->trans_vec.front().bytes);
            m_impl->m_profiler->register_write_burst(m_impl->trans_vec.front().burst,
                m_impl->trans_vec.front().id);
            m_impl->trans_vec.erase(m_impl->trans_vec.begin());

          }

        }

      };
  }
}




#endif /* _AXI_PERFORMANCE_MONITOR_WR_H_ */
