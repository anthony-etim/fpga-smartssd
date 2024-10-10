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

#include "sim_aximm_perf_mon_v1_0_rd.h"

sim_aximm_perf_mon_v1_0::rd_monitor::rd_monitor(sc_core::sc_module_name p_name,
		xsc::common_cpp::properties& _properties,
		sim_aximm_perf_mon_v1_0::data_model* _data_model) :
		sc_core::sc_module(p_name), xtlm::xtlm_aximm_monitor_base("rd_mon"), rd_skt(
				"rd_skt", 32), rd_trace_skt("rd_trace_skt", 32), rd_trace_util(
				"rd_trace_util", xtlm::axis::TRANSACTION, 32), m_read_id(
				_properties.getUint64("TRACE_READ_ID")), enable_addr_filter(
				_properties.getBool("ENABLE_ADDR_FILTER")), addr_max(
				_properties.getUint64("ADDR_MAX")), addr_min(
				_properties.getUint64("ADDR_MIN")), m_release_trace(nullptr), rd_busy_cycles(
				sc_core::SC_ZERO_TIME), rd_outstanding(0), m_perf_util(nullptr), m_clk_training_slope(
				0) {
	m_data_model = _data_model;
	rd_skt.bind(*this);

	rd_trace_util.stream_socket(rd_trace_skt);

	SC_THREAD(calculate_clk_period);
	dont_initialize();
	sensitive << clk;

	SC_METHOD(send_trace);
	dont_initialize();
	sensitive << trace_event;
}

void sim_aximm_perf_mon_v1_0::rd_monitor::register_nb_call(
		const xtlm::aximm_payload& payload, const tlm::tlm_phase& phase,
		const sc_core::sc_time& delay) {
	if (is_addr_filtered(payload)) {
		return;
	}
	if (phase == xtlm::BEGIN_RADDR) {
		start_rd_addr(payload);
	} else if (phase == xtlm::END_RADDR) {

	} else if (phase == xtlm::BEGIN_RDATA || phase == xtlm::BEGIN_RDATA_LAST) {
		start_rd_data(payload);

	} else if (phase == xtlm::END_RDATA) {

	} else if (phase == xtlm::END_RDATA_LAST) {
		end_rd_data(payload);
	}
}

void sim_aximm_perf_mon_v1_0::rd_monitor::register_nb_return_call(
		const xtlm::aximm_payload& payload, const tlm::tlm_phase& phase,
		const sc_core::sc_time& delay, const tlm::tlm_sync_enum& status) {
	if (status == tlm::TLM_ACCEPTED) {
		return; //No change in payload and phase
	}
	register_nb_call(payload, phase, delay);
}

void sim_aximm_perf_mon_v1_0::rd_monitor::register_b_call(
		const xtlm::aximm_payload& payload, const sc_core::sc_time& delay) {
	if (is_addr_filtered(payload)) {
		return;
	}
	start_rd_addr(payload);
}

void sim_aximm_perf_mon_v1_0::rd_monitor::register_b_return_call(
		const xtlm::aximm_payload& payload, const sc_core::sc_time& delay) {
	if (is_addr_filtered(payload)) {
		return;
	}
	end_rd_data(payload);
}

void sim_aximm_perf_mon_v1_0::rd_monitor::start_rd_addr(
		const xtlm::aximm_payload& payload) {
	m_data_model->incr_rd_total_bytes(
			payload.get_burst_length() * payload.get_burst_size());
	if (this->rd_outstanding == 0) {
		rd_busy_cycles = sc_time_stamp();
	}
	rd_outstanding += 1;
	m_data_model->incr_rd_transaction_count();
	m_data_model->incr_outstanding_count();
	m_latency[&payload] = {sc_time_stamp(),sc_core::SC_ZERO_TIME,false,false,std::chrono::high_resolution_clock::now()};
}

