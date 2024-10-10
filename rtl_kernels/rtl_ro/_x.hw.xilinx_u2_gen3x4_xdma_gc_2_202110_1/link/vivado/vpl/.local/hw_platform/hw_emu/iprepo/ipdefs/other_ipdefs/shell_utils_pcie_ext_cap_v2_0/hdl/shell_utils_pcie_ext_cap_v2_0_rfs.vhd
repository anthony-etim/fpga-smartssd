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
--
--------------------------------------------------------------------------------------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_misc.all;
    use ieee.numeric_std.all;
    
entity shell_utils_pcie_ext_cap_v2_0_0 is
    generic(
        C_CAP_BASE_ADDR           : std_logic_vector(11 downto 0)  := x"480"; -- 0x480 default for PCIE4
        C_NEXT_CAP_ADDR           : std_logic_vector(11 downto 0)  := (others => '0');
        C_PF0_BAR_INDEX           : integer range 0 to 6           := 0;
        C_PF0_LOW_OFFSET          : std_logic_vector(27 downto 0)  := (others => '0');
        C_PF0_HIGH_OFFSET         : std_logic_vector(31 downto 0)  := (others => '0');
        C_PF1_BAR_INDEX           : integer range 0 to 6           := 0;
        C_PF1_LOW_OFFSET          : std_logic_vector(27 downto 0)  := (others => '0');
        C_PF1_HIGH_OFFSET         : std_logic_vector(31 downto 0)  := (others => '0')
    );
    port(

        -----------------------------------------------------------------------
        -- Clocks & Resets
        -----------------------------------------------------------------------

        user_clk                  : in  std_logic;
        user_resetn               : in  std_logic;
        
        -----------------------------------------------------------------------
        -- pcie4_cfg_ext Interface (user_clk)
        -----------------------------------------------------------------------
        
        function_number           : in  std_logic_vector(7 downto 0);
        read_data                 : out std_logic_vector(31 downto 0);
        read_data_valid           : out std_logic;
        read_received             : in  std_logic;
        register_number           : in  std_logic_vector(9 downto 0);
        write_byte_enable         : in  std_logic_vector(3 downto 0);
        write_data                : in  std_logic_vector(31 downto 0);
        write_received            : in  std_logic
    );
end entity shell_utils_pcie_ext_cap_v2_0_0;

architecture rtl of shell_utils_pcie_ext_cap_v2_0_0 is

-------------------------------------------------------------------------------
--
--      CONSTANTS
--
-------------------------------------------------------------------------------

constant  CAP_ID                : std_logic_vector(15 downto 0)             := x"000B";
constant  CAP_VERSION           : std_logic_vector(3 downto 0)              := x"1";
constant  VSEC_ID               : std_logic_vector(15 downto 0)             := x"0020";
constant  VSEC_REV              : std_logic_vector(3 downto 0)              := x"0";
constant  VSEC_LENGTH           : std_logic_vector(11 downto 0)             := x"010";
constant  CAP_BASE_BYTE_ADDR    : integer                                   := (to_integer(unsigned(C_CAP_BASE_ADDR)) / 4);
constant  ALF_VSEC_REG_0        : std_logic_vector(register_number'RANGE)   := std_logic_vector(to_unsigned(CAP_BASE_BYTE_ADDR, register_number'LENGTH));
constant  ALF_VSEC_REG_1        : std_logic_vector(register_number'RANGE)   := std_logic_vector(to_unsigned((CAP_BASE_BYTE_ADDR + 1), register_number'LENGTH));
constant  ALF_VSEC_REG_2        : std_logic_vector(register_number'RANGE)   := std_logic_vector(to_unsigned((CAP_BASE_BYTE_ADDR + 2), register_number'LENGTH));
constant  ALF_VSEC_REG_3        : std_logic_vector(register_number'RANGE)   := std_logic_vector(to_unsigned((CAP_BASE_BYTE_ADDR + 3), register_number'LENGTH));
constant  PF0_BAR_INDEX         : std_logic_vector(2 downto 0)              := std_logic_vector(to_unsigned(C_PF0_BAR_INDEX, 3));
constant  PF1_BAR_INDEX         : std_logic_vector(2 downto 0)              := std_logic_vector(to_unsigned(C_PF1_BAR_INDEX, 3));

begin

RD:
process(user_clk)

begin

    if (rising_edge(user_clk)) then
    
        -- default assignment
        read_data_valid   <= '0';
        read_data         <= (others => '0');
    
        if (read_received = '1') then
        
            -- default read response
            read_data_valid <= '1';
            read_data       <= (others => '0');
        
            case register_number is
            
                when ALF_VSEC_REG_0 =>  -- PCIe Extended Capability Header
                
                    -- only respond with valid extended capability structure for PF0 & PF1
                
                    if (function_number(1) = '0') then
                    
                        read_data   <= C_NEXT_CAP_ADDR & CAP_VERSION & CAP_ID;
                        
                    end if;
                    
                when ALF_VSEC_REG_1 =>  -- VSEC Header - Identifies as Xilinx Additional List of Features (ALF)
                
                    -- only respond with valid VSEC header structure for PF0 & PF1
                    
                    if (function_number(1) = '0') then
                    
                        read_data   <= VSEC_LENGTH & VSEC_REV & VSEC_ID;
                        
                    end if;
                    
                when ALF_VSEC_REG_2 =>  -- ALF Field 1 (BAR Index & Low Offset)
                
                    if (function_number(1 downto 0) = "00") then
                    
                        -- respond with PF0 BAR Index & Low Offset
                    
                        read_data   <= C_PF0_LOW_OFFSET & '0' & PF0_BAR_INDEX;
                        
                    elsif (function_number(1 downto 0) = "01") then
                    
                        -- respond with PF1 BAR Index & Low Offset
                    
                        read_data   <= C_PF1_LOW_OFFSET & '0' & PF1_BAR_INDEX;
                        
                    end if;
                    
                when ALF_VSEC_REG_3 =>  -- ALF Field 2 (High Offset)
                
                    if (function_number(1 downto 0) = "00") then
                    
                        -- respond with PF0 High Offset
                    
                        read_data   <= C_PF0_HIGH_OFFSET;
                        
                    elsif (function_number(1 downto 0) = "01") then
                    
                        -- respond with PF1 High Offset
                    
                        read_data   <= C_PF1_HIGH_OFFSET;
                        
                    end if;
                    
                when others =>
                
                    null;
                    
            end case;
                
        end if;
            
    end if;
        
end process;

end architecture rtl;


