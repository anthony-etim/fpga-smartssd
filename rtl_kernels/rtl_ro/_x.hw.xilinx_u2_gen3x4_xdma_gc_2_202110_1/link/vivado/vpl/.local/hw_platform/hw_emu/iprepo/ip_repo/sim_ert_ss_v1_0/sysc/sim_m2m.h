// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
/*  (c) Copyright 1995 - 2020 Xilinx, Inc. All rights reserved.

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
 PART OF THIS FILE AT ALL TIMES.      */ 
#pragma once

#include <queue>

#include "xtlm.h"
#include "xtlm_ap_ctrl.h"

namespace xsc {
class sim_m2m : public xsc::xtlm_ap_ctrl
{
    public:
        SC_HAS_PROCESS(sim_m2m);
        sim_m2m(sc_module_name name, 
                xsc::common_cpp::properties& _properties);

        xtlm::xtlm_aximm_initiator_socket*         m_axi_gmem_rd_socket;
        xtlm::xtlm_aximm_initiator_rd_socket_util* m_axi_gmem_rd_util;

        xtlm::xtlm_aximm_initiator_socket*         m_axi_gmem_wr_socket;
        xtlm::xtlm_aximm_initiator_wr_socket_util* m_axi_gmem_wr_util;

        sc_out<bool>  interrupt;

    private:
        //! Base class function implementation...
        void ap_start();

        //! Kernel specific functionality...
        void gmem_read_request();
        void gmem_read_response();

        void gmem_write_request();
        void gmem_write_response();
        xtlm::aximm_payload* init_payload();
               
        sc_event ev_start_gm_read;
        sc_event ev_start_gm_write;

        std::queue<long long int>  m_data_fifo;
        unsigned int m_data_width_bytes;
        unsigned int m_num_words_read;//! Num of Bytes read from gmem
        unsigned int m_num_words_sent;//! Num of Bytes sent over stream

        uint64_t m_gmem_read_addr;
        uint64_t m_gmem_write_addr;
        uint32_t m_size;

        bool m_wr_resp_pending;

        xtlm::xtlm_aximm_mem_manager* mm_mem_manager;  
	    xsc::common_cpp::report_handler* m_log;
        std::stringstream m_ss;
};
}
