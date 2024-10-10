// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "xtlm_simple_memory.h"

xtlm_simple_memory::xtlm_simple_memory(const sc_module_name& module_name, xsc::common_cpp::properties& properties) :
	sc_module(module_name) {
	//Get Width from property
	uint64_t data_width=properties.getLongLong("C_S00_AXI_DATA_WIDTH");
	target_0_rd_socket = new xtlm::xtlm_aximm_target_socket("target_0_rd_socket", data_width);
	target_0_wr_socket = new xtlm::xtlm_aximm_target_socket("target_0_wr_socket", data_width);
	m_imp=new xtlm_simple_memory_imp("impl",properties);
	target_0_rd_socket->bind(*(m_imp->target_0_rd_socket));
	target_0_wr_socket->bind(*(m_imp->target_0_wr_socket));
}

xtlm_simple_memory::~xtlm_simple_memory() {
	delete target_0_rd_socket;
	delete target_0_wr_socket;
	delete m_imp;
}


