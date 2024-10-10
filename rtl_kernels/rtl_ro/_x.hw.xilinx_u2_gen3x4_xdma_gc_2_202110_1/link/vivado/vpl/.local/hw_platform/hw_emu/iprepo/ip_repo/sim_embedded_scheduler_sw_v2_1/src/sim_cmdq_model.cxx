// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "sim_cmdq_model.h"
#include <sstream>

sim_cmdq_model::sim_cmdq_model(const sc_module_name& module_name) :
sc_module(module_name), m_cmdq_mem(ERT_CQ_SIZE) {
	//Slave interface used to R/W to CommandQueue
	saxi_cq_read_skt = new xtlm::xtlm_aximm_target_socket("saxi_cq_read_skt",32);
	saxi_cq_write_skt = new xtlm::xtlm_aximm_target_socket("saxi_cq_wrie_skt",32);
	m_saxi_cq_read_skt_util = new xtlm::xtlm_aximm_target_rd_socket_util("saxi_cq_read_skt_util", xtlm::aximm::granularity::TRANSACTION, 32);
	m_saxi_cq_write_skt_util = new xtlm::xtlm_aximm_target_wr_socket_util("saxi_cq_write_skt_util", xtlm::aximm::granularity::TRANSACTION, 32);
	m_cmdq_size = ERT_CQ_SIZE;
	saxi_cq_read_skt->bind((m_saxi_cq_read_skt_util->rd_socket));
	saxi_cq_write_skt->bind((m_saxi_cq_write_skt_util->wr_socket));

	SC_THREAD(methodProcessTransactionRead);

	SC_THREAD(methodProcessTransactionWrite);
}
sim_cmdq_model::~sim_cmdq_model() {
	delete saxi_cq_read_skt;
	delete saxi_cq_write_skt;
	delete m_saxi_cq_read_skt_util;
	delete m_saxi_cq_write_skt_util;
	m_cmdq_mem.clear();
}

void sim_cmdq_model::methodProcessTransactionRead() {
	while(1) {
		if (m_saxi_cq_read_skt_util->is_trans_available()) {
			xtlm::aximm_payload* trans = m_saxi_cq_read_skt_util->get_transaction();
			//std::cout << "Read Request Received" << hex << trans->get_address()<< std::endl;
			//Check for the address range
			uint64_t address = trans->get_address();
			uint64_t offset = address - ERT_CQ_BASE_ADDR;
			uint64_t tranSize = trans->get_burst_size() * trans->get_burst_length();
			if ((address > (m_cmdq_size + ERT_CQ_BASE_ADDR - 1) || address < ERT_CQ_BASE_ADDR) || ((address + tranSize) > (m_cmdq_size + ERT_CQ_BASE_ADDR - 1))) {
				trans->set_response_status(xtlm::XTLM_ADDRESS_ERROR_RESPONSE);
			} else {
				trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
				unsigned char* data_ptr = trans->get_data_ptr();
				memcpy(data_ptr, this->m_cmdq_mem.data() + offset, tranSize);
			}
			if(!m_saxi_cq_read_skt_util->is_master_ready()) {
				wait(m_saxi_cq_read_skt_util->data_sampled);
			}
			//std::cout << "Read Response " << hex << trans->get_address() << " data "<< *(uint32_t*) (trans->get_data_ptr()) << std::endl;
			sc_time delay = SC_ZERO_TIME;
			m_saxi_cq_read_skt_util->send_data(*trans, delay);
		} else {
			wait(m_saxi_cq_read_skt_util->transaction_available);
		}
	}
}

void sim_cmdq_model::methodProcessTransactionWrite() {
	while (1) {
		if (m_saxi_cq_write_skt_util->is_trans_available()) {
			xtlm::aximm_payload* trans = m_saxi_cq_write_skt_util->get_transaction();
			// std::cout << "Write Request " << hex << trans->get_address()<<std::endl;
			uint64_t address = trans->get_address();
			uint64_t offset = address - ERT_CQ_BASE_ADDR;
			uint64_t tranSize = trans->get_burst_size() * trans->get_burst_length();
			//Check for the address range
			if ((address > (m_cmdq_size + ERT_CQ_BASE_ADDR - 1) || address < ERT_CQ_BASE_ADDR) || ((address + tranSize) > (m_cmdq_size + ERT_CQ_BASE_ADDR - 1))) {
				trans->set_response_status(xtlm::XTLM_ADDRESS_ERROR_RESPONSE);
			} else {
				trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
				if (!trans->get_byte_enable_ptr()) {
					unsigned char* data_ptr = trans->get_data_ptr();
					memcpy(this->m_cmdq_mem.data() + offset, data_ptr, tranSize);
				} else {
					unsigned char* data_ptr = trans->get_data_ptr();
					unsigned char* byte_enable_ptr = trans->get_byte_enable_ptr();
					uint64_t byte_enable_len = trans->get_byte_enable_length();
					uint32_t index = 0;
					for (index = 1; index <= tranSize; index++) {
						bool byteEn = byte_enable_ptr[(index - 1) % byte_enable_len];
						if (byteEn) {
							m_cmdq_mem[index + offset - 1] = data_ptr[index - 1];
						}
					}
				}
			}
			if (!m_saxi_cq_write_skt_util->is_master_ready()) {
				wait(m_saxi_cq_write_skt_util->resp_sampled);
			}
			sc_time delay = SC_ZERO_TIME;
			m_saxi_cq_write_skt_util->send_resp(*trans, delay);
			// std::cout << "Write Response Sent" << hex << trans->get_address()<< " data " << *(uint32_t*) (trans->get_data_ptr())<< std::endl;
		} else  {
			wait(m_saxi_cq_write_skt_util->transaction_available);
		}
	}
}
