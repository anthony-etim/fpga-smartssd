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
#include "emulation_profiler_core.h"
#include <string>
#include <iostream>
#include "perf_modules_to_hub_extension.h"
#include <iostream>
#include <iomanip>

class emulation_profiler_core::target_rd_socket_util: public xtlm::xtlm_aximm_target_rd_socket_util {
public:
	target_rd_socket_util(sc_core::sc_module_name p_name,
			xtlm::aximm::granularity g_hint, int width_p,
			emulation_profiler_core* _parent) :
			xtlm::xtlm_aximm_target_rd_socket_util(p_name, g_hint, width_p) {
		this->parent = _parent;
	}
	unsigned int transport_dbg_cb(xtlm::aximm_payload& trans) {
		return parent->transport_dbg(trans);
	}
private:
	emulation_profiler_core* parent;
};

class emulation_profiler_core::target_wr_socket_util: public xtlm::xtlm_aximm_target_wr_socket_util {
public:
	target_wr_socket_util(sc_core::sc_module_name p_name,
			xtlm::aximm::granularity g_hint, int width_p,
			emulation_profiler_core* _parent) :
			xtlm::xtlm_aximm_target_wr_socket_util(p_name, g_hint, width_p) {
		this->parent = _parent;
	}
	unsigned int transport_dbg_cb(xtlm::aximm_payload& trans) {
		return parent->transport_dbg(trans);
	}
private:
	emulation_profiler_core* parent;
};

