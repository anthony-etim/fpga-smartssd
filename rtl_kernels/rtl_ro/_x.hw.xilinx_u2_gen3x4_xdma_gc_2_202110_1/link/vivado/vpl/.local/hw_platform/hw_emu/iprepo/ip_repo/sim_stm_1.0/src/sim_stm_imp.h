// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#ifndef SIM_STM_IMP_H_
#define SIM_STM_IMP_H_

#include "xtlm.h"
namespace xsc {
namespace stm {

#define XSC_READ_METHOD(num) \
	void readMethod_##num() { \
		xtlm::axis_payload* trans =c2h_target_socket_util[num]->sample_transaction(); \
		trans->acquire(); \
		m_read_payloadq.push(trans); \
		m_read_available.notify(); \
	}

class sim_stm_imp: public sc_core::sc_module {
public:
	sim_stm_imp(sc_module_name name ,xsc::common_cpp::properties& properties);
	virtual ~sim_stm_imp();
	xtlm::xtlm_axis_initiator_socket*      mstm_axi_s_socket;
	xtlm::xtlm_axis_target_socket*         sstm_axi_s_socket;
	xtlm::xtlm_axis_initiator_socket*      h2c_init_socket[16];
	xtlm::xtlm_axis_target_socket*         c2h_target_socket[16];
	SC_HAS_PROCESS(sim_stm_imp);
private:
	xtlm::xtlm_axis_initiator_socket_util*      mstm_axi_s_socket_util;
	xtlm::xtlm_axis_target_socket_util*         sstm_axi_s_socket_util;
	xtlm::xtlm_axis_initiator_socket_util*      h2c_init_socket_util[16];
	xtlm::xtlm_axis_target_socket_util*         c2h_target_socket_util[16];
	void processWriteBufferRequest();
	void processReadBufferRequest();
	uint64_t getDestItfIndex(uint64_t tdest);
	uint64_t m_num_itf;
	std::queue<xtlm::axis_payload*>             m_read_payloadq;
	sc_event                                    m_read_available;
	xsc::common_cpp::report_handler*            m_report_handler;
	xtlm::xtlm_axis_mem_manager                 m_manager;
	std::vector<uint64_t>                       m_h2c_widths;
	std::vector<uint64_t>                       m_c2h_widths;
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

#endif /* SIM_STM_IMP_H_ */


