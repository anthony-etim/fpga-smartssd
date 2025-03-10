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
#ifndef _SIM_AXIS_PERF_MON_V1_RDWR_H_
#define _SIM_AXIS_PERF_MON_V1_RDWR_H_
#include <map>
#include <queue>
#include "xtlm.h"
#include "sim_axis_perf_mon_v1_data_model.h"
#include "perf_modules_to_hub_extension.h"
#include "perf_utils.h"
#include <chrono>
enum axi_s_state_type {
	AXI_S_IDLE = 0x0,
	AXI_S_START = 0x1,
	AXI_S_STARVE = 0x2,
	AXI_S_STALL = 0x4,
	AXI_S_TRANS = 0x8,
	AXI_S_SINGLE = 0x10
};

namespace sim_axis_perf_mon_v1 {
class rdwr_monitor: public sc_core::sc_module,
		public xtlm::xtlm_axis_monitor_base {
	SC_HAS_PROCESS(rdwr_monitor);
public:
	rdwr_monitor(sc_core::sc_module_name p_name,
			xsc::common_cpp::properties& _properties,
			sim_axis_perf_mon_v1::data_model* _datamodel);
	xtlm::xtlm_axis_monitor_socket skt;
	xtlm::xtlm_axis_initiator_socket trace_skt;
	xtlm::xtlm_axis_initiator_socket_util trace_util;
	sc_core::sc_in<bool> clk;
	sc_core::sc_in<bool> aresten;
private:
	void register_nb_call(const xtlm::axis_payload& payload,
			const tlm::tlm_phase& phase, const sc_core::sc_time& delay);

	void register_nb_return_call(const xtlm::axis_payload& payload,
			const tlm::tlm_phase& phase, const sc_core::sc_time& delay,
			const tlm::tlm_sync_enum& status);

	void register_b_call(const xtlm::axis_payload& payload,
			const sc_core::sc_time& delay);

	void register_b_return_call(const xtlm::axis_payload& payload,
			const sc_core::sc_time& delay);

	void calculate_clk_period();
	void check_uncompleted_transaction();
	void create_trace(xscuint64& event,
			std::chrono::time_point<std::chrono::high_resolution_clock>& timestamp);
	void create_trace(xscuint64& event);
	void send_trace();
	bool cu_start = false;
private:
	struct trans_info {
		sc_core::sc_time start_time;
		std::chrono::time_point<std::chrono::high_resolution_clock> start_time_chrono;
	};
	sim_axis_perf_mon_v1::data_model *m_data_model;
	std::map<const xtlm::axis_payload*, trans_info> m_latency;
	sc_core::sc_time m_clk_period;
	xtlm::xtlm_axis_mem_manager m_mem_manager;
	xscuint64 m_trace_id;
	std::queue<xtlm::axis_payload*> m_pending_trace;
	sc_event trace_event;
	axi_s_state_type m_nxt_state, m_state;
	xscuint64 count;
	xscuint64 m_time_begin_data;
	xscuint64 m_time_starve;
	sc_core::sc_time m_time_start_of_txn;
	std::chrono::time_point<std::chrono::high_resolution_clock> m_time_chrono_start_of_txn;
	bool m_trans_in_progress;
	bool m_starve_in_progress;
	void start_of_simulation();
	bool m_trace_enabled;
	xtlm::axis_payload* m_release_trace;
	xsc::perf_utils* m_perf_util;
	double m_clk_training_slope;
};
}

#endif /* _SIM_AXI_PERF_MON_V2_0_RD_H_ */