emulation_profiler_core::emulation_profiler_core(sc_core::sc_module_name p_name,
		xsc::common_cpp::properties& _properties) :
		xsc::emulation_profiler_core_base(p_name), axilite_rd_socket(
				new xtlm::xtlm_aximm_target_socket("axilite_rd", 32)), axilite_wr_socket(
				new xtlm::xtlm_aximm_target_socket("axilite_wr", 32)), axilite_rd_socket_util(
				new xtlm::xtlm_aximm_target_rd_socket_util("axilite_rd_util",
						xtlm::aximm::TRANSACTION, 32)), axilite_wr_socket_util(
				new xtlm::xtlm_aximm_target_wr_socket_util("axilite_wr_util",
						xtlm::aximm::TRANSACTION, 32)), s_axihub_rd_socket(
				new xtlm::xtlm_aximm_target_socket("s_axihub_rd", 32)), s_axihub_wr_socket(
				new xtlm::xtlm_aximm_target_socket("s_axihub_wr", 32)), s_axihub_rd_socket_util(
				new xtlm::xtlm_aximm_target_rd_socket_util("s_axihub_rd_util",
						xtlm::aximm::TRANSACTION, 32)), s_axihub_wr_socket_util(
				new xtlm::xtlm_aximm_target_wr_socket_util("s_axihub_wr_util",
						xtlm::aximm::TRANSACTION, 32)), trace_socket0(nullptr), trace_socket1(
				nullptr), trace_socket2(nullptr), trace_socket3(nullptr), trace_socket4(
				nullptr), trace_socket5(nullptr), trace_socket6(nullptr), trace_socket7(
				nullptr), trace_socket8(nullptr), trace_socket9(nullptr), trace_socket10(
				nullptr), trace_socket11(nullptr), trace_socket12(nullptr), trace_socket13(
				nullptr), trace_socket14(nullptr), trace_socket15(nullptr), trace_socket16(
				nullptr), trace_socket17(nullptr), trace_socket18(nullptr), trace_socket19(
				nullptr), trace_socket20(nullptr), trace_socket21(nullptr), trace_socket22(
				nullptr), trace_socket23(nullptr), trace_socket24(nullptr), trace_socket25(
				nullptr), trace_socket26(nullptr), trace_socket27(nullptr), trace_socket28(
				nullptr), trace_socket29(nullptr), trace_socket30(nullptr), trace_socket31(
				nullptr), trace_socket32(nullptr), trace_socket33(nullptr), trace_socket34(
				nullptr), trace_socket35(nullptr), trace_socket36(nullptr), trace_socket37(
				nullptr), trace_socket38(nullptr), trace_socket39(nullptr), trace_socket40(
				nullptr), trace_socket41(nullptr), trace_socket42(nullptr), trace_socket43(
				nullptr), trace_socket44(nullptr), trace_socket45(nullptr), trace_socket46(
				nullptr), trace_socket47(nullptr), trace_socket48(nullptr), trace_socket49(
				nullptr), trace_socket50(nullptr), trace_socket51(nullptr), trace_socket52(
				nullptr), trace_socket53(nullptr), trace_socket54(nullptr), trace_socket55(
				nullptr), trace_socket56(nullptr), trace_socket57(nullptr), trace_socket58(
				nullptr), trace_socket59(nullptr), trace_socket60(nullptr), trace_socket61(
				nullptr), trace_socket62(nullptr), trace_socket63(nullptr), s_aximm_wr_socket(
				new xtlm::xtlm_aximm_target_socket("s_aximm_wr", 32)), s_aximm_rd_socket(
				new xtlm::xtlm_aximm_target_socket("s_aximm_rd", 32)), s_aximm_wr_socket_util(
				new emulation_profiler_core::target_wr_socket_util(
						"s_aximm_wr_util", xtlm::aximm::TRANSACTION, 32, this)), s_aximm_rd_socket_util(
				new emulation_profiler_core::target_rd_socket_util(
						"s_aximm_wr_util", xtlm::aximm::TRANSACTION, 32, this)), m_aximm_wr_socket(
				nullptr), m_aximm_rd_socket(nullptr), trace_socket0_util(
				nullptr), trace_socket1_util(nullptr), trace_socket2_util(
				nullptr), trace_socket3_util(nullptr), trace_socket4_util(
				nullptr), trace_socket5_util(nullptr), trace_socket6_util(
				nullptr), trace_socket7_util(nullptr), trace_socket8_util(
				nullptr), trace_socket9_util(nullptr), trace_socket10_util(
				nullptr), trace_socket11_util(nullptr), trace_socket12_util(
				nullptr), trace_socket13_util(nullptr), trace_socket14_util(
				nullptr), trace_socket15_util(nullptr), trace_socket16_util(
				nullptr), trace_socket17_util(nullptr), trace_socket18_util(
				nullptr), trace_socket19_util(nullptr), trace_socket20_util(
				nullptr), trace_socket21_util(nullptr), trace_socket22_util(
				nullptr), trace_socket23_util(nullptr), trace_socket24_util(
				nullptr), trace_socket25_util(nullptr), trace_socket26_util(
				nullptr), trace_socket27_util(nullptr), trace_socket28_util(
				nullptr), trace_socket29_util(nullptr), trace_socket30_util(
				nullptr), trace_socket31_util(nullptr), trace_socket32_util(
				nullptr), trace_socket33_util(nullptr), trace_socket34_util(
				nullptr), trace_socket35_util(nullptr), trace_socket36_util(
				nullptr), trace_socket37_util(nullptr), trace_socket38_util(
				nullptr), trace_socket39_util(nullptr), trace_socket40_util(
				nullptr), trace_socket41_util(nullptr), trace_socket42_util(
				nullptr), trace_socket43_util(nullptr), trace_socket44_util(
				nullptr), trace_socket45_util(nullptr), trace_socket46_util(
				nullptr), trace_socket47_util(nullptr), trace_socket48_util(
				nullptr), trace_socket49_util(nullptr), trace_socket50_util(
				nullptr), trace_socket51_util(nullptr), trace_socket52_util(
				nullptr), trace_socket53_util(nullptr), trace_socket54_util(
				nullptr), trace_socket55_util(nullptr), trace_socket56_util(
				nullptr), trace_socket57_util(nullptr), trace_socket58_util(
				nullptr), trace_socket59_util(nullptr), trace_socket60_util(
				nullptr), trace_socket61_util(nullptr), trace_socket62_util(
				nullptr), trace_socket63_util(nullptr), m_properties(
				_properties), pending_trace_data(0), pending_trace_datasize(0), logger(
				"emulation_profiler"), m_start_time(
				std::chrono::high_resolution_clock::now()), m_perf_util(nullptr) {

	if (m_properties.getString("TRACE_OFFLOADING") == "DDR") {
		s_axidma_rd_socket = new xtlm::xtlm_aximm_target_socket("s_axidma_rd",
				32);
		s_axidma_wr_socket = new xtlm::xtlm_aximm_target_socket("s_axidma_wr",
				32);
		s_axidma_rd_socket_util = new xtlm::xtlm_aximm_target_rd_socket_util(
				"s_axidma_rd_util", xtlm::aximm::TRANSACTION, 32);
		s_axidma_wr_socket_util = new xtlm::xtlm_aximm_target_wr_socket_util(
				"s_axidma_wr_util", xtlm::aximm::TRANSACTION, 32);

		s_axidma_rd_socket->bind(s_axidma_rd_socket_util->rd_socket);
		s_axidma_wr_socket->bind(s_axidma_wr_socket_util->wr_socket);

	} else {
		s_axidma_rd_socket = nullptr;
		s_axidma_wr_socket = nullptr;
		s_axidma_rd_socket_util = nullptr;
		s_axidma_wr_socket_util = nullptr;
	}
	axilite_rd_socket->bind(axilite_rd_socket_util->rd_socket);
	axilite_wr_socket->bind(axilite_wr_socket_util->wr_socket);

	s_axihub_rd_socket->bind(s_axihub_rd_socket_util->rd_socket);
	s_axihub_wr_socket->bind(s_axihub_wr_socket_util->wr_socket);

	s_aximm_rd_socket->bind(s_aximm_rd_socket_util->rd_socket);
	s_aximm_wr_socket->bind(s_aximm_wr_socket_util->wr_socket);

	trace_skts.reserve(64);
	trace_skt_utils.reserve(64);
	for (int i = 0; i < m_properties.getUint32("NUM_TRACE_PORTS"); i++) {
		std::stringstream ss;
		ss << "trace_socket" << i;
		trace_skts[i] = new xtlm::xtlm_axis_target_socket(ss.str().c_str(), 64);

		ss.str("");
		ss << "trace_socket_util" << i;
		trace_skt_utils[i] = new xtlm::xtlm_axis_target_socket_util(
				ss.str().c_str(), xtlm::axis::TRANSACTION, 64);
		trace_skts[i]->bind(trace_skt_utils[i]->stream_socket);

		ss.str("");

		ss << "handle_trace" << i;

		sc_core::sc_spawn_options s_options;
		s_options.dont_initialize();
		s_options.set_sensitivity(&(trace_skt_utils[i]->transaction_available));
		s_options.spawn_method();
		sc_core::sc_spawn(sc_bind(&emulation_profiler_core::handle_trace,this,i),ss.str().c_str(),&s_options);

	}

	trace_socket0 = trace_skts[0];
	trace_socket1 = trace_skts[1];
	trace_socket2 = trace_skts[2];
	trace_socket3 = trace_skts[3];
	trace_socket4 = trace_skts[4];
	trace_socket5 = trace_skts[5];
	trace_socket6 = trace_skts[6];
	trace_socket7 = trace_skts[7];
	trace_socket8 = trace_skts[8];
	trace_socket9 = trace_skts[9];
	trace_socket10 = trace_skts[10];
	trace_socket11 = trace_skts[11];
	trace_socket12 = trace_skts[12];
	trace_socket13 = trace_skts[13];
	trace_socket14 = trace_skts[14];
	trace_socket15 = trace_skts[15];
	trace_socket16 = trace_skts[16];
	trace_socket17 = trace_skts[17];
	trace_socket18 = trace_skts[18];
	trace_socket19 = trace_skts[19];
	trace_socket20 = trace_skts[20];
	trace_socket21 = trace_skts[21];
	trace_socket22 = trace_skts[22];
	trace_socket23 = trace_skts[23];
	trace_socket24 = trace_skts[24];
	trace_socket25 = trace_skts[25];
	trace_socket26 = trace_skts[26];
	trace_socket27 = trace_skts[27];
	trace_socket28 = trace_skts[28];
	trace_socket29 = trace_skts[29];
	trace_socket30 = trace_skts[30];
	trace_socket31 = trace_skts[31];
	trace_socket32 = trace_skts[32];
	trace_socket33 = trace_skts[33];
	trace_socket34 = trace_skts[34];
	trace_socket35 = trace_skts[35];
	trace_socket36 = trace_skts[36];
	trace_socket37 = trace_skts[37];
	trace_socket38 = trace_skts[38];
	trace_socket39 = trace_skts[39];
	trace_socket40 = trace_skts[40];
	trace_socket41 = trace_skts[41];
	trace_socket42 = trace_skts[42];
	trace_socket43 = trace_skts[43];
	trace_socket44 = trace_skts[44];
	trace_socket45 = trace_skts[45];
	trace_socket46 = trace_skts[46];
	trace_socket47 = trace_skts[47];
	trace_socket48 = trace_skts[48];
	trace_socket49 = trace_skts[49];
	trace_socket50 = trace_skts[50];
	trace_socket51 = trace_skts[51];
	trace_socket52 = trace_skts[52];
	trace_socket53 = trace_skts[53];
	trace_socket54 = trace_skts[54];
	trace_socket55 = trace_skts[55];
	trace_socket56 = trace_skts[56];
	trace_socket57 = trace_skts[57];
	trace_socket58 = trace_skts[58];
	trace_socket59 = trace_skts[59];
	trace_socket60 = trace_skts[60];
	trace_socket61 = trace_skts[61];
	trace_socket62 = trace_skts[62];
	trace_socket63 = trace_skts[63];

	SC_METHOD(axilite_wr_resp);
	dont_initialize();
	sensitive << send_axilite_wr_rsp;

	SC_METHOD(axilite_rd_resp);
	dont_initialize();
	sensitive << send_axilite_rd_rsp;

	SC_METHOD(s_axihub_wr_resp);
	dont_initialize();
	sensitive << send_s_axihub_wr_rsp;

	SC_METHOD(s_axihub_rd_resp);
	dont_initialize();
	sensitive << send_s_axihub_rd_rsp;

	if (m_properties.getString("TRACE_OFFLOADING") == "DDR") {
		SC_METHOD(s_axidma_wr_resp);
		dont_initialize();
		sensitive << send_s_axidma_wr_rsp;

		SC_METHOD(s_axidma_rd_resp);
		dont_initialize();
		sensitive << send_s_axidma_rd_rsp;
	}
	SC_METHOD(saximm_rd_resp);
	dont_initialize();
	sensitive << send_saximm_rd_rsp;

	SC_METHOD(saximm_wr_resp);
	dont_initialize();
	sensitive << send_saximm_wr_rsp;

	SC_METHOD(axilite_read);
	dont_initialize();
	sensitive << axilite_rd_socket_util->transaction_available;

	SC_METHOD(axilite_write);
	dont_initialize();
	sensitive << axilite_wr_socket_util->transaction_available;

	SC_METHOD(s_axihub_read);
	dont_initialize();
	sensitive << s_axihub_rd_socket_util->transaction_available;

	SC_METHOD(s_axihub_write);
	dont_initialize();
	sensitive << s_axihub_wr_socket_util->transaction_available;

	if (m_properties.getString("TRACE_OFFLOADING") == "DDR") {
		SC_METHOD(s_axidma_read);
		dont_initialize();
		sensitive << s_axidma_rd_socket_util->transaction_available;

		SC_METHOD(s_axidma_write);
		dont_initialize();
		sensitive << s_axidma_wr_socket_util->transaction_available;
	}
	SC_METHOD(saximm_read_cb);
	dont_initialize();
	sensitive << s_aximm_rd_socket_util->transaction_available;

	SC_METHOD(saximm_write_cb);
	dont_initialize();
	sensitive << s_aximm_wr_socket_util->transaction_available;

	SC_THREAD(calculate_clk_period);
	dont_initialize();
	sensitive << axilite_clk;

	register_ids();
}

