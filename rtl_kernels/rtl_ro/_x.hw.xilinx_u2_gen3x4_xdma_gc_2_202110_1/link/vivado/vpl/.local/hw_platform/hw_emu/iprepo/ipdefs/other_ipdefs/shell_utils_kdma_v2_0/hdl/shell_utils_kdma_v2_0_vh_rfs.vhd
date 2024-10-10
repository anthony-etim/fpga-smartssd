-- (c) Copyright 1986-2019 Xilinx, Inc. All rights reserved.
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
------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity shell_utils_kdma_control_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 6;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    -- axi4 lite slave signals
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    interrupt             :out  STD_LOGIC;
    -- user signals
    ap_start              :out  STD_LOGIC;
    ap_done               :in   STD_LOGIC;
    ap_ready              :in   STD_LOGIC;
    ap_idle               :in   STD_LOGIC;
    input0                :out  STD_LOGIC_VECTOR(63 downto 0);
    output0               :out  STD_LOGIC_VECTOR(63 downto 0);
    num_blocks            :out  STD_LOGIC_VECTOR(63 downto 0)
);
end entity shell_utils_kdma_control_s_axi;

-- ------------------------Address Info-------------------
-- 0x00 : Control signals
--        bit 0  - ap_start (Read/Write/COH)
--        bit 1  - ap_done (Read/COR)
--        bit 2  - ap_idle (Read)
--        bit 3  - ap_ready (Read)
--        bit 7  - auto_restart (Read/Write)
--        others - reserved
-- 0x04 : Global Interrupt Enable Register
--        bit 0  - Global Interrupt Enable (Read/Write)
--        others - reserved
-- 0x08 : IP Interrupt Enable Register (Read/Write)
--        bit 0  - Channel 0 (ap_done)
--        bit 1  - Channel 1 (ap_ready)
--        others - reserved
-- 0x0c : IP Interrupt Status Register (Read/TOW)
--        bit 0  - Channel 0 (ap_done)
--        bit 1  - Channel 1 (ap_ready)
--        others - reserved
-- 0x10 : Data signal of input0
--        bit 31~0 - input0[31:0] (Read/Write)
-- 0x14 : Data signal of input0
--        bit 31~0 - input0[63:32] (Read/Write)
-- 0x18 : reserved
-- 0x1c : Data signal of output0
--        bit 31~0 - output0[31:0] (Read/Write)
-- 0x20 : Data signal of output0
--        bit 31~0 - output0[63:32] (Read/Write)
-- 0x24 : reserved
-- 0x28 : Data signal of num_blocks
--        bit 31~0 - num_blocks[31:0] (Read/Write)
-- 0x2c : Data signal of num_blocks
--        bit 31~0 - num_blocks[63:32] (Read/Write)
-- 0x30 : reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of shell_utils_kdma_control_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_AP_CTRL           : INTEGER := 16#00#;
    constant ADDR_GIE               : INTEGER := 16#04#;
    constant ADDR_IER               : INTEGER := 16#08#;
    constant ADDR_ISR               : INTEGER := 16#0c#;
    constant ADDR_INPUT0_DATA_0     : INTEGER := 16#10#;
    constant ADDR_INPUT0_DATA_1     : INTEGER := 16#14#;
    constant ADDR_INPUT0_CTRL       : INTEGER := 16#18#;
    constant ADDR_OUTPUT0_DATA_0    : INTEGER := 16#1c#;
    constant ADDR_OUTPUT0_DATA_1    : INTEGER := 16#20#;
    constant ADDR_OUTPUT0_CTRL      : INTEGER := 16#24#;
    constant ADDR_NUM_BLOCKS_DATA_0 : INTEGER := 16#28#;
    constant ADDR_NUM_BLOCKS_DATA_1 : INTEGER := 16#2c#;
    constant ADDR_NUM_BLOCKS_CTRL   : INTEGER := 16#30#;
    constant ADDR_BITS         : INTEGER := 6;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(31 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(31 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_ap_idle         : STD_LOGIC;
    signal int_ap_ready        : STD_LOGIC;
    signal int_ap_done         : STD_LOGIC := '0';
    signal int_ap_start        : STD_LOGIC := '0';
    signal int_auto_restart    : STD_LOGIC := '0';
    signal int_gie             : STD_LOGIC := '0';
    signal int_ier             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_isr             : UNSIGNED(1 downto 0) := (others => '0');
    signal int_input0          : UNSIGNED(63 downto 0) := (others => '0');
    signal int_output0         : UNSIGNED(63 downto 0) := (others => '0');
    signal int_num_blocks      : UNSIGNED(63 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------

-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    case (TO_INTEGER(raddr)) is
                    when ADDR_AP_CTRL =>
                        rdata_data <= (7 => int_auto_restart, 3 => int_ap_ready, 2 => int_ap_idle, 1 => int_ap_done, 0 => int_ap_start, others => '0');
                    when ADDR_GIE =>
                        rdata_data <= (0 => int_gie, others => '0');
                    when ADDR_IER =>
                        rdata_data <= (1 => int_ier(1), 0 => int_ier(0), others => '0');
                    when ADDR_ISR =>
                        rdata_data <= (1 => int_isr(1), 0 => int_isr(0), others => '0');
                    when ADDR_INPUT0_DATA_0 =>
                        rdata_data <= RESIZE(int_input0(31 downto 0), 32);
                    when ADDR_INPUT0_DATA_1 =>
                        rdata_data <= RESIZE(int_input0(63 downto 32), 32);
                    when ADDR_OUTPUT0_DATA_0 =>
                        rdata_data <= RESIZE(int_output0(31 downto 0), 32);
                    when ADDR_OUTPUT0_DATA_1 =>
                        rdata_data <= RESIZE(int_output0(63 downto 32), 32);
                    when ADDR_NUM_BLOCKS_DATA_0 =>
                        rdata_data <= RESIZE(int_num_blocks(31 downto 0), 32);
                    when ADDR_NUM_BLOCKS_DATA_1 =>
                        rdata_data <= RESIZE(int_num_blocks(63 downto 32), 32);
                    when others =>
                        rdata_data <= (others => '0');
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    interrupt            <= int_gie and (int_isr(0) or int_isr(1));
    ap_start             <= int_ap_start;
    input0               <= STD_LOGIC_VECTOR(int_input0);
    output0              <= STD_LOGIC_VECTOR(int_output0);
    num_blocks           <= STD_LOGIC_VECTOR(int_num_blocks);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_start <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1' and WDATA(0) = '1') then
                    int_ap_start <= '1';
                elsif (ap_ready = '1') then
                    int_ap_start <= int_auto_restart; -- clear on handshake/auto restart
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_done <= '0';
            elsif (ACLK_EN = '1') then
                if (ap_done = '1') then
                    int_ap_done <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_AP_CTRL) then
                    int_ap_done <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_idle <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_idle <= ap_idle;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ap_ready <= '0';
            elsif (ACLK_EN = '1') then
                if (true) then
                    int_ap_ready <= ap_ready;
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_auto_restart <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_AP_CTRL and WSTRB(0) = '1') then
                    int_auto_restart <= WDATA(7);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_gie <= '0';
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_GIE and WSTRB(0) = '1') then
                    int_gie <= WDATA(0);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_ier <= "00";
            elsif (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_IER and WSTRB(0) = '1') then
                    int_ier <= UNSIGNED(WDATA(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(0) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(0) = '1' and ap_done = '1') then
                    int_isr(0) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(0) <= int_isr(0) xor WDATA(0); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_isr(1) <= '0';
            elsif (ACLK_EN = '1') then
                if (int_ier(1) = '1' and ap_ready = '1') then
                    int_isr(1) <= '1';
                elsif (w_hs = '1' and waddr = ADDR_ISR and WSTRB(0) = '1') then
                    int_isr(1) <= int_isr(1) xor WDATA(1); -- toggle on write
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT0_DATA_0) then
                    int_input0(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_input0(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_INPUT0_DATA_1) then
                    int_input0(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_input0(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_OUTPUT0_DATA_0) then
                    int_output0(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_output0(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_OUTPUT0_DATA_1) then
                    int_output0(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_output0(63 downto 32));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_NUM_BLOCKS_DATA_0) then
                    int_num_blocks(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_num_blocks(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_NUM_BLOCKS_DATA_1) then
                    int_num_blocks(63 downto 32) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_num_blocks(63 downto 32));
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;


-- (c) Copyright 1986-2019 Xilinx, Inc. All rights reserved.
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
------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity shell_utils_kdma_gmem_m_axi is
    generic (
        CONSERVATIVE              : INTEGER := 0;
        NUM_READ_OUTSTANDING      : INTEGER := 2;
        NUM_WRITE_OUTSTANDING     : INTEGER := 2;
        MAX_READ_BURST_LENGTH     : INTEGER := 16;
        MAX_WRITE_BURST_LENGTH    : INTEGER := 16;
        C_M_AXI_ID_WIDTH          : INTEGER := 1;
        C_M_AXI_ADDR_WIDTH        : INTEGER := 32;
        C_TARGET_ADDR             : INTEGER := 16#00000000#;
        C_M_AXI_DATA_WIDTH        : INTEGER := 32;
        C_M_AXI_AWUSER_WIDTH      : INTEGER := 1;
        C_M_AXI_ARUSER_WIDTH      : INTEGER := 1;
        C_M_AXI_WUSER_WIDTH       : INTEGER := 1;
        C_M_AXI_RUSER_WIDTH       : INTEGER := 1;
        C_M_AXI_BUSER_WIDTH       : INTEGER := 1;
        C_USER_VALUE              : INTEGER := 0;
        C_PROT_VALUE              : INTEGER := 2#000#;
        C_CACHE_VALUE             : INTEGER := 2#0011#;
        USER_DW                   : INTEGER := 16;
        USER_AW                   : INTEGER := 32;
        USER_MAXREQS              : INTEGER := 16);
    port (
        -- system signal
        ACLK            : in STD_LOGIC;
        ARESET          : in STD_LOGIC;
        ACLK_EN         : in STD_LOGIC;
        -- write address channel
        AWID            : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        AWADDR          : out STD_LOGIC_VECTOR(C_M_AXI_ADDR_WIDTH-1 downto 0);
        AWLEN           : out STD_LOGIC_VECTOR(7 downto 0);
        AWSIZE          : out STD_LOGIC_VECTOR(2 downto 0);
        AWBURST         : out STD_LOGIC_VECTOR(1 downto 0);
        AWLOCK          : out STD_LOGIC_VECTOR(1 downto 0);
        AWCACHE         : out STD_LOGIC_VECTOR(3 downto 0);
        AWPROT          : out STD_LOGIC_VECTOR(2 downto 0);
        AWQOS           : out STD_LOGIC_VECTOR(3 downto 0);
        AWREGION        : out STD_LOGIC_VECTOR(3 downto 0);
        AWUSER          : out STD_LOGIC_VECTOR(C_M_AXI_AWUSER_WIDTH-1 downto 0);
        AWVALID         : out STD_LOGIC;
        AWREADY         : in  STD_LOGIC;
        -- write data channel
        WID             : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        WDATA           : out STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH-1 downto 0);
        WSTRB           : out STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH/8-1 downto 0);
        WLAST           : out STD_LOGIC;
        WUSER           : out STD_LOGIC_VECTOR(C_M_AXI_WUSER_WIDTH-1 downto 0);
        WVALID          : out STD_LOGIC;
        WREADY          : in  STD_LOGIC;
        -- write response channel
        BID             : in  STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        BRESP           : in  STD_LOGIC_VECTOR(1 downto 0);
        BUSER           : in  STD_LOGIC_VECTOR(C_M_AXI_BUSER_WIDTH-1 downto 0);
        BVALID          : in  STD_LOGIC;
        BREADY          : out STD_LOGIC;
        -- read address channel
        ARID            : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        ARADDR          : out STD_LOGIC_VECTOR(C_M_AXI_ADDR_WIDTH-1 downto 0);
        ARLEN           : out STD_LOGIC_VECTOR(7 downto 0);
        ARSIZE          : out STD_LOGIC_VECTOR(2 downto 0);
        ARBURST         : out STD_LOGIC_VECTOR(1 downto 0);
        ARLOCK          : out STD_LOGIC_VECTOR(1 downto 0);
        ARCACHE         : out STD_LOGIC_VECTOR(3 downto 0);
        ARPROT          : out STD_LOGIC_VECTOR(2 downto 0);
        ARQOS           : out STD_LOGIC_VECTOR(3 downto 0);
        ARREGION        : out STD_LOGIC_VECTOR(3 downto 0);
        ARUSER          : out STD_LOGIC_VECTOR(C_M_AXI_ARUSER_WIDTH-1 downto 0);
        ARVALID         : out STD_LOGIC;
        ARREADY         : in  STD_LOGIC;
        -- read data channel
        RID             : in  STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        RDATA           : in  STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH-1 downto 0);
        RRESP           : in  STD_LOGIC_VECTOR(1 downto 0);
        RLAST           : in  STD_LOGIC;
        RUSER           : in  STD_LOGIC_VECTOR(C_M_AXI_RUSER_WIDTH-1 downto 0);
        RVALID          : in  STD_LOGIC;
        RREADY          : out STD_LOGIC;

        -- internal bus ports
        -- write address channel
        I_AWID          : in  STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        I_AWADDR        : in  STD_LOGIC_VECTOR(USER_AW-1 downto 0);
        I_AWLEN         : in  STD_LOGIC_VECTOR(31 downto 0);
        I_AWSIZE        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_AWBURST       : in  STD_LOGIC_VECTOR(1 downto 0);
        I_AWLOCK        : in  STD_LOGIC_VECTOR(1 downto 0);
        I_AWCACHE       : in  STD_LOGIC_VECTOR(3 downto 0);
        I_AWPROT        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_AWQOS         : in  STD_LOGIC_VECTOR(3 downto 0);
        I_AWREGION      : in  STD_LOGIC_VECTOR(3 downto 0);
        I_AWUSER        : in  STD_LOGIC_VECTOR(C_M_AXI_AWUSER_WIDTH-1 downto 0);
        I_AWVALID       : in  STD_LOGIC;
        I_AWREADY       : out STD_LOGIC;
        -- write data channel
        I_WID           : in  STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        I_WDATA         : in  STD_LOGIC_VECTOR(USER_DW-1 downto 0);
        I_WSTRB         : in  STD_LOGIC_VECTOR(USER_DW/8-1 downto 0);
        I_WLAST         : in  STD_LOGIC;
        I_WUSER         : in  STD_LOGIC_VECTOR(C_M_AXI_WUSER_WIDTH-1 downto 0);
        I_WVALID        : in  STD_LOGIC;
        I_WREADY        : out STD_LOGIC;
        -- write response channel
        I_BID           : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        I_BRESP         : out STD_LOGIC_VECTOR(1 downto 0);
        I_BUSER         : out STD_LOGIC_VECTOR(C_M_AXI_BUSER_WIDTH-1 downto 0);
        I_BVALID        : out STD_LOGIC;
        I_BREADY        : in  STD_LOGIC;
        -- read address channel
        I_ARID          : in  STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        I_ARADDR        : in  STD_LOGIC_VECTOR(USER_AW-1 downto 0);
        I_ARLEN         : in  STD_LOGIC_VECTOR(31 downto 0);
        I_ARSIZE        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_ARBURST       : in  STD_LOGIC_VECTOR(1 downto 0);
        I_ARLOCK        : in  STD_LOGIC_VECTOR(1 downto 0);
        I_ARCACHE       : in  STD_LOGIC_VECTOR(3 downto 0);
        I_ARPROT        : in  STD_LOGIC_VECTOR(2 downto 0);
        I_ARQOS         : in  STD_LOGIC_VECTOR(3 downto 0);
        I_ARREGION      : in  STD_LOGIC_VECTOR(3 downto 0);
        I_ARUSER        : in  STD_LOGIC_VECTOR(C_M_AXI_ARUSER_WIDTH-1 downto 0);
        I_ARVALID       : in  STD_LOGIC;
        I_ARREADY       : out STD_LOGIC;
        -- read data channel
        I_RID           : out STD_LOGIC_VECTOR(C_M_AXI_ID_WIDTH-1 downto 0);
        I_RDATA         : out STD_LOGIC_VECTOR(USER_DW-1 downto 0);
        I_RRESP         : out STD_LOGIC_VECTOR(1 downto 0);
        I_RLAST         : out STD_LOGIC;
        I_RUSER         : out STD_LOGIC_VECTOR(C_M_AXI_RUSER_WIDTH-1 downto 0);
        I_RVALID        : out STD_LOGIC;
        I_RREADY        : in  STD_LOGIC);
end entity shell_utils_kdma_gmem_m_axi;

architecture behave of shell_utils_kdma_gmem_m_axi is
    component shell_utils_kdma_gmem_m_axi_write is
        generic (
            NUM_WRITE_OUTSTANDING     : INTEGER := 1;
            MAX_WRITE_BURST_LENGTH    : INTEGER := 1;
            C_M_AXI_ID_WIDTH          : INTEGER := 1;
            C_M_AXI_ADDR_WIDTH        : INTEGER := 32;
            C_TARGET_ADDR             : INTEGER := 16#00000000#;
            C_M_AXI_DATA_WIDTH        : INTEGER := 32;
            C_M_AXI_AWUSER_WIDTH      : INTEGER := 1;
            C_M_AXI_WUSER_WIDTH       : INTEGER := 1;
            C_M_AXI_BUSER_WIDTH       : INTEGER := 1;
            C_USER_VALUE              : INTEGER := 0;
            C_PROT_VALUE              : INTEGER := 0;
            C_CACHE_VALUE             : INTEGER := 2#0011#;
            USER_DW                   : INTEGER := 16;
            USER_AW                   : INTEGER := 32;
            USER_MAXREQS              : INTEGER := 16);
        port (
            ACLK            : in  STD_LOGIC;
            ARESET          : in  STD_LOGIC;
            ACLK_EN         : in  STD_LOGIC;
            AWID            : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            AWADDR          : out UNSIGNED(C_M_AXI_ADDR_WIDTH-1 downto 0);
            AWLEN           : out UNSIGNED(7 downto 0);
            AWSIZE          : out UNSIGNED(2 downto 0);
            AWBURST         : out UNSIGNED(1 downto 0);
            AWLOCK          : out UNSIGNED(1 downto 0);
            AWCACHE         : out UNSIGNED(3 downto 0);
            AWPROT          : out UNSIGNED(2 downto 0);
            AWQOS           : out UNSIGNED(3 downto 0);
            AWREGION        : out UNSIGNED(3 downto 0);
            AWUSER          : out UNSIGNED(C_M_AXI_AWUSER_WIDTH-1 downto 0);
            AWVALID         : out STD_LOGIC;
            AWREADY         : in  STD_LOGIC;
            WID             : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            WDATA           : out UNSIGNED(C_M_AXI_DATA_WIDTH-1 downto 0);
            WSTRB           : out UNSIGNED(C_M_AXI_DATA_WIDTH/8-1 downto 0);
            WLAST           : out STD_LOGIC;
            WUSER           : out UNSIGNED(C_M_AXI_WUSER_WIDTH-1 downto 0);
            WVALID          : out STD_LOGIC;
            WREADY          : in  STD_LOGIC;
            BID             : in  UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            BRESP           : in  UNSIGNED(1 downto 0);
            BUSER           : in  UNSIGNED(C_M_AXI_BUSER_WIDTH-1 downto 0);
            BVALID          : in  STD_LOGIC;
            BREADY          : out STD_LOGIC;
            wreq_valid      : in  STD_LOGIC;
            wreq_ack        : out STD_LOGIC;
            wreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
            wreq_length     : in  UNSIGNED(31 downto 0);
            wreq_cache      : in  UNSIGNED(3 downto 0);
            wreq_prot       : in  UNSIGNED(2 downto 0);
            wreq_qos        : in  UNSIGNED(3 downto 0);
            wreq_region     : in  UNSIGNED(3 downto 0);
            wreq_user       : in  UNSIGNED(C_M_AXI_AWUSER_WIDTH-1 downto 0);
            wdata_valid     : in  STD_LOGIC;
            wdata_ack       : out STD_LOGIC;
            wdata_strb      : in  UNSIGNED(USER_DW/8-1 downto 0);
            wdata_user      : in  UNSIGNED(C_M_AXI_WUSER_WIDTH-1 downto 0);
            wdata_data      : in  UNSIGNED(USER_DW-1 downto 0);
            wrsp_valid      : out STD_LOGIC;
            wrsp_ack        : in  STD_LOGIC;
            wrsp            : out UNSIGNED(1 downto 0));
    end component shell_utils_kdma_gmem_m_axi_write;

    component shell_utils_kdma_gmem_m_axi_read is
        generic (
            NUM_READ_OUTSTANDING      : INTEGER := 1;
            MAX_READ_BURST_LENGTH     : INTEGER := 1;
            C_M_AXI_ID_WIDTH          : INTEGER := 1;
            C_M_AXI_ADDR_WIDTH        : INTEGER := 32;
            C_TARGET_ADDR             : INTEGER := 16#00000000#;
            C_M_AXI_DATA_WIDTH        : INTEGER := 32;
            C_M_AXI_ARUSER_WIDTH      : INTEGER := 1;
            C_M_AXI_RUSER_WIDTH       : INTEGER := 1;
            C_USER_VALUE              : INTEGER := 0;
            C_PROT_VALUE              : INTEGER := 0;
            C_CACHE_VALUE             : INTEGER := 2#0011#;
            USER_DW                   : INTEGER := 16;
            USER_AW                   : INTEGER := 32;
            USER_MAXREQS              : INTEGER := 16);
        port (
            ACLK            : in  STD_LOGIC;
            ARESET          : in  STD_LOGIC;
            ACLK_EN         : in  STD_LOGIC;
            ARID            : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            ARADDR          : out UNSIGNED(C_M_AXI_ADDR_WIDTH-1 downto 0);
            ARLEN           : out UNSIGNED(7 downto 0);
            ARSIZE          : out UNSIGNED(2 downto 0);
            ARBURST         : out UNSIGNED(1 downto 0);
            ARLOCK          : out UNSIGNED(1 downto 0);
            ARCACHE         : out UNSIGNED(3 downto 0);
            ARPROT          : out UNSIGNED(2 downto 0);
            ARQOS           : out UNSIGNED(3 downto 0);
            ARREGION        : out UNSIGNED(3 downto 0);
            ARUSER          : out UNSIGNED(C_M_AXI_ARUSER_WIDTH-1 downto 0);
            ARVALID         : out STD_LOGIC;
            ARREADY         : in  STD_LOGIC;
            RID             : in  UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
            RDATA           : in  UNSIGNED(C_M_AXI_DATA_WIDTH-1 downto 0);
            RRESP           : in  UNSIGNED(1 downto 0);
            RLAST           : in  STD_LOGIC;
            RUSER           : in  UNSIGNED(C_M_AXI_RUSER_WIDTH-1 downto 0);
            RVALID          : in  STD_LOGIC;
            RREADY          : out STD_LOGIC;
            rreq_valid      : in  STD_LOGIC;
            rreq_ack        : out STD_LOGIC;
            rreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
            rreq_length     : in  UNSIGNED(31 downto 0);
            rreq_cache      : in  UNSIGNED(3 downto 0);
            rreq_prot       : in  UNSIGNED(2 downto 0);
            rreq_qos        : in  UNSIGNED(3 downto 0);
            rreq_region     : in  UNSIGNED(3 downto 0);
            rreq_user       : in  UNSIGNED(C_M_AXI_ARUSER_WIDTH-1 downto 0);
            rdata_valid     : out STD_LOGIC;
            rdata_ack       : in  STD_LOGIC;
            rdata_data      : out UNSIGNED(USER_DW-1 downto 0);
            rrsp            : out UNSIGNED(1 downto 0));
    end component shell_utils_kdma_gmem_m_axi_read;

    component shell_utils_kdma_gmem_m_axi_throttl is
        generic (
            USED_FIX      : BOOLEAN := true;
            FIX_VALUE     : INTEGER := 4;
            ADDR_WIDTH    : INTEGER := 32;
            DATA_WIDTH    : INTEGER := 32;
            DEPTH         : INTEGER := 16;
            USER_MAXREQS  : INTEGER := 16;
            CONSERVATIVE  : INTEGER := 0;
            AVERAGE_MODE  : BOOLEAN := false);
        port (
            clk             : in  STD_LOGIC;
            reset           : in  STD_LOGIC;
            ce              : in  STD_LOGIC;
            in_addr         : in  STD_LOGIC_VECTOR;
            in_len          : in  STD_LOGIC_VECTOR;
            in_req_valid    : in  STD_LOGIC;
            out_req_ready   : out STD_LOGIC;
            out_addr        : out STD_LOGIC_VECTOR;
            out_len         : out STD_LOGIC_VECTOR;
            out_req_valid   : out STD_LOGIC;
            in_req_ready    : in  STD_LOGIC;
            in_data         : in  STD_LOGIC_VECTOR;
            in_strb         : in  STD_LOGIC_VECTOR;
            in_last         : in  STD_LOGIC;
            in_data_valid   : in  STD_LOGIC;
            out_data_ready  : out STD_LOGIC;
            out_data        : out STD_LOGIC_VECTOR;
            out_strb        : out STD_LOGIC_VECTOR;
            out_last        : out STD_LOGIC;
            out_data_valid  : out STD_LOGIC;
            in_data_ready   : in  STD_LOGIC);
    end component shell_utils_kdma_gmem_m_axi_throttl;

    signal      AWADDR_Dummy    : STD_LOGIC_VECTOR(C_M_AXI_ADDR_WIDTH-1 downto 0);
    signal      AWLEN_Dummy     : STD_LOGIC_VECTOR(7 downto 0);
    signal      AWVALID_Dummy   : STD_LOGIC;
    signal      AWREADY_Dummy   : STD_LOGIC;
    signal      WDATA_Dummy     : STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH-1 downto 0);
    signal      WSTRB_Dummy     : STD_LOGIC_VECTOR(C_M_AXI_DATA_WIDTH/8-1 downto 0);
    signal      WLAST_Dummy     : STD_LOGIC;
    signal      WVALID_Dummy    : STD_LOGIC;
    signal      WREADY_Dummy    : STD_LOGIC;

