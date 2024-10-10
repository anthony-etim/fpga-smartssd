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
#include "sim_aximm_perf_mon_v1_0_axilite.h"

sim_aximm_perf_mon_v1_0::axilite_module::axilite_module(
		sc_core::sc_module_name p_name,
		xsc::common_cpp::properties& _properties,
		sim_aximm_perf_mon_v1_0::data_model* _datamodel) :
		sc_core::sc_module(p_name), clk("clk"), aresetn("aresetn"), logger(
				"logger"), m_data_model(_datamodel) {
	rd_skt = new xtlm::xtlm_aximm_target_socket("rd_skt", 32);
	wr_skt = new xtlm::xtlm_aximm_target_socket("wr_skt", 32);

	rd_util = new xtlm::xtlm_aximm_target_rd_socket_util("rd_util",
			xtlm::aximm::TRANSACTION, 32);
	wr_util = new xtlm::xtlm_aximm_target_wr_socket_util("wr_util",
			xtlm::aximm::TRANSACTION, 32);

	rd_skt->bind(rd_util->rd_socket);
	wr_skt->bind(wr_util->wr_socket);

	SC_METHOD(read_reg);
	dont_initialize();
	sensitive << rd_util->transaction_available;

	SC_METHOD(write_reg);
	dont_initialize();
	sensitive << wr_util->transaction_available;

	SC_METHOD(reset);
	dont_initialize();
	sensitive_neg << aresetn;

	SC_THREAD(calculate_clk_period);
	dont_initialize();
	sensitive << clk;

	SC_METHOD(read_resp);
	dont_initialize();
	sensitive << send_rd_rsp;

	SC_METHOD(write_resp);
	dont_initialize();
	sensitive << send_wr_rsp;

	//reset - set the init values for reg
	reset();
	m_last_sample_time = sc_core::SC_ZERO_TIME;
}

