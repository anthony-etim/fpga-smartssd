// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "sim_embedded_scheduler_sw_imp.h"
#include "sim_cmdq_model.h"
#include <dlfcn.h>


void microblaze_enable_interrupts() {
  sim_embedded_scheduler_sw_imp* sch=sim_embedded_scheduler_sw_imp::getSchedularPtr();
  if(sch!=NULL) sch->setInterruptEnable(true);
}
void microblaze_disable_interrupts() {
  sim_embedded_scheduler_sw_imp* sch=sim_embedded_scheduler_sw_imp::getSchedularPtr();
  if(sch!=NULL) sch->setInterruptEnable(false);
}

void reg_access_wait() {
    if(sim_embedded_scheduler_sw_imp::getSchedularPtr()!=nullptr) {
        sim_embedded_scheduler_sw_imp* sch=sim_embedded_scheduler_sw_imp::getSchedularPtr();
        sc_core::wait(sch->maxi_lite_mb_aclk.posedge_event());
    } else {
        sc_time t(1,SC_NS);
        sc_core::wait(t);
    }
}

//Embedded Scheduler function override
//namespace ert {

/**
 * Utility to read a 32 bit value from any axi-lite peripheral
 */
 uint32_t read_reg(uint32_t addr) {
  if(sim_embedded_scheduler_sw_imp::getSchedularPtr()!=nullptr) {
    sim_embedded_scheduler_sw_imp* sch=sim_embedded_scheduler_sw_imp::getSchedularPtr();
    return sch->readRegister(addr);
  }
  return 0;
}
/**
 * Utility to write a 32 bit value from any axi-lite peripheral
 */
 void write_reg(uint32_t addr, uint32_t val) {
  if(sim_embedded_scheduler_sw_imp::getSchedularPtr()!=nullptr) {
    sim_embedded_scheduler_sw_imp* sch=sim_embedded_scheduler_sw_imp::getSchedularPtr();
    sch->writeRegister(addr,val);
  }
}
//}


sim_embedded_scheduler_sw_imp* sim_embedded_scheduler_sw_imp::m_schd_imp=nullptr;

sim_embedded_scheduler_sw_imp::sim_embedded_scheduler_sw_imp(const sc_core::sc_module_name& name, xsc::common_cpp::properties& properties):sc_module(name),
    maxi_lite_mb_aclk("maxi_lite_mb_aclk"),
    saxi_lite_cq_aresetn("saxi_lite_cq_aresetn"),
    saxi_lite_cq_aclk("saxi_lite_cq_aclk"),
    maxi_lite_mb_aresetn("maxi_lite_mb_aresetn")
{
  maxi_lite_mb_read_skt = new  xtlm::xtlm_aximm_initiator_socket("maxi_lite_mb_read_skt",32);
  maxi_lite_mb_write_skt= new  xtlm::xtlm_aximm_initiator_socket("maxi_lite_mb_write_skt",32);

  saxi_lite_cq_read_skt = new  xtlm::xtlm_aximm_target_socket("saxi_lite_cq_read_skt",32);
  saxi_lite_cq_write_skt = new  xtlm::xtlm_aximm_target_socket("saxi_lite_cq_write_skt",32);

  maxi_lite_mb_read_skt_util = new  xtlm::xtlm_aximm_initiator_rd_socket_util("maxi_lite_mb_read_skt_util",xtlm::aximm::granularity::TRANSACTION,32);
  maxi_lite_mb_write_skt_util= new  xtlm::xtlm_aximm_initiator_wr_socket_util("maxi_lite_mb_write_skt_util",xtlm::aximm::granularity::TRANSACTION,32);

  m_mem_manager = new xtlm::xtlm_aximm_mem_manager();
  m_cmdq = new sim_cmdq_model("m_cmdq");

  //Connections
  maxi_lite_mb_read_skt_util->rd_socket.bind(*maxi_lite_mb_read_skt);
  maxi_lite_mb_write_skt_util->wr_socket.bind(*maxi_lite_mb_write_skt);

  saxi_lite_cq_read_skt->bind(*(m_cmdq->saxi_cq_read_skt));
  saxi_lite_cq_write_skt->bind(*(m_cmdq->saxi_cq_write_skt));
  m_interrupt_enable=false;

  m_rw_active=false;

  //Main Scheduler thread
  SC_THREAD(threadMainLoop);


  SC_THREAD(threadInterruptHandler);
  m_schd_imp=this;

  const std::string xrt_env = "XILINX_XRT";
  std::string xrt_path = getenv(xrt_env.c_str());
  std::string scheduler_lib_path = xrt_path + "/lib/libsched_em.so";
  
  void* handle = dlopen(scheduler_lib_path.c_str(), RTLD_GLOBAL | RTLD_LAZY); 
  if (!handle) {
      SC_REPORT_ERROR("Cannot load schedular library ", dlerror());
  }

  dlerror(); //reset errors
  scheduler_loop = (function_pointer_t*)dlsym(handle,"scheduler_loop");
  const char* dlsym_error = dlerror();
  if (dlsym_error) {
      SC_REPORT_ERROR("Cannot load symbol scheduler_loop: ", dlsym_error);
  }

  cu_interrupt_handler = (function_pointer_t*)dlsym(handle,"cu_interrupt_handler");
  dlsym_error = dlerror();
  if (dlsym_error) {
      SC_REPORT_ERROR("Cannot load symbol cu_interrupt_handler: ", dlsym_error);
  }
}

