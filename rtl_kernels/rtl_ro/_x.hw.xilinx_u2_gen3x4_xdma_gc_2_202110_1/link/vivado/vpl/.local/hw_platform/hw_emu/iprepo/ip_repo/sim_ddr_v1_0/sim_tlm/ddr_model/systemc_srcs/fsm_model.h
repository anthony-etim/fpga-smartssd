// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// (c) Copyright 2013 - 2018 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
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
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
#ifndef _FSM_MODEL_H_
#define _FSM_MODEL_H_

#include <math.h>
#include <iostream>
#include "xtlm.h"

#include <string.h> // memcpy
#include <stdlib.h> //realloc
#define SC_INCLUDE_DYNAMIC_PROCESSES

#include <map> //realloc
//Uncomment to print the latency calculation log
//#define DEBUGMSG

//For google protobuf
//#include "rpc_messages.pb.h"

#define ONE_KB (0x400)
#define ONE_MB (ONE_KB * ONE_KB)
#define PAGESIZE (ONE_MB)
//#define ADDRBITS (log2(PAGESIZE))
#define ADDRBITS (20)
//Optimize the size later
#define N_1MBARRAYS 4096

//Models fixed portion of the platform
//class ddr_mem_msg;
class fsm_model {
	enum fsm_state {
		idle, refresh, activate, read, write, prech
	};
public:
	//Paging
	std::map<uint64_t, unsigned char*> pageCache;
	std::map<uint64_t, unsigned char*>::iterator pageCacheItr;
	//static ddrx_fsm_model* instance;

	int prev_row_address;
	int prev_column_address;
	int prev_bank_address;
	int active_banks[4]; //Initialize to -1 for closed bank
	int active_banks_use[4];

	//ddr_mem_msg* serialize_msg;
	//ddr_mem_msg* deserialize_msg;
	bool enable_serialization;
	//public:
	~ fsm_model() {
		/*
		 for(std::map<uint64_t,unsigned char*>::iterator it=pageCache.begin(); it != pageCache.end(); ++it) {
		 delete [] it->second ;
		 }*/
	}

	//ddrx_fsm_model(ModelParams*  p_model_params): //Mode 0
	fsm_model(xsc::common_cpp::properties model_param_props) {
		//init_ddr_mem_msg();
		m_latencyCnt = 0;
		curr_state = idle;
		prev_state = idle;
		next_state = idle;
		refresh_req = false;
		resp_due = false;
		no_of_banks = 0;
		bank_address = 0;
		page_size = 0;
		tRRD = 0;
		tRC = 0;
		tRP = model_param_props.getLongLong(
				std::string("C") + model_param_props.getString("ddr_index")
						+ "_tRP"); //17;
		tRTP = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tRTP"); //10;
		tRAS = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tRAS"); //39;
		tRTW = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tRTW"); //10;//rd2wr;
		tWTR_L = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tWTR_L"); //6;
		tWTR_S = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tWTR_S"); //4;
		tCCD = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tCCD");  //4;
		tRCD = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tRCD"); //17;
		tRRD_L = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tRRD_L"); //6;
		tRRD_S = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tRRD_S"); //4;
		tRFC = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tRFC"); //421;
		tWR = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tWR"); //20;
		tFAW = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tFAW"); //16;
		tREFI = model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index") + "_tREFI"); //16;
		wl = (model_param_props.getLongLong(
				"C" + model_param_props.getString("ddr_index")
						+ "_CAS_WRITE_LATENCY"));
		//16;//model_param_props.getLongLong("C"+model_param_props.getString("ddr_index")+"_CWL");//16;
		wr2p = 4 + tWR;
		cl =
				(model_param_props.getLongLong(
						"C" + model_param_props.getString("ddr_index")
								+ "_CAS_LATENCY"));
		//11;//model_param_props.getLongLong("C"+model_param_props.getString("ddr_index")+"_CL");//11;
#ifdef DEBUGMSG
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_ControllerType:"<< (model_param_props.getString("C"+model_param_props.getString("ddr_index")+"_ControllerType")) <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_Mem_Add_Map:"<< (model_param_props.getString("C"+model_param_props.getString("ddr_index")+"_Mem_Add_Map")) <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tRP:"<< tRP <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tRTP:"<<tRTP <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tRAS:"<<tRAS <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tRTW:"<<tRTW <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tWTR_L:"<<tWTR_L <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tWTR_S:"<<tWTR_S <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tCCD:"<<tCCD <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tRCD:"<<tRCD <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tRRD_L:"<<tRRD_L <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tRRD_S:"<<tRRD_S <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tRFC:"<<tRFC <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tWR:"<<tWR <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tFAW:"<<tFAW <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_tREFI:"<<tREFI <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_CWL:"<< wl<<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"_CL:"<< cl<<endl;

		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"CAS_LATENCY:"<< (model_param_props.getLongLong("C"+model_param_props.getString("ddr_index")+"_CAS_LATENCY")) <<endl;
		cout<<"DDR"<<model_param_props.getString("ddr_index")<<"CAS_WRITE_LATENCY"<< (model_param_props.getLongLong("C"+model_param_props.getString("ddr_index")+"_CAS_WRITE_LATENCY")) <<endl;

		cout << "Time Period: " << model_param_props.getLongLong("C0_TIMEPERIOD_PS") << endl;
		cout<<endl;
#endif
		last_rd_time = sc_time_stamp();
		last_wr_time = sc_time_stamp();
		last_act_time = sc_time_stamp();
		last_prech_time = sc_time_stamp();
		timeperiod = model_param_props.getLongLong("C0_TIMEPERIOD_PS");
		delta = 0;

		fsm_state curr_state = idle;
		fsm_state prev_state = idle;
		fsm_state next_state = idle;
		refresh_counter = 0;
		prev_row_address = -1;
		prev_column_address = -1;
		prev_bank_address = -1;
		for (int i = 0; i < 4; i++) {
			active_banks[i] = -1;
			active_banks_use[i] = -1;
		}

		enable_prescheduling = true;
		char* enableprescheduling = getenv("HW_EM_ENABLE_PRESCHEDULE");
		if (enableprescheduling
				&& (strcmp(enableprescheduling, "false") == 0)) {
			enable_prescheduling = true;
		}

		enable_serialization = true;
		char* disable_serialization = getenv("HW_EM_DISABLE_SERIALIZATION");
		if (disable_serialization
				&& (strcmp(disable_serialization, "true") == 0)) {
			enable_serialization = false;
		}
	}

