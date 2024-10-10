// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
/*  (c) Copyright 2014 - 2019 Xilinx, Inc. All rights reserved.

 This file contains confidential and proprietary information
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property
 laws.

 DISCLAIMER
 This disclaimer is not a license and does not grant any
 rights to the materials distributed herewith. Except as
 otherwise provided in a valid license issued to you by
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 (2) Xilinx shall not be liable (whether in contract or tort,
 including negligence, or under any other theory of
 liability) for any loss or damage of any kind or nature
 related to, arising under or in connection with these
 materials, including for any direct, or any indirect,
 special, incidental, or consequential loss or damage
 (including loss of data, profits, goodwill, or any type of
 loss or damage suffered as a result of any action brought
 by a third party) even if such damage or loss was
 reasonably foreseeable or Xilinx had been advised of the
 possibility of the same.

 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or
 systems, Class III medical devices, nuclear facilities,
 applications related to the deployment of airbags, or any
 other applications that could lead to death, personal
 injury, or severe property or environmental damage
 (individually and collectively, "Critical
 Applications"). Customer assumes the sole risk and
 liability of any use of Xilinx products in Critical
 Applications, subject only to applicable laws and
 regulations governing limitations on product liability.

 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 PART OF THIS FILE AT ALL TIMES.                       */
/* Auto-generated Code */
#include "kdma.common.h"
#include "kdma.config.h"

kdma::kdma(sc_core::sc_module_name p_name,
		xsc::common_cpp::properties _properties) :
		sc_core::sc_module(p_name), m_axi__rd_data_fifo(256), m_axi__wr_data_fifo(
				256), t_136_139(1), t_136_137(1), t_137_138(1), mem_manager(this) {
	m_properties = _properties;

	m_axi__wr_socket = new xtlm::xtlm_aximm_initiator_socket("m_axi_wr_skt",
			m_properties.getLongLong("C_M_AXI_GMEM_DATA_WIDTH") / 8);
	m_axi__rd_socket = new xtlm::xtlm_aximm_initiator_socket("m_axi_rd_skt",
			m_properties.getLongLong("C_M_AXI_GMEM_DATA_WIDTH") / 8);
	m_axi__rd_socket_util = new xtlm::xtlm_aximm_initiator_rd_socket_util(
			"m_axi_rd_skt", xtlm::aximm::HANDSHAKE,
			m_properties.getLongLong("C_M_AXI_GMEM_DATA_WIDTH") / 8);
	m_axi__wr_socket_util = new xtlm::xtlm_aximm_initiator_wr_socket_util(
			"m_axi_wr_skt", xtlm::aximm::HANDSHAKE,
			m_properties.getLongLong("C_M_AXI_GMEM_DATA_WIDTH") / 8);

	s_axilite_control_rd_socket = new xtlm::xtlm_aximm_target_socket(
			"s_axilite_rd_skt", 32);
	s_axilite_control_wr_socket = new xtlm::xtlm_aximm_target_socket(
			"s_axilite_wr_skt", 32);
	s_axilite_control_rd_socket_util =
			new xtlm::xtlm_aximm_target_rd_socket_util("s_axilite_rd_skt_util",
					xtlm::aximm::TRANSACTION, 32);
	s_axilite_control_wr_socket_util =
			new xtlm::xtlm_aximm_target_wr_socket_util("s_axilite_wr_skt_util",
					xtlm::aximm::TRANSACTION, 32);

	m_axi__rd_socket_util->rd_socket(*m_axi__rd_socket);
	m_axi__wr_socket_util->wr_socket(*m_axi__wr_socket);
	s_axilite_control_rd_socket->bind(
			s_axilite_control_rd_socket_util->rd_socket);
	s_axilite_control_wr_socket->bind(
			s_axilite_control_wr_socket_util->wr_socket);

	m_properties = _properties;
	m_axi__wr_resp_expected = 0;
	blockindex_0_reg2mem = 0;
	empty = 0;
	tmp_1 = 0;
	gmem_addr_3_wr_req = 0;
	gmem_addr_2_rd_req = 0;
	gmem_addr_3_wr_resp = 0;
	icmp_ln8 = 0;
	tmp = 0;
	gmem_addr = 0;
	m_axi__rd_addr = 0;
	empty_9 = 0;
	m_axi__rd_beats = 0;
	tmp_2 = 0;
	m_axi__wr_addr = 0;
	m_axi__wr_resp_received = 0;
	m_axi__wr_pending_tx = 0;
	empty_7 = 0;
	input0_read = 0;
	output0_read = 0;
	arg_num_blocks = 0;
	empty_10 = 0;
	add_ln8 = 0;
	m_axi__rd_pending_tx = 0;
	empty_8 = 0;
	gmem_addr_1 = 0;
	//Initialize register with ap_ready
	mReg.writeAtOffset(0,4);

	SC_METHOD(write_axilite_reg);
	dont_initialize();
	sensitive << s_axilite_control_wr_socket_util->transaction_available;

	SC_METHOD(read_axilite_reg);
	dont_initialize();
	sensitive << s_axilite_control_rd_socket_util->transaction_available;

	SC_THREAD(launch_kdma);
	dont_initialize();
	sensitive << event_start;

	SC_THREAD(s_1);
	dont_initialize();
	sensitive << kdma_fsm_entry;

	SC_THREAD(s_135);
	dont_initialize();
	sensitive << t_1_135;

	SC_THREAD(s_136);
	dont_initialize();
	sensitive << t_135_136;

	SC_THREAD(s_137);

	SC_THREAD(s_138);

	SC_THREAD(s_139);

	SC_THREAD(s_270);
	dont_initialize();
	sensitive << t_139_270;

	SC_THREAD(handle_m_axi__rd_req);

	SC_THREAD(handle_m_axi__rd_data);

	SC_THREAD(handle_m_axi__wr_req);

	SC_THREAD(handle_m_axi__wr_data);

	SC_THREAD(handle_m_axi__wr_resp);

	SC_THREAD(calculate_clk_period);
	dont_initialize();
	sensitive << clk;

	SC_METHOD(interrupt_handling);
	dont_initialize();
	sensitive << for_interrupt;

}

