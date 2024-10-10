// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "sim_embedded_scheduler_sw.h"
#include "sim_embedded_scheduler_sw_imp.h"

sim_embedded_scheduler_sw::sim_embedded_scheduler_sw(const sc_core::sc_module_name &name,xsc::common_cpp::properties& properties) : sc_module(name) ,
maxi_lite_mb_aclk("maxi_lite_mb_aclk"),
saxi_lite_cq_aresetn("saxi_lite_cq_aresetn"),
saxi_lite_cq_aclk("saxi_lite_cq_aclk"),
maxi_lite_mb_aresetn("maxi_lite_mb_aresetn")
{
  if(sim_embedded_scheduler_sw_imp::getSchedularPtr()!=nullptr) {
    exit(1);
  }

  m_imp=new sim_embedded_scheduler_sw_imp("sim_embedded_scheduler_sw_imp", properties);
  maxi_lite_mb_rd_socket = new  xtlm::xtlm_aximm_initiator_socket("maxi_lite_mb_read_skt",32);
  maxi_lite_mb_wr_socket= new  xtlm::xtlm_aximm_initiator_socket("maxi_lite_mb_write_skt",32);

  saxi_lite_cq_rd_socket = new  xtlm::xtlm_aximm_target_socket("saxi_cq_read_skt",32);
  saxi_lite_cq_wr_socket = new  xtlm::xtlm_aximm_target_socket("saxi_cq_write_skt",32);

  saxi_lite_cq_rd_socket->bind(*(m_imp->saxi_lite_cq_read_skt));
  saxi_lite_cq_wr_socket->bind(*(m_imp->saxi_lite_cq_write_skt));

  m_imp->maxi_lite_mb_read_skt->bind(*(maxi_lite_mb_rd_socket));
  m_imp->maxi_lite_mb_write_skt->bind(*(maxi_lite_mb_wr_socket));

  m_imp->irq(irq);
  m_imp->maxi_lite_mb_aclk(maxi_lite_mb_aclk);
  m_imp->saxi_lite_cq_aresetn(saxi_lite_cq_aresetn);
  m_imp->saxi_lite_cq_aclk(saxi_lite_cq_aclk);
  m_imp->maxi_lite_mb_aresetn(maxi_lite_mb_aresetn);
}

sim_embedded_scheduler_sw::~sim_embedded_scheduler_sw() {
  delete maxi_lite_mb_rd_socket;
  delete maxi_lite_mb_wr_socket;
  delete saxi_lite_cq_rd_socket;
  delete saxi_lite_cq_wr_socket;
}


