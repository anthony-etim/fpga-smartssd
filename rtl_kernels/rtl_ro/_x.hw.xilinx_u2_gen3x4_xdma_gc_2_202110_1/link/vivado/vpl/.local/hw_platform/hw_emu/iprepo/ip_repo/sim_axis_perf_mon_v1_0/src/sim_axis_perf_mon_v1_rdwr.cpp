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

#include "sim_axis_perf_mon_v1_rdwr.h"
#include <iostream>
#include <string>

sim_axis_perf_mon_v1::rdwr_monitor::rdwr_monitor(sc_core::sc_module_name p_name,
		xsc::common_cpp::properties& _properties,
		sim_axis_perf_mon_v1::data_model* _datamodel) :
		sc_core::sc_module(p_name), xtlm::xtlm_axis_monitor_base("rdwr_mon"), skt(
				"rd_skt", 32), trace_util("trace_util", xtlm::axis::TRANSACTION,
				32), m_trace_id(_properties.getUint64("TRACE_ID")), trace_skt(
				"trace_skt", 32), m_time_begin_data(0), m_time_starve(0), m_time_start_of_txn(
				sc_core::SC_ZERO_TIME), m_trans_in_progress(false), m_starve_in_progress(
				false), m_trace_enabled(
				_properties.getUint64("ENABLE_TRACE") == 1), m_release_trace(
				nullptr), m_perf_util(nullptr), m_clk_training_slope(0) {

	m_data_model = _datamodel;

	skt.bind(*this);

	m_nxt_state = AXI_S_IDLE;
	m_state = AXI_S_IDLE;

	count = 0;
	trace_util.stream_socket(trace_skt);

	SC_THREAD(calculate_clk_period);
	dont_initialize();
	sensitive << clk;

	SC_METHOD(send_trace);
	dont_initialize();
	sensitive << trace_event;
}

void sim_axis_perf_mon_v1::rdwr_monitor::register_nb_call(
		const xtlm::axis_payload& payload, const tlm::tlm_phase& phase,
		const sc_core::sc_time& delay) {

	if (phase == xtlm::BEGIN_AXIS_DATA) {
		m_latency[&payload]= {sc_core::sc_time_stamp(),std::chrono::high_resolution_clock::now()};
		if(m_time_start_of_txn == sc_core::SC_ZERO_TIME)
		{
			m_time_start_of_txn = sc_core::sc_time_stamp();
			m_time_chrono_start_of_txn = std::chrono::high_resolution_clock::now();
		}
		m_trans_in_progress = true;
		if(m_starve_in_progress) { //end starve
			m_starve_in_progress = false;
			xscuint64 t_event_data = 0x00000000000000;
			t_event_data = 0x000400000000000 | t_event_data;
			create_trace(t_event_data);
			//For Starve Cycle Calculation
			m_data_model->incr_starve_cycles((xscuint64)((sc_core::sc_time_stamp().value() - m_time_starve)
							/ m_clk_period.value()));
			m_time_starve = 0;
		}
	}

	if (phase == xtlm::AXIS_STARVE && m_trans_in_progress && (m_starve_in_progress == false)) {
		m_time_starve = sc_core::sc_time_stamp().value();
		//Starve Event
		xscuint64 t_event_data = 0x00000000000000;
		t_event_data = 0x000200000000000 | t_event_data;
		t_event_data = 0x000400000000000 | t_event_data;
		create_trace(t_event_data);
		m_starve_in_progress = true;
	}

	//When Phase is END AXIS Data , update corresponding performance parameters
	if (phase == xtlm::END_AXIS_DATA) {
		if (m_latency[&payload].start_time.value() > 0) {

			//Update number of transactions
			if (payload.get_tlast()) {
				m_trans_in_progress = false;
				m_data_model->incr_num_trans();
				xscuint64 t_busy_cycles = (sc_core::sc_time_stamp().value()
						- m_time_start_of_txn.value()) / m_clk_period.value();
				//Update busy cycles
				m_data_model->incr_busy_cycles(t_busy_cycles + 1);

				//Update Event
				if (m_time_start_of_txn == sc_core::sc_time_stamp()) {
					//Single Cycle Event
					xscuint64 t_event_data = 0x00000000000000;
					t_event_data = 0x2000000000000000 | t_event_data;
					t_event_data = 0x0001000000000000 | t_event_data;
					create_trace(t_event_data);
				} else {
					//Start of transaction
					xscuint64 t_event_data = 0x00000000000000;
					t_event_data = 0x000200000000000 | t_event_data;
					t_event_data = 0x001000000000000 | t_event_data;
					create_trace(t_event_data, m_time_chrono_start_of_txn);
					//end of transaction
					t_event_data = 0;
					t_event_data = 0x000000000000000 | t_event_data;
					t_event_data = 0x001000000000000 | t_event_data;
					create_trace(t_event_data);
				}
				m_time_start_of_txn = sc_core::SC_ZERO_TIME;
			}

			xscuint64 t_num_cycles = (sc_core::sc_time_stamp().value()
					- m_latency[&payload].start_time.value())
			/ m_clk_period.value();

			m_data_model->incr_data_bytes(payload.get_tdata_length());

			if (t_num_cycles > 0) {
				m_data_model->incr_stall_cycles(t_num_cycles);
				//Stall Event and start event
				xscuint64 t_event_data = 0x00000000000000;
				t_event_data = 0x000200000000000 | t_event_data;
				t_event_data = 0x000800000000000 | t_event_data;
				create_trace(t_event_data, m_latency[&payload].start_time_chrono);
				//Stall End Event
				t_event_data = 0;
				t_event_data = 0x000800000000000 | t_event_data;
				create_trace(t_event_data);

			}
			m_latency.erase(&payload);
		}

	}

}

