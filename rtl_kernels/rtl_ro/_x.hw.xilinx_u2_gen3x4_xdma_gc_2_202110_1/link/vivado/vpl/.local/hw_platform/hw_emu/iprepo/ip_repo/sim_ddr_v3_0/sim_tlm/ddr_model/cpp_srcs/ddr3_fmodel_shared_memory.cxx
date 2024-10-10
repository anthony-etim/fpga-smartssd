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

#include "ddr3_fmodel_shared_memory.h"
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

std::map<std::string, std::tuple<uint64_t, void*, int> > ddr3_fmodel_shared_memory::mFileFdMap;

ddr3_fmodel_shared_memory::ddr3_fmodel_shared_memory(std::string p_module_name): //Mode 0
  ddr3_fmodel_base(p_module_name)
{
  mMemoryMessage = new ddr_mem_msg;

#ifdef DEBUGMSG
  cout<<endl<<module_name<<endl;
#endif
}

void ddr3_fmodel_shared_memory::reset_fmodel()
{
  auto pageIt=mPageCache.begin();
  auto pageEnd=mPageCache.end();
  while(pageIt != pageEnd)
  {
    uint64_t offset = (*pageIt).first;

    auto itr = mOffsetFileMap.find(offset);
    int fd = -1;
    if(itr != mOffsetFileMap.end())
    {
      std::string sFileName = (*itr).second;
      auto itr2 = mFileFdMap.find(sFileName);
      if(itr2 != mFileFdMap.end())
      {
        fd = std::get<0>((*itr2).second);
        void* pPtr = std::get<1>((*itr2).second);
        int size = std::get<2>((*itr2).second);
        munmap(pPtr,size);
        mFileFdMap.erase(itr2);
        close(fd);
      }
    }
    pageIt++;
  }

}
ddr3_fmodel_shared_memory::~ ddr3_fmodel_shared_memory()
{
  serialize_ddr_memory();
 
  delete mMemoryMessage;
  mMemoryMessage = NULL;
}

unsigned int ddr3_fmodel_shared_memory::writeDevMem(uint64_t offset, void* src, unsigned int size)
{

#ifdef DEBUGMSG
  cout<<endl<<module_name<<" write offset:"<<std::hex<<offset<<endl;
#endif 
  if(!isStandalone)
  {
    init_env();
  }
  if(enable_oob) {
    uint64_t valid_addr;
    if(!is_valid_address_range(offset,size)) {
      std::stringstream errMsg;
      char* var = get_variable_name(offset,valid_addr);
      if(var) {
        int arg_offset = offset - valid_addr;
        errMsg << "Out of bound access while writing ";
        errMsg << "to argument \"" << var << "\" at offset " << std::hex << "0x" << arg_offset << std::dec;
        free(var);
      } else {
        errMsg << "Kernel attempting to write to memory which was never allocated (" << std::hex << "0x" << offset << ")" << std::dec ;
      }
      emulation::msg_handler::report("11", errMsg.str().c_str(),emulation::CRITICAL_WARNING,emulation::MEDIUM);

    }
  }
  uint64_t written_bytes = 0;
  uint64_t addr = offset;
  while(written_bytes < size)
  {
    uint64_t src_offset = written_bytes;

    std::string p2pFileName("");
    unsigned char* page_ptr  = get_page(addr,p2pFileName);
    uint64_t ddrAddress      = getBaseDdrAddress(addr);
    if(!page_ptr)
    {
      std::stringstream errMsg;
      errMsg << "Kernel attempting to write to memory which was never allocated (" << std::hex << "0x" << offset << ")" << std::dec ;
      return 0;
    }

    unsigned char* dest_buf_ptr = page_ptr + offset - ddrAddress;
    unsigned char* src_buf_ptr  = (unsigned char*)(src)      + src_offset;
   
    uint64_t remaining_bytes_to_write = size - written_bytes;
    //memcpy(dest_buf_ptr,src_buf_ptr,buf_size);
    for(unsigned int i = 0; i < remaining_bytes_to_write ;i++)
    {
      dest_buf_ptr[i] = src_buf_ptr[i];
    }

    written_bytes += remaining_bytes_to_write;
    addr += remaining_bytes_to_write;
  }

#ifdef DEBUGMSG
  std::cout << endl;
  std::cout << "Write Operation size : " << size << endl;
  for(int i = 0; i < size;i++){
    cout << std::hex << (unsigned int)(((unsigned char*)src)[i]) << " ";
  }
  std::cout << endl;
  cout << "Write : " ;
  cout << "Offset --> " << offset << endl;
#endif    

  return 0;
}