void kdma::read_axilite_reg() {
	if (s_axilite_control_rd_socket_util->is_trans_available() == false)
		return;
	axi_mm_pd * trans = s_axilite_control_rd_socket_util->get_transaction();
	u64_t addr = trans->get_address();
	u32_t data = mReg.read32(addr);
	unsigned char * data_ptr = trans->get_data_ptr();
	std::memcpy(data_ptr, &data, sizeof(data));
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	s_axilite_control_rd_socket_util->send_data(*trans, delay);
	//Reset register if read
	if (addr == 0 && ((mReg.read32(0) & 6) != 0)) {
		if (mReg.read32(0) & 128) { //restart condition
			event_start.notify(clk_period);
			mReg.writeAtOffset(0, 128);
		} else {
			mReg.writeAtOffset(0, 4);
		}
	}
}

void kdma::write_axilite_reg() {
	if (s_axilite_control_wr_socket_util->is_trans_available() == false)
		return;
	axi_mm_pd * trans = s_axilite_control_wr_socket_util->get_transaction();
	u64_t addr = trans->get_address();
	unsigned char * data_ptr = trans->get_data_ptr();
	unsigned int data = *((unsigned int*) data_ptr);
	sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
	trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
	if ((addr == 0) && (data & 0x00000001)) {
		event_start.notify(sc_core::SC_ZERO_TIME);
	}
	if (addr == ADDR_ISR) {
		data = mReg.read32(ADDR_ISR) ^ data;
		//interrupt handling
		for_interrupt.notify(sc_core::SC_ZERO_TIME);
	}
	mReg.writeAtOffset(addr, data);
	s_axilite_control_wr_socket_util->send_resp(*trans, delay);
}

void kdma::interrupt_handling() {
	if (mReg.read32(ADDR_GIE) == 0x01) {
		if ((mReg.read32(ADDR_ISR) & 0x3) != 0) {
			interrupt.write(1);
		} else {
			interrupt.write(0);
		}
	}
}
void kdma::launch_kdma() {
	while (1) {
		_stub_kdma();
		wait(event_start);
	}
}

