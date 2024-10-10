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
 

#include<iostream>
#include <algorithm>
#include<stdint.h>
#include "xcl_api_resp.h"
#include "sk_client.h"
#include "xaxi_profiler_instmgr.h"
#include "xaxi_accel_profiler_instmgr.h"
#include "xaxi_profiler.h"

#include "xaxi_stream_profiler.h"
#include "xaxi_stream_profiler_instmgr.h"
#include "emdiagcore.h"

//#include "systemc.h"
#include "msg_handler.h"
#include "rpc_messages.pb.h"
#define SS_RESP()\
   int r_len = r_msg.ByteSize();\
   buf_size = alloc_void(r_len);\
   ri_msg->set_size(r_len);\
   ri_msg->SerializeToArray(ri_buf,ri_len);\
   r_msg.SerializeToArray(buf,r_len);\
   _sk_inst = sk_client::getInstance();\
   _sk_inst->sk_write(ri_buf,ri_len);\
   _sk_inst->sk_write(buf,r_len);\


extern "C" size_t __attribute__ ((weak)) get_sc_time_stamp();

xcl_api_resp::xcl_api_resp(){
  ri_msg = new response_packet_info;
  ri_msg->set_size(0);
  ri_len = ri_msg->ByteSize();
  ri_buf = malloc(ri_len);
  buf_size = 0;
  buf = NULL;
  _sk_inst = NULL;
  char* enablesocketcom = getenv("HW_EM_ENABLE_SOCKET");
  enable_socket_communication = true;
  if(enablesocketcom ) {
    if (strcmp(enablesocketcom,"false") == 0)//if user sets "false" to this environment variable socket communication will be bypassed.
    {
      enable_socket_communication = false;
    }
  }
}

void xcl_api_resp::get_unix_socket(){
  if (enable_socket_communication)
    _sk_inst = sk_client::getInstance();
}


void xcl_api_resp::xclReadAddrSpaceDeviceRam_resp(unsigned char* data, int size, bool resp)
{
  xclReadAddrSpaceDeviceRam_response r_msg;
  r_msg.set_data(data,size);
  r_msg.set_valid(resp);

  SS_RESP();

}
void xcl_api_resp::xclReadAddrKernelCtrl_resp(unsigned char* data, int size, bool resp)
{
  xclReadAddrKernelCtrl_response r_msg;
  r_msg.set_data(data,size);
  r_msg.set_valid(resp);

  SS_RESP();

}

void xcl_api_resp::xclWriteAddrSpaceDeviceRam_resp(bool resp)
{
  xclWriteAddrSpaceDeviceRam_response r_msg;
  r_msg.set_valid(resp);

  SS_RESP();

}

void xcl_api_resp::xclWriteAddrKernelCtrl_resp(bool resp)
{
  xclWriteAddrKernelCtrl_response r_msg;
  r_msg.set_valid(resp);

  SS_RESP();

}


void xcl_api_resp::xclClose_resp(bool valid){
  xclClose_response r_msg;

  r_msg.set_valid(valid);
  SS_RESP();
}

void xcl_api_resp::xclCopyBufferHost2Device_resp(uint64_t size){
  xclCopyBufferHost2Device_response r_msg;

  r_msg.set_size(size);
  SS_RESP();
}

void xcl_api_resp::xclCopyBufferDevice2Host_resp(unsigned char* dest, uint64_t size){
  xclCopyBufferDevice2Host_response r_msg;

  r_msg.set_size(size);
  r_msg.set_dest(dest,size);
  SS_RESP();
}

void xcl_api_resp::xclPerfMonReadCounters_resp(std::string slotname, bool accel){
  xclPerfMonReadCounters_response r_msg;
  //TODO:: There is only one interface right now to monitor
  //Getting the value for that  interface by hardcoded ID i.e. "c0_ddr"

  std::replace( slotname.begin(), slotname.end(), '/', ':'); //

  if(!accel) {
      xaxi_profiler_instmgr* profiler_instmgr = xaxi_profiler_instmgr::getInstMgr();

      xaxi_profiler* profiler_inst =  profiler_instmgr->getInstanceById(slotname);
      r_msg.set_wr_byte_count(profiler_inst->get_wr_bytes_count());
      r_msg.set_wr_trans_count(profiler_inst->get_wr_trans_count());
      r_msg.set_total_wr_latency(profiler_inst->get_wr_latency());
      r_msg.set_rd_byte_count(profiler_inst->get_rd_bytes_count());
      r_msg.set_rd_trans_count(profiler_inst->get_rd_trans_count());
      r_msg.set_total_rd_latency(profiler_inst->get_rd_latency());
  } else {
      xaxi_accel_profiler_instmgr* accel_profiler_instmgr = xaxi_accel_profiler_instmgr::getInstMgr();

      xaxi_accel_profiler* accel_profiler_inst =  accel_profiler_instmgr->getInstanceById(slotname);
      r_msg.set_total_wr_latency(accel_profiler_inst->get_cu_exec_cycles());
      r_msg.set_rd_byte_count(accel_profiler_inst->get_cu_exec_count());
      r_msg.set_rd_trans_count(accel_profiler_inst->get_cu_min_exec_cycles());
      r_msg.set_total_rd_latency(accel_profiler_inst->get_cu_max_exec_cycles());
  }
  SS_RESP();
}