begin

    wreq_throttl : shell_utils_kdma_gmem_m_axi_throttl
        generic map (
            USED_FIX        => false,
            ADDR_WIDTH      => C_M_AXI_ADDR_WIDTH,
            DATA_WIDTH      => C_M_AXI_DATA_WIDTH,
            DEPTH           => MAX_WRITE_BURST_LENGTH,
            USER_MAXREQS    => NUM_WRITE_OUTSTANDING,
            CONSERVATIVE    => CONSERVATIVE,
            AVERAGE_MODE    => false)
        port map (
            clk             => ACLK,
            reset           => ARESET,
            ce              => ACLK_EN,
            in_addr         => AWADDR_Dummy,
            in_len          => AWLEN_Dummy,
            in_req_valid    => AWVALID_Dummy,
            out_req_ready   => AWREADY_Dummy,
            out_addr        => AWADDR,
            out_len         => AWLEN,
            out_req_valid   => AWVALID,
            in_req_ready    => AWREADY,
            in_data         => WDATA_Dummy,
            in_strb         => WSTRB_Dummy,
            in_last         => WLAST_Dummy,
            in_data_valid   => WVALID_Dummy,
            out_data_ready  => WREADY_Dummy,
            out_data        => WDATA,
            out_strb        => WSTRB,
            out_last        => WLAST,
            out_data_valid  => WVALID,
            in_data_ready   => WREADY);

    I_BID   <= (others => '0');
    I_BUSER <= STD_LOGIC_VECTOR(TO_UNSIGNED(C_USER_VALUE, I_BUSER'length));
    I_RID   <= (others => '0');
    I_RLAST <= '0';
    I_RUSER <= STD_LOGIC_VECTOR(TO_UNSIGNED(C_USER_VALUE, I_RUSER'length));

    -- Instantiation
    bus_write : shell_utils_kdma_gmem_m_axi_write
        generic map (
            NUM_WRITE_OUTSTANDING     => NUM_WRITE_OUTSTANDING,
            MAX_WRITE_BURST_LENGTH    => MAX_WRITE_BURST_LENGTH,
            C_M_AXI_ID_WIDTH          => C_M_AXI_ID_WIDTH,
            C_M_AXI_ADDR_WIDTH        => C_M_AXI_ADDR_WIDTH,
            C_TARGET_ADDR             => C_TARGET_ADDR,
            C_M_AXI_DATA_WIDTH        => C_M_AXI_DATA_WIDTH,
            C_M_AXI_AWUSER_WIDTH      => C_M_AXI_AWUSER_WIDTH,
            C_M_AXI_WUSER_WIDTH       => C_M_AXI_WUSER_WIDTH,
            C_M_AXI_BUSER_WIDTH       => C_M_AXI_BUSER_WIDTH,
            C_USER_VALUE              => C_USER_VALUE,
            C_PROT_VALUE              => C_PROT_VALUE,
            C_CACHE_VALUE             => C_CACHE_VALUE,
            USER_DW                   => USER_DW,
            USER_AW                   => USER_AW,
            USER_MAXREQS              => USER_MAXREQS)
        port map (
            ACLK                        => ACLK,
            ARESET                      => ARESET,
            ACLK_EN                     => ACLK_EN,
            STD_LOGIC_VECTOR(AWID)      => AWID,
            STD_LOGIC_VECTOR(AWADDR)    => AWADDR_Dummy,
            STD_LOGIC_VECTOR(AWLEN)     => AWLEN_Dummy,
            STD_LOGIC_VECTOR(AWSIZE)    => AWSIZE,
            STD_LOGIC_VECTOR(AWBURST)   => AWBURST,
            STD_LOGIC_VECTOR(AWLOCK)    => AWLOCK,
            STD_LOGIC_VECTOR(AWCACHE)   => AWCACHE,
            STD_LOGIC_VECTOR(AWPROT)    => AWPROT,
            STD_LOGIC_VECTOR(AWQOS)     => AWQOS,
            STD_LOGIC_VECTOR(AWREGION)  => AWREGION,
            STD_LOGIC_VECTOR(AWUSER)    => AWUSER,
            AWVALID                     => AWVALID_Dummy,
            AWREADY                     => AWREADY_Dummy,
            STD_LOGIC_VECTOR(WID)       => WID,
            STD_LOGIC_VECTOR(WDATA)     => WDATA_Dummy,
            STD_LOGIC_VECTOR(WSTRB)     => WSTRB_Dummy,
            WLAST                       => WLAST_Dummy,
            STD_LOGIC_VECTOR(WUSER)     => WUSER,
            WVALID                      => WVALID_Dummy,
            WREADY                      => WREADY_Dummy,
            BID                         => UNSIGNED(BID),
            BRESP                       => UNSIGNED(BRESP),
            BUSER                       => UNSIGNED(BUSER),
            BVALID                      => BVALID,
            BREADY                      => BREADY,
            wreq_valid                  => I_AWVALID,
            wreq_ack                    => I_AWREADY,
            wreq_addr                   => UNSIGNED(I_AWADDR),
            wreq_length                 => UNSIGNED(I_AWLEN),
            wreq_cache                  => UNSIGNED(I_AWCACHE),
            wreq_prot                   => UNSIGNED(I_AWPROT),
            wreq_qos                    => UNSIGNED(I_AWQOS),
            wreq_region                 => UNSIGNED(I_AWREGION),
            wreq_user                   => UNSIGNED(I_AWUSER),
            wdata_valid                 => I_WVALID,
            wdata_ack                   => I_WREADY,
            wdata_strb                  => UNSIGNED(I_WSTRB),
            wdata_user                  => UNSIGNED(I_WUSER),
            wdata_data                  => UNSIGNED(I_WDATA),
            wrsp_valid                  => I_BVALID,
            wrsp_ack                    => I_BREADY,
            STD_LOGIC_VECTOR(wrsp)      => I_BRESP);

    bus_read : shell_utils_kdma_gmem_m_axi_read
        generic map (
            NUM_READ_OUTSTANDING      => NUM_READ_OUTSTANDING,
            MAX_READ_BURST_LENGTH     => MAX_READ_BURST_LENGTH,
            C_M_AXI_ID_WIDTH          => C_M_AXI_ID_WIDTH,
            C_M_AXI_ADDR_WIDTH        => C_M_AXI_ADDR_WIDTH,
            C_TARGET_ADDR             => C_TARGET_ADDR,
            C_M_AXI_DATA_WIDTH        => C_M_AXI_DATA_WIDTH,
            C_M_AXI_ARUSER_WIDTH      => C_M_AXI_ARUSER_WIDTH,
            C_M_AXI_RUSER_WIDTH       => C_M_AXI_RUSER_WIDTH,
            C_USER_VALUE              => C_USER_VALUE,
            C_PROT_VALUE              => C_PROT_VALUE,
            C_CACHE_VALUE             => C_CACHE_VALUE,
            USER_DW                   => USER_DW,
            USER_AW                   => USER_AW,
            USER_MAXREQS              => USER_MAXREQS)
        port map (
            ACLK                        => ACLK,
            ARESET                      => ARESET,
            ACLK_EN                     => ACLK_EN,
            STD_LOGIC_VECTOR(ARID)      => ARID,
            STD_LOGIC_VECTOR(ARADDR)    => ARADDR,
            STD_LOGIC_VECTOR(ARLEN)     => ARLEN,
            STD_LOGIC_VECTOR(ARSIZE)    => ARSIZE,
            STD_LOGIC_VECTOR(ARBURST)   => ARBURST,
            STD_LOGIC_VECTOR(ARLOCK)    => ARLOCK,
            STD_LOGIC_VECTOR(ARCACHE)   => ARCACHE,
            STD_LOGIC_VECTOR(ARPROT)    => ARPROT,
            STD_LOGIC_VECTOR(ARQOS)     => ARQOS,
            STD_LOGIC_VECTOR(ARREGION)  => ARREGION,
            STD_LOGIC_VECTOR(ARUSER)    => ARUSER,
            ARVALID                     => ARVALID,
            ARREADY                     => ARREADY,
            RID                         => UNSIGNED(RID),
            RDATA                       => UNSIGNED(RDATA),
            RRESP                       => UNSIGNED(RRESP),
            RLAST                       => RLAST,
            RUSER                       => UNSIGNED(RUSER),
            RVALID                      => RVALID,
            RREADY                      => RREADY,
            rreq_valid                  => I_ARVALID,
            rreq_ack                    => I_ARREADY,
            rreq_addr                   => UNSIGNED(I_ARADDR),
            rreq_length                 => UNSIGNED(I_ARLEN),
            rreq_cache                  => UNSIGNED(I_ARCACHE),
            rreq_prot                   => UNSIGNED(I_ARPROT),
            rreq_qos                    => UNSIGNED(I_ARQOS),
            rreq_region                 => UNSIGNED(I_ARREGION),
            rreq_user                   => UNSIGNED(I_ARUSER),
            rdata_valid                 => I_RVALID,
            rdata_ack                   => I_RREADY,
            STD_LOGIC_VECTOR(rdata_data)=> I_RDATA,
            STD_LOGIC_VECTOR(rrsp)      => I_RRESP);

end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity shell_utils_kdma_gmem_m_axi_reg_slice is
    generic (
        N           : INTEGER := 8);
    port (
        -- system signals
        sclk        : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        -- slave side
        s_data      : in  STD_LOGIC_VECTOR(N-1 downto 0);
        s_valid     : in  STD_LOGIC;
        s_ready     : out STD_LOGIC;
        -- master side
        m_data      : out STD_LOGIC_VECTOR(N-1 downto 0);
        m_valid     : out STD_LOGIC;
        m_ready     : in  STD_LOGIC);
end entity shell_utils_kdma_gmem_m_axi_reg_slice;

architecture behave of shell_utils_kdma_gmem_m_axi_reg_slice is
    constant ZERO                     : STD_LOGIC_VECTOR(1 downto 0) := "10";
    constant ONE                      : STD_LOGIC_VECTOR(1 downto 0) := "11";
    constant TWO                      : STD_LOGIC_VECTOR(1 downto 0) := "01";
    signal   data_p1                  : STD_LOGIC_VECTOR(N-1 downto 0);
    signal   data_p2                  : STD_LOGIC_VECTOR(N-1 downto 0);
    signal   load_p1                  : STD_LOGIC;
    signal   load_p2                  : STD_LOGIC;
    signal   load_p1_from_p2          : STD_LOGIC;
    signal   s_ready_t                : STD_LOGIC;
    signal   state                    : STD_LOGIC_VECTOR(1 downto 0);
    signal   next_st                     : STD_LOGIC_VECTOR(1 downto 0);
begin
    s_ready <= s_ready_t;
    m_data  <= data_p1;
    m_valid <= state(0);

    load_p1 <= '1' when (state = ZERO and s_valid = '1') or
                        (state = ONE  and s_valid = '1' and m_ready = '1') or
                        (state = TWO  and m_ready = '1')
               else '0';

    load_p2         <= s_valid and s_ready_t;
    load_p1_from_p2 <= '1' when state = TWO else '0';

    data_p1_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if (load_p1 = '1') then
                if (load_p1_from_p2 = '1') then
                    data_p1 <= data_p2;
                else
                    data_p1 <= s_data;
                end if;
            end if;
        end if;
    end process;

    data_p2_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if (load_p2 = '1') then
                data_p2 <= s_data;
            end if;
        end if;
    end process;

    s_ready_t_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if (reset = '1') then
                s_ready_t <= '0';
            elsif (state = ZERO) then
                s_ready_t <= '1';
            elsif (state = ONE and next_st = TWO) then
                s_ready_t <= '0';
            elsif (state = TWO and next_st = ONE) then
                s_ready_t <= '1';
            end if;
        end if;
    end process;

    state_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if (reset = '1') then
                state <= ZERO;
            else
                state <= next_st;
            end if;
        end if;
    end process;

    next_st_proc : process (state, s_valid, s_ready_t, m_ready)
    begin
        case state is
            when ZERO =>
                if (s_valid = '1' and s_ready_t = '1') then
                    next_st <= ONE;
                else
                    next_st <= ZERO;
                end if;
            when ONE =>
                if (s_valid = '0' and m_ready = '1') then
                    next_st <= ZERO;
                elsif (s_valid = '1' and m_ready = '0') then
                    next_st <= TWO;
                else
                    next_st <= ONE;
                end if;
            when TWO =>
                if (m_ready = '1') then
                    next_st <= ONE;
                else
                    next_st <= TWO;
                end if;
            when others =>
                next_st <= ZERO;
        end case;
    end process;

end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity shell_utils_kdma_gmem_m_axi_fifo is
    generic (
        DATA_BITS   : INTEGER := 8;
        DEPTH       : INTEGER := 16;
        DEPTH_BITS  : INTEGER := 4);
    port (
        sclk        : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        sclk_en     : in  STD_LOGIC;
        empty_n     : out STD_LOGIC;
        full_n      : out STD_LOGIC;
        rdreq       : in  STD_LOGIC;
        wrreq       : in  STD_LOGIC;
        q           : out UNSIGNED(DATA_BITS-1 downto 0);
        data        : in  UNSIGNED(DATA_BITS-1 downto 0));
end entity shell_utils_kdma_gmem_m_axi_fifo;

architecture behave of shell_utils_kdma_gmem_m_axi_fifo is
    signal push, pop, data_vld, full_cond     : STD_LOGIC;
    signal empty_n_tmp, full_n_tmp            : STD_LOGIC;
    signal pout                               : INTEGER range 0 to DEPTH -1;
    subtype word is UNSIGNED(DATA_BITS-1 downto 0);
    type regFileType is array(0 to DEPTH-1) of word;
    signal mem                                : regFileType;
begin
    full_n <= full_n_tmp;
    empty_n <= empty_n_tmp;

    depth_nlt2 : if DEPTH >= 2 generate
        full_cond <= '1' when push = '1' and pop = '0' and pout = DEPTH - 2 and data_vld = '1' else '0';
    end generate;

    depth_lt2 : if DEPTH < 2 generate
        full_cond <= '1' when push = '1' and pop = '0' else '0';
    end generate;

    push <= full_n_tmp and wrreq;
    pop <= data_vld and (not (empty_n_tmp and (not rdreq)));

    q_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if reset = '1' then
                q <= (others => '0');
            elsif sclk_en = '1' then
                if not (empty_n_tmp = '1' and rdreq = '0') then
                    q <= mem(pout);
                end if;
            end if;
        end if;
    end process q_proc;

    empty_n_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if reset = '1' then
                empty_n_tmp <= '0';
            elsif sclk_en = '1' then
                if not (empty_n_tmp = '1' and rdreq = '0') then
                    empty_n_tmp <= data_vld;
                end if;
            end if;
        end if;
    end process empty_n_proc;

    data_vld_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if reset = '1' then
                data_vld <= '0';
            elsif sclk_en = '1' then
                if push = '1' then
                    data_vld <= '1';
                elsif push = '0' and pop = '1' and pout = 0 then
                    data_vld <= '0';
                end if;
            end if;
        end if;
    end process data_vld_proc;

    full_n_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if reset = '1' then
                full_n_tmp <= '1';
            elsif sclk_en = '1' then
                if pop = '1' then
                    full_n_tmp <= '1';
                elsif full_cond = '1' then
                    full_n_tmp <= '0';
                end if;
            end if;
        end if;
    end process full_n_proc;

    pout_proc : process (sclk)
    begin
        if (sclk'event and sclk = '1') then
            if reset = '1' then
                pout <= 0;
            elsif sclk_en = '1' then
                if push = '1' and pop = '0' and data_vld = '1' then
                    pout <= TO_INTEGER(TO_UNSIGNED(pout + 1, DEPTH_BITS));
                elsif push = '0' and pop = '1' and pout /= 0 then
                    pout <= pout - 1;
                end if;
            end if;
        end  if;
    end process pout_proc;

    process (sclk)
    begin
        if (sclk'event and sclk = '1') then
          if sclk_en = '1' then
            if push = '1' then
                for i in 0 to DEPTH - 2 loop
                    mem(i+1) <= mem(i);
                end loop;
                mem(0) <= data;
            end if;
          end if;            
        end  if;
    end process;
end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity shell_utils_kdma_gmem_m_axi_buffer is
    generic (
        MEM_STYLE  : STRING  := "block";
        DATA_WIDTH : NATURAL := 32;
        ADDR_WIDTH : NATURAL := 5;
        DEPTH      : NATURAL := 32
    );
    port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        sclk_en     : in  STD_LOGIC;
        if_full_n   : out STD_LOGIC;
        if_write_ce : in  STD_LOGIC;
        if_write    : in  STD_LOGIC;
        if_din      : in  STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
        if_empty_n  : out STD_LOGIC;
        if_read_ce  : in  STD_LOGIC;
        if_read     : in  STD_LOGIC;
        if_dout     : out STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0)
    );
end entity;

architecture arch of shell_utils_kdma_gmem_m_axi_buffer is
    type memtype is array (0 to DEPTH - 1) of std_logic_vector(DATA_WIDTH - 1 downto 0);
    signal mem        : memtype;
    signal q_buf      : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal waddr      : unsigned(ADDR_WIDTH - 1 downto 0) := (others => '0');
    signal raddr      : unsigned(ADDR_WIDTH - 1 downto 0) := (others => '0');
    signal wnext      : unsigned(ADDR_WIDTH - 1 downto 0);
    signal rnext      : unsigned(ADDR_WIDTH - 1 downto 0);
    signal push       : std_logic;
    signal pop        : std_logic;
    signal usedw      : unsigned(ADDR_WIDTH - 1 downto 0) := (others => '0');
    signal full_n     : std_logic := '1';
    signal empty_n    : std_logic := '0';
    signal q_tmp      : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal show_ahead : std_logic := '0';
    signal dout_buf   : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal dout_valid : std_logic := '0';
    attribute ram_style: string;
    attribute ram_style of mem: signal is MEM_STYLE;
begin
    if_full_n  <= full_n;
    if_empty_n <= dout_valid;
    if_dout    <= dout_buf;
    push       <= full_n and if_write_ce and if_write;
    pop        <= empty_n and if_read_ce and (not dout_valid or if_read);
    wnext      <= waddr when push = '0' else
                  (others => '0') when waddr = DEPTH - 1 else
                  waddr + 1;
    rnext      <= raddr when pop = '0' else
                  (others => '0') when raddr = DEPTH - 1 else
                  raddr + 1;

    -- waddr
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                waddr <= (others => '0');
            elsif sclk_en = '1' then
                waddr <= wnext;
            end if;
        end if;
    end process;

    -- raddr
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                raddr <= (others => '0');
            elsif sclk_en = '1' then
                raddr <= rnext;
            end if;
        end if;
    end process;

    -- usedw
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                usedw <= (others => '0');
            elsif sclk_en = '1' then
                if push = '1' and pop = '0' then
                    usedw <= usedw + 1;
                elsif push = '0' and pop = '1' then
                    usedw <= usedw - 1;
                end if;
            end if;
        end if;
    end process;

    -- full_n
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                full_n <= '1';
            elsif sclk_en = '1' then
                if push = '1' and pop = '0' then
                    if usedw = DEPTH - 1 then
                        full_n <= '0';
                    else
                        full_n <= '1';
                    end if;
                elsif push = '0' and pop = '1' then
                    full_n <= '1';
                end if;
            end if;
        end if;
    end process;

    -- empty_n
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                empty_n <= '0';
            elsif sclk_en = '1' then
                if push = '1' and pop = '0' then
                    empty_n <= '1';
                elsif push = '0' and pop = '1' then
                    if usedw = 1 then
                        empty_n <= '0';
                    else
                        empty_n <= '1';
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- mem
    process (clk) begin
        if clk'event and clk = '1' then
            if push = '1' then
                mem(to_integer(waddr)) <= if_din;
            end if;
        end if;
    end process;

    -- q_buf
    process (clk) begin
        if clk'event and clk = '1' then
            q_buf <= mem(to_integer(rnext));
        end if;
    end process;

    -- q_tmp
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                q_tmp <= (others => '0');
            elsif sclk_en = '1' then
                if push = '1' then
                    q_tmp <= if_din;
                end if;
            end if;
        end if;
    end process;

    -- show_ahead
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                show_ahead <= '0';
            elsif sclk_en = '1' then
                if push = '1' and (usedw = 0 or (usedw = 1 and pop = '1')) then
                    show_ahead <= '1';
                else
                    show_ahead <= '0';
                end if;
            end if;
        end if;
    end process;

    -- dout_buf
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                dout_buf <= (others => '0');
            elsif sclk_en = '1' then
                if pop = '1' then
                    if show_ahead = '1' then
                        dout_buf <= q_tmp;
                    else
                        dout_buf <= q_buf;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- dout_valid
    process (clk) begin
        if clk'event and clk = '1' then
            if reset = '1' then
                dout_valid <= '0';
            elsif sclk_en = '1' then
                if pop = '1' then
                    dout_valid <= '1';
                elsif if_read_ce = '1' and if_read = '1' then
                    dout_valid <= '0';
                end if;
            end if;
        end if;
    end process;
end architecture;
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity shell_utils_kdma_gmem_m_axi_decoder is
    generic (
        DIN_WIDTH : integer := 3);
    port (
        din     : in  UNSIGNED(DIN_WIDTH - 1 downto 0);
        dout    : out UNSIGNED(2**DIN_WIDTH - 1 downto 0));
end entity shell_utils_kdma_gmem_m_axi_decoder;

architecture behav of shell_utils_kdma_gmem_m_axi_decoder is
begin
    process (din)
    begin
        dout <= (others => '0');
        if (not(din = 0)) then
            dout(TO_INTEGER(din) - 1 downto 0) <= (others => '1');
        end if;
    end process;
end architecture behav;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity shell_utils_kdma_gmem_m_axi_throttl is
    generic (
        USED_FIX      : BOOLEAN := false;
        FIX_VALUE     : INTEGER := 4;
        ADDR_WIDTH    : INTEGER := 32;
        DATA_WIDTH    : INTEGER := 32;
        DEPTH         : INTEGER := 16;
        USER_MAXREQS  : INTEGER := 16;
        CONSERVATIVE  : INTEGER := 0;
        AVERAGE_MODE  : BOOLEAN := false);
    port (
        clk             : in  STD_LOGIC;
        reset           : in  STD_LOGIC;
        ce              : in  STD_LOGIC;
        in_addr         : in  STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0);
        in_len          : in  STD_LOGIC_VECTOR(7 downto 0);
        in_req_valid    : in  STD_LOGIC;
        out_req_ready   : out STD_LOGIC;
        out_addr        : out STD_LOGIC_VECTOR(ADDR_WIDTH-1 downto 0);
        out_len         : out STD_LOGIC_VECTOR(7 downto 0);
        out_req_valid   : out STD_LOGIC;
        in_req_ready    : in  STD_LOGIC;
        in_data         : in  STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        in_strb         : in  STD_LOGIC_VECTOR(DATA_WIDTH/8-1 downto 0);
        in_last         : in  STD_LOGIC;
        in_data_valid   : in  STD_LOGIC;
        out_data_ready  : out STD_LOGIC;
        out_data        : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
        out_strb        : out STD_LOGIC_VECTOR(DATA_WIDTH/8-1 downto 0);
        out_last        : out STD_LOGIC;
        out_data_valid  : out STD_LOGIC;
        in_data_ready   : in  STD_LOGIC);

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

    function gt_4 (x : INTEGER) return INTEGER is
        variable n : INTEGER;
    begin
        n := 4;
        if x > 4 then
            n := x;
        end if;
        return n;
    end function gt_4;

end entity shell_utils_kdma_gmem_m_axi_throttl;

architecture behav of shell_utils_kdma_gmem_m_axi_throttl is
begin

    conservative_gen : if (CONSERVATIVE = 0) generate
        type     switch_t   is array(boolean) of integer;
        constant switch         : switch_t  := (true => FIX_VALUE-1, false => 0);
        constant threshold      : INTEGER   := switch(USED_FIX);
        signal   req_en         : STD_LOGIC;
        signal   handshake      : STD_LOGIC;
        signal   load_init      : UNSIGNED(7 downto 0);
        signal   throttl_cnt    : UNSIGNED(7 downto 0);
    begin
        -- AW Channel
        out_addr  <= in_addr;
        out_len   <= in_len;

        -- W Channel
        out_data        <= in_data;
        out_strb        <= in_strb;
        out_last        <= in_last;
        out_data_valid  <= in_data_valid;
        out_data_ready  <= in_data_ready;

        fix_gen : if USED_FIX generate
            load_init <= TO_UNSIGNED(FIX_VALUE-1, 8);
            handshake <= '1';
        end generate;

        average_gen : if not USED_FIX and AVERAGE_MODE generate
            load_init <= UNSIGNED(in_len);
            handshake <= '1';
        end generate;

        no_fix_gen : if not USED_FIX and not AVERAGE_MODE generate
            load_init <= UNSIGNED(in_len);
            handshake <= in_data_valid and in_data_ready;
        end generate;

        out_req_valid <= in_req_valid and req_en;
        out_req_ready <= in_req_ready and req_en;
        req_en        <= '1' when throttl_cnt = 0 else
                         '0';

        process (clk)
        begin
            if (clk'event and clk = '1') then
                if reset = '1' then
                    throttl_cnt <= (others => '0');
                elsif ce = '1' then
                    if UNSIGNED(in_len) > threshold and throttl_cnt = 0 and in_req_valid = '1' and in_req_ready = '1' then
                        throttl_cnt <= load_init; --load
                    elsif throttl_cnt > 0 and handshake = '1' then
                        throttl_cnt <= throttl_cnt - 1;
                    end if;
                end if;
            end if;
        end process;
    end generate;

    aggressive_gen : if (CONSERVATIVE /= 0) generate
        constant CNT_WIDTH      : INTEGER   := log2(gt_4(DEPTH));
        signal   data_in        : STD_LOGIC_VECTOR(DATA_WIDTH + DATA_WIDTH/8 downto 0);
        signal   data_out       : STD_LOGIC_VECTOR(DATA_WIDTH + DATA_WIDTH/8 downto 0);
        signal   req_in         : STD_LOGIC_VECTOR(ADDR_WIDTH + 7 downto 0);
        signal   req_out        : STD_LOGIC_VECTOR(ADDR_WIDTH + 7 downto 0);
        signal   req_en         : STD_LOGIC;
        signal   data_en        : STD_LOGIC;
        signal   fifo_valid     : STD_LOGIC;
        signal   read_fifo      : STD_LOGIC;
        signal   req_fifo_valid : STD_LOGIC;
        signal   read_req       : STD_LOGIC;
        signal   data_push      : STD_LOGIC;
        signal   data_pop       : STD_LOGIC;
        signal   flying_req     : STD_LOGIC;
        signal   last_cnt       : UNSIGNED(CNT_WIDTH-1 downto 0);

        signal   out_data_ready_tmp : STD_LOGIC;

        component shell_utils_kdma_gmem_m_axi_fifo is
            generic (
                DATA_BITS   : INTEGER := 8;
                DEPTH       : INTEGER := 16;
                DEPTH_BITS  : INTEGER := 4);
            port (
                sclk        : in  STD_LOGIC;
                reset       : in  STD_LOGIC;
                sclk_en     : in  STD_LOGIC;
                empty_n     : out STD_LOGIC;
                full_n      : out STD_LOGIC;
                rdreq       : in  STD_LOGIC;
                wrreq       : in  STD_LOGIC;
                q           : out UNSIGNED(DATA_BITS-1 downto 0);
                data        : in  UNSIGNED(DATA_BITS-1 downto 0));
        end component shell_utils_kdma_gmem_m_axi_fifo;
    begin
        --AW Channel
        req_in          <= in_len & in_addr;
        out_addr        <= req_out(ADDR_WIDTH-1 downto 0);
        out_len         <= req_out(ADDR_WIDTH+7 downto ADDR_WIDTH);
        out_req_valid   <= req_fifo_valid and req_en;

        req_en          <= '1' when ((flying_req = '0' and data_en = '1') or (flying_req = '1' and (data_out(DATA_WIDTH+DATA_WIDTH/8) = '1' and data_pop = '1') and (last_cnt(CNT_WIDTH-1 downto 1) /= "0"))) else
                         '0';
        read_req        <= in_req_ready and req_en;

        process (clk)
        begin
            if (clk'event and clk = '1') then
                if reset = '1' then
                    flying_req <= '0';
                elsif ce = '1' then
                    if (req_fifo_valid and req_en) = '1' and in_req_ready = '1' then
                        flying_req <= '1';
                    elsif data_out(DATA_WIDTH+DATA_WIDTH/8) = '1' and data_pop = '1' then
                        flying_req <= '0';
                    end if;
                end if;
            end if;
        end process;

        req_fifo : shell_utils_kdma_gmem_m_axi_fifo
        generic map (
            DATA_BITS           => ADDR_WIDTH + 8,
            DEPTH               => USER_MAXREQS,
            DEPTH_BITS          => log2(USER_MAXREQS))
        port map (
            sclk                => clk,
            reset               => reset,
            sclk_en             => ce,
            empty_n             => req_fifo_valid,
            full_n              => out_req_ready,
            rdreq               => read_req,
            wrreq               => in_req_valid,
            STD_LOGIC_VECTOR(q) => req_out,
            data                => UNSIGNED(req_in));

        --W Channel
        data_in         <= in_last & in_strb & in_data;
        out_data        <= data_out(DATA_WIDTH-1 downto 0);
        out_strb        <= data_out(DATA_WIDTH+DATA_WIDTH/8-1 downto DATA_WIDTH);
        out_last        <= data_out(DATA_WIDTH+DATA_WIDTH/8);
        out_data_valid  <= fifo_valid and data_en and flying_req;
        out_data_ready   <= out_data_ready_tmp;

        data_en         <= '1' when last_cnt /= "0" else '0';
        data_push       <= in_data_valid and out_data_ready_tmp;
        data_pop        <= fifo_valid and read_fifo;
        read_fifo       <= in_data_ready and data_en and flying_req;

        process (clk)
        begin
            if (clk'event and clk = '1') then
                if reset = '1' then
                    last_cnt <= (others => '0');
                elsif ce = '1' then
                    if (in_last and data_push) = '1' and (data_out(DATA_WIDTH+DATA_WIDTH/8) and data_pop) = '0' then
                        last_cnt <= last_cnt + 1;
                    elsif (in_last and data_push) = '0' and (data_out(DATA_WIDTH+DATA_WIDTH/8) and data_pop) = '1' then
                        last_cnt <= last_cnt - 1;
                    end if;
                end if;
            end if;
        end process;

        data_fifo : shell_utils_kdma_gmem_m_axi_fifo
        generic map (
            DATA_BITS           => DATA_WIDTH + DATA_WIDTH/8 + 1,
            DEPTH               => DEPTH,
            DEPTH_BITS          => log2(DEPTH))
        port map (
            sclk                => clk,
            reset               => reset,
            sclk_en             => ce,
            empty_n             => fifo_valid,
            full_n              => out_data_ready_tmp,
            rdreq               => read_fifo,
            wrreq               => in_data_valid,
            STD_LOGIC_VECTOR(q) => data_out,
            data                => UNSIGNED(data_in));

    end generate;

end architecture behav;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity shell_utils_kdma_gmem_m_axi_read is
    generic (
        NUM_READ_OUTSTANDING      : INTEGER := 2;
        MAX_READ_BURST_LENGTH     : INTEGER := 16;
        C_M_AXI_ID_WIDTH          : INTEGER := 1;
        C_M_AXI_ADDR_WIDTH        : INTEGER := 32;
        C_TARGET_ADDR             : INTEGER := 16#00000000#;
        C_M_AXI_DATA_WIDTH        : INTEGER := 32;
        C_M_AXI_ARUSER_WIDTH      : INTEGER := 1;
        C_M_AXI_RUSER_WIDTH       : INTEGER := 1;
        C_USER_VALUE              : INTEGER := 0;
        C_PROT_VALUE              : INTEGER := 0;
        C_CACHE_VALUE             : INTEGER := 2#0011#;
        USER_DW                   : INTEGER := 16;
        USER_AW                   : INTEGER := 32;
        USER_MAXREQS              : INTEGER := 16);
    port (
        ACLK            : in  STD_LOGIC;
        ARESET          : in  STD_LOGIC;
        ACLK_EN         : in  STD_LOGIC;
        ARID            : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        ARADDR          : out UNSIGNED(C_M_AXI_ADDR_WIDTH-1 downto 0);
        ARLEN           : out UNSIGNED(7 downto 0);
        ARSIZE          : out UNSIGNED(2 downto 0);
        ARBURST         : out UNSIGNED(1 downto 0);
        ARLOCK          : out UNSIGNED(1 downto 0);
        ARCACHE         : out UNSIGNED(3 downto 0);
        ARPROT          : out UNSIGNED(2 downto 0);
        ARQOS           : out UNSIGNED(3 downto 0);
        ARREGION        : out UNSIGNED(3 downto 0);
        ARUSER          : out UNSIGNED(C_M_AXI_ARUSER_WIDTH-1 downto 0);
        ARVALID         : out STD_LOGIC;
        ARREADY         : in  STD_LOGIC;
        RID             : in  UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        RDATA           : in  UNSIGNED(C_M_AXI_DATA_WIDTH-1 downto 0);
        RRESP           : in  UNSIGNED(1 downto 0);
        RLAST           : in  STD_LOGIC;
        RUSER           : in  UNSIGNED(C_M_AXI_RUSER_WIDTH-1 downto 0);
        RVALID          : in  STD_LOGIC;
        RREADY          : out STD_LOGIC;
        rreq_valid      : in  STD_LOGIC;
        rreq_ack        : out STD_LOGIC;
        rreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
        rreq_length     : in  UNSIGNED(31 downto 0);
        rreq_cache      : in  UNSIGNED(3 downto 0);
        rreq_prot       : in  UNSIGNED(2 downto 0);
        rreq_qos        : in  UNSIGNED(3 downto 0);
        rreq_region     : in  UNSIGNED(3 downto 0);
        rreq_user       : in  UNSIGNED(C_M_AXI_ARUSER_WIDTH-1 downto 0);
        rdata_valid     : out STD_LOGIC;
        rdata_ack       : in  STD_LOGIC;
        rdata_data      : out UNSIGNED(USER_DW-1 downto 0);
        rrsp            : out UNSIGNED(1 downto 0));

    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

end entity shell_utils_kdma_gmem_m_axi_read;

architecture behave of shell_utils_kdma_gmem_m_axi_read is
    --common
    constant USER_DATA_WIDTH      : INTEGER := calc_data_width(USER_DW);
    constant USER_DATA_BYTES      : INTEGER := USER_DATA_WIDTH / 8;
    constant USER_ADDR_ALIGN      : INTEGER := log2(USER_DATA_BYTES);
    constant BUS_DATA_WIDTH       : INTEGER := C_M_AXI_DATA_WIDTH;
    constant BUS_DATA_BYTES       : INTEGER := BUS_DATA_WIDTH / 8;
    constant NUM_READ_WIDTH       : INTEGER := log2(MAX_READ_BURST_LENGTH);
    constant BUS_ADDR_ALIGN       : INTEGER := log2(BUS_DATA_BYTES);
    --AR channel
    constant TARGET_ADDR          : INTEGER := (C_TARGET_ADDR/USER_DATA_BYTES)*USER_DATA_BYTES;
    constant BOUNDARY_BEATS       : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0) := (others => '1');
    signal  rreq_data             : UNSIGNED(USER_AW + 31 downto 0);
    signal  rs2f_rreq_data        : UNSIGNED(USER_AW + 31 downto 0);
    signal  rs2f_rreq_valid       : STD_LOGIC;
    signal  rs2f_rreq_ack         : STD_LOGIC;
    signal  fifo_rreq_data        : UNSIGNED(USER_AW + 31 downto 0);
    signal  tmp_addr              : UNSIGNED(USER_AW - 1 downto 0);
    signal  tmp_len               : UNSIGNED(31 downto 0);
    signal  align_len             : UNSIGNED(31 downto 0);
    signal  arlen_tmp             : UNSIGNED(7 downto 0);
    signal  araddr_tmp            : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  start_addr            : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  start_addr_buf        : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  end_addr              : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  end_addr_buf          : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr             : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr_buf         : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  sect_end              : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  sect_end_buf          : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  burst_end             : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  start_to_4k           : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len              : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len_buf          : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  beat_len_buf          : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_cnt              : UNSIGNED(C_M_AXI_ADDR_WIDTH - 13 downto 0);
    signal  ar2r_ardata           : UNSIGNED(1 downto 0);
    signal  fifo_rctl_r           : STD_LOGIC;
    signal  zero_len_event        : STD_LOGIC;
    signal  negative_len_event    : STD_LOGIC;
    signal  invalid_len_event     : STD_LOGIC;
    signal  invalid_len_event_1   : STD_LOGIC;
    signal  invalid_len_event_2   : STD_LOGIC;
    signal  fifo_rreq_valid       : STD_LOGIC;
    signal  fifo_rreq_valid_buf   : STD_LOGIC;
    signal  fifo_rreq_read        : STD_LOGIC;
    signal  fifo_burst_w          : STD_LOGIC;
    signal  fifo_resp_w           : STD_LOGIC;
    signal  ARVALID_Dummy         : STD_LOGIC;
    signal  ready_for_sect        : STD_LOGIC;
    signal  next_rreq             : BOOLEAN;
    signal  ready_for_rreq        : BOOLEAN;
    signal  rreq_handling         : BOOLEAN;
    signal  first_sect            : BOOLEAN;
    signal  last_sect             : BOOLEAN;
    signal  next_sect             : BOOLEAN;
    --R channel
    signal  fifo_rresp_rdata      : UNSIGNED(BUS_DATA_WIDTH + 2 downto 0);
    signal  data_pack             : UNSIGNED(BUS_DATA_WIDTH + 2 downto 0);
    signal  tmp_data              : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
    signal  rs_rrsp_rdata         : UNSIGNED(USER_DW + 1 downto 0);
    signal  rdata_data_pack       : UNSIGNED(USER_DW + 1 downto 0);
    signal  len_cnt               : UNSIGNED(7 downto 0);
    signal  ar2r_rdata            : UNSIGNED(1 downto 0);
    signal  tmp_resp              : UNSIGNED(1 downto 0);
    signal  resp_buf              : UNSIGNED(1 downto 0);
    signal  tmp_last              : STD_LOGIC;
    signal  tmp_last_2            : STD_LOGIC;
    signal  need_rlast            : STD_LOGIC;
    signal  fifo_rctl_ready       : STD_LOGIC;
    signal  beat_valid            : STD_LOGIC;
    signal  next_beat             : STD_LOGIC;
    signal  burst_valid           : STD_LOGIC;
    signal  fifo_burst_ready      : STD_LOGIC;
    signal  next_burst            : STD_LOGIC;
    signal  rdata_ack_t           : STD_LOGIC;
    signal  rdata_valid_t         : STD_LOGIC;

    component shell_utils_kdma_gmem_m_axi_fifo is
        generic (
            DATA_BITS   : INTEGER := 8;
            DEPTH       : INTEGER := 16;
            DEPTH_BITS  : INTEGER := 4);
        port (
            sclk        : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            sclk_en     : in  STD_LOGIC;
            empty_n     : out STD_LOGIC;
            full_n      : out STD_LOGIC;
            rdreq       : in  STD_LOGIC;
            wrreq       : in  STD_LOGIC;
            q           : out UNSIGNED(DATA_BITS-1 downto 0);
            data        : in  UNSIGNED(DATA_BITS-1 downto 0));
    end component shell_utils_kdma_gmem_m_axi_fifo;

    component shell_utils_kdma_gmem_m_axi_reg_slice is
        generic (
            N           : INTEGER := 8);
        port (
            sclk        : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            s_data      : in  STD_LOGIC_VECTOR(N-1 downto 0);
            s_valid     : in  STD_LOGIC;
            s_ready     : out STD_LOGIC;
            m_data      : out STD_LOGIC_VECTOR(N-1 downto 0);
            m_valid     : out STD_LOGIC;
            m_ready     : in  STD_LOGIC);
    end component shell_utils_kdma_gmem_m_axi_reg_slice;

    component shell_utils_kdma_gmem_m_axi_buffer is
        generic (
                    MEM_STYLE  : STRING  := "block";
            DATA_WIDTH : NATURAL := 32;
            ADDR_WIDTH : NATURAL := 5;
            DEPTH      : NATURAL := 32
        );
        port (
             clk         : in  STD_LOGIC;
             reset       : in  STD_LOGIC;
             sclk_en     : in  STD_LOGIC;
             if_full_n   : out STD_LOGIC;
             if_write_ce : in  STD_LOGIC;
             if_write    : in  STD_LOGIC;
             if_din      : in  STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
             if_empty_n  : out STD_LOGIC;
             if_read_ce  : in  STD_LOGIC;
             if_read     : in  STD_LOGIC;
             if_dout     : out STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0));
    end component shell_utils_kdma_gmem_m_axi_buffer;

begin
    --------------------------- AR channel begin -----------------------------------
    -- Instantiation
    rs_rreq : shell_utils_kdma_gmem_m_axi_reg_slice
        generic map (
            N               =>  USER_AW+ 32)
        port map (
            sclk            =>  ACLK,
            reset           =>  ARESET,
            s_data          =>  STD_LOGIC_VECTOR(rreq_data),
            s_valid         =>  rreq_valid,
            s_ready         =>  rreq_ack,
            UNSIGNED(m_data)=>  rs2f_rreq_data,
            m_valid         =>  rs2f_rreq_valid,
            m_ready         =>  rs2f_rreq_ack);

    fifo_rreq : shell_utils_kdma_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  USER_AW + 32,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset           =>  ARESET,
            sclk_en         =>  ACLK_EN,
            full_n          =>  rs2f_rreq_ack,
            wrreq           =>  rs2f_rreq_valid,
            data            =>  rs2f_rreq_data,
            empty_n         =>  fifo_rreq_valid,
            rdreq           =>  fifo_rreq_read,
            q               =>  fifo_rreq_data);

    rreq_data   <= (rreq_length & rreq_addr);
    tmp_addr    <= fifo_rreq_data(USER_AW - 1 downto 0);
    tmp_len     <= fifo_rreq_data(USER_AW + 31 downto USER_AW);
    end_addr    <= start_addr + align_len;

    zero_len_event        <= '1' when fifo_rreq_valid = '1' and tmp_len = 0 else '0';
    negative_len_event    <= tmp_len(31) when fifo_rreq_valid = '1' else '0';

    next_rreq      <= invalid_len_event = '0' and (fifo_rreq_valid = '1' or fifo_rreq_valid_buf = '1') and ready_for_rreq;
    ready_for_rreq <= not(rreq_handling and not(last_sect and next_sect));
    fifo_rreq_read <= '1' when invalid_len_event = '1' or next_rreq else '0';

    align_len_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                align_len <= (others => '0');
            elsif ACLK_EN = '1' then
                if (fifo_rreq_valid = '1' and ready_for_rreq) then
                    align_len <= SHIFT_LEFT(tmp_len, USER_ADDR_ALIGN) - 1;
                end if;
            end if;
        end if;
    end process align_len_proc;

    start_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                start_addr <= (others => '0');
            elsif ACLK_EN = '1' then
                if (fifo_rreq_valid = '1' and ready_for_rreq) then
                    start_addr  <= TARGET_ADDR + SHIFT_LEFT(RESIZE(tmp_addr, C_M_AXI_ADDR_WIDTH), USER_ADDR_ALIGN);
                end if;
            end if;
        end if;
    end process start_addr_proc;

    fifo_rreq_valid_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                fifo_rreq_valid_buf <= '0';
            elsif ACLK_EN = '1' then
                if ((fifo_rreq_valid = '1' or fifo_rreq_valid_buf = '1') and ready_for_rreq) then
                    fifo_rreq_valid_buf <= fifo_rreq_valid;
                end if;
            end if;
        end if;
    end process fifo_rreq_valid_buf_proc;

    invalid_len_event_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                invalid_len_event <= '0';
            elsif ACLK_EN = '1' then
                if ((fifo_rreq_valid = '1' or fifo_rreq_valid_buf = '1') and ready_for_rreq) then
                    invalid_len_event <= zero_len_event or negative_len_event;
                end if;
            end if;
        end if;
    end process invalid_len_event_proc;

    rreq_handling_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rreq_handling <= false;
            elsif ACLK_EN = '1' then
                if fifo_rreq_valid_buf = '1' and not rreq_handling and invalid_len_event = '0' then
                    rreq_handling <= true;
                elsif (fifo_rreq_valid_buf = '0' or invalid_len_event = '1') and last_sect and next_sect then
                    rreq_handling <= false;
                end if;
            end if;
        end if;
    end process rreq_handling_proc;

    start_addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                start_addr_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_rreq then
                    start_addr_buf <= start_addr;
                end if;
            end if;
        end if;
    end process start_addr_buf_proc;

    end_addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                end_addr_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_rreq then
                    end_addr_buf <= end_addr;
                end if;
            end if;
        end if;
    end process end_addr_buf_proc;

    beat_len_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                beat_len_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_rreq then
                    beat_len_buf <= RESIZE(SHIFT_RIGHT(align_len(11 downto 0) + start_addr(BUS_ADDR_ALIGN-1 downto 0), BUS_ADDR_ALIGN), 12-BUS_ADDR_ALIGN);
                end if;
            end if;
        end if;
    end process beat_len_buf_proc;

    sect_cnt_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_cnt <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_rreq then
                    sect_cnt <= start_addr(C_M_AXI_ADDR_WIDTH - 1 downto 12);
                elsif next_sect then
                    sect_cnt <= sect_cnt + 1;
                end if;
            end if;
        end if;
    end process sect_cnt_proc;

    -- event registers
    invalid_len_event_1_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                invalid_len_event_1 <= '0';
            elsif ACLK_EN = '1' then
                if next_rreq then
                    invalid_len_event_1 <= invalid_len_event;
                end if;
            end if;
        end if;
    end process invalid_len_event_1_proc;
    -- end event registers

    first_sect <= (sect_cnt = start_addr_buf(C_M_AXI_ADDR_WIDTH - 1 downto 12));
    last_sect  <= (sect_cnt = end_addr_buf(C_M_AXI_ADDR_WIDTH -1 downto 12));
    next_sect  <= rreq_handling and ready_for_sect = '1';

    sect_addr  <= start_addr_buf when first_sect else
                  sect_cnt & (11 downto 0 => '0');
    sect_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_addr_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_addr_buf <= sect_addr;
                end if;
            end if;
        end if;
    end process sect_addr_proc;

    start_to_4k <= BOUNDARY_BEATS - start_addr_buf(11 downto BUS_ADDR_ALIGN);
    sect_len    <= beat_len_buf                            when     first_sect and     last_sect else
                   start_to_4k                             when     first_sect and not last_sect else
                   end_addr_buf(11 downto BUS_ADDR_ALIGN)  when not first_sect and     last_sect else
                   BOUNDARY_BEATS;

    sect_len_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_len_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_len_buf <= sect_len;
                end if;
            end if;
        end if;
    end process sect_len_proc;

    sect_end <= end_addr_buf(BUS_ADDR_ALIGN - 1 downto 0) when last_sect else
                (others => '1');
    sect_end_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_end_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_end_buf <= sect_end;
                end if;
            end if;
        end if;
    end process sect_end_proc;

    -- event registers
    invalid_len_event_2_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                invalid_len_event_2 <= '0';
            elsif ACLK_EN = '1' then
                if next_sect then
                    invalid_len_event_2 <= invalid_len_event_1;
                end if;
            end if;
        end if;
    end process invalid_len_event_2_proc;
    -- end event registers

    ARID      <= (others => '0');
    ARSIZE    <= TO_UNSIGNED(BUS_ADDR_ALIGN, ARSIZE'length);
    ARBURST   <= "01";
    ARLOCK    <= "00";
    ARCACHE   <= TO_UNSIGNED(C_CACHE_VALUE, ARCACHE'length);
    ARPROT    <= TO_UNSIGNED(C_PROT_VALUE, ARPROT'length);
    ARUSER    <= TO_UNSIGNED(C_USER_VALUE, ARUSER'length);
    ARQOS     <= rreq_qos;
    ARREGION  <= rreq_region;

    must_one_burst : if (BUS_DATA_BYTES >= 4096/MAX_READ_BURST_LENGTH) generate
    begin
        ARADDR  <= sect_addr_buf(C_M_AXI_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
        ARLEN   <= RESIZE(sect_len_buf, 8);
        ARVALID <= ARVALID_Dummy;

        ready_for_sect <= '1' when not (ARVALID_Dummy = '1' and ARREADY = '0') and fifo_burst_ready = '1' and fifo_rctl_ready = '1' else '0';

        arvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    ARVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_sect then
                        ARVALID_Dummy <= '1';
                    elsif not next_sect and ARREADY = '1' then
                        ARVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process arvalid_proc;

        fifo_rctl_r  <= '1' when next_sect else '0';
        ar2r_ardata  <= "10" when last_sect else "00";

        fifo_burst_w <= '1' when next_sect else '0';
        araddr_tmp   <= sect_addr(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        arlen_tmp    <= RESIZE(sect_len, 8);
        burst_end    <= sect_end;
    end generate must_one_burst;

    could_multi_bursts : if (BUS_DATA_BYTES < 4096/MAX_READ_BURST_LENGTH) generate
        signal  araddr_buf      : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        signal  arlen_buf       : UNSIGNED(7 downto 0);
        signal  loop_cnt        : UNSIGNED(11 - NUM_READ_WIDTH - BUS_ADDR_ALIGN downto 0);
        signal  last_loop       : BOOLEAN;
        signal  next_loop       : BOOLEAN;
        signal  ready_for_loop  : BOOLEAN;
        signal  sect_handling   : BOOLEAN;
    begin
        ARADDR  <= araddr_buf;
        ARLEN   <= arlen_buf;
        ARVALID <= ARVALID_Dummy;

        last_loop      <= (loop_cnt = sect_len_buf(11 - BUS_ADDR_ALIGN downto NUM_READ_WIDTH));
        next_loop      <= sect_handling and ready_for_loop;
        ready_for_loop <= not (ARVALID_Dummy = '1' and ARREADY = '0') and fifo_burst_ready = '1' and fifo_rctl_ready = '1';
        ready_for_sect <= '1' when not (sect_handling and not (last_loop and next_loop)) else '0';

        sect_handling_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    sect_handling <= false;
                elsif ACLK_EN = '1' then
                    if rreq_handling and not sect_handling then
                        sect_handling <= true;
                    elsif not rreq_handling and last_loop and next_loop then
                        sect_handling <= false;
                    end if;
                end if;
            end if;
        end process sect_handling_proc;

        loop_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    loop_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_sect then
                        loop_cnt <= (others => '0');
                    elsif next_loop then
                        loop_cnt <= loop_cnt + 1;
                    end if;
                end if;
            end if;
        end process loop_cnt_proc;

        araddr_tmp <= sect_addr_buf(C_M_AXI_ADDR_WIDTH -1 downto 0) when loop_cnt = 0 else
                      araddr_buf + SHIFT_LEFT(RESIZE(arlen_buf, 32) + 1, BUS_ADDR_ALIGN);
        araddr_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    araddr_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_loop then
                        araddr_buf <= araddr_tmp(C_M_AXI_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
                    end if;
                end if;
            end if;
        end process araddr_buf_proc;

        arlen_tmp  <= RESIZE(sect_len_buf(NUM_READ_WIDTH-1 downto 0), 8) when last_loop else
                      TO_UNSIGNED(MAX_READ_BURST_LENGTH-1, 8);
        arlen_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    arlen_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_loop then
                        arlen_buf <= arlen_tmp;
                    end if;
                end if;
            end if;
        end process arlen_buf_proc;

        arvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    ARVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_loop then
                        ARVALID_Dummy <= '1';
                    elsif not next_loop and ARREADY = '1' then
                        ARVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process arvalid_proc;

        fifo_rctl_r  <= '1' when next_loop else '0';
        ar2r_ardata  <= "10" when last_loop else "00";

        fifo_burst_w <= '1' when next_loop else '0';
        burst_end    <= sect_end_buf(BUS_ADDR_ALIGN - 1 downto 0) when last_loop else (others => '1');
    end generate could_multi_bursts;
    --------------------------- AR channel end -------------------------------------

    --------------------------- R channel begin ------------------------------------
    -- Instantiation
    fifo_rdata : shell_utils_kdma_gmem_m_axi_buffer
        generic map (
            DATA_WIDTH        =>  BUS_DATA_WIDTH + 3,
            DEPTH             =>  NUM_READ_OUTSTANDING * MAX_READ_BURST_LENGTH,
            ADDR_WIDTH        =>  log2(NUM_READ_OUTSTANDING * MAX_READ_BURST_LENGTH))
        port map (
            clk               => ACLK,
            reset             => ARESET,
            sclk_en           => ACLK_EN,
            if_full_n         => RREADY,
            if_write_ce       => '1',
            if_write          => RVALID,
            if_din            => STD_LOGIC_VECTOR(fifo_rresp_rdata),
            if_empty_n        => beat_valid,
            if_read_ce        => '1',
            if_read           => next_beat,
            UNSIGNED(if_dout) => data_pack);

    rs_rdata : shell_utils_kdma_gmem_m_axi_reg_slice
        generic map (
            N                 => USER_DW + 2)
        port map (
            sclk              => ACLK,
            reset             => ARESET,
            s_data            => STD_LOGIC_VECTOR(rs_rrsp_rdata),
            s_valid           => rdata_valid_t,
            s_ready           => rdata_ack_t,
            UNSIGNED(m_data)  => rdata_data_pack,
            m_valid           => rdata_valid,
            m_ready           => rdata_ack);

    fifo_rctl : shell_utils_kdma_gmem_m_axi_fifo
        generic map (
            DATA_BITS       => 2,
            DEPTH           => NUM_READ_OUTSTANDING-1,
            DEPTH_BITS      => log2(NUM_READ_OUTSTANDING-1))
        port map (
            sclk            => ACLK,
            reset           => ARESET,
            sclk_en         => ACLK_EN,
            empty_n         => need_rlast,
            full_n          => fifo_rctl_ready,
            rdreq           => tmp_last_2,
            wrreq           => fifo_rctl_r,
            q               => ar2r_rdata,
            data            => ar2r_ardata);

    fifo_rresp_rdata <= (RLAST & RRESP & RDATA);
    tmp_data         <= data_pack(BUS_DATA_WIDTH - 1 downto 0);
    tmp_resp         <= data_pack(BUS_DATA_WIDTH + 1 downto BUS_DATA_WIDTH);
    tmp_last         <= data_pack(BUS_DATA_WIDTH + 2) and beat_valid;
    tmp_last_2       <= tmp_last and next_beat;

    bus_equal_gen : if (USER_DATA_WIDTH = BUS_DATA_WIDTH) generate
        signal  data_buf    : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
        signal  ready_for_data   : BOOLEAN;
    begin
        rs_rrsp_rdata <= resp_buf & data_buf(USER_DW - 1 downto 0);
        rrsp          <= rdata_data_pack(USER_DW + 1 downto USER_DW);
        rdata_data    <= rdata_data_pack(USER_DW - 1 downto 0);

        fifo_burst_ready <= '1';
        next_beat        <= '1' when beat_valid = '1' and ready_for_data else '0';
        ready_for_data   <= not (rdata_valid_t = '1' and rdata_ack_t = '0');

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if ACLK_EN = '1' then
                    if next_beat = '1' then
                        data_buf <= tmp_data;
                    end if;
                end if;
            end if;
        end process data_buf_proc;

        resp_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    resp_buf <= "00";
                elsif ACLK_EN = '1' then
                    if next_beat = '1' then
                        resp_buf <= tmp_resp;
                    end if;
                end if;
            end if;
        end process resp_buf_proc;

        rdata_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    rdata_valid_t <= '0';
                elsif ACLK_EN = '1' then
                    if next_beat = '1' then
                        rdata_valid_t <= '1';
                    elsif ready_for_data then
                        rdata_valid_t <= '0';
                    end if;
                end if;
            end if;
        end process rdata_valid_proc;
    end generate bus_equal_gen;

    bus_wide_gen : if (USER_DATA_WIDTH < BUS_DATA_WIDTH) generate
        constant TOTAL_SPLIT    : INTEGER := BUS_DATA_WIDTH / USER_DATA_WIDTH;
        constant SPLIT_ALIGN    : INTEGER := log2(TOTAL_SPLIT);
        signal  tmp_burst_info  : UNSIGNED(2*SPLIT_ALIGN + 7 downto 0);
        signal  burst_pack      : UNSIGNED(2*SPLIT_ALIGN + 7 downto 0);
        signal  data_buf        : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
        signal  split_cnt       : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  split_cnt_buf   : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  head_split      : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  tail_split      : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  burst_len       : UNSIGNED(7 downto 0);
        signal  first_beat      : BOOLEAN;
        signal  last_beat       : BOOLEAN;
        signal  first_split     : BOOLEAN;
        signal  next_split      : BOOLEAN;
        signal  last_split      : BOOLEAN;
        signal  ready_for_data  : BOOLEAN;
    begin
        -- instantiation
        fifo_burst : shell_utils_kdma_gmem_m_axi_fifo
            generic map (
                DATA_BITS       =>  2*SPLIT_ALIGN + 8,
                DEPTH           =>  USER_MAXREQS,
                DEPTH_BITS      =>  log2(USER_MAXREQS))
            port map (
                sclk            =>  ACLK,
                reset           =>  ARESET,
                sclk_en         =>  ACLK_EN,
                empty_n         =>  burst_valid,
                full_n          =>  fifo_burst_ready,
                rdreq           =>  next_burst,
                wrreq           =>  fifo_burst_w,
                q               =>  burst_pack,
                data            =>  tmp_burst_info);

        rs_rrsp_rdata <= resp_buf & data_buf(USER_DW - 1 downto 0);
        rrsp          <= rdata_data_pack(USER_DW + 1 downto USER_DW);
        rdata_data    <= rdata_data_pack(USER_DW - 1 downto 0);

        tmp_burst_info <= araddr_tmp(BUS_ADDR_ALIGN - 1 downto USER_ADDR_ALIGN) & burst_end(BUS_ADDR_ALIGN - 1 downto USER_ADDR_ALIGN) & RESIZE(arlen_tmp, 8);
        head_split     <= burst_pack(2*SPLIT_ALIGN + 7 downto 8 + SPLIT_ALIGN);
        tail_split     <= burst_pack(SPLIT_ALIGN + 7 downto 8);
        burst_len      <= burst_pack(7 downto 0);

        next_beat        <= '1' when last_split else '0';
        next_burst       <= '1' when last_beat and last_split else '0';
        ready_for_data   <= not (rdata_valid_t = '1' and rdata_ack_t = '0');

        first_beat <= len_cnt = 0 and burst_valid = '1' and beat_valid = '1';
        last_beat  <= len_cnt = burst_len and burst_valid = '1' and beat_valid = '1';

        first_split <= (split_cnt = 0 and beat_valid = '1' and ready_for_data) when not first_beat else
                       (split_cnt = head_split and ready_for_data);
        last_split  <= (split_cnt = (TOTAL_SPLIT - 1) and ready_for_data) when not last_beat else
                       (split_cnt = tail_split and ready_for_data);
        next_split  <= (split_cnt /= 0 and ready_for_data) when not first_beat else
                       (split_cnt /= head_split and ready_for_data);

        split_cnt <= head_split when first_beat and (split_cnt_buf = 0) else
                     split_cnt_buf;
        split_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    split_cnt_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if last_split then
                        split_cnt_buf <= (others => '0');
                    elsif first_split or next_split then
                        split_cnt_buf <= split_cnt + 1;
                    end if;
                end if;
            end if;
        end process split_cnt_proc;

        len_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    len_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if last_beat and last_split then
                        len_cnt <= (others => '0');
                    elsif last_split then
                        len_cnt <= len_cnt + 1;
                    end if;
                end if;
            end if;
        end process len_cnt_proc;

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if ACLK_EN = '1' then
                    if first_split and first_beat then
                        data_buf <= SHIFT_RIGHT(tmp_data, to_integer(head_split)*USER_DATA_WIDTH);
                    elsif first_split then
                        data_buf <= tmp_data;
                    elsif next_split then
                        data_buf <= SHIFT_RIGHT(data_buf, USER_DATA_WIDTH);
                    end if;
                end if;
            end if;
        end process data_buf_proc;

        resp_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    resp_buf <= "00";
                elsif ACLK_EN = '1' then
                    if first_split then
                        resp_buf <= tmp_resp;
                    end if;
                end if;
            end if;
        end process resp_buf_proc;

        rdata_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    rdata_valid_t <= '0';
                elsif ACLK_EN = '1' then
                    if first_split then
                        rdata_valid_t <= '1';
                    elsif not (first_split or next_split) and ready_for_data then
                        rdata_valid_t <= '0';
                    end if;
                end if;
            end if;
        end process rdata_valid_proc;

    end generate bus_wide_gen;

    bus_narrow_gen : if (USER_DATA_WIDTH > BUS_DATA_WIDTH) generate
        constant TOTAL_PADS     : INTEGER := USER_DATA_WIDTH / BUS_DATA_WIDTH;
        constant PAD_ALIGN      : INTEGER := log2(TOTAL_PADS);
        signal  data_buf        : UNSIGNED(USER_DATA_WIDTH - 1 downto 0);
        signal  pad_oh          : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  pad_oh_reg      : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  ready_for_data  : BOOLEAN;
        signal  next_pad        : BOOLEAN;
        signal  first_pad       : BOOLEAN;
        signal  last_pad        : BOOLEAN;
        signal  next_data       : BOOLEAN;
    begin
        rrsp        <= resp_buf;
        rdata_data  <= data_buf(USER_DW - 1 downto 0);
        rdata_valid <= rdata_valid_t;

        fifo_burst_ready <= '1';
        next_beat        <= '1' when next_pad else '0';
        ready_for_data   <= not (rdata_valid_t = '1' and rdata_ack_t = '0');

        next_pad  <= beat_valid = '1' and ready_for_data;
        last_pad  <= pad_oh(TOTAL_PADS - 1) = '1';
        next_data <= last_pad and ready_for_data;

        first_pad_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    first_pad <= true;
                elsif ACLK_EN = '1' then
                    if next_pad and not last_pad then
                        first_pad <= false;
                    elsif next_pad and last_pad then
                        first_pad <= true;
                    end if;
                end if;
            end if;
        end process first_pad_proc;

        pad_oh <= (others => '0') when beat_valid = '0' else
                  TO_UNSIGNED(1, TOTAL_PADS) when first_pad else
                  pad_oh_reg;
        pad_oh_reg_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    pad_oh_reg <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_pad then
                        pad_oh_reg <= pad_oh(TOTAL_PADS - 2 downto 0) & '0';
                    end if;
                end if;
            end if;
        end process pad_oh_reg_proc;

        data_gen : for i in 1 to TOTAL_PADS generate
        begin
            process (ACLK)
            begin
                if (ACLK'event and ACLK = '1') then
                    if ACLK_EN = '1' then
                        if pad_oh(i-1) = '1' and ready_for_data then
                            data_buf(i*BUS_DATA_WIDTH - 1 downto (i-1)*BUS_DATA_WIDTH) <= tmp_data;
                        end if;
                    end if;
                end if;
            end process;
        end generate data_gen;

        resp_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                if (ARESET = '1') then
                    resp_buf <= "00";
                elsif next_beat = '1' and resp_buf(0) = '0' then
                    resp_buf <= tmp_resp;
                end if;
            end if;
        end process resp_buf_proc;

        rdata_valid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    rdata_valid_t <= '0';
                elsif ACLK_EN = '1' then
                    if next_data then
                        rdata_valid_t <= '1';
                    elsif ready_for_data then
                        rdata_valid_t <= '0';
                    end if;
                end if;
            end if;
        end process rdata_valid_proc;
    end generate bus_narrow_gen;
--------------------------- R channel end --------------------------------------
end architecture behave;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity shell_utils_kdma_gmem_m_axi_write is
    generic (
        NUM_WRITE_OUTSTANDING     : INTEGER := 2;
        MAX_WRITE_BURST_LENGTH    : INTEGER := 16;
        C_M_AXI_ID_WIDTH          : INTEGER := 1;
        C_M_AXI_ADDR_WIDTH        : INTEGER := 32;
        C_TARGET_ADDR             : INTEGER := 16#00000000#;
        C_M_AXI_DATA_WIDTH        : INTEGER := 32;
        C_M_AXI_AWUSER_WIDTH      : INTEGER := 1;
        C_M_AXI_WUSER_WIDTH       : INTEGER := 1;
        C_M_AXI_BUSER_WIDTH       : INTEGER := 1;
        C_USER_VALUE              : INTEGER := 0;
        C_PROT_VALUE              : INTEGER := 0;
        C_CACHE_VALUE             : INTEGER := 2#0011#;
        USER_DW                   : INTEGER := 16;
        USER_AW                   : INTEGER := 32;
        USER_MAXREQS              : INTEGER := 16);
    port (
        ACLK            : in  STD_LOGIC;
        ARESET          : in  STD_LOGIC;
        ACLK_EN         : in  STD_LOGIC;
        AWID            : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        AWADDR          : out UNSIGNED(C_M_AXI_ADDR_WIDTH-1 downto 0);
        AWLEN           : out UNSIGNED(7 downto 0);
        AWSIZE          : out UNSIGNED(2 downto 0);
        AWBURST         : out UNSIGNED(1 downto 0);
        AWLOCK          : out UNSIGNED(1 downto 0);
        AWCACHE         : out UNSIGNED(3 downto 0);
        AWPROT          : out UNSIGNED(2 downto 0);
        AWQOS           : out UNSIGNED(3 downto 0);
        AWREGION        : out UNSIGNED(3 downto 0);
        AWUSER          : out UNSIGNED(C_M_AXI_AWUSER_WIDTH-1 downto 0);
        AWVALID         : out STD_LOGIC;
        AWREADY         : in  STD_LOGIC;
        WID             : out UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        WDATA           : out UNSIGNED(C_M_AXI_DATA_WIDTH-1 downto 0);
        WSTRB           : out UNSIGNED(C_M_AXI_DATA_WIDTH/8-1 downto 0);
        WLAST           : out STD_LOGIC;
        WUSER           : out UNSIGNED(C_M_AXI_WUSER_WIDTH-1 downto 0);
        WVALID          : out STD_LOGIC;
        WREADY          : in  STD_LOGIC;
        BID             : in  UNSIGNED(C_M_AXI_ID_WIDTH-1 downto 0);
        BRESP           : in  UNSIGNED(1 downto 0);
        BUSER           : in  UNSIGNED(C_M_AXI_BUSER_WIDTH-1 downto 0);
        BVALID          : in  STD_LOGIC;
        BREADY          : out STD_LOGIC;
        wreq_valid      : in  STD_LOGIC;
        wreq_ack        : out STD_LOGIC;
        wreq_addr       : in  UNSIGNED(USER_AW-1 downto 0);
        wreq_length     : in  UNSIGNED(31 downto 0);
        wreq_cache      : in  UNSIGNED(3 downto 0);
        wreq_prot       : in  UNSIGNED(2 downto 0);
        wreq_qos        : in  UNSIGNED(3 downto 0);
        wreq_region     : in  UNSIGNED(3 downto 0);
        wreq_user       : in  UNSIGNED(C_M_AXI_AWUSER_WIDTH-1 downto 0);
        wdata_valid     : in  STD_LOGIC;
        wdata_ack       : out STD_LOGIC;
        wdata_strb      : in  UNSIGNED(USER_DW/8-1 downto 0);
        wdata_user      : in  UNSIGNED(C_M_AXI_WUSER_WIDTH-1 downto 0);
        wdata_data      : in  UNSIGNED(USER_DW-1 downto 0);
        wrsp_valid      : out STD_LOGIC;
        wrsp_ack        : in  STD_LOGIC;
        wrsp            : out UNSIGNED(1 downto 0));

    function calc_data_width (x : INTEGER) return INTEGER is
        variable y : INTEGER;
    begin
        y := 8;
        while y < x loop
            y := y * 2;
        end loop;
        return y;
    end function calc_data_width;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 0;
        m := 1;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

end entity shell_utils_kdma_gmem_m_axi_write;

architecture behave of shell_utils_kdma_gmem_m_axi_write is
    --common
    constant USER_DATA_WIDTH      : INTEGER := calc_data_width(USER_DW);
    constant USER_DATA_BYTES      : INTEGER := USER_DATA_WIDTH / 8;
    constant USER_ADDR_ALIGN      : INTEGER := log2(USER_DATA_BYTES);
    constant BUS_DATA_WIDTH       : INTEGER := C_M_AXI_DATA_WIDTH;
    constant BUS_DATA_BYTES       : INTEGER := BUS_DATA_WIDTH / 8;
    constant BUS_ADDR_ALIGN       : INTEGER := log2(BUS_DATA_BYTES);
    constant NUM_WRITE_WIDTH      : INTEGER := log2(MAX_WRITE_BURST_LENGTH);
    --AW channel
    constant TARGET_ADDR          : INTEGER := (C_TARGET_ADDR/USER_DATA_BYTES)*USER_DATA_BYTES;
    constant BOUNDARY_BEATS       : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0) := (others => '1');
    signal  wreq_data             : UNSIGNED(USER_AW + 31 downto 0);
    signal  rs2f_wreq_data        : UNSIGNED(USER_AW + 31 downto 0);
    signal  rs2f_wreq_valid       : STD_LOGIC;
    signal  rs2f_wreq_ack         : STD_LOGIC;
    signal  fifo_wreq_data        : UNSIGNED(USER_AW + 31 downto 0);
    signal  tmp_addr              : UNSIGNED(USER_AW - 1 downto 0);
    signal  tmp_len               : UNSIGNED(31 downto 0);
    signal  align_len             : UNSIGNED(31 downto 0);
    signal  awlen_tmp             : UNSIGNED(7 downto 0);
    signal  start_addr            : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  end_addr              : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  start_addr_buf        : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  end_addr_buf          : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  awaddr_tmp            : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr             : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  sect_addr_buf         : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
    signal  sect_end              : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  sect_end_buf          : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  burst_end             : UNSIGNED(BUS_ADDR_ALIGN - 1 downto 0);
    signal  start_to_4k           : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len              : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  sect_len_buf          : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  beat_len_buf          : UNSIGNED(11 - BUS_ADDR_ALIGN downto 0);
    signal  aw2b_awdata           : UNSIGNED(1 downto 0);
    signal  sect_cnt              : UNSIGNED(C_M_AXI_ADDR_WIDTH - 13 downto 0);
    signal  zero_len_event        : STD_LOGIC;
    signal  negative_len_event    : STD_LOGIC;
    signal  invalid_len_event     : STD_LOGIC;
    signal  invalid_len_event_1   : STD_LOGIC;
    signal  invalid_len_event_2   : STD_LOGIC;
    signal  fifo_wreq_valid       : STD_LOGIC;
    signal  fifo_wreq_valid_buf   : STD_LOGIC;
    signal  fifo_wreq_read        : STD_LOGIC;
    signal  fifo_burst_w          : STD_LOGIC;
    signal  fifo_resp_w           : STD_LOGIC;
    signal  last_sect_buf         : STD_LOGIC;
    signal  ready_for_sect        : STD_LOGIC;
    signal  AWVALID_Dummy         : STD_LOGIC;
    signal  next_wreq             : BOOLEAN;
    signal  ready_for_wreq        : BOOLEAN;
    signal  wreq_handling         : BOOLEAN;
    signal  first_sect            : BOOLEAN;
    signal  last_sect             : BOOLEAN;
    signal  next_sect             : BOOLEAN;
    --W channel
    signal  fifo_wdata_wstrb      : UNSIGNED(USER_DW + USER_DW/8 - 1 downto 0);
    signal  data_pack             : UNSIGNED(USER_DW + USER_DW/8 - 1 downto 0);
    signal  tmp_data              : UNSIGNED(USER_DATA_WIDTH - 1 downto 0);
    signal  tmp_strb              : UNSIGNED(USER_DATA_BYTES - 1 downto 0);
    signal  len_cnt               : UNSIGNED(7 downto 0);
    signal  burst_len             : UNSIGNED(7 downto 0);
    signal  data_valid            : STD_LOGIC;
    signal  next_data             : STD_LOGIC;
    signal  burst_valid           : STD_LOGIC;
    signal  fifo_burst_ready      : STD_LOGIC;
    signal  next_burst            : STD_LOGIC;
    signal  WVALID_Dummy              : STD_LOGIC;
    signal  WLAST_Dummy               : STD_LOGIC;
    --B channel
    signal  aw2b_bdata            : UNSIGNED(1 downto 0);
    signal  bresp_tmp             : UNSIGNED(1 downto 0);
    signal  next_resp             : STD_LOGIC;
    signal  last_resp             : STD_LOGIC;
    signal  invalid_event         : STD_LOGIC;
    signal  fifo_resp_ready       : STD_LOGIC;
    signal  need_wrsp             : STD_LOGIC;
    signal  resp_match            : STD_LOGIC;
    signal  resp_ready            : STD_LOGIC;

    component shell_utils_kdma_gmem_m_axi_fifo is
        generic (
            DATA_BITS   : INTEGER := 8;
            DEPTH       : INTEGER := 16;
            DEPTH_BITS  : INTEGER := 4);
        port (
            sclk        : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            sclk_en     : in  STD_LOGIC;
            empty_n     : out STD_LOGIC;
            full_n      : out STD_LOGIC;
            rdreq       : in  STD_LOGIC;
            wrreq       : in  STD_LOGIC;
            q           : out UNSIGNED(DATA_BITS-1 downto 0);
            data        : in  UNSIGNED(DATA_BITS-1 downto 0));
    end component shell_utils_kdma_gmem_m_axi_fifo;

    component shell_utils_kdma_gmem_m_axi_reg_slice is
        generic (
            N           : INTEGER := 8);
        port (
            sclk        : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            s_data      : in  STD_LOGIC_VECTOR(N-1 downto 0);
            s_valid     : in  STD_LOGIC;
            s_ready     : out STD_LOGIC;
            m_data      : out STD_LOGIC_VECTOR(N-1 downto 0);
            m_valid     : out STD_LOGIC;
            m_ready     : in  STD_LOGIC);
    end component shell_utils_kdma_gmem_m_axi_reg_slice;

    component shell_utils_kdma_gmem_m_axi_buffer is
        generic (
                    MEM_STYLE  : STRING  := "block";
            DATA_WIDTH : NATURAL := 32;
            ADDR_WIDTH : NATURAL := 5;
            DEPTH      : NATURAL := 32
        );
        port (
             clk         : in  STD_LOGIC;
             reset       : in  STD_LOGIC;
             sclk_en     : in  STD_LOGIC;
             if_full_n   : out STD_LOGIC;
             if_write_ce : in  STD_LOGIC;
             if_write    : in  STD_LOGIC;
             if_din      : in  STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0);
             if_empty_n  : out STD_LOGIC;
             if_read_ce  : in  STD_LOGIC;
             if_read     : in  STD_LOGIC;
             if_dout     : out STD_LOGIC_VECTOR(DATA_WIDTH - 1 downto 0));
    end component shell_utils_kdma_gmem_m_axi_buffer;

begin
    --------------------------- AW channel begin -----------------------------------
    -- Instantiation
    rs_wreq : shell_utils_kdma_gmem_m_axi_reg_slice
        generic map (
            N => USER_AW + 32)
        port map (
            sclk            =>  ACLK,
            reset           =>  ARESET,
            s_data          =>  STD_LOGIC_VECTOR(wreq_data),
            s_valid         =>  wreq_valid,
            s_ready         =>  wreq_ack,
            UNSIGNED(m_data)=>  rs2f_wreq_data,
            m_valid         =>  rs2f_wreq_valid,
            m_ready         =>  rs2f_wreq_ack);

    fifo_wreq : shell_utils_kdma_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  USER_AW + 32,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset           =>  ARESET,
            sclk_en         =>  ACLK_EN,
            full_n          =>  rs2f_wreq_ack,
            wrreq           =>  rs2f_wreq_valid,
            data            =>  rs2f_wreq_data,
            empty_n         =>  fifo_wreq_valid,
            rdreq           =>  fifo_wreq_read,
            q               =>  fifo_wreq_data);

    wreq_data   <= (wreq_length & wreq_addr);
    tmp_addr    <= fifo_wreq_data(USER_AW - 1 downto 0);
    tmp_len     <= fifo_wreq_data(USER_AW + 31 downto USER_AW);
    end_addr    <= start_addr + align_len;

    zero_len_event        <= '1' when fifo_wreq_valid = '1' and tmp_len = 0 else '0';
    negative_len_event    <= tmp_len(31) when fifo_wreq_valid = '1' else '0';

    next_wreq      <= (fifo_wreq_valid = '1' or fifo_wreq_valid_buf = '1') and ready_for_wreq;
    ready_for_wreq <= not(wreq_handling and not(last_sect and next_sect));
    fifo_wreq_read <= '1' when next_wreq else '0';

    align_len_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                align_len <= (others => '0');
            elsif ACLK_EN = '1' then
                if (fifo_wreq_valid = '1' and ready_for_wreq) then
                    if (zero_len_event = '1' or negative_len_event = '1') then
                        align_len <= (others => '0');
                    else
                        align_len <= SHIFT_LEFT(tmp_len, USER_ADDR_ALIGN) - 1;
                    end if;
                end if;
            end if;
        end if;
    end process align_len_proc;

    start_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                start_addr <= (others => '0');
            elsif ACLK_EN = '1' then
                if (fifo_wreq_valid = '1' and ready_for_wreq) then
                    start_addr  <= TARGET_ADDR + SHIFT_LEFT(RESIZE(tmp_addr, C_M_AXI_ADDR_WIDTH), USER_ADDR_ALIGN);
                end if;
            end if;
        end if;
    end process start_addr_proc;

    fifo_wreq_valid_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                fifo_wreq_valid_buf <= '0';
            elsif ACLK_EN = '1' then
                if (next_wreq) then
                    fifo_wreq_valid_buf <= fifo_wreq_valid;
                end if;
            end if;
        end if;
    end process fifo_wreq_valid_buf_proc;

    invalid_len_event_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                invalid_len_event <= '0';
            elsif ACLK_EN = '1' then
                if (next_wreq) then
                    invalid_len_event <= zero_len_event or negative_len_event;
                end if;
            end if;
        end if;
    end process invalid_len_event_proc;

    wreq_handling_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wreq_handling <= false;
            elsif ACLK_EN = '1' then
                if fifo_wreq_valid_buf = '1' and not wreq_handling then
                    wreq_handling <= true;
                elsif fifo_wreq_valid_buf = '0' and last_sect and next_sect then
                    wreq_handling <= false;
                end if;
            end if;
        end if;
    end process wreq_handling_proc;

    start_addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                start_addr_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_wreq then
                    start_addr_buf <= start_addr;
                end if;
            end if;
        end if;
    end process start_addr_buf_proc;

    end_addr_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                end_addr_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_wreq then
                    end_addr_buf <= end_addr;
                end if;
            end if;
        end if;
    end process end_addr_buf_proc;

    beat_len_buf_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                beat_len_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_wreq then
                    beat_len_buf <= RESIZE(SHIFT_RIGHT(align_len(11 downto 0) + start_addr(BUS_ADDR_ALIGN-1 downto 0), BUS_ADDR_ALIGN), 12-BUS_ADDR_ALIGN);
                end if;
            end if;
        end if;
    end process beat_len_buf_proc;

    sect_cnt_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_cnt <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_wreq then
                    sect_cnt <= start_addr(C_M_AXI_ADDR_WIDTH - 1 downto 12);
                elsif next_sect then
                    sect_cnt <= sect_cnt + 1;
                end if;
            end if;
        end if;
    end process sect_cnt_proc;

    -- event registers
    invalid_len_event_1_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                invalid_len_event_1 <= '0';
            elsif ACLK_EN = '1' then
                if next_wreq then
                    invalid_len_event_1 <= invalid_len_event;
                end if;
            end if;
        end if;
    end process invalid_len_event_1_proc;
    -- end event registers

    first_sect <= (sect_cnt = start_addr_buf(C_M_AXI_ADDR_WIDTH - 1 downto 12));
    last_sect  <= (sect_cnt = end_addr_buf(C_M_AXI_ADDR_WIDTH -1 downto 12));
    next_sect  <= wreq_handling and ready_for_sect = '1';

    sect_addr <= start_addr_buf when first_sect else
                 sect_cnt & (11 downto 0 => '0');
    sect_addr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_addr_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_addr_buf <= sect_addr;
                end if;
            end if;
        end if;
    end process sect_addr_proc;

    start_to_4k <= BOUNDARY_BEATS - start_addr_buf(11 downto BUS_ADDR_ALIGN);
    sect_len    <= beat_len_buf                            when     first_sect and     last_sect else
                   start_to_4k                             when     first_sect and not last_sect else
                   end_addr_buf(11 downto BUS_ADDR_ALIGN)  when not first_sect and     last_sect else
                   BOUNDARY_BEATS;

    sect_len_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_len_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_len_buf <= sect_len;
                end if;
            end if;
        end if;
    end process sect_len_proc;

    sect_end <= end_addr_buf(BUS_ADDR_ALIGN - 1 downto 0) when last_sect else
                (others => '1');
    sect_end_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                sect_end_buf <= (others => '0');
            elsif ACLK_EN = '1' then
                if next_sect then
                    sect_end_buf <= sect_end;
                end if;
            end if;
        end if;
    end process sect_end_proc;

    -- event registers
    invalid_len_event_2_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                invalid_len_event_2 <= '0';
            elsif ACLK_EN = '1' then
                if next_sect then
                    invalid_len_event_2 <= invalid_len_event_1;
                end if;
            end if;
        end if;
    end process invalid_len_event_2_proc;
    -- end event registers

    AWID     <= (others => '0');
    AWSIZE   <= TO_UNSIGNED(BUS_ADDR_ALIGN, AWSIZE'length);
    AWBURST  <= "01";
    AWLOCK   <= "00";
    AWCACHE  <= TO_UNSIGNED(C_CACHE_VALUE, AWCACHE'length);
    AWPROT   <= TO_UNSIGNED(C_PROT_VALUE, AWPROT'length);
    AWUSER   <= TO_UNSIGNED(C_USER_VALUE, AWUSER'length);
    AWQOS    <= wreq_qos;
    AWREGION <= wreq_region;

    must_one_burst : if (BUS_DATA_BYTES >= 4096/MAX_WRITE_BURST_LENGTH) generate
    begin
        AWADDR  <= sect_addr_buf(C_M_AXI_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
        AWLEN   <= RESIZE(sect_len_buf, 8);
        AWVALID <= AWVALID_Dummy;

        ready_for_sect <= '1' when not (AWVALID_Dummy = '1' and AWREADY = '0') and fifo_burst_ready = '1' and fifo_resp_ready = '1' else '0';

        awvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    AWVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if invalid_len_event = '1' then
                        AWVALID_Dummy <= '0';
                    elsif next_sect then
                        AWVALID_Dummy <= '1';
                    elsif not next_sect and AWREADY = '1' then
                        AWVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process awvalid_proc;

        fifo_resp_w <= '1' when next_sect else '0';
        aw2b_awdata <= '1' & invalid_len_event when last_sect else '0' & invalid_len_event;

        fifo_burst_w <= '1' when invalid_len_event = '0' and next_sect else '0';
        awaddr_tmp   <= sect_addr(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        awlen_tmp    <= RESIZE(sect_len, 8);
        burst_end    <= sect_end;
    end generate must_one_burst;

    could_multi_bursts : if (BUS_DATA_BYTES < 4096/MAX_WRITE_BURST_LENGTH) generate
        signal  awaddr_buf      : UNSIGNED(C_M_AXI_ADDR_WIDTH - 1 downto 0);
        signal  awlen_buf       : UNSIGNED(7 downto 0);
        signal  loop_cnt        : UNSIGNED(11 - NUM_WRITE_WIDTH - BUS_ADDR_ALIGN downto 0);
        signal  last_loop       : BOOLEAN;
        signal  next_loop       : BOOLEAN;
        signal  ready_for_loop  : BOOLEAN;
        signal  sect_handling   : BOOLEAN;
    begin
        AWADDR  <= awaddr_buf;
        AWLEN   <= awlen_buf;
        AWVALID <= AWVALID_Dummy;

        last_loop      <= (loop_cnt = sect_len_buf(11 - BUS_ADDR_ALIGN downto NUM_WRITE_WIDTH));
        next_loop      <= sect_handling and ready_for_loop;
        ready_for_loop <= not (AWVALID_Dummy = '1' and AWREADY = '0') and fifo_resp_ready = '1' and fifo_burst_ready = '1';
        ready_for_sect <= '1' when not (sect_handling and not (last_loop and next_loop)) else '0';

        sect_handling_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    sect_handling <= false;
                elsif ACLK_EN = '1' then
                    if wreq_handling and not sect_handling then
                        sect_handling <= true;
                    elsif not wreq_handling and last_loop and next_loop then
                        sect_handling <= false;
                    end if;
                end if;
            end if;
        end process sect_handling_proc;

        loop_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    loop_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_sect then
                        loop_cnt <= (others => '0');
                    elsif next_loop then
                        loop_cnt <= loop_cnt + 1;
                    end if;
                end if;
            end if;
        end process loop_cnt_proc;

        awaddr_tmp <= sect_addr_buf(C_M_AXI_ADDR_WIDTH -1 downto 0) when loop_cnt = 0 else
                      awaddr_buf + SHIFT_LEFT(RESIZE(awlen_buf, 32) + 1, BUS_ADDR_ALIGN);
        awaddr_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    awaddr_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_loop then
                        awaddr_buf <= awaddr_tmp(C_M_AXI_ADDR_WIDTH - 1 downto BUS_ADDR_ALIGN) & (BUS_ADDR_ALIGN - 1 downto 0 => '0');
                    end if;
                end if;
            end if;
        end process awaddr_buf_proc;

        awlen_tmp  <= RESIZE(sect_len_buf(NUM_WRITE_WIDTH-1 downto 0), 8) when last_loop else
                      TO_UNSIGNED(MAX_WRITE_BURST_LENGTH-1, 8);
        awlen_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    awlen_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_loop then
                        awlen_buf <= awlen_tmp;
                    end if;
                end if;
            end if;
        end process awlen_buf_proc;

        awvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    AWVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if invalid_len_event_2 = '1' then
                        AWVALID_Dummy <= '0';
                    elsif next_loop then
                        AWVALID_Dummy <= '1';
                    elsif not next_loop and AWREADY = '1' then
                        AWVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process awvalid_proc;

        fifo_resp_w <= '1' when next_loop else '0';
        aw2b_awdata <= '1' & invalid_len_event_2 when last_loop and last_sect_buf = '1' else '0' & invalid_len_event_2;
        last_sect_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    last_sect_buf <= '0';
                elsif ACLK_EN = '1' then
                    if next_sect and last_sect then
                        last_sect_buf <= '1';
                    elsif next_sect then
                        last_sect_buf <= '0';
                    end if;
                end if;
            end if;
        end process last_sect_buf_proc;

        fifo_burst_w <= '1' when invalid_len_event_2 = '0' and next_loop else '0';
        burst_end <= sect_end_buf(BUS_ADDR_ALIGN - 1 downto 0) when last_loop else (others => '1');
    end generate could_multi_bursts;
    --------------------------- AW channel end -------------------------------------

    --------------------------- W channel begin ------------------------------------
    -- Instantiation
    buff_wdata : shell_utils_kdma_gmem_m_axi_buffer
        generic map (
            DATA_WIDTH      => USER_DW + USER_DW/8,
            DEPTH           => NUM_WRITE_OUTSTANDING * MAX_WRITE_BURST_LENGTH,
            ADDR_WIDTH      => log2(NUM_WRITE_OUTSTANDING * MAX_WRITE_BURST_LENGTH))
        port map (
            clk               => ACLK,
            reset             => ARESET,
            sclk_en           => ACLK_EN,
            if_full_n         => wdata_ack,
            if_write_ce       => '1',
            if_write          => wdata_valid,
            if_din            => STD_LOGIC_VECTOR(fifo_wdata_wstrb),
            if_empty_n        => data_valid,
            if_read_ce        => '1',
            if_read           => next_data,
            UNSIGNED(if_dout) => data_pack);

    fifo_wdata_wstrb <= (wdata_strb & wdata_data);
    tmp_data         <= RESIZE(data_pack(USER_DW - 1 downto 0), USER_DATA_WIDTH);
    tmp_strb         <= RESIZE(data_pack(USER_DW + USER_DW/8 - 1 downto USER_DW), USER_DATA_BYTES);

    WID     <= (others => '0');
    WUSER   <= TO_UNSIGNED(C_USER_VALUE, WUSER'length);

    bus_equal_gen : if (USER_DATA_WIDTH = BUS_DATA_WIDTH) generate
        signal  data_buf        : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
        signal  strb_buf        : UNSIGNED(BUS_DATA_BYTES - 1 downto 0);
        signal  tmp_burst_info  : UNSIGNED(7 downto 0);
        signal  ready_for_data  : BOOLEAN;
    begin
        -- Instantiation
        fifo_burst : shell_utils_kdma_gmem_m_axi_fifo
            generic map (
                DATA_BITS       =>  8,
                DEPTH           =>  USER_MAXREQS,
                DEPTH_BITS      =>  log2(USER_MAXREQS))
            port map (
                sclk            =>  ACLK,
                reset           =>  ARESET,
                sclk_en         =>  ACLK_EN,
                empty_n         =>  burst_valid,
                full_n          =>  fifo_burst_ready,
                rdreq           =>  next_burst,
                wrreq           =>  fifo_burst_w,
                q               =>  burst_len,
                data            =>  tmp_burst_info);

        WDATA   <= data_buf;
        WSTRB   <= strb_buf;
        WLAST   <= WLAST_Dummy;
        WVALID  <= WVALID_Dummy;

        tmp_burst_info <= RESIZE(awlen_tmp, 8);

        ready_for_data <= not (WVALID_Dummy = '1' and WREADY = '0');
        next_data      <= '1' when burst_valid = '1' and data_valid = '1' and ready_for_data else '0';
        next_burst     <= '1' when len_cnt = burst_len and next_data = '1' else '0';

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if ACLK_EN = '1' then
                    if next_data = '1' then
                        data_buf <= tmp_data;
                    end if;
                end if;
            end if;
        end process data_buf_proc;

        strb_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    strb_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_data = '1' then
                        strb_buf <= tmp_strb;
                    end if;
                end if;
            end if;
        end process strb_buf_proc;

        wvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    WVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_data = '1' then
                        WVALID_Dummy <= '1';
                    elsif ready_for_data then
                        WVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process wvalid_proc;

        wlast_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    WLAST_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_burst = '1' then
                        WLAST_Dummy <= '1';
                    elsif ready_for_data then
                        WLAST_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process wlast_proc;

        len_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    len_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_burst = '1' then
                        len_cnt <= (others => '0');
                    elsif next_data = '1' then
                        len_cnt <= len_cnt + 1;
                    end if;
                end if;
            end if;
        end process len_cnt_proc;

    end generate bus_equal_gen;

    bus_narrow_gen : if (USER_DATA_WIDTH > BUS_DATA_WIDTH) generate
        constant TOTAL_SPLIT    : INTEGER := USER_DATA_WIDTH / BUS_DATA_WIDTH;
        constant SPLIT_ALIGN    : INTEGER := log2(TOTAL_SPLIT);
        signal  data_buf        : UNSIGNED(USER_DATA_WIDTH - 1 downto 0);
        signal  strb_buf        : UNSIGNED(USER_DATA_BYTES - 1 downto 0);
        signal  split_cnt       : UNSIGNED(SPLIT_ALIGN - 1 downto 0);
        signal  tmp_burst_info  : UNSIGNED(7 downto 0);
        signal  first_split     : BOOLEAN;
        signal  next_split      : BOOLEAN;
        signal  last_split      : BOOLEAN;
        signal  ready_for_data  : BOOLEAN;
    begin
        -- instantiation
        fifo_burst : shell_utils_kdma_gmem_m_axi_fifo
            generic map (
                DATA_BITS       =>  8,
                DEPTH           =>  USER_MAXREQS,
                DEPTH_BITS      =>  log2(USER_MAXREQS))
            port map (
                sclk            =>  ACLK,
                reset           =>  ARESET,
                sclk_en         =>  ACLK_EN,
                empty_n         =>  burst_valid,
                full_n          =>  fifo_burst_ready,
                rdreq           =>  next_burst,
                wrreq           =>  fifo_burst_w,
                q               =>  burst_len,
                data            =>  tmp_burst_info);

        WDATA   <= data_buf(BUS_DATA_WIDTH - 1 downto 0);
        WSTRB   <= strb_buf(BUS_DATA_BYTES - 1 downto 0);
        WLAST   <= WLAST_Dummy;
        WVALID  <= WVALID_Dummy;

        tmp_burst_info <= RESIZE(awlen_tmp, 8);

        next_data      <= '1' when first_split else '0';
        next_burst     <= '1' when len_cnt = burst_len and burst_valid = '1' and last_split else '0';
        ready_for_data <= not (WVALID_Dummy = '1' and WREADY = '0');

        first_split <= split_cnt = 0 and data_valid = '1' and burst_valid ='1' and ready_for_data;
        next_split  <= split_cnt /= 0 and ready_for_data;
        last_split  <= split_cnt = (TOTAL_SPLIT - 1) and ready_for_data;

        split_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    split_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if last_split then
                        split_cnt <= (others => '0');
                    elsif first_split or next_split then
                        split_cnt <= split_cnt + 1;
                    end if;
                end if;
            end if;
        end process split_cnt_proc;

        len_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    len_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_burst = '1' then
                        len_cnt <= (others => '0');
                    elsif next_data = '1' or next_split then
                        len_cnt <= len_cnt + 1;
                    end if;
                end if;
            end if;
        end process len_cnt_proc;

        data_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if ACLK_EN = '1' then
                    if next_data = '1' then
                        data_buf <= tmp_data;
                    elsif next_split then
                        data_buf <= SHIFT_RIGHT(data_buf, BUS_DATA_WIDTH);
                    end if;
                end if;
            end if;
        end process data_buf_proc;

        strb_buf_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    strb_buf <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_data = '1' then
                        strb_buf <= tmp_strb;
                    elsif next_split then
                        strb_buf <= SHIFT_RIGHT(strb_buf, BUS_DATA_BYTES);
                    end if;
                end if;
            end if;
        end process strb_buf_proc;

        wvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    WVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_data = '1' then
                        WVALID_Dummy <= '1';
                    elsif not (first_split or next_split) and ready_for_data then
                        WVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process wvalid_proc;

        wlast_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    WLAST_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_burst = '1' and last_split then
                        WLAST_Dummy <= '1';
                    elsif ready_for_data then
                        WLAST_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process wlast_proc;
    end generate bus_narrow_gen;

    bus_wide_gen : if (USER_DATA_WIDTH < BUS_DATA_WIDTH) generate
        constant TOTAL_PADS     : INTEGER := BUS_DATA_WIDTH / USER_DATA_WIDTH;
        constant PAD_ALIGN      : INTEGER := log2(TOTAL_PADS);
        signal  data_buf        : UNSIGNED(BUS_DATA_WIDTH - 1 downto 0);
        signal  strb_buf        : UNSIGNED(BUS_DATA_BYTES - 1 downto 0);
        signal  burst_pack      : UNSIGNED(2*PAD_ALIGN + 7 downto 0);
        signal  tmp_burst_info  : UNSIGNED(2*PAD_ALIGN + 7 downto 0);
        signal  head_pads       : UNSIGNED(PAD_ALIGN - 1 downto 0);
        signal  tail_pads       : UNSIGNED(PAD_ALIGN - 1 downto 0);
        signal  add_head        : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  add_tail        : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  pad_oh          : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  pad_oh_reg      : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  head_pad_sel    : UNSIGNED(TOTAL_PADS - 1 downto 0);
        signal  tail_pad_sel    : UNSIGNED(0 to TOTAL_PADS - 1);
        signal  ready_for_data  : BOOLEAN;
        signal  next_pad        : BOOLEAN;
        signal  first_pad       : BOOLEAN;
        signal  last_pad        : BOOLEAN;
        signal  first_beat      : BOOLEAN;
        signal  last_beat       : BOOLEAN;
        signal  next_beat       : BOOLEAN;

        component shell_utils_kdma_gmem_m_axi_decoder is
            generic (
                DIN_WIDTH : integer := 3);
            port (
                din     : in  UNSIGNED(DIN_WIDTH - 1 downto 0);
                dout    : out UNSIGNED(2**DIN_WIDTH - 1 downto 0));
        end component shell_utils_kdma_gmem_m_axi_decoder;

    begin
        -- Instantiation
        fifo_burst : shell_utils_kdma_gmem_m_axi_fifo
            generic map (
                DATA_BITS       =>  8 + 2*PAD_ALIGN,
                DEPTH           =>  user_maxreqs,
                DEPTH_BITS      =>  log2(user_maxreqs))
            port map (
                sclk            =>  ACLK,
                reset           =>  ARESET,
                sclk_en         =>  ACLK_EN,
                empty_n         =>  burst_valid,
                full_n          =>  fifo_burst_ready,
                rdreq           =>  next_burst,
                wrreq           =>  fifo_burst_w,
                q               =>  burst_pack,
                data            =>  tmp_burst_info);

        WDATA   <= data_buf;
        WSTRB   <= strb_buf;
        WLAST   <= WLAST_Dummy;
        WVALID  <= WVALID_Dummy;

        tmp_burst_info <= awaddr_tmp(BUS_ADDR_ALIGN - 1 downto USER_ADDR_ALIGN) & burst_end(BUS_ADDR_ALIGN - 1 downto USER_ADDR_ALIGN) & RESIZE(awlen_tmp, 8);

        head_pad_decoder : shell_utils_kdma_gmem_m_axi_decoder
            generic map (
                DIN_WIDTH       =>  PAD_ALIGN)
            port map (
                din             =>  head_pads,
                dout            =>  head_pad_sel);

        tail_pad_decoder : shell_utils_kdma_gmem_m_axi_decoder
            generic map (
                DIN_WIDTH       =>  PAD_ALIGN)
            port map (
                din             =>  tail_pads,
                dout            =>  tail_pad_sel);

        head_pads <= burst_pack(2*PAD_ALIGN + 7 downto 8 + PAD_ALIGN);
        tail_pads <= not burst_pack(PAD_ALIGN + 7 downto 8);
        burst_len <= burst_pack(7 downto 0);

        next_data      <= '1' when next_pad else '0';
        next_burst     <= '1' when last_beat and next_beat else '0';
        ready_for_data <= not (WVALID_Dummy = '1' and WREADY = '0');

        first_beat <= len_cnt = 0 and burst_valid = '1';
        last_beat  <= len_cnt = burst_len and burst_valid = '1';
        next_beat  <= burst_valid = '1' and last_pad and ready_for_data;

        next_pad <= burst_valid = '1' and data_valid = '1' and ready_for_data;
        last_pad <= pad_oh(TOTAL_PADS - to_integer(tail_pads) - 1) = '1' when last_beat else
                    pad_oh(TOTAL_PADS - 1) = '1';

        first_pad_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    first_pad <= true;
                elsif ACLK_EN = '1' then
                    if next_pad and not last_pad then
                        first_pad <= false;
                    elsif next_pad and last_pad then
                        first_pad <= true;
                    end if;
                end if;
            end if;
        end process first_pad_proc;

        pad_oh <= (others => '0')                                               when data_valid = '0' else
                  SHIFT_LEFT(TO_UNSIGNED(1, TOTAL_PADS), TO_INTEGER(head_pads)) when first_beat and first_pad else
                  TO_UNSIGNED(1, TOTAL_PADS)                                    when first_pad else
                  pad_oh_reg;
        pad_oh_reg_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    pad_oh_reg <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_pad then
                        pad_oh_reg <= pad_oh(TOTAL_PADS - 2 downto 0) & '0';
                    end if;
                end if;
            end if;
        end process pad_oh_reg_proc;

        data_strb_gen : for i in 1 to TOTAL_PADS generate
        begin
            add_head(i-1) <= '1' when head_pad_sel(i-1) = '1' and first_beat else
                             '0';
            add_tail(i-1) <= '1' when tail_pad_sel(i-1) = '1' and last_beat else
                             '0';

            process (ACLK)
            begin
                if (ACLK'event and ACLK = '1') then
                    if ACLK_EN = '1' then
                        if (add_head(i-1) = '1' or add_tail(i-1) = '1') and ready_for_data then
                            data_buf(i*USER_DATA_WIDTH - 1 downto (i-1)*USER_DATA_WIDTH) <= (others => '0');
                        elsif pad_oh(i-1) = '1' and ready_for_data then
                            data_buf(i*USER_DATA_WIDTH - 1 downto (i-1)*USER_DATA_WIDTH) <= tmp_data;
                        end if;
                    end if;
                end if;
            end process;

            process (ACLK)
            begin
                if (ACLK'event and ACLK = '1') and ACLK_EN = '1' then
                    if (ARESET = '1') then
                        strb_buf(i*USER_DATA_BYTES - 1 downto (i-1)*USER_DATA_BYTES) <= (others => '0');
                    elsif (add_head(i-1) = '1' or add_tail(i-1) = '1') and ready_for_data then
                        strb_buf(i*USER_DATA_BYTES - 1 downto (i-1)*USER_DATA_BYTES) <= (others => '0');
                    elsif pad_oh(i-1) = '1' and ready_for_data then
                        strb_buf(i*USER_DATA_BYTES - 1 downto (i-1)*USER_DATA_BYTES) <= tmp_strb;
                    end if;
                end if;
            end process;
        end generate data_strb_gen;

        wvalid_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    WVALID_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_beat then
                        WVALID_Dummy <= '1';
                    elsif ready_for_data then
                        WVALID_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process wvalid_proc;

        wlast_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    WLAST_Dummy <= '0';
                elsif ACLK_EN = '1' then
                    if next_burst = '1' then
                        WLAST_Dummy <= '1';
                    elsif next_data = '1' then
                        WLAST_Dummy <= '0';
                    end if;
                end if;
            end if;
        end process wlast_proc;

        len_cnt_proc : process (ACLK)
        begin
            if (ACLK'event and ACLK = '1') then
                if (ARESET = '1') then
                    len_cnt <= (others => '0');
                elsif ACLK_EN = '1' then
                    if next_burst = '1' then
                        len_cnt <= (others => '0');
                    elsif next_beat then
                        len_cnt <= len_cnt + 1;
                    end if;
                end if;
            end if;
        end process len_cnt_proc;
    end generate bus_wide_gen;
    --------------------------- W channel end --------------------------------------

    --------------------------- B channel begin ------------------------------------
    -- Instantiation
    fifo_resp : shell_utils_kdma_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  2,
            DEPTH           =>  NUM_WRITE_OUTSTANDING-1,
            DEPTH_BITS      =>  log2(NUM_WRITE_OUTSTANDING-1))
        port map (
            sclk            =>  ACLK,
            reset           =>  ARESET,
            sclk_en         =>  ACLK_EN,
            empty_n         =>  need_wrsp,
            full_n          =>  fifo_resp_ready,
            rdreq           =>  next_resp,
            wrreq           =>  fifo_resp_w,
            q               =>  aw2b_bdata,
            data            =>  aw2b_awdata);

    fifo_resp_to_user : shell_utils_kdma_gmem_m_axi_fifo
        generic map (
            DATA_BITS       =>  2,
            DEPTH           =>  USER_MAXREQS,
            DEPTH_BITS      =>  log2(USER_MAXREQS))
        port map (
            sclk            =>  ACLK,
            reset           =>  ARESET,
            sclk_en         =>  ACLK_EN,
            empty_n         =>  wrsp_valid,
            full_n          =>  resp_ready,
            rdreq           =>  wrsp_ack,
            wrreq           =>  resp_match,
            q               =>  wrsp,
            data            =>  bresp_tmp);

    BREADY        <= resp_ready;
    last_resp     <= aw2b_bdata(1);
    invalid_event <= aw2b_bdata(0);
    resp_match    <= '1' when (next_resp = '1' and (last_resp = '1' or invalid_event = '1')) and need_wrsp = '1' else '0';

    next_resp_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                next_resp <= '0';
            elsif ACLK_EN = '1' then
                next_resp <= (BVALID and resp_ready) or (invalid_event and need_wrsp and (not next_resp));
            end if;
        end if;
    end process next_resp_proc;

    bresp_tmp_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                bresp_tmp <= "00";
            elsif ACLK_EN = '1' then
                if (resp_match = '1' and next_resp = '0') then
                    bresp_tmp <= "00";
                elsif (resp_match = '1' and next_resp = '1') then
                    bresp_tmp <= BRESP;
                elsif (next_resp = '1' and bresp_tmp(1) = '0') then
                    bresp_tmp <= BRESP;
                end if;
            end if;
        end if;
    end process bresp_tmp_proc;
--------------------------- B channel end --------------------------------------
end architecture behave;


-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- (c) Copyright 1986-2019 Xilinx, Inc. All rights reserved.
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
------------------------------------------------------------
--
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity shell_utils_kdma is
generic (
    C_M_AXI_GMEM_ADDR_WIDTH : INTEGER := 64;
    C_M_AXI_GMEM_ID_WIDTH : INTEGER := 1;
    C_M_AXI_GMEM_AWUSER_WIDTH : INTEGER := 1;
    C_M_AXI_GMEM_DATA_WIDTH : INTEGER := 512;
    C_M_AXI_GMEM_WUSER_WIDTH : INTEGER := 1;
    C_M_AXI_GMEM_ARUSER_WIDTH : INTEGER := 1;
    C_M_AXI_GMEM_RUSER_WIDTH : INTEGER := 1;
    C_M_AXI_GMEM_BUSER_WIDTH : INTEGER := 1;
    C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER := 6;
    C_S_AXI_CONTROL_DATA_WIDTH : INTEGER := 32;
    C_M_AXI_GMEM_USER_VALUE : INTEGER := 0;
    C_M_AXI_GMEM_PROT_VALUE : INTEGER := 0;
    C_M_AXI_GMEM_CACHE_VALUE : INTEGER := 3 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    m_axi_gmem_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_AWREADY : IN STD_LOGIC;
    m_axi_gmem_AWADDR : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_ADDR_WIDTH-1 downto 0);
    m_axi_gmem_AWID : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_ID_WIDTH-1 downto 0);
    m_axi_gmem_AWLEN : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_gmem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_AWUSER_WIDTH-1 downto 0);
    m_axi_gmem_WVALID : OUT STD_LOGIC;
    m_axi_gmem_WREADY : IN STD_LOGIC;
    m_axi_gmem_WDATA : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_DATA_WIDTH-1 downto 0);
    m_axi_gmem_WSTRB : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_DATA_WIDTH/8-1 downto 0);
    m_axi_gmem_WLAST : OUT STD_LOGIC;
    m_axi_gmem_WID : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_ID_WIDTH-1 downto 0);
    m_axi_gmem_WUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_WUSER_WIDTH-1 downto 0);
    m_axi_gmem_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_ARREADY : IN STD_LOGIC;
    m_axi_gmem_ARADDR : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_ADDR_WIDTH-1 downto 0);
    m_axi_gmem_ARID : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_ID_WIDTH-1 downto 0);
    m_axi_gmem_ARLEN : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_gmem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_GMEM_ARUSER_WIDTH-1 downto 0);
    m_axi_gmem_RVALID : IN STD_LOGIC;
    m_axi_gmem_RREADY : OUT STD_LOGIC;
    m_axi_gmem_RDATA : IN STD_LOGIC_VECTOR (C_M_AXI_GMEM_DATA_WIDTH-1 downto 0);
    m_axi_gmem_RLAST : IN STD_LOGIC;
    m_axi_gmem_RID : IN STD_LOGIC_VECTOR (C_M_AXI_GMEM_ID_WIDTH-1 downto 0);
    m_axi_gmem_RUSER : IN STD_LOGIC_VECTOR (C_M_AXI_GMEM_RUSER_WIDTH-1 downto 0);
    m_axi_gmem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BVALID : IN STD_LOGIC;
    m_axi_gmem_BREADY : OUT STD_LOGIC;
    m_axi_gmem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BID : IN STD_LOGIC_VECTOR (C_M_AXI_GMEM_ID_WIDTH-1 downto 0);
    m_axi_gmem_BUSER : IN STD_LOGIC_VECTOR (C_M_AXI_GMEM_BUSER_WIDTH-1 downto 0);
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH/8-1 downto 0);
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_CONTROL_ADDR_WIDTH-1 downto 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_RREADY : IN STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_CONTROL_DATA_WIDTH-1 downto 0);
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    interrupt : OUT STD_LOGIC );
end;


architecture behav of shell_utils_kdma is
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "shell_utils_kdma,hls_ip_2018_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xcu200-fsgd2104-2-e,HLS_INPUT_CLOCK=3.333000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.433000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=30,HLS_SYN_DSP=0,HLS_SYN_FF=2601,HLS_SYN_LUT=2880,HLS_VERSION=2018_3}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000";
    constant ap_ST_fsm_state27 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000";
    constant ap_ST_fsm_state28 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000";
    constant ap_ST_fsm_state29 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000";
    constant ap_ST_fsm_state30 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000";
    constant ap_ST_fsm_state31 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000";
    constant ap_ST_fsm_state32 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000";
    constant ap_ST_fsm_state33 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000";
    constant ap_ST_fsm_state34 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000";
    constant ap_ST_fsm_state35 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000";
    constant ap_ST_fsm_state36 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000";
    constant ap_ST_fsm_state37 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000";
    constant ap_ST_fsm_state38 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000";
    constant ap_ST_fsm_state39 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000";
    constant ap_ST_fsm_state40 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000";
    constant ap_ST_fsm_state41 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000";
    constant ap_ST_fsm_state42 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000";
    constant ap_ST_fsm_state43 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state44 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state45 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state46 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state47 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state48 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state49 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state50 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state51 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state52 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state53 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state54 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state55 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state56 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state57 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state58 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state59 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state60 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state61 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state62 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state63 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state64 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state65 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state66 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state67 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state68 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state69 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state70 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state71 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state75 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state76 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state77 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state78 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state79 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state80 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state81 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state82 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state83 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state84 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state85 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state86 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state87 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state88 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state89 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state90 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state91 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state92 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state93 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state94 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state95 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state96 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state97 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state98 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state99 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state100 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state101 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state102 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state103 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state104 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state105 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state106 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state107 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state108 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state109 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state110 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state111 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state112 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state113 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state114 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state115 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state116 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state117 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state118 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state119 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state120 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state121 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state122 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state123 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state124 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state125 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state126 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state127 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state128 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state129 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state130 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state131 : STD_LOGIC_VECTOR (139 downto 0) := "00000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state132 : STD_LOGIC_VECTOR (139 downto 0) := "00000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state133 : STD_LOGIC_VECTOR (139 downto 0) := "00000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state134 : STD_LOGIC_VECTOR (139 downto 0) := "00000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state135 : STD_LOGIC_VECTOR (139 downto 0) := "00000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state136 : STD_LOGIC_VECTOR (139 downto 0) := "00000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state137 : STD_LOGIC_VECTOR (139 downto 0) := "00000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state138 : STD_LOGIC_VECTOR (139 downto 0) := "00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state139 : STD_LOGIC_VECTOR (139 downto 0) := "00010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state140 : STD_LOGIC_VECTOR (139 downto 0) := "00100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state141 : STD_LOGIC_VECTOR (139 downto 0) := "01000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_ST_fsm_state142 : STD_LOGIC_VECTOR (139 downto 0) := "10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_47 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000111";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_46 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000110";
    constant ap_const_lv32_8B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010001011";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant C_M_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv64_FFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_all_ones_i_wstrb : STD_LOGIC_VECTOR (C_M_AXI_GMEM_DATA_WIDTH/8-1 downto 0):= (others => '1');

attribute shreg_extract : string;
    signal ap_rst_reg_2 : STD_LOGIC := '1';
attribute shreg_extract of ap_rst_reg_2 : signal is "no";
    signal ap_rst_reg_1 : STD_LOGIC := '1';
attribute shreg_extract of ap_rst_reg_1 : signal is "no";
    signal ap_rst_n_inv : STD_LOGIC := '1';
attribute shreg_extract of ap_rst_n_inv : signal is "no";
    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (139 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_ready : STD_LOGIC;
    signal input0 : STD_LOGIC_VECTOR (63 downto 0);
    signal output0 : STD_LOGIC_VECTOR (63 downto 0);
    signal num_blocks : STD_LOGIC_VECTOR (63 downto 0);
    signal gmem_blk_n_AR : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal gmem_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal exitcond2_reg_218 : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem_blk_n_AW : STD_LOGIC;
    signal ap_CS_fsm_state71 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state71 : signal is "none";
    signal gmem_blk_n_W : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal exitcond2_reg_218_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem_blk_n_B : STD_LOGIC;
    signal ap_CS_fsm_state142 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state142 : signal is "none";
    signal cmp1_reg_186 : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem_AWVALID : STD_LOGIC;
    signal gmem_AWREADY : STD_LOGIC;
    signal gmem_WVALID : STD_LOGIC;
    signal gmem_WREADY : STD_LOGIC;
    signal gmem_ARVALID : STD_LOGIC;
    signal gmem_ARREADY : STD_LOGIC;
    signal gmem_ARLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal gmem_RVALID : STD_LOGIC;
    signal gmem_RREADY : STD_LOGIC;
    signal gmem_RDATA : STD_LOGIC_VECTOR (C_M_AXI_GMEM_DATA_WIDTH-1 downto 0);
    signal gmem_RLAST : STD_LOGIC;
    signal gmem_RID : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem_RUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem_RRESP : STD_LOGIC_VECTOR (1 downto 0);
    signal gmem_BVALID : STD_LOGIC;
    signal gmem_BREADY : STD_LOGIC;
    signal gmem_BRESP : STD_LOGIC_VECTOR (1 downto 0);
    signal gmem_BID : STD_LOGIC_VECTOR (0 downto 0);
    signal gmem_BUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal blockindex_reg_108 : STD_LOGIC_VECTOR (63 downto 0);
    signal num_blocks_read_reg_180 : STD_LOGIC_VECTOR (63 downto 0);
    signal cmp1_fu_119_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_reg_190 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_6_reg_195 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_ioackin_gmem_ARREADY : STD_LOGIC;
    signal tmp_1_fu_155_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_reg_206 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_ioackin_gmem_AWREADY : STD_LOGIC;
    signal exitcond2_fu_169_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state72_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state73_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state74_pp0_stage0_iter2 : BOOLEAN;
    signal ap_sig_ioackin_gmem_WREADY : STD_LOGIC;
    signal ap_block_state74_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal blockindex_1_fu_174_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal temp0_reg_227 : STD_LOGIC_VECTOR (C_M_AXI_GMEM_DATA_WIDTH-1 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state72 : STD_LOGIC;
    signal tmp_fu_145_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_159_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_reg_ioackin_gmem_ARREADY : STD_LOGIC := '0';
    signal ap_reg_ioackin_gmem_AWREADY : STD_LOGIC := '0';
    signal ap_block_state142 : BOOLEAN;
    signal ap_reg_ioackin_gmem_WREADY : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (139 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component shell_utils_kdma_control_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC;
        input0 : OUT STD_LOGIC_VECTOR (63 downto 0);
        output0 : OUT STD_LOGIC_VECTOR (63 downto 0);
        num_blocks : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component shell_utils_kdma_gmem_m_axi IS
    generic (
        CONSERVATIVE : INTEGER;
        USER_DW : INTEGER;
        USER_AW : INTEGER;
        USER_MAXREQS : INTEGER;
        NUM_READ_OUTSTANDING : INTEGER;
        NUM_WRITE_OUTSTANDING : INTEGER;
        MAX_READ_BURST_LENGTH : INTEGER;
        MAX_WRITE_BURST_LENGTH : INTEGER;
        C_M_AXI_ID_WIDTH : INTEGER;
        C_M_AXI_ADDR_WIDTH : INTEGER;
        C_M_AXI_DATA_WIDTH : INTEGER;
        C_M_AXI_AWUSER_WIDTH : INTEGER;
        C_M_AXI_ARUSER_WIDTH : INTEGER;
        C_M_AXI_WUSER_WIDTH : INTEGER;
        C_M_AXI_RUSER_WIDTH : INTEGER;
        C_M_AXI_BUSER_WIDTH : INTEGER;
        C_USER_VALUE : INTEGER;
        C_PROT_VALUE : INTEGER;
        C_CACHE_VALUE : INTEGER );
    port (
        AWVALID : OUT STD_LOGIC;
        AWREADY : IN STD_LOGIC;
        AWADDR : OUT STD_LOGIC_VECTOR (C_M_AXI_ADDR_WIDTH-1 downto 0);
        AWID : OUT STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        AWLEN : OUT STD_LOGIC_VECTOR (7 downto 0);
        AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        AWUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_AWUSER_WIDTH-1 downto 0);
        WVALID : OUT STD_LOGIC;
        WREADY : IN STD_LOGIC;
        WDATA : OUT STD_LOGIC_VECTOR (C_M_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : OUT STD_LOGIC_VECTOR (C_M_AXI_DATA_WIDTH/8-1 downto 0);
        WLAST : OUT STD_LOGIC;
        WID : OUT STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        WUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_WUSER_WIDTH-1 downto 0);
        ARVALID : OUT STD_LOGIC;
        ARREADY : IN STD_LOGIC;
        ARADDR : OUT STD_LOGIC_VECTOR (C_M_AXI_ADDR_WIDTH-1 downto 0);
        ARID : OUT STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        ARLEN : OUT STD_LOGIC_VECTOR (7 downto 0);
        ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        ARUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_ARUSER_WIDTH-1 downto 0);
        RVALID : IN STD_LOGIC;
        RREADY : OUT STD_LOGIC;
        RDATA : IN STD_LOGIC_VECTOR (C_M_AXI_DATA_WIDTH-1 downto 0);
        RLAST : IN STD_LOGIC;
        RID : IN STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        RUSER : IN STD_LOGIC_VECTOR (C_M_AXI_RUSER_WIDTH-1 downto 0);
        RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        BVALID : IN STD_LOGIC;
        BREADY : OUT STD_LOGIC;
        BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        BID : IN STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        BUSER : IN STD_LOGIC_VECTOR (C_M_AXI_BUSER_WIDTH-1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        I_ARVALID : IN STD_LOGIC;
        I_ARREADY : OUT STD_LOGIC;
        I_ARADDR : IN STD_LOGIC_VECTOR (USER_AW-1 downto 0);
        I_ARID : IN STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        I_ARLEN : IN STD_LOGIC_VECTOR (31 downto 0);
        I_ARSIZE : IN STD_LOGIC_VECTOR (2 downto 0);
        I_ARLOCK : IN STD_LOGIC_VECTOR (1 downto 0);
        I_ARCACHE : IN STD_LOGIC_VECTOR (3 downto 0);
        I_ARQOS : IN STD_LOGIC_VECTOR (3 downto 0);
        I_ARPROT : IN STD_LOGIC_VECTOR (2 downto 0);
        I_ARUSER : IN STD_LOGIC_VECTOR (C_M_AXI_ARUSER_WIDTH-1 downto 0);
        I_ARBURST : IN STD_LOGIC_VECTOR (1 downto 0);
        I_ARREGION : IN STD_LOGIC_VECTOR (3 downto 0);
        I_RVALID : OUT STD_LOGIC;
        I_RREADY : IN STD_LOGIC;
        I_RDATA : OUT STD_LOGIC_VECTOR (USER_DW-1 downto 0);
        I_RID : OUT STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        I_RUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_RUSER_WIDTH-1 downto 0);
        I_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        I_RLAST : OUT STD_LOGIC;
        I_AWVALID : IN STD_LOGIC;
        I_AWREADY : OUT STD_LOGIC;
        I_AWADDR : IN STD_LOGIC_VECTOR (USER_AW-1 downto 0);
        I_AWID : IN STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        I_AWLEN : IN STD_LOGIC_VECTOR (31 downto 0);
        I_AWSIZE : IN STD_LOGIC_VECTOR (2 downto 0);
        I_AWLOCK : IN STD_LOGIC_VECTOR (1 downto 0);
        I_AWCACHE : IN STD_LOGIC_VECTOR (3 downto 0);
        I_AWQOS : IN STD_LOGIC_VECTOR (3 downto 0);
        I_AWPROT : IN STD_LOGIC_VECTOR (2 downto 0);
        I_AWUSER : IN STD_LOGIC_VECTOR (C_M_AXI_AWUSER_WIDTH-1 downto 0);
        I_AWBURST : IN STD_LOGIC_VECTOR (1 downto 0);
        I_AWREGION : IN STD_LOGIC_VECTOR (3 downto 0);
        I_WVALID : IN STD_LOGIC;
        I_WREADY : OUT STD_LOGIC;
        I_WDATA : IN STD_LOGIC_VECTOR (USER_DW-1 downto 0);
        I_WID : IN STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        I_WUSER : IN STD_LOGIC_VECTOR (C_M_AXI_WUSER_WIDTH-1 downto 0);
        I_WLAST : IN STD_LOGIC;
        I_WSTRB : IN STD_LOGIC_VECTOR (USER_DW/8-1 downto 0);
        I_BVALID : OUT STD_LOGIC;
        I_BREADY : IN STD_LOGIC;
        I_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        I_BID : OUT STD_LOGIC_VECTOR (C_M_AXI_ID_WIDTH-1 downto 0);
        I_BUSER : OUT STD_LOGIC_VECTOR (C_M_AXI_BUSER_WIDTH-1 downto 0) );
    end component;



begin
    shell_utils_kdma_control_s_axi_U : component shell_utils_kdma_control_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_CONTROL_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_CONTROL_DATA_WIDTH)
    port map (
        AWVALID => s_axi_control_AWVALID,
        AWREADY => s_axi_control_AWREADY,
        AWADDR => s_axi_control_AWADDR,
        WVALID => s_axi_control_WVALID,
        WREADY => s_axi_control_WREADY,
        WDATA => s_axi_control_WDATA,
        WSTRB => s_axi_control_WSTRB,
        ARVALID => s_axi_control_ARVALID,
        ARREADY => s_axi_control_ARREADY,
        ARADDR => s_axi_control_ARADDR,
        RVALID => s_axi_control_RVALID,
        RREADY => s_axi_control_RREADY,
        RDATA => s_axi_control_RDATA,
        RRESP => s_axi_control_RRESP,
        BVALID => s_axi_control_BVALID,
        BREADY => s_axi_control_BREADY,
        BRESP => s_axi_control_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle,
        input0 => input0,
        output0 => output0,
        num_blocks => num_blocks);

    shell_utils_kdma_gmem_m_axi_U : component shell_utils_kdma_gmem_m_axi
    generic map (
        CONSERVATIVE => 1,
        USER_DW => C_M_AXI_GMEM_DATA_WIDTH,
        USER_AW => C_M_AXI_GMEM_ADDR_WIDTH,
        USER_MAXREQS => 69,
        NUM_READ_OUTSTANDING => 16,
        NUM_WRITE_OUTSTANDING => 16,
        MAX_READ_BURST_LENGTH => 16,
        MAX_WRITE_BURST_LENGTH => 16,
        C_M_AXI_ID_WIDTH => C_M_AXI_GMEM_ID_WIDTH,
        C_M_AXI_ADDR_WIDTH => C_M_AXI_GMEM_ADDR_WIDTH,
        C_M_AXI_DATA_WIDTH => C_M_AXI_GMEM_DATA_WIDTH,
        C_M_AXI_AWUSER_WIDTH => C_M_AXI_GMEM_AWUSER_WIDTH,
        C_M_AXI_ARUSER_WIDTH => C_M_AXI_GMEM_ARUSER_WIDTH,
        C_M_AXI_WUSER_WIDTH => C_M_AXI_GMEM_WUSER_WIDTH,
        C_M_AXI_RUSER_WIDTH => C_M_AXI_GMEM_RUSER_WIDTH,
        C_M_AXI_BUSER_WIDTH => C_M_AXI_GMEM_BUSER_WIDTH,
        C_USER_VALUE => C_M_AXI_GMEM_USER_VALUE,
        C_PROT_VALUE => C_M_AXI_GMEM_PROT_VALUE,
        C_CACHE_VALUE => C_M_AXI_GMEM_CACHE_VALUE)
    port map (
        AWVALID => m_axi_gmem_AWVALID,
        AWREADY => m_axi_gmem_AWREADY,
        AWADDR => m_axi_gmem_AWADDR,
        AWID => m_axi_gmem_AWID,
        AWLEN => m_axi_gmem_AWLEN,
        AWSIZE => m_axi_gmem_AWSIZE,
        AWBURST => m_axi_gmem_AWBURST,
        AWLOCK => m_axi_gmem_AWLOCK,
        AWCACHE => m_axi_gmem_AWCACHE,
        AWPROT => m_axi_gmem_AWPROT,
        AWQOS => m_axi_gmem_AWQOS,
        AWREGION => m_axi_gmem_AWREGION,
        AWUSER => m_axi_gmem_AWUSER,
        WVALID => m_axi_gmem_WVALID,
        WREADY => m_axi_gmem_WREADY,
        WDATA => m_axi_gmem_WDATA,
        WSTRB => m_axi_gmem_WSTRB,
        WLAST => m_axi_gmem_WLAST,
        WID => m_axi_gmem_WID,
        WUSER => m_axi_gmem_WUSER,
        ARVALID => m_axi_gmem_ARVALID,
        ARREADY => m_axi_gmem_ARREADY,
        ARADDR => m_axi_gmem_ARADDR,
        ARID => m_axi_gmem_ARID,
        ARLEN => m_axi_gmem_ARLEN,
        ARSIZE => m_axi_gmem_ARSIZE,
        ARBURST => m_axi_gmem_ARBURST,
        ARLOCK => m_axi_gmem_ARLOCK,
        ARCACHE => m_axi_gmem_ARCACHE,
        ARPROT => m_axi_gmem_ARPROT,
        ARQOS => m_axi_gmem_ARQOS,
        ARREGION => m_axi_gmem_ARREGION,
        ARUSER => m_axi_gmem_ARUSER,
        RVALID => m_axi_gmem_RVALID,
        RREADY => m_axi_gmem_RREADY,
        RDATA => m_axi_gmem_RDATA,
        RLAST => m_axi_gmem_RLAST,
        RID => m_axi_gmem_RID,
        RUSER => m_axi_gmem_RUSER,
        RRESP => m_axi_gmem_RRESP,
        BVALID => m_axi_gmem_BVALID,
        BREADY => m_axi_gmem_BREADY,
        BRESP => m_axi_gmem_BRESP,
        BID => m_axi_gmem_BID,
        BUSER => m_axi_gmem_BUSER,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        I_ARVALID => gmem_ARVALID,
        I_ARREADY => gmem_ARREADY,
        I_ARADDR => tmp_fu_145_p1,
        I_ARID => ap_const_lv1_0,
        I_ARLEN => gmem_ARLEN,
        I_ARSIZE => ap_const_lv3_0,
        I_ARLOCK => ap_const_lv2_0,
        I_ARCACHE => ap_const_lv4_0,
        I_ARQOS => ap_const_lv4_0,
        I_ARPROT => ap_const_lv3_0,
        I_ARUSER => ap_const_lv1_0,
        I_ARBURST => ap_const_lv2_0,
        I_ARREGION => ap_const_lv4_0,
        I_RVALID => gmem_RVALID,
        I_RREADY => gmem_RREADY,
        I_RDATA => gmem_RDATA,
        I_RID => gmem_RID,
        I_RUSER => gmem_RUSER,
        I_RRESP => gmem_RRESP,
        I_RLAST => gmem_RLAST,
        I_AWVALID => gmem_AWVALID,
        I_AWREADY => gmem_AWREADY,
        I_AWADDR => tmp_2_fu_159_p1,
        I_AWID => ap_const_lv1_0,
        I_AWLEN => tmp_1_reg_206,
        I_AWSIZE => ap_const_lv3_0,
        I_AWLOCK => ap_const_lv2_0,
        I_AWCACHE => ap_const_lv4_0,
        I_AWQOS => ap_const_lv4_0,
        I_AWPROT => ap_const_lv3_0,
        I_AWUSER => ap_const_lv1_0,
        I_AWBURST => ap_const_lv2_0,
        I_AWREGION => ap_const_lv4_0,
        I_WVALID => gmem_WVALID,
        I_WREADY => gmem_WREADY,
        I_WDATA => temp0_reg_227,
        I_WID => ap_const_lv1_0,
        I_WUSER => ap_const_lv1_0,
        I_WLAST => ap_const_logic_0,
        I_WSTRB => ap_const_all_ones_i_wstrb,
        I_BVALID => gmem_BVALID,
        I_BREADY => gmem_BREADY,
        I_BRESP => gmem_BRESP,
        I_BID => gmem_BID,
        I_BUSER => gmem_BUSER);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state72) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_sig_ioackin_gmem_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state71))) then
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state72)) then
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state72);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((ap_sig_ioackin_gmem_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state71))) then
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if;
            end if;
        end if;
    end process;


    ap_reg_ioackin_gmem_ARREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ioackin_gmem_ARREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                    if ((ap_sig_ioackin_gmem_ARREADY = ap_const_logic_1)) then
                        ap_reg_ioackin_gmem_ARREADY <= ap_const_logic_0;
                    elsif ((gmem_ARREADY = ap_const_logic_1)) then
                        ap_reg_ioackin_gmem_ARREADY <= ap_const_logic_1;
                    end if;
                end if;
            end if;
        end if;
    end process;


    ap_reg_ioackin_gmem_AWREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ioackin_gmem_AWREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state71)) then
                    if ((ap_sig_ioackin_gmem_AWREADY = ap_const_logic_1)) then
                        ap_reg_ioackin_gmem_AWREADY <= ap_const_logic_0;
                    elsif ((gmem_AWREADY = ap_const_logic_1)) then
                        ap_reg_ioackin_gmem_AWREADY <= ap_const_logic_1;
                    end if;
                end if;
            end if;
        end if;
    end process;


    ap_reg_ioackin_gmem_WREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ioackin_gmem_WREADY <= ap_const_logic_0;
            else
                if (((exitcond2_reg_218_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
                    if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                        ap_reg_ioackin_gmem_WREADY <= ap_const_logic_0;
                    elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (gmem_WREADY = ap_const_logic_1))) then
                        ap_reg_ioackin_gmem_WREADY <= ap_const_logic_1;
                    end if;
                end if;
            end if;
        end if;
    end process;


    ap_rst_n_inv_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_rst_n_inv <= ap_rst_reg_1;
        end if;
    end process;

    ap_rst_reg_1_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_rst_reg_1 <= ap_rst_reg_2;
        end if;
    end process;

    ap_rst_reg_2_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
                        ap_rst_reg_2 <= not(ap_rst_n);
        end if;
    end process;

    blockindex_reg_108_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond2_fu_169_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                blockindex_reg_108 <= blockindex_1_fu_174_p2;
            elsif (((ap_sig_ioackin_gmem_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state71))) then
                blockindex_reg_108 <= ap_const_lv64_0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                cmp1_reg_186 <= cmp1_fu_119_p2;
                num_blocks_read_reg_180 <= num_blocks;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                exitcond2_reg_218 <= exitcond2_fu_169_p2;
                exitcond2_reg_218_pp0_iter1_reg <= exitcond2_reg_218;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond2_reg_218 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                temp0_reg_227 <= gmem_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_sig_ioackin_gmem_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                tmp_1_reg_206 <= tmp_1_fu_155_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((cmp1_fu_119_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                tmp_4_reg_190 <= input0;
                tmp_6_reg_195 <= output0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_enable_reg_pp0_iter1, ap_CS_fsm_state71, ap_enable_reg_pp0_iter2, ap_CS_fsm_state142, cmp1_reg_186, gmem_BVALID, cmp1_fu_119_p2, ap_sig_ioackin_gmem_ARREADY, ap_sig_ioackin_gmem_AWREADY, exitcond2_fu_169_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 =>
                if (((cmp1_fu_119_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state142;
                elsif (((cmp1_fu_119_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 =>
                if (((ap_sig_ioackin_gmem_ARREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 =>
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 =>
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 =>
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 =>
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 =>
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 =>
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 =>
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 =>
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 =>
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 =>
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 =>
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 =>
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 =>
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 =>
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 =>
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 =>
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 =>
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 =>
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 =>
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 =>
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 =>
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 =>
                ap_NS_fsm <= ap_ST_fsm_state25;
            when ap_ST_fsm_state25 =>
                ap_NS_fsm <= ap_ST_fsm_state26;
            when ap_ST_fsm_state26 =>
                ap_NS_fsm <= ap_ST_fsm_state27;
            when ap_ST_fsm_state27 =>
                ap_NS_fsm <= ap_ST_fsm_state28;
            when ap_ST_fsm_state28 =>
                ap_NS_fsm <= ap_ST_fsm_state29;
            when ap_ST_fsm_state29 =>
                ap_NS_fsm <= ap_ST_fsm_state30;
            when ap_ST_fsm_state30 =>
                ap_NS_fsm <= ap_ST_fsm_state31;
            when ap_ST_fsm_state31 =>
                ap_NS_fsm <= ap_ST_fsm_state32;
            when ap_ST_fsm_state32 =>
                ap_NS_fsm <= ap_ST_fsm_state33;
            when ap_ST_fsm_state33 =>
                ap_NS_fsm <= ap_ST_fsm_state34;
            when ap_ST_fsm_state34 =>
                ap_NS_fsm <= ap_ST_fsm_state35;
            when ap_ST_fsm_state35 =>
                ap_NS_fsm <= ap_ST_fsm_state36;
            when ap_ST_fsm_state36 =>
                ap_NS_fsm <= ap_ST_fsm_state37;
            when ap_ST_fsm_state37 =>
                ap_NS_fsm <= ap_ST_fsm_state38;
            when ap_ST_fsm_state38 =>
                ap_NS_fsm <= ap_ST_fsm_state39;
            when ap_ST_fsm_state39 =>
                ap_NS_fsm <= ap_ST_fsm_state40;
            when ap_ST_fsm_state40 =>
                ap_NS_fsm <= ap_ST_fsm_state41;
            when ap_ST_fsm_state41 =>
                ap_NS_fsm <= ap_ST_fsm_state42;
            when ap_ST_fsm_state42 =>
                ap_NS_fsm <= ap_ST_fsm_state43;
            when ap_ST_fsm_state43 =>
                ap_NS_fsm <= ap_ST_fsm_state44;
            when ap_ST_fsm_state44 =>
                ap_NS_fsm <= ap_ST_fsm_state45;
            when ap_ST_fsm_state45 =>
                ap_NS_fsm <= ap_ST_fsm_state46;
            when ap_ST_fsm_state46 =>
                ap_NS_fsm <= ap_ST_fsm_state47;
            when ap_ST_fsm_state47 =>
                ap_NS_fsm <= ap_ST_fsm_state48;
            when ap_ST_fsm_state48 =>
                ap_NS_fsm <= ap_ST_fsm_state49;
            when ap_ST_fsm_state49 =>
                ap_NS_fsm <= ap_ST_fsm_state50;
            when ap_ST_fsm_state50 =>
                ap_NS_fsm <= ap_ST_fsm_state51;
            when ap_ST_fsm_state51 =>
                ap_NS_fsm <= ap_ST_fsm_state52;
            when ap_ST_fsm_state52 =>
                ap_NS_fsm <= ap_ST_fsm_state53;
            when ap_ST_fsm_state53 =>
                ap_NS_fsm <= ap_ST_fsm_state54;
            when ap_ST_fsm_state54 =>
                ap_NS_fsm <= ap_ST_fsm_state55;
            when ap_ST_fsm_state55 =>
                ap_NS_fsm <= ap_ST_fsm_state56;
            when ap_ST_fsm_state56 =>
                ap_NS_fsm <= ap_ST_fsm_state57;
            when ap_ST_fsm_state57 =>
                ap_NS_fsm <= ap_ST_fsm_state58;
            when ap_ST_fsm_state58 =>
                ap_NS_fsm <= ap_ST_fsm_state59;
            when ap_ST_fsm_state59 =>
                ap_NS_fsm <= ap_ST_fsm_state60;
            when ap_ST_fsm_state60 =>
                ap_NS_fsm <= ap_ST_fsm_state61;
            when ap_ST_fsm_state61 =>
                ap_NS_fsm <= ap_ST_fsm_state62;
            when ap_ST_fsm_state62 =>
                ap_NS_fsm <= ap_ST_fsm_state63;
            when ap_ST_fsm_state63 =>
                ap_NS_fsm <= ap_ST_fsm_state64;
            when ap_ST_fsm_state64 =>
                ap_NS_fsm <= ap_ST_fsm_state65;
            when ap_ST_fsm_state65 =>
                ap_NS_fsm <= ap_ST_fsm_state66;
            when ap_ST_fsm_state66 =>
                ap_NS_fsm <= ap_ST_fsm_state67;
            when ap_ST_fsm_state67 =>
                ap_NS_fsm <= ap_ST_fsm_state68;
            when ap_ST_fsm_state68 =>
                ap_NS_fsm <= ap_ST_fsm_state69;
            when ap_ST_fsm_state69 =>
                ap_NS_fsm <= ap_ST_fsm_state70;
            when ap_ST_fsm_state70 =>
                ap_NS_fsm <= ap_ST_fsm_state71;
            when ap_ST_fsm_state71 =>
                if (((ap_sig_ioackin_gmem_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state71))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state71;
                end if;
            when ap_ST_fsm_pp0_stage0 =>
                if ((not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (exitcond2_fu_169_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) and not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (exitcond2_fu_169_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state75;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state75 =>
                ap_NS_fsm <= ap_ST_fsm_state76;
            when ap_ST_fsm_state76 =>
                ap_NS_fsm <= ap_ST_fsm_state77;
            when ap_ST_fsm_state77 =>
                ap_NS_fsm <= ap_ST_fsm_state78;
            when ap_ST_fsm_state78 =>
                ap_NS_fsm <= ap_ST_fsm_state79;
            when ap_ST_fsm_state79 =>
                ap_NS_fsm <= ap_ST_fsm_state80;
            when ap_ST_fsm_state80 =>
                ap_NS_fsm <= ap_ST_fsm_state81;
            when ap_ST_fsm_state81 =>
                ap_NS_fsm <= ap_ST_fsm_state82;
            when ap_ST_fsm_state82 =>
                ap_NS_fsm <= ap_ST_fsm_state83;
            when ap_ST_fsm_state83 =>
                ap_NS_fsm <= ap_ST_fsm_state84;
            when ap_ST_fsm_state84 =>
                ap_NS_fsm <= ap_ST_fsm_state85;
            when ap_ST_fsm_state85 =>
                ap_NS_fsm <= ap_ST_fsm_state86;
            when ap_ST_fsm_state86 =>
                ap_NS_fsm <= ap_ST_fsm_state87;
            when ap_ST_fsm_state87 =>
                ap_NS_fsm <= ap_ST_fsm_state88;
            when ap_ST_fsm_state88 =>
                ap_NS_fsm <= ap_ST_fsm_state89;
            when ap_ST_fsm_state89 =>
                ap_NS_fsm <= ap_ST_fsm_state90;
            when ap_ST_fsm_state90 =>
                ap_NS_fsm <= ap_ST_fsm_state91;
            when ap_ST_fsm_state91 =>
                ap_NS_fsm <= ap_ST_fsm_state92;
            when ap_ST_fsm_state92 =>
                ap_NS_fsm <= ap_ST_fsm_state93;
            when ap_ST_fsm_state93 =>
                ap_NS_fsm <= ap_ST_fsm_state94;
            when ap_ST_fsm_state94 =>
                ap_NS_fsm <= ap_ST_fsm_state95;
            when ap_ST_fsm_state95 =>
                ap_NS_fsm <= ap_ST_fsm_state96;
            when ap_ST_fsm_state96 =>
                ap_NS_fsm <= ap_ST_fsm_state97;
            when ap_ST_fsm_state97 =>
                ap_NS_fsm <= ap_ST_fsm_state98;
            when ap_ST_fsm_state98 =>
                ap_NS_fsm <= ap_ST_fsm_state99;
            when ap_ST_fsm_state99 =>
                ap_NS_fsm <= ap_ST_fsm_state100;
            when ap_ST_fsm_state100 =>
                ap_NS_fsm <= ap_ST_fsm_state101;
            when ap_ST_fsm_state101 =>
                ap_NS_fsm <= ap_ST_fsm_state102;
            when ap_ST_fsm_state102 =>
                ap_NS_fsm <= ap_ST_fsm_state103;
            when ap_ST_fsm_state103 =>
                ap_NS_fsm <= ap_ST_fsm_state104;
            when ap_ST_fsm_state104 =>
                ap_NS_fsm <= ap_ST_fsm_state105;
            when ap_ST_fsm_state105 =>
                ap_NS_fsm <= ap_ST_fsm_state106;
            when ap_ST_fsm_state106 =>
                ap_NS_fsm <= ap_ST_fsm_state107;
            when ap_ST_fsm_state107 =>
                ap_NS_fsm <= ap_ST_fsm_state108;
            when ap_ST_fsm_state108 =>
                ap_NS_fsm <= ap_ST_fsm_state109;
            when ap_ST_fsm_state109 =>
                ap_NS_fsm <= ap_ST_fsm_state110;
            when ap_ST_fsm_state110 =>
                ap_NS_fsm <= ap_ST_fsm_state111;
            when ap_ST_fsm_state111 =>
                ap_NS_fsm <= ap_ST_fsm_state112;
            when ap_ST_fsm_state112 =>
                ap_NS_fsm <= ap_ST_fsm_state113;
            when ap_ST_fsm_state113 =>
                ap_NS_fsm <= ap_ST_fsm_state114;
            when ap_ST_fsm_state114 =>
                ap_NS_fsm <= ap_ST_fsm_state115;
            when ap_ST_fsm_state115 =>
                ap_NS_fsm <= ap_ST_fsm_state116;
            when ap_ST_fsm_state116 =>
                ap_NS_fsm <= ap_ST_fsm_state117;
            when ap_ST_fsm_state117 =>
                ap_NS_fsm <= ap_ST_fsm_state118;
            when ap_ST_fsm_state118 =>
                ap_NS_fsm <= ap_ST_fsm_state119;
            when ap_ST_fsm_state119 =>
                ap_NS_fsm <= ap_ST_fsm_state120;
            when ap_ST_fsm_state120 =>
                ap_NS_fsm <= ap_ST_fsm_state121;
            when ap_ST_fsm_state121 =>
                ap_NS_fsm <= ap_ST_fsm_state122;
            when ap_ST_fsm_state122 =>
                ap_NS_fsm <= ap_ST_fsm_state123;
            when ap_ST_fsm_state123 =>
                ap_NS_fsm <= ap_ST_fsm_state124;
            when ap_ST_fsm_state124 =>
                ap_NS_fsm <= ap_ST_fsm_state125;
            when ap_ST_fsm_state125 =>
                ap_NS_fsm <= ap_ST_fsm_state126;
            when ap_ST_fsm_state126 =>
                ap_NS_fsm <= ap_ST_fsm_state127;
            when ap_ST_fsm_state127 =>
                ap_NS_fsm <= ap_ST_fsm_state128;
            when ap_ST_fsm_state128 =>
                ap_NS_fsm <= ap_ST_fsm_state129;
            when ap_ST_fsm_state129 =>
                ap_NS_fsm <= ap_ST_fsm_state130;
            when ap_ST_fsm_state130 =>
                ap_NS_fsm <= ap_ST_fsm_state131;
            when ap_ST_fsm_state131 =>
                ap_NS_fsm <= ap_ST_fsm_state132;
            when ap_ST_fsm_state132 =>
                ap_NS_fsm <= ap_ST_fsm_state133;
            when ap_ST_fsm_state133 =>
                ap_NS_fsm <= ap_ST_fsm_state134;
            when ap_ST_fsm_state134 =>
                ap_NS_fsm <= ap_ST_fsm_state135;
            when ap_ST_fsm_state135 =>
                ap_NS_fsm <= ap_ST_fsm_state136;
            when ap_ST_fsm_state136 =>
                ap_NS_fsm <= ap_ST_fsm_state137;
            when ap_ST_fsm_state137 =>
                ap_NS_fsm <= ap_ST_fsm_state138;
            when ap_ST_fsm_state138 =>
                ap_NS_fsm <= ap_ST_fsm_state139;
            when ap_ST_fsm_state139 =>
                ap_NS_fsm <= ap_ST_fsm_state140;
            when ap_ST_fsm_state140 =>
                ap_NS_fsm <= ap_ST_fsm_state141;
            when ap_ST_fsm_state141 =>
                ap_NS_fsm <= ap_ST_fsm_state142;
            when ap_ST_fsm_state142 =>
                if ((not(((gmem_BVALID = ap_const_logic_0) and (cmp1_reg_186 = ap_const_lv1_0))) and (ap_const_logic_1 = ap_CS_fsm_state142))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state142;
                end if;
            when others =>
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(71);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state142 <= ap_CS_fsm(139);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state71 <= ap_CS_fsm(70);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, exitcond2_reg_218, gmem_RVALID)
    begin
                ap_block_pp0_stage0_01001 <= ((gmem_RVALID = ap_const_logic_0) and (exitcond2_reg_218 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, exitcond2_reg_218, ap_enable_reg_pp0_iter2, gmem_RVALID, ap_block_state74_io)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state74_io)) or ((gmem_RVALID = ap_const_logic_0) and (exitcond2_reg_218 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, exitcond2_reg_218, ap_enable_reg_pp0_iter2, gmem_RVALID, ap_block_state74_io)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state74_io)) or ((gmem_RVALID = ap_const_logic_0) and (exitcond2_reg_218 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_state142_assign_proc : process(cmp1_reg_186, gmem_BVALID)
    begin
                ap_block_state142 <= ((gmem_BVALID = ap_const_logic_0) and (cmp1_reg_186 = ap_const_lv1_0));
    end process;

        ap_block_state72_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state73_pp0_stage0_iter1_assign_proc : process(exitcond2_reg_218, gmem_RVALID)
    begin
                ap_block_state73_pp0_stage0_iter1 <= ((gmem_RVALID = ap_const_logic_0) and (exitcond2_reg_218 = ap_const_lv1_0));
    end process;


    ap_block_state74_io_assign_proc : process(exitcond2_reg_218_pp0_iter1_reg, ap_sig_ioackin_gmem_WREADY)
    begin
                ap_block_state74_io <= ((ap_sig_ioackin_gmem_WREADY = ap_const_logic_0) and (exitcond2_reg_218_pp0_iter1_reg = ap_const_lv1_0));
    end process;

        ap_block_state74_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state72_assign_proc : process(exitcond2_fu_169_p2)
    begin
        if ((exitcond2_fu_169_p2 = ap_const_lv1_1)) then
            ap_condition_pp0_exit_iter0_state72 <= ap_const_logic_1;
        else
            ap_condition_pp0_exit_iter0_state72 <= ap_const_logic_0;
        end if;
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state142, cmp1_reg_186, gmem_BVALID)
    begin
        if ((not(((gmem_BVALID = ap_const_logic_0) and (cmp1_reg_186 = ap_const_lv1_0))) and (ap_const_logic_1 = ap_CS_fsm_state142))) then
            ap_done <= ap_const_logic_1;
        else
            ap_done <= ap_const_logic_0;
        end if;
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
            ap_idle <= ap_const_logic_1;
        else
            ap_idle <= ap_const_logic_0;
        end if;
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then
            ap_idle_pp0 <= ap_const_logic_1;
        else
            ap_idle_pp0 <= ap_const_logic_0;
        end if;
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state142, cmp1_reg_186, gmem_BVALID)
    begin
        if ((not(((gmem_BVALID = ap_const_logic_0) and (cmp1_reg_186 = ap_const_lv1_0))) and (ap_const_logic_1 = ap_CS_fsm_state142))) then
            ap_ready <= ap_const_logic_1;
        else
            ap_ready <= ap_const_logic_0;
        end if;
    end process;


    ap_sig_ioackin_gmem_ARREADY_assign_proc : process(gmem_ARREADY, ap_reg_ioackin_gmem_ARREADY)
    begin
        if ((ap_reg_ioackin_gmem_ARREADY = ap_const_logic_0)) then
            ap_sig_ioackin_gmem_ARREADY <= gmem_ARREADY;
        else
            ap_sig_ioackin_gmem_ARREADY <= ap_const_logic_1;
        end if;
    end process;


    ap_sig_ioackin_gmem_AWREADY_assign_proc : process(gmem_AWREADY, ap_reg_ioackin_gmem_AWREADY)
    begin
        if ((ap_reg_ioackin_gmem_AWREADY = ap_const_logic_0)) then
            ap_sig_ioackin_gmem_AWREADY <= gmem_AWREADY;
        else
            ap_sig_ioackin_gmem_AWREADY <= ap_const_logic_1;
        end if;
    end process;


    ap_sig_ioackin_gmem_WREADY_assign_proc : process(gmem_WREADY, ap_reg_ioackin_gmem_WREADY)
    begin
        if ((ap_reg_ioackin_gmem_WREADY = ap_const_logic_0)) then
            ap_sig_ioackin_gmem_WREADY <= gmem_WREADY;
        else
            ap_sig_ioackin_gmem_WREADY <= ap_const_logic_1;
        end if;
    end process;

    blockindex_1_fu_174_p2 <= std_logic_vector(unsigned(blockindex_reg_108) + unsigned(ap_const_lv64_1));
    cmp1_fu_119_p2 <= "1" when (num_blocks = ap_const_lv64_0) else "0";
    exitcond2_fu_169_p2 <= "1" when (blockindex_reg_108 = num_blocks_read_reg_180) else "0";
    gmem_ARLEN <= num_blocks_read_reg_180(32 - 1 downto 0);

    gmem_ARVALID_assign_proc : process(ap_CS_fsm_state2, ap_reg_ioackin_gmem_ARREADY)
    begin
        if (((ap_reg_ioackin_gmem_ARREADY = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
            gmem_ARVALID <= ap_const_logic_1;
        else
            gmem_ARVALID <= ap_const_logic_0;
        end if;
    end process;


    gmem_AWVALID_assign_proc : process(ap_CS_fsm_state71, ap_reg_ioackin_gmem_AWREADY)
    begin
        if (((ap_reg_ioackin_gmem_AWREADY = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state71))) then
            gmem_AWVALID <= ap_const_logic_1;
        else
            gmem_AWVALID <= ap_const_logic_0;
        end if;
    end process;


    gmem_BREADY_assign_proc : process(ap_CS_fsm_state142, cmp1_reg_186, gmem_BVALID)
    begin
        if ((not(((gmem_BVALID = ap_const_logic_0) and (cmp1_reg_186 = ap_const_lv1_0))) and (cmp1_reg_186 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state142))) then
            gmem_BREADY <= ap_const_logic_1;
        else
            gmem_BREADY <= ap_const_logic_0;
        end if;
    end process;


    gmem_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond2_reg_218, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond2_reg_218 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
            gmem_RREADY <= ap_const_logic_1;
        else
            gmem_RREADY <= ap_const_logic_0;
        end if;
    end process;


    gmem_WVALID_assign_proc : process(ap_enable_reg_pp0_iter2, exitcond2_reg_218_pp0_iter1_reg, ap_reg_ioackin_gmem_WREADY, ap_block_pp0_stage0_01001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_reg_ioackin_gmem_WREADY = ap_const_logic_0) and (exitcond2_reg_218_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
            gmem_WVALID <= ap_const_logic_1;
        else
            gmem_WVALID <= ap_const_logic_0;
        end if;
    end process;


    gmem_blk_n_AR_assign_proc : process(m_axi_gmem_ARREADY, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
            gmem_blk_n_AR <= m_axi_gmem_ARREADY;
        else
            gmem_blk_n_AR <= ap_const_logic_1;
        end if;
    end process;


    gmem_blk_n_AW_assign_proc : process(m_axi_gmem_AWREADY, ap_CS_fsm_state71)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state71)) then
            gmem_blk_n_AW <= m_axi_gmem_AWREADY;
        else
            gmem_blk_n_AW <= ap_const_logic_1;
        end if;
    end process;


    gmem_blk_n_B_assign_proc : process(m_axi_gmem_BVALID, ap_CS_fsm_state142, cmp1_reg_186)
    begin
        if (((cmp1_reg_186 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state142))) then
            gmem_blk_n_B <= m_axi_gmem_BVALID;
        else
            gmem_blk_n_B <= ap_const_logic_1;
        end if;
    end process;


    gmem_blk_n_R_assign_proc : process(m_axi_gmem_RVALID, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond2_reg_218)
    begin
        if (((exitcond2_reg_218 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
            gmem_blk_n_R <= m_axi_gmem_RVALID;
        else
            gmem_blk_n_R <= ap_const_logic_1;
        end if;
    end process;


    gmem_blk_n_W_assign_proc : process(m_axi_gmem_WREADY, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, exitcond2_reg_218_pp0_iter1_reg)
    begin
        if (((exitcond2_reg_218_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
            gmem_blk_n_W <= m_axi_gmem_WREADY;
        else
            gmem_blk_n_W <= ap_const_logic_1;
        end if;
    end process;

    tmp_1_fu_155_p1 <= num_blocks_read_reg_180(32 - 1 downto 0);

    g_512_addr_align : if C_M_AXI_GMEM_DATA_WIDTH = 512 generate
        tmp_2_fu_159_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_6_reg_195(63 downto 6)),64));
        tmp_fu_145_p1   <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_4_reg_190(63 downto 6)),64));
    end generate g_512_addr_align;

    g_256_addr_align : if C_M_AXI_GMEM_DATA_WIDTH = 256 generate
        tmp_2_fu_159_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_6_reg_195(63 downto 5)),64));
        tmp_fu_145_p1   <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_4_reg_190(63 downto 5)),64));
    end generate g_256_addr_align;

    g_128_addr_align : if C_M_AXI_GMEM_DATA_WIDTH = 128 generate
        tmp_2_fu_159_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_6_reg_195(63 downto 4)),64));
        tmp_fu_145_p1   <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_4_reg_190(63 downto 4)),64));
    end generate g_128_addr_align;

end behav;