unsigned int ddr3_fmodel_shared_memory::readDevMem(uint64_t offset, void* dest, unsigned int size,bool debug)
{
#ifdef DEBUGMSG
  cout<<endl<<module_name<<" read offset:"<<std::hex<< (uint64_t)offset<<endl;
#endif 
  if(!isStandalone)
  {
    init_env();
  }
  if(enable_oob && debug) {
    uint64_t valid_addr;
    if(!is_valid_address_range(offset,size)) {
      std::stringstream errMsg;
      char* var = get_variable_name(offset,valid_addr);
      if(var) {
        int arg_offset = offset - valid_addr;
        errMsg << "Out of bound access while reading ";
        errMsg << "from argument \"" << var << "\" at offset " << std::hex <<
          "0x" << arg_offset << std::dec;
        free(var);
      } else {
        errMsg << "Kernel attempting to read to memory which was never allocated (" << std::hex << "0x" << offset <<")" <<std::dec;
      }
      emulation::msg_handler::report("12", errMsg.str().c_str(),emulation::CRITICAL_WARNING,emulation::MEDIUM);
    }
  }

  uint64_t read_bytes = 0;
  uint64_t addr = offset;
  while(read_bytes < size)
  {
    uint64_t dest_offset = read_bytes;

    std::string p2pFileName("");
    unsigned char* page_ptr  = get_page(addr,p2pFileName);
    uint64_t ddrAddress      = getBaseDdrAddress(addr);

    if(!page_ptr)
    {
      std::stringstream errMsg;
      errMsg << "Kernel attempting to read to memory which was never allocated (" << std::hex << "0x" << offset <<")" <<std::dec;
      emulation::msg_handler::report("12", errMsg.str().c_str(),emulation::CRITICAL_WARNING,emulation::MEDIUM);
      return 0;
    }

    unsigned char* src_buf_ptr = page_ptr + (offset - ddrAddress);
    unsigned char* dest_buf_ptr  = (unsigned char*)(dest)      + dest_offset;

    uint64_t remaining_bytes_to_read = size - read_bytes;

    for(uint64_t i = 0; i < remaining_bytes_to_read;i++)
    {
      dest_buf_ptr[i] = src_buf_ptr[i];
    }

    read_bytes += remaining_bytes_to_read;
    addr += remaining_bytes_to_read;
  }

#ifdef DEBUGMSG
  std::cout << endl;
  std::cout << "Read Operation size : " << size << endl;
  for(unsigned int i = 0; i < size;i++){
    cout << std::hex << (unsigned int)(((unsigned char*)dest)[i]) << " ";
  }
  std::cout << endl;
  cout << "Read : " ;
  cout << "Offset --> " << offset << endl;
#endif    

  return 0;
}

unsigned char* ddr3_fmodel_shared_memory::get_page(uint64_t offset, std::string& p2pFileName, uint64_t size) 
{
  auto pageIt=mPageCache.begin();
  auto pageEnd=mPageCache.end();
  while(pageIt != pageEnd)
  {
    uint64_t startAddress = (*pageIt).first;
    std::pair<unsigned char*, uint64_t> addressSizePair = (*pageIt).second;
    unsigned char* pageStartOSAddress = addressSizePair.first;
    uint64_t pageSize = addressSizePair.second;
    if(offset >= startAddress && offset < startAddress + pageSize)
    {
      return pageStartOSAddress;
    }
    pageIt++;
  }
  //in partial reconfiguration case, we should read the file which is stored.
  
  return NULL;

}

