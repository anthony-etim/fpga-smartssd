// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "sim_stma_imp.h"
#include <sstream>
namespace xsc {
namespace stma {
sim_stma_imp::sim_stma_imp(sc_module_name name ,xsc::common_cpp::properties& properties) : sc_module(name),m_route_conf(16 ,std::pair<uint64_t,uint64_t>(0,0)),
		m_route_queue(16,std::queue<std::pair<bool,xtlm::axis_payload*>* >()) {
	m_report_handler=new xsc::common_cpp::report_handler("report_handler");
	m_stm_a_axi_s_socket = new xtlm::xtlm_axis_initiator_socket("mstm_axi_s_socket",properties.getLongLong("C_M_STM_C2H_A_AXI_S_TDATA_WIDTH"));
	s_stm_a_axi_s_socket = new xtlm::xtlm_axis_target_socket("sstm_axi_s_socket",properties.getLongLong("C_S_STM_H2C_A_AXI_S_TDATA_WIDTH"));
	mstm_axi_s_socket_util = new xtlm::xtlm_axis_initiator_socket_util("mstm_axi_s_socket",xtlm::axis::granularity::TRANSACTION,properties.getLongLong("C_M_STM_C2H_A_AXI_S_TDATA_WIDTH"));
	sstm_axi_s_socket_util = new xtlm::xtlm_axis_target_socket_util("sstm_axi_s_socket",xtlm::axis::granularity::TRANSACTION,properties.getLongLong("C_S_STM_H2C_A_AXI_S_TDATA_WIDTH"));
	m_nums_itf=properties.getLongLong("NUM_SI");
	m_numm_itf=properties.getLongLong("NUM_MI");
	mstm_axi_s_socket_util->stream_socket(*m_stm_a_axi_s_socket);
	s_stm_a_axi_s_socket->bind(sstm_axi_s_socket_util->stream_socket);
	//m_report_handler->set_verbosity_level(xsc::common_cpp::VERBOSITY::DEBUG);

	std::stringstream ss;
	std::stringstream ss1;
	for(uint32_t i=0;i<m_numm_itf;i++) {
		ss.str("");
		ss1.str("");
		ss1<<"C_M";
		if(i<10) ss1<<"0";
		ss1<<i<<"_AXIS_TDATA_WIDTH";
		ss<<"m_"<<i;
		m_m_widths.push_back(properties.getLongLong(ss1.str().c_str()));
		m_init_socket[i]       = new xtlm::xtlm_axis_initiator_socket(ss.str().c_str(),properties.getLongLong(ss1.str().c_str()));
		ss<<"_util";
		m_init_socket_util[i]  = new xtlm::xtlm_axis_initiator_socket_util(ss.str().c_str(),xtlm::axis::granularity::TRANSACTION,properties.getLongLong(ss1.str().c_str()));
		ss.str("");
		ss<<"c2h_"<<i;
		m_init_socket_util[i]->stream_socket.bind(*(m_init_socket[i]));
	}
	for(uint32_t i=0;i<m_nums_itf;i++) {
		ss1.str("");
		ss1<<"C_S";
		if(i<10) ss1<<"0";
		ss1<<i<<"_AXIS_TDATA_WIDTH";
		m_s_widths.push_back(properties.getLongLong(ss1.str().c_str()));
		s_target_socket[i]     = new xtlm::xtlm_axis_target_socket(ss.str().c_str(),properties.getLongLong(ss1.str().c_str()));
		ss<<"_util";
		s_target_socket_util[i]= new xtlm::xtlm_axis_target_socket_util(ss.str().c_str(),xtlm::axis::granularity::TRANSACTION,properties.getLongLong(ss1.str().c_str()));
		s_target_socket[i]->bind(s_target_socket_util[i]->stream_socket);
	}
	//Populate the routing configuration
	for(uint32_t i=0;i<16;i++) {
		ss.str("");
		ss<<"ROUTE_ID";
		if(i<10) ss<<"0";
		ss<<i;
		ss1.str("");
		ss1<<"FLOW_ID";
		if(i<10) ss1<<"0";
		ss1<<i;
		m_route_conf[i].first =properties.getLongLong(ss.str().c_str());
		m_route_conf[i].second=properties.getLongLong(ss1.str().c_str());
	}
	if(m_nums_itf>=1)  { SC_METHOD(readMethod_0)  ;dont_initialize();  sensitive<<s_target_socket_util[0]->transaction_available;}
	if(m_nums_itf>=2)  { SC_METHOD(readMethod_1)  ;dont_initialize();  sensitive<<s_target_socket_util[1]->transaction_available;}
	if(m_nums_itf>=3)  { SC_METHOD(readMethod_2)  ;dont_initialize();  sensitive<<s_target_socket_util[2]->transaction_available;}
	if(m_nums_itf>=4)  { SC_METHOD(readMethod_3)  ;dont_initialize();  sensitive<<s_target_socket_util[3]->transaction_available;}
	if(m_nums_itf>=5)  { SC_METHOD(readMethod_4)  ;dont_initialize();  sensitive<<s_target_socket_util[4]->transaction_available;}
	if(m_nums_itf>=6)  { SC_METHOD(readMethod_5)  ;dont_initialize();  sensitive<<s_target_socket_util[5]->transaction_available;}
	if(m_nums_itf>=7)  { SC_METHOD(readMethod_6)  ;dont_initialize();  sensitive<<s_target_socket_util[6]->transaction_available;}
	if(m_nums_itf>=8)  { SC_METHOD(readMethod_7)  ;dont_initialize();  sensitive<<s_target_socket_util[7]->transaction_available;}
	if(m_nums_itf>=9)  { SC_METHOD(readMethod_8)  ;dont_initialize();  sensitive<<s_target_socket_util[8]->transaction_available;}
	if(m_nums_itf>=10) { SC_METHOD(readMethod_9)  ;dont_initialize();  sensitive<<s_target_socket_util[9]->transaction_available;}
	if(m_nums_itf>=11) { SC_METHOD(readMethod_10) ;dont_initialize();  sensitive<<s_target_socket_util[10]->transaction_available;}
	if(m_nums_itf>=12) { SC_METHOD(readMethod_11) ;dont_initialize();  sensitive<<s_target_socket_util[11]->transaction_available;}
	if(m_nums_itf>=13) { SC_METHOD(readMethod_12) ;dont_initialize();  sensitive<<s_target_socket_util[12]->transaction_available;}
	if(m_nums_itf>=14) { SC_METHOD(readMethod_13) ;dont_initialize();  sensitive<<s_target_socket_util[13]->transaction_available;}
	if(m_nums_itf>=15) { SC_METHOD(readMethod_14) ;dont_initialize();  sensitive<<s_target_socket_util[14]->transaction_available;}
	if(m_nums_itf>=16) { SC_METHOD(readMethod_15) ;dont_initialize();  sensitive<<s_target_socket_util[15]->transaction_available;}

	SC_THREAD(processReadBufferRequest);

	SC_METHOD(processWriteBufferRequest);
	sensitive<<sstm_axi_s_socket_util->transaction_available;
	for(uint32_t i=0;i<m_numm_itf;i++) {
		sensitive<<m_init_socket_util[i]->transfer_done;
	}
	dont_initialize();
}

sim_stma_imp::~sim_stma_imp() {
	delete m_stm_a_axi_s_socket;
	delete s_stm_a_axi_s_socket;
	delete mstm_axi_s_socket_util;
	delete sstm_axi_s_socket_util;
	for(uint32_t i=0;i<m_nums_itf;i++) {
		delete s_target_socket[i];
		delete s_target_socket_util[i];
	}
	for(uint32_t i=0;i<m_numm_itf;i++) {
		delete m_init_socket[i];
		delete m_init_socket_util[i];
	}
}
uint64_t sim_stma_imp::routeIdToItfIndex(uint64_t tdest) {
	uint32_t ret=0;
	for(uint32_t i=0;i<m_numm_itf;i++) {
		std::stringstream ss;
		if((m_route_conf[i].first & 0xFFFF)==tdest) {
			return i;
		}
	}
	return ret;
}

uint64_t sim_stma_imp::itfIndexToFlowId(uint64_t itf) {

	uint32_t ret=m_route_conf[itf].second;
	return ret;
}
} /* namespace stm */
} /* namespace xsc */

