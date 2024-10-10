// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

#ifndef SIM_XDMA_CORE_H_
#define SIM_XDMA_CORE_H_

#include "xtlm.h"
#include <fstream>
#include <list>
#include <sys/types.h>
#include "xcl_api.h"
#include "sk_client.h"
#include "sim_xdma_helper.h"
#include "sim_xdma_base.h"
#include "report_handler.h"
#include <queue>
#include <map>
#include <sstream>
#include <tuple>
#include <vector>

namespace xdma {
enum xdma_intf {
	XDMA_CTRL = 0, XDMA_MM = 1, XDMA_MAUX = 2, XDMA_MSTR = 3 ,XDMA_SSTR=4
};

typedef struct xdma_itf_prop {
	uint64_t addr_width;
	uint64_t data_width;
	uint64_t user_width;
	uint64_t id_width;
	bool support_burst;
	bool support_backdoor_access;
	bool enable;
	xdma_itf_prop() {
		addr_width = 32;
		data_width = 32;
		user_width = 32;
		id_width = 32;
		support_burst = true;
		support_backdoor_access = true;
		enable = true;
	}
} xdma_itf_prop_type;

typedef struct stream_nbl_req {
	uint32_t       rid;
	unsigned char* ptr;
	uint32_t       size;
	bool           iseot;
	bool           isprocessed;
} stream_nbl_req_type;

}
class sim_xdma_core :public sc_module,public sim_xdma_base {
public :
	sim_xdma_core(sc_core::sc_module_name ,xsc::common_cpp::properties& ,xsc::common_cpp::report_handler *);
	//Exposed Interfaces
	xtlm::xtlm_aximm_initiator_socket* initiator_ctrl_rd_socket;
	xtlm::xtlm_aximm_initiator_socket* initiator_ctrl_wr_socket;

	xtlm::xtlm_aximm_initiator_socket* initiator_mm_rd_socket;
	xtlm::xtlm_aximm_initiator_socket* initiator_mm_wr_socket;

	xtlm::xtlm_aximm_initiator_socket* initiator_mm_aux_rd_socket;
	xtlm::xtlm_aximm_initiator_socket* initiator_mm_aux_wr_socket;

	xtlm::xtlm_axis_initiator_socket*  initiator_stm_stream_socket;
	xtlm::xtlm_axis_target_socket*     target_stm_stream_socket;
	SC_HAS_PROCESS(sim_xdma_core);
	sc_core::sc_in_clk   m_axi_mm_aclk;
	sc_core::sc_in_clk   m_axictrl_aclk;
	sc_core::sc_in<bool> m_axictrl_aresetn;
	sc_core::sc_in<bool> m_aximm_aresetn;
	sc_core::sc_in_clk   m_aximm_aux_aclk;
	sc_core::sc_in<bool> m_aximm_aux_aresetn;
	sc_core::sc_in_clk   m_axis_aclk;
	sc_core::sc_in<bool> m_axis_aresetn;
	sc_core::sc_in_clk   s_axis_aclk;
	sc_core::sc_in<bool> s_axis_aresetn;
	// Callbacks to be invoked by underlying handler
	bool xclWrite(AddressSpace space, uint64_t offset, const void *hostBuf,size_t size);
	bool xclRead(AddressSpace space, uint64_t offset, void *hostBuf,size_t size);
	void ddrRead(unsigned int ddrNum, uint64_t offset, void* dest,unsigned int size);
    unsigned int xclCreateQueue(queue_context &q_ctx);
    bool     xclWriteQueue(uint64_t q_handle, const void *src, size_t size,unsigned int req_id,bool eot,bool isnonblocking );
    uint64_t xclReadQueue(uint64_t q_handle, void *dest, size_t size ,unsigned int req_id,bool eot,bool isnonblocking );
    bool xclPollCompletion(unsigned int req_id,std::vector<std::tuple<void*,uint32_t,bool> >&);
    virtual bool xclDestroyQueue(uint64_t q_handle);
    bool xclAllocDeviceBuffer(uint64_t base_address, uint64_t size,std::string& buffer_filename);
    bool xclFreeDeviceBuffer(uint64_t base_address);
   bool xclImportBO(std::string sFileName,uint64_t offset,uint64_t size) ;
   bool xclCopyBO(uint64_t src_handle,std::string dst_filename,uint64_t size, uint64_t src_offset,uint64_t dst_offset) ;