void xcl_api_resp::xclPerfMonReadCounters_Streaming_resp(std::string slotname)
{
    xclPerfMonReadCounters_Streaming_response r_msg;

    std::replace( slotname.begin(), slotname.end(), '/', ':'); //
  
    xaxi_stream_profiler_instmgr* strm_profiler_instmgr = xaxi_stream_profiler_instmgr::getInstMgr();

    xaxi_stream_profiler* strm_profiler_inst =  strm_profiler_instmgr->getInstanceById(slotname);
    r_msg.set_str_num_tranx(strm_profiler_inst->get_transactions_count());
    r_msg.set_str_data_bytes(strm_profiler_inst->get_data_bytes_count());
    r_msg.set_str_busy_cycles(strm_profiler_inst->get_busy_cycles_count());
    r_msg.set_str_stall_cycles(strm_profiler_inst->get_stall_cycles_count());
    r_msg.set_str_starve_cycles(strm_profiler_inst->get_starve_cycles_count());

    SS_RESP();
}

void xcl_api_resp::xclPerfMonGetTraceCount_resp(bool ack, std::string slotname, bool accel){
  xclPerfMonGetTraceCount_response r_msg;
  if(!accel)
  {
    xaxi_profiler_instmgr* profiler_instmgr = xaxi_profiler_instmgr::getInstMgr();
    std::replace( slotname.begin(), slotname.end(), '/', ':'); //
    xaxi_profiler* profiler_inst =  profiler_instmgr->getInstanceById(slotname);
    r_msg.set_no_of_samples(profiler_inst->get_no_of_samples());
  } 
  else
  {
    xaxi_accel_profiler_instmgr* accel_profiler_instmgr = xaxi_accel_profiler_instmgr::getInstMgr();
    xaxi_accel_profiler* accel_profiler_inst =  accel_profiler_instmgr->getInstanceById(slotname);
    r_msg.set_no_of_samples(accel_profiler_inst->get_no_of_samples());
  }
  SS_RESP();
}

void xcl_api_resp::xclPerfMonReadTrace_resp(bool ack, std::string slotname, bool accel) {
  xclPerfMonReadTrace_response r_msg;

  if(!accel) {
    xaxi_profiler_instmgr* profiler_instmgr = xaxi_profiler_instmgr::getInstMgr();
    std::replace( slotname.begin(), slotname.end(), '/', ':'); //
    xaxi_profiler* profiler_inst =  profiler_instmgr->getInstanceById(slotname);
    std::vector<event*>* list_of_events = profiler_inst->get_all_events_result();
    if(list_of_events)
    {
      std::vector<event*>::iterator  startEvent = list_of_events->begin();
      std::vector<event*>::iterator  endEvent = list_of_events->end();
      for(;startEvent != endEvent ;startEvent++)
      {
        event* present_event = *startEvent;

        xclPerfMonReadTrace_response_events* resp_event = r_msg.add_output_data();
        resp_event->set_awlen(present_event->awlen);
        resp_event->set_arlen(present_event->arlen);
        resp_event->set_eventflags(present_event->eventflags);
        resp_event->set_timestamp(present_event->timestamp);
        resp_event->set_host_timestamp(present_event->host_timestamp);
        resp_event->set_rd_bytes(present_event->readBytes);
        resp_event->set_wr_bytes(present_event->writeBytes);
      }
      profiler_inst->reset_events();
    }
  } else {
    xaxi_accel_profiler_instmgr* accel_profiler_instmgr = xaxi_accel_profiler_instmgr::getInstMgr();
    xaxi_accel_profiler* accel_profiler_inst =  accel_profiler_instmgr->getInstanceById(slotname);
    std::vector<accel_event*>* accel_list_of_events = accel_profiler_inst->get_all_events_result();
    if(accel_list_of_events)
    {
      std::vector<accel_event*>::iterator  accelstartEvent = accel_list_of_events->begin();
      std::vector<accel_event*>::iterator  accelendEvent = accel_list_of_events->end();
      for(;accelstartEvent != accelendEvent ;accelstartEvent++)
      {
        accel_event* accel_present_event = *accelstartEvent;
        xclPerfMonReadTrace_response_events* resp_event = r_msg.add_output_data();
        resp_event->set_eventflags(accel_present_event->eventflags);
        resp_event->set_timestamp(accel_present_event->timestamp);
        resp_event->set_host_timestamp(accel_present_event->host_timestamp);
      }
      accel_profiler_inst->reset_events();
    }
  }

  SS_RESP();
}

