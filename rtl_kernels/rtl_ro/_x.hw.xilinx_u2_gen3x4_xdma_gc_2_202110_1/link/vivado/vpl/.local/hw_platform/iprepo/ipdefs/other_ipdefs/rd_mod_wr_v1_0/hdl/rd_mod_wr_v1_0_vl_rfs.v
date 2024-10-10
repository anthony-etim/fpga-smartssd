/******************************************************************************

File name:
Rev:
Description:

-- (c) Copyright 1995 - 2020 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
*******************************************************************************/
`timescale 1ps/1ps

module rd_mod_wr_v1_0_0 #(

  parameter C_AXI_LITE_ADDR_WIDTH    = 32,
  parameter C_AXI_LITE_DATA_WIDTH    = 32, 
  parameter C_AXI_LITE_STRB_WIDTH    = C_AXI_LITE_DATA_WIDTH/8, 
  parameter C_CFG_REG_USE            = 3,
  parameter C_DATA_REG_USE           = 1,
  parameter C_CFG_REG_VAL_0          = 32'h0000_0000, 
  parameter C_CFG_REG_VAL_1          = 32'h0000_0000, 
  parameter C_CFG_REG_VAL_2          = 32'h0000_0000, 
  parameter C_CFG_REG_VAL_3          = 32'h0000_0000, 
  parameter C_CFG_REG_CFG_WR_ADDR_0  = 32'h0000_0000, 
  parameter C_CFG_REG_CFG_WR_ADDR_1  = 32'h0000_0000, 
  parameter C_CFG_REG_CFG_WR_ADDR_2  = 32'h0000_0000, 
  parameter C_CFG_REG_CFG_WR_ADDR_3  = 32'h0000_0000,
  parameter C_CFG_REG_DATA_RD_ADDR_0 = 32'h0000_0000, 
  parameter C_CFG_REG_DATA_RD_ADDR_1 = 32'h0000_0000, 
  parameter C_CFG_REG_DATA_RD_ADDR_2 = 32'h0000_0000, 
  parameter C_CFG_REG_DATA_RD_ADDR_3 = 32'h0000_0000, 
  parameter C_CFG_REG_DATA_WR_ADDR_0 = 32'h0000_0000, 
  parameter C_CFG_REG_DATA_WR_ADDR_1 = 32'h0000_0000, 
  parameter C_CFG_REG_DATA_WR_ADDR_2 = 32'h0000_0000, 
  parameter C_CFG_REG_DATA_WR_ADDR_3 = 32'h0000_0000,
  parameter C_CFG_REG_CTR_VAL        = 50000,
  parameter C_NO_OF_SAMPLES_AVG      = 32,
  parameter C_SET_AUTO_TRIGGER       = 1 
)
(
  input  wire                           clk,
  input  wire                           rst_n,
  input  wire                           rev_ctrl_val,
  input  wire                           fpga_avg_ctrl,
  input  wire                     [2:0] board_rev_pins,
  
// Slave AXI4-Lite Interface --------------------------------------
  input     [C_AXI_LITE_ADDR_WIDTH-1:0] s_axi_lite_awaddr,
  input                                 s_axi_lite_awvalid, 
  output                                s_axi_lite_awready,
  input                           [2:0] s_axi_lite_awprot, 
  
  input     [C_AXI_LITE_DATA_WIDTH-1:0] s_axi_lite_wdata,
  input     [C_AXI_LITE_STRB_WIDTH-1:0] s_axi_lite_wstrb,
  input                                 s_axi_lite_wvalid, 
  output                                s_axi_lite_wready, 

  output                                s_axi_lite_bvalid, 
  output                          [1:0] s_axi_lite_bresp, 
  input                                 s_axi_lite_bready, 
                      
  input     [C_AXI_LITE_ADDR_WIDTH-1:0] s_axi_lite_araddr,
  input                                 s_axi_lite_arvalid, 
  output                                s_axi_lite_arready, 
  input                           [2:0] s_axi_lite_arprot, 
                     
  output    [C_AXI_LITE_DATA_WIDTH-1:0] s_axi_lite_rdata,
  output                                s_axi_lite_rvalid, 
  output                          [1:0] s_axi_lite_rresp, 
  input                                 s_axi_lite_rready, 
 
// Master AXI4-Lite Interface -------------------------------------
  output    [C_AXI_LITE_ADDR_WIDTH-1:0] m_axi_lite_awaddr,
  output                                m_axi_lite_awvalid, 
  input                                 m_axi_lite_awready, 
  output                          [2:0] m_axi_lite_awprot, 
  
  output    [C_AXI_LITE_DATA_WIDTH-1:0] m_axi_lite_wdata,
  output    [C_AXI_LITE_STRB_WIDTH-1:0] m_axi_lite_wstrb,
  output                                m_axi_lite_wvalid, 
  input                                 m_axi_lite_wready, 

  input                                 m_axi_lite_bvalid, 
  input                           [1:0] m_axi_lite_bresp, 
  output                                m_axi_lite_bready, 
                    
  output    [C_AXI_LITE_ADDR_WIDTH-1:0] m_axi_lite_araddr,
  output                                m_axi_lite_arvalid, 
  input                                 m_axi_lite_arready, 
  output                          [2:0] m_axi_lite_arprot, 
                   
  input     [C_AXI_LITE_DATA_WIDTH-1:0] m_axi_lite_rdata,
  input                                 m_axi_lite_rvalid, 
  input                           [1:0] m_axi_lite_rresp, 
  output                                m_axi_lite_rready    
);

localparam TCQ = 100; // ps - flip flop delay

wire     [C_AXI_LITE_ADDR_WIDTH-1:0] s_axi_lite_awaddr;
wire                                 s_axi_lite_awvalid; 
wire                                 s_axi_lite_awready; 
wire                           [2:0] s_axi_lite_awprot; 
wire     [C_AXI_LITE_DATA_WIDTH-1:0] s_axi_lite_wdata;
wire     [C_AXI_LITE_STRB_WIDTH-1:0] s_axi_lite_wstrb;
wire                                 s_axi_lite_wvalid; 
wire                                 s_axi_lite_wready; 
wire                                 s_axi_lite_bvalid; 
wire                           [1:0] s_axi_lite_bresp; 
wire                                 s_axi_lite_bready; 
wire     [C_AXI_LITE_ADDR_WIDTH-1:0] s_axi_lite_araddr;
wire                                 s_axi_lite_arvalid; 
wire                                 s_axi_lite_arready; 
wire                           [2:0] s_axi_lite_arprot; 
wire     [C_AXI_LITE_DATA_WIDTH-1:0] s_axi_lite_rdata;
wire                                 s_axi_lite_rvalid; 
wire                           [1:0] s_axi_lite_rresp; 
wire                                 s_axi_lite_rready; 
wire     [C_AXI_LITE_ADDR_WIDTH-1:0] m_axi_lite_awaddr;
wire                                 m_axi_lite_awvalid; 
wire                                 m_axi_lite_awready; 
wire                           [2:0] m_axi_lite_awprot; 
wire     [C_AXI_LITE_DATA_WIDTH-1:0] m_axi_lite_wdata;
wire     [C_AXI_LITE_STRB_WIDTH-1:0] m_axi_lite_wstrb;
wire                                 m_axi_lite_wvalid; 
wire                                 m_axi_lite_wready; 
wire                                 m_axi_lite_bvalid; 
wire                           [1:0] m_axi_lite_bresp; 
wire                                 m_axi_lite_bready; 
wire     [C_AXI_LITE_ADDR_WIDTH-1:0] m_axi_lite_araddr;
wire                                 m_axi_lite_arvalid; 
wire                                 m_axi_lite_arready; 
wire                           [2:0] m_axi_lite_arprot; 
wire     [C_AXI_LITE_DATA_WIDTH-1:0] m_axi_lite_rdata;
wire                                 m_axi_lite_rvalid; 
wire                           [1:0] m_axi_lite_rresp; 
wire                                 m_axi_lite_rready;   

rd_mod_wr #(
           .ADDR_WIDTH             (C_AXI_LITE_ADDR_WIDTH   ), 
           .DATA_WIDTH             (C_AXI_LITE_DATA_WIDTH   ), 
           .STRB_WIDTH             (C_AXI_LITE_STRB_WIDTH   ), 
           .CFG_REG_USE            (C_CFG_REG_USE           ), 
           .DATA_REG_USE           (C_DATA_REG_USE          ), 
           .CFG_REG_VAL_0          (C_CFG_REG_VAL_0         ), 
           .CFG_REG_VAL_1          (C_CFG_REG_VAL_1         ), 
           .CFG_REG_VAL_2          (C_CFG_REG_VAL_2         ), 
           .CFG_REG_VAL_3          (C_CFG_REG_VAL_3         ), 
           .CFG_REG_CFG_WR_ADDR_0  (C_CFG_REG_CFG_WR_ADDR_0 ), 
           .CFG_REG_CFG_WR_ADDR_1  (C_CFG_REG_CFG_WR_ADDR_1 ), 
           .CFG_REG_CFG_WR_ADDR_2  (C_CFG_REG_CFG_WR_ADDR_2 ), 
           .CFG_REG_CFG_WR_ADDR_3  (C_CFG_REG_CFG_WR_ADDR_3 ), 
           .CFG_REG_DATA_RD_ADDR_0 (C_CFG_REG_DATA_RD_ADDR_0), 
           .CFG_REG_DATA_RD_ADDR_1 (C_CFG_REG_DATA_RD_ADDR_1), 
           .CFG_REG_DATA_RD_ADDR_2 (C_CFG_REG_DATA_RD_ADDR_2), 
           .CFG_REG_DATA_RD_ADDR_3 (C_CFG_REG_DATA_RD_ADDR_3), 
           .CFG_REG_DATA_WR_ADDR_0 (C_CFG_REG_DATA_WR_ADDR_0), 
           .CFG_REG_DATA_WR_ADDR_1 (C_CFG_REG_DATA_WR_ADDR_1), 
           .CFG_REG_DATA_WR_ADDR_2 (C_CFG_REG_DATA_WR_ADDR_2), 
           .CFG_REG_DATA_WR_ADDR_3 (C_CFG_REG_DATA_WR_ADDR_3), 
           .NO_OF_SAMPLES_AVG 	   (C_NO_OF_SAMPLES_AVG	    ), 
           .CFG_REG_CTR_VAL        (C_CFG_REG_CTR_VAL       )  
          ) rd_mod_wr_inst0 (
           .clk_i              (clk                 ),                   
           .rst_n_i            (rst_n               ),
           .rev_ctrl_val_i     (rev_ctrl_val        ),
           .fpga_avg_ctrl_i    (fpga_avg_ctrl       ),
           .board_rev_pins_i   (board_rev_pins      ),
                             
           .s_axi_awaddr_i     ( s_axi_lite_awaddr  ),
           .s_axi_awvalid_i    ( s_axi_lite_awvalid ), 
           .s_axi_awready_o    ( s_axi_lite_awready ), 
           .s_axi_awprot_i     ( s_axi_lite_awprot  ), 
                                                  
           .s_axi_wdata_i      ( s_axi_lite_wdata   ),
           .s_axi_wstrb_i      ( s_axi_lite_wstrb   ),
           .s_axi_wvalid_i     ( s_axi_lite_wvalid  ), 
           .s_axi_wready_o     ( s_axi_lite_wready  ), 
                                                  
           .s_axi_bvalid_o     ( s_axi_lite_bvalid  ), 
           .s_axi_bresp_o      ( s_axi_lite_bresp   ), 
           .s_axi_bready_i     ( s_axi_lite_bready  ), 
                                                
           .s_axi_araddr_i     ( s_axi_lite_araddr  ),
           .s_axi_arvalid_i    ( s_axi_lite_arvalid ), 
           .s_axi_arready_o    ( s_axi_lite_arready ),
           .s_axi_arprot_i     ( s_axi_lite_arprot  ), 
                                                  
           .s_axi_rdata_o      ( s_axi_lite_rdata   ),
           .s_axi_rvalid_o     ( s_axi_lite_rvalid  ), 
           .s_axi_rresp_o      ( s_axi_lite_rresp   ), 
           .s_axi_rready_i     ( s_axi_lite_rready  ), 
                                                  
           .m_axi_awaddr_o     ( m_axi_lite_awaddr  ),
           .m_axi_awvalid_o    ( m_axi_lite_awvalid ), 
           .m_axi_awready_i    ( m_axi_lite_awready ), 
           .m_axi_awprot_o     ( m_axi_lite_awprot  ), 
                                                  
           .m_axi_wdata_o      ( m_axi_lite_wdata   ),
           .m_axi_wstrb_o      ( m_axi_lite_wstrb   ),             
           .m_axi_wvalid_o     ( m_axi_lite_wvalid  ),            
           .m_axi_wready_i     ( m_axi_lite_wready  ),            
                                                    
           .m_axi_bvalid_i     ( m_axi_lite_bvalid  ),            
           .m_axi_bresp_i      ( m_axi_lite_bresp   ),             
           .m_axi_bready_o     ( m_axi_lite_bready  ),            
                                                    
           .m_axi_araddr_o     ( m_axi_lite_araddr  ),            
           .m_axi_arvalid_o    ( m_axi_lite_arvalid ),           
           .m_axi_arready_i    ( m_axi_lite_arready ),           
           .m_axi_arprot_o     ( m_axi_lite_arprot  ), 
                                                    
           .m_axi_rdata_i      ( m_axi_lite_rdata   ),             
           .m_axi_rvalid_i     ( m_axi_lite_rvalid  ),            
           .m_axi_rresp_i      ( m_axi_lite_rresp   ),             
           .m_axi_rready_o     ( m_axi_lite_rready  )        
           );  

endmodule


//////////////////////////////////////////////////////////////////////////////////
//
// Read-Modify-Write Module - Verilog Behavioral Model
//
////////////////////////////////////////////////////////////////////////////////
//
// (c) Copyright 1995 - 2020 Xilinx, Inc. All rights reserved.
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
//
//////////////////////////////////////////////////////////////////////////////////
//
// Author: Xilinx 
//
// Module Name: rd_mod_wr 
// Project Name: 
// Description: This IP can read data from up to 4 addresses over a Master AXI4-Lite I/F,
//              run computations on the data and write the results back to another set of
//              addresses. The IP can be configured over another Slave AXI4-Lite I/F. 
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//  ------------------------------------------------------------------
//  ------------- Configuration Register Map (32-bits) ---------------
//  ------------------------------------------------------------------ 
//          
// ----------------------------------------------------------------------------------------------------------             
//      NAME                                FIELDS                         ADDRESS OFFSET          COMMENTS                  
//-----------------------------------------------------------------------------------------------------------
//
//                          [31............8].....[7...4]....[3...0]                                   
//  cfg_cnt_r :             <-   RESERVED  ->   CONFIG REG   DATA REG       5'b00000 (00h)        max count = 4 
//                                                 COUNT       COUNT                                     
//                                                                                                      
//                          [31...................................0]                                   
//  cfg_val_0_r :           <-       CONFIGURATION VALUE 0        ->        5'b00001 (01h)                        
//                                                                                                   
//                          [31...................................0]                                
//  cfg_val_1_r :           <-       CONFIGURATION VALUE 1        ->        5'b00010 (02h)                     
//                                                                                                
//                          [31...................................0]                             
//  cfg_val_2_r :           <-       CONFIGURATION VALUE 2        ->        5'b00011 (03h)                  
//                                                                                             
//                          [31...................................0]                          
//  cfg_val_3_r :           <-       CONFIGURATION VALUE 3        ->        5'b00100 (04h) 
//
//                          [31...................................0]                                   
//  cfg_cfg_wr_addr_0_r :   <-    CFG WRITE REGISTER ADDRESS 0    ->        5'b00101 (05h) 
//
//                          [31...................................0]                                   
//  cfg_cfg_wr_addr_1_r :   <-    CFG WRITE REGISTER ADDRESS 1    ->        5'b00110 (06h)         
//
//                          [31...................................0]                                   
//  cfg_cfg_wr_addr_2_r :   <-    CFG WRITE REGISTER ADDRESS 2    ->        5'b00111 (07h)          
//
//                          [31...................................0]                                   
//  cfg_cfg_wr_addr_3_r :   <-    CFG WRITE REGISTER ADDRESS 3    ->        5'b01000 (08h)
//
//                          [31...................................0]                                   
//  cfg_data_rd_addr_0_r :  <-    DATA READ REGISTER ADDRESS 0    ->        5'b01001 (09h)
//
//                          [31...................................0]                                   
//  cfg_data_rd_addr_1_r :  <-    DATA READ REGISTER ADDRESS 1    ->        5'b01010 (0Ah)
//
//                          [31...................................0]                                   
//  cfg_data_rd_addr_2_r :  <-    DATA READ REGISTER ADDRESS 2    ->        5'b01011 (0Bh)      
//
//                          [31...................................0]                                   
//  cfg_data_rd_addr_3_r :  <-    DATA READ REGISTER ADDRESS 3    ->        5'b01100 (0Ch)
//
//                          [31...................................0]                                   
//  cfg_data_wr_addr_0_r :  <-    DATA WRITE REGISTER ADDRESS 0   ->        5'b01101 (0Dh)
//
//                          [31...................................0]                                   
//  cfg_data_wr_addr_1_r :  <-    DATA WRITE REGISTER ADDRESS 1   ->        5'b01110 (0Eh)         
//
//                          [31...................................0]                                   
//  cfg_data_wr_addr_2_r :  <-    DATA WRITE REGISTER ADDRESS 2   ->        5'b01111 (0Fh)          
//
//                          [31...................................0]                                   
//  cfg_data_wr_addr_3_r :  <-    DATA WRITE REGISTER ADDRESS 3   ->        5'b10000 (10h)
//
//                          [31...................................0]                                   
//  cfg_ctr_val_r :         <-         COUNTER MAX VALUE          ->        5'b10001 (11h)   
//                                                                                    
//                          [31.........................1].......[0]                                   
//  cfg_cfg_done_r :        <-          RESERVED        ->  CONFIGURATION   5'b10010 (12h)          
//                                                               DONE
//                
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps


module rd_mod_wr #( 

  parameter ADDR_WIDTH             = 32,                        
  parameter DATA_WIDTH             = 32, 
  parameter STRB_WIDTH             = DATA_WIDTH/8,
  parameter CFG_REG_USE            = 4,
  parameter DATA_REG_USE           = 2,
  parameter CFG_REG_VAL_0          = 32'h00000000, 
  parameter CFG_REG_VAL_1          = 32'h00000000, 
  parameter CFG_REG_VAL_2          = 32'h00000000, 
  parameter CFG_REG_VAL_3          = 32'h00000000, 
  parameter CFG_REG_CFG_WR_ADDR_0  = 32'h00000000, 
  parameter CFG_REG_CFG_WR_ADDR_1  = 32'h00000000, 
  parameter CFG_REG_CFG_WR_ADDR_2  = 32'h00000000, 
  parameter CFG_REG_CFG_WR_ADDR_3  = 32'h00000000,
  parameter CFG_REG_DATA_RD_ADDR_0 = 32'h00000000, 
  parameter CFG_REG_DATA_RD_ADDR_1 = 32'h00000000, 
  parameter CFG_REG_DATA_RD_ADDR_2 = 32'h00000000, 
  parameter CFG_REG_DATA_RD_ADDR_3 = 32'h00000000, 
  parameter CFG_REG_DATA_WR_ADDR_0 = 32'h00000000, 
  parameter CFG_REG_DATA_WR_ADDR_1 = 32'h00000000, 
  parameter CFG_REG_DATA_WR_ADDR_2 = 32'h00000000, 
  parameter CFG_REG_DATA_WR_ADDR_3 = 32'h00000000,
  parameter CFG_REG_CTR_VAL        = 500000,
  parameter SET_AUTO_TRIGGER       = 0, 
  parameter NO_OF_SAMPLES_AVG      = 32 

  )(
 
  input                      clk_i,
  input                      rst_n_i,
  
// Slave AXI4-Lite Interface --------------------------------------
  input     [ADDR_WIDTH-1:0] s_axi_awaddr_i,
  input                      s_axi_awvalid_i, 
  output                     s_axi_awready_o, 
  input                [2:0] s_axi_awprot_i, 
  
  input     [DATA_WIDTH-1:0] s_axi_wdata_i,
  input     [STRB_WIDTH-1:0] s_axi_wstrb_i,    // NOTE: IP does not support partial inputs, only full register writes are supported
  input                      s_axi_wvalid_i, 
  output                     s_axi_wready_o, 

  output                     s_axi_bvalid_o, 
  output               [1:0] s_axi_bresp_o, 
  input                      s_axi_bready_i, 
                                                                      
  input     [ADDR_WIDTH-1:0] s_axi_araddr_i,
  input                      s_axi_arvalid_i, 
  output                     s_axi_arready_o, 
  input                [2:0] s_axi_arprot_i, 
                                                                      
  output    [DATA_WIDTH-1:0] s_axi_rdata_o,
  output                     s_axi_rvalid_o, 
  output               [1:0] s_axi_rresp_o, 
  input                      s_axi_rready_i, 
 
// Master AXI4-Lite Interface -------------------------------------
  output    [ADDR_WIDTH-1:0] m_axi_awaddr_o,
  output                     m_axi_awvalid_o, 
  input                      m_axi_awready_i, 
  output               [2:0] m_axi_awprot_o, 
  
  output    [DATA_WIDTH-1:0] m_axi_wdata_o,
  output    [STRB_WIDTH-1:0] m_axi_wstrb_o,
  output                     m_axi_wvalid_o, 
  input                      m_axi_wready_i, 

  input                      m_axi_bvalid_i, 
  input                [1:0] m_axi_bresp_i, 
  output                     m_axi_bready_o, 
                                                                      
  output    [ADDR_WIDTH-1:0] m_axi_araddr_o,
  output                     m_axi_arvalid_o, 
  input                      m_axi_arready_i, 
  output               [2:0] m_axi_arprot_o, 
                                                                      
  input     [DATA_WIDTH-1:0] m_axi_rdata_i,
  input                      m_axi_rvalid_i, 
  input                [1:0] m_axi_rresp_i, 
  output                     m_axi_rready_o,  
 
  input                [2:0] board_rev_pins_i,
  input                      rev_ctrl_val_i,
  input                      fpga_avg_ctrl_i 
);

//-----------------------------------------------------------------
//                      Local Parameters 
//-----------------------------------------------------------------
localparam REG_WIDTH = DATA_WIDTH;
localparam ADDR_WIDTH_L = 12;

//localparam BASE_ADDR                   = 5'b00000;
//localparam CFG_REG_CNT_ADDR            = BASE_ADDR + 5'd0;
//localparam CFG_REG_CFG_VAL_0_ADDR      = BASE_ADDR + 5'd1;
//localparam CFG_REG_CFG_VAL_1_ADDR      = BASE_ADDR + 5'd2;
//localparam CFG_REG_CFG_VAL_2_ADDR      = BASE_ADDR + 5'd3;
//localparam CFG_REG_CFG_VAL_3_ADDR      = BASE_ADDR + 5'd4;
//localparam CFG_REG_CFG_WR_ADDR_0_ADDR  = BASE_ADDR + 5'd5;
//localparam CFG_REG_CFG_WR_ADDR_1_ADDR  = BASE_ADDR + 5'd6;
//localparam CFG_REG_CFG_WR_ADDR_2_ADDR  = BASE_ADDR + 5'd7;
//localparam CFG_REG_CFG_WR_ADDR_3_ADDR  = BASE_ADDR + 5'd8;
//localparam CFG_REG_DATA_RD_ADDR_0_ADDR = BASE_ADDR + 5'd9;
//localparam CFG_REG_DATA_RD_ADDR_1_ADDR = BASE_ADDR + 5'd10;
//localparam CFG_REG_DATA_RD_ADDR_2_ADDR = BASE_ADDR + 5'd11;
//localparam CFG_REG_DATA_RD_ADDR_3_ADDR = BASE_ADDR + 5'd12;
//localparam CFG_REG_DATA_WR_ADDR_0_ADDR = BASE_ADDR + 5'd13;
//localparam CFG_REG_DATA_WR_ADDR_1_ADDR = BASE_ADDR + 5'd14;
//localparam CFG_REG_DATA_WR_ADDR_2_ADDR = BASE_ADDR + 5'd15;
//localparam CFG_REG_DATA_WR_ADDR_3_ADDR = BASE_ADDR + 5'd16;
//localparam CFG_REG_CTR_VAL_ADDR        = BASE_ADDR + 5'd17;
//localparam CFG_REG_CFG_DONE_ADDR       = BASE_ADDR + 5'd18;

localparam CFG_REG_CNT_ADDR            = 12'h000;
localparam CFG_REG_CFG_VAL_0_ADDR      = 12'h004;
localparam CFG_REG_CFG_VAL_1_ADDR      = 12'h008;
localparam CFG_REG_CFG_VAL_2_ADDR      = 12'h00C;
localparam CFG_REG_CFG_VAL_3_ADDR      = 12'h010;
localparam CFG_REG_CFG_WR_ADDR_0_ADDR  = 12'h014;
localparam CFG_REG_CFG_WR_ADDR_1_ADDR  = 12'h01C;
localparam CFG_REG_CFG_WR_ADDR_2_ADDR  = 12'h020;
localparam CFG_REG_CFG_WR_ADDR_3_ADDR  = 12'h024;
localparam CFG_REG_DATA_RD_ADDR_0_ADDR = 12'h028;
localparam CFG_REG_DATA_RD_ADDR_1_ADDR = 12'h02C;
localparam CFG_REG_DATA_RD_ADDR_2_ADDR = 12'h030;
localparam CFG_REG_DATA_RD_ADDR_3_ADDR = 12'h034;
localparam CFG_REG_DATA_WR_ADDR_0_ADDR = 12'h038;
localparam CFG_REG_DATA_WR_ADDR_1_ADDR = 12'h03C;
localparam CFG_REG_DATA_WR_ADDR_2_ADDR = 12'h040;
localparam CFG_REG_DATA_WR_ADDR_3_ADDR = 12'h044;
localparam CFG_REG_CTR_VAL_ADDR        = 12'h048;
localparam CFG_REG_CFG_DONE_ADDR       = 12'h04C;


// FSM States -----------------------------------------------------
localparam IDLE    = 6'b000001;
localparam CTR_ON  = 6'b000010;
localparam RD_DATA = 6'b000100;
localparam COMPUTE = 6'b001000;
localparam WR_CFG  = 6'b010000;
localparam WR_DATA = 6'b100000;

localparam IDLE_TRIG    = 2'b00;
localparam NO_TRIG      = 2'b01;
localparam TRIG         = 2'b10;
//-----------------------------------------------------------------
//                   Wire/Reg Declarations 
//-----------------------------------------------------------------
reg                       rst_dly;

reg                 [5:0] pre_state;
reg                 [5:0] next_state;

reg       [REG_WIDTH-1:0] cfg_cnt_r;         
reg       [REG_WIDTH-1:0] cfg_val_0_r;         
reg       [REG_WIDTH-1:0] cfg_val_1_r;         
reg       [REG_WIDTH-1:0] cfg_val_2_r;         
reg       [REG_WIDTH-1:0] cfg_val_3_r;         
reg       [REG_WIDTH-1:0] cfg_cfg_wr_addr_0_r;
reg       [REG_WIDTH-1:0] cfg_cfg_wr_addr_1_r;
reg       [REG_WIDTH-1:0] cfg_cfg_wr_addr_2_r;
reg       [REG_WIDTH-1:0] cfg_cfg_wr_addr_3_r;
reg       [REG_WIDTH-1:0] cfg_data_rd_addr_0_r;
reg       [REG_WIDTH-1:0] cfg_data_rd_addr_1_r;
reg       [REG_WIDTH-1:0] cfg_data_rd_addr_2_r;
reg       [REG_WIDTH-1:0] cfg_data_rd_addr_3_r;
reg       [REG_WIDTH-1:0] cfg_data_wr_addr_0_r;
reg       [REG_WIDTH-1:0] cfg_data_wr_addr_1_r;
reg       [REG_WIDTH-1:0] cfg_data_wr_addr_2_r;
reg       [REG_WIDTH-1:0] cfg_data_wr_addr_3_r;
reg       [REG_WIDTH-1:0] cfg_ctr_val_r;
reg       [REG_WIDTH-1:0] cfg_cfg_done_r;

wire                [3:0] cfg_reg_cnt;
wire                [3:0] data_reg_cnt;
wire      [REG_WIDTH-1:0] cfg_val_0;         
wire      [REG_WIDTH-1:0] cfg_val_1;         
wire      [REG_WIDTH-1:0] cfg_val_2;         
wire      [REG_WIDTH-1:0] cfg_val_3;         
wire      [REG_WIDTH-1:0] cfg_wr_addr_0;
wire      [REG_WIDTH-1:0] cfg_wr_addr_1;
wire      [REG_WIDTH-1:0] cfg_wr_addr_2;
wire      [REG_WIDTH-1:0] cfg_wr_addr_3;
wire      [REG_WIDTH-1:0] data_rd_addr_0;
wire      [REG_WIDTH-1:0] data_rd_addr_1;
wire      [REG_WIDTH-1:0] data_rd_addr_2;
wire      [REG_WIDTH-1:0] data_rd_addr_3;
wire      [REG_WIDTH-1:0] data_wr_addr_0;
wire      [REG_WIDTH-1:0] data_wr_addr_1;
wire      [REG_WIDTH-1:0] data_wr_addr_2;
wire      [REG_WIDTH-1:0] data_wr_addr_3;
wire      [REG_WIDTH-1:0] ctr_val_max;

reg      [REG_WIDTH-1:0] s_axi_rdata_o_r;

wire                      cfg_done;
wire                      rd_data_valid_c;
wire                      avg_data_valid_c;
wire      [REG_WIDTH-1:0] rd_data_c;
wire      [REG_WIDTH-1:0] avg_data_c;
wire                      rd_data_valid_v;
wire                      avg_data_valid_v;
wire      [REG_WIDTH-1:0] rd_data_v;
wire      [REG_WIDTH-1:0] avg_data_v;

reg       [REG_WIDTH-1:0] data_reg_0_r;
reg       [REG_WIDTH-1:0] data_reg_1_r;
reg       [REG_WIDTH-1:0] data_reg_2_r;
reg       [REG_WIDTH-1:0] data_reg_3_r;
reg       [REG_WIDTH-1:0] data_reg_4_r;
reg       [REG_WIDTH-1:0] rd_data_c_r;
reg       [REG_WIDTH-1:0] rd_data_v_r;
reg       [REG_WIDTH-1:0] avg_data_c_r;
reg       [REG_WIDTH-1:0] avg_data_v_r;

wire                      state_idle;     
wire                      state_ctr_on;
wire                      state_rd_data;
wire                      state_compute;   
wire                      state_wr_cfg;
wire                      state_wr_data;

wire                      cnt_val_max;
wire                      compute_done;
reg       [REG_WIDTH-1:0] compute_in_val;
wire                [9:0] mult_in_a;
reg                [19:0] mult_in_b;
reg                [19:0] mul_cur_in_r;
reg                [19:0] mul_vol_in_r;
wire               [29:0] mult_out;
reg                [29:0] mult_out_r;
wire               [29:0] subt_out;
wire                      rd_done;
wire                      cfg_wr_done;
wire                      data_wr_done;

wire      [REG_WIDTH-1:0] ctr_max_val;
reg       [REG_WIDTH-1:0] data_rd_timeout_ctr;
reg                 [3:0] num_data_rd_ctr; 
reg                 [3:0] data_comp_ctr; 
reg                       toggle_bit; 
reg                 [3:0] num_cfg_wr_ctr; 
reg                 [3:0] num_data_wr_ctr; 

reg      [ADDR_WIDTH-1:0] s_axi_awaddr_r;
reg                       s_axi_awready_r;
reg                       s_axi_wready_r;
reg                       s_axi_bvalid_r;
reg                       m_axi_arvalid_r;
reg                       m_axi_rready_r;
reg                       m_axi_awvalid_r;
reg                       m_axi_wvalid_r;
reg                       m_axi_bready_r;

reg                       auto_trigger_dd;
reg     [1:0]             auto_trigger_state;
reg     [22:0]            auto_trigger_cnt;

reg      [ADDR_WIDTH-1:0] m_axi_araddr;
reg      [ADDR_WIDTH-1:0] m_axi_awaddr;
reg      [DATA_WIDTH-1:0] m_axi_wdata;

wire                      cfg_wr_addr_req;
wire                      cfg_wr_req;
wire                      data_rd_addr_req;
wire                      data_rd_req;
wire                      data_wr_addr_req;
wire                      data_wr_req;
wire                      cfg_wr_resp;
wire                      data_wr_resp;

reg [ADDR_WIDTH_L-1:0] 	wr_addr_r;
reg [ADDR_WIDTH_L-1:0] 	rd_addr_r;
reg 	wr_req_r	= 1'b0;
reg 	rd_req_r	= 1'b0;
reg 	s_axi_bvalid_i 	= 1'b0;
reg 	s_axi_rvalid_i 	= 1'b0;
reg 	rvalid_delayed;

// Register addressing
localparam RW_REG1_ADDR 		= 12'h050;
localparam RW_REG2_ADDR 		= 12'h054;
localparam RW_REG3_ADDR 		= 12'h058;
localparam RW_REG4_ADDR 		= 12'h05C;
localparam RW_REG5_ADDR 		= 12'h060;
localparam RW_REG6_ADDR 		= 12'h064;
localparam RW_REG7_ADDR 		= 12'h068;
localparam RW_REG8_ADDR 		= 12'h06C;
localparam RW_REG9_ADDR 		= 12'h070;
localparam RW_REG10_ADDR 		= 12'h074;

reg [31:0]	reg1_data;
reg [31:0]	reg2_data;
reg [31:0]	reg3_data;
reg [31:0]	reg4_data;
reg [31:0]	reg5_data;
reg [31:0]	reg6_data;
reg [31:0]	reg7_data;
reg [31:0]	reg8_data;
reg [31:0]	reg9_data;
reg [31:0]	reg10_data;



//-----------------------------------------------------------------
//                        Module Logic 
//-----------------------------------------------------------------

// Reset Delay Logic ----------------------------------------------
//-----------------------------------------------------------------
// - Xilinx recommends that slaves drive all READY outputs low
//   during reset to avoid dropping a transfer in case the connected
//   master recovers from reset during an earlier cycle.
//
// - Xilinx recommends that masters drive all READY outputs low
//   during reset.
//
//   https://www.xilinx.com/support/documentation/ip_documentation/axi_protocol_checker/v2_0/pg101-axi-protocol-checker.pdf
//-----------------------------------------------------------------
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    rst_dly <= 1'b0;
  end else begin
    rst_dly <= 1'b1;
  end
end

// Logic to auto trigger after 100ms of posedge of the reset
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    auto_trigger_dd    <= 1'b0;
    auto_trigger_cnt   <= 23'd0;
    auto_trigger_state <= IDLE_TRIG;
  end else begin
    case (auto_trigger_state)
	IDLE_TRIG:
	 begin
    	   auto_trigger_state 	 <= NO_TRIG;
    	   auto_trigger_cnt   	 <= 23'd0;
	 end
	NO_TRIG:
	 begin
	  auto_trigger_cnt 	 <= auto_trigger_cnt + 1'b1;
          if (auto_trigger_cnt == 23'h7A120) begin
    	   auto_trigger_state 	 <= TRIG;
	  end else begin
    	   auto_trigger_state 	 <= NO_TRIG;
	  end
	 end
	TRIG:
	 begin
	   auto_trigger_dd    	 <= 1'b1;
    	   auto_trigger_state 	 <= TRIG;
	 end
	default:
	 begin
    	  auto_trigger_state 	<= IDLE_TRIG;
	 end
    endcase
  end
 end

// Top Level FSM --------------------------------------------------
always @(*) begin
  next_state = IDLE;

  case (pre_state)

    IDLE:         if (cfg_done && cfg_wr_resp && !auto_trigger_dd) begin
                    next_state = CTR_ON;  
                  end else if (auto_trigger_dd) begin
                    next_state = CTR_ON;  
                  end else begin 
                    next_state = IDLE;
                  end

    CTR_ON:       if (cnt_val_max) begin
                    next_state = RD_DATA;
                  end else begin
                    next_state = CTR_ON;
                  end
   
    RD_DATA:      if (rd_done) begin
                    next_state = COMPUTE;  
                  end else begin
                    next_state = RD_DATA;
                  end

    COMPUTE:      if (compute_done) begin 
                    next_state = WR_CFG;
                  end else begin
                    next_state = COMPUTE;
                  end

    WR_CFG:       if (cfg_wr_done) begin
                    next_state = WR_DATA;  
                  end else begin
                    next_state = WR_CFG;
                  end

    WR_DATA:      if (data_wr_done) begin
                    next_state = CTR_ON;  
                  end else begin
                    next_state = WR_DATA;
                  end

    default:      next_state = IDLE;
  
  endcase
end  

// FSM Present State Register -------------------------------------
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    pre_state <= IDLE;
  end else begin
    pre_state <= next_state;
  end
end

// FSM Based Control Generation -----------------------------------
assign state_idle       = (pre_state == IDLE)    ? 1'b1 : 1'b0;
assign state_ctr_on     = (pre_state == CTR_ON)  ? 1'b1 : 1'b0;
assign state_rd_data    = (pre_state == RD_DATA) ? 1'b1 : 1'b0;
assign state_compute    = (pre_state == COMPUTE) ? 1'b1 : 1'b0;
assign state_wr_cfg     = (pre_state == WR_CFG)  ? 1'b1 : 1'b0;
assign state_wr_data    = (pre_state == WR_DATA) ? 1'b1 : 1'b0;

assign cfg_wr_addr_req  = s_axi_awvalid_i && s_axi_awready_o; 
assign cfg_wr_req       = s_axi_wvalid_i  && s_axi_wready_o; 
assign cfg_wr_resp      = s_axi_bvalid_o  && s_axi_bready_i;
assign data_rd_addr_req = m_axi_arvalid_o && m_axi_arready_i;
assign data_rd_req      = m_axi_rvalid_i  && m_axi_rready_o;
assign data_wr_addr_req = m_axi_awvalid_o && m_axi_awready_i;
assign data_wr_req      = m_axi_wvalid_o  && m_axi_wready_i;
assign data_wr_resp     = m_axi_bvalid_i  && m_axi_bready_o;

assign cnt_val_max      = (data_rd_timeout_ctr == ctr_val_max) ? 1'b1 : 1'b0; 
assign rd_done          = ((num_data_rd_ctr == (data_reg_cnt-4'b1)) && data_rd_req) ? 1'b1 : 1'b0; // use rresp? 
assign compute_done     = ((data_comp_ctr == (data_reg_cnt-4'b1)) && toggle_bit) ? 1'b1 : 1'b0; 
assign cfg_wr_done      = ((num_cfg_wr_ctr == (cfg_reg_cnt-4'b1)) && data_wr_resp) ? 1'b1 : 1'b0;
assign data_wr_done     = ((num_data_wr_ctr == (data_reg_cnt-4'b1)) && data_wr_resp) ? 1'b1 : 1'b0;

// Register Interface Config Values -------------------------------
assign cfg_reg_cnt    = cfg_cnt_r[7:4];
assign data_reg_cnt   = cfg_cnt_r[3:0];
assign cfg_val_0      = cfg_val_0_r;                          
assign cfg_val_1      = cfg_val_1_r;         
assign cfg_val_2      = cfg_val_2_r;         
assign cfg_val_3      = cfg_val_3_r;         
assign cfg_wr_addr_0  = cfg_cfg_wr_addr_0_r;
assign cfg_wr_addr_1  = cfg_cfg_wr_addr_1_r;
assign cfg_wr_addr_2  = cfg_cfg_wr_addr_2_r;
assign cfg_wr_addr_3  = cfg_cfg_wr_addr_3_r;
assign data_rd_addr_0 = cfg_data_rd_addr_0_r;
assign data_rd_addr_1 = cfg_data_rd_addr_1_r;
assign data_rd_addr_2 = cfg_data_rd_addr_2_r;
assign data_rd_addr_3 = cfg_data_rd_addr_3_r;
assign data_wr_addr_0 = cfg_data_wr_addr_0_r;
assign data_wr_addr_1 = cfg_data_wr_addr_1_r;
assign data_wr_addr_2 = cfg_data_wr_addr_2_r;
assign data_wr_addr_3 = cfg_data_wr_addr_3_r;
assign ctr_val_max    = cfg_ctr_val_r;
assign cfg_done       = cfg_cfg_done_r[0]; 

// Config Register Update -----------------------------------------
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    cfg_cnt_r            <= {24'b0,CFG_REG_USE[3:0],DATA_REG_USE[3:0]};
    cfg_val_0_r          <= CFG_REG_VAL_0;
    cfg_val_1_r          <= CFG_REG_VAL_1;
    cfg_val_2_r          <= CFG_REG_VAL_2;
    cfg_val_3_r          <= CFG_REG_VAL_3;
    cfg_cfg_wr_addr_0_r  <= CFG_REG_CFG_WR_ADDR_0;
    cfg_cfg_wr_addr_1_r  <= CFG_REG_CFG_WR_ADDR_1;
    cfg_cfg_wr_addr_2_r  <= CFG_REG_CFG_WR_ADDR_2;
    cfg_cfg_wr_addr_3_r  <= CFG_REG_CFG_WR_ADDR_3;
    cfg_data_rd_addr_0_r <= CFG_REG_DATA_RD_ADDR_0;
    cfg_data_rd_addr_1_r <= CFG_REG_DATA_RD_ADDR_1;
    cfg_data_rd_addr_2_r <= CFG_REG_DATA_RD_ADDR_2;
    cfg_data_rd_addr_3_r <= CFG_REG_DATA_RD_ADDR_3;
    cfg_data_wr_addr_0_r <= CFG_REG_DATA_WR_ADDR_0;
    cfg_data_wr_addr_1_r <= CFG_REG_DATA_WR_ADDR_1;
    cfg_data_wr_addr_2_r <= CFG_REG_DATA_WR_ADDR_2;
    cfg_data_wr_addr_3_r <= CFG_REG_DATA_WR_ADDR_3;
    cfg_ctr_val_r        <= CFG_REG_CTR_VAL;
    cfg_cfg_done_r       <= {REG_WIDTH{1'b0}};
//  end else if (cfg_wr_req) begin             
    end else if(wr_req_r && s_axi_wvalid_i && ~s_axi_bvalid_i) begin
      case (wr_addr_r) 
//    case (s_axi_awaddr_r[4:0])
      CFG_REG_CNT_ADDR            : cfg_cnt_r            <= s_axi_wdata_i;  
      CFG_REG_CFG_VAL_0_ADDR      : cfg_val_0_r          <= s_axi_wdata_i; 
      CFG_REG_CFG_VAL_1_ADDR      : cfg_val_1_r          <= s_axi_wdata_i; 
      CFG_REG_CFG_VAL_2_ADDR      : cfg_val_2_r          <= s_axi_wdata_i; 
      CFG_REG_CFG_VAL_3_ADDR      : cfg_val_3_r          <= s_axi_wdata_i; 
      CFG_REG_CFG_WR_ADDR_0_ADDR  : cfg_cfg_wr_addr_0_r  <= s_axi_wdata_i; 
      CFG_REG_CFG_WR_ADDR_1_ADDR  : cfg_cfg_wr_addr_1_r  <= s_axi_wdata_i; 
      CFG_REG_CFG_WR_ADDR_2_ADDR  : cfg_cfg_wr_addr_2_r  <= s_axi_wdata_i; 
      CFG_REG_CFG_WR_ADDR_3_ADDR  : cfg_cfg_wr_addr_3_r  <= s_axi_wdata_i; 
      CFG_REG_DATA_RD_ADDR_0_ADDR : cfg_data_rd_addr_0_r <= s_axi_wdata_i; 
      CFG_REG_DATA_RD_ADDR_1_ADDR : cfg_data_rd_addr_1_r <= s_axi_wdata_i; 
      CFG_REG_DATA_RD_ADDR_2_ADDR : cfg_data_rd_addr_2_r <= s_axi_wdata_i; 
      CFG_REG_DATA_RD_ADDR_3_ADDR : cfg_data_rd_addr_3_r <= s_axi_wdata_i; 
      CFG_REG_DATA_WR_ADDR_0_ADDR : cfg_data_wr_addr_0_r <= s_axi_wdata_i; 
      CFG_REG_DATA_WR_ADDR_1_ADDR : cfg_data_wr_addr_1_r <= s_axi_wdata_i; 
      CFG_REG_DATA_WR_ADDR_2_ADDR : cfg_data_wr_addr_2_r <= s_axi_wdata_i; 
      CFG_REG_DATA_WR_ADDR_3_ADDR : cfg_data_wr_addr_3_r <= s_axi_wdata_i; 
      CFG_REG_CTR_VAL_ADDR        : cfg_ctr_val_r        <= s_axi_wdata_i; 
      CFG_REG_CFG_DONE_ADDR       : cfg_cfg_done_r       <= s_axi_wdata_i; 
    endcase
  end else begin
    cfg_cnt_r            <= cfg_cnt_r;
    cfg_val_0_r          <= cfg_val_0_r;
    cfg_val_1_r          <= cfg_val_1_r;
    cfg_val_2_r          <= cfg_val_2_r;
    cfg_val_3_r          <= cfg_val_3_r;
    cfg_cfg_wr_addr_0_r  <= cfg_cfg_wr_addr_0_r;
    cfg_cfg_wr_addr_1_r  <= cfg_cfg_wr_addr_1_r;
    cfg_cfg_wr_addr_2_r  <= cfg_cfg_wr_addr_2_r;
    cfg_cfg_wr_addr_3_r  <= cfg_cfg_wr_addr_3_r;
    cfg_data_rd_addr_0_r <= cfg_data_rd_addr_0_r;
    cfg_data_rd_addr_1_r <= cfg_data_rd_addr_1_r;
    cfg_data_rd_addr_2_r <= cfg_data_rd_addr_2_r;
    cfg_data_rd_addr_3_r <= cfg_data_rd_addr_3_r;
    cfg_data_wr_addr_0_r <= cfg_data_wr_addr_0_r;
    cfg_data_wr_addr_1_r <= cfg_data_wr_addr_1_r;
    cfg_data_wr_addr_2_r <= cfg_data_wr_addr_2_r;
    cfg_data_wr_addr_3_r <= cfg_data_wr_addr_3_r;
    cfg_ctr_val_r        <= cfg_ctr_val_r;
    cfg_cfg_done_r       <= cfg_cfg_done_r;
  end
end

// Read Request Counter -------------------------------------------
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    data_rd_timeout_ctr <= 'b0;
  end else if (state_ctr_on && ~ctr_val_max) begin
    data_rd_timeout_ctr <= data_rd_timeout_ctr + 'b1;
  end else begin
    data_rd_timeout_ctr <= 'b0;
  end
end

// M-AXI Read Counter ---------------------------------------------
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    num_data_rd_ctr <= 'b0;
  end else if (state_rd_data && data_rd_req && ~rd_done) begin
    num_data_rd_ctr <= num_data_rd_ctr + 'b1;
  end else if (state_rd_data) begin
    num_data_rd_ctr <= num_data_rd_ctr;
  end else begin
    num_data_rd_ctr <= 'b0;
  end
end

// Computation Counter --------------------------------------------
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    data_comp_ctr <= 'b0;
  end else if (state_compute && toggle_bit && ~compute_done) begin
    data_comp_ctr <= data_comp_ctr + 'b1;
  end else if (state_compute && ~toggle_bit && ~compute_done) begin
    data_comp_ctr <= data_comp_ctr;
  end else begin
    data_comp_ctr <= 'b0;
  end
end

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    toggle_bit <= 1'b0;
  end else if (state_compute) begin
    toggle_bit <= ~toggle_bit;
  end else begin
    toggle_bit <= 1'b0;
  end
end

// M-AXI Write Counters -------------------------------------------
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    num_cfg_wr_ctr <= 'b0;
  end else if (state_wr_cfg && data_wr_resp && ~cfg_wr_done) begin
    num_cfg_wr_ctr <= num_cfg_wr_ctr + 'b1;
  end else if (state_wr_cfg) begin
    num_cfg_wr_ctr <= num_cfg_wr_ctr;
  end else begin
    num_cfg_wr_ctr <= 'b0;
  end
end

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    num_data_wr_ctr <= 'b0;
  end else if (state_wr_data && data_wr_resp && ~data_wr_done) begin
    num_data_wr_ctr <= num_data_wr_ctr + 'b1;
  end else if (state_wr_data) begin
    num_data_wr_ctr <= num_data_wr_ctr;
  end else begin
    num_data_wr_ctr <= 'b0;
  end
end

// Data Register Update -------------------------------------------
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    data_reg_0_r 	<= 'h0;
    data_reg_1_r 	<= 'h0;
    data_reg_2_r 	<= 'h0;
    data_reg_3_r 	<= 'h0;
    data_reg_4_r 	<= 'h0;
    rd_data_c_r 	<= 'h0;
    rd_data_v_r 	<= 'h0;
  end else if (data_rd_req) begin
    case (num_data_rd_ctr)
      4'b0000 : begin 
		data_reg_0_r 	  <= m_axi_rdata_i;
		rd_data_c_r 	  <= data_reg_0_r;
		end
      4'b0001 : data_reg_1_r <= m_axi_rdata_i;
      4'b0010 : data_reg_2_r <= m_axi_rdata_i;
      4'b0011 : begin 
		data_reg_3_r 	  <= m_axi_rdata_i;
		rd_data_v_r 	  <= data_reg_3_r;
		end
      4'b0011 : data_reg_3_r <= m_axi_rdata_i;
      default : data_reg_4_r <= m_axi_rdata_i;
    endcase
  end else if (state_compute & toggle_bit) begin
    case (data_comp_ctr)
      4'b0000 : data_reg_0_r <= {20'h0,mult_out_r[21:10]};
      4'b0001 : data_reg_1_r <= {22'h0,subt_out[29:20]};
      4'b0010 : data_reg_2_r <= {22'h0,subt_out[29:20]};
      4'b0011 : data_reg_3_r <= (board_rev_pins_i[2:0] == 3'b111) ? {32'h00002EE0} : {18'h0,mult_out_r[23:10]};
      default : data_reg_4_r <= {20'h0,mult_out_r[21:10]};      
    endcase
  end else begin
    data_reg_0_r <= data_reg_0_r;
    data_reg_1_r <= data_reg_1_r;
    data_reg_2_r <= data_reg_2_r;
    data_reg_3_r <= data_reg_3_r;
    data_reg_4_r <= data_reg_4_r;
  end
end

assign rd_data_valid_c  = (data_rd_req && (num_data_rd_ctr == 4'd0)) ? 1'b1 : 1'b0;
assign rd_data_c 	= (data_rd_req && (num_data_rd_ctr == 4'd0)) ? m_axi_rdata_i[15:0] :rd_data_c_r[15:0];

assign rd_data_valid_v  = (data_rd_req && (num_data_rd_ctr == 4'd3)) ? 1'b1 : 1'b0;
assign rd_data_v 	= (data_rd_req && (num_data_rd_ctr == 4'd3)) ? m_axi_rdata_i[15:0] :rd_data_v_r[15:0];

// AXI-Lite Interface Signals -------------------------------------
// S-AXI Write Channel --------------------------------------------
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    s_axi_awaddr_r <= 'b0;
  end else if (cfg_wr_addr_req) begin
    s_axi_awaddr_r <= s_axi_awaddr_i;  
  end else begin
    s_axi_awaddr_r <= s_axi_awaddr_r;
  end
end

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    s_axi_awready_r <= 1'b1;
  end else if (cfg_wr_addr_req) begin
    s_axi_awready_r <= 1'b0;  
  end else if (cfg_wr_resp && ~cfg_done) begin
    s_axi_awready_r <= 1'b1;  
  end else begin
    s_axi_awready_r <= s_axi_awready_r;
  end
end

//assign s_axi_awready_o = s_axi_awready_r & rst_dly;

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    s_axi_wready_r <= 1'b0;
  end else if (cfg_wr_addr_req) begin
    s_axi_wready_r <= 1'b1;  
  end else if (cfg_wr_req) begin
    s_axi_wready_r <= 1'b0;  
  end else begin
    s_axi_wready_r <= s_axi_wready_r;
  end
end

// assign s_axi_wready_o = s_axi_wready_r & rst_dly;
// assign s_axi_bresp_o  = 2'b00; 

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    s_axi_bvalid_r <= 1'b0;
  end else if (cfg_wr_req) begin
    s_axi_bvalid_r <= 1'b1;  
  end else if (cfg_wr_resp) begin
    s_axi_bvalid_r <= 1'b0;  
  end else begin
    s_axi_bvalid_r <= s_axi_bvalid_r;
  end
end

// assign s_axi_bvalid_o = s_axi_bvalid_r;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// capture the write request and address
  always @(posedge clk_i)
  begin
    if(~rst_n_i)begin
        wr_req_r    <= 1'b0;
        wr_addr_r   <= 'h0;
    end else begin
      if(s_axi_awvalid_i && s_axi_awready_o) begin
          wr_req_r  <= 1'b1;
          wr_addr_r <= s_axi_awaddr_i;
      end else if (s_axi_bvalid_i && s_axi_bready_i) begin
          wr_req_r  <= 1'b0;
          wr_addr_r <= 'h0;
      end else begin
          wr_req_r  <= wr_req_r;
          wr_addr_r <= wr_addr_r;
      end
    end
  end

// capture the read request and address
  always @(posedge clk_i)
  begin
    if(~rst_n_i)begin
      rd_req_r    <= 1'b0;
      rd_addr_r   <= 'h0;
    end else begin
      if(s_axi_arvalid_i && s_axi_arready_o) begin
        rd_req_r  <= 1'b1;
        rd_addr_r <= s_axi_araddr_i;
      end else if (s_axi_rvalid_i && s_axi_rready_i) begin
        rd_req_r  <= 1'b0;
        rd_addr_r <= rd_addr_r;
      end else begin
        rd_req_r  <= rd_req_r;
        rd_addr_r <= rd_addr_r;
      end
    end
  end

// Updating the registers

  always @(posedge clk_i)
  begin
    if(~rst_n_i) begin
       reg1_data    	    <= 32'h00000000;
       reg2_data    	    <= 32'h00000000;
       reg3_data    	    <= 32'h00000000;
       reg4_data    	    <= 32'h00000000;
       reg5_data    	    <= 32'h00000000;
       reg6_data    	    <= 32'h00000000;
       reg7_data    	    <= 32'h00000000;
       reg8_data    	    <= 32'h00000000;
       reg9_data    	    <= 32'h00000000;
       reg10_data    	    <= 32'h00000000;
     end else begin
       reg1_data    	    <= data_reg_0_r;
       reg2_data    	    <= data_reg_1_r;
       reg3_data    	    <= data_reg_2_r;
       reg4_data    	    <= data_reg_3_r;
       reg5_data    	    <= {2'b00,auto_trigger_state,1'b0,auto_trigger_cnt,3'h0,auto_trigger_dd};
       reg6_data    	    <= compute_in_val;
       reg7_data    	    <= data_rd_timeout_ctr;
       reg8_data    	    <= {state_wr_data,state_wr_cfg,state_compute,state_rd_data,state_ctr_on,state_idle,data_wr_resp,data_wr_req,data_wr_addr_req,data_rd_req,data_rd_addr_req,cfg_wr_req,cfg_wr_addr_req,cfg_wr_resp,toggle_bit,pre_state,next_state,rd_done,compute_done,cfg_wr_done,data_wr_done,cfg_done};
       reg9_data    	    <= {8'h00,data_reg_cnt,cfg_reg_cnt,num_data_wr_ctr,num_cfg_wr_ctr,data_comp_ctr,num_data_rd_ctr};
       reg10_data    	    <= {mult_in_b,3'h0,cnt_val_max,s_axi_awready_r,s_axi_wready_r,s_axi_bvalid_r,m_axi_arvalid_r,m_axi_rready_r,m_axi_awvalid_r,m_axi_wvalid_r,m_axi_bready_r};
      if(wr_req_r && s_axi_wvalid_i && ~s_axi_bvalid_i) begin
        case (wr_addr_r) 
          RW_REG1_ADDR: begin
            reg1_data     	 <= s_axi_wdata_i;
          end
          RW_REG2_ADDR: begin
            reg2_data     	 <= s_axi_wdata_i;
          end
          RW_REG3_ADDR: begin
            reg3_data     	 <= s_axi_wdata_i;
          end
          RW_REG4_ADDR: begin
            reg4_data     	 <= s_axi_wdata_i;
          end
          RW_REG5_ADDR: begin
            reg5_data     	 <= s_axi_wdata_i;
          end
          RW_REG6_ADDR: begin
            reg6_data     	 <= s_axi_wdata_i;
          end
          RW_REG7_ADDR: begin
            reg7_data     	 <= s_axi_wdata_i;
          end
          RW_REG8_ADDR: begin
            reg8_data     	 <= s_axi_wdata_i;
          end
          RW_REG9_ADDR: begin
            reg9_data     	 <= s_axi_wdata_i;
          end
          RW_REG10_ADDR: begin
            reg10_data     	 <= s_axi_wdata_i;
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(posedge clk_i)
  begin
    if(~rst_n_i) begin
        s_axi_bvalid_i 	<= 1'b0;
    end else begin
      if(wr_req_r && s_axi_wvalid_i && ~s_axi_bvalid_i) begin
          s_axi_bvalid_i 	<= 1'b1;
      end else if(s_axi_bready_i) begin
          s_axi_bvalid_i 	<= 1'b0;
      end else begin
          s_axi_bvalid_i 	<= s_axi_bvalid_i;
      end
    end
  end

  always @(posedge clk_i)
  begin
    if(~rst_n_i)begin
        s_axi_rvalid_i 	<= 1'b0;
        s_axi_rdata_o_r  	<= 32'd0;
        rvalid_delayed 		<= 1'b0;
    end else begin
      if(rd_req_r) begin
        if(s_axi_rvalid_i && s_axi_rready_i ) begin
            s_axi_rvalid_i <= 1'b0;
            rvalid_delayed 	<= 1'b0;
        end else begin
            s_axi_rvalid_i <= rvalid_delayed;
            rvalid_delayed 	<= 1'b1;
        end
        if(~s_axi_rvalid_i) begin
          case (rd_addr_r) 
      	    CFG_REG_CNT_ADDR            : s_axi_rdata_o_r <= cfg_cnt_r           ;  
      	    CFG_REG_CFG_VAL_0_ADDR      : s_axi_rdata_o_r <= cfg_val_0_r         ; 
      	    CFG_REG_CFG_VAL_1_ADDR      : s_axi_rdata_o_r <= cfg_val_1_r         ; 
      	    CFG_REG_CFG_VAL_2_ADDR      : s_axi_rdata_o_r <= cfg_val_2_r         ; 
      	    CFG_REG_CFG_VAL_3_ADDR      : s_axi_rdata_o_r <= cfg_val_3_r         ; 
      	    CFG_REG_CFG_WR_ADDR_0_ADDR  : s_axi_rdata_o_r <= cfg_cfg_wr_addr_0_r ; 
      	    CFG_REG_CFG_WR_ADDR_1_ADDR  : s_axi_rdata_o_r <= cfg_cfg_wr_addr_1_r ; 
      	    CFG_REG_CFG_WR_ADDR_2_ADDR  : s_axi_rdata_o_r <= cfg_cfg_wr_addr_2_r ; 
      	    CFG_REG_CFG_WR_ADDR_3_ADDR  : s_axi_rdata_o_r <= cfg_cfg_wr_addr_3_r ; 
      	    CFG_REG_DATA_RD_ADDR_0_ADDR : s_axi_rdata_o_r <= cfg_data_rd_addr_0_r; 
      	    CFG_REG_DATA_RD_ADDR_1_ADDR : s_axi_rdata_o_r <= cfg_data_rd_addr_1_r; 
      	    CFG_REG_DATA_RD_ADDR_2_ADDR : s_axi_rdata_o_r <= cfg_data_rd_addr_2_r; 
      	    CFG_REG_DATA_RD_ADDR_3_ADDR : s_axi_rdata_o_r <= cfg_data_rd_addr_3_r; 
      	    CFG_REG_DATA_WR_ADDR_0_ADDR : s_axi_rdata_o_r <= cfg_data_wr_addr_0_r; 
      	    CFG_REG_DATA_WR_ADDR_1_ADDR : s_axi_rdata_o_r <= cfg_data_wr_addr_1_r; 
      	    CFG_REG_DATA_WR_ADDR_2_ADDR : s_axi_rdata_o_r <= cfg_data_wr_addr_2_r; 
      	    CFG_REG_DATA_WR_ADDR_3_ADDR : s_axi_rdata_o_r <= cfg_data_wr_addr_3_r; 
      	    CFG_REG_CTR_VAL_ADDR        : s_axi_rdata_o_r <= cfg_ctr_val_r       ; 
      	    CFG_REG_CFG_DONE_ADDR       : s_axi_rdata_o_r <= cfg_cfg_done_r      ; 
            RW_REG1_ADDR         : begin
              s_axi_rdata_o_r 	<= reg1_data;
            end
            RW_REG2_ADDR         : begin
              s_axi_rdata_o_r 	<= reg2_data;
            end
            RW_REG3_ADDR         : begin
              s_axi_rdata_o_r 	<= reg3_data;
            end
            RW_REG4_ADDR         : begin
              s_axi_rdata_o_r 	<= reg4_data;
            end
            RW_REG5_ADDR         : begin
              s_axi_rdata_o_r 	<= reg5_data;
            end
            RW_REG6_ADDR         : begin
              s_axi_rdata_o_r 	<= reg6_data;
            end
            RW_REG7_ADDR         : begin
              s_axi_rdata_o_r 	<= reg7_data;
            end
            RW_REG8_ADDR         : begin
              s_axi_rdata_o_r 	<= reg8_data;
            end
            RW_REG9_ADDR         : begin
              s_axi_rdata_o_r 	<= reg9_data;
            end
            RW_REG10_ADDR         : begin
              s_axi_rdata_o_r 	<= reg10_data;
            end
            default : begin
              s_axi_rdata_o_r 	<= 32'hDEADBEEF;
            end
          endcase
        end
      end
    end
  end

  assign s_axi_bresp_o   = 2'b00;
  assign s_axi_awready_o = (((~wr_req_r) && (!(rd_req_r || s_axi_arvalid_i))) && rst_dly) || (s_axi_awready_r & rst_dly) ;
  assign s_axi_rresp_o   = 2'b00;
  assign s_axi_wready_o  = (wr_req_r && ~s_axi_bvalid_i) || (s_axi_wready_r & rst_dly) ;
  assign s_axi_arready_o = ~rd_req_r && ~wr_req_r && rst_dly;
  assign s_axi_bvalid_o  = s_axi_bvalid_i || s_axi_bvalid_r;
  assign s_axi_rvalid_o  = s_axi_rvalid_i;
  assign s_axi_rdata_o   = s_axi_rdata_o_r;


/////////////////////////////////////////////////////////////////////////////////////////////////////

// S-AXI Read Channel ---------------------------------------------
//assign s_axi_arready_o = 'b0; 
//assign s_axi_rdata_o   = 'b0;
//assign s_axi_rvalid_o  = 'b0; 
//assign s_axi_rresp_o   = 'b0; 

// M-AXI Read Channel ---------------------------------------------
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    m_axi_arvalid_r <= 1'b0;
  end else if (cnt_val_max || (cfg_done && cfg_wr_resp && !auto_trigger_dd) || (state_idle && auto_trigger_dd) || data_rd_req) begin
    m_axi_arvalid_r <= 1'b1;  
  end else if (data_rd_addr_req) begin
    m_axi_arvalid_r <= 1'b0;  
  end else begin
    m_axi_arvalid_r <= m_axi_arvalid_r;
  end
end

assign m_axi_arvalid_o = m_axi_arvalid_r && state_rd_data;

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    m_axi_rready_r <= 1'b0;
  end else if (data_rd_addr_req) begin
    m_axi_rready_r <= 1'b1;  
  end else if (data_rd_req) begin
    m_axi_rready_r <= 1'b0;  
  end else begin
    m_axi_rready_r <= m_axi_rready_r;
  end
end

assign m_axi_rready_o = m_axi_rready_r & rst_dly;

always @(*) begin
  if (m_axi_arvalid_o) begin
    case (num_data_rd_ctr)
      4'b0000 : m_axi_araddr = data_rd_addr_0;
      4'b0001 : m_axi_araddr = data_rd_addr_1;
      4'b0010 : m_axi_araddr = data_rd_addr_2;
      4'b0011 : m_axi_araddr = data_rd_addr_3;
      default : m_axi_araddr = data_rd_addr_0;      
    endcase
  end else begin
    m_axi_araddr = 'b0;
  end
end

assign m_axi_araddr_o = m_axi_araddr;

assign m_axi_arprot_o = 3'b000;

// M-AXI Write Channel --------------------------------------------
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    m_axi_awvalid_r <= 1'b0;
  end else if (compute_done || data_wr_resp) begin 
    m_axi_awvalid_r <= 1'b1;  
  end else if (data_wr_addr_req) begin
    m_axi_awvalid_r <= 1'b0;  
  end else begin
    m_axi_awvalid_r <= m_axi_awvalid_r;
  end
end

assign m_axi_awvalid_o = m_axi_awvalid_r && (state_wr_cfg || state_wr_data);

always @(*) begin
  if (m_axi_awvalid_o && state_wr_cfg) begin
    case (num_cfg_wr_ctr)
      4'b0000 : m_axi_awaddr = cfg_wr_addr_0;
      4'b0001 : m_axi_awaddr = cfg_wr_addr_1;
      4'b0010 : m_axi_awaddr = cfg_wr_addr_2;
      4'b0011 : m_axi_awaddr = cfg_wr_addr_3;
      default : m_axi_awaddr = cfg_wr_addr_0;      
    endcase
  end else if (m_axi_awvalid_o && state_wr_data) begin
    case (num_data_wr_ctr)
      4'b0000 : m_axi_awaddr = data_wr_addr_0;
      4'b0001 : m_axi_awaddr = data_wr_addr_1;
      4'b0010 : m_axi_awaddr = data_wr_addr_2;
      4'b0011 : m_axi_awaddr = data_wr_addr_3;
      default : m_axi_awaddr = data_wr_addr_0;      
    endcase
  end else begin
    m_axi_awaddr = 'b0;
  end
end

assign m_axi_awaddr_o = m_axi_awaddr;

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    m_axi_wvalid_r <= 1'b0;
  end else if (data_wr_addr_req) begin
    m_axi_wvalid_r <= 1'b1;  
  end else if (data_wr_req) begin
    m_axi_wvalid_r <= 1'b0;  
  end else begin
    m_axi_wvalid_r <= m_axi_wvalid_r;
  end
end

assign m_axi_wvalid_o = m_axi_wvalid_r;

assign m_axi_wstrb_o = (m_axi_wvalid_o) ? {STRB_WIDTH{1'b1}} : {STRB_WIDTH{1'b0}};

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    m_axi_bready_r <= 1'b0;
  end else if (data_wr_req) begin
    m_axi_bready_r <= 1'b1;  
  end else if (data_wr_resp) begin
    m_axi_bready_r <= 1'b0;  
  end else begin
    m_axi_bready_r <= m_axi_bready_r;
  end
end

assign m_axi_bready_o = m_axi_bready_r & rst_dly;

always @(*) begin
  if (m_axi_wvalid_o && state_wr_cfg) begin
    case (num_cfg_wr_ctr)
      4'b0000 : m_axi_wdata = cfg_val_0;
      4'b0001 : m_axi_wdata = cfg_val_1;
      4'b0010 : m_axi_wdata = cfg_val_2;
      4'b0011 : m_axi_wdata = cfg_val_3;
      default : m_axi_wdata = cfg_val_0;      
    endcase
  end else if (m_axi_wvalid_o && state_wr_data) begin
    case (num_data_wr_ctr)
      4'b0000 : m_axi_wdata = data_reg_0_r;
      4'b0001 : m_axi_wdata = data_reg_1_r;
      4'b0010 : m_axi_wdata = data_reg_2_r;
      4'b0011 : m_axi_wdata = data_reg_3_r;
      default : m_axi_wdata = data_reg_4_r;      
    endcase
  end else begin
    m_axi_wdata = 'b0;
  end
end

assign m_axi_wdata_o = m_axi_wdata;

assign m_axi_awprot_o = 3'b000;

// Compute Logic --------------------------------------------------
always @(*) begin
  if (state_compute) begin
    case (data_comp_ctr)
      4'b0000 : compute_in_val = ~fpga_avg_ctrl_i ? avg_data_c_r : data_reg_0_r; 
      4'b0001 : compute_in_val = data_reg_1_r; 
      4'b0010 : compute_in_val = data_reg_2_r; 
      4'b0011 : compute_in_val = ~fpga_avg_ctrl_i ? avg_data_v_r : data_reg_3_r; 
      default : compute_in_val = data_reg_4_r;
    endcase
  end else begin
    compute_in_val = 'b0;
  end
end

// SYSMON Calculation --------------------------------------------- 
// Power Calculation followed by Temperature ---------------------- 
assign mult_in_a = compute_in_val[15:6]; 

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    mul_cur_in_r <= 'b0;
  end else if(board_rev_pins_i[2:0] == 3'b111) begin // Rev 1.1/1.2 Boards - factor 2.393/4.785
    mul_cur_in_r <= rev_ctrl_val_i ? {10'b0000000100,10'b1100010001} : {10'b0000000010,10'b0110001001};
  end else if(board_rev_pins_i[2:0] == 3'b101) begin // Rev 1.3 Board - factor 4.882
    mul_cur_in_r <= {10'b0000000100,10'b1101110010};
  end else if(board_rev_pins_i[2:0] == 3'b110) begin // Rev 1.4 Board - factor 4.882
    mul_cur_in_r <= {10'b0000000100,10'b1101110010};
  end else begin				    // MP Rev 1.0 and later - factor 3.741
    mul_cur_in_r <= {10'b0000000011,10'b1011100101};
  end
end

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    mul_vol_in_r <= 'b0;
  end else if(board_rev_pins_i[2:0] == 3'b111) begin 	// Proto Rev 1.1 and 1.2 Boards - No Voltage Sensor
    mul_vol_in_r <= {10'b0000000001,10'b0000000001};
  end else if(board_rev_pins_i[2] == 1'b1 && (&board_rev_pins_i[1:0] == 1'b0)) begin 	// Proto Rev 1.3,1.4 and MP Rev 1.0 Boards - 12.1k and 1k resistor network - factor 13.100 -> 12.793
    mul_vol_in_r <= {10'b0000001100,10'b1100011001};
  end else begin					// MP Rev 1.1 and later - 12.1k and 931 resistor network - factor 13.997 -> 13.669
    mul_vol_in_r <= {10'b0000001101,10'b1010011101};
  end
end


always @(*) begin
  if (state_compute) begin
    case (data_comp_ctr)
      4'b0000 : mult_in_b = mul_cur_in_r; 
      4'b0001 : mult_in_b = {10'b0111111101,10'b0101000001}; 
      4'b0010 : mult_in_b = {10'b0111111101,10'b0101000001}; 
      4'b0011 : mult_in_b = mul_vol_in_r; 
      default : mult_in_b = 'h0;
    endcase
  end else begin
    mult_in_b = 'b0;
  end
end

assign mult_out  = mult_in_a * mult_in_b;

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    mult_out_r <= 'b0;
  end else begin
    mult_out_r <= mult_out;
  end
end

assign subt_out  = mult_out_r - {10'b0100011000,10'b0011101100,10'b0000000000}; // 280.23087870

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    avg_data_c_r <= 'b0;
  end else if(avg_data_valid_c) begin
    avg_data_c_r <= avg_data_c;
  end else begin
    avg_data_c_r <= avg_data_c_r;
  end
end

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    avg_data_v_r <= 'b0;
  end else if(avg_data_valid_v) begin
    avg_data_v_r <= avg_data_v;
  end else begin
    avg_data_v_r <= avg_data_v_r;
  end
end


//-----------------------------------------------------------------
//                     Sub-module Instance(s) 
//-----------------------------------------------------------------
avg #(
     .DATA_WIDTH	(16		  	),
     .NO_OF_SAMPLES	(NO_OF_SAMPLES_AVG	)
     ) avg_c_inst (
     .clk_i		(clk_i 		  	),
     .rst_n_i		(rst_n_i 		),
     .rd_data_valid_i	(rd_data_valid_c 	),
     .rd_data_i		(rd_data_c		),
     .avg_data_valid_o	(avg_data_valid_c 	),
     .avg_data_o	(avg_data_c 		)
	);

avg #(
     .DATA_WIDTH	(16			),
     .NO_OF_SAMPLES	(NO_OF_SAMPLES_AVG	)
     ) 
      avg_v_inst (
     .clk_i		(clk_i 			),
     .rst_n_i		(rst_n_i 		),
     .rd_data_valid_i	(rd_data_valid_v 	),
     .rd_data_i		(rd_data_v		),
     .avg_data_valid_o	(avg_data_valid_v 	),
     .avg_data_o	(avg_data_v 		)
	);


// ----------------------------------------------------------------      
endmodule




/******************************************************************************

File name:avg.v
Rev:0.01
Description:

-- (c) Copyright 1995 - 2020 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
*******************************************************************************/
`timescale 1ps/1ps

