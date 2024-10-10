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
 

#ifndef __XAXI_STREAM_PROFILER__
#define __XAXI_STREAM_PROFILER__

#include<iostream>
#include<vector>

#include "xaxi_stream_profiler_instmgr.h"

enum axi_s_state_type
{
    AXI_S_IDLE   = 0x0,
    AXI_S_START  = 0x1,
    AXI_S_STARVE = 0x2,
    AXI_S_STALL  = 0x4,
    AXI_S_TRANS  = 0x8,
    AXI_S_SINGLE = 0x10
};

class axi_s_event {
public:
    int axi_s_state;
    uint32_t timestamp;
// number of bytes ? 
    uint64_t host_timestamp;

    axi_s_event(int type = AXI_S_IDLE) :
        axi_s_state(type), timestamp(0), host_timestamp(0)
    {}

    ~axi_s_event() {}
};

class xaxi_stream_profiler
{
	friend class xaxi_stream_profiler_instmgr;
  public:
   ~xaxi_stream_profiler();

    void register_axi_stream_transaction(unsigned int id = 0);
    void register_axi_stream_data_byte(unsigned int id = 0, uint64_t num_bytes = 0);
    void register_axi_stream_busy_cycle(unsigned int id = 0);
    void register_axi_stream_stall_cycle(unsigned int id = 0);
    void register_axi_stream_starve_cycle(unsigned int id = 0);

    void simulate_single_cycle();

    //APIs to get AXI Stream Monitor information
    inline uint64_t get_transactions_count()  { return total_trans;}
    inline uint64_t get_data_bytes_count()    { return total_data_bytes;}
    inline uint64_t get_busy_cycles_count()   { return total_busy_cycles;}
    inline uint64_t get_stall_cycles_count()  { return total_stall_cycles;}
    inline uint64_t get_starve_cycles_count() { return total_starve_cycles;}


    // Add trace support
    std::vector<axi_s_event*> *get_events() { return event_list; }

    void reset_event_list();

    void create_event(int type) {
//        assert(curr_event == nullptr);    // ??
        curr_event = new axi_s_event(type);
    }

    void create_multiple_events_in_curr_cycle(int type) {
//        assert(curr_event1 == nullptr);    // ??
        curr_event1 = curr_event;
        curr_event = new axi_s_event(type);
    }

  private:

    uint64_t total_trans;
    uint64_t total_data_bytes;
    uint64_t total_busy_cycles;
    uint64_t total_stall_cycles;
    uint64_t total_starve_cycles;

    uint64_t num_cycles;
    axi_s_event *curr_event;
    /* if current cycle has more than 1 event, older event is stored here.
     * For example, in a "Starve" state when TVALID and TLAST comes in at the same cycle, end-of-starve and end-of-transaction 
     * should be registered in the same cycle.
     */
    axi_s_event *curr_event1;
    std::vector<axi_s_event*> *event_list;

protected:
     xaxi_stream_profiler() :
            total_trans(0), total_data_bytes(0), total_busy_cycles(0), total_stall_cycles(0), total_starve_cycles(0),
            num_cycles(0), curr_event(nullptr), curr_event1(nullptr), event_list(nullptr)
     {
        event_list = new std::vector<axi_s_event*>;
     }

};
#endif