void emulation_profiler_core::handle_trace(xscuint id) {
	xtlm::axis_payload* trans = trace_skt_utils[id]->sample_transaction();
	if (trans->has_mm()) {
		trans->acquire();
	}

	if (trans->get_tdata_length() == 8) { //ignore other than 64bits trans for now. Equiped to sample one trace at a time
		m_container.set_trace(((xscuint64*) trans->get_tdata_ptr())[0]);
	} else if (trans->get_tdata_length() == 0) { //for extensions data is zero
		xsc::perf_extension::perf_modules_to_hub_extension* ext = nullptr;
		trans->get_extension(ext);
		if (ext != nullptr) {
			switch (ext->get_data_type()) {
			case xsc::perf_extension::data_type::AXIMM_PERF:
				m_aximm_data.push_back(
						static_cast<sim_aximm_perf_mon_v1_0::data_model*>(ext->get_data()));
				break;
			case xsc::perf_extension::data_type::AXIS_PERF:
				m_axis_data.push_back(
						static_cast<sim_axis_perf_mon_v1::data_model*>(ext->get_data()));
				break;
			case xsc::perf_extension::data_type::ACCEL:
				m_accel_data.push_back(
						static_cast<sim_accel_mon_v1::data_model*>(ext->get_data()));
				break;
			default:
				//Don't recoganise anyother extension as of now
				break;
			}
		}
	}

	if (trans->has_mm()) {
		trans->release();
	}
}

