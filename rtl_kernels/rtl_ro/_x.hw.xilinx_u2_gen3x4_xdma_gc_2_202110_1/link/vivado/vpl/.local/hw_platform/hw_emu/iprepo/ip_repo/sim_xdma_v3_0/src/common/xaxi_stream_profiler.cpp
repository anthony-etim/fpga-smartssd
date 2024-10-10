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
 

#include "xaxi_stream_profiler.h"

xaxi_stream_profiler::~xaxi_stream_profiler() 
{
    delete curr_event;
    curr_event = nullptr;

    delete curr_event1;
    curr_event1 = nullptr;

    reset_event_list();

    delete event_list;
}

void xaxi_stream_profiler::register_axi_stream_transaction(unsigned int id)
{
    ++total_trans;
}
void xaxi_stream_profiler::register_axi_stream_data_byte(unsigned int id, uint64_t num_bytes)
{
    total_data_bytes += num_bytes;
}
void xaxi_stream_profiler::register_axi_stream_busy_cycle(unsigned int id)
{
    ++total_busy_cycles;
}
void xaxi_stream_profiler::register_axi_stream_stall_cycle(unsigned int id)
{
    ++total_stall_cycles;
}
void xaxi_stream_profiler::register_axi_stream_starve_cycle(unsigned int id)
{
    ++total_starve_cycles;
}

void xaxi_stream_profiler::reset_event_list()
{
    if(!event_list) {
        return;
    }

    for(std::vector<axi_s_event*>::iterator itr = event_list->begin(); itr != event_list->end(); ++itr) {
        delete (*itr);
    }
    event_list->clear();
}

void xaxi_stream_profiler::simulate_single_cycle()
{
    // if curr_event non-null; update the timestamp and add to event list and reset curr_event
    ++num_cycles;
    if(curr_event) {
        // IMPORTANT NOTE: this *must* be compatible with the method of generating
        // timestamps as defined in RTProfile::getTraceTime()

        struct timespec now;
        int err;
        if ((err = clock_gettime(CLOCK_MONOTONIC, &now)) < 0)
            curr_event->host_timestamp = 0;
        else
            curr_event->host_timestamp = (uint64_t) now.tv_sec * 1000000000UL + (uint64_t) now.tv_nsec;

        curr_event->timestamp = num_cycles;
        if(curr_event->axi_s_state & AXI_S_TRANS) {
            if(curr_event1 && (curr_event1->axi_s_state & AXI_S_STARVE)) {
                curr_event1->host_timestamp = curr_event->host_timestamp;
                curr_event1->timestamp = curr_event->timestamp;
                event_list->push_back(curr_event1);
                curr_event1 = nullptr;
            }
            num_cycles = 0; 
        }   
        event_list->push_back(curr_event);
        curr_event = nullptr;
    }
}





