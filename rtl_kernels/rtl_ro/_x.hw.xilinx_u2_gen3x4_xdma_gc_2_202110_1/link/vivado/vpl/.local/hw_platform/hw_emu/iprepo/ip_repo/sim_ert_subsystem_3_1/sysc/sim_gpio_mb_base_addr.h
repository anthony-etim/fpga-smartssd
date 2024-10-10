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

#include "xtlm.h"

namespace xsc {

    class sim_gpio_mb_base_addr : public sc_core::sc_module
    {
        public:
            SC_HAS_PROCESS(sim_gpio_mb_base_addr);
            sim_gpio_mb_base_addr(sc_module_name, xsc::common_cpp::properties&);

            //! AXI lite interface for INTC register access...
            xtlm::xtlm_aximm_target_socket*  s_axi_rd_socket;
            xtlm::xtlm_aximm_target_socket*  s_axi_wr_socket;

            xtlm::xtlm_aximm_target_wr_socket_util*  s_axi_wr_util;
            xtlm::xtlm_aximm_target_rd_socket_util*  s_axi_rd_util;

            //! Clock and Reset inputs
            sc_in<bool>   s_axi_aclk;
            sc_in<bool>   s_axi_aresetn;

        private:
            void read_reg();
            void write_reg();

            /*
             * Base address GPIO per spec
             * | Offset  | Description
             * -----------------------
             * | 0x1f30000    | ERT_MGMT_PF_base_addr_reg (Not sure where this should be used)
             * | 0x1f30008    | ERT_USER_PF_base_addr_reg. The base address of ERT peripherals
             */
            enum {
                ERT_MGMT_PF_base_reg = 0x1f30000,
                ERT_USER_PF_base_reg = 0x1f30008
            };

            //! Only 2 registers are supported
            uint8_t reg_mem[0x10];

            std::stringstream m_ss;
            xsc::common_cpp::report_handler* m_log;            
    };
}
