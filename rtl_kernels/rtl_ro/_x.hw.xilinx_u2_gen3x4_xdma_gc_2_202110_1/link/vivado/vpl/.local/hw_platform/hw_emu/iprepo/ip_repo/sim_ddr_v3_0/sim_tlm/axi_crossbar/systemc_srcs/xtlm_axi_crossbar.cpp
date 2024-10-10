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

#include "xtlm_axi_crossbar.h"
//#define DEBUGMSG

class xsc::sim_ddr_v1_0::xtlm_axi_crossbar::target_rd_util: public xtlm::xtlm_aximm_target_rd_socket_util {
public:
	target_rd_util(sc_core::sc_module_name p_name,
			xtlm::aximm::granularity g_hint, int width_p,
			xsc::sim_ddr_v1_0::xtlm_axi_crossbar* _parent) :
			xtlm::xtlm_aximm_target_rd_socket_util(p_name, g_hint, width_p) {
		this->parent = _parent;
	}
	unsigned int transport_dbg_cb(xtlm::aximm_payload& trans) {
		return parent->transport_dbg(trans);
	}
private:
	xsc::sim_ddr_v1_0::xtlm_axi_crossbar* parent;
};

class xsc::sim_ddr_v1_0::xtlm_axi_crossbar::target_wr_util: public xtlm::xtlm_aximm_target_wr_socket_util {
public:
	target_wr_util(sc_core::sc_module_name p_name,
			xtlm::aximm::granularity g_hint, int width_p,
			xsc::sim_ddr_v1_0::xtlm_axi_crossbar* _parent) :
			xtlm::xtlm_aximm_target_wr_socket_util(p_name, g_hint, width_p) {
		this->parent = _parent;
	}
	unsigned int transport_dbg_cb(xtlm::aximm_payload& trans) {
		return parent->transport_dbg(trans);
	}
private:
	xsc::sim_ddr_v1_0::xtlm_axi_crossbar* parent;
};