void emulation_profiler_core::axilite_read() {
	auto trans = axilite_rd_socket_util->get_transaction();
	if (trans->has_mm()) {
		trans->acquire();
	}
	auto addr = trans->get_address() & 0xFF;
	auto data = trans->get_data_ptr();
	switch (addr) {
	case 0x24:
		//FIFO data available Reg
	{
		xscuint count = m_container.get_trace_count() * 8;
		if(count > 0x7FFFFF) {
			//FIFO supports only 23 bit
			count = 0x7FFFFF;
		}
		((xscuint*) data)[0] = count;
	}
		break;
	case 0x64:
		//info messages size
	{
		get_transmit_msg();
		std::string log("");
		logger.get_saved_msgs(log, xsc::common_cpp::SEVERITY::INFO);
		m_msgs[xsc::common_cpp::SEVERITY::INFO] = std::make_pair(log, 0);
		((xscuint*) data)[0] = log.size();
	}
		break;
	case 0x68:
		//warning messages size
	{
		std::string log("");
		logger.get_saved_msgs(log, xsc::common_cpp::SEVERITY::WARNING);
		m_msgs[xsc::common_cpp::SEVERITY::WARNING] = std::make_pair(log, 0);
		((xscuint*) data)[0] = log.size();
	}
		break;
	case 0x6C:
		//error messages size
	{
		std::string log("");
		logger.get_saved_msgs(log, xsc::common_cpp::SEVERITY::ERROR);
		m_msgs[xsc::common_cpp::SEVERITY::ERROR] = std::make_pair(log, 0);
		((xscuint*) data)[0] = log.size();
	}
		break;
	default:
		((xscuint*) data)[0] = 0;
		break;
	}
	trans->set_axi_response_status(
			xtlm::xtlm_aximm_response_status::XTLM_AXI_OKAY);
	axilite_rd_rsp.push(trans);
	send_axilite_rd_rsp.notify(sc_core::SC_ZERO_TIME);
}