uint64_t ddr3_fmodel_shared_memory::getBaseDdrAddress(uint64_t offset) 
{
  auto pageIt=mPageCache.begin();
  auto pageEnd=mPageCache.end();
  while(pageIt != pageEnd)
  {
    uint64_t startAddress = (*pageIt).first;
    std::pair<unsigned char*, uint64_t> addressSizePair = (*pageIt).second;
    uint64_t pageSize = addressSizePair.second;
    if(offset >= startAddress && offset < startAddress + pageSize)
    {
      return startAddress;
    }
    pageIt++;
  }

  return 0;
}


bool ddr3_fmodel_shared_memory::copyBO(uint64_t offset ,std::string dst_filename, uint64_t size, uint64_t src_offset, uint64_t dst_offset)
{
  uint64_t read_bytes = 0;
  uint64_t addr = offset;
  std::string p2pFileName("");
  unsigned char* page_ptr  = get_page(addr,p2pFileName);
  uint64_t ddrAddress      = getBaseDdrAddress(addr);
  unsigned char* src_buf_ptr = (unsigned char*)(page_ptr + (offset - ddrAddress) + src_offset);
  auto itr = mFileFdMap.find(dst_filename);
  if(itr != mFileFdMap.end())
  {
    int dst_fd = std::get<0>((*itr).second); 
    if(lseek(dst_fd ,dst_offset,SEEK_CUR) < 0)
      return false;
    int bytes_written = write(dst_fd, src_buf_ptr , size/*strlen(src_buf_ptr)*/);
    if(bytes_written < 0)
    {
      std::cout<<"Failed to write into file "<<dst_fd<<std::endl;
    }
    else
    {
      std::cout<<"bytes_written is "<<bytes_written<<" is successful "<<std::endl;
    }
 
  }
  return true;
}

bool ddr3_fmodel_shared_memory::importBO(uint64_t offset, std::string sFileName, uint64_t size)
{
  int fd = -1;
  if ((fd = open(sFileName.c_str(), O_CREAT | O_RDWR,  S_IRWXU | S_IRGRP | S_IROTH)) == -1) {
    printf("Error opening file.\n");
  };
  if( fd < 0)
    return false;
  void* pageStartOSAddressVoid = mmap(0, size , PROT_READ |PROT_WRITE |PROT_EXEC , MAP_SHARED, fd, 0/*sysconf(_SC_PAGESIZE)*/);
  if(ftruncate(fd, size) < 0)
  {
    close(fd);
    munmap(pageStartOSAddressVoid,size);
    return false;
  }
  mFileFdMap[sFileName] = std::make_tuple(fd,pageStartOSAddressVoid,size);
  mOffsetFileMap[offset] = sFileName;
}

 //create a page at offset. Return if already exist
