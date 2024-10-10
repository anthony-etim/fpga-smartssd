// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
/*  (c) Copyright 2014 - 2019 Xilinx, Inc. All rights reserved.

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
 PART OF THIS FILE AT ALL TIMES.                       */
/* Auto-generated Code */
#ifndef _SXX_TYPES_H_
#define _SXX_TYPES_H_
#include "xtlm.h"
#include "kdma.config.h"
// C++ Types
typedef bool i1_t;
typedef unsigned char u8_t;
typedef char s8_t;
typedef unsigned short u16_t;
typedef short s16_t;
typedef unsigned int u32_t;
typedef int s32_t;
typedef unsigned long long u64_t;
typedef long s64_t;
typedef float f32_t;
typedef double f64_t;
typedef size_t sz_t;
typedef unsigned long long p64_t;

// XTLM  Types
typedef xtlm::xtlm_aximm_initiator_socket axi_mm_is;
typedef xtlm::xtlm_aximm_target_socket axi_mm_ts;
typedef xtlm::xtlm_aximm_initiator_rd_socket_util axi_mm_isru;
typedef xtlm::xtlm_aximm_initiator_wr_socket_util axi_mm_iswu;
typedef xtlm::xtlm_aximm_target_rd_socket_util axi_mm_tsru;
typedef xtlm::xtlm_aximm_target_wr_socket_util axi_mm_tswu;
typedef xtlm::aximm_payload axi_mm_pd;
typedef xtlm::xtlm_aximm_mem_manager axi_mm_mgr;

#define SC_AXILITE_SIZE 1024;
class saxilite_t {
	u8_t DReg[1024]; //TODO:: Fix to use Macro

public:
	void writeAtOffset(u64_t offset, u32_t data) {
		std::memcpy((DReg + offset),&data,  sizeof(data));
	}

	u32_t read32(u32_t offset) {
		u32_t data = 0;
		std::memcpy(&data, (DReg + offset), sizeof(data));
		return data;
	}

	u64_t read64(u64_t offset) {
		u64_t data = 0;
		std::memcpy(&data, (DReg + offset),  sizeof(data));
		return data;
	}
	void setExitReg() {
		//TODO:: Fill this function
		DReg[0] = DReg[0] & 0xF0; //ap_done and ap_ready
		DReg[0] = DReg[0] | 0x06; //ap_done and ap_ready
		if((read32(ADDR_IER) & 0x01) != 0) {
			writeAtOffset(ADDR_ISR,(read32(ADDR_ISR) | 0x01));
		}
		if((read32(ADDR_IER) & 0x02) != 0) {
			writeAtOffset(ADDR_ISR,(read32(ADDR_ISR) | 0x02));
		}
	}
};
namespace auxilary {
struct data_req_t {
	u64_t addr;
	u64_t nbeats;
	inline void print(std::ostream&) {
	}
	friend std::ostream &operator<<(std::ostream& in, const data_req_t&) {
		return in;
	}
};
struct wr_beat_t {
	axi_mm_pd * payload;
	u64_t beats_served;
};
} // end of Namespace
#define SIZE8 8
template<int BITWIDTH>
struct bn_t {
public:
	char data[BITWIDTH / SIZE8];
	bn_t(const unsigned char* p_data) {
		memcpy(data, p_data, BITWIDTH / SIZE8);
	}
	bn_t() {
		std::memset(data, 0, BITWIDTH / SIZE8);
	}
	bn_t(const bn_t& other) {
		std::memcpy(&(this->data), &(other.data),
				sizeof(char) * BITWIDTH / SIZE8);
	}
	int range(unsigned int start, unsigned int end) {
		int tdata = 0;
		int index = start / SIZE8;
		std::memcpy(&tdata, &data[index], sizeof(tdata));
		return tdata;
	}
	void update(unsigned int start, unsigned int end, int indata) {
		int index = start / SIZE8;
		std::memcpy(&(data[index]), &indata, sizeof(indata));
	}
	bn_t<BITWIDTH>& operator=(const bn_t&& other) {
		std::memcpy(&(this->data), &(other.data),
				sizeof(char) * BITWIDTH / SIZE8);
		return *this;
	}
	bn_t<BITWIDTH>& operator*(const bn_t& other) {
		std::memcpy(&(this->data), &(other.data),
				sizeof(char) * BITWIDTH / SIZE8);
		return *this;
	}
	bn_t<BITWIDTH>& operator=(const bn_t& other) {
		std::memcpy(&(this->data), &(other.data),
				sizeof(char) * BITWIDTH / SIZE8);
		return *this;
	}
	friend std::ostream & operator <<(std::ostream&out,
			const bn_t<BITWIDTH> &c) {
		out << "bn_t Debug: ";
		for (int i = 0; i < BITWIDTH / SIZE8; i++)
			out << c.data[i / 8] << "  ";
		out << std::endl;
		return out;
	}
};
#endif 