void emulation_profiler_core::axilite_write() {
	auto trans = axilite_wr_socket_util->get_transaction();
	auto addr = trans->get_address() & 0xFF;
	if (trans->has_mm()) {
		trans->acquire();
	}
	auto data = trans->get_data_ptr();

	switch (addr) {
	case 0x08:
		//Control Reg
	{
		int m_control = ((xscuint*) data)[0];
	}
		break;

	default:
		break;
	}
	trans->set_axi_response_status(
			xtlm::xtlm_aximm_response_status::XTLM_AXI_OKAY);
	axilite_wr_rsp.push(trans);
	send_axilite_wr_rsp.notify(sc_core::SC_ZERO_TIME);
}

void emulation_profiler_core::axilite_rd_resp() {
	if (axilite_rd_socket_util->is_master_ready() == false) {
		next_trigger(axilite_rd_socket_util->data_sampled);
		return;
	}
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	xtlm::aximm_payload* trans = axilite_rd_rsp.front();
	axilite_rd_socket_util->send_data(*trans, delay);
	if (trans->has_mm()) {
		trans->release();
	}
	axilite_rd_rsp.pop();

	if (axilite_rd_rsp.empty() == false) {
		next_trigger(axilite_rd_socket_util->data_sampled);
	}
}

void emulation_profiler_core::axilite_wr_resp() {
	if (axilite_wr_socket_util->is_master_ready() == false) {
		next_trigger(axilite_wr_socket_util->resp_sampled);
		return;
	}
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	xtlm::aximm_payload* trans = axilite_wr_rsp.front();
	axilite_wr_socket_util->send_resp(*trans, delay);
	if (trans->has_mm()) {
		trans->release();
	}
	axilite_wr_rsp.pop();

	if (axilite_wr_rsp.empty() == false) {
		next_trigger(axilite_wr_socket_util->resp_sampled);
	}
}

void emulation_profiler_core::s_axihub_read() {
	auto trans = s_axihub_rd_socket_util->get_transaction();
	if (trans->has_mm()) {
		trans->acquire();
	}
	auto addr = trans->get_address() & 0xFF;
	auto data = trans->get_data_ptr();
	switch (addr) {
	case 0x00:
		//do nothing
		((xscuint*) data)[0] = 0;
		break;
	default:
		((xscuint*) data)[0] = 0;
		break;
	}
	trans->set_axi_response_status(
			xtlm::xtlm_aximm_response_status::XTLM_AXI_OKAY);
	s_axihub_rd_rsp.push(trans);
	send_s_axihub_rd_rsp.notify(sc_core::SC_ZERO_TIME);
}

void emulation_profiler_core::s_axihub_write() {
	auto trans = s_axihub_wr_socket_util->get_transaction();
	auto addr = trans->get_address() & 0xFF;
	if (trans->has_mm()) {
		trans->acquire();
	}
	auto clk_training = trans->get_data_ptr();

	switch (addr) {
	case 0x00:
		//Create trace with time stamp
	{
		xscuint64 data = 0;
		auto slope = m_clk_period.to_seconds();
		xscuint64 clk_cycles = m_perf_util->getClockTrainedTimeStamp(slope);
		//(xscuint64) (sc_time_stamp().value() / m_clk_period.value());
		if (clk_cycles > 0x1FFFFFFFFFFF) {
			data = 0x4000000000000000; //set Timestamp overflow at 62
		}
		data = data | (clk_cycles & 0x1FFFFFFFFFFF); //clk_cycles from 0-44
		xscuint64 training_17 = ((xscuint*) clk_training)[0] & 0x1FFFF;
		data = data | (training_17 << 45 & 0x3FFFE00000000000); // ID from 45-61
    data = data | 0x8000000000000000; // Clock Training Bit 63
		m_container.set_trace(data);
	}
		break;
	case 0xC:
		//reset timestamp generator
		//need to see if required for emulation
		break;
	default:
		break;
	}
	trans->set_axi_response_status(
			xtlm::xtlm_aximm_response_status::XTLM_AXI_OKAY);
	s_axihub_wr_rsp.push(trans);
	send_s_axihub_wr_rsp.notify(sc_core::SC_ZERO_TIME);
}

