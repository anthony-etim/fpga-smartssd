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
 

#include <iostream>

#include <vector>
#include <time.h>
#include <math.h>
#include <string>
#include "xaxi_profiler.h"
//#include "systemc.h"
#include "sdaccel_cmodel_macros.h"

extern "C"
char* WEAKFUNC get_variable_name(uint64_t& addr,uint64_t& valid_addr);


//xaxi_profiler* xaxi_profiler::_inst = NULL;
//bool xaxi_profiler::instanceFlag = false;

/*xaxi_profiler* xaxi_profiler::getInstance()
{
    if(!instanceFlag)
    {
       _inst = new xaxi_profiler();
       instanceFlag = true;
    }
    return _inst;
}
*/
event::event()
{
  awlen = 0;
  arlen = 0 ;
  eventflags = 0;
  timestamp = 0;
  host_timestamp = 0;
  readBytes = 0;
  writeBytes = 0;
}

xaxi_profiler::~xaxi_profiler() 
{
  delete list_of_events;
  list_of_events = NULL;
}

void xaxi_profiler::register_axi_memory_read_latency(unsigned int clk_cycles, unsigned int id, unsigned int bytes)
{
   if(axi_avg_rd_latency.find(id) == axi_avg_rd_latency.end()) {
      axi_avg_rd_latency[id] = 0;
      n_rd_done[id] = 0;
   }
   n_rd_done[id] += 1;
   axi_avg_rd_latency[id] = (axi_avg_rd_latency[id]*((double)n_rd_done[id]-1) + clk_cycles)/n_rd_done[id];     
   
   //_profile_inst->profile_average_memory_read_latency(axi_avg_rd_latency);
   //std::cout << "Read Transaction completed with ID:: " << id << " ,number of cycles:: " << clk_cycles << " and transactions finished:: "<< n_rd_done[id] << std::endl;
   
   //Profiled data according to the APIs exposed by SDAccel
   total_read_trans += 1;
   total_read_bytes += bytes;
   total_read_latency += clk_cycles;

   if ((clk_cycles < min_read_latency) || (min_read_latency == 0))
   {
      min_read_latency = clk_cycles;
   }
   if (clk_cycles > max_read_latency)
   {
      max_read_latency = clk_cycles;
   }
}

void xaxi_profiler::register_axi_memory_write_latency(unsigned int clk_cycles, unsigned int id,unsigned int bytes)
{
   if(axi_avg_wr_latency.find(id) == axi_avg_wr_latency.end()) {
      axi_avg_wr_latency[id] = 0;
      n_wr_done[id] = 0;
   }
   n_wr_done[id] += 1;
   axi_avg_wr_latency[id] = (axi_avg_wr_latency[id]*((double)n_wr_done[id]-1) + clk_cycles)/n_wr_done[id];     
   //_profile_inst->profile_average_memory_write_latency(axi_avg_wr_latency);

   //Profiled data according to the APIs exposed by SDAccel
   total_write_trans += 1;
   total_write_bytes += bytes;
   total_write_latency += clk_cycles;

   if ((clk_cycles < min_write_latency) || (min_write_latency == 0))
   {
      min_write_latency = clk_cycles;
   }
   if (clk_cycles > max_write_latency)
   {
      max_write_latency = clk_cycles;
   }
}

void xaxi_profiler::register_axi_memory_access_latency(unsigned int clk_cycles, unsigned int id)
{
   if(axi_avg_ma_latency.find(id) == axi_avg_ma_latency.end()) {
      axi_avg_ma_latency[id] = 0;
      n_ma_done[id] = 0;
   }
   n_ma_done[id] += 1;
   axi_avg_ma_latency[id] = (axi_avg_ma_latency[id]*(n_ma_done[id]-1) + clk_cycles)/n_ma_done[id];     
   //_profile_inst->profile_average_memory_access_latency(axi_avg_ma_latency);
}

void xaxi_profiler::register_write_burst(bool burst, unsigned int id)
{
   if (burst) {
     n_write_burst[id] += 1;
     //_profile_inst->profile_number_write_burst(n_write_burst);
   }
}

void xaxi_profiler::register_read_burst(bool burst, unsigned int id)
{
   if (burst) {
     n_read_burst[id] += 1;
     //_profile_inst->profile_number_read_burst(n_read_burst);
   }
}
void xaxi_profiler::simulate_single_cycle()
{
    
    no_of_cycles++;
    if (event_received && list_of_events) 
    {
        // IMPORTANT NOTE: this *must* be compatible with the method of generating
        // timestamps as defined in RTProfile::getTraceTime()
        struct timespec now;
        int err;
        if ((err = clock_gettime(CLOCK_MONOTONIC, &now)) < 0)
            curr_event->host_timestamp = 0;
        else
            curr_event->host_timestamp = (uint64_t) now.tv_sec * 1000000000UL + (uint64_t) now.tv_nsec;

        curr_event->timestamp = no_of_cycles;
        list_of_events->push_back(curr_event);
        no_of_cycles = 0;
        this->reset_curr_event();
    }
    //TODO::Remove this function once implementation is finalised
    //status_update();
}

std::vector<event*>* xaxi_profiler::get_all_events_result()
{
    return list_of_events;
}

void xaxi_profiler::reset_events()
{ 
    std::vector<event*>::iterator  startEvent = list_of_events->begin();
    std::vector<event*>::iterator  endEvent = list_of_events->end();
    for(;startEvent != endEvent ;startEvent++)
    {
        delete *startEvent;
    }
    list_of_events->clear();
}

void xaxi_profiler::report_uncompleted_read(unsigned int& n_cycles, unsigned int& id,uint64_t& addr) {
   std::stringstream msg;
   //TODO:: Remove ID and replace it with variable name
   uint64_t valid_addr;
   char* var = get_variable_name(addr,valid_addr);
   if(!var) {
      msg << "A read transaction from kernel (master id: " << id << ") at address " << std::hex << "0x" << addr << std::dec;
      msg << " to global memory has not completed in ";
      msg << n_cycles << " cycles. The device may have hung. Please check your kernel behavior";
   } else {
      msg << "Read for argument \"" << var;
      msg << "\" from global memory has not completed in ";
      msg << n_cycles << " cycles. The device may have hung. Please check your kernel behavior";
      free(var);
   }
   emulation::msg_handler::report("20",msg.str().c_str(),emulation::CRITICAL_WARNING,emulation::MEDIUM);
}

void xaxi_profiler::report_uncompleted_write(unsigned int& n_cycles, unsigned int& id,uint64_t& addr) {
   std::stringstream msg;
   //TODO:: Remove ID and replace it with variable name
   uint64_t valid_addr;
   char* var = get_variable_name(addr,valid_addr);
   if(!var) {
      msg << "A write transaction from kernel (master id: " << id << ") at address " << std::hex << "0x" << addr << std::dec;
      msg << " to global memory has not completed in ";
      msg << n_cycles << " cycles. The device may have hung. Please check your kernel behavior";
   } else {
      msg << "Write for argument \"" << var;
      msg << "\" to global memory has not completed in ";
      msg << n_cycles << " cycles. The device may have hung. Please check your kernel behavior";
      free(var);
   }
   emulation::msg_handler::report("21",msg.str().c_str(),emulation::CRITICAL_WARNING,emulation::MEDIUM);
}



