--------------------------------------------------------------------------------------------------------------------------------------------
--
-- (c) Copyright 2019 Xilinx, Inc. All rights reserved.
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
--
--------------------------------------------------------------------------------------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library axi_lite_ipif_v3_0_4;
    use axi_lite_ipif_v3_0_4.ipif_pkg.all;

entity shell_utils_bar_layout_table_v1_0_0 is
    generic (
        C_NUM_TABLE_ENTRIES       : integer range 1 to 6            := 1;
        C_ENTRY_TYPE_0            : std_logic_vector(7 downto 0)    := (others => '0');
        C_ENTRY_BAR_0             : integer range 0 to 6            := 0;
        C_ENTRY_ADDR_0            : std_logic_vector(47 downto 0)   := (others => '0');
        C_ENTRY_MAJOR_VERSION_0   : integer range 0 to 255          := 0;
        C_ENTRY_MINOR_VERSION_0   : integer range 0 to 255          := 0;
        C_ENTRY_TYPE_1            : std_logic_vector(7 downto 0)    := (others => '0');
        C_ENTRY_BAR_1             : integer range 0 to 6            := 0;
        C_ENTRY_ADDR_1            : std_logic_vector(47 downto 0)   := (others => '0');
        C_ENTRY_MAJOR_VERSION_1   : integer range 0 to 255          := 0;
        C_ENTRY_MINOR_VERSION_1   : integer range 0 to 255          := 0;
        C_ENTRY_TYPE_2            : std_logic_vector(7 downto 0)    := (others => '0');
        C_ENTRY_BAR_2             : integer range 0 to 6            := 0;
        C_ENTRY_ADDR_2            : std_logic_vector(47 downto 0)   := (others => '0');
        C_ENTRY_MAJOR_VERSION_2   : integer range 0 to 255          := 0;
        C_ENTRY_MINOR_VERSION_2   : integer range 0 to 255          := 0;
        C_ENTRY_TYPE_3            : std_logic_vector(7 downto 0)    := (others => '0');
        C_ENTRY_BAR_3             : integer range 0 to 6            := 0;
        C_ENTRY_ADDR_3            : std_logic_vector(47 downto 0)   := (others => '0');
        C_ENTRY_MAJOR_VERSION_3   : integer range 0 to 255          := 0;
        C_ENTRY_MINOR_VERSION_3   : integer range 0 to 255          := 0;
        C_ENTRY_TYPE_4            : std_logic_vector(7 downto 0)    := (others => '0');
        C_ENTRY_BAR_4             : integer range 0 to 6            := 0;
        C_ENTRY_ADDR_4            : std_logic_vector(47 downto 0)   := (others => '0');
        C_ENTRY_MAJOR_VERSION_4   : integer range 0 to 255          := 0;
        C_ENTRY_MINOR_VERSION_4   : integer range 0 to 255          := 0;
        C_ENTRY_TYPE_5            : std_logic_vector(7 downto 0)    := (others => '0');
        C_ENTRY_BAR_5             : integer range 0 to 6            := 0;
        C_ENTRY_ADDR_5            : std_logic_vector(47 downto 0)   := (others => '0');
        C_ENTRY_MAJOR_VERSION_5   : integer range 0 to 255          := 0;
        C_ENTRY_MINOR_VERSION_5   : integer range 0 to 255          := 0;
        C_S_AXI_DATA_WIDTH        : integer range 32 to 32          := 32;
        C_S_AXI_ADDR_WIDTH        : integer range 7 to 7            := 7;
        C_XDEVICEFAMILY           : string                          := "no_family"
        );
    port (
        
        -----------------------------------------------------------------------
        -- Processor AXI Interface (S_AXI_ACLK)
        -----------------------------------------------------------------------

        S_AXI_ACLK                : in  std_logic;
        S_AXI_ARESETN             : in  std_logic;
        S_AXI_AWADDR              : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWVALID             : in  std_logic;
        S_AXI_AWREADY             : out std_logic;
        S_AXI_WDATA               : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB               : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID              : in  std_logic;
        S_AXI_WREADY              : out std_logic;
        S_AXI_BRESP               : out std_logic_vector(1 downto 0);
        S_AXI_BVALID              : out std_logic;
        S_AXI_BREADY              : in  std_logic;
        S_AXI_ARADDR              : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARVALID             : in  std_logic;
        S_AXI_ARREADY             : out std_logic;
        S_AXI_RDATA               : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP               : out std_logic_vector(1 downto 0);
        S_AXI_RVALID              : out std_logic;
        S_AXI_RREADY              : in  std_logic
    );

