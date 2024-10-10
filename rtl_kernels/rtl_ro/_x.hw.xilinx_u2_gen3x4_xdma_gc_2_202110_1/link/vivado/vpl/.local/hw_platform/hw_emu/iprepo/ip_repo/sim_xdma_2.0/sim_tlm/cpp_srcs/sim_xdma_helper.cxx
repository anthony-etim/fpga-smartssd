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

#include "sim_xdma_helper.h"
#include "rpc_messages.pb.h"
#include "msg_handler.h"
#include "sdaccel_cmodel_macros.h"

DPI_LINKER_DECL
void WEAKFUNC populate_kernelArgs_info(
		std::map<uint64_t, std::pair<std::string, unsigned int>>);
DPI_LINKER_DECL
void WEAKFUNC set_environment(std::string name, std::string value);
static bool getBoolValue(const std::string& value, bool defaultValue) {
	if (value.empty())
		return defaultValue;

	if (strcasecmp(value.c_str(), "true") == 0) {
		return true;
	}

	if (strcasecmp(value.c_str(), "false") == 0) {
		return false;
	}

	return defaultValue;
}
static void initMsgHandler(xclSetEnvironment_call c_msg) {
	for (int i = 0; i < c_msg.environment_size(); i++) {
		std::string name = c_msg.environment(i).name();
		std::string value = c_msg.environment(i).value();

		if (name.empty() || value.empty())
			continue;
		if (strcasecmp(name.c_str(), "print_errors_in_console") == 0) {
			if (getBoolValue(value, true)) {
				emulation::msg_handler::set_actions(emulation::SEVERITY::ERROR,emulation::LOG | emulation::DISPLAY);
			} else {
				emulation::msg_handler::set_actions(emulation::SEVERITY::ERROR,emulation::LOG);
			}
		} else if (strcasecmp(name.c_str(), "print_warnings_in_console") == 0) {
			if (getBoolValue(value, true)) {
				emulation::msg_handler::set_actions(emulation::SEVERITY::WARNING,emulation::LOG | emulation::DISPLAY);
			} else {
				emulation::msg_handler::set_actions(emulation::SEVERITY::WARNING, emulation::LOG);
			}
		} else if (strcasecmp(name.c_str(), "print_infos_in_console") == 0) {
			if (getBoolValue(value, true)) {
				emulation::msg_handler::set_actions(emulation::SEVERITY::INFO,emulation::LOG | emulation::DISPLAY);
			} else {
				emulation::msg_handler::set_actions(emulation::SEVERITY::INFO,emulation::LOG);
			}
		} else if (strcasecmp(name.c_str(), "suppress_errors") == 0) {
			emulation::msg_handler::suppress(emulation::SEVERITY::ERROR,getBoolValue(value, false));
		} else if (strcasecmp(name.c_str(), "suppress_warnings") == 0) {
			emulation::msg_handler::suppress(emulation::SEVERITY::WARNING,getBoolValue(value, false));
		} else if (strcasecmp(name.c_str(), "suppress_infos") == 0) {
			emulation::msg_handler::suppress(emulation::SEVERITY::INFO,getBoolValue(value, false));
		} else if (strcasecmp(name.c_str(), "make_warnings_errors") == 0) {
			emulation::msg_handler::make_warnings_errors(getBoolValue(value, false));
		} else if (strcasecmp(name.c_str(), "suppress_ids") == 0) {
			char * pch;
			char* stValue = (char*) value.c_str();
			pch = strtok(stValue, " {}");
			while (pch != NULL) {
				std::string id = pch;
				emulation::msg_handler::suppress(id, true);
				pch = strtok(NULL, " {}");
			}
		}
	}
}
sim_xdma_helper::sim_xdma_helper(sim_xdma_base* xdma_base) {
	m_xdma_base = xdma_base;
	ci_msg = new call_packet_info;
	i_len = 0;
	i_buf = NULL;
	x_resp = new xcl_api_resp;
	reset_cycles = 0;
	//numberOfddrs = 0;
	xclCopyBufferDevice2Host_data = NULL;
	host_resp_due = false;
}
void sim_xdma_helper::init_helper() {
	if (enable_socket_communication) {
		_sk_inst = sk_client::getInstance();
	}
	ci_msg->set_size(0);
	ci_msg->set_xcl_api(0);
	i_len = ci_msg->ByteSize();
	i_buf = malloc(i_len);
	buf_size = 0;
	buf = NULL;
}
size_t sim_xdma_helper::alloc_void(size_t new_size) {
	if (buf_size == 0) {
		buf = malloc(new_size);
		return new_size;
	}
	if (buf_size < new_size) {
		buf = (void*) realloc(buf, new_size);
		return new_size;
	}
	return buf_size;
}
sim_xdma_helper::~sim_xdma_helper() {
	if (i_buf)
		free(i_buf);
}

