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

#ifndef _AXI_PERFORMANCE_MONITOR_H_
#define _AXI_PERFORMANCE_MONITOR_H_

#include "systemc.h"
#include "xaxi_profiler_instmgr.h"
#include "sim_axi_performance_monitor_rd.h"
#include "sim_axi_performance_monitor_wr.h"
namespace xsc {
  namespace axi_perf_mon {

    template<unsigned int ID_WIDTH, unsigned int ADDR_WIDTH>
      class sim_axi_perf_mon: public sc_module {
        SC_HAS_PROCESS(sim_axi_perf_mon);
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
        sim_axi_perf_mon(sc_core::sc_module_name p_name, std::string mon_id, uint64_t addr_min, uint64_t addr_max, bool enable_addr_filter) : sc_module(p_name),axi_awid("axi_awid"),axi_awaddr("axi_awaddr"), axi_awlen("axi_awlen"), axi_awsize("axi_awsize"),axi_awburst("axi_awburst"),axi_awvalid("axi_awvalid"),axi_awready("axi_awready"), axi_wlast("axi_wlast"),  axi_wvalid("axi_wvalid"), axi_wready("axi_wready"), axi_bvalid("axi_bvalid"),axi_bready("axi_bready"), axi_arid("axi_arid"),axi_araddr("axi_araddr"),axi_arlen("axi_arlen"),axi_arsize("axi_arsize"),axi_arburst("axi_arburst"),axi_arvalid("axi_arvalid"),axi_arready("axi_arready"),    axi_rlast("axi_rlast"), axi_rid("axi_rid"),axi_rvalid("axi_rvalid"), axi_rready("axi_rready"),axi_aclk("axi_aclk"), axi_aresetn("axi_aresetn") {

          //Binding of ports
          rd_module = new xsc::axi_perf_mon::sim_axi_performance_monitor_rd<ID_WIDTH, ADDR_WIDTH>((std::string((const char*)p_name) + std::string("_rd")).c_str(),
              mon_id, addr_min, addr_max, enable_addr_filter);
          wr_module = new xsc::axi_perf_mon::sim_axi_performance_monitor_wr<ID_WIDTH, ADDR_WIDTH>((std::string((const char*)p_name) + std::string("_wr")).c_str(),
              mon_id, addr_min, addr_max, enable_addr_filter);
          xaxi_profiler_instmgr* m_instmgr = xaxi_profiler_instmgr::getInstMgr();
          m_profiler = m_instmgr->getInstanceById(mon_id);
          wr_module->axi_aclk(axi_aclk);
          wr_module->axi_aresetn(axi_aresetn);
          wr_module->axi_awid(axi_awid);
          wr_module->axi_awaddr(axi_awaddr);
          wr_module->axi_awlen(axi_awlen);
          wr_module->axi_awsize(axi_awsize);
          wr_module->axi_awburst(axi_awburst);
          wr_module->axi_awvalid(axi_awvalid);
          wr_module->axi_awready(axi_awready);
          wr_module->axi_wlast(axi_wlast);
          wr_module->axi_wvalid(axi_wvalid);
          wr_module->axi_wready(axi_wready);
          wr_module->axi_bvalid(axi_bvalid);
          wr_module->axi_bready(axi_bready);

          rd_module->axi_aclk(axi_aclk);
          rd_module->axi_aresetn(axi_aresetn);
          rd_module->axi_arid(axi_arid);
          rd_module->axi_araddr(axi_araddr);
          rd_module->axi_arlen(axi_arlen);
          rd_module->axi_arsize(axi_arsize);
          rd_module->axi_arburst(axi_arburst);
          rd_module->axi_arvalid(axi_arvalid);
          rd_module->axi_arready(axi_arready);
          rd_module->axi_rlast(axi_rlast);
          rd_module->axi_rid(axi_rid);
          rd_module->axi_rvalid(axi_rvalid);
          rd_module->axi_rready(axi_rready);
          SC_METHOD(simulate_single_cycle);
          dont_initialize();
          sensitive_pos << axi_aclk;

        }
      private:
        xsc::axi_perf_mon::sim_axi_performance_monitor_rd<ID_WIDTH, ADDR_WIDTH>* rd_module;
        xsc::axi_perf_mon::sim_axi_performance_monitor_wr<ID_WIDTH, ADDR_WIDTH>* wr_module;
        xaxi_profiler* m_profiler;
        void simulate_single_cycle() {
          rd_module->simulate_single_cycle();
          wr_module->simulate_single_cycle();
          m_profiler->simulate_single_cycle();
        }
      };

  }
}
#endif /* _AXI_PERFORMANCE_MONITOR_H_ */
