// *****************************************************************************************************************************************
//
// (c) Copyright 2019 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by Xilinx, and to the maximum extent permitted by applicable law:
// (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND
// CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of liability) for any loss or damage of any kind or nature related to,
// arising under or in connection with these materials, including for any direct, or any indirect, special, incidental, or
// consequential loss or damage (including loss of data, profits, goodwill, or any type of loss or damage suffered as a
// result of any action brought by a third party) even if such damage or loss was reasonably foreseeable or Xilinx had
// been advised of the possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any other applications that could lead to death, personal injury,
// or severe property or environmental damage (individually and collectively, "Critical Applications"). Customer assumes
// the sole risk and liability of any use of Xilinx products in Critical Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
//
// *****************************************************************************************************************************************

#include <stdio.h>
#include <string.h>
#include <ap_cint.h>

void shell_utils_cudma_controller(volatile int CQDma[4096]   , volatile int CUDma[4096],
			 	 	 volatile uint128 CuDmaQueue	,
					 volatile uint13 SlotSize	,
					 volatile uint8  NoOfSlots	,
					 volatile uint32 CqBaseAddress){


#pragma HLS INTERFACE ap_none port=CqBaseAddress
#pragma HLS INTERFACE ap_none port=NoOfSlots
#pragma HLS INTERFACE ap_none port=SlotSize
#pragma HLS INTERFACE ap_none port=CuDmaQueue
#pragma HLS INTERFACE m_axi depth=4096 port=CUDma
#pragma HLS INTERFACE m_axi depth=4096 port=CQDma


	  uint8 i;
	  uint3 j;
	  uint8 k;
	  uint11 l;
	  uint32 SlotOffset_n=0; // This is the slot offset variable which is used to calculate the slot offset starting from base
	  uint32 SlotBaseAddr=0; // This is the actual physical address in memory of the particular slot
	  uint32 header=0; // This holds the header value from the command slot packet
	  uint11 payload=0; // This holds the Payload count
	  uint8 noofcumasksread_tmp=0; // This variable holds the number of Cumasks to be read from the slots
	  uint8 noofcumasksread=0;
	  uint32 regmapaddr=0;  // This holds the address of the CU to where the register map has to be copied.
	  uint32 cqcopyaddr=0;  // This holds the Address in the Command queue from where the data has to be copied to the CU

	  bool bit; // This bool variable is used to check if a bit is set in the CuDmaQueue which is then used for further processing
	  bool idxbit; // This bool variable is used to check which particular CU can be used for the current slot task

	  /*
	    * The main loop runs through all the possible slots which may be present in the Command queue
	    * The NoOfSLots variable is set by the config packet from the host which is dynamic and dependent
	    * on the regmap size. The range varies from 16 to 128 slots.
	    * When a bit is found to be set in the CuDmaQueue, the rest of the code is executed else
	    * the loop jumps to the next loop iteration.
	    */
	main_loop:
	  for(i=0;i<NoOfSlots;i++,SlotOffset_n += SlotSize){
		  bit = (CuDmaQueue >> i) & 1;
		  if(bit){
			  // Calculate the Slot base Address using the SlotOffset and Command Queue Base Address
			  SlotBaseAddr = SlotOffset_n + CqBaseAddress;
			  printf("SlotBaseAddr = 0x%x\n",SlotBaseAddr);
			  /*
			   * Read the 32 bit header value from the Slot Address location 0 , Note that in HLS, Address to be
			   * read has to be divided by 4, since the address is int type, HLS will multiple the address provided
			   * by 4. Another alternative is to provide input address/4 and then not divide it by 4 in the code.
			   * both approaches work fine. IN this case we are providing the address input/4 so no division by 4 is needed.
			   */
			  header  = CQDma[SlotBaseAddr];
			  printf("header = 0x%x\n",header);
			  // Extract the payload information from the Header date
			  payload = (header >> 12);
			  printf("payload = %d\n",payload);
			  noofcumasksread_tmp = (header >> 10) & 0x3;
			  printf("noofcumasksread_tmp = %d\n",noofcumasksread_tmp);
			  noofcumasksread = noofcumasksread_tmp + 1;
			  printf("noofcumasksread = %d\n",noofcumasksread);


			  /*
			   * The actually payload value which is in the command slot includes the total payload value,
			   * which include header data, cubitmask and the regmap which has to be copied to the cu memory.
			   * Hence to actually calulate the amount of data that has to be copied , we subtract the payload
			   * value with the locations which do not have the regmap information.
			   */
			  payload = payload - 4 - noofcumasksread;
			  printf("payload = %d\n",payload);

			 // Get the Register Map Address from the cumask since the scheduler has set the cu address
			 // Regmap starts 4 words after base address
			 regmapaddr =  CQDma[SlotBaseAddr+1]+4;
			 printf("regmapaddr = 0x%x\n",regmapaddr);
			 /*
			  * The address to start the copy from in the command queue is calculated next
			  */
			 // Calculate the CQ Address
			 cqcopyaddr =  SlotBaseAddr  + noofcumasksread + 5;
			 printf("cqcopyaddr = 0x%x\n",cqcopyaddr);

			 /* This is the main copy loop which copies the data from the commands queue to the CU memory
			  * and then fires the CU.
			  */
	copyloop:
	         for(l=0;l<payload;l++)
	             // note loop var will go below 0 so needs to have signed and not unsigned
	         {
	#pragma HLS PIPELINE
				 CUDma[regmapaddr + l] = CQDma[cqcopyaddr + l];
			 }

			// Start CU
			 CUDma[regmapaddr-4] = 1;

		  } // end of bit section.
	  }
}




