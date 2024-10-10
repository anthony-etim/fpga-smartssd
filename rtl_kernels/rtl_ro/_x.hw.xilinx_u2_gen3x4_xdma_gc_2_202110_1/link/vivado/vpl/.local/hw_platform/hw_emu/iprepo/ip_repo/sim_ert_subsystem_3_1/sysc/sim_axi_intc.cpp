// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
/*  (c) Copyright 1995 - 2020 Xilinx, Inc. All rights reserved.

 This file contains confidential and proprietary information
 of Xilinx, Inc. and is protected under U.S. and
 international copyright and other intellectual property
 laws.

 DISCLAIMER
 This disclaimer is not a license and does not grant any
 rights to the materials distributed herewith. Except as
 otherwise provided in a valid license issued to you by
 Xilinx, and to the maximum extent permitted by applicable
 law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 (2) Xilinx shall not be liable (whether in contract or tort,
 including negligence, or under any other theory of
 liability) for any loss or damage of any kind or nature
 related to, arising under or in connection with these
 materials, including for any direct, or any indirect,
 special, incidental, or consequential loss or damage
 (including loss of data, profits, goodwill, or any type of
 loss or damage suffered as a result of any action brought
 by a third party) even if such damage or loss was
 reasonably foreseeable or Xilinx had been advised of the
 possibility of the same.

 CRITICAL APPLICATIONS
 Xilinx products are not designed or intended to be fail-
 safe, or for use in any application requiring fail-safe
 performance, such as life-support or safety devices or
 systems, Class III medical devices, nuclear facilities,
 applications related to the deployment of airbags, or any
 other applications that could lead to death, personal
 injury, or severe property or environmental damage
 (individually and collectively, "Critical
 Applications"). Customer assumes the sole risk and
 liability of any use of Xilinx products in Critical
 Applications, subject only to applicable laws and
 regulations governing limitations on product liability.

 THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 PART OF THIS FILE AT ALL TIMES.      */ 

#include "sim_axi_intc.h"

/**
 * Below properties needs to be set while instantiating 
 * sim_axi_intc SystemC module
 * 1. C_NUM_INTR_INPUTS    1 to 32
 * 2. C_KIND_OF_INTR       1=Edge 0=Level
 * 3. C_KIND_OF_EDGE       1=Rising 0=Falling; Valid if C_KIND_OF_INTR=1s
 * 4. C_KIND_OF_LVL        1=High 0=Low; Valid if C_KIND_OF_INTR=0s
 * 5. C_IRQ_IS_LEVEL       0=Active Edge 1=Active Level
 * 6. C_IRQ_ACTIVE         0=Falling/Low 1=Rising/High
 */

namespace xsc {
    sim_axi_intc::sim_axi_intc(sc_module_name name, 
            xsc::common_cpp::properties& _properties)
        :sc_module(name)
         ,intr("intr")
         ,s_axi_aresetn("reset")
         ,s_axi_aclk("clk")
         ,m_properties(_properties)
    {
        s_axi_rd_socket = new xtlm::xtlm_aximm_target_socket("rd_socket", 32);
        s_axi_rd_util   = new xtlm::xtlm_aximm_target_rd_socket_util("rd_util", xtlm::aximm::TRANSACTION, 32);

        s_axi_wr_socket = new xtlm::xtlm_aximm_target_socket("wr_socket", 32);
        s_axi_wr_util   = new xtlm::xtlm_aximm_target_wr_socket_util("wr_util", xtlm::aximm::TRANSACTION, 32);

        s_axi_rd_socket->bind(s_axi_rd_util->rd_socket);
        s_axi_wr_socket->bind(s_axi_wr_util->wr_socket);

        //! Initialize input interrupt vector size with C_NUM_INTR_INPUTS
        m_num_intr = _properties.getLongLong("C_NUM_INTR_INPUTS");
        intr.init(m_num_intr);

        m_log = new xsc::common_cpp::report_handler("sim_axi_intc");

        SC_METHOD(write_reg);
        sensitive << s_axi_wr_util->transaction_available;
        dont_initialize();

        SC_METHOD(read_reg);
        sensitive << s_axi_rd_util->addr_available;
        dont_initialize();

        //! Handles outut irq generation
        SC_THREAD(handle_output_irq);

        //! Spawns configurable number of input interrupt processes
        spawn_interrupt_processes();
    }

