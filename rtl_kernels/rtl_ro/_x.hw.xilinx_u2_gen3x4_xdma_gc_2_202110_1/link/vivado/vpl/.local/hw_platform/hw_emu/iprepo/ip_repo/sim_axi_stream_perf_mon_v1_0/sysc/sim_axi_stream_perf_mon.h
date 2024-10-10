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

#ifndef _AXI_STREAM_PERFORMANCE_MONITOR_H_
#define _AXI_STREAM_PERFORMANCE_MONITOR_H_

#include "systemc.h"
#include "xaxi_stream_profiler_instmgr.h"

namespace xsc {
  namespace axi_stream_perf_mon {

    template<unsigned int ID_WIDTH, unsigned int DATA_WIDTH>
    class sim_axi_stream_perf_mon : public sc_module {
        SC_HAS_PROCESS(sim_axi_stream_perf_mon);
      public:
        sc_in<sc_bv< ID_WIDTH >> axi_s_tid;

        sc_in<bool> axi_s_tvalid;
        sc_in<bool> axi_s_tready;

        sc_in<sc_bv< DATA_WIDTH*8 >> axi_s_tdata;
        sc_in<sc_bv< DATA_WIDTH >>   axi_s_tstrobe;
        sc_in<sc_bv< DATA_WIDTH >>   axi_s_tkeep;

        sc_in<bool> axi_s_tlast;

        sc_in<bool> axi_aclk;
        sc_in<bool> axi_aresetn;

        sim_axi_stream_perf_mon(sc_core::sc_module_name s_name, std::string s_mon_id) : sc_module(s_name),
                axi_s_tid("axi_s_tid"),
                axi_s_tvalid("axi_s_tvalid"), axi_s_tready("axi_s_tready"),
                axi_s_tdata("axi_s_tdata"), axi_s_tstrobe("axi_s_tstrobe"), axi_s_tkeep("axi_s_tkeep"),
                axi_s_tlast("axi_s_tlast"),
                axi_aclk("axi_aclk"), axi_aresetn("axi_aresetn")
        {
          xaxi_stream_profiler_instmgr* m_instmgr = xaxi_stream_profiler_instmgr::getInstMgr();
          m_profiler = m_instmgr->getInstanceById(s_mon_id);
          m_tx_started = false;
          m_last_tx_end = false;

          m_nxt_state = AXI_S_IDLE;
          m_state = AXI_S_IDLE;

          SC_METHOD(simulate_single_cycle);
          dont_initialize();
          sensitive << axi_aclk.pos();

        }
      private:

        xaxi_stream_profiler* m_profiler;
        bool m_tx_started, m_last_tx_end;
        axi_s_state_type m_nxt_state, m_state;


        void simulate_single_cycle()
        {
          sample_signals();
          m_profiler->simulate_single_cycle();
        }

        uint64_t count_valid_bytes()
        {
            sc_bv< DATA_WIDTH > valid_bytes = axi_s_tstrobe.read() & axi_s_tkeep.read();
            uint64_t num_valid_byte = 0;
            for(int i = 0; i < DATA_WIDTH ; ++i) {
                num_valid_byte += valid_bytes[i];
            }
            return num_valid_byte;
        }


        void sample_signals()
        {
            #if 0
            // not used
            if(!axi_aresetn.read()) {
                // reset state , in profiler too
                return;
            }
            #endif

            m_state = m_nxt_state;

            switch(m_state) {
                case AXI_S_IDLE:
                {
                    if(axi_s_tvalid.read()) {

                        if(axi_s_tready.read()) {
                            m_profiler->register_axi_stream_busy_cycle();
                            m_profiler->register_axi_stream_data_byte(0, count_valid_bytes());    // consider strobe, keep
                            if(axi_s_tlast.read()) {
                                m_profiler->register_axi_stream_transaction();
                                m_profiler->create_event(AXI_S_SINGLE);
                                m_nxt_state = AXI_S_SINGLE;
                            } else {
                                m_profiler->create_event(AXI_S_TRANS | AXI_S_START);
                                m_nxt_state = AXI_S_TRANS;
                            }
                        }
                    }
                    break;
                }
                case AXI_S_SINGLE:
                {
                    if(axi_s_tvalid.read() && axi_s_tready.read() && axi_s_tlast.read()) {
                        m_profiler->register_axi_stream_busy_cycle();
                        m_profiler->register_axi_stream_data_byte(0, count_valid_bytes());    // consider strobe, keep
                        m_profiler->register_axi_stream_transaction();
                        m_profiler->create_event(AXI_S_SINGLE);
                    } else {
                        m_nxt_state = AXI_S_IDLE;
                    }
                    break;
                }
                case AXI_S_TRANS:
                {
                    m_profiler->register_axi_stream_busy_cycle();
                    if(axi_s_tvalid.read() && axi_s_tready.read()) {
                        m_profiler->register_axi_stream_data_byte(0, count_valid_bytes());    // consider strobe, keep
                    }
                    
                    if(axi_s_tlast.read() && axi_s_tvalid.read() && axi_s_tready.read()) {
                        m_profiler->register_axi_stream_transaction();
                        m_profiler->create_event(AXI_S_TRANS);
                        m_nxt_state = AXI_S_IDLE;
                    } else if(axi_s_tready.read() && !axi_s_tvalid.read()) {
                        m_profiler->register_axi_stream_starve_cycle();
                        m_profiler->create_event(AXI_S_STARVE | AXI_S_START);
                        m_nxt_state = AXI_S_STARVE;
                    } else if(axi_s_tvalid.read() && !axi_s_tready.read()) {
                        m_profiler->register_axi_stream_stall_cycle();
                        m_profiler->create_event(AXI_S_STALL | AXI_S_START);
                        m_nxt_state = AXI_S_STALL;
                    }
                    break;
                }
                case AXI_S_STALL:
                {
                    if(axi_s_tready.read()) {
                        m_profiler->create_event(AXI_S_STALL);  // end of stall cycle
                        m_nxt_state = AXI_S_TRANS;
                    } else {
                        // register
                        m_profiler->register_axi_stream_busy_cycle();
                        m_profiler->register_axi_stream_stall_cycle();
                    }
                    break;
                }
                case AXI_S_STARVE:
                {
                    if(axi_s_tvalid.read()) {
                        m_profiler->create_event(AXI_S_STARVE);  // end of starve cycle
                        m_nxt_state = AXI_S_TRANS;
                        if(axi_s_tlast.read() && axi_s_tready.read()) {
                            // end of transaction too; register transaction event and other related things
                            m_profiler->register_axi_stream_busy_cycle();
                            m_profiler->register_axi_stream_data_byte(0, count_valid_bytes());    // consider strobe, keep
                            m_profiler->register_axi_stream_transaction();
                            m_profiler->create_multiple_events_in_curr_cycle(AXI_S_TRANS);
                            m_nxt_state = AXI_S_IDLE;
                        }
                    } else {
                        // register
                        m_profiler->register_axi_stream_busy_cycle();
                        m_profiler->register_axi_stream_starve_cycle();
                    }
                    break;
                }
            } 
        }

      };
  }
}
#endif /* _AXI_STREAM_PERFORMANCE_MONITOR_H_ */


