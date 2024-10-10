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

#include "fsm_model.h"

//#include "rpc_messages.pb.h"
//#define DEBUG_LATENCY 1
/*
 void fsm_model::init_ddr_mem_msg()
 {
 serialize_msg = new ddr_mem_msg;
 deserialize_msg = new ddr_mem_msg;
 }
 */
unsigned int fsm_model::get_old_state_latency(bool is_bank_change,
		bool is_bg_change) {
	unsigned int state_latency = 0;

	if (curr_state == prech) {
#ifdef DEBUG_LATENCY
		cout<<"curr_state prech" << endl;
#endif
		if (prev_state == write) {
#ifdef DEBUG_LATENCY
			cout<<"state change write to prech state_latency+=wr2p:"<< wr2p << endl;
#endif
			state_latency += wr2p;
		} else if (prev_state == read) {
#ifdef DEBUG_LATENCY
			cout<<"state change read to prech state_latency+=tRTP:"<< tRTP << endl;
#endif
			state_latency += tRTP;
		} else if (prev_state == activate) {
#ifdef DEBUG_LATENCY
			cout<<"state change activate to prech state_latency+=tRAS:"<< tRAS << endl;
#endif
			state_latency += tRAS;

		}
	} else if (curr_state == write) {
#ifdef DEBUG_LATENCY
		cout<<"curr_state write" << endl;
#endif
		if (prev_state == read) //same bank
				{
#ifdef DEBUG_LATENCY
			cout<<"state change read to write state_latency+=tRTW:"<< tRTW << endl;
#endif
			state_latency += tRTW;
		} else if (prev_state == write) //same bank
				{
			//this is cmd to cmd delay which is already handled in app_ddr so not required
			//state_latency+= tCCD;
		} else if (prev_state == activate) {
#ifdef DEBUG_LATENCY
			cout<<"state change activate to write state_latency+=tRCD:"<< tRCD << endl;
#endif
			state_latency += tRCD;
		}

	} else if (curr_state == read) {
#ifdef DEBUG_LATENCY
		cout<<"curr_state read" << endl;
#endif
		if (prev_state == write) {
			if (is_bg_change)                //Different bank
			{
#ifdef DEBUG_LATENCY
				cout<<"state change write to read bank change state_latency+=tWTR_L:"<< tWTR_L << endl;
#endif
				state_latency += tWTR_L;
			} else                //same bank
			{
#ifdef DEBUG_LATENCY
				cout<<"state change write to read same bank state_latency+=tWTR_S:"<< tWTR_S << endl;
#endif
				state_latency += tWTR_S;

			}
		} else if (prev_state == read) {
			//this is cmd to cmd delay which is already handled in app_ddr so not required
			//state_latency+= tCCD;
		} else if (prev_state == activate) {
#ifdef DEBUG_LATENCY
			cout<<"state change activate to read same bank state_latency+=tRCD:"<< tRCD << endl;
#endif
			state_latency += tRCD;
		}

	} else if (curr_state == activate) {
#ifdef DEBUG_LATENCY
		cout<<"curr_state activate" << endl;
#endif
		if (prev_state == activate) {
#ifdef DEBUG_LATENCY
			cout<<"prev_state " << endl;
#endif
			if (is_bank_change) {
				state_latency += tRAS;
			} else {
				if (is_bg_change) {
					state_latency += tRRD_S;
				} else {
					state_latency += tRRD_L;
				}
			}
		} else if (prev_state == prech) {
#ifdef DEBUG_LATENCY
			cout<<"prev_state prech" << endl;
#endif
			state_latency += tRP;

		} else if (prev_state == refresh) {
#ifdef DEBUG_LATENCY
			cout<<"prev_state refresh" << endl;
#endif
			state_latency += tRFC;
		} else if (prev_state == read) {
#ifdef DEBUG_LATENCY
			cout<<"prev_state  read" << endl;
#endif
		} else if (prev_state == write) {
#ifdef DEBUG_LATENCY
			cout<<"prev_state  write" << endl;
#endif
		}
	}
	return state_latency;
}