xsc::sim_ddr_v1_0::xtlm_axi_crossbar::xtlm_axi_crossbar(
		sc_core::sc_module_name sc_module_name,
		xsc::common_cpp::properties _model_params) :
		sc_core::sc_module(sc_module_name) {
	model_params = _model_params;
	n_targets = model_params.getLongLong("C_NUMBER_OF_GLOBAL_MEMORIES");
	n_inits = model_params.getLongLong("C_NUM_SLAVE_SLOTS") + 1;
	init_id_width = 0;
	int tmp = n_inits - 1;
	while (tmp > 0) {
		init_id_width++;
		tmp = tmp >> 1;
	}

	//For Master socket
	master_rd_skt_array = new xtlm::xtlm_aximm_initiator_socket*[n_targets];
	master_wr_skt_array = new xtlm::xtlm_aximm_initiator_socket*[n_targets];
	master_wr_skt_util =
			new xtlm::xtlm_aximm_initiator_wr_socket_util*[n_targets];
	master_rd_skt_util =
			new xtlm::xtlm_aximm_initiator_rd_socket_util*[n_targets];

	for (int i = 0; i < n_targets; i++) {
		std::string skt_name = "master_skt_wr_" + std::to_string(i);
		std::string skt_data_width = "C" + std::to_string(i)
				+ "_DDR_SAXI_DATA_WIDTH";
		unsigned int data_width = model_params.getLongLong(skt_data_width);

		master_wr_skt_array[i] = new xtlm::xtlm_aximm_initiator_socket(
				skt_name.c_str(), data_width);

		master_wr_skt_util[i] = new xtlm::xtlm_aximm_initiator_wr_socket_util(
				skt_name.c_str(), xtlm::aximm::granularity::HANDSHAKE,
				data_width);

		master_wr_skt_util[i]->wr_socket.bind(*(master_wr_skt_array[i]));

		skt_name = "master_skt_rd_" + std::to_string(i);
		master_rd_skt_array[i] = new xtlm::xtlm_aximm_initiator_socket(
				skt_name.c_str(), data_width);

		master_rd_skt_util[i] = new xtlm::xtlm_aximm_initiator_rd_socket_util(
				skt_name.c_str(), xtlm::aximm::granularity::HANDSHAKE,
				data_width);

		master_rd_skt_util[i]->rd_socket.bind(*(master_rd_skt_array[i]));

		std::string spawn_name = "handle_master_rd_data_" + std::to_string(i);
		sc_core::sc_spawn_options opt;
		opt.spawn_method();
		opt.dont_initialize();
		opt.set_sensitivity(&(master_rd_skt_util[i]->beat_available));
		sc_spawn(sc_bind(&xsc::sim_ddr_v1_0::xtlm_axi_crossbar::handle_master_rd_data,this,i),spawn_name.c_str(),&opt);

		spawn_name = "handle_slave_wr_resp_" + std::to_string(i);
		sc_core::sc_spawn_options opt1;
		opt1.spawn_method();
		opt1.dont_initialize();
		opt1.set_sensitivity(&(master_wr_skt_util[i]->resp_available));
		sc_spawn(sc_bind(&xsc::sim_ddr_v1_0::xtlm_axi_crossbar::handle_master_wr_resp,this,i),spawn_name.c_str(),&opt1);
	}

	//For slave socket
	slave_rd_skt_array = new xtlm::xtlm_aximm_target_socket*[n_inits];
	slave_wr_skt_array = new xtlm::xtlm_aximm_target_socket*[n_inits];
	slave_wr_skt_util = new target_wr_util*[n_inits];
	slave_rd_skt_util = new target_rd_util*[n_inits];

	for (int i = 0; i < n_inits; i++) {
		std::string skt_name = "slave_skt_wr_" + std::to_string(i);
		std::string skt_data_width;
		if (i == 0) {
			skt_data_width = "C_S_XDMA_AXI_DATA_WIDTH";
		} else {
			skt_data_width = "C" + std::to_string(i - 1)
					+ "_DDR_SAXI_DATA_WIDTH";
		}
		unsigned int data_width = model_params.getLongLong(skt_data_width);

		slave_wr_skt_array[i] = new xtlm::xtlm_aximm_target_socket(
				skt_name.c_str(), data_width);

		slave_wr_skt_util[i] = new class target_wr_util(skt_name.c_str(),
				xtlm::aximm::granularity::HANDSHAKE, data_width, this);

		slave_wr_skt_array[i]->bind(slave_wr_skt_util[i]->wr_socket);

		skt_name = "slave_skt_rd_" + std::to_string(i);
		slave_rd_skt_array[i] = new xtlm::xtlm_aximm_target_socket(
				skt_name.c_str(), data_width);

		slave_rd_skt_util[i] = new class target_rd_util(skt_name.c_str(),
				xtlm::aximm::granularity::HANDSHAKE, data_width, this);

		slave_rd_skt_array[i]->bind(slave_rd_skt_util[i]->rd_socket);

		//SC_SPAWNING
		std::string spawn_name = "handle_slave_rd_" + std::to_string(i);
		sc_core::sc_spawn_options opt;
		opt.spawn_method();
		opt.dont_initialize();
		opt.set_sensitivity(&(slave_rd_skt_util[i]->addr_available));
		sc_spawn(sc_bind(&xsc::sim_ddr_v1_0::xtlm_axi_crossbar::handle_slave_rd_addr,this,i),spawn_name.c_str(),&opt);

		spawn_name = "handle_slave_wr_addr_" + std::to_string(i);
		sc_core::sc_spawn_options opt1;
		//opt1.spawn_method();
		opt1.dont_initialize();
		opt1.set_sensitivity(&(slave_wr_skt_util[i]->addr_available));
		sc_spawn(sc_bind(&xsc::sim_ddr_v1_0::xtlm_axi_crossbar::handle_slave_wr_addr,this,i),spawn_name.c_str(),&opt1);

		spawn_name = "handle_slave_wr_data_" + std::to_string(i);
		sc_core::sc_spawn_options opt2;
		opt2.spawn_method();
		opt2.dont_initialize();
		opt2.set_sensitivity(&(slave_wr_skt_util[i]->beat_available));
		sc_spawn(sc_bind(&xsc::sim_ddr_v1_0::xtlm_axi_crossbar::handle_slave_wr_data,this,i),spawn_name.c_str(),&opt2);

	}

	param_suffix[0] = "00";
	param_suffix[1] = "01";
	param_suffix[2] = "02";
	param_suffix[3] = "03";
	param_suffix[4] = "04";
	param_suffix[5] = "05";
	param_suffix[6] = "06";
	param_suffix[7] = "07";
	param_suffix[8] = "08";
	param_suffix[9] = "09";
	param_suffix[10] = "10";
	param_suffix[11] = "11";
	param_suffix[12] = "12";
	param_suffix[13] = "13";
	param_suffix[14] = "14";
	param_suffix[15] = "15";
	masterintf_address_range = new address_ranges[n_targets];

	for (int i = 0; i < n_targets; i++) {
		masterintf_address_range[i].master_interface = i;

		masterintf_address_range[i].no_of_adress_ranges =
				model_params.getLongLong("C_ADDR_RANGES");

		masterintf_address_range[i].baseaddr_addrwidth = new std::pair<int64_t,
				unsigned>[masterintf_address_range[i].no_of_adress_ranges];

		for (int j = 0; j < masterintf_address_range[i].no_of_adress_ranges;
				j++) {
			masterintf_address_range[i].baseaddr_addrwidth[j].second =
					model_params.getLongLong(
							(std::string("M") + param_suffix[i] + "_A"
									+ param_suffix[j] + "_ADDR_WIDTH"));

			masterintf_address_range[i].baseaddr_addrwidth[j].first =
					model_params.getLongLong(
							(std::string("M") + param_suffix[i] + "_A"
									+ param_suffix[j] + "_BASE_ADDR"));
		}
	}

}