void emulation_profiler_core::s_axihub_rd_resp() {
	if (s_axihub_rd_socket_util->is_master_ready() == false) {
		next_trigger(s_axihub_rd_socket_util->data_sampled);
		return;
	}
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	xtlm::aximm_payload* trans = s_axihub_rd_rsp.front();
	s_axihub_rd_socket_util->send_data(*trans, delay);
	if (trans->has_mm()) {
		trans->release();
	}
	s_axihub_rd_rsp.pop();

	if (s_axihub_rd_rsp.empty() == false) {
		next_trigger(s_axihub_rd_socket_util->data_sampled);
	}
}

void emulation_profiler_core::s_axihub_wr_resp() {
	if (s_axihub_wr_socket_util->is_master_ready() == false) {
		next_trigger(s_axihub_wr_socket_util->resp_sampled);
		return;
	}
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	xtlm::aximm_payload* trans = s_axihub_wr_rsp.front();
	s_axihub_wr_socket_util->send_resp(*trans, delay);
	if (trans->has_mm()) {
		trans->release();
	}
	s_axihub_wr_rsp.pop();

	if (s_axihub_wr_rsp.empty() == false) {
		next_trigger(s_axihub_wr_socket_util->resp_sampled);
	}
}

void emulation_profiler_core::s_axidma_read() {
	auto trans = s_axidma_rd_socket_util->get_transaction();
	if (trans->has_mm()) {
		trans->acquire();
	}
	auto addr = trans->get_address() & 0xFF;
	auto data = trans->get_data_ptr();
	switch (addr) {
	case 0x24:
		//FIFO data available Reg
		((xscuint*) data)[0] = m_container.get_trace_count();
		break;
	default:
		((xscuint*) data)[0] = 0;
		break;
	}
	trans->set_axi_response_status(
			xtlm::xtlm_aximm_response_status::XTLM_AXI_OKAY);
	s_axidma_rd_rsp.push(trans);
	send_s_axidma_rd_rsp.notify(sc_core::SC_ZERO_TIME);
}

void emulation_profiler_core::s_axidma_write() {
	auto trans = s_axidma_wr_socket_util->get_transaction();
	auto addr = trans->get_address() & 0xFF;
	if (trans->has_mm()) {
		trans->acquire();
	}
	auto data = trans->get_data_ptr();

	switch (addr) {
	case 0x08:
		//Control Reg
	{
		int m_control = ((xscuint*) data)[0];
	}
		break;

	default:
		break;
	}
	trans->set_axi_response_status(
			xtlm::xtlm_aximm_response_status::XTLM_AXI_OKAY);
	s_axidma_wr_rsp.push(trans);
	send_s_axidma_wr_rsp.notify(sc_core::SC_ZERO_TIME);
}

void emulation_profiler_core::s_axidma_rd_resp() {
	if (s_axidma_rd_socket_util->is_master_ready() == false) {
		next_trigger(s_axidma_rd_socket_util->data_sampled);
		return;
	}
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	xtlm::aximm_payload* trans = s_axidma_rd_rsp.front();
	s_axidma_rd_socket_util->send_data(*trans, delay);
	if (trans->has_mm()) {
		trans->release();
	}
	s_axidma_rd_rsp.pop();

	if (s_axidma_rd_rsp.empty() == false) {
		next_trigger(s_axidma_rd_socket_util->data_sampled);
	}
}

void emulation_profiler_core::s_axidma_wr_resp() {
	if (s_axidma_wr_socket_util->is_master_ready() == false) {
		next_trigger(s_axidma_wr_socket_util->resp_sampled);
		return;
	}
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	xtlm::aximm_payload* trans = s_axidma_wr_rsp.front();
	s_axidma_wr_socket_util->send_resp(*trans, delay);
	if (trans->has_mm()) {
		trans->release();
	}
	s_axidma_wr_rsp.pop();

	if (s_axidma_wr_rsp.empty() == false) {
		next_trigger(s_axidma_wr_socket_util->resp_sampled);
	}
}