unsigned int fsm_model::get_state_latency(bool is_bank_change,
		bool is_bg_change) {

	if (!enable_prescheduling) {
		return get_old_state_latency(is_bank_change, is_bg_change);
	}

	unsigned int state_latency = 0;
	curr_time = sc_time_stamp();

	if (curr_state == prech) {
#ifdef DEBUG_LATENCY
		cout<<"curr_state prech" << endl;
#endif
		if (prev_state == write) {
#ifdef DEBUG_LATENCY
			cout<<"state change write to prech state_latency+=wr2p:"<< wr2p << endl;
#endif
			//delta = (((curr_time -last_wr_time)/timeperiod)).to_double();

			delta = (curr_time > last_wr_time) ?
					((((curr_time - last_wr_time) / timeperiod)).to_double()) :
					0;

			if (delta < wr2p) {
				state_latency += (wr2p - delta);
			}

		} else if (prev_state == read) {
#ifdef DEBUG_LATENCY
			cout<<"state change read to prech state_latency+=tRTP:"<< tRTP << endl;
#endif
			//delta = (((curr_time -last_rd_time)/timeperiod)).to_double();
			delta = (curr_time > last_rd_time) ?
					((((curr_time - last_rd_time) / timeperiod)).to_double()) :
					0;

			if (delta < tRTP) {
				state_latency += (tRTP - delta);
			}
		} else if (prev_state == activate) {
#ifdef DEBUG_LATENCY
			cout<<"state change activate to prech state_latency+=tRAS:"<< tRAS << endl;
#endif
			delta = (curr_time > last_act_time) ?
					((((curr_time - last_act_time) / timeperiod)).to_double()) :
					0;
			//delta = (((curr_time-last_act_time)/timeperiod)).to_double();
			if (delta < tRAS) {
				state_latency += (tRAS - delta);
			}

		}
		last_prech_time = curr_time;

	} else if (curr_state == write) {
#ifdef DEBUG_LATENCY
		cout<<"curr_state write" << endl;
#endif
		if (prev_state == read)                    //same bank
				{
#ifdef DEBUG_LATENCY
			cout<<"state change read to write state_latency+=tRTW:"<< tRTW << endl;
#endif
			delta = (curr_time > last_rd_time) ?
					((((curr_time - last_rd_time) / timeperiod)).to_double()) :
					0;
			//delta = (((curr_time-last_rd_time)/timeperiod)).to_double();
			if (delta < tRTW) {
				state_latency += (tRTW - delta);
			}
		} else if (prev_state == write)                    //same bank
				{
			//this is cmd to cmd delay which is already handled in app_ddr so not required
			//state_latency+= tCCD;
		} else if (prev_state == activate) {
#ifdef DEBUG_LATENCY
			cout<<"state change activate to write state_latency+=tRCD:"<< tRCD << endl;
#endif
			delta = (curr_time > last_act_time) ?
					((((curr_time - last_act_time) / timeperiod)).to_double()) :
					0;
			//delta = (((curr_time-last_act_time)/timeperiod)).to_double();
			if (delta < tRCD) {
				state_latency += (tRCD - delta);
			}
		}

		last_wr_time = curr_time;
	} else if (curr_state == read) {

#ifdef DEBUG_LATENCY
		cout<<"curr_state read" << endl;
#endif
		if (prev_state == write) {
			delta = (curr_time > last_wr_time) ?
					((((curr_time - last_wr_time) / timeperiod)).to_double()) :
					0;
			//delta = (((curr_time-last_wr_time)/timeperiod)).to_double();
			if (is_bg_change)            //Different bank
			{
#ifdef DEBUG_LATENCY
				cout<<"state change write to read bank change state_latency+=tWTR_L:"<< tWTR_L << endl;
#endif
				if (delta < tWTR_L) {
					state_latency += (tWTR_L - delta);
				}
			} else            //same bank
			{
#ifdef DEBUG_LATENCY
				cout<<"state change write to read same bank state_latency+=tWTR_S:"<< tWTR_S << endl;
#endif
				if (delta < tWTR_S) {
					state_latency += (tWTR_S - delta);
				}

			}
		} else if (prev_state == read) {
			//this is cmd to cmd delay which is already handled in app_ddr so not required
			//state_latency+= tCCD;
		} else if (prev_state == activate) {
#ifdef DEBUG_LATENCY
			cout<<"state change activate to read same bank state_latency+=tRCD:"<< tRCD << endl;
#endif
			delta = (curr_time > last_act_time) ?
					((((curr_time - last_act_time) / timeperiod)).to_double()) :
					0;
			//delta = (((curr_time -last_act_time)/timeperiod)).to_double();
			if (delta < tRCD) {
				state_latency += (tRCD - delta);
			}
		}
		last_rd_time = curr_time;

	} else if (curr_state == activate) {

#ifdef DEBUG_LATENCY
		cout<<"curr_state activate" << endl;
#endif
		if (prev_state == activate) {
#ifdef DEBUG_LATENCY
			cout<<"prev_state " << endl;
#endif
			delta = (curr_time > last_act_time) ?
					((((curr_time - last_act_time) / timeperiod)).to_double()) :
					0;
			// delta = (((curr_time -last_act_time)/timeperiod)).to_double();

			if (is_bank_change) {
				//state_latency+= tRAS+tRP
				//Diff ROW within abank????
				if (delta < tRAS) {
					state_latency += (tRAS - delta);           //???????????????
				}

				if (delta < tRP) {
					state_latency += (tRP - delta);            //???????????????
				}
			} else {

				if (is_bg_change) {

					state_latency += tRRD_S;
				} else {
					if (delta < tRRD_L) {
						state_latency += (tRRD_L - delta);
					}
				}
			}
		} else if (prev_state == prech) {
#ifdef DEBUG_LATENCY
			cout<<"prev_state prech" << endl;
#endif
			delta =
					(curr_time > last_prech_time) ?
							((((curr_time - last_prech_time) / timeperiod)).to_double()) :
							0;
			// delta = (((curr_time - last_prech_time)/timeperiod)).to_double();
			if (delta < tRP) {
				state_latency += (tRP - delta);
			}

		} else if (prev_state == refresh) {
#ifdef DEBUG_LATENCY
			cout<<"prev_state refresh" << endl;
#endif
			//delta = (((sc_time_stamp()-last_wr_time)/timeperiod)).to_double();
			state_latency += tRFC;
		} else if (prev_state == read) {
#ifdef DEBUG_LATENCY
			cout<<"prev_state  read" << endl;
#endif
		} else if (prev_state == write) {
#ifdef DEBUG_LATENCY
			cout<<"prev_state  write" << endl;
#endif
		}
		last_act_time = curr_time;

	}
	return state_latency;
}