xsc::sim_ddr_v1_0::xtlm_axi_crossbar::~xtlm_axi_crossbar() {
	for (int master = 0; master < n_targets; master++) {
		delete master_rd_skt_array[master];
		delete master_wr_skt_array[master];
		delete master_rd_skt_util[master];
		delete master_wr_skt_util[master];
	}
	for (int slave = 0; slave < n_inits; slave++) {
		delete slave_rd_skt_array[slave];
		delete slave_wr_skt_array[slave];
		delete slave_rd_skt_util[slave];
		delete slave_wr_skt_util[slave];

	}
	delete master_rd_skt_array;
	delete master_wr_skt_array;
	delete master_rd_skt_util;
	delete master_wr_skt_util;
	delete slave_rd_skt_array;
	delete slave_wr_skt_array;
	delete slave_rd_skt_util;
	delete slave_wr_skt_util;
	delete masterintf_address_range;
}

int xsc::sim_ddr_v1_0::xtlm_axi_crossbar::decode_address(int64_t address) {
	for (int i = 0; i < n_targets; i++) {
		for (int j = 0; j < masterintf_address_range[i].no_of_adress_ranges;
				j++) {
			int64_t end_address = 1;
			end_address = (end_address
					<< masterintf_address_range[i].baseaddr_addrwidth[j].second)
					- 1;
			end_address +=
					masterintf_address_range[i].baseaddr_addrwidth[j].first;
			if ((address
					>= masterintf_address_range[i].baseaddr_addrwidth[j].first)
					&& (address <= end_address)) {
#ifdef DEBUGMSG
				cout << endl << "axi_crossbar:: start address:" << std::hex
				<< (int64_t) masterintf_address_range[i].baseaddr_addrwidth[j].first;
				cout << "   address:" << std::hex << (int64_t) address;
				cout << "   end address:" << std::hex << (int64_t) end_address
				<< endl;
				cout << endl << "ddr "
				<< masterintf_address_range[i].master_interface << endl;
				cout << "   width:" << std::hex
				<< (int64_t) (masterintf_address_range[i].baseaddr_addrwidth[j].second)
				<< endl;
#endif
				return masterintf_address_range[i].master_interface;
			}
		}
	}

	return (-1);
}

void xsc::sim_ddr_v1_0::xtlm_axi_crossbar::handle_slave_rd_addr(
		unsigned int slave_id) {
	xtlm::aximm_payload* tx = slave_rd_skt_util[slave_id]->peek_addr_ch();
	int target = decode_address(tx->get_address());
	//If Wrong address send the error response back
	if (target < 0) {
		tx->set_response_status(xtlm::XTLM_ADDRESS_ERROR_RESPONSE);
		slave_rd_skt_util[slave_id]->get_addr_ch();
		sc_core::sc_time delay = SC_ZERO_TIME;
		slave_rd_skt_util[slave_id]->send_beat_data(*tx, delay);
	}

	//TODO::Handle Wrong address properly. In case of SDAccel, it has to be error
	assert(target >= 0);
#ifdef DEBUGMSG
	std::cout << name() << " Read Address Received from Slave for target "
	<< target << "\nAddr:: " << tx->get_address() << "\n"
	<< "Burst Length " << tx->get_burst_length() << std::endl;
#endif
	if (master_rd_skt_util[target]->is_addr_ch_ready()) {
		//If master ready sample the tx
		slave_rd_skt_util[slave_id]->get_addr_ch();
		sc_core::sc_time delay = SC_ZERO_TIME;
		//Update ID
		tx_slave_map[tx] = slave_id;
		master_rd_skt_util[target]->send_addr_ch(*tx, delay);
		master_rd_order_queue[slave_id].push(tx);

#ifdef DEBUGMSG
		std::cout << name() << " Master is Ready to Accept Address "
		<< std::endl;
#endif
	} else { //If master is not ready, change the sensitivity to master's event
#ifdef DEBUGMSG
	std::cout << name() << " Master is Busy " << std::endl;
#endif
		next_trigger(master_rd_skt_util[target]->addr_sampled);
	}
}

