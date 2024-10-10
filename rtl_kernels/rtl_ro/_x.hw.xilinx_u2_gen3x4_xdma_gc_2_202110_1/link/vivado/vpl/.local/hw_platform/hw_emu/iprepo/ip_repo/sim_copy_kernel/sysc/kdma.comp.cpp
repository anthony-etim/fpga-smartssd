// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
/*  (c) Copyright 2014 - 2019 Xilinx, Inc. All rights reserved.

 This file contains confidential and proprietary information
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property
 laws.

 DISCLAIMER
 This disclaimer is not a license and does not grant any
 rights to the materials distributed herewith. Except as
 otherwise provided in a valid license issued to you by
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 (2) Xilinx shall not be liable (whether in contract or tort,
 including negligence, or under any other theory of
 liability) for any loss or damage of any kind or nature
 related to, arising under or in connection with these
 materials, including for any direct, or any indirect,
 special, incidental, or consequential loss or damage
 (including loss of data, profits, goodwill, or any type of
 loss or damage suffered as a result of any action brought
 by a third party) even if such damage or loss was
 reasonably foreseeable or Xilinx had been advised of the
 possibility of the same.

 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or
 systems, Class III medical devices, nuclear facilities,
 applications related to the deployment of airbags, or any
 other applications that could lead to death, personal
 injury, or severe property or environmental damage
 (individually and collectively, "Critical
 Applications"). Customer assumes the sole risk and
 liability of any use of Xilinx products in Critical
 Applications, subject only to applicable laws and
 regulations governing limitations on product liability.

 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 PART OF THIS FILE AT ALL TIMES.                       */
/* Auto-generated Code */
#include "kdma.common.h"

void kdma::s_1() {
	while (1) {
		wait(clk_period);
		if (true) {
			input0_read = _ssdm_op_Read_s_axilite_i64P(input0);

		}
		if (true) {
			tmp_1 = input0_read;//_ssdm_op_PartSelect_i26_i32_i32_i32(input0_read, 6, 31);

		}
		if (true) {
			output0_read = _ssdm_op_Read_s_axilite_i64P(output0);

		}
		if (true) {
			tmp_2 = output0_read;//_ssdm_op_PartSelect_i26_i32_i32_i32(output0_read, 6, 31);

		}
		if (true) {
			arg_num_blocks = _ssdm_op_Read_s_axilite_i64P(num_blocks);

		}
		if (true) {
			empty_8 = arg_num_blocks;
		}

		if (true) {
			add_ln8 = 0;
		}

		if (true) {
			t_1_135.notify(sc_core::SC_ZERO_TIME);
		}
		wait();
	}
}

void kdma::s_135() {
	u64_t gmem = 0;
	while (1) {
		wait(clk_period);
		if (true) {
			empty_7 = tmp_2;
		}
		if (true) {
			gmem_addr_1 = gmem + empty_7;
			gmem_addr = gmem + tmp_1;
		}
		if (true) {
			gmem_addr_2_rd_req = _ssdm_op_ReadReq_m_axi_i512P(gmem_addr,
					empty_8);

			wait(134 * clk_period);
		}
		if (true) {
			gmem_addr_3_wr_req = _ssdm_op_WriteReq_m_axi_i512P(gmem_addr_1,
					empty_8);

		}
		if (true) {
			t_135_136.notify(sc_core::SC_ZERO_TIME);
		}
		blockindex_0_reg2mem = 0;
		wait();
	}
}
void kdma::s_136() {
	while (1) {
		//sb_136 = false;
		wait(clk_period);
		if (true) {
			blockindex_0_reg2mem = add_ln8;
		}
		if (true) {
			icmp_ln8 = blockindex_0_reg2mem == arg_num_blocks ? true : false;
		}
		if (true) {
			add_ln8 = blockindex_0_reg2mem + 1;
		}
		if (icmp_ln8) {
			t_136_139.write(true);
			wait();
		} else {
			t_136_137.write(icmp_ln8);
		}
	}
}

void kdma::s_137() {
	while (1) {
		bool l_icmp_ln8 = t_136_137.read();
		wait(clk_period);
		if ((!l_icmp_ln8)) {
			gmem_addr_read = _ssdm_op_Read_m_axi_i512P(gmem_addr);
		}
		if (true) {
			t_137_138.write(gmem_addr_read);
		}
	}
}
void kdma::s_138() {
	while (1) {
		auto l_addr_read = t_137_138.read();
		wait(clk_period);
		_ssdm_op_Write_m_axi_i512P(l_addr_read);
	}
}

void kdma::s_139() {
	while (1) {
		t_136_139.read();
		wait(clk_period);
		if (true) {
			empty_10 = empty_8 == 0 ? true : false;
		}
		if (true) {
		}
		if ((!empty_10)) {
			gmem_addr_3_wr_resp = _ssdm_op_WriteResp_m_axi_i512P(gmem_addr_1);
			wait(130 * clk_period);
		}
		if (!empty_10) {
			t_139_270.notify(sc_core::SC_ZERO_TIME);
		} else {
			t_139_270.notify(sc_core::SC_ZERO_TIME);
		}
	}
}

void kdma::s_270() {
	while (1) {
		wait(clk_period);

		if ((!empty_10)) {
		}
		if (true) {
			kdma_fsm_exit.notify(sc_core::SC_ZERO_TIME);
		}
		wait();
	}
}
