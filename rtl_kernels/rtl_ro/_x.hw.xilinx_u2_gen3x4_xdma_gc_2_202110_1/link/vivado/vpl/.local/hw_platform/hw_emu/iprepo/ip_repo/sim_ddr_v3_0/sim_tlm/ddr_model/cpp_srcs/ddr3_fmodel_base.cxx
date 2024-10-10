// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// (c) Copyright(C) 2013 - 2018 by Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
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
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

#include "ddr3_fmodel_base.h"
#include "sdaccel_cmodel_macros.h"

#include <sys/stat.h>
#include "msg_handler.h"
#include "rpc_messages.pb.h"
//#define DEBUGMSG

extern "C"
char* WEAKFUNC get_variable_name(uint64_t& addr,uint64_t& valid_addr);
extern "C"
bool WEAKFUNC is_valid_address_range(uint64_t& addr,unsigned int& size);
extern "C"
std::string WEAKFUNC get_env_config(std::string name);

ddr3_fmodel_base::~ ddr3_fmodel_base()
{

#ifdef DEBUGMSG
  cout<<"ddr3_fmodel_base() destructor fired calling serialize_ddr_memory"<<endl;
#endif
  isStandalone = false;
}

ddr3_fmodel_base::ddr3_fmodel_base(std::string p_module_name): //Mode 0
  module_name(p_module_name)
{
  env_read = false;
  enable_oob = false;
  enable_serialization = false;
  enable_umr = false;
  isStandalone = false;
  serialize_msg = new ddr_mem_msg;
  deserialize_msg = new ddr_mem_msg;
}

void ddr3_fmodel_base::serialize_strb(uint64_t page_idx) 
{
  std::string file_name = get_strb_file_name(page_idx);
  FILE* pFile = fopen(file_name.c_str(),"w+");
  if(!pFile)
    return;
  int fhandle = fileno(pFile);
  if(fhandle == -1)
  {
    fclose(pFile);
    exit(1);
  }
  if(memStrbCache.find(page_idx) != memStrbCache.end())
  {
    //NOTES::Each index is of 8 Bytes and capacity returns the number of indexes allocated
    serialize_msg->set_strb_data(reinterpret_cast<const char*>(memStrbCache[page_idx]->data()),memStrbCache[page_idx]->capacity()*8);
    if(serialize_msg->SerializeToFileDescriptor(fhandle) == false)
    {
      fclose(pFile);
      exit(1);
    }
  }
  fclose(pFile);
}

std::string ddr3_fmodel_base::get_mem_file_name(uint64_t pageIdx)//,enum fileType file_type)
{
  std::string file_name;
  std::string socket_id;
  std::string pid;
  std::string deviceName("");
  std::string user("");
  if(getenv("EMULATION_SOCKETID")) {
    socket_id = getenv("EMULATION_SOCKETID");
    std::size_t foundLast = socket_id.find_last_of("_");
    std::size_t foundFirst = socket_id.find_first_of("_");
    if(foundLast != std::string::npos)
    {
      pid = socket_id.substr(foundLast+1);
    }
    if(foundFirst != std::string::npos)
    {
      deviceName = socket_id.substr(0,foundFirst);
    }
  } 

  if(getenv("USER") != NULL)
  {
    user = getenv("USER");
  }
  std::string file_path("");
  std::string sEmRunDir("");

  if(getenv("EMULATION_RUN_DIR")) 
  {
    sEmRunDir = getenv("EMULATION_RUN_DIR");
  }
  else
  {
    sEmRunDir =  "/tmp/" + user + "/hw_em/"; 
  }

  file_path = sEmRunDir +"/" + module_name + "/";
  std::stringstream mkdirCommand;
  mkdirCommand<<"mkdir -p "<<file_path;;
  struct stat statBuf;
  if ( stat(file_path.c_str(), &statBuf) == -1 )
  {
    system(mkdirCommand.str().c_str());
  }
  file_name = file_path + module_name + "_" + std::to_string(pageIdx);
#ifdef DEBUGMSG
  cout<<"ddr fmodel file_name: "<< file_name<<endl;
#endif
  return file_name;
}

std::string ddr3_fmodel_base::get_strb_file_name(uint64_t page_idx) 
{
  std::string mem_file_name = get_mem_file_name(page_idx);
  mem_file_name += "_strb";
  return mem_file_name;
}

