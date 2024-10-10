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
#include "kdma.types.h"
#include "kdma.config.h"
#include "xtlm.h"
class kdma: sc_core::sc_module {
	SC_HAS_PROCESS(kdma);
public:
	sc_in<bool> clk;
	sc_in<bool> aresetn;
	sc_out<bool> interrupt;
	sc_time clk_period;
	axi_mm_mgr mem_manager;
	saxilite_t mReg;
	kdma(sc_core::sc_module_name p_name, xsc::common_cpp::properties);
private:
	sc_event event_start;
	sc_event event_exit;
	void read_axilite_reg();
	void write_axilite_reg();
	void calculate_clk_period();
	void launch_kdma();
	void _stub_kdma();
	u32_t _ssdm_op_Read_s_axilite_i32P(p64_t);
	u64_t _ssdm_op_Read_s_axilite_i64P(p64_t);
	i1_t _ssdm_op_ReadReq_m_axi_i512P(p64_t, u32_t);
	i1_t _ssdm_op_WriteReq_m_axi_i512P(p64_t, u32_t);
	bn_t<512> _ssdm_op_Read_m_axi_i512P(p64_t);
	void _ssdm_op_Write_m_axi_i512P(bn_t<512>);
	i1_t _ssdm_op_WriteResp_m_axi_i512P(p64_t);
	u32_t _ssdm_op_PartSelect_i26_i32_i32_i32(u32_t in, u32_t, u32_t) {
		return in;
	}
public:
	//  Interfaces Connected To module
	axi_mm_is * m_axi__rd_socket;
	axi_mm_is * m_axi__wr_socket;
	axi_mm_ts * s_axilite_control_rd_socket;
	axi_mm_ts * s_axilite_control_wr_socket;
private:
	// Utility For each of interface module
	axi_mm_isru * m_axi__rd_socket_util;
	axi_mm_iswu * m_axi__wr_socket_util;
	axi_mm_tsru * s_axilite_control_rd_socket_util;
	axi_mm_tswu * s_axilite_control_wr_socket_util;
	void handle_m_axi__rd_req();
	void handle_m_axi__rd_data();
	void handle_m_axi__wr_req();
	void handle_m_axi__wr_data();
	void handle_m_axi__wr_resp();
	void interrupt_handling();
	u64_t m_axi__rd_addr;
	u64_t m_axi__rd_pending_tx;
	u64_t m_axi__rd_beats;
	u64_t m_axi__wr_addr;
	u64_t m_axi__wr_pending_tx;
	u64_t m_axi__wr_resp_expected;
	u64_t m_axi__wr_resp_received;
	sc_core::sc_fifo<auxilary::data_req_t> m_axi__rd_req_fifo;
	sc_core::sc_fifo<auxilary::data_req_t> m_axi__wr_req_fifo;
	sc_core::sc_fifo<bn_t<512> > m_axi__rd_data_fifo;
	sc_core::sc_fifo<bn_t<512> > m_axi__wr_data_fifo;
	sc_core::sc_fifo<bool> m_axi__wr_resp_fifo;
	std::queue<auxilary::wr_beat_t> m_axi__wr_queue;
// state
	void s_1();
	void s_135();
	void s_136();
	void s_137();
	void s_138();
	void s_139();
	void s_270();
// transitions
	sc_event kdma_fsm_entry;
	sc_event kdma_fsm_exit;
	sc_event t_1_135;
	sc_event t_135_136;
	sc_core::sc_fifo<bool> t_136_139;
	sc_core::sc_fifo<bool> t_136_137;
	sc_core::sc_fifo<bn_t<512> > t_137_138;
	sc_event t_138_136;
	sc_event t_139_270;
	sc_event for_interrupt;
// register
	u64_t tmp_2;
	i1_t gmem_addr_2_rd_req;
	bn_t<512> gmem_addr_read;
	u64_t output0_read;
	i1_t gmem_addr_3_wr_req;
	i1_t empty_10;
	i1_t gmem_addr_3_wr_resp;
	u64_t input0_read;
	u64_t arg_num_blocks;
	u32_t empty_8;
	p64_t gmem_addr_1;
	u64_t add_ln8;
	u32_t empty_9;
	u64_t empty_7;
	u32_t empty;
	u64_t blockindex_0_reg2mem;
	i1_t icmp_ln8;
	u32_t tmp;
	p64_t gmem_addr;
	u64_t tmp_1;
	xsc::common_cpp::properties m_properties;
};
//end of Class