unsigned int fsm_model::state_machine(int& curr_row, int& curr_col,
		int& curr_bank, int& curr_bg, fsm_state op_state,
		int& prev_bank_group) {

	unsigned int latency = 0;
	bool is_bank_open = false;
	bool is_bank_change = false;
	bool is_bg_change = false;
	int curr_row_address = curr_row;
	int curr_column_address = curr_col;
	int curr_bank_address = curr_bank;
	int curr_bank_group = curr_bg;

#ifdef DEBUG_LATENCY
	cout<<"prev_row_address:"<< prev_row_address<<endl;
	cout<<"prev_column_address:"<< prev_column_address <<endl;
	cout<<"prev_bank_address:"<< prev_bank_address<<endl;
	cout<<"prev_bank_group:"<< prev_bank_group <<endl;
	cout<<"curr_row_address:"<< curr_row_address<<endl;
	cout<<"curr_column_address:"<< curr_column_address <<endl;
	cout<<"curr_bank_address:"<< curr_bank_address<<endl;
	cout<<"curr_bank_group:"<< curr_bank_group <<endl;
#endif
	is_bank_open = false;
	is_bank_change = false;
	if (prev_bank_address != curr_bank_address) {
#ifdef DEBUG_LATENCY
		cout<<"bank change"<< endl;
#endif
		is_bank_change = true;
	}

	if (prev_bank_group != curr_bank_group) {
#ifdef DEBUG_LATENCY
		cout<<"bg change"<< endl;
#endif
		is_bg_change = true;
	}
	if ((curr_row_address != prev_row_address) && ((-1) != prev_row_address)) {
#ifdef DEBUG_LATENCY
		cout<<"row change precharge"<< endl;
#endif
		precharge();                    //close active banks i.e precharge
		prev_state = curr_state;
		curr_state = prech;
		latency += get_state_latency(is_bank_change, is_bg_change);
	}

	is_bank_open = check_open_bank(curr_bank_address);
	incr_use(curr_bank_address);
	if (is_bank_open == false) {
#ifdef DEBUG_LATENCY
		cout<<"bank not open activate"<< endl;
#endif
		activate_bank(curr_bank_address);

		prev_state = curr_state;
		curr_state = activate;
		latency += get_state_latency(is_bank_change, is_bg_change);
	}
	prev_state = curr_state;
	curr_state = op_state;                    //can be read or write
	if (enable_prescheduling) {
		if (op_state == read) {
#ifdef DEBUG_LATENCY
			cout<<"adding cl:"<<cl<< endl;
#endif
			latency += cl;
			latency += get_state_latency(is_bank_change, is_bg_change);
		} else {
#ifdef DEBUG_LATENCY
			cout<<"adding wl:"<<wl<< endl;
#endif
			latency += wl;
			latency += get_state_latency(is_bank_change, is_bg_change);
		}
	} else {
		//This is wrong calculation which exists till 2016.4
		latency += cl;
		latency += wl;
	}
	prev_row_address = curr_row_address;
	prev_column_address = curr_column_address;
	prev_bank_address = curr_bank_address;
	//prev_bank_group = curr_bank_group;

	if (refresh_counter >= tREFI) {
		prev_state = curr_state;
		curr_state = refresh;
		latency += get_state_latency(is_bank_change, is_bg_change);
		refresh_counter = 0;

	}

	return latency;
}
unsigned int fsm_model::fsm_read(int& curr_row, int& curr_col, int& curr_bank,
		int& curr_bg, int& prev_bank_group) {

	m_latencyCnt = state_machine(curr_row, curr_col, curr_bank, curr_bg, read,
			prev_bank_group);
	return m_latencyCnt;

}
unsigned int fsm_model::fsm_write(int& curr_row, int& curr_col, int& curr_bank,
		int& curr_bg, int& prev_bank_group) {

	m_latencyCnt = state_machine(curr_row, curr_col, curr_bank, curr_bg, write,
			prev_bank_group);
	return m_latencyCnt;
}

