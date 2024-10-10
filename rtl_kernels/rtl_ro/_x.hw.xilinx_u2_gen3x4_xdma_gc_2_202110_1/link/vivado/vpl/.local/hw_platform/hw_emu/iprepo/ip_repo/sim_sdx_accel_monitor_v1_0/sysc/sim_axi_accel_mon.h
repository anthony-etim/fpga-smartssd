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

#ifndef _AXI_ACCEL_MONITOR_H_
#define _AXI_ACCEL_MONITOR_H_

#include "systemc.h"
#include "xaxi_accel_profiler_instmgr.h"
#include "sim_axi_accelerator_monitor.h"
namespace xsc {
  namespace sim_axi_accel_mon_v1 {

    template<unsigned int ADDR_WIDTH, unsigned int DATA_WIDTH>
      class sim_axi_accel_mon: public sc_module {
        SC_HAS_PROCESS(sim_axi_accel_mon);
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
        
        sim_axi_accel_mon(sc_core::sc_module_name p_name, std::string mon_id) : sc_module(p_name),
                    axi_aclk("axi_aclk"),
                    axi_aresetn("axi_aresetn"),

                    axi_awaddr("axi_awaddr"),
                    axi_awvalid("axi_awvalid"),
                    axi_awready("axi_awready"),
                    axi_wdata("axi_wdata"),
                    axi_wvalid("axi_wvalid"),
                    axi_wready("axi_wready"),
                    
                    axi_araddr("axi_araddr"),
                    axi_arvalid("axi_arvalid"),
                    axi_arready("axi_arready"),
                    axi_rdata("axi_rdata"),
                    axi_rvalid("axi_rvalid"),
                    axi_rready("axi_rready") {
          cu_module = new xsc::sim_axi_accel_mon_v1::sim_axi_accelerator_monitor<ADDR_WIDTH, DATA_WIDTH>
          ((std::string((const char*)p_name) + std::string("_cu")).c_str(), mon_id);

          xaxi_accel_profiler_instmgr* m_instmgr = xaxi_accel_profiler_instmgr::getInstMgr();
          m_profiler = m_instmgr->getInstanceById(mon_id);

          cu_module->axi_aclk(axi_aclk);
          cu_module->axi_aresetn(axi_aresetn);

          cu_module->axi_awaddr(axi_awaddr);
          cu_module->axi_awvalid(axi_awvalid);
          cu_module->axi_awready(axi_awready);
          cu_module->axi_wdata(axi_wdata);
          cu_module->axi_wvalid(axi_wvalid);
          cu_module->axi_wready(axi_wready);

          cu_module->axi_araddr(axi_araddr);
          cu_module->axi_arvalid(axi_arvalid);
          cu_module->axi_arready(axi_arready);
          cu_module->axi_rdata(axi_rdata);
          cu_module->axi_rvalid(axi_rvalid);
          cu_module->axi_rready(axi_rready);
          
          SC_METHOD(simulate_single_cycle);
          dont_initialize();
          sensitive_pos << axi_aclk;
        }
      private:
        xsc::sim_axi_accel_mon_v1::sim_axi_accelerator_monitor<ADDR_WIDTH, DATA_WIDTH>* cu_module;
        xaxi_accel_profiler* m_profiler;
        void simulate_single_cycle() {
          cu_module->simulate_single_cycle();
          m_profiler->simulate_single_cycle();
        }
      };

  }
}
#endif /* _AXI_ACCEL_MONITOR_H_ */


