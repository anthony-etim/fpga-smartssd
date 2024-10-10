// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
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

#include "sim_xdma.h"
#include "xcl_macros.h"
#include "sdaccel_cmodel_macros.h"
#include "msg_handler.h"

#include <sys/types.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>

#include <cstdio>
#include <cassert>
#include <algorithm>
#include <thread>
//#define DEBUGMSG 1
using namespace std;

//TODO::Clean: Declair our own Macros for extern C//DPI_LINKER_DECL DPI_DLLESPEC
//void WEAKFUNC populate_kernelArgs_info(std::map<uint64_t,std::pair<std::string,unsigned int>>);
//DPI_LINKER_DECL DPI_DLLESPEC
//void WEAKFUNC set_environment(std::string name,std::string value);
sim_xdma* sim_xdma::instance = NULL;

#define DEVHANDLE 0x1
const unsigned sim_xdma::TAG = 0X586C0C6C; // XL OpenCL X->58(ASCII), L->6C(ASCII), O->0 C->C L->6C(ASCII);

#define c0_ddr_saxi_WR_SLV_SKT_ID  0
#define c0_ddr_saxi_RD_SLV_SKT_ID  1
#define m_axi_ctrl_WR_MSTR_SKT_ID  0
#define m_axi_ctrl_RD_MSTR_SKT_ID  1
#define m_axi_ddr_WR_MSTR_SKT_ID   2
#define m_axi_ddr_RD_MSTR_SKT_ID   3
#define m_axi_1_ddr_WR_MSTR_SKT_ID 4
#define m_axi_1_ddr_RD_MSTR_SKT_ID 5
#define m_axi_2_ddr_WR_MSTR_SKT_ID 6
#define m_axi_2_ddr_RD_MSTR_SKT_ID 7

