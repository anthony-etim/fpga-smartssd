// (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module AXI_LITE_IF #(
		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32
	)
	(
	    input wire [31:0] slv_reg_in,
	    output wire [31:0] slv_reg_out,
	    output wire [7:0] slv_reg_addr,
	    output wire slv_reg_addr_vld,
        output wire slv_reg_out_vld,
        input wire slv_reg_in_vld,

		input wire  S_AXI_ACLK,           // Global Clock Signal
		input wire  S_AXI_ARESETN,        // Global Reset Signal. This Signal is Active LOW
		input wire [7 : 0] S_AXI_AWADDR, // Write address (issued by master, acceped by Slave)
		input wire [2 : 0] S_AXI_AWPROT,  // Write channel Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
		input wire  S_AXI_AWVALID,        // Write address valid. This signal indicates that the master signaling valid write address and control information.
		output wire  S_AXI_AWREADY,       // Write address ready. This signal indicates that the slave is ready to accept an address and associated control signals.
		input wire [31 : 0] S_AXI_WDATA,  // Write data (issued by master, acceped by Slave)
		input wire [3 : 0] S_AXI_WSTRB,   // Write strobes. This signal indicates which byte lanes hold valid data. There is one write strobe bit for each eight bits of the write data bus.
		input wire  S_AXI_WVALID,         // Write valid. This signal indicates that valid write data and strobes are available.
		output wire  S_AXI_WREADY,        // Write ready. This signal indicates that the slave can accept the write data.
		output wire [1 : 0] S_AXI_BRESP,  // Write response. This signal indicates the status of the write transaction.
		output wire  S_AXI_BVALID,        // Write response valid. This signal indicates that the channel is signaling a valid write response.
		input wire  S_AXI_BREADY,         // Response ready. This signal indicates that the master can accept a write response.
		input wire [7 : 0] S_AXI_ARADDR, // Read address (issued by master, acceped by Slave)
		input wire [2 : 0] S_AXI_ARPROT,  // Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
		input wire  S_AXI_ARVALID,        // Read address valid. This signal indicates that the channel is signaling valid read address and control information.
		output wire  S_AXI_ARREADY,       // Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals.
		output wire [31 : 0] S_AXI_RDATA, // Read data (issued by slave)
		output wire [1 : 0] S_AXI_RRESP,  // Read response. This signal indicates the status of the read transfer.
		output wire  S_AXI_RVALID,        // Read valid. This signal indicates that the channel is signaling the required read data.
		input wire  S_AXI_RREADY          // Read ready. This signal indicates that the master can accept the read data and response information.
	);

	// AXI4LITE signals
	reg [31 : 0] 	axi_awaddr = 0;
	reg  	axi_awready = 0;
	reg  	axi_wready = 0;
	reg [1 : 0] 	axi_bresp = 0;
	reg  	axi_bvalid = 0;
	reg [31 : 0] 	axi_araddr = 0;
	reg  	axi_arready = 0;
	reg [31 : 0] 	axi_rdata = 0;
	reg [1 : 0] 	axi_rresp = 0;
	reg  	axi_rvalid = 0;
	
	reg [7:0] slv_reg_addr_i = 0;
    reg slv_reg_out_vld_i = 0;
    wire [31:0] slv_reg_out_i;
    
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 4
	wire slv_reg_rden;
	wire slv_reg_wren;
	
	integer	 byte_index;

	// I/O Connections assignments
	assign S_AXI_AWREADY   = axi_awready;
	assign S_AXI_WREADY	   = axi_wready;
	assign S_AXI_BRESP	   = axi_bresp;
	assign S_AXI_BVALID	   = axi_bvalid;
	assign S_AXI_ARREADY   = axi_arready;
	assign S_AXI_RDATA	   = axi_rdata;
	assign S_AXI_RRESP	   = axi_rresp;
	assign S_AXI_RVALID	   = axi_rvalid;
		
    assign slv_reg_addr = slv_reg_addr_i;
    assign slv_reg_addr_vld = slv_reg_wren | slv_reg_rden;
    
	assign slv_reg_out      = slv_reg_out_i;	
    assign slv_reg_out_vld  = S_AXI_ARESETN & slv_reg_wren;
    
    always @(*) begin
        case ({slv_reg_wren,slv_reg_rden})
            2'b10: slv_reg_addr_i <= S_AXI_AWADDR[7:0];
            2'b01: slv_reg_addr_i <= S_AXI_ARADDR[7:0];
            default: slv_reg_addr_i <= 8'hAD;
        endcase
    end
	
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.
	always @( posedge S_AXI_ACLK )
	begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_awready <= 1'b0;
        end 
        else begin    
            if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID) begin
                // slave is ready to accept write address when 
                // there is a valid write address and write data
                // on the write address and data bus. This design 
                // expects no outstanding transactions. 
                axi_awready <= 1'b1;
            end
            else begin
                axi_awready <= 1'b0;
            end
        end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID)
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;
    assign slv_reg_out_i = S_AXI_WDATA;

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.
	always @( posedge S_AXI_ACLK )
	begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_bvalid  <= 0;
            axi_bresp   <= 2'b0;
        end 
        else begin    
            if (slv_reg_wren && ~axi_bvalid) begin
                // indicates a valid write response is available
                axi_bvalid <= 1'b1;
                axi_bresp  <= 2'b0; // 'OKAY' response 
            end                   // work error responses in future
            else begin
                if (S_AXI_BREADY && axi_bvalid) begin 
                    //check if bready is asserted while bvalid is high) 
                    //(there is a possibility that bready is always asserted high)
                    axi_bvalid <= 1'b0; 
                end  
            end
        end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.
	always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_arready <= 1'b0;
            axi_araddr  <= 32'b0;
        end 
        else begin    
            if (~axi_arready && S_AXI_ARVALID) begin
                // indicates that the slave has acceped the valid read address
                axi_arready <= 1'b1;
                // Read address latching
                axi_araddr  <= S_AXI_ARADDR;
            end
            else begin
                axi_arready <= 1'b0;
            end
        end 
    end       

    // Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready && S_AXI_ARVALID;
	
	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_rvalid <= 0;
            axi_rresp  <= 0;
        end 
        else begin    
            if (slv_reg_in_vld) begin
                // Valid read data is available at the read data bus
                axi_rvalid <= 1'b1;
                axi_rresp  <= 2'b0; // 'OKAY' response
            end   
            else if (axi_rvalid && S_AXI_RREADY) begin
                // Read data is accepted by the master
                axi_rvalid <= 1'b0;
            end                
        end
	end    

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_rdata  <= 0;
        end 
        else begin    
            // When there is a valid read address (S_AXI_ARVALID) with 
            // acceptance of read address by the slave (axi_arready), 
            // output the read data 
            if (slv_reg_in_vld) begin
                axi_rdata <= slv_reg_in;     // register read data
            end   
        end
	end   

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