void sim_aximm_perf_mon_v1_0::axilite_module::read_reg() {
	auto trans = rd_util->get_transaction();
	if (trans->has_mm()) {
		trans->acquire();
	}
	auto addr = trans->get_address() & 0xFF;
	auto data = trans->get_data_ptr();
	if (data == nullptr) {
		XSC_REPORT_FATAL(logger, "SIM_SPM::001",
				"Data pointer null for axilite read transaction");
	}
	if (4 != trans->get_data_length()) {
		XSC_REPORT_FATAL(logger, "SIM_SPM::001",
				"Data length must be 4 Bytes for axilite read transaction");
	}
	switch (addr) {
	case 0x08:
		//Control Reg
		((xscuint*) data)[0] = m_control;
		break;
	case 0x10:
		//Trace control
		((xscuint*) data)[0] = m_trace_control;
		break;
	case 0x18:
		//Event Select
		((xscuint*) data)[0] = m_select_reg;
		break;
	case 0x20:
		//Sample register
		m_sample_reg = xscuint(
				(sc_time_stamp() - m_last_sample_time) / m_clk_period);
		((xscuint*) data)[0] = m_sample_reg;
		m_sample_reg = 0x00;
		sample_registers();
		break;
	case 0x80:
		//Write total bytes (lsb 32)
		((xscuint*) data)[0] = xscuint(m_wr_bytes & 0xFFFFFFFF);
		break;
	case 0x84:
		//Write transaction count (lsb 32)
		((xscuint*) data)[0] = xscuint(m_wr_trans & 0xFFFFFFFF);
		break;
	case 0x88:
		//Write total latency (lsb 32)
		((xscuint*) data)[0] = xscuint(m_wr_latency & 0xFFFFFFFF);
		break;
	case 0x8c:
		//Read total bytes (lsb 32)
		((xscuint*) data)[0] = xscuint(m_rd_bytes & 0xFFFFFFFF);
		break;
	case 0x90:
		//Read transaction count (lsb 32)
		((xscuint*) data)[0] = xscuint(m_rd_trans & 0xFFFFFFFF);
		break;
	case 0x94:
		//Read total latency (lsb 32)
		((xscuint*) data)[0] = xscuint(m_rd_latency & 0xFFFFFFFF);
		break;
	case 0x98:
		//Min/Max Write latency (0:15/16:31) (lsb 32)
		//Not in use for SDx
		((xscuint*) data)[0] = 0;
		break;
	case 0x9c:
		//Min/Max Read latency (0:15/16:31) (lsb 32)
		//Not in use for SDx
		((xscuint*) data)[0] = 0;
		break;
	case 0xA0:
		//Outstanding count (lsb 32)
		((xscuint*) data)[0] = xscuint(m_outstanding_cnt & 0xFFFFFFFF);
		break;
	case 0xA4:
		//Last Write Address (lsb 32)
		((xscuint*) data)[0] = xscuint(m_last_wr_addr & 0xFFFFFFFF);
		break;
	case 0xA8:
		//Last Write Data
		((xscuint*) data)[0] = xscuint(m_last_wr_data & 0xFFFFFFFF);
		break;
	case 0xAc:
		//Last read address
		((xscuint*) data)[0] = xscuint(m_last_rd_addr & 0xFFFFFFFF);
		break;
	case 0xB0:
		//Last read data
		((xscuint*) data)[0] = xscuint(m_last_rd_data & 0xFFFFFFFF);
		break;
	case 0xB4:
		//Read Busy cycles
		((xscuint*) data)[0] = xscuint(m_rd_busy_cycles & 0xFFFFFFFF);
		break;
	case 0xB8:
		//Write Busy cycles
		((xscuint*) data)[0] = xscuint(m_wr_busy_cycles & 0xFFFFFFFF);
		break;
	case 0xC0:
		//Write total bytes (msb 32)
		((xscuint*) data)[0] = xscuint((m_wr_bytes >> 32) & 0xFFFFFFFF);
		break;
	case 0xC4:
		//Write transaction count (msb 32)
		((xscuint*) data)[0] = xscuint((m_wr_trans >> 32) & 0xFFFFFFFF);
		break;
	case 0xC8:
		//Write total latency (msb 32)
		((xscuint*) data)[0] = xscuint((m_wr_latency >> 32) & 0xFFFFFFFF);
		break;
	case 0xCC:
		//Read total bytes (msb 32)
		((xscuint*) data)[0] = xscuint((m_rd_bytes >> 32) & 0xFFFFFFFF);
		break;
	case 0xD0:
		//Read transaction count (msb 32)
		((xscuint*) data)[0] = xscuint((m_rd_trans >> 32) & 0xFFFFFFFF);
		break;
	case 0xD4:
		//Read total latency (msb 32)
		((xscuint*) data)[0] = xscuint((m_rd_latency >> 32) & 0xFFFFFFFF);
		break;
	case 0xD8:
		//Min/Max Write latency (0:15/16:31) (msb 32)
		//Not in use for SDx
		((xscuint*) data)[0] = 0;
		break;
	case 0xDC:
		//Min/Max Read latency (0:15/16:31) (msb 32)
		//Not in use for SDx
		((xscuint*) data)[0] = 0;
		break;
	case 0xE0:
		//Outstanding count (msb 32)
		((xscuint*) data)[0] = xscuint((m_outstanding_cnt >> 32) & 0xFFFFFFFF);
		break;
	case 0xE4:
		//Last write address (msb 32)
		((xscuint*) data)[0] = xscuint((m_last_wr_addr >> 32) & 0xFFFFFFFF);
		break;
	case 0xE8:
		//Last write data (msb 32)
		((xscuint*) data)[0] = xscuint((m_last_wr_data >> 32) & 0xFFFFFFFF);
		break;
	case 0xEC:
		//Last read address (msb 32)
		((xscuint*) data)[0] = xscuint((m_last_rd_addr >> 32) & 0xFFFFFFFF);
		break;
	case 0xF0:
		//Last read data (msb 32)
		((xscuint*) data)[0] = xscuint((m_last_rd_data >> 32) & 0xFFFFFFFF);
		break;
	default:
		((xscuint*) data)[0] = 0;
		break;
	}
	trans->set_axi_response_status(
			xtlm::xtlm_aximm_response_status::XTLM_AXI_OKAY);
	rd_pending_rsp.push(trans);
	send_rd_rsp.notify(sc_core::SC_ZERO_TIME);
}

