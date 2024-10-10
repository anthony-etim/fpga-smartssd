// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "xtlm_simple_interconnect.h"
#include "xtlm_simple_interconnect_model.h"
xtlm_simple_interconnect::xtlm_simple_interconnect(sc_module_name name, xsc::common_cpp::properties& properties) {
  uint64_t num_mi=properties.getLongLong("C_NUM_MI");
	uint64_t num_si=properties.getLongLong("C_NUM_SI");;
	m_model = new xtlm_simple_interconnect_model("icn", properties);
	initiator_0_rd_socket = m_model->initiator_rd_sockets[0];
	initiator_0_wr_socket = m_model->initiator_wr_sockets[0];
	initiator_1_rd_socket = m_model->initiator_rd_sockets[1];
	initiator_1_wr_socket = m_model->initiator_wr_sockets[1];
	initiator_2_rd_socket = m_model->initiator_rd_sockets[2];
	initiator_2_wr_socket = m_model->initiator_wr_sockets[2];
	initiator_3_rd_socket = m_model->initiator_rd_sockets[3];
	initiator_3_wr_socket = m_model->initiator_wr_sockets[3];
	initiator_4_rd_socket = m_model->initiator_rd_sockets[4];
	initiator_4_wr_socket = m_model->initiator_wr_sockets[4];
	initiator_5_rd_socket = m_model->initiator_rd_sockets[5];
	initiator_5_wr_socket = m_model->initiator_wr_sockets[5];
	initiator_6_rd_socket = m_model->initiator_rd_sockets[6];
	initiator_6_wr_socket = m_model->initiator_wr_sockets[6];
	initiator_7_rd_socket = m_model->initiator_rd_sockets[7];
	initiator_7_wr_socket = m_model->initiator_wr_sockets[7];
	initiator_8_rd_socket = m_model->initiator_rd_sockets[8];
	initiator_8_wr_socket = m_model->initiator_wr_sockets[8];
	initiator_9_rd_socket = m_model->initiator_rd_sockets[9];
	initiator_9_wr_socket = m_model->initiator_wr_sockets[9];
	initiator_10_rd_socket = m_model->initiator_rd_sockets[10];
	initiator_10_wr_socket = m_model->initiator_wr_sockets[10];
	initiator_11_rd_socket = m_model->initiator_rd_sockets[11];
	initiator_11_wr_socket = m_model->initiator_wr_sockets[11];
	initiator_12_rd_socket = m_model->initiator_rd_sockets[12];
	initiator_12_wr_socket = m_model->initiator_wr_sockets[12];
	initiator_13_rd_socket = m_model->initiator_rd_sockets[13];

	initiator_13_wr_socket = m_model->initiator_wr_sockets[13];

	initiator_14_rd_socket = m_model->initiator_rd_sockets[14];

	initiator_14_wr_socket = m_model->initiator_wr_sockets[14];

	initiator_15_rd_socket = m_model->initiator_rd_sockets[15];

	initiator_15_wr_socket = m_model->initiator_wr_sockets[15];

	initiator_16_rd_socket = m_model->initiator_rd_sockets[16];

	initiator_16_wr_socket = m_model->initiator_wr_sockets[16];

	initiator_17_rd_socket = m_model->initiator_rd_sockets[17];

	initiator_17_wr_socket = m_model->initiator_wr_sockets[17];

	initiator_18_rd_socket = m_model->initiator_rd_sockets[18];

	initiator_18_wr_socket = m_model->initiator_wr_sockets[18];

	initiator_19_rd_socket = m_model->initiator_rd_sockets[19];

	initiator_19_wr_socket = m_model->initiator_wr_sockets[19];

	initiator_20_rd_socket = m_model->initiator_rd_sockets[20];

	initiator_20_wr_socket = m_model->initiator_wr_sockets[20];

	initiator_21_rd_socket = m_model->initiator_rd_sockets[21];

	initiator_21_wr_socket = m_model->initiator_wr_sockets[21];

	initiator_22_rd_socket = m_model->initiator_rd_sockets[22];

	initiator_22_wr_socket = m_model->initiator_wr_sockets[22];

	initiator_23_rd_socket = m_model->initiator_rd_sockets[23];

	initiator_23_wr_socket = m_model->initiator_wr_sockets[23];

	initiator_24_rd_socket = m_model->initiator_rd_sockets[24];

	initiator_24_wr_socket = m_model->initiator_wr_sockets[24];

	initiator_25_rd_socket = m_model->initiator_rd_sockets[25];

	initiator_25_wr_socket = m_model->initiator_wr_sockets[25];

	initiator_26_rd_socket = m_model->initiator_rd_sockets[26];

	initiator_26_wr_socket = m_model->initiator_wr_sockets[26];

	initiator_27_rd_socket = m_model->initiator_rd_sockets[27];

	initiator_27_wr_socket = m_model->initiator_wr_sockets[27];

	initiator_28_rd_socket = m_model->initiator_rd_sockets[28];

	initiator_28_wr_socket = m_model->initiator_wr_sockets[28];

	initiator_29_rd_socket = m_model->initiator_rd_sockets[29];

	initiator_29_wr_socket = m_model->initiator_wr_sockets[29];

	initiator_30_rd_socket = m_model->initiator_rd_sockets[30];

	initiator_30_wr_socket = m_model->initiator_wr_sockets[30];

	initiator_31_rd_socket = m_model->initiator_rd_sockets[31];

	initiator_31_wr_socket = m_model->initiator_wr_sockets[31];

	target_0_rd_socket = m_model->target_rd_sockets[0];

	target_0_wr_socket = m_model->target_wr_sockets[0];

	target_1_rd_socket = m_model->target_rd_sockets[1];

	target_1_wr_socket = m_model->target_wr_sockets[1];

	target_2_rd_socket = m_model->target_rd_sockets[2];

	target_2_wr_socket = m_model->target_wr_sockets[2];

	target_3_rd_socket = m_model->target_rd_sockets[3];

	target_3_wr_socket = m_model->target_wr_sockets[3];

	target_4_rd_socket = m_model->target_rd_sockets[4];

	target_4_wr_socket = m_model->target_wr_sockets[4];

	target_5_rd_socket = m_model->target_rd_sockets[5];

	target_5_wr_socket = m_model->target_wr_sockets[5];

	target_6_rd_socket = m_model->target_rd_sockets[6];

	target_6_wr_socket = m_model->target_wr_sockets[6];

	target_7_rd_socket = m_model->target_rd_sockets[7];

	target_7_wr_socket = m_model->target_wr_sockets[7];

	target_8_rd_socket = m_model->target_rd_sockets[8];

	target_8_wr_socket = m_model->target_wr_sockets[8];

	target_9_rd_socket = m_model->target_rd_sockets[9];

	target_9_wr_socket = m_model->target_wr_sockets[9];

	target_10_rd_socket = m_model->target_rd_sockets[10];

	target_10_wr_socket = m_model->target_wr_sockets[10];

	target_11_rd_socket = m_model->target_rd_sockets[11];

	target_11_wr_socket = m_model->target_wr_sockets[11];

	target_12_rd_socket = m_model->target_rd_sockets[12];
	target_12_wr_socket = m_model->target_wr_sockets[12];
	target_13_rd_socket = m_model->target_rd_sockets[13];
	target_13_wr_socket = m_model->target_wr_sockets[13];
	target_14_rd_socket = m_model->target_rd_sockets[14];
	target_14_wr_socket = m_model->target_wr_sockets[14];
	target_15_rd_socket = m_model->target_rd_sockets[15];
	target_15_wr_socket = m_model->target_wr_sockets[15];
	target_16_rd_socket = m_model->target_rd_sockets[16];
	target_16_wr_socket = m_model->target_wr_sockets[16];
	target_17_rd_socket = m_model->target_rd_sockets[17];
	target_17_wr_socket = m_model->target_wr_sockets[17];
	target_18_rd_socket = m_model->target_rd_sockets[18];
	target_18_wr_socket = m_model->target_wr_sockets[18];
	target_19_rd_socket = m_model->target_rd_sockets[19];
	target_19_wr_socket = m_model->target_wr_sockets[19];
	target_20_rd_socket = m_model->target_rd_sockets[20];
	target_20_wr_socket = m_model->target_wr_sockets[20];
	target_21_rd_socket = m_model->target_rd_sockets[21];
	target_21_wr_socket = m_model->target_wr_sockets[21];
	target_22_rd_socket = m_model->target_rd_sockets[22];
	target_22_wr_socket = m_model->target_wr_sockets[22];
	target_23_rd_socket = m_model->target_rd_sockets[23];
	target_23_wr_socket = m_model->target_wr_sockets[23];
	target_24_rd_socket = m_model->target_rd_sockets[24];
	target_24_wr_socket = m_model->target_wr_sockets[24];
	target_25_rd_socket = m_model->target_rd_sockets[25];
	target_25_wr_socket = m_model->target_wr_sockets[25];
	target_26_rd_socket = m_model->target_rd_sockets[26];
	target_26_wr_socket = m_model->target_wr_sockets[26];
	target_27_rd_socket = m_model->target_rd_sockets[27];
	target_27_wr_socket = m_model->target_wr_sockets[27];
	target_28_rd_socket = m_model->target_rd_sockets[28];
	target_28_wr_socket = m_model->target_wr_sockets[28];
	target_29_rd_socket = m_model->target_rd_sockets[29];
	target_29_wr_socket = m_model->target_wr_sockets[29];
	target_30_rd_socket = m_model->target_rd_sockets[30];
	target_30_wr_socket = m_model->target_wr_sockets[30];
	target_31_rd_socket = m_model->target_rd_sockets[31];
	target_31_wr_socket = m_model->target_wr_sockets[31];

if(num_mi<1) m00_axi_aclk(m00_axi_aclk_sig);
if(num_mi<1) m00_axi_aresetn(m00_axi_aresetn_sig);
if(num_mi<2) m01_axi_aclk(m01_axi_aclk_sig);
if(num_mi<2) m01_axi_aresetn(m01_axi_aresetn_sig);
if(num_mi<3) m02_axi_aclk(m02_axi_aclk_sig);
if(num_mi<3) m02_axi_aresetn(m02_axi_aresetn_sig);
if(num_mi<4) m03_axi_aclk(m03_axi_aclk_sig);
if(num_mi<4) m03_axi_aresetn(m03_axi_aresetn_sig);
if(num_mi<5) m04_axi_aclk(m04_axi_aclk_sig);
if(num_mi<5) m04_axi_aresetn(m04_axi_aresetn_sig);
if(num_mi<6) m05_axi_aclk(m05_axi_aclk_sig);
if(num_mi<6) m05_axi_aresetn(m05_axi_aresetn_sig);
if(num_mi<7) m06_axi_aclk(m06_axi_aclk_sig);
if(num_mi<7) m06_axi_aresetn(m06_axi_aresetn_sig);
if(num_mi<8) m07_axi_aclk(m07_axi_aclk_sig);
if(num_mi<8) m07_axi_aresetn(m07_axi_aresetn_sig);
if(num_mi<9) m08_axi_aclk(m08_axi_aclk_sig);
if(num_mi<9) m08_axi_aresetn(m08_axi_aresetn_sig);
if(num_mi<10) m09_axi_aclk(m09_axi_aclk_sig);
if(num_mi<10) m09_axi_aresetn(m09_axi_aresetn_sig);
if(num_mi<11) m10_axi_aclk(m10_axi_aclk_sig);
if(num_mi<11) m10_axi_aresetn(m10_axi_aresetn_sig);
if(num_mi<12) m11_axi_aclk(m11_axi_aclk_sig);
if(num_mi<12) m11_axi_aresetn(m11_axi_aresetn_sig);
if(num_mi<13) m12_axi_aclk(m12_axi_aclk_sig);
if(num_mi<13) m12_axi_aresetn(m12_axi_aresetn_sig);
if(num_mi<14) m13_axi_aclk(m13_axi_aclk_sig);
if(num_mi<14) m13_axi_aresetn(m13_axi_aresetn_sig);
if(num_mi<15) m14_axi_aclk(m14_axi_aclk_sig);
if(num_mi<15) m14_axi_aresetn(m14_axi_aresetn_sig);
if(num_mi<16) m15_axi_aclk(m15_axi_aclk_sig);
if(num_mi<16) m15_axi_aresetn(m15_axi_aresetn_sig);
if(num_mi<17) m16_axi_aclk(m16_axi_aclk_sig);
if(num_mi<17) m16_axi_aresetn(m16_axi_aresetn_sig);
if(num_mi<18) m17_axi_aclk(m17_axi_aclk_sig);
if(num_mi<18) m17_axi_aresetn(m17_axi_aresetn_sig);
if(num_mi<19) m18_axi_aclk(m18_axi_aclk_sig);
if(num_mi<19) m18_axi_aresetn(m18_axi_aresetn_sig);
if(num_mi<20) m19_axi_aclk(m19_axi_aclk_sig);
if(num_mi<20) m19_axi_aresetn(m19_axi_aresetn_sig);
if(num_mi<21) m20_axi_aclk(m20_axi_aclk_sig);
if(num_mi<21) m20_axi_aresetn(m20_axi_aresetn_sig);
if(num_mi<22) m21_axi_aclk(m21_axi_aclk_sig);
if(num_mi<22) m21_axi_aresetn(m21_axi_aresetn_sig);
if(num_mi<23) m22_axi_aclk(m22_axi_aclk_sig);
if(num_mi<23) m22_axi_aresetn(m22_axi_aresetn_sig);
if(num_mi<24) m23_axi_aclk(m23_axi_aclk_sig);
if(num_mi<24) m23_axi_aresetn(m23_axi_aresetn_sig);
if(num_mi<25) m24_axi_aclk(m24_axi_aclk_sig);
if(num_mi<25) m24_axi_aresetn(m24_axi_aresetn_sig);
if(num_mi<26) m25_axi_aclk(m25_axi_aclk_sig);
if(num_mi<26) m25_axi_aresetn(m25_axi_aresetn_sig);
if(num_mi<27) m26_axi_aclk(m26_axi_aclk_sig);
if(num_mi<27) m26_axi_aresetn(m26_axi_aresetn_sig);
if(num_mi<28) m27_axi_aclk(m27_axi_aclk_sig);
if(num_mi<28) m27_axi_aresetn(m27_axi_aresetn_sig);
if(num_mi<29) m28_axi_aclk(m28_axi_aclk_sig);
if(num_mi<29) m28_axi_aresetn(m28_axi_aresetn_sig);
if(num_mi<30) m29_axi_aclk(m29_axi_aclk_sig);
if(num_mi<30) m29_axi_aresetn(m29_axi_aresetn_sig);
if(num_mi<31) m30_axi_aclk(m30_axi_aclk_sig);
if(num_mi<31) m30_axi_aresetn(m30_axi_aresetn_sig);
if(num_mi<32) m31_axi_aclk(m31_axi_aclk_sig);
if(num_mi<32) m31_axi_aresetn(m31_axi_aresetn_sig);
if(num_si<1) s00_axi_aclk(s00_axi_aclk_sig);
if(num_si<1) s00_axi_aresetn(s00_axi_aresetn_sig);
if(num_si<2) s01_axi_aclk(s01_axi_aclk_sig);
if(num_si<2) s01_axi_aresetn(s01_axi_aresetn_sig);
if(num_si<3) s02_axi_aclk(s02_axi_aclk_sig);
if(num_si<3) s02_axi_aresetn(s02_axi_aresetn_sig);
if(num_si<4) s03_axi_aclk(s03_axi_aclk_sig);
if(num_si<4) s03_axi_aresetn(s03_axi_aresetn_sig);
if(num_si<5) s04_axi_aclk(s04_axi_aclk_sig);
if(num_si<5) s04_axi_aresetn(s04_axi_aresetn_sig);
if(num_si<6) s05_axi_aclk(s05_axi_aclk_sig);
if(num_si<6) s05_axi_aresetn(s05_axi_aresetn_sig);
if(num_si<7) s06_axi_aclk(s06_axi_aclk_sig);
if(num_si<7) s06_axi_aresetn(s06_axi_aresetn_sig);
if(num_si<8) s07_axi_aclk(s07_axi_aclk_sig);
if(num_si<8) s07_axi_aresetn(s07_axi_aresetn_sig);
if(num_si<9) s08_axi_aclk(s08_axi_aclk_sig);
if(num_si<9) s08_axi_aresetn(s08_axi_aresetn_sig);
if(num_si<10) s09_axi_aclk(s09_axi_aclk_sig);
if(num_si<10) s09_axi_aresetn(s09_axi_aresetn_sig);
if(num_si<11) s10_axi_aclk(s10_axi_aclk_sig);
if(num_si<11) s10_axi_aresetn(s10_axi_aresetn_sig);
if(num_si<12) s11_axi_aclk(s11_axi_aclk_sig);
if(num_si<12) s11_axi_aresetn(s11_axi_aresetn_sig);
if(num_si<13) s12_axi_aclk(s12_axi_aclk_sig);
if(num_si<13) s12_axi_aresetn(s12_axi_aresetn_sig);
if(num_si<14) s13_axi_aclk(s13_axi_aclk_sig);
if(num_si<14) s13_axi_aresetn(s13_axi_aresetn_sig);
if(num_si<15) s14_axi_aclk(s14_axi_aclk_sig);
if(num_si<15) s14_axi_aresetn(s14_axi_aresetn_sig);
if(num_si<16) s15_axi_aclk(s15_axi_aclk_sig);
if(num_si<16) s15_axi_aresetn(s15_axi_aresetn_sig);
if(num_si<17) s16_axi_aclk(s16_axi_aclk_sig);
if(num_si<17) s16_axi_aresetn(s16_axi_aresetn_sig);
if(num_si<18) s17_axi_aclk(s17_axi_aclk_sig);
if(num_si<18) s17_axi_aresetn(s17_axi_aresetn_sig);
if(num_si<19) s18_axi_aclk(s18_axi_aclk_sig);
if(num_si<19) s18_axi_aresetn(s18_axi_aresetn_sig);
if(num_si<20) s19_axi_aclk(s19_axi_aclk_sig);
if(num_si<20) s19_axi_aresetn(s19_axi_aresetn_sig);
if(num_si<21) s20_axi_aclk(s20_axi_aclk_sig);
if(num_si<21) s20_axi_aresetn(s20_axi_aresetn_sig);
if(num_si<22) s21_axi_aclk(s21_axi_aclk_sig);
if(num_si<22) s21_axi_aresetn(s21_axi_aresetn_sig);
if(num_si<23) s22_axi_aclk(s22_axi_aclk_sig);
if(num_si<23) s22_axi_aresetn(s22_axi_aresetn_sig);
if(num_si<24) s23_axi_aclk(s23_axi_aclk_sig);
if(num_si<24) s23_axi_aresetn(s23_axi_aresetn_sig);
if(num_si<25) s24_axi_aclk(s24_axi_aclk_sig);
if(num_si<25) s24_axi_aresetn(s24_axi_aresetn_sig);
if(num_si<26) s25_axi_aclk(s25_axi_aclk_sig);
if(num_si<26) s25_axi_aresetn(s25_axi_aresetn_sig);
if(num_si<27) s26_axi_aclk(s26_axi_aclk_sig);
if(num_si<27) s26_axi_aresetn(s26_axi_aresetn_sig);
if(num_si<28) s27_axi_aclk(s27_axi_aclk_sig);
if(num_si<28) s27_axi_aresetn(s27_axi_aresetn_sig);
if(num_si<29) s28_axi_aclk(s28_axi_aclk_sig);
if(num_si<29) s28_axi_aresetn(s28_axi_aresetn_sig);
if(num_si<30) s29_axi_aclk(s29_axi_aclk_sig);
if(num_si<30) s29_axi_aresetn(s29_axi_aresetn_sig);
if(num_si<31) s30_axi_aclk(s30_axi_aclk_sig);
if(num_si<31) s30_axi_aresetn(s30_axi_aresetn_sig);
if(num_si<32) s31_axi_aclk(s31_axi_aclk_sig);
if(num_si<32) s31_axi_aresetn(s31_axi_aresetn_sig);



}

xtlm_simple_interconnect::~xtlm_simple_interconnect() {
	delete m_model;
}

