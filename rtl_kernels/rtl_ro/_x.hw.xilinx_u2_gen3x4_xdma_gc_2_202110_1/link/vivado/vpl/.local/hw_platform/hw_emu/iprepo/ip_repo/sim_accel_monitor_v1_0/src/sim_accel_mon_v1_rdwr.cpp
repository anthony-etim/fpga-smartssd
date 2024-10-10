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

#include "sim_accel_mon_v1_rdwr.h"
#include <iostream>
#include <string>

sim_accel_mon_v1::rdwr_monitor::rdwr_monitor(sc_core::sc_module_name p_name,
		xsc::common_cpp::properties& _properties,
		sim_accel_mon_v1::data_model* _datamodel) :
		sc_core::sc_module(p_name), xtlm::xtlm_aximm_monitor_base("rdwr_mon"), rd_skt(
				"rd_skt", 32), trace_util("trace_util", xtlm::axis::TRANSACTION,
				32), m_trace_id(_properties.getUint64("TRACE_ID")), wr_skt(
				"wr_skt", 32), trace_skt("trace_skt", 32), m_release_trace(
				nullptr), cu_start(false), m_perf_util(nullptr), m_clk_training_slope(
				0) {

	m_data_model = _datamodel;
	rd_skt.bind(*this);
	wr_skt.bind(*this);

	trace_util.stream_socket(trace_skt);

	SC_THREAD(calculate_clk_period);
	dont_initialize();
	sensitive << clk;

	SC_METHOD(send_trace);
	dont_initialize();
	sensitive << trace_event;
}

void sim_accel_mon_v1::rdwr_monitor::register_nb_call(
		const xtlm::aximm_payload& payload, const tlm::tlm_phase& phase,
		const sc_core::sc_time& delay) {
	if (payload.get_command() == xtlm::XTLM_READ_COMMAND) {
		if (phase == xtlm::BEGIN_RADDR) {

		} else if (phase == xtlm::END_RADDR) {

		} else if (phase == xtlm::BEGIN_RDATA
				|| phase == xtlm::BEGIN_RDATA_LAST) {
		} else if (phase == xtlm::END_RDATA) {
			//if begin rdata or begin rdata last set cu_end if started after comparing it with 1
		} else if (phase == xtlm::END_RDATA_LAST) {
			end_rd_data(payload);
		}
	} else {
		if (phase == xtlm::BEGIN_WADDR) {

		} else if (phase == xtlm::END_WADDR) {

		} else if (phase == xtlm::BEGIN_WDATA
				|| phase == xtlm::BEGIN_WDATA_LAST) {
		} else if (phase == xtlm::END_WDATA_LAST) {
			//if begin_wdata or begin wdata last set cu_start false if not started after comparing it with 0
			start_wr_data(payload);
		} else if (phase == xtlm::BEGIN_WRESP) {

		} else if (phase == xtlm::END_WRESP) {
		}
	}
}

void sim_accel_mon_v1::rdwr_monitor::register_nb_return_call(
		const xtlm::aximm_payload& payload, const tlm::tlm_phase& phase,
		const sc_core::sc_time& delay, const tlm::tlm_sync_enum& status) {
	if (status == tlm::TLM_ACCEPTED) {
		return; //No change in payload and phase
	}
	register_nb_call(payload, phase, delay);
}

void sim_accel_mon_v1::rdwr_monitor::register_b_call(
		const xtlm::aximm_payload& payload, const sc_core::sc_time& delay) {
	if (payload.get_command() == xtlm::XTLM_WRITE_COMMAND)
		start_wr_data(payload);
}

void sim_accel_mon_v1::rdwr_monitor::register_b_return_call(
		const xtlm::aximm_payload& payload, const sc_core::sc_time& delay) {
	if (payload.get_command() == xtlm::XTLM_READ_COMMAND)
		end_rd_data(payload);

}

void sim_accel_mon_v1::rdwr_monitor::start_wr_data(
		const xtlm::aximm_payload& payload) {
	if ((payload.get_address() & 0xFF) == 0) {
		auto data = payload.get_data_ptr();
		if (((xscuint*) data)[0] & 0x1) {
			cu_start = true;
			m_data_model->incr_total_starts();
			m_data_model->incr_execution_count();
			m_latency.push( { sc_time_stamp() });
			if (m_latency.size() > m_data_model->get_max_parallel_trans())
				m_data_model->set_max_parallel_trans(
						xscuint64(m_latency.size()));
			xscuint64 event = 0x2200000000000; //45 bit - 1 and 49 - 1
			create_trace(event);
		}
	}
}

void sim_accel_mon_v1::rdwr_monitor::end_rd_data(
		const xtlm::aximm_payload& payload) {
	if ((payload.get_address() & 0xFF) == 0) {
		auto data = payload.get_data_ptr();
		if ((((xscuint*) data)[0] & 0x2) || (((xscuint*) data)[0] & 0x10)) {
			xscuint64 count = (xscuint64) ((sc_time_stamp().value()
					- m_latency.front().start_time.value())
					/ m_clk_period.value());
			m_data_model->incr_total_execution_cycles(count);
			m_data_model->set_max_exec_time(count);
			m_data_model->set_min_exec_time(count);
			m_latency.pop();
			if (m_latency.size() == 0) {
				m_data_model->incr_total_cu_cycles(count);
				cu_start = false;
			}
			xscuint64 event = 0x2000000000000; //45 bit - 0 and 49 - 1
			create_trace(event);
		}
	}
}

void sim_accel_mon_v1::rdwr_monitor::calculate_clk_period() {
	sc_core::sc_time start_time = sc_time_stamp();
	wait();
	m_clk_period = (sc_time_stamp() - start_time) * 2;
	m_clk_training_slope = m_clk_period.to_seconds();
}

void sim_accel_mon_v1::rdwr_monitor::check_uncompleted_transaction() {
}

void sim_accel_mon_v1::rdwr_monitor::create_trace(xscuint64& event) {
	auto trace = m_mem_manager.get_payload();
	trace->acquire();
	trace->set_tlast(true);
	trace->create_and_set_tdata_ptr(8);
	xscuint64& data = ((xscuint64*) trace->get_tdata_ptr())[0];
	data = 0;
	xscuint64 timestamp = m_perf_util->getClockTrainedTimeStamp(
			m_clk_training_slope);
	if (timestamp > 0x1FFFFFFFFFFF) {
		data = 0x4000000000000000; //set Timestamp overflow at 62
	}
	xscuint64 trace_id = m_trace_id >> 4;
	data = data | (timestamp & 0x1FFFFFFFFFFF); //timestamp from 0-44
	data = data | (trace_id << 53 & 0x1FE0000000000000); // ID from 53-60
	data = data | event;
	m_pending_trace.push(trace);
	trace_event.notify(sc_core::SC_ZERO_TIME);
}

void sim_accel_mon_v1::rdwr_monitor::send_trace() {
	if (trace_util.is_transfer_done() == false) {
		next_trigger(trace_util.transfer_done);
		return;
	}

	if (m_release_trace) {
		m_release_trace->release();
		m_release_trace = nullptr;
	}

	trace_util.transport(m_pending_trace.front());
	m_release_trace = m_pending_trace.front();
	m_pending_trace.pop();

	if (m_pending_trace.empty() == false) {
		next_trigger(trace_util.transfer_done);
	}
}

void sim_accel_mon_v1::rdwr_monitor::start_of_simulation() {
	m_perf_util = xsc::perf_utils::getInstance();
}