void sim_aximm_perf_mon_v1_0::axilite_module::write_reg() {
	auto trans = wr_util->get_transaction();
	auto addr = trans->get_address() & 0xFF;
	if (trans->has_mm()) {
		trans->acquire();
	}
	auto data = trans->get_data_ptr();
	if (data == nullptr) {
		XSC_REPORT_FATAL(logger, "SIM_SPM::001",
				"Data pointer null for axilite write transaction");
	}
	if (4 != trans->get_data_length()) {
		XSC_REPORT_FATAL(logger, "SIM_SPM::001",
				"Data length must be 4 Bytes for axilite write transaction");
	}
	switch (addr) {
	case 0x08:
		//Control Reg
		m_control = ((xscuint*) data)[0];
		break;
	case 0x10:
		//Trace control
		m_trace_control = ((xscuint*) data)[0];
		break;
	case 0x18:
		//Event Select
		m_select_reg = ((xscuint*) data)[0];
		break;
	case 0x20:
		//Sample register
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x20");
		break;
	case 0x80:
		//Write total bytes (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x80");
		break;
	case 0x84:
		//Write transaction count (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x84");
		break;
	case 0x88:
		//Write total latency (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x88");
		break;
	case 0x8c:
		//Read total bytes (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x8c");
		break;
	case 0x90:
		//Read transaction count (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x90");
		break;
	case 0x94:
		//Read total latency (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x94");
		break;
	case 0x98:
		//Min/Max Write latency (0:15/16:31) (lsb 32)
		//Not in use for SDx
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x98");
		break;
	case 0x9c:
		//Min/Max Read latency (0:15/16:31) (lsb 32)
		//Not in use for SDx
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x9c");
		break;
	case 0xA0:
		//Outstanding count
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xA0");
		break;
	case 0xA4:
		//Last Write Address
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xA4");
		break;
	case 0xA8:
		//Last Write Data
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xA8");
		break;
	case 0xAc:
		//Last read address
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xAc");
		break;
	case 0xB0:
		//Last read data
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xB0");
		break;
	case 0xB4:
		//Read Busy cycles
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xB4");
		break;
	case 0xB8:
		//Write Busy cycles
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xB8");
		break;
	case 0xC0:
		//Write total bytes (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xC0");
		break;
	case 0xC4:
		//Write transaction count (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xC4");
		break;
	case 0xC8:
		//Write total latency (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xC8");
		break;
	case 0xCC:
		//Read total bytes (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xCC");
		break;
	case 0xD0:
		//Read transaction count (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xD0");
		break;
	case 0xD4:
		//Read total latency (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xD4");
		break;
	case 0xD8:
		//Min/Max Write latency (0:15/16:31) (msb 32)
		//Not in use for SDx
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xD8");
		break;
	case 0xDC:
		//Min/Max Read latency (0:15/16:31) (msb 32)
		//Not in use for SDx
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xDC");
		break;
	case 0xE0:
		//Outstanding count (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xE0");
		break;
	case 0xE4:
		//Last write address (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xE4");
		break;
	case 0xE8:
		//Last write data (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xE8");
		break;
	case 0xEC:
		//Last read address (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xEC");
		break;
	case 0xF0:
		//Last read data (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xF0");
		break;
	default:
		break;
	}
	trans->set_axi_response_status(
			xtlm::xtlm_aximm_response_status::XTLM_AXI_OKAY);
	wr_pending_rsp.push(trans);
	send_wr_rsp.notify(sc_core::SC_ZERO_TIME);
}

void sim_aximm_perf_mon_v1_0::axilite_module::reset() {
	m_control = 0x05;
	m_trace_control = 0x3F;
	m_select_reg = 0x00;
	m_sample_reg = 0x00;
	m_wr_bytes = 0x00;
	m_wr_trans = 0x00;
	m_wr_latency = 0x00;
	m_rd_bytes = 0x00;
	m_rd_trans = 0x00;
	m_rd_latency = 0x00;
	m_min_wr_latency = 0x00;
	m_max_wr_latency = 0x00;
	m_min_rd_latency = 0x00;
	m_max_rd_latency = 0x00;
	m_outstanding_cnt = 0x00;
	m_last_wr_addr = 0x00;
	m_last_wr_data = 0x00;
	m_last_rd_addr = 0x00;
	m_last_rd_data = 0x00;
	m_rd_busy_cycles = 0x00;
	m_wr_busy_cycles = 0x00;
}

void sim_aximm_perf_mon_v1_0::axilite_module::read_resp() {
	if (rd_util->is_master_ready() == false) {
		next_trigger(rd_util->data_sampled);
		return;
	}
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	xtlm::aximm_payload* trans = rd_pending_rsp.front();
	rd_util->send_data(*trans, delay);
	if (trans->has_mm()) {
		trans->release();
	}
	rd_pending_rsp.pop();

	if (rd_pending_rsp.empty() == false) {
		next_trigger(rd_util->data_sampled);
	}
}

void sim_aximm_perf_mon_v1_0::axilite_module::write_resp() {
	if (wr_util->is_master_ready() == false) {
		next_trigger(wr_util->resp_sampled);
		return;
	}

	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	xtlm::aximm_payload* trans = wr_pending_rsp.front();
	wr_util->send_resp(*trans, delay);
	if (trans->has_mm()) {
		trans->release();
	}
	wr_pending_rsp.pop();

	if (wr_pending_rsp.empty() == false) {
		next_trigger(wr_util->resp_sampled);
	}
}

void sim_aximm_perf_mon_v1_0::axilite_module::calculate_clk_period() {
	sc_core::sc_time clk_time = sc_time_stamp();
	sc_core::wait();
	m_clk_period = (sc_time_stamp() - clk_time) * 2;
}

void sim_aximm_perf_mon_v1_0::axilite_module::sample_registers() {
	m_wr_bytes = m_data_model->get_wr_total_bytes();
	m_wr_trans = m_data_model->get_wr_transaction_count();
	m_wr_latency = m_data_model->get_wr_total_latency();
	m_rd_bytes = m_data_model->get_rd_total_bytes();
	m_rd_trans = m_data_model->get_rd_transaction_count();
	m_rd_latency = m_data_model->get_rd_total_latency();
	m_outstanding_cnt = m_data_model->get_outstanding_count();
	m_last_wr_addr = m_data_model->get_last_wr_addr();
	m_last_wr_data = m_data_model->get_last_wr_data();
	m_last_rd_addr = m_data_model->get_last_rd_addr();
	m_last_rd_data = m_data_model->get_last_rd_data();
	m_rd_busy_cycles = m_data_model->get_rd_busy_cycles();
	m_wr_busy_cycles = m_data_model->get_wr_busy_cycles();
}
