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

#include "utils/xtlm_cmnhdr.h"
#include "xtlm.h"
#ifdef SDACCEL_WITH_DATA_CONVERTER 
#include "sdaccel_data_converter.h"
#endif
#include "sim_ddrx.h"
#include "xtlm_axi_crossbar.h"
#ifdef TLM2_PROTOCOL_CHEKER
#include "tlm2_base_protocol_checker.h"
#endif
#ifndef sim_ddr_v1_0_H
#define sim_ddr_v1_0_H
class sim_ddr_v1_0: public sc_module {
public:
	explicit sim_ddr_v1_0(sc_core::sc_module_name name,
			xsc::common_cpp::properties model_param_props);
	~sim_ddr_v1_0();

	xtlm::xtlm_aximm_target_socket* C0_DDR_SAXI_wr_socket;
	xtlm::xtlm_aximm_target_socket* C0_DDR_SAXI_rd_socket;
	xtlm::xtlm_aximm_target_socket* C1_DDR_SAXI_wr_socket;
	xtlm::xtlm_aximm_target_socket* C1_DDR_SAXI_rd_socket;
	xtlm::xtlm_aximm_target_socket* C2_DDR_SAXI_wr_socket;
	xtlm::xtlm_aximm_target_socket* C2_DDR_SAXI_rd_socket;
	xtlm::xtlm_aximm_target_socket* C3_DDR_SAXI_wr_socket;
	xtlm::xtlm_aximm_target_socket* C3_DDR_SAXI_rd_socket;
	xtlm::xtlm_aximm_target_socket* S_XDMA_AXI_wr_socket;
	xtlm::xtlm_aximm_target_socket* S_XDMA_AXI_rd_socket;

#ifdef SDACCEL_WITH_DATA_CONVERTER
	sdaccel_data_converter* sdaccel_data_converter_model;
#endif

	unsigned int numberOfddrs;

#ifdef TLM2_PROTOCOL_CHEKER        
	tlm2_base_protocol_checker* checker;
#endif
	sc_core::sc_in_clk c0_ui_clk;
	sc_core::sc_in_clk c0_ddr_saxi_aclk;
	sc_core::sc_in_clk c1_ddr_saxi_aclk;
	sc_core::sc_in_clk c2_ddr_saxi_aclk;
	sc_core::sc_in_clk c3_ddr_saxi_aclk;
	sc_core::sc_in_clk s_xdma_axi_aclk;

	sc_core::sc_in<bool> c0_ddr_saxi_aresetn;
	sc_core::sc_in<bool> c1_ddr_saxi_aresetn;
	sc_core::sc_in<bool> c2_ddr_saxi_aresetn;
	sc_core::sc_in<bool> c3_ddr_saxi_aresetn;
	sc_core::sc_in<bool> s_xdma_axi_aresetn;

protected:

private:
	xsc::sim_ddr_v1_0::xtlm_axi_crossbar* xtlm_axi_crossbar_model;
	xsc::sim_ddr_v1_0::sim_ddrx ** ddrx_top_tlm_model;

	std::map<std::string, int> user_param_int;
	std::map<std::string, std::string> user_param_string;

	sc_signal<bool> c1_ddr_saxi_aclk_signal;
	sc_signal<bool> c2_ddr_saxi_aclk_signal;
	sc_signal<bool> c3_ddr_saxi_aclk_signal;
	sc_signal<bool> c1_ddr_saxi_aresetn_signal;
	sc_signal<bool> c2_ddr_saxi_aresetn_signal;
	sc_signal<bool> c3_ddr_saxi_aresetn_signal;
};
#endif


