// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "sim_xdma_core.h"
#include "extensions/P2P_XTLM_extension.h"
using namespace xdma;

#define DELAY_FOR_XCL_RD_KRNL_CNTRL 1000

sim_xdma_core::sim_xdma_core(sc_core::sc_module_name name, xsc::common_cpp::properties& properties,xsc::common_cpp::report_handler* report_handler) :sc_module(name),
	initiator_ctrl_rd_socket(NULL),
	initiator_ctrl_wr_socket(NULL),
	initiator_mm_rd_socket(NULL),
	initiator_mm_wr_socket(NULL),
	initiator_mm_aux_rd_socket(NULL),
	initiator_mm_aux_wr_socket(NULL),
    initiator_stm_stream_socket(NULL),
	target_stm_stream_socket(NULL),
	m_axi_mm_aclk("m_axi_mm_aclk"),
	m_axictrl_aclk("m_axilite_aclk"),
	m_axictrl_aresetn("m_axilite_aresetn"),
	m_aximm_aresetn("m_aximm_aresetn"),
	m_aximm_aux_aclk("m_aximm_aux_aclk"),
	m_aximm_aux_aresetn("m_aximm_aux_aresetn"),
	m_axis_aclk("m_axis_aclk"),
	m_axis_aresetn("m_axis_aresetn"),
	s_axis_aclk("s_axis_aclk"),
	s_axis_aresetn("s_axis_aresetn"),
	ini_ctrl_rd_socket_util(NULL),
	ini_ctrl_wr_socket_util(NULL),
	ini_mm_rd_socket_util(NULL),
	ini_mm_wr_socket_util(NULL),
	ini_mm_aux_rd_socket_util(NULL),
	ini_mm_aux_wr_socket_util(NULL),
	ini_stm_stream_socket_util(NULL),
	tar_stm_stream_socket_util(NULL)
{
	m_report_handler=report_handler;
	read_properties(properties);
	m_queue_counter=1;
	initiator_ctrl_rd_socket   = new xtlm::xtlm_aximm_initiator_socket("initiator_ctrl_rd_socket",m_itf_prop_map[XDMA_CTRL]->data_width);
	initiator_ctrl_wr_socket   = new xtlm::xtlm_aximm_initiator_socket("initiator_ctrl_wr_socket",m_itf_prop_map[XDMA_CTRL]->data_width);

	initiator_mm_rd_socket     = new xtlm::xtlm_aximm_initiator_socket("initiator_mm_rd_socket",m_itf_prop_map[XDMA_MM]->data_width);
	initiator_mm_wr_socket     = new xtlm::xtlm_aximm_initiator_socket("initiator_mm_wr_socket",m_itf_prop_map[XDMA_MM]->data_width);

	ini_ctrl_rd_socket_util    = new xtlm::xtlm_aximm_initiator_rd_socket_util("ini_ctrl_rd_socket_util"   ,xtlm::aximm::TRANSACTION,m_itf_prop_map[XDMA_CTRL]->data_width);
	ini_ctrl_wr_socket_util    = new xtlm::xtlm_aximm_initiator_wr_socket_util("ini_ctrl_wr_socket_util"   ,xtlm::aximm::TRANSACTION,m_itf_prop_map[XDMA_CTRL]->data_width);
	ini_mm_rd_socket_util      = new xtlm::xtlm_aximm_initiator_rd_socket_util("ini_mm_rd_socket_util"     ,xtlm::aximm::TRANSACTION,m_itf_prop_map[XDMA_MM]->data_width);
	ini_mm_wr_socket_util      = new xtlm::xtlm_aximm_initiator_wr_socket_util("ini_mm_wr_socket_util"     ,xtlm::aximm::TRANSACTION,m_itf_prop_map[XDMA_MM]->data_width);

	ini_ctrl_rd_socket_util->rd_socket(*initiator_ctrl_rd_socket);
	ini_ctrl_wr_socket_util->wr_socket(*initiator_ctrl_wr_socket);
	ini_mm_rd_socket_util->rd_socket(*initiator_mm_rd_socket);
	ini_mm_wr_socket_util->wr_socket(*initiator_mm_wr_socket);


	m_is_aux_enable=properties.getBool("C_M_AXIMM_AUX_ENABLE");
	m_is_stm_enable=properties.getBool("C_STM_ITF_ENABLE");
	if(m_is_aux_enable) {
		initiator_mm_aux_rd_socket = new xtlm::xtlm_aximm_initiator_socket("initiator_mm_aux_rd_socket",m_itf_prop_map[XDMA_MAUX]->data_width);
		initiator_mm_aux_wr_socket = new xtlm::xtlm_aximm_initiator_socket("initiator_mm_aux_wr_socket",m_itf_prop_map[XDMA_MAUX]->data_width);
		ini_mm_aux_rd_socket_util  = new xtlm::xtlm_aximm_initiator_rd_socket_util("ini_mm_aux_rd_socket_util" ,xtlm::aximm::TRANSACTION,m_itf_prop_map[XDMA_MAUX]->data_width);
		ini_mm_aux_wr_socket_util  = new xtlm::xtlm_aximm_initiator_wr_socket_util("ini_mm_aux_wr_socket_util" ,xtlm::aximm::TRANSACTION,m_itf_prop_map[XDMA_MAUX]->data_width);
		ini_mm_aux_rd_socket_util->rd_socket(*initiator_mm_aux_rd_socket);
		ini_mm_aux_wr_socket_util->wr_socket(*initiator_mm_aux_wr_socket);
	}

	if(m_is_stm_enable) {
		initiator_stm_stream_socket =new xtlm::xtlm_axis_initiator_socket("initiator_stm_stream_socket",m_itf_prop_map[XDMA_MSTR]->data_width);
		target_stm_stream_socket    =new xtlm::xtlm_axis_target_socket("target_stm_stream_socket",m_itf_prop_map[XDMA_SSTR]->data_width);
		ini_stm_stream_socket_util = new xtlm::xtlm_axis_initiator_socket_util    ("ini_stm_stream_socket_util",xtlm::axis::TRANSACTION,m_itf_prop_map[XDMA_MSTR]->data_width);
		tar_stm_stream_socket_util = new xtlm::xtlm_axis_target_socket_util       ("tar_stm_stream_socket_util",xtlm::axis::TRANSACTION,m_itf_prop_map[XDMA_SSTR]->data_width);
		ini_stm_stream_socket_util->stream_socket(*initiator_stm_stream_socket);
		target_stm_stream_socket->bind(tar_stm_stream_socket_util->stream_socket);

		SC_METHOD(methodProcessRdQueue);
		sensitive<<tar_stm_stream_socket_util->transaction_available;
		dont_initialize();


	}
	//m_report_handler->set_verbosity_level(xsc::common_cpp::VERBOSITY::DEBUG);
}
void sim_xdma_core::read_properties(xsc::common_cpp::properties& properties) {
	//Populate interface properties
	m_itf_prop_map.insert(std::pair<xdma::xdma_intf, xdma::xdma_itf_prop*>(xdma::XDMA_CTRL, new xdma::xdma_itf_prop()));
	m_itf_prop_map.insert(std::pair<xdma::xdma_intf, xdma::xdma_itf_prop*>(xdma::XDMA_MM,   new xdma::xdma_itf_prop()));
	m_itf_prop_map.insert(std::pair<xdma::xdma_intf, xdma::xdma_itf_prop*>(xdma::XDMA_MAUX, new xdma::xdma_itf_prop()));
	m_itf_prop_map.insert(std::pair<xdma::xdma_intf, xdma::xdma_itf_prop*>(xdma::XDMA_MSTR, new xdma::xdma_itf_prop()));
	m_itf_prop_map.insert(std::pair<xdma::xdma_intf, xdma::xdma_itf_prop*>(xdma::XDMA_SSTR, new xdma::xdma_itf_prop()));

	//Ctrl Interface
	m_itf_prop_map[XDMA_CTRL]->addr_width = properties.getLongLong("C_M_AXICTRL_ADDR_WIDTH");
	m_itf_prop_map[XDMA_CTRL]->data_width = properties.getLongLong("C_M_AXICTRL_DATA_WIDTH");
	m_itf_prop_map[XDMA_CTRL]->support_burst = false;
	m_itf_prop_map[XDMA_CTRL]->support_backdoor_access = true;
	m_itf_prop_map[XDMA_CTRL]->enable = true;

	m_itf_prop_map[XDMA_MM]->addr_width = properties.getLongLong("C_M_AXIMM_ADDR_WIDTH");
	m_itf_prop_map[XDMA_MM]->data_width = properties.getLongLong("C_M_AXIMM_DATA_WIDTH");
	m_itf_prop_map[XDMA_MM]->support_burst = true;
	m_itf_prop_map[XDMA_MM]->support_backdoor_access = true;
	m_itf_prop_map[XDMA_MM]->enable = true;

	m_itf_prop_map[XDMA_MAUX]->addr_width = properties.getLongLong("C_M_AXIMM_AUX_ADDR_WIDTH");
	m_itf_prop_map[XDMA_MAUX]->data_width = properties.getLongLong("C_M_AXIMM_AUX_DATA_WIDTH");
	m_itf_prop_map[XDMA_MAUX]->support_burst = true;
	m_itf_prop_map[XDMA_MAUX]->support_backdoor_access = true;

	m_itf_prop_map[XDMA_MSTR]->addr_width = 0;
	m_itf_prop_map[XDMA_MSTR]->data_width = properties.getLongLong("C_M_AXIS_TDATA_WIDTH");
	m_itf_prop_map[XDMA_MSTR]->support_burst = true;
	m_itf_prop_map[XDMA_MSTR]->support_backdoor_access = true;
	m_itf_prop_map[XDMA_MSTR]->enable = properties.getBool("C_STM_ITF_ENABLE");

	m_itf_prop_map[XDMA_SSTR]->addr_width = 0;
	m_itf_prop_map[XDMA_SSTR]->data_width = properties.getLongLong("C_S_AXIS_TDATA_WIDTH");
	m_itf_prop_map[XDMA_SSTR]->support_burst = true;
	m_itf_prop_map[XDMA_SSTR]->support_backdoor_access = true;
	m_itf_prop_map[XDMA_SSTR]->enable = properties.getBool("C_STM_ITF_ENABLE");
	//m_report_handler->set_verbosity_level(xsc::common_cpp::VERBOSITY::DEBUG);

}