void xcl_api_resp::xclPerfMonReadTrace_Streaming_resp(bool ack, std::string slotname)
{
    xclPerfMonReadTrace_Streaming_response r_msg;

    xaxi_stream_profiler_instmgr* strm_profiler_instmgr = xaxi_stream_profiler_instmgr::getInstMgr();
    std::replace( slotname.begin(), slotname.end(), '/', ':');

    xaxi_stream_profiler* strm_profiler_inst =  strm_profiler_instmgr->getInstanceById(slotname);
    std::vector<axi_s_event*>* events = strm_profiler_inst->get_events();
    if(events)
    {
        std::vector<axi_s_event*>::iterator  startEvent = events->begin();
        std::vector<axi_s_event*>::iterator  endEvent = events->end();
        for(;startEvent != endEvent ;startEvent++)
        {
            axi_s_event* present_event = *startEvent;
  
            xclPerfMonReadTrace_Streaming_response_events* resp_event = r_msg.add_output_data();
            resp_event->set_eventflags(present_event->axi_s_state);
            resp_event->set_timestamp(present_event->timestamp);
            resp_event->set_host_timestamp(present_event->host_timestamp);
        }
        strm_profiler_inst->reset_event_list();
    }

    SS_RESP();
}

size_t xcl_api_resp::alloc_void(size_t new_size) {
     if (buf_size == 0) {
        buf = malloc(new_size);
        return new_size;
     }
     if (buf_size < new_size) {
        buf = (void*) realloc(buf,new_size);
        return new_size;
     }
     return buf_size;
  }

void xcl_api_resp::xclGetDeviceTimestamp_resp(bool ack) {
  xclGetDeviceTimestamp_response r_msg;
  size_t deviceTimeStamp = get_sc_time_stamp();
  /*
  if(sc_get_time_resolution() == sc_time(1,SC_PS))
    deviceTimeStamp = sc_time_stamp().value()/1000;
  else
    deviceTimeStamp = sc_time_stamp().value();
    */
  r_msg.set_device_timestamp(deviceTimeStamp);
  SS_RESP();
}

void xcl_api_resp::xclGetDebugMessages_resp(bool force) {

  xclGetDebugMessages_response r_msg;
  std::string displayMsgs, logMsgs, stopMsgs;
  xsc::em_diag_core::fetchLiveMessages(displayMsgs);
  r_msg.set_display_msgs(displayMsgs);
  r_msg.set_log_msgs(logMsgs);
  r_msg.set_stop_msgs(stopMsgs);
  SS_RESP();
}

void xcl_api_resp::xclSetEnvironment_resp(bool ack) 
{
  xclSetEnvironment_response r_msg;
  r_msg.set_ack(ack);
  SS_RESP();
}

void xcl_api_resp::xclAllocDeviceBuffer_resp(std::string& buffer_filename,bool resp){
  xclAllocDeviceBuffer_response r_msg;
  r_msg.set_ack(resp);
  r_msg.set_filename(buffer_filename);
  SS_RESP();
}

void xcl_api_resp::xclFreeDeviceBuffer_resp(bool resp){
  xclFreeDeviceBuffer_response r_msg;
  r_msg.set_ack(resp);
  SS_RESP();
}

void xcl_api_resp::xclImportBO_resp(bool resp){
  xclImportBO_response r_msg;
  r_msg.set_ack(resp);
  SS_RESP();
}

void xcl_api_resp::xclCopyBO_resp(bool resp){
  xclCopyBO_response r_msg;
  r_msg.set_ack(resp);
  SS_RESP();
}

//QDMA START
void xcl_api_resp::xclCreateQueue_resp(int q_handle){
  xclCreateQueue_response r_msg;
  r_msg.set_q_handle(q_handle);
  SS_RESP();
}

void xcl_api_resp::xclWriteQueue_resp(uint64_t written_size){
  xclWriteQueue_response r_msg;
  r_msg.set_written_size(written_size);
  SS_RESP();
}

void xcl_api_resp::xclReadQueue_resp(void* dest, uint64_t size){
  xclReadQueue_response r_msg;
  r_msg.set_dest((char*)dest,size);
  r_msg.set_size(size);
  SS_RESP();
}

void xcl_api_resp::xclDestroyQueue_resp(bool success){
  xclDestroyQueue_response r_msg;
  r_msg.set_success(success);
  SS_RESP();
}
//QDMA END

void xcl_api_resp::ss_resp(){
  xclPerfMonReadCounters_response r_msg;
  r_msg.set_wr_byte_count(0);
  r_msg.set_wr_trans_count(0);
  r_msg.set_total_wr_latency(0);
  r_msg.set_rd_byte_count(0);
  r_msg.set_rd_trans_count(0);
  r_msg.set_total_rd_latency(0);
    SS_RESP();
}

void xcl_api_resp::xclPollCompletion_resp(std::vector<std::tuple<void*,uint32_t,bool> >& resp) {
	xclPollCompletion_response r_msg;
	for(auto& it:resp) {
		 xclPollCompletion_response_request* req = r_msg.add_fullrequest();
		 req->set_dest(std::get<0>(it),std::get<1>(it));
		 req->set_size(std::get<1>(it));
	}
	SS_RESP();
}

