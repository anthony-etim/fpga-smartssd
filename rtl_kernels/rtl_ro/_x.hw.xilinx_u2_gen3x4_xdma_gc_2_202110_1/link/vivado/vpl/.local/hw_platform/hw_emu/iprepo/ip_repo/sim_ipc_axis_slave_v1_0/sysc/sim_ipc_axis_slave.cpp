// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// (c) Copyright(C) 2013 - 2021 by Xilinx, Inc. All rights reserved.
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

#include "sim_ipc_axis_slave.h"

using namespace xtlm;

sim_ipc_axis_slave::sim_ipc_axis_slave(sc_module_name name, 
         xsc::common_cpp::properties& ppts): sc_module(name), m_logger((std::string) name)
{
    unsigned int stream_width = ppts.getLongLong("C_S00_AXIS_TDATA_WIDTH");
    S00_AXIS_socket = new xtlm_axis_target_socket("S00_AXIS", stream_width);
    s00_util = new xtlm::xtlm_axis_target_socket_util("s00_util", axis::TRANSACTION, stream_width);
    S00_AXIS_socket->bind((s00_util->stream_socket));

    //! Instantiate IPC port
	axis2ipc_socket = new xsc::axis2ipc_socket("sim_ipc_axis_slave", get_ipi_name(this->name()));

    SC_METHOD(axi_stream2ipc_send);
    sensitive << s00_util->transaction_available;
    sensitive << axis2ipc_socket->event(); //! transfer complete    
	dont_initialize();
}

void sim_ipc_axis_slave::axi_stream2ipc_send() 
{
    if (!axis2ipc_socket->is_transfer_done() 
            || (!s00_util->is_transaction_available())) {
        return;
    }

	//Get the payload
	xtlm::axis_payload* payload = s00_util->sample_transaction();

    std::string log; payload->get_log(log, 1);
    XSC_REPORT_INFO_VERB(m_logger, this->name(), log.c_str(), DEBUG);

	//Send axi stream payload 
	axis2ipc_socket->transport(payload);
}

std::string sim_ipc_axis_slave::get_ipi_name(std::string s)
{
    s = s.substr(0, s.find_last_of("./")); // Adding "/" to support QUESTA
    s = s.substr(s.find_last_of("./") + 1);
    return s;
}

sim_ipc_axis_slave::~sim_ipc_axis_slave()
{
	delete s00_util;
	delete S00_AXIS_socket;
	delete axis2ipc_socket;
}