    void sim_axi_intc::spawn_interrupt_processes()
    {
        unsigned int intr_type  = m_properties.getLongLong("C_KIND_OF_INTR"); //1=Edge 0=Level
        unsigned int edge_type  = m_properties.getLongLong("C_KIND_OF_EDGE"); //1=Rising 0=Falling; Valid if C_KIND_OF_INTR=1s
        unsigned int level_type = m_properties.getLongLong("C_KIND_OF_LVL");  //1=High 0=Low; Valid if C_KIND_OF_INTR=0s

        bool is_pos_event = false;
        for(unsigned int indx = 0; indx < m_num_intr; indx++) {
            //! get the sensitivity type for each input interrupt
            is_pos_event = (intr_type & (1 << indx))? 
                (edge_type & (1 << indx)) : (level_type & (1 << indx));
            
            sc_spawn_options options;
            if(is_pos_event) {
                options.set_sensitivity(&(intr[indx].pos()));
                options.dont_initialize();                
            } else {
                options.set_sensitivity(&(intr[indx].neg()));
                options.dont_initialize();                
            }

            std::string name = "handle_input_interrupt_"+std::to_string(indx);
            sc_spawn(sc_bind(&sim_axi_intc::handle_input_interrupt, 
                        this, indx),(const char*)(name.c_str()), &options);

            m_ss.str("");
            m_ss << name << " Sensitivity is_pos_event = " << is_pos_event;
            XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
        }
    }

    void sim_axi_intc::handle_input_interrupt(const unsigned int indx)
    {
        m_ss.str("");
        m_ss <<  "Input interrupt triggered on indx = " << indx << std::endl;
        if(!(MER & 0x2)) { //! MER.HIE is not set
            m_ss <<  " MER.HIE is not set. Ignoring interrupt on input indx = " << indx;
            XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
            return;
        }

        //! Set the corresponding bit in ISR and in IPR if enabled in IER
        ISR |=( 1 << indx);
        if(IER & (1 << indx)) {
            IPR |=( 1 << indx);
            m_ss <<  "Setting interrupt pending bit in IPR for indx = " << indx;
            irq_event.notify(SC_ZERO_TIME);
        }
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
    }

    void sim_axi_intc::handle_output_irq()
    {
        unsigned int irq_is_level  = m_properties.getLongLong("C_IRQ_IS_LEVEL"); //0=Active Edge 1=Active Level
        unsigned int irq_active = m_properties.getLongLong("C_IRQ_ACTIVE"); //0=Falling/Low 1=Rising/High

        while(1) {
            wait(irq_event);

            m_ss.str("");
            bool is_active_intr = (IPR != 0);

            if(is_active_intr && !(MER & 0x1)) {
                m_ss <<  "irq interrupt out is not generated as MER.ME is not enabled" << std::endl;
                XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
                continue;
            } 

            if(is_active_intr) {
                //! Generate irq interrupt
                if(irq_is_level) {
                    irq = irq_active; //! Generate level interrupt
                    m_ss <<  "Generating irq level interrupt IPR = 0x" <<std::hex << IPR << std::endl;
                } else {
                    irq = irq_active; //! Generate edge interrupt
                    m_ss <<  "Generating irq edge interrupt IPR = 0x" <<std::hex << IPR << std::endl;
                    wait(10, SC_NS);
                    irq = !irq_active; //! Clear edge interrupt
                }
            } else {
                //! Clear irq interrupt
                if(irq_is_level) {
                    irq = !irq_active; //! Clear level interrupt
                    m_ss <<  "Clearing irq level interrupt IPR = 0x" <<std::hex << IPR << std::endl;
                } 
            }
            XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
        }
    }