void kdma::_stub_kdma() {
	while (1) {
		kdma_fsm_entry.notify(sc_core::SC_ZERO_TIME);
		wait(kdma_fsm_exit);
		mReg.setExitReg();
		for_interrupt.notify(sc_core::SC_ZERO_TIME);
		break;
	}
}

void kdma::calculate_clk_period() {
	sc_core::sc_time first_edge = sc_core::sc_time_stamp();
	sc_core::wait();
	sc_core::sc_time second_edge = sc_core::sc_time_stamp();
	clk_period = (second_edge - first_edge) * 2;
}

void kdma::handle_m_axi__rd_req() {
	while (1) {
		if (m_axi__rd_pending_tx == 0) {
			auxilary::data_req_t req_data = m_axi__rd_req_fifo.read();
			m_axi__rd_pending_tx = req_data.nbeats;
			m_axi__rd_addr = req_data.addr;
		}
		assert(m_axi__rd_socket_util->is_addr_ch_ready() == true);
		axi_mm_pd* payload = mem_manager.get_payload();
		payload->acquire();
		payload->set_address(m_axi__rd_addr);
		payload->set_burst_length(
				m_axi__rd_pending_tx >= 16 ? 16 : m_axi__rd_pending_tx); //TODO:: declare this MAX_RD_BEATS);
		payload->set_burst_size(
				m_properties.getLongLong("C_M_AXI_GMEM_DATA_WIDTH") / 8);
		payload->set_burst_type(1);
		payload->set_command(xtlm::XTLM_READ_COMMAND);
		payload->create_and_get_data_ptr(
				payload->get_burst_size() * payload->get_burst_length()); //TODO:: decalre this MAX_RD_BEATS);
		payload->set_cache(m_properties.getUint32("C_M_AXI_GMEM_CACHE_VALUE"));
		payload->set_prot(m_properties.getUint32("C_M_AXI_GMEM_PROT_VALUE"));
		sc_core::sc_time delay(0, sc_core::SC_NS);
		m_axi__rd_socket_util->send_addr_ch(*payload, delay);
		wait(m_axi__rd_socket_util->addr_sampled);
		m_axi__rd_addr += payload->get_burst_size()
				* payload->get_burst_length(); //TODO:: MAX_RD_BEATS;
		m_axi__rd_pending_tx -= payload->get_burst_length(); //MAX_RD_BEATS;
	}
}

void kdma::handle_m_axi__rd_data() {
	while (1) {
		wait(m_axi__rd_socket_util->beat_available);
		axi_mm_pd * payload = m_axi__rd_socket_util->peek_beat_data();
		bn_t<512> data(
				(payload->get_data_ptr()
						+ (m_axi__rd_beats * payload->get_burst_size())));
		m_axi__rd_data_fifo.write(data);
		m_axi__rd_socket_util->get_beat_data();
		m_axi__rd_beats++;
		if (m_axi__rd_beats == payload->get_burst_length()) {
			m_axi__rd_beats = 0;
			payload->release();
		}
	}
}

void kdma::handle_m_axi__wr_req() {
	while (1) {
		if (m_axi__wr_pending_tx == 0) {
			auxilary::data_req_t data_req = m_axi__wr_req_fifo.read();
			m_axi__wr_pending_tx = data_req.nbeats;
			m_axi__wr_addr = data_req.addr;
			m_axi__wr_resp_received = 0;
			m_axi__wr_resp_expected = (int) ceil(
					m_axi__wr_pending_tx / (double) 16.0); //TODO:: Get this value MAX_WR_BEATS;
		}
		assert(m_axi__wr_socket_util->is_addr_ch_ready() == true);
		axi_mm_pd * payload = mem_manager.get_payload();
		payload->acquire();
		payload->set_address(m_axi__wr_addr);
		payload->set_burst_length(
				m_axi__wr_pending_tx >= 16 ? 16 : m_axi__wr_pending_tx); //TODO:: MAX_WR_BEATS);
		payload->set_burst_size(
				m_properties.getLongLong("C_M_AXI_GMEM_DATA_WIDTH") / 8);
		payload->set_burst_type(1);
		payload->set_command(xtlm::XTLM_WRITE_COMMAND);
		payload->create_and_get_data_ptr(
				payload->get_burst_size() * payload->get_burst_length()); //TODO:: //MAX_WR_BEATS);
		payload->create_and_get_byte_enable_ptr(
				payload->get_burst_size() * payload->get_burst_length()); //TODO:: MAX_WR_BEATS);
		payload->set_cache(m_properties.getUint32("C_M_AXI_GMEM_CACHE_VALUE"));
		payload->set_prot(m_properties.getUint32("C_M_AXI_GMEM_PROT_VALUE"));
		sc_core::sc_time delay(0, sc_core::SC_NS);
		auxilary::wr_beat_t wr_bs;
		wr_bs.payload = payload;
		wr_bs.beats_served = 0;
		m_axi__wr_queue.push(wr_bs);
		m_axi__wr_socket_util->send_addr_ch(*payload, delay);
		sc_core::wait(m_axi__wr_socket_util->addr_sampled);
		m_axi__wr_addr += payload->get_burst_size()
				* payload->get_burst_length(); //MAX_WR_BEATS;
		m_axi__wr_pending_tx -= payload->get_burst_length(); //MAX_WR_BEATS;
	}
}