void xsc::sim_ddr_v1_0::xtlm_axi_crossbar::handle_slave_wr_addr(
		unsigned int slave_id) {
	while (1) {
		xtlm::aximm_payload* tx = slave_wr_skt_util[slave_id]->peek_addr_ch();
		int target = decode_address(tx->get_address());

		//If Wrong address send the error response back
		if (target < 0) {
			tx->set_response_status(xtlm::XTLM_ADDRESS_ERROR_RESPONSE);
			slave_wr_skt_util[slave_id]->get_addr_ch();
			sc_core::sc_time delay = SC_ZERO_TIME;
			slave_wr_skt_util[slave_id]->send_resp(*tx, delay);
			return;
			//TODO::Send all the beats to master
		}
		//TODO::Handle Wrong address properly. In case of SDAccel, it has to be error
		assert(target >= 0);

#ifdef DEBUGMSG
		std::cout << name() << " Write Address Received from Slave for target "
		<< target << "\nAddr:: " << tx->get_address() << "\n"
		<< "Burst Length " << tx->get_burst_length() << std::endl;
#endif

		if (master_wr_skt_util[target]->is_addr_ch_ready() == false) {
#ifdef DEBUGMSG
			std::cout << name() << " Master is Busy " << std::endl;
#endif
			wait(master_wr_skt_util[target]->addr_sampled);
		}

		sc_core::sc_time delay = SC_ZERO_TIME;
		//Update ID
		tx_slave_map[tx] = slave_id;
		master_wr_skt_util[target]->send_addr_ch(*tx, delay);
		slave_wr_order_queue[target].push(tx);
		wait(master_wr_skt_util[target]->addr_sampled);
		//If Master ready sample tx
		slave_wr_skt_util[slave_id]->get_addr_ch();
#ifdef DEBUGMSG
		std::cout << name() << " Master is Ready to Accept Address "
		<< std::endl;
#endif
		wait();
	}
}

void xsc::sim_ddr_v1_0::xtlm_axi_crossbar::handle_slave_wr_data(
		unsigned int slave_id) {
	xtlm::aximm_payload* tx = slave_wr_skt_util[slave_id]->peek_beat_data();
	int target = decode_address(tx->get_address());
	//If Wrong address send the error response back
	if (target < 0) {
		tx->set_response_status(xtlm::XTLM_ADDRESS_ERROR_RESPONSE);
		slave_wr_skt_util[slave_id]->get_beat_data();
		sc_core::sc_time delay = SC_ZERO_TIME;
		slave_wr_skt_util[slave_id]->send_resp(*tx, delay);
		return;
	}

#ifdef DEBUGMSG
	std::cout << name() << " Write Data Available from Slave for target "
	<< target << "Addr " << tx->get_address() << std::endl;
#endif
	if (slave_wr_order_queue[target].empty()) { //if data arrived before address sampled
#ifdef DEBUGMSG
	std::cout << name()
	<< " Write Data Available but addr not available for tx with Addr "
	<< tx->get_address() << std::endl;
#endif
		next_trigger(master_wr_skt_util[target]->addr_sampled);
		return;
	}

	if (master_wr_skt_util[target]->is_data_ch_ready()
			&& (slave_wr_order_queue[target].front() == tx)) {
		//If Master ready sample tx
    bool is_last_beat = slave_wr_skt_util[slave_id]->is_last_beat();
		slave_wr_skt_util[slave_id]->get_beat_data();
		sc_core::sc_time delay = SC_ZERO_TIME;
		master_wr_skt_util[target]->send_beat_data(*tx, delay);
#ifdef DEBUGMSG
		std::cout << name() << " Master " << target
		<< "is ready and Accepted the Transaction " << std::endl;
#endif
		//If last beat remove the tx from order queue
		if (is_last_beat) {
			slave_wr_order_queue[target].pop();
#ifdef DEBUGMSG
			std::cout << name() << " and its last beat " << std::endl;
#endif
		}
	} else if (slave_wr_order_queue[target].front() != tx) { //If some other slave engaged master, wait till last beat
		next_trigger(master_wr_skt_util[target]->last_beat_sampled);
#ifdef DEBUGMSG
		std::cout << name() << " Master " << target
		<< " is expecting another transaction i.e. "
		<< slave_wr_order_queue[target].front()->get_address()
		<< std::endl;
#endif
	} else { // If master is not ready, possible two reasons either data pending or address not sampled yet.
			 //change the sensitivity to master's event
		next_trigger(
				master_wr_skt_util[target]->beat_sampled
						| master_wr_skt_util[target]->addr_sampled);
#ifdef DEBUGMSG
		std::cout << name() << "Master " << target << " is busy" << std::endl;
#endif
	}
}

