// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// (c) Copyright(C) 2013 - 2019 by Xilinx, Inc. All rights reserved.
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

#include <dlfcn.h>

#include "crts_ps.h"

bool debug_axi_mm = false;
int ps_main_complete = 0;
unsigned int cycle_timeout = 0; 
unsigned int ess_debug = 0; 
crts_ps* crts_ps_ptr = NULL;

extern "C" {
void Write32(uint64 Addr, uint Data) 
{
  //printf("CRTS_TRACE: %s\n", __FUNCTION__);
    crts_ps_ptr->b_write(Addr, Data);
}

uint Read32(uint64 Addr)
{
  //printf("CRTS_TRACE: %s\n", __FUNCTION__);
    return crts_ps_ptr->b_read(Addr);
}

void ess_WriteCmd(unsigned char Command, unsigned char ColId, unsigned char RowId, unsigned int CmdWd0, unsigned int CmdWd1, unsigned char *CmdStr)
{
  //ess_WriteCmd
}

} //extern 'C'

namespace {
template <typename ChildT>
ChildT* get_sc_child(sc_core::sc_object& obj, std::string name)
{
  for ( auto& pChild : obj.get_child_objects() ) {
    if ( pChild->basename() != name )
      continue;
    // this throws if wrong type
    ChildT& ccast = dynamic_cast<ChildT&>( *pChild );
    return &ccast;
  }
  return NULL;
}
}

crts_ps::crts_ps(sc_module_name name, 
        xsc::common_cpp::properties& _properties): sc_module(name)
        , ctrl_master("ctrl_master")
        , ctrl_channel_("ctrl_channel")
{
    M0_AXI_rd_socket = new xtlm::xtlm_aximm_initiator_socket("init_rd_socket", 128);
    M0_AXI_wr_socket = new xtlm::xtlm_aximm_initiator_socket("init_wr_socket", 128);

    mem_manager = new xtlm::xtlm_aximm_mem_manager(this);
    load_ps_ip();

    //Bind IPBlock ports...
    ctrl_master(ctrl_channel_.master_export);
    ip_lib->clk(m0_axi_aclk);
    ip_lib->rst(m0_axi_aresetn);
    ip_lib->ctrl_port(ctrl_channel_.slave_export);
        
    crts_ps_ptr = this;

    xtlm::xtlm_aximm_initiator_socket* rd_socket = ::get_sc_child< xtlm::xtlm_aximm_initiator_socket>( *ip_lib, "ps_axi_rd" );
    xtlm::xtlm_aximm_initiator_socket* wr_socket = ::get_sc_child< xtlm::xtlm_aximm_initiator_socket>( *ip_lib, "ps_axi_wr" );

    if((rd_socket != NULL) && (wr_socket != NULL)) {
        rd_socket->bind(*M0_AXI_rd_socket);
        wr_socket->bind(*M0_AXI_wr_socket);
    }
    else {
        rd_util = new xtlm::xtlm_aximm_initiator_rd_socket_util("util_rd_socket", xtlm::aximm::TRANSACTION, 128);
        wr_util = new xtlm::xtlm_aximm_initiator_wr_socket_util("util_wr_socket", xtlm::aximm::TRANSACTION, 128);

        rd_util->rd_socket.bind(*M0_AXI_rd_socket);
        wr_util->wr_socket.bind(*M0_AXI_wr_socket);

        SC_THREAD(response_process);
        sensitive<<wr_util->resp_available;
        sensitive<<rd_util->data_available;
    }
};

crts_ps::~crts_ps()
{
   delete mem_manager;
}

void crts_ps::load_ps_ip()
{
    //Get the ps shared library path
    const std::string lib_path = "CRTS_PS_LIB_PATH";
    char * ps_lib_path = getenv(lib_path.c_str());

    void* handle = dlopen(ps_lib_path, RTLD_GLOBAL | RTLD_LAZY); 
    if (!handle) {
        SC_REPORT_ERROR("Cannot load crts library ", dlerror());
        exit(EXIT_FAILURE);
    }

    dlerror(); //reset errors
    create_ip_t *create_ip = (create_ip_t*)dlsym(handle,"create_ip");
    const char* dlsym_error = dlerror();
    if (dlsym_error) {
        SC_REPORT_ERROR("Cannot load symbol create_ip: ", dlsym_error);
        exit(EXIT_FAILURE);
    }
    char** argvect = NULL; //&(cfg->arguments[0]);
    ip_lib = create_ip("crts_ps", 0, argvect);
    destroy_ip = (destroy_ip_t*) dlsym(handle, "destroy_ip");
    dlsym_error = dlerror();
    if (dlsym_error) {
        SC_REPORT_ERROR("Cannot load symbol destroy_ip: ", dlsym_error);
        exit(EXIT_FAILURE);
    }
}