void sim_xdma_helper::simulate_single_cycle_c0_ui_clk() {
		//TODO::Temporary solution for reset. Keeping master interface inactive for
		//first 50 cycles beacuse HLS kernel may be in reset state for some initial
		//cycles and this is a bug in HLS (ready is high during reset period)
		if (reset_cycles < 750) {
			reset_cycles += 1;
			return;
		}
		if (enable_socket_communication && (!host_resp_due) ) {
			//Non-Blocking
			//Read on socket to get the packet
			int r;
			_sk_inst = sk_client::getInstance();
			r = _sk_inst->sk_nb_read(i_buf, i_len);
			if (r <= 0) {
				return;
			}
			assert(i_len == r);
			ci_msg->ParseFromArray(i_buf, i_len);
			buf_size = alloc_void(ci_msg->size());

			r = _sk_inst->sk_b_read(buf, ci_msg->size());
			assert(r == ci_msg->size());
			select_msg(r);
		}
}
void sim_xdma_helper::select_msg(int r) {
	if (ci_msg->xcl_api() == xclWriteAddrSpaceDeviceRam_n) {
		xclWriteAddrSpaceDeviceRam_call c_msg;
		c_msg.ParseFromArray(buf, r);
		m_xdma_base->xclWrite(AddressSpace::ADDR_SPACE_DEVICE_RAM, c_msg.addr(),(void*) c_msg.data().c_str(), c_msg.size(),0);
	}

	if (ci_msg->xcl_api() == xclWriteAddrKernelCtrl_n) {
		xclWriteAddrKernelCtrl_call c_msg;
		c_msg.ParseFromArray(buf, r);
		std::map<uint64_t, std::pair<std::string, unsigned int>> kernel_info;
		std::pair<std::string, unsigned int> addr_map;
		for (int i = 0; i < c_msg.kernel_info_size(); i++) {
			addr_map.first = c_msg.kernel_info(i).name();
			addr_map.second = c_msg.kernel_info(i).size();
			kernel_info[c_msg.kernel_info(i).addr()] = addr_map;
		}
		populate_kernelArgs_info(kernel_info);
		m_xdma_base->xclWrite(AddressSpace::ADDR_KERNEL_CTRL, c_msg.addr(),(void*) c_msg.data().c_str(), c_msg.size(),0);
	}
	if (ci_msg->xcl_api() == xclReadAddrSpaceDeviceRam_n) {
		xclReadAddrSpaceDeviceRam_call c_msg;
		c_msg.ParseFromArray(buf, r);
		char* buffer = new char[c_msg.size()];
		m_xdma_base->xclRead(AddressSpace::ADDR_SPACE_DEVICE_RAM, c_msg.addr(),buffer, c_msg.size(),0);
	}
	if (ci_msg->xcl_api() == xclReadAddrKernelCtrl_n) {

		xclReadAddrKernelCtrl_call c_msg;
		c_msg.ParseFromArray(buf, r);
		char* buffer = new char[c_msg.size()];
		m_xdma_base->xclRead(AddressSpace::ADDR_KERNEL_CTRL, c_msg.addr(),buffer, c_msg.size(),0);
	}
	if (ci_msg->xcl_api() == xclClose_n) {
		xclClose_call c_msg;
		c_msg.ParseFromArray(buf, r);
		::xclClose();
	}
	if (ci_msg->xcl_api() == xclCopyBufferHost2Device_n) {
		xclCopyBufferHost2Device_call c_msg;
		c_msg.ParseFromArray(buf, r);
		xclCopyBufferHost2Device(c_msg.dest(), (void*) (c_msg.src().c_str()),c_msg.size(), c_msg.seek(), c_msg.space());
	}
	if (ci_msg->xcl_api() == xclCopyBufferDevice2Host_n) {
		xclCopyBufferDevice2Host_call c_msg;
		c_msg.ParseFromArray(buf, r);
		//xclCopyBufferDevice2Host((void*)c_msg.mutable_dest(),c_msg.src(),c_msg.size(),c_msg.skip());
		xclCopyBufferDevice2Host(c_msg.src(), c_msg.size(), c_msg.skip(), c_msg.space());
	}
	if (ci_msg->xcl_api() == xclPerfMonReadCounters_n) {
		xclPerfMonReadCounters_call c_msg;
		c_msg.ParseFromArray(buf, r);
		::xclPerfMonReadCounters(c_msg.slotname(), c_msg.accel());
	}
	if (ci_msg->xcl_api() == xclPerfMonGetTraceCount_n) {
		xclPerfMonGetTraceCount_call c_msg;
		c_msg.ParseFromArray(buf, r);
		::xclPerfMonGetTraceCount(c_msg.ack(), c_msg.slotname(), c_msg.accel());
	}
	if (ci_msg->xcl_api() == xclPerfMonReadTrace_n) {
		xclPerfMonReadTrace_call c_msg;
		c_msg.ParseFromArray(buf, r);
		::xclPerfMonReadTrace(c_msg.ack(), c_msg.slotname(), c_msg.accel());
	}
	if (ci_msg->xcl_api() == xclGetDeviceTimestamp_n) {
		xclGetDeviceTimestamp_call c_msg;
		c_msg.ParseFromArray(buf, r);
		::xclGetDeviceTimestamp(c_msg.ack());
	}
	if (ci_msg->xcl_api() == xclGetDebugMessages_n) {
		xclGetDebugMessages_call c_msg;
		c_msg.ParseFromArray(buf, r);
		::xclGetDebugMessages(c_msg.force());
	}
	if (ci_msg->xcl_api() == xclAllocDeviceBuffer_n) {
		xclAllocDeviceBuffer_call c_msg;
		c_msg.ParseFromArray(buf, r);
		::xclAllocDeviceBuffer(c_msg.ddraddress(), c_msg.size());
	}
	if (ci_msg->xcl_api() == xclSetEnvironment_n) {
		xclSetEnvironment_call c_msg;
		c_msg.ParseFromArray(buf, r);
		std::map<std::string, std::string> environmentMap;
		initMsgHandler(c_msg);
		for (int i = 0; i < c_msg.environment_size(); i++) {
			set_environment(c_msg.environment(i).name(),c_msg.environment(i).value());
		}
		::xclSetEnvironment(true);
	}
}
size_t sim_xdma_helper::xclCopyBufferHost2Device(uint64_t dest, const void *src,
		size_t size, size_t seek, uint32_t space) {
	if (mLogStream.is_open()) {
		mLogStream << __func__ << ", " << std::this_thread::get_id() << ", "
				<< dest << ", " << src << ", " << size << ", " << seek
				<< std::endl;
	}
	//TODO_SAHIL::Calculate average buffer size here
	//_profile_inst->profile_buffer_size(size);
#ifdef DEBUG
	PairList::iterator i = std::find_if(mBusyBufferList.begin(), mBusyBufferList.end(), [&] (const PairList::value_type& s)
			{	return s.first == dest;});
	assert(i != mBusyBufferList.end());
	if (i == mBusyBufferList.end())
	return -1;
	if (i->second < (size + seek))
	return -1;
#endif
	dest += seek;
	//NOTE::SAHIL CHANGES
	buffer_copy = true;
	return m_xdma_base->xclWrite(AddressSpace::ADDR_SPACE_DEVICE_RAM, dest, src,size,space);
}
size_t sim_xdma_helper::xclCopyBufferDevice2Host(uint64_t src, size_t size,
		size_t skip, uint32_t space) {
	xclCopyBufferDevice2Host_data = new char[size];
	if (mLogStream.is_open()) {
		mLogStream << __func__ << ", " << std::this_thread::get_id() << ", "
				<< xclCopyBufferDevice2Host_data << ", " << src << ", " << size
				<< ", " << skip << std::endl;
	}
	//TODO_SAHIL::Calculate average buffer size here
	//_profile_inst->profile_buffer_size(size);
#ifdef DEBUG
	PairList::iterator i = std::find_if(mBusyBufferList.begin(), mBusyBufferList.end(), [&] (const PairList::value_type& s)
			{	return s.first == src;});
	assert(i != mBusyBufferList.end());
	if (i == mBusyBufferList.end())
	return -1;
	if (i->second < (size + skip))
	return -1;
#endif
	src += skip;
	buffer_copy = true;
#ifdef DEBUG
	cout<<"ddr read start"<<std::endl;
	for(unsigned int x =0;x <3072;x = x+4)
	{
		if(x%64==0)
		std::cout<<std::endl;
		int finalValue = 0;
		m_xdma_base->ddrRead(0,x,&finalValue,4);
		cout<<std::hex<<finalValue<<" ";
	}
	cout<<"ddr read end"<<std::endl;
#endif
	size_t r_size = m_xdma_base->xclRead(AddressSpace::ADDR_SPACE_DEVICE_RAM,
			src, xclCopyBufferDevice2Host_data, size,space);

	//_profile_inst->print_profile_data();

  delete [] xclCopyBufferDevice2Host_data;
  xclCopyBufferDevice2Host_data = NULL;

	return r_size;
}

std::ofstream* sim_xdma_helper::get_mLogStream() {
	return &mLogStream;
}