void emulation_profiler_core::saximm_read(bool _is_trnsprt_dbg,
		xtlm::aximm_payload*trans) {
	if (_is_trnsprt_dbg == false) {
		trans = s_aximm_rd_socket_util->get_transaction();
		if (trans->has_mm()) {
			trans->acquire();
		}
	}
	auto addr = trans->get_address() & 0x3FFFFF;
	auto data = trans->get_data_ptr();
	auto data_length = trans->get_data_length();
	unsigned char* data_to_fill;
	if (addr == 0x00 || addr == 0x1000) {
		if (pending_trace_datasize == 0) {
			data_to_fill = data;
		} else {
			//supports only 32 or 64 bit arbitration
			assert(pending_trace_datasize == 4);
			((xscuint*) data)[0] = pending_trace_data;
			data_to_fill = data + 4;
			data_length -= 4;
			pending_trace_data = 0;
			pending_trace_datasize = 0;
		}
		for (int i = 0; i < data_length / 8; i++) {
			((xscuint64*) data_to_fill)[i] = m_container.get_trace();
		}

		if (data_length % 8 != 0) {
			//supports only 32 or 64 bit arbitration
			assert(data_length % 8 == 4);
			pending_trace_data = m_container.get_trace();
			((xscuint*) data_to_fill)[data_length / 8] = pending_trace_data;
			pending_trace_datasize = 4;
			pending_trace_data = (pending_trace_data >> 32) & 0XFFFFFFFF;
		}
	} else if (addr >= 0x00100000 && addr < 0x00200000) {
		//after 1MB boundary INFO Messages
		{
			auto msg = m_msgs[xsc::common_cpp::SEVERITY::INFO].first;
			auto read_offset = addr - 0x00100000;
			auto read_length =
					(read_offset + data_length > msg.size()) ?
							msg.size() - read_offset : data_length;
			msg.copy((char*) data, read_length, read_offset);
		}
	} else if (addr >= 0x00200000 && addr < 0x00300000) {
		//Warning messages
		{
			auto msg = m_msgs[xsc::common_cpp::SEVERITY::WARNING].first;
			auto read_size = m_msgs[xsc::common_cpp::SEVERITY::WARNING].second;
			auto to_read =
					(msg.size() - read_size >= data_length) ?
							data_length : msg.size() - read_size;
			msg.copy((char*) data, to_read, read_size);
			m_msgs[xsc::common_cpp::SEVERITY::WARNING].second = to_read;
		}
	} else if (addr >= 0x00300000 && addr <= 0x00400000) {
		//error messages
		{
			auto msg = m_msgs[xsc::common_cpp::SEVERITY::ERROR].first;
			auto read_size = m_msgs[xsc::common_cpp::SEVERITY::ERROR].second;
			auto to_read =
					(msg.size() - read_size >= data_length) ?
							data_length : msg.size() - read_size;
			msg.copy((char*) data, to_read, read_size);
			m_msgs[xsc::common_cpp::SEVERITY::ERROR].second = to_read;
		}
	}
	trans->set_axi_response_status(
			xtlm::xtlm_aximm_response_status::XTLM_AXI_OKAY);
	if (_is_trnsprt_dbg) {
		return;
	}
	saximm_rd_rsp.push(trans);
	send_saximm_rd_rsp.notify(sc_core::SC_ZERO_TIME);
}

void emulation_profiler_core::saximm_write(bool _is_trnsprt_dbg,
		xtlm::aximm_payload*trans) {
	if (_is_trnsprt_dbg == false) {
		trans = s_aximm_wr_socket_util->get_transaction();
		if (trans->has_mm()) {
			trans->acquire();
		}
	}
	trans->set_axi_response_status(
			xtlm::xtlm_aximm_response_status::XTLM_AXI_OKAY);
	if (_is_trnsprt_dbg) {
		return;
	}
	saximm_wr_rsp.push(trans);
	send_saximm_wr_rsp.notify(sc_core::SC_ZERO_TIME);
}

void emulation_profiler_core::saximm_rd_resp() {
	if (s_aximm_rd_socket_util->is_master_ready() == false) {
		next_trigger(s_aximm_rd_socket_util->data_sampled);
		return;
	}
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	xtlm::aximm_payload* trans = saximm_rd_rsp.front();
	s_aximm_rd_socket_util->send_data(*trans, delay);
	if (trans->has_mm()) {
		trans->release();
	}
	saximm_rd_rsp.pop();

	if (saximm_rd_rsp.empty() == false) {
		next_trigger(s_aximm_rd_socket_util->data_sampled);
	}
}

