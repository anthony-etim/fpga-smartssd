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

#include "axi_app_xtlm.h"
#include "extensions/P2P_XTLM_extension.h"
//#define DEBUGMSG 1

class xsc::sim_ddr_v1_0::axi_app_xtlm::target_rd_util: public xtlm::xtlm_aximm_target_rd_socket_util {
public:
	target_rd_util(sc_core::sc_module_name p_name,
			xtlm::aximm::granularity g_hint, int width_p,
			xsc::sim_ddr_v1_0::axi_app_xtlm* _parent) :
			xtlm::xtlm_aximm_target_rd_socket_util(p_name, g_hint, width_p) {
		this->parent = _parent;
	}
	unsigned int transport_dbg_cb(xtlm::aximm_payload& trans) {
		return parent->transport_dbg(trans);
	}
private:
	xsc::sim_ddr_v1_0::axi_app_xtlm* parent;
};

class xsc::sim_ddr_v1_0::axi_app_xtlm::target_wr_util: public xtlm::xtlm_aximm_target_wr_socket_util {
public:
	target_wr_util(sc_core::sc_module_name p_name,
			xtlm::aximm::granularity g_hint, int width_p,
			xsc::sim_ddr_v1_0::axi_app_xtlm* _parent) :
			xtlm::xtlm_aximm_target_wr_socket_util(p_name, g_hint, width_p) {
		this->parent = _parent;
	}
	unsigned int transport_dbg_cb(xtlm::aximm_payload& trans) {
		return parent->transport_dbg(trans);
	}
private:
	xsc::sim_ddr_v1_0::axi_app_xtlm* parent;
};

xsc::sim_ddr_v1_0::axi_app_xtlm::axi_app_xtlm(sc_core::sc_module_name p_name,
		xsc::common_cpp::properties model_param, unsigned int bus_width) :
		xtlm::xtlm_aximm_initiator_base("axi_app"), sc_core::sc_module(p_name) {

	//Socket Initialisation
	slave_rd_skt = new xtlm::xtlm_aximm_target_socket("rd_skt", bus_width);
	slave_wr_skt = new xtlm::xtlm_aximm_target_socket("wr_skt", bus_width);

	//Util Initialisation
	slave_rd_skt_util = new class target_rd_util("rd_skt_util",
			xtlm::aximm::granularity::HANDSHAKE, bus_width, this);
	slave_wr_skt_util = new class target_wr_util("rd_skt_util",
			xtlm::aximm::granularity::HANDSHAKE, bus_width, this);

	//Binding of sockets to Util classes
	slave_rd_skt->bind(slave_rd_skt_util->rd_socket);
	slave_wr_skt->bind(slave_wr_skt_util->wr_socket);

	app_rd_skt = new xtlm::xtlm_aximm_initiator_socket("app_rd_skt", bus_width);
	app_wr_skt = new xtlm::xtlm_aximm_initiator_socket("app_wr_skt", bus_width);
	app_rd_skt->bind(*this);
	app_wr_skt->bind(*this);

	SC_METHOD(simulate_single_cycle_axiclk);
	sensitive << axi_clk.pos();
	dont_initialize();

	SC_METHOD(sample_slave_wr_addr);
	sensitive << slave_wr_skt_util->addr_available;
	dont_initialize();

	SC_METHOD(sample_slave_rd_addr);
	sensitive << slave_rd_skt_util->addr_available;
	dont_initialize();

  if(getenv("SDX_USE_SHARED_MEMORY"))
    fmodel_instance = new ddr3_fmodel_shared_memory(this->name()); //name() returns hierarchical name of ddr systemc module instance
  else
    fmodel_instance = new ddr3_axi_ram_fmodel(this->name()); //name() returns hierarchical name of ddr systemc module instance
	
  if (model_param.hasParameter("isStandalone")) {
		fmodel_instance->set_standalone_flag(
				model_param.getLongLong("isStandalone"));
	} else {
		fmodel_instance->set_standalone_flag(0);
	}

	slave_req_size = 4;

	mem_mngr = new xtlm::xtlm_aximm_mem_manager();

	arb_rd_cnt = 0;
	arb_wr_cnt = 0;
	arb_rd_limit = 0;
	arb_wr_limit = 0;
	rd_data_buffer = 0;
	ongoing_cmd = 0;
	ongoing_tx = nullptr;
	app_req_pending = false;

	//AXI2APP converter parameters
	//These are with assumption of 4:1 and BL8 configuration
	C_AXSIZE = 6; //TO DO::Get the width of MC. C_AXSIZE = log2(MC_WIDTH)
	MC_WIDTH = 64; //In Bytes
	P_MC_BURST_MASK = 0x3FFFFFF8;

}

