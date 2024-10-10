// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "xaxi_accel_profiler_instmgr.h"

xaxi_accel_profiler_instmgr::xaxi_accel_profiler_instmgr(){
  mainAlive = true;
}

xaxi_accel_profiler_instmgr::~xaxi_accel_profiler_instmgr() {
	mainAlive = false;
}

xaxi_accel_profiler_instmgr* xaxi_accel_profiler_instmgr::getInstMgr() {
	static xaxi_accel_profiler_instmgr instance;
    return &instance;
}

xaxi_accel_profiler* 
xaxi_accel_profiler_instmgr::getInstanceById(std::string id){
   if(list_instances.find(id) == list_instances.end()){
      xaxi_accel_profiler* p_inst= new xaxi_accel_profiler();
      list_instances[id] = p_inst;
      return p_inst;
   } else {
      return list_instances[id];
   }
}