bool sim_xdma_core::xclWrite(AddressSpace space, uint64_t offset, const void* hostBuf, size_t size) {
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"xclWrite call space "<<space<<" address "<<offset<<" size "<<size<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
  if(size==0) {
    return true;
  }
	switch (space) {
	case ADDR_SPACE_DEVICE_RAM: {
		if(m_itf_prop_map[XDMA_MM]->support_backdoor_access) {
			size_t ret=send_dbg_transport_wr_call(xdma::XDMA_MM,offset,hostBuf,size);
			if(ret==0){
				m_itf_prop_map[XDMA_MM]->support_backdoor_access=false;
			}
		}
		if(!m_itf_prop_map[XDMA_MM]->support_backdoor_access) {
			methodProcessWrCommand(xdma::XDMA_MM,offset,hostBuf,size);
		}
    m_itf_prop_map[XDMA_MM]->support_backdoor_access=true;
		break;
	}
	case ADDR_KERNEL_CTRL: {
		if(m_itf_prop_map[XDMA_CTRL]->support_backdoor_access) {
			size_t ret=send_dbg_transport_wr_call(xdma::XDMA_CTRL,offset,hostBuf,size);
			if(ret==0){
				m_itf_prop_map[XDMA_CTRL]->support_backdoor_access=false;
			}
		}
		if(!m_itf_prop_map[XDMA_CTRL]->support_backdoor_access) {
			methodProcessWrCommand(xdma::XDMA_CTRL,offset,hostBuf,size);
		}
  	m_itf_prop_map[XDMA_CTRL]->support_backdoor_access=true;
		break;
	}
	default: {
		return false;
	}
	}
	return true;
}

