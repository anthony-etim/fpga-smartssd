// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "sim_stm_imp.h"
#include <sstream>
namespace xsc {
namespace stm {
sim_stm_imp::sim_stm_imp(sc_module_name name ,xsc::common_cpp::properties& properties):sc_module(name) {
	m_report_handler=new xsc::common_cpp::report_handler("report_handler");
	mstm_axi_s_socket = new xtlm::xtlm_axis_initiator_socket("mstm_axi_s_socket",properties.getLongLong("C_MSTM_AXI_S_TDATA_WIDTH"));
	sstm_axi_s_socket = new xtlm::xtlm_axis_target_socket("sstm_axi_s_socket",properties.getLongLong("C_SSTM_AXI_S_TDATA_WIDTH"));
	mstm_axi_s_socket_util = new xtlm::xtlm_axis_initiator_socket_util("mstm_axi_s_socket",xtlm::axis::granularity::TRANSACTION,properties.getLongLong("C_MSTM_AXI_S_TDATA_WIDTH"));
	sstm_axi_s_socket_util = new xtlm::xtlm_axis_target_socket_util("sstm_axi_s_socket",xtlm::axis::granularity::TRANSACTION,properties.getLongLong("C_SSTM_AXI_S_TDATA_WIDTH"));
	m_num_itf=properties.getLongLong("C_NUM_STREAM_ITF");
	mstm_axi_s_socket_util->stream_socket(*mstm_axi_s_socket);
	sstm_axi_s_socket->bind(sstm_axi_s_socket_util->stream_socket);
	//m_report_handler->set_verbosity_level(xsc::common_cpp::VERBOSITY::DEBUG);
	SC_THREAD(processWriteBufferRequest);
	SC_THREAD(processReadBufferRequest);

	std::stringstream ss;
	std::stringstream ss1;
	for(uint32_t i=0;i<m_num_itf;i++) {
		ss.str("");
		ss1.str("");
		ss1<<"C_H2C";
		if(i<10) ss1<<"0";
		ss1<<i<<"_AXIS_TDATA_WIDTH";
		ss<<"h2c_"<<i;
		m_h2c_widths.push_back(properties.getLongLong(ss1.str().c_str()));
		h2c_init_socket[i]       = new xtlm::xtlm_axis_initiator_socket(ss.str().c_str(),properties.getLongLong(ss1.str().c_str()));
		ss<<"_util";
		h2c_init_socket_util[i]  = new xtlm::xtlm_axis_initiator_socket_util(ss.str().c_str(),xtlm::axis::granularity::TRANSACTION,properties.getLongLong(ss1.str().c_str()));
		ss.str("");
		ss<<"c2h_"<<i;

		ss1.str("");
		ss1<<"C_C2H";
		if(i<10) ss1<<"0";
		ss1<<i<<"_AXIS_TDATA_WIDTH";
		m_c2h_widths.push_back(properties.getLongLong(ss1.str().c_str()));
		c2h_target_socket[i]     = new xtlm::xtlm_axis_target_socket(ss.str().c_str(),properties.getLongLong(ss1.str().c_str()));
		ss<<"_util";
		c2h_target_socket_util[i]= new xtlm::xtlm_axis_target_socket_util(ss.str().c_str(),xtlm::axis::granularity::TRANSACTION,properties.getLongLong(ss1.str().c_str()));

		h2c_init_socket_util[i]->stream_socket.bind(*(h2c_init_socket[i]));
		c2h_target_socket[i]->bind(c2h_target_socket_util[i]->stream_socket);
	}
	if(m_num_itf>=1)  { SC_METHOD(readMethod_0)  ;dont_initialize();  sensitive<<c2h_target_socket_util[0]->transaction_available;}
	if(m_num_itf>=2)  { SC_METHOD(readMethod_1)  ;dont_initialize();  sensitive<<c2h_target_socket_util[1]->transaction_available;}
	if(m_num_itf>=3)  { SC_METHOD(readMethod_2)  ;dont_initialize();  sensitive<<c2h_target_socket_util[2]->transaction_available;}
	if(m_num_itf>=4)  { SC_METHOD(readMethod_3)  ;dont_initialize();  sensitive<<c2h_target_socket_util[3]->transaction_available;}
	if(m_num_itf>=5)  { SC_METHOD(readMethod_4)  ;dont_initialize();  sensitive<<c2h_target_socket_util[4]->transaction_available;}
	if(m_num_itf>=6)  { SC_METHOD(readMethod_5)  ;dont_initialize();  sensitive<<c2h_target_socket_util[5]->transaction_available;}
	if(m_num_itf>=7)  { SC_METHOD(readMethod_6)  ;dont_initialize();  sensitive<<c2h_target_socket_util[6]->transaction_available;}
	if(m_num_itf>=8)  { SC_METHOD(readMethod_7)  ;dont_initialize();  sensitive<<c2h_target_socket_util[7]->transaction_available;}
	if(m_num_itf>=9)  { SC_METHOD(readMethod_8)  ;dont_initialize();  sensitive<<c2h_target_socket_util[8]->transaction_available;}
	if(m_num_itf>=10) { SC_METHOD(readMethod_9)  ;dont_initialize();  sensitive<<c2h_target_socket_util[9]->transaction_available;}
	if(m_num_itf>=11) { SC_METHOD(readMethod_10) ;dont_initialize();  sensitive<<c2h_target_socket_util[10]->transaction_available;}
	if(m_num_itf>=12) { SC_METHOD(readMethod_11) ;dont_initialize();  sensitive<<c2h_target_socket_util[11]->transaction_available;}
	if(m_num_itf>=13) { SC_METHOD(readMethod_12) ;dont_initialize();  sensitive<<c2h_target_socket_util[12]->transaction_available;}
	if(m_num_itf>=14) { SC_METHOD(readMethod_13) ;dont_initialize();  sensitive<<c2h_target_socket_util[13]->transaction_available;}
	if(m_num_itf>=15) { SC_METHOD(readMethod_14) ;dont_initialize();  sensitive<<c2h_target_socket_util[14]->transaction_available;}

}

sim_stm_imp::~sim_stm_imp() {
	delete mstm_axi_s_socket;
	delete sstm_axi_s_socket;
	delete mstm_axi_s_socket_util;
	delete sstm_axi_s_socket_util;
	for(uint32_t i=0;i<m_num_itf;i++) {
		delete h2c_init_socket[i];
		delete c2h_target_socket[i];
		delete h2c_init_socket_util[i];
		delete c2h_target_socket_util[i];
	}
}

} /* namespace stm */
} /* namespace xsc */

