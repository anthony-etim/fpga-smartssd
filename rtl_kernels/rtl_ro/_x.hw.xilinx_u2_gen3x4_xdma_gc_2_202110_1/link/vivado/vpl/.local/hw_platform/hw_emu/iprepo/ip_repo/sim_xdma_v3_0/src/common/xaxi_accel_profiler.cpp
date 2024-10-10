// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include <iostream>

#include <vector>
#include <time.h>
#include <math.h>
#include <string>
#include "xaxi_accel_profiler.h"
#include "systemc.h"

accel_event::accel_event()
{
  eventflags = 0;
  timestamp = 0;
  host_timestamp = 0;
}

xaxi_accel_profiler::~xaxi_accel_profiler() 
{
  delete list_of_events;
  list_of_events = NULL;
}

void xaxi_accel_profiler::register_cu_min_exec_cycles (uint32_t cu_cycles) {
    if (cu_cycles < cu_min_exec_cycles)
        cu_min_exec_cycles = cu_cycles;
}

void xaxi_accel_profiler::register_cu_max_exec_cycles (uint32_t cu_cycles) {
    if (cu_cycles > cu_max_exec_cycles)
        cu_max_exec_cycles = cu_cycles;
}

void xaxi_accel_profiler::simulate_single_cycle()
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
}

std::vector<accel_event*>* xaxi_accel_profiler::get_all_events_result()
{
    return list_of_events;
}

void xaxi_accel_profiler::reset_events()
{ 
    std::vector<accel_event*>::iterator  startEvent = list_of_events->begin();
    std::vector<accel_event*>::iterator  endEvent = list_of_events->end();
    for(;startEvent != endEvent ;startEvent++)
    {
        delete *startEvent;
    }
    list_of_events->clear();
}