bool sim_xdma_core::xclRead(AddressSpace space, uint64_t offset, void* hostBuf, size_t size) {
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"xclRead call space "<<space<<" address "<<offset<<" size "<<size<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
   if(size==0) {
    return true;
  }
	switch (space) {
	case ADDR_SPACE_DEVICE_RAM: {
		if(m_itf_prop_map[XDMA_MM]->support_backdoor_access) {
			size_t ret=send_dbg_transport_rd_call(xdma::XDMA_MM,offset,hostBuf,size);
			if(ret==0){
				m_itf_prop_map[XDMA_MM]->support_backdoor_access=false;
			}
		}
		if(!m_itf_prop_map[XDMA_MM]->support_backdoor_access) {
			methodProcessRdCommand(xdma::XDMA_MM,offset,hostBuf,size);
		}
    m_itf_prop_map[XDMA_MM]->support_backdoor_access=true;
		break;
	}
	case ADDR_KERNEL_CTRL: {
		if(m_itf_prop_map[XDMA_CTRL]->support_backdoor_access) {
			size_t ret=send_dbg_transport_rd_call(xdma::XDMA_CTRL,offset,hostBuf,size);
			if(ret==0){
				m_itf_prop_map[XDMA_CTRL]->support_backdoor_access=false;
			}
		}
		if(!m_itf_prop_map[XDMA_CTRL]->support_backdoor_access) {
            //!< HARD CODED wait for XCL READ KERNEL CNTRL calls. To speedup the simulation.
            // If there is no delay ,  huge number of calls are made . 
            // Since the calls are from IPC, it is significantly slowing down the simulation 
			wait(DELAY_FOR_XCL_RD_KRNL_CNTRL, sc_core::SC_NS);
 			methodProcessRdCommand(xdma::XDMA_CTRL,offset,hostBuf,size);
		}
	   m_itf_prop_map[XDMA_CTRL]->support_backdoor_access=true;
		break;
	}
	case ADDR_SPACE_DEVICE_PERFMON: {
		if(m_itf_prop_map[XDMA_CTRL]->support_backdoor_access) {
			size_t ret=send_dbg_transport_rd_call(xdma::XDMA_CTRL,offset,hostBuf,size);
			if(ret==0){
				m_itf_prop_map[XDMA_CTRL]->support_backdoor_access=false;
			}
		}
		if(!m_itf_prop_map[XDMA_CTRL]->support_backdoor_access) {
			methodProcessRdCommand(xdma::XDMA_CTRL,offset,hostBuf,size);
		}
    m_itf_prop_map[XDMA_CTRL]->support_backdoor_access=true;
		break;
	}
	default: {
		return false;;
	}
	}
	return true;
}
sim_xdma_core::~sim_xdma_core() {
}

void sim_xdma_core::end_of_elaboration() {
}

size_t sim_xdma_core::methodProcessRdCommand(xdma::xdma_intf intf,uint64_t offset, const void *hostBuf,size_t size)     {
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Calling Read forward call intf "<<intf<<" address "<<offset<<" size "<<size<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	size_t ret=size;
	m_axi_rd_tbuf_no_serviced=0;
	m_read_req_copied_size   =0;
	m_xcl_read_req_data_ptr=NULL;
	m_xcl_read_req_data_ptr=new unsigned char[size];
	unsigned int dataWidth = m_itf_prop_map[intf]->data_width / 8;
	unsigned int transactionSize = (m_itf_prop_map[intf]->support_burst)?dataWidth*128:dataWidth;
	unsigned int maxSize = (m_itf_prop_map[intf]->support_burst)?dataWidth*128:dataWidth;
	unsigned int numberOfAxiTransactions = size / transactionSize;
	unsigned int finalTransactionSize = size % transactionSize;
	for (unsigned int transId = 0; transId <= numberOfAxiTransactions;
			transId++) {
		if (transId == numberOfAxiTransactions) {
			if (finalTransactionSize == 0)
				break;                //continue or break are equal here
			transactionSize = finalTransactionSize;
		}
		m_axi_rd_tbuf_no_serviced++;
		xtlm::aximm_payload* m_axi_trans = NULL;
		m_axi_trans = m_mem_manager.get_payload();

		m_axi_trans->acquire();
		m_axi_trans->set_command(xtlm::XTLM_READ_COMMAND);
		m_axi_trans->set_address(offset + transId * maxSize);
		m_axi_trans->create_and_get_data_ptr(transactionSize);
		m_axi_trans->set_burst_length(transactionSize / dataWidth);
		m_axi_trans->set_burst_size(dataWidth);
		m_axi_trans->set_burst_type(XAXI_BURST_INCR);
		m_axi_trans->set_cache(2);
		m_axi_trans->create_and_get_byte_enable_ptr(transactionSize);

		m_axi_trans->set_data_length(transactionSize);
		m_axi_trans->set_byte_enable_length(transactionSize);
		sc_core::sc_time t=SC_ZERO_TIME;

		if(intf==xdma::XDMA_CTRL) {
			while(!ini_ctrl_rd_socket_util->is_slave_ready()) {
				wait(SC_ZERO_TIME);
			}
			if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
				m_ss.str("");
				m_ss<<name()<<" : "<<"Read forward call intf "<<intf<<" address "<<m_axi_trans->get_address()<<" size "<<m_axi_trans->get_data_length()<<std::endl;
				XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
			}
			ini_ctrl_rd_socket_util->send_transaction(*m_axi_trans,t);
			wait(ini_ctrl_rd_socket_util->data_available);
			ini_ctrl_rd_socket_util->get_data();
			if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
				m_ss.str("");
				std::string des;
				m_axi_trans->get_log(des,1);
				m_ss<<name()<<" : "<<"Read Response intf "<<intf<<" address "<<m_axi_trans->get_address()<<" size "<<m_axi_trans->get_data_length()<<std::endl<<des<<std::endl;
				XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
			}
		} else {
			while(!ini_mm_rd_socket_util->is_slave_ready()) {
				wait(SC_ZERO_TIME);
			}
			if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
				m_ss.str("");
				m_ss<<name()<<" : "<<"Read forward call intf "<<intf<<" address "<<m_axi_trans->get_address()<<" size "<<m_axi_trans->get_data_length()<<std::endl;
				XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
			}
			ini_mm_rd_socket_util->send_transaction(*m_axi_trans,t);
			wait(ini_mm_rd_socket_util->data_available);
			ini_mm_rd_socket_util->get_data();
			if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
				m_ss.str("");
				std::string des;
				m_axi_trans->get_log(des,1);
				m_ss<<name()<<" : "<<"Read Response intf "<<intf<<" address "<<m_axi_trans->get_address()<<" size "<<m_axi_trans->get_data_length()<<std::endl<<des<<std::endl;
				XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
			}
		}
		if(m_axi_trans->get_response_status()!=xtlm::xtlm_response_status::XTLM_OK_RESPONSE) {
			ret=0;
		}
		//Copy the response to the host buffer
		unsigned char * ptr=m_axi_trans->get_data_ptr();
		unsigned char * curr=(unsigned char* )hostBuf;
		memcpy((curr+m_read_req_copied_size),ptr,transactionSize);
		m_read_req_copied_size+=transactionSize;
		m_axi_trans->release();
	}

	if(m_xcl_read_req_data_ptr) delete m_xcl_read_req_data_ptr;
	return ret;
}



