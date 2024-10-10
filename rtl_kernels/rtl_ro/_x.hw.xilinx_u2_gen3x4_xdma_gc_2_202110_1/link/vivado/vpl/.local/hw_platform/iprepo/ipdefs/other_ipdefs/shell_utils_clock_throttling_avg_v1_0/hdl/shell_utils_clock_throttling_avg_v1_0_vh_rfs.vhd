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
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_misc.all;

entity shell_utils_clock_throttling_avg is
    generic (
        SAMPLE_WIDTH       : integer := 8;
        SAMPLE_SAT_VAL     : integer := 128;
        AVE_NUM_SAMPLES    : integer := 50;
        AVE_WIDTH          : integer := 14;
        RST_CNT_BITS       : integer := 6
    );
    port (
        Clk             : in    std_logic;
        Rst             : in    std_logic;

        Rate_Upd_Tog    : in    std_logic;  -- Rate update Toggle
        Rate            : in    std_logic_vector(SAMPLE_WIDTH-1 downto 0);

        Rate_Avg        : out   std_logic_vector(AVE_WIDTH-1 downto 0)
    );
end entity shell_utils_clock_throttling_avg;

architecture rtl of shell_utils_clock_throttling_avg is

-------------------------------------------------------------------------------
--
--      Constants (simple)
--
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
--
--      Type Definitions
--
-------------------------------------------------------------------------------

type Pipe_Type is
    record
        Valid           : std_logic;
        Flush           : std_logic;
        New_Sample      : std_logic_vector(SAMPLE_WIDTH-1 downto 0);
        Exprd_Sample    : std_logic_vector(SAMPLE_WIDTH-1 downto 0);
        Avg_Calc        : std_logic_vector(AVE_WIDTH-1 downto 0);
    end record;

constant RST_PIPE_TYPE : Pipe_Type := (
    '0',                            -- std_logic;
    '0',                            -- std_logic;
    (others => '0'),                -- std_logic_vector(SAMPLE_WIDTH-1 downto 0);
    (others => '0'),                -- std_logic_vector(SAMPLE_WIDTH-1 downto 0);
    (others => '0'));               -- std_logic_vector(AVE_WIDTH-1 downto 0);

type Pipe_Array_Type is array (integer range <>) of Pipe_Type;

type Sample_Array_Type is array (integer range <>) of std_logic_vector(SAMPLE_WIDTH-1 downto 0);

-------------------------------------------------------------------------------
--
--      Signals
--
-------------------------------------------------------------------------------

signal  Pipe         : Pipe_Array_Type(0 to 3)                   := (others => RST_PIPE_TYPE);
signal  Sample_Pipe  : Sample_Array_Type(0 to AVE_NUM_SAMPLES-1) := (others => (others => '0'));

signal  Rate_Upd_Tog_d1 : std_logic                                 := '0';
signal  Avg             : std_logic_vector(AVE_WIDTH-1 downto 0)    := (others => '0');
signal  Rst_Count       : std_logic_vector(RST_CNT_BITS downto 0)   := (others => '0');

begin

SQ:
process(Clk)
begin

    if (rising_edge(Clk)) then

        if (Rst = '0') then

            Rst_Count <= (others => '1');

        elsif (Rst_Count(Rst_Count'HIGH) = '1') then

            Rst_Count <= Rst_Count - 1;

        end if;

        Rate_Upd_Tog_d1 <= Rate_Upd_Tog;

        Pipe(0).Flush    <= Rst_Count(Rst_Count'HIGH);

        Pipe(0).Valid    <= (Rate_Upd_Tog xor Rate_Upd_Tog_d1) and not Rst_Count(Rst_Count'HIGH);

        if (Rate(Rate'HIGH) = '1') then

            Pipe(0).New_Sample   <= conv_std_logic_vector(SAMPLE_SAT_VAL, Pipe(0).New_Sample'LENGTH);

        else

            Pipe(0).New_Sample   <= Rate;

        end if;

        Pipe(1 to Pipe'HIGH)    <= Pipe(0 to Pipe'HIGH-1);

        -----------------------------------------------------------------------
        --  Stage 1 :
        -----------------------------------------------------------------------

        Pipe(1).New_Sample <= Pipe(1).New_Sample;

        if (Pipe(0).Flush = '1') then

            Pipe(1).New_Sample <= (others => '0');

        elsif (Pipe(0).Valid = '1') then

            Pipe(1).New_Sample <= SAMPLE_SAT_VAL - Pipe(0).New_Sample;

        end if;

        -----------------------------------------------------------------------
        --  Stage 2 :
        -----------------------------------------------------------------------

        Pipe(2).Avg_Calc     <= Pipe(2).Avg_Calc;
        Pipe(2).Exprd_Sample <= Pipe(2).Exprd_Sample;

        if (Pipe(1).Flush = '1') then

            Pipe(2).Avg_Calc     <= (others => '0');
            Pipe(2).Exprd_Sample <= (others => '0');

        elsif (Pipe(1).Valid = '1') then

            Pipe(2).Avg_Calc     <= Avg;
            Pipe(2).Exprd_Sample <= Sample_Pipe(Sample_Pipe'HIGH);

        end if;


        if ((Pipe(1).Valid = '1') or (Pipe(1).Flush = '1')) then

            Sample_Pipe(0)                     <= Pipe(1).New_Sample;
            Sample_Pipe(1 to Sample_Pipe'HIGH) <= Sample_Pipe(0 to Sample_Pipe'HIGH-1);

        end if;

        -----------------------------------------------------------------------
        --  Stage 3 :
        -----------------------------------------------------------------------

        Pipe(3).Avg_Calc <= Pipe(2).Avg_Calc - Pipe(2).Exprd_Sample;

        -----------------------------------------------------------------------
        --  Stage 4 :
        -----------------------------------------------------------------------

        if (Pipe(3).Flush = '1') then

            Avg <= (others => '0');

        elsif (Pipe(3).Valid = '1') then

            Avg <= Pipe(3).Avg_Calc + Pipe(3).New_Sample;

        end if;

    end if;

end process;

Rate_Avg <= Avg;

end architecture rtl; -- of shell_utils_clock_throttling_avg