#ifdef DEBUGMSG 
std::ofstream myfile("XDMA.log");
#endif
sim_xdma::sim_xdma(sc_core::sc_module_name name,
		xsc::common_cpp::properties model_param_props) :
		sc_module(name), mTag(TAG), mRAMSize(0xffffffff), maxDMASize(0xfa0000), mCoalesceThreshold(
				4), end_waddr_respwait(false), end_raddr_respwait(false), endwaddrs_ev(
				"endwaddrs_ev"), endraddrs_ev("endraddrs_ev") {
	xdma_helper = new sim_xdma_helper(this);

	m_axi_wr_tbuf_no_serviced = 0;
	m_axi_rd_tbuf_no_serviced = 0;
	addrSpaceDeviceRamPtr = NULL;
	addrSpaceDeviceRamPtrCopiedSize = 0;
	//Populate interface properties
	m_itf_prop_map.insert(
			std::pair<xdma_intf, xdma_itf_prop*>(XDMA_CTRL,
					new xdma_itf_prop()));
	m_itf_prop_map.insert(
			std::pair<xdma_intf, xdma_itf_prop*>(XDMA_M0, new xdma_itf_prop()));
	m_itf_prop_map.insert(
			std::pair<xdma_intf, xdma_itf_prop*>(XDMA_M1, new xdma_itf_prop()));
	m_itf_prop_map.insert(
			std::pair<xdma_intf, xdma_itf_prop*>(XDMA_M2, new xdma_itf_prop()));

	//Ctrl Interface
	m_itf_prop_map[XDMA_CTRL]->addr_width = model_param_props.getLongLong(
			"C_M_AXI_LITE_ADDR_WIDTH");
	m_itf_prop_map[XDMA_CTRL]->data_width = model_param_props.getLongLong(
			"C_M_AXI_LITE_DATA_WIDTH");
	m_itf_prop_map[XDMA_CTRL]->id_width = 32;
	m_itf_prop_map[XDMA_CTRL]->support_burst = false;
	m_itf_prop_map[XDMA_CTRL]->support_backdoor_access = true;
	m_itf_prop_map[XDMA_CTRL]->enable = true;

	m_itf_prop_map[XDMA_M0]->addr_width = model_param_props.getLongLong(
			"C_M_AXI_1_ADDR_WIDTH");
	m_itf_prop_map[XDMA_M0]->data_width = model_param_props.getLongLong(
			"C_M_AXI_1_DATA_WIDTH");
	m_itf_prop_map[XDMA_M0]->support_burst = true;
	m_itf_prop_map[XDMA_M0]->support_backdoor_access = true;
	m_itf_prop_map[XDMA_M0]->enable = true;

	m_itf_prop_map[XDMA_M1]->addr_width = model_param_props.getLongLong(
			"C_M_AXI_1_ADDR_WIDTH");
	m_itf_prop_map[XDMA_M1]->data_width = model_param_props.getLongLong(
			"C_M_AXI_1_DATA_WIDTH");
	m_itf_prop_map[XDMA_M1]->support_burst = true;
	m_itf_prop_map[XDMA_M1]->support_backdoor_access = true;
	m_itf_prop_map[XDMA_M1]->enable = model_param_props.getBool(
			"C_M_AXI_1_ENABLE");

	m_itf_prop_map[XDMA_M2]->addr_width = model_param_props.getLongLong(
			"C_M_AXI_1_ADDR_WIDTH");
	m_itf_prop_map[XDMA_M2]->data_width = model_param_props.getLongLong(
			"C_M_AXI_1_DATA_WIDTH");
	m_itf_prop_map[XDMA_M2]->support_burst = true;
	m_itf_prop_map[XDMA_M2]->support_backdoor_access = true;
	m_itf_prop_map[XDMA_M2]->enable = model_param_props.getBool(
			"C_M_AXI_2_ENABLE");

	byte_enable_mask = NULL;
	numberOfddrs = 0;
	m_axi_ctrl_tbuf_no_serviced = 0;
	m_axi_ctrl_tbuf_no = 0;
	sk_client *_sk_inst = NULL;

	const char *logfileName = NULL;
	const char *deviceName = "";
	sim_xdma::instance = this;

	std::string m_axi_ctrl_wr_tlm_maximm_skt_name = sc_core::sc_gen_unique_name(
			"tlm_M_AXI_LITE_wr_socket");
	std::string m_axi_ctrl_rd_tlm_maximm_skt_name = sc_core::sc_gen_unique_name(
			"tlm_M_AXI_LITE_rd_socket");

	M_AXI_LITE_wr_socket = new xtlm::xtlm_aximm_simple_initiator_socket_tagged(
			m_axi_ctrl_wr_tlm_maximm_skt_name.c_str(),
			m_itf_prop_map[XDMA_CTRL]->data_width,
			m_axi_ctrl_WR_MSTR_SKT_ID);
	M_AXI_LITE_rd_socket = new xtlm::xtlm_aximm_simple_initiator_socket_tagged(
			m_axi_ctrl_rd_tlm_maximm_skt_name.c_str(),
			m_itf_prop_map[XDMA_CTRL]->data_width,
			m_axi_ctrl_RD_MSTR_SKT_ID);
	(*M_AXI_LITE_wr_socket)(*this);
	(*M_AXI_LITE_rd_socket)(*this);

	std::string m_axi_ddr_wr_tlm_maximm_skt_name = sc_core::sc_gen_unique_name(
			"tlm_M_AXI_wr_socket");
	std::string m_axi_ddr_rd_tlm_maximm_skt_name = sc_core::sc_gen_unique_name(
			"tlm_M_AXI_rd_socket");

	M_AXI_wr_socket = new xtlm::xtlm_aximm_simple_initiator_socket_tagged(
			m_axi_ddr_wr_tlm_maximm_skt_name.c_str(),
			m_itf_prop_map[XDMA_M0]->data_width,
			m_axi_ddr_WR_MSTR_SKT_ID);
	M_AXI_rd_socket = new xtlm::xtlm_aximm_simple_initiator_socket_tagged(
			m_axi_ddr_rd_tlm_maximm_skt_name.c_str(),
			m_itf_prop_map[XDMA_M0]->data_width,
			m_axi_ddr_RD_MSTR_SKT_ID);
	(*M_AXI_wr_socket)(*this);
	(*M_AXI_rd_socket)(*this);
	m_axi_ctrl_tbuf_no = 0;

	mHandle = DEVHANDLE;
	//NOTE::Sahil Changes
	xdma_helper->set_buffer_copy(false);
	mFreeBufferList.push_back(std::make_pair(0, mRAMSize));
	if (logfileName && (logfileName[0] != '\0')) {
		xdma_helper->get_mLogStream()->open(logfileName);
		*(xdma_helper->get_mLogStream()) << "FUNCTION, THREAD ID, ARG..."
				<< std::endl;
		*(xdma_helper->get_mLogStream()) << __func__ << ", "
				<< std::this_thread::get_id() << std::endl;
	}

	char* enablesocketcom = getenv("HW_EM_ENABLE_SOCKET");
	xdma_helper->set_enable_socket_communication(true);
	if (enablesocketcom) {
		if (strcmp(enablesocketcom, "false") == 0) //if user sets "false" to this environment variable socket communication will be bypassed.
				{
			xdma_helper->set_enable_socket_communication(false);
		}
	}
	//Setup BRAM and HBM interfaces
	if (m_itf_prop_map[XDMA_M1]->enable) {
		M_AXI_1_wr_socket = new xtlm::xtlm_aximm_simple_initiator_socket_tagged(
				sc_core::sc_gen_unique_name("tlm_M_AXI_1_wr_socket"),
				m_itf_prop_map[XDMA_M0]->data_width,
				m_axi_1_ddr_WR_MSTR_SKT_ID);
		M_AXI_1_rd_socket = new xtlm::xtlm_aximm_simple_initiator_socket_tagged(
				sc_core::sc_gen_unique_name("tlm_M_AXI_1_rd_socket"),
				m_itf_prop_map[XDMA_M0]->data_width,
				m_axi_1_ddr_RD_MSTR_SKT_ID);
		(*M_AXI_1_wr_socket)(*this);
		(*M_AXI_1_rd_socket)(*this);
	} else {
		M_AXI_1_wr_socket = NULL;
		M_AXI_1_rd_socket = NULL;
	}

	if (m_itf_prop_map[XDMA_M2]->enable) {
		M_AXI_2_wr_socket = new xtlm::xtlm_aximm_simple_initiator_socket_tagged(
				sc_core::sc_gen_unique_name("tlm_M_AXI_2_wr_socket"),
				m_itf_prop_map[XDMA_M0]->data_width,
				m_axi_2_ddr_WR_MSTR_SKT_ID);
		M_AXI_2_rd_socket = new xtlm::xtlm_aximm_simple_initiator_socket_tagged(
				sc_core::sc_gen_unique_name("tlm_M_AXI_2_rd_socket"),
				m_itf_prop_map[XDMA_M0]->data_width,
				m_axi_2_ddr_RD_MSTR_SKT_ID);
		(*M_AXI_2_wr_socket)(*this);
		(*M_AXI_2_rd_socket)(*this);
	} else {
		M_AXI_2_wr_socket = NULL;
		M_AXI_2_rd_socket = NULL;
	}

	isblocked = false;

	SC_METHOD(simulate_single_cycle_c0_ui_clk);
	sensitive << m_axi_aclk.pos();

	SC_METHOD(axilite_wr_nb_fw_method);
	sensitive << m_axi_lite_aclk.pos() << endwaddrs_ev;

	SC_METHOD(axi_wr_nb_fw_method);
	sensitive << m_axi_lite_aclk.pos() << endwaddrs_ev;

	SC_METHOD(axi_rd_nb_fw_method);
	sensitive << m_axi_lite_aclk.pos() << endraddrs_ev;

	activeIntf = XDMA_CTRL;
	end_raddr_respwait = false;
}

