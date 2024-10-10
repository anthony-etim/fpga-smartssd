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
 

#ifndef __XAXI_PROFILER__
#define __XAXI_PROFILER__
#include<iostream>
#include <map>
#include "xaxi_profiler_instmgr.h"
#include <google/protobuf/message_lite.h>
#include <google/protobuf/repeated_field.h>
#include "msg_handler.h"
#include<vector>
//#include "systemc.h"

class event {
    public:
    uint8_t awlen;
    uint8_t arlen;
    uint8_t eventflags;
    uint32_t timestamp;
    uint64_t host_timestamp;
    uint16_t readBytes;
    uint16_t writeBytes;
    event();
};
class xaxi_profiler {
	friend class xaxi_profiler_instmgr;
public:
   ~xaxi_profiler(); 
    void register_axi_memory_access_latency(unsigned int clk_cycles, unsigned int id);
    void register_axi_memory_read_latency(unsigned int clk_cycles, unsigned int id, unsigned int bytes);
    void register_axi_memory_write_latency(unsigned int clk_cycles, unsigned int id, unsigned int bytes);
    void register_write_burst(bool burst, unsigned int id);
    void register_read_burst(bool burst, unsigned int id);
    void simulate_single_cycle();
    //void print_report();
    //APIs to get read information
    unsigned int inline get_rd_latency(){ return total_read_latency;}
    unsigned int inline get_rd_trans_count(){ return total_read_trans;}
    unsigned int inline get_rd_bytes_count(){ return total_read_bytes;}
    unsigned int inline get_rd_min_latency(){ return min_read_latency;}
    unsigned int inline get_rd_max_latency(){ return max_read_latency;}
    
    //APIs to get write information
    unsigned int inline get_wr_latency(){ return total_write_latency;}
    unsigned int inline get_wr_trans_count(){ return total_write_trans;}
    unsigned int inline get_wr_bytes_count(){ return total_write_bytes;}
    unsigned int inline get_wr_min_latency(){ return min_write_latency;}
    unsigned int inline get_wr_max_latency(){ return max_write_latency;}
    void inline create_event(){ if(curr_event) return; curr_event = new event;}

    //set API's for trace 
    void inline set_wr_address_event()     { create_event() ;      curr_event->eventflags = (curr_event->eventflags | 1 );event_received = true; }
    void inline set_wr_first_event()       { create_event() ;      curr_event->eventflags = (curr_event->eventflags | 2 );event_received = true;}
    void inline set_wr_last_event()        { create_event() ;      curr_event->eventflags = (curr_event->eventflags | 4 );event_received = true;}
    void inline set_wr_response_event()    { create_event() ;      curr_event->eventflags = (curr_event->eventflags | 8 );event_received = true;}
    void inline set_rd_address_event()     { create_event() ;      curr_event->eventflags = (curr_event->eventflags | 16 );event_received = true;}
    void inline set_rd_first_event()       { create_event() ;      curr_event->eventflags = (curr_event->eventflags | 32 );event_received = true;}
    void inline set_rd_last_event()        { create_event() ;      curr_event->eventflags = (curr_event->eventflags | 64 );event_received = true;}
    void inline set_ar_length_event(int ar_len) { create_event() ; curr_event->arlen     = ar_len;event_received = true;}
    void inline set_aw_length_event(int aw_len) { create_event() ; curr_event->awlen     = aw_len;event_received = true;}
    void inline set_rd_bytes(uint16_t read_bytes){ create_event() ; curr_event->readBytes = read_bytes; event_received = true; }     
    void inline set_wr_bytes(uint16_t write_bytes){ create_event() ; curr_event->writeBytes = write_bytes; event_received = true; }     

    //get API's for trace 
    int inline get_no_of_samples()              { return list_of_events->size();}
    std::vector<event*>* get_all_events_result();

    //reset API's for trace
    void inline reset_curr_event()              { create_event() ; curr_event = NULL ; event_received = false ; }
    void reset_events();                  

    void report_uncompleted_read(unsigned int& n_cycles, unsigned int& id,uint64_t& addr);
    void report_uncompleted_write(unsigned int& n_cycles, unsigned int& id,uint64_t& addr);
    unsigned int inline get_uncomplete_rd_transaction(){unsigned int rd_ret = uncomplete_rd_cycles; uncomplete_rd_cycles = 0; return rd_ret;}
    unsigned int inline get_uncomplete_rd_id(){return uncomplete_rd_id;}
    unsigned int inline get_uncomplete_wr_transaction() {unsigned int wr_ret = uncomplete_wr_cycles; uncomplete_wr_cycles = 0; return wr_ret;}
    unsigned int inline get_uncomplete_wr_id(){return uncomplete_wr_id;}
    //void set_idle_read_time(sc_time val) {idle_rd_time = val;};
    //void set_idle_write_time(sc_time val) {idle_wr_time = val;};
    //sc_time inline get_idle_time() { sc_time r_value = (idle_rd_time > idle_wr_time) ? idle_wr_time : idle_rd_time; if(r_value != SC_ZERO_TIME) {idle_rd_time = idle_wr_time = SC_ZERO_TIME;} return r_value;}
    void inline set_interface_name(std::string val) { interface = val;}
private:
    std::map<unsigned int, double> axi_avg_ma_latency;
    std::map<unsigned int, unsigned int > n_ma_done;
    std::map<unsigned int, double> axi_avg_wr_latency;
    std::map<unsigned int, unsigned int > n_wr_done;
    std::map<unsigned int, double> axi_avg_rd_latency;
    std::map<unsigned int, unsigned int > n_rd_done;
    std::map<unsigned int, unsigned int > n_write_burst;
    std::map<unsigned int, unsigned int > n_read_burst;
    unsigned int total_read_trans;
    unsigned int total_read_bytes;
    unsigned int total_read_latency;
    unsigned int min_read_latency;
    unsigned int max_read_latency;
    unsigned int total_write_trans;
    unsigned int total_write_bytes;
    unsigned int total_write_latency;
    unsigned int min_write_latency;
    unsigned int max_write_latency;
   
    //memebers for trace implementation
    unsigned int no_of_cycles;
    std::vector<event*>* list_of_events;
    event* curr_event;
    bool event_received;

    //sc_time idle_rd_time,idle_wr_time;
    unsigned int uncomplete_wr_cycles, uncomplete_rd_cycles;
    unsigned int uncomplete_wr_id, uncomplete_rd_id;
    std::string interface;
    clock_t last_clk_time;
protected:
     xaxi_profiler()
     {
       total_read_trans = 0;
       total_read_bytes = 0;
       total_read_latency = 0;
       min_read_latency = 0;
       max_read_latency = 0;
       total_write_trans = 0;
       total_write_bytes = 0;
       total_write_latency = 0;
       min_write_latency = 0;
       max_write_latency = 0;
       
       uncomplete_rd_cycles = 0;
       uncomplete_wr_cycles = 0;
       uncomplete_rd_id = 0;
       uncomplete_wr_id = 0;
       //initilisation of trace members
       no_of_cycles = 0;
       event_received = false;
       curr_event = NULL;
       list_of_events = new std::vector<event*>;
       interface = "";
       last_clk_time = 0;
       //idle_rd_time = SC_ZERO_TIME;
       //idle_wr_time = SC_ZERO_TIME;
    };

};
#endif


