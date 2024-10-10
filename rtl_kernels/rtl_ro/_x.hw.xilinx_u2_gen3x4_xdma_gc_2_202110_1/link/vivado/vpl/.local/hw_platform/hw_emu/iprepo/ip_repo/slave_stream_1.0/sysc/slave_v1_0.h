// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "xtlm.h"

class slave_stream_v1_0 : public sc_module 
{
    public:
        slave_stream_v1_0(sc_core::sc_module_name p_name,xsc::common_cpp::properties& _properties);
        SC_HAS_PROCESS(slave_stream_v1_0);
        ~slave_stream_v1_0();

        xtlm::xtlm_axis_target_socket* S00_AXIS_socket;
        xtlm::xtlm_axis_target_socket_util* util;
        sc_in<bool> s00_axis_aclk;
        sc_in<bool> s00_axis_aresetn;

    private:
        void sample_data();
        FILE* outFile;
};


