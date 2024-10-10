// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#ifndef _SIMHBMX_H_
#define _SIMHBMX_H_

#include "xtlm.h"
#include <list>

#include "xtlm_simple_memory_imp.h"

class xtlm_simple_memory: public sc_core::sc_module {
public:
	xtlm_simple_memory(const sc_module_name&  module_name,xsc::common_cpp::properties&);
	virtual ~xtlm_simple_memory();
	SC_HAS_PROCESS(xtlm_simple_memory);
	//Slave interface used to R/W to HBM Memory
	xtlm::xtlm_aximm_target_socket*    target_0_rd_socket;
	xtlm::xtlm_aximm_target_socket*    target_0_wr_socket;

	sc_in<bool>                        s00_axi_aclk;
	sc_in<bool>                        s00_axi_aresetn;
private :
	xtlm_simple_memory_imp* m_imp;
};

#endif /* _SIMHBMX_H_ */


