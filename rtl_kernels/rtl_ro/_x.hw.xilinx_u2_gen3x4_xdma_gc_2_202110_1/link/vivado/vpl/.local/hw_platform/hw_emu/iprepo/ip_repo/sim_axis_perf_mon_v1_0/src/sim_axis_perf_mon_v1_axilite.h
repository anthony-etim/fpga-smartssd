// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// (c) Copyright 2013 - 2019 Xilinx, Inc. All rights reserved.
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
#ifndef _SIM_AXIS_PERF_MON_V1_AXILITE_H_
#define _SIM_AXIS_PERF_MON_V1_AXILITE_H_
#include "xtlm.h"
#include "sim_axis_perf_mon_v1_data_model.h"
#include <queue>
namespace sim_axis_perf_mon_v1 {
class axilite_module: public sc_core::sc_module {
	SC_HAS_PROCESS(axilite_module);
public:
	axilite_module(sc_core::sc_module_name p_name,
			xsc::common_cpp::properties& _properties,
			sim_axis_perf_mon_v1::data_model* _datamodel);
	xtlm::xtlm_aximm_target_socket* rd_skt;
	xtlm::xtlm_aximm_target_socket* wr_skt;
	xtlm::xtlm_aximm_target_rd_socket_util* rd_util;
	xtlm::xtlm_aximm_target_wr_socket_util* wr_util;
	sc_core::sc_in<bool> clk;
	sc_core::sc_in<bool> aresetn;
private:
	void read_reg();
	void write_reg();
	void read_resp();
	void write_resp();
	void reset();
	void calculate_clk_period();
	void sample_registers();
	sc_core::sc_time m_last_sample_time;
	sc_core::sc_time m_clk_period;
	xsc::common_cpp::report_handler logger;
	sim_axis_perf_mon_v1::data_model* m_data_model;
	sc_core::sc_event send_rd_rsp;
	sc_core::sc_event send_wr_rsp;
	std::queue<xtlm::aximm_payload*> rd_pending_rsp;
	std::queue<xtlm::aximm_payload*> wr_pending_rsp;
	//Registers
	xscuint64 sample_register;
	xscuint64 control_register;
	xscuint64 num_tran;
	xscuint64 busy_cycles;
	xscuint64 data_bytes;
	xscuint64 stall_cycles;
	xscuint64 starve_cycles;
};
}

#endif /* _SIM_AXIMM_PERF_MON_V2_0_AXILITE_H_ */