sim_xdma::~sim_xdma() {
	instance = NULL;

	close(mHandle);
	if (xdma_helper->get_mLogStream()->is_open()) {
		*(xdma_helper->get_mLogStream()) << __func__ << ", "
				<< std::this_thread::get_id() << std::endl;
		xdma_helper->get_mLogStream()->close();
	}
	if (M_AXI_wr_socket)
		delete M_AXI_wr_socket;
	if (M_AXI_1_rd_socket)
		delete M_AXI_rd_socket;
	if (M_AXI_1_wr_socket)
		delete M_AXI_1_wr_socket;
	if (M_AXI_1_rd_socket)
		delete M_AXI_1_rd_socket;
	if (M_AXI_2_wr_socket)
		delete M_AXI_2_wr_socket;
	if (M_AXI_2_rd_socket)
		delete M_AXI_2_rd_socket;
}
tlm::tlm_sync_enum sim_xdma::m_axi_ctrl_wr_tlm_maxi_nb_transport_bw(
		xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
		sc_core::sc_time & t) {
#ifdef DEBUGMSG 
	myfile << " (XDMA) M_AXI_LITE WR_TX :: XDMA<--OUT NB_BW  @" << sc_time_stamp();
	myfile<< "\n (XDMA) addr :: " <<hex << trans.get_address();
	myfile<< "\n (XDMA) phase :: " << phase << std::endl << std::endl;
#endif
	if (phase == xtlm::END_WDATA_LAST) {
		end_waddr_respwait = false;
		endwaddrs_ev.notify();
	}
	if ( /*xdma_helper->get_enable_socket_communication() && */(phase
			== xtlm::BEGIN_WRESP)) {
		m_axi_ctrl_tbuf_no_serviced--;
		trans.release();

		if (m_axi_ctrl_tbuf_no_serviced == 0) {
			size_t s = trans.get_data_length();
			xdma_helper->x_resp->xclWriteAddrKernelCtrl_resp(
					m_axi_ctrl_tbuf_no * 4);
			xdma_helper->set_host_resp_due(false);

		}
		phase = xtlm::END_WRESP;
		return tlm::TLM_UPDATED;
	}

	return tlm::TLM_ACCEPTED;
}

tlm::tlm_sync_enum sim_xdma::m_axi_ctrl_rd_tlm_maxi_nb_transport_bw(
		xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
		sc_core::sc_time & t) {
#ifdef DEBUGMSG 
	myfile << " (XDMA) M_AXI_LITE RD_TX :: XDMA<--OUT NB_BW  @" << sc_time_stamp();
	myfile<< "\n (XDMA) addr :: " << hex << trans.get_address();
	myfile<< "\n (XDMA) phase :: " << phase << std::endl << std::endl;
#endif
	if ((xdma_helper->get_enable_socket_communication())
			&& (phase == xtlm::BEGIN_RDATA_LAST)) {
		char* data = reinterpret_cast<char*>(trans.get_data_ptr());
		size_t size = trans.get_data_length() * 8;
		xdma_helper->x_resp->xclReadAddrKernelCtrl_resp(data, size, true);
		xdma_helper->set_host_resp_due(false);
		trans.release();
		phase = xtlm::END_RDATA_LAST;
		return tlm::TLM_UPDATED;
	}

	return tlm::TLM_ACCEPTED;
}

tlm::tlm_sync_enum sim_xdma::m_axi_ddr_wr_tlm_maxi_nb_transport_bw(
		xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
		sc_core::sc_time & t, uint32_t tag) {
#ifdef DEBUGMSG
	myfile<< "xdma:: received ddr write nb_transport_bw (addr) : "<< trans.get_address() << endl;
	for(int i = 0; i < trans.get_data_length();i++) {
		if(i % 4 == 3) {
			myfile << std::hex << (unsigned int)(((unsigned char*)trans.get_data_ptr())[i]);
			myfile << std::hex << (unsigned int)(((unsigned char*)trans.get_data_ptr())[i-1]);
			myfile << std::hex << (unsigned int)(((unsigned char*)trans.get_data_ptr())[i-2]);
			myfile << std::hex << (unsigned int)(((unsigned char*)trans.get_data_ptr())[i-3]);
			myfile << " ";
			if(i % 64 == 63) myfile << endl;
		}
	}
	myfile << endl;
#endif
#ifdef DEBUGMSG 
	myfile << " (XDMA) WR_TX :: XDMA<--XBAR NB_BW  @" << sc_time_stamp();
	myfile<< "\n (XDMA) addr :: " << hex << trans.get_address();
	myfile<< "\n (XDMA) phase :: " << phase << std::endl << std::endl;
#endif
	if(phase==xtlm::END_WADDR) {

	} else if (phase == xtlm::END_WDATA_LAST) {

	} else if(phase == xtlm::END_WDATA) {

	} else 	if (phase == xtlm::BEGIN_WRESP) {
		m_axi_wr_tbuf_no_serviced--;
		size_t size = trans.get_data_length();
		addrSpaceDeviceRamPtrCopiedSize += size;
		if (m_axi_wr_tbuf_no_serviced == 0) {
			if (xdma_helper->get_buffer_copy()) {
				xdma_helper->x_resp->xclCopyBufferHost2Device_resp(
						addrSpaceDeviceRamPtrCopiedSize);
			} else {
				xdma_helper->x_resp->xclWriteAddrSpaceDeviceRam_resp(
						addrSpaceDeviceRamPtrCopiedSize);
			}
			addrSpaceDeviceRamPtrCopiedSize = 0;
			xdma_helper->set_host_resp_due(false);
			end_waddr_respwait = false;
			endwaddrs_ev.notify();
		}
		//trans.release();
		phase = xtlm::END_WRESP;
		return tlm::TLM_UPDATED;
	}
	return tlm::TLM_ACCEPTED;
}

