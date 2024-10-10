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

library ieee, unisim, xpm;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_misc.all;
    use unisim.vcomponents.all;
    use xpm.vcomponents.all;

entity shell_utils_clock_throttling is
    generic (
        CLK_SLOW_DIV    : integer range 1 to 8  := 1;
        SYNTH_SIZE      : integer               := 8
    );
    port (
        Clk_In          : in    std_logic;
        Rst_In          : in    std_logic;
        Locked          : in    std_logic;
        Startup_Done    : in    std_logic;

        Rate_Upd_Tog    : in    std_logic;  -- Rate update Toggle (asynchronous)
        Rate_In         : in    std_logic_vector(SYNTH_SIZE-1 downto 0);

        Rst_Async       : out   std_logic;  -- Async Reset

        Clk_Out         : out   std_logic;  -- Clk_In Throttled
        Clk_Out_Div     : out   std_logic;  -- (Clk_In / CLK_SLOW_DIV) Throttled (if CLK_SLOW_DIV > 1)
        Clk_Out_Cont    : out   std_logic   -- Clk_In
    );
end entity shell_utils_clock_throttling;

architecture rtl of shell_utils_clock_throttling is

-------------------------------------------------------------------------------
--
--      Constants (simple)
--
-------------------------------------------------------------------------------

constant ZERO       : std_logic_vector(0 downto 0)  := (others => '0');
constant ONE        : std_logic_vector(0 downto 0)  := (others => '1');

constant CONST_MAX  : std_logic_vector(SYNTH_SIZE-1 downto 0)   := "1" & EXT("0", SYNTH_SIZE-1);

-------------------------------------------------------------------------------
--
--      Type Definitions
--
-------------------------------------------------------------------------------

type    Int_Array   is array (integer range <>) of integer;

constant PRE_WIDTH  : Int_Array(1 to 8) := (1 to 2 => 1, 3 => 2, 4 to 5 => 3, 6 to 8 => 4);
constant SEL_WIDTH  : integer           := PRE_WIDTH(CLK_SLOW_DIV);

--tribute RLOC      : string;
--tribute HU_SET    : string;

-------------------------------------------------------------------------------
--
--      Signals
--
-------------------------------------------------------------------------------
attribute dont_touch            : string;

signal  Rst_In_cdc              : std_logic                                 := '0';
signal  Rst_In_ret              : std_logic                                 := '0';
signal  Locked_cdc              : std_logic                                 := '0';
signal  Locked_ret              : std_logic                                 := '0';
signal  Startup_Done_cdc        : std_logic                                 := '0';
signal  Startup_Done_ret        : std_logic                                 := '0';

signal  Rst_Int                 : std_logic                                 := '0';

signal  Clk_Int_Cont            : std_logic                                 := '0';

signal  Rate_Upd_Tog_CDC        : std_logic                                 := '0';
signal  Last_Rate_Upd_Tog_CDC   : std_logic                                 := '0';
signal  Rate_Upd                : std_logic                                 := '0';
signal  Rate_int                : std_logic_vector(SYNTH_SIZE-1 downto 0)   := (others => '1');
signal  Prescale                : std_logic_vector(SEL_WIDTH-1 downto 0)    := conv_std_logic_vector(CLK_SLOW_DIV, SEL_WIDTH) - 2;
signal  Synth                   : std_logic_vector(SYNTH_SIZE-1 downto 0)   := (others => '1');

signal  Gate_Fast               : std_logic                                 := '0';
signal  Gate_Div                : std_logic                                 := '0';
signal  Gate_Fast_d1            : std_logic                                 := '0';
signal  Gate_Div_d1             : std_logic                                 := '0';

attribute dont_touch  of Gate_Fast    : signal is "true";
attribute dont_touch  of Gate_Div     : signal is "true";
attribute dont_touch  of Gate_Fast_d1 : signal is "true";
attribute dont_touch  of Gate_Div_d1  : signal is "true";

begin

-------------------------------------------------------------------------------
--
--      CDC the Rate_Upd onto the local domain
--
-------------------------------------------------------------------------------

UP_CDC:
xpm_cdc_single
    generic map (
        DEST_SYNC_FF    => 4,
        SRC_INPUT_REG   => 0
    )
    port map (
        src_clk     => ZERO(0),
        src_in      => Rate_Upd_Tog,

        dest_clk    => Clk_Int_Cont,
        dest_out    => Rate_Upd_Tog_CDC
    );

