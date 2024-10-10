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
#ifndef _SIM_AXI_PERF_MON_V2_0_H_
#define _SIM_AXI_PERF_MON_V2_0_H_

#include <map>
#include "xtlm.h"
#include "xsc_types.h"
#include "emulation_profiler_core_v1_0_trace.h"
#include "sim_accel_mon_v1_data_model.h"
#include "sim_axis_perf_mon_v1_data_model.h"
#include "sim_aximm_perf_mon_v1_0_data_model.h"
#include <utility>
#include "report_handler.h"
#include <chrono>
#include "perf_utils.h"
#include "emulation_profiler_core_base.h"

class emulation_profiler_core: public xsc::emulation_profiler_core_base {
	SC_HAS_PROCESS(emulation_profiler_core);
public:
	xtlm::xtlm_aximm_target_socket* axilite_rd_socket;
	xtlm::xtlm_aximm_target_socket* axilite_wr_socket;
	xtlm::xtlm_aximm_target_socket* s_axihub_wr_socket;
	xtlm::xtlm_aximm_target_socket* s_axihub_rd_socket;
	xtlm::xtlm_aximm_target_socket* s_axidma_wr_socket;
	xtlm::xtlm_aximm_target_socket* s_axidma_rd_socket;
	xtlm::xtlm_aximm_target_rd_socket_util* axilite_rd_socket_util;
	xtlm::xtlm_aximm_target_wr_socket_util* axilite_wr_socket_util;
	xtlm::xtlm_aximm_target_rd_socket_util* s_axihub_rd_socket_util;
	xtlm::xtlm_aximm_target_wr_socket_util* s_axihub_wr_socket_util;
	xtlm::xtlm_aximm_target_rd_socket_util* s_axidma_rd_socket_util;
	xtlm::xtlm_aximm_target_wr_socket_util* s_axidma_wr_socket_util;
	xtlm::xtlm_axis_target_socket* trace_socket0;
	xtlm::xtlm_axis_target_socket* trace_socket1;
	xtlm::xtlm_axis_target_socket* trace_socket2;
	xtlm::xtlm_axis_target_socket* trace_socket3;
	xtlm::xtlm_axis_target_socket* trace_socket4;
	xtlm::xtlm_axis_target_socket* trace_socket5;
	xtlm::xtlm_axis_target_socket* trace_socket6;
	xtlm::xtlm_axis_target_socket* trace_socket7;
	xtlm::xtlm_axis_target_socket* trace_socket8;
	xtlm::xtlm_axis_target_socket* trace_socket9;
	xtlm::xtlm_axis_target_socket* trace_socket10;
	xtlm::xtlm_axis_target_socket* trace_socket11;
	xtlm::xtlm_axis_target_socket* trace_socket12;
	xtlm::xtlm_axis_target_socket* trace_socket13;
	xtlm::xtlm_axis_target_socket* trace_socket14;
	xtlm::xtlm_axis_target_socket* trace_socket15;
	xtlm::xtlm_axis_target_socket* trace_socket16;
	xtlm::xtlm_axis_target_socket* trace_socket17;
	xtlm::xtlm_axis_target_socket* trace_socket18;
	xtlm::xtlm_axis_target_socket* trace_socket19;
	xtlm::xtlm_axis_target_socket* trace_socket20;
	xtlm::xtlm_axis_target_socket* trace_socket21;
	xtlm::xtlm_axis_target_socket* trace_socket22;
	xtlm::xtlm_axis_target_socket* trace_socket23;
	xtlm::xtlm_axis_target_socket* trace_socket24;
	xtlm::xtlm_axis_target_socket* trace_socket25;
	xtlm::xtlm_axis_target_socket* trace_socket26;
	xtlm::xtlm_axis_target_socket* trace_socket27;
	xtlm::xtlm_axis_target_socket* trace_socket28;
	xtlm::xtlm_axis_target_socket* trace_socket29;
	xtlm::xtlm_axis_target_socket* trace_socket30;
	xtlm::xtlm_axis_target_socket* trace_socket31;
	xtlm::xtlm_axis_target_socket* trace_socket32;
	xtlm::xtlm_axis_target_socket* trace_socket33;
	xtlm::xtlm_axis_target_socket* trace_socket34;
	xtlm::xtlm_axis_target_socket* trace_socket35;
	xtlm::xtlm_axis_target_socket* trace_socket36;
	xtlm::xtlm_axis_target_socket* trace_socket37;
	xtlm::xtlm_axis_target_socket* trace_socket38;
	xtlm::xtlm_axis_target_socket* trace_socket39;
	xtlm::xtlm_axis_target_socket* trace_socket40;
	xtlm::xtlm_axis_target_socket* trace_socket41;
	xtlm::xtlm_axis_target_socket* trace_socket42;
	xtlm::xtlm_axis_target_socket* trace_socket43;
	xtlm::xtlm_axis_target_socket* trace_socket44;
	xtlm::xtlm_axis_target_socket* trace_socket45;
	xtlm::xtlm_axis_target_socket* trace_socket46;
	xtlm::xtlm_axis_target_socket* trace_socket47;
	xtlm::xtlm_axis_target_socket* trace_socket48;
	xtlm::xtlm_axis_target_socket* trace_socket49;
	xtlm::xtlm_axis_target_socket* trace_socket50;
	xtlm::xtlm_axis_target_socket* trace_socket51;
	xtlm::xtlm_axis_target_socket* trace_socket52;
	xtlm::xtlm_axis_target_socket* trace_socket53;
	xtlm::xtlm_axis_target_socket* trace_socket54;
	xtlm::xtlm_axis_target_socket* trace_socket55;
	xtlm::xtlm_axis_target_socket* trace_socket56;
	xtlm::xtlm_axis_target_socket* trace_socket57;
	xtlm::xtlm_axis_target_socket* trace_socket58;
	xtlm::xtlm_axis_target_socket* trace_socket59;
	xtlm::xtlm_axis_target_socket* trace_socket60;
	xtlm::xtlm_axis_target_socket* trace_socket61;
	xtlm::xtlm_axis_target_socket* trace_socket62;
	xtlm::xtlm_axis_target_socket* trace_socket63;
	xtlm::xtlm_aximm_target_socket* s_aximm_wr_socket;
	xtlm::xtlm_aximm_target_socket* s_aximm_rd_socket;
	class target_wr_socket_util;
	class target_rd_socket_util;
	target_wr_socket_util* s_aximm_wr_socket_util;
	target_rd_socket_util* s_aximm_rd_socket_util;
	xtlm::xtlm_aximm_initiator_socket* m_aximm_wr_socket;
	xtlm::xtlm_aximm_initiator_socket* m_aximm_rd_socket;
	sc_core::sc_in<bool> axilite_clk;
	sc_core::sc_in<bool> axilite_aresetn;
	sc_core::sc_in<bool> s_aximm_clk;
	sc_core::sc_in<bool> s_aximm_aresetn;
	sc_core::sc_in<bool> m_aximm_clk;
	sc_core::sc_in<bool> m_aximm_aresetn;
	sc_core::sc_in<bool> trace_clk;
	sc_core::sc_in<bool> trace_aresetn;
	emulation_profiler_core(sc_core::sc_module_name p_name,
			xsc::common_cpp::properties& m_properties);
	unsigned int transport_dbg(xtlm::aximm_payload& trans);
private:
	xtlm::xtlm_axis_target_socket_util* trace_socket0_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket1_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket2_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket3_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket4_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket5_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket6_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket7_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket8_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket9_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket10_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket11_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket12_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket13_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket14_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket15_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket16_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket17_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket18_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket19_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket20_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket21_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket22_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket23_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket24_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket25_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket26_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket27_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket28_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket29_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket30_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket31_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket32_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket33_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket34_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket35_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket36_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket37_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket38_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket39_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket40_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket41_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket42_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket43_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket44_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket45_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket46_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket47_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket48_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket49_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket50_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket51_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket52_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket53_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket54_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket55_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket56_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket57_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket58_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket59_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket60_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket61_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket62_util;
	xtlm::xtlm_axis_target_socket_util* trace_socket63_util;
	std::vector<xtlm::xtlm_axis_target_socket*> trace_skts;
	std::vector<xtlm::xtlm_axis_target_socket_util*> trace_skt_utils;
	xsc::common_cpp::properties m_properties;
	emulation_profiler_core_v1_0::trace_container m_container;
	void get_profile_live_messages(std::string &str);
private:
	void handle_trace(xscuint id);
	void axilite_read();
	void axilite_write();
	void axilite_rd_resp();
	void axilite_wr_resp();
	void s_axihub_read();
	void s_axihub_write();
	void s_axihub_rd_resp();
	void s_axihub_wr_resp();
	void s_axidma_read();
	void s_axidma_write();
	void s_axidma_rd_resp();
	void s_axidma_wr_resp();
	void saximm_read(bool _is_transport_dbg = false, xtlm::aximm_payload*trans =
			nullptr);
	void saximm_write(bool _is_transport_dbg = false,
			xtlm::aximm_payload*trans = nullptr);
	void saximm_read_cb();
	void saximm_write_cb();
	void saximm_rd_resp();
	void saximm_wr_resp();
	void before_end_of_elaboration();
	void start_of_simulation();
	void calculate_clk_period();
	void get_transmit_msg();
	void register_ids();
	sc_core::sc_event send_axilite_rd_rsp;
	sc_core::sc_event send_axilite_wr_rsp;
	sc_core::sc_event send_s_axihub_rd_rsp;
	sc_core::sc_event send_s_axihub_wr_rsp;
	sc_core::sc_event send_s_axidma_rd_rsp;
	sc_core::sc_event send_s_axidma_wr_rsp;
	sc_core::sc_event send_saximm_rd_rsp;
	sc_core::sc_event send_saximm_wr_rsp;
	std::queue<xtlm::aximm_payload*> axilite_rd_rsp;
	std::queue<xtlm::aximm_payload*> axilite_wr_rsp;
	std::queue<xtlm::aximm_payload*> s_axihub_rd_rsp;
	std::queue<xtlm::aximm_payload*> s_axihub_wr_rsp;
	std::queue<xtlm::aximm_payload*> s_axidma_rd_rsp;
	std::queue<xtlm::aximm_payload*> s_axidma_wr_rsp;
	std::queue<xtlm::aximm_payload*> saximm_rd_rsp;
	std::queue<xtlm::aximm_payload*> saximm_wr_rsp;
	sc_core::sc_signal<bool> m_aximm_clk_signal;
	sc_core::sc_signal<bool> m_aximm_aresten_signal;
	sc_core::sc_time m_clk_period;
	xscuint64 pending_trace_data;
	xscuint pending_trace_datasize;
	std::vector<sim_accel_mon_v1::data_model*> m_accel_data;
	std::vector<sim_axis_perf_mon_v1::data_model*> m_axis_data;
	std::vector<sim_aximm_perf_mon_v1_0::data_model*> m_aximm_data;
	xsc::common_cpp::report_handler logger;
	std::map<xsc::common_cpp::SEVERITY, std::pair<std::string, xscuint> > m_msgs;
	std::chrono::time_point<std::chrono::high_resolution_clock> m_start_time;
	xsc::perf_utils* m_perf_util;
};

#endif /* _SIM_AXI_PERF_MON_V2_0_H_ */
