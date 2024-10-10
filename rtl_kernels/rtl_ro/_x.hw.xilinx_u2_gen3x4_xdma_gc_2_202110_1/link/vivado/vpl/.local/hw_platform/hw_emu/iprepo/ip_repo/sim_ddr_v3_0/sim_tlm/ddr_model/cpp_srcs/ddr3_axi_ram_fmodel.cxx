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

#include "ddr3_axi_ram_fmodel.h"
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

ddr3_axi_ram_fmodel::~ ddr3_axi_ram_fmodel()
{

#ifdef DEBUGMSG
  cout<<"ddr3_axi_ram_fmodel() destructor fired calling serialize_ddr_memory"<<endl;
#endif
  serialize_ddr_memory();
  //******** TO DO :Enable Later*********//
  /*
     for(std::map<uint64_t,unsigned char*>::iterator it=pageCache.begin(); it != pageCache.end(); ++it) {
     delete [] it->second ;
     }
     */
}

ddr3_axi_ram_fmodel::ddr3_axi_ram_fmodel(std::string p_module_name): //Mode 0
  ddr3_fmodel_base(p_module_name)
{
#ifdef DEBUGMSG
  cout<<endl<<module_name<<endl;
#endif
}

unsigned int ddr3_axi_ram_fmodel::writeDevMem(uint64_t offset, void* src, unsigned int size)
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
  while(written_bytes < size){
    uint64_t src_offset = written_bytes;

    std::string sFileName("");
    unsigned char* page_ptr  = get_page(addr,sFileName);
    uint64_t       page_addr = addr & ~(-1 << ADDRBITS);

    unsigned char* dest_buf_ptr = page_ptr + page_addr;
    unsigned char* src_buf_ptr  = (unsigned char*)(src)      + src_offset;

    uint64_t remaining_bytes_to_write = size - written_bytes;
    uint64_t unaligned_bytes_in_addr = (addr & ~(-1 << ADDRBITS));
    uint64_t bytes_upto_next_alignment = (0x1 << ADDRBITS) - unaligned_bytes_in_addr;

    uint64_t buf_size = 0;
    if(bytes_upto_next_alignment > remaining_bytes_to_write)
    {
      buf_size = remaining_bytes_to_write;
    }else{
      buf_size = bytes_upto_next_alignment;
    }

    if(enable_umr)
      write_strb(addr,buf_size);

    memcpy(dest_buf_ptr,src_buf_ptr,buf_size);
    /*for(unsigned int i = 0; i < buf_size;i++){
      dest_buf_ptr[i] = src_buf_ptr[i];
      }*/

    written_bytes += buf_size;
    addr += buf_size;
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

unsigned int ddr3_axi_ram_fmodel::readDevMem(uint64_t offset, void* dest, unsigned int size,bool debug){
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
  while(read_bytes < size){
    uint64_t dest_offset = read_bytes;

    std::string sFileName("");
    unsigned char* page_ptr  = get_page(addr,sFileName);
    uint64_t       page_addr = addr & ~(-1 << ADDRBITS);

    unsigned char* src_buf_ptr = page_ptr + page_addr;
    unsigned char* dest_buf_ptr  = (unsigned char*)(dest)      + dest_offset;

    uint64_t remaining_bytes_to_read = size - read_bytes;
    uint64_t unaligned_bytes_in_addr = (addr & ~(-1 << ADDRBITS));
    uint64_t bytes_upto_next_alignment = (0x1 << ADDRBITS) - unaligned_bytes_in_addr;

    uint64_t buf_size = 0;
    if(bytes_upto_next_alignment > remaining_bytes_to_read)
    {
      buf_size = remaining_bytes_to_read;
    }else{
      buf_size = bytes_upto_next_alignment;
    }
    if(enable_umr && debug)
      check_strb(addr,buf_size);
    memcpy(dest_buf_ptr,src_buf_ptr,buf_size);
    /*for(uint64_t i = 0; i < buf_size;i++){
      dest_buf_ptr[i] = src_buf_ptr[i];
      }*/

    read_bytes += buf_size;
    addr += buf_size;
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
unsigned char* ddr3_axi_ram_fmodel::get_page(uint64_t offset, std::string& p2pFileName, uint64_t size) {
  uint64_t page_idx = offset >> ADDRBITS;
  std::string file_name = get_mem_file_name(page_idx);
  if(pageCache.size() > N_1MBARRAYS)
  {
    std::cerr << "Out of Memory. DDR model does not support this much of memory\n";
    exit(1);
  } else {
    FILE* pFile = NULL;
    if(pageCache.find(page_idx) != pageCache.end())
    {
      return pageCache[page_idx];
    } else if(enable_serialization && ((pFile = fopen(file_name.c_str(),"r")) != NULL)) {
      int fhandle = fileno(pFile);

      if (deserialize_msg->ParseFromFileDescriptor(fhandle) == false)
      {
        fclose(pFile);
        exit(1);
      }
      pageCache[page_idx] = new unsigned char[PAGESIZE];

      memcpy(pageCache[page_idx],deserialize_msg->data().c_str(),PAGESIZE);
      fclose(pFile);
      return pageCache[page_idx];
    } else {

      if(size != 0)
      {
        int fd = -1;
        p2pFileName = file_name + "_shared" ;
        if ((fd = open(p2pFileName.c_str(), O_CREAT | O_RDWR,  S_IRWXU | S_IRGRP | S_IROTH)) == -1) {
          printf("Error opening file.\n");
        }
        void* pageStartOSAddressVoid = mmap(0, size, PROT_READ |PROT_WRITE |PROT_EXEC , MAP_SHARED, fd, 0/*sysconf(_SC_PAGESIZE)*/);
        if(fd < 0)
        {
          munmap(pageStartOSAddressVoid,size);
          p2pFileName = "";
        }

        if(ftruncate(fd, size) < 0)
        {
          close(fd);
          munmap(pageStartOSAddressVoid,size);
          p2pFileName = "";
        }
        if(!p2pFileName.empty())
        {
          unsigned char* pagePtr = (unsigned char*)pageStartOSAddressVoid;
          while(size > 0)
          {
            pageCache[page_idx] = pagePtr;
            page_idx = page_idx + 1;
            pagePtr = pagePtr + PAGESIZE;
            if(size <= PAGESIZE)
              break;
            size = size - PAGESIZE;
            std::cout<<"page_idx is "<<page_idx<<std::endl;
            std::cout<<"size is "<<size<<std::endl;
          }
          return (unsigned char*)pageStartOSAddressVoid;
        }
      }

      pageCache[page_idx] = new unsigned char[PAGESIZE];
      //for(int i = 0; i < ONE_MB;i++){
      //  pageCache[page_idx][i] = 0x0;
      //}
      return pageCache[page_idx];
    }
  }
}


void ddr3_axi_ram_fmodel::serialize() {
  FILE *pFile;
  int fhandle;
  for (pageCacheItr=pageCache.begin(); pageCacheItr != pageCache.end(); ++pageCacheItr)
  {
    std::string file_name = get_mem_file_name(pageCacheItr->first);
    pFile = fopen(file_name.c_str(),"w+");
    if(!pFile)
      continue;
    fhandle = fileno(pFile);
    if(fhandle == -1)
    {
      fclose(pFile);
      exit(1);
    }

    serialize_msg->set_data(reinterpret_cast<const char*>(pageCacheItr->second),PAGESIZE);
    if(serialize_msg->SerializeToFileDescriptor(fhandle) == false)
    {
      fclose(pFile);
      exit(1);
    }
    fclose(pFile);
    if(enable_umr)
      serialize_strb(pageCacheItr->first);
  }
}

void ddr3_axi_ram_fmodel::serialize_ddr_memory() {
  if(enable_serialization)
    serialize();
}

bool ddr3_axi_ram_fmodel::createMMappedBuffer(uint64_t base_address, uint64_t size, std::string& buffer_filename) 
{
  return true;
}

bool ddr3_axi_ram_fmodel::freePage(uint64_t base_address) 
{
  return true;
}

bool ddr3_axi_ram_fmodel::copyBO(uint64_t offset, std::string dst_filename, uint64_t size, uint64_t src_offset, uint64_t dst_offset)
{
  return true;

}

bool ddr3_axi_ram_fmodel::importBO(uint64_t offset, std::string dst_filename,uint64_t size)
{
  return true;
}