void fsm_model::incr_use(int bank_address) {
	for (int j = 0; j < 4; j++) {
		if (active_banks[j] == bank_address) {
			active_banks_use[j]++;
			break;
		}
	}
}

void fsm_model::precharge() {

	for (int i = 0; i < 4; i++) {
		active_banks[i] = -1;
		active_banks_use[i] = -1;
	}
}

bool fsm_model::check_open_bank(int bank_address) {
	bool is_bank_open = false;
	for (int k = 0; k < 4; k++) {
		//Find if bank is not open
		if (active_banks[k] == bank_address) {
			is_bank_open = true;
			break;
		}
	}
	return is_bank_open;
}

bool fsm_model::activate_bank(int bank_address) {
	bool bank_slot_assigned = false;
	for (int k = 0; k < 4; k++) {
		//if less than 4 banks are open
		if (active_banks[k] == ((unsigned int) (-1))) {
			active_banks[k] = bank_address;
			active_banks_use[k] = 0;
			bank_slot_assigned = true;
			break;
		}
	}
	if (bank_slot_assigned == false) {
		//Find least recently used bank
		unsigned int lru_bank_idx = 0;
		for (int m = 1; m < 4; m++) {
			if (active_banks_use[m] < active_banks_use[lru_bank_idx]) {
				lru_bank_idx = m;
			}
		}
		active_banks[lru_bank_idx] = bank_address;
		active_banks_use[lru_bank_idx] = 0;
	}
	return bank_slot_assigned;
}

void fsm_model::simulate_single_cycle_c0_ddr_clk() {

	if (m_latencyCnt > 0) {

		m_latencyCnt--;
	}
	refresh_counter++;
}



