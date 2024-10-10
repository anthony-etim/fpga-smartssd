// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// (c) Copyright 2013 - 2019 Xilinx, Inc. All rights reserved.
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
#ifndef _SIM_ACCEL_MON_H_
#define _SIM_ACCEL_MON_H_

#include "sim_accel_mon_v1_rdwr.h"
#include "sim_accel_mon_v1_axilite.h"
#include "sim_accel_mon_v1_data_model.h"
#include "xtlm.h"

class sim_accel_mon: public sc_core::sc_module {
public:
	sim_accel_mon_v1::data_model* m_data_model;
	xtlm::xtlm_aximm_monitor_socket* mon_rd_skt;
	xtlm::xtlm_aximm_monitor_socket* mon_wr_skt;
	xtlm::xtlm_aximm_target_socket* axilite_rd_skt;
	xtlm::xtlm_aximm_target_socket* axilite_wr_skt;
	xtlm::xtlm_axis_initiator_socket* trace_skt;
	sc_core::sc_in<bool> mon_clk;
	sc_core::sc_in<bool> mon_resetn;
	sc_core::sc_in<bool> trace_clk;
	sc_core::sc_in<bool> trace_rst;
	sim_accel_mon_v1::rdwr_monitor* rdwr_mon;
	sim_accel_mon_v1::axilite_module* axilite_mod;
	sim_accel_mon(sc_core::sc_module_name p_name,
			xsc::common_cpp::properties& m_properties) :
			sc_core::sc_module(p_name) {
		m_data_model = new sim_accel_mon_v1::data_model("");

		trace_skt = new xtlm::xtlm_axis_initiator_socket("trace_skt", 32);

		rdwr_mon = new sim_accel_mon_v1::rdwr_monitor("rd_mon", m_properties,
				m_data_model);

		mon_rd_skt = new xtlm::xtlm_aximm_monitor_socket("mon_rd_skt", 32,
				true); // third argument true, coz of hier binding
		mon_wr_skt = new xtlm::xtlm_aximm_monitor_socket("mon_wr_skt", 32,
				true);

		mon_rd_skt->bind(rdwr_mon->rd_skt);
		rdwr_mon->trace_skt(*trace_skt);
		mon_wr_skt->bind(rdwr_mon->wr_skt);

		rdwr_mon->clk(mon_clk);
		rdwr_mon->aresten(mon_resetn);

		axilite_mod = new sim_accel_mon_v1::axilite_module("axilite_mod",
				m_properties, m_data_model);
		axilite_rd_skt = new xtlm::xtlm_aximm_target_socket("axilite_rd_skt",
				32);
		axilite_wr_skt = new xtlm::xtlm_aximm_target_socket("axilite_wr_skt",
				32);

		axilite_rd_skt->bind(*(axilite_mod->rd_skt));
		axilite_wr_skt->bind(*(axilite_mod->wr_skt));

		axilite_mod->clk(mon_clk);
		axilite_mod->aresetn(mon_resetn);
	}
private:
};

#endif /* _sim_ACCEL_MON_H_ */