tlm::tlm_sync_enum sim_xdma::m_axi_ddr_rd_tlm_maxi_nb_transport_bw(
		xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
		sc_core::sc_time & t, uint32_t tag) {
#ifdef DEBUGMSG
	myfile << "xdma:: received ddr read nb_transport_bw (addr) : "<< trans.get_address() << std::endl;
	myfile << "xdma:: received ddr read nb_transport_bw (addr) : "<< trans.get_data_length() <<" "<<phase<< std::endl;
	for(int i = 0; i < trans.get_data_length();i++) {
		if(i % 4 == 3) {
			myfile << std::hex << (unsigned int)(((unsigned char*)trans.get_data_ptr())[i]);
			myfile << std::hex << (unsigned int)(((unsigned char*)trans.get_data_ptr())[i-1]);
			myfile << std::hex << (unsigned int)(((unsigned char*)trans.get_data_ptr())[i-2]);
			myfile << std::hex << (unsigned int)(((unsigned char*)trans.get_data_ptr())[i-3]);

			myfile << " ";
			if(i % 64 == 63) myfile << endl;
		}
	}
	myfile << endl;
	myfile << " (XDMA) RD_TX :: XDMA<--XBAR NB_BW  @" << sc_time_stamp();
	myfile<< "\n (XDMA) addr :: " << hex <<trans.get_address();
	myfile<< "\n (XDMA) phase :: " << phase << std::endl << std::endl;
#endif
	if (phase == xtlm::END_RADDR) {
		phase=xtlm::END_RDATA;
		return tlm::TLM_UPDATED;
	} else if ((phase == xtlm::BEGIN_RDATA) ) {
		phase=xtlm::END_RDATA;
		return tlm::TLM_UPDATED;
	} else 	if ((phase == xtlm::BEGIN_RDATA_LAST)) {
		m_axi_rd_tbuf_no_serviced--;
		char* data = reinterpret_cast<char*>(trans.get_data_ptr());
		size_t size = trans.get_data_length();
		memcpy(addrSpaceDeviceRamPtr + addrSpaceDeviceRamPtrCopiedSize, data,
				size);
		addrSpaceDeviceRamPtrCopiedSize += size;
		if (m_axi_rd_tbuf_no_serviced == 0) {
			if (xdma_helper->get_buffer_copy()) {
				xdma_helper->x_resp->xclCopyBufferDevice2Host_resp(
						addrSpaceDeviceRamPtr, addrSpaceDeviceRamPtrCopiedSize);
			} else {
				xdma_helper->x_resp->xclReadAddrSpaceDeviceRam_resp(
						addrSpaceDeviceRamPtr, addrSpaceDeviceRamPtrCopiedSize,
						true);
			}
			delete[] addrSpaceDeviceRamPtr;
			addrSpaceDeviceRamPtrCopiedSize = 0;
			addrSpaceDeviceRamPtr = NULL;
			xdma_helper->set_host_resp_due(false);
			trans.release();
		}
    end_raddr_respwait = false;
		endraddrs_ev.notify();
		phase = xtlm::END_RDATA_LAST;
		return tlm::TLM_UPDATED;
	}
	return tlm::TLM_ACCEPTED;
}

tlm::tlm_sync_enum sim_xdma::nb_transport_bw(int socket_id,
		xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
		sc_core::sc_time & t) {
	if (socket_id == m_axi_ctrl_WR_MSTR_SKT_ID) {
		return m_axi_ctrl_wr_tlm_maxi_nb_transport_bw(trans, phase, t);
	}
	if (socket_id == m_axi_ctrl_RD_MSTR_SKT_ID) {
		return m_axi_ctrl_rd_tlm_maxi_nb_transport_bw(trans, phase, t);
	}
	if (socket_id == m_axi_ddr_WR_MSTR_SKT_ID
			|| socket_id == m_axi_1_ddr_WR_MSTR_SKT_ID
			|| socket_id == m_axi_2_ddr_WR_MSTR_SKT_ID) {
		return m_axi_ddr_wr_tlm_maxi_nb_transport_bw(trans, phase, t, socket_id);
	}
	if (socket_id == m_axi_ddr_RD_MSTR_SKT_ID
			|| socket_id == m_axi_1_ddr_RD_MSTR_SKT_ID
			|| socket_id == m_axi_2_ddr_RD_MSTR_SKT_ID) {
		return m_axi_ddr_rd_tlm_maxi_nb_transport_bw(trans, phase, t, socket_id);
	}
	return tlm::TLM_COMPLETED;
}

void sim_xdma::simulate_single_cycle_c0_ui_clk() {
	xdma_helper->simulate_single_cycle_c0_ui_clk();
}
void sim_xdma::simulate_single_cycle_m_axi_ctrl_clk() {

}

//PATCHED CODE
//>>>>>>>>>>>>>>>>>>>>>>>>>>>
//Called when xclWrite is received from host for Kernel registers on AXI-lite
//interface
//m_axi_ctrl_tbuf_no_serviced is used because one xclWrite call may consist of
//multiple AXILITE calls. 
void sim_xdma::fw_m_axi_ctrl_wr_trans(uint64_t offset, const void *hostBuf,
		size_t size) {
	xtlm::aximm_payload* m_axi_ctrl_trans;
	m_axi_ctrl_trans = NULL;
	m_axi_ctrl_tbuf_no = size / 4;
	m_axi_ctrl_tbuf_no_serviced = size / 4;
	xdma_helper->set_host_resp_due(true);
	for (int i = 0; i < m_axi_ctrl_tbuf_no; i++) {
		m_axi_ctrl_trans = m_mem_manager.get_payload();
		m_axi_ctrl_trans->acquire();
		m_axi_ctrl_trans->set_command(xtlm::XTLM_WRITE_COMMAND);
		unsigned int len = 4;
		unsigned char* wr_data_ptr = m_axi_ctrl_trans->create_and_get_data_ptr(
				4);
		unsigned char* wr_data_en_ptr =
				m_axi_ctrl_trans->create_and_get_byte_enable_ptr(4);
		m_axi_ctrl_trans->set_data_length(4);
		m_axi_ctrl_trans->set_byte_enable_length(4);
		m_axi_ctrl_trans->set_address(offset + (i * 4));
		for (int j = 0; j < 4; j++) {
			wr_data_ptr[j] = ((unsigned char*) (hostBuf))[(i * 4) + j];
			unsigned char ben = 0xFF;
			wr_data_en_ptr[j] = ben;
		}
		m_axi_ctrl_trans->set_burst_length(1);    //TODO temporary..
		m_axi_ctrl_trans->set_burst_size(4);    //TODO temporary..
		axilite_wr_tran_q.push(m_axi_ctrl_trans);
		endwaddrs_ev.notify();
		m_axi_ctrl_trans = NULL;
	}
}

