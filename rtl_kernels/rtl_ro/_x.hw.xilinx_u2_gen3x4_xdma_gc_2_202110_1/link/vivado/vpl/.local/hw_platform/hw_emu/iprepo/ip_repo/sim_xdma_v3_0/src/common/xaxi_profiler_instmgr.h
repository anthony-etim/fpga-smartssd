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
 

#ifndef _PROFILER_INSTMGR_
#define _PROFILER_INSTMGR_
#include <string>
#include <map>
#include <thread>
#include <iostream>
#include <iomanip>
#include "xaxi_profiler.h"
#include<unistd.h>
class xaxi_profiler;
class xaxi_profiler_instmgr {
public:
	static xaxi_profiler_instmgr* getInstMgr();

	xaxi_profiler* getInstanceById(std::string id);
	std::map<std::string, xaxi_profiler*> get_map() {
		return list_instances;
	}
	std::map<std::string, xaxi_profiler*> get_map_of_banks() {
		return list_bank_instances;
	}
	~xaxi_profiler_instmgr();
	bool mainAlive;
	unsigned long freqencyOfDebugMsgs;
	std::thread pmessenger;
private:
	xaxi_profiler_instmgr();

	std::map<std::string, xaxi_profiler*> list_instances;
	std::map<std::string, xaxi_profiler*> list_bank_instances;
	//void messenger(xaxi_profiler_instmgr* inst);
	static xaxi_profiler_instmgr* instance;
};
#endif