module avg #(

  parameter DATA_WIDTH    	= 16,
  parameter NO_OF_SAMPLES 	= 128 
)
(
  input  wire                           clk_i,
  input  wire                           rst_n_i,
  input  wire                           rd_data_valid_i,
  input  wire 	[DATA_WIDTH-1:0]	rd_data_i,
  
  output                            	avg_data_valid_o,
  output  	[DATA_WIDTH-1:0] 	avg_data_o
);

//---------Function Declaration------------------------------------------------------
// clog2 function declaration -- later all the function/constant declarations
// shall be moved to .vh file

  function integer clog2;
    input [31:0] value; // Input value
    begin
    value = (value == 1) ? value : (value -1);
    for (clog2 = 0; value > 0; clog2 = clog2 + 1)
      value = value >> 1;
    end
  endfunction
//-----------------------------------------------------------------
localparam SAMPLE_WIDTH	= clog2(NO_OF_SAMPLES);
localparam D_WIDTH 	= DATA_WIDTH + SAMPLE_WIDTH;

wire 	rd_data_valid;
wire 	avg_data_valid_r;
wire  [SAMPLE_WIDTH:0]	zero_w;
//wire [DATA_WIDTH-1:0] avg_data_w;

reg			rst_dly;
reg  [D_WIDTH-1:0]	rd_data_r;
reg  [D_WIDTH-1:0]	avg_data_r;
reg  [SAMPLE_WIDTH:0]	sample_cnt_r;
reg  [SAMPLE_WIDTH:0]	rd_sample_cnt_r;
reg  			rd_data_valid_r;
reg  			rd_data_valid_rd;