end shell_utils_bar_layout_table_v1_0_0;


architecture top of shell_utils_bar_layout_table_v1_0_0 is


    -------------------------------------------------------------------------------
    -- Constant Declarations
    -------------------------------------------------------------------------------

    constant ZEROES : std_logic_vector(0 to 31) := X"00000000";

    constant C_FAMILY : string := C_XDEVICEFAMILY;

    constant REG_BASEADDR : std_logic_vector := X"00000000";

    constant REG_HIGHADDR : std_logic_vector(0 to 31) := (32 - C_S_AXI_ADDR_WIDTH to 31 => '1', others => '0');

    constant C_ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE := (
        ZEROES & REG_BASEADDR,
        ZEROES & REG_HIGHADDR
        );

    constant C_ARD_IDX_REGS : integer := 0;

    constant C_ARD_NUM_CE_ARRAY : INTEGER_ARRAY_TYPE := (
        C_ARD_IDX_REGS => 1
        );

    constant C_S_AXI_MIN_SIZE : std_logic_vector(31 downto 0) := (C_S_AXI_ADDR_WIDTH - 1 downto 0 => '1', others => '0');

    constant C_USE_WSTRB : integer := 0;

    constant C_DPHASE_TIMEOUT : integer := 12;

    subtype IIC_CE_RNG is integer range calc_start_ce_index(C_ARD_NUM_CE_ARRAY, 0) to calc_start_ce_index(C_ARD_NUM_CE_ARRAY, 0) + C_ARD_NUM_CE_ARRAY(0) - 1;
    
    attribute ram_style : string;
    
    -- BAR Layout Table ROM type
    type bar_layout_rom_type is array (0 to 31) of std_logic_vector(31 downto 0);
    type rom_header_type is array (0 to 3) of std_logic_vector(31 downto 0);
    type rom_entry_type is array (0 to 23) of std_logic_vector(31 downto 0);
    
    -- Field Constants
    constant HEADER_FORMAT      : std_logic_vector(19 downto 0)   := x"00001";
    constant HEADER_REV         : std_logic_vector(7 downto 0)    := x"00";
    constant HEADER_LAST_CAP    : std_logic                       := '1';
    constant HEADER_RESERVED    : std_logic_vector(2 downto 0)    := "000";
    constant HEADER_LENGTH      : std_logic_vector(31 downto 0)   := std_logic_vector(to_unsigned((C_NUM_TABLE_ENTRIES * 16) + 32, 32));
    constant FORMAT_ENTRY_SIZE  : std_logic_vector(7 downto 0)    := x"10";
    constant ENTRY_REVISION     : std_logic_vector(4 downto 0)    := (others => '0');
    constant ENTRY_END_OF_TABLE : std_logic_vector(7 downto 0)    := (others => '1');
    constant ENTRY_VERSION_TYPE : std_logic_vector(7 downto 0)    := (others => '0');
    
    constant ROM_HEADER         : rom_header_type                 := (0 => (HEADER_RESERVED & HEADER_LAST_CAP & HEADER_REV & HEADER_FORMAT),
                                                                      1 => HEADER_LENGTH,
                                                                      2 => (x"000000" & FORMAT_ENTRY_SIZE),
                                                                      3 => (others => '0'));
                                                                    
    constant ROM_ENTRIES        : rom_entry_type                  := (0   => (C_ENTRY_ADDR_0(15 downto 0) & std_logic_vector(to_unsigned(C_ENTRY_BAR_0, 3)) & ENTRY_REVISION & C_ENTRY_TYPE_0),
                                                                      1   => C_ENTRY_ADDR_0(47 downto 16),
                                                                      2   => x"00" & std_logic_vector(to_unsigned(C_ENTRY_MAJOR_VERSION_0, 8)) & std_logic_vector(to_unsigned(C_ENTRY_MINOR_VERSION_0, 8)) & ENTRY_VERSION_TYPE,
                                                                      3   => x"00000000",
                                                                      4   => (C_ENTRY_ADDR_1(15 downto 0) & std_logic_vector(to_unsigned(C_ENTRY_BAR_1, 3)) & ENTRY_REVISION & C_ENTRY_TYPE_1),
                                                                      5   => C_ENTRY_ADDR_1(47 downto 16),
                                                                      6   => x"00" & std_logic_vector(to_unsigned(C_ENTRY_MAJOR_VERSION_1, 8)) & std_logic_vector(to_unsigned(C_ENTRY_MINOR_VERSION_1, 8)) & ENTRY_VERSION_TYPE,
                                                                      7   => x"00000000",
                                                                      8   => (C_ENTRY_ADDR_2(15 downto 0) & std_logic_vector(to_unsigned(C_ENTRY_BAR_2, 3)) & ENTRY_REVISION & C_ENTRY_TYPE_2),
                                                                      9   => C_ENTRY_ADDR_2(47 downto 16),
                                                                      10  => x"00" & std_logic_vector(to_unsigned(C_ENTRY_MAJOR_VERSION_2, 8)) & std_logic_vector(to_unsigned(C_ENTRY_MINOR_VERSION_2, 8)) & ENTRY_VERSION_TYPE,
                                                                      11  => x"00000000",
                                                                      12  => (C_ENTRY_ADDR_3(15 downto 0) & std_logic_vector(to_unsigned(C_ENTRY_BAR_3, 3)) & ENTRY_REVISION & C_ENTRY_TYPE_3),
                                                                      13  => C_ENTRY_ADDR_3(47 downto 16),
                                                                      14  => x"00" & std_logic_vector(to_unsigned(C_ENTRY_MAJOR_VERSION_3, 8)) & std_logic_vector(to_unsigned(C_ENTRY_MINOR_VERSION_3, 8)) & ENTRY_VERSION_TYPE,
                                                                      15  => x"00000000",
                                                                      16  => (C_ENTRY_ADDR_4(15 downto 0) & std_logic_vector(to_unsigned(C_ENTRY_BAR_4, 3)) & ENTRY_REVISION & C_ENTRY_TYPE_4),
                                                                      17  => C_ENTRY_ADDR_4(47 downto 16),
                                                                      18  => x"00" & std_logic_vector(to_unsigned(C_ENTRY_MAJOR_VERSION_4, 8)) & std_logic_vector(to_unsigned(C_ENTRY_MINOR_VERSION_4, 8)) & ENTRY_VERSION_TYPE,
                                                                      19  => x"00000000",
                                                                      20  => (C_ENTRY_ADDR_5(15 downto 0) & std_logic_vector(to_unsigned(C_ENTRY_BAR_5, 3)) & ENTRY_REVISION & C_ENTRY_TYPE_5),
                                                                      21  => C_ENTRY_ADDR_5(47 downto 16),
                                                                      22  => x"00" & std_logic_vector(to_unsigned(C_ENTRY_MAJOR_VERSION_5, 8)) & std_logic_vector(to_unsigned(C_ENTRY_MINOR_VERSION_5, 8)) & ENTRY_VERSION_TYPE,
                                                                      23  => x"00000000");

    -------------------------------------------------------------------------------
    -- Function Declarations
    -------------------------------------------------------------------------------
    
    function fn_rom_init return bar_layout_rom_type is
    
        variable rom  : bar_layout_rom_type := (others => (others => '0'));
        variable j    : integer             := 0;
        
    begin
    
        -- Insert the ROM Header & Format Fields
        for i in rom_header_type'RANGE loop
        
            rom(i)  := ROM_HEADER(i);
            
        end loop;
        
        -- Insert the configured table entries
        j := 0;
        
        for i in 4 to (C_NUM_TABLE_ENTRIES * 4 + 3) loop
        
            rom(i)  := ROM_ENTRIES(j);
            j       := j + 1;
            
        end loop;
        
        -- Insert the end of table entry
        rom((C_NUM_TABLE_ENTRIES * 4 + 4)) := x"000000" & ENTRY_END_OF_TABLE;
        
        return rom;
        
    end function;

    -------------------------------------------------------------------------------
    -- Signal Declarations
    -------------------------------------------------------------------------------
    
    signal Bus2IP_Clk           : std_logic                                                                := '0';
    signal Bus2IP_Resetn        : std_logic                                                                := '0';
    signal Bus2IP_Addr          : std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0)                        := (others => '0');
    signal Bus2IP_RNW           : std_logic                                                                := '0';
    signal Bus2IP_BE            : std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0)                    := (others => '0');
    signal Bus2IP_CS            : std_logic_vector(((C_ARD_ADDR_RANGE_ARRAY'length)/2-1) downto 0)         := (others => '0');
    signal Bus2IP_RdCE          : std_logic_vector((calc_num_ce(C_ARD_NUM_CE_ARRAY)-1) downto 0)           := (others => '0');
    signal Bus2IP_WrCE          : std_logic_vector((calc_num_ce(C_ARD_NUM_CE_ARRAY)-1) downto 0)           := (others => '0');
    signal Bus2IP_Data          : std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0)                        := (others => '0');
    signal IP2Bus_Data          : std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0)                        := (others => '0');
    signal IP2Bus_WrAck         : std_logic                                                                := '0';
    signal IP2Bus_RdAck         : std_logic                                                                := '0';
    signal IP2Bus_Error         : std_logic                                                                := '0';
    signal IP2Bus_Ack           : std_logic_vector(1 to 4)                                                 := (others => '0');
    signal BAR_Layout_ROM       : bar_layout_rom_type                                                      := fn_rom_init;
    
    attribute ram_style of BAR_Layout_ROM       : signal is "distributed";

begin

    axi_lite_ipif_1 : entity axi_lite_ipif_v3_0_4.axi_lite_ipif
        generic map
        (
            C_S_AXI_DATA_WIDTH     => C_S_AXI_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH     => C_S_AXI_ADDR_WIDTH,
            C_S_AXI_MIN_SIZE       => C_S_AXI_MIN_SIZE,
            C_USE_WSTRB            => C_USE_WSTRB,
            C_DPHASE_TIMEOUT       => C_DPHASE_TIMEOUT,
            C_ARD_ADDR_RANGE_ARRAY => C_ARD_ADDR_RANGE_ARRAY,
            C_ARD_NUM_CE_ARRAY     => C_ARD_NUM_CE_ARRAY,
            C_FAMILY               => C_FAMILY
        )
        port map (
            S_AXI_ACLK    => S_AXI_ACLK,
            S_AXI_ARESETN => S_AXI_ARESETN,
            S_AXI_AWADDR  => S_AXI_AWADDR,
            S_AXI_AWVALID => S_AXI_AWVALID,
            S_AXI_AWREADY => S_AXI_AWREADY,
            S_AXI_WDATA   => S_AXI_WDATA,
            S_AXI_WSTRB   => S_AXI_WSTRB,
            S_AXI_WVALID  => S_AXI_WVALID,
            S_AXI_WREADY  => S_AXI_WREADY,
            S_AXI_BRESP   => S_AXI_BRESP,
            S_AXI_BVALID  => S_AXI_BVALID,
            S_AXI_BREADY  => S_AXI_BREADY,
            S_AXI_ARADDR  => S_AXI_ARADDR,
            S_AXI_ARVALID => S_AXI_ARVALID,
            S_AXI_ARREADY => S_AXI_ARREADY,
            S_AXI_RDATA   => S_AXI_RDATA,
            S_AXI_RRESP   => S_AXI_RRESP,
            S_AXI_RVALID  => S_AXI_RVALID,
            S_AXI_RREADY  => S_AXI_RREADY,
            Bus2IP_Clk    => Bus2IP_Clk,
            Bus2IP_Resetn => Bus2IP_Resetn,
            Bus2IP_Addr   => Bus2IP_Addr,
            Bus2IP_RNW    => Bus2IP_RNW,
            Bus2IP_BE     => Bus2IP_BE,
            Bus2IP_CS     => Bus2IP_CS,
            Bus2IP_RdCE   => Bus2IP_RdCE,
            Bus2IP_WrCE   => Bus2IP_WrCE,
            Bus2IP_Data   => Bus2IP_Data,
            IP2Bus_Data   => IP2Bus_Data,
            IP2Bus_WrAck  => IP2Bus_WrAck,
            IP2Bus_RdAck  => IP2Bus_RdAck,
            IP2Bus_Error  => IP2Bus_Error
        );

    axi_dec : process(Bus2IP_Clk)
    
        variable Addr_Slice1    : std_logic_vector(6 downto 2)   := (others => '0');
        
    begin
    
        if rising_edge(Bus2IP_Clk) then
        
            -- Default assignments
            IP2Bus_Data   <= (others => '0');
            IP2Bus_Ack    <= (others => '0');
            IP2Bus_WrAck  <= '0';
            IP2Bus_RdAck  <= '0';
            
            if (Bus2IP_CS(0) = '1') then
            
                Addr_Slice1  := Bus2IP_Addr(Addr_Slice1'RANGE);
                
                -- Read the BAR Layout Table ROM
                IP2Bus_Data  <= BAR_Layout_ROM(to_integer(unsigned(Addr_Slice1)));

                -- Generate the Ack shift reg
                IP2Bus_Ack   <= '1' & IP2Bus_Ack(1 to IP2Bus_Ack'HIGH-1);
                
            end if;
            
            -- Single cycle Rd/Wr Ack to IPIF
            if ((IP2Bus_Ack(3) = '1') and (IP2Bus_Ack(4) = '0')) then
            
                IP2Bus_WrAck  <= '1';
                IP2Bus_RdAck  <= '1';
                
            end if;
            
        end if;
        
    end process axi_dec;

    IP2Bus_Error <= '0';
    

end top;

