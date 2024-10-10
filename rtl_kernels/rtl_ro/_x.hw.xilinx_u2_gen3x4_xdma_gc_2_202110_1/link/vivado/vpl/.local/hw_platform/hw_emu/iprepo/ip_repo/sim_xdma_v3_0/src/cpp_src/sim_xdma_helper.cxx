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

#include "sim_xdma_helper.h"
#include "rpc_messages.pb.h"
#include "msg_handler.h"
#include "sdaccel_cmodel_macros.h"
#include<systemc>

#ifdef ASYNC_REQUEST_MODE
namespace sim_xdma_async {
    class xdma_thread_safe_channel_if : virtual public sc_core::sc_interface
    {
        public:
        virtual void notify_wait()=0;
        protected:
        xdma_thread_safe_channel_if();
    };
    
    class xdma_thread_safe_channel
      : public    xdma_thread_safe_channel_if
      , public    sc_core::sc_prim_channel
    {
        public:
        //called by producer
        void notify_wait(); 
        //called by sc_scheduler 
        void update();
        void clear();
        const sc_core::sc_event& default_event() const;
        ~xdma_thread_safe_channel();
        static xdma_thread_safe_channel* get_obj();
        bool clr_event;
        private:
        xdma_thread_safe_channel();
        explicit xdma_thread_safe_channel(const char* name_ );
        mutable sc_core::sc_event *m_event;
        static xdma_thread_safe_channel* instance; 
    
    };
    xdma_thread_safe_channel* xdma_thread_safe_channel::instance = NULL;
    xdma_thread_safe_channel_if::xdma_thread_safe_channel_if(){}
    xdma_thread_safe_channel::xdma_thread_safe_channel()
    : sc_core::sc_prim_channel( sc_core::sc_gen_unique_name( "xdma_thread_safe_channel" ) ), clr_event(false)
    {
        m_event = new sc_core::sc_event;
    }
    xdma_thread_safe_channel::xdma_thread_safe_channel(const char* name_ )
    : sc_core::sc_prim_channel( name_ ), clr_event(false)
    {
        m_event = new sc_core::sc_event;
    }
    //called by producer
    void xdma_thread_safe_channel::notify_wait() {
        async_request_update();
    }
    //called by sc_scheduler 
    void xdma_thread_safe_channel::update(){
        m_event->notify(sc_core::SC_ZERO_TIME);
    }
    void xdma_thread_safe_channel::clear(){
        clr_event = true;
    }
    const sc_core::sc_event& xdma_thread_safe_channel::default_event() const {
        return *m_event;
    }
    xdma_thread_safe_channel::~xdma_thread_safe_channel(){
        if(m_event != NULL){
            delete m_event;
            m_event = NULL;
        }
        instance = NULL;
    }
    xdma_thread_safe_channel* xdma_thread_safe_channel::get_obj() {
        if (instance == NULL) {
            instance = new xdma_thread_safe_channel("xdma_thread_safe_channel");
        }
        return instance;
    }
    void read_p_thread(sim_xdma_helper* ptr) {
        //Wait till SystemC thread starts
    	while(!ptr->start_pooling);
        xdma_thread_safe_channel* async_channel = xdma_thread_safe_channel::get_obj();
        while(1) {
    	    if (ptr->isEnableSocketCommunication() ) {
                ptr->pooling_socket();
                async_channel->notify_wait();

                //Manage Mutex Object
                std::unique_lock<std::mutex> mlock(ptr->m_pthread_cond_mutex);
                //Conditional Wait
                ptr->m_pthread_cond_var.wait(mlock, [ptr]{return ptr->m_pthread_predicate;});
                ptr->m_pthread_predicate = false;

            } else {
                break;
            }
        }
    }
}
#endif

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
sim_xdma_helper::sim_xdma_helper(sc_core::sc_module_name _name, sim_xdma_base* xdma_base,xsc::common_cpp::report_handler* report_handler) : sc_core::sc_module(_name) {
	m_xdma_base = xdma_base;
	ci_msg = new call_packet_info;
	i_len = 0;
	i_buf = NULL;
	x_resp = new xcl_api_resp();
	m_report_handler=report_handler;
	_sk_inst=NULL;
	buf=NULL;
	m_enable_socket_communication=true;
	buf_size=0;
	m_reset_cycles=0;
    start_pooling=false;

#ifdef ASYNC_REQUEST_MODE
    ptr_pthread = nullptr;
    m_async_channel_ptr = sim_xdma_async::xdma_thread_safe_channel::get_obj();
#endif
}
void sim_xdma_helper::init_helper() {
    x_resp->get_unix_socket();
	if (m_enable_socket_communication) {
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

void sim_xdma_helper::end_of_simulation() {
#ifdef ASYNC_REQUEST_MODE
  m_pthread_predicate = true;
  m_pthread_cond_var.notify_all();
  setEnableSocketCommunication(false);
#endif
}

sim_xdma_helper::~sim_xdma_helper() {
	if (i_buf)
		free(i_buf);
#ifdef ASYNC_REQUEST_MODE
    if(ptr_pthread != NULL) {
        if(ptr_pthread->joinable())
            ptr_pthread->join();
        delete sk_client::getInstance();
        delete ptr_pthread;
        ptr_pthread = 0;
    }
    delete sim_xdma_async::xdma_thread_safe_channel::get_obj();
#endif
}

void sim_xdma_helper::main_loop() {
		if (m_reset_cycles < 750) {
			m_reset_cycles += 1;
			return;
		}
#ifdef ASYNC_REQUEST_MODE
        if (m_reset_cycles == 750) {
            ptr_pthread = new std::thread(sim_xdma_async::read_p_thread,this);
            m_reset_cycles++;
            select_msg();

        }
#else
        if (m_enable_socket_communication ) {
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

			select_msg();

		}
#endif
}
void sim_xdma_helper::select_msg() {
#ifdef ASYNC_REQUEST_MODE
	//Start pthread
	start_pooling = true;
    while(1){
    //Select_msg waits for a packet from unix socket
      sc_core::wait(m_async_channel_ptr->default_event());
#endif

      if (ci_msg->xcl_api() == xclWriteAddrSpaceDeviceRam_n) {
      	xclWriteAddrSpaceDeviceRam_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	bool res=m_xdma_base->xclWrite(AddressSpace::ADDR_SPACE_DEVICE_RAM, (unsigned long int)c_msg.addr(),(void*) c_msg.data().c_str(), (unsigned long int)c_msg.size());
      	this->x_resp->xclWriteAddrSpaceDeviceRam_resp(res);
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
      	bool res=m_xdma_base->xclWrite(AddressSpace::ADDR_KERNEL_CTRL, (unsigned long int)c_msg.addr(),(unsigned char*) c_msg.data().c_str(), (unsigned long int)c_msg.size());
      	x_resp->xclWriteAddrKernelCtrl_resp(res);
      }
      if (ci_msg->xcl_api() == xclReadAddrSpaceDeviceRam_n) {
      	xclReadAddrSpaceDeviceRam_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	unsigned char* buffer = new unsigned char[c_msg.size()];
      	bool res=m_xdma_base->xclRead(AddressSpace::ADDR_SPACE_DEVICE_RAM, (unsigned long int)c_msg.addr(),buffer, (unsigned long int)c_msg.size());
      	x_resp->xclReadAddrSpaceDeviceRam_resp(buffer,(unsigned long int)c_msg.size(),res);
      	delete [] buffer;
      }
      if (ci_msg->xcl_api() == xclReadAddrKernelCtrl_n) {

      	xclReadAddrKernelCtrl_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	unsigned char* buffer = new unsigned char[c_msg.size()];
      	bool res=m_xdma_base->xclRead(AddressSpace::ADDR_KERNEL_CTRL, (unsigned long int)c_msg.addr(),buffer,(unsigned long int) c_msg.size());
      	x_resp->xclReadAddrKernelCtrl_resp(buffer,(unsigned long int)c_msg.size(),res);
      	delete [] buffer;
      }
      if (ci_msg->xcl_api() == xclClose_n) {
      	xclClose_call c_msg;
      	c_msg.ParseFromArray(buf, r);
#ifdef ASYNC_REQUEST_MODE
        setEnableSocketCommunication(false);
        //Lock
        m_pthread_cond_mutex.lock();

        m_pthread_predicate = true;
        //Notify the condition variable
        m_pthread_cond_var.notify_all();
        //Unlock
        m_pthread_cond_mutex.unlock();
#endif
      	::xclClose();
      }
      if (ci_msg->xcl_api() == xclCopyBufferHost2Device_n) {
      	xclCopyBufferHost2Device_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	unsigned long int res=xclCopyBufferHost2Device((unsigned long int)c_msg.dest(), (const unsigned char*) (c_msg.src().c_str()),(unsigned long int)c_msg.size(),(unsigned long int) c_msg.seek());
      	x_resp->xclCopyBufferHost2Device_resp(res);
      }
      if (ci_msg->xcl_api() == xclCopyBufferDevice2Host_n) {
      	xclCopyBufferDevice2Host_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	unsigned char* buffer = new unsigned char[c_msg.size()];
      	unsigned long int res=xclCopyBufferDevice2Host((unsigned long int)c_msg.src(),buffer, (unsigned long int)c_msg.size(), (unsigned long int)c_msg.skip());
      	x_resp->xclCopyBufferDevice2Host_resp(buffer,(unsigned long int)c_msg.size());
      	delete [] buffer;
      }
      if (ci_msg->xcl_api() == xclPerfMonReadCounters_n) {
      	xclPerfMonReadCounters_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	::xclPerfMonReadCounters(c_msg.slotname(), c_msg.accel());
      }
      if (ci_msg->xcl_api() == xclPerfMonReadCounters_Streaming_n) {
      	xclPerfMonReadCounters_Streaming_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	::xclPerfMonReadCounters_Streaming(c_msg.slotname());
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
      if (ci_msg->xcl_api() == xclPerfMonReadTrace_Streaming_n) {
      	xclPerfMonReadTrace_Streaming_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	::xclPerfMonReadTrace_Streaming(c_msg.ack(), c_msg.slotname());
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
      std::string buffername;
      bool ret = true;
      //get the return value for p2p case.. not using for now as interconnect has some issues
      //ret = m_xdma_base->xclAllocDeviceBuffer(c_msg.ddraddress(),c_msg.size(),buffername);
      m_xdma_base->xclAllocDeviceBuffer(c_msg.ddraddress(),c_msg.size(),buffername);
      ::xclAllocDeviceBuffer(c_msg.ddraddress(), c_msg.size(), buffername, ret);
    }
    if (ci_msg->xcl_api() ==  xclFreeDeviceBuffer_n )
    {
      xclFreeDeviceBuffer_call c_msg;
      c_msg.ParseFromArray(buf,r);

      uint64_t ddrAddress = c_msg.ddraddress();
      bool ret = m_xdma_base->xclFreeDeviceBuffer(ddrAddress); 
      ::xclFreeDeviceBuffer(ret);
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
      if (ci_msg->xcl_api() == xclCreateQueue_n) {
      	xclCreateQueue_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	queue_context q_ctx;
      	q_ctx.write = c_msg.write();
      	q_ctx.type= c_msg.type();
      	q_ctx.state= c_msg.state();
      	q_ctx.route= c_msg.route();
      	q_ctx.flow= c_msg.flow();
      	q_ctx.qsize= c_msg.qsize();
      	q_ctx.desc_size= c_msg.desc_size();
      	q_ctx.flags= c_msg.flags();

      	uint64_t ret=m_xdma_base->xclCreateQueue(q_ctx);
      	x_resp->xclCreateQueue_resp(ret);
    }
      if (ci_msg->xcl_api() == xclWriteQueue_n) {
      	xclWriteQueue_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	m_xdma_base->xclWriteQueue((unsigned long int)c_msg.q_handle(),(const unsigned char*) (c_msg.src().c_str()), (unsigned long int)c_msg.size(),(unsigned int)c_msg.req(),c_msg.eot(),c_msg.nonblocking());
      	x_resp->xclWriteQueue_resp((unsigned long int)c_msg.size());
      }
      if (ci_msg->xcl_api() == xclReadQueue_n) {
      	xclReadQueue_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	unsigned char* buffer = new unsigned char[c_msg.size()];
      	uint64_t ret=m_xdma_base->xclReadQueue((unsigned long int)c_msg.q_handle(), buffer, (unsigned long int)c_msg.size(),(unsigned int)c_msg.req(),c_msg.eot(),c_msg.nonblocking());
      	x_resp->xclReadQueue_resp(buffer,ret);
      	if(!c_msg.nonblocking()) delete buffer;
      }
      if (ci_msg->xcl_api() == xclPollCompletion_n) {
      	xclPollCompletion_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	std::vector<std::tuple<void*,uint32_t,bool> > resp;
      	uint64_t ret=m_xdma_base->xclPollCompletion((unsigned int)c_msg.req(),resp);
      	x_resp->xclPollCompletion_resp(resp);
      	for(auto& it:resp) {
      		if(std::get<2>(it)) delete [](unsigned char*)std::get<0>(it);
      	}
      }
      if (ci_msg->xcl_api() == xclDestroyQueue_n) {
      	xclDestroyQueue_call c_msg;
      	c_msg.ParseFromArray(buf, r);
      	m_xdma_base->xclDestroyQueue((unsigned long int)c_msg.q_handle());
      	x_resp->xclDestroyQueue_resp(true);
    }

    if (ci_msg->xcl_api() == xclImportBO_n)
    {
      xclImportBO_call c_msg;
      c_msg.ParseFromArray(buf,r);
      std::string sFileName = c_msg.dst_filename();
      uint64_t offset = c_msg.offset();
      uint64_t size = c_msg.size();
      bool ret = true;
      ret = m_xdma_base->xclImportBO(sFileName,offset,size);
      x_resp->xclImportBO_resp(ret);
    }
    
    if (ci_msg->xcl_api() == xclCopyBO_n)
    {
      xclCopyBO_call c_msg;
      c_msg.ParseFromArray(buf,r);
      uint64_t src_handle = c_msg.src_handle();
      std::string dst_filename = c_msg.dst_filename();
      uint64_t size = c_msg.size();
      uint64_t src_offset = c_msg.src_offset();
      uint64_t dst_offset = c_msg.dst_offset();
      bool ret=true;
      ret = m_xdma_base->xclCopyBO(src_handle,dst_filename,size,src_offset,dst_offset);
      x_resp->xclCopyBO_resp(ret);
    }

    //Clearing event once slect_msg() is Done..
#ifdef ASYNC_REQUEST_MODE
    //Lock
    m_pthread_cond_mutex.lock();

    m_pthread_predicate = true;
    //Notify the condition variable
    m_pthread_cond_var.notify_all();
    //Unlock
    m_pthread_cond_mutex.unlock();

  }// while(1)
#endif
}
size_t sim_xdma_helper::xclCopyBufferHost2Device(uint64_t dest, const unsigned char *src,size_t size, size_t seek) {
	dest += seek;
	return m_xdma_base->xclWrite(AddressSpace::ADDR_SPACE_DEVICE_RAM, dest, src,size);
}
size_t sim_xdma_helper::xclCopyBufferDevice2Host(uint64_t src,unsigned char* buffer, size_t size,size_t skip) {
	src += skip;
	size_t r_size = m_xdma_base->xclRead(AddressSpace::ADDR_SPACE_DEVICE_RAM,src, buffer, size);
	return r_size;
}

#ifdef ASYNC_REQUEST_MODE
void sim_xdma_helper::pooling_socket(){
    sk_client *_sk_inst;
    _sk_inst = sk_client::getInstance();
    sim_xdma_helper::r = _sk_inst->sk_b_read(i_buf, i_len);
    if (sim_xdma_helper::r <= 0) {
    	return;
    }
    assert(i_len == sim_xdma_helper::r);
    ci_msg->ParseFromArray(i_buf, i_len);
    buf_size = alloc_void(ci_msg->size());
    
    sim_xdma_helper::r = _sk_inst->sk_b_read(buf, ci_msg->size());
    assert(r == ci_msg->size());
}
#endif