sim_embedded_scheduler_sw_imp::~sim_embedded_scheduler_sw_imp() {
  delete m_mem_manager;
  delete maxi_lite_mb_read_skt;
  delete maxi_lite_mb_write_skt;
  delete saxi_lite_cq_read_skt;
  delete saxi_lite_cq_write_skt;
  delete maxi_lite_mb_read_skt_util;
  delete maxi_lite_mb_write_skt_util;
}

uint32_t sim_embedded_scheduler_sw_imp::readRegister(uint32_t addr) {
  while(m_rw_active) wait(m_rw_event);
  m_rw_active=true;
  xtlm::aximm_payload* trans = getPayloadObject();
  trans->set_address(addr);
  unsigned char* byte_en_ptr = trans->get_byte_enable_ptr();
  byte_en_ptr[0] = 0xff;
  byte_en_ptr[1] = 0xff;
  byte_en_ptr[2] = 0xff;
  byte_en_ptr[3] = 0xff;
  trans->set_command(xtlm::XTLM_READ_COMMAND);
  //std::cout<<"ES READ SENT " <<hex<<trans->get_address()<<std::endl;
  while(!maxi_lite_mb_read_skt_util->is_slave_ready()) {
	  wait(maxi_lite_mb_read_skt_util->transaction_sampled);
  }
  sc_time delay = SC_ZERO_TIME;
  maxi_lite_mb_read_skt_util->send_transaction(*trans,delay);
  wait(maxi_lite_mb_read_skt_util->data_available);
  trans=maxi_lite_mb_read_skt_util->get_data();
  uint32_t retValue=*(uint32_t*)(trans->get_data_ptr());
  //std::cout<<"ES READ DONE " <<hex<<trans->get_address()<<" DATA "<<*(uint32_t*)(trans->get_data_ptr())<<std::endl;
  if(trans->get_response_status()==xtlm::XTLM_OK_RESPONSE) {
  }
  trans->release();
  m_rw_active=false;
  m_rw_event.notify();
  return retValue;
}

void sim_embedded_scheduler_sw_imp::writeRegister(uint32_t addr, uint32_t value) {
  while(m_rw_active) wait(m_rw_event);
  m_rw_active=true;
  xtlm::aximm_payload* trans = getPayloadObject();
  trans->set_address(addr);
  unsigned char* data_ptr = trans->get_data_ptr();
  memcpy(data_ptr, (unsigned char*) (&value), 4);
  unsigned char* byte_en_ptr = trans->get_byte_enable_ptr();
  byte_en_ptr[0] = 0xff;
  byte_en_ptr[1] = 0xff;
  byte_en_ptr[2] = 0xff;
  byte_en_ptr[3] = 0xff;
  trans->set_command(xtlm::XTLM_WRITE_COMMAND);
  sc_time delay = SC_ZERO_TIME;
  //std::cout<<"ES WRITE REQS " <<hex<<trans->get_address()<<std::endl;
  while(!maxi_lite_mb_write_skt_util->is_slave_ready()) {
    wait(maxi_lite_mb_write_skt_util->transaction_sampled);
  }
  maxi_lite_mb_write_skt_util->send_transaction(*trans,delay);
  wait(maxi_lite_mb_write_skt_util->resp_available);
  trans=maxi_lite_mb_write_skt_util->get_resp();
  //std::cout<<"ES WRITE DONE " <<hex<<trans->get_address()<< " DATA "<<value<<std::endl;
  if(trans->get_response_status()==xtlm::XTLM_OK_RESPONSE) {
  }
  trans->release();
  m_rw_event.notify();
  m_rw_active=false;
}

sim_embedded_scheduler_sw_imp* sim_embedded_scheduler_sw_imp::getSchedularPtr() {
  return m_schd_imp;
}

void sim_embedded_scheduler_sw_imp::threadMainLoop() {
  while(maxi_lite_mb_aresetn.read()!=1) {
    wait(maxi_lite_mb_aresetn.default_event());
  }
  (*scheduler_loop)();
}

void sim_embedded_scheduler_sw_imp::threadInterruptHandler() {
	while (1) {
	wait(maxi_lite_mb_aclk.posedge_event());
		if(this->isInterruptEnable() && irq.read()==1)  (*cu_interrupt_handler)();
	}
}

xtlm::aximm_payload* sim_embedded_scheduler_sw_imp::getPayloadObject() {
  xtlm::aximm_payload* trans = m_mem_manager->get_payload();
  trans->acquire();
  trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
  trans->create_and_get_data_ptr(16); //16 is the size of Data Pointer
  trans->create_and_get_byte_enable_ptr(16);
  trans->set_axi_id(0);
  trans->set_burst_length(1);
  trans->set_burst_size(4);
  trans->set_burst_type(1);

  //optional extensions
  trans->set_cache(0);
  trans->set_prot(0);
  trans->set_qos(0);
  trans->set_region(0);
  return trans;
}

bool sim_embedded_scheduler_sw_imp::isInterruptEnable() const {
  return m_interrupt_enable;
}

void sim_embedded_scheduler_sw_imp::setInterruptEnable(bool interruptEnable) {
    m_interrupt_enable = interruptEnable;
}