assign zero_w = 'd0;
//-----------------------------------------------------------------
//                        Module Logic 
//-----------------------------------------------------------------

// Reset Delay Logic ----------------------------------------------
//-----------------------------------------------------------------
// - Xilinx recommends that slaves drive all READY outputs low
//   during reset to avoid dropping a transfer in case the connected
//   master recovers from reset during an earlier cycle.
//
// - Xilinx recommends that masters drive all READY outputs low
//   during reset.
//
//   https://www.xilinx.com/support/documentation/ip_documentation/axi_protocol_checker/v2_0/pg101-axi-protocol-checker.pdf
//-----------------------------------------------------------------
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    rst_dly <= 1'b0;
  end else begin
    rst_dly <= 1'b1;
  end
end

//assign rd_data_r = (rd_data_valid == 'b1)? rd_data_i: rd_data_r;
assign rd_data_valid = rd_data_valid_i;

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    rd_data_valid_r 	<= 'd0;
    rd_data_valid_rd 	<= 'd0;
  end else if(rd_data_valid == 'b1) begin
    rd_data_valid_r 	<= 1'b1;
    rd_data_valid_rd	<= 1'b1;
  end else begin
    rd_data_valid_r 	<= 'd0;
    rd_data_valid_rd 	<= 'd0;
  end
end


always @(posedge clk_i) begin
  if (~rst_n_i) begin
    rd_data_r    <= 'd0;
  end else if(rd_data_valid == 'b1) begin
    rd_data_r	<= rd_data_i;
  end else begin
    rd_data_r	<= rd_data_r;
  end
end

// Logic to count no.of valid data samples and average valid data samples
always @(posedge clk_i) begin
  if (~rst_n_i) begin
    sample_cnt_r   	<= 'd0;
  end else if(sample_cnt_r == NO_OF_SAMPLES) begin
    sample_cnt_r   	<= 'd0;
  end else if(rd_data_valid_r == 1'b1) begin
    sample_cnt_r	<= sample_cnt_r + 'b1;
  end else begin
    sample_cnt_r   	<= sample_cnt_r;
  end
 end

always @(posedge clk_i) begin
  if (~rst_n_i) begin
    rd_sample_cnt_r   	<= 'd0;
  end else if(rd_sample_cnt_r == NO_OF_SAMPLES-1) begin
    rd_sample_cnt_r   	<= 'd0;
  end else if(rd_data_valid_rd == 1'b1) begin
    rd_sample_cnt_r	<= rd_sample_cnt_r + 'b1;
  end else begin
    rd_sample_cnt_r   	<= rd_sample_cnt_r;
  end
 end


always @(posedge clk_i) begin
  if (~rst_n_i) begin
    avg_data_r    	<= 'd0;
  end else if(rd_sample_cnt_r == NO_OF_SAMPLES-1) begin
    avg_data_r    	<= {zero_w,rd_data_r[DATA_WIDTH-1:0]};
  end else if(rd_data_valid_r == 1'b1) begin
    avg_data_r		<= avg_data_r + rd_data_r;
  end else begin
    avg_data_r    	<= avg_data_r;
  end
 end


//assign avg_data_w = (avg_data_r >> SAMPLE_WIDTH);
assign avg_data_valid_r	= (rd_sample_cnt_r == NO_OF_SAMPLES-1) ? 1'b1 : 1'b0;
assign avg_data_o[DATA_WIDTH-1:0]	= avg_data_valid_r ? (avg_data_r >> SAMPLE_WIDTH) : 'd0;
assign avg_data_valid_o = avg_data_valid_r;

endmodule


