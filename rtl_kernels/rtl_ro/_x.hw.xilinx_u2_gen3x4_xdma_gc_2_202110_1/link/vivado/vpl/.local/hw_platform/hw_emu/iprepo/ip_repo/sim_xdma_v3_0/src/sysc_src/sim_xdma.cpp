// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "sim_xdma.h"
using namespace xdma;
sim_xdma* sim_xdma::m_instance=NULL;

sim_xdma::sim_xdma(sc_core::sc_module_name name, xsc::common_cpp::properties& properties) :sc_module(name),
	initiator_ctrl_rd_socket(NULL),
	initiator_ctrl_wr_socket(NULL),
	initiator_mm_rd_socket(NULL),
	initiator_mm_wr_socket(NULL),
	initiator_mm_aux_rd_socket(NULL),
	initiator_mm_aux_wr_socket(NULL),
    initiator_stm_stream_socket(NULL),
	target_stm_stream_socket(NULL),
	m_aximm_aclk("m_axi_mm_aclk"),
	m_axictrl_aclk("m_axilite_aclk"),
	m_axictrl_aresetn("m_axilite_aresetn"),
	m_aximm_aresetn("m_aximm_aresetn"),
	m_aximm_aux_aclk("m_aximm_aux_aclk"),
	m_aximm_aux_aresetn("m_aximm_aux_aresetn"),
	m_axis_aclk("m_axis_aclk"),
	m_axis_aresetn("m_axis_aresetn"),
	s_axis_aclk("s_axis_aclk"),
	s_axis_aresetn("s_axis_aresetn")
{

	m_report_handler=new xsc::common_cpp::report_handler("sim_xdma");
	m_sim_xdma_core =new sim_xdma_core("sim_xdm_core",properties,m_report_handler);
	m_sim_xdma_helper =new sim_xdma_helper("sim_xdma_helper", m_sim_xdma_core,m_report_handler);



	initiator_ctrl_rd_socket    = m_sim_xdma_core->initiator_ctrl_rd_socket;
	initiator_ctrl_wr_socket    = m_sim_xdma_core->initiator_ctrl_wr_socket;

	initiator_mm_rd_socket      = m_sim_xdma_core->initiator_mm_rd_socket;
	initiator_mm_wr_socket      = m_sim_xdma_core->initiator_mm_wr_socket;

	initiator_mm_aux_rd_socket  = m_sim_xdma_core->initiator_mm_aux_rd_socket;
	initiator_mm_aux_wr_socket  = m_sim_xdma_core->initiator_mm_aux_wr_socket;

	initiator_stm_stream_socket = m_sim_xdma_core->initiator_stm_stream_socket;
	target_stm_stream_socket    = m_sim_xdma_core->target_stm_stream_socket;

	m_sim_xdma_core->m_axi_mm_aclk(m_aximm_aclk);
	m_sim_xdma_core->m_axictrl_aclk(m_axictrl_aclk);
	m_sim_xdma_core->m_axictrl_aresetn(m_axictrl_aresetn);
	m_sim_xdma_core->m_aximm_aresetn(m_aximm_aresetn);
	m_sim_xdma_core->m_aximm_aux_aclk(m_aximm_aux_aclk);
	m_sim_xdma_core->m_aximm_aux_aresetn(m_aximm_aux_aresetn);
	m_sim_xdma_core->m_axis_aclk(m_axis_aclk);
	m_sim_xdma_core->m_axis_aresetn(m_axis_aresetn);
	m_sim_xdma_core->s_axis_aclk(s_axis_aclk);
	m_sim_xdma_core->s_axis_aresetn(s_axis_aresetn);

	if(!properties.getBool("C_M_AXIMM_AUX_ENABLE")) {
		m_aximm_aux_aclk(m_aximm_aux_aclk_signal);
		m_aximm_aux_aresetn(m_aximm_aux_aresetn_signal);
	}

	if(!properties.getBool("C_STM_ITF_ENABLE")) {
		s_axis_aclk(s_axis_aclk_signal);
		s_axis_aresetn(s_axis_aresetn_signal);
		m_axis_aclk(m_axis_aclk_signal);
		m_axis_aresetn(m_axis_aresetn_signal);
	}
	char* enablesocketcom = getenv("HW_EM_ENABLE_SOCKET");
	m_sim_xdma_helper->setEnableSocketCommunication(true);
	if (enablesocketcom) {
		if (strcmp(enablesocketcom, "false") == 0)
		{
			m_sim_xdma_helper->setEnableSocketCommunication(false);
		}
	}
	m_instance=this;
	SC_THREAD(simulate_single_cycle);
}

