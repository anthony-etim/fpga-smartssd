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

#include "sim_ipc_axis_master.h"

using namespace xtlm;

sim_ipc_axis_master::sim_ipc_axis_master(sc_module_name name, 
        xsc::common_cpp::properties& ppts) : sc_module(name) ,m_logger((std::string)name)
{
    unsigned int stream_width = ppts.getLongLong("C_M00_AXIS_TDATA_WIDTH");
    stream_width_bytes = stream_width/8;

    M00_AXIS_socket = new xtlm_axis_initiator_socket("M00_AXIS", stream_width);
    m00_util = new xtlm_axis_initiator_socket_util("M00_AXIS_util", axis::TRANSACTION, stream_width);
    m00_util->stream_socket.bind(*M00_AXIS_socket);

    //! Instantiate IPC2AXIS Socket
	ipc2axis_socket = new xsc::ipc2axis_socket("ipc2axis_socket", get_ipi_name(this->name()));

    SC_METHOD(ipc2axi_stream_receive);
	sensitive << ipc2axis_socket->event();
    sensitive << m00_util->transfer_done;

    SC_METHOD(send_response);
    sensitive << m00_util->transfer_done;
	dont_initialize();    
}

void sim_ipc_axis_master::ipc2axi_stream_receive() 
{
    if (!m00_util->is_transfer_done()) {
        return;
    }

    xtlm::axis_payload* payload = ipc2axis_socket->get_payload();
    if(payload != nullptr) {

        payload->set_n_beats((payload->get_tdata_length() + stream_width_bytes - 1)/stream_width_bytes);
        std::string log; payload->get_log(log, 1);
        XSC_REPORT_INFO_VERB(m_logger, this->name(), log.c_str(), DEBUG);

        m00_util->transport(payload, SC_ZERO_TIME);
    }
}

void sim_ipc_axis_master::send_response() 
{
    ipc2axis_socket->send_response();
}

std::string sim_ipc_axis_master::get_ipi_name(std::string s)
{
    s = s.substr(0, s.find_last_of("./")); // Adding "/" to support QUESTA
    s = s.substr(s.find_last_of("./") + 1);
    return s;
}

sim_ipc_axis_master::~sim_ipc_axis_master()
{
	delete m00_util;
	delete M00_AXIS_socket;
	delete ipc2axis_socket;
}