void xsc::sim_ddr_v1_0::xtlm_axi_crossbar::handle_master_rd_data(
		unsigned int master_id) {
	xtlm::aximm_payload* tx = master_rd_skt_util[master_id]->peek_beat_data();

#ifdef DEBUGMSG
	std::cout << name() << " Read Data Available from Master " << master_id
	<< "Addr " << tx->get_address() << std::endl;
#endif
	if (slave_rd_skt_util[tx_slave_map[tx]]->is_data_ch_ready()
			&& (master_rd_order_queue[tx_slave_map[tx]].front() == tx)) {
		master_rd_skt_util[master_id]->get_beat_data();
		sc_core::sc_time delay = SC_ZERO_TIME;
		slave_rd_skt_util[tx_slave_map[tx]]->send_beat_data(*tx, delay);

#ifdef DEBUGMSG
		std::cout << name() << " Slave " << tx_slave_map[tx]
		<< "is ready and Accepted the Transaction " << std::endl;
#endif
		//Pop the tx from order queue if last beat available
		if (master_rd_skt_util[master_id]->is_last_beat()) {
			master_rd_order_queue[tx_slave_map[tx]].pop();
#ifdef DEBUGMSG
			std::cout << name() << " and its last beat " << std::endl;
#endif
		}
	} else if (master_rd_order_queue[tx_slave_map[tx]].front() != tx) { // If slave is engaged by some other master, wait till the last beat sampled
		next_trigger(slave_rd_skt_util[tx_slave_map[tx]]->last_beat_sampled);
#ifdef DEBUGMSG
		std::cout << name() << " Slave " << tx_slave_map[tx]
		<< " is expecting another transaction i.e. "
		<< master_rd_order_queue[tx_slave_map[tx]].front()->get_address()
		<< std::endl;
#endif
	} else {
#ifdef DEBUGMSG
		std::cout << name() << "Slave " << tx_slave_map[tx] << " is busy"
		<< std::endl;
#endif
		next_trigger(slave_rd_skt_util[tx_slave_map[tx]]->beat_sampled);
	}
}

void xsc::sim_ddr_v1_0::xtlm_axi_crossbar::handle_master_wr_resp(
		unsigned int master_id) {
	xtlm::aximm_payload* tx = master_wr_skt_util[master_id]->peek_resp();
#ifdef DEBUGMSG
	std::cout << name() << "Write Response available from master " << master_id
	<< " with addr " << tx->get_address() << std::endl;
#endif
	if (slave_wr_skt_util[tx_slave_map[tx]]->is_master_ready()) {
		master_wr_skt_util[master_id]->get_resp();
		sc_core::sc_time delay = SC_ZERO_TIME;
		slave_wr_skt_util[tx_slave_map[tx]]->send_resp(*tx, delay);
#ifdef DEBUGMSG
		std::cout << name() << "Slave Accepted the response " << std::endl;
#endif
	} else {
		next_trigger(slave_wr_skt_util[tx_slave_map[tx]]->resp_sampled);
#ifdef DEBUGMSG
		std::cout << name() << "Slave is busy " << std::endl;
#endif
	}
}

unsigned int xsc::sim_ddr_v1_0::xtlm_axi_crossbar::transport_dbg(
		xtlm::aximm_payload& trans) {
	unsigned int target = decode_address(trans.get_address());
	if (target == -1) {
		return 0;
	}
	if (trans.get_command() == xtlm::XTLM_READ_COMMAND) {
		return master_rd_skt_util[target]->transport_dbg(trans);
	}

	return master_wr_skt_util[target]->transport_dbg(trans);
}


