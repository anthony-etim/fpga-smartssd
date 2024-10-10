// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#ifndef sim_ddrx_H
#define sim_ddrx_H

#include "xtlm.h"
#include "axi_app_xtlm.h"
#include "app_ddrx_xtlm.h"

namespace xsc {
namespace sim_ddr_v1_0 {
class sim_ddrx: public sc_module {
public:
	explicit sim_ddrx(sc_core::sc_module_name name,
			xsc::common_cpp::properties model_param_props, int saxi_data_width);
	~sim_ddrx();
	void init_fmodel();
	sc_core::sc_in_clk c0_axi_s_axi_clk;
	ddr3_fmodel_base* ddr_fmodel_inst;

	//For new xtlm model
	xsc::sim_ddr_v1_0::axi_app_xtlm* axi_app_xtlm_model;
	xsc::sim_ddr_v1_0::app_ddrx_xtlm* app_ddrx_xtlm_model;

	xtlm::xtlm_aximm_target_socket* C0_DDRX_S_AXI_wr_socket;
	xtlm::xtlm_aximm_target_socket* C0_DDRX_S_AXI_rd_socket;

protected:

private:
	xsc::common_cpp::properties m_propreties;
};
#endif

}
}


