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

#include "app_ddrx_xtlm.h"
//#define DEBUGMSG 1
//#define DEBUG_LATENCY 1
namespace xsc {
namespace sim_ddr_v1_0 {
#ifdef DEBUGMSG
std::ofstream myfile_app_ddrx("app_ddrx.log");
#endif
app_ddrx_xtlm::app_ddrx_xtlm(sc_core::sc_module_name name,
		xsc::common_cpp::properties model_param_props, int saxi_data_width) :
		sc_module(name), xtlm::xtlm_aximm_target_base("target_base") {
	wr_skt = new xtlm::xtlm_aximm_target_socket("wr_skt", saxi_data_width);
	rd_skt = new xtlm::xtlm_aximm_target_socket("rd_skt", saxi_data_width);
	wr_skt->bind(*this);
	rd_skt->bind(*this);

	curr_row_address = -1;
	curr_column_address = -1;
	curr_bank_address = -1;
	curr_bank_group = -1;
	prev_row_address = -1;
	prev_column_address = -1;
	prev_bank_address = -1;
	prev_bank_group = -1;
	row_addr_offset = 0;
	column_addr_offset = 0;
	bank_addr_offset = 0;
	bank_group_offset = 0;

	char* disableLatency = getenv("HW_EM_DISABLE_LATENCY");
	if (disableLatency && (strcmp(disableLatency, "true") == 0)) {
		enable_latency = false;
	} else {
		enable_latency = true;
	}

	partial_data_length = model_param_props.getLongLong("partial_data_length");
	//BRC

	std::string ddr_idx = model_param_props.getString("ddr_index");
	std::string property = "C" + ddr_idx + "_ROW_WIDTH";
	row_addr_width = model_param_props.getLongLong(property);

	property = "C" + ddr_idx + "_COLUMN_WIDTH";
	column_addr_width = model_param_props.getLongLong(property);

	property = "C" + ddr_idx + "_BANK_WIDTH";
	bank_addr_width = model_param_props.getLongLong(property);

	property = "C" + ddr_idx + "_BANK_GROUP_WIDTH";

	bank_group_addr_width = model_param_props.getLongLong(property);

	int n_fsm = 1 << bank_group_addr_width;
	for (int i = 0; i < n_fsm; i++) {
		fsm_instance_arr[i] = new fsm_model(model_param_props);
		fsm_q_cnt[i] = 0;
	}

	property = "C" + ddr_idx + "_MEM_ADDR_MAP";
	std::string mem_map = model_param_props.getString(property);
	if ("ROW_BANK_COLUMN" == mem_map) { //RBC
		column_addr_offset = 0;
		bank_group_offset = column_addr_offset + (column_addr_width - 3); //column_addr_width-3:: LSB 3 bits are always dedicated to column.
		bank_addr_offset = bank_group_offset + bank_group_addr_width; //column_addr_width-3:: LSB 3 bits are always dedicated to column.
		row_addr_offset = bank_addr_offset + bank_addr_width;
	}
	if ("BANK_ROW_COLUMN" == mem_map) { // BRC
		column_addr_offset = 0;
		row_addr_offset = column_addr_offset + (column_addr_width - 3);
		bank_group_offset = row_addr_offset + row_addr_width;
		bank_addr_offset = bank_group_offset + bank_group_addr_width; //column_addr_width-3:: LSB 3 bits are always dedicated to column.
	}
	if ("ROW_COLUMN_BANK" == mem_map) { //RCB
		bank_group_offset = 0;
		bank_addr_offset = bank_group_offset + bank_group_addr_width;
		column_addr_offset = bank_addr_offset + bank_addr_width;
		row_addr_offset = column_addr_offset + (column_addr_width - 3);
	}

#ifdef DEBUG_LATENCY
	if ("ROW_BANK_COLUMN" == mem_map) { //RBC
		cout << "RBC" << endl;
	}
	if ("BANK_ROW_COLUMN" == mem_map) { // BRC
		cout << "BRC" << endl;
	}
	if ("ROW_COLUMN_BANK" == mem_map) { //RCB
		cout << "RCB" << endl;
	}
	cout << "row_addr_width:" << row_addr_width << endl;
	cout << "column_addr_width:" << column_addr_width << endl;
	cout << "bank_addr_width:" << bank_addr_width << endl;
	cout << "bank_group_addr_width:" << bank_group_addr_width << endl;
	cout << "column_addr_offset:" << column_addr_offset << endl;
	cout << "bank_addr_offset:" << bank_addr_offset << endl;
	cout << "bank_group_addr_offset:" << bank_group_offset << endl;
	cout << "row_addr_offset:" << row_addr_offset << endl;
#endif

	property = "C" + ddr_idx + "_TIMEPERIOD_PS";
	ddr_timeperiod = sc_core::sc_time(model_param_props.getLongLong(property),
			sc_core::SC_PS);

	SC_METHOD(spendcmd2cmd_delay);
	sensitive << cmd2cmd_event;
	dont_initialize();

	SC_METHOD(spendtx_delay);
	sensitive << tx_latency_event;
	dont_initialize();

}

app_ddrx_xtlm::~app_ddrx_xtlm() {
	int n_fsm = 1 << bank_group_addr_width;
	for (int i = 0; i < n_fsm; i++) {
		delete fsm_instance_arr[i];
	}

}

tlm::tlm_sync_enum app_ddrx_xtlm::s_axi_wr_tlm_saxi_nb_transport_fw(
		xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
		sc_core::sc_time & t) {
#ifdef DEBUGMSG
	myfile_app_ddrx << " (APP_DDRX) WR_TX :: AAT-->APP_DDRX NB_FW  @"
	<< sc_time_stamp();
	myfile_app_ddrx << "\n (APP_DDRX) addr :: " << hex << trans.get_address();
	myfile_app_ddrx << "\n (APP_DDRX) phase :: " << phase << std::endl
	<< std::endl;
#endif
#ifdef DEBUGMSG
	cout << "app_ddrx_xtlm::s_axi_wr_tlm_saxi_nb_transport_fw write address: "
	<< trans.get_address() << endl;
#endif
	uint64_t local_offset = trans.get_address();
	local_offset = local_offset >> 3;
	unsigned int curr_bank_grp = get_bank_group_addr(local_offset);

#ifdef DEBUGMSG
	unsigned int curr_bank_address = get_bank_addr(local_offset);
	cout << "app_ddrx_xtlm::write_req row" << get_row_addr(local_offset)
	<< " column:" << get_column_addr(local_offset) << " bank_group: "
	<< curr_bank_grp << " bank:" << (curr_bank_address >> 2) << endl;
#endif

	//checking if particular FSM is full
	//TODO::There are two stage FIFO in each FSM. Stage 1 FIFO has depth of 4 but only tx at the top will be parallised
	//Stage 2 has only 1 depth. Command from stage 1 move to Stage 2 once Stage 2 is free
	bool queue_full = false;
	if (fsm_q_cnt[curr_bank_grp] > 4) {
		queue_full = true;
	}

	if (queue_full) {
#ifdef DEBUGMSG
		cout << "app_ddrx_xtlm::write fifo full back pressure "
		<< trans.get_address() << endl;
#endif
		if (req_queue.empty()) {
			cmd2cmd_event.notify(
					calculate_cmd2cmd_delay(&trans) * ddr_timeperiod);
		}
		phase = xtlm::BEGIN_WADDR;
		req_queue.push(&trans);
		fsm_q_cnt[curr_bank_grp]++;
		return tlm::TLM_ACCEPTED;
	} else {
#ifdef DEBUGMSG
		cout << "app_ddrx_xtlm::write fifo not full accepted "
		<< trans.get_address() << endl;
#endif
		if (req_queue.empty()) {
			cmd2cmd_event.notify(
					calculate_cmd2cmd_delay(&trans) * ddr_timeperiod);
		}
		phase = xtlm::END_WADDR;
		req_queue.push(&trans);
		fsm_q_cnt[curr_bank_grp]++;
		trans.set_response_status(xtlm::XTLM_OK_RESPONSE);
		return tlm::TLM_UPDATED;
	}

}

tlm::tlm_sync_enum app_ddrx_xtlm::s_axi_rd_tlm_saxi_nb_transport_fw(
		xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
		sc_core::sc_time & t) {
#ifdef DEBUGMSG
	myfile_app_ddrx << " (APP_DDRX) RD_TX :: AAT-->APP_DDRX NB_FW  @"
	<< sc_time_stamp();
	myfile_app_ddrx << "\n (APP_DDRX) addr :: " << hex << trans.get_address();
	myfile_app_ddrx << "\n (APP_DDRX) phase :: " << phase << std::endl
	<< std::endl;
#endif
#ifdef DEBUGMSG
	cout << "app_ddrx_xtlm::fw s_axi_rd_tlm_saxi_nb_transport_fw address : "
	<< trans.get_address() << endl;
#endif
	uint64_t local_offset = trans.get_address();
	local_offset = local_offset >> 3;
	unsigned int curr_bank_grp = get_bank_group_addr(local_offset);

#ifdef DEBUGMSG
	unsigned int curr_bank_address = get_bank_addr(local_offset);
	cout << "app_ddrx_xtlm::write_req row" << get_row_addr(local_offset)
	<< " column:" << get_column_addr(local_offset) << " bank_group: "
	<< curr_bank_grp << " bank:" << (curr_bank_address >> 2) << endl;
#endif

	bool queue_full = false;

	if (fsm_q_cnt[curr_bank_grp] > 4) {
		queue_full = true;
	}

	if (queue_full) {
#ifdef DEBUGMSG
		cout << "app_ddrx_xtlm::read fifo full back pressure "
		<< trans.get_address() << endl;
		cout << "req_queue size " << req_queue.size() << std::endl;
#endif
		phase = xtlm::BEGIN_RADDR;
		if (req_queue.empty()) {
			cmd2cmd_event.notify(
					calculate_cmd2cmd_delay(&trans) * ddr_timeperiod);
		}
		req_queue.push(&trans);
		fsm_q_cnt[curr_bank_grp]++;
		return tlm::TLM_ACCEPTED;
	} else {
#ifdef DEBUGMSG
		cout << "app_ddrx_xtlm::read fifo not full accepted "
		<< trans.get_address() << endl;
		cout << "req_queue size " << req_queue.size() << std::endl;
#endif
		if (req_queue.empty()) {
			cmd2cmd_event.notify(
					calculate_cmd2cmd_delay(&trans) * ddr_timeperiod);
		}
		phase = xtlm::END_RADDR;
		req_queue.push(&trans);
		trans.set_response_status(xtlm::XTLM_OK_RESPONSE);
		fsm_q_cnt[curr_bank_grp]++;
		return tlm::TLM_UPDATED;
	}

}

unsigned int app_ddrx_xtlm::cal_write_latency(xtlm::aximm_payload & trans) {
	//TODO:: value of burst_length and data_width is hardcoded according to
	//alphadata board configuration
	unsigned int data_width = 72;
	unsigned int burst_length = 8;
	prev_row_address = curr_row_address;
	prev_column_address = curr_column_address;
	prev_bank_address = curr_bank_address;
	prev_bank_group = curr_bank_group;

	uint64_t local_offset = trans.get_address();
	local_offset = local_offset >> 3;
	curr_row_address = get_row_addr(local_offset);
	curr_column_address = get_column_addr(local_offset);
	curr_bank_address = get_bank_addr(local_offset);
	curr_bank_group = get_bank_group_addr(local_offset);

	if (prev_row_address == (-1)) {
		prev_row_address = curr_row_address;
		prev_column_address = curr_column_address;
		prev_bank_address = curr_bank_address;
		prev_bank_group = curr_bank_group;
	}
	if (enable_latency == false) {
		fsm_instance_arr[curr_bank_group]->m_latencyCnt = 1;
	} else {
		fsm_instance_arr[curr_bank_group]->fsm_write(curr_row_address,
				curr_column_address, curr_bank_address, curr_bank_group,
				prev_bank_group);
	}
#ifdef DEBUGMSG
	cout << "write fsm_instance_arr[" << curr_bank_group << "]->m_latencyCnt :="
	<< fsm_instance_arr[curr_bank_group]->m_latencyCnt << endl;
#endif
	return fsm_instance_arr[curr_bank_group]->m_latencyCnt;
}

unsigned int app_ddrx_xtlm::cal_read_latency(xtlm::aximm_payload & trans) {
	//TODO:: value of burst_length and data_width is hardcoded according to
	//alphadata board configuration
	unsigned int data_width = 72;
	unsigned int burst_length = 8;
	prev_row_address = curr_row_address;
	prev_column_address = curr_column_address;
	prev_bank_address = curr_bank_address;
	prev_bank_group = curr_bank_group;

	uint64_t local_offset = trans.get_address();
	local_offset = local_offset >> 3;
	curr_row_address = get_row_addr(local_offset);
	curr_column_address = get_column_addr(local_offset);
	curr_bank_address = get_bank_addr(local_offset);
	curr_bank_group = get_bank_group_addr(local_offset);

	if (prev_row_address == (-1)) {
		prev_row_address = curr_row_address;
		prev_column_address = curr_column_address;
		prev_bank_address = curr_bank_address;
		prev_bank_group = curr_bank_group;
	}
	if (enable_latency == false) {
		fsm_instance_arr[curr_bank_group]->m_latencyCnt = 1;
	} else {
		fsm_instance_arr[curr_bank_group]->fsm_read(curr_row_address,
				curr_column_address, curr_bank_address, curr_bank_group,
				prev_bank_group);
	}
#ifdef DEBUGMSG
	cout << "read fsm_instance_arr[" << curr_bank_group << "]->m_latencyCnt :="
	<< fsm_instance_arr[curr_bank_group]->m_latencyCnt << endl;
#endif
	return fsm_instance_arr[curr_bank_group]->m_latencyCnt;
}

tlm::tlm_sync_enum app_ddrx_xtlm::nb_transport_fw(xtlm::aximm_payload & trans,
		tlm::tlm_phase & phase, sc_core::sc_time & t) {
#ifdef DEBUGMSG
	if ((phase == xtlm::END_RADDR) || (phase == xtlm::BEGIN_RDATA)
			|| (phase == xtlm::END_WADDR) || (phase == xtlm::BEGIN_WRESP)) {
		std::cerr << "Illegal transaction phase received by target." << endl;
	}
#endif
	if (trans.get_command() == xtlm::XTLM_WRITE_COMMAND) {
		return s_axi_wr_tlm_saxi_nb_transport_fw(trans, phase, t);
	} else if (trans.get_command() == xtlm::XTLM_READ_COMMAND) {
		return s_axi_rd_tlm_saxi_nb_transport_fw(trans, phase, t);
	}
	return tlm::TLM_ACCEPTED;
}

void app_ddrx_xtlm::spendcmd2cmd_delay() {
	xtlm::aximm_payload* trans = req_queue.front();
	req_queue.pop();
	unsigned int fsm_latency;
	if (trans->get_command() == xtlm::XTLM_WRITE_COMMAND) {
		if (trans->get_data_length() < partial_data_length) {
			fsm_latency = cal_read_latency(*trans);
		} else {
			fsm_latency = 0;
		}

		fsm_latency += cal_write_latency(*trans);
	} else if (trans->get_command() == xtlm::XTLM_READ_COMMAND) {
		fsm_latency = cal_read_latency(*trans);
	}
#ifdef DEBUG_LATENCY
	cout << name() << " setting fsm_latency:" << fsm_latency << endl;
#endif
	rsp_queue.push_back(trans);
	tx_latency_event.notify(fsm_latency * ddr_timeperiod);

	if (req_queue.empty()) {
		return;
	}
	cmd2cmd_event.notify(calculate_cmd2cmd_delay(trans) * ddr_timeperiod);

}

void app_ddrx_xtlm::spendtx_delay() {
	xtlm::aximm_payload* trans = rsp_queue.front();

	rsp_queue.pop_front();

	uint64_t local_offset = trans->get_address();
	local_offset = local_offset >> 3;
	int curr_bg = get_bank_group_addr(local_offset);
	fsm_q_cnt[curr_bg]--;

	tlm::tlm_phase phase;
	sc_core::sc_time t = sc_core::SC_ZERO_TIME;
	if (trans->get_command() == xtlm::XTLM_WRITE_COMMAND) {
		if (NULL != trans) {
			phase = xtlm::BEGIN_WRESP;
			trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
#ifdef DEBUGMSG
			cout
			<< "app_ddrx_xtlm::write making bw call END_RESP address:"
			<< (trans->get_address()) << endl;
#endif
#ifdef DEBUGMSG
			myfile_app_ddrx
			<< " (APP_DDRX) WR_TX :: AAT<--APP_DDRX NB_BW  @"
			<< sc_time_stamp();
			myfile_app_ddrx << "\n (APP_DDRX) addr :: " << hex
			<< trans->get_address();
			myfile_app_ddrx << "\n (APP_DDRX) phase :: " << phase
			<< std::endl << std::endl;
#endif
			tlm::tlm_sync_enum status = (*wr_skt)->nb_transport_bw(*trans,
					phase, t);

		}
	} else if (trans->get_command() == xtlm::XTLM_READ_COMMAND) {
		if (NULL != trans) {
			phase = xtlm::BEGIN_RDATA;
			trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
#ifdef DEBUGMSG
			cout
			<< "app_ddrx_xtlm::read making bw call END_RESP address:"
			<< (trans->get_address()) << endl;
#endif
#ifdef DEBUGMSG
			myfile_app_ddrx
			<< " (APP_DDRX) RD_TX :: AAT<--APP_DDRX NB_BW  @"
			<< sc_time_stamp();
			myfile_app_ddrx << "\n (APP_DDRX) addr :: " << hex
			<< trans->get_address();
			myfile_app_ddrx << "\n (APP_DDRX) phase :: " << phase
			<< std::endl << std::endl;
#endif
			tlm::tlm_sync_enum status = (*rd_skt)->nb_transport_bw(*trans,
					phase, t);
		}
	}
}

unsigned int app_ddrx_xtlm::calculate_cmd2cmd_delay(
		xtlm::aximm_payload* trans) {
	unsigned int cmd2cmd_latency = 1;
	if (enable_latency == false) {
		cmd2cmd_latency = 1;
	} else if ((-1) == prev_bank_group) {
		cmd2cmd_latency = 0;
	} else {
		if (curr_bank_group == prev_bank_group) {
			cmd2cmd_latency = 11;
		} else {
			cmd2cmd_latency = 4;
		}
	}
#ifdef DEBUG_LATENCY
	cout << name() << " setting cmd2cmd_latency:" << cmd2cmd_latency
	<< endl;
#endif
	return cmd2cmd_latency;
}

}
}