-------------------------------------------------------------------------------
--
--      Retime reset control signals on the internal clock
--
-------------------------------------------------------------------------------

    RST_CDC : xpm_cdc_async_rst
    generic map (
        DEST_SYNC_FF    => 4,
        INIT_SYNC_FF    => 1,
        RST_ACTIVE_HIGH => 0
    )
    port map (
        dest_arst => Rst_In_cdc,
        dest_clk  => Clk_Int_Cont,
        src_arst  => Rst_In
    );

    LCK_CDC : xpm_cdc_async_rst
    generic map (
        DEST_SYNC_FF    => 4,
        INIT_SYNC_FF    => 1,
        RST_ACTIVE_HIGH => 0
    )
    port map (
        dest_arst => Locked_cdc,
        dest_clk  => Clk_Int_Cont,
        src_arst  => Locked
    );

    SRT_CDC : xpm_cdc_async_rst
    generic map (
        DEST_SYNC_FF    => 4,
        INIT_SYNC_FF    => 1,
        RST_ACTIVE_HIGH => 0
    )
    port map (
        dest_arst => Startup_Done_cdc,
        dest_clk  => Clk_Int_Cont,
        src_arst  => Startup_Done
    );

-------------------------------------------------------------------------------
--
--      Instantiate the Internal continuous Clock buffer
--
-------------------------------------------------------------------------------

ICCLK:
BUFG
    port map (
        I   => Clk_In,
        O   => Clk_Int_Cont
    );

-------------------------------------------------------------------------------
--
--      Instantiate the External continuous Clock buffer
--
-------------------------------------------------------------------------------

ECCLK:
BUFGCE
   generic map (
      CE_TYPE        => "ASYNC"
   )
    port map (
        I   => Clk_In,
        CE  => Startup_Done,

        O   => Clk_Out_Cont
    );

-------------------------------------------------------------------------------
--
--      Instantiate the Clk_Out Gated Clock Buffer
--
-------------------------------------------------------------------------------

FCLK:
BUFGCE
    port map (
        I   => Clk_In,
        CE  => Gate_Fast_d1,

        O   => Clk_Out
    );

-------------------------------------------------------------------------------
--
--      Instantiate the Slow edge aligned buffer if required
--
-------------------------------------------------------------------------------

GD:
if (CLK_SLOW_DIV > 1) generate

SCLK:
BUFGCE_DIV
    generic map (
        BUFGCE_DIVIDE   => CLK_SLOW_DIV
    )
    port map (
        I   => Clk_In,
        CLR => ZERO(0),
        CE  => Gate_Div_d1,

        O   => Clk_Out_Div
    );

end generate GD;

-------------------------------------------------------------------------------
--
--      Controller Logic
--
-------------------------------------------------------------------------------

SQ:
process(Clk_Int_Cont)
begin

    if (rising_edge(Clk_Int_Cont)) then

       -- Flop the output of the cdcs to allow replication

        Rst_In_ret       <= Rst_In_cdc;
        Locked_ret       <= Locked_cdc;
        Startup_Done_ret <= Startup_Done_cdc;

        -- Generate reset

        Rst_Int <= Rst_In_ret and Locked_ret and Startup_Done_ret;

        -- Wait for a change of state of the Rate_Upd_Tog input, and reload the Rate signal

        Last_Rate_Upd_Tog_CDC   <= Rate_Upd_Tog_CDC;

        Rate_Upd    <= Rate_Upd_Tog_CDC xor Last_Rate_Upd_Tog_CDC;

        if (Rate_Upd = '1') then

            Rate_int <= Rate_In;

        end if;

        if (Prescale(Prescale'HIGH) = '1') then

            Prescale    <= conv_std_logic_vector(CLK_SLOW_DIV, Prescale'LENGTH) - 2;

            -- Implement N/M Synthesiser
            -- Treat all values >= 128 as 100%

            if (Rate_int(Rate_int'HIGH) = '1') then

                Synth   <= ("0" & Synth(Synth'HIGH-1 downto 0)) + CONST_MAX;

            else

                Synth   <= ("0" & Synth(Synth'HIGH-1 downto 0)) + Rate_int;

            end if;

            Gate_Fast   <= Synth(Synth'HIGH);
            Gate_Div    <= Synth(Synth'HIGH);

        else

            Prescale    <= Prescale - 1;

        end if;

        if (Rst_Int = '0') then

            Prescale    <= conv_std_logic_vector(CLK_SLOW_DIV, Prescale'LENGTH) - 2;
            Rate_int    <= (others => '1'); -- Default to 100 %
            Synth       <= (others => '1');

            Gate_Fast   <= '0';
            Gate_Div    <= '0';

        end if;


        -- Flop the gate signals to assist timing closure

        Gate_Fast_d1   <= Gate_Fast;
        Gate_Div_d1    <= Gate_Div;

    end if;

    Rst_Async <= Rst_Int;

end process;

end architecture rtl; -- of shell_utils_clock_throttling


