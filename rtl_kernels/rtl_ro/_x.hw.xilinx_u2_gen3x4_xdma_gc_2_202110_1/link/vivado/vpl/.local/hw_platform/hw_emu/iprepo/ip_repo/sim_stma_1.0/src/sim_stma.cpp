// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "sim_stma.h"

sim_stma::sim_stma(sc_module_name name,xsc::common_cpp::properties& properties) {
	m_model=new xsc::stma::sim_stma_imp("imp",properties);
	m_stm_c2h_a_axi_s_socket=m_model->m_stm_a_axi_s_socket;
	s_stm_h2c_a_axi_s_socket=m_model->s_stm_a_axi_s_socket;
	uint64_t num_mi=properties.getLongLong("NUM_MI");
	uint64_t num_si=properties.getLongLong("NUM_SI");;
 
	m00_axis_socket=m_model->m_init_socket[0];
	m01_axis_socket=m_model->m_init_socket[1];
	m02_axis_socket=m_model->m_init_socket[2];
	m03_axis_socket=m_model->m_init_socket[3];
	m04_axis_socket=m_model->m_init_socket[4];
	m05_axis_socket=m_model->m_init_socket[5];
	m06_axis_socket=m_model->m_init_socket[6];
	m07_axis_socket=m_model->m_init_socket[7];
	m08_axis_socket=m_model->m_init_socket[8];
	m09_axis_socket=m_model->m_init_socket[9];
	m10_axis_socket=m_model->m_init_socket[10];
	m11_axis_socket=m_model->m_init_socket[11];
	m12_axis_socket=m_model->m_init_socket[12];
	m13_axis_socket=m_model->m_init_socket[13];
	m14_axis_socket=m_model->m_init_socket[14];
	m15_axis_socket=m_model->m_init_socket[15];
	s00_axis_socket=m_model->s_target_socket[0];
	s01_axis_socket=m_model->s_target_socket[1];
	s02_axis_socket=m_model->s_target_socket[2];
	s03_axis_socket=m_model->s_target_socket[3];
	s04_axis_socket=m_model->s_target_socket[4];
	s05_axis_socket=m_model->s_target_socket[5];
	s06_axis_socket=m_model->s_target_socket[6];
	s07_axis_socket=m_model->s_target_socket[7];
	s08_axis_socket=m_model->s_target_socket[8];
	s09_axis_socket=m_model->s_target_socket[9];
	s10_axis_socket=m_model->s_target_socket[10];
	s11_axis_socket=m_model->s_target_socket[11];
	s12_axis_socket=m_model->s_target_socket[12];
	s13_axis_socket=m_model->s_target_socket[13];
	s14_axis_socket=m_model->s_target_socket[14];
	s15_axis_socket=m_model->s_target_socket[15];

	if(num_mi<1) m00_axis_aclk(m00_axis_aclk_sig);
	if(num_mi<2) m01_axis_aclk(m01_axis_aclk_sig);
	if(num_mi<3) m02_axis_aclk(m02_axis_aclk_sig);
	if(num_mi<4) m03_axis_aclk(m03_axis_aclk_sig);
	if(num_mi<5) m04_axis_aclk(m04_axis_aclk_sig);
	if(num_mi<6) m05_axis_aclk(m05_axis_aclk_sig);
	if(num_mi<7) m06_axis_aclk(m06_axis_aclk_sig);
	if(num_mi<8) m07_axis_aclk(m07_axis_aclk_sig);
	if(num_mi<9) m08_axis_aclk(m08_axis_aclk_sig);
	if(num_mi<10) m09_axis_aclk(m09_axis_aclk_sig);
	if(num_mi<11) m10_axis_aclk(m10_axis_aclk_sig);
	if(num_mi<12) m11_axis_aclk(m11_axis_aclk_sig);
	if(num_mi<13) m12_axis_aclk(m12_axis_aclk_sig);
	if(num_mi<14) m13_axis_aclk(m13_axis_aclk_sig);
	if(num_mi<15) m14_axis_aclk(m14_axis_aclk_sig);
	if(num_mi<16) m15_axis_aclk(m15_axis_aclk_sig);
	if(num_mi<1) m00_axis_aresetn(m00_axis_aresetn_sig);
	if(num_mi<2) m01_axis_aresetn(m01_axis_aresetn_sig);
	if(num_mi<3) m02_axis_aresetn(m02_axis_aresetn_sig);
	if(num_mi<4) m03_axis_aresetn(m03_axis_aresetn_sig);
	if(num_mi<5) m04_axis_aresetn(m04_axis_aresetn_sig);
	if(num_mi<6) m05_axis_aresetn(m05_axis_aresetn_sig);
	if(num_mi<7) m06_axis_aresetn(m06_axis_aresetn_sig);
	if(num_mi<8) m07_axis_aresetn(m07_axis_aresetn_sig);
	if(num_mi<9) m08_axis_aresetn(m08_axis_aresetn_sig);
	if(num_mi<10) m09_axis_aresetn(m09_axis_aresetn_sig);
	if(num_mi<11) m10_axis_aresetn(m10_axis_aresetn_sig);
	if(num_mi<12) m11_axis_aresetn(m11_axis_aresetn_sig);
	if(num_mi<13) m12_axis_aresetn(m12_axis_aresetn_sig);
	if(num_mi<14) m13_axis_aresetn(m13_axis_aresetn_sig);
	if(num_mi<15) m14_axis_aresetn(m14_axis_aresetn_sig);
	if(num_mi<16) m15_axis_aresetn(m15_axis_aresetn_sig);

	if(num_si<1) s00_axis_aclk(s00_axis_aclk_sig);
	if(num_si<2) s01_axis_aclk(s01_axis_aclk_sig);
	if(num_si<3) s02_axis_aclk(s02_axis_aclk_sig);
	if(num_si<4) s03_axis_aclk(s03_axis_aclk_sig);
	if(num_si<5) s04_axis_aclk(s04_axis_aclk_sig);
	if(num_si<6) s05_axis_aclk(s05_axis_aclk_sig);
	if(num_si<7) s06_axis_aclk(s06_axis_aclk_sig);
	if(num_si<8) s07_axis_aclk(s07_axis_aclk_sig);
	if(num_si<9) s08_axis_aclk(s08_axis_aclk_sig);
	if(num_si<10) s09_axis_aclk(s09_axis_aclk_sig);
	if(num_si<11) s10_axis_aclk(s10_axis_aclk_sig);
	if(num_si<12) s11_axis_aclk(s11_axis_aclk_sig);
	if(num_si<13) s12_axis_aclk(s12_axis_aclk_sig);
	if(num_si<14) s13_axis_aclk(s13_axis_aclk_sig);
	if(num_si<15) s14_axis_aclk(s14_axis_aclk_sig);
	if(num_si<16) s15_axis_aclk(s15_axis_aclk_sig);
	if(num_si<1) s00_axis_aresetn(s00_axis_aresetn_sig);
	if(num_si<2) s01_axis_aresetn(s01_axis_aresetn_sig);
	if(num_si<3) s02_axis_aresetn(s02_axis_aresetn_sig);
	if(num_si<4) s03_axis_aresetn(s03_axis_aresetn_sig);
	if(num_si<5) s04_axis_aresetn(s04_axis_aresetn_sig);
	if(num_si<6) s05_axis_aresetn(s05_axis_aresetn_sig);
	if(num_si<7) s06_axis_aresetn(s06_axis_aresetn_sig);
	if(num_si<8) s07_axis_aresetn(s07_axis_aresetn_sig);
	if(num_si<9) s08_axis_aresetn(s08_axis_aresetn_sig);
	if(num_si<10) s09_axis_aresetn(s09_axis_aresetn_sig);
	if(num_si<11) s10_axis_aresetn(s10_axis_aresetn_sig);
	if(num_si<12) s11_axis_aresetn(s11_axis_aresetn_sig);
	if(num_si<13) s12_axis_aresetn(s12_axis_aresetn_sig);
	if(num_si<14) s13_axis_aresetn(s13_axis_aresetn_sig);
	if(num_si<15) s14_axis_aresetn(s14_axis_aresetn_sig);
	if(num_si<16) s15_axis_aresetn(s15_axis_aresetn_sig);
}

sim_stma::~sim_stma() {
	delete m_model;
}


