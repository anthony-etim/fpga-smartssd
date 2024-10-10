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
 

#ifndef __XCL_API_RESP_H__
#define __XCL_API_RESP_H__
#include<iostream>
#include "sk_client.h"
#include <vector>
#include <tuple>
#include <string>
//#include "rpc_messages.pb.h"

class response_packet_info;

class xcl_api_resp {
public:
    xcl_api_resp();
    ~xcl_api_resp(){
      free(ri_buf);
      free(buf);
    }
    void xclWriteAddrSpaceDeviceRam_resp(bool valid);
    void xclWriteAddrKernelCtrl_resp(bool valid);
    void xclReadAddrSpaceDeviceRam_resp(unsigned char* data, int size, bool resp);
    void xclReadAddrKernelCtrl_resp(unsigned char* data, int size, bool resp);
    void xclClose_resp(bool valid);
    void xclCopyBufferHost2Device_resp(uint64_t size);
    void xclCopyBufferDevice2Host_resp(unsigned char* dest, uint64_t size);
    void xclPerfMonReadCounters_resp(std::string slotname, bool accel);
    void xclPerfMonReadCounters_Streaming_resp(std::string slotname);
    void xclPerfMonGetTraceCount_resp(bool ack,std::string slotname, bool accel);
    void xclPerfMonReadTrace_resp(bool ack,std::string slotname, bool accel);
    void xclPerfMonReadTrace_Streaming_resp(bool ack,std::string slotname);
    void xclGetDeviceTimestamp_resp(bool ack);
    void xclGetDebugMessages_resp(bool force);
    void xclSetEnvironment_resp(bool ack);
    void xclAllocDeviceBuffer_resp(std::string& buffer_filename,bool resp);
    void xclFreeDeviceBuffer_resp(bool resp);
    void xclImportBO_resp(bool resp);
    void xclCopyBO_resp(bool resp);
    //QDMA START
    void xclCreateQueue_resp(int q_handle);
    void xclWriteQueue_resp(uint64_t written_size);
    void xclReadQueue_resp(void* dest, uint64_t size);
    void xclPollCompletion_resp(std::vector<std::tuple<void*,uint32_t,bool> >&);
    void xclDestroyQueue_resp(bool success);
    //QDMA END 
    void ss_resp();
    void get_unix_socket();
private:
    response_packet_info* ri_msg;
    size_t ri_len;
    void* ri_buf;
    size_t buf_size;
    void* buf;
    bool enable_socket_communication;
    sk_client *_sk_inst;
    //void serialize_and_send_resp(T &r_msg);
    size_t alloc_void(size_t new_size);

};
#endif


