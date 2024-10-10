// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#ifndef sim_stma_imp_H_
#define sim_stma_imp_H_

#include "xtlm.h"
#include <queue>
#include <vector>
namespace xsc {
namespace stma {

#define XSC_READ_METHOD(num) \
	void readMethod_##num() { \
		xtlm::axis_payload* trans =s_target_socket_util[num]->sample_transaction(); \
		trans->acquire(); \
		m_read_reqq.push(std::pair<uint64_t,xtlm::axis_payload*>(num,trans)); \
		m_read_available.notify(); \
	}

class sim_stma_imp: public sc_core::sc_module {
public:
	sim_stma_imp(sc_module_name name ,xsc::common_cpp::properties& properties);
	virtual ~sim_stma_imp();
	xtlm::xtlm_axis_initiator_socket*      m_stm_a_axi_s_socket;
	xtlm::xtlm_axis_target_socket*         s_stm_a_axi_s_socket;
	xtlm::xtlm_axis_initiator_socket*      m_init_socket[16];
	xtlm::xtlm_axis_target_socket*         s_target_socket[16];
	SC_HAS_PROCESS(sim_stma_imp);
private:
	xtlm::xtlm_axis_initiator_socket_util*      mstm_axi_s_socket_util;
	xtlm::xtlm_axis_target_socket_util*         sstm_axi_s_socket_util;
	xtlm::xtlm_axis_initiator_socket_util*      m_init_socket_util[16];
	xtlm::xtlm_axis_target_socket_util*         s_target_socket_util[16];
	void processWriteBufferRequest();
	void processReadBufferRequest();
	uint64_t routeIdToItfIndex(uint64_t tdest);
	uint64_t itfIndexToFlowId(uint64_t tdest);
	uint64_t m_nums_itf;
	uint64_t m_numm_itf;
	std::vector<std::pair<uint64_t,uint64_t> >  m_route_conf;
	std::vector<std::queue<std::pair<bool,xtlm::axis_payload*>* > >  m_route_queue;
	std::queue<std::pair<uint64_t,xtlm::axis_payload*> >     m_read_reqq;
	sc_event                                    m_read_available;
	xsc::common_cpp::report_handler*            m_report_handler;
	xtlm::xtlm_axis_mem_manager                 m_manager;
	std::vector<uint64_t>                       m_m_widths;
	std::vector<uint64_t>                       m_s_widths;
	XSC_READ_METHOD(0)
	XSC_READ_METHOD(1)
	XSC_READ_METHOD(2)
	XSC_READ_METHOD(3)
	XSC_READ_METHOD(4)
	XSC_READ_METHOD(5)
	XSC_READ_METHOD(6)
	XSC_READ_METHOD(7)
	XSC_READ_METHOD(8)
	XSC_READ_METHOD(9)
	XSC_READ_METHOD(10)
	XSC_READ_METHOD(11)
	XSC_READ_METHOD(12)
	XSC_READ_METHOD(13)
	XSC_READ_METHOD(14)
	XSC_READ_METHOD(15)
};

} /* namespace stm */
} /* namespace xsc */

#endif /* sim_stma_imp_H_ */