std::vector<uint64_t>* ddr3_fmodel_base::get_strb_vec(uint64_t addr,bool create_new) 
{
  //Get the index
  uint64_t page_idx = addr >> ADDRBITS;

  std::string file_name = get_strb_file_name(page_idx);
  FILE* pFile = fopen(file_name.c_str(),"r");

  if(memStrbCache.find(page_idx) != memStrbCache.end()) {
    if(pFile)
      fclose(pFile);
#ifdef DEBUGMSG
    std::cout << __FUNCTION__ << " Return Existing " << memStrbCache[page_idx] << std::endl;
#endif
    return memStrbCache[page_idx];
  } else if(( pFile != NULL) && enable_serialization ) {
    //FILE* pFile = fopen(file_name.c_str(),"r");
    int fhandle = fileno(pFile);

    if (deserialize_msg->ParseFromFileDescriptor(fhandle) == false)
    {
      fclose(pFile);
      exit(1);
    }
    //memStrbCache[page_idx] = new std::vector<uint64_t>();
    std::vector<uint64_t>* strb = new std::vector<uint64_t>();

    //In  case of serialization reserve data for whole ONE MB.
    //Calculations: each index can hold 64 Bytes. So for ONE MB 
    // We need 16384 indexes
    std::string a = deserialize_msg->strb_data();
    strb->resize(a.size()/8);

    memcpy(strb->data(),a.c_str(),a.size());
    //for(int i =0; i < a.size()/8; i++) {
    //  (*strb)[i] = const_cast<uint64_t*>(reinterpret_cast<const uint64_t*>(a.c_str()))[i];
    //}
    fclose(pFile);
    memStrbCache[page_idx] = strb;
#ifdef DEBUGMSG
    std::cout << __FUNCTION__ << " Return From File " << memStrbCache[page_idx] << std::endl;
#endif
    return memStrbCache[page_idx];
  } else if (create_new) {
    //reserve the size, to prevent slow down
    memStrbCache[page_idx] = new std::vector<uint64_t>();
    //Reserving for 1/4 th of Page in advance
    memStrbCache[page_idx]->resize(ONE_KB_STRB*256);
    if(pFile != NULL)
      fclose(pFile);
#ifdef DEBUGMSG
    std::cout << __FUNCTION__ << " Creating New One " << memStrbCache[page_idx] << std::endl;
#endif
    return memStrbCache[page_idx];
  }
  if(pFile != NULL)
    fclose(pFile);
  return NULL;

}

void ddr3_fmodel_base::write_strb(uint64_t addr, uint64_t size)
{
  //get vector related to this page
  //Each page has its own strb vector
  std::vector<uint64_t>* strb = get_strb_vec(addr,true);
  uint64_t page_addr =  addr & ~(-1 << ADDRBITS);

  //calculate startIndex and endIndex according to
  //array of uint64_t
  //Each bit represents one Byte of data, accordingly
  //calculate startLoc and endLoc
  unsigned int startIndex = ((page_addr + 64) >> 6) -1; 
  //Calculation for endIndex
  //Addr = start_addr + size -1
  //that's why 63 is there in place of 64
  unsigned int endIndex = ((page_addr+size+63) >> 6) -1;

  unsigned int startLoc = page_addr & ~(-1 << 6);

  unsigned int endLoc = (page_addr+size) & ~(-1 << 6);
#ifdef DEBUGMSG
  std::cout << __FUNCTION__ << " Addr " << addr << " Size " << size << std::endl;
  std::cout << __FUNCTION__ << " StartIndex " << startIndex << " endIndex " << endIndex << std::endl;
  std::cout << __FUNCTION__ << " StartLoc " << startLoc << " endLoc " << endLoc << std::endl;
#endif
  //Important:: It is good to manually control the size
  //of vector for speed improvement.
  while(strb->capacity() < endIndex) {
    strb->resize(strb->capacity()<<1);
  }
  //Directly using the allocated memory pointer, mainly to avoid
  //iterating over whole vector
  uint64_t* data = strb->data();

  //Calculation differs if STRB span is within a index or across index.
  //memset is use to avoid iterations. Specially in case of xclCopyBuffer
  //iteration cycles will be huge. Moreover if user is writing a optimized
  //kernel then most of the transaction will be of 4K which means 8 iterations
  //each time
  if(startIndex == endIndex) {
    if(endLoc)
      (*strb)[startIndex] = (*strb)[startIndex] | (~(-1LL << endLoc) & (-1LL << startLoc)) ;
    else
      (*strb)[startIndex] = (*strb)[startIndex] | (-1LL << startLoc) ;
  } else {
    (*strb)[startIndex] = (*strb)[startIndex] | (-1LL << startLoc);
    //NOTES::Each index is of 8 Bytes
    memset(data+startIndex+1,~0,(endIndex-startIndex-1)*8);

    if(endLoc)
      (*strb)[endIndex] = (*strb)[endIndex] | ~(-1LL << endLoc);
    else
      (*strb)[endIndex] = (*strb)[endIndex] | (-1LL << endLoc);
  }

#ifdef DEBUGMSG
  for (int i = startIndex; i<= endIndex; i++) {
    std::cout << "Index:: " << i << " Data:: " << (*strb)[i] << std::endl;
  }
#endif
}