void xsc::sim_ddr_v1_0::axi_app_xtlm::end_of_simulation()
{ 
  if (fmodel_instance)
  {
    fmodel_instance->reset_fmodel();
  }
}

xsc::sim_ddr_v1_0::axi_app_xtlm::~axi_app_xtlm() {
	
    if(mem_mngr) {
        delete mem_mngr;
    }

    if (slave_rd_skt) {
		delete slave_rd_skt;
	}

	if (slave_wr_skt) {
		delete slave_wr_skt;
	}

	if (slave_rd_skt_util) {
		delete slave_rd_skt_util;
	}

	if (slave_wr_skt_util) {
		delete slave_wr_skt_util;
	}
}

void xsc::sim_ddr_v1_0::axi_app_xtlm::sample_slave_rd_addr() {
	if (slave_rd_request.size() <= slave_req_size
			&& slave_rd_skt_util->is_addr_ch_available()) {
		slave_tx_status* tx_ptr = get_status_tx();
		tx_ptr->tx = slave_rd_skt_util->get_addr_ch();
		tx_ptr->tx->acquire();
		tx_ptr->tx->set_response_status(xtlm::XTLM_OK_RESPONSE);
		slave_rd_request.push_back(tx_ptr);
		//DDR Read: as soon as the call is received
		ddr_read(*(tx_ptr->tx), (tx_ptr->tx->get_axi_id() != 0));
#ifdef DEBUGMSG
		std::cout << name() << " Sampling Read Address Channel " << std::endl;
#endif
	} else {
		next_trigger(sample_rd_addr);
	}
}

void xsc::sim_ddr_v1_0::axi_app_xtlm::sample_slave_wr_addr() {
	if (slave_wr_request.size() <= slave_req_size
			&& slave_wr_skt_util->is_addr_ch_available()) {
		slave_tx_status* tx_ptr = get_status_tx();
		tx_ptr->tx = slave_wr_skt_util->get_addr_ch();
		tx_ptr->tx->acquire();
		tx_ptr->tx->set_response_status(xtlm::XTLM_OK_RESPONSE);
		slave_wr_request.push_back(tx_ptr);
#ifdef DEBUGMSG
		std::cout << name() << " Sampling Write Address Channel with Address "
		<< tx_ptr->tx->get_address() << std::endl;
#endif
	} else {
		next_trigger(sample_wr_addr);
	}
}

void xsc::sim_ddr_v1_0::axi_app_xtlm::process_read() {
	if (app_req_pending)
		return;

	if (ongoing_tx == nullptr) {
		for (auto it = slave_rd_request.begin(); it != slave_rd_request.end();
				++it) {
			if ((*it)->split_done == false) {
				ongoing_tx = *it;
				break;
			}
		}
	}
	if (ongoing_tx == nullptr) { //Return if there is nothing to process
		return;
	}

#ifdef DEBUGMSG
	std::cout << name() << "  " << __func__ << std::endl;
#endif
	unsigned addr = ongoing_tx->tx->get_address()
			+ (ongoing_tx->n_beats_processed * MC_WIDTH);
	addr = (addr >> C_AXSIZE - 3) & P_MC_BURST_MASK;
	xtlm::aximm_payload* strans = mem_mngr->get_payload();
	strans->set_axi_id(ongoing_tx->tx->get_axi_id());
	strans->set_address(addr);
	strans->set_data_length(ongoing_tx->tx->get_burst_size());
	strans->set_byte_enable_length(ongoing_tx->tx->get_burst_size());
	strans->set_command(xtlm::XTLM_READ_COMMAND);
	strans->acquire();
	tlm::tlm_phase phase = xtlm::BEGIN_RADDR;
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	tlm::tlm_sync_enum resp = (*app_rd_skt)->nb_transport_fw(*strans, phase,
			delay);
#ifdef DEBUGMSG
	std::cout << name() << " Sending Read Call to APP " << std::endl;
#endif
	ongoing_tx->n_beats_processed += 1;

	if (resp == tlm::TLM_UPDATED && phase == xtlm::END_RADDR) {
		update_app_req_status();
	} else {
		app_req_pending = true;
	}
}

