// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#ifndef _ACCEL_PROFILER_INSTMGR_
#define _ACCEL_PROFILER_INSTMGR_
#include <string>
#include <map>
#include <thread>
#include <iostream>
#include <iomanip>
#include "xaxi_accel_profiler.h"

class xaxi_accel_profiler;
class xaxi_accel_profiler_instmgr {
public:
   static xaxi_accel_profiler_instmgr* getInstMgr();
   xaxi_accel_profiler* getInstanceById(std::string id);
   std::map<std::string,xaxi_accel_profiler*> get_map() {return list_instances;}
   ~xaxi_accel_profiler_instmgr();
   bool mainAlive;
private:
   xaxi_accel_profiler_instmgr();
   std::map<std::string, xaxi_accel_profiler*> list_instances;
   static xaxi_accel_profiler_instmgr* instance;
};

#endif


