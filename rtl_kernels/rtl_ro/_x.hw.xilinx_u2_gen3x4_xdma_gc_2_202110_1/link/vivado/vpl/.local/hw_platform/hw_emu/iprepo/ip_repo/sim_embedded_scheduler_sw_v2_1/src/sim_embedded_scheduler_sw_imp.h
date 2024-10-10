// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

#ifndef SIM_EMBEDDED_SCHEDULER_SW_IMP_H_
#define SIM_EMBEDDED_SCHEDULER_SW_IMP_H_
#define ERT_HW_EMU
#include "xtlm.h"

typedef void function_pointer_t();

class sim_cmdq_model;

class sim_embedded_scheduler_sw_imp: public sc_core::sc_module {
public:
  SC_HAS_PROCESS(sim_embedded_scheduler_sw_imp);
  sim_embedded_scheduler_sw_imp(const sc_core::sc_module_name &name,xsc::common_cpp::properties& properties);
  virtual ~sim_embedded_scheduler_sw_imp();

  //Initiator interface for scheduler (used by MB )
  xtlm::xtlm_aximm_initiator_socket* maxi_lite_mb_read_skt;
  xtlm::xtlm_aximm_initiator_socket* maxi_lite_mb_write_skt;

  //Slave interface used to R/W to CommandQueue
  xtlm::xtlm_aximm_target_socket*    saxi_lite_cq_read_skt;
  xtlm::xtlm_aximm_target_socket*    saxi_lite_cq_write_skt;

  //Interrupt signal
  sc_in<bool>                        irq;     //Interrupt signal

  sc_in<bool>                        maxi_lite_mb_aclk;     //Clock
  sc_in<bool>                        saxi_lite_cq_aclk;     //Clock
  sc_in<bool>                        maxi_lite_mb_aresetn;    //Reset for the module
  sc_in<bool>                        saxi_lite_cq_aresetn;    //Reset for the module

  uint32_t                                   readRegister(uint32_t);
  void                                       writeRegister(uint32_t,uint32_t);
  static sim_embedded_scheduler_sw_imp*      getSchedularPtr();
  bool isInterruptEnable() const;
  void setInterruptEnable(bool interruptEnable);

private:
  static sim_embedded_scheduler_sw_imp*      m_schd_imp;
  xtlm::xtlm_aximm_initiator_rd_socket_util* maxi_lite_mb_read_skt_util;
  xtlm::xtlm_aximm_initiator_wr_socket_util* maxi_lite_mb_write_skt_util;
  xtlm::xtlm_aximm_mem_manager*              m_mem_manager;
  sim_cmdq_model*                            m_cmdq;
  bool                                       m_interrupt_enable;

  void threadMainLoop();
  void threadInterruptHandler();
  bool                                       m_rw_active;
  sc_core::sc_event                          m_rw_event;

  xtlm::aximm_payload* getPayloadObject() ;

  function_pointer_t* scheduler_loop;
  function_pointer_t* cu_interrupt_handler;
};

#endif /* SIM_EMBEDDED_SCHEDULER_SW_IMP_H_ */