void sim_aximm_perf_mon_v1_0::rd_monitor::end_rd_data(
		const xtlm::aximm_payload& payload) {
	m_data_model->decr_outstanding_count();
	rd_outstanding -= 1;
	if (rd_outstanding == 0) {
		xscuint busy_cycles = (xscuint) ((sc_time_stamp().value()
				- rd_busy_cycles.value()) / m_clk_period.value());
		m_data_model->incr_rd_busy_cycles(busy_cycles);
		rd_busy_cycles = sc_core::SC_ZERO_TIME;
	}
	xscuint64 latency = (xscuint64) ((sc_time_stamp().value()
			- m_latency[&payload].addr_start_time.value())
			/ m_clk_period.value());
	m_data_model->incr_rd_total_latency(latency); //from addr to data

	latency = (xscuint64) ((sc_time_stamp().value()
			- m_latency[&payload].data_start_time.value())
			/ m_clk_period.value());
	if (latency != 0) { //from first data to last data
		xscuint64 event = 0x000000000000; //start event 45 bit to 0
		create_trace(event, m_latency[&payload].data_start_time_chrono);

		event = 0x200000000000; //start event 45 bit to 1
		auto stamp = std::chrono::high_resolution_clock::now();
		create_trace(event, stamp);
	} else {
		xscuint64 event = 0x2000000000000000; //start event 61 bit to 1
		auto stamp = m_latency[&payload].data_start_time_chrono;
		create_trace(event, stamp);

		event = 0x2000200000000000; //start event 45 bit to 1
		create_trace(event, stamp);
	}
	m_latency.erase(&payload);
}

void sim_aximm_perf_mon_v1_0::rd_monitor::calculate_clk_period() {
	sc_core::sc_time start_time = sc_time_stamp();
	wait();
	m_clk_period = (sc_time_stamp() - start_time) * 2;
	m_clk_training_slope = m_clk_period.to_seconds();
}

void sim_aximm_perf_mon_v1_0::rd_monitor::check_uncompleted_transaction() {
}

void sim_aximm_perf_mon_v1_0::rd_monitor::create_trace(xscuint64& event,
		std::chrono::time_point<std::chrono::high_resolution_clock>& timestamp) {
	auto trace = m_mem_manager.get_payload();
	trace->acquire();
	trace->create_and_set_tdata_ptr(8);
	trace->set_tlast(true);
	trace->set_n_beats(1);
	xscuint64& data = ((xscuint64*) trace->get_tdata_ptr())[0];
	data = 0;
	xscuint64 clk_cycles = m_perf_util->getClockTrainedTimeStamp(
			m_clk_training_slope, timestamp);
	if (clk_cycles > 0x1FFFFFFFFFFF) {
		data = 0x4000000000000000; //set Timestamp overflow at 62
	}
	data = data | (clk_cycles & 0x1FFFFFFFFFFF); //timestamp from 0-44
	data = data | (m_read_id << 49 & 0x1FFE000000000000); // ID from 49-60

	data = data | event;
	m_pending_trace.push(trace);
	trace_event.notify(sc_core::SC_ZERO_TIME);
}

void sim_aximm_perf_mon_v1_0::rd_monitor::start_rd_data(
		const xtlm::aximm_payload& payload) {
	if (m_latency[&payload].data_sampled) {
		return;
	}
	m_latency[&payload].data_sampled = true;
	m_latency[&payload].data_start_time = sc_time_stamp();
	m_latency[&payload].data_start_time_chrono =
			std::chrono::high_resolution_clock::now();
}

void sim_aximm_perf_mon_v1_0::rd_monitor::send_trace() {
	if (rd_trace_util.is_transfer_done() == false) {
		next_trigger(rd_trace_util.transfer_done);
		return;
	}

	if (m_release_trace) {
		m_release_trace->release();
		m_release_trace = nullptr;
	}

	rd_trace_util.transport(m_pending_trace.front());
	m_release_trace = m_pending_trace.front();
	m_pending_trace.pop();

	if (m_pending_trace.empty() == false) {
		next_trigger(rd_trace_util.transfer_done);
	}
}

bool sim_aximm_perf_mon_v1_0::rd_monitor::is_addr_filtered(
		const xtlm::aximm_payload& payload) {
	if (enable_addr_filter) {
		if (payload.get_address() < addr_min
				|| payload.get_address() > addr_max) {
			return true;
		}
	}
	return false;
}

void sim_aximm_perf_mon_v1_0::rd_monitor::start_of_simulation() {
	m_perf_util = xsc::perf_utils::getInstance();
}
