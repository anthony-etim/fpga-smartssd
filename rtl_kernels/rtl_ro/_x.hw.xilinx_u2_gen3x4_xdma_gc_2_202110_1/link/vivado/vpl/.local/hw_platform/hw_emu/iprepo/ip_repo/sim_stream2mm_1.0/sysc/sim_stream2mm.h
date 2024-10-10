// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "xtlm.h"

class sim_stream2mm : public sc_module 
{
public:
  sim_stream2mm(sc_core::sc_module_name p_name,xsc::common_cpp::properties& _properties);
  SC_HAS_PROCESS(sim_stream2mm);

  //Destructor
  ~sim_stream2mm();

  xtlm::xtlm_axis_target_socket* S00_AXIS_socket;
  xtlm::xtlm_axis_target_socket_util* util;

  xtlm::xtlm_aximm_initiator_socket* M00_AXI_wr_socket;
  xtlm::xtlm_aximm_initiator_socket* M00_AXI_rd_socket;

  xtlm::xtlm_aximm_initiator_rd_socket_util *rd_util;
  xtlm::xtlm_aximm_initiator_wr_socket_util *wr_util;

  sc_in<bool> s00_axis_aclk;
  sc_in<bool> s00_axis_aresetn;

  sc_in<bool> m00_axi_aclk;
  sc_in<bool> m00_axi_aresetn;

private:
  void read_stream_data();
  void send_write_trans();
  void write_response();

  xtlm::aximm_payload* get_payload();
  xtlm::xtlm_aximm_mem_manager* mem_manager;  

  unsigned long long m_curr_addr;
  unsigned int aximm_width_in_bytes;
  unsigned int stream_width_in_bytes;

  sc_event start_transfer_ev;
  std::queue<unsigned char*> fifo;  
};


