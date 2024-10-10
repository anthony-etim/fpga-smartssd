// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "sim_ddrx.h"
//#define DEBUGMSG 1

namespace xsc {
namespace sim_ddr_v1_0 {
sim_ddrx::sim_ddrx(sc_core::sc_module_name name,
		xsc::common_cpp::properties model_param_props, int saxi_data_width) :
		sc_module(name), c0_axi_s_axi_clk("c0_axi_s_axi_clk") {

	//DO deep copy as it comes with index number for DDR
	m_propreties = model_param_props;
	app_ddrx_xtlm_model = nullptr;
	axi_app_xtlm_model = nullptr;

	/**We are storing pointers to ddr fmodel instances in xdma.
	 ***This is required since we need to call serialize_ddr_memory() for each ddr fmodel instance from xclClose()
	 ***/
	//Re-ordering is not supported yet in new flow
	axi_app_xtlm_model = new xsc::sim_ddr_v1_0::axi_app_xtlm(
			sc_core::sc_gen_unique_name("axi_app_tlm_model"), model_param_props,
			saxi_data_width);
	app_ddrx_xtlm_model = new xsc::sim_ddr_v1_0::app_ddrx_xtlm(
			sc_core::sc_gen_unique_name("app_ddrx_xtlm_model"),
			model_param_props, saxi_data_width);
	ddr_fmodel_inst = axi_app_xtlm_model->fmodel_instance;

	C0_DDRX_S_AXI_wr_socket = new xtlm::xtlm_aximm_target_socket(
			sc_core::sc_gen_unique_name("C0_DDRX_S_AXI_wr_socket"),
			saxi_data_width);
	C0_DDRX_S_AXI_rd_socket = new xtlm::xtlm_aximm_target_socket(
			sc_core::sc_gen_unique_name("C0_DDRX_S_AXI_rd_socket"),
			saxi_data_width);

	C0_DDRX_S_AXI_wr_socket->bind(*axi_app_xtlm_model->slave_wr_skt);
	C0_DDRX_S_AXI_rd_socket->bind(*axi_app_xtlm_model->slave_rd_skt);

	(axi_app_xtlm_model->app_wr_skt)->bind(*(app_ddrx_xtlm_model->wr_skt));
	(axi_app_xtlm_model->app_rd_skt)->bind(*(app_ddrx_xtlm_model->rd_skt));

	axi_app_xtlm_model->axi_clk.bind(c0_axi_s_axi_clk);

}

sim_ddrx::~sim_ddrx() {
#ifdef DEBUGMSG
	cout<<"sim_ddrx destructor"<<endl;
#endif  
	if (axi_app_xtlm_model)
		delete axi_app_xtlm_model;

	if (app_ddrx_xtlm_model)
		delete app_ddrx_xtlm_model;
}

void sim_ddrx::init_fmodel() {
}

}
}


