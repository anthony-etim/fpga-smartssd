
`timescale 1 ns / 1 ps

	module icap_arb_v1_0_0_S00_AXI #
	(
		// Users to add parameters here
        parameter integer C_NUM_ICAP_MASTERS = 1,
        parameter integer C_USE_EXT_ICAP = 0,
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY,
        input wire icap_clk,
	input wire icap_clk_resetn,
        output wire [7:0] mux_sel,
        //output wire [7:0] mux_sel_xfer,
        output wire [7:0] cap_rel,
        output wire [7:0] temp_gnt,
        input  wire [7:0] cap_req,
        input wire m_cap_rel,
        input wire m_cap_gnt
        //input wire src_rcv,
        //output wire src_send
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 2;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 8
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg4;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg5;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg6;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg7;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;
	reg	 aw_en;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // slave is ready to accept write address when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	        else if (S_AXI_BREADY && axi_bvalid)
	            begin
	              aw_en <= 1'b1;
	              axi_awready <= 1'b0;
	            end
	      else           
	        begin
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
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
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
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
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
        reg slv_reg_wr_flag;
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg0 <= 0;
	      slv_reg1 <= 32'h00000001;
	      slv_reg2 <= 0;
	      slv_reg3 <= 0;
	      slv_reg4 <= 0;
	      slv_reg5 <= 0;
	      slv_reg6 <= 0;
	      slv_reg7 <= 0;
	      slv_reg_wr_flag <= 1'b0;
	    end 
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          /*3'h0:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  */
                  3'h1:begin
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
		      slv_reg_wr_flag <= 1'b1;
	              end
	          3'h2:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 2
	                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h3:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 3
	                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h4:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 4
	                slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h5:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 5
	                slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h6:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 6
	                slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          3'h7:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes 
	                // Slave register 7
	                slv_reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end  
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
	                      slv_reg2 <= slv_reg2;
	                      slv_reg3 <= slv_reg3;
	                      slv_reg4 <= slv_reg4;
	                      slv_reg5 <= slv_reg5;
	                      slv_reg6 <= slv_reg6;
	                      slv_reg7 <= slv_reg7;
	                    end
	        endcase
	      end
	      else
	        begin
		  slv_reg_wr_flag <= 1'b0;
		end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response 
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
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

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end

    reg flag;
    wire [7:0] cap_gnt;
    reg  [7:0] mux_sel_reg;
    reg  [7:0] temp;
    reg  [7:0] cap_rel_reg;
    reg  [31:0] slv_reg1_icap_clk;
    wire  [31:0] slv_reg1_icap_clk_temp;
    reg src_send;
    wire src_rcv;
    wire dest_req;
    wire flag_sclk;
    wire [7:0] mux_sel_reg_sclk;

    localparam LC_DM = 8 - C_NUM_ICAP_MASTERS;

    always @ (posedge S_AXI_ACLK)
    begin
      if (S_AXI_ARESETN == 1'b0)
      begin
	      src_send <= 1'b0;
      end
      else
      begin
	      if (slv_reg_wr_flag == 1'b1)
	      begin
		      src_send <= 1'b1;
	      end
	      else
	      begin
		      if (src_send == 1'b1 && src_rcv == 1'b1)
		      begin
			      src_send <= 1'b0;
		      end
	      end
      end
    end

    axis_dbg_sync_v1_0_0_axis_dbg_sync # (
      .MODE ("Bus_sync_with_handshake"),
      .DEST_EXT_HSK (0),
      .WIDTH (32)
    ) sync_slv_reg1
    (
      .src_clk_in (S_AXI_ACLK),
      .src_in_bus (slv_reg1),
      .dest_clk_in (icap_clk),
      .dest_out_bus (slv_reg1_icap_clk_temp),
      .dest_req (dest_req),
      .dest_ack (1'b1),
      .src_rcv (src_rcv),
      .src_send (src_send) 
    );    

    always @ (posedge icap_clk)
    begin
	    if(icap_clk_resetn == 1'b0)
	    begin
		    slv_reg1_icap_clk <= 32'h01;
	    end
	    else
	    begin
		    if(dest_req == 1'b1)
		    begin
			    slv_reg1_icap_clk <= slv_reg1_icap_clk_temp;
		    end
	    end
    end

    generate
      if (C_USE_EXT_ICAP == 1)
      begin : EXT_ICAP_1
        assign cap_gnt = (m_cap_rel == 1'b1) ? 8'h00 : slv_reg1_icap_clk[7:0];
      end
      else
      begin
        assign cap_gnt = slv_reg1_icap_clk[7:0];
      end
    endgenerate

    always @ (posedge icap_clk)
    begin
      if (icap_clk_resetn == 1'b0)
      begin
        flag <= 1'b0;
      end
      else
      begin
        if (C_NUM_ICAP_MASTERS == 8)
        begin
          flag <= 1'b0;
        end
        else
        begin
          flag <= |(cap_gnt[7:C_NUM_ICAP_MASTERS]);
        end
      end
    end

  axis_dbg_sync_v1_0_0_axis_dbg_sync #(
    .MODE("Single_bit_sync"),
    .DEST_SYNC_FF(2),
    .INIT_SYNC_FF(0),
    .SRC_INPUT_REG(0)
  ) sync_flag_sclk (
    .src_clk_in(icap_clk),
    .dest_clk_in(S_AXI_ACLK),
    .src_in(flag),
    .dest_out(flag_sclk)
  );
	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        3'h0   : reg_data_out <= {3'b000,flag_sclk,4'h0,mux_sel_reg_sclk[7:0],C_USE_EXT_ICAP[0],7'b0000000,C_NUM_ICAP_MASTERS[7:0]};
	        3'h1   : reg_data_out <= slv_reg1;
	        3'h2   : reg_data_out <= slv_reg2;
	        3'h3   : reg_data_out <= slv_reg3;
	        3'h4   : reg_data_out <= slv_reg4;
	        3'h5   : reg_data_out <= slv_reg5;
	        3'h6   : reg_data_out <= slv_reg6;
	        3'h7   : reg_data_out <= slv_reg7;
	        default : reg_data_out <= 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Add user logic here
    always @ (posedge icap_clk)
    begin
      if (icap_clk_resetn == 1'b0)
      begin
        cap_rel_reg <= 8'h00;
      end
      else
      begin
        cap_rel_reg <= ~(cap_gnt);
      end
    end

    genvar i;
    generate
      for (i = 0; i < 8; i = i + 1)
      begin : MUX_SEL
        always @ (posedge icap_clk)
        begin
          if (icap_clk_resetn == 1'b0)
          begin
            temp[i] <= 1'b0;
          end
          else
          begin
            if (mux_sel[i] == 1'b1 && cap_req[i] == 1'b0 && cap_rel[i] == 1'b1)
            begin
              temp[i] <= 1'b0;
            end
            else
            begin
              temp[i] <= mux_sel[i];
            end
          end
        end
      end
    endgenerate

    always @ (posedge icap_clk)
    begin
      if (icap_clk_resetn == 1'b0)
      begin
        mux_sel_reg <= 8'h01;
      end
      else
      begin
        if (temp == 8'h00)
        begin
          mux_sel_reg <= cap_gnt;
        end
      end
    end

 axis_dbg_sync_v1_0_0_axis_dbg_sync #(
    .MODE("Single_bit_arr_sync"),
    .DEST_SYNC_FF(2),
    .INIT_SYNC_FF(0),
    .WIDTH(8),
    .SRC_INPUT_REG(1)
  ) sync_mux_sel_sclk (
    .src_clk_in(icap_clk),
    .dest_clk_in(S_AXI_ACLK),
    .src_in_bus(mux_sel_reg),
    .dest_out_bus(mux_sel_reg_sclk)
  );

    assign cap_rel = cap_rel_reg;
    assign mux_sel = (m_cap_gnt == 1'b1) ? mux_sel_reg : 8'h00;
    assign temp_gnt = temp;
	// User logic ends

	endmodule



`timescale 1 ns / 1 ps
`include "icap_arb_v1_0_0_family_inc.vh"
  module icap_arb_v1_0_0_icap_arb #
    (
    // Users to add parameters here
    
    // User parameters ends
    // Do not modify the parameters beyond this line
    
    
    // Parameters of Axi Slave Bus Interface S00_AXI
    parameter integer C_S00_AXI_DATA_WIDTH = 32,
    parameter integer C_S00_AXI_ADDR_WIDTH = 5,
    parameter         C_XDEVICEFAMILY        = "virtex7",
    parameter integer C_NUM_ICAP_MASTERS = 1,
    parameter integer C_USE_EXT_ICAP = 0,
    parameter integer C_INPUT_PIPE_STAGES = 0
    )
    (
    // Users to add ports here
    
    // User ports ends
    // Do not modify the ports beyond this line
    
    
    // Ports of Axi Slave Bus Interface S00_AXI
    input wire  s00_axi_aclk,
    input wire  s00_axi_aresetn,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
    input wire [2 : 0] s00_axi_awprot,
    input wire  s00_axi_awvalid,
    output wire  s00_axi_awready,
    input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
    input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
    input wire  s00_axi_wvalid,
    output wire  s00_axi_wready,
    output wire [1 : 0] s00_axi_bresp,
    output wire  s00_axi_bvalid,
    input wire  s00_axi_bready,
    input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
    input wire [2 : 0] s00_axi_arprot,
    input wire  s00_axi_arvalid,
    output wire  s00_axi_arready,
    output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
    output wire [1 : 0] s00_axi_rresp,
    output wire  s00_axi_rvalid,
    input wire  s00_axi_rready,
    input wire [31:0] s00_icap_i,
    input wire [31:0] s01_icap_i,
    input wire [31:0] s02_icap_i,
    input wire [31:0] s03_icap_i,
    input wire [31:0] s04_icap_i,
    input wire [31:0] s05_icap_i,
    input wire [31:0] s06_icap_i,
    input wire [31:0] s07_icap_i,
    input wire        s00_icap_csib,
    input wire        s01_icap_csib,
    input wire        s02_icap_csib,
    input wire        s03_icap_csib,
    input wire        s04_icap_csib,
    input wire        s05_icap_csib,
    input wire        s06_icap_csib,
    input wire        s07_icap_csib,
    input wire        s00_icap_rdwrb,
    input wire        s01_icap_rdwrb,
    input wire        s02_icap_rdwrb,
    input wire        s03_icap_rdwrb,
    input wire        s04_icap_rdwrb,
    input wire        s05_icap_rdwrb,
    input wire        s06_icap_rdwrb,
    input wire        s07_icap_rdwrb,
    output wire [31:0] s00_icap_o,
    output wire [31:0] s01_icap_o,
    output wire [31:0] s02_icap_o,
    output wire [31:0] s03_icap_o,
    output wire [31:0] s04_icap_o,
    output wire [31:0] s05_icap_o,
    output wire [31:0] s06_icap_o,
    output wire [31:0] s07_icap_o,
    input wire [31:0] m_icap_o,
    output wire [31:0] m_icap_i,
    output wire        m_icap_rdwrb,
    output wire        m_icap_csib,
    input wire         s00_cap_req,
    input wire         s01_cap_req,
    input wire         s02_cap_req,
    input wire         s03_cap_req,
    input wire         s04_cap_req,
    input wire         s05_cap_req,
    input wire         s06_cap_req,
    input wire         s07_cap_req,
    output wire        s00_cap_rel,
    output wire        s01_cap_rel,
    output wire        s02_cap_rel,
    output wire        s03_cap_rel,
    output wire        s04_cap_rel,
    output wire        s05_cap_rel,
    output wire        s06_cap_rel,
    output wire        s07_cap_rel,
    output wire        s00_cap_gnt,
    output wire        s01_cap_gnt,
    output wire        s02_cap_gnt,
    output wire        s03_cap_gnt,
    output wire        s04_cap_gnt,
    output wire        s05_cap_gnt,
    output wire        s06_cap_gnt,
    output wire        s07_cap_gnt,
    input wire         m_cap_rel,
    input wire         m_cap_gnt,
    output wire        m_cap_req,
    input wire         icap_clk
);
// Instantiation of Axi Bus Interface S00_AXI
    wire       m_cap_req1;
    wire       m_cap_rel1;
    wire       m_cap_gnt1;
    wire [7:0] mux_sel;
    //wire [7:0] mux_sel_xfer;
    wire [7:0] temp;
    wire [7:0] cap_rel;
    wire [7:0] cap_req;
    //wire src_send;
    //wire src_rcv;
// Add user logic here
    wire [31:0] icap_i;
    wire [31:0] icap_o;
    wire        icap_rdwrb;
    wire        icap_csib;
    wire icap_clk_resetn;
    // XPM instance for aresetn
    axis_dbg_sync_v1_0_0_axis_dbg_sync # (
      .MODE ("Async_rst_sync"),
      .DEST_SYNC_FF (2),
      .INIT_SYNC_FF (0),
      .RST_ACTIVE_HIGH (0)
    ) sync_reset
    (
      .dest_clk_in (icap_clk),
      .dest_arst (icap_clk_resetn),
      .src_rst_in (s00_axi_aresetn)
    );
    icap_arb_v1_0_0_S00_AXI # (
      .C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
      .C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
      .C_NUM_ICAP_MASTERS(C_NUM_ICAP_MASTERS),
      .C_USE_EXT_ICAP(C_USE_EXT_ICAP)
    ) icap_arb_v1_0_0_S00_AXI_inst (
      .S_AXI_ACLK(s00_axi_aclk),
      .S_AXI_ARESETN(s00_axi_aresetn),
      .S_AXI_AWADDR(s00_axi_awaddr),
      .S_AXI_AWPROT(s00_axi_awprot),
      .S_AXI_AWVALID(s00_axi_awvalid),
      .S_AXI_AWREADY(s00_axi_awready),
      .S_AXI_WDATA(s00_axi_wdata),
      .S_AXI_WSTRB(s00_axi_wstrb),
      .S_AXI_WVALID(s00_axi_wvalid),
      .S_AXI_WREADY(s00_axi_wready),
      .S_AXI_BRESP(s00_axi_bresp),
      .S_AXI_BVALID(s00_axi_bvalid),
      .S_AXI_BREADY(s00_axi_bready),
      .S_AXI_ARADDR(s00_axi_araddr),
      .S_AXI_ARPROT(s00_axi_arprot),
      .S_AXI_ARVALID(s00_axi_arvalid),
      .S_AXI_ARREADY(s00_axi_arready),
      .S_AXI_RDATA(s00_axi_rdata),
      .S_AXI_RRESP(s00_axi_rresp),
      .S_AXI_RVALID(s00_axi_rvalid),
      .S_AXI_RREADY(s00_axi_rready),
      .icap_clk(icap_clk),
      .icap_clk_resetn(icap_clk_resetn),
      .mux_sel(mux_sel),
      //.mux_sel_xfer(mux_sel_xfer),
      .cap_rel(cap_rel),
      .cap_req(cap_req),
      .temp_gnt(temp),
      .m_cap_rel(m_cap_rel1),
      .m_cap_gnt(m_cap_gnt1)
      //.src_send(src_send),
      //.src_rcv(src_rcv)
    );


    //wire dest_req;




    // XPM instance for mux_sel
    /*axis_dbg_sync_v1_0_0_axis_dbg_sync # (
      .MODE ("Bus_sync_with_handshake"),
      .DEST_EXT_HSK (0),
      .WIDTH (8)
    ) sync_mux_sel
    (
      .src_clk_in (s00_axi_aclk),
      .src_in_bus (mux_sel_xfer),
      .dest_clk_in (icap_clk),
      .dest_out_bus (icap_clk_mux_sel_temp),
      .dest_req (dest_req),
      .dest_ack (1'b1),
      .src_rcv (src_rcv),
      .src_send (src_send)
    );*/

    /*always @ (posedge icap_clk)
    begin
      if(icap_clk_resetn == 1'b0)
      begin
        icap_clk_mux_sel <= 8'h01;
      end
      else
      begin
        if (dest_req == 1'b1)
        begin
          icap_clk_mux_sel <= icap_clk_mux_sel_temp;
        end
      end
    end*/

    /*generate
      if (C_NUM_ICAP_MASTERS == 1)
      begin : MASTER_1
        always @ (posedge icap_clk)
        begin
          if (icap_clk_resetn == 1'b0)
          begin
            icap_i <= 32'h0;
            icap_csib <= 1'b1;
            icap_rdwrb <= 1'b1;
            s00_icap_o <= 32'h0;
          end
          else
          begin
            case (mux_sel)
              8'h01: begin
                       icap_i <= s00_icap_i;
                       icap_csib <= s00_icap_csib;
                       icap_rdwrb <= s00_icap_rdwrb;
                       s00_icap_o <= icap_o;
                     end
              default: begin
                         icap_i <= 'h0;
                         icap_csib <= 1'b1;
                         icap_rdwrb <= 1'b1;
                       end
            endcase
          end
        end
      end
    endgenerate*/

    generate
      if (C_NUM_ICAP_MASTERS == 1)
      begin : MASTER_1
        assign icap_i = (mux_sel == 8'h01) ? s00_icap_i : 'h0;
        assign icap_csib = (mux_sel == 8'h01) ? s00_icap_csib : 1'b1;
        assign icap_rdwrb = (mux_sel == 8'h01) ? s00_icap_rdwrb : 1'b1;
        assign s00_icap_o = (mux_sel == 8'h01) ? icap_o : 'h0;
      end
    endgenerate

    /*generate
      if (C_NUM_ICAP_MASTERS == 2)
      begin : MASTER_2
        always @ (posedge icap_clk)
        begin
          if (icap_clk_resetn == 1'b0)
          begin
            icap_i <= 32'h0;
            icap_csib <= 1'b1;
            icap_rdwrb <= 1'b1;
            s00_icap_o <= 32'h0;
            s01_icap_o <= 32'h0;
          end
          else
          begin
            case (mux_sel)
              8'h01: begin
                       icap_i <= s00_icap_i;
                       icap_csib <= s00_icap_csib;
                       icap_rdwrb <= s00_icap_rdwrb;
                       s00_icap_o <= icap_o;
                     end
              8'h02: begin
                       icap_i <= s01_icap_i;
                       icap_csib <= s01_icap_csib;
                       icap_rdwrb <= s01_icap_rdwrb;
                       s01_icap_o <= icap_o;
                     end
              default: begin
                         icap_i <= 'h0;
                         icap_csib <= 1'b1;
                         icap_rdwrb <= 1'b1;
                       end
            endcase
          end
        end
      end
    endgenerate*/

    generate
      if (C_NUM_ICAP_MASTERS == 2)
      begin : MASTER_2
        assign icap_i = (mux_sel == 8'h01) ? s00_icap_i : ((mux_sel == 8'h02) ? s01_icap_i : 'h0);
        assign icap_csib = (mux_sel == 8'h01) ? s00_icap_csib : ((mux_sel == 8'h02) ? s01_icap_csib : 1'b1);
        assign icap_rdwrb = (mux_sel == 8'h01) ? s00_icap_rdwrb : ((mux_sel == 8'h02) ? s01_icap_rdwrb : 1'b1);
        assign s00_icap_o = (mux_sel == 8'h01) ? icap_o : 'h0;
        assign s01_icap_o = (mux_sel == 8'h02) ? icap_o : 'h0;
      end
    endgenerate

    /*generate
      if (C_NUM_ICAP_MASTERS == 3)
      begin : MASTER_3
        always @ (posedge icap_clk)
        begin
          if (icap_clk_resetn == 1'b0)
          begin
            icap_i <= 32'h0;
            icap_csib <= 1'b1;
            icap_rdwrb <= 1'b1;
            s00_icap_o <= 32'h0;
            s01_icap_o <= 32'h0;
            s02_icap_o <= 32'h0;
          end
          else
          begin
            case (mux_sel)
              8'h01: begin
                       icap_i <= s00_icap_i;
                       icap_csib <= s00_icap_csib;
                       icap_rdwrb <= s00_icap_rdwrb;
                       s00_icap_o <= icap_o;
                     end
              8'h02: begin
                       icap_i <= s01_icap_i;
                       icap_csib <= s01_icap_csib;
                       icap_rdwrb <= s01_icap_rdwrb;
                       s01_icap_o <= icap_o;
                     end
              8'h04: begin
                       icap_i <= s02_icap_i;
                       icap_csib <= s02_icap_csib;
                       icap_rdwrb <= s02_icap_rdwrb;
                       s02_icap_o <= icap_o;
                     end
              default: begin
                         icap_i <= 'h0;
                         icap_csib <= 1'b1;
                         icap_rdwrb <= 1'b1;
                       end
            endcase
          end
        end
      end
    endgenerate*/

    generate
      if (C_NUM_ICAP_MASTERS == 3)
      begin : MASTER_3
        assign icap_i = (mux_sel == 8'h01) ? s00_icap_i : ((mux_sel == 8'h02) ? s01_icap_i : ((mux_sel == 8'h04) ? s02_icap_i : 'h0));
        assign icap_csib = (mux_sel == 8'h01) ? s00_icap_csib : ((mux_sel == 8'h02) ? s01_icap_csib : ((mux_sel == 8'h04) ? s02_icap_csib : 1'b1));
        assign icap_rdwrb = (mux_sel == 8'h01) ? s00_icap_rdwrb : ((mux_sel == 8'h02) ? s01_icap_rdwrb : ((mux_sel == 8'h04) ? s02_icap_rdwrb : 1'b1));
        assign s00_icap_o = (mux_sel == 8'h01) ? icap_o : 'h0;
        assign s01_icap_o = (mux_sel == 8'h02) ? icap_o : 'h0;
        assign s02_icap_o = (mux_sel == 8'h04) ? icap_o : 'h0;
      end
    endgenerate

    /*generate
      if (C_NUM_ICAP_MASTERS == 4)
      begin : MASTER_4
        always @ (posedge icap_clk)
        begin
          if (icap_clk_resetn == 1'b0)
          begin
            icap_i <= 32'h0;
            icap_csib <= 1'b1;
            icap_rdwrb <= 1'b1;
            s00_icap_o <= 32'h0;
            s01_icap_o <= 32'h0;
            s02_icap_o <= 32'h0;
            s03_icap_o <= 32'h0;
          end
          else
          begin
            case (mux_sel)
              8'h01: begin
                       icap_i <= s00_icap_i;
                       icap_csib <= s00_icap_csib;
                       icap_rdwrb <= s00_icap_rdwrb;
                       s00_icap_o <= icap_o;
                     end
              8'h02: begin
                       icap_i <= s01_icap_i;
                       icap_csib <= s01_icap_csib;
                       icap_rdwrb <= s01_icap_rdwrb;
                       s01_icap_o <= icap_o;
                     end
              8'h04: begin
                       icap_i <= s02_icap_i;
                       icap_csib <= s02_icap_csib;
                       icap_rdwrb <= s02_icap_rdwrb;
                       s02_icap_o <= icap_o;
                     end
              8'h08: begin
                       icap_i <= s03_icap_i;
                       icap_csib <= s03_icap_csib;
                       icap_rdwrb <= s03_icap_rdwrb;
                       s03_icap_o <= icap_o;
                     end
              default: begin
                         icap_i <= 'h0;
                         icap_csib <= 1'b1;
                         icap_rdwrb <= 1'b1;
                       end
            endcase
          end
        end
      end
    endgenerate*/

    generate
      if (C_NUM_ICAP_MASTERS == 4)
      begin : MASTER_4
        assign icap_i = (mux_sel == 8'h01) ? s00_icap_i : ((mux_sel == 8'h02) ? s01_icap_i : ((mux_sel == 8'h04) ? s02_icap_i : ((mux_sel == 8'h08) ? s03_icap_i : 'h0)));
        assign icap_csib = (mux_sel == 8'h01) ? s00_icap_csib : ((mux_sel == 8'h02) ? s01_icap_csib : ((mux_sel == 8'h04) ? s02_icap_csib : ((mux_sel == 8'h08) ? s03_icap_csib : 1'b1)));
        assign icap_rdwrb = (mux_sel == 8'h01) ? s00_icap_rdwrb : ((mux_sel == 8'h02) ? s01_icap_rdwrb : ((mux_sel == 8'h04) ? s02_icap_rdwrb : ((mux_sel == 8'h08) ? s03_icap_rdwrb : 1'b1)));
        assign s00_icap_o = (mux_sel == 8'h01) ? icap_o : 'h0;
        assign s01_icap_o = (mux_sel == 8'h02) ? icap_o : 'h0;
        assign s02_icap_o = (mux_sel == 8'h04) ? icap_o : 'h0;
        assign s03_icap_o = (mux_sel == 8'h08) ? icap_o : 'h0;
      end
    endgenerate

    /*generate
      if (C_NUM_ICAP_MASTERS == 5)
      begin : MASTER_5
        always @ (posedge icap_clk)
        begin
          if (icap_clk_resetn == 1'b0)
          begin
            icap_i <= 32'h0;
            icap_csib <= 1'b1;
            icap_rdwrb <= 1'b1;
            s00_icap_o <= 32'h0;
            s01_icap_o <= 32'h0;
            s02_icap_o <= 32'h0;
            s03_icap_o <= 32'h0;
            s04_icap_o <= 32'h0;
          end
          else
          begin
            case (mux_sel)
              8'h01: begin
                       icap_i <= s00_icap_i;
                       icap_csib <= s00_icap_csib;
                       icap_rdwrb <= s00_icap_rdwrb;
                       s00_icap_o <= icap_o;
                     end
              8'h02: begin
                       icap_i <= s01_icap_i;
                       icap_csib <= s01_icap_csib;
                       icap_rdwrb <= s01_icap_rdwrb;
                       s01_icap_o <= icap_o;
                     end
              8'h04: begin
                       icap_i <= s02_icap_i;
                       icap_csib <= s02_icap_csib;
                       icap_rdwrb <= s02_icap_rdwrb;
                       s02_icap_o <= icap_o;
                     end
              8'h08: begin
                       icap_i <= s03_icap_i;
                       icap_csib <= s03_icap_csib;
                       icap_rdwrb <= s03_icap_rdwrb;
                       s03_icap_o <= icap_o;
                     end
              8'h10: begin
                       icap_i <= s04_icap_i;
                       icap_csib <= s04_icap_csib;
                       icap_rdwrb <= s04_icap_rdwrb;
                       s04_icap_o <= icap_o;
                     end
              default: begin
                         icap_i <= 'h0;
                         icap_csib <= 1'b1;
                         icap_rdwrb <= 1'b1;
                       end
            endcase
          end
        end
      end
    endgenerate*/

    generate
      if (C_NUM_ICAP_MASTERS == 5)
      begin : MASTER_5
        assign icap_i = (mux_sel == 8'h01) ? s00_icap_i : ((mux_sel == 8'h02) ? s01_icap_i : ((mux_sel == 8'h04) ? s02_icap_i : ((mux_sel == 8'h08) ? s03_icap_i : ((mux_sel == 8'h10) ? s04_icap_i : 'h0))));
        assign icap_csib = (mux_sel == 8'h01) ? s00_icap_csib : ((mux_sel == 8'h02) ? s01_icap_csib : ((mux_sel == 8'h04) ? s02_icap_csib : ((mux_sel == 8'h08) ? s03_icap_csib : ((mux_sel == 8'h10) ? s04_icap_csib : 1'b1))));
        assign icap_rdwrb = (mux_sel == 8'h01) ? s00_icap_rdwrb : ((mux_sel == 8'h02) ? s01_icap_rdwrb : ((mux_sel == 8'h04) ? s02_icap_rdwrb : ((mux_sel == 8'h08) ? s03_icap_rdwrb : ((mux_sel == 8'h10) ? s04_icap_rdwrb : 1'b1))));
        assign s00_icap_o = (mux_sel == 8'h01) ? icap_o : 'h0;
        assign s01_icap_o = (mux_sel == 8'h02) ? icap_o : 'h0;
        assign s02_icap_o = (mux_sel == 8'h04) ? icap_o : 'h0;
        assign s03_icap_o = (mux_sel == 8'h08) ? icap_o : 'h0;
        assign s04_icap_o = (mux_sel == 8'h10) ? icap_o : 'h0;
      end
    endgenerate

    /*generate
      if (C_NUM_ICAP_MASTERS == 6)
      begin : MASTER_6
        always @ (posedge icap_clk)
        begin
          if (icap_clk_resetn == 1'b0)
          begin
            icap_i <= 32'h0;
            icap_csib <= 1'b1;
            icap_rdwrb <= 1'b1;
            s00_icap_o <= 32'h0;
            s01_icap_o <= 32'h0;
            s02_icap_o <= 32'h0;
            s03_icap_o <= 32'h0;
            s04_icap_o <= 32'h0;
            s05_icap_o <= 32'h0;
          end
          else
          begin
            case (mux_sel)
              8'h01: begin
                       icap_i <= s00_icap_i;
                       icap_csib <= s00_icap_csib;
                       icap_rdwrb <= s00_icap_rdwrb;
                       s00_icap_o <= icap_o;
                     end
              8'h02: begin
                       icap_i <= s01_icap_i;
                       icap_csib <= s01_icap_csib;
                       icap_rdwrb <= s01_icap_rdwrb;
                       s01_icap_o <= icap_o;
                     end
              8'h04: begin
                       icap_i <= s02_icap_i;
                       icap_csib <= s02_icap_csib;
                       icap_rdwrb <= s02_icap_rdwrb;
                       s02_icap_o <= icap_o;
                     end
              8'h08: begin
                       icap_i <= s03_icap_i;
                       icap_csib <= s03_icap_csib;
                       icap_rdwrb <= s03_icap_rdwrb;
                       s03_icap_o <= icap_o;
                     end
              8'h10: begin
                       icap_i <= s04_icap_i;
                       icap_csib <= s04_icap_csib;
                       icap_rdwrb <= s04_icap_rdwrb;
                       s04_icap_o <= icap_o;
                     end
              8'h20: begin
                       icap_i <= s05_icap_i;
                       icap_csib <= s05_icap_csib;
                       icap_rdwrb <= s05_icap_rdwrb;
                       s05_icap_o <= icap_o;
                     end
              default: begin
                         icap_i <= 'h0;
                         icap_csib <= 1'b1;
                         icap_rdwrb <= 1'b1;
                       end
            endcase
          end
        end
      end
    endgenerate*/

    generate
      if (C_NUM_ICAP_MASTERS == 6)
      begin : MASTER_6
        assign icap_i = (mux_sel == 8'h01) ? s00_icap_i : ((mux_sel == 8'h02) ? s01_icap_i : ((mux_sel == 8'h04) ? s02_icap_i : ((mux_sel == 8'h08) ? s03_icap_i : ((mux_sel == 8'h10) ? s04_icap_i : ((mux_sel == 8'h20) ? s05_icap_i : 'h0)))));
        assign icap_csib = (mux_sel == 8'h01) ? s00_icap_csib : ((mux_sel == 8'h02) ? s01_icap_csib : ((mux_sel == 8'h04) ? s02_icap_csib : ((mux_sel == 8'h08) ? s03_icap_csib : ((mux_sel == 8'h10) ? s04_icap_csib : ((mux_sel == 8'h20) ? s05_icap_csib : 1'b1)))));
        assign icap_rdwrb = (mux_sel == 8'h01) ? s00_icap_rdwrb : ((mux_sel == 8'h02) ? s01_icap_rdwrb : ((mux_sel == 8'h04) ? s02_icap_rdwrb : ((mux_sel == 8'h08) ? s03_icap_rdwrb : ((mux_sel == 8'h10) ? s04_icap_rdwrb : ((mux_sel == 8'h20) ? s05_icap_rdwrb : 1'b1)))));
        assign s00_icap_o = (mux_sel == 8'h01) ? icap_o : 'h0;
        assign s01_icap_o = (mux_sel == 8'h02) ? icap_o : 'h0;
        assign s02_icap_o = (mux_sel == 8'h04) ? icap_o : 'h0;
        assign s03_icap_o = (mux_sel == 8'h08) ? icap_o : 'h0;
        assign s04_icap_o = (mux_sel == 8'h10) ? icap_o : 'h0;
        assign s05_icap_o = (mux_sel == 8'h20) ? icap_o : 'h0;
      end
    endgenerate

    /*generate
      if (C_NUM_ICAP_MASTERS == 7)
      begin : MASTER_7
        always @ (posedge icap_clk)
        begin
          if (icap_clk_resetn == 1'b0)
          begin
            icap_i <= 32'h0;
            icap_csib <= 1'b1;
            icap_rdwrb <= 1'b1;
            s00_icap_o <= 32'h0;
            s01_icap_o <= 32'h0;
            s02_icap_o <= 32'h0;
            s03_icap_o <= 32'h0;
            s04_icap_o <= 32'h0;
            s05_icap_o <= 32'h0;
            s06_icap_o <= 32'h0;
          end
          else
          begin
            case (mux_sel)
              8'h01: begin
                       icap_i <= s00_icap_i;
                       icap_csib <= s00_icap_csib;
                       icap_rdwrb <= s00_icap_rdwrb;
                       s00_icap_o <= icap_o;
                     end
              8'h02: begin
                       icap_i <= s01_icap_i;
                       icap_csib <= s01_icap_csib;
                       icap_rdwrb <= s01_icap_rdwrb;
                       s01_icap_o <= icap_o;
                     end
              8'h04: begin
                       icap_i <= s02_icap_i;
                       icap_csib <= s02_icap_csib;
                       icap_rdwrb <= s02_icap_rdwrb;
                       s02_icap_o <= icap_o;
                     end
              8'h08: begin
                       icap_i <= s03_icap_i;
                       icap_csib <= s03_icap_csib;
                       icap_rdwrb <= s03_icap_rdwrb;
                       s03_icap_o <= icap_o;
                     end
              8'h10: begin
                       icap_i <= s04_icap_i;
                       icap_csib <= s04_icap_csib;
                       icap_rdwrb <= s04_icap_rdwrb;
                       s04_icap_o <= icap_o;
                     end
              8'h20: begin
                       icap_i <= s05_icap_i;
                       icap_csib <= s05_icap_csib;
                       icap_rdwrb <= s05_icap_rdwrb;
                       s05_icap_o <= icap_o;
                     end
              8'h40: begin
                       icap_i <= s06_icap_i;
                       icap_csib <= s06_icap_csib;
                       icap_rdwrb <= s06_icap_rdwrb;
                       s06_icap_o <= icap_o;
                     end
              default: begin
                         icap_i <= 'h0;
                         icap_csib <= 1'b1;
                         icap_rdwrb <= 1'b1;
                       end
            endcase
          end
        end
      end
    endgenerate*/

    generate
      if (C_NUM_ICAP_MASTERS == 7)
      begin : MASTER_7
        assign icap_i = (mux_sel == 8'h01) ? s00_icap_i : ((mux_sel == 8'h02) ? s01_icap_i : ((mux_sel == 8'h04) ? s02_icap_i : ((mux_sel == 8'h08) ? s03_icap_i : ((mux_sel == 8'h10) ? s04_icap_i : ((mux_sel == 8'h20) ? s05_icap_i : ((mux_sel == 8'h40) ? s06_icap_i : 'h0))))));
        assign icap_csib = (mux_sel == 8'h01) ? s00_icap_csib : ((mux_sel == 8'h02) ? s01_icap_csib : ((mux_sel == 8'h04) ? s02_icap_csib : ((mux_sel == 8'h08) ? s03_icap_csib : ((mux_sel == 8'h10) ? s04_icap_csib : ((mux_sel == 8'h20) ? s05_icap_csib : ((mux_sel == 8'h40) ? s06_icap_csib : 1'b1))))));
        assign icap_rdwrb = (mux_sel == 8'h01) ? s00_icap_rdwrb : ((mux_sel == 8'h02) ? s01_icap_rdwrb : ((mux_sel == 8'h04) ? s02_icap_rdwrb : ((mux_sel == 8'h08) ? s03_icap_rdwrb : ((mux_sel == 8'h10) ? s04_icap_rdwrb : ((mux_sel == 8'h20) ? s05_icap_rdwrb : ((mux_sel == 8'h40) ? s06_icap_rdwrb : 1'b1))))));
        assign s00_icap_o = (mux_sel == 8'h01) ? icap_o : 'h0;
        assign s01_icap_o = (mux_sel == 8'h02) ? icap_o : 'h0;
        assign s02_icap_o = (mux_sel == 8'h04) ? icap_o : 'h0;
        assign s03_icap_o = (mux_sel == 8'h08) ? icap_o : 'h0;
        assign s04_icap_o = (mux_sel == 8'h10) ? icap_o : 'h0;
        assign s05_icap_o = (mux_sel == 8'h20) ? icap_o : 'h0;
        assign s06_icap_o = (mux_sel == 8'h40) ? icap_o : 'h0;
      end
    endgenerate

    /*generate
      if (C_NUM_ICAP_MASTERS == 8)
      begin : MASTER_8
        always @ (posedge icap_clk)
        begin
          if (icap_clk_resetn == 1'b0)
          begin
            icap_i <= 32'h0;
            icap_csib <= 1'b1;
            icap_rdwrb <= 1'b1;
            s00_icap_o <= 32'h0;
            s01_icap_o <= 32'h0;
            s02_icap_o <= 32'h0;
            s03_icap_o <= 32'h0;
            s04_icap_o <= 32'h0;
            s05_icap_o <= 32'h0;
            s06_icap_o <= 32'h0;
            s07_icap_o <= 32'h0;
          end
          else
          begin
            case (mux_sel)
              8'h01: begin
                       icap_i <= s00_icap_i;
                       icap_csib <= s00_icap_csib;
                       icap_rdwrb <= s00_icap_rdwrb;
                       s00_icap_o <= icap_o;
                     end
              8'h01: begin
                       icap_i <= s01_icap_i;
                       icap_csib <= s01_icap_csib;
                       icap_rdwrb <= s01_icap_rdwrb;
                       s01_icap_o <= icap_o;
                     end
              8'h04: begin
                       icap_i <= s02_icap_i;
                       icap_csib <= s02_icap_csib;
                       icap_rdwrb <= s02_icap_rdwrb;
                       s02_icap_o <= icap_o;
                     end
              8'h08: begin
                       icap_i <= s03_icap_i;
                       icap_csib <= s03_icap_csib;
                       icap_rdwrb <= s03_icap_rdwrb;
                       s03_icap_o <= icap_o;
                     end
              8'h10: begin
                       icap_i <= s04_icap_i;
                       icap_csib <= s04_icap_csib;
                       icap_rdwrb <= s04_icap_rdwrb;
                       s04_icap_o <= icap_o;
                     end
              8'h20: begin
                       icap_i <= s05_icap_i;
                       icap_csib <= s05_icap_csib;
                       icap_rdwrb <= s05_icap_rdwrb;
                       s05_icap_o <= icap_o;
                     end
              8'h40: begin
                       icap_i <= s06_icap_i;
                       icap_csib <= s06_icap_csib;
                       icap_rdwrb <= s06_icap_rdwrb;
                       s06_icap_o <= icap_o;
                     end
              8'h80: begin
                       icap_i <= s07_icap_i;
                       icap_csib <= s07_icap_csib;
                       icap_rdwrb <= s07_icap_rdwrb;
                       s07_icap_o <= icap_o;
                     end
              default: begin
                         icap_i <= 'h0;
                         icap_csib <= 1'b1;
                         icap_rdwrb <= 1'b1;
                       end
            endcase
          end
        end
      end
    endgenerate*/

    generate
      if (C_NUM_ICAP_MASTERS == 8)
      begin : MASTER_8
        assign icap_i = (mux_sel == 8'h01) ? s00_icap_i : ((mux_sel == 8'h02) ? s01_icap_i : ((mux_sel == 8'h04) ? s02_icap_i : ((mux_sel == 8'h08) ? s03_icap_i : ((mux_sel == 8'h10) ? s04_icap_i : ((mux_sel == 8'h20) ? s05_icap_i : ((mux_sel == 8'h40) ? s06_icap_i : ((mux_sel == 8'h80) ? s07_icap_i : 'h0)))))));
        assign icap_csib = (mux_sel == 8'h01) ? s00_icap_csib : ((mux_sel == 8'h02) ? s01_icap_csib : ((mux_sel == 8'h04) ? s02_icap_csib : ((mux_sel == 8'h08) ? s03_icap_csib : ((mux_sel == 8'h10) ? s04_icap_csib : ((mux_sel == 8'h20) ? s05_icap_csib : ((mux_sel == 8'h40) ? s06_icap_csib : ((mux_sel == 8'h80) ? s07_icap_csib : 1'b1)))))));
        assign icap_rdwrb = (mux_sel == 8'h01) ? s00_icap_rdwrb : ((mux_sel == 8'h02) ? s01_icap_rdwrb : ((mux_sel == 8'h04) ? s02_icap_rdwrb : ((mux_sel == 8'h08) ? s03_icap_rdwrb : ((mux_sel == 8'h10) ? s04_icap_rdwrb : ((mux_sel == 8'h20) ? s05_icap_rdwrb : ((mux_sel == 8'h40) ? s06_icap_rdwrb : ((mux_sel == 8'h80) ? s07_icap_rdwrb : 1'b1)))))));
        assign s00_icap_o = (mux_sel == 8'h01) ? icap_o : 'h0;
        assign s01_icap_o = (mux_sel == 8'h02) ? icap_o : 'h0;
        assign s02_icap_o = (mux_sel == 8'h04) ? icap_o : 'h0;
        assign s03_icap_o = (mux_sel == 8'h08) ? icap_o : 'h0;
        assign s04_icap_o = (mux_sel == 8'h10) ? icap_o : 'h0;
        assign s05_icap_o = (mux_sel == 8'h20) ? icap_o : 'h0;
        assign s06_icap_o = (mux_sel == 8'h40) ? icap_o : 'h0;
        assign s07_icap_o = (mux_sel == 8'h80) ? icap_o : 'h0;
      end
    endgenerate

   generate
     if (C_USE_EXT_ICAP == 0)
     begin : EXT_ICAP_0
       if (C_XDEVICEFAMILY == `FAMILY_VIRTEXU || C_XDEVICEFAMILY == `FAMILY_ZYNQUPLUS || C_XDEVICEFAMILY == `FAMILY_VIRTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_VIRTEXUPLUSHBM || C_XDEVICEFAMILY == `FAMILY_KINTEXUPLUS || C_XDEVICEFAMILY == `FAMILY_KINTEXU)
       begin: N_7SEIRES
         ICAPE3 # (
           .DEVICE_ID                  (32'h03651093),
           .ICAP_AUTO_SWITCH           ("DISABLE"),
           .SIM_CFG_FILE_NAME          ("NONE")
         ) icape3_inst (
           .AVAIL                      (),
           .PRDONE                     (),
           .PRERROR                    (),
           .CLK                        (icap_clk),
           .CSIB                       (icap_csib),
           .I                          (icap_i),
           .RDWRB                      (icap_rdwrb),
           .O                          (icap_o)
         );
       end
       else
       begin: SERIES7
         ICAPE2 # (
           .DEVICE_ID                  (32'h03651093),
           .ICAP_WIDTH                 ("X32"),
           .SIM_CFG_FILE_NAME          ("NONE")
         ) icape2_inst (
           .CLK                        (icap_clk),
           .CSIB                       (icap_csib),
           .I                          (icap_i),
           .RDWRB                      (icap_rdwrb),
           .O                          (icap_o)
         );
       end
     end
     else
     begin
       assign m_icap_i = icap_i;
       assign m_icap_csib = icap_csib;
       assign m_icap_rdwrb = icap_rdwrb;
       assign icap_o = m_icap_o;
     end
   endgenerate

   assign cap_req = {s07_cap_req,s06_cap_req,s05_cap_req,s04_cap_req,s03_cap_req,s02_cap_req,s01_cap_req,s00_cap_req};

   generate
     if (C_USE_EXT_ICAP == 1)
     begin : EXT_ICAP_1
       assign s00_cap_gnt = mux_sel[0] & m_cap_gnt1;
       assign s01_cap_gnt = mux_sel[1] & m_cap_gnt1;
       assign s02_cap_gnt = mux_sel[2] & m_cap_gnt1;
       assign s03_cap_gnt = mux_sel[3] & m_cap_gnt1;
       assign s04_cap_gnt = mux_sel[4] & m_cap_gnt1;
       assign s05_cap_gnt = mux_sel[5] & m_cap_gnt1;
       assign s06_cap_gnt = mux_sel[6] & m_cap_gnt1;
       assign s07_cap_gnt = mux_sel[7] & m_cap_gnt1;
       assign s00_cap_rel = cap_rel[0] | m_cap_rel1;
       assign s01_cap_rel = cap_rel[1] | m_cap_rel1;
       assign s02_cap_rel = cap_rel[2] | m_cap_rel1;
       assign s03_cap_rel = cap_rel[3] | m_cap_rel1;
       assign s04_cap_rel = cap_rel[4] | m_cap_rel1;
       assign s05_cap_rel = cap_rel[5] | m_cap_rel1;
       assign s06_cap_rel = cap_rel[6] | m_cap_rel1;
       assign s07_cap_rel = cap_rel[7] | m_cap_rel1;
     end
     else
     begin
       assign s00_cap_gnt = mux_sel[0];
       assign s01_cap_gnt = mux_sel[1];
       assign s02_cap_gnt = mux_sel[2];
       assign s03_cap_gnt = mux_sel[3];
       assign s04_cap_gnt = mux_sel[4];
       assign s05_cap_gnt = mux_sel[5];
       assign s06_cap_gnt = mux_sel[6];
       assign s07_cap_gnt = mux_sel[7];
       assign s00_cap_rel = cap_rel[0];
       assign s01_cap_rel = cap_rel[1];
       assign s02_cap_rel = cap_rel[2];
       assign s03_cap_rel = cap_rel[3];
       assign s04_cap_rel = cap_rel[4];
       assign s05_cap_rel = cap_rel[5];
       assign s06_cap_rel = cap_rel[6];
       assign s07_cap_rel = cap_rel[7];
     end
   endgenerate

   generate
     if (C_USE_EXT_ICAP == 1)
     begin : EXT_ICAP_1_LOGIC
       reg m_cap_req_reg;
       always @ (posedge icap_clk)
       begin
         if (icap_clk_resetn == 1'b0)
         begin
           m_cap_req_reg <= 1'b0;
         end
         else
         begin
           if (temp == 8'h00 && m_cap_rel1 == 1'b1)
           begin
             m_cap_req_reg <= 1'b0;
           end
           else
           begin
             if (m_cap_rel1 == 1'b0 && temp != 8'h00)
             begin
               m_cap_req_reg <= |(cap_req[7:0]);
             end
           end
         end
       end

       assign m_cap_req1 = m_cap_req_reg;
     end
     else
     begin
       assign m_cap_req1 = 1'b1;
     end
   endgenerate
// User logic ends

   generate
     if (C_INPUT_PIPE_STAGES == 0)
     begin
       assign m_cap_req = m_cap_req1;
       assign m_cap_rel1 = m_cap_rel;
       assign m_cap_gnt1 = m_cap_gnt;
     end
   endgenerate

   generate
     if (C_INPUT_PIPE_STAGES == 1)
     begin
       reg m_cap_req_tmp;
       reg m_cap_rel_tmp;
       reg m_cap_gnt_tmp;
       always @ (posedge icap_clk)
       begin
         if (icap_clk_resetn == 1'b0)
         begin
           m_cap_req_tmp <= 1'b0;
           m_cap_rel_tmp <= 1'b0;
           m_cap_gnt_tmp <= 1'b0;
         end
         else
         begin
           m_cap_req_tmp <= m_cap_req1;
           m_cap_rel_tmp <= m_cap_rel;
           m_cap_gnt_tmp <= m_cap_gnt;
         end
       end
       assign m_cap_req = m_cap_req_tmp;
       assign m_cap_rel1 = m_cap_rel_tmp;
       assign m_cap_gnt1 = m_cap_gnt_tmp;
     end
   endgenerate

   generate
     if (C_INPUT_PIPE_STAGES == 2)
     begin
       reg m_cap_req_tmp, m_cap_req_tmp1;
       reg m_cap_rel_tmp, m_cap_rel_tmp1;
       reg m_cap_gnt_tmp, m_cap_gnt_tmp1;
       always @ (posedge icap_clk)
       begin
         if (icap_clk_resetn == 1'b0)
         begin
           m_cap_req_tmp <= 1'b0;
           m_cap_rel_tmp <= 1'b0;
           m_cap_gnt_tmp <= 1'b0;
         end
         else
         begin
           m_cap_req_tmp <= m_cap_req1;
           m_cap_req_tmp1 <= m_cap_req_tmp;
           m_cap_rel_tmp <= m_cap_rel;
           m_cap_rel_tmp1 <= m_cap_rel_tmp;
           m_cap_gnt_tmp <= m_cap_gnt;
           m_cap_gnt_tmp1 <= m_cap_gnt_tmp;
         end
       end
       assign m_cap_req = m_cap_req_tmp1;
       assign m_cap_rel1 = m_cap_rel_tmp1;
       assign m_cap_gnt1 = m_cap_gnt_tmp1;
     end
   endgenerate

   generate
     if (C_INPUT_PIPE_STAGES == 3)
     begin
       reg m_cap_req_tmp, m_cap_req_tmp1, m_cap_req_tmp2;
       reg m_cap_rel_tmp, m_cap_rel_tmp1, m_cap_rel_tmp2;
       reg m_cap_gnt_tmp, m_cap_gnt_tmp1, m_cap_gnt_tmp2;
       always @ (posedge icap_clk)
       begin
         if (icap_clk_resetn == 1'b0)
         begin
           m_cap_req_tmp <= 1'b0;
           m_cap_rel_tmp <= 1'b0;
           m_cap_gnt_tmp <= 1'b0;
         end
         else
         begin
           m_cap_req_tmp <= m_cap_req1;
           m_cap_req_tmp1 <= m_cap_req_tmp;
           m_cap_req_tmp2 <= m_cap_req_tmp1;
           m_cap_rel_tmp <= m_cap_rel;
           m_cap_rel_tmp1 <= m_cap_rel_tmp;
           m_cap_rel_tmp2 <= m_cap_rel_tmp1;
           m_cap_gnt_tmp <= m_cap_gnt;
           m_cap_gnt_tmp1 <= m_cap_gnt_tmp;
           m_cap_gnt_tmp2 <= m_cap_gnt_tmp1;
         end
       end
       assign m_cap_req = m_cap_req_tmp2;
       assign m_cap_rel1 = m_cap_rel_tmp2;
       assign m_cap_gnt1 = m_cap_gnt_tmp2;
     end
   endgenerate

   generate
     if (C_INPUT_PIPE_STAGES == 4)
     begin
       reg m_cap_req_tmp, m_cap_req_tmp1, m_cap_req_tmp2, m_cap_req_tmp3;
       reg m_cap_rel_tmp, m_cap_rel_tmp1, m_cap_rel_tmp2, m_cap_rel_tmp3;
       reg m_cap_gnt_tmp, m_cap_gnt_tmp1, m_cap_gnt_tmp2, m_cap_gnt_tmp3;
       always @ (posedge icap_clk)
       begin
         if (icap_clk_resetn == 1'b0)
         begin
           m_cap_req_tmp <= 1'b0;
           m_cap_rel_tmp <= 1'b0;
           m_cap_gnt_tmp <= 1'b0;
         end
         else
         begin
           m_cap_req_tmp <= m_cap_req1;
           m_cap_req_tmp1 <= m_cap_req_tmp;
           m_cap_req_tmp2 <= m_cap_req_tmp1;
           m_cap_req_tmp3 <= m_cap_req_tmp2;
           m_cap_rel_tmp <= m_cap_rel;
           m_cap_rel_tmp1 <= m_cap_rel_tmp;
           m_cap_rel_tmp2 <= m_cap_rel_tmp1;
           m_cap_rel_tmp3 <= m_cap_rel_tmp2;
           m_cap_gnt_tmp <= m_cap_gnt;
           m_cap_gnt_tmp1 <= m_cap_gnt_tmp;
           m_cap_gnt_tmp2 <= m_cap_gnt_tmp1;
           m_cap_gnt_tmp3 <= m_cap_gnt_tmp2;
         end
       end
       assign m_cap_req = m_cap_req_tmp3;
       assign m_cap_rel1 = m_cap_rel_tmp3;
       assign m_cap_gnt1 = m_cap_gnt_tmp3;
     end
   endgenerate

   generate
     if (C_INPUT_PIPE_STAGES == 5)
     begin
       reg m_cap_req_tmp, m_cap_req_tmp1, m_cap_req_tmp2, m_cap_req_tmp3, m_cap_req_tmp4;
       reg m_cap_rel_tmp, m_cap_rel_tmp1, m_cap_rel_tmp2, m_cap_rel_tmp3, m_cap_rel_tmp4;
       reg m_cap_gnt_tmp, m_cap_gnt_tmp1, m_cap_gnt_tmp2, m_cap_gnt_tmp3, m_cap_gnt_tmp4;
       always @ (posedge icap_clk)
       begin
         if (icap_clk_resetn == 1'b0)
         begin
           m_cap_req_tmp <= 1'b0;
           m_cap_rel_tmp <= 1'b0;
           m_cap_gnt_tmp <= 1'b0;
         end
         else
         begin
           m_cap_req_tmp <= m_cap_req1;
           m_cap_req_tmp1 <= m_cap_req_tmp;
           m_cap_req_tmp2 <= m_cap_req_tmp1;
           m_cap_req_tmp3 <= m_cap_req_tmp2;
           m_cap_req_tmp4 <= m_cap_req_tmp3;
           m_cap_rel_tmp <= m_cap_rel;
           m_cap_rel_tmp1 <= m_cap_rel_tmp;
           m_cap_rel_tmp2 <= m_cap_rel_tmp1;
           m_cap_rel_tmp3 <= m_cap_rel_tmp2;
           m_cap_rel_tmp4 <= m_cap_rel_tmp3;
           m_cap_gnt_tmp <= m_cap_gnt;
           m_cap_gnt_tmp1 <= m_cap_gnt_tmp;
           m_cap_gnt_tmp2 <= m_cap_gnt_tmp1;
           m_cap_gnt_tmp3 <= m_cap_gnt_tmp2;
           m_cap_gnt_tmp4 <= m_cap_gnt_tmp3;
         end
       end
       assign m_cap_req = m_cap_req_tmp4;
       assign m_cap_rel1 = m_cap_rel_tmp4;
       assign m_cap_gnt1 = m_cap_gnt_tmp4;
     end
   endgenerate

   generate
     if (C_INPUT_PIPE_STAGES == 6)
     begin
       reg m_cap_req_tmp, m_cap_req_tmp1, m_cap_req_tmp2, m_cap_req_tmp3, m_cap_req_tmp4, m_cap_req_tmp5;
       reg m_cap_rel_tmp, m_cap_rel_tmp1, m_cap_rel_tmp2, m_cap_rel_tmp3, m_cap_rel_tmp4, m_cap_rel_tmp5;
       reg m_cap_gnt_tmp, m_cap_gnt_tmp1, m_cap_gnt_tmp2, m_cap_gnt_tmp3, m_cap_gnt_tmp4, m_cap_gnt_tmp5;
       always @ (posedge icap_clk)
       begin
         if (icap_clk_resetn == 1'b0)
         begin
           m_cap_req_tmp <= 1'b0;
           m_cap_rel_tmp <= 1'b0;
           m_cap_gnt_tmp <= 1'b0;
         end
         else
         begin
           m_cap_req_tmp <= m_cap_req1;
           m_cap_req_tmp1 <= m_cap_req_tmp;
           m_cap_req_tmp2 <= m_cap_req_tmp1;
           m_cap_req_tmp3 <= m_cap_req_tmp2;
           m_cap_req_tmp4 <= m_cap_req_tmp3;
           m_cap_req_tmp5 <= m_cap_req_tmp4;
           m_cap_rel_tmp <= m_cap_rel;
           m_cap_rel_tmp1 <= m_cap_rel_tmp;
           m_cap_rel_tmp2 <= m_cap_rel_tmp1;
           m_cap_rel_tmp3 <= m_cap_rel_tmp2;
           m_cap_rel_tmp4 <= m_cap_rel_tmp3;
           m_cap_rel_tmp5 <= m_cap_rel_tmp4;
           m_cap_gnt_tmp <= m_cap_gnt;
           m_cap_gnt_tmp1 <= m_cap_gnt_tmp;
           m_cap_gnt_tmp2 <= m_cap_gnt_tmp1;
           m_cap_gnt_tmp3 <= m_cap_gnt_tmp2;
           m_cap_gnt_tmp4 <= m_cap_gnt_tmp3;
           m_cap_gnt_tmp5 <= m_cap_gnt_tmp4;
         end
       end
       assign m_cap_req = m_cap_req_tmp5;
       assign m_cap_rel1 = m_cap_rel_tmp5;
       assign m_cap_gnt1 = m_cap_gnt_tmp5;
     end
   endgenerate

endmodule


