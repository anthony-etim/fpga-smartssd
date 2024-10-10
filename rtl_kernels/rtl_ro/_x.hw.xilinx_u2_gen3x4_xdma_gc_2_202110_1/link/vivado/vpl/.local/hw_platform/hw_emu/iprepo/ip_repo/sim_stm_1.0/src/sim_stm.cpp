// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "sim_stm.h"

sim_stm::sim_stm(sc_module_name name,xsc::common_cpp::properties& properties) {
	m_model=new xsc::stm::sim_stm_imp("imp",properties);
	mstm_axi_s_socket=m_model->mstm_axi_s_socket;
	sstm_axi_s_socket=m_model->sstm_axi_s_socket;
	uint64_t num_mi=properties.getLongLong("C_NUM_STREAM_ITF");
	uint64_t num_si=properties.getLongLong("C_NUM_STREAM_ITF");;

	h2c00_axis_socket=m_model->h2c_init_socket[0];
	h2c01_axis_socket=m_model->h2c_init_socket[1];
	h2c02_axis_socket=m_model->h2c_init_socket[2];
	h2c03_axis_socket=m_model->h2c_init_socket[3];
	h2c04_axis_socket=m_model->h2c_init_socket[4];
	h2c05_axis_socket=m_model->h2c_init_socket[5];
	h2c06_axis_socket=m_model->h2c_init_socket[6];
	h2c07_axis_socket=m_model->h2c_init_socket[7];
	h2c08_axis_socket=m_model->h2c_init_socket[8];
	h2c09_axis_socket=m_model->h2c_init_socket[9];
	h2c10_axis_socket=m_model->h2c_init_socket[10];
	h2c11_axis_socket=m_model->h2c_init_socket[11];
	h2c12_axis_socket=m_model->h2c_init_socket[12];
	h2c13_axis_socket=m_model->h2c_init_socket[13];
	h2c14_axis_socket=m_model->h2c_init_socket[14];
	h2c15_axis_socket=m_model->h2c_init_socket[15];
	c2h00_axis_socket=m_model->c2h_target_socket[0];
	c2h01_axis_socket=m_model->c2h_target_socket[1];
	c2h02_axis_socket=m_model->c2h_target_socket[2];
	c2h03_axis_socket=m_model->c2h_target_socket[3];
	c2h04_axis_socket=m_model->c2h_target_socket[4];
	c2h05_axis_socket=m_model->c2h_target_socket[5];
	c2h06_axis_socket=m_model->c2h_target_socket[6];
	c2h07_axis_socket=m_model->c2h_target_socket[7];
	c2h08_axis_socket=m_model->c2h_target_socket[8];
	c2h09_axis_socket=m_model->c2h_target_socket[9];
	c2h10_axis_socket=m_model->c2h_target_socket[10];
	c2h11_axis_socket=m_model->c2h_target_socket[11];
	c2h12_axis_socket=m_model->c2h_target_socket[12];
	c2h13_axis_socket=m_model->c2h_target_socket[13];
	c2h14_axis_socket=m_model->c2h_target_socket[14];
	c2h15_axis_socket=m_model->c2h_target_socket[15];

	if(num_mi<1) h2c00_axis_aclk(h2c00_axis_aclk_sig);
	if(num_mi<2) h2c01_axis_aclk(h2c01_axis_aclk_sig);
	if(num_mi<3) h2c02_axis_aclk(h2c02_axis_aclk_sig);
	if(num_mi<4) h2c03_axis_aclk(h2c03_axis_aclk_sig);
	if(num_mi<5) h2c04_axis_aclk(h2c04_axis_aclk_sig);
	if(num_mi<6) h2c05_axis_aclk(h2c05_axis_aclk_sig);
	if(num_mi<7) h2c06_axis_aclk(h2c06_axis_aclk_sig);
	if(num_mi<8) h2c07_axis_aclk(h2c07_axis_aclk_sig);
	if(num_mi<9) h2c08_axis_aclk(h2c08_axis_aclk_sig);
	if(num_mi<10) h2c09_axis_aclk(h2c09_axis_aclk_sig);
	if(num_mi<11) h2c10_axis_aclk(h2c10_axis_aclk_sig);
	if(num_mi<12) h2c11_axis_aclk(h2c11_axis_aclk_sig);
	if(num_mi<13) h2c12_axis_aclk(h2c12_axis_aclk_sig);
	if(num_mi<14) h2c13_axis_aclk(h2c13_axis_aclk_sig);
	if(num_mi<15) h2c14_axis_aclk(h2c14_axis_aclk_sig);
	if(num_mi<16) h2c15_axis_aclk(h2c15_axis_aclk_sig);
	if(num_mi<1) h2c00_axis_aresetn(h2c00_axis_aresetn_sig);
	if(num_mi<2) h2c01_axis_aresetn(h2c01_axis_aresetn_sig);
	if(num_mi<3) h2c02_axis_aresetn(h2c02_axis_aresetn_sig);
	if(num_mi<4) h2c03_axis_aresetn(h2c03_axis_aresetn_sig);
	if(num_mi<5) h2c04_axis_aresetn(h2c04_axis_aresetn_sig);
	if(num_mi<6) h2c05_axis_aresetn(h2c05_axis_aresetn_sig);
	if(num_mi<7) h2c06_axis_aresetn(h2c06_axis_aresetn_sig);
	if(num_mi<8) h2c07_axis_aresetn(h2c07_axis_aresetn_sig);
	if(num_mi<9) h2c08_axis_aresetn(h2c08_axis_aresetn_sig);
	if(num_mi<10) h2c09_axis_aresetn(h2c09_axis_aresetn_sig);
	if(num_mi<11) h2c10_axis_aresetn(h2c10_axis_aresetn_sig);
	if(num_mi<12) h2c11_axis_aresetn(h2c11_axis_aresetn_sig);
	if(num_mi<13) h2c12_axis_aresetn(h2c12_axis_aresetn_sig);
	if(num_mi<14) h2c13_axis_aresetn(h2c13_axis_aresetn_sig);
	if(num_mi<15) h2c14_axis_aresetn(h2c14_axis_aresetn_sig);
	if(num_mi<16) h2c15_axis_aresetn(h2c15_axis_aresetn_sig);

	if(num_si<1) c2h00_axis_aclk(c2h00_axis_aclk_sig);
	if(num_si<2) c2h01_axis_aclk(c2h01_axis_aclk_sig);
	if(num_si<3) c2h02_axis_aclk(c2h02_axis_aclk_sig);
	if(num_si<4) c2h03_axis_aclk(c2h03_axis_aclk_sig);
	if(num_si<5) c2h04_axis_aclk(c2h04_axis_aclk_sig);
	if(num_si<6) c2h05_axis_aclk(c2h05_axis_aclk_sig);
	if(num_si<7) c2h06_axis_aclk(c2h06_axis_aclk_sig);
	if(num_si<8) c2h07_axis_aclk(c2h07_axis_aclk_sig);
	if(num_si<9) c2h08_axis_aclk(c2h08_axis_aclk_sig);
	if(num_si<10) c2h09_axis_aclk(c2h09_axis_aclk_sig);
	if(num_si<11) c2h10_axis_aclk(c2h10_axis_aclk_sig);
	if(num_si<12) c2h11_axis_aclk(c2h11_axis_aclk_sig);
	if(num_si<13) c2h12_axis_aclk(c2h12_axis_aclk_sig);
	if(num_si<14) c2h13_axis_aclk(c2h13_axis_aclk_sig);
	if(num_si<15) c2h14_axis_aclk(c2h14_axis_aclk_sig);
	if(num_si<16) c2h15_axis_aclk(c2h15_axis_aclk_sig);
	if(num_si<1) c2h00_axis_aresetn(c2h00_axis_aresetn_sig);
	if(num_si<2) c2h01_axis_aresetn(c2h01_axis_aresetn_sig);
	if(num_si<3) c2h02_axis_aresetn(c2h02_axis_aresetn_sig);
	if(num_si<4) c2h03_axis_aresetn(c2h03_axis_aresetn_sig);
	if(num_si<5) c2h04_axis_aresetn(c2h04_axis_aresetn_sig);
	if(num_si<6) c2h05_axis_aresetn(c2h05_axis_aresetn_sig);
	if(num_si<7) c2h06_axis_aresetn(c2h06_axis_aresetn_sig);
	if(num_si<8) c2h07_axis_aresetn(c2h07_axis_aresetn_sig);
	if(num_si<9) c2h08_axis_aresetn(c2h08_axis_aresetn_sig);
	if(num_si<10) c2h09_axis_aresetn(c2h09_axis_aresetn_sig);
	if(num_si<11) c2h10_axis_aresetn(c2h10_axis_aresetn_sig);
	if(num_si<12) c2h11_axis_aresetn(c2h11_axis_aresetn_sig);
	if(num_si<13) c2h12_axis_aresetn(c2h12_axis_aresetn_sig);
	if(num_si<14) c2h13_axis_aresetn(c2h13_axis_aresetn_sig);
	if(num_si<15) c2h14_axis_aresetn(c2h14_axis_aresetn_sig);
	if(num_si<16) c2h15_axis_aresetn(c2h15_axis_aresetn_sig);
}

sim_stm::~sim_stm() {
	delete m_model;
}