void xsc::sim_ddr_v1_0::axi_app_xtlm::process_write() {
	if (app_req_pending) {
#ifdef DEBUGMSG
		std::cout << name() << __func__ << " APP Req Pending" << std::endl;
#endif
		return;
	}

	if (ongoing_tx == nullptr) {
		for (auto it = slave_wr_request.begin(); it != slave_wr_request.end();
				++it) {
			if ((*it)->split_done == false) {
				ongoing_tx = *it;
				break;
			}
		}
	}

	if (ongoing_tx == nullptr) {
		return;
	}

	if (slave_wr_skt_util->is_beat_available() == false) {
#ifdef DEBUGMSG
		std::cout << name() << __func__ << " Beat is not available"
		<< std::endl;
#endif
		return;
	}

#ifdef DEBUGMSG
	std::cout << name() << " Sampling Write Data for Address "
	<< ongoing_tx->tx->get_address() << std::endl;
#endif

	slave_wr_skt_util->get_beat_data();

	unsigned addr = ongoing_tx->tx->get_address()
			+ (ongoing_tx->n_beats_processed * MC_WIDTH);
	addr = (addr >> C_AXSIZE - 3) & P_MC_BURST_MASK;
	xtlm::aximm_payload* strans = mem_mngr->get_payload();
	strans->set_axi_id(ongoing_tx->tx->get_axi_id());
	strans->set_address(addr);
	strans->set_data_length(ongoing_tx->tx->get_burst_size());
	strans->set_byte_enable_length(ongoing_tx->tx->get_burst_size());
	strans->set_command(xtlm::XTLM_WRITE_COMMAND);
	strans->acquire();
	tlm::tlm_phase phase = xtlm::BEGIN_WADDR;
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	tlm::tlm_sync_enum resp = (*app_wr_skt)->nb_transport_fw(*strans, phase,
			delay);
	ongoing_tx->n_beats_processed += 1;

	if (resp == tlm::TLM_UPDATED && phase == xtlm::END_WADDR) {
		update_app_req_status();
	} else
		app_req_pending = true;
}

void xsc::sim_ddr_v1_0::axi_app_xtlm::simulate_single_cycle_axiclk() {
//Sample Tx from slave Sockets
	//sample_slave_rd_addr();
	//sample_slave_wr_addr();

	if (select_cmd() == 0) { //Process read// Make a fw call to APP
		process_read();
	} else { //Process write
		process_write();
	}
	process_read_data();
	process_write_resp();
}

unsigned int xsc::sim_ddr_v1_0::axi_app_xtlm::select_cmd() {
//TODO::This is based on RD PRI REG Arbitration
//Don't support any other kind of arbitration

	/*Read and write address channels are served with equal priority in this mode. The requests
	 from the write address channel are processed when one of the following occurs:
	 --No pending requests from read address channel.
	 --Read starve limit of 256 is reached. It is only checked at the end of the burst.
	 --Read wait limit of 16 is reached.
	 The requests from the read address channel are processed in a similar method.*/
	if (ongoing_cmd == 0) { //Read
		if (ongoing_tx) { //Wait till all the beats are done
			arb_rd_cnt += 1;
			arb_wr_cnt = 0;
			arb_rd_limit = 0;
			return ongoing_cmd;
		} else {
			if (slave_wr_request.empty()) { //No write request, cont as read
				arb_rd_cnt += 1;
				arb_rd_limit = 0;
				return ongoing_cmd;
			}
			if (arb_rd_cnt >= 256) { //Shift to write if starve count exceeds
				ongoing_cmd = 1;
				arb_rd_cnt = 0;
				arb_rd_limit = 0;
				return ongoing_cmd;
			}
			if (rd_data_buffer >= 30) {
				arb_rd_limit += 1;
			}
			if (arb_rd_limit >= 16 && (slave_wr_request.empty() == false)) { //If Read data buffer is full, start processing write
				ongoing_cmd = 1;
				arb_rd_cnt = 0;
				arb_rd_limit = 0;
				return ongoing_cmd;
			}
			if (slave_rd_request.empty()) { //If read queue is empty shift to write
				ongoing_cmd = 1;
				arb_rd_cnt = 0;
				arb_rd_limit = 0;
				return ongoing_cmd;
			}
		}
	} else { //Write
		if (ongoing_tx) { //Wait till the beat is available
			if (slave_wr_skt_util->is_beat_available() == false) { //Increment limit is beat not available
				arb_wr_limit += 1;
			} else {
				arb_wr_limit = 0;
			}
			if (arb_wr_limit >= 16 && (slave_rd_request.empty() == false)
					&& (app_req_pending == false)) { //if beat not available for 16 cycles, move to read and set ongoing to null
				ongoing_cmd = 0;
				arb_wr_limit = 0;
				arb_wr_cnt = 0;
				ongoing_tx = nullptr;
				return ongoing_cmd;
			}
			arb_wr_cnt += 1;
			arb_rd_cnt = 0;
			return ongoing_cmd;
		} else {
			if (slave_rd_request.empty()) { //No read request, cont as write
				arb_wr_cnt += 1;
				arb_wr_limit = 0;
				return ongoing_cmd;
			}
			if (arb_wr_cnt >= 256) { //Shift to read if starve count exceeds
				ongoing_cmd = 0;
				arb_wr_cnt = 0;
				arb_wr_limit = 0;
				return ongoing_cmd;
			}
			if (slave_wr_request.empty()) { // Shift to read, if no more write
				ongoing_cmd = 0;
				arb_wr_cnt = 0;
				arb_wr_limit = 0;
				return ongoing_cmd;
			}
		}
	}
	return ongoing_cmd;
}