sim_xdma::~sim_xdma() {
	delete m_sim_xdma_core;
	delete m_report_handler;
	delete m_sim_xdma_helper;
}
bool sim_xdma::xclWrite(AddressSpace space, uint64_t offset, const void* hostBuf, size_t size) {
	return m_sim_xdma_core->xclWrite(space,offset,hostBuf,size);
}

bool sim_xdma::xclRead(AddressSpace space, uint64_t offset, void* hostBuf, size_t size) {
	return m_sim_xdma_core->xclRead(space,offset,hostBuf,size);
}
/////////////////////////////////////////////////////////////////////////
// Xsim DDR specific routines for backdoor access
/////////////////////////////////////////////////////////////////////////

void sim_xdma::ddrRead(unsigned int ddrNum, uint64_t offset, void* dest,
		unsigned int size) {
	m_sim_xdma_core->ddrRead(ddrNum,offset,dest,size);
}

int ddrRead(int ddrNum, int offset) {
	sim_xdma *device = sim_xdma::getInstance();
	if (!device)
		return 0;

	int buffer = 0;
	device->ddrRead(ddrNum, offset, &buffer, 4);
	return buffer;
}

extern "C" void WEAKFUNC iki_register_DDR_read(int (*fp)(int, int)) {
	// Do not do anything
	return;
}

void registerDdrRead() {
	if (iki_register_DDR_read)
		iki_register_DDR_read(ddrRead);
}
size_t get_sc_time_stamp() {
	size_t deviceTimeStamp;
	if (sc_get_time_resolution() == sc_time(1, SC_PS))
		deviceTimeStamp = sc_time_stamp().value() / 1000;
	else
		deviceTimeStamp = sc_time_stamp().value();
	return deviceTimeStamp;
}

double get_sc_time_insec() {
	return sc_time_stamp().to_seconds();
}

void sim_xdma::simulate_single_cycle() {
	while(1) {
		wait(m_axictrl_aclk.default_event());
		m_sim_xdma_helper->main_loop();
	}
}

void sim_xdma::initModel() {
	m_sim_xdma_helper->init_helper();
	registerDdrRead();
}

void sim_xdma::end_of_elaboration() {
}

void sim_xdma::start_of_simulation() {
	initModel();
}

unsigned int sim_xdma::xclCreateQueue(queue_context& ctx) {
	return m_sim_xdma_core->xclCreateQueue(ctx);
}

bool sim_xdma::xclWriteQueue(uint64_t q_handle, const void* src, size_t size,unsigned int req_id,bool eot,bool isnonblocking) {
	return m_sim_xdma_core->xclWriteQueue(q_handle,src,size,req_id,eot,isnonblocking);
}

uint64_t sim_xdma::xclReadQueue(uint64_t q_handle, void* dest, size_t size,unsigned int req_id,bool eot,bool isnonblocking) {
	return m_sim_xdma_core->xclReadQueue(q_handle,dest,size,req_id,eot,isnonblocking);
}

bool sim_xdma::xclDestroyQueue(uint64_t q_handle) {
	return m_sim_xdma_core->xclDestroyQueue(q_handle);
}

bool sim_xdma::xclPollCompletion(unsigned int req_id,
		std::vector<std::tuple<void*, uint32_t, bool> >& tuple) {
	return m_sim_xdma_core->xclPollCompletion(req_id,tuple);
}

bool sim_xdma::xclAllocDeviceBuffer(uint64_t base_address, uint64_t size,std::string& buffer_filename) {
	return m_sim_xdma_core->xclAllocDeviceBuffer(base_address,size,buffer_filename);
}

bool sim_xdma::xclFreeDeviceBuffer(uint64_t base_address) {
	return m_sim_xdma_core->xclFreeDeviceBuffer(base_address);
}

bool sim_xdma::xclImportBO(std::string sFileName,uint64_t offset,uint64_t size) {
	return m_sim_xdma_core->xclImportBO(sFileName,offset,size);
}

bool sim_xdma::xclCopyBO(uint64_t src_handle,std::string dst_filename,uint64_t size, uint64_t src_offset,uint64_t dst_offset) {
	return m_sim_xdma_core->xclCopyBO(src_handle,dst_filename, size, src_offset, dst_offset);
}