size_t sim_xdma_core::methodProcessWrCommand(xdma::xdma_intf intf,uint64_t offset, const void *hostBuf,size_t size)      {
	size_t ret=size;
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Calling Write forward call intf "<<intf<<" address "<<offset<<" size "<<size<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	unsigned char *curr = (unsigned char *) hostBuf;
	unsigned int dataWidth = m_itf_prop_map[intf]->data_width / 8;
	unsigned int transactionSize = (m_itf_prop_map[intf]->support_burst)?dataWidth*128:dataWidth;
	unsigned int maxSize = (m_itf_prop_map[intf]->support_burst)?dataWidth*128:dataWidth;
	unsigned int numberOfAxiTransactions = size / transactionSize;
	unsigned int finalTransactionSize = size % transactionSize;
	for (unsigned int transId = 0; transId <= numberOfAxiTransactions;transId++) {
		if (transId == numberOfAxiTransactions) {
			if (finalTransactionSize == 0)
				break;                //continue or break are equal here
			transactionSize = finalTransactionSize;
		}
		m_axi_wr_tbuf_no_serviced++;
		xtlm::aximm_payload* m_axi_trans = NULL;
		m_axi_trans = m_mem_manager.get_payload();
		m_axi_trans->acquire();
		unsigned char* byte_enable_mask =
				m_axi_trans->create_and_get_byte_enable_ptr(transactionSize);
		for (int i = 0; i < transactionSize; i++) {
			byte_enable_mask[i] = 0xFF;
		}
		unsigned char* data = m_axi_trans->create_and_get_data_ptr(
				transactionSize);
		for (int i = 0; i < transactionSize; i++) {
			data[i] = (curr)[i + (transId * transactionSize)];
		}
		m_axi_trans->set_command(xtlm::XTLM_WRITE_COMMAND);
		m_axi_trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
		m_axi_trans->set_address(offset + transId * maxSize);
		m_axi_trans->set_data_length(transactionSize);
		m_axi_trans->set_byte_enable_length(transactionSize);
		m_axi_trans->set_burst_length(transactionSize / dataWidth);
		m_axi_trans->set_burst_size(dataWidth);
		m_axi_trans->set_burst_type(XAXI_BURST_INCR);
		m_axi_trans->set_cache(2);
		sc_core::sc_time t=SC_ZERO_TIME;
		if(intf==xdma::XDMA_CTRL) {
			while(!ini_ctrl_wr_socket_util->is_slave_ready()) {wait(SC_ZERO_TIME);}
			if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
				m_ss.str("");
				m_ss<<name()<<" : "<<"Write forward call intf "<<intf<<" address "<<m_axi_trans->get_address()<<" size "<<m_axi_trans->get_data_length()<<std::endl;
				XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
			}
			ini_ctrl_wr_socket_util->send_transaction(*m_axi_trans,t);
			wait(ini_ctrl_wr_socket_util->resp_available);
			ini_ctrl_wr_socket_util->get_resp();
			if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
				m_ss.str("");
				std::string des;
				m_axi_trans->get_log(des,1);
				m_ss<<name()<<" : "<<"Write Response intf "<<intf<<" address "<<m_axi_trans->get_address()<<" size "<<m_axi_trans->get_data_length()<<std::endl<<des<<std::endl;
				XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
			}
		} else {
			while(!ini_mm_wr_socket_util->is_slave_ready()) {wait(SC_ZERO_TIME);}
			if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
				m_ss.str("");
				m_ss<<name()<<" : "<<"Write forward call intf "<<intf<<" address "<<m_axi_trans->get_address()<<" size "<<m_axi_trans->get_data_length()<<std::endl;
				XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
			}
			ini_mm_wr_socket_util->send_transaction(*m_axi_trans,t);
			wait(ini_mm_wr_socket_util->resp_available);
			ini_mm_wr_socket_util->get_resp();
			if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
				m_ss.str("");
				std::string des;
				m_axi_trans->get_log(des,1);
				m_ss<<name()<<" : "<<"Write Response intf "<<intf<<" address "<<m_axi_trans->get_address()<<" size "<<m_axi_trans->get_data_length()<<std::endl<<des<<std::endl;
				XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
			}
		}
		if(m_axi_trans->get_response_status()!=xtlm::xtlm_response_status::XTLM_OK_RESPONSE) {
			ret=0;
		}
		m_axi_trans->release();
	}
	//Send the response to the host buffer
	return size;
}

size_t sim_xdma_core::methodProcessIniStreamQueue(xdma::xdma_intf intf,uint64_t offset, const void *hostBuf,size_t size) {
	return size;
}

size_t sim_xdma_core::methodProcessTargetStreamRequest(xdma::xdma_intf intf) {

	return 0;
}

void sim_xdma_core::ddrRead(unsigned int ddrNum, uint64_t offset, void* dest,
		unsigned int size) {
	xtlm::aximm_payload* dbg_rd_trans=m_mem_manager.get_payload();
	dbg_rd_trans->acquire();
	dbg_rd_trans->set_address(offset);
	dbg_rd_trans->set_data_ptr((unsigned char*) dest, size);
	dbg_rd_trans->set_data_length(size);
	dbg_rd_trans->set_command(xtlm::XTLM_READ_COMMAND);
	(*initiator_mm_rd_socket)->transport_dbg(*dbg_rd_trans);
	dbg_rd_trans->release();
}

size_t sim_xdma_core::send_dbg_transport_rd_call(xdma::xdma_intf intf, uint64_t offset, const void* hostBuf, size_t size) {
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Calling Debug Read forward call intf "<<intf<<" address "<<offset<<" size "<<size<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	xtlm::aximm_payload* rd_trans = m_mem_manager.get_payload();
	rd_trans->acquire();
	rd_trans->set_command(xtlm::XTLM_READ_COMMAND);
	rd_trans->set_axi_id(0);
	rd_trans->set_address(offset);
	rd_trans->set_data_ptr((unsigned char*)hostBuf,size);
	rd_trans->set_data_length(size);
	tlm::tlm_phase phase = xtlm::BEGIN_RADDR;
	uint64_t res = 0;
	if (intf == xdma_intf::XDMA_CTRL) {
		res = (*initiator_ctrl_rd_socket)->transport_dbg(*rd_trans);
	} else if (intf == xdma_intf::XDMA_MM) {
		res = (*initiator_mm_rd_socket)->transport_dbg(*rd_trans);
	}
	if ((rd_trans->get_response_status() != xtlm::XTLM_OK_RESPONSE) || res == 0) {
		size = 0;
	} 
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Debug Read Response intf "<<intf<<" address "<<offset<<" size "<<size<<" Response "<< rd_trans->get_response_string()<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	rd_trans->release();
	return size;

}