void kdma::handle_m_axi__wr_data() {
	while (1) {
		auto data = m_axi__wr_data_fifo.read();
		if (m_axi__wr_socket_util->is_data_ch_ready() == false) {
			wait(
					m_axi__wr_socket_util->addr_sampled
							| m_axi__wr_socket_util->beat_sampled);
		}
		axi_mm_pd * payload = m_axi__wr_queue.front().payload;
		unsigned char * data_ptr = payload->get_data_ptr();
		std::memcpy(
				data_ptr
						+ (m_axi__wr_queue.front().beats_served
								* payload->get_burst_size()), data.data,
				payload->get_burst_size());
		unsigned char * byte_en_ptr = payload->get_byte_enable_ptr();
		std::memset(byte_en_ptr, 0xFF, payload->get_byte_enable_length());
		m_axi__wr_queue.front().beats_served += 1;
		if (m_axi__wr_queue.front().beats_served
				== payload->get_burst_length()) {
			m_axi__wr_queue.pop();
		}
		sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
		m_axi__wr_socket_util->send_beat_data(*payload, delay);
		wait(m_axi__wr_socket_util->beat_sampled);
	}
}

void kdma::handle_m_axi__wr_resp() {
	while (1) {
		wait(m_axi__wr_socket_util->resp_available);
		assert(m_axi__wr_socket_util->is_resp_available() == true);
		m_axi__wr_resp_received++;
		if (m_axi__wr_resp_received == m_axi__wr_resp_expected) {
			m_axi__wr_resp_fifo.write(true);
		}
		axi_mm_pd * payload = m_axi__wr_socket_util->get_resp();
		payload->release();
	}
}

u32_t kdma::_ssdm_op_Read_s_axilite_i32P(p64_t input1) {
	return mReg.read32(input1);
}

u64_t kdma::_ssdm_op_Read_s_axilite_i64P(p64_t n_blocks) {
	return mReg.read64(n_blocks);
}

i1_t kdma::_ssdm_op_ReadReq_m_axi_i512P(p64_t gmem_addr, u32_t empty_8) {
	auxilary::data_req_t req_data;
	req_data.addr = gmem_addr;
	req_data.nbeats = empty_8;
	m_axi__rd_req_fifo.write(req_data);
	return true;
}

i1_t kdma::_ssdm_op_WriteReq_m_axi_i512P(p64_t gmem_addr_1, u32_t empty_8) {
	auxilary::data_req_t req_data;
	req_data.addr = gmem_addr_1;
	req_data.nbeats = empty_8;
	m_axi__wr_req_fifo.write(req_data);
	return true;
}

bn_t<512> kdma::_ssdm_op_Read_m_axi_i512P(p64_t gmem_addr) {
	auto data = m_axi__rd_data_fifo.read();
	return data;
}

void kdma::_ssdm_op_Write_m_axi_i512P(bn_t<512> gmem_addr_read) {
	m_axi__wr_data_fifo.write(gmem_addr_read);
}

i1_t kdma::_ssdm_op_WriteResp_m_axi_i512P(p64_t gmem_addr_1) {
	m_axi__wr_resp_fifo.read();
	return true;
}