void ddr3_fmodel_base::check_strb(uint64_t addr, uint64_t size)
{
  //get vector related to this page
  //Each page has its own strb vector
  std::vector<uint64_t>* strb = get_strb_vec(addr,false);
  uint64_t page_addr =  addr & ~(-1 << ADDRBITS);
#ifdef DEBUGMSG
  std::cout << __FUNCTION__ << " Addr " << addr << " Size " << size << std::endl;
#endif
  //calculate startIndex and endIndex according to
  //array of uint64_t
  //Each bit represents one Byte of data, accordingly
  //calculate startLoc and endLoc
  unsigned int startIndex = ((page_addr + 64) >> 6) -1; 
  unsigned int endIndex = ((page_addr+size+63) >> 6) -1;
  unsigned int startLoc = page_addr & ~(-1 << 6);
  unsigned int endLoc = (page_addr+size) & ~(-1 << 6);

#ifdef DEBUGMSG
  std::cout << __FUNCTION__ << " startIndex " << startIndex << " endIndex " << endIndex << std::endl;
  std::cout << __FUNCTION__ << " startLoc " << startLoc << " endLoc " << endLoc << std::endl;
#endif
  //Directly using the allocated memory pointer, mainly to avoid
  //iterating over whole vector
  //uint64_t* data = strb->data();

  //Calculation differs if STRB span is within a index or across index
  bool mem_matched = true;
  if(strb == NULL) {
    mem_matched = false;
  } else if(startIndex == endIndex) {
    if(endLoc) {
      if((uint64_t)(~(-1LL << endLoc) & (-1LL << startLoc)) != (uint64_t)((*strb)[startIndex] & (~(-1LL << endLoc) & (-1LL << startLoc)))) {
        if((uint64_t)((*strb)[startIndex]) == 0) {
          mem_matched = false;
        }
      }
    } else {
      if((uint64_t)(-1LL << startLoc) != (uint64_t)((*strb)[startIndex] & (-1LL << startLoc))) {
        //NOTES::Checking if the whole 64B of data is un-initialized in case
        //of 64B alligned transaction by Interconnect to DDR.
        if((uint64_t)((*strb)[startIndex]) == 0) {
          mem_matched = false;
        }
      }
    }
  } else {
    if((uint64_t)(-1LL << startLoc) != (uint64_t)((*strb)[startIndex] & (-1LL << startLoc))) {
      mem_matched = false;
#ifdef DEBUGMSG
      std::cout << __FUNCTION__ << " Mismatch in starting index:: " << startIndex << std::endl;
#endif
    }
    for(int i=startIndex+1; i < endIndex; i++) {
      if((uint64_t)(*strb)[i] != (uint64_t)(~0)) {
        mem_matched = false;
#ifdef DEBUGMSG
        std::cout << __FUNCTION__ << " Mismatch in Middle index:: " << i << std::endl;
#endif
      }
    }
    if(endLoc) {
      if ((uint64_t)(~(-1LL << endLoc))  != (uint64_t)((*strb)[endIndex] & ~(-1LL << endLoc))) {
        if((uint64_t)((*strb)[endIndex]) == 0) {
          mem_matched = false;
        }
#ifdef DEBUGMSG
        std::cout << __FUNCTION__ << " Mismatch in end index:: " << endIndex << std::endl;
#endif
      }

    } else {
      if ((uint64_t)(-1LL << endLoc)  != (uint64_t)((*strb)[endIndex] & (-1LL << endLoc))) {
        //NOTES::Checking if the whole 64B of data is un-initialized in case
        //of 64B alligned transaction by Interconnect to DDR.
        if((uint64_t)((*strb)[endIndex]) == 0) {
          mem_matched = false;
        }
      }
    }
  }

  if(mem_matched == false) {
#ifdef DEBUGMSG
    if(strb) {
      for (int i = startIndex; i<= endIndex; i++) {
        std::cout << "Index:: " << i << " Data:: " << (*strb)[i] << std::endl;
      }
    }
#endif
    std::stringstream errMsg ;
    uint64_t start_addr;
    char* var = get_variable_name(addr,start_addr);
    if(!var) {
      errMsg << "Kernel attempting to read an un-initialized memory location:: " << std::hex << "0x" << addr << std::dec;
    } else {
      int arg_offset = addr - start_addr;
      errMsg<< "Argument \"" << var <<"\" is trying to access un-initialized memory";
      errMsg << " while reading at offset " << std::hex << "0x" << arg_offset << "." <<
        std::dec;
      free(var);
    }
    emulation::msg_handler::report("10", errMsg.str().c_str(),emulation::CRITICAL_WARNING,emulation::MEDIUM);
  }
}

void ddr3_fmodel_base::init_fmodel()
{

}

void ddr3_fmodel_base::init_env()
{
  if(env_read)
    return;
  //By Default -- Enable
  enable_serialization = true;
  std::string enable_pr = get_env_config("enable_pr");
  if(!enable_pr.empty() && (strcmp(enable_pr.c_str(),"false") == 0)) {
    enable_serialization = false;
  }
  //By Default -- Enable
  enable_umr = true;
  std::string umr_env = get_env_config("enable_umr");
  if(!umr_env.empty() && (strcmp(umr_env.c_str(),"false")==0)) {
    enable_umr = false;
  }

  //By Default -- Enable
  enable_oob = false;
  std::string oob_env = get_env_config("enable_oob");
  if(!oob_env.empty() && (strcmp(oob_env.c_str(),"true") == 0)) {
    enable_oob = true;
  }
  env_read = true;
}