void xsc::stm::sim_stm_imp::processWriteBufferRequest() {
	while(1) {
		//Wait till transaction is available
		while(!sstm_axi_s_socket_util->is_transaction_available()) {
			wait(sstm_axi_s_socket_util->transaction_available);
		}
		xtlm::axis_payload* trans=sstm_axi_s_socket_util->sample_transaction();
		if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
			std::stringstream ss;
			ss<<name()<<" : "<<"Processing write Transaction tdest "<<trans->get_tdest()<<" length "<<trans->get_tdata_length()<<std::endl;
			XSC_REPORT_INFO_VERB( (*m_report_handler),"1", ss.str().c_str(),DEBUG);
		}
		trans->acquire();
		uint64_t itf_id=getDestItfIndex(trans->get_tdest());
		uint64_t itf_width=m_h2c_widths[itf_id]/8;
		uint64_t transNum=trans->get_tdata_length()/(itf_width) + ((trans->get_tdata_length()%(itf_width)==0)?0:1) ;
		//unsigned char* dataVec=new unsigned char[newsize];
		//memset(dataVec, 0,newsize);
		//memcpy((dataVec+header_width),trans->get_tdata_ptr(),trans->get_tdata_length());

		//Prepare header
		//6:3 =1 1 header
		//14 1 end of transfer
		//31:16 total length of packet excluding header
		//uint32_t head_bit=1<<3;
		//uint64_t eof_tr=1<<6;
		//uint64_t pack_len=1;
		//*(dataVec+16)=head_bit;
		//*(dataVec+17)=eof_tr;
		//*(dataVec+18)=pack_len;
		trans->set_n_beats(transNum);
		trans->set_tdest(trans->get_tdest()&0xFFFF);
		//Create a copy of transaction and insert a header
		while (!(h2c_init_socket_util[itf_id]->is_transfer_done())) {
			wait(h2c_init_socket_util[itf_id]->transfer_done);
		}
		sc_time t(SC_ZERO_TIME);
		h2c_init_socket_util[itf_id]->transport(trans, t);

		while (!(h2c_init_socket_util[itf_id]->is_transfer_done())) {
			wait(h2c_init_socket_util[itf_id]->transfer_done);
		}
		trans->release();
	}
}

void xsc::stm::sim_stm_imp::processReadBufferRequest() {
	while(1) {
		while(m_read_payloadq.size()==0) {
			wait(m_read_available);
		}
		//Read Transaction is available does not matter which Interface as routing is done based on TID
		//Forward the request to the read socket
		while(!(mstm_axi_s_socket_util->is_transfer_done())) {
			wait(mstm_axi_s_socket_util->transfer_done);
		}
		xtlm::axis_payload* trans=m_read_payloadq.front();
		if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
			std::stringstream ss;
			ss<<name()<<" : "<<"Processing Read Transaction tdest "<<trans->get_tdest()<<" length "<<trans->get_tdata_length()<<" tid "<<trans->get_tid()<<std::endl;
			XSC_REPORT_INFO_VERB( (*m_report_handler),"1", ss.str().c_str(),DEBUG);
		}
		m_read_payloadq.pop();
		//Ignore header commands
//		if(trans->get_tuser_length()!=0) {
//			unsigned char* userp=trans->get_tuser_ptr();
//			if(((*userp)&0x1)==0) {
//				if(m_report_handler->get_verbosity_level()==xsc::common_cpp::VERBOSITY::DEBUG) {
//					std::stringstream ss;
//					ss<<name()<<" : "<<"Ignoring Header packet from STMA "<<trans->get_tdest()<<" length "<<trans->get_tdata_length()<<" tid "<<trans->get_tid()<<std::endl;
//					XSC_REPORT_INFO_VERB( (*m_report_handler),"1", ss.str().c_str(),DEBUG);
//				}
//				continue;
//			}
//		}
		sc_time t(SC_ZERO_TIME);
		mstm_axi_s_socket_util->transport(trans,t);
		while(!(mstm_axi_s_socket_util->is_transfer_done())) {
			wait(mstm_axi_s_socket_util->transfer_done);
		}
		trans->release();
	}
}

uint64_t xsc::stm::sim_stm_imp::getDestItfIndex(uint64_t tdest) {
	//Top 8 bits represents the interface
	return ((tdest>>16)&0xFF);
}


