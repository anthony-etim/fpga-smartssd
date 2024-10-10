// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// (c) Copyright(C) 2013 - 2019 by Xilinx, Inc. All rights reserved.
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

#ifndef __CRTS_PS__

typedef unsigned int uint;
//void ess_Write32(uint Addr, uint Data);
//uint ess_Read32(uint Addr);

#include "xtlm.h"
#include "me_ip_block.h"

class crts_ps : public sc_core::sc_module
{
    public:
        SC_HAS_PROCESS(crts_ps);
        crts_ps(sc_module_name name, 
                xsc::common_cpp::properties& _properties);

        xtlm::xtlm_aximm_initiator_socket *M0_AXI_rd_socket;
        xtlm::xtlm_aximm_initiator_socket *M0_AXI_wr_socket;
        sc_in<bool>  m0_axi_aresetn;
        sc_in<bool>  m0_axi_aclk;

        xtlm::xtlm_aximm_initiator_rd_socket_util *rd_util;
        xtlm::xtlm_aximm_initiator_wr_socket_util *wr_util;

        xtlm::xtlm_aximm_mem_manager* mem_manager;
        sc_event res_cmplt;

        void write32(uint64 Addr, uint Data);
        uint read32(uint64 Addr);
        void b_write(uint64 Addr, uint Data);
        uint b_read(uint64 Addr);
        void response_process();
        void set_payload_attr(xtlm::aximm_payload* trans);

        //Destructor
        ~crts_ps();

    private:
        IPBlock*       ip_lib;
        destroy_ip_t*  destroy_ip;        

        void load_ps_ip();
        sc_port<AxiMasterInterface> ctrl_master;
        AxiChannel ctrl_channel_;        
};

#endif //__CRTS_PS__


