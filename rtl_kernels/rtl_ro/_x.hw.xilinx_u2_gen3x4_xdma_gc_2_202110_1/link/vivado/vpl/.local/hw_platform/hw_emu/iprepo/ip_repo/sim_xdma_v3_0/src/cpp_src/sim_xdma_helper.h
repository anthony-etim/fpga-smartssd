// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// // (c) Copyright(C) 2013 - 2020 by Xilinx, Inc. All rights reserved.
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
// Applications").  Customer assumes the sole risk and 
// liability of any use of Xilinx products in Critical 
// Applications, subject only to applicable laws and 
// regulations governing limitations on product liability. 
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS 
// PART OF THIS FILE AT ALL TIMES. 
 


#ifndef __SIM_XDMA_HELPER_H__
#define __SIM_XDMA_HELPER_H__

#ifndef ASYNC_REQUEST_MODE
#if defined(XILINX_SIMULATOR) || defined(SC_ALD_EXT) || defined(XM_SYSTEMC) // XILINX, ALDEC(riviera simulators support asycn-request mode) and Xcelium
#define ASYNC_REQUEST_MODE
#endif
#endif

#include "xcl_api.h"
#include "sim_xdma_base.h"
#include "sk_client.h"
#include <sys/types.h>
#include <fstream>

#include "xcl_macros.h"
#include "sdaccel_cmodel_macros.h"
#include "msg_handler.h"
#include <thread>
#include "report_handler.h"
#include <systemc>
#include <condition_variable>

namespace sim_xdma_async {
class xdma_thread_safe_channel;
}
class call_packet_info;
class sim_xdma_helper : public sc_core::sc_module {
public:
	sim_xdma_helper(sc_core::sc_module_name _name, sim_xdma_base* xdma_base, xsc::common_cpp::report_handler* report_handler);
	~sim_xdma_helper();
    SC_HAS_PROCESS(sim_xdma_helper);

	void main_loop();
	void init_helper();
	xcl_api_resp* x_resp;
	size_t xclCopyBufferHost2Device(uint64_t dest,const unsigned char *src, size_t size, size_t seek);
	size_t xclCopyBufferDevice2Host(uint64_t src,unsigned char*buffer, size_t size, size_t skip);

	bool isEnableSocketCommunication() const {
		return m_enable_socket_communication;
	}

	void setEnableSocketCommunication(bool enableSocketCommunication) {
		m_enable_socket_communication = enableSocketCommunication;
	}

  void end_of_simulation();
#ifdef ASYNC_REQUEST_MODE
    void pooling_socket();
#endif
    bool start_pooling;
private:
	sim_xdma_base*                     m_xdma_base;
	call_packet_info*                  ci_msg;
	void select_msg();
	sk_client                          *_sk_inst;
	size_t                             i_len;
	void*                              i_buf;
	size_t                             buf_size;
	void*                              buf;
	size_t alloc_void(size_t new_size);
	int                              m_reset_cycles;
	bool                             m_enable_socket_communication;
	xsc::common_cpp::report_handler* m_report_handler;
#ifdef ASYNC_REQUEST_MODE
    std::thread *ptr_pthread;
public:
    std::condition_variable m_pthread_cond_var;
    bool m_pthread_predicate;
    std::mutex m_pthread_cond_mutex;
private:
#endif
    int r;
#ifdef ASYNC_REQUEST_MODE
    sim_xdma_async::xdma_thread_safe_channel* m_async_channel_ptr;
#endif
};

#endif


