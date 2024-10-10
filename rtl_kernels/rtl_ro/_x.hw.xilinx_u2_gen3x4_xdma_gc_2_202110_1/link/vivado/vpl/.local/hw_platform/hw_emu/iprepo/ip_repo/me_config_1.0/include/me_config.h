// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#include <iostream>
#include <sstream>
#include <fstream>
#include <list>

#include "xtlm.h"

class me_config : public sc_core::sc_module
{
    private:
        struct trans {
            unsigned long long addr;
            unsigned long long data;
            unsigned char reqType;

            trans(): addr(0), data(0), reqType(0) {}
        };

    public:
        SC_HAS_PROCESS(me_config);

        me_config(sc_module_name name, xsc::common::properties& _properties): sc_module(name)
    {
        M0_AXI_rd_socket = new xtlm::xtlm_aximm_initiator_socket("init_rd_socket", 32);
        M0_AXI_wr_socket = new xtlm::xtlm_aximm_initiator_socket("init_wr_socket", 32);

        rd_util = new xtlm::xtlm_aximm_initiator_rd_socket_util("util_rd_socket", xtlm::aximm::TRANSACTION, 32);
        wr_util = new xtlm::xtlm_aximm_initiator_wr_socket_util("util_wr_socket", xtlm::aximm::TRANSACTION, 32);

        rd_util->rd_socket.bind(*M0_AXI_rd_socket);
        wr_util->wr_socket.bind(*M0_AXI_wr_socket);

        mem_manager = new xtlm::xtlm_aximm_mem_manager();

        SC_THREAD(request_process);
        //sensitive << req_event_;
        sensitive << res_cmplt;

        SC_THREAD(response_process);
        sensitive<<wr_util->resp_available;
        sensitive<<rd_util->data_available;
    }

        //Destructor
        ~me_config()
        {
            delete mem_manager;
            delete wr_util;
            delete rd_util;
            delete M0_AXI_wr_socket;
            delete M0_AXI_rd_socket;
        }

        xtlm::xtlm_aximm_initiator_socket *M0_AXI_rd_socket;
        xtlm::xtlm_aximm_initiator_socket *M0_AXI_wr_socket;
        sc_in<bool>  m0_axi_aresetn;
        sc_in<bool>  m0_axi_aclk;

        xtlm::xtlm_aximm_initiator_rd_socket_util *rd_util;
        xtlm::xtlm_aximm_initiator_wr_socket_util *wr_util;

        xtlm::xtlm_aximm_mem_manager* mem_manager;
        sc_event res_cmplt;

        void request_process()
        {
            //initial delay to avoid traffic generation @ initialization phase...
            //wait(10, SC_US);

            std::ifstream inFile;
            inFile.open("me_traffic.txt");

            if(inFile.fail()) {
                std::cerr<<"couldn't open traffic generator file"<<std::endl;
                exit(0);
            }

            std::string line;
            while(std::getline(inFile, line)) {

                if((line.substr(0, 3) == "'W ") || (line.substr(0, 3) == "'R "))  {
                    //Remove single quotes ' ', from the line
                    line.erase(line.begin()); line.erase(line.end() - 1);
                    trans t;

                    std::stringstream ss(line);
                    ss >> t.reqType;

                    ss >> std::hex >> t.addr;

                    if(t.reqType == 'W') {
                        ss >> std::hex >> t.data;
                    }

                    send_req(t);
                    wait(res_cmplt); //for response
                }
                else {
                    //ignore
                }
            }
           // std::cout<<" delta count = "<<sc_delta_count()<<endl;
            inFile.close();
            std::cout<<"["<<sc_time_stamp()<<"]"<<this->name()<<": Completed traffic generation"<<std::endl;
            wait(10, SC_US);
            sc_stop();
        }

        void send_req(trans& t) 
        {
            xtlm::aximm_payload* trans = mem_manager->get_payload();
            trans->acquire();

            trans->set_response_status(xtlm::XTLM_INCOMPLETE_RESPONSE);
            trans->create_and_get_data_ptr(4);
                  
            unsigned char* byte_en_ptr = trans->create_and_get_byte_enable_ptr(4);
            for(int i = 0; i < 4; i++) {
                byte_en_ptr[i] = 0xff;
            }

            trans->set_axi_id(0);
            trans->set_burst_length(1);
            trans->set_burst_size(4); //32 bit
            trans->set_burst_type(1); //INCR

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
 
            trans->set_address(t.addr);
            sc_time delay = SC_ZERO_TIME;

            if(t.reqType == 'W')
            {
                wait(10, SC_NS);
                memcpy(trans->get_data_ptr(), &(t.data), 4);
                wr_util->send_transaction(*trans, delay);
            }
            else
            {
                //std::cout<<" delta count = "<<sc_delta_count()<<endl;
                wait(1500, SC_NS);
                rd_util->send_transaction(*trans, delay);
            }
        }


        void response_process()
        {
            while (true)
            {
                wait();//for response

                xtlm::aximm_payload* trans;
                if(rd_util->is_data_available())
                {
                    trans = rd_util->get_data();
                    trans->release();
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
};


