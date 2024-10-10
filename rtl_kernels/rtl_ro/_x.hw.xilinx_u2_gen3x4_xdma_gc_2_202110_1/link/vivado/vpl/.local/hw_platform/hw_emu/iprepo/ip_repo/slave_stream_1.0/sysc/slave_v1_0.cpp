// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include "slave_v1_0.h"

slave_stream_v1_0::slave_stream_v1_0(sc_core::sc_module_name p_name,xsc::common_cpp::properties& _properties) : sc_module(p_name) {
  S00_AXIS_socket = new xtlm::xtlm_axis_target_socket("skt",_properties.getLongLong("C_S00_AXIS_TDATA_WIDTH"));
  util = new xtlm::xtlm_axis_target_socket_util("skt_util",xtlm::axis::HANDSHAKE,_properties.getLongLong("C_S00_AXIS_TDATA_WIDTH"));
  S00_AXIS_socket->bind((util->stream_socket));


  SC_METHOD(sample_data);
  sensitive << util->transaction_available;
  dont_initialize();

  outFile = fopen ("output.txt","w");
}

void slave_stream_v1_0::sample_data() 
{
    unsigned data[4] = {0,0,0,0}; //max of 128 bits width
    xtlm::axis_payload* payload = util->sample_transaction();
    unsigned int tdata_length = payload->get_tdata_length();
    memcpy((char*)data,  payload->get_tdata_ptr(), tdata_length);

    for(unsigned int len = 0; len < tdata_length; len += 4) {
        fprintf (outFile, "%d  ", data[len/4]);
    }
    fprintf (outFile, "\n");
  }

 slave_stream_v1_0::~slave_stream_v1_0() {
    fclose (outFile);
 }