void sim_xdma::axilite_wr_nb_fw_method() {
	if ((end_waddr_respwait == false) && (axilite_wr_tran_q.empty() == false)) {
		tlm::tlm_phase p(xtlm::BEGIN_WDATA_LAST);
		sc_time t(0, SC_NS);
		xtlm::aximm_payload* m_axi_ctrl_trans = axilite_wr_tran_q.front();
#ifdef DEBUGMSG 
		myfile << " (XDMA) M_AXI_LITE WR_TX :: XDMA-->OUT NB_FW  @" << sc_time_stamp();
		myfile<< "\n (XDMA) addr :: " << hex << m_axi_ctrl_trans->get_address();
		myfile<< "\n (XDMA) phase :: " << p << std::endl << std::endl;
#endif
		(*M_AXI_LITE_wr_socket)->nb_transport_fw(*m_axi_ctrl_trans, p, t);
		axilite_wr_tran_q.pop();
		end_waddr_respwait = true;
	}
}
//Called when xclRead is received from host for Kernel registers on AXI-lite
//interface
void sim_xdma::fw_m_axi_ctrl_rd_trans(uint64_t offset, const void *hostBuf,
		size_t size) {
	xdma_helper->set_host_resp_due(true);
	xtlm::aximm_payload* m_axi_ctrl_trans;
	m_axi_ctrl_trans = NULL;
	m_axi_ctrl_trans = m_mem_manager.get_payload();
	m_axi_ctrl_trans->acquire();
	unsigned char* rd_data_ptr = m_axi_ctrl_trans->create_and_get_data_ptr(
			size);
	unsigned char* rd_data_en_ptr =
			m_axi_ctrl_trans->create_and_get_byte_enable_ptr(size);
	m_axi_rd_tbuf_no_serviced = 1;
	m_axi_ctrl_trans->set_address(offset);
	m_axi_ctrl_trans->set_command(xtlm::XTLM_READ_COMMAND);
	m_axi_ctrl_trans->set_data_length(size);
	m_axi_ctrl_trans->set_byte_enable_length(size);
	m_axi_ctrl_trans->set_burst_length(1);    //TODO temporary..
	m_axi_ctrl_trans->set_burst_size(4);    //TODO temporary..
	//dummy write to set size and buffer

	tlm::tlm_phase p(xtlm::BEGIN_RADDR);
	sc_time t(0, SC_NS);
#ifdef DEBUGMSG 
	myfile << " (XDMA) M_AXI_LITE RD_TX :: XDMA-->OUT NB_FW  @" << sc_time_stamp();
	myfile<< "\n (XDMA) addr :: " << hex << offset << std::endl;;
	myfile<< "\n (XDMA) phase :: " << p << std::endl << std::endl;
#endif
	(*M_AXI_LITE_rd_socket)->nb_transport_fw(*m_axi_ctrl_trans, p, t);

	char* newBuf = (char*) hostBuf;
	if (newBuf) {
		delete[] newBuf;
	}
}

//<<<<<<<<<<<<<<<<<<<<<<<<<<<
void sim_xdma::init_fmodel() {
	xdma_helper->init_helper();
	registerDdrRead();
}

/*********************************************************************************/
/**********************************ocldevice_mgr**********************************/
/*********************************************************************************/
void sim_xdma::fw_m_axi_ddr_wr_trans(uint64_t offset, const void* hostBuf,
		size_t size) {
	xdma_helper->set_host_resp_due(true);
	addrSpaceDeviceRamPtrCopiedSize = 0;
	unsigned char *curr = (unsigned char *) hostBuf;
	unsigned int dataWidth = m_itf_prop_map[activeIntf]->data_width / 8;
	unsigned int transactionSize = dataWidth*128;
	unsigned int numberOfAxiTransactions = size / transactionSize;
	unsigned int finalTransactionSize = size % transactionSize;
	for (unsigned int transId = 0; transId <= numberOfAxiTransactions;
			transId++) {
		if (transId == numberOfAxiTransactions) {
			if (finalTransactionSize == 0)
				break;                //continue or break are equal here
			transactionSize = finalTransactionSize;
		}

		m_axi_wr_tbuf_no_serviced++;
		xtlm::aximm_payload* m_axi_trans = NULL;
		m_axi_trans = m_mem_manager.get_payload();
		m_axi_trans->acquire();
		unsigned char* byte_enable_mask =
				m_axi_trans->create_and_get_byte_enable_ptr(transactionSize);
		for (int i = 0; i < transactionSize; i++) {
			byte_enable_mask[i] = 0xFF;
		}
		unsigned char* data = m_axi_trans->create_and_get_data_ptr(
				transactionSize);
		for (int i = 0; i < transactionSize; i++) {
			data[i] = (curr)[i + (transId * transactionSize)];
		}

		m_axi_trans->set_command(xtlm::XTLM_WRITE_COMMAND);
		m_axi_trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
		m_axi_trans->set_address(offset + transId * transactionSize);
		m_axi_trans->set_data_length(transactionSize);
		m_axi_trans->set_byte_enable_length(transactionSize);
		m_axi_trans->set_burst_length(transactionSize / dataWidth);
		m_axi_trans->set_burst_size(dataWidth);
		m_axi_trans->set_burst_type(XAXI_BURST_INCR);
		m_axi_trans->set_cache(2);

		//hls::APBase awuserptr(m_axi_write_user_width,false,0);
		tlm::tlm_phase phase = xtlm::BEGIN_WDATA_LAST;
		sc_core::sc_time t;
		tlm::tlm_sync_enum status;

#ifdef DEBUGMSG
		myfile << " (XDMA) WR_TX :: XDMA-->XBAR NB_FW  @" << sc_time_stamp();
		myfile<< "\n (XDMA) addr :: " << hex << m_axi_trans->get_address();
		myfile<< "\n (XDMA) phase :: " << phase << std::endl << std::endl;
#endif
		axi_wr_tran_q.push(m_axi_trans);
		endwaddrs_ev.notify();
	}
}