	~sim_xdma_core();
private :

	xsc::common_cpp::report_handler*           m_report_handler;
	xtlm::xtlm_aximm_initiator_rd_socket_util* ini_ctrl_rd_socket_util;
	xtlm::xtlm_aximm_initiator_wr_socket_util* ini_ctrl_wr_socket_util;
	xtlm::xtlm_aximm_initiator_rd_socket_util* ini_mm_rd_socket_util;
	xtlm::xtlm_aximm_initiator_wr_socket_util* ini_mm_wr_socket_util;
	xtlm::xtlm_aximm_initiator_rd_socket_util* ini_mm_aux_rd_socket_util;
	xtlm::xtlm_aximm_initiator_wr_socket_util* ini_mm_aux_wr_socket_util;
	xtlm::xtlm_axis_initiator_socket_util*     ini_stm_stream_socket_util;
	xtlm::xtlm_axis_target_socket_util*        tar_stm_stream_socket_util;

	size_t methodProcessRdCommand     (xdma::xdma_intf intf, uint64_t offset, const void *hostBuf,size_t size);
	size_t methodProcessWrCommand     (xdma::xdma_intf intf, uint64_t offset, const void *hostBuf,size_t size);
	size_t methodProcessIniStreamQueue(xdma::xdma_intf intf,uint64_t offset, const void *hostBuf,size_t size);
	size_t methodProcessTargetStreamRequest(xdma::xdma_intf intf);
	void methodProcessWrQueue (uint64_t q_handle);
	void methodProcessRdQueue ();

	void end_of_elaboration();

	void read_properties(xsc::common_cpp::properties& properties);
	size_t send_dbg_transport_rd_call(xdma::xdma_intf intf,uint64_t offset, const void *hostBuf,size_t size);
	size_t send_dbg_transport_wr_call(xdma::xdma_intf intf,uint64_t offset, const void *hostBuf,size_t size);

	bool                                       m_is_aux_enable;
	bool                                       m_is_stm_enable;
	std::stringstream 						   m_ss;

	xtlm::xtlm_aximm_mem_manager               			   m_mem_manager;
	xtlm::xtlm_axis_mem_manager               			   m_ms_manager;
	std::map<xdma::xdma_intf, xdma::xdma_itf_prop*>        m_itf_prop_map;

	uint32_t                                       m_axi_wr_tbuf_no_serviced;
	uint32_t                                       m_axi_rd_tbuf_no_serviced;
	unsigned char*                                 m_xcl_read_req_data_ptr;
	unsigned char*                                 m_xcl_write_req_data_ptr;
	size_t                                         m_read_req_copied_size;
	size_t                                     	   m_write_req_copied_size;
	xdma::xdma_intf                            	   m_activeIntf;
	std::map<uint64_t,std::queue<std::pair<unsigned char,bool> >* > m_stream_host_rdq;
	std::map<uint64_t,std::deque<xdma::stream_nbl_req_type>* >m_stream_pend_rreq;
	std::map<uint64_t,std::deque<xdma::stream_nbl_req_type>* >m_stream_pend_wreq;
	std::map<uint64_t,queue_context >              m_stream_host_qctx;
	std::map<uint64_t,uint64_t >                   m_stream_flowid_to_qid;
	std::map<uint64_t,std::queue<unsigned char>* > m_stream_host_wdq;
	uint64_t                                       m_queue_counter;
};

//Global Functions to support XSim GDB debug of Kernel
void registerDdrRead();
extern "C" void WEAKFUNC iki_register_DDR_read(int (*fp)(int, int));
int ddrRead(int ddrNum, int offset);
DPI_LINKER_DECL
extern "C" size_t get_sc_time_stamp();
DPI_LINKER_DECL
double get_sc_time_insec();

#endif /* SIM_XDMA_CORE_H_ */