tlm::tlm_sync_enum xsc::sim_ddr_v1_0::axi_app_xtlm::nb_transport_bw(
		xtlm::aximm_payload& trans, tlm::tlm_phase& phase,
		sc_core::sc_time& delay) {
	if (phase == xtlm::END_RADDR) {
		update_app_req_status();
	}

	if (phase == xtlm::BEGIN_RDATA) {
		rd_data_buffer += 1;
		if (ongoing_tx) {
			update_app_req_status();
		}
		process_read_data();
		trans.release();
#ifdef DEBUGMSG
		std::cout << name() << " Receiving Read Data from APP " << std::endl;
#endif
	}

	if (phase == xtlm::END_WADDR) {
		update_app_req_status();
	}
	if (phase == xtlm::BEGIN_WRESP) {
		if (ongoing_tx) {
			update_app_req_status();
		}
		update_write_resp();
		process_write_resp();
		trans.release();
	}
	return tlm::TLM_ACCEPTED;
}

void xsc::sim_ddr_v1_0::axi_app_xtlm::update_app_req_status() {
	app_req_pending = false;
	if (ongoing_tx->n_beats_processed == ongoing_tx->tx->get_burst_length()) {
		ongoing_tx->split_done = true;
		ongoing_tx->n_beats_processed = 0;
		ongoing_tx = nullptr;
	}
}

void xsc::sim_ddr_v1_0::axi_app_xtlm::process_read_data() {
	if (slave_rd_request.empty()) {
		return;
	}
	if (slave_rd_skt_util->is_data_ch_ready() && (rd_data_buffer != 0)) {
		sc_core::sc_time delay = SC_ZERO_TIME;
		slave_tx_status* tx_ptr = slave_rd_request.front();
		slave_rd_skt_util->send_beat_data(*(tx_ptr->tx), delay);
		slave_rd_request.front()->n_beats_received_from_app += 1;

		if (tx_ptr->tx->get_burst_length()
				== tx_ptr->n_beats_received_from_app) {
			tx_ptr->tx->release();
			free_pool.push(tx_ptr);
			slave_rd_request.pop_front();
			sample_rd_addr.notify(sc_core::SC_ZERO_TIME);
#ifdef DEBUGMSG
			std::cout << name() << " Sending Read Last " << std::endl;
#endif
		}
		rd_data_buffer -= 1;
	}
}

void xsc::sim_ddr_v1_0::axi_app_xtlm::update_write_resp() {
	for (auto it = slave_wr_request.begin(); it != slave_wr_request.end();
			++it) {
		if ((*it)->n_beats_received_from_app < (*it)->tx->get_burst_length()) {
			(*it)->n_beats_received_from_app += 1;
			break;
		}
	}
}

void xsc::sim_ddr_v1_0::axi_app_xtlm::process_write_resp() {
	if (slave_wr_request.empty()) {
		return;
	}
	if (slave_wr_skt_util->is_master_ready()) {
		slave_tx_status* tx_ptr = slave_wr_request.front();
		if (tx_ptr->n_beats_received_from_app
				== tx_ptr->tx->get_burst_length()) {
			//DDR Write:: Just before sending the response. To ensure we received all the write data
			ddr_write(*(tx_ptr->tx));
			sc_core::sc_time delay = SC_ZERO_TIME;
			slave_wr_skt_util->send_resp(*(tx_ptr->tx), delay);
			tx_ptr->tx->release();
			free_pool.push(tx_ptr);
			slave_wr_request.pop_front();
			sample_wr_addr.notify(sc_core::SC_ZERO_TIME);
#ifdef DEBUGMSG
			std::cout << name() << " Sending Write Resp " << std::endl;
#endif
		}
	}
}