void crts_ps::b_write(uint64 Addr, uint Data)
{
    xtlm::aximm_payload trans;
    trans.set_address(Addr);
    trans.set_data_ptr((unsigned char*)(&Data), 4);
    trans.set_command(xtlm::XTLM_WRITE_COMMAND);
        
    sc_time delay = SC_ZERO_TIME;
    wr_util->b_transport(trans, delay);
}

uint crts_ps::b_read(uint64 Addr)
{
    uint data = 0;
    xtlm::aximm_payload trans;
    trans.set_address(Addr);
    trans.set_data_ptr((unsigned char*)(&data), 4);
    trans.set_command(xtlm::XTLM_READ_COMMAND);
        
    sc_time delay = SC_ZERO_TIME;
    rd_util->b_transport(trans, delay);

    return data;
}

void crts_ps::write32(uint64 Addr, uint Data)
{
    if(m0_axi_aresetn.read() == false) {
        wait(m0_axi_aresetn.posedge_event());
        for(int i = 0; i < 8; i++) {
            wait(m0_axi_aclk.posedge_event());
        }
    }
    //printf("Write Addr 0x%x Data = 0x%x\n", Addr, Data);
    xtlm::aximm_payload* trans = mem_manager->get_payload();
    trans->acquire();
    set_payload_attr(trans);
    trans->set_command(xtlm::XTLM_WRITE_COMMAND);

    trans->set_address(Addr);
    //sc_time delay = SC_ZERO_TIME;
    sc_time delay = sc_time(1, SC_PS);
    memcpy(trans->get_data_ptr(), &(Data), 4);
    wr_util->send_transaction(*trans, delay);

    wait(res_cmplt);
}

uint crts_ps::read32(uint64 Addr)
{
    if(m0_axi_aresetn.read() == false) {
        wait(m0_axi_aresetn.posedge_event());
        for(int i = 0; i < 8; i++) {
            wait(m0_axi_aclk.posedge_event());
        }
    }
    //printf("Read Addr 0x:%x\n", Addr);
    xtlm::aximm_payload* trans = mem_manager->get_payload();
    trans->acquire();
    set_payload_attr(trans);
    trans->set_command(xtlm::XTLM_READ_COMMAND);

    trans->set_address(Addr);
    sc_time delay = SC_ZERO_TIME;
                
    rd_util->send_transaction(*trans, delay);

    wait(res_cmplt);
    uint data = 0;
    data = *(uint*)(trans->get_data_ptr());
    trans->release();
    return data;
}

void crts_ps::response_process()
{
    while (true)
    {
        wait();//for response

        xtlm::aximm_payload* trans;
        if(rd_util->is_data_available())
        {
            trans = rd_util->get_data();
            res_cmplt.notify(SC_ZERO_TIME);
        }
        if(wr_util->is_resp_available())
        {
            trans = wr_util->get_resp();
            trans->release();

            res_cmplt.notify(SC_ZERO_TIME);
        }
    }
}

void crts_ps::set_payload_attr(xtlm::aximm_payload* trans) 
{
    trans->create_and_get_data_ptr(4);
    unsigned char* byte_en_ptr = trans->create_and_get_byte_enable_ptr(4);
    for(int i = 0; i < 4; i++) {
        byte_en_ptr[i] = 0xff;
    }

    trans->set_axi_id(0);
    trans->set_burst_length(1);
    trans->set_burst_size(4); //32 bit
    trans->set_burst_type(1); //INCR
    trans->set_data_length(4); 

    //optional extensions
    trans->set_cache(0);
    trans->set_prot(0);
    trans->set_qos(0);
    trans->set_region(0);

    unsigned char *aruser = new unsigned char;
    //unsigned char *ruser = new unsigned char;
    unsigned char *awuser = new unsigned char;
    unsigned char *wuser = new unsigned char;

    trans->set_aruser_ptr(aruser,1);
    //trans->set_ruser_ptr(ruser,1);
    trans->set_awuser_ptr(awuser,1);
    trans->set_wuser_ptr(wuser,1);
}