void emulation_profiler_core::saximm_wr_resp() {
	if (s_aximm_wr_socket_util->is_master_ready() == false) {
		next_trigger(s_aximm_wr_socket_util->resp_sampled);
		return;
	}
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	xtlm::aximm_payload* trans = saximm_wr_rsp.front();
	s_aximm_wr_socket_util->send_resp(*trans, delay);
	if (trans->has_mm()) {
		trans->release();
	}
	saximm_wr_rsp.pop();

	if (saximm_wr_rsp.empty() == false) {
		next_trigger(s_aximm_wr_socket_util->resp_sampled);
	}
}

void emulation_profiler_core::before_end_of_elaboration() {
	if (m_properties.getString("TRACE_OFFLOADING") != "DDR") {
		m_aximm_clk.bind(m_aximm_clk_signal);
		m_aximm_aresetn.bind(m_aximm_aresten_signal);
	}
}

void emulation_profiler_core::calculate_clk_period() {
	sc_core::sc_time start_time = sc_time_stamp();
	wait();
	m_clk_period = (sc_time_stamp() - start_time) * 2;
}

void emulation_profiler_core::get_transmit_msg() {
	std::stringstream msg;
	std::stringstream init_msg;
	std::stringstream time_msg;
	auto l_time_end = std::chrono::high_resolution_clock::now();
	auto time_elapsed =
			std::chrono::duration<double>(l_time_end - m_start_time).count();
	time_msg << ((xscuint64) time_elapsed / 60) << " minute(s) "
			<< ((xscuint64) time_elapsed % 60) << " seconds";

	std::ios::fmtflags f(msg.flags());
	std::ios::fmtflags g(init_msg.flags());
	msg.flags(f);
	init_msg.flags(g);
	init_msg << "[Time elapsed: " << std::setfill('0') << std::setw(2)
			<< time_msg.str() << std::setfill(' ');
	init_msg << ", Emulation time: " << (sc_time_stamp().to_seconds()) * 1000
			<< " ms]";

	msg << init_msg.str();
	if (m_aximm_data.size() > 0) {
		msg << "\nData transfer between kernel(s) and global memory(s)\n";
	}
	for (auto it : m_aximm_data) {
		std::string name = it->get_name();
		name.erase(std::remove(name.begin(), name.end(), '{'), name.end());
		name.erase(std::remove(name.begin(), name.end(), '}'), name.end());
		msg << name;
		msg << std::right << std::setw(15) << "RD = ";
		std::stringstream rd_count;
		rd_count << std::fixed << std::setprecision(3)
				<< it->get_rd_total_bytes() / 1024.0 << " KB";
		std::stringstream wr_count;
		wr_count << std::fixed << std::setprecision(3)
				<< it->get_wr_total_bytes() / 1024.0 << " KB";
		msg << std::left << std::setw(16) << rd_count.str();
		msg << std::right << std::setw(12) << "WR = ";
		msg << std::left << std::setw(16) << wr_count.str();
		msg << "\n";
	}

	//For Stream Interfaces
	if (m_axis_data.size() > 0) {
		msg << "\nData transfer on stream interfaces\n";
	}
	for (auto it : m_axis_data) {
		std::string name = it->get_name();
		name.replace(name.find("-"), 1, "-->");
		msg << name;
		msg << std::right << std::setw(15) << "";
		std::stringstream count;
		count << std::fixed << std::setprecision(3)
				<< it->get_data_bytes() / 1024.0 << " KB";
		msg << std::left << std::setw(16) << count.str();
		msg << "\n";
	}
	XSC_REPORT_INFO(logger, "Vitis-EM 22", msg.str().c_str());
}

unsigned int emulation_profiler_core::transport_dbg(
		xtlm::aximm_payload& trans) {
	if (trans.get_command() == xtlm::xtlm_command::XTLM_READ_COMMAND) {
		saximm_read(true, &trans);
		return trans.get_data_length();
	} else if (trans.get_command() == xtlm::xtlm_command::XTLM_WRITE_COMMAND) {
		saximm_write(true, &trans);
		return trans.get_data_length();
	}
	return 0;
}

void emulation_profiler_core::saximm_read_cb() {
	saximm_read(false, nullptr);
}

void emulation_profiler_core::saximm_write_cb() {
	saximm_write(false, nullptr);
}

void emulation_profiler_core::start_of_simulation() {
	m_perf_util = xsc::perf_utils::getInstance();
}

void emulation_profiler_core::get_profile_live_messages(std::string &str) {
	get_transmit_msg();
	logger.get_saved_msgs(str, xsc::common_cpp::SEVERITY::INFO);
}

void emulation_profiler_core::register_ids() {
	logger.register_id("Vitis-EM 22", xsc::common_cpp::SEVERITY::INFO,
			xsc::common_cpp::ACTION::SAVE);
}