void xsc::sim_ddr_v1_0::axi_app_xtlm::ddr_read(xtlm::aximm_payload& trans,
		bool enable_strb) {
	fmodel_instance->readDevMem(trans.get_address(), trans.get_data_ptr(),
			trans.get_data_length(), enable_strb);
}

void xsc::sim_ddr_v1_0::axi_app_xtlm::ddr_write(xtlm::aximm_payload& trans) {
	//Check if this is a P2P request if so create a P2P buffer otherwise process it as normal transaction
  xtlm::xtlm_extension<xsc::extension::P2P_XTLM_extension>* bExt;
	trans.get_extension(bExt);
	xsc::extension::P2P_XTLM_extension * ext = dynamic_cast<xsc::extension::P2P_XTLM_extension *> (bExt);
	if (ext!=nullptr) {
		std::string filename;
		bool ret= true;
    if(ext->getType() == xsc::extension::TYPE::ALLOC_BO)
      ret = fmodel_instance->createMMappedBuffer(trans.get_address(),ext->getSize(),filename);
    else if(ext->getType() == xsc::extension::TYPE::FREE_BO)
      ret = fmodel_instance->freePage(trans.get_address());
    else if(ext->getType() == xsc::extension::TYPE::IMPORT_BO)
    {
      ret = fmodel_instance->importBO(trans.get_address(), ext->getFileName(), ext->getSize());
    }
    else if(ext->getType() == xsc::extension::TYPE::COPY_BO)
    {
      ret = fmodel_instance->copyBO(trans.get_address(),ext->getFileName(),ext->getSize(), ext->getSrcOffset(), ext->getDstOffset());
    }
		ext->setResponse(ret);
		ext->setFileName(filename);
	} else {
		writeDevMemWithByteEnable(trans.get_address(), trans.get_data_ptr(),
			trans.get_byte_enable_ptr(), trans.get_byte_enable_length(),
			trans.get_data_length());
	}
}

void xsc::sim_ddr_v1_0::axi_app_xtlm::writeDevMemWithByteEnable(
		uint64_t src_offset, void* src, void* byte_enable,
		unsigned int byte_enable_length, unsigned int size) {
	unsigned int src_size = 0;
	for (unsigned int i = 0; i < size; i++) {
		if ((((unsigned char*) byte_enable)[i]) == 0xFF) {
			src_size++;
			if (i == size - 1) {
				//buffer always starts from 0th address
				uint64_t addr = (src_offset + (i - (src_size - 1)));
				fmodel_instance->writeDevMem(addr,
						((unsigned char*) (src)) + (i - (src_size - 1)),
						src_size);
				src_size = 0;
				src_offset = src_offset + src_size;
			}
		} else {
			if (src_size != 0) {
				//buffer always starts from 0th address
				uint64_t addr = (src_offset + (i - (src_size)));
				fmodel_instance->writeDevMem(addr,
						((unsigned char*) (src)) + (i - src_size), src_size);
				src_size = 0;
				src_offset = src_offset + src_size;
			}
		}
	}
}

xsc::sim_ddr_v1_0::axi_app_xtlm::slave_tx_status* xsc::sim_ddr_v1_0::axi_app_xtlm::get_status_tx() {
	slave_tx_status* ret_val;
	if (free_pool.empty()) {
		ret_val = new slave_tx_status();
		return ret_val;
	}
	ret_val = free_pool.front();
	ret_val->reset();
	free_pool.pop();
	return ret_val;
}

unsigned int xsc::sim_ddr_v1_0::axi_app_xtlm::transport_dbg(
		xtlm::aximm_payload& trans) {
	if (trans.get_command() == xtlm::XTLM_WRITE_COMMAND) {
		ddr_write(trans);
		trans.set_response_status(xtlm::XTLM_OK_RESPONSE);
		return trans.get_data_length();
	} else if (trans.get_command() == xtlm::XTLM_READ_COMMAND) {
		ddr_read(trans, false);
		trans.set_response_status(xtlm::XTLM_OK_RESPONSE);
		return trans.get_data_length();
	}

	return 0;
}