size_t sim_xdma_core::send_dbg_transport_wr_call(xdma::xdma_intf intf, uint64_t offset, const void* hostBuf, size_t size) {
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Calling Debug Write forward call intf "<<intf<<" address "<<offset<<" size "<<size<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	xtlm::aximm_payload* wr_trans = m_mem_manager.get_payload();
	wr_trans->acquire();
	wr_trans->set_axi_id(0);
	wr_trans->set_address(offset);
	unsigned char* data_ptr=wr_trans->create_and_get_data_ptr(size);
	unsigned char* be_ptr  =wr_trans->create_and_get_byte_enable_ptr(size);
	for (uint64_t i = 0; i < size; i++) {
		data_ptr[i] = ((unsigned char*)hostBuf)[i];
		be_ptr[i]=0xFF;
	}
	wr_trans->set_command(xtlm::XTLM_WRITE_COMMAND);
	wr_trans->set_byte_enable_length(size);
	wr_trans->set_data_length(size);
	wr_trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
	tlm::tlm_phase phase = xtlm::BEGIN_WDATA_LAST;
	sc_core::sc_time t;
	tlm::tlm_sync_enum status;
	int res = 0;
	if (intf == xdma_intf::XDMA_CTRL) {
		res = (*initiator_ctrl_wr_socket)->transport_dbg(*wr_trans);
	} else if(intf == xdma_intf::XDMA_MM) {
		res = (*initiator_mm_wr_socket)->transport_dbg(*wr_trans);
	}
	if ((wr_trans->get_response_status() != xtlm::XTLM_OK_RESPONSE)
			|| res == 0) {
		size = 0;
	}
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Debug Write Response intf "<<intf<<" address "<<offset<<" size "<<size<<" Response "<< wr_trans->get_response_string()<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	wr_trans->release();
	return size;
}

unsigned int sim_xdma_core::xclCreateQueue(queue_context& ctx) {
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
			m_ss.str("");
			m_ss<<name()<<" : "<<std::hex<<"Request to create queue w(1)/r(0)="<<ctx.write<<" flow id="<<ctx.flow<<"route id="<<ctx.route<<std::endl;
			XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	uint64_t qid=m_queue_counter;
	uint64_t route_id=ctx.route;
	uint64_t flow_id=ctx.flow;

	if(ctx.write) {
		m_stream_host_wdq.insert (std::pair<uint64_t,std::queue< unsigned char    >* >(qid,new std::queue< unsigned char>()));
		m_stream_pend_wreq.insert(std::pair<uint64_t,std::deque<xdma::stream_nbl_req_type>* >(qid,new std::deque<xdma::stream_nbl_req_type>()));
	} else {
		m_stream_host_rdq.insert(std::pair<uint64_t,std::queue<std::pair<unsigned char,bool> >* >(qid,new std::queue<std::pair<unsigned char,bool>>()));
		m_stream_flowid_to_qid.insert(std::pair<uint64_t,uint64_t>(flow_id,qid));
		m_stream_pend_rreq.insert(std::pair<uint64_t,std::deque<xdma::stream_nbl_req_type>* >(qid,new std::deque<xdma::stream_nbl_req_type>()));
	}
	m_stream_host_qctx.insert(std::pair<uint64_t,queue_context>(qid,ctx));
	m_queue_counter++;
	return qid;
}

bool sim_xdma_core::xclWriteQueue(uint64_t q_handle, const void* src, size_t size,unsigned int req_id,bool eot,bool isnonblocking) {
	std::map<uint64_t,std::queue< unsigned char >* >::iterator it;
	it = m_stream_host_wdq.find(q_handle);

	if(it==m_stream_host_wdq.end()) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"No write Queue handle found for="<<q_handle<<" size "<<size<<std::endl;
		XSC_REPORT_ERROR((*m_report_handler),"1",m_ss.str().c_str());
		return false;
	}
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Write Request to queue handle="<<q_handle<<" size "<<size<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
   if(size==0) {
    return true;
  }
	std::queue< unsigned char >* que=m_stream_host_wdq.at(q_handle);
	if(isnonblocking) {
		xdma::stream_nbl_req_type tmp;
		tmp.rid=req_id;
    unsigned char* tmpPtr=(unsigned char*)malloc(sizeof(unsigned char)*size);
		tmp.ptr=(unsigned char*)tmpPtr;
    memcpy(tmpPtr,(unsigned char*)src,size);
		tmp.iseot=eot;
		tmp.size=size;
		tmp.isprocessed=true;
		m_stream_pend_wreq.at(q_handle)->push_back(tmp);
		//Process also if nonblocking as write does not take time.Only Status is sent later
		if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
			m_ss.str("");
			m_ss<<name()<<" : "<<"Nonblocking Write Request to queue handle="<<q_handle<<" size "<<size<<std::endl;
			XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
		}
	}
	//Push the request in Queue and notify the processing system
	//For now just forward to the interface
	for(int i=0;i<size;i++) {
		que->push(((unsigned char*)src)[i]);
	}
	methodProcessWrQueue(q_handle);
	return true;
}

uint64_t sim_xdma_core::xclReadQueue(uint64_t q_handle, void* dest, size_t size,unsigned int req_id,bool eot,bool isnonblocking) {
	std::map<uint64_t, std::queue<std::pair<unsigned char,bool> >* >::iterator it;
	it = m_stream_host_rdq.find(q_handle);
	if (it == m_stream_host_rdq.end()) {
		return 0;
	}
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Read Request to queue handle="<<q_handle<<" size "<<size<<" iseot"<<eot<<" isnb "<<isnonblocking<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
   if(size==0) {
    return true;
  }
	std::queue<std::pair<unsigned char,bool> >* que = m_stream_host_rdq.at(q_handle);
	queue_context ctx = m_stream_host_qctx.at(q_handle);
	//Check if something is available else return no
	if (isnonblocking) {
		xdma::stream_nbl_req_type tmp;
		tmp.rid=req_id;
    unsigned char* tmpPtr=(unsigned char*)malloc(sizeof(unsigned char)*size);
		tmp.ptr = (unsigned char*)tmpPtr;		
    tmp.iseot = eot;
		tmp.size = size;
		tmp.isprocessed=false;
		m_stream_pend_rreq.at(q_handle)->push_back(tmp);
		if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
			m_ss.str("");
			m_ss<<name()<<" : "<<"Non blocking Read Request to queue handle="<<q_handle<<" size "<<size<<std::endl;
			XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
		}
	} else {
		//Process only if blocking
		if (que->size() == 0) {
			return 0;
		} else if (que->size() < size && eot) { //END of stream flag is present don't look at the size and push everything to host
			uint64_t q_size =0;
			uint64_t qdsize =que->size();
			for (int i = 0; i < qdsize; i++) {
				((unsigned char*) dest)[i] = que->front().first;
				q_size++;
				if(que->front().second ) { //End of Queue Reached and eot is established
					que->pop();
					break;
				}
				que->pop();
			}
			return q_size;
		} else if (que->size() >= size) {
			for (int i = 0; i < size; i++) {
				((unsigned char*) dest)[i] = que->front().first;
				que->pop();
			}
			return size;
		} else if (que->size() < size) {
			return 0;
		}
	}
	return 0;
}

