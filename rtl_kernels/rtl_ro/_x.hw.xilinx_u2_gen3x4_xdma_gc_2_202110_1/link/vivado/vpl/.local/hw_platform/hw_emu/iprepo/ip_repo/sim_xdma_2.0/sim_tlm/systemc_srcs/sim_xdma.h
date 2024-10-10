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

#ifndef __SIM_XDMA_V1_0_TLM_H__
#define __SIM_XDMA_V1_0_TLM_H__
#include "xtlm.h"
#include <fstream>
#include <list>
#include <sys/types.h>
#include "xcl_api.h"
#include "sk_client.h"
#include "sim_xdma_helper.h"
#include "sim_xdma_base.h"
//#include "rpc_messages.pb.h"

enum xdma_intf {
	XDMA_CTRL = 0, XDMA_M0 = 1, XDMA_M1 = 2, XDMA_M2 = 3
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

class sim_xdma: public sim_xdma_base,
		public xtlm::xtlm_aximm_simple_initiator_socket_tagged_base,
		public xtlm::xtlm_aximm_passthrough_target_socket_tagged_base,
		public sc_module {
public:
	explicit sim_xdma(sc_core::sc_module_name name,
			xsc::common_cpp::properties model_param_props);

	SC_HAS_PROCESS(sim_xdma);

	~sim_xdma();

	//Exposed Sockets
	xtlm::xtlm_aximm_simple_initiator_socket_tagged* M_AXI_LITE_wr_socket;
	xtlm::xtlm_aximm_simple_initiator_socket_tagged* M_AXI_LITE_rd_socket;
	xtlm::xtlm_aximm_simple_initiator_socket_tagged* M_AXI_wr_socket;
	xtlm::xtlm_aximm_simple_initiator_socket_tagged* M_AXI_rd_socket;
	xtlm::xtlm_aximm_simple_initiator_socket_tagged* M_AXI_1_wr_socket;
	xtlm::xtlm_aximm_simple_initiator_socket_tagged* M_AXI_1_rd_socket;
	xtlm::xtlm_aximm_simple_initiator_socket_tagged* M_AXI_2_wr_socket;
	xtlm::xtlm_aximm_simple_initiator_socket_tagged* M_AXI_2_rd_socket;

	//Clock and Reset signals for interfaces
	sc_core::sc_in_clk m_axi_aclk;
	sc_core::sc_in_clk m_axi_lite_aclk;
	sc_core::sc_in<bool> m_axi_lite_aresetn;
	sc_core::sc_in<bool> m_axi_aresetn;
	sc_core::sc_in_clk m_axi_1_aclk;
	sc_core::sc_in_clk m_axi_2_aclk;
	sc_core::sc_in<bool> m_axi_1_aresetn;
	sc_core::sc_in<bool> m_axi_2_aresetn;

	void init_fmodel();
	void simulate_single_cycle_c0_ui_clk();
	void simulate_single_cycle_m_axi_ctrl_clk();
	void fw_m_axi_ctrl_wr_trans(uint64_t offset, const void *hostBuf,
			size_t size);
	void fw_m_axi_ctrl_rd_trans(uint64_t offset, const void *hostBuf,
			size_t size);
	void fw_m_axi_ddr_wr_trans(uint64_t offset, const void *hostBuf,
			size_t size);
	void fw_m_axi_ddr_rd_trans(uint64_t offset, const void *hostBuf,
			size_t size);
	uint64_t dbg_m_axi_ddr_wr_trans(uint64_t offset, const void *hostBuf,
			size_t size);
	uint64_t dbg_m_axi_ddr_rd_trans(uint64_t offset, const void *hostBuf,
			size_t size);

	tlm::tlm_sync_enum m_axi_ctrl_wr_tlm_maxi_nb_transport_bw(
			xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
			sc_core::sc_time & t);
	tlm::tlm_sync_enum m_axi_ctrl_rd_tlm_maxi_nb_transport_bw(
			xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
			sc_core::sc_time & t);
	tlm::tlm_sync_enum m_axi_ddr_wr_tlm_maxi_nb_transport_bw(
			xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
			sc_core::sc_time & t, uint32_t tag);
	tlm::tlm_sync_enum m_axi_ddr_rd_tlm_maxi_nb_transport_bw(
			xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
			sc_core::sc_time & t, uint32_t tag);
	tlm::tlm_sync_enum nb_transport_bw(int socket_id,
			xtlm::aximm_payload & trans, tlm::tlm_phase & phase,
			sc_core::sc_time & t);
	void axilite_wr_nb_fw_method();
	void axi_wr_nb_fw_method();
	void axi_rd_nb_fw_method();

private:
	uint32_t m_axi_ctrl_tbuf_no_serviced;
	uint32_t m_axi_ctrl_tbuf_no;
	uint32_t m_axi_wr_tbuf_no_serviced;
	uint32_t m_axi_rd_tbuf_no_serviced;
	char* addrSpaceDeviceRamPtr;
	size_t addrSpaceDeviceRamPtrCopiedSize;
	sim_xdma_helper* xdma_helper;
	bool isblocked;
	xdma_intf activeIntf;

	/*********************************************************************************/
	/**********************************ocldevice_mgr**********************************/
	/*********************************************************************************/
	struct ELARecord {
		unsigned mStartAddress;
		unsigned mEndAddress;
		unsigned mDataCount;
		std::streampos mDataPos;
		ELARecord() :
				mStartAddress(0), mEndAddress(0), mDataCount(0), mDataPos(0) {
		}
	};

	typedef std::list<ELARecord> ELARecordList;
	typedef std::list<std::pair<uint64_t, uint64_t> > PairList;

	void coalesceFreeBuffers();

	// This is a hidden signature of this class and helps in preventing
	// user errors when incorrect pointers are passed in as handles.
	const unsigned mTag;
	int mHandle;
	size_t mRAMSize;
	size_t maxDMASize;
	size_t mCoalesceThreshold;
	std::list<std::pair<uint64_t, uint64_t> > mFreeBufferList;
	std::list<std::pair<uint64_t, uint64_t> > mBusyBufferList;
	std::ofstream mLogStream;
	ELARecordList mRecordList;

	static sim_xdma* instance;

public:

	static sim_xdma* getInstance() {
		return instance;
	}

	// Raw read/write
	size_t xclWrite(AddressSpace space, uint64_t offset, const void *hostBuf,
			size_t size, uint32_t subspace);
	size_t xclRead(AddressSpace space, uint64_t offset, void *hostBuf,
			size_t size, uint32_t subspace);

	// Buffer management
	uint64_t xclAllocDeviceBuffer(size_t size);
	void xclFreeDeviceBuffer(uint64_t buf);

	// Sanity checks
	static sim_xdma *handleCheck(void *handle);
	unsigned getTAG() const;
	bool isGood() const;
	//Memory Serialization
	//read from ddr...need for debug support
	//To Do: Remove ddrNum since it's no being used
	void ddrRead(unsigned int ddrNum, uint64_t offset, void* dest,
			unsigned int size);
	static const unsigned TAG;
	int numberOfddrs;
	unsigned char *byte_enable_mask;
	xtlm::aximm_payload dbg_rd_trans;
	xtlm::xtlm_aximm_mem_manager m_mem_manager;

public:
private:
	void end_of_elaboration();
	std::queue<xtlm::aximm_payload*> axilite_wr_tran_q;
	std::queue<xtlm::aximm_payload*> axi_wr_tran_q;
	std::queue<xtlm::aximm_payload*> axi_rd_tran_q;
	sc_core::sc_event endwaddrs_ev;
	sc_core::sc_event endraddrs_ev;
	bool end_waddr_respwait;
	bool end_raddr_respwait;
	std::map<xdma_intf, xdma_itf_prop*> m_itf_prop_map;
};

//Global Functions to support XSim GDB debug of Kernel
void registerDdrRead();
extern "C" void WEAKFUNC iki_register_DDR_read(int (*fp)(int, int));
int ddrRead(int ddrNum, int offset);
DPI_LINKER_DECL
extern "C" size_t get_sc_time_stamp();
DPI_LINKER_DECL
double get_sc_time_insec();
#endif


