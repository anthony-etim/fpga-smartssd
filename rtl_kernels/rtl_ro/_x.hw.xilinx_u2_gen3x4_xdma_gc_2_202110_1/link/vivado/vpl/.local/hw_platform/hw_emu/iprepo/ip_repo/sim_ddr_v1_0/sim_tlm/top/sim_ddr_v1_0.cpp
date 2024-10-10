// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// (c) Copyright(C) 2013 - 2018 by Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

#include <fstream>
#include "sim_ddr_v1_0.h"

sim_ddr_v1_0::sim_ddr_v1_0(sc_core::sc_module_name name,
		xsc::common_cpp::properties model_param_props) :
		sc_module(name), c0_ui_clk("c0_ui_clk") {
	//Configuring user parameters here
	numberOfddrs = model_param_props.getLongLong("C_NUMBER_OF_GLOBAL_MEMORIES");
	int numberOfslaveslots = model_param_props.getLongLong("C_NUM_SLAVE_SLOTS");
	int addranges = model_param_props.getLongLong("C_ADDR_RANGES");
	std::string param_suffix1[16];
	param_suffix1[0] = "00";
	param_suffix1[1] = "01";
	param_suffix1[2] = "02";
	param_suffix1[3] = "03";
	param_suffix1[4] = "04";
	param_suffix1[5] = "05";
	param_suffix1[6] = "06";
	param_suffix1[7] = "07";
	param_suffix1[8] = "08";
	param_suffix1[9] = "09";
	param_suffix1[10] = "10";
	param_suffix1[11] = "11";
	param_suffix1[12] = "12";
	param_suffix1[13] = "13";
	param_suffix1[14] = "14";
	param_suffix1[15] = "15";

	std::string ddr_suffix[16];
	ddr_suffix[0] = "0";
	ddr_suffix[1] = "1";
	ddr_suffix[2] = "2";
	ddr_suffix[3] = "3";
	ddr_suffix[4] = "4";
	ddr_suffix[5] = "5";
	ddr_suffix[6] = "6";
	ddr_suffix[7] = "7";
	ddr_suffix[8] = "8";
	ddr_suffix[9] = "9";
	ddr_suffix[10] = "10";
	ddr_suffix[11] = "11";
	ddr_suffix[12] = "12";
	ddr_suffix[13] = "13";
	ddr_suffix[14] = "14";
	ddr_suffix[15] = "15";

	for (int i = 0; i < numberOfddrs; i++) {
		for (int j = 0; j < addranges; j++) {
			uint64_t base = model_param_props.getUint64(
					std::string("C") + ddr_suffix[i] + "_A" + param_suffix1[j]
							+ "_BASE_ADDR");
			uint64_t range = model_param_props.getUint64(
					std::string("C") + ddr_suffix[i] + "_A" + param_suffix1[j]
							+ "_HIGH_ADDR");

#ifdef DEBUGMSG
			std::cout << std::string("C"+ddr_suffix[i]+"_A"+param_suffix1[j]+"_HIGH_ADDR") << " = " << hex << range << std::endl;
			cout<<endl<<("M"+param_suffix1[i]+"_A"+param_suffix1[j]+"_ADDR_WIDTH") <<" pa:: base address:"<<std::hex<< (int64_t)base;
			cout<<endl<<"pa:: range:"<<std::hex<< (int64_t)range;
#endif
			range -= 1;
			uint64_t width = 0;
			while (range > 0) {
				if (range)
					width++;
				range >>= 1;
			}
			model_param_props.addLong(
					("M" + param_suffix1[i] + "_A" + param_suffix1[j]
							+ "_ADDR_WIDTH"), std::to_string(width));
			model_param_props.addLong(
					("M" + param_suffix1[i] + "_A" + param_suffix1[j]
							+ "_BASE_ADDR"), std::to_string(base));

#ifdef DEBUGMSG
			std::cout << string("M"+param_suffix1[i]+"_A"+param_suffix1[j]+"_ADDR_WIDTH") << " = "<< hex <<width << std::endl;
			std::cout << string("M"+param_suffix1[i]+"_A"+param_suffix1[j]+"_BASE_ADDR") << " = "<< hex <<base << std::endl;
			cout<<"pa :: width:"<<std::hex<< (int64_t)width;
#endif

		}
	}
#ifdef DEBUGMSG
}
#endif

	S_XDMA_AXI_wr_socket = new xtlm::xtlm_aximm_target_socket(
			sc_core::sc_gen_unique_name("S_XDMA_AXI_wr_socket"),
			model_param_props.getLongLong("C_S_XDMA_AXI_DATA_WIDTH"));
	S_XDMA_AXI_rd_socket = new xtlm::xtlm_aximm_target_socket(
			sc_core::sc_gen_unique_name("S_XDMA_AXI_rd_socket"),
			model_param_props.getLongLong("C_S_XDMA_AXI_DATA_WIDTH"));

	xtlm_axi_crossbar_model = new xsc::sim_ddr_v1_0::xtlm_axi_crossbar(
			"axi_crossbar_model", model_param_props);

	numberOfddrs = model_param_props.getLongLong("C_NUMBER_OF_GLOBAL_MEMORIES");
	//sim_xdma::getInstance()->numberOfddrs = numberOfddrs;
	ddrx_top_tlm_model = new xsc::sim_ddr_v1_0::sim_ddrx*[numberOfddrs];

	std::string param_suffix[4];
	param_suffix[0] = "0";
	param_suffix[1] = "1";
	param_suffix[2] = "2";
	param_suffix[3] = "3";
	unsigned int config = 0;

	for (int i = 0; i < numberOfddrs; i++) {
		model_param_props.addString("ddr_index", param_suffix[i]);
		model_param_props.addLong("partial_data_length", std::to_string(64));
		int ddr_saxi_width = 0;
		if (i == 0) {
			ddr_saxi_width = model_param_props.getLongLong(
					"C0_DDR_SAXI_DATA_WIDTH");
		}
		if (i == 1) {
			ddr_saxi_width = model_param_props.getLongLong(
					"C1_DDR_SAXI_DATA_WIDTH");
		}
		if (i == 2) {
			ddr_saxi_width = model_param_props.getLongLong(
					"C2_DDR_SAXI_DATA_WIDTH");
		}
		if (i == 3) {
			ddr_saxi_width = model_param_props.getLongLong(
					"C3_DDR_SAXI_DATA_WIDTH");
		}
		ddrx_top_tlm_model[i] = new xsc::sim_ddr_v1_0::sim_ddrx(
				sc_core::sc_gen_unique_name("ddrx_top_tlm_model"),
				model_param_props, ddr_saxi_width);

		ddrx_top_tlm_model[i]->C0_DDRX_S_AXI_wr_socket->bind(
				*(xtlm_axi_crossbar_model->master_wr_skt_array[i]));
		ddrx_top_tlm_model[i]->C0_DDRX_S_AXI_rd_socket->bind(
				*(xtlm_axi_crossbar_model->master_rd_skt_array[i]));

	}

	S_XDMA_AXI_wr_socket->bind(
			*(xtlm_axi_crossbar_model->slave_wr_skt_array[0]));
	S_XDMA_AXI_rd_socket->bind(
			*(xtlm_axi_crossbar_model->slave_rd_skt_array[0]));

	C0_DDR_SAXI_wr_socket == NULL;
	C0_DDR_SAXI_rd_socket == NULL;
	C1_DDR_SAXI_wr_socket == NULL;
	C1_DDR_SAXI_rd_socket == NULL;
	C2_DDR_SAXI_wr_socket == NULL;
	C2_DDR_SAXI_rd_socket == NULL;
	C3_DDR_SAXI_wr_socket == NULL;
	C3_DDR_SAXI_rd_socket == NULL;

	if (numberOfddrs==1) {
		c1_ddr_saxi_aclk(c1_ddr_saxi_aclk_signal);
		c2_ddr_saxi_aclk(c2_ddr_saxi_aclk_signal);
		c3_ddr_saxi_aclk(c3_ddr_saxi_aclk_signal);
		c1_ddr_saxi_aresetn(c1_ddr_saxi_aresetn_signal);
		c2_ddr_saxi_aresetn(c2_ddr_saxi_aresetn_signal);
		c3_ddr_saxi_aresetn(c3_ddr_saxi_aresetn_signal);
	} else if (numberOfddrs==2) {
		c2_ddr_saxi_aclk(c2_ddr_saxi_aclk_signal);
		c3_ddr_saxi_aclk(c3_ddr_saxi_aclk_signal);
		c2_ddr_saxi_aresetn(c2_ddr_saxi_aresetn_signal);
		c3_ddr_saxi_aresetn(c3_ddr_saxi_aresetn_signal);
	} else if (numberOfddrs==3) {
		c3_ddr_saxi_aclk(c3_ddr_saxi_aclk_signal);
		c3_ddr_saxi_aresetn(c3_ddr_saxi_aresetn_signal);
	}

	if (numberOfddrs > 0) {
		C0_DDR_SAXI_wr_socket = new xtlm::xtlm_aximm_target_socket(
				sc_core::sc_gen_unique_name("C0_DDR_SAXI_wr_socket"),
				model_param_props.getLongLong("C0_DDR_SAXI_DATA_WIDTH"));
		C0_DDR_SAXI_rd_socket = new xtlm::xtlm_aximm_target_socket(
				sc_core::sc_gen_unique_name("C0_DDR_SAXI_rd_socket"),
				model_param_props.getLongLong("C0_DDR_SAXI_DATA_WIDTH"));
		C0_DDR_SAXI_wr_socket->bind(
				*(xtlm_axi_crossbar_model->slave_wr_skt_array[1]));
		C0_DDR_SAXI_rd_socket->bind(
				*(xtlm_axi_crossbar_model->slave_rd_skt_array[1]));

	}
	if (numberOfddrs > 1) {
		C1_DDR_SAXI_wr_socket = new xtlm::xtlm_aximm_target_socket(
				sc_core::sc_gen_unique_name("C1_DDR_SAXI_wr_socket"),
				model_param_props.getLongLong("C1_DDR_SAXI_DATA_WIDTH"));
		C1_DDR_SAXI_rd_socket = new xtlm::xtlm_aximm_target_socket(
				sc_core::sc_gen_unique_name("C1_DDR_SAXI_rd_socket"),
				model_param_props.getLongLong("C1_DDR_SAXI_DATA_WIDTH"));
		C1_DDR_SAXI_wr_socket->bind(
				*(xtlm_axi_crossbar_model->slave_wr_skt_array[2]));
		C1_DDR_SAXI_rd_socket->bind(
				*(xtlm_axi_crossbar_model->slave_rd_skt_array[2]));

	}
	if (numberOfddrs > 2) {
		C2_DDR_SAXI_wr_socket = new xtlm::xtlm_aximm_target_socket(
				sc_core::sc_gen_unique_name("C2_DDR_SAXI_wr_socket"),
				model_param_props.getLongLong("C2_DDR_SAXI_DATA_WIDTH"));
		C2_DDR_SAXI_rd_socket = new xtlm::xtlm_aximm_target_socket(
				sc_core::sc_gen_unique_name("C2_DDR_SAXI_rd_socket"),

				model_param_props.getLongLong("C2_DDR_SAXI_DATA_WIDTH"));
		C2_DDR_SAXI_wr_socket->bind(
				*(xtlm_axi_crossbar_model->slave_wr_skt_array[3]));
		C2_DDR_SAXI_rd_socket->bind(
				*(xtlm_axi_crossbar_model->slave_rd_skt_array[3]));

	}
	if (numberOfddrs > 3) {
		C3_DDR_SAXI_wr_socket = new xtlm::xtlm_aximm_target_socket(
				sc_core::sc_gen_unique_name("C3_DDR_SAXI_wr_socket"),
				model_param_props.getLongLong("C3_DDR_SAXI_DATA_WIDTH"));
		C3_DDR_SAXI_rd_socket = new xtlm::xtlm_aximm_target_socket(
				sc_core::sc_gen_unique_name("C3_DDR_SAXI_rd_socket"),
				model_param_props.getLongLong("C3_DDR_SAXI_DATA_WIDTH"));
		C3_DDR_SAXI_wr_socket->bind(
				*(xtlm_axi_crossbar_model->slave_wr_skt_array[4]));
		C3_DDR_SAXI_rd_socket->bind(
				*(xtlm_axi_crossbar_model->slave_rd_skt_array[4]));

	}

	xtlm_axi_crossbar_model->axi_aclk.bind(c0_ui_clk);
	//sim_xdma_v1_0_tlm_model->c0_ui_clk.bind(c0_ui_clk);
	for (int i = 0; i < numberOfddrs; i++)
		ddrx_top_tlm_model[i]->c0_axi_s_axi_clk.bind(c0_ui_clk);

}
sim_ddr_v1_0::~sim_ddr_v1_0() {
#ifdef DEBUGMSG
	cout<<"sim_ddr_v1_0 destructor"<<endl;
#endif    
	for (int i = 0; i < numberOfddrs; i++) {

		delete ddrx_top_tlm_model[i];
		if (i >= 0) {
			delete C0_DDR_SAXI_wr_socket;
			delete C0_DDR_SAXI_rd_socket;
		}
		if (i >= 1) {
			delete C1_DDR_SAXI_wr_socket;
			delete C1_DDR_SAXI_rd_socket;
		}
		if (i >= 2) {
			delete C2_DDR_SAXI_wr_socket;
			delete C2_DDR_SAXI_rd_socket;
		}
		if (i >= 3) {
			delete C3_DDR_SAXI_wr_socket;
			delete C3_DDR_SAXI_rd_socket;
		}
	}
	delete ddrx_top_tlm_model;

	if (xtlm_axi_crossbar_model)
		delete xtlm_axi_crossbar_model;

}