bool sim_xdma_core::xclDestroyQueue(uint64_t q_handle) {
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Request to Destroy queue handle="<<q_handle<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	//Check in read and write queue
	std::map<uint64_t,std::queue<std::pair<unsigned char,bool> >* >::iterator it1;
	std::map<uint64_t,std::queue< unsigned char >* >::iterator it2;
	std::map<uint64_t,queue_context >::iterator it3;
	std::map<uint64_t,uint64_t >::iterator it4;
	it1 = m_stream_host_rdq.find(q_handle);
	it2 = m_stream_host_wdq.find(q_handle);
	it3 = m_stream_host_qctx.find(q_handle);

	if (it1 != m_stream_host_rdq.end()) {
		delete m_stream_host_rdq.at(q_handle);
		m_stream_host_rdq.erase (it1);
		delete m_stream_pend_rreq.at(q_handle);
		m_stream_pend_rreq.erase(m_stream_pend_rreq.find(q_handle));
	} else if (it2!=m_stream_host_wdq.end()) {
		delete m_stream_host_wdq.at(q_handle);
		m_stream_host_wdq.erase (it2);
		delete m_stream_pend_wreq.at(q_handle);
		m_stream_pend_wreq.erase(m_stream_pend_wreq.find(q_handle));
	}
	if(it3!=m_stream_host_qctx.end()) {
		it4 =m_stream_flowid_to_qid.find(m_stream_host_qctx.at(q_handle).flow);
		if(it4!=m_stream_flowid_to_qid.end()) {
			m_stream_flowid_to_qid.erase(it4);
		}
		m_stream_host_qctx.erase(it3);
	}
	return true;
}

void sim_xdma_core::methodProcessWrQueue(uint64_t q_handle) {
	if(!this->m_is_stm_enable) return ;
	std::map<uint64_t,std::queue< unsigned char >* >::iterator it;
	it = m_stream_host_wdq.find(q_handle);
	if(it==m_stream_host_wdq.end()) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Writing invalid queue handle="<<q_handle<<std::endl;
		XSC_REPORT_ERROR((*m_report_handler),"1",m_ss.str().c_str());
		return ;
	}
	std::queue< unsigned char >* que=m_stream_host_wdq.at(q_handle);
	uint64_t qsize=que->size();
	xtlm::axis_payload* strans=m_ms_manager.get_payload();
	strans->acquire();
	unsigned char*data=strans->create_and_set_tdata_ptr(qsize);
	unsigned char*strb=strans->create_and_set_tstrb_ptr((qsize));
	for(uint64_t j=0;j<qsize;j++) {
		data[j]=que->front();
		que->pop();
		strb[j]=0xFF;
	}
	strans->set_tlast(true);
	strans->set_tdest(m_stream_host_qctx.at(q_handle).route);
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Writing queue handle="<<q_handle<<" SIZE "<<qsize<<" "<<strans->get_tdata_ptr()<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	while (!ini_stm_stream_socket_util->is_transfer_done()) {
		wait(ini_stm_stream_socket_util->transfer_done);
	}
	sc_core::sc_time time(0,sc_core::SC_NS);
	ini_stm_stream_socket_util->transport(strans,time);
	while (!ini_stm_stream_socket_util->is_transfer_done()) {
		wait(ini_stm_stream_socket_util->transfer_done);
	}
	strans->release();
	return ;
}

void  sim_xdma_core::methodProcessRdQueue() {

	if(!this->m_is_stm_enable) return ;
	xtlm::axis_payload* strans=tar_stm_stream_socket_util->sample_transaction();
	strans->acquire();
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Process Incoming stream "<<strans->get_tdata_length()<<" "<<m_stream_host_rdq.size()<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	unsigned char* data=strans->get_tdata_ptr();
	unsigned char* strb=strans->get_tstrb_ptr();
	unsigned char* keepp=strans->get_tkeep_ptr();
	uint64_t data_length=strans->get_tdata_length();
	uint64_t strb_length=strans->get_tstrb_length();
	uint64_t keep_length=strans->get_tkeep_length();
	uint64_t flowid=strans->get_tid();
	std::map<uint64_t,uint64_t>::iterator it=m_stream_flowid_to_qid.find(flowid);
	if (it!=m_stream_flowid_to_qid.end()) {

	} else {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Invalid flow id received "<<flowid<<std::endl;
		XSC_REPORT_ERROR((*m_report_handler),"1",m_ss.str().c_str());
		strans->release();
		return;
	}

	std::queue<std::pair<unsigned char,bool> >* que=m_stream_host_rdq.at(it->second);
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
			m_ss.str("");
			m_ss<<name()<<" : "<<"Read Data "<<strans->get_tdata_ptr()<<" Is last"<<strans->get_tlast()<<std::endl;
			XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
  uint64_t valid_data_length=data_length;
  if(keep_length == data_length) {
    valid_data_length=0;
	  for(uint64_t i=0;i<data_length;i++){
        if((unsigned int)keepp[i]==0xff) {
          valid_data_length=i+1;
        }
    }
  }
	for(uint64_t i=0;i<valid_data_length;i++){
		if (i==(valid_data_length-1)) que->push(std::pair<unsigned char,bool>(data[i],true));
		else  				    que->push(std::pair<unsigned char,bool>(data[i],false));
	}
	strans->release();
}

