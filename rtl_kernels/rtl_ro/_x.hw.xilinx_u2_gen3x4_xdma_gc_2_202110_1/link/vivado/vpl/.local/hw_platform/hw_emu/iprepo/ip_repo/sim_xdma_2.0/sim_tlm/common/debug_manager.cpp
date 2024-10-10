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
 

#include "debug_manager.h"
#include <string.h>

class debug_manager_imp {
public:
	std::map<uint64_t,unsigned int> valid_addr_map;
	std::map<uint64_t,unsigned int> invalid_addr_map;
	std::map<uint64_t,std::pair<std::string,unsigned int>> kernel_info_register;
	std::map<std::string,std::string> environment_map;
private:
};

debug_manager::debug_manager() {
	p_imp = new debug_manager_imp();
}

debug_manager::~debug_manager() {
	if(p_imp)
		delete p_imp;
}

char*
debug_manager::get_variable_name(uint64_t& addr,uint64_t& valid_addr) {
	valid_addr = 0;
	for(auto it : p_imp->kernel_info_register ) {
		if(addr >= it.first && addr <= it.first + it.second.second-1) {
			for(auto iter : p_imp->valid_addr_map) {
				if(iter.first >= it.first && iter.first <= it.first + it.second.second-1) {
					valid_addr = iter.first;
					break;
				}
			}
			return strdup((it.second.first).c_str());
		}
	}
	return NULL;
}

std::map<uint64_t,unsigned int>
debug_manager::get_valid_address_map() {
	return p_imp->invalid_addr_map;
}

std::map<uint64_t,unsigned int>
debug_manager::get_invalid_address_map() {
	return p_imp->invalid_addr_map;
}

bool
debug_manager::is_valid_address_range(uint64_t& addr,unsigned int& size){
	if(p_imp->valid_addr_map.empty())
		return true;
	uint64_t start_addr = addr;
	uint64_t end_addr = addr + size-1;
	auto it = p_imp->valid_addr_map.begin();
	for(;it != p_imp->valid_addr_map.end();++it){
		if(start_addr >= it->first && start_addr <= (it->second + it->first -1)) {
			if(end_addr <= (it->second + it->first -1)) {
				return true;
			} else {
				start_addr = it->second + it->first;
			}
		}
	}
	return false;
}

void
debug_manager::set_valid_address_map(uint64_t& addr,unsigned int& size) {
	auto it = p_imp->valid_addr_map.find(addr);
	if(it == p_imp->valid_addr_map.end()) {
		p_imp->valid_addr_map[addr] = size;
	}
}

void
debug_manager::set_invalid_address_map(uint64_t& addr,unsigned int& size) {
	auto it = p_imp->invalid_addr_map.find(addr);
	if(it == p_imp->invalid_addr_map.end()) {
		p_imp->invalid_addr_map[addr] = size;
	}
}

void
debug_manager::populate_kernelArgs_info(std::map<uint64_t,std::pair<std::string,unsigned int>>kernelInfo) {
   if(kernelInfo.size() > 0) {
	 std::map<uint64_t,std::pair<std::string,unsigned int>>& l_kernel_info = p_imp->kernel_info_register;
     for (auto g_map : kernelInfo) {
    	 auto l_map = l_kernel_info.find(g_map.first);
    	 if(l_map == l_kernel_info.end()) {
    		 l_kernel_info[g_map.first] = g_map.second;
    		 //std::cout << "Kernel Arg " << g_map.second.first << " at offset " << g_map.first << " of size " << g_map.second.second << std::endl;
    	 } else {
    		 if(l_map->second.first != g_map.second.first) {
    			 l_map->second.first += ", " + g_map.second.first;
    		     //std::cout << "Kernel Arg " << g_map.second.first << " at offset " << g_map.first << " of size " << g_map.second.second << std::endl;
    		 }
    	 }
     }
   }
}


void debug_manager::set_environment(std::string name,std::string value) {
	if(!(name.empty() || value.empty())) {
      p_imp->environment_map[name] = value;
	}
}

std::string debug_manager::get_env_config(std::string name) {
	auto it = p_imp->environment_map.find(name);
	if(it != p_imp->environment_map.end()) {
		return p_imp->environment_map[name];
	} else {
		return "";
	}
}


