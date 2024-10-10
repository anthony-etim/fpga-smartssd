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
 

#ifndef __SIM_XDMA_HELPER_H__
#define __SIM_XDMA_HELPER_H__
#include "xcl_api.h"
#include "sim_xdma_base.h"
#include "sk_client.h"
#include <sys/types.h>
#include <fstream>


#include "xcl_macros.h"
#include "sdaccel_cmodel_macros.h"
#include "msg_handler.h"
#include <thread>
#define SET_GET_METHOD_DEF(__VAR_NAME__,__DATA_TYPE__) \
void set_##__VAR_NAME__(__DATA_TYPE__ value) \
{ \
    __VAR_NAME__ = value; \
} \
__DATA_TYPE__ get_##__VAR_NAME__() const \
{\
    return __VAR_NAME__; \
}

class call_packet_info;
class sim_xdma_helper
{
    public:
    sim_xdma_helper(sim_xdma_base* xdma_base);
    ~sim_xdma_helper();

    void simulate_single_cycle_c0_ui_clk();
    void init_helper();
    xcl_api_resp* x_resp;
    SET_GET_METHOD_DEF(host_resp_due, bool);
    SET_GET_METHOD_DEF(enable_socket_communication, bool);
    SET_GET_METHOD_DEF(buffer_copy, bool);
    std::ofstream* get_mLogStream();
    size_t xclCopyBufferHost2Device(uint64_t dest, const void *src, size_t size, size_t seek, uint32_t space);
    size_t xclCopyBufferDevice2Host(uint64_t src, size_t size, size_t skip, uint32_t space );
    private:
    sim_xdma_base* m_xdma_base;
    call_packet_info* ci_msg;
    void select_msg(int r);
    sk_client *_sk_inst;
    size_t i_len;
    void* i_buf;
    size_t buf_size;
    void* buf;
    size_t alloc_void(size_t new_size); 
    int reset_cycles;

    char*  xclCopyBufferDevice2Host_data;
    bool host_resp_due;
    bool enable_socket_communication;
    std::ofstream mLogStream;
    bool buffer_copy;  

};

#endif