bool sim_xdma_core::xclPollCompletion(unsigned int req_id,
		std::vector<std::tuple<void*, uint32_t, bool> >& req) {
	//Check in which queue this request lies
	bool processed=false;
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
			m_ss.str("");
			m_ss<<name()<<" : "<<"Poll Completion call for id "<<req_id<<std::endl;
			XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	for(auto& itr:m_stream_pend_wreq) {
		uint32_t qid=itr.first;
		std::deque<xdma::stream_nbl_req_type>& req_list=*(itr.second);
		if(req_list.front().rid==req_id) {
			if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
					m_ss.str("");
					m_ss<<name()<<" : "<<"Poll Completion call for write id "<<req_id<<std::endl;
					XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
			}
			//Iterate over the queue and process all
			for(auto& it1:req_list) {
				if(it1.rid==req_id) {
					//Completed just add to result.
					std::tuple<void*, uint32_t, bool> resp(it1.ptr,it1.size,true);
					req.push_back(resp);
					processed=true;
				} else {
					break;
				}
			}
			//If all are processed
			while(req_list.front().rid==req_id) {
				req_list.pop_front();
			}
			break;
		}
	}
	if (!processed) {
		for(auto& itr:m_stream_pend_rreq) {
			uint32_t qid=itr.first;
			std::deque<xdma::stream_nbl_req_type>& req_list=*(itr.second);
			if(req_list.front().rid==req_id) {
				if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
						m_ss.str("");
						m_ss<<name()<<" : "<<"Poll Completion call for read id "<<req_id<<std::endl;
						XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
				}
				//Iterate over the queue and process all
				for(auto& it1:req_list) {
					if(it1.rid==req_id) {
						//Completed just add to result.
						unsigned char* ptr=it1.ptr;
						uint32_t size=it1.size;
						std::queue<std::pair<unsigned char,bool> >* que = m_stream_host_rdq.at(qid);
						if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
							m_ss.str("");
							m_ss<<name()<<" : "<<"Poll Completion call for read id "<<req_id<<" size "<<size <<" qsize "<<que->size()<<" eot "<<it1.iseot<<std::endl;
							XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
						}
						if (!it1.isprocessed) {
								if (que->size() == 0) {
									it1.isprocessed=false;
									processed=false;
								} else if (que->size() < size && it1.iseot) { //END of stream flag is present don't look at the size and push everything to host
									uint64_t q_size      = 0;
									uint64_t qdsize = que->size();
									for (int i = 0; i < qdsize; i++) {
										((unsigned char*) ptr)[i] = que->front().first;
										q_size++;
										if(que->front().second) {
											que->pop();
											break;
										}
										que->pop();
									}
									it1.size=q_size;
									it1.isprocessed=true;
									processed=true;
									if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
										m_ss.str("");
										m_ss<<name()<<" : "<<"Poll Completion finishing for id "<<req_id<<" size "<<req_list.front().size<<std::endl;
										XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
									}
								} else if (que->size() >= size) {
									for (int i = 0; i < size; i++) {
										((unsigned char*) ptr)[i] = que->front().first;
										que->pop();
									}
									it1.size=size;
									it1.isprocessed=true;
									processed=true;
									if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
										m_ss.str("");
										m_ss<<name()<<" : "<<"Poll Completion finishing for id "<<req_id<<" size "<<req_list.front().size<<std::endl;
										XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
									}
								} else if (que->size() < size) {
									it1.isprocessed=false;
									processed=false;
								}
						}
					} else {
						break;
					}
				}
				while(req_list.size()!=0 && (req_list.front().rid==req_id && processed)) {
					if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
							m_ss.str("");
							m_ss<<name()<<" : "<<"Poll Completion finished for id "<<req_id<<" size "<<req_list.front().size<<std::endl;
							XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
					}
					std::tuple<void*, uint32_t, bool> resp(req_list.front().ptr,req_list.front().size,true);
					req.push_back(resp);
					req_list.pop_front();
				}
				break;
			}
		}
	}
	return processed;
}

bool sim_xdma_core::xclAllocDeviceBuffer(uint64_t base_address,uint64_t size,std::string& buffer_filename) {
	//P2P Buffer allocation call
	//Send it to DDR through dbg_transport and send back the response;
	xsc::extension::P2P_XTLM_extension *ext=new xsc::extension::P2P_XTLM_extension();
	bool ret=false;
	ext->setAddress(base_address);
  ext->setSize(size);
  ext->setType(xsc::extension::TYPE::ALLOC_BO);
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Calling P2P buffer allocation call address "<<base_address<<" size "<<size<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	xtlm::aximm_payload* wr_trans = m_mem_manager.get_payload();
	wr_trans->acquire();
	wr_trans->set_axi_id(0);
	wr_trans->set_address(base_address);
	unsigned char* data_ptr=wr_trans->create_and_get_data_ptr(size);
	unsigned char* be_ptr  =wr_trans->create_and_get_byte_enable_ptr(size);
	wr_trans->set_command(xtlm::XTLM_WRITE_COMMAND);
	wr_trans->set_byte_enable_length(size);
	wr_trans->set_data_length(size);
	wr_trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
  wr_trans->set_extension(ext);
	tlm::tlm_phase phase = xtlm::BEGIN_WDATA_LAST;
	sc_core::sc_time t;
	tlm::tlm_sync_enum status;
	int res = 0;
	res = (*initiator_mm_wr_socket)->transport_dbg(*wr_trans);
	if ((wr_trans->get_response_status() == xtlm::XTLM_OK_RESPONSE) && (ext->getResponse() )) {
		ret =true;
		buffer_filename=ext->getFileName();
	} else {
		ret =false;
	}
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Debug P2P buffer allocation Response address "<<base_address<<" size "<<size<<" Response "<< wr_trans->get_response_string()<<std::endl;
		if(ext->getFileName().empty() == false) {
			std::string cmd_resp=(ext->getResponse())?"PASSED":"FAILED";
			m_ss<<"P2P Command status "<<cmd_resp<<std::endl;
			m_ss<<"Buffer File Name"<<ext->getFileName()<<std::endl;
		}
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
  wr_trans->release_extension(ext);
  wr_trans->release();
	return ret;
}