void sim_axis_perf_mon_v1::rdwr_monitor::register_nb_return_call(
		const xtlm::axis_payload& payload, const tlm::tlm_phase& phase,
		const sc_core::sc_time& delay, const tlm::tlm_sync_enum& status) {

}

void sim_axis_perf_mon_v1::rdwr_monitor::register_b_call(
		const xtlm::axis_payload& payload, const sc_core::sc_time& delay) {
}

void sim_axis_perf_mon_v1::rdwr_monitor::register_b_return_call(
		const xtlm::axis_payload& payload, const sc_core::sc_time& delay) {

}

void sim_axis_perf_mon_v1::rdwr_monitor::calculate_clk_period() {
	sc_core::sc_time start_time = sc_time_stamp();
	wait();
	m_clk_period = (sc_time_stamp() - start_time) * 2;
	m_clk_training_slope = m_clk_period.to_seconds();
}

void sim_axis_perf_mon_v1::rdwr_monitor::check_uncompleted_transaction() {
}

void sim_axis_perf_mon_v1::rdwr_monitor::create_trace(xscuint64& event,
		std::chrono::time_point<std::chrono::high_resolution_clock>& timestamp) {
	if (m_trace_enabled == false) {
		return;
	}
	auto trace = m_mem_manager.get_payload();
	trace->acquire();
	trace->set_n_beats(1);
	trace->set_tlast(true);
	trace->create_and_set_tdata_ptr(8);
	xscuint64& data = ((xscuint64*) trace->get_tdata_ptr())[0];
	data = 0;
	xscuint64 clk_cycles = m_perf_util->getClockTrainedTimeStamp(
			m_clk_training_slope, timestamp);
	if (clk_cycles > 0x1FFFFFFFFFFF) {
		data = 0x4000000000000000; //set Timestamp overflow at 62
	}
	data = data | (clk_cycles & 0x1FFFFFFFFFFF); //timestamp from 0-44
	data = data | (m_trace_id << 49 & 0x1FFE000000000000); // ID from 49-60
	data = data | event;

	m_pending_trace.push(trace);
	trace_event.notify(sc_core::SC_ZERO_TIME);
	//TODO::Fill the rest of the events
}

void sim_axis_perf_mon_v1::rdwr_monitor::send_trace() {
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

void sim_axis_perf_mon_v1::rdwr_monitor::create_trace(xscuint64& event) {
	auto clk = std::chrono::high_resolution_clock::now();
	create_trace(event, clk);
}

void sim_axis_perf_mon_v1::rdwr_monitor::start_of_simulation() {
	m_perf_util = xsc::perf_utils::getInstance();
	xsc::perf_extension::perf_modules_to_hub_extension* ext =
			new xsc::perf_extension::perf_modules_to_hub_extension();
	ext->set_data(m_data_model);
	ext->set_data_type(xsc::perf_extension::data_type::AXIS_PERF);
	xtlm::axis_payload* payload = m_mem_manager.get_payload();
	payload->acquire();
	payload->set_auto_extension(ext);
	payload->set_tlast(true);
	m_pending_trace.push(payload);
	trace_event.notify(sc_core::SC_ZERO_TIME);
}