void sim_xdma::fw_m_axi_ddr_rd_trans(uint64_t offset, const void* hostBuf,
		size_t size) {
	addrSpaceDeviceRamPtr = new char[size];
	addrSpaceDeviceRamPtrCopiedSize = 0;
	unsigned int dataWidth = m_itf_prop_map[activeIntf]->data_width / 8;
	unsigned int transactionSize = dataWidth*128;
	unsigned int numberOfAxiTransactions = size / transactionSize;
	unsigned int finalTransactionSize = size % transactionSize;
	m_axi_rd_tbuf_no_serviced = 0;
	for (unsigned int transId = 0; transId <= numberOfAxiTransactions;
			transId++) {

		if (transId == numberOfAxiTransactions) {
			if (finalTransactionSize == 0)
				break;                //continue or break are equal here
			transactionSize = finalTransactionSize;
		}
		m_axi_rd_tbuf_no_serviced++;
		xtlm::aximm_payload* m_axi_trans = NULL;
		m_axi_trans = m_mem_manager.get_payload();

		m_axi_trans->acquire();
		m_axi_trans->set_command(xtlm::XTLM_READ_COMMAND);
		m_axi_trans->set_address(offset + transId * transactionSize);
		m_axi_trans->create_and_get_data_ptr(transactionSize);
		m_axi_trans->set_burst_length(transactionSize / dataWidth);
		m_axi_trans->set_burst_size(dataWidth);
		m_axi_trans->set_burst_type(XAXI_BURST_INCR);
		m_axi_trans->set_cache(2);
		m_axi_trans->create_and_get_byte_enable_ptr(transactionSize);

		m_axi_trans->set_data_length(transactionSize);
		m_axi_trans->set_byte_enable_length(transactionSize);

		tlm::tlm_phase phase = xtlm::BEGIN_RADDR;
		sc_core::sc_time t;
		tlm::tlm_sync_enum status;
		//status =  (*M_AXI_rd_socket)->nb_transport_fw(m_axi_ddr_RD_MSTR_SKT_ID, *m_axi_trans, phase, t );
#ifdef DEBUGMSG
		myfile << " (XDMA) RD_TX :: XDMA-->XBAR NB_FW  @" << sc_time_stamp();
		myfile<< "\n (XDMA) addr :: " <<hex << m_axi_trans->get_address();
		myfile<< "\n (XDMA) phase :: " << phase << std::endl << std::endl;
#endif
		axi_rd_tran_q.push(m_axi_trans);
		endraddrs_ev.notify();
	}
}

void sim_xdma::axi_rd_nb_fw_method() {
	if ((end_raddr_respwait == false) && (axi_rd_tran_q.empty() == false)) {
		tlm::tlm_phase p(xtlm::BEGIN_RADDR);
		sc_time t(0, SC_NS);
		xtlm::aximm_payload* m_axi_trans = axi_rd_tran_q.front();
#ifdef DEBUGMSG
		myfile << " (XDMA) M_RD_TX :: XDMA-->OUT NB_FW  @" << sc_time_stamp();
		myfile<< "\n (XDMA) addr :: " << hex << m_axi_trans->get_address();
		myfile<< "\n (XDMA) phase :: " << p << std::endl << std::endl;
#endif
		if (activeIntf == xdma_intf::XDMA_M0) {
			(*M_AXI_rd_socket)->nb_transport_fw(*m_axi_trans, p, t);
		} else if(activeIntf == xdma_intf::XDMA_M1) {
			(*M_AXI_1_rd_socket)->nb_transport_fw(*m_axi_trans, p, t);
		} else if(activeIntf == xdma_intf::XDMA_M2) {
			(*M_AXI_2_rd_socket)->nb_transport_fw(*m_axi_trans, p, t);
		}
		axi_rd_tran_q.pop();
		end_raddr_respwait = true;
	}
}

void sim_xdma::axi_wr_nb_fw_method() {
	if ((end_waddr_respwait == false) && (axi_wr_tran_q.empty() == false)) {
		tlm::tlm_phase p(xtlm::BEGIN_WDATA_LAST);
		sc_time t(0, SC_NS);
		xtlm::aximm_payload* m_axi_trans = axi_wr_tran_q.front();
#ifdef DEBUGMSG
		myfile << " (XDMA) M_AXI WR_TX :: XDMA-->OUT NB_FW  @" << sc_time_stamp();
		myfile<< "\n (XDMA) addr :: " << hex << m_axi_trans->get_address();
		myfile<< "\n (XDMA) phase :: " << p << std::endl << std::endl;
#endif
		if (activeIntf == xdma_intf::XDMA_M0) {
			(*M_AXI_wr_socket)->nb_transport_fw(*m_axi_trans, p, t);
		} else if(activeIntf == xdma_intf::XDMA_M1) {
			(*M_AXI_1_wr_socket)->nb_transport_fw(*m_axi_trans, p, t);
		} if(activeIntf == xdma_intf::XDMA_M2) {
			(*M_AXI_2_wr_socket)->nb_transport_fw(*m_axi_trans, p, t);
		}
		axi_wr_tran_q.pop();
		end_waddr_respwait = true;
	}
}

uint64_t sim_xdma::dbg_m_axi_ddr_wr_trans(uint64_t offset, const void* hostBuf,
		size_t size) {
	addrSpaceDeviceRamPtrCopiedSize = 0;
	unsigned char *curr = (unsigned char *) hostBuf;
	unsigned int dataWidth = m_itf_prop_map[activeIntf]->addr_width / 8;
	unsigned int transactionSize = dataWidth*128;
	unsigned int numberOfAxiTransactions = size / transactionSize;
	unsigned int finalTransactionSize = size % transactionSize;
	xdma_helper->set_host_resp_due(true);
#ifdef DEBUGMSG
	myfile<<"sim_xdma::xclWrite ADDR_SPACE_DEVICE_RAM "<<std::endl;
	myfile<<"addrSpaceDeviceRamPtrCopiedSize :" <<addrSpaceDeviceRamPtrCopiedSize <<std::endl;
	myfile<<"transactionSize :" << transactionSize<<std::endl;
	myfile<<"m_axi_data_width :" << m_itf_prop_map[activeIntf]->addr_width<<std::endl;
	myfile<<"dataWidth :" << dataWidth<<std::endl;
	myfile<<"numberOfAxiTransactions :" <<numberOfAxiTransactions <<std::endl;
	myfile<<"finalTransactionSize :" << finalTransactionSize<<std::endl;
	myfile<<"size :" << size<<std::endl;

#endif
	byte_enable_mask = new unsigned char[size];
	for (int i = 0; i < size; i++)
		byte_enable_mask[i] = 0xFF;
	xtlm::aximm_payload* wr_trans = m_mem_manager.get_payload();
	wr_trans->acquire();
	wr_trans->set_axi_id(0);
	wr_trans->set_address(offset);

	unsigned char* data = new unsigned char[size];
	for (int i = 0; i < size; i++) {
		data[i] = (curr)[i];
	}
	wr_trans->set_command(xtlm::XTLM_WRITE_COMMAND);
	wr_trans->set_data_ptr(data, size);
	wr_trans->set_byte_enable_ptr(byte_enable_mask, size);
	wr_trans->set_byte_enable_length(size);
	wr_trans->set_data_length(size);
	wr_trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
	//UPDATED
	//tlm::tlm_phase phase;
	tlm::tlm_phase phase = xtlm::BEGIN_WDATA_LAST;
	sc_core::sc_time t;
	int id = 0;
	tlm::tlm_sync_enum status;
#ifdef DEBUGMSG
	myfile << "xdma:: calling ddr write nb_transport_dbg (addr) : "
	<< wr_trans->get_address() <<"intf : "<<activeIntf<< endl;
#endif
	//status = (*M_AXI_wr_socket)->nb_transport_fw(m_axi_ddr_WR_MSTR_SKT_ID, wr_trans, phase, t );
#ifdef DEBUGMSG
	myfile << " (XDMA) WR_TX :: XDMA-->XBAR NB_FW  @" << sc_time_stamp();
	myfile<< "\n (XDMA) addr :: " << hex << wr_trans->get_address();
	myfile<< "\n (XDMA) phase :: " << phase << std::endl << std::endl;
#endif

	int res = 0;
	if (activeIntf == xdma_intf::XDMA_M0) {
		res = (*M_AXI_wr_socket)->transport_dbg(*wr_trans);
	} else if(activeIntf == xdma_intf::XDMA_M1) {
		res = (*M_AXI_1_wr_socket)->transport_dbg(*wr_trans);
	} else if(activeIntf == xdma_intf::XDMA_M2) {
		res = (*M_AXI_2_wr_socket)->transport_dbg(*wr_trans);
	}

	if ((wr_trans->get_response_status() != xtlm::XTLM_OK_RESPONSE)
			|| res == 0) {
		size = 0;
	} else {
		if (xdma_helper->get_buffer_copy()) {
			xdma_helper->x_resp->xclCopyBufferHost2Device_resp(
					wr_trans->get_data_length());
		} else {
			xdma_helper->x_resp->xclWriteAddrSpaceDeviceRam_resp(
					wr_trans->get_data_length());
		}
		addrSpaceDeviceRamPtrCopiedSize = 0;
		xdma_helper->set_host_resp_due(false);
		xdma_helper->set_host_resp_due(false);
	}
	wr_trans->release();
	return size;
}

