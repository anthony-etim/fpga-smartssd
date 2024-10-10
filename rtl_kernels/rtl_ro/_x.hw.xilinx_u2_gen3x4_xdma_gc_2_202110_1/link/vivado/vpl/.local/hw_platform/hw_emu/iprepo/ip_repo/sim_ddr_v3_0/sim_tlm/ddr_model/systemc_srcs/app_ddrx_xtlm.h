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
#ifndef _APP_DDRX_XTLM_H_
#define _APP_DDRX_XTLM_H_

#include "xtlm.h"
#include "fsm_model.h"
#include <tuple>
#include <list>

/***
 *This module contains one request queue, one response queue and 4 instances of fsm.
 *For each rd/wr cmd we spend cmd2cmd latency and fsm latency.
 *when we receive rd/wr cmd from axi_app we send it to req queue.
 *then we spend cmd2cmd delay and send it to response queue.
 *In response queue we spend fsm latency.
 *Once both cmd2cmd delay and fsm latency is spent nb_transport_bw is called for response.
 *Response is send in the same order request is received.
 *DOES NOT INCLUDE REORDERING
 ***/

namespace xsc {
namespace sim_ddr_v1_0 {
class app_ddrx_xtlm: public sc_module, xtlm::xtlm_aximm_target_base {
public:
	explicit app_ddrx_xtlm(sc_core::sc_module_name name_,
			xsc::common_cpp::properties model_param_props, int saxi_data_width);SC_HAS_PROCESS(app_ddrx_xtlm);
	~app_ddrx_xtlm();
	unsigned int cal_read_latency(xtlm::aximm_payload & trans);
	unsigned int cal_write_latency(xtlm::aximm_payload & trans);
	tlm::tlm_sync_enum s_axi_wr_tlm_saxi_nb_transport_fw(
			xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
			sc_core::sc_time & t);
	tlm::tlm_sync_enum s_axi_rd_tlm_saxi_nb_transport_fw(
			xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
			sc_core::sc_time & t);
	tlm::tlm_sync_enum nb_transport_fw(xtlm::aximm_payload & trans,
			tlm::tlm_phase & phase, sc_core::sc_time & t);
	fsm_model* fsm_instance_arr[4];
	unsigned int fsm_q_cnt[4];
	xtlm::xtlm_aximm_target_socket* wr_skt;
	xtlm::xtlm_aximm_target_socket* rd_skt;
protected:

private:
	unsigned int partial_data_length;
	bool enable_latency;
	unsigned int row_addr_width;
	unsigned int column_addr_width;
	unsigned int bank_addr_width;
	unsigned int bank_group_addr_width;
	unsigned int row_addr_offset;
	unsigned int column_addr_offset;
	unsigned int bank_addr_offset;
	unsigned int bank_group_offset;
	int curr_row_address;
	int curr_column_address;
	int curr_bank_address;
	int curr_bank_group;
	int prev_row_address;
	int prev_column_address;
	int prev_bank_address;
	int prev_bank_group;
	std::queue<xtlm::aximm_payload*> req_queue;
	std::list<xtlm::aximm_payload*> rsp_queue;

	uint64_t get_mask(uint64_t nbits, uint64_t lbit) {
		return ((((uint64_t) 1 << nbits) - 1) << lbit);
	}
	uint64_t get_column_addr(uint64_t addr) {
		return ((addr & get_mask(column_addr_width - 3, column_addr_offset))
				>> column_addr_offset);
	}

	uint64_t get_bank_addr(uint64_t addr) {
		return ((addr & get_mask(bank_addr_width, bank_addr_offset))
				>> bank_addr_offset);
	}

	uint64_t get_bank_group_addr(uint64_t addr) {
		return ((addr & get_mask(bank_group_addr_width, bank_group_offset))
				>> bank_group_offset);
	}

	uint64_t get_row_addr(uint64_t addr) {
		return ((addr & get_mask(row_addr_width, row_addr_offset))
				>> row_addr_offset);
	}

	//Method to keep track of cmd2cmd delay
	void spendcmd2cmd_delay();
	void spendtx_delay();
	unsigned int calculate_cmd2cmd_delay(xtlm::aximm_payload* trans);
	sc_core::sc_event cmd2cmd_event;
	sc_core::sc_time ddr_timeperiod;
	sc_core::sc_event_queue tx_latency_event;
};

}
}
#endif /* _APP_DDRX_XTLM_H_ */