std::string ddr3_fmodel_shared_memory::createPage(uint64_t offset, uint64_t size, bool p2p) 
{
  std::string sFileName("");
  int fd = -1;
  auto pageIt=mPageCache.begin();
  auto pageEnd=mPageCache.end();
  while(pageIt != pageEnd)
  {
    uint64_t startAddress = (*pageIt).first;
    std::pair<unsigned char*, uint64_t> addressSizePair = (*pageIt).second;
    uint64_t pageSize = addressSizePair.second;
    if(offset >= startAddress && offset < startAddress + pageSize)
    {
      freePage(offset);
      //new offset is conflicting old addresses
      //return "";
    }
    pageIt++;
  }

  void* pageStartOSAddressVoid = NULL;
  // TODO:  DDR_BUFFER_ALIGNMENT   0x1000  (4096) this is declared in runtime shim. 
  //  below variable is based on it.
  size_t alignmentForBuffer =  4096;  // previously sizeof(double) * 16

  if(!p2p)
  {
    if (posix_memalign(&pageStartOSAddressVoid,alignmentForBuffer, size)) 
    {
      pageStartOSAddressVoid = NULL;
    }
  }
  else
  {
    std::stringstream ssFileName;
    sFileName = get_mem_file_name(offset);
    ssFileName <<sFileName<<"_shared";
    sFileName = ssFileName.str();//config::getInstance()->getDeviceDirectory() + "/" + ssFileName.str(); 
    if ((fd = open(sFileName.c_str(), O_CREAT | O_RDWR,  S_IRWXU | S_IRGRP | S_IROTH)) == -1) {
      printf("Error opening file.\n");
    }
    pageStartOSAddressVoid = mmap(0, size, PROT_READ |PROT_WRITE |PROT_EXEC , MAP_SHARED, fd, 0/*sysconf(_SC_PAGESIZE)*/);
    if(fd < 0)
    {
      munmap(pageStartOSAddressVoid,size);
      return sFileName;
    }

    if(ftruncate(fd, size) < 0)
    {
      close(fd);
      munmap(pageStartOSAddressVoid,size);
      return sFileName;
    }
  }
  if(!pageStartOSAddressVoid)
  {
    close(fd);
    return sFileName;
  }

  if(!sFileName.empty())
  {
    mFileFdMap[sFileName] = std::make_tuple(fd,pageStartOSAddressVoid,size);
    mOffsetFileMap[offset] = sFileName;
  }

  unsigned char* pageStartOSAddress= (unsigned char*) pageStartOSAddressVoid;
  mPageCache[offset] = std::make_pair(pageStartOSAddress,size);
  return sFileName;
}
//free page at offset. Return if already exist
bool ddr3_fmodel_shared_memory::freePage(uint64_t offset) 
{
  bool mMappedBuffer = false;
  auto itr = mOffsetFileMap.find(offset);
  int fd = -1;

  if(itr != mOffsetFileMap.end())
  {
    mMappedBuffer = true;
    std::string sFileName = (*itr).second;
    auto itr2 = mFileFdMap.find(sFileName);
    if(itr2 != mFileFdMap.end())
    {
      fd = std::get<0>((*itr2).second);
      void* pPtr = std::get<1>((*itr2).second);
      int size = std::get<2>((*itr2).second);
      munmap(pPtr,size);
      mFileFdMap.erase(itr2);
    }
  }
  auto pageIt = mPageCache.find(offset);
  if(pageIt != mPageCache.end())
  {
    std::pair<unsigned char*, uint64_t> addressSizePair = (*pageIt).second;
    unsigned char* osAddress = addressSizePair.first;
    uint64_t size = addressSizePair.second;
    if(osAddress)
    {
      if(!mMappedBuffer)
        free((void *) osAddress);
      else
      {
        munmap(osAddress,size);
        if(fd != -1)
        {
          close(fd);
        }
      }
    }
    mPageCache.erase(pageIt);
  }

  return true;
}

void ddr3_fmodel_shared_memory::serialize() 
{
  FILE *pFile;
  int fhandle;
  auto pageIt=mPageCache.begin();
  auto pageEnd=mPageCache.end();
  while(pageIt != pageEnd)
  {
    uint64_t startAddress = (*pageIt).first;
    std::pair<unsigned char*, uint64_t> addressSizePair = (*pageIt).second;
    unsigned char* pageStartOSAddress = addressSizePair.first;
    uint64_t pageSize = addressSizePair.second;

    unsigned int messageSize = 0x1000000;;
    unsigned int c_size = messageSize;
    unsigned int processed_bytes = 0;
    while(processed_bytes < pageSize)
    {
      if((pageSize - processed_bytes) < messageSize)
      {
        c_size = pageSize - processed_bytes;
      }
      else
      {
        c_size = messageSize;
      }
      std::string file_name = get_mem_file_name(startAddress + processed_bytes);
      pFile = fopen(file_name.c_str(),"w+");
      if(!pFile)
      {
        pageIt++;
        continue;
      }
      fhandle = fileno(pFile);
      if(fhandle == -1)
        exit(1);
      mMemoryMessage->set_data(reinterpret_cast<const char*>(pageStartOSAddress+processed_bytes),c_size);
      mMemoryMessage->set_size(c_size);
      mMemoryMessage->set_fullsize(pageSize);
      if(mMemoryMessage->SerializeToFileDescriptor(fhandle) == false)
      {
        fclose(pFile);
        exit(1);
      }
      fclose(pFile);
      processed_bytes += c_size;
    }
    pageIt++;
  }
}

void ddr3_fmodel_shared_memory::serialize_ddr_memory() 
{
}

bool ddr3_fmodel_shared_memory::createMMappedBuffer(uint64_t base_address, uint64_t size, std::string& buffer_filename) 
{
  buffer_filename = createPage(base_address,size,true);
  return true;
}

