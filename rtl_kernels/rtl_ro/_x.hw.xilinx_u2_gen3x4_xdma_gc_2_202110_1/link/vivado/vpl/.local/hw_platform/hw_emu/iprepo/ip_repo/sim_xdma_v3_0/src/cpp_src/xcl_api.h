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
 

#ifndef __XCL_API_H__
#define __XCL_API_H__

#include <iostream>
#include <stdint.h>
#include "xcl_api_resp.h"
//#include "rpc_messages.pb.h"
#include "sdaccel_cmodel_macros.h"
/*
typedef const void* xclDeviceHandle;
enum xclAddressSpace;

void xclOpen(const char *deviceName);
void xclGetDeviceInfo(xclDeviceHandle handle);
void xclLoadBitstream(xclDeviceHandle handle, const char *fileName);
void  xclAllocDeviceBuffer(xclDeviceHandle handle, size_t size);
void xclFreeDeviceBuffer(xclDeviceHandle handle, uint64_t buf);
void xclUpgradeFirmware(xclDeviceHandle handle, const char *fileName);
void xclBootFPGA(xclDeviceHandle handle);
*/
//TODO::Overiding the original signature of this call
enum AddressSpace {
        ADDR_SPACE_DEVICE_FLAT = 0,
        ADDR_SPACE_DEVICE_RAM = 1,
        ADDR_KERNEL_CTRL = 2,
        ADDR_SPACE_DEVICE_PERFMON = 3,
        ADDR_SPACE_MAX = 8
    };

void xclClose();
void xclCloseStandalone();
uint64_t xclCopyBufferHost2Device(uint64_t dest, const void *src, size_t size, size_t seek);
uint64_t xclCopyBufferDevice2Host(void *dest, uint64_t src, size_t size, size_t skip);
//size_t xclRead(AddressSpace space,uint64_t offset, void* buf, size_t size);
//size_t xclWrite(AddressSpace space,uint64_t offset, const void* buf, size_t size);
void xclPerfMonReadCounters(std::string slotname, bool accel); 
void xclPerfMonReadCounters_Streaming(std::string slotname); 
void xclPerfMonGetTraceCount(bool ack,std::string slotname, bool accel); 
void xclPerfMonReadTrace(bool ack,std::string slotname, bool accel); 
void xclPerfMonReadTrace_Streaming(bool ack,std::string slotname); 
void xclGetDeviceTimestamp(bool ack);
void xclSetEnvironment(bool ack);
void xclGetDebugMessages(bool force);
void xclAllocDeviceBuffer(uint64_t ddraddress, uint64_t size,std::string sFileName, bool ret);
void xclFreeDeviceBuffer(bool ret);
void xclAllocDeviceBufferStandalone(uint64_t ddraddress, uint64_t size);
//QDMA APIs
void xclCreateQueue(bool write);
void xclWriteQueue(uint64_t q_handle, const void *src, size_t size );
void xclReadQueue(uint64_t q_handle, void *dest, size_t size );
void xclDestroyQueue(uint64_t q_handle);
//following functions are used in hw_em debug support
/*
void registerDdrRead();
extern "C" void WEAKFUNC iki_register_DDR_read(int (*fp)(int,int));
int ddrRead(int ddrNum, int offset);
*/
void xclResp();
#endif