	/***This function splits a read or write command into multiple command like precharge, activate etc. depending on row, bank or column change***/
	unsigned int state_machine(int& curr_row, int& curr_col, int& curr_bank,
			int& curr_bg, fsm_state op_state, int& prev_bank_group);

	/***This function calculates latency depending on state change and timming parameters. It maintains counters.***/
	unsigned int get_state_latency(bool is_bank_change, bool is_bg_change);
	unsigned int get_old_state_latency(bool is_bank_change, bool is_bg_change);

	/***This function calls get_state_latency function for read. It does not maintains counters. ***/
	unsigned int fsm_read(int& curr_row, int& curr_col, int& curr_bank,
			int& curr_bg, int& prev_bank_group);

	/***This function calls get_state_latency function for write ***/
	unsigned int fsm_write(int& curr_row, int& curr_col, int& curr_bank,
			int& curr_bg, int& prev_bank_group);

	void incr_use(int bank_address);
	void precharge();
	bool check_open_bank(int bank_address);
	bool activate_bank(int bank_address);
	void simulate_single_cycle_c0_ddr_clk();

	//void init_ddr_mem_msg();
	//DRAM config
	unsigned int m_latencyCnt;
	unsigned int refresh_counter;
	fsm_state curr_state;
	fsm_state prev_state;
	fsm_state next_state;
	bool refresh_req;
	bool resp_due;
	bool enable_prescheduling;

	int no_of_banks;
	int bank_address;
	unsigned int page_size;

	//void serialize_ddr_memory();
	unsigned int tRP;
	unsigned int wr2p;
	unsigned int tRTP;
	unsigned int tRAS;
	unsigned int tRTW;    //rd2wr;
	unsigned int tCCD;
	unsigned int tRCD;
	unsigned int tWTR_L;
	unsigned int tWTR_S;
	//unsigned int wr2rd;
	unsigned int tRRD;
	unsigned int tRC;
	unsigned int tRFC;
	unsigned int tRRD_L;
	unsigned int tRRD_S;
	unsigned int tWR;
	unsigned int tFAW;
	unsigned int tREFI;
	unsigned int wl;
	unsigned int cl;

	sc_time curr_time;
	/*** These last or previous timing points are required to maintain counters.***/
	sc_time last_rd_time;
	sc_time last_wr_time;
	sc_time last_act_time;
	sc_time last_prech_time;
	double timeperiod;
	double delta;
};

#endif /* _FSM_MODEL_H_ */


