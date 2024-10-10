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
 

//#include "sim_xdma.h"
#include "xcl_api.h"
#include <iostream>
#include <cstdlib>
#include <stdint.h>
#include "xcl_api_resp.h"
#include "sdaccel_cmodel_macros.h"
#include "msg_handler.h"
#include "systemc.h"
DPI_LINKER_DECL 
void WEAKFUNC set_valid_address_map(uint64_t& addr, unsigned int& size);

void xclClose(){
  xcl_api_resp x_resp;
  x_resp.xclClose_resp(true);
  sc_stop();
}

void xclPerfMonReadCounters(std::string slotname, bool accel)
{
 xcl_api_resp x_resp;

 x_resp.xclPerfMonReadCounters_resp(slotname, accel);

}

void xclPerfMonReadCounters_Streaming(std::string slotname)
{
 xcl_api_resp x_resp;

 x_resp.xclPerfMonReadCounters_Streaming_resp(slotname);

}

void xclPerfMonGetTraceCount(bool ack,std::string slotname, bool accel)
{
    xcl_api_resp x_resp;
    x_resp.xclPerfMonGetTraceCount_resp(ack,slotname,accel);
}

void xclPerfMonReadTrace(bool ack, std::string slotname, bool accel)
{
    xcl_api_resp x_resp;
    x_resp.xclPerfMonReadTrace_resp(ack,slotname, accel);
}

void xclPerfMonReadTrace_Streaming(bool ack, std::string slotname)
{
    xcl_api_resp x_resp;
    x_resp.xclPerfMonReadTrace_Streaming_resp(ack,slotname);
}


//void xclGetDeviceTimestamp(bool ack, size_t deviceTimeStamp)
void xclGetDeviceTimestamp(bool ack)
{
    xcl_api_resp x_resp;
    x_resp.xclGetDeviceTimestamp_resp(ack);
}

void xclSetEnvironment(bool ack)
{
    xcl_api_resp x_resp;
    x_resp.xclSetEnvironment_resp(ack);
}

void xclGetDebugMessages(bool force)
{ 
   xcl_api_resp x_resp;
   x_resp.xclGetDebugMessages_resp(force);
}

void xclAllocDeviceBuffer(uint64_t ddraddress, uint64_t size, std::string fileName, bool ret)
{ 
  unsigned int uSize = size;
  set_valid_address_map(ddraddress,uSize);
  xcl_api_resp x_resp;
  x_resp.xclAllocDeviceBuffer_resp(fileName,ret);
}

void xclFreeDeviceBuffer(bool ret)
{
  xcl_api_resp x_resp;
  x_resp.xclFreeDeviceBuffer_resp(ret);
}
//TODO : Remove this
void xclAllocDeviceBufferStandalone(uint64_t ddraddress, uint64_t size)
{ 
  unsigned int uSize = size;
  xcl_api_resp x_resp;
  std::string str("");
  x_resp.xclAllocDeviceBuffer_resp(str,true);
}

//QDMA START
void xclCreateQueue(bool write, uint64_t size)
{ 
  //IMPLEMENTATION retruns q_handle
  //xcl_api_resp x_resp;
 // x_resp.xclCreateQueue_resp(size);
}

void xclWriteQueue(uint64_t q_handle, const void *src, size_t size )
{
  //IMPLEMENTATION retruns written_size
  //xcl_api_resp x_resp;
  //x_resp.xclWriteQueue_resp(size);

}

void xcReadQueue(uint64_t q_handle, void *dest, size_t size )
{
  //IMPLEMENTATION fills the dest buffer
  //xcl_api_resp x_resp;
  //x_resp.xccReadQueue_resp(dest,size);

}

void xclDestroyQueue(uint64_t q_handle, uint64_t size)
{ 
  ////IMPLEMENTATION return success
  //xcl_api_resp x_resp;
 // x_resp.xclDestroyQueue_resp(true);
}


//QDMA END
void xclResp()
{
 xcl_api_resp x_resp;
 x_resp.ss_resp();
}