    void sim_axi_intc::write_reg()
    {
        xtlm::aximm_payload* trans = s_axi_wr_util->get_transaction();
        unsigned long long addr = trans->get_address() & 0x2ff;
        unsigned int data = *(unsigned int*)trans->get_data_ptr();

        if(addr >= REG_MEM_SIZE) {
            m_ss.str("");
            m_ss << "Out of bound address received Addr = 0x" << std::hex << addr;
            XSC_REPORT_ERROR((*m_log), this->name(), m_ss.str().c_str());
            return; //! Throw    error
        }

        switch(addr)
        {
            case ISR_ADDR:
                write_ISR(data);
                break;

            case IPR_ADDR:
                write_IPR(data);
                break;

            case IER_ADDR:
                write_IER(data);
                break;

            case IAR_ADDR:
                write_IAR(data);
                break;

            case SIE_ADDR:
                write_SIE(data);
                break;

            case CIE_ADDR:
                write_CIE(data);
                break;

            case IVR_ADDR:
                write_IVR(data);
                break;

            case MER_ADDR:
                write_MER(data);
                break;

            case IMR_ADDR:
                write_IMR(data);
                break;

            case ILR_ADDR:
                write_ILR(data);
                break;

            default:
            //case IVAR_ADDR:
            //case IVEAR_ADDR:
                m_ss.str("");
                m_ss <<"Writing to Addr (IVAR or IVEAR) = 0x" << std::hex<< std::hex  << addr <<" is not supported";
                XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
        }

        trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
        sc_core::sc_time delay = SC_ZERO_TIME;
        s_axi_wr_util->send_resp(*trans, delay);
    }

    void sim_axi_intc::read_reg()
    {
        xtlm::aximm_payload* trans = s_axi_rd_util->get_transaction();
        unsigned long long addr = trans->get_address() & 0x2ff;

        if(addr >= REG_MEM_SIZE) {
            m_ss.str("");
            m_ss << "Out of bound address received Addr = 0x"<< std::hex  << addr;
            XSC_REPORT_ERROR((*m_log), this->name(), m_ss.str().c_str());
            return; //! Throw    error
        }

        m_ss.str("");
        m_ss << "Reading Addr = 0x"<< std::hex  << addr << " Data = 0x" << *(unsigned int*)(&reg_mem[addr]);
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        memcpy(trans->get_data_ptr(), &reg_mem[addr], trans->get_data_length());
        trans->set_response_status(xtlm::XTLM_OK_RESPONSE);
        sc_core::sc_time delay = sc_core::SC_ZERO_TIME;
        s_axi_rd_util->send_data(*trans, delay);
    }
    
    void sim_axi_intc::write_ISR(const unsigned int data)
    {
        m_ss.str("");
        m_ss << "Writing to ISR Register Ignored as software "
            <<"interrupt generation is not supported. Data = 0x"<< std::hex << data;
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
    }

    void sim_axi_intc::write_IPR(const unsigned int data)
    {
        //! This is read only register and writes to this register are ignored..
        m_ss.str("");
        m_ss << "Writing to IPR Register Ignored as it is read only Register";
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
    }

    void sim_axi_intc::write_IER(const unsigned int data)
    {
        m_ss.str("");
        m_ss << "Writing to IER Register Data = 0x" <<std::hex << data;
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        //! If there are fewer interrupt inputs than the width of the data bus, 
        //writing a 1 to a non-existing interrupt input does nothing and reading it returns 0
        IER = data & ((1 << m_num_intr) - 1); //! Mask out non existing bits and assign to IER
        IPR = ISR & IER; //! Update IPR register

        //! Evaluate if "irq" should be set...
        irq_event.notify(SC_ZERO_TIME);
    }

