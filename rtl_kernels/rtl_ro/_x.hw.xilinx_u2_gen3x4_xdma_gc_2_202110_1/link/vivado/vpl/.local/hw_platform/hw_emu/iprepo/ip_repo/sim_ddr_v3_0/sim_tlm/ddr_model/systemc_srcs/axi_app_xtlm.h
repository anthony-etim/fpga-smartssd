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
#ifndef _AXI_APP_XTLM_H_
#define _AXI_APP_XTLM_H_

#include "xtlm.h"
#include <queue>
#include <list>
#include "tlm_utils/simple_initiator_socket.h"
#include "ddr3_fmodel_base.h"
#include "ddr3_axi_ram_fmodel.h"
#include "ddr3_fmodel_shared_memory.h"

namespace xsc {
namespace sim_ddr_v1_0 {
class axi_app_xtlm: public sc_core::sc_module, xtlm::xtlm_aximm_initiator_base {
	SC_HAS_PROCESS(axi_app_xtlm);
public:
	class target_rd_util;
	class target_wr_util;
	axi_app_xtlm(sc_core::sc_module_name p_name,
			xsc::common_cpp::properties model_param, unsigned int bus_width);
	~axi_app_xtlm();

	tlm::tlm_sync_enum nb_transport_bw(xtlm::aximm_payload& trans,
			tlm::tlm_phase& phase, sc_core::sc_time& delay);

	sc_in_clk axi_clk;
	//Slave Sockets
	xtlm::xtlm_aximm_target_socket* slave_rd_skt;
	xtlm::xtlm_aximm_target_socket* slave_wr_skt;

	//Utils for Slave Sockets
	target_rd_util* slave_rd_skt_util;
	target_wr_util* slave_wr_skt_util;

	xtlm::xtlm_aximm_initiator_socket* app_rd_skt;
	xtlm::xtlm_aximm_initiator_socket* app_wr_skt;

	ddr3_fmodel_base* fmodel_instance;

	unsigned int transport_dbg(xtlm::aximm_payload & trans);
  void end_of_simulation();
private:
	struct slave_tx_status {
		xtlm::aximm_payload* tx;
		unsigned int n_beats_processed;
		unsigned int n_beats_received;
		unsigned int n_beats_received_from_app;
		bool split_done;
		slave_tx_status() {
			tx = nullptr;
			n_beats_processed = 0;
			n_beats_received_from_app = 0;
			split_done = false;
			n_beats_received = 0;
		}
		void reset() {
			tx = nullptr;
			n_beats_processed = 0;
			n_beats_received_from_app = 0;
			split_done = false;
			n_beats_received = 0;
		}
	};

	slave_tx_status* ongoing_tx;
	std::list<slave_tx_status*> slave_rd_request;
	std::list<slave_tx_status*> slave_wr_request;
	std::queue<slave_tx_status*> free_pool;
	xtlm::xtlm_aximm_mem_manager* mem_mngr;

	//For slave read
	unsigned int slave_req_size;
	unsigned int arb_wr_cnt, arb_rd_cnt;
	unsigned int arb_wr_limit, arb_rd_limit;
	unsigned int ongoing_cmd;
	unsigned int rd_data_buffer;
	bool app_req_pending;

	unsigned int C_AXSIZE; //TO DO::Get the width of MC. C_AXSIZE = log2(MC_WIDTH)
	unsigned int MC_WIDTH; //In Bytes
	unsigned P_MC_BURST_MASK;

	void sample_slave_rd_addr();
	void process_read();
	void process_read_data();
	void process_write();
	void process_write_resp();
	void simulate_single_cycle_axiclk();

	void sample_slave_wr_addr();
	unsigned int select_cmd();
	void update_app_req_status();
	void update_write_resp();
	void ddr_read(xtlm::aximm_payload & trans, bool enable_strb);
	void ddr_write(xtlm::aximm_payload & trans);
	void writeDevMemWithByteEnable(uint64_t src_offset, void* src,
			void* byte_enable, unsigned int byte_enable_length,
			unsigned int size);
	slave_tx_status* get_status_tx();
	sc_core::sc_event sample_wr_addr;
	sc_core::sc_event sample_rd_addr;
};
}
}

#endif /* SIM_TLM_DDRX_V3_SYSTEMC_SRCS_AXI_APP_XTLM_H_ */