uint64_t sim_xdma::dbg_m_axi_ddr_rd_trans(uint64_t offset, const void* hostBuf,
		size_t size) {
	addrSpaceDeviceRamPtr = new char[size];
	addrSpaceDeviceRamPtrCopiedSize = 0;
	unsigned int dataWidth = m_itf_prop_map[activeIntf]->data_width/8;
	unsigned int transactionSize = dataWidth*128;
	unsigned int numberOfAxiTransactions = size / transactionSize;
	unsigned int finalTransactionSize = size % transactionSize;
	unsigned char *curr = (unsigned char *) hostBuf;

	xtlm::aximm_payload* rd_trans = m_mem_manager.get_payload();
	rd_trans->acquire();
	rd_trans->set_command(xtlm::XTLM_READ_COMMAND);
	rd_trans->set_axi_id(0);
	rd_trans->set_address(offset);
	rd_trans->set_data_ptr(curr, size);
	rd_trans->set_data_length(size);
	tlm::tlm_phase phase = xtlm::BEGIN_RADDR;
	sc_core::sc_time t;
	tlm::tlm_sync_enum status;
#ifdef DEBUGMSG
	myfile << "xdma:: calling ddr read transport_dbg (addr) : "
	<< rd_trans->get_address() << "intf : "<<activeIntf<<endl;
#endif
#ifdef DEBUGMSG
	myfile << " (XDMA) RD_TX :: XDMA-->XBAR NB_FW  @" << sc_time_stamp();
	myfile<< "\n (XDMA) addr :: " <<hex << rd_trans->get_address();
	myfile<< "\n (XDMA) phase :: " << phase << std::endl << std::endl;
#endif
	uint64_t res = 0;
	if (activeIntf == xdma_intf::XDMA_M0) {
		res = (*M_AXI_rd_socket)->transport_dbg(*rd_trans);
	} else if (activeIntf == xdma_intf::XDMA_M1) {
		res = (*M_AXI_1_rd_socket)->transport_dbg(*rd_trans);
	} else if (activeIntf == xdma_intf::XDMA_M2) {
		res = (*M_AXI_2_rd_socket)->transport_dbg(*rd_trans);
	}
	if ((rd_trans->get_response_status() != xtlm::XTLM_OK_RESPONSE)
			|| res == 0) {
		size = 0;
	} else {
		if (xdma_helper->get_buffer_copy()) {
			xdma_helper->x_resp->xclCopyBufferDevice2Host_resp(
					(char*) rd_trans->get_data_ptr(),
					rd_trans->get_data_length());
		} else {
			xdma_helper->x_resp->xclReadAddrSpaceDeviceRam_resp(
					(char*) rd_trans->get_data_ptr(),
					rd_trans->get_data_length(), true);
		}
		xdma_helper->set_host_resp_due(false);
	}
	rd_trans->release();
	return size;
}

size_t sim_xdma::xclWrite(AddressSpace space, uint64_t offset,
		const void *hostBuf, size_t size, uint32_t subspace) {
	if (xdma_helper->get_mLogStream()->is_open()) {
		*(xdma_helper->get_mLogStream()) << __func__ << ", "
				<< std::this_thread::get_id() << ", " << space << ", " << offset
				<< ", " << hostBuf << ", " << size << std::endl;
	}
	switch (space) {
	case ADDR_SPACE_DEVICE_RAM: {
		//Try to send through transport debug else through normal interface
		xdma_intf type = xdma_intf::XDMA_M0;
		if (subspace == 1) {
			type = XDMA_M1;
		} else if(subspace==2) {
			type = XDMA_M2;
		}
		activeIntf = type;
		if (this->m_itf_prop_map[type]->support_backdoor_access) {
			uint64_t ret = dbg_m_axi_ddr_wr_trans(offset, hostBuf, size);
			if (ret == 0) {
				m_itf_prop_map[type]->support_backdoor_access = false;
			} else {
				return ret;
			}
		}
		if (!m_itf_prop_map[type]->support_backdoor_access) {
			fw_m_axi_ddr_wr_trans(offset, hostBuf, size);
			hostBuf = NULL;
			return size;
		}
		return -1;
	}
	case ADDR_KERNEL_CTRL: {
		fw_m_axi_ctrl_wr_trans(offset, hostBuf, size);
		return size;
	}
	default: {
		return -1;
	}
	}
}

