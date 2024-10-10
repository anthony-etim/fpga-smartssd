// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#ifndef __XAXI_ACCEL_PROFILER__
#define __XAXI_ACCEL_PROFILER__
#include<iostream>
#include <map>
#include "xaxi_accel_profiler_instmgr.h"
#include "systemc.h"

class accel_event {
    public:
    uint8_t eventflags;
    uint32_t timestamp;
    uint64_t host_timestamp;
    accel_event();
};

class xaxi_accel_profiler {
  friend class xaxi_accel_profiler_instmgr;
public:
   ~xaxi_accel_profiler();
   // Counter APIs
    void inline register_cu_exec_cycles (uint32_t cu_cycles) {cu_exec_cycles += cu_cycles;}
    void inline register_cu_exec_count() {cu_exec_count += 1;}
    void register_cu_min_exec_cycles    (uint32_t cu_cycles);
    void register_cu_max_exec_cycles    (uint32_t cu_cycles);
    uint32_t inline get_cu_exec_cycles() { return cu_exec_cycles;}
    uint32_t inline get_cu_exec_count() { return cu_exec_count;}
    uint32_t inline get_cu_min_exec_cycles() { return cu_min_exec_cycles;}
    uint32_t inline get_cu_max_exec_cycles() { return cu_max_exec_cycles;}
    // Trace Specific APIs
    void simulate_single_cycle();
    void inline create_event() { if(curr_event) return; curr_event = new accel_event; }
    //set APIs for trace 
    void inline set_cu_start() { create_event() ; curr_event->eventflags = (curr_event->eventflags | 1 );event_received = true; } 
    void inline set_cu_end()   { create_event() ; curr_event->eventflags = (curr_event->eventflags | 1 );event_received = true; }     
    //get APIs for trace 
    int inline get_no_of_samples() { return list_of_events->size();}
    std::vector<accel_event*>* get_all_events_result();
    //reset APIs for trace
    void inline reset_curr_event() { create_event() ; curr_event = NULL ; event_received = false; }
    void reset_events();
private:
    uint32_t cu_exec_cycles;
    uint32_t cu_exec_count;
    uint32_t cu_min_exec_cycles;
    uint32_t cu_max_exec_cycles;
    //Trace Members
    unsigned int no_of_cycles;
    std::vector<accel_event*>* list_of_events;
    accel_event* curr_event;
    bool event_received;
protected:
     xaxi_accel_profiler()
     {
       cu_exec_cycles = 0;
       cu_exec_count = 0;
       cu_min_exec_cycles = 0xFFFFFFFF;
       cu_max_exec_cycles = 0;
       // Trace
       no_of_cycles = 0;
       event_received = false;
       curr_event = NULL;
       list_of_events = new std::vector<accel_event*>;
    };

};
#endif


