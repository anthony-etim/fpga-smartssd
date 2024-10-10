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

library axi_lite_ipif_v3_0_4;
    use axi_lite_ipif_v3_0_4.ipif_pkg.all;

library xpm;
    use xpm.vcomponents.all;

entity shell_utils_uuid_rom is
    generic (
        ------------------------------------------------------------------------
        C_S_AXI_DATA_WIDTH          : integer range 32 to 32    := 32;
        C_S_AXI_ADDR_WIDTH          : integer range  3 to  9    := 5;
        C_MEMORY_INIT               : string                    := "0";
        C_XDEVICEFAMILY             : string                    := "no_family"
        ------------------------------------------------------------------------
        );
    port (
        ------------------------------------------------------------------------
        -- Processor AXI Interface
        ------------------------------------------------------------------------
        S_AXI_ACLK                  : in  std_logic;
        S_AXI_ARESETN               : in  std_logic;
        S_AXI_AWADDR                : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWVALID               : in  std_logic;
        S_AXI_AWREADY               : out std_logic;
        S_AXI_WDATA                 : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB                 : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID                : in  std_logic;
        S_AXI_WREADY                : out std_logic;
        S_AXI_BRESP                 : out std_logic_vector(1 downto 0);
        S_AXI_BVALID                : out std_logic;
        S_AXI_BREADY                : in  std_logic;
        S_AXI_ARADDR                : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARVALID               : in  std_logic;
        S_AXI_ARREADY               : out std_logic;
        S_AXI_RDATA                 : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP                 : out std_logic_vector(1 downto 0);
        S_AXI_RVALID                : out std_logic;
        S_AXI_RREADY                : in  std_logic
    );

end shell_utils_uuid_rom;

architecture rtl of shell_utils_uuid_rom is

    -------------------------------------------------------------------------------
    -- Constant Declarations
    -------------------------------------------------------------------------------

    -- Constants for AXI4-Lite.
    constant ZEROES : std_logic_vector(0 to 31) := (others => '0');
    constant ONES   : std_logic_vector(0 to 31) := (others => '1');

    constant C_FAMILY : string := C_XDEVICEFAMILY;

    constant REG_BASEADDR : std_logic_vector := X"00000000";

    constant REG_HIGHADDR : std_logic_vector(0 to 31) := (32 - C_S_AXI_ADDR_WIDTH to 31 => '1', others => '0');

    constant C_ARD_ADDR_RANGE_ARRAY : SLV64_ARRAY_TYPE := (
        ZEROES(0 to 31) & REG_BASEADDR,
        ZEROES(0 to 31) & REG_HIGHADDR
    );

    constant C_ARD_IDX_REGS : integer := 0;

    constant C_ARD_NUM_CE_ARRAY : INTEGER_ARRAY_TYPE := (
        C_ARD_IDX_REGS => 1
    );

    constant C_S_AXI_MIN_SIZE : std_logic_vector(31 downto 0) := (C_S_AXI_ADDR_WIDTH - 1 downto 0 => '1', others => '0');

    constant C_USE_WSTRB : integer := 0;

    constant C_DPHASE_TIMEOUT : integer := 3;

    constant XPM_ADDR_WIDTH : integer := C_S_AXI_ADDR_WIDTH - 2;
    constant XPM_MEMORY_SIZE : integer := (2 ** XPM_ADDR_WIDTH) * C_S_AXI_DATA_WIDTH;

    -------------------------------------------------------------------------------
    --      SIGNALS
    -------------------------------------------------------------------------------
    signal Bus2IP_Clk    : std_logic                     := '0';
    signal Bus2IP_Resetn : std_logic;
    signal Bus2IP_Addr   : std_logic_vector((C_S_AXI_ADDR_WIDTH - 1) downto 0);
    signal Bus2IP_RNW    : std_logic;
    signal Bus2IP_BE     : std_logic_vector(((C_S_AXI_DATA_WIDTH / 8) - 1) downto 0);
    signal Bus2IP_CS     : std_logic_vector(((C_ARD_ADDR_RANGE_ARRAY'length) / 2 - 1) downto 0);
    signal Bus2IP_RdCE   : std_logic_vector((calc_num_ce(C_ARD_NUM_CE_ARRAY) - 1) downto 0);
    signal Bus2IP_WrCE   : std_logic_vector((calc_num_ce(C_ARD_NUM_CE_ARRAY) - 1) downto 0);
    signal Bus2IP_Data   : std_logic_vector((C_S_AXI_DATA_WIDTH - 1) downto 0);
    signal IP2Bus_Data   : std_logic_vector((C_S_AXI_DATA_WIDTH - 1) downto 0);
    signal IP2Bus_WrAck  : std_logic                     := '0';
    signal IP2Bus_RdAck  : std_logic                     := '0';
    signal IP2Bus_Error  : std_logic                     := '0';

begin

axi_lite_ipif_1 : entity axi_lite_ipif_v3_0_4.axi_lite_ipif
    generic map(
        C_S_AXI_DATA_WIDTH     => C_S_AXI_DATA_WIDTH,
        C_S_AXI_ADDR_WIDTH     => C_S_AXI_ADDR_WIDTH,
        C_S_AXI_MIN_SIZE       => C_S_AXI_MIN_SIZE,
        C_USE_WSTRB            => C_USE_WSTRB,
        C_DPHASE_TIMEOUT       => C_DPHASE_TIMEOUT,
        C_ARD_ADDR_RANGE_ARRAY => C_ARD_ADDR_RANGE_ARRAY,
        C_ARD_NUM_CE_ARRAY     => C_ARD_NUM_CE_ARRAY,
        C_FAMILY               => C_FAMILY)
    port map(
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
        IP2Bus_Error  => IP2Bus_Error);

xpm_memory_spram_inst : xpm_memory_spram
    generic map (
        ADDR_WIDTH_A => XPM_ADDR_WIDTH,
        AUTO_SLEEP_TIME => 0,
        BYTE_WRITE_WIDTH_A => C_S_AXI_DATA_WIDTH,
        CASCADE_HEIGHT => 0,
        ECC_MODE => "no_ecc",
        MEMORY_INIT_FILE => "none",
        MEMORY_INIT_PARAM => C_MEMORY_INIT,
        MEMORY_OPTIMIZATION => "true",
        MEMORY_PRIMITIVE => "distributed",
        MEMORY_SIZE => XPM_MEMORY_SIZE,
        MESSAGE_CONTROL => 0,
        READ_DATA_WIDTH_A => C_S_AXI_DATA_WIDTH,
        READ_LATENCY_A => 1,
        READ_RESET_VALUE_A => "0",
        RST_MODE_A => "SYNC",
        SIM_ASSERT_CHK => 0,
        USE_MEM_INIT => 1,
        WAKEUP_TIME => "disable_sleep",
        WRITE_DATA_WIDTH_A => C_S_AXI_DATA_WIDTH,
        WRITE_MODE_A => "read_first"
    )
    port map (
        dbiterra => open,
        douta => IP2Bus_Data,
        sbiterra => open,
        addra => Bus2IP_Addr(C_S_AXI_ADDR_WIDTH-1 downto 2),
        clka => Bus2IP_Clk,
        ena => Bus2IP_CS(0),
        injectdbiterra => '0',
        injectsbiterra => '0',
        regcea => '0',
        rsta => '0',
        sleep => '0',
        wea => "0",
        dina => ZEROES(0 to C_S_AXI_DATA_WIDTH-1)
    );

end architecture rtl;