void xsc::stma::sim_stma_imp::processWriteBufferRequest() {
		//Wait till transaction is available
	if(sstm_axi_s_socket_util->is_transaction_available()) {
		xtlm::axis_payload* trans = sstm_axi_s_socket_util->sample_transaction();
		trans->acquire();
		uint64_t itf_id = routeIdToItfIndex(trans->get_tdest());
		if (m_report_handler->get_verbosity_level() == xsc::common_cpp::VERBOSITY::DEBUG) {
			std::stringstream ss;
			ss << name() << " : " << "Processing write Transaction tdest " << trans->get_tdest() << " length " << trans->get_tdata_length()<<
					" tdest "<<itf_id<< std::endl;
			XSC_REPORT_INFO_VERB( (*m_report_handler),"1", ss.str().c_str(),DEBUG);
		}


		m_route_queue[itf_id].push(new std::pair<bool,xtlm::axis_payload*>(false,trans));
	}

	for(uint64_t i=0;i<m_numm_itf;i++) {
		if(m_init_socket_util[i]->is_transfer_done()) {
			if(m_route_queue[i].size()!=0 && m_route_queue[i].front()->first==true) {
				if (m_report_handler->get_verbosity_level() == xsc::common_cpp::VERBOSITY::DEBUG) {
								std::stringstream ss;
								ss << name() << " : " << "Got Here " <<i<< std::endl;
								XSC_REPORT_INFO_VERB( (*m_report_handler),"1", ss.str().c_str(),DEBUG);
							}
				m_route_queue[i].front()->second->release();
				delete m_route_queue[i].front();
				m_route_queue[i].pop();
			}
			if(m_route_queue[i].size()!=0) {
				xtlm::axis_payload* trans=m_route_queue[i].front()->second;
				sc_time t=SC_ZERO_TIME;
				uint64_t itf_width = m_m_widths[i] / 8;
				uint64_t newsize = trans->get_tdata_length();
				uint64_t transNum = newsize / (itf_width) + ((newsize % (itf_width) == 0) ? 0 : 1);
				m_route_queue[i].front()->first=true;
				if (m_report_handler->get_verbosity_level() == xsc::common_cpp::VERBOSITY::DEBUG) {
					std::stringstream ss;
					ss << name() << " : " << "Sending write Transaction tdest " << trans->get_tdest() <<" beats "<<transNum<<" length "<<trans->get_tdata_length()<<std::endl;
					XSC_REPORT_INFO_VERB( (*m_report_handler),"1", ss.str().c_str(),DEBUG);
				}
				trans->set_n_beats(transNum);
				trans->set_tlast(true);
				m_init_socket_util[i]->transport(trans,t);
			}
	 }
	}
}

void xsc::stma::sim_stma_imp::processReadBufferRequest() {
	while(1) {
		while(m_read_reqq.size()==0) {
			wait(m_read_available);
		}
		//Read Transaction is available does not matter which Interface as routing is done based on TID
		//Forward the request to the read socket
		while(!(mstm_axi_s_socket_util->is_transfer_done())) {
			wait(mstm_axi_s_socket_util->transfer_done);
		}
		xtlm::axis_payload* trans=m_read_reqq.front().second;
		uint64_t flowId=itfIndexToFlowId(m_read_reqq.front().first);
		if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
			std::stringstream ss;
			ss<<name()<<" : "<<"Processing Read Transaction tdest "<<trans->get_tdest()<<" length "<<trans->get_tdata_length()<<" tid "<<flowId<<std::endl;
			XSC_REPORT_INFO_VERB( (*m_report_handler),"1", ss.str().c_str(),DEBUG);
		}
		m_read_reqq.pop();
		trans->set_tid(flowId);
		sc_time t(SC_ZERO_TIME);
		mstm_axi_s_socket_util->transport(trans,t);
		while(!(mstm_axi_s_socket_util->is_transfer_done())) {
			wait(mstm_axi_s_socket_util->transfer_done);
		}
		trans->release();
	}
}