bool sim_xdma_core::xclFreeDeviceBuffer(uint64_t base_address) {
	//P2P Buffer allocation call
	//Send it to DDR through dbg_transport and send back the response;
  uint64_t size = 4096;
	xsc::extension::P2P_XTLM_extension *ext=new xsc::extension::P2P_XTLM_extension();
	bool ret=false;
	ext->setAddress(base_address);
  ext->setSize(size);
  ext->setType(xsc::extension::TYPE::FREE_BO);
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Calling P2P buffer allocation call address "<<base_address<<" size "<<size<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	xtlm::aximm_payload* wr_trans = m_mem_manager.get_payload();
	wr_trans->acquire();
	wr_trans->set_axi_id(0);
	wr_trans->set_address(base_address);
	unsigned char* data_ptr=wr_trans->create_and_get_data_ptr(size);
	unsigned char* be_ptr  =wr_trans->create_and_get_byte_enable_ptr(size);
	wr_trans->set_command(xtlm::XTLM_WRITE_COMMAND);
	wr_trans->set_byte_enable_length(size);
	wr_trans->set_data_length(size);
	wr_trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
  wr_trans->set_extension(ext);
	tlm::tlm_phase phase = xtlm::BEGIN_WDATA_LAST;
	sc_core::sc_time t;
	tlm::tlm_sync_enum status;
	int res = 0;
	res = (*initiator_mm_wr_socket)->transport_dbg(*wr_trans);
	if ((wr_trans->get_response_status() == xtlm::XTLM_OK_RESPONSE) && (ext->getResponse() )) {
		ret =true;
	} else {
		ret =false;
	}
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Debug P2P buffer allocation Response address "<<base_address<<" size "<<size<<" Response "<< wr_trans->get_response_string()<<std::endl;
		if(ext->getFileName().empty() == false) {
			std::string cmd_resp=(ext->getResponse())?"PASSED":"FAILED";
			m_ss<<"P2P Command status "<<cmd_resp<<std::endl;
			m_ss<<"Buffer File Name"<<ext->getFileName()<<std::endl;
		}
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
  wr_trans->release_extension(ext);
  wr_trans->release();
	return ret;
}

bool sim_xdma_core::xclImportBO(std::string sFileName,uint64_t base_address, uint64_t size)
{
	//P2P Buffer allocation call
	//Send it to DDR through dbg_transport and send back the response;
	xsc::extension::P2P_XTLM_extension *ext=new xsc::extension::P2P_XTLM_extension();
	bool ret=false;
	ext->setAddress(base_address);
  ext->setSize(size);
  ext->setFileName(sFileName);
  ext->setType(xsc::extension::TYPE::IMPORT_BO);
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Calling P2P buffer allocation call address "<<base_address<<" size "<<size<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	xtlm::aximm_payload* wr_trans = m_mem_manager.get_payload();
	wr_trans->acquire();
	wr_trans->set_axi_id(0);
	wr_trans->set_address(base_address);
	unsigned char* data_ptr=wr_trans->create_and_get_data_ptr(size);
	unsigned char* be_ptr  =wr_trans->create_and_get_byte_enable_ptr(size);
	wr_trans->set_command(xtlm::XTLM_WRITE_COMMAND);
	wr_trans->set_byte_enable_length(size);
	wr_trans->set_data_length(size);
	wr_trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
  wr_trans->set_extension(ext);
	tlm::tlm_phase phase = xtlm::BEGIN_WDATA_LAST;
	sc_core::sc_time t;
	tlm::tlm_sync_enum status;
	int res = 0;
	res = (*initiator_mm_wr_socket)->transport_dbg(*wr_trans);
	if ((wr_trans->get_response_status() == xtlm::XTLM_OK_RESPONSE) && (ext->getResponse() )) {
		ret =true;
	} else {
		ret =false;
	}
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Debug P2P buffer allocation Response address "<<base_address<<" size "<<size<<" Response "<< wr_trans->get_response_string()<<std::endl;
		if(ext->getFileName().empty() == false) {
			std::string cmd_resp=(ext->getResponse())?"PASSED":"FAILED";
			m_ss<<"P2P Command status "<<cmd_resp<<std::endl;
			m_ss<<"Buffer File Name"<<ext->getFileName()<<std::endl;
		}
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
  wr_trans->release_extension(ext);
  wr_trans->release();
	return ret;

}

bool sim_xdma_core::xclCopyBO(uint64_t base_address,std::string dst_filename,uint64_t size, uint64_t src_offset,uint64_t dst_offset) 
{	//P2P Buffer allocation call
	//Send it to DDR through dbg_transport and send back the response;
	xsc::extension::P2P_XTLM_extension *ext=new xsc::extension::P2P_XTLM_extension();
	bool ret=false;
	ext->setAddress(base_address);
  ext->setSize(size);
	ext->setFileName(dst_filename);
	ext->setSrcOffset(src_offset);
	ext->setDstOffset(dst_offset);
  ext->setType(xsc::extension::TYPE::COPY_BO);
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Calling P2P buffer allocation call address "<<base_address<<" size "<<size<<std::endl;
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
	xtlm::aximm_payload* wr_trans = m_mem_manager.get_payload();
	wr_trans->acquire();
	wr_trans->set_axi_id(0);
	wr_trans->set_address(base_address);
	unsigned char* data_ptr=wr_trans->create_and_get_data_ptr(size);
	unsigned char* be_ptr  =wr_trans->create_and_get_byte_enable_ptr(size);
	wr_trans->set_command(xtlm::XTLM_WRITE_COMMAND);
	wr_trans->set_byte_enable_length(size);
	wr_trans->set_data_length(size);
	wr_trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
  wr_trans->set_extension(ext);
	tlm::tlm_phase phase = xtlm::BEGIN_WDATA_LAST;
	sc_core::sc_time t;
	tlm::tlm_sync_enum status;
	int res = 0;
	res = (*initiator_mm_wr_socket)->transport_dbg(*wr_trans);
	if ((wr_trans->get_response_status() == xtlm::XTLM_OK_RESPONSE) && ( ext->getResponse() )) {
		ret =true;
	} else {
		ret =false;
	}
	if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
		m_ss.str("");
		m_ss<<name()<<" : "<<"Debug P2P buffer allocation Response address "<<base_address<<" size "<<size<<" Response "<< wr_trans->get_response_string()<<std::endl;
		if(ext->getFileName().empty() == false) {
			std::string cmd_resp=(ext->getResponse())?"PASSED":"FAILED";
			m_ss<<"P2P Command status "<<cmd_resp<<std::endl;
			m_ss<<"Buffer File Name"<<ext->getFileName()<<std::endl;
		}
		XSC_REPORT_INFO_VERB((*m_report_handler),"1",m_ss.str().c_str(),DEBUG);
	}
  wr_trans->release_extension(ext);
  wr_trans->release();
	return ret;
}


