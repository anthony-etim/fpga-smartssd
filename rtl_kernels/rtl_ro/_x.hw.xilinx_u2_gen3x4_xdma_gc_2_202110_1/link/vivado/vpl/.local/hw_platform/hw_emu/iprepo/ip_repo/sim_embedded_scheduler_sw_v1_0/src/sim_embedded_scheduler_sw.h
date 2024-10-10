// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

#ifndef SIM_EMBEDDED_SCHEDULER_SW_H_
#define SIM_EMBEDDED_SCHEDULER_SW_H_

#include "xtlm.h"

class sim_embedded_scheduler_sw_imp;

/**
 * This module models the embedded scheduler sw in HW block diagram
 * and contains a model which mimics microblaze and a command queue model
 */
class sim_embedded_scheduler_sw: public sc_core::sc_module {
public:

  SC_HAS_PROCESS(sim_embedded_scheduler_sw);
  sim_embedded_scheduler_sw(const sc_core::sc_module_name& name,xsc::common_cpp::properties&);
  virtual ~sim_embedded_scheduler_sw();


  //Initiator interface for scheduler (used by MB )
  xtlm::xtlm_aximm_initiator_socket* maxi_lite_mb_rd_socket;
  xtlm::xtlm_aximm_initiator_socket* maxi_lite_mb_wr_socket;

  //Slave interface used to R/W to CommandQueue
  xtlm::xtlm_aximm_target_socket*    saxi_lite_cq_rd_socket;
  xtlm::xtlm_aximm_target_socket*    saxi_lite_cq_wr_socket;

  //Interrupt signal
  sc_in<bool>                        irq;                     //Interrupt signal
  sc_in<bool>                        maxi_lite_mb_aclk;        //Clock
  sc_in<bool>                        saxi_lite_cq_aclk;        //Clock
  sc_in<bool>                        maxi_lite_mb_aresetn;    //Reset for the module
  sc_in<bool>                        saxi_lite_cq_aresetn;    //Reset for the module

protected:

private:
  sim_embedded_scheduler_sw_imp*     m_imp;

};

#endif /* SIM_EMBEDDED_SCHEDULER_SW_H_ */


