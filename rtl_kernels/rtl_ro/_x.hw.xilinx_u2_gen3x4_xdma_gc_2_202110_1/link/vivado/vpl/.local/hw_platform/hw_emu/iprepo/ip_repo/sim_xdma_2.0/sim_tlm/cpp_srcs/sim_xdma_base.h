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
 

#ifndef __SIM_XDMA_BASE__
#define __SIM_XDMA_BASE__
#define SET_GET_METHOD_DEC(__VAR_NAME__,__DATA_TYPE__) \
virtual void set_##__VAR_NAME__(__DATA_TYPE__ value) {}\
virtual __DATA_TYPE__ get_##__VAR_NAME__() const {} 
#include "xtlm_generic_payload/aximm_payload.h"
class sim_xdma_base
{
    public:
    virtual size_t xclWrite(AddressSpace space, uint64_t offset, const void *hostBuf, size_t size, uint32_t subspace){}
    virtual size_t xclRead(AddressSpace space, uint64_t offset, void *hostBuf, size_t size, uint32_t subspace){}
    virtual void   ddrRead(unsigned int ddrNum, uint64_t offset, void* dest, unsigned int size){}
    virtual xtlm::aximm_payload* get_wr_trans_ptr(){}
    virtual xtlm::aximm_payload* get_rd_trans_ptr(){}
    
    
};
#endif


