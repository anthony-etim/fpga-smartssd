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
#include "sim_accel_mon_v1_axilite.h"

sim_accel_mon_v1::axilite_module::axilite_module(sc_core::sc_module_name p_name,
		xsc::common_cpp::properties& _properties,
		sim_accel_mon_v1::data_model* _datamodel) :
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

void sim_accel_mon_v1::axilite_module::read_reg() {
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
	case 0x00:
		//Version Register
		((xscuint*) data)[0] = version_register;
		break;
	case 0x80:
		//Execution Count
		((xscuint*) data)[0] = exec_count;
		break;
	case 0x18:
		//Control Register
		((xscuint*) data)[0] = control_register;
		break;
	case 0x20:
		//Sample register
		sample_register = xscuint(
				(sc_time_stamp().value() - m_last_sample_time.value())
						/ m_clk_period.value());
		((xscuint*) data)[0] = sample_register;
		sample_register = 0x00;
		sample_registers();
		break;
	case 0x84:
		//Total_execution_cycles (lsb 32)
		((xscuint*) data)[0] = xscuint(total_execution_cycles & 0xFFFFFFFF);
		break;
	case 0x88:
		//Total Int Stall Cycles(lsb 32) NOT SUPPORTED
		((xscuint*) data)[0] = xscuint(total_int_stall_cycles & 0xFFFFFFFF);
		break;
	case 0x8c:
		//Total Str Stall Cycles (lsb 32) NOT SUPPORTED
		((xscuint*) data)[0] = xscuint(total_str_stall_cycles & 0xFFFFFFFF);
		break;
	case 0x90:
		//Total ext stall cycles (lsb 32) NOT SUPPORTED
		((xscuint*) data)[0] = xscuint(total_ext_stall_cycles & 0xFFFFFFFF);
		break;
	case 0x94:
		//Min Execution Time (lsb 32)
		((xscuint*) data)[0] = xscuint(min_exec_time & 0xFFFFFFFF);
		break;
	case 0x98:
		//Max Execution Time (lsb 32)
		((xscuint*) data)[0] = xscuint(max_exec_time & 0xFFFFFFFF);
		break;
	case 0x9C:
		//Total Starts (lsb 32)
		((xscuint*) data)[0] = xscuint(total_starts & 0xFFFFFFFF);
		break;
	case 0xA0:
		//Exec Count (msb 32)
		((xscuint*) data)[0] = xscuint((exec_count >> 32) & 0xFFFFFFFF);
		break;
	case 0xA4:
		//Total Execution Cycles (msb 32)
		((xscuint*) data)[0] = xscuint(
				(total_execution_cycles >> 32) & 0xFFFFFFFF);
		break;
	case 0xA8:
		//Total Int Stall Cycles (msb 32) NOT SUPPORTED
		((xscuint*) data)[0] = xscuint(
				(total_int_stall_cycles >> 32) & 0xFFFFFFFF);
		break;
	case 0xAC:
		//Total str stall Cycles (msb 32) NOT SUPPORTED
		((xscuint*) data)[0] = xscuint(
				(total_str_stall_cycles >> 32) & 0xFFFFFFFF);
		break;
	case 0xB0:
		//Total ext stall cycles (msb 32) NOT SUPPORTED
		((xscuint*) data)[0] = xscuint(
				(total_ext_stall_cycles >> 32) & 0xFFFFFFFF);
		break;
	case 0xB4:
		//Min Execution Time (msb 32)
		((xscuint*) data)[0] = xscuint((min_exec_time >> 32) & 0xFFFFFFFF);
		break;
	case 0xB8:
		//Max Execution Time (msb 32)
		((xscuint*) data)[0] = xscuint((max_exec_time >> 32) & 0xFFFFFFFF);
		break;
	case 0xBC:
		//Total Starts (msb 32)
		((xscuint*) data)[0] = xscuint((total_starts >> 32) & 0xFFFFFFFF);
		break;
	case 0xC0:
		//Cu Cycles (lsb 32)
		((xscuint*) data)[0] = xscuint((total_cu_cycles) & 0xFFFFFFFF);
		break;
	case 0xC4:
		//Cu Cycles (msb 32)
		((xscuint*) data)[0] = xscuint((total_cu_cycles >> 32) & 0xFFFFFFFF);
		break;
	case 0xC8:
		//Parallel Trans (lsb 32)
		((xscuint*) data)[0] = xscuint((max_parallel_trans) & 0xFFFFFFFF);
		break;
	case 0xCC:
		//Parallel trans (msb 32)
		((xscuint*) data)[0] = xscuint((max_parallel_trans >> 32) & 0xFFFFFFFF);
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

void sim_accel_mon_v1::axilite_module::write_reg() {
	auto trans = wr_util->get_transaction();
	auto addr = trans->get_address() & 0xFF;
	if (trans->has_mm()) {
		trans->acquire();
	}
	auto data = trans->get_data_ptr();
	if (data == nullptr) {
		XSC_REPORT_FATAL(logger, "SIM_AM::001",
				"Data pointer null for axilite write transaction");
	}
	if (4 != trans->get_data_length()) {
		XSC_REPORT_FATAL(logger, "SIM_AM::001",
				"Data length must be 4 Bytes for axilite write transaction");
	}
	switch (addr) {
	case 0x00:
		//Version Reg
		XSC_REPORT_WARNING(logger, "SIM_AM::010",
				"Trying to write, read-only register at 0x00");
		break;
	case 0x18:
		//Control Register
		control_register = ((xscuint*) data)[0];
		break;
	case 0x20:
		//Sample register
		XSC_REPORT_WARNING(logger, "SIM_AM::010",
				"Trying to write, read-only register at 0x20");
		break;
	case 0x80:
		//Execution Count (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x80");
		break;
	case 0x84:
		//Total Execution cycles (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x84");
		break;
	case 0x88:
		//Total Int Stall cycles (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x88");
		break;
	case 0x8C:
		//Total Str Stall cycles (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x8c");
		break;
	case 0x90:
		//Total Ext Stall cycles(lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x90");
		break;
	case 0x94:
		//Min Exec Time (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x94");
		break;
	case 0x98:
		//Max Exec Time(lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x98");
		break;
	case 0x9C:
		//Total Starts(lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0x9c");
		break;
	case 0xA0:
		//Exec Count (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xA0");
		break;
	case 0xA4:
		//Total Execution Cycles (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xA4");
		break;
	case 0xA8:
		//Total Int Stall Cycles (msb 32) NOT SUPPORTED
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xA8");
		break;
	case 0xAC:
		//Total str stall Cycles (msb 32) NOT SUPPORTED
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xAC");
		break;
	case 0xB0:
		//Total ext stall cycles (msb 32) NOT SUPPORTED
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xB0");
		break;
	case 0xB4:
		//Min Execution Time (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xB4");
		break;
	case 0xB8:
		//Max Execution Time (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xB8");
		break;
	case 0xBC:
		//Total Starts (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xBC");
		break;
	case 0xC0:
		//Cu Cycles (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xC0");
		break;
	case 0xC4:
		//Cu Cycles (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xC4");
		break;
	case 0xC8:
		//Parallel Trans (lsb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xC8");
		break;
	case 0xCC:
		//Parallel trans (msb 32)
		XSC_REPORT_WARNING(logger, "SIM_SPM::010",
				"Trying to write, read-only register at 0xCC");
		break;
	default:
		break;
	}
	trans->set_axi_response_status(
			xtlm::xtlm_aximm_response_status::XTLM_AXI_OKAY);
	wr_pending_rsp.push(trans);
	send_wr_rsp.notify(sc_core::SC_ZERO_TIME);
}

void sim_accel_mon_v1::axilite_module::reset() {
	version_register = 0xDEAF0100;
	sample_register = 0x00;
	control_register = 0x00;
	exec_count = 0x00;
	total_execution_cycles = 0x00;
	total_int_stall_cycles = 0x00;
	total_str_stall_cycles = 0x00;
	total_ext_stall_cycles = 0x00;
	min_exec_time = 0x00;
	max_exec_time = 0x00;
	total_starts = 0x00;
	total_cu_cycles = 0x00;
	max_parallel_trans = 0x00;
}

void sim_accel_mon_v1::axilite_module::read_resp() {
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

void sim_accel_mon_v1::axilite_module::write_resp() {
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

void sim_accel_mon_v1::axilite_module::calculate_clk_period() {
	sc_core::sc_time clk_time = sc_time_stamp();
	sc_core::wait();
	m_clk_period = (sc_time_stamp() - clk_time) * 2;
}

void sim_accel_mon_v1::axilite_module::sample_registers() {
	version_register = m_data_model->get_version_register();
	sample_register = m_data_model->get_sample_register();
	control_register = m_data_model->get_control_register();
	exec_count = m_data_model->get_exec_count();
	total_execution_cycles = m_data_model->get_total_execution_cycles();
	total_int_stall_cycles = m_data_model->get_total_int_stall_cycles();
	total_str_stall_cycles = m_data_model->get_total_str_stall_cycles();
	total_ext_stall_cycles = m_data_model->get_total_ext_stall_cycles();
	min_exec_time = m_data_model->get_min_exec_time();
	max_exec_time = m_data_model->get_max_exec_time();
	total_starts = m_data_model->get_total_starts();
	total_cu_cycles = m_data_model->get_total_cu_cycles();
	max_parallel_trans = m_data_model->get_max_parallel_trans();
}