    void sim_axi_intc::write_IAR(const unsigned int data)
    {
        //! Writing 1 to a bit in IAR clears the corresponding bit in the ISR, 
        //  and also clears the bit itself in IAR
        m_ss.str("");
        m_ss << "Writing to IAR Register Data = 0x" <<std::hex << data;
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        ISR = (ISR & (~data)); //! IAR is always self cleared So not updating it
        IPR = ISR & IER; //! Update IPR register

        //! Clear interrupt on receiving acknowledgement from software
        irq_event.notify(SC_ZERO_TIME);
    }

    void sim_axi_intc::write_SIE(const unsigned int data)
    {
        //!  Writing a 1 to a bit location in SIE sets the corresponding bit in the IER. 
        //   Writing 0 does nothing, as does writing 1 to a bit location 
        //   that corresponds to a non-existing interrupt.
        m_ss.str("");
        m_ss << "Writing to SIE Register Data = 0x" <<std::hex << data;
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        SIE = data & ((1 << m_num_intr) - 1); //! Mask out non existing bits and assign to SIE
        IER = IER | SIE; //! Set IER bits without modifying already enabled bits...
        IPR = ISR & IER; //! Update IPR register

        //! Evaluate if "irq" should be set...
        irq_event.notify(SC_ZERO_TIME);
    }

    void sim_axi_intc::write_CIE(const unsigned int data)
    {
        //!  Writing a 1 to a bit location in CIE clears the corresponding bit in the IER. 
        //   Writing 0 does nothing, as does writing 1 to a bit location 
        //   that corresponds to a non-existing interrupt.
        m_ss.str("");
        m_ss << "Writing to CIE Register Data = 0x" <<std::hex << data;
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        CIE = data & ((1 << m_num_intr) - 1); //! Mask out non existing bits and assign to CIE
        IER = IER & ~CIE; //! Write '1' Clear IER bits 
        IPR = ISR & IER; //! Update IPR register

        //! Evaluate if "irq" should be cleared...
        irq_event.notify(SC_ZERO_TIME);
    }

    void sim_axi_intc::write_IVR(const unsigned int data)
    {
        //! The IVR is a read-only register and contains the ordinal value 
        //  of the highest priority, enabled, and active interrupt input. 
        m_ss.str("");
        m_ss << "Writing to Read olny IVR Register Ignored";
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
    }

    void sim_axi_intc::write_MER(const unsigned int data)
    {
        //! This is a 2-bit read-write register. The least significant bit contains the Master Enable (ME)
        //bit and the next bit contains the Hardware Interrupt Enable (HIE) bit. Writing a 1 to the ME
        //bit enables the Irq output signal. Writing a 0 to the ME bit disables the Irq output,
        //effectively masking all interrupt inputs.

        //The HIE bit is a write-once bit. At reset, this bit is reset to 0, allowing the software to write
        //to the ISR to generate hardware interrupts for testing purposes, and disabling any hardware
        //interrupt inputs. Writing a 1 to this bit enables the hardware interrupt inputs and disables
        //the software generated inputs.
        m_ss.str("");
        m_ss << "Writing to MER Register Data = 0x" <<std::hex << data;
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        if(data & 0x2) {
            MER = data & 0x3; //! Update ME AND HIE bits...
        }
        else {
            MER = (MER & 0x2) | (data & 0x1); //! Update only ME bit as HIE bit cannot be cleared once set
        }
    }

    void sim_axi_intc::write_IMR(const unsigned int data)
    {
        m_ss.str("");
        m_ss << "Writing to IMR Register Ignored as Fast interrupt mode is not supported";
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);
    }

    void sim_axi_intc::write_ILR(const unsigned int data)
    {
        m_ss.str("");
        m_ss << "Writing to ILR Register Data = 0x" <<std::hex << data;
        XSC_REPORT_INFO_VERB((*m_log), this->name(), m_ss.str().c_str(), DEBUG);

        ILR = data & ((1 << m_num_intr) - 1); //! Mask out non existing bits and assign to ILR
    }

} //! namespace xsc
