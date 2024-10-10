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
 

#include "xaxi_profiler_instmgr.h"
#include "systemc.h"

extern "C" std::string __attribute__((weak)) get_env_config(std::string name);

extern double __attribute__ ((weak)) get_sc_time_insec();

xaxi_profiler_instmgr* xaxi_profiler_instmgr::instance = NULL;
void messenger(xaxi_profiler_instmgr* inst) {
	static clock_t l_time = clock();
	time_t currentTime;
	struct tm *localTime;
	std::stringstream msg;
	std::ios::fmtflags f(msg.flags());
	bool childAlive = true;
  if(inst->get_map_of_banks().empty()) {
	  return;
  }
	while (inst && childAlive) {
		if (!(inst->mainAlive)) {
			childAlive = false;
		} else {
			sleep(10);
		}
		time(&currentTime);
		localTime = localtime(&currentTime);
		msg.flags(f);
		if (((clock() - l_time) / CLOCKS_PER_SEC > inst->freqencyOfDebugMsgs)
				|| childAlive == false) {
			msg << "[Wall clock time: " << std::setfill('0') << std::setw(2)
					<< localTime->tm_hour << ":";
			msg << std::setw(2) << localTime->tm_min << std::setfill(' ');
			msg << ", Emulation time: " << (sc_time_stamp().to_seconds())*1000 << " ms]";
			l_time = clock();
			msg << " Data transfer between kernel(s) and global memory(s)\n";
			//msg << "Global Memory"<< std::setw(20) << "Read(KB)" << std::setw(20) << "Write(KB)\n";
			const std::map<std::string, xaxi_profiler*>& l_map =
					inst->get_map_of_banks();
			for (auto it : l_map) {
				msg << it.first;
				msg << std::right << std::setw(15) << "RD = ";
				std::stringstream rd_count;
				rd_count << std::fixed << std::setprecision(3)
						<< it.second->get_rd_bytes_count() / 1024.0 << " KB";
				std::stringstream wr_count;
				wr_count << std::fixed << std::setprecision(3)
						<< it.second->get_wr_bytes_count() / 1024.0 << " KB";
				msg << std::left << std::setw(16) << rd_count.str();
				msg << std::right << std::setw(12) << "WR = ";
				msg << std::left << std::setw(16) << wr_count.str();
				msg << "\n";
			}
			emulation::msg_handler::report("22", msg.str().c_str(),
					emulation::INFO, emulation::MEDIUM);
			msg.str("");
		}
	}
}

xaxi_profiler_instmgr::xaxi_profiler_instmgr() {
	mainAlive = true;
	freqencyOfDebugMsgs = 60 * 5;
	pmessenger = std::thread(messenger, this);
}

xaxi_profiler_instmgr::~xaxi_profiler_instmgr() {
	mainAlive = false;
  try {
    pmessenger.join();
  } catch(...) {
    std::cerr << "[HW-EM] Unable to join thread\n";
  }
}

xaxi_profiler_instmgr* xaxi_profiler_instmgr::getInstMgr() {
	static xaxi_profiler_instmgr instance;
	return &instance;
}

xaxi_profiler*
xaxi_profiler_instmgr::getInstanceById(std::string id) {
	std::string freq = get_env_config("aliveness_message_interval");
	if (freq.empty() == false) {
		freqencyOfDebugMsgs = strtoul(freq.c_str(), NULL, 0);
	}
	if (list_instances.find(id) == list_instances.end()) {
		xaxi_profiler* p_inst = new xaxi_profiler();
		list_instances[id] = p_inst;
		//if (id.compare(0, 4, "BANK") == 0) {
			list_bank_instances[id] = p_inst;
		//}
		return p_inst;
	} else {
		return list_instances[id];
	}
}


