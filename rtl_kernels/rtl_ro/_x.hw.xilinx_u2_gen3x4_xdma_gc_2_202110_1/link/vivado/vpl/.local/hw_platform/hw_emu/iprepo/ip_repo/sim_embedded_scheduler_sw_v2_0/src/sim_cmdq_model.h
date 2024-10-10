// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


#ifndef SIM_CMDQ_MODEL_H_
#define SIM_CMDQ_MODEL_H_
#include "xtlm.h"
#include "ert.h"
#include <list>
/* This module models the Embedded Scheduler Command Queue of size 64K
 * Data width/Size for this command queue is decided by ert.h
 */
class sim_cmdq_model :public sc_module {
public:
  sim_cmdq_model(const sc_module_name&  module_name);
  virtual ~sim_cmdq_model();
  SC_HAS_PROCESS(sim_cmdq_model);
  //Slave interface used to R/W to CommandQueue
  xtlm::xtlm_aximm_target_socket*    saxi_cq_read_skt;
  xtlm::xtlm_aximm_target_socket*    saxi_cq_write_skt;

private :
  xtlm::xtlm_aximm_target_rd_socket_util* m_saxi_cq_read_skt_util;
  xtlm::xtlm_aximm_target_wr_socket_util* m_saxi_cq_write_skt_util;
  std::vector<unsigned char>              m_cmdq_mem;
  uint64_t                                m_cmdq_size;
  void                                    methodProcessTransactionRead();
  void                                    methodProcessTransactionWrite();
};

#endif /* SIM_CMDQ_MODEL_H_ */


