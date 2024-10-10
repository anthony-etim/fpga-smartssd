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
#ifndef _XTLM_AXI_CROSSBAR_H_
#define _XTLM_AXI_CROSSBAR_H_

#include "xtlm.h"

namespace xsc {
namespace sim_ddr_v1_0 {
class xtlm_axi_crossbar: public sc_core::sc_module {
	SC_HAS_PROCESS(xtlm_axi_crossbar);
public:
	class target_rd_util;
	class target_wr_util;
	xtlm_axi_crossbar(sc_core::sc_module_name,
			xsc::common_cpp::properties model_params);
	~xtlm_axi_crossbar();

	sc_core::sc_in_clk axi_aclk;

	//socket arrays
	xtlm::xtlm_aximm_initiator_socket** master_rd_skt_array;
	xtlm::xtlm_aximm_initiator_socket** master_wr_skt_array;
	xtlm::xtlm_aximm_target_socket** slave_rd_skt_array;
	xtlm::xtlm_aximm_target_socket** slave_wr_skt_array;

	//util arrays
	xtlm::xtlm_aximm_initiator_rd_socket_util** master_rd_skt_util;
	xtlm::xtlm_aximm_initiator_wr_socket_util** master_wr_skt_util;
	target_rd_util** slave_rd_skt_util;
	target_wr_util** slave_wr_skt_util;
private:
	friend class sim_ddr_v1_0::xtlm_axi_crossbar::target_rd_util;
	friend class sim_ddr_v1_0::xtlm_axi_crossbar::target_wr_util;
	std::string param_suffix[16];
	unsigned int n_targets;
	unsigned int n_inits;
	unsigned int init_id_width;
	xsc::common_cpp::properties model_params;
	std::map<xtlm::aximm_payload*, unsigned int> tx_slave_map;

	int decode_address(int64_t address);

	typedef struct {
		unsigned int master_interface;
		unsigned int no_of_adress_ranges;
		std::pair<int64_t, unsigned> * baseaddr_addrwidth;
	} address_ranges;

	address_ranges* masterintf_address_range;

	//SC_METHODS: SC_SPAWNING
	void handle_slave_rd_addr(unsigned int slave_id);
	void handle_slave_wr_addr(unsigned int slave_id);
	void handle_slave_wr_data(unsigned int slave_id);

	void handle_master_rd_data(unsigned int master_id);
	void handle_master_wr_resp(unsigned int master_id);

	unsigned int transport_dbg(xtlm::aximm_payload&);

	//std::map<slave_id, payloads in queue>
	std::map<unsigned int, std::queue<xtlm::aximm_payload*> > slave_wr_order_queue;
	std::map<unsigned int, std::queue<xtlm::aximm_payload*> > master_rd_order_queue;
};

}
}

#endif /* _XTLM_AXI_CROSSBAR_H_ */