size_t sim_xdma::xclRead(AddressSpace space, uint64_t offset, void *hostBuf,
		size_t size, uint32_t subspace) {
	if (xdma_helper->get_mLogStream()->is_open()) {
		*(xdma_helper->get_mLogStream()) << __func__ << ", "
				<< std::this_thread::get_id() << ", " << space << ", " << offset
				<< ", " << hostBuf << ", " << size << std::endl;
	}

	switch (space) {
	case ADDR_SPACE_DEVICE_RAM: {
		//Try to send through transport debug else through normal interface
		xdma_intf type = xdma_intf::XDMA_M0;
		if (subspace == 1) {
			type = XDMA_M1;
		} else if (subspace == 2) {
			type = XDMA_M2;
		}
		activeIntf = type;
		if (m_itf_prop_map[type]->support_backdoor_access) {
			uint64_t ret = dbg_m_axi_ddr_rd_trans(offset, hostBuf, size);
			if (ret == 0) {
				m_itf_prop_map[type]->support_backdoor_access = false;
			} else {
				return ret;
			}
		}
		if (!m_itf_prop_map[type]->support_backdoor_access) {
			fw_m_axi_ddr_rd_trans(offset, hostBuf, size);
			hostBuf = NULL;
			return size;
		}
		return size;
	}
	case ADDR_KERNEL_CTRL: {
		//TBD : Write AXI-lite traffic code later
		//*(uint32_t *)hostBuf = 0x4;
		fw_m_axi_ctrl_rd_trans(offset, hostBuf, size);
		hostBuf = NULL;
		return size;
	}
	default: {
		return -1;
	}
	}
}
/*############# TO BE REMOVED ##################*/
uint64_t sim_xdma::xclAllocDeviceBuffer(size_t size) {
	if (xdma_helper->get_mLogStream()->is_open()) {
		*(xdma_helper->get_mLogStream()) << __func__ << ", "
				<< std::this_thread::get_id() << ", " << size << std::endl;
	}
	uint64_t result = ~0;
	for (PairList::iterator i = mFreeBufferList.begin(), e =
			mFreeBufferList.end(); i != e; ++i) {
		if (i->second < size)
			continue;
		result = i->first;
		if (i->second > size) {
			// Resize the exisiting entry in freelist
			i->first += size;
			i->second -= size;
		} else {
			// remove the exact match found
			mFreeBufferList.erase(i);
		}
		mBusyBufferList.push_back(std::make_pair(result, size));
		break;
	}
	return result;
}

/*############# TO BE REMOVED ##################*/
void sim_xdma::xclFreeDeviceBuffer(uint64_t buf) {
	if (xdma_helper->get_mLogStream()->is_open()) {
		*(xdma_helper->get_mLogStream()) << __func__ << ", "
				<< std::this_thread::get_id() << ", " << buf << std::endl;
	}
	PairList::iterator i = std::find_if(mBusyBufferList.begin(),
			mBusyBufferList.end(),
			[&] (const PairList::value_type& s) {return s.first == buf;});
	assert(i != mBusyBufferList.end());
	if (i == mBusyBufferList.end())
		return;
	mFreeBufferList.push_back(std::make_pair(i->first, i->second));
	mBusyBufferList.erase(i);
	if (mFreeBufferList.size() > mCoalesceThreshold) {
		coalesceFreeBuffers();
	}
}

sim_xdma* sim_xdma::handleCheck(void *handle) {
	// Sanity checks
	if (!handle)
		return 0;
	//TBD : Check what is TAG later?
	/*        if (*(unsigned *)handle != TAG)
	 return 0;*/
	if (((sim_xdma *) handle)->mHandle < 0) {
		return 0;
	}
	return (sim_xdma *) handle;
}

unsigned sim_xdma::getTAG() const {
	return mTag;
}

bool sim_xdma::isGood() const {
	if (mHandle == -1)
		return false;
	// TODO: Add sanity check for card state
	return true;
}

void sim_xdma::coalesceFreeBuffers() {
	// First sort the free buffers and then attempt to coalesce the neighbors
	mFreeBufferList.sort(
			[] (const PairList::value_type& s1, const PairList::value_type& s2)
			{	return (s1.first < s2.first);});

	PairList::iterator curr = mFreeBufferList.begin();
	PairList::iterator next = curr;
	++next;
	PairList::iterator last = mFreeBufferList.end();
	while (next != last) {
		if (curr->second != next->first) {
			// Non contiguous blocks
			curr = next;
			++next;
			continue;
		}
		// Coalesce curr and next
		curr->second += next->second;
		mFreeBufferList.erase(next);
		next = curr;
		++next;
	}
}
//this function used for hw_em debug support. This function will directly read the contents from the ddr
//***************TO DO: Remove ddrNum it's not required***************//
void sim_xdma::ddrRead(unsigned int ddrNum, uint64_t offset, void* dest,
		unsigned int size) {
#ifdef DEBUG
	myfile<<"sim_xdma::ddrRead offset:"<<offset<<" size:"<<size<<"ddrNum:"<<ddrNum<<"numberOfddrs:"<< numberOfddrs <<endl;
#endif
	dbg_rd_trans.set_address(offset);
	dbg_rd_trans.set_data_ptr((unsigned char*) dest, size);
	dbg_rd_trans.set_data_length(size);
	dbg_rd_trans.set_command(xtlm::XTLM_READ_COMMAND);
	(*M_AXI_rd_socket)->transport_dbg(dbg_rd_trans);

}

int ddrRead(int ddrNum, int offset) {
	sim_xdma *device = sim_xdma::getInstance();
	if (!device)
		return 0;

	int buffer = 0;
	device->ddrRead(ddrNum, offset, &buffer, 4);
	return buffer;
}

extern "C" void WEAKFUNC iki_register_DDR_read(int (*fp)(int, int)) {
	// Do not do anything
	return;
}

void registerDdrRead() {
	if (iki_register_DDR_read)
		iki_register_DDR_read(ddrRead);
}
size_t get_sc_time_stamp() {
	size_t deviceTimeStamp;
	if (sc_get_time_resolution() == sc_time(1, SC_PS))
		deviceTimeStamp = sc_time_stamp().value() / 1000;
	else
		deviceTimeStamp = sc_time_stamp().value();
	return deviceTimeStamp;
}

double get_sc_time_insec() {
	return sc_time_stamp().to_seconds();
}

void sim_xdma::end_of_elaboration() {
	init_fmodel();
}


