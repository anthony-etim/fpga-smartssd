-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Dec 31 12:13:00 2021
-- Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/aee38/Documents/vitis_accel_examples/rtl_kernels/rtl_ro/_x.hw.xilinx_u2_gen3x4_xdma_gc_2_202110_1/link/vivado/vpl/prj/prj.gen/my_rm/bd/ulp/ulp_sim_netlist.vhdl
-- Design      : ulp
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku15p-ffva1156-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0 : entity is "ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0 : entity is "xlconcat_v2_1_4_xlconcat,Vivado 2021.1";
end ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0;

architecture STRUCTURE of ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^in0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^in0\(1) <= In0(1);
  dout(127) <= \<const0>\;
  dout(126) <= \<const0>\;
  dout(125) <= \<const0>\;
  dout(124) <= \<const0>\;
  dout(123) <= \<const0>\;
  dout(122) <= \<const0>\;
  dout(121) <= \<const0>\;
  dout(120) <= \<const0>\;
  dout(119) <= \<const0>\;
  dout(118) <= \<const0>\;
  dout(117) <= \<const0>\;
  dout(116) <= \<const0>\;
  dout(115) <= \<const0>\;
  dout(114) <= \<const0>\;
  dout(113) <= \<const0>\;
  dout(112) <= \<const0>\;
  dout(111) <= \<const0>\;
  dout(110) <= \<const0>\;
  dout(109) <= \<const0>\;
  dout(108) <= \<const0>\;
  dout(107) <= \<const0>\;
  dout(106) <= \<const0>\;
  dout(105) <= \<const0>\;
  dout(104) <= \<const0>\;
  dout(103) <= \<const0>\;
  dout(102) <= \<const0>\;
  dout(101) <= \<const0>\;
  dout(100) <= \<const0>\;
  dout(99) <= \<const0>\;
  dout(98) <= \<const0>\;
  dout(97) <= \<const0>\;
  dout(96) <= \<const0>\;
  dout(95) <= \<const0>\;
  dout(94) <= \<const0>\;
  dout(93) <= \<const0>\;
  dout(92) <= \<const0>\;
  dout(91) <= \<const0>\;
  dout(90) <= \<const0>\;
  dout(89) <= \<const0>\;
  dout(88) <= \<const0>\;
  dout(87) <= \<const0>\;
  dout(86) <= \<const0>\;
  dout(85) <= \<const0>\;
  dout(84) <= \<const0>\;
  dout(83) <= \<const0>\;
  dout(82) <= \<const0>\;
  dout(81) <= \<const0>\;
  dout(80) <= \<const0>\;
  dout(79) <= \<const0>\;
  dout(78) <= \<const0>\;
  dout(77) <= \<const0>\;
  dout(76) <= \<const0>\;
  dout(75) <= \<const0>\;
  dout(74) <= \<const0>\;
  dout(73) <= \<const0>\;
  dout(72) <= \<const0>\;
  dout(71) <= \<const0>\;
  dout(70) <= \<const0>\;
  dout(69) <= \<const0>\;
  dout(68) <= \<const0>\;
  dout(67) <= \<const0>\;
  dout(66) <= \<const0>\;
  dout(65) <= \<const0>\;
  dout(64) <= \<const0>\;
  dout(63) <= \<const0>\;
  dout(62) <= \<const0>\;
  dout(61) <= \<const0>\;
  dout(60) <= \<const0>\;
  dout(59) <= \<const0>\;
  dout(58) <= \<const0>\;
  dout(57) <= \<const0>\;
  dout(56) <= \<const0>\;
  dout(55) <= \<const0>\;
  dout(54) <= \<const0>\;
  dout(53) <= \<const0>\;
  dout(52) <= \<const0>\;
  dout(51) <= \<const0>\;
  dout(50) <= \<const0>\;
  dout(49) <= \<const0>\;
  dout(48) <= \<const0>\;
  dout(47) <= \<const0>\;
  dout(46) <= \<const0>\;
  dout(45) <= \<const0>\;
  dout(44) <= \<const0>\;
  dout(43) <= \<const0>\;
  dout(42) <= \<const0>\;
  dout(41) <= \<const0>\;
  dout(40) <= \<const0>\;
  dout(39) <= \<const0>\;
  dout(38) <= \<const0>\;
  dout(37) <= \<const0>\;
  dout(36) <= \<const0>\;
  dout(35) <= \<const0>\;
  dout(34) <= \<const0>\;
  dout(33) <= \<const0>\;
  dout(32) <= \<const0>\;
  dout(31) <= \<const0>\;
  dout(30) <= \<const0>\;
  dout(29) <= \<const0>\;
  dout(28) <= \<const0>\;
  dout(27) <= \<const0>\;
  dout(26) <= \<const0>\;
  dout(25) <= \<const0>\;
  dout(24) <= \<const0>\;
  dout(23) <= \<const0>\;
  dout(22) <= \<const0>\;
  dout(21) <= \<const0>\;
  dout(20) <= \<const0>\;
  dout(19) <= \<const0>\;
  dout(18) <= \<const0>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const0>\;
  dout(15) <= \<const0>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const0>\;
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \^in0\(1);
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In10 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In28 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In30 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In31 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0 : entity is "ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0 : entity is "xlconcat_v2_1_4_xlconcat,Vivado 2021.1";
end ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0;

architecture STRUCTURE of ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^in1\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^in1\(0) <= In1(0);
  dout(31) <= \<const0>\;
  dout(30) <= \<const0>\;
  dout(29) <= \<const0>\;
  dout(28) <= \<const0>\;
  dout(27) <= \<const0>\;
  dout(26) <= \<const0>\;
  dout(25) <= \<const0>\;
  dout(24) <= \<const0>\;
  dout(23) <= \<const0>\;
  dout(22) <= \<const0>\;
  dout(21) <= \<const0>\;
  dout(20) <= \<const0>\;
  dout(19) <= \<const0>\;
  dout(18) <= \<const0>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const0>\;
  dout(15) <= \<const0>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const0>\;
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \^in1\(0);
  dout(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_xlslice_0_0 : entity is "ulp_xlslice_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_xlslice_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_xlslice_0_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2021.1";
end ulp_xlslice_0_0;

architecture STRUCTURE of ulp_xlslice_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_xlslice_1_0 : entity is "ulp_xlslice_1_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_xlslice_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_xlslice_1_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2021.1";
end ulp_xlslice_1_0;

architecture STRUCTURE of ulp_xlslice_1_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Dout(0) <= \^din\(1);
  \^din\(1) <= Din(1);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_xlslice_2_0 : entity is "ulp_xlslice_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_xlslice_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_xlslice_2_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2021.1";
end ulp_xlslice_2_0;

architecture STRUCTURE of ulp_xlslice_2_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Dout(0) <= \^din\(0);
  \^din\(0) <= Din(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_xlslice_3_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_xlslice_3_0 : entity is "ulp_xlslice_3_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_xlslice_3_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_xlslice_3_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2021.1";
end ulp_xlslice_3_0;

architecture STRUCTURE of ulp_xlslice_3_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Dout(0) <= \^din\(1);
  \^din\(1) <= Din(1);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_xlslice_4_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_xlslice_4_0 : entity is "ulp_xlslice_4_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_xlslice_4_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_xlslice_4_0 : entity is "xlslice_v1_0_2_xlslice,Vivado 2021.1";
end ulp_xlslice_4_0;

architecture STRUCTURE of ulp_xlslice_4_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Dout(0) <= \^din\(2);
  \^din\(2) <= Din(2);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_m00_couplers_imp_1DIICHO is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_m00_couplers_imp_1DIICHO : entity is "m00_couplers_imp_1DIICHO";
end ulp_m00_couplers_imp_1DIICHO;

architecture STRUCTURE of ulp_m00_couplers_imp_1DIICHO is
  component ulp_m00_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_m00_regslice_0;
  signal NLW_m00_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m00_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of m00_regslice : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
begin
m00_regslice: component ulp_m00_regslice_0
     port map (
      aclk => S00_ACLK,
      aresetn => S00_ARESETN,
      m_axi_araddr(8 downto 0) => M00_AXI_araddr(8 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m00_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M00_AXI_arready,
      m_axi_arvalid => M00_AXI_arvalid,
      m_axi_awaddr(8 downto 0) => M00_AXI_awaddr(8 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m00_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M00_AXI_awready,
      m_axi_awvalid => M00_AXI_awvalid,
      m_axi_bready => M00_AXI_bready,
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => M00_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      m_axi_rready => M00_AXI_rready,
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => M00_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      m_axi_wready => M00_AXI_wready,
      m_axi_wstrb(3 downto 0) => M00_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M00_AXI_wvalid,
      s_axi_araddr(8 downto 0) => m_axi_araddr(8 downto 0),
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(8 downto 0) => m_axi_awaddr(8 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_m00_couplers_imp_1MIVJUX is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_m00_couplers_imp_1MIVJUX : entity is "m00_couplers_imp_1MIVJUX";
end ulp_m00_couplers_imp_1MIVJUX;

architecture STRUCTURE of ulp_m00_couplers_imp_1MIVJUX is
  component ulp_auto_cc_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_auto_cc_2;
  signal NLW_auto_cc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_cc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1";
begin
auto_cc: component ulp_auto_cc_2
     port map (
      m_axi_aclk => M00_ACLK,
      m_axi_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      m_axi_aresetn => M00_ARESETN,
      m_axi_arid(5 downto 0) => M00_AXI_arid(5 downto 0),
      m_axi_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      m_axi_arready => M00_AXI_arready,
      m_axi_arregion(3 downto 0) => NLW_auto_cc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      m_axi_arvalid => M00_AXI_arvalid,
      m_axi_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      m_axi_awid(5 downto 0) => M00_AXI_awid(5 downto 0),
      m_axi_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      m_axi_awready => M00_AXI_awready,
      m_axi_awregion(3 downto 0) => NLW_auto_cc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      m_axi_awvalid => M00_AXI_awvalid,
      m_axi_bid(5 downto 0) => M00_AXI_bid(5 downto 0),
      m_axi_bready => M00_AXI_bready,
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => M00_AXI_bvalid,
      m_axi_rdata(511 downto 0) => M00_AXI_rdata(511 downto 0),
      m_axi_rid(5 downto 0) => M00_AXI_rid(5 downto 0),
      m_axi_rlast => M00_AXI_rlast,
      m_axi_rready => M00_AXI_rready,
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => M00_AXI_rvalid,
      m_axi_wdata(511 downto 0) => M00_AXI_wdata(511 downto 0),
      m_axi_wlast => M00_AXI_wlast,
      m_axi_wready => M00_AXI_wready,
      m_axi_wstrb(63 downto 0) => M00_AXI_wstrb(63 downto 0),
      m_axi_wvalid => M00_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arid(5 downto 0) => m_axi_arid(5 downto 0),
      s_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      s_axi_arlock(0) => m_axi_arlock(0),
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => m_axi_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      s_axi_awid(5 downto 0) => m_axi_awid(5 downto 0),
      s_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      s_axi_awlock(0) => m_axi_awlock(0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bid(5 downto 0) => s_axi_bid(5 downto 0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(511 downto 0) => s_axi_rdata(511 downto 0),
      s_axi_rid(5 downto 0) => s_axi_rid(5 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(511 downto 0) => m_axi_wdata(511 downto 0),
      s_axi_wlast => m_axi_wlast(0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(63 downto 0) => m_axi_wstrb(63 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_m00_couplers_imp_1T9TXXO is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    m_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_m00_couplers_imp_1T9TXXO : entity is "m00_couplers_imp_1T9TXXO";
end ulp_m00_couplers_imp_1T9TXXO;

architecture STRUCTURE of ulp_m00_couplers_imp_1T9TXXO is
  component ulp_auto_cc_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_auto_cc_0;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1";
begin
auto_cc: component ulp_auto_cc_0
     port map (
      m_axi_aclk => M00_ACLK,
      m_axi_araddr(25 downto 0) => M00_AXI_araddr(25 downto 0),
      m_axi_aresetn => M00_ARESETN,
      m_axi_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      m_axi_arready => M00_AXI_arready,
      m_axi_arvalid => M00_AXI_arvalid,
      m_axi_awaddr(25 downto 0) => M00_AXI_awaddr(25 downto 0),
      m_axi_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      m_axi_awready => M00_AXI_awready,
      m_axi_awvalid => M00_AXI_awvalid,
      m_axi_bready => M00_AXI_bready,
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => M00_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      m_axi_rready => M00_AXI_rready,
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => M00_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      m_axi_wready => M00_AXI_wready,
      m_axi_wstrb(3 downto 0) => M00_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M00_AXI_wvalid,
      s_axi_aclk => ACLK,
      s_axi_araddr(25) => '0',
      s_axi_araddr(24 downto 0) => m_axi_araddr(24 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => m_axi_arvalid(0),
      s_axi_awaddr(25) => '0',
      s_axi_awaddr(24 downto 0) => m_axi_awaddr(24 downto 0),
      s_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => m_axi_awvalid(0),
      s_axi_bready => m_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => m_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      s_axi_wvalid => m_axi_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_m01_couplers_imp_V1OR3T is
  port (
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_m01_couplers_imp_V1OR3T : entity is "m01_couplers_imp_V1OR3T";
end ulp_m01_couplers_imp_V1OR3T;

architecture STRUCTURE of ulp_m01_couplers_imp_V1OR3T is
  component ulp_auto_cc_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_auto_cc_1;
  component ulp_m01_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_m01_regslice_0;
  signal auto_cc_to_m01_regslice_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal auto_cc_to_m01_regslice_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m01_regslice_ARREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_ARVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal auto_cc_to_m01_regslice_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_cc_to_m01_regslice_AWREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_AWVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_BREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m01_regslice_BVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m01_regslice_RREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_cc_to_m01_regslice_RVALID : STD_LOGIC;
  signal auto_cc_to_m01_regslice_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_cc_to_m01_regslice_WREADY : STD_LOGIC;
  signal auto_cc_to_m01_regslice_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_cc_to_m01_regslice_WVALID : STD_LOGIC;
  signal NLW_m01_regslice_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_m01_regslice_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_cc : label is "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1";
  attribute X_CORE_INFO of m01_regslice : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
begin
auto_cc: component ulp_auto_cc_1
     port map (
      m_axi_aclk => M01_ACLK,
      m_axi_araddr(6 downto 0) => auto_cc_to_m01_regslice_ARADDR(6 downto 0),
      m_axi_aresetn => M01_ARESETN,
      m_axi_arprot(2 downto 0) => auto_cc_to_m01_regslice_ARPROT(2 downto 0),
      m_axi_arready => auto_cc_to_m01_regslice_ARREADY,
      m_axi_arvalid => auto_cc_to_m01_regslice_ARVALID,
      m_axi_awaddr(6 downto 0) => auto_cc_to_m01_regslice_AWADDR(6 downto 0),
      m_axi_awprot(2 downto 0) => auto_cc_to_m01_regslice_AWPROT(2 downto 0),
      m_axi_awready => auto_cc_to_m01_regslice_AWREADY,
      m_axi_awvalid => auto_cc_to_m01_regslice_AWVALID,
      m_axi_bready => auto_cc_to_m01_regslice_BREADY,
      m_axi_bresp(1 downto 0) => auto_cc_to_m01_regslice_BRESP(1 downto 0),
      m_axi_bvalid => auto_cc_to_m01_regslice_BVALID,
      m_axi_rdata(31 downto 0) => auto_cc_to_m01_regslice_RDATA(31 downto 0),
      m_axi_rready => auto_cc_to_m01_regslice_RREADY,
      m_axi_rresp(1 downto 0) => auto_cc_to_m01_regslice_RRESP(1 downto 0),
      m_axi_rvalid => auto_cc_to_m01_regslice_RVALID,
      m_axi_wdata(31 downto 0) => auto_cc_to_m01_regslice_WDATA(31 downto 0),
      m_axi_wready => auto_cc_to_m01_regslice_WREADY,
      m_axi_wstrb(3 downto 0) => auto_cc_to_m01_regslice_WSTRB(3 downto 0),
      m_axi_wvalid => auto_cc_to_m01_regslice_WVALID,
      s_axi_aclk => S00_ACLK,
      s_axi_araddr(6 downto 0) => S_AXI_araddr(6 downto 0),
      s_axi_aresetn => S00_ARESETN,
      s_axi_arprot(2 downto 0) => S_AXI_arprot(2 downto 0),
      s_axi_arready => S_AXI_arready,
      s_axi_arvalid => S_AXI_arvalid,
      s_axi_awaddr(6 downto 0) => S_AXI_awaddr(6 downto 0),
      s_axi_awprot(2 downto 0) => S_AXI_awprot(2 downto 0),
      s_axi_awready => S_AXI_awready,
      s_axi_awvalid => S_AXI_awvalid,
      s_axi_bready => S_AXI_bready,
      s_axi_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      s_axi_bvalid => S_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      s_axi_rready => S_AXI_rready,
      s_axi_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      s_axi_rvalid => S_AXI_rvalid,
      s_axi_wdata(31 downto 0) => S_AXI_wdata(31 downto 0),
      s_axi_wready => S_AXI_wready,
      s_axi_wstrb(3 downto 0) => S_AXI_wstrb(3 downto 0),
      s_axi_wvalid => S_AXI_wvalid
    );
m01_regslice: component ulp_m01_regslice_0
     port map (
      aclk => M01_ACLK,
      aresetn => M01_ARESETN,
      m_axi_araddr(6 downto 0) => M01_AXI_araddr(6 downto 0),
      m_axi_arprot(2 downto 0) => NLW_m01_regslice_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => M01_AXI_arready,
      m_axi_arvalid => M01_AXI_arvalid,
      m_axi_awaddr(6 downto 0) => M01_AXI_awaddr(6 downto 0),
      m_axi_awprot(2 downto 0) => NLW_m01_regslice_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => M01_AXI_awready,
      m_axi_awvalid => M01_AXI_awvalid,
      m_axi_bready => M01_AXI_bready,
      m_axi_bresp(1 downto 0) => M01_AXI_bresp(1 downto 0),
      m_axi_bvalid => M01_AXI_bvalid,
      m_axi_rdata(31 downto 0) => M01_AXI_rdata(31 downto 0),
      m_axi_rready => M01_AXI_rready,
      m_axi_rresp(1 downto 0) => M01_AXI_rresp(1 downto 0),
      m_axi_rvalid => M01_AXI_rvalid,
      m_axi_wdata(31 downto 0) => M01_AXI_wdata(31 downto 0),
      m_axi_wready => M01_AXI_wready,
      m_axi_wstrb(3 downto 0) => M01_AXI_wstrb(3 downto 0),
      m_axi_wvalid => M01_AXI_wvalid,
      s_axi_araddr(6 downto 0) => auto_cc_to_m01_regslice_ARADDR(6 downto 0),
      s_axi_arprot(2 downto 0) => auto_cc_to_m01_regslice_ARPROT(2 downto 0),
      s_axi_arready => auto_cc_to_m01_regslice_ARREADY,
      s_axi_arvalid => auto_cc_to_m01_regslice_ARVALID,
      s_axi_awaddr(6 downto 0) => auto_cc_to_m01_regslice_AWADDR(6 downto 0),
      s_axi_awprot(2 downto 0) => auto_cc_to_m01_regslice_AWPROT(2 downto 0),
      s_axi_awready => auto_cc_to_m01_regslice_AWREADY,
      s_axi_awvalid => auto_cc_to_m01_regslice_AWVALID,
      s_axi_bready => auto_cc_to_m01_regslice_BREADY,
      s_axi_bresp(1 downto 0) => auto_cc_to_m01_regslice_BRESP(1 downto 0),
      s_axi_bvalid => auto_cc_to_m01_regslice_BVALID,
      s_axi_rdata(31 downto 0) => auto_cc_to_m01_regslice_RDATA(31 downto 0),
      s_axi_rready => auto_cc_to_m01_regslice_RREADY,
      s_axi_rresp(1 downto 0) => auto_cc_to_m01_regslice_RRESP(1 downto 0),
      s_axi_rvalid => auto_cc_to_m01_regslice_RVALID,
      s_axi_wdata(31 downto 0) => auto_cc_to_m01_regslice_WDATA(31 downto 0),
      s_axi_wready => auto_cc_to_m01_regslice_WREADY,
      s_axi_wstrb(3 downto 0) => auto_cc_to_m01_regslice_WSTRB(3 downto 0),
      s_axi_wvalid => auto_cc_to_m01_regslice_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_reset_controllers_imp_440OZ2 is
  port (
    logic_reset_op_Res : out STD_LOGIC_VECTOR ( 0 to 0 );
    psreset_gate_pr_control_interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    psreset_gate_pr_data_interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    psreset_gate_pr_kernel_interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    iob_static_perst_n_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkwiz_sysclks_clk_out2 : in STD_LOGIC;
    Dout : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkwiz_sysclks_locked_slr1 : in STD_LOGIC;
    dma_pcie_axi_aclk : in STD_LOGIC;
    pcie_user_lnk_up_slr1 : in STD_LOGIC;
    c0_ddr4_ui_clk : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    clkwiz_kernel_clk_out1 : in STD_LOGIC;
    clkwiz_kernel_locked_slr1 : in STD_LOGIC;
    clkwiz_kernel2_clk_out1 : in STD_LOGIC;
    clkwiz_kernel2_locked_slr1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_reset_controllers_imp_440OZ2 : entity is "reset_controllers_imp_440OZ2";
end ulp_reset_controllers_imp_440OZ2;

architecture STRUCTURE of ulp_reset_controllers_imp_440OZ2 is
  component ulp_logic_reset_op_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_logic_reset_op_0;
  component ulp_psreset_gate_pr_control_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_psreset_gate_pr_control_0;
  component ulp_psreset_gate_pr_data_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_psreset_gate_pr_data_0;
  component ulp_psreset_gate_pr_ddrmem_1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_psreset_gate_pr_ddrmem_1_0;
  component ulp_psreset_gate_pr_kernel_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_psreset_gate_pr_kernel_0;
  component ulp_psreset_gate_pr_kernel2_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_psreset_gate_pr_kernel2_0;
  signal NLW_psreset_gate_pr_control_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_gate_pr_control_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_control_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_control_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_data_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_gate_pr_data_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_data_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_data_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_ddrmem_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_gate_pr_ddrmem_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_ddrmem_1_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_ddrmem_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_gate_pr_kernel_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel2_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_gate_pr_kernel2_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel2_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel2_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_gate_pr_kernel2_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of logic_reset_op : label is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.1";
  attribute X_CORE_INFO of psreset_gate_pr_control : label is "proc_sys_reset,Vivado 2021.1";
  attribute X_CORE_INFO of psreset_gate_pr_data : label is "proc_sys_reset,Vivado 2021.1";
  attribute X_CORE_INFO of psreset_gate_pr_ddrmem_1 : label is "proc_sys_reset,Vivado 2021.1";
  attribute X_CORE_INFO of psreset_gate_pr_kernel : label is "proc_sys_reset,Vivado 2021.1";
  attribute X_CORE_INFO of psreset_gate_pr_kernel2 : label is "proc_sys_reset,Vivado 2021.1";
begin
logic_reset_op: component ulp_logic_reset_op_0
     port map (
      Op1(0) => iob_static_perst_n_out(0),
      Res(0) => logic_reset_op_Res(0)
    );
psreset_gate_pr_control: component ulp_psreset_gate_pr_control_0
     port map (
      aux_reset_in => clkwiz_sysclks_locked_slr1,
      bus_struct_reset(0) => NLW_psreset_gate_pr_control_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => Dout(0),
      interconnect_aresetn(0) => psreset_gate_pr_control_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_gate_pr_control_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_gate_pr_control_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_gate_pr_control_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clkwiz_sysclks_clk_out2
    );
psreset_gate_pr_data: component ulp_psreset_gate_pr_data_0
     port map (
      aux_reset_in => pcie_user_lnk_up_slr1,
      bus_struct_reset(0) => NLW_psreset_gate_pr_data_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => Dout(0),
      interconnect_aresetn(0) => psreset_gate_pr_data_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_gate_pr_data_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_gate_pr_data_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_gate_pr_data_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => dma_pcie_axi_aclk
    );
psreset_gate_pr_ddrmem_1: component ulp_psreset_gate_pr_ddrmem_1_0
     port map (
      aux_reset_in => aux_reset_in,
      bus_struct_reset(0) => NLW_psreset_gate_pr_ddrmem_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => Dout(0),
      interconnect_aresetn(0) => interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_gate_pr_ddrmem_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_gate_pr_ddrmem_1_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_gate_pr_ddrmem_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => c0_ddr4_ui_clk
    );
psreset_gate_pr_kernel: component ulp_psreset_gate_pr_kernel_0
     port map (
      aux_reset_in => clkwiz_kernel_locked_slr1,
      bus_struct_reset(0) => NLW_psreset_gate_pr_kernel_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => Dout(0),
      interconnect_aresetn(0) => psreset_gate_pr_kernel_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_gate_pr_kernel_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => peripheral_aresetn(0),
      peripheral_reset(0) => NLW_psreset_gate_pr_kernel_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clkwiz_kernel_clk_out1
    );
psreset_gate_pr_kernel2: component ulp_psreset_gate_pr_kernel2_0
     port map (
      aux_reset_in => clkwiz_kernel2_locked_slr1,
      bus_struct_reset(0) => NLW_psreset_gate_pr_kernel2_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => Dout(0),
      interconnect_aresetn(0) => NLW_psreset_gate_pr_kernel2_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_gate_pr_kernel2_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_gate_pr_kernel2_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_gate_pr_kernel2_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clkwiz_kernel2_clk_out1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_s00_couplers_imp_1Y0QJAO is
  port (
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_s00_couplers_imp_1Y0QJAO : entity is "s00_couplers_imp_1Y0QJAO";
end ulp_s00_couplers_imp_1Y0QJAO;

architecture STRUCTURE of ulp_s00_couplers_imp_1Y0QJAO is
  component ulp_s00_regslice_19 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_s00_regslice_19;
  signal NLW_s00_regslice_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s00_regslice_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of s00_regslice : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
begin
s00_regslice: component ulp_s00_regslice_19
     port map (
      aclk => ACLK,
      aresetn => S01_ARESETN,
      m_axi_araddr(38 downto 0) => m_axi_araddr(38 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => s_axi_arready(0),
      m_axi_arregion(3 downto 0) => NLW_s00_regslice_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(38 downto 0) => m_axi_awaddr(38 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => s_axi_awready(0),
      m_axi_awregion(3 downto 0) => NLW_s00_regslice_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      m_axi_bvalid => s_axi_bvalid(0),
      m_axi_rdata(511 downto 0) => s_axi_rdata(511 downto 0),
      m_axi_rlast => s_axi_rlast(0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      m_axi_rvalid => s_axi_rvalid(0),
      m_axi_wdata(511 downto 0) => m_axi_wdata(511 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => s_axi_wready(0),
      m_axi_wstrb(63 downto 0) => m_axi_wstrb(63 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(38 downto 0) => S00_AXI_araddr(38 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      s_axi_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S00_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      s_axi_arready => S00_AXI_arready,
      s_axi_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_awaddr(38 downto 0) => S00_AXI_awaddr(38 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S00_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      s_axi_awready => S00_AXI_awready,
      s_axi_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      s_axi_awvalid => S00_AXI_awvalid,
      s_axi_bready => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid,
      s_axi_rdata(511 downto 0) => S00_AXI_rdata(511 downto 0),
      s_axi_rlast => S00_AXI_rlast,
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid,
      s_axi_wdata(511 downto 0) => S00_AXI_wdata(511 downto 0),
      s_axi_wlast => S00_AXI_wlast,
      s_axi_wready => S00_AXI_wready,
      s_axi_wstrb(63 downto 0) => S00_AXI_wstrb(63 downto 0),
      s_axi_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_s00_couplers_imp_7LJ24M is
  port (
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_s00_couplers_imp_7LJ24M : entity is "s00_couplers_imp_7LJ24M";
end ulp_s00_couplers_imp_7LJ24M;

architecture STRUCTURE of ulp_s00_couplers_imp_7LJ24M is
  component ulp_s00_regslice_22 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_s00_regslice_22;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of s00_regslice : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
begin
s00_regslice: component ulp_s00_regslice_22
     port map (
      aclk => S00_ACLK,
      aresetn => S00_ARESETN,
      m_axi_araddr(24 downto 0) => m_axi_araddr(24 downto 0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arready => s_axi_arready(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(24 downto 0) => m_axi_awaddr(24 downto 0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awready => s_axi_awready(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      m_axi_bvalid => s_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      m_axi_rvalid => s_axi_rvalid(0),
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wready => s_axi_wready(0),
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(24 downto 0) => S00_AXI_araddr(24 downto 0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arready => S00_AXI_arready,
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_awaddr(24 downto 0) => S00_AXI_awaddr(24 downto 0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awready => S00_AXI_awready,
      s_axi_awvalid => S00_AXI_awvalid,
      s_axi_bready => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid,
      s_axi_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      s_axi_wready => S00_AXI_wready,
      s_axi_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      s_axi_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_s00_couplers_imp_U66VNK is
  port (
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_s00_couplers_imp_U66VNK : entity is "s00_couplers_imp_U66VNK";
end ulp_s00_couplers_imp_U66VNK;

architecture STRUCTURE of ulp_s00_couplers_imp_U66VNK is
  component ulp_s00_regslice_20 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_s00_regslice_20;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of s00_regslice : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
begin
s00_regslice: component ulp_s00_regslice_20
     port map (
      aclk => S00_ACLK,
      aresetn => S00_ARESETN,
      m_axi_araddr(38 downto 0) => M00_AXI_araddr(38 downto 0),
      m_axi_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      m_axi_arready => M00_AXI_arready,
      m_axi_arregion(3 downto 0) => M00_AXI_arregion(3 downto 0),
      m_axi_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      m_axi_arvalid => M00_AXI_arvalid,
      m_axi_awaddr(38 downto 0) => M00_AXI_awaddr(38 downto 0),
      m_axi_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      m_axi_awready => M00_AXI_awready,
      m_axi_awregion(3 downto 0) => M00_AXI_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      m_axi_awvalid => M00_AXI_awvalid,
      m_axi_bready => M00_AXI_bready,
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid => M00_AXI_bvalid,
      m_axi_rdata(511 downto 0) => M00_AXI_rdata(511 downto 0),
      m_axi_rlast => M00_AXI_rlast,
      m_axi_rready => M00_AXI_rready,
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid => M00_AXI_rvalid,
      m_axi_wdata(511 downto 0) => M00_AXI_wdata(511 downto 0),
      m_axi_wlast => M00_AXI_wlast,
      m_axi_wready => M00_AXI_wready,
      m_axi_wstrb(63 downto 0) => M00_AXI_wstrb(63 downto 0),
      m_axi_wvalid => M00_AXI_wvalid,
      s_axi_araddr(38 downto 0) => S00_AXI_araddr(38 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      s_axi_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S00_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      s_axi_arready => S00_AXI_arready,
      s_axi_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_awaddr(38 downto 0) => S00_AXI_awaddr(38 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S00_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      s_axi_awready => S00_AXI_awready,
      s_axi_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      s_axi_awvalid => S00_AXI_awvalid,
      s_axi_bready => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid,
      s_axi_rdata(511 downto 0) => S00_AXI_rdata(511 downto 0),
      s_axi_rlast => S00_AXI_rlast,
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid,
      s_axi_wdata(511 downto 0) => S00_AXI_wdata(511 downto 0),
      s_axi_wlast => S00_AXI_wlast,
      s_axi_wready => S00_AXI_wready,
      s_axi_wstrb(63 downto 0) => S00_AXI_wstrb(63 downto 0),
      s_axi_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_s00_couplers_imp_YEI3CJ is
  port (
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_s00_couplers_imp_YEI3CJ : entity is "s00_couplers_imp_YEI3CJ";
end ulp_s00_couplers_imp_YEI3CJ;

architecture STRUCTURE of ulp_s00_couplers_imp_YEI3CJ is
  component ulp_s00_regslice_21 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_s00_regslice_21;
  signal NLW_s00_regslice_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s00_regslice_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of s00_regslice : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
begin
s00_regslice: component ulp_s00_regslice_21
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(63 downto 0) => m_axi_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => m_axi_arid(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => s_axi_arready(0),
      m_axi_arregion(3 downto 0) => NLW_s00_regslice_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(63 downto 0) => m_axi_awaddr(63 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => m_axi_awid(0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => s_axi_awready(0),
      m_axi_awregion(3 downto 0) => NLW_s00_regslice_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => s_axi_bid(0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      m_axi_bvalid => s_axi_bvalid(0),
      m_axi_rdata(511 downto 0) => s_axi_rdata(511 downto 0),
      m_axi_rid(0) => s_axi_rid(0),
      m_axi_rlast => s_axi_rlast(0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      m_axi_rvalid => s_axi_rvalid(0),
      m_axi_wdata(511 downto 0) => m_axi_wdata(511 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => s_axi_wready(0),
      m_axi_wstrb(63 downto 0) => m_axi_wstrb(63 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(63 downto 0) => S00_AXI_araddr(63 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      s_axi_arid(0) => S00_AXI_arid(0),
      s_axi_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S00_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      s_axi_arready => S00_AXI_arready,
      s_axi_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      s_axi_arvalid => S00_AXI_arvalid,
      s_axi_awaddr(63 downto 0) => S00_AXI_awaddr(63 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      s_axi_awid(0) => S00_AXI_awid(0),
      s_axi_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S00_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      s_axi_awready => S00_AXI_awready,
      s_axi_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      s_axi_awvalid => S00_AXI_awvalid,
      s_axi_bid(0) => S00_AXI_bid(0),
      s_axi_bready => S00_AXI_bready,
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid,
      s_axi_rdata(511 downto 0) => S00_AXI_rdata(511 downto 0),
      s_axi_rid(0) => S00_AXI_rid(0),
      s_axi_rlast => S00_AXI_rlast,
      s_axi_rready => S00_AXI_rready,
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid => S00_AXI_rvalid,
      s_axi_wdata(511 downto 0) => S00_AXI_wdata(511 downto 0),
      s_axi_wlast => S00_AXI_wlast,
      s_axi_wready => S00_AXI_wready,
      s_axi_wstrb(63 downto 0) => S00_AXI_wstrb(63 downto 0),
      s_axi_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_s01_couplers_imp_1A6BUUU is
  port (
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_s01_couplers_imp_1A6BUUU : entity is "s01_couplers_imp_1A6BUUU";
end ulp_s01_couplers_imp_1A6BUUU;

architecture STRUCTURE of ulp_s01_couplers_imp_1A6BUUU is
  component ulp_s01_regslice_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_s01_regslice_2;
  signal NLW_s01_regslice_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s01_regslice_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of s01_regslice : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
begin
s01_regslice: component ulp_s01_regslice_2
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(38 downto 0) => m_axi_araddr(38 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(3 downto 0) => m_axi_arid(3 downto 0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => s_axi_arready(0),
      m_axi_arregion(3 downto 0) => NLW_s01_regslice_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(38 downto 0) => m_axi_awaddr(38 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(3 downto 0) => m_axi_awid(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => s_axi_awready(0),
      m_axi_awregion(3 downto 0) => NLW_s01_regslice_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      m_axi_bvalid => s_axi_bvalid(0),
      m_axi_rdata(511 downto 0) => s_axi_rdata(511 downto 0),
      m_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      m_axi_rlast => s_axi_rlast(0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      m_axi_rvalid => s_axi_rvalid(0),
      m_axi_wdata(511 downto 0) => m_axi_wdata(511 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => s_axi_wready(0),
      m_axi_wstrb(63 downto 0) => m_axi_wstrb(63 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(38 downto 0) => S01_AXI_araddr(38 downto 0),
      s_axi_arburst(1 downto 0) => S01_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S01_AXI_arcache(3 downto 0),
      s_axi_arid(3 downto 0) => S01_AXI_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => S01_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S01_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S01_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S01_AXI_arqos(3 downto 0),
      s_axi_arready => S01_AXI_arready,
      s_axi_arregion(3 downto 0) => S01_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S01_AXI_arsize(2 downto 0),
      s_axi_arvalid => S01_AXI_arvalid,
      s_axi_awaddr(38 downto 0) => S01_AXI_awaddr(38 downto 0),
      s_axi_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      s_axi_awid(3 downto 0) => S01_AXI_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S01_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S01_AXI_awqos(3 downto 0),
      s_axi_awready => S01_AXI_awready,
      s_axi_awregion(3 downto 0) => S01_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      s_axi_awvalid => S01_AXI_awvalid,
      s_axi_bid(3 downto 0) => S01_AXI_bid(3 downto 0),
      s_axi_bready => S01_AXI_bready,
      s_axi_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      s_axi_bvalid => S01_AXI_bvalid,
      s_axi_rdata(511 downto 0) => S01_AXI_rdata(511 downto 0),
      s_axi_rid(3 downto 0) => S01_AXI_rid(3 downto 0),
      s_axi_rlast => S01_AXI_rlast,
      s_axi_rready => S01_AXI_rready,
      s_axi_rresp(1 downto 0) => S01_AXI_rresp(1 downto 0),
      s_axi_rvalid => S01_AXI_rvalid,
      s_axi_wdata(511 downto 0) => S01_AXI_wdata(511 downto 0),
      s_axi_wlast => S01_AXI_wlast,
      s_axi_wready => S01_AXI_wready,
      s_axi_wstrb(63 downto 0) => S01_AXI_wstrb(63 downto 0),
      s_axi_wvalid => S01_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_s01_couplers_imp_9DN451 is
  port (
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    ACLK : in STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_s01_couplers_imp_9DN451 : entity is "s01_couplers_imp_9DN451";
end ulp_s01_couplers_imp_9DN451;

architecture STRUCTURE of ulp_s01_couplers_imp_9DN451 is
  component ulp_auto_us_cc_df_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_auto_us_cc_df_0;
  component ulp_s01_regslice_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_s01_regslice_1;
  signal s01_regslice_to_auto_us_cc_df_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARLOCK : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_ARVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWLOCK : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_AWVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_BID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_BREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_BVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_RID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_RLAST : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_RREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_RVALID : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_WLAST : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_WREADY : STD_LOGIC;
  signal s01_regslice_to_auto_us_cc_df_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_regslice_to_auto_us_cc_df_WVALID : STD_LOGIC;
  signal NLW_auto_us_cc_df_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_cc_df_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_us_cc_df : label is "axi_dwidth_converter_v2_1_24_top,Vivado 2021.1";
  attribute X_CORE_INFO of s01_regslice : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
begin
auto_us_cc_df: component ulp_auto_us_cc_df_0
     port map (
      m_axi_aclk => ACLK,
      m_axi_araddr(63 downto 0) => M_AXI_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_aresetn => S01_ARESETN,
      m_axi_arlen(7 downto 0) => M_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arregion(3 downto 0) => NLW_auto_us_cc_df_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => M_AXI_arsize(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_awaddr(63 downto 0) => M_AXI_awaddr(63 downto 0),
      m_axi_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => M_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M_AXI_awqos(3 downto 0),
      m_axi_awready => M_AXI_awready,
      m_axi_awregion(3 downto 0) => NLW_auto_us_cc_df_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => M_AXI_awsize(2 downto 0),
      m_axi_awvalid => M_AXI_awvalid,
      m_axi_bready => M_AXI_bready,
      m_axi_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      m_axi_bvalid => M_AXI_bvalid,
      m_axi_rdata(511 downto 0) => M_AXI_rdata(511 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      m_axi_wdata(511 downto 0) => M_AXI_wdata(511 downto 0),
      m_axi_wlast => M_AXI_wlast,
      m_axi_wready => M_AXI_wready,
      m_axi_wstrb(63 downto 0) => M_AXI_wstrb(63 downto 0),
      m_axi_wvalid => M_AXI_wvalid,
      s_axi_aclk => S01_ACLK,
      s_axi_araddr(63 downto 0) => s01_regslice_to_auto_us_cc_df_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => s01_regslice_to_auto_us_cc_df_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARCACHE(3 downto 0),
      s_axi_aresetn => S01_ARESETN,
      s_axi_arid(0) => s01_regslice_to_auto_us_cc_df_ARID,
      s_axi_arlen(7 downto 0) => s01_regslice_to_auto_us_cc_df_ARLEN(7 downto 0),
      s_axi_arlock(0) => s01_regslice_to_auto_us_cc_df_ARLOCK,
      s_axi_arprot(2 downto 0) => s01_regslice_to_auto_us_cc_df_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARQOS(3 downto 0),
      s_axi_arready => s01_regslice_to_auto_us_cc_df_ARREADY,
      s_axi_arregion(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s01_regslice_to_auto_us_cc_df_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_regslice_to_auto_us_cc_df_ARVALID,
      s_axi_awaddr(63 downto 0) => s01_regslice_to_auto_us_cc_df_AWADDR(63 downto 0),
      s_axi_awburst(1 downto 0) => s01_regslice_to_auto_us_cc_df_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWCACHE(3 downto 0),
      s_axi_awid(0) => s01_regslice_to_auto_us_cc_df_AWID,
      s_axi_awlen(7 downto 0) => s01_regslice_to_auto_us_cc_df_AWLEN(7 downto 0),
      s_axi_awlock(0) => s01_regslice_to_auto_us_cc_df_AWLOCK,
      s_axi_awprot(2 downto 0) => s01_regslice_to_auto_us_cc_df_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWQOS(3 downto 0),
      s_axi_awready => s01_regslice_to_auto_us_cc_df_AWREADY,
      s_axi_awregion(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s01_regslice_to_auto_us_cc_df_AWSIZE(2 downto 0),
      s_axi_awvalid => s01_regslice_to_auto_us_cc_df_AWVALID,
      s_axi_bid(0) => s01_regslice_to_auto_us_cc_df_BID,
      s_axi_bready => s01_regslice_to_auto_us_cc_df_BREADY,
      s_axi_bresp(1 downto 0) => s01_regslice_to_auto_us_cc_df_BRESP(1 downto 0),
      s_axi_bvalid => s01_regslice_to_auto_us_cc_df_BVALID,
      s_axi_rdata(31 downto 0) => s01_regslice_to_auto_us_cc_df_RDATA(31 downto 0),
      s_axi_rid(0) => s01_regslice_to_auto_us_cc_df_RID,
      s_axi_rlast => s01_regslice_to_auto_us_cc_df_RLAST,
      s_axi_rready => s01_regslice_to_auto_us_cc_df_RREADY,
      s_axi_rresp(1 downto 0) => s01_regslice_to_auto_us_cc_df_RRESP(1 downto 0),
      s_axi_rvalid => s01_regslice_to_auto_us_cc_df_RVALID,
      s_axi_wdata(31 downto 0) => s01_regslice_to_auto_us_cc_df_WDATA(31 downto 0),
      s_axi_wlast => s01_regslice_to_auto_us_cc_df_WLAST,
      s_axi_wready => s01_regslice_to_auto_us_cc_df_WREADY,
      s_axi_wstrb(3 downto 0) => s01_regslice_to_auto_us_cc_df_WSTRB(3 downto 0),
      s_axi_wvalid => s01_regslice_to_auto_us_cc_df_WVALID
    );
s01_regslice: component ulp_s01_regslice_1
     port map (
      aclk => S01_ACLK,
      aresetn => S01_ARESETN,
      m_axi_araddr(63 downto 0) => s01_regslice_to_auto_us_cc_df_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => s01_regslice_to_auto_us_cc_df_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARCACHE(3 downto 0),
      m_axi_arid(0) => s01_regslice_to_auto_us_cc_df_ARID,
      m_axi_arlen(7 downto 0) => s01_regslice_to_auto_us_cc_df_ARLEN(7 downto 0),
      m_axi_arlock(0) => s01_regslice_to_auto_us_cc_df_ARLOCK,
      m_axi_arprot(2 downto 0) => s01_regslice_to_auto_us_cc_df_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARQOS(3 downto 0),
      m_axi_arready => s01_regslice_to_auto_us_cc_df_ARREADY,
      m_axi_arregion(3 downto 0) => s01_regslice_to_auto_us_cc_df_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => s01_regslice_to_auto_us_cc_df_ARSIZE(2 downto 0),
      m_axi_arvalid => s01_regslice_to_auto_us_cc_df_ARVALID,
      m_axi_awaddr(63 downto 0) => s01_regslice_to_auto_us_cc_df_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => s01_regslice_to_auto_us_cc_df_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWCACHE(3 downto 0),
      m_axi_awid(0) => s01_regslice_to_auto_us_cc_df_AWID,
      m_axi_awlen(7 downto 0) => s01_regslice_to_auto_us_cc_df_AWLEN(7 downto 0),
      m_axi_awlock(0) => s01_regslice_to_auto_us_cc_df_AWLOCK,
      m_axi_awprot(2 downto 0) => s01_regslice_to_auto_us_cc_df_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWQOS(3 downto 0),
      m_axi_awready => s01_regslice_to_auto_us_cc_df_AWREADY,
      m_axi_awregion(3 downto 0) => s01_regslice_to_auto_us_cc_df_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => s01_regslice_to_auto_us_cc_df_AWSIZE(2 downto 0),
      m_axi_awvalid => s01_regslice_to_auto_us_cc_df_AWVALID,
      m_axi_bid(0) => s01_regslice_to_auto_us_cc_df_BID,
      m_axi_bready => s01_regslice_to_auto_us_cc_df_BREADY,
      m_axi_bresp(1 downto 0) => s01_regslice_to_auto_us_cc_df_BRESP(1 downto 0),
      m_axi_bvalid => s01_regslice_to_auto_us_cc_df_BVALID,
      m_axi_rdata(31 downto 0) => s01_regslice_to_auto_us_cc_df_RDATA(31 downto 0),
      m_axi_rid(0) => s01_regslice_to_auto_us_cc_df_RID,
      m_axi_rlast => s01_regslice_to_auto_us_cc_df_RLAST,
      m_axi_rready => s01_regslice_to_auto_us_cc_df_RREADY,
      m_axi_rresp(1 downto 0) => s01_regslice_to_auto_us_cc_df_RRESP(1 downto 0),
      m_axi_rvalid => s01_regslice_to_auto_us_cc_df_RVALID,
      m_axi_wdata(31 downto 0) => s01_regslice_to_auto_us_cc_df_WDATA(31 downto 0),
      m_axi_wlast => s01_regslice_to_auto_us_cc_df_WLAST,
      m_axi_wready => s01_regslice_to_auto_us_cc_df_WREADY,
      m_axi_wstrb(3 downto 0) => s01_regslice_to_auto_us_cc_df_WSTRB(3 downto 0),
      m_axi_wvalid => s01_regslice_to_auto_us_cc_df_WVALID,
      s_axi_araddr(63 downto 0) => S01_AXI_araddr(63 downto 0),
      s_axi_arburst(1 downto 0) => S01_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S01_AXI_arcache(3 downto 0),
      s_axi_arid(0) => S01_AXI_arid(0),
      s_axi_arlen(7 downto 0) => S01_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S01_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S01_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S01_AXI_arqos(3 downto 0),
      s_axi_arready => S01_AXI_arready,
      s_axi_arregion(3 downto 0) => S01_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S01_AXI_arsize(2 downto 0),
      s_axi_arvalid => S01_AXI_arvalid,
      s_axi_awaddr(63 downto 0) => S01_AXI_awaddr(63 downto 0),
      s_axi_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      s_axi_awid(0) => S01_AXI_awid(0),
      s_axi_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S01_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S01_AXI_awqos(3 downto 0),
      s_axi_awready => S01_AXI_awready,
      s_axi_awregion(3 downto 0) => S01_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      s_axi_awvalid => S01_AXI_awvalid,
      s_axi_bid(0) => S01_AXI_bid(0),
      s_axi_bready => S01_AXI_bready,
      s_axi_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      s_axi_bvalid => S01_AXI_bvalid,
      s_axi_rdata(31 downto 0) => S01_AXI_rdata(31 downto 0),
      s_axi_rid(0) => S01_AXI_rid(0),
      s_axi_rlast => S01_AXI_rlast,
      s_axi_rready => S01_AXI_rready,
      s_axi_rresp(1 downto 0) => S01_AXI_rresp(1 downto 0),
      s_axi_rvalid => S01_AXI_rvalid,
      s_axi_wdata(31 downto 0) => S01_AXI_wdata(31 downto 0),
      s_axi_wlast => S01_AXI_wlast,
      s_axi_wready => S01_AXI_wready,
      s_axi_wstrb(3 downto 0) => S01_AXI_wstrb(3 downto 0),
      s_axi_wvalid => S01_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_s02_couplers_imp_7O094O is
  port (
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_s02_couplers_imp_7O094O : entity is "s02_couplers_imp_7O094O";
end ulp_s02_couplers_imp_7O094O;

architecture STRUCTURE of ulp_s02_couplers_imp_7O094O is
  component ulp_s02_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_s02_regslice_0;
  signal NLW_s02_regslice_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_s02_regslice_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of s02_regslice : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
begin
s02_regslice: component ulp_s02_regslice_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(38 downto 0) => m_axi_araddr(38 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => s_axi_arready(0),
      m_axi_arregion(3 downto 0) => NLW_s02_regslice_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(38 downto 0) => m_axi_awaddr(38 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => s_axi_awready(0),
      m_axi_awregion(3 downto 0) => NLW_s02_regslice_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      m_axi_bvalid => s_axi_bvalid(0),
      m_axi_rdata(511 downto 0) => s_axi_rdata(511 downto 0),
      m_axi_rlast => s_axi_rlast(0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      m_axi_rvalid => s_axi_rvalid(0),
      m_axi_wdata(511 downto 0) => m_axi_wdata(511 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => s_axi_wready(0),
      m_axi_wstrb(63 downto 0) => m_axi_wstrb(63 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(38 downto 0) => S02_AXI_araddr(38 downto 0),
      s_axi_arburst(1 downto 0) => S02_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S02_AXI_arcache(3 downto 0),
      s_axi_arlen(7 downto 0) => S02_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S02_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S02_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S02_AXI_arqos(3 downto 0),
      s_axi_arready => S02_AXI_arready,
      s_axi_arregion(3 downto 0) => S02_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S02_AXI_arsize(2 downto 0),
      s_axi_arvalid => S02_AXI_arvalid,
      s_axi_awaddr(38 downto 0) => S02_AXI_awaddr(38 downto 0),
      s_axi_awburst(1 downto 0) => S02_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S02_AXI_awcache(3 downto 0),
      s_axi_awlen(7 downto 0) => S02_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S02_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S02_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S02_AXI_awqos(3 downto 0),
      s_axi_awready => S02_AXI_awready,
      s_axi_awregion(3 downto 0) => S02_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S02_AXI_awsize(2 downto 0),
      s_axi_awvalid => S02_AXI_awvalid,
      s_axi_bready => S02_AXI_bready,
      s_axi_bresp(1 downto 0) => S02_AXI_bresp(1 downto 0),
      s_axi_bvalid => S02_AXI_bvalid,
      s_axi_rdata(511 downto 0) => S02_AXI_rdata(511 downto 0),
      s_axi_rlast => S02_AXI_rlast,
      s_axi_rready => S02_AXI_rready,
      s_axi_rresp(1 downto 0) => S02_AXI_rresp(1 downto 0),
      s_axi_rvalid => S02_AXI_rvalid,
      s_axi_wdata(511 downto 0) => S02_AXI_wdata(511 downto 0),
      s_axi_wlast => S02_AXI_wlast,
      s_axi_wready => S02_AXI_wready,
      s_axi_wstrb(63 downto 0) => S02_AXI_wstrb(63 downto 0),
      s_axi_wvalid => S02_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_s03_couplers_imp_1IZX0HP is
  port (
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_s03_couplers_imp_1IZX0HP : entity is "s03_couplers_imp_1IZX0HP";
end ulp_s03_couplers_imp_1IZX0HP;

architecture STRUCTURE of ulp_s03_couplers_imp_1IZX0HP is
  component ulp_auto_rs_w_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_auto_rs_w_0;
  component ulp_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_auto_us_0;
  component ulp_s03_regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_s03_regslice_0;
  signal auto_us_to_auto_rs_w_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal auto_us_to_auto_rs_w_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_auto_rs_w_ARLOCK : STD_LOGIC;
  signal auto_us_to_auto_rs_w_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_ARREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_ARVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal auto_us_to_auto_rs_w_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_auto_rs_w_AWLOCK : STD_LOGIC;
  signal auto_us_to_auto_rs_w_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_AWREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_auto_rs_w_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_auto_rs_w_AWVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_BREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_BVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_auto_rs_w_RLAST : STD_LOGIC;
  signal auto_us_to_auto_rs_w_RREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_auto_rs_w_RVALID : STD_LOGIC;
  signal auto_us_to_auto_rs_w_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal auto_us_to_auto_rs_w_WLAST : STD_LOGIC;
  signal auto_us_to_auto_rs_w_WREADY : STD_LOGIC;
  signal auto_us_to_auto_rs_w_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal auto_us_to_auto_rs_w_WVALID : STD_LOGIC;
  signal s03_regslice_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal s03_regslice_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_regslice_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_regslice_to_auto_us_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_regslice_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_regslice_to_auto_us_ARLOCK : STD_LOGIC;
  signal s03_regslice_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_regslice_to_auto_us_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_regslice_to_auto_us_ARREADY : STD_LOGIC;
  signal s03_regslice_to_auto_us_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_regslice_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_regslice_to_auto_us_ARVALID : STD_LOGIC;
  signal s03_regslice_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal s03_regslice_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_regslice_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_regslice_to_auto_us_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_regslice_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_regslice_to_auto_us_AWLOCK : STD_LOGIC;
  signal s03_regslice_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_regslice_to_auto_us_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_regslice_to_auto_us_AWREADY : STD_LOGIC;
  signal s03_regslice_to_auto_us_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_regslice_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_regslice_to_auto_us_AWVALID : STD_LOGIC;
  signal s03_regslice_to_auto_us_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_regslice_to_auto_us_BREADY : STD_LOGIC;
  signal s03_regslice_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_regslice_to_auto_us_BVALID : STD_LOGIC;
  signal s03_regslice_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s03_regslice_to_auto_us_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_regslice_to_auto_us_RLAST : STD_LOGIC;
  signal s03_regslice_to_auto_us_RREADY : STD_LOGIC;
  signal s03_regslice_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_regslice_to_auto_us_RVALID : STD_LOGIC;
  signal s03_regslice_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s03_regslice_to_auto_us_WLAST : STD_LOGIC;
  signal s03_regslice_to_auto_us_WREADY : STD_LOGIC;
  signal s03_regslice_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s03_regslice_to_auto_us_WVALID : STD_LOGIC;
  signal NLW_auto_rs_w_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_rs_w_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of auto_rs_w : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
  attribute X_CORE_INFO of auto_us : label is "axi_dwidth_converter_v2_1_24_top,Vivado 2021.1";
  attribute X_CORE_INFO of s03_regslice : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
begin
auto_rs_w: component ulp_auto_rs_w_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(38 downto 0) => M_AXI_araddr(38 downto 0),
      m_axi_arburst(1 downto 0) => M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M_AXI_arcache(3 downto 0),
      m_axi_arlen(7 downto 0) => M_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M_AXI_arqos(3 downto 0),
      m_axi_arready => M_AXI_arready,
      m_axi_arregion(3 downto 0) => NLW_auto_rs_w_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => M_AXI_arsize(2 downto 0),
      m_axi_arvalid => M_AXI_arvalid,
      m_axi_awaddr(38 downto 0) => M_AXI_awaddr(38 downto 0),
      m_axi_awburst(1 downto 0) => M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M_AXI_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => M_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M_AXI_awqos(3 downto 0),
      m_axi_awready => M_AXI_awready,
      m_axi_awregion(3 downto 0) => NLW_auto_rs_w_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => M_AXI_awsize(2 downto 0),
      m_axi_awvalid => M_AXI_awvalid,
      m_axi_bready => M_AXI_bready,
      m_axi_bresp(1 downto 0) => M_AXI_bresp(1 downto 0),
      m_axi_bvalid => M_AXI_bvalid,
      m_axi_rdata(511 downto 0) => M_AXI_rdata(511 downto 0),
      m_axi_rlast => M_AXI_rlast,
      m_axi_rready => M_AXI_rready,
      m_axi_rresp(1 downto 0) => M_AXI_rresp(1 downto 0),
      m_axi_rvalid => M_AXI_rvalid,
      m_axi_wdata(511 downto 0) => M_AXI_wdata(511 downto 0),
      m_axi_wlast => M_AXI_wlast,
      m_axi_wready => M_AXI_wready,
      m_axi_wstrb(63 downto 0) => M_AXI_wstrb(63 downto 0),
      m_axi_wvalid => M_AXI_wvalid,
      s_axi_araddr(38 downto 0) => auto_us_to_auto_rs_w_ARADDR(38 downto 0),
      s_axi_arburst(1 downto 0) => auto_us_to_auto_rs_w_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_us_to_auto_rs_w_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_us_to_auto_rs_w_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_us_to_auto_rs_w_ARLOCK,
      s_axi_arprot(2 downto 0) => auto_us_to_auto_rs_w_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_us_to_auto_rs_w_ARQOS(3 downto 0),
      s_axi_arready => auto_us_to_auto_rs_w_ARREADY,
      s_axi_arregion(3 downto 0) => auto_us_to_auto_rs_w_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_us_to_auto_rs_w_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_us_to_auto_rs_w_ARVALID,
      s_axi_awaddr(38 downto 0) => auto_us_to_auto_rs_w_AWADDR(38 downto 0),
      s_axi_awburst(1 downto 0) => auto_us_to_auto_rs_w_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_us_to_auto_rs_w_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_us_to_auto_rs_w_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_us_to_auto_rs_w_AWLOCK,
      s_axi_awprot(2 downto 0) => auto_us_to_auto_rs_w_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_us_to_auto_rs_w_AWQOS(3 downto 0),
      s_axi_awready => auto_us_to_auto_rs_w_AWREADY,
      s_axi_awregion(3 downto 0) => auto_us_to_auto_rs_w_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_us_to_auto_rs_w_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_us_to_auto_rs_w_AWVALID,
      s_axi_bready => auto_us_to_auto_rs_w_BREADY,
      s_axi_bresp(1 downto 0) => auto_us_to_auto_rs_w_BRESP(1 downto 0),
      s_axi_bvalid => auto_us_to_auto_rs_w_BVALID,
      s_axi_rdata(511 downto 0) => auto_us_to_auto_rs_w_RDATA(511 downto 0),
      s_axi_rlast => auto_us_to_auto_rs_w_RLAST,
      s_axi_rready => auto_us_to_auto_rs_w_RREADY,
      s_axi_rresp(1 downto 0) => auto_us_to_auto_rs_w_RRESP(1 downto 0),
      s_axi_rvalid => auto_us_to_auto_rs_w_RVALID,
      s_axi_wdata(511 downto 0) => auto_us_to_auto_rs_w_WDATA(511 downto 0),
      s_axi_wlast => auto_us_to_auto_rs_w_WLAST,
      s_axi_wready => auto_us_to_auto_rs_w_WREADY,
      s_axi_wstrb(63 downto 0) => auto_us_to_auto_rs_w_WSTRB(63 downto 0),
      s_axi_wvalid => auto_us_to_auto_rs_w_WVALID
    );
auto_us: component ulp_auto_us_0
     port map (
      m_axi_araddr(38 downto 0) => auto_us_to_auto_rs_w_ARADDR(38 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_auto_rs_w_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_auto_rs_w_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_auto_rs_w_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_auto_rs_w_ARLOCK,
      m_axi_arprot(2 downto 0) => auto_us_to_auto_rs_w_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_auto_rs_w_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_auto_rs_w_ARREADY,
      m_axi_arregion(3 downto 0) => auto_us_to_auto_rs_w_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_auto_rs_w_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_auto_rs_w_ARVALID,
      m_axi_awaddr(38 downto 0) => auto_us_to_auto_rs_w_AWADDR(38 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_auto_rs_w_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_auto_rs_w_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_auto_rs_w_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_auto_rs_w_AWLOCK,
      m_axi_awprot(2 downto 0) => auto_us_to_auto_rs_w_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_auto_rs_w_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_auto_rs_w_AWREADY,
      m_axi_awregion(3 downto 0) => auto_us_to_auto_rs_w_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_auto_rs_w_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_auto_rs_w_AWVALID,
      m_axi_bready => auto_us_to_auto_rs_w_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_auto_rs_w_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_auto_rs_w_BVALID,
      m_axi_rdata(511 downto 0) => auto_us_to_auto_rs_w_RDATA(511 downto 0),
      m_axi_rlast => auto_us_to_auto_rs_w_RLAST,
      m_axi_rready => auto_us_to_auto_rs_w_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_auto_rs_w_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_auto_rs_w_RVALID,
      m_axi_wdata(511 downto 0) => auto_us_to_auto_rs_w_WDATA(511 downto 0),
      m_axi_wlast => auto_us_to_auto_rs_w_WLAST,
      m_axi_wready => auto_us_to_auto_rs_w_WREADY,
      m_axi_wstrb(63 downto 0) => auto_us_to_auto_rs_w_WSTRB(63 downto 0),
      m_axi_wvalid => auto_us_to_auto_rs_w_WVALID,
      s_axi_aclk => ACLK,
      s_axi_araddr(38 downto 0) => s03_regslice_to_auto_us_ARADDR(38 downto 0),
      s_axi_arburst(1 downto 0) => s03_regslice_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s03_regslice_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => ARESETN,
      s_axi_arid(3 downto 0) => s03_regslice_to_auto_us_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => s03_regslice_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => s03_regslice_to_auto_us_ARLOCK,
      s_axi_arprot(2 downto 0) => s03_regslice_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s03_regslice_to_auto_us_ARQOS(3 downto 0),
      s_axi_arready => s03_regslice_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => s03_regslice_to_auto_us_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => s03_regslice_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s03_regslice_to_auto_us_ARVALID,
      s_axi_awaddr(38 downto 0) => s03_regslice_to_auto_us_AWADDR(38 downto 0),
      s_axi_awburst(1 downto 0) => s03_regslice_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s03_regslice_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => s03_regslice_to_auto_us_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => s03_regslice_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => s03_regslice_to_auto_us_AWLOCK,
      s_axi_awprot(2 downto 0) => s03_regslice_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s03_regslice_to_auto_us_AWQOS(3 downto 0),
      s_axi_awready => s03_regslice_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => s03_regslice_to_auto_us_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => s03_regslice_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => s03_regslice_to_auto_us_AWVALID,
      s_axi_bid(3 downto 0) => s03_regslice_to_auto_us_BID(3 downto 0),
      s_axi_bready => s03_regslice_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => s03_regslice_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => s03_regslice_to_auto_us_BVALID,
      s_axi_rdata(127 downto 0) => s03_regslice_to_auto_us_RDATA(127 downto 0),
      s_axi_rid(3 downto 0) => s03_regslice_to_auto_us_RID(3 downto 0),
      s_axi_rlast => s03_regslice_to_auto_us_RLAST,
      s_axi_rready => s03_regslice_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s03_regslice_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s03_regslice_to_auto_us_RVALID,
      s_axi_wdata(127 downto 0) => s03_regslice_to_auto_us_WDATA(127 downto 0),
      s_axi_wlast => s03_regslice_to_auto_us_WLAST,
      s_axi_wready => s03_regslice_to_auto_us_WREADY,
      s_axi_wstrb(15 downto 0) => s03_regslice_to_auto_us_WSTRB(15 downto 0),
      s_axi_wvalid => s03_regslice_to_auto_us_WVALID
    );
s03_regslice: component ulp_s03_regslice_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(38 downto 0) => s03_regslice_to_auto_us_ARADDR(38 downto 0),
      m_axi_arburst(1 downto 0) => s03_regslice_to_auto_us_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s03_regslice_to_auto_us_ARCACHE(3 downto 0),
      m_axi_arid(3 downto 0) => s03_regslice_to_auto_us_ARID(3 downto 0),
      m_axi_arlen(7 downto 0) => s03_regslice_to_auto_us_ARLEN(7 downto 0),
      m_axi_arlock(0) => s03_regslice_to_auto_us_ARLOCK,
      m_axi_arprot(2 downto 0) => s03_regslice_to_auto_us_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s03_regslice_to_auto_us_ARQOS(3 downto 0),
      m_axi_arready => s03_regslice_to_auto_us_ARREADY,
      m_axi_arregion(3 downto 0) => s03_regslice_to_auto_us_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => s03_regslice_to_auto_us_ARSIZE(2 downto 0),
      m_axi_arvalid => s03_regslice_to_auto_us_ARVALID,
      m_axi_awaddr(38 downto 0) => s03_regslice_to_auto_us_AWADDR(38 downto 0),
      m_axi_awburst(1 downto 0) => s03_regslice_to_auto_us_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s03_regslice_to_auto_us_AWCACHE(3 downto 0),
      m_axi_awid(3 downto 0) => s03_regslice_to_auto_us_AWID(3 downto 0),
      m_axi_awlen(7 downto 0) => s03_regslice_to_auto_us_AWLEN(7 downto 0),
      m_axi_awlock(0) => s03_regslice_to_auto_us_AWLOCK,
      m_axi_awprot(2 downto 0) => s03_regslice_to_auto_us_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s03_regslice_to_auto_us_AWQOS(3 downto 0),
      m_axi_awready => s03_regslice_to_auto_us_AWREADY,
      m_axi_awregion(3 downto 0) => s03_regslice_to_auto_us_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => s03_regslice_to_auto_us_AWSIZE(2 downto 0),
      m_axi_awvalid => s03_regslice_to_auto_us_AWVALID,
      m_axi_bid(3 downto 0) => s03_regslice_to_auto_us_BID(3 downto 0),
      m_axi_bready => s03_regslice_to_auto_us_BREADY,
      m_axi_bresp(1 downto 0) => s03_regslice_to_auto_us_BRESP(1 downto 0),
      m_axi_bvalid => s03_regslice_to_auto_us_BVALID,
      m_axi_rdata(127 downto 0) => s03_regslice_to_auto_us_RDATA(127 downto 0),
      m_axi_rid(3 downto 0) => s03_regslice_to_auto_us_RID(3 downto 0),
      m_axi_rlast => s03_regslice_to_auto_us_RLAST,
      m_axi_rready => s03_regslice_to_auto_us_RREADY,
      m_axi_rresp(1 downto 0) => s03_regslice_to_auto_us_RRESP(1 downto 0),
      m_axi_rvalid => s03_regslice_to_auto_us_RVALID,
      m_axi_wdata(127 downto 0) => s03_regslice_to_auto_us_WDATA(127 downto 0),
      m_axi_wlast => s03_regslice_to_auto_us_WLAST,
      m_axi_wready => s03_regslice_to_auto_us_WREADY,
      m_axi_wstrb(15 downto 0) => s03_regslice_to_auto_us_WSTRB(15 downto 0),
      m_axi_wvalid => s03_regslice_to_auto_us_WVALID,
      s_axi_araddr(38 downto 0) => S_AXI_araddr(38 downto 0),
      s_axi_arburst(1 downto 0) => S_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S_AXI_arcache(3 downto 0),
      s_axi_arid(3 downto 0) => S_AXI_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => S_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S_AXI_arqos(3 downto 0),
      s_axi_arready => S_AXI_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => S_AXI_arsize(2 downto 0),
      s_axi_arvalid => S_AXI_arvalid,
      s_axi_awaddr(38 downto 0) => S_AXI_awaddr(38 downto 0),
      s_axi_awburst(1 downto 0) => S_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S_AXI_awcache(3 downto 0),
      s_axi_awid(3 downto 0) => S_AXI_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => S_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S_AXI_awqos(3 downto 0),
      s_axi_awready => S_AXI_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => S_AXI_awsize(2 downto 0),
      s_axi_awvalid => S_AXI_awvalid,
      s_axi_bid(3 downto 0) => S_AXI_bid(3 downto 0),
      s_axi_bready => S_AXI_bready,
      s_axi_bresp(1 downto 0) => S_AXI_bresp(1 downto 0),
      s_axi_bvalid => S_AXI_bvalid,
      s_axi_rdata(127 downto 0) => S_AXI_rdata(127 downto 0),
      s_axi_rid(3 downto 0) => S_AXI_rid(3 downto 0),
      s_axi_rlast => S_AXI_rlast,
      s_axi_rready => S_AXI_rready,
      s_axi_rresp(1 downto 0) => S_AXI_rresp(1 downto 0),
      s_axi_rvalid => S_AXI_rvalid,
      s_axi_wdata(127 downto 0) => S_AXI_wdata(127 downto 0),
      s_axi_wlast => S_AXI_wlast,
      s_axi_wready => S_AXI_wready,
      s_axi_wstrb(15 downto 0) => S_AXI_wstrb(15 downto 0),
      s_axi_wvalid => S_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC
  );
end ulp_axi_interconnect_0_0;

architecture STRUCTURE of ulp_axi_interconnect_0_0 is
  component ulp_xbar_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_xbar_4;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 1023 downto 512 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1";
begin
s00_couplers: entity work.ulp_s00_couplers_imp_1Y0QJAO
     port map (
      ACLK => ACLK,
      S00_AXI_araddr(38 downto 0) => S00_AXI_araddr(38 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(38 downto 0) => S00_AXI_awaddr(38 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(511 downto 0) => S00_AXI_rdata(511 downto 0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(511 downto 0) => S00_AXI_wdata(511 downto 0),
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(63 downto 0) => S00_AXI_wstrb(63 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid,
      S01_ARESETN => S01_ARESETN,
      m_axi_araddr(38 downto 0) => s00_couplers_to_xbar_ARADDR(38 downto 0),
      m_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      m_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      m_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_couplers_to_xbar_ARVALID,
      m_axi_awaddr(38 downto 0) => s00_couplers_to_xbar_AWADDR(38 downto 0),
      m_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      m_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      m_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_couplers_to_xbar_AWVALID,
      m_axi_bready => s00_couplers_to_xbar_BREADY,
      m_axi_rready => s00_couplers_to_xbar_RREADY,
      m_axi_wdata(511 downto 0) => s00_couplers_to_xbar_WDATA(511 downto 0),
      m_axi_wlast => s00_couplers_to_xbar_WLAST,
      m_axi_wstrb(63 downto 0) => s00_couplers_to_xbar_WSTRB(63 downto 0),
      m_axi_wvalid => s00_couplers_to_xbar_WVALID,
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID,
      s_axi_rdata(511 downto 0) => s00_couplers_to_xbar_RDATA(511 downto 0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY
    );
s01_couplers: entity work.ulp_s01_couplers_imp_9DN451
     port map (
      ACLK => ACLK,
      M_AXI_araddr(63 downto 0) => s01_couplers_to_xbar_ARADDR(63 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s01_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY,
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(63 downto 0) => s01_couplers_to_xbar_AWADDR(63 downto 0),
      M_AXI_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s01_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY,
      M_AXI_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID,
      M_AXI_rdata(511 downto 0) => s01_couplers_to_xbar_RDATA(1023 downto 512),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST,
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID,
      M_AXI_wdata(511 downto 0) => s01_couplers_to_xbar_WDATA(511 downto 0),
      M_AXI_wlast => s01_couplers_to_xbar_WLAST,
      M_AXI_wready => s01_couplers_to_xbar_WREADY,
      M_AXI_wstrb(63 downto 0) => s01_couplers_to_xbar_WSTRB(63 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S01_ACLK => S01_ACLK,
      S01_ARESETN => S01_ARESETN,
      S01_AXI_araddr(63 downto 0) => S01_AXI_araddr(63 downto 0),
      S01_AXI_arburst(1 downto 0) => S01_AXI_arburst(1 downto 0),
      S01_AXI_arcache(3 downto 0) => S01_AXI_arcache(3 downto 0),
      S01_AXI_arid(0) => S01_AXI_arid(0),
      S01_AXI_arlen(7 downto 0) => S01_AXI_arlen(7 downto 0),
      S01_AXI_arlock(0) => S01_AXI_arlock(0),
      S01_AXI_arprot(2 downto 0) => S01_AXI_arprot(2 downto 0),
      S01_AXI_arqos(3 downto 0) => S01_AXI_arqos(3 downto 0),
      S01_AXI_arready => S01_AXI_arready,
      S01_AXI_arregion(3 downto 0) => S01_AXI_arregion(3 downto 0),
      S01_AXI_arsize(2 downto 0) => S01_AXI_arsize(2 downto 0),
      S01_AXI_arvalid => S01_AXI_arvalid,
      S01_AXI_awaddr(63 downto 0) => S01_AXI_awaddr(63 downto 0),
      S01_AXI_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      S01_AXI_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      S01_AXI_awid(0) => S01_AXI_awid(0),
      S01_AXI_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      S01_AXI_awlock(0) => S01_AXI_awlock(0),
      S01_AXI_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      S01_AXI_awqos(3 downto 0) => S01_AXI_awqos(3 downto 0),
      S01_AXI_awready => S01_AXI_awready,
      S01_AXI_awregion(3 downto 0) => S01_AXI_awregion(3 downto 0),
      S01_AXI_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      S01_AXI_awvalid => S01_AXI_awvalid,
      S01_AXI_bid(0) => S01_AXI_bid(0),
      S01_AXI_bready => S01_AXI_bready,
      S01_AXI_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      S01_AXI_bvalid => S01_AXI_bvalid,
      S01_AXI_rdata(31 downto 0) => S01_AXI_rdata(31 downto 0),
      S01_AXI_rid(0) => S01_AXI_rid(0),
      S01_AXI_rlast => S01_AXI_rlast,
      S01_AXI_rready => S01_AXI_rready,
      S01_AXI_rresp(1 downto 0) => S01_AXI_rresp(1 downto 0),
      S01_AXI_rvalid => S01_AXI_rvalid,
      S01_AXI_wdata(31 downto 0) => S01_AXI_wdata(31 downto 0),
      S01_AXI_wlast => S01_AXI_wlast,
      S01_AXI_wready => S01_AXI_wready,
      S01_AXI_wstrb(3 downto 0) => S01_AXI_wstrb(3 downto 0),
      S01_AXI_wvalid => S01_AXI_wvalid
    );
xbar: component ulp_xbar_4
     port map (
      aclk => ACLK,
      aresetn => S01_ARESETN,
      m_axi_araddr(63 downto 0) => M00_AXI_araddr(63 downto 0),
      m_axi_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      m_axi_arid(0) => M00_AXI_arid(0),
      m_axi_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => M00_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      m_axi_arready(0) => M00_AXI_arready,
      m_axi_arregion(3 downto 0) => M00_AXI_arregion(3 downto 0),
      m_axi_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      m_axi_arvalid(0) => M00_AXI_arvalid,
      m_axi_awaddr(63 downto 0) => M00_AXI_awaddr(63 downto 0),
      m_axi_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      m_axi_awid(0) => M00_AXI_awid(0),
      m_axi_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => M00_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      m_axi_awready(0) => M00_AXI_awready,
      m_axi_awregion(3 downto 0) => M00_AXI_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      m_axi_awvalid(0) => M00_AXI_awvalid,
      m_axi_bid(0) => M00_AXI_bid(0),
      m_axi_bready(0) => M00_AXI_bready,
      m_axi_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      m_axi_bvalid(0) => M00_AXI_bvalid,
      m_axi_rdata(511 downto 0) => M00_AXI_rdata(511 downto 0),
      m_axi_rid(0) => M00_AXI_rid(0),
      m_axi_rlast(0) => M00_AXI_rlast,
      m_axi_rready(0) => M00_AXI_rready,
      m_axi_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      m_axi_rvalid(0) => M00_AXI_rvalid,
      m_axi_wdata(511 downto 0) => M00_AXI_wdata(511 downto 0),
      m_axi_wlast(0) => M00_AXI_wlast,
      m_axi_wready(0) => M00_AXI_wready,
      m_axi_wstrb(63 downto 0) => M00_AXI_wstrb(63 downto 0),
      m_axi_wvalid(0) => M00_AXI_wvalid,
      s_axi_araddr(127 downto 64) => s01_couplers_to_xbar_ARADDR(63 downto 0),
      s_axi_araddr(63 downto 39) => B"0000000000000000000000000",
      s_axi_araddr(38 downto 0) => s00_couplers_to_xbar_ARADDR(38 downto 0),
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => B"00",
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK,
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY,
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(127 downto 64) => s01_couplers_to_xbar_AWADDR(63 downto 0),
      s_axi_awaddr(63 downto 39) => B"0000000000000000000000000",
      s_axi_awaddr(38 downto 0) => s00_couplers_to_xbar_AWADDR(38 downto 0),
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => B"00",
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK,
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY,
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY,
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(1 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(1 downto 0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID,
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID,
      s_axi_rdata(1023 downto 512) => s01_couplers_to_xbar_RDATA(1023 downto 512),
      s_axi_rdata(511 downto 0) => s00_couplers_to_xbar_RDATA(511 downto 0),
      s_axi_rid(1 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(1 downto 0),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST,
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID,
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wdata(1023 downto 512) => s01_couplers_to_xbar_WDATA(511 downto 0),
      s_axi_wdata(511 downto 0) => s00_couplers_to_xbar_WDATA(511 downto 0),
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY,
      s_axi_wstrb(127 downto 64) => s01_couplers_to_xbar_WSTRB(63 downto 0),
      s_axi_wstrb(63 downto 0) => s00_couplers_to_xbar_WSTRB(63 downto 0),
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_axi_interconnect_0_1 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end ulp_axi_interconnect_0_1;

architecture STRUCTURE of ulp_axi_interconnect_0_1 is
  component ulp_xbar_3 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 49 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 49 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component ulp_xbar_3;
  signal \<const0>\ : STD_LOGIC;
  signal \^m01_axi_araddr\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^m01_axi_awaddr\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal xbar_n_175 : STD_LOGIC;
  signal xbar_n_176 : STD_LOGIC;
  signal xbar_n_177 : STD_LOGIC;
  signal xbar_n_178 : STD_LOGIC;
  signal xbar_n_179 : STD_LOGIC;
  signal xbar_n_180 : STD_LOGIC;
  signal xbar_n_181 : STD_LOGIC;
  signal xbar_n_182 : STD_LOGIC;
  signal xbar_n_183 : STD_LOGIC;
  signal xbar_n_184 : STD_LOGIC;
  signal xbar_n_185 : STD_LOGIC;
  signal xbar_n_186 : STD_LOGIC;
  signal xbar_n_187 : STD_LOGIC;
  signal xbar_n_41 : STD_LOGIC;
  signal xbar_n_42 : STD_LOGIC;
  signal xbar_n_43 : STD_LOGIC;
  signal xbar_n_44 : STD_LOGIC;
  signal xbar_n_45 : STD_LOGIC;
  signal xbar_n_46 : STD_LOGIC;
  signal xbar_n_47 : STD_LOGIC;
  signal xbar_n_48 : STD_LOGIC;
  signal xbar_n_49 : STD_LOGIC;
  signal xbar_n_50 : STD_LOGIC;
  signal xbar_n_51 : STD_LOGIC;
  signal xbar_n_52 : STD_LOGIC;
  signal xbar_n_53 : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC;
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 3 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1";
begin
  M01_AXI_araddr(24) <= \<const0>\;
  M01_AXI_araddr(23) <= \<const0>\;
  M01_AXI_araddr(22) <= \<const0>\;
  M01_AXI_araddr(21) <= \<const0>\;
  M01_AXI_araddr(20) <= \<const0>\;
  M01_AXI_araddr(19) <= \<const0>\;
  M01_AXI_araddr(18) <= \<const0>\;
  M01_AXI_araddr(17) <= \<const0>\;
  M01_AXI_araddr(16) <= \<const0>\;
  M01_AXI_araddr(15) <= \<const0>\;
  M01_AXI_araddr(14) <= \<const0>\;
  M01_AXI_araddr(13) <= \<const0>\;
  M01_AXI_araddr(12) <= \<const0>\;
  M01_AXI_araddr(11 downto 0) <= \^m01_axi_araddr\(11 downto 0);
  M01_AXI_awaddr(24) <= \<const0>\;
  M01_AXI_awaddr(23) <= \<const0>\;
  M01_AXI_awaddr(22) <= \<const0>\;
  M01_AXI_awaddr(21) <= \<const0>\;
  M01_AXI_awaddr(20) <= \<const0>\;
  M01_AXI_awaddr(19) <= \<const0>\;
  M01_AXI_awaddr(18) <= \<const0>\;
  M01_AXI_awaddr(17) <= \<const0>\;
  M01_AXI_awaddr(16) <= \<const0>\;
  M01_AXI_awaddr(15) <= \<const0>\;
  M01_AXI_awaddr(14) <= \<const0>\;
  M01_AXI_awaddr(13) <= \<const0>\;
  M01_AXI_awaddr(12) <= \<const0>\;
  M01_AXI_awaddr(11 downto 0) <= \^m01_axi_awaddr\(11 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
m00_couplers: entity work.ulp_m00_couplers_imp_1T9TXXO
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M00_ACLK => M00_ACLK,
      M00_ARESETN => M00_ARESETN,
      M00_AXI_araddr(25 downto 0) => M00_AXI_araddr(25 downto 0),
      M00_AXI_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(25 downto 0) => M00_AXI_awaddr(25 downto 0),
      M00_AXI_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_wstrb(3 downto 0) => M00_AXI_wstrb(3 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      m_axi_araddr(24 downto 0) => xbar_to_m00_couplers_ARADDR(24 downto 0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID,
      m_axi_awaddr(24 downto 0) => xbar_to_m00_couplers_AWADDR(24 downto 0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID,
      s_axi_arready => xbar_to_m00_couplers_ARREADY,
      s_axi_awready => xbar_to_m00_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m00_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m00_couplers_RVALID,
      s_axi_wready => xbar_to_m00_couplers_WREADY
    );
xbar: component ulp_xbar_3
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(49) => xbar_n_175,
      m_axi_araddr(48) => xbar_n_176,
      m_axi_araddr(47) => xbar_n_177,
      m_axi_araddr(46) => xbar_n_178,
      m_axi_araddr(45) => xbar_n_179,
      m_axi_araddr(44) => xbar_n_180,
      m_axi_araddr(43) => xbar_n_181,
      m_axi_araddr(42) => xbar_n_182,
      m_axi_araddr(41) => xbar_n_183,
      m_axi_araddr(40) => xbar_n_184,
      m_axi_araddr(39) => xbar_n_185,
      m_axi_araddr(38) => xbar_n_186,
      m_axi_araddr(37) => xbar_n_187,
      m_axi_araddr(36 downto 25) => \^m01_axi_araddr\(11 downto 0),
      m_axi_araddr(24 downto 0) => xbar_to_m00_couplers_ARADDR(24 downto 0),
      m_axi_arprot(5 downto 3) => NLW_xbar_m_axi_arprot_UNCONNECTED(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(1) => M01_AXI_arready(0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(1) => M01_AXI_arvalid(0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID,
      m_axi_awaddr(49) => xbar_n_41,
      m_axi_awaddr(48) => xbar_n_42,
      m_axi_awaddr(47) => xbar_n_43,
      m_axi_awaddr(46) => xbar_n_44,
      m_axi_awaddr(45) => xbar_n_45,
      m_axi_awaddr(44) => xbar_n_46,
      m_axi_awaddr(43) => xbar_n_47,
      m_axi_awaddr(42) => xbar_n_48,
      m_axi_awaddr(41) => xbar_n_49,
      m_axi_awaddr(40) => xbar_n_50,
      m_axi_awaddr(39) => xbar_n_51,
      m_axi_awaddr(38) => xbar_n_52,
      m_axi_awaddr(37) => xbar_n_53,
      m_axi_awaddr(36 downto 25) => \^m01_axi_awaddr\(11 downto 0),
      m_axi_awaddr(24 downto 0) => xbar_to_m00_couplers_AWADDR(24 downto 0),
      m_axi_awprot(5 downto 3) => NLW_xbar_m_axi_awprot_UNCONNECTED(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(1) => M01_AXI_awready(0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(1) => M01_AXI_awvalid(0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID,
      m_axi_bready(1) => M01_AXI_bready(0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY,
      m_axi_bresp(3 downto 2) => M01_AXI_bresp(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => M01_AXI_bvalid(0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 32) => M01_AXI_rdata(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(1) => M01_AXI_rready(0),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY,
      m_axi_rresp(3 downto 2) => M01_AXI_rresp(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => M01_AXI_rvalid(0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 32) => M01_AXI_wdata(31 downto 0),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(1) => M01_AXI_wready(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 4) => M01_AXI_wstrb(3 downto 0),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(1) => M01_AXI_wvalid(0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID,
      s_axi_araddr(24 downto 0) => S00_AXI_araddr(24 downto 0),
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arready(0) => S00_AXI_arready(0),
      s_axi_arvalid(0) => S00_AXI_arvalid(0),
      s_axi_awaddr(24 downto 0) => S00_AXI_awaddr(24 downto 0),
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awready(0) => S00_AXI_awready(0),
      s_axi_awvalid(0) => S00_AXI_awvalid(0),
      s_axi_bready(0) => S00_AXI_bready(0),
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid(0) => S00_AXI_bvalid(0),
      s_axi_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      s_axi_rready(0) => S00_AXI_rready(0),
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_rvalid(0) => S00_AXI_rvalid(0),
      s_axi_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      s_axi_wready(0) => S00_AXI_wready(0),
      s_axi_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      s_axi_wvalid(0) => S00_AXI_wvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_axi_interconnect_0_p_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end ulp_axi_interconnect_0_p_0;

architecture STRUCTURE of ulp_axi_interconnect_0_p_0 is
begin
s00_couplers: entity work.ulp_s00_couplers_imp_U66VNK
     port map (
      M00_AXI_araddr(38 downto 0) => M00_AXI_araddr(38 downto 0),
      M00_AXI_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      M00_AXI_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      M00_AXI_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      M00_AXI_arlock(0) => M00_AXI_arlock(0),
      M00_AXI_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      M00_AXI_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_arregion(3 downto 0) => M00_AXI_arregion(3 downto 0),
      M00_AXI_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(38 downto 0) => M00_AXI_awaddr(38 downto 0),
      M00_AXI_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      M00_AXI_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      M00_AXI_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      M00_AXI_awlock(0) => M00_AXI_awlock(0),
      M00_AXI_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      M00_AXI_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_awregion(3 downto 0) => M00_AXI_awregion(3 downto 0),
      M00_AXI_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_rdata(511 downto 0) => M00_AXI_rdata(511 downto 0),
      M00_AXI_rlast => M00_AXI_rlast,
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_wdata(511 downto 0) => M00_AXI_wdata(511 downto 0),
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_wstrb(63 downto 0) => M00_AXI_wstrb(63 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      S00_AXI_araddr(38 downto 0) => S00_AXI_araddr(38 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(38 downto 0) => S00_AXI_awaddr(38 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(511 downto 0) => S00_AXI_rdata(511 downto 0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(511 downto 0) => S00_AXI_wdata(511 downto 0),
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(63 downto 0) => S00_AXI_wstrb(63 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_axi_interconnect_1_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M01_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M01_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arlock : out STD_LOGIC;
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M01_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    M01_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awlock : out STD_LOGIC;
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M01_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXI_rlast : out STD_LOGIC;
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC;
    S03_ACLK : in STD_LOGIC;
    S03_ARESETN : in STD_LOGIC;
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S03_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arready : out STD_LOGIC;
    S03_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arvalid : in STD_LOGIC;
    S03_AXI_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    S03_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awready : out STD_LOGIC;
    S03_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awvalid : in STD_LOGIC;
    S03_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_bready : in STD_LOGIC;
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC;
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S03_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_rlast : out STD_LOGIC;
    S03_AXI_rready : in STD_LOGIC;
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rvalid : out STD_LOGIC;
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S03_AXI_wlast : in STD_LOGIC;
    S03_AXI_wready : out STD_LOGIC;
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_wvalid : in STD_LOGIC
  );
end ulp_axi_interconnect_1_0;

architecture STRUCTURE of ulp_axi_interconnect_1_0 is
  component ulp_s03_mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_s03_mmu_0;
  component ulp_xbar_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 2047 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 2047 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component ulp_xbar_2;
  signal \<const0>\ : STD_LOGIC;
  signal \^m01_axi_araddr\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \^m01_axi_awaddr\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 11 downto 6 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 1023 downto 512 );
  signal s01_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 11 downto 6 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal s02_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal s02_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s02_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 1535 downto 1024 );
  signal s02_couplers_to_xbar_RLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s02_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s02_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal s03_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s03_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal s03_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s03_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 2047 downto 1536 );
  signal s03_couplers_to_xbar_RLAST : STD_LOGIC;
  signal s03_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal s03_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s03_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal s03_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s03_mmu_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal s03_mmu_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_mmu_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_mmu_M_AXI_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_mmu_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_mmu_M_AXI_ARLOCK : STD_LOGIC;
  signal s03_mmu_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_mmu_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_mmu_M_AXI_ARREADY : STD_LOGIC;
  signal s03_mmu_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_mmu_M_AXI_ARVALID : STD_LOGIC;
  signal s03_mmu_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal s03_mmu_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_mmu_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_mmu_M_AXI_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_mmu_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_mmu_M_AXI_AWLOCK : STD_LOGIC;
  signal s03_mmu_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_mmu_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_mmu_M_AXI_AWREADY : STD_LOGIC;
  signal s03_mmu_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_mmu_M_AXI_AWVALID : STD_LOGIC;
  signal s03_mmu_M_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_mmu_M_AXI_BREADY : STD_LOGIC;
  signal s03_mmu_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_mmu_M_AXI_BVALID : STD_LOGIC;
  signal s03_mmu_M_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s03_mmu_M_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_mmu_M_AXI_RLAST : STD_LOGIC;
  signal s03_mmu_M_AXI_RREADY : STD_LOGIC;
  signal s03_mmu_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_mmu_M_AXI_RVALID : STD_LOGIC;
  signal s03_mmu_M_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s03_mmu_M_AXI_WLAST : STD_LOGIC;
  signal s03_mmu_M_AXI_WREADY : STD_LOGIC;
  signal s03_mmu_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s03_mmu_M_AXI_WVALID : STD_LOGIC;
  signal xbar_n_2148 : STD_LOGIC;
  signal xbar_n_2149 : STD_LOGIC;
  signal xbar_n_2150 : STD_LOGIC;
  signal xbar_n_2151 : STD_LOGIC;
  signal xbar_n_2152 : STD_LOGIC;
  signal xbar_n_2153 : STD_LOGIC;
  signal xbar_n_2154 : STD_LOGIC;
  signal xbar_n_2155 : STD_LOGIC;
  signal xbar_n_2156 : STD_LOGIC;
  signal xbar_n_2157 : STD_LOGIC;
  signal xbar_n_2158 : STD_LOGIC;
  signal xbar_n_2159 : STD_LOGIC;
  signal xbar_n_2160 : STD_LOGIC;
  signal xbar_n_2161 : STD_LOGIC;
  signal xbar_n_2162 : STD_LOGIC;
  signal xbar_n_2163 : STD_LOGIC;
  signal xbar_n_2164 : STD_LOGIC;
  signal xbar_n_2165 : STD_LOGIC;
  signal xbar_n_2166 : STD_LOGIC;
  signal xbar_n_2167 : STD_LOGIC;
  signal xbar_n_2168 : STD_LOGIC;
  signal xbar_n_2169 : STD_LOGIC;
  signal xbar_n_2170 : STD_LOGIC;
  signal xbar_n_2171 : STD_LOGIC;
  signal xbar_n_2172 : STD_LOGIC;
  signal xbar_n_2173 : STD_LOGIC;
  signal xbar_n_2174 : STD_LOGIC;
  signal xbar_n_2175 : STD_LOGIC;
  signal xbar_n_2176 : STD_LOGIC;
  signal xbar_n_2177 : STD_LOGIC;
  signal xbar_n_2178 : STD_LOGIC;
  signal xbar_n_2179 : STD_LOGIC;
  signal xbar_n_2180 : STD_LOGIC;
  signal xbar_n_2181 : STD_LOGIC;
  signal xbar_n_2182 : STD_LOGIC;
  signal xbar_n_2183 : STD_LOGIC;
  signal xbar_n_2184 : STD_LOGIC;
  signal xbar_n_2185 : STD_LOGIC;
  signal xbar_n_2186 : STD_LOGIC;
  signal xbar_n_2187 : STD_LOGIC;
  signal xbar_n_2188 : STD_LOGIC;
  signal xbar_n_2189 : STD_LOGIC;
  signal xbar_n_2190 : STD_LOGIC;
  signal xbar_n_2191 : STD_LOGIC;
  signal xbar_n_2192 : STD_LOGIC;
  signal xbar_n_2193 : STD_LOGIC;
  signal xbar_n_2194 : STD_LOGIC;
  signal xbar_n_2195 : STD_LOGIC;
  signal xbar_n_2196 : STD_LOGIC;
  signal xbar_n_3506 : STD_LOGIC;
  signal xbar_n_3507 : STD_LOGIC;
  signal xbar_n_3508 : STD_LOGIC;
  signal xbar_n_3509 : STD_LOGIC;
  signal xbar_n_3510 : STD_LOGIC;
  signal xbar_n_3511 : STD_LOGIC;
  signal xbar_n_3512 : STD_LOGIC;
  signal xbar_n_3513 : STD_LOGIC;
  signal xbar_n_3514 : STD_LOGIC;
  signal xbar_n_3515 : STD_LOGIC;
  signal xbar_n_3516 : STD_LOGIC;
  signal xbar_n_3517 : STD_LOGIC;
  signal xbar_n_3518 : STD_LOGIC;
  signal xbar_n_3519 : STD_LOGIC;
  signal xbar_n_3520 : STD_LOGIC;
  signal xbar_n_3521 : STD_LOGIC;
  signal xbar_n_3522 : STD_LOGIC;
  signal xbar_n_3523 : STD_LOGIC;
  signal xbar_n_3524 : STD_LOGIC;
  signal xbar_n_3525 : STD_LOGIC;
  signal xbar_n_3526 : STD_LOGIC;
  signal xbar_n_3527 : STD_LOGIC;
  signal xbar_n_3528 : STD_LOGIC;
  signal xbar_n_3529 : STD_LOGIC;
  signal xbar_n_3530 : STD_LOGIC;
  signal xbar_n_3531 : STD_LOGIC;
  signal xbar_n_3532 : STD_LOGIC;
  signal xbar_n_3533 : STD_LOGIC;
  signal xbar_n_3534 : STD_LOGIC;
  signal xbar_n_3535 : STD_LOGIC;
  signal xbar_n_3536 : STD_LOGIC;
  signal xbar_n_3537 : STD_LOGIC;
  signal xbar_n_3538 : STD_LOGIC;
  signal xbar_n_3539 : STD_LOGIC;
  signal xbar_n_3540 : STD_LOGIC;
  signal xbar_n_3541 : STD_LOGIC;
  signal xbar_n_3542 : STD_LOGIC;
  signal xbar_n_3543 : STD_LOGIC;
  signal xbar_n_3544 : STD_LOGIC;
  signal xbar_n_3545 : STD_LOGIC;
  signal xbar_n_3546 : STD_LOGIC;
  signal xbar_n_3547 : STD_LOGIC;
  signal xbar_n_3548 : STD_LOGIC;
  signal xbar_n_3549 : STD_LOGIC;
  signal xbar_n_3550 : STD_LOGIC;
  signal xbar_n_3551 : STD_LOGIC;
  signal xbar_n_3552 : STD_LOGIC;
  signal xbar_n_3553 : STD_LOGIC;
  signal xbar_n_3554 : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC;
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC;
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC;
  signal NLW_xbar_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_xbar_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 12 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 12 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of s03_mmu : label is "axi_mmu_v2_1_22_top,Vivado 2021.1";
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1";
begin
  M01_AXI_araddr(63) <= \<const0>\;
  M01_AXI_araddr(62) <= \<const0>\;
  M01_AXI_araddr(61) <= \<const0>\;
  M01_AXI_araddr(60) <= \<const0>\;
  M01_AXI_araddr(59) <= \<const0>\;
  M01_AXI_araddr(58) <= \<const0>\;
  M01_AXI_araddr(57) <= \<const0>\;
  M01_AXI_araddr(56) <= \<const0>\;
  M01_AXI_araddr(55) <= \<const0>\;
  M01_AXI_araddr(54) <= \<const0>\;
  M01_AXI_araddr(53) <= \<const0>\;
  M01_AXI_araddr(52) <= \<const0>\;
  M01_AXI_araddr(51) <= \<const0>\;
  M01_AXI_araddr(50) <= \<const0>\;
  M01_AXI_araddr(49) <= \<const0>\;
  M01_AXI_araddr(48) <= \<const0>\;
  M01_AXI_araddr(47) <= \<const0>\;
  M01_AXI_araddr(46) <= \<const0>\;
  M01_AXI_araddr(45) <= \<const0>\;
  M01_AXI_araddr(44) <= \<const0>\;
  M01_AXI_araddr(43) <= \<const0>\;
  M01_AXI_araddr(42) <= \<const0>\;
  M01_AXI_araddr(41) <= \<const0>\;
  M01_AXI_araddr(40) <= \<const0>\;
  M01_AXI_araddr(39) <= \<const0>\;
  M01_AXI_araddr(38) <= \<const0>\;
  M01_AXI_araddr(37) <= \<const0>\;
  M01_AXI_araddr(36) <= \<const0>\;
  M01_AXI_araddr(35) <= \<const0>\;
  M01_AXI_araddr(34) <= \<const0>\;
  M01_AXI_araddr(33) <= \<const0>\;
  M01_AXI_araddr(32) <= \<const0>\;
  M01_AXI_araddr(31) <= \<const0>\;
  M01_AXI_araddr(30) <= \<const0>\;
  M01_AXI_araddr(29) <= \<const0>\;
  M01_AXI_araddr(28) <= \<const0>\;
  M01_AXI_araddr(27) <= \<const0>\;
  M01_AXI_araddr(26) <= \<const0>\;
  M01_AXI_araddr(25) <= \<const0>\;
  M01_AXI_araddr(24) <= \<const0>\;
  M01_AXI_araddr(23) <= \<const0>\;
  M01_AXI_araddr(22) <= \<const0>\;
  M01_AXI_araddr(21) <= \<const0>\;
  M01_AXI_araddr(20) <= \<const0>\;
  M01_AXI_araddr(19) <= \<const0>\;
  M01_AXI_araddr(18) <= \<const0>\;
  M01_AXI_araddr(17) <= \<const0>\;
  M01_AXI_araddr(16) <= \<const0>\;
  M01_AXI_araddr(15) <= \<const0>\;
  M01_AXI_araddr(14 downto 0) <= \^m01_axi_araddr\(14 downto 0);
  M01_AXI_awaddr(63) <= \<const0>\;
  M01_AXI_awaddr(62) <= \<const0>\;
  M01_AXI_awaddr(61) <= \<const0>\;
  M01_AXI_awaddr(60) <= \<const0>\;
  M01_AXI_awaddr(59) <= \<const0>\;
  M01_AXI_awaddr(58) <= \<const0>\;
  M01_AXI_awaddr(57) <= \<const0>\;
  M01_AXI_awaddr(56) <= \<const0>\;
  M01_AXI_awaddr(55) <= \<const0>\;
  M01_AXI_awaddr(54) <= \<const0>\;
  M01_AXI_awaddr(53) <= \<const0>\;
  M01_AXI_awaddr(52) <= \<const0>\;
  M01_AXI_awaddr(51) <= \<const0>\;
  M01_AXI_awaddr(50) <= \<const0>\;
  M01_AXI_awaddr(49) <= \<const0>\;
  M01_AXI_awaddr(48) <= \<const0>\;
  M01_AXI_awaddr(47) <= \<const0>\;
  M01_AXI_awaddr(46) <= \<const0>\;
  M01_AXI_awaddr(45) <= \<const0>\;
  M01_AXI_awaddr(44) <= \<const0>\;
  M01_AXI_awaddr(43) <= \<const0>\;
  M01_AXI_awaddr(42) <= \<const0>\;
  M01_AXI_awaddr(41) <= \<const0>\;
  M01_AXI_awaddr(40) <= \<const0>\;
  M01_AXI_awaddr(39) <= \<const0>\;
  M01_AXI_awaddr(38) <= \<const0>\;
  M01_AXI_awaddr(37) <= \<const0>\;
  M01_AXI_awaddr(36) <= \<const0>\;
  M01_AXI_awaddr(35) <= \<const0>\;
  M01_AXI_awaddr(34) <= \<const0>\;
  M01_AXI_awaddr(33) <= \<const0>\;
  M01_AXI_awaddr(32) <= \<const0>\;
  M01_AXI_awaddr(31) <= \<const0>\;
  M01_AXI_awaddr(30) <= \<const0>\;
  M01_AXI_awaddr(29) <= \<const0>\;
  M01_AXI_awaddr(28) <= \<const0>\;
  M01_AXI_awaddr(27) <= \<const0>\;
  M01_AXI_awaddr(26) <= \<const0>\;
  M01_AXI_awaddr(25) <= \<const0>\;
  M01_AXI_awaddr(24) <= \<const0>\;
  M01_AXI_awaddr(23) <= \<const0>\;
  M01_AXI_awaddr(22) <= \<const0>\;
  M01_AXI_awaddr(21) <= \<const0>\;
  M01_AXI_awaddr(20) <= \<const0>\;
  M01_AXI_awaddr(19) <= \<const0>\;
  M01_AXI_awaddr(18) <= \<const0>\;
  M01_AXI_awaddr(17) <= \<const0>\;
  M01_AXI_awaddr(16) <= \<const0>\;
  M01_AXI_awaddr(15) <= \<const0>\;
  M01_AXI_awaddr(14 downto 0) <= \^m01_axi_awaddr\(14 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
m00_couplers: entity work.ulp_m00_couplers_imp_1MIVJUX
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M00_ACLK => M00_ACLK,
      M00_ARESETN => M00_ARESETN,
      M00_AXI_araddr(31 downto 0) => M00_AXI_araddr(31 downto 0),
      M00_AXI_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      M00_AXI_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      M00_AXI_arid(5 downto 0) => M00_AXI_arid(5 downto 0),
      M00_AXI_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      M00_AXI_arlock(0) => M00_AXI_arlock(0),
      M00_AXI_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      M00_AXI_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(31 downto 0) => M00_AXI_awaddr(31 downto 0),
      M00_AXI_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      M00_AXI_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      M00_AXI_awid(5 downto 0) => M00_AXI_awid(5 downto 0),
      M00_AXI_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      M00_AXI_awlock(0) => M00_AXI_awlock(0),
      M00_AXI_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      M00_AXI_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bid(5 downto 0) => M00_AXI_bid(5 downto 0),
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_rdata(511 downto 0) => M00_AXI_rdata(511 downto 0),
      M00_AXI_rid(5 downto 0) => M00_AXI_rid(5 downto 0),
      M00_AXI_rlast => M00_AXI_rlast,
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_wdata(511 downto 0) => M00_AXI_wdata(511 downto 0),
      M00_AXI_wlast => M00_AXI_wlast,
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_wstrb(63 downto 0) => M00_AXI_wstrb(63 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(5 downto 0) => xbar_to_m00_couplers_ARID(5 downto 0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK,
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(5 downto 0) => xbar_to_m00_couplers_AWID(5 downto 0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK,
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY,
      m_axi_wdata(511 downto 0) => xbar_to_m00_couplers_WDATA(511 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST,
      m_axi_wstrb(63 downto 0) => xbar_to_m00_couplers_WSTRB(63 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID,
      s_axi_arready => xbar_to_m00_couplers_ARREADY,
      s_axi_awready => xbar_to_m00_couplers_AWREADY,
      s_axi_bid(5 downto 0) => xbar_to_m00_couplers_BID(5 downto 0),
      s_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m00_couplers_BVALID,
      s_axi_rdata(511 downto 0) => xbar_to_m00_couplers_RDATA(511 downto 0),
      s_axi_rid(5 downto 0) => xbar_to_m00_couplers_RID(5 downto 0),
      s_axi_rlast => xbar_to_m00_couplers_RLAST,
      s_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m00_couplers_RVALID,
      s_axi_wready => xbar_to_m00_couplers_WREADY
    );
s00_couplers: entity work.ulp_s00_couplers_imp_YEI3CJ
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      S00_AXI_araddr(63 downto 0) => S00_AXI_araddr(63 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arid(0) => S00_AXI_arid(0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock(0) => S00_AXI_arlock(0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(63 downto 0) => S00_AXI_awaddr(63 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awid(0) => S00_AXI_awid(0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock(0) => S00_AXI_awlock(0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bid(0) => S00_AXI_bid(0),
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(511 downto 0) => S00_AXI_rdata(511 downto 0),
      S00_AXI_rid(0) => S00_AXI_rid(0),
      S00_AXI_rlast => S00_AXI_rlast,
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(511 downto 0) => S00_AXI_wdata(511 downto 0),
      S00_AXI_wlast => S00_AXI_wlast,
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(63 downto 0) => S00_AXI_wstrb(63 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid,
      m_axi_araddr(63 downto 0) => s00_couplers_to_xbar_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      m_axi_arid(0) => s00_couplers_to_xbar_ARID,
      m_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      m_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      m_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      m_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      m_axi_arvalid => s00_couplers_to_xbar_ARVALID,
      m_axi_awaddr(63 downto 0) => s00_couplers_to_xbar_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      m_axi_awid(0) => s00_couplers_to_xbar_AWID,
      m_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      m_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      m_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      m_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      m_axi_awvalid => s00_couplers_to_xbar_AWVALID,
      m_axi_bready => s00_couplers_to_xbar_BREADY,
      m_axi_rready => s00_couplers_to_xbar_RREADY,
      m_axi_wdata(511 downto 0) => s00_couplers_to_xbar_WDATA(511 downto 0),
      m_axi_wlast => s00_couplers_to_xbar_WLAST,
      m_axi_wstrb(63 downto 0) => s00_couplers_to_xbar_WSTRB(63 downto 0),
      m_axi_wvalid => s00_couplers_to_xbar_WVALID,
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY,
      s_axi_bid(0) => s00_couplers_to_xbar_BID(0),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID,
      s_axi_rdata(511 downto 0) => s00_couplers_to_xbar_RDATA(511 downto 0),
      s_axi_rid(0) => s00_couplers_to_xbar_RID(0),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY
    );
s01_couplers: entity work.ulp_s01_couplers_imp_1A6BUUU
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      S01_AXI_araddr(38 downto 0) => S01_AXI_araddr(38 downto 0),
      S01_AXI_arburst(1 downto 0) => S01_AXI_arburst(1 downto 0),
      S01_AXI_arcache(3 downto 0) => S01_AXI_arcache(3 downto 0),
      S01_AXI_arid(3 downto 0) => S01_AXI_arid(3 downto 0),
      S01_AXI_arlen(7 downto 0) => S01_AXI_arlen(7 downto 0),
      S01_AXI_arlock(0) => S01_AXI_arlock(0),
      S01_AXI_arprot(2 downto 0) => S01_AXI_arprot(2 downto 0),
      S01_AXI_arqos(3 downto 0) => S01_AXI_arqos(3 downto 0),
      S01_AXI_arready => S01_AXI_arready,
      S01_AXI_arregion(3 downto 0) => S01_AXI_arregion(3 downto 0),
      S01_AXI_arsize(2 downto 0) => S01_AXI_arsize(2 downto 0),
      S01_AXI_arvalid => S01_AXI_arvalid,
      S01_AXI_awaddr(38 downto 0) => S01_AXI_awaddr(38 downto 0),
      S01_AXI_awburst(1 downto 0) => S01_AXI_awburst(1 downto 0),
      S01_AXI_awcache(3 downto 0) => S01_AXI_awcache(3 downto 0),
      S01_AXI_awid(3 downto 0) => S01_AXI_awid(3 downto 0),
      S01_AXI_awlen(7 downto 0) => S01_AXI_awlen(7 downto 0),
      S01_AXI_awlock(0) => S01_AXI_awlock(0),
      S01_AXI_awprot(2 downto 0) => S01_AXI_awprot(2 downto 0),
      S01_AXI_awqos(3 downto 0) => S01_AXI_awqos(3 downto 0),
      S01_AXI_awready => S01_AXI_awready,
      S01_AXI_awregion(3 downto 0) => S01_AXI_awregion(3 downto 0),
      S01_AXI_awsize(2 downto 0) => S01_AXI_awsize(2 downto 0),
      S01_AXI_awvalid => S01_AXI_awvalid,
      S01_AXI_bid(3 downto 0) => S01_AXI_bid(3 downto 0),
      S01_AXI_bready => S01_AXI_bready,
      S01_AXI_bresp(1 downto 0) => S01_AXI_bresp(1 downto 0),
      S01_AXI_bvalid => S01_AXI_bvalid,
      S01_AXI_rdata(511 downto 0) => S01_AXI_rdata(511 downto 0),
      S01_AXI_rid(3 downto 0) => S01_AXI_rid(3 downto 0),
      S01_AXI_rlast => S01_AXI_rlast,
      S01_AXI_rready => S01_AXI_rready,
      S01_AXI_rresp(1 downto 0) => S01_AXI_rresp(1 downto 0),
      S01_AXI_rvalid => S01_AXI_rvalid,
      S01_AXI_wdata(511 downto 0) => S01_AXI_wdata(511 downto 0),
      S01_AXI_wlast => S01_AXI_wlast,
      S01_AXI_wready => S01_AXI_wready,
      S01_AXI_wstrb(63 downto 0) => S01_AXI_wstrb(63 downto 0),
      S01_AXI_wvalid => S01_AXI_wvalid,
      m_axi_araddr(38 downto 0) => s01_couplers_to_xbar_ARADDR(38 downto 0),
      m_axi_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      m_axi_arid(3 downto 0) => s01_couplers_to_xbar_ARID(3 downto 0),
      m_axi_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      m_axi_arlock(0) => s01_couplers_to_xbar_ARLOCK,
      m_axi_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      m_axi_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      m_axi_arvalid => s01_couplers_to_xbar_ARVALID,
      m_axi_awaddr(38 downto 0) => s01_couplers_to_xbar_AWADDR(38 downto 0),
      m_axi_awburst(1 downto 0) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      m_axi_awid(3 downto 0) => s01_couplers_to_xbar_AWID(3 downto 0),
      m_axi_awlen(7 downto 0) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      m_axi_awlock(0) => s01_couplers_to_xbar_AWLOCK,
      m_axi_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      m_axi_awsize(2 downto 0) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      m_axi_awvalid => s01_couplers_to_xbar_AWVALID,
      m_axi_bready => s01_couplers_to_xbar_BREADY,
      m_axi_rready => s01_couplers_to_xbar_RREADY,
      m_axi_wdata(511 downto 0) => s01_couplers_to_xbar_WDATA(511 downto 0),
      m_axi_wlast => s01_couplers_to_xbar_WLAST,
      m_axi_wstrb(63 downto 0) => s01_couplers_to_xbar_WSTRB(63 downto 0),
      m_axi_wvalid => s01_couplers_to_xbar_WVALID,
      s_axi_arready(0) => s01_couplers_to_xbar_ARREADY,
      s_axi_awready(0) => s01_couplers_to_xbar_AWREADY,
      s_axi_bid(3 downto 0) => s01_couplers_to_xbar_BID(9 downto 6),
      s_axi_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bvalid(0) => s01_couplers_to_xbar_BVALID,
      s_axi_rdata(511 downto 0) => s01_couplers_to_xbar_RDATA(1023 downto 512),
      s_axi_rid(3 downto 0) => s01_couplers_to_xbar_RID(9 downto 6),
      s_axi_rlast(0) => s01_couplers_to_xbar_RLAST,
      s_axi_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rvalid(0) => s01_couplers_to_xbar_RVALID,
      s_axi_wready(0) => s01_couplers_to_xbar_WREADY
    );
s02_couplers: entity work.ulp_s02_couplers_imp_7O094O
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      S02_AXI_araddr(38 downto 0) => S02_AXI_araddr(38 downto 0),
      S02_AXI_arburst(1 downto 0) => S02_AXI_arburst(1 downto 0),
      S02_AXI_arcache(3 downto 0) => S02_AXI_arcache(3 downto 0),
      S02_AXI_arlen(7 downto 0) => S02_AXI_arlen(7 downto 0),
      S02_AXI_arlock(0) => S02_AXI_arlock(0),
      S02_AXI_arprot(2 downto 0) => S02_AXI_arprot(2 downto 0),
      S02_AXI_arqos(3 downto 0) => S02_AXI_arqos(3 downto 0),
      S02_AXI_arready => S02_AXI_arready,
      S02_AXI_arregion(3 downto 0) => S02_AXI_arregion(3 downto 0),
      S02_AXI_arsize(2 downto 0) => S02_AXI_arsize(2 downto 0),
      S02_AXI_arvalid => S02_AXI_arvalid,
      S02_AXI_awaddr(38 downto 0) => S02_AXI_awaddr(38 downto 0),
      S02_AXI_awburst(1 downto 0) => S02_AXI_awburst(1 downto 0),
      S02_AXI_awcache(3 downto 0) => S02_AXI_awcache(3 downto 0),
      S02_AXI_awlen(7 downto 0) => S02_AXI_awlen(7 downto 0),
      S02_AXI_awlock(0) => S02_AXI_awlock(0),
      S02_AXI_awprot(2 downto 0) => S02_AXI_awprot(2 downto 0),
      S02_AXI_awqos(3 downto 0) => S02_AXI_awqos(3 downto 0),
      S02_AXI_awready => S02_AXI_awready,
      S02_AXI_awregion(3 downto 0) => S02_AXI_awregion(3 downto 0),
      S02_AXI_awsize(2 downto 0) => S02_AXI_awsize(2 downto 0),
      S02_AXI_awvalid => S02_AXI_awvalid,
      S02_AXI_bready => S02_AXI_bready,
      S02_AXI_bresp(1 downto 0) => S02_AXI_bresp(1 downto 0),
      S02_AXI_bvalid => S02_AXI_bvalid,
      S02_AXI_rdata(511 downto 0) => S02_AXI_rdata(511 downto 0),
      S02_AXI_rlast => S02_AXI_rlast,
      S02_AXI_rready => S02_AXI_rready,
      S02_AXI_rresp(1 downto 0) => S02_AXI_rresp(1 downto 0),
      S02_AXI_rvalid => S02_AXI_rvalid,
      S02_AXI_wdata(511 downto 0) => S02_AXI_wdata(511 downto 0),
      S02_AXI_wlast => S02_AXI_wlast,
      S02_AXI_wready => S02_AXI_wready,
      S02_AXI_wstrb(63 downto 0) => S02_AXI_wstrb(63 downto 0),
      S02_AXI_wvalid => S02_AXI_wvalid,
      m_axi_araddr(38 downto 0) => s02_couplers_to_xbar_ARADDR(38 downto 0),
      m_axi_arburst(1 downto 0) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      m_axi_arlock(0) => s02_couplers_to_xbar_ARLOCK,
      m_axi_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      m_axi_arsize(2 downto 0) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      m_axi_arvalid => s02_couplers_to_xbar_ARVALID,
      m_axi_awaddr(38 downto 0) => s02_couplers_to_xbar_AWADDR(38 downto 0),
      m_axi_awburst(1 downto 0) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      m_axi_awlock(0) => s02_couplers_to_xbar_AWLOCK,
      m_axi_awprot(2 downto 0) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      m_axi_awsize(2 downto 0) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      m_axi_awvalid => s02_couplers_to_xbar_AWVALID,
      m_axi_bready => s02_couplers_to_xbar_BREADY,
      m_axi_rready => s02_couplers_to_xbar_RREADY,
      m_axi_wdata(511 downto 0) => s02_couplers_to_xbar_WDATA(511 downto 0),
      m_axi_wlast => s02_couplers_to_xbar_WLAST,
      m_axi_wstrb(63 downto 0) => s02_couplers_to_xbar_WSTRB(63 downto 0),
      m_axi_wvalid => s02_couplers_to_xbar_WVALID,
      s_axi_arready(0) => s02_couplers_to_xbar_ARREADY,
      s_axi_awready(0) => s02_couplers_to_xbar_AWREADY,
      s_axi_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bvalid(0) => s02_couplers_to_xbar_BVALID,
      s_axi_rdata(511 downto 0) => s02_couplers_to_xbar_RDATA(1535 downto 1024),
      s_axi_rlast(0) => s02_couplers_to_xbar_RLAST,
      s_axi_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rvalid(0) => s02_couplers_to_xbar_RVALID,
      s_axi_wready(0) => s02_couplers_to_xbar_WREADY
    );
s03_couplers: entity work.ulp_s03_couplers_imp_1IZX0HP
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M_AXI_araddr(38 downto 0) => s03_couplers_to_xbar_ARADDR(38 downto 0),
      M_AXI_arburst(1 downto 0) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s03_couplers_to_xbar_ARLOCK,
      M_AXI_arprot(2 downto 0) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s03_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s03_couplers_to_xbar_ARREADY,
      M_AXI_arsize(2 downto 0) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s03_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(38 downto 0) => s03_couplers_to_xbar_AWADDR(38 downto 0),
      M_AXI_awburst(1 downto 0) => s03_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s03_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s03_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s03_couplers_to_xbar_AWLOCK,
      M_AXI_awprot(2 downto 0) => s03_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s03_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s03_couplers_to_xbar_AWREADY,
      M_AXI_awsize(2 downto 0) => s03_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s03_couplers_to_xbar_AWVALID,
      M_AXI_bready => s03_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s03_couplers_to_xbar_BRESP(7 downto 6),
      M_AXI_bvalid => s03_couplers_to_xbar_BVALID,
      M_AXI_rdata(511 downto 0) => s03_couplers_to_xbar_RDATA(2047 downto 1536),
      M_AXI_rlast => s03_couplers_to_xbar_RLAST,
      M_AXI_rready => s03_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s03_couplers_to_xbar_RRESP(7 downto 6),
      M_AXI_rvalid => s03_couplers_to_xbar_RVALID,
      M_AXI_wdata(511 downto 0) => s03_couplers_to_xbar_WDATA(511 downto 0),
      M_AXI_wlast => s03_couplers_to_xbar_WLAST,
      M_AXI_wready => s03_couplers_to_xbar_WREADY,
      M_AXI_wstrb(63 downto 0) => s03_couplers_to_xbar_WSTRB(63 downto 0),
      M_AXI_wvalid => s03_couplers_to_xbar_WVALID,
      S_AXI_araddr(38 downto 0) => s03_mmu_M_AXI_ARADDR(38 downto 0),
      S_AXI_arburst(1 downto 0) => s03_mmu_M_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => s03_mmu_M_AXI_ARCACHE(3 downto 0),
      S_AXI_arid(3 downto 0) => s03_mmu_M_AXI_ARID(3 downto 0),
      S_AXI_arlen(7 downto 0) => s03_mmu_M_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => s03_mmu_M_AXI_ARLOCK,
      S_AXI_arprot(2 downto 0) => s03_mmu_M_AXI_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => s03_mmu_M_AXI_ARQOS(3 downto 0),
      S_AXI_arready => s03_mmu_M_AXI_ARREADY,
      S_AXI_arsize(2 downto 0) => s03_mmu_M_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid => s03_mmu_M_AXI_ARVALID,
      S_AXI_awaddr(38 downto 0) => s03_mmu_M_AXI_AWADDR(38 downto 0),
      S_AXI_awburst(1 downto 0) => s03_mmu_M_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => s03_mmu_M_AXI_AWCACHE(3 downto 0),
      S_AXI_awid(3 downto 0) => s03_mmu_M_AXI_AWID(3 downto 0),
      S_AXI_awlen(7 downto 0) => s03_mmu_M_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => s03_mmu_M_AXI_AWLOCK,
      S_AXI_awprot(2 downto 0) => s03_mmu_M_AXI_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => s03_mmu_M_AXI_AWQOS(3 downto 0),
      S_AXI_awready => s03_mmu_M_AXI_AWREADY,
      S_AXI_awsize(2 downto 0) => s03_mmu_M_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid => s03_mmu_M_AXI_AWVALID,
      S_AXI_bid(3 downto 0) => s03_mmu_M_AXI_BID(3 downto 0),
      S_AXI_bready => s03_mmu_M_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => s03_mmu_M_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => s03_mmu_M_AXI_BVALID,
      S_AXI_rdata(127 downto 0) => s03_mmu_M_AXI_RDATA(127 downto 0),
      S_AXI_rid(3 downto 0) => s03_mmu_M_AXI_RID(3 downto 0),
      S_AXI_rlast => s03_mmu_M_AXI_RLAST,
      S_AXI_rready => s03_mmu_M_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => s03_mmu_M_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => s03_mmu_M_AXI_RVALID,
      S_AXI_wdata(127 downto 0) => s03_mmu_M_AXI_WDATA(127 downto 0),
      S_AXI_wlast => s03_mmu_M_AXI_WLAST,
      S_AXI_wready => s03_mmu_M_AXI_WREADY,
      S_AXI_wstrb(15 downto 0) => s03_mmu_M_AXI_WSTRB(15 downto 0),
      S_AXI_wvalid => s03_mmu_M_AXI_WVALID
    );
s03_mmu: component ulp_s03_mmu_0
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(38 downto 0) => s03_mmu_M_AXI_ARADDR(38 downto 0),
      m_axi_arburst(1 downto 0) => s03_mmu_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s03_mmu_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(3 downto 0) => s03_mmu_M_AXI_ARID(3 downto 0),
      m_axi_arlen(7 downto 0) => s03_mmu_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => s03_mmu_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => s03_mmu_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s03_mmu_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => s03_mmu_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => s03_mmu_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => s03_mmu_M_AXI_ARVALID,
      m_axi_awaddr(38 downto 0) => s03_mmu_M_AXI_AWADDR(38 downto 0),
      m_axi_awburst(1 downto 0) => s03_mmu_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s03_mmu_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(3 downto 0) => s03_mmu_M_AXI_AWID(3 downto 0),
      m_axi_awlen(7 downto 0) => s03_mmu_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => s03_mmu_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => s03_mmu_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s03_mmu_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => s03_mmu_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => s03_mmu_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => s03_mmu_M_AXI_AWVALID,
      m_axi_bid(3 downto 0) => s03_mmu_M_AXI_BID(3 downto 0),
      m_axi_bready => s03_mmu_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s03_mmu_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => s03_mmu_M_AXI_BVALID,
      m_axi_rdata(127 downto 0) => s03_mmu_M_AXI_RDATA(127 downto 0),
      m_axi_rid(3 downto 0) => s03_mmu_M_AXI_RID(3 downto 0),
      m_axi_rlast => s03_mmu_M_AXI_RLAST,
      m_axi_rready => s03_mmu_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => s03_mmu_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => s03_mmu_M_AXI_RVALID,
      m_axi_wdata(127 downto 0) => s03_mmu_M_AXI_WDATA(127 downto 0),
      m_axi_wlast => s03_mmu_M_AXI_WLAST,
      m_axi_wready => s03_mmu_M_AXI_WREADY,
      m_axi_wstrb(15 downto 0) => s03_mmu_M_AXI_WSTRB(15 downto 0),
      m_axi_wvalid => s03_mmu_M_AXI_WVALID,
      s_axi_araddr(38 downto 0) => S03_AXI_araddr(38 downto 0),
      s_axi_arburst(1 downto 0) => S03_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S03_AXI_arcache(3 downto 0),
      s_axi_arid(3 downto 0) => S03_AXI_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => S03_AXI_arlen(7 downto 0),
      s_axi_arlock(0) => S03_AXI_arlock(0),
      s_axi_arprot(2 downto 0) => S03_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S03_AXI_arqos(3 downto 0),
      s_axi_arready => S03_AXI_arready,
      s_axi_arsize(2 downto 0) => S03_AXI_arsize(2 downto 0),
      s_axi_arvalid => S03_AXI_arvalid,
      s_axi_awaddr(38 downto 0) => S03_AXI_awaddr(38 downto 0),
      s_axi_awburst(1 downto 0) => S03_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S03_AXI_awcache(3 downto 0),
      s_axi_awid(3 downto 0) => S03_AXI_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => S03_AXI_awlen(7 downto 0),
      s_axi_awlock(0) => S03_AXI_awlock(0),
      s_axi_awprot(2 downto 0) => S03_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S03_AXI_awqos(3 downto 0),
      s_axi_awready => S03_AXI_awready,
      s_axi_awsize(2 downto 0) => S03_AXI_awsize(2 downto 0),
      s_axi_awvalid => S03_AXI_awvalid,
      s_axi_bid(3 downto 0) => S03_AXI_bid(3 downto 0),
      s_axi_bready => S03_AXI_bready,
      s_axi_bresp(1 downto 0) => S03_AXI_bresp(1 downto 0),
      s_axi_bvalid => S03_AXI_bvalid,
      s_axi_rdata(127 downto 0) => S03_AXI_rdata(127 downto 0),
      s_axi_rid(3 downto 0) => S03_AXI_rid(3 downto 0),
      s_axi_rlast => S03_AXI_rlast,
      s_axi_rready => S03_AXI_rready,
      s_axi_rresp(1 downto 0) => S03_AXI_rresp(1 downto 0),
      s_axi_rvalid => S03_AXI_rvalid,
      s_axi_wdata(127 downto 0) => S03_AXI_wdata(127 downto 0),
      s_axi_wlast => S03_AXI_wlast,
      s_axi_wready => S03_AXI_wready,
      s_axi_wstrb(15 downto 0) => S03_AXI_wstrb(15 downto 0),
      s_axi_wvalid => S03_AXI_wvalid
    );
xbar: component ulp_xbar_2
     port map (
      aclk => ACLK,
      aresetn => ARESETN,
      m_axi_araddr(127) => xbar_n_3506,
      m_axi_araddr(126) => xbar_n_3507,
      m_axi_araddr(125) => xbar_n_3508,
      m_axi_araddr(124) => xbar_n_3509,
      m_axi_araddr(123) => xbar_n_3510,
      m_axi_araddr(122) => xbar_n_3511,
      m_axi_araddr(121) => xbar_n_3512,
      m_axi_araddr(120) => xbar_n_3513,
      m_axi_araddr(119) => xbar_n_3514,
      m_axi_araddr(118) => xbar_n_3515,
      m_axi_araddr(117) => xbar_n_3516,
      m_axi_araddr(116) => xbar_n_3517,
      m_axi_araddr(115) => xbar_n_3518,
      m_axi_araddr(114) => xbar_n_3519,
      m_axi_araddr(113) => xbar_n_3520,
      m_axi_araddr(112) => xbar_n_3521,
      m_axi_araddr(111) => xbar_n_3522,
      m_axi_araddr(110) => xbar_n_3523,
      m_axi_araddr(109) => xbar_n_3524,
      m_axi_araddr(108) => xbar_n_3525,
      m_axi_araddr(107) => xbar_n_3526,
      m_axi_araddr(106) => xbar_n_3527,
      m_axi_araddr(105) => xbar_n_3528,
      m_axi_araddr(104) => xbar_n_3529,
      m_axi_araddr(103) => xbar_n_3530,
      m_axi_araddr(102) => xbar_n_3531,
      m_axi_araddr(101) => xbar_n_3532,
      m_axi_araddr(100) => xbar_n_3533,
      m_axi_araddr(99) => xbar_n_3534,
      m_axi_araddr(98) => xbar_n_3535,
      m_axi_araddr(97) => xbar_n_3536,
      m_axi_araddr(96) => xbar_n_3537,
      m_axi_araddr(95) => xbar_n_3538,
      m_axi_araddr(94) => xbar_n_3539,
      m_axi_araddr(93) => xbar_n_3540,
      m_axi_araddr(92) => xbar_n_3541,
      m_axi_araddr(91) => xbar_n_3542,
      m_axi_araddr(90) => xbar_n_3543,
      m_axi_araddr(89) => xbar_n_3544,
      m_axi_araddr(88) => xbar_n_3545,
      m_axi_araddr(87) => xbar_n_3546,
      m_axi_araddr(86) => xbar_n_3547,
      m_axi_araddr(85) => xbar_n_3548,
      m_axi_araddr(84) => xbar_n_3549,
      m_axi_araddr(83) => xbar_n_3550,
      m_axi_araddr(82) => xbar_n_3551,
      m_axi_araddr(81) => xbar_n_3552,
      m_axi_araddr(80) => xbar_n_3553,
      m_axi_araddr(79) => xbar_n_3554,
      m_axi_araddr(78 downto 64) => \^m01_axi_araddr\(14 downto 0),
      m_axi_araddr(63 downto 0) => xbar_to_m00_couplers_ARADDR(63 downto 0),
      m_axi_arburst(3 downto 2) => M01_AXI_arburst(1 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(7 downto 4) => M01_AXI_arcache(3 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 6) => M01_AXI_arid(5 downto 0),
      m_axi_arid(5 downto 0) => xbar_to_m00_couplers_ARID(5 downto 0),
      m_axi_arlen(15 downto 8) => M01_AXI_arlen(7 downto 0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(1) => M01_AXI_arlock,
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK,
      m_axi_arprot(5 downto 3) => M01_AXI_arprot(2 downto 0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(7 downto 4) => NLW_xbar_m_axi_arqos_UNCONNECTED(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(1) => M01_AXI_arready,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(7 downto 4) => NLW_xbar_m_axi_arregion_UNCONNECTED(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(5 downto 3) => M01_AXI_arsize(2 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(1) => M01_AXI_arvalid,
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID,
      m_axi_awaddr(127) => xbar_n_2148,
      m_axi_awaddr(126) => xbar_n_2149,
      m_axi_awaddr(125) => xbar_n_2150,
      m_axi_awaddr(124) => xbar_n_2151,
      m_axi_awaddr(123) => xbar_n_2152,
      m_axi_awaddr(122) => xbar_n_2153,
      m_axi_awaddr(121) => xbar_n_2154,
      m_axi_awaddr(120) => xbar_n_2155,
      m_axi_awaddr(119) => xbar_n_2156,
      m_axi_awaddr(118) => xbar_n_2157,
      m_axi_awaddr(117) => xbar_n_2158,
      m_axi_awaddr(116) => xbar_n_2159,
      m_axi_awaddr(115) => xbar_n_2160,
      m_axi_awaddr(114) => xbar_n_2161,
      m_axi_awaddr(113) => xbar_n_2162,
      m_axi_awaddr(112) => xbar_n_2163,
      m_axi_awaddr(111) => xbar_n_2164,
      m_axi_awaddr(110) => xbar_n_2165,
      m_axi_awaddr(109) => xbar_n_2166,
      m_axi_awaddr(108) => xbar_n_2167,
      m_axi_awaddr(107) => xbar_n_2168,
      m_axi_awaddr(106) => xbar_n_2169,
      m_axi_awaddr(105) => xbar_n_2170,
      m_axi_awaddr(104) => xbar_n_2171,
      m_axi_awaddr(103) => xbar_n_2172,
      m_axi_awaddr(102) => xbar_n_2173,
      m_axi_awaddr(101) => xbar_n_2174,
      m_axi_awaddr(100) => xbar_n_2175,
      m_axi_awaddr(99) => xbar_n_2176,
      m_axi_awaddr(98) => xbar_n_2177,
      m_axi_awaddr(97) => xbar_n_2178,
      m_axi_awaddr(96) => xbar_n_2179,
      m_axi_awaddr(95) => xbar_n_2180,
      m_axi_awaddr(94) => xbar_n_2181,
      m_axi_awaddr(93) => xbar_n_2182,
      m_axi_awaddr(92) => xbar_n_2183,
      m_axi_awaddr(91) => xbar_n_2184,
      m_axi_awaddr(90) => xbar_n_2185,
      m_axi_awaddr(89) => xbar_n_2186,
      m_axi_awaddr(88) => xbar_n_2187,
      m_axi_awaddr(87) => xbar_n_2188,
      m_axi_awaddr(86) => xbar_n_2189,
      m_axi_awaddr(85) => xbar_n_2190,
      m_axi_awaddr(84) => xbar_n_2191,
      m_axi_awaddr(83) => xbar_n_2192,
      m_axi_awaddr(82) => xbar_n_2193,
      m_axi_awaddr(81) => xbar_n_2194,
      m_axi_awaddr(80) => xbar_n_2195,
      m_axi_awaddr(79) => xbar_n_2196,
      m_axi_awaddr(78 downto 64) => \^m01_axi_awaddr\(14 downto 0),
      m_axi_awaddr(63 downto 0) => xbar_to_m00_couplers_AWADDR(63 downto 0),
      m_axi_awburst(3 downto 2) => M01_AXI_awburst(1 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(7 downto 4) => M01_AXI_awcache(3 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 6) => M01_AXI_awid(5 downto 0),
      m_axi_awid(5 downto 0) => xbar_to_m00_couplers_AWID(5 downto 0),
      m_axi_awlen(15 downto 8) => M01_AXI_awlen(7 downto 0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(1) => M01_AXI_awlock,
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK,
      m_axi_awprot(5 downto 3) => M01_AXI_awprot(2 downto 0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(7 downto 4) => NLW_xbar_m_axi_awqos_UNCONNECTED(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(1) => M01_AXI_awready,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(7 downto 4) => NLW_xbar_m_axi_awregion_UNCONNECTED(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(5 downto 3) => M01_AXI_awsize(2 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(1) => M01_AXI_awvalid,
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID,
      m_axi_bid(11 downto 6) => M01_AXI_bid(5 downto 0),
      m_axi_bid(5 downto 0) => xbar_to_m00_couplers_BID(5 downto 0),
      m_axi_bready(1) => M01_AXI_bready,
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY,
      m_axi_bresp(3 downto 2) => M01_AXI_bresp(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => M01_AXI_bvalid,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(1023 downto 512) => M01_AXI_rdata(511 downto 0),
      m_axi_rdata(511 downto 0) => xbar_to_m00_couplers_RDATA(511 downto 0),
      m_axi_rid(11 downto 6) => M01_AXI_rid(5 downto 0),
      m_axi_rid(5 downto 0) => xbar_to_m00_couplers_RID(5 downto 0),
      m_axi_rlast(1) => M01_AXI_rlast,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(1) => M01_AXI_rready,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY,
      m_axi_rresp(3 downto 2) => M01_AXI_rresp(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => M01_AXI_rvalid,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(1023 downto 512) => M01_AXI_wdata(511 downto 0),
      m_axi_wdata(511 downto 0) => xbar_to_m00_couplers_WDATA(511 downto 0),
      m_axi_wlast(1) => M01_AXI_wlast,
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST,
      m_axi_wready(1) => M01_AXI_wready,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(127 downto 64) => M01_AXI_wstrb(63 downto 0),
      m_axi_wstrb(63 downto 0) => xbar_to_m00_couplers_WSTRB(63 downto 0),
      m_axi_wvalid(1) => M01_AXI_wvalid,
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID,
      s_axi_araddr(255 downto 231) => B"0000000000000000000000000",
      s_axi_araddr(230 downto 192) => s03_couplers_to_xbar_ARADDR(38 downto 0),
      s_axi_araddr(191 downto 167) => B"0000000000000000000000000",
      s_axi_araddr(166 downto 128) => s02_couplers_to_xbar_ARADDR(38 downto 0),
      s_axi_araddr(127 downto 103) => B"0000000000000000000000000",
      s_axi_araddr(102 downto 64) => s01_couplers_to_xbar_ARADDR(38 downto 0),
      s_axi_araddr(63 downto 0) => s00_couplers_to_xbar_ARADDR(63 downto 0),
      s_axi_arburst(7 downto 6) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(15 downto 12) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(23 downto 10) => B"00000000000000",
      s_axi_arid(9 downto 6) => s01_couplers_to_xbar_ARID(3 downto 0),
      s_axi_arid(5 downto 1) => B"00000",
      s_axi_arid(0) => s00_couplers_to_xbar_ARID,
      s_axi_arlen(31 downto 24) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(3) => s03_couplers_to_xbar_ARLOCK,
      s_axi_arlock(2) => s02_couplers_to_xbar_ARLOCK,
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK,
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      s_axi_arprot(11 downto 9) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(15 downto 12) => s03_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(11 downto 8) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(3) => s03_couplers_to_xbar_ARREADY,
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY,
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY,
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_arsize(11 downto 9) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(3) => s03_couplers_to_xbar_ARVALID,
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(255 downto 231) => B"0000000000000000000000000",
      s_axi_awaddr(230 downto 192) => s03_couplers_to_xbar_AWADDR(38 downto 0),
      s_axi_awaddr(191 downto 167) => B"0000000000000000000000000",
      s_axi_awaddr(166 downto 128) => s02_couplers_to_xbar_AWADDR(38 downto 0),
      s_axi_awaddr(127 downto 103) => B"0000000000000000000000000",
      s_axi_awaddr(102 downto 64) => s01_couplers_to_xbar_AWADDR(38 downto 0),
      s_axi_awaddr(63 downto 0) => s00_couplers_to_xbar_AWADDR(63 downto 0),
      s_axi_awburst(7 downto 6) => s03_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(5 downto 4) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(3 downto 2) => s01_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(15 downto 12) => s03_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(11 downto 8) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(7 downto 4) => s01_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(23 downto 10) => B"00000000000000",
      s_axi_awid(9 downto 6) => s01_couplers_to_xbar_AWID(3 downto 0),
      s_axi_awid(5 downto 1) => B"00000",
      s_axi_awid(0) => s00_couplers_to_xbar_AWID,
      s_axi_awlen(31 downto 24) => s03_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(23 downto 16) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(15 downto 8) => s01_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(3) => s03_couplers_to_xbar_AWLOCK,
      s_axi_awlock(2) => s02_couplers_to_xbar_AWLOCK,
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK,
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      s_axi_awprot(11 downto 9) => s03_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(15 downto 12) => s03_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(11 downto 8) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(7 downto 4) => s01_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(3) => s03_couplers_to_xbar_AWREADY,
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY,
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY,
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY,
      s_axi_awsize(11 downto 9) => s03_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(8 downto 6) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(5 downto 3) => s01_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(3) => s03_couplers_to_xbar_AWVALID,
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(23 downto 12) => NLW_xbar_s_axi_bid_UNCONNECTED(23 downto 12),
      s_axi_bid(11 downto 6) => s01_couplers_to_xbar_BID(11 downto 6),
      s_axi_bid(5 downto 0) => s00_couplers_to_xbar_BID(5 downto 0),
      s_axi_bready(3) => s03_couplers_to_xbar_BREADY,
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(7 downto 6) => s03_couplers_to_xbar_BRESP(7 downto 6),
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(3) => s03_couplers_to_xbar_BVALID,
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID,
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID,
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID,
      s_axi_rdata(2047 downto 1536) => s03_couplers_to_xbar_RDATA(2047 downto 1536),
      s_axi_rdata(1535 downto 1024) => s02_couplers_to_xbar_RDATA(1535 downto 1024),
      s_axi_rdata(1023 downto 512) => s01_couplers_to_xbar_RDATA(1023 downto 512),
      s_axi_rdata(511 downto 0) => s00_couplers_to_xbar_RDATA(511 downto 0),
      s_axi_rid(23 downto 12) => NLW_xbar_s_axi_rid_UNCONNECTED(23 downto 12),
      s_axi_rid(11 downto 6) => s01_couplers_to_xbar_RID(11 downto 6),
      s_axi_rid(5 downto 0) => s00_couplers_to_xbar_RID(5 downto 0),
      s_axi_rlast(3) => s03_couplers_to_xbar_RLAST,
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST,
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST,
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST,
      s_axi_rready(3) => s03_couplers_to_xbar_RREADY,
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(7 downto 6) => s03_couplers_to_xbar_RRESP(7 downto 6),
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(3) => s03_couplers_to_xbar_RVALID,
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID,
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID,
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wdata(2047 downto 1536) => s03_couplers_to_xbar_WDATA(511 downto 0),
      s_axi_wdata(1535 downto 1024) => s02_couplers_to_xbar_WDATA(511 downto 0),
      s_axi_wdata(1023 downto 512) => s01_couplers_to_xbar_WDATA(511 downto 0),
      s_axi_wdata(511 downto 0) => s00_couplers_to_xbar_WDATA(511 downto 0),
      s_axi_wlast(3) => s03_couplers_to_xbar_WLAST,
      s_axi_wlast(2) => s02_couplers_to_xbar_WLAST,
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(3) => s03_couplers_to_xbar_WREADY,
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY,
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY,
      s_axi_wstrb(255 downto 192) => s03_couplers_to_xbar_WSTRB(63 downto 0),
      s_axi_wstrb(191 downto 128) => s02_couplers_to_xbar_WSTRB(63 downto 0),
      s_axi_wstrb(127 downto 64) => s01_couplers_to_xbar_WSTRB(63 downto 0),
      s_axi_wstrb(63 downto 0) => s00_couplers_to_xbar_WSTRB(63 downto 0),
      s_axi_wvalid(3) => s03_couplers_to_xbar_WVALID,
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_interconnect_axilite_user_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end ulp_interconnect_axilite_user_0;

architecture STRUCTURE of ulp_interconnect_axilite_user_0 is
  component ulp_xbar_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 49 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 49 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component ulp_xbar_5;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 49 downto 25 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 49 downto 25 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of xbar : label is "axi_crossbar_v2_1_25_axi_crossbar,Vivado 2021.1";
begin
m00_couplers: entity work.ulp_m00_couplers_imp_1DIICHO
     port map (
      M00_AXI_araddr(8 downto 0) => M00_AXI_araddr(8 downto 0),
      M00_AXI_arready => M00_AXI_arready,
      M00_AXI_arvalid => M00_AXI_arvalid,
      M00_AXI_awaddr(8 downto 0) => M00_AXI_awaddr(8 downto 0),
      M00_AXI_awready => M00_AXI_awready,
      M00_AXI_awvalid => M00_AXI_awvalid,
      M00_AXI_bready => M00_AXI_bready,
      M00_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M00_AXI_bvalid => M00_AXI_bvalid,
      M00_AXI_rdata(31 downto 0) => M00_AXI_rdata(31 downto 0),
      M00_AXI_rready => M00_AXI_rready,
      M00_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M00_AXI_rvalid => M00_AXI_rvalid,
      M00_AXI_wdata(31 downto 0) => M00_AXI_wdata(31 downto 0),
      M00_AXI_wready => M00_AXI_wready,
      M00_AXI_wstrb(3 downto 0) => M00_AXI_wstrb(3 downto 0),
      M00_AXI_wvalid => M00_AXI_wvalid,
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      m_axi_araddr(8 downto 0) => xbar_to_m00_couplers_ARADDR(8 downto 0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID,
      m_axi_awaddr(8 downto 0) => xbar_to_m00_couplers_AWADDR(8 downto 0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID,
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY,
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID,
      s_axi_arready => xbar_to_m00_couplers_ARREADY,
      s_axi_awready => xbar_to_m00_couplers_AWREADY,
      s_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      s_axi_bvalid => xbar_to_m00_couplers_BVALID,
      s_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      s_axi_rvalid => xbar_to_m00_couplers_RVALID,
      s_axi_wready => xbar_to_m00_couplers_WREADY
    );
m01_couplers: entity work.ulp_m01_couplers_imp_V1OR3T
     port map (
      M01_ACLK => M01_ACLK,
      M01_ARESETN => M01_ARESETN,
      M01_AXI_araddr(6 downto 0) => M01_AXI_araddr(6 downto 0),
      M01_AXI_arready => M01_AXI_arready,
      M01_AXI_arvalid => M01_AXI_arvalid,
      M01_AXI_awaddr(6 downto 0) => M01_AXI_awaddr(6 downto 0),
      M01_AXI_awready => M01_AXI_awready,
      M01_AXI_awvalid => M01_AXI_awvalid,
      M01_AXI_bready => M01_AXI_bready,
      M01_AXI_bresp(1 downto 0) => M01_AXI_bresp(1 downto 0),
      M01_AXI_bvalid => M01_AXI_bvalid,
      M01_AXI_rdata(31 downto 0) => M01_AXI_rdata(31 downto 0),
      M01_AXI_rready => M01_AXI_rready,
      M01_AXI_rresp(1 downto 0) => M01_AXI_rresp(1 downto 0),
      M01_AXI_rvalid => M01_AXI_rvalid,
      M01_AXI_wdata(31 downto 0) => M01_AXI_wdata(31 downto 0),
      M01_AXI_wready => M01_AXI_wready,
      M01_AXI_wstrb(3 downto 0) => M01_AXI_wstrb(3 downto 0),
      M01_AXI_wvalid => M01_AXI_wvalid,
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      S_AXI_araddr(6 downto 0) => xbar_to_m01_couplers_ARADDR(31 downto 25),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID,
      S_AXI_awaddr(6 downto 0) => xbar_to_m01_couplers_AWADDR(31 downto 25),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID,
      S_AXI_bready => xbar_to_m01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID
    );
s00_couplers: entity work.ulp_s00_couplers_imp_7LJ24M
     port map (
      S00_ACLK => S00_ACLK,
      S00_ARESETN => S00_ARESETN,
      S00_AXI_araddr(24 downto 0) => S00_AXI_araddr(24 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arready => S00_AXI_arready,
      S00_AXI_arvalid => S00_AXI_arvalid,
      S00_AXI_awaddr(24 downto 0) => S00_AXI_awaddr(24 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awready => S00_AXI_awready,
      S00_AXI_awvalid => S00_AXI_awvalid,
      S00_AXI_bready => S00_AXI_bready,
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid => S00_AXI_bvalid,
      S00_AXI_rdata(31 downto 0) => S00_AXI_rdata(31 downto 0),
      S00_AXI_rready => S00_AXI_rready,
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_rvalid => S00_AXI_rvalid,
      S00_AXI_wdata(31 downto 0) => S00_AXI_wdata(31 downto 0),
      S00_AXI_wready => S00_AXI_wready,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_wstrb(3 downto 0),
      S00_AXI_wvalid => S00_AXI_wvalid,
      m_axi_araddr(24 downto 0) => s00_couplers_to_xbar_ARADDR(24 downto 0),
      m_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      m_axi_arvalid => s00_couplers_to_xbar_ARVALID,
      m_axi_awaddr(24 downto 0) => s00_couplers_to_xbar_AWADDR(24 downto 0),
      m_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      m_axi_awvalid => s00_couplers_to_xbar_AWVALID,
      m_axi_bready => s00_couplers_to_xbar_BREADY,
      m_axi_rready => s00_couplers_to_xbar_RREADY,
      m_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      m_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      m_axi_wvalid => s00_couplers_to_xbar_WVALID,
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY
    );
xbar: component ulp_xbar_5
     port map (
      aclk => S00_ACLK,
      aresetn => S00_ARESETN,
      m_axi_araddr(49 downto 25) => xbar_to_m01_couplers_ARADDR(49 downto 25),
      m_axi_araddr(24 downto 0) => xbar_to_m00_couplers_ARADDR(24 downto 0),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID,
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID,
      m_axi_awaddr(49 downto 25) => xbar_to_m01_couplers_AWADDR(49 downto 25),
      m_axi_awaddr(24 downto 0) => xbar_to_m00_couplers_AWADDR(24 downto 0),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID,
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID,
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY,
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY,
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY,
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID,
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID,
      s_axi_araddr(24 downto 0) => s00_couplers_to_xbar_ARADDR(24 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(24 downto 0) => s00_couplers_to_xbar_AWADDR(24 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_slr1_imp_1S5AAMB is
  port (
    M01_AXI1_araddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M01_AXI1_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI1_awaddr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M01_AXI1_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI1_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI1_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI1_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI1_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI1_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    psreset_gate_pr_control_interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 6 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    psreset_gate_pr_kernel_interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    psreset_gate_pr_data_interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    logic_reset_op_Res : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_cdc_data_static_M_AXI_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    axi_cdc_data_static_M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_cdc_data_static_M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_cdc_data_static_M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_cdc_data_static_M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_cdc_data_static_M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_cdc_data_static_M_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI_awvalid : out STD_LOGIC;
    axi_cdc_data_static_M_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    axi_cdc_data_static_M_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    axi_cdc_data_static_M_AXI_wlast : out STD_LOGIC;
    axi_cdc_data_static_M_AXI_wvalid : out STD_LOGIC;
    axi_cdc_data_static_M_AXI_bready : out STD_LOGIC;
    axi_cdc_data_static_M_AXI_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    axi_cdc_data_static_M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_cdc_data_static_M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_cdc_data_static_M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_cdc_data_static_M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_cdc_data_static_M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_cdc_data_static_M_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI_arvalid : out STD_LOGIC;
    axi_cdc_data_static_M_AXI_rready : out STD_LOGIC;
    axi_cdc_data_static_M_AXI1_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI1_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    axi_cdc_data_static_M_AXI1_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_cdc_data_static_M_AXI1_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_cdc_data_static_M_AXI1_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_cdc_data_static_M_AXI1_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_cdc_data_static_M_AXI1_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI1_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_cdc_data_static_M_AXI1_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI1_awvalid : out STD_LOGIC;
    axi_cdc_data_static_M_AXI1_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    axi_cdc_data_static_M_AXI1_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    axi_cdc_data_static_M_AXI1_wlast : out STD_LOGIC;
    axi_cdc_data_static_M_AXI1_wvalid : out STD_LOGIC;
    axi_cdc_data_static_M_AXI1_bready : out STD_LOGIC;
    axi_cdc_data_static_M_AXI1_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI1_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    axi_cdc_data_static_M_AXI1_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axi_cdc_data_static_M_AXI1_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_cdc_data_static_M_AXI1_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_cdc_data_static_M_AXI1_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_cdc_data_static_M_AXI1_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI1_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    axi_cdc_data_static_M_AXI1_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI1_arvalid : out STD_LOGIC;
    axi_cdc_data_static_M_AXI1_rready : out STD_LOGIC;
    regslice_control_M_AXI_slr1_awready : out STD_LOGIC;
    regslice_control_M_AXI_slr1_wready : out STD_LOGIC;
    regslice_control_M_AXI_slr1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_control_M_AXI_slr1_bvalid : out STD_LOGIC;
    regslice_control_M_AXI_slr1_arready : out STD_LOGIC;
    regslice_control_M_AXI_slr1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    regslice_control_M_AXI_slr1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_control_M_AXI_slr1_rvalid : out STD_LOGIC;
    regslice_control_userpf_M_AXI_slr1_awready : out STD_LOGIC;
    regslice_control_userpf_M_AXI_slr1_wready : out STD_LOGIC;
    regslice_control_userpf_M_AXI_slr1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_control_userpf_M_AXI_slr1_bvalid : out STD_LOGIC;
    regslice_control_userpf_M_AXI_slr1_arready : out STD_LOGIC;
    regslice_control_userpf_M_AXI_slr1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    regslice_control_userpf_M_AXI_slr1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_control_userpf_M_AXI_slr1_rvalid : out STD_LOGIC;
    regslice_data_static_M_AXI_slr1_awready : out STD_LOGIC;
    regslice_data_static_M_AXI_slr1_wready : out STD_LOGIC;
    regslice_data_static_M_AXI_slr1_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_static_M_AXI_slr1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_data_static_M_AXI_slr1_bvalid : out STD_LOGIC;
    regslice_data_static_M_AXI_slr1_arready : out STD_LOGIC;
    regslice_data_static_M_AXI_slr1_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_static_M_AXI_slr1_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    regslice_data_static_M_AXI_slr1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_data_static_M_AXI_slr1_rlast : out STD_LOGIC;
    regslice_data_static_M_AXI_slr1_rvalid : out STD_LOGIC;
    regslice_data_static_M_AXI_slr2_awready : out STD_LOGIC;
    regslice_data_static_M_AXI_slr2_wready : out STD_LOGIC;
    regslice_data_static_M_AXI_slr2_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_static_M_AXI_slr2_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_data_static_M_AXI_slr2_bvalid : out STD_LOGIC;
    regslice_data_static_M_AXI_slr2_arready : out STD_LOGIC;
    regslice_data_static_M_AXI_slr2_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_static_M_AXI_slr2_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    regslice_data_static_M_AXI_slr2_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_data_static_M_AXI_slr2_rlast : out STD_LOGIC;
    regslice_data_static_M_AXI_slr2_rvalid : out STD_LOGIC;
    regslice_control_periph_M_AXI_slr1_awready : out STD_LOGIC;
    regslice_control_periph_M_AXI_slr1_wready : out STD_LOGIC;
    regslice_control_periph_M_AXI_slr1_bvalid : out STD_LOGIC;
    regslice_control_periph_M_AXI_slr1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_control_periph_M_AXI_slr1_arready : out STD_LOGIC;
    regslice_control_periph_M_AXI_slr1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    regslice_control_periph_M_AXI_slr1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_control_periph_M_AXI_slr1_rvalid : out STD_LOGIC;
    axi_vip_ctrl_mgntpf_M_AXI_awaddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    axi_vip_ctrl_mgntpf_M_AXI_awvalid : out STD_LOGIC;
    axi_vip_ctrl_mgntpf_M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_vip_ctrl_mgntpf_M_AXI_wvalid : out STD_LOGIC;
    axi_vip_ctrl_mgntpf_M_AXI_bready : out STD_LOGIC;
    axi_vip_ctrl_mgntpf_M_AXI_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    axi_vip_ctrl_mgntpf_M_AXI_arvalid : out STD_LOGIC;
    axi_vip_ctrl_mgntpf_M_AXI_rready : out STD_LOGIC;
    clkwiz_sysclks_clk_out2 : in STD_LOGIC;
    c0_ddr4_ui_clk : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M01_AXI1_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI1_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI1_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI1_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI1_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI1_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_aclk_kernel_ref_clk_00 : in STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    dma_pcie_axi_aclk : in STD_LOGIC;
    iob_static_perst_n_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    Dout : in STD_LOGIC_VECTOR ( 0 to 0 );
    clkwiz_sysclks_locked_slr1 : in STD_LOGIC;
    pcie_user_lnk_up_slr1 : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    clkwiz_kernel_clk_out1 : in STD_LOGIC;
    clkwiz_kernel_locked_slr1 : in STD_LOGIC;
    clkwiz_kernel2_clk_out1 : in STD_LOGIC;
    clkwiz_kernel2_locked_slr1 : in STD_LOGIC;
    axi_cdc_data_static_M_AXI_awready : in STD_LOGIC;
    axi_cdc_data_static_M_AXI_wready : in STD_LOGIC;
    axi_cdc_data_static_M_AXI_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_cdc_data_static_M_AXI_bvalid : in STD_LOGIC;
    axi_cdc_data_static_M_AXI_arready : in STD_LOGIC;
    axi_cdc_data_static_M_AXI_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    axi_cdc_data_static_M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_cdc_data_static_M_AXI_rlast : in STD_LOGIC;
    axi_cdc_data_static_M_AXI_rvalid : in STD_LOGIC;
    axi_cdc_data_static_M_AXI1_awready : in STD_LOGIC;
    axi_cdc_data_static_M_AXI1_wready : in STD_LOGIC;
    axi_cdc_data_static_M_AXI1_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_cdc_data_static_M_AXI1_bvalid : in STD_LOGIC;
    axi_cdc_data_static_M_AXI1_arready : in STD_LOGIC;
    axi_cdc_data_static_M_AXI1_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_cdc_data_static_M_AXI1_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    axi_cdc_data_static_M_AXI1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_cdc_data_static_M_AXI1_rlast : in STD_LOGIC;
    axi_cdc_data_static_M_AXI1_rvalid : in STD_LOGIC;
    regslice_control_M_AXI_slr1_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    regslice_control_M_AXI_slr1_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_control_M_AXI_slr1_awvalid : in STD_LOGIC;
    regslice_control_M_AXI_slr1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    regslice_control_M_AXI_slr1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_control_M_AXI_slr1_wvalid : in STD_LOGIC;
    regslice_control_M_AXI_slr1_bready : in STD_LOGIC;
    regslice_control_M_AXI_slr1_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    regslice_control_M_AXI_slr1_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_control_M_AXI_slr1_arvalid : in STD_LOGIC;
    regslice_control_M_AXI_slr1_rready : in STD_LOGIC;
    regslice_control_userpf_M_AXI_slr1_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    regslice_control_userpf_M_AXI_slr1_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_control_userpf_M_AXI_slr1_awvalid : in STD_LOGIC;
    regslice_control_userpf_M_AXI_slr1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    regslice_control_userpf_M_AXI_slr1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_control_userpf_M_AXI_slr1_wvalid : in STD_LOGIC;
    regslice_control_userpf_M_AXI_slr1_bready : in STD_LOGIC;
    regslice_control_userpf_M_AXI_slr1_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    regslice_control_userpf_M_AXI_slr1_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_control_userpf_M_AXI_slr1_arvalid : in STD_LOGIC;
    regslice_control_userpf_M_AXI_slr1_rready : in STD_LOGIC;
    regslice_data_static_M_AXI_slr1_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_static_M_AXI_slr1_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    regslice_data_static_M_AXI_slr1_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    regslice_data_static_M_AXI_slr1_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_data_static_M_AXI_slr1_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    regslice_data_static_M_AXI_slr1_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_static_M_AXI_slr1_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_data_static_M_AXI_slr1_awvalid : in STD_LOGIC;
    regslice_data_static_M_AXI_slr1_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    regslice_data_static_M_AXI_slr1_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    regslice_data_static_M_AXI_slr1_wlast : in STD_LOGIC;
    regslice_data_static_M_AXI_slr1_wvalid : in STD_LOGIC;
    regslice_data_static_M_AXI_slr1_bready : in STD_LOGIC;
    regslice_data_static_M_AXI_slr1_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_static_M_AXI_slr1_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    regslice_data_static_M_AXI_slr1_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    regslice_data_static_M_AXI_slr1_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_data_static_M_AXI_slr1_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    regslice_data_static_M_AXI_slr1_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_static_M_AXI_slr1_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_data_static_M_AXI_slr1_arvalid : in STD_LOGIC;
    regslice_data_static_M_AXI_slr1_rready : in STD_LOGIC;
    regslice_data_static_M_AXI_slr2_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_static_M_AXI_slr2_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    regslice_data_static_M_AXI_slr2_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    regslice_data_static_M_AXI_slr2_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_data_static_M_AXI_slr2_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    regslice_data_static_M_AXI_slr2_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_static_M_AXI_slr2_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_data_static_M_AXI_slr2_awvalid : in STD_LOGIC;
    regslice_data_static_M_AXI_slr2_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    regslice_data_static_M_AXI_slr2_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regslice_data_static_M_AXI_slr2_wlast : in STD_LOGIC;
    regslice_data_static_M_AXI_slr2_wvalid : in STD_LOGIC;
    regslice_data_static_M_AXI_slr2_bready : in STD_LOGIC;
    regslice_data_static_M_AXI_slr2_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_static_M_AXI_slr2_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    regslice_data_static_M_AXI_slr2_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    regslice_data_static_M_AXI_slr2_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    regslice_data_static_M_AXI_slr2_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    regslice_data_static_M_AXI_slr2_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_data_static_M_AXI_slr2_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_data_static_M_AXI_slr2_arvalid : in STD_LOGIC;
    regslice_data_static_M_AXI_slr2_rready : in STD_LOGIC;
    regslice_control_periph_M_AXI_slr1_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    regslice_control_periph_M_AXI_slr1_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_control_periph_M_AXI_slr1_awvalid : in STD_LOGIC;
    regslice_control_periph_M_AXI_slr1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    regslice_control_periph_M_AXI_slr1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    regslice_control_periph_M_AXI_slr1_wvalid : in STD_LOGIC;
    regslice_control_periph_M_AXI_slr1_bready : in STD_LOGIC;
    regslice_control_periph_M_AXI_slr1_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    regslice_control_periph_M_AXI_slr1_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    regslice_control_periph_M_AXI_slr1_arvalid : in STD_LOGIC;
    regslice_control_periph_M_AXI_slr1_rready : in STD_LOGIC;
    axi_vip_ctrl_mgntpf_M_AXI_awready : in STD_LOGIC;
    axi_vip_ctrl_mgntpf_M_AXI_wready : in STD_LOGIC;
    axi_vip_ctrl_mgntpf_M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_vip_ctrl_mgntpf_M_AXI_bvalid : in STD_LOGIC;
    axi_vip_ctrl_mgntpf_M_AXI_arready : in STD_LOGIC;
    axi_vip_ctrl_mgntpf_M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_vip_ctrl_mgntpf_M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_vip_ctrl_mgntpf_M_AXI_rvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_slr1_imp_1S5AAMB : entity is "slr1_imp_1S5AAMB";
end ulp_slr1_imp_1S5AAMB;

architecture STRUCTURE of ulp_slr1_imp_1S5AAMB is
  component ulp_axi_cdc_data_static_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_axi_cdc_data_static_0;
  component ulp_axi_cdc_data_static1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_axi_cdc_data_static1_0;
  component ulp_axi_gpio_null_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ulp_axi_gpio_null_0;
  component ulp_axi_vip_ctrl_mgntpf_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_axi_vip_ctrl_mgntpf_0;
  component ulp_axi_vip_ctrl_userpf_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_axi_vip_ctrl_userpf_0;
  component ulp_axi_vip_data_static_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_axi_vip_data_static_0;
  component ulp_axi_vip_data_static1_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_axi_vip_data_static1_0;
  component ulp_freq_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    axil_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axil_awvalid : in STD_LOGIC;
    axil_awready : out STD_LOGIC;
    axil_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axil_wvalid : in STD_LOGIC;
    axil_wready : out STD_LOGIC;
    axil_bvalid : out STD_LOGIC;
    axil_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_bready : in STD_LOGIC;
    axil_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    axil_arvalid : in STD_LOGIC;
    axil_arready : out STD_LOGIC;
    axil_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axil_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axil_rvalid : out STD_LOGIC;
    axil_rready : in STD_LOGIC;
    test_clk0 : in STD_LOGIC;
    test_clk1 : in STD_LOGIC
  );
  end component ulp_freq_counter_0_0;
  component ulp_regslice_control_mgntpf_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 25 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_regslice_control_mgntpf_0;
  component ulp_regslice_control_userpf_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_regslice_control_userpf_0;
  component ulp_regslice_data_static_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_regslice_data_static_0;
  component ulp_regslice_data_static1_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_regslice_data_static1_0;
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_vip_ctrl_mgntpf_M_AXI1_ARADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal axi_vip_ctrl_mgntpf_M_AXI1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_ctrl_mgntpf_M_AXI1_ARREADY : STD_LOGIC;
  signal axi_vip_ctrl_mgntpf_M_AXI1_ARVALID : STD_LOGIC;
  signal axi_vip_ctrl_mgntpf_M_AXI1_AWADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal axi_vip_ctrl_mgntpf_M_AXI1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_ctrl_mgntpf_M_AXI1_AWREADY : STD_LOGIC;
  signal axi_vip_ctrl_mgntpf_M_AXI1_AWVALID : STD_LOGIC;
  signal axi_vip_ctrl_mgntpf_M_AXI1_BREADY : STD_LOGIC;
  signal axi_vip_ctrl_mgntpf_M_AXI1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_ctrl_mgntpf_M_AXI1_BVALID : STD_LOGIC;
  signal axi_vip_ctrl_mgntpf_M_AXI1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_ctrl_mgntpf_M_AXI1_RREADY : STD_LOGIC;
  signal axi_vip_ctrl_mgntpf_M_AXI1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_ctrl_mgntpf_M_AXI1_RVALID : STD_LOGIC;
  signal axi_vip_ctrl_mgntpf_M_AXI1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_ctrl_mgntpf_M_AXI1_WREADY : STD_LOGIC;
  signal axi_vip_ctrl_mgntpf_M_AXI1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_ctrl_mgntpf_M_AXI1_WVALID : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_ctrl_userpf_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_ctrl_userpf_M_AXI_WVALID : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal axi_vip_data_static1_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_data_static1_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_data_static1_M_AXI_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_data_static1_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_data_static1_M_AXI_ARLOCK : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_data_static1_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal axi_vip_data_static1_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_data_static1_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_data_static1_M_AXI_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_data_static1_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_data_static1_M_AXI_AWLOCK : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_data_static1_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_data_static1_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_data_static1_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_vip_data_static1_M_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_data_static1_M_AXI_RLAST : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_data_static1_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_vip_data_static1_M_AXI_WLAST : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_data_static1_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_vip_data_static1_M_AXI_WVALID : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal axi_vip_data_static_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_data_static_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_data_static_M_AXI_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_data_static_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_data_static_M_AXI_ARLOCK : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_data_static_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal axi_vip_data_static_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_data_static_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_data_static_M_AXI_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_data_static_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_data_static_M_AXI_AWLOCK : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_data_static_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_data_static_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_data_static_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_vip_data_static_M_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_data_static_M_AXI_RLAST : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_data_static_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_vip_data_static_M_AXI_WLAST : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_data_static_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_vip_data_static_M_AXI_WVALID : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal interconnect_axilite_user_M00_AXI_ARREADY : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_ARVALID : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal interconnect_axilite_user_M00_AXI_AWREADY : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_AWVALID : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_BREADY : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axilite_user_M00_AXI_BVALID : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_axilite_user_M00_AXI_RREADY : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal interconnect_axilite_user_M00_AXI_RVALID : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal interconnect_axilite_user_M00_AXI_WREADY : STD_LOGIC;
  signal interconnect_axilite_user_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal interconnect_axilite_user_M00_AXI_WVALID : STD_LOGIC;
  signal \^psreset_gate_pr_control_interconnect_aresetn\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^psreset_gate_pr_data_interconnect_aresetn\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^psreset_gate_pr_kernel_interconnect_aresetn\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal regslice_control_userpf_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal regslice_control_userpf_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal regslice_control_userpf_M_AXI_ARREADY : STD_LOGIC;
  signal regslice_control_userpf_M_AXI_ARVALID : STD_LOGIC;
  signal regslice_control_userpf_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal regslice_control_userpf_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal regslice_control_userpf_M_AXI_AWREADY : STD_LOGIC;
  signal regslice_control_userpf_M_AXI_AWVALID : STD_LOGIC;
  signal regslice_control_userpf_M_AXI_BREADY : STD_LOGIC;
  signal regslice_control_userpf_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal regslice_control_userpf_M_AXI_BVALID : STD_LOGIC;
  signal regslice_control_userpf_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal regslice_control_userpf_M_AXI_RREADY : STD_LOGIC;
  signal regslice_control_userpf_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal regslice_control_userpf_M_AXI_RVALID : STD_LOGIC;
  signal regslice_control_userpf_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal regslice_control_userpf_M_AXI_WREADY : STD_LOGIC;
  signal regslice_control_userpf_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_control_userpf_M_AXI_WVALID : STD_LOGIC;
  signal regslice_data_static1_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal regslice_data_static1_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal regslice_data_static1_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static1_M_AXI_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static1_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal regslice_data_static1_M_AXI_ARLOCK : STD_LOGIC;
  signal regslice_data_static1_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal regslice_data_static1_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static1_M_AXI_ARREADY : STD_LOGIC;
  signal regslice_data_static1_M_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static1_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal regslice_data_static1_M_AXI_ARVALID : STD_LOGIC;
  signal regslice_data_static1_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal regslice_data_static1_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal regslice_data_static1_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static1_M_AXI_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static1_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal regslice_data_static1_M_AXI_AWLOCK : STD_LOGIC;
  signal regslice_data_static1_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal regslice_data_static1_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static1_M_AXI_AWREADY : STD_LOGIC;
  signal regslice_data_static1_M_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static1_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal regslice_data_static1_M_AXI_AWVALID : STD_LOGIC;
  signal regslice_data_static1_M_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static1_M_AXI_BREADY : STD_LOGIC;
  signal regslice_data_static1_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal regslice_data_static1_M_AXI_BVALID : STD_LOGIC;
  signal regslice_data_static1_M_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal regslice_data_static1_M_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static1_M_AXI_RLAST : STD_LOGIC;
  signal regslice_data_static1_M_AXI_RREADY : STD_LOGIC;
  signal regslice_data_static1_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal regslice_data_static1_M_AXI_RVALID : STD_LOGIC;
  signal regslice_data_static1_M_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal regslice_data_static1_M_AXI_WLAST : STD_LOGIC;
  signal regslice_data_static1_M_AXI_WREADY : STD_LOGIC;
  signal regslice_data_static1_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal regslice_data_static1_M_AXI_WVALID : STD_LOGIC;
  signal regslice_data_static_M_AXI1_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal regslice_data_static_M_AXI1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal regslice_data_static_M_AXI1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static_M_AXI1_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static_M_AXI1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal regslice_data_static_M_AXI1_ARLOCK : STD_LOGIC;
  signal regslice_data_static_M_AXI1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal regslice_data_static_M_AXI1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static_M_AXI1_ARREADY : STD_LOGIC;
  signal regslice_data_static_M_AXI1_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static_M_AXI1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal regslice_data_static_M_AXI1_ARVALID : STD_LOGIC;
  signal regslice_data_static_M_AXI1_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal regslice_data_static_M_AXI1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal regslice_data_static_M_AXI1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static_M_AXI1_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static_M_AXI1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal regslice_data_static_M_AXI1_AWLOCK : STD_LOGIC;
  signal regslice_data_static_M_AXI1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal regslice_data_static_M_AXI1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static_M_AXI1_AWREADY : STD_LOGIC;
  signal regslice_data_static_M_AXI1_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static_M_AXI1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal regslice_data_static_M_AXI1_AWVALID : STD_LOGIC;
  signal regslice_data_static_M_AXI1_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static_M_AXI1_BREADY : STD_LOGIC;
  signal regslice_data_static_M_AXI1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal regslice_data_static_M_AXI1_BVALID : STD_LOGIC;
  signal regslice_data_static_M_AXI1_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal regslice_data_static_M_AXI1_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal regslice_data_static_M_AXI1_RLAST : STD_LOGIC;
  signal regslice_data_static_M_AXI1_RREADY : STD_LOGIC;
  signal regslice_data_static_M_AXI1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal regslice_data_static_M_AXI1_RVALID : STD_LOGIC;
  signal regslice_data_static_M_AXI1_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal regslice_data_static_M_AXI1_WLAST : STD_LOGIC;
  signal regslice_data_static_M_AXI1_WREADY : STD_LOGIC;
  signal regslice_data_static_M_AXI1_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal regslice_data_static_M_AXI1_WVALID : STD_LOGIC;
  signal NLW_axi_cdc_data_static1_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_cdc_data_static1_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_gpio_null_gpio_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_gpio_null_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_interconnect_0_M01_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 24 downto 12 );
  signal NLW_axi_interconnect_0_M01_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 24 downto 12 );
  signal NLW_regslice_control_mgntpf_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_regslice_control_mgntpf_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_regslice_control_mgntpf_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_cdc_data_static : label is "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1";
  attribute X_CORE_INFO of axi_cdc_data_static1 : label is "axi_clock_converter_v2_1_23_axi_clock_converter,Vivado 2021.1";
  attribute X_CORE_INFO of axi_gpio_null : label is "axi_gpio,Vivado 2021.1";
  attribute X_CORE_INFO of axi_vip_ctrl_mgntpf : label is "axi_vip_v1_1_10_top,Vivado 2021.1";
  attribute X_CORE_INFO of axi_vip_ctrl_userpf : label is "axi_vip_v1_1_10_top,Vivado 2021.1";
  attribute X_CORE_INFO of axi_vip_data_static : label is "axi_vip_v1_1_10_top,Vivado 2021.1";
  attribute X_CORE_INFO of axi_vip_data_static1 : label is "axi_vip_v1_1_10_top,Vivado 2021.1";
  attribute X_CORE_INFO of freq_counter_0 : label is "freq_counter,Vivado 2021.1";
  attribute X_CORE_INFO of regslice_control_mgntpf : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
  attribute X_CORE_INFO of regslice_control_userpf : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
  attribute X_CORE_INFO of regslice_data_static : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
  attribute X_CORE_INFO of regslice_data_static1 : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
begin
  psreset_gate_pr_control_interconnect_aresetn(0) <= \^psreset_gate_pr_control_interconnect_aresetn\(0);
  psreset_gate_pr_data_interconnect_aresetn(0) <= \^psreset_gate_pr_data_interconnect_aresetn\(0);
  psreset_gate_pr_kernel_interconnect_aresetn(0) <= \^psreset_gate_pr_kernel_interconnect_aresetn\(0);
axi_cdc_data_static: component ulp_axi_cdc_data_static_0
     port map (
      m_axi_aclk => clkwiz_kernel_clk_out1,
      m_axi_araddr(38 downto 0) => axi_cdc_data_static_M_AXI_araddr(38 downto 0),
      m_axi_arburst(1 downto 0) => axi_cdc_data_static_M_AXI_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_cdc_data_static_M_AXI_arcache(3 downto 0),
      m_axi_aresetn => \^psreset_gate_pr_kernel_interconnect_aresetn\(0),
      m_axi_arid(3 downto 0) => axi_cdc_data_static_M_AXI_arid(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_cdc_data_static_M_AXI_arlen(7 downto 0),
      m_axi_arlock(0) => axi_cdc_data_static_M_AXI_arlock(0),
      m_axi_arprot(2 downto 0) => axi_cdc_data_static_M_AXI_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_cdc_data_static_M_AXI_arqos(3 downto 0),
      m_axi_arready => axi_cdc_data_static_M_AXI_arready,
      m_axi_arregion(3 downto 0) => axi_cdc_data_static_M_AXI_arregion(3 downto 0),
      m_axi_arsize(2 downto 0) => axi_cdc_data_static_M_AXI_arsize(2 downto 0),
      m_axi_arvalid => axi_cdc_data_static_M_AXI_arvalid,
      m_axi_awaddr(38 downto 0) => axi_cdc_data_static_M_AXI_awaddr(38 downto 0),
      m_axi_awburst(1 downto 0) => axi_cdc_data_static_M_AXI_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_cdc_data_static_M_AXI_awcache(3 downto 0),
      m_axi_awid(3 downto 0) => axi_cdc_data_static_M_AXI_awid(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_cdc_data_static_M_AXI_awlen(7 downto 0),
      m_axi_awlock(0) => axi_cdc_data_static_M_AXI_awlock(0),
      m_axi_awprot(2 downto 0) => axi_cdc_data_static_M_AXI_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_cdc_data_static_M_AXI_awqos(3 downto 0),
      m_axi_awready => axi_cdc_data_static_M_AXI_awready,
      m_axi_awregion(3 downto 0) => axi_cdc_data_static_M_AXI_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => axi_cdc_data_static_M_AXI_awsize(2 downto 0),
      m_axi_awvalid => axi_cdc_data_static_M_AXI_awvalid,
      m_axi_bid(3 downto 0) => axi_cdc_data_static_M_AXI_bid(3 downto 0),
      m_axi_bready => axi_cdc_data_static_M_AXI_bready,
      m_axi_bresp(1 downto 0) => axi_cdc_data_static_M_AXI_bresp(1 downto 0),
      m_axi_bvalid => axi_cdc_data_static_M_AXI_bvalid,
      m_axi_rdata(511 downto 0) => axi_cdc_data_static_M_AXI_rdata(511 downto 0),
      m_axi_rid(3 downto 0) => axi_cdc_data_static_M_AXI_rid(3 downto 0),
      m_axi_rlast => axi_cdc_data_static_M_AXI_rlast,
      m_axi_rready => axi_cdc_data_static_M_AXI_rready,
      m_axi_rresp(1 downto 0) => axi_cdc_data_static_M_AXI_rresp(1 downto 0),
      m_axi_rvalid => axi_cdc_data_static_M_AXI_rvalid,
      m_axi_wdata(511 downto 0) => axi_cdc_data_static_M_AXI_wdata(511 downto 0),
      m_axi_wlast => axi_cdc_data_static_M_AXI_wlast,
      m_axi_wready => axi_cdc_data_static_M_AXI_wready,
      m_axi_wstrb(63 downto 0) => axi_cdc_data_static_M_AXI_wstrb(63 downto 0),
      m_axi_wvalid => axi_cdc_data_static_M_AXI_wvalid,
      s_axi_aclk => dma_pcie_axi_aclk,
      s_axi_araddr(38 downto 0) => regslice_data_static_M_AXI1_ARADDR(38 downto 0),
      s_axi_arburst(1 downto 0) => regslice_data_static_M_AXI1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => regslice_data_static_M_AXI1_ARCACHE(3 downto 0),
      s_axi_aresetn => \^psreset_gate_pr_data_interconnect_aresetn\(0),
      s_axi_arid(3 downto 0) => regslice_data_static_M_AXI1_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => regslice_data_static_M_AXI1_ARLEN(7 downto 0),
      s_axi_arlock(0) => regslice_data_static_M_AXI1_ARLOCK,
      s_axi_arprot(2 downto 0) => regslice_data_static_M_AXI1_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => regslice_data_static_M_AXI1_ARQOS(3 downto 0),
      s_axi_arready => regslice_data_static_M_AXI1_ARREADY,
      s_axi_arregion(3 downto 0) => regslice_data_static_M_AXI1_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => regslice_data_static_M_AXI1_ARSIZE(2 downto 0),
      s_axi_arvalid => regslice_data_static_M_AXI1_ARVALID,
      s_axi_awaddr(38 downto 0) => regslice_data_static_M_AXI1_AWADDR(38 downto 0),
      s_axi_awburst(1 downto 0) => regslice_data_static_M_AXI1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => regslice_data_static_M_AXI1_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => regslice_data_static_M_AXI1_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => regslice_data_static_M_AXI1_AWLEN(7 downto 0),
      s_axi_awlock(0) => regslice_data_static_M_AXI1_AWLOCK,
      s_axi_awprot(2 downto 0) => regslice_data_static_M_AXI1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => regslice_data_static_M_AXI1_AWQOS(3 downto 0),
      s_axi_awready => regslice_data_static_M_AXI1_AWREADY,
      s_axi_awregion(3 downto 0) => regslice_data_static_M_AXI1_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => regslice_data_static_M_AXI1_AWSIZE(2 downto 0),
      s_axi_awvalid => regslice_data_static_M_AXI1_AWVALID,
      s_axi_bid(3 downto 0) => regslice_data_static_M_AXI1_BID(3 downto 0),
      s_axi_bready => regslice_data_static_M_AXI1_BREADY,
      s_axi_bresp(1 downto 0) => regslice_data_static_M_AXI1_BRESP(1 downto 0),
      s_axi_bvalid => regslice_data_static_M_AXI1_BVALID,
      s_axi_rdata(511 downto 0) => regslice_data_static_M_AXI1_RDATA(511 downto 0),
      s_axi_rid(3 downto 0) => regslice_data_static_M_AXI1_RID(3 downto 0),
      s_axi_rlast => regslice_data_static_M_AXI1_RLAST,
      s_axi_rready => regslice_data_static_M_AXI1_RREADY,
      s_axi_rresp(1 downto 0) => regslice_data_static_M_AXI1_RRESP(1 downto 0),
      s_axi_rvalid => regslice_data_static_M_AXI1_RVALID,
      s_axi_wdata(511 downto 0) => regslice_data_static_M_AXI1_WDATA(511 downto 0),
      s_axi_wlast => regslice_data_static_M_AXI1_WLAST,
      s_axi_wready => regslice_data_static_M_AXI1_WREADY,
      s_axi_wstrb(63 downto 0) => regslice_data_static_M_AXI1_WSTRB(63 downto 0),
      s_axi_wvalid => regslice_data_static_M_AXI1_WVALID
    );
axi_cdc_data_static1: component ulp_axi_cdc_data_static1_0
     port map (
      m_axi_aclk => clkwiz_kernel_clk_out1,
      m_axi_araddr(38 downto 0) => axi_cdc_data_static_M_AXI1_araddr(38 downto 0),
      m_axi_arburst(1 downto 0) => axi_cdc_data_static_M_AXI1_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_cdc_data_static_M_AXI1_arcache(3 downto 0),
      m_axi_aresetn => \^psreset_gate_pr_kernel_interconnect_aresetn\(0),
      m_axi_arid(3 downto 0) => axi_cdc_data_static_M_AXI1_arid(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_cdc_data_static_M_AXI1_arlen(7 downto 0),
      m_axi_arlock(0) => axi_cdc_data_static_M_AXI1_arlock(0),
      m_axi_arprot(2 downto 0) => axi_cdc_data_static_M_AXI1_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_cdc_data_static_M_AXI1_arqos(3 downto 0),
      m_axi_arready => axi_cdc_data_static_M_AXI1_arready,
      m_axi_arregion(3 downto 0) => NLW_axi_cdc_data_static1_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => axi_cdc_data_static_M_AXI1_arsize(2 downto 0),
      m_axi_arvalid => axi_cdc_data_static_M_AXI1_arvalid,
      m_axi_awaddr(38 downto 0) => axi_cdc_data_static_M_AXI1_awaddr(38 downto 0),
      m_axi_awburst(1 downto 0) => axi_cdc_data_static_M_AXI1_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_cdc_data_static_M_AXI1_awcache(3 downto 0),
      m_axi_awid(3 downto 0) => axi_cdc_data_static_M_AXI1_awid(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_cdc_data_static_M_AXI1_awlen(7 downto 0),
      m_axi_awlock(0) => axi_cdc_data_static_M_AXI1_awlock(0),
      m_axi_awprot(2 downto 0) => axi_cdc_data_static_M_AXI1_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_cdc_data_static_M_AXI1_awqos(3 downto 0),
      m_axi_awready => axi_cdc_data_static_M_AXI1_awready,
      m_axi_awregion(3 downto 0) => NLW_axi_cdc_data_static1_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => axi_cdc_data_static_M_AXI1_awsize(2 downto 0),
      m_axi_awvalid => axi_cdc_data_static_M_AXI1_awvalid,
      m_axi_bid(3 downto 0) => axi_cdc_data_static_M_AXI1_bid(3 downto 0),
      m_axi_bready => axi_cdc_data_static_M_AXI1_bready,
      m_axi_bresp(1 downto 0) => axi_cdc_data_static_M_AXI1_bresp(1 downto 0),
      m_axi_bvalid => axi_cdc_data_static_M_AXI1_bvalid,
      m_axi_rdata(127 downto 0) => axi_cdc_data_static_M_AXI1_rdata(127 downto 0),
      m_axi_rid(3 downto 0) => axi_cdc_data_static_M_AXI1_rid(3 downto 0),
      m_axi_rlast => axi_cdc_data_static_M_AXI1_rlast,
      m_axi_rready => axi_cdc_data_static_M_AXI1_rready,
      m_axi_rresp(1 downto 0) => axi_cdc_data_static_M_AXI1_rresp(1 downto 0),
      m_axi_rvalid => axi_cdc_data_static_M_AXI1_rvalid,
      m_axi_wdata(127 downto 0) => axi_cdc_data_static_M_AXI1_wdata(127 downto 0),
      m_axi_wlast => axi_cdc_data_static_M_AXI1_wlast,
      m_axi_wready => axi_cdc_data_static_M_AXI1_wready,
      m_axi_wstrb(15 downto 0) => axi_cdc_data_static_M_AXI1_wstrb(15 downto 0),
      m_axi_wvalid => axi_cdc_data_static_M_AXI1_wvalid,
      s_axi_aclk => dma_pcie_axi_aclk,
      s_axi_araddr(38 downto 0) => regslice_data_static1_M_AXI_ARADDR(38 downto 0),
      s_axi_arburst(1 downto 0) => regslice_data_static1_M_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => regslice_data_static1_M_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => \^psreset_gate_pr_data_interconnect_aresetn\(0),
      s_axi_arid(3 downto 0) => regslice_data_static1_M_AXI_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => regslice_data_static1_M_AXI_ARLEN(7 downto 0),
      s_axi_arlock(0) => regslice_data_static1_M_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => regslice_data_static1_M_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => regslice_data_static1_M_AXI_ARQOS(3 downto 0),
      s_axi_arready => regslice_data_static1_M_AXI_ARREADY,
      s_axi_arregion(3 downto 0) => regslice_data_static1_M_AXI_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => regslice_data_static1_M_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => regslice_data_static1_M_AXI_ARVALID,
      s_axi_awaddr(38 downto 0) => regslice_data_static1_M_AXI_AWADDR(38 downto 0),
      s_axi_awburst(1 downto 0) => regslice_data_static1_M_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => regslice_data_static1_M_AXI_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => regslice_data_static1_M_AXI_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => regslice_data_static1_M_AXI_AWLEN(7 downto 0),
      s_axi_awlock(0) => regslice_data_static1_M_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => regslice_data_static1_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => regslice_data_static1_M_AXI_AWQOS(3 downto 0),
      s_axi_awready => regslice_data_static1_M_AXI_AWREADY,
      s_axi_awregion(3 downto 0) => regslice_data_static1_M_AXI_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => regslice_data_static1_M_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => regslice_data_static1_M_AXI_AWVALID,
      s_axi_bid(3 downto 0) => regslice_data_static1_M_AXI_BID(3 downto 0),
      s_axi_bready => regslice_data_static1_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => regslice_data_static1_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => regslice_data_static1_M_AXI_BVALID,
      s_axi_rdata(127 downto 0) => regslice_data_static1_M_AXI_RDATA(127 downto 0),
      s_axi_rid(3 downto 0) => regslice_data_static1_M_AXI_RID(3 downto 0),
      s_axi_rlast => regslice_data_static1_M_AXI_RLAST,
      s_axi_rready => regslice_data_static1_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => regslice_data_static1_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => regslice_data_static1_M_AXI_RVALID,
      s_axi_wdata(127 downto 0) => regslice_data_static1_M_AXI_WDATA(127 downto 0),
      s_axi_wlast => regslice_data_static1_M_AXI_WLAST,
      s_axi_wready => regslice_data_static1_M_AXI_WREADY,
      s_axi_wstrb(15 downto 0) => regslice_data_static1_M_AXI_WSTRB(15 downto 0),
      s_axi_wvalid => regslice_data_static1_M_AXI_WVALID
    );
axi_gpio_null: component ulp_axi_gpio_null_0
     port map (
      gpio_io_i(31 downto 0) => B"00000000000000000000000000000000",
      gpio_io_o(31 downto 0) => NLW_axi_gpio_null_gpio_io_o_UNCONNECTED(31 downto 0),
      gpio_io_t(31 downto 0) => NLW_axi_gpio_null_gpio_io_t_UNCONNECTED(31 downto 0),
      s_axi_aclk => dma_pcie_axi_aclk,
      s_axi_araddr(8 downto 0) => interconnect_axilite_user_M00_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => \^psreset_gate_pr_data_interconnect_aresetn\(0),
      s_axi_arready => interconnect_axilite_user_M00_AXI_ARREADY,
      s_axi_arvalid => interconnect_axilite_user_M00_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => interconnect_axilite_user_M00_AXI_AWADDR(8 downto 0),
      s_axi_awready => interconnect_axilite_user_M00_AXI_AWREADY,
      s_axi_awvalid => interconnect_axilite_user_M00_AXI_AWVALID,
      s_axi_bready => interconnect_axilite_user_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => interconnect_axilite_user_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => interconnect_axilite_user_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => interconnect_axilite_user_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => interconnect_axilite_user_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => interconnect_axilite_user_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => interconnect_axilite_user_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => interconnect_axilite_user_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => interconnect_axilite_user_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => interconnect_axilite_user_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => interconnect_axilite_user_M00_AXI_WVALID
    );
axi_interconnect_0: entity work.ulp_axi_interconnect_0_1
     port map (
      ACLK => clkwiz_sysclks_clk_out2,
      ARESETN => \^psreset_gate_pr_control_interconnect_aresetn\(0),
      M00_ACLK => c0_ddr4_ui_clk,
      M00_ARESETN => M00_ARESETN,
      M00_AXI_araddr(25 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(25 downto 0),
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(25 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(25 downto 0),
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      M01_ACLK => '0',
      M01_ARESETN => '0',
      M01_AXI_araddr(24 downto 12) => NLW_axi_interconnect_0_M01_AXI_araddr_UNCONNECTED(24 downto 12),
      M01_AXI_araddr(11 downto 0) => M01_AXI1_araddr(11 downto 0),
      M01_AXI_arready(0) => M01_AXI1_arready(0),
      M01_AXI_arvalid(0) => M01_AXI1_arvalid(0),
      M01_AXI_awaddr(24 downto 12) => NLW_axi_interconnect_0_M01_AXI_awaddr_UNCONNECTED(24 downto 12),
      M01_AXI_awaddr(11 downto 0) => M01_AXI1_awaddr(11 downto 0),
      M01_AXI_awready(0) => M01_AXI1_awready(0),
      M01_AXI_awvalid(0) => M01_AXI1_awvalid(0),
      M01_AXI_bready(0) => M01_AXI1_bready(0),
      M01_AXI_bresp(1 downto 0) => M01_AXI1_bresp(1 downto 0),
      M01_AXI_bvalid(0) => M01_AXI1_bvalid(0),
      M01_AXI_rdata(31 downto 0) => M01_AXI1_rdata(31 downto 0),
      M01_AXI_rready(0) => M01_AXI1_rready(0),
      M01_AXI_rresp(1 downto 0) => M01_AXI1_rresp(1 downto 0),
      M01_AXI_rvalid(0) => M01_AXI1_rvalid(0),
      M01_AXI_wdata(31 downto 0) => M01_AXI1_wdata(31 downto 0),
      M01_AXI_wready(0) => M01_AXI1_wready(0),
      M01_AXI_wstrb(3 downto 0) => M01_AXI1_wstrb(3 downto 0),
      M01_AXI_wvalid(0) => M01_AXI1_wvalid(0),
      S00_ACLK => '0',
      S00_ARESETN => '0',
      S00_AXI_araddr(24 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_ARADDR(24 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_ARPROT(2 downto 0),
      S00_AXI_arready(0) => axi_vip_ctrl_mgntpf_M_AXI1_ARREADY,
      S00_AXI_arvalid(0) => axi_vip_ctrl_mgntpf_M_AXI1_ARVALID,
      S00_AXI_awaddr(24 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_AWADDR(24 downto 0),
      S00_AXI_awprot(2 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_AWPROT(2 downto 0),
      S00_AXI_awready(0) => axi_vip_ctrl_mgntpf_M_AXI1_AWREADY,
      S00_AXI_awvalid(0) => axi_vip_ctrl_mgntpf_M_AXI1_AWVALID,
      S00_AXI_bready(0) => axi_vip_ctrl_mgntpf_M_AXI1_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => axi_vip_ctrl_mgntpf_M_AXI1_BVALID,
      S00_AXI_rdata(31 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_RDATA(31 downto 0),
      S00_AXI_rready(0) => axi_vip_ctrl_mgntpf_M_AXI1_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_RRESP(1 downto 0),
      S00_AXI_rvalid(0) => axi_vip_ctrl_mgntpf_M_AXI1_RVALID,
      S00_AXI_wdata(31 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_WDATA(31 downto 0),
      S00_AXI_wready(0) => axi_vip_ctrl_mgntpf_M_AXI1_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_WSTRB(3 downto 0),
      S00_AXI_wvalid(0) => axi_vip_ctrl_mgntpf_M_AXI1_WVALID
    );
axi_vip_ctrl_mgntpf: component ulp_axi_vip_ctrl_mgntpf_0
     port map (
      aclk => clkwiz_sysclks_clk_out2,
      aresetn => \^psreset_gate_pr_control_interconnect_aresetn\(0),
      m_axi_araddr(24 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_ARADDR(24 downto 0),
      m_axi_arprot(2 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_ARPROT(2 downto 0),
      m_axi_arready => axi_vip_ctrl_mgntpf_M_AXI1_ARREADY,
      m_axi_arvalid => axi_vip_ctrl_mgntpf_M_AXI1_ARVALID,
      m_axi_awaddr(24 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_AWADDR(24 downto 0),
      m_axi_awprot(2 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_AWPROT(2 downto 0),
      m_axi_awready => axi_vip_ctrl_mgntpf_M_AXI1_AWREADY,
      m_axi_awvalid => axi_vip_ctrl_mgntpf_M_AXI1_AWVALID,
      m_axi_bready => axi_vip_ctrl_mgntpf_M_AXI1_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_ctrl_mgntpf_M_AXI1_BVALID,
      m_axi_rdata(31 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_RDATA(31 downto 0),
      m_axi_rready => axi_vip_ctrl_mgntpf_M_AXI1_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_ctrl_mgntpf_M_AXI1_RVALID,
      m_axi_wdata(31 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_WDATA(31 downto 0),
      m_axi_wready => axi_vip_ctrl_mgntpf_M_AXI1_WREADY,
      m_axi_wstrb(3 downto 0) => axi_vip_ctrl_mgntpf_M_AXI1_WSTRB(3 downto 0),
      m_axi_wvalid => axi_vip_ctrl_mgntpf_M_AXI1_WVALID,
      s_axi_araddr(24 downto 0) => regslice_control_M_AXI_slr1_araddr(24 downto 0),
      s_axi_arprot(2 downto 0) => regslice_control_M_AXI_slr1_arprot(2 downto 0),
      s_axi_arready => regslice_control_M_AXI_slr1_arready,
      s_axi_arvalid => regslice_control_M_AXI_slr1_arvalid,
      s_axi_awaddr(24 downto 0) => regslice_control_M_AXI_slr1_awaddr(24 downto 0),
      s_axi_awprot(2 downto 0) => regslice_control_M_AXI_slr1_awprot(2 downto 0),
      s_axi_awready => regslice_control_M_AXI_slr1_awready,
      s_axi_awvalid => regslice_control_M_AXI_slr1_awvalid,
      s_axi_bready => regslice_control_M_AXI_slr1_bready,
      s_axi_bresp(1 downto 0) => regslice_control_M_AXI_slr1_bresp(1 downto 0),
      s_axi_bvalid => regslice_control_M_AXI_slr1_bvalid,
      s_axi_rdata(31 downto 0) => regslice_control_M_AXI_slr1_rdata(31 downto 0),
      s_axi_rready => regslice_control_M_AXI_slr1_rready,
      s_axi_rresp(1 downto 0) => regslice_control_M_AXI_slr1_rresp(1 downto 0),
      s_axi_rvalid => regslice_control_M_AXI_slr1_rvalid,
      s_axi_wdata(31 downto 0) => regslice_control_M_AXI_slr1_wdata(31 downto 0),
      s_axi_wready => regslice_control_M_AXI_slr1_wready,
      s_axi_wstrb(3 downto 0) => regslice_control_M_AXI_slr1_wstrb(3 downto 0),
      s_axi_wvalid => regslice_control_M_AXI_slr1_wvalid
    );
axi_vip_ctrl_userpf: component ulp_axi_vip_ctrl_userpf_0
     port map (
      aclk => dma_pcie_axi_aclk,
      aresetn => \^psreset_gate_pr_data_interconnect_aresetn\(0),
      m_axi_araddr(24 downto 0) => axi_vip_ctrl_userpf_M_AXI_ARADDR(24 downto 0),
      m_axi_arprot(2 downto 0) => axi_vip_ctrl_userpf_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => axi_vip_ctrl_userpf_M_AXI_ARREADY,
      m_axi_arvalid => axi_vip_ctrl_userpf_M_AXI_ARVALID,
      m_axi_awaddr(24 downto 0) => axi_vip_ctrl_userpf_M_AXI_AWADDR(24 downto 0),
      m_axi_awprot(2 downto 0) => axi_vip_ctrl_userpf_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => axi_vip_ctrl_userpf_M_AXI_AWREADY,
      m_axi_awvalid => axi_vip_ctrl_userpf_M_AXI_AWVALID,
      m_axi_bready => axi_vip_ctrl_userpf_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_ctrl_userpf_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_ctrl_userpf_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => axi_vip_ctrl_userpf_M_AXI_RDATA(31 downto 0),
      m_axi_rready => axi_vip_ctrl_userpf_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_ctrl_userpf_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_ctrl_userpf_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => axi_vip_ctrl_userpf_M_AXI_WDATA(31 downto 0),
      m_axi_wready => axi_vip_ctrl_userpf_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => axi_vip_ctrl_userpf_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => axi_vip_ctrl_userpf_M_AXI_WVALID,
      s_axi_araddr(24 downto 0) => regslice_control_userpf_M_AXI_slr1_araddr(24 downto 0),
      s_axi_arprot(2 downto 0) => regslice_control_userpf_M_AXI_slr1_arprot(2 downto 0),
      s_axi_arready => regslice_control_userpf_M_AXI_slr1_arready,
      s_axi_arvalid => regslice_control_userpf_M_AXI_slr1_arvalid,
      s_axi_awaddr(24 downto 0) => regslice_control_userpf_M_AXI_slr1_awaddr(24 downto 0),
      s_axi_awprot(2 downto 0) => regslice_control_userpf_M_AXI_slr1_awprot(2 downto 0),
      s_axi_awready => regslice_control_userpf_M_AXI_slr1_awready,
      s_axi_awvalid => regslice_control_userpf_M_AXI_slr1_awvalid,
      s_axi_bready => regslice_control_userpf_M_AXI_slr1_bready,
      s_axi_bresp(1 downto 0) => regslice_control_userpf_M_AXI_slr1_bresp(1 downto 0),
      s_axi_bvalid => regslice_control_userpf_M_AXI_slr1_bvalid,
      s_axi_rdata(31 downto 0) => regslice_control_userpf_M_AXI_slr1_rdata(31 downto 0),
      s_axi_rready => regslice_control_userpf_M_AXI_slr1_rready,
      s_axi_rresp(1 downto 0) => regslice_control_userpf_M_AXI_slr1_rresp(1 downto 0),
      s_axi_rvalid => regslice_control_userpf_M_AXI_slr1_rvalid,
      s_axi_wdata(31 downto 0) => regslice_control_userpf_M_AXI_slr1_wdata(31 downto 0),
      s_axi_wready => regslice_control_userpf_M_AXI_slr1_wready,
      s_axi_wstrb(3 downto 0) => regslice_control_userpf_M_AXI_slr1_wstrb(3 downto 0),
      s_axi_wvalid => regslice_control_userpf_M_AXI_slr1_wvalid
    );
axi_vip_data_static: component ulp_axi_vip_data_static_0
     port map (
      aclk => dma_pcie_axi_aclk,
      aresetn => \^psreset_gate_pr_data_interconnect_aresetn\(0),
      m_axi_araddr(38 downto 0) => axi_vip_data_static_M_AXI_ARADDR(38 downto 0),
      m_axi_arburst(1 downto 0) => axi_vip_data_static_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_vip_data_static_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(3 downto 0) => axi_vip_data_static_M_AXI_ARID(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_vip_data_static_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_vip_data_static_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => axi_vip_data_static_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => axi_vip_data_static_M_AXI_ARREADY,
      m_axi_arvalid => axi_vip_data_static_M_AXI_ARVALID,
      m_axi_awaddr(38 downto 0) => axi_vip_data_static_M_AXI_AWADDR(38 downto 0),
      m_axi_awburst(1 downto 0) => axi_vip_data_static_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_vip_data_static_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(3 downto 0) => axi_vip_data_static_M_AXI_AWID(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_vip_data_static_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_vip_data_static_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => axi_vip_data_static_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => axi_vip_data_static_M_AXI_AWREADY,
      m_axi_awvalid => axi_vip_data_static_M_AXI_AWVALID,
      m_axi_bid(3 downto 0) => axi_vip_data_static_M_AXI_BID(3 downto 0),
      m_axi_bready => axi_vip_data_static_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_data_static_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_data_static_M_AXI_BVALID,
      m_axi_rdata(511 downto 0) => axi_vip_data_static_M_AXI_RDATA(511 downto 0),
      m_axi_rid(3 downto 0) => axi_vip_data_static_M_AXI_RID(3 downto 0),
      m_axi_rlast => axi_vip_data_static_M_AXI_RLAST,
      m_axi_rready => axi_vip_data_static_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_data_static_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_data_static_M_AXI_RVALID,
      m_axi_wdata(511 downto 0) => axi_vip_data_static_M_AXI_WDATA(511 downto 0),
      m_axi_wlast => axi_vip_data_static_M_AXI_WLAST,
      m_axi_wready => axi_vip_data_static_M_AXI_WREADY,
      m_axi_wstrb(63 downto 0) => axi_vip_data_static_M_AXI_WSTRB(63 downto 0),
      m_axi_wvalid => axi_vip_data_static_M_AXI_WVALID,
      s_axi_araddr(38 downto 0) => regslice_data_static_M_AXI_slr1_araddr(38 downto 0),
      s_axi_arburst(1 downto 0) => regslice_data_static_M_AXI_slr1_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => regslice_data_static_M_AXI_slr1_arcache(3 downto 0),
      s_axi_arid(3 downto 0) => regslice_data_static_M_AXI_slr1_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => regslice_data_static_M_AXI_slr1_arlen(7 downto 0),
      s_axi_arlock(0) => regslice_data_static_M_AXI_slr1_arlock(0),
      s_axi_arprot(2 downto 0) => regslice_data_static_M_AXI_slr1_arprot(2 downto 0),
      s_axi_arready => regslice_data_static_M_AXI_slr1_arready,
      s_axi_arvalid => regslice_data_static_M_AXI_slr1_arvalid,
      s_axi_awaddr(38 downto 0) => regslice_data_static_M_AXI_slr1_awaddr(38 downto 0),
      s_axi_awburst(1 downto 0) => regslice_data_static_M_AXI_slr1_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => regslice_data_static_M_AXI_slr1_awcache(3 downto 0),
      s_axi_awid(3 downto 0) => regslice_data_static_M_AXI_slr1_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => regslice_data_static_M_AXI_slr1_awlen(7 downto 0),
      s_axi_awlock(0) => regslice_data_static_M_AXI_slr1_awlock(0),
      s_axi_awprot(2 downto 0) => regslice_data_static_M_AXI_slr1_awprot(2 downto 0),
      s_axi_awready => regslice_data_static_M_AXI_slr1_awready,
      s_axi_awvalid => regslice_data_static_M_AXI_slr1_awvalid,
      s_axi_bid(3 downto 0) => regslice_data_static_M_AXI_slr1_bid(3 downto 0),
      s_axi_bready => regslice_data_static_M_AXI_slr1_bready,
      s_axi_bresp(1 downto 0) => regslice_data_static_M_AXI_slr1_bresp(1 downto 0),
      s_axi_bvalid => regslice_data_static_M_AXI_slr1_bvalid,
      s_axi_rdata(511 downto 0) => regslice_data_static_M_AXI_slr1_rdata(511 downto 0),
      s_axi_rid(3 downto 0) => regslice_data_static_M_AXI_slr1_rid(3 downto 0),
      s_axi_rlast => regslice_data_static_M_AXI_slr1_rlast,
      s_axi_rready => regslice_data_static_M_AXI_slr1_rready,
      s_axi_rresp(1 downto 0) => regslice_data_static_M_AXI_slr1_rresp(1 downto 0),
      s_axi_rvalid => regslice_data_static_M_AXI_slr1_rvalid,
      s_axi_wdata(511 downto 0) => regslice_data_static_M_AXI_slr1_wdata(511 downto 0),
      s_axi_wlast => regslice_data_static_M_AXI_slr1_wlast,
      s_axi_wready => regslice_data_static_M_AXI_slr1_wready,
      s_axi_wstrb(63 downto 0) => regslice_data_static_M_AXI_slr1_wstrb(63 downto 0),
      s_axi_wvalid => regslice_data_static_M_AXI_slr1_wvalid
    );
axi_vip_data_static1: component ulp_axi_vip_data_static1_0
     port map (
      aclk => dma_pcie_axi_aclk,
      aresetn => \^psreset_gate_pr_data_interconnect_aresetn\(0),
      m_axi_araddr(38 downto 0) => axi_vip_data_static1_M_AXI_ARADDR(38 downto 0),
      m_axi_arburst(1 downto 0) => axi_vip_data_static1_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_vip_data_static1_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(3 downto 0) => axi_vip_data_static1_M_AXI_ARID(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_vip_data_static1_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_vip_data_static1_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => axi_vip_data_static1_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => axi_vip_data_static1_M_AXI_ARREADY,
      m_axi_arvalid => axi_vip_data_static1_M_AXI_ARVALID,
      m_axi_awaddr(38 downto 0) => axi_vip_data_static1_M_AXI_AWADDR(38 downto 0),
      m_axi_awburst(1 downto 0) => axi_vip_data_static1_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_vip_data_static1_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(3 downto 0) => axi_vip_data_static1_M_AXI_AWID(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_vip_data_static1_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_vip_data_static1_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => axi_vip_data_static1_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => axi_vip_data_static1_M_AXI_AWREADY,
      m_axi_awvalid => axi_vip_data_static1_M_AXI_AWVALID,
      m_axi_bid(3 downto 0) => axi_vip_data_static1_M_AXI_BID(3 downto 0),
      m_axi_bready => axi_vip_data_static1_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_data_static1_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_data_static1_M_AXI_BVALID,
      m_axi_rdata(127 downto 0) => axi_vip_data_static1_M_AXI_RDATA(127 downto 0),
      m_axi_rid(3 downto 0) => axi_vip_data_static1_M_AXI_RID(3 downto 0),
      m_axi_rlast => axi_vip_data_static1_M_AXI_RLAST,
      m_axi_rready => axi_vip_data_static1_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_data_static1_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_data_static1_M_AXI_RVALID,
      m_axi_wdata(127 downto 0) => axi_vip_data_static1_M_AXI_WDATA(127 downto 0),
      m_axi_wlast => axi_vip_data_static1_M_AXI_WLAST,
      m_axi_wready => axi_vip_data_static1_M_AXI_WREADY,
      m_axi_wstrb(15 downto 0) => axi_vip_data_static1_M_AXI_WSTRB(15 downto 0),
      m_axi_wvalid => axi_vip_data_static1_M_AXI_WVALID,
      s_axi_araddr(38 downto 0) => regslice_data_static_M_AXI_slr2_araddr(38 downto 0),
      s_axi_arburst(1 downto 0) => regslice_data_static_M_AXI_slr2_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => regslice_data_static_M_AXI_slr2_arcache(3 downto 0),
      s_axi_arid(3 downto 0) => regslice_data_static_M_AXI_slr2_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => regslice_data_static_M_AXI_slr2_arlen(7 downto 0),
      s_axi_arlock(0) => regslice_data_static_M_AXI_slr2_arlock(0),
      s_axi_arprot(2 downto 0) => regslice_data_static_M_AXI_slr2_arprot(2 downto 0),
      s_axi_arready => regslice_data_static_M_AXI_slr2_arready,
      s_axi_arvalid => regslice_data_static_M_AXI_slr2_arvalid,
      s_axi_awaddr(38 downto 0) => regslice_data_static_M_AXI_slr2_awaddr(38 downto 0),
      s_axi_awburst(1 downto 0) => regslice_data_static_M_AXI_slr2_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => regslice_data_static_M_AXI_slr2_awcache(3 downto 0),
      s_axi_awid(3 downto 0) => regslice_data_static_M_AXI_slr2_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => regslice_data_static_M_AXI_slr2_awlen(7 downto 0),
      s_axi_awlock(0) => regslice_data_static_M_AXI_slr2_awlock(0),
      s_axi_awprot(2 downto 0) => regslice_data_static_M_AXI_slr2_awprot(2 downto 0),
      s_axi_awready => regslice_data_static_M_AXI_slr2_awready,
      s_axi_awvalid => regslice_data_static_M_AXI_slr2_awvalid,
      s_axi_bid(3 downto 0) => regslice_data_static_M_AXI_slr2_bid(3 downto 0),
      s_axi_bready => regslice_data_static_M_AXI_slr2_bready,
      s_axi_bresp(1 downto 0) => regslice_data_static_M_AXI_slr2_bresp(1 downto 0),
      s_axi_bvalid => regslice_data_static_M_AXI_slr2_bvalid,
      s_axi_rdata(127 downto 0) => regslice_data_static_M_AXI_slr2_rdata(127 downto 0),
      s_axi_rid(3 downto 0) => regslice_data_static_M_AXI_slr2_rid(3 downto 0),
      s_axi_rlast => regslice_data_static_M_AXI_slr2_rlast,
      s_axi_rready => regslice_data_static_M_AXI_slr2_rready,
      s_axi_rresp(1 downto 0) => regslice_data_static_M_AXI_slr2_rresp(1 downto 0),
      s_axi_rvalid => regslice_data_static_M_AXI_slr2_rvalid,
      s_axi_wdata(127 downto 0) => regslice_data_static_M_AXI_slr2_wdata(127 downto 0),
      s_axi_wlast => regslice_data_static_M_AXI_slr2_wlast,
      s_axi_wready => regslice_data_static_M_AXI_slr2_wready,
      s_axi_wstrb(15 downto 0) => regslice_data_static_M_AXI_slr2_wstrb(15 downto 0),
      s_axi_wvalid => regslice_data_static_M_AXI_slr2_wvalid
    );
freq_counter_0: component ulp_freq_counter_0_0
     port map (
      axil_araddr(31 downto 25) => B"0000000",
      axil_araddr(24 downto 0) => regslice_control_periph_M_AXI_slr1_araddr(24 downto 0),
      axil_arprot(2 downto 0) => regslice_control_periph_M_AXI_slr1_arprot(2 downto 0),
      axil_arready => regslice_control_periph_M_AXI_slr1_arready,
      axil_arvalid => regslice_control_periph_M_AXI_slr1_arvalid,
      axil_awaddr(31 downto 25) => B"0000000",
      axil_awaddr(24 downto 0) => regslice_control_periph_M_AXI_slr1_awaddr(24 downto 0),
      axil_awprot(2 downto 0) => regslice_control_periph_M_AXI_slr1_awprot(2 downto 0),
      axil_awready => regslice_control_periph_M_AXI_slr1_awready,
      axil_awvalid => regslice_control_periph_M_AXI_slr1_awvalid,
      axil_bready => regslice_control_periph_M_AXI_slr1_bready,
      axil_bresp(1 downto 0) => regslice_control_periph_M_AXI_slr1_bresp(1 downto 0),
      axil_bvalid => regslice_control_periph_M_AXI_slr1_bvalid,
      axil_rdata(31 downto 0) => regslice_control_periph_M_AXI_slr1_rdata(31 downto 0),
      axil_rready => regslice_control_periph_M_AXI_slr1_rready,
      axil_rresp(1 downto 0) => regslice_control_periph_M_AXI_slr1_rresp(1 downto 0),
      axil_rvalid => regslice_control_periph_M_AXI_slr1_rvalid,
      axil_wdata(31 downto 0) => regslice_control_periph_M_AXI_slr1_wdata(31 downto 0),
      axil_wready => regslice_control_periph_M_AXI_slr1_wready,
      axil_wstrb(3 downto 0) => regslice_control_periph_M_AXI_slr1_wstrb(3 downto 0),
      axil_wvalid => regslice_control_periph_M_AXI_slr1_wvalid,
      clk => clkwiz_sysclks_clk_out2,
      reset_n => \^psreset_gate_pr_control_interconnect_aresetn\(0),
      test_clk0 => clkwiz_kernel_clk_out1,
      test_clk1 => clkwiz_kernel2_clk_out1
    );
interconnect_axilite_user: entity work.ulp_interconnect_axilite_user_0
     port map (
      ACLK => '0',
      ARESETN => '0',
      M00_ACLK => '0',
      M00_ARESETN => '0',
      M00_AXI_araddr(8 downto 0) => interconnect_axilite_user_M00_AXI_ARADDR(8 downto 0),
      M00_AXI_arready => interconnect_axilite_user_M00_AXI_ARREADY,
      M00_AXI_arvalid => interconnect_axilite_user_M00_AXI_ARVALID,
      M00_AXI_awaddr(8 downto 0) => interconnect_axilite_user_M00_AXI_AWADDR(8 downto 0),
      M00_AXI_awready => interconnect_axilite_user_M00_AXI_AWREADY,
      M00_AXI_awvalid => interconnect_axilite_user_M00_AXI_AWVALID,
      M00_AXI_bready => interconnect_axilite_user_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => interconnect_axilite_user_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => interconnect_axilite_user_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => interconnect_axilite_user_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => interconnect_axilite_user_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => interconnect_axilite_user_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => interconnect_axilite_user_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => interconnect_axilite_user_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => interconnect_axilite_user_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => interconnect_axilite_user_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => interconnect_axilite_user_M00_AXI_WVALID,
      M01_ACLK => blp_s_aclk_kernel_ref_clk_00,
      M01_ARESETN => \^psreset_gate_pr_kernel_interconnect_aresetn\(0),
      M01_AXI_araddr(6 downto 0) => M01_AXI_araddr(6 downto 0),
      M01_AXI_arready => M01_AXI_arready,
      M01_AXI_arvalid => M01_AXI_arvalid,
      M01_AXI_awaddr(6 downto 0) => M01_AXI_awaddr(6 downto 0),
      M01_AXI_awready => M01_AXI_awready,
      M01_AXI_awvalid => M01_AXI_awvalid,
      M01_AXI_bready => M01_AXI_bready,
      M01_AXI_bresp(1 downto 0) => M01_AXI_bresp(1 downto 0),
      M01_AXI_bvalid => M01_AXI_bvalid,
      M01_AXI_rdata(31 downto 0) => M01_AXI_rdata(31 downto 0),
      M01_AXI_rready => M01_AXI_rready,
      M01_AXI_rresp(1 downto 0) => M01_AXI_rresp(1 downto 0),
      M01_AXI_rvalid => M01_AXI_rvalid,
      M01_AXI_wdata(31 downto 0) => M01_AXI_wdata(31 downto 0),
      M01_AXI_wready => M01_AXI_wready,
      M01_AXI_wstrb(3 downto 0) => M01_AXI_wstrb(3 downto 0),
      M01_AXI_wvalid => M01_AXI_wvalid,
      S00_ACLK => dma_pcie_axi_aclk,
      S00_ARESETN => \^psreset_gate_pr_data_interconnect_aresetn\(0),
      S00_AXI_araddr(24 downto 0) => regslice_control_userpf_M_AXI_ARADDR(24 downto 0),
      S00_AXI_arprot(2 downto 0) => regslice_control_userpf_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arready => regslice_control_userpf_M_AXI_ARREADY,
      S00_AXI_arvalid => regslice_control_userpf_M_AXI_ARVALID,
      S00_AXI_awaddr(24 downto 0) => regslice_control_userpf_M_AXI_AWADDR(24 downto 0),
      S00_AXI_awprot(2 downto 0) => regslice_control_userpf_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awready => regslice_control_userpf_M_AXI_AWREADY,
      S00_AXI_awvalid => regslice_control_userpf_M_AXI_AWVALID,
      S00_AXI_bready => regslice_control_userpf_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => regslice_control_userpf_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => regslice_control_userpf_M_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => regslice_control_userpf_M_AXI_RDATA(31 downto 0),
      S00_AXI_rready => regslice_control_userpf_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => regslice_control_userpf_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => regslice_control_userpf_M_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => regslice_control_userpf_M_AXI_WDATA(31 downto 0),
      S00_AXI_wready => regslice_control_userpf_M_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => regslice_control_userpf_M_AXI_WSTRB(3 downto 0),
      S00_AXI_wvalid => regslice_control_userpf_M_AXI_WVALID
    );
regslice_control_mgntpf: component ulp_regslice_control_mgntpf_0
     port map (
      aclk => c0_ddr4_ui_clk,
      aresetn => M00_ARESETN,
      m_axi_araddr(25 downto 0) => axi_vip_ctrl_mgntpf_M_AXI_araddr(25 downto 0),
      m_axi_arprot(2 downto 0) => NLW_regslice_control_mgntpf_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => axi_vip_ctrl_mgntpf_M_AXI_arready,
      m_axi_arvalid => axi_vip_ctrl_mgntpf_M_AXI_arvalid,
      m_axi_awaddr(25 downto 0) => axi_vip_ctrl_mgntpf_M_AXI_awaddr(25 downto 0),
      m_axi_awprot(2 downto 0) => NLW_regslice_control_mgntpf_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => axi_vip_ctrl_mgntpf_M_AXI_awready,
      m_axi_awvalid => axi_vip_ctrl_mgntpf_M_AXI_awvalid,
      m_axi_bready => axi_vip_ctrl_mgntpf_M_AXI_bready,
      m_axi_bresp(1 downto 0) => axi_vip_ctrl_mgntpf_M_AXI_bresp(1 downto 0),
      m_axi_bvalid => axi_vip_ctrl_mgntpf_M_AXI_bvalid,
      m_axi_rdata(31 downto 0) => axi_vip_ctrl_mgntpf_M_AXI_rdata(31 downto 0),
      m_axi_rready => axi_vip_ctrl_mgntpf_M_AXI_rready,
      m_axi_rresp(1 downto 0) => axi_vip_ctrl_mgntpf_M_AXI_rresp(1 downto 0),
      m_axi_rvalid => axi_vip_ctrl_mgntpf_M_AXI_rvalid,
      m_axi_wdata(31 downto 0) => axi_vip_ctrl_mgntpf_M_AXI_wdata(31 downto 0),
      m_axi_wready => axi_vip_ctrl_mgntpf_M_AXI_wready,
      m_axi_wstrb(3 downto 0) => NLW_regslice_control_mgntpf_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => axi_vip_ctrl_mgntpf_M_AXI_wvalid,
      s_axi_araddr(25 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(25 downto 0),
      s_axi_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_interconnect_0_M00_AXI_ARREADY,
      s_axi_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      s_axi_awaddr(25 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(25 downto 0),
      s_axi_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_interconnect_0_M00_AXI_AWREADY,
      s_axi_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      s_axi_bready => axi_interconnect_0_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_interconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_interconnect_0_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_interconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_interconnect_0_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_interconnect_0_M00_AXI_WVALID
    );
regslice_control_userpf: component ulp_regslice_control_userpf_0
     port map (
      aclk => dma_pcie_axi_aclk,
      aresetn => \^psreset_gate_pr_data_interconnect_aresetn\(0),
      m_axi_araddr(24 downto 0) => regslice_control_userpf_M_AXI_ARADDR(24 downto 0),
      m_axi_arprot(2 downto 0) => regslice_control_userpf_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => regslice_control_userpf_M_AXI_ARREADY,
      m_axi_arvalid => regslice_control_userpf_M_AXI_ARVALID,
      m_axi_awaddr(24 downto 0) => regslice_control_userpf_M_AXI_AWADDR(24 downto 0),
      m_axi_awprot(2 downto 0) => regslice_control_userpf_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => regslice_control_userpf_M_AXI_AWREADY,
      m_axi_awvalid => regslice_control_userpf_M_AXI_AWVALID,
      m_axi_bready => regslice_control_userpf_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => regslice_control_userpf_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => regslice_control_userpf_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => regslice_control_userpf_M_AXI_RDATA(31 downto 0),
      m_axi_rready => regslice_control_userpf_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => regslice_control_userpf_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => regslice_control_userpf_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => regslice_control_userpf_M_AXI_WDATA(31 downto 0),
      m_axi_wready => regslice_control_userpf_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => regslice_control_userpf_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => regslice_control_userpf_M_AXI_WVALID,
      s_axi_araddr(24 downto 0) => axi_vip_ctrl_userpf_M_AXI_ARADDR(24 downto 0),
      s_axi_arprot(2 downto 0) => axi_vip_ctrl_userpf_M_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_vip_ctrl_userpf_M_AXI_ARREADY,
      s_axi_arvalid => axi_vip_ctrl_userpf_M_AXI_ARVALID,
      s_axi_awaddr(24 downto 0) => axi_vip_ctrl_userpf_M_AXI_AWADDR(24 downto 0),
      s_axi_awprot(2 downto 0) => axi_vip_ctrl_userpf_M_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_vip_ctrl_userpf_M_AXI_AWREADY,
      s_axi_awvalid => axi_vip_ctrl_userpf_M_AXI_AWVALID,
      s_axi_bready => axi_vip_ctrl_userpf_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_vip_ctrl_userpf_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_vip_ctrl_userpf_M_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_vip_ctrl_userpf_M_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_vip_ctrl_userpf_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_vip_ctrl_userpf_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_vip_ctrl_userpf_M_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_vip_ctrl_userpf_M_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_vip_ctrl_userpf_M_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_vip_ctrl_userpf_M_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_vip_ctrl_userpf_M_AXI_WVALID
    );
regslice_data_static: component ulp_regslice_data_static_0
     port map (
      aclk => dma_pcie_axi_aclk,
      aresetn => \^psreset_gate_pr_data_interconnect_aresetn\(0),
      m_axi_araddr(38 downto 0) => regslice_data_static_M_AXI1_ARADDR(38 downto 0),
      m_axi_arburst(1 downto 0) => regslice_data_static_M_AXI1_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => regslice_data_static_M_AXI1_ARCACHE(3 downto 0),
      m_axi_arid(3 downto 0) => regslice_data_static_M_AXI1_ARID(3 downto 0),
      m_axi_arlen(7 downto 0) => regslice_data_static_M_AXI1_ARLEN(7 downto 0),
      m_axi_arlock(0) => regslice_data_static_M_AXI1_ARLOCK,
      m_axi_arprot(2 downto 0) => regslice_data_static_M_AXI1_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => regslice_data_static_M_AXI1_ARQOS(3 downto 0),
      m_axi_arready => regslice_data_static_M_AXI1_ARREADY,
      m_axi_arregion(3 downto 0) => regslice_data_static_M_AXI1_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => regslice_data_static_M_AXI1_ARSIZE(2 downto 0),
      m_axi_arvalid => regslice_data_static_M_AXI1_ARVALID,
      m_axi_awaddr(38 downto 0) => regslice_data_static_M_AXI1_AWADDR(38 downto 0),
      m_axi_awburst(1 downto 0) => regslice_data_static_M_AXI1_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => regslice_data_static_M_AXI1_AWCACHE(3 downto 0),
      m_axi_awid(3 downto 0) => regslice_data_static_M_AXI1_AWID(3 downto 0),
      m_axi_awlen(7 downto 0) => regslice_data_static_M_AXI1_AWLEN(7 downto 0),
      m_axi_awlock(0) => regslice_data_static_M_AXI1_AWLOCK,
      m_axi_awprot(2 downto 0) => regslice_data_static_M_AXI1_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => regslice_data_static_M_AXI1_AWQOS(3 downto 0),
      m_axi_awready => regslice_data_static_M_AXI1_AWREADY,
      m_axi_awregion(3 downto 0) => regslice_data_static_M_AXI1_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => regslice_data_static_M_AXI1_AWSIZE(2 downto 0),
      m_axi_awvalid => regslice_data_static_M_AXI1_AWVALID,
      m_axi_bid(3 downto 0) => regslice_data_static_M_AXI1_BID(3 downto 0),
      m_axi_bready => regslice_data_static_M_AXI1_BREADY,
      m_axi_bresp(1 downto 0) => regslice_data_static_M_AXI1_BRESP(1 downto 0),
      m_axi_bvalid => regslice_data_static_M_AXI1_BVALID,
      m_axi_rdata(511 downto 0) => regslice_data_static_M_AXI1_RDATA(511 downto 0),
      m_axi_rid(3 downto 0) => regslice_data_static_M_AXI1_RID(3 downto 0),
      m_axi_rlast => regslice_data_static_M_AXI1_RLAST,
      m_axi_rready => regslice_data_static_M_AXI1_RREADY,
      m_axi_rresp(1 downto 0) => regslice_data_static_M_AXI1_RRESP(1 downto 0),
      m_axi_rvalid => regslice_data_static_M_AXI1_RVALID,
      m_axi_wdata(511 downto 0) => regslice_data_static_M_AXI1_WDATA(511 downto 0),
      m_axi_wlast => regslice_data_static_M_AXI1_WLAST,
      m_axi_wready => regslice_data_static_M_AXI1_WREADY,
      m_axi_wstrb(63 downto 0) => regslice_data_static_M_AXI1_WSTRB(63 downto 0),
      m_axi_wvalid => regslice_data_static_M_AXI1_WVALID,
      s_axi_araddr(38 downto 0) => axi_vip_data_static_M_AXI_ARADDR(38 downto 0),
      s_axi_arburst(1 downto 0) => axi_vip_data_static_M_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_vip_data_static_M_AXI_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => axi_vip_data_static_M_AXI_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => axi_vip_data_static_M_AXI_ARLEN(7 downto 0),
      s_axi_arlock(0) => axi_vip_data_static_M_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_vip_data_static_M_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => axi_vip_data_static_M_AXI_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"110",
      s_axi_arvalid => axi_vip_data_static_M_AXI_ARVALID,
      s_axi_awaddr(38 downto 0) => axi_vip_data_static_M_AXI_AWADDR(38 downto 0),
      s_axi_awburst(1 downto 0) => axi_vip_data_static_M_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_vip_data_static_M_AXI_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => axi_vip_data_static_M_AXI_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => axi_vip_data_static_M_AXI_AWLEN(7 downto 0),
      s_axi_awlock(0) => axi_vip_data_static_M_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_vip_data_static_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => axi_vip_data_static_M_AXI_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"110",
      s_axi_awvalid => axi_vip_data_static_M_AXI_AWVALID,
      s_axi_bid(3 downto 0) => axi_vip_data_static_M_AXI_BID(3 downto 0),
      s_axi_bready => axi_vip_data_static_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_vip_data_static_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_vip_data_static_M_AXI_BVALID,
      s_axi_rdata(511 downto 0) => axi_vip_data_static_M_AXI_RDATA(511 downto 0),
      s_axi_rid(3 downto 0) => axi_vip_data_static_M_AXI_RID(3 downto 0),
      s_axi_rlast => axi_vip_data_static_M_AXI_RLAST,
      s_axi_rready => axi_vip_data_static_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_vip_data_static_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_vip_data_static_M_AXI_RVALID,
      s_axi_wdata(511 downto 0) => axi_vip_data_static_M_AXI_WDATA(511 downto 0),
      s_axi_wlast => axi_vip_data_static_M_AXI_WLAST,
      s_axi_wready => axi_vip_data_static_M_AXI_WREADY,
      s_axi_wstrb(63 downto 0) => axi_vip_data_static_M_AXI_WSTRB(63 downto 0),
      s_axi_wvalid => axi_vip_data_static_M_AXI_WVALID
    );
regslice_data_static1: component ulp_regslice_data_static1_0
     port map (
      aclk => dma_pcie_axi_aclk,
      aresetn => \^psreset_gate_pr_data_interconnect_aresetn\(0),
      m_axi_araddr(38 downto 0) => regslice_data_static1_M_AXI_ARADDR(38 downto 0),
      m_axi_arburst(1 downto 0) => regslice_data_static1_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => regslice_data_static1_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(3 downto 0) => regslice_data_static1_M_AXI_ARID(3 downto 0),
      m_axi_arlen(7 downto 0) => regslice_data_static1_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => regslice_data_static1_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => regslice_data_static1_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => regslice_data_static1_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => regslice_data_static1_M_AXI_ARREADY,
      m_axi_arregion(3 downto 0) => regslice_data_static1_M_AXI_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => regslice_data_static1_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => regslice_data_static1_M_AXI_ARVALID,
      m_axi_awaddr(38 downto 0) => regslice_data_static1_M_AXI_AWADDR(38 downto 0),
      m_axi_awburst(1 downto 0) => regslice_data_static1_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => regslice_data_static1_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(3 downto 0) => regslice_data_static1_M_AXI_AWID(3 downto 0),
      m_axi_awlen(7 downto 0) => regslice_data_static1_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => regslice_data_static1_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => regslice_data_static1_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => regslice_data_static1_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => regslice_data_static1_M_AXI_AWREADY,
      m_axi_awregion(3 downto 0) => regslice_data_static1_M_AXI_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => regslice_data_static1_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => regslice_data_static1_M_AXI_AWVALID,
      m_axi_bid(3 downto 0) => regslice_data_static1_M_AXI_BID(3 downto 0),
      m_axi_bready => regslice_data_static1_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => regslice_data_static1_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => regslice_data_static1_M_AXI_BVALID,
      m_axi_rdata(127 downto 0) => regslice_data_static1_M_AXI_RDATA(127 downto 0),
      m_axi_rid(3 downto 0) => regslice_data_static1_M_AXI_RID(3 downto 0),
      m_axi_rlast => regslice_data_static1_M_AXI_RLAST,
      m_axi_rready => regslice_data_static1_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => regslice_data_static1_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => regslice_data_static1_M_AXI_RVALID,
      m_axi_wdata(127 downto 0) => regslice_data_static1_M_AXI_WDATA(127 downto 0),
      m_axi_wlast => regslice_data_static1_M_AXI_WLAST,
      m_axi_wready => regslice_data_static1_M_AXI_WREADY,
      m_axi_wstrb(15 downto 0) => regslice_data_static1_M_AXI_WSTRB(15 downto 0),
      m_axi_wvalid => regslice_data_static1_M_AXI_WVALID,
      s_axi_araddr(38 downto 0) => axi_vip_data_static1_M_AXI_ARADDR(38 downto 0),
      s_axi_arburst(1 downto 0) => axi_vip_data_static1_M_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_vip_data_static1_M_AXI_ARCACHE(3 downto 0),
      s_axi_arid(3 downto 0) => axi_vip_data_static1_M_AXI_ARID(3 downto 0),
      s_axi_arlen(7 downto 0) => axi_vip_data_static1_M_AXI_ARLEN(7 downto 0),
      s_axi_arlock(0) => axi_vip_data_static1_M_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_vip_data_static1_M_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => axi_vip_data_static1_M_AXI_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"100",
      s_axi_arvalid => axi_vip_data_static1_M_AXI_ARVALID,
      s_axi_awaddr(38 downto 0) => axi_vip_data_static1_M_AXI_AWADDR(38 downto 0),
      s_axi_awburst(1 downto 0) => axi_vip_data_static1_M_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_vip_data_static1_M_AXI_AWCACHE(3 downto 0),
      s_axi_awid(3 downto 0) => axi_vip_data_static1_M_AXI_AWID(3 downto 0),
      s_axi_awlen(7 downto 0) => axi_vip_data_static1_M_AXI_AWLEN(7 downto 0),
      s_axi_awlock(0) => axi_vip_data_static1_M_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_vip_data_static1_M_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => axi_vip_data_static1_M_AXI_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"100",
      s_axi_awvalid => axi_vip_data_static1_M_AXI_AWVALID,
      s_axi_bid(3 downto 0) => axi_vip_data_static1_M_AXI_BID(3 downto 0),
      s_axi_bready => axi_vip_data_static1_M_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_vip_data_static1_M_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_vip_data_static1_M_AXI_BVALID,
      s_axi_rdata(127 downto 0) => axi_vip_data_static1_M_AXI_RDATA(127 downto 0),
      s_axi_rid(3 downto 0) => axi_vip_data_static1_M_AXI_RID(3 downto 0),
      s_axi_rlast => axi_vip_data_static1_M_AXI_RLAST,
      s_axi_rready => axi_vip_data_static1_M_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_vip_data_static1_M_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_vip_data_static1_M_AXI_RVALID,
      s_axi_wdata(127 downto 0) => axi_vip_data_static1_M_AXI_WDATA(127 downto 0),
      s_axi_wlast => axi_vip_data_static1_M_AXI_WLAST,
      s_axi_wready => axi_vip_data_static1_M_AXI_WREADY,
      s_axi_wstrb(15 downto 0) => axi_vip_data_static1_M_AXI_WSTRB(15 downto 0),
      s_axi_wvalid => axi_vip_data_static1_M_AXI_WVALID
    );
reset_controllers: entity work.ulp_reset_controllers_imp_440OZ2
     port map (
      Dout(0) => Dout(0),
      aux_reset_in => aux_reset_in,
      c0_ddr4_ui_clk => c0_ddr4_ui_clk,
      clkwiz_kernel2_clk_out1 => clkwiz_kernel2_clk_out1,
      clkwiz_kernel2_locked_slr1 => clkwiz_kernel2_locked_slr1,
      clkwiz_kernel_clk_out1 => clkwiz_kernel_clk_out1,
      clkwiz_kernel_locked_slr1 => clkwiz_kernel_locked_slr1,
      clkwiz_sysclks_clk_out2 => clkwiz_sysclks_clk_out2,
      clkwiz_sysclks_locked_slr1 => clkwiz_sysclks_locked_slr1,
      dma_pcie_axi_aclk => dma_pcie_axi_aclk,
      interconnect_aresetn(0) => interconnect_aresetn(0),
      iob_static_perst_n_out(0) => iob_static_perst_n_out(0),
      logic_reset_op_Res(0) => logic_reset_op_Res(0),
      pcie_user_lnk_up_slr1 => pcie_user_lnk_up_slr1,
      peripheral_aresetn(0) => peripheral_aresetn(0),
      psreset_gate_pr_control_interconnect_aresetn(0) => \^psreset_gate_pr_control_interconnect_aresetn\(0),
      psreset_gate_pr_data_interconnect_aresetn(0) => \^psreset_gate_pr_data_interconnect_aresetn\(0),
      psreset_gate_pr_kernel_interconnect_aresetn(0) => \^psreset_gate_pr_kernel_interconnect_aresetn\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp is
  port (
    BLP_S_AXI_CTRL_USER_00_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_01_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_01_arready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_arvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_01_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_01_awready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_awvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_bready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_01_bvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_01_rready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_01_rvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_01_wready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_CTRL_USER_01_wvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_02_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_02_arready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_arvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_02_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_02_awready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_awvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_bready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_02_bvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_02_rready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_02_rvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_02_wready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_CTRL_USER_02_wvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_00_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_00_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_00_bready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rlast : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    BLP_S_AXI_DATA_H2C_00_wlast : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_wvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    BLP_S_AXI_DATA_H2C_01_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_01_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_01_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_01_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_01_arready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_arvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    BLP_S_AXI_DATA_H2C_01_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_01_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_01_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_01_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_01_awready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_awvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_bready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_bvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_01_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_rlast : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_rready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_rvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_01_wlast : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_wready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_01_wvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_DATA_H2C_02_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_02_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_02_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_02_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_02_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_02_arready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_arvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_DATA_H2C_02_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_02_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_02_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_02_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_02_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_02_awready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_awvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_bready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_02_bvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_DATA_H2C_02_rlast : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_rready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_02_rvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_DATA_H2C_02_wlast : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_wready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_02_wvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    BLP_S_AXI_DATA_H2C_03_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_03_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_03_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_03_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_03_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_03_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_03_arready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_arvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    BLP_S_AXI_DATA_H2C_03_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_03_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_03_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_03_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_03_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_03_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_03_awready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_awvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_03_bready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_03_bvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    BLP_S_AXI_DATA_H2C_03_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_03_rlast : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_rready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_03_rvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    BLP_S_AXI_DATA_H2C_03_wlast : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_wready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    BLP_S_AXI_DATA_H2C_03_wvalid : in STD_LOGIC;
    blp_m_data_dna_from_ulp_00 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    blp_m_data_memory_calib_complete_00 : out STD_LOGIC_VECTOR ( 0 to 0 );
    blp_m_irq_cu_00 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    blp_s_aclk_ctrl_00 : in STD_LOGIC;
    blp_s_aclk_kernel2_ref_clk_00 : in STD_LOGIC;
    blp_s_aclk_kernel_ref_clk_00 : in STD_LOGIC;
    blp_s_aclk_pcie_00 : in STD_LOGIC;
    blp_s_aresetn_ctrl_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_aresetn_kernel_ref_clk_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_aresetn_pcie_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_data_clkwiz_kernel_clk_out1_locked_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_data_dout_dna_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_data_perstn_out_00 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    blp_s_data_slice_pr_reset_to_ulp_00 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_clk_ddr_00_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    io_clk_ddr_00_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    io_ddr_00_act_n : out STD_LOGIC;
    io_ddr_00_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    io_ddr_00_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_ddr_00_bg : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_ddr_00_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_ddr_00_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_ddr_00_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_ddr_00_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_ddr_00_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    io_ddr_00_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    io_ddr_00_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    io_ddr_00_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    io_ddr_00_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_ddr_00_reset_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ulp : entity is true;
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ulp : entity is "ulp.hwdef";
end ulp;

architecture STRUCTURE of ulp is
  component ulp_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 511 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 511 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 511 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 511 downto 0 )
  );
  end component ulp_axi_bram_ctrl_0_0;
  component ulp_axi_bram_ctrl_0_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 63 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 511 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 511 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 63 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 511 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 511 downto 0 )
  );
  end component ulp_axi_bram_ctrl_0_bram_0;
  component ulp_axi_protocol_convert_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_axi_protocol_convert_0_0;
  component ulp_axi_vip_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_axi_vip_0_0;
  component ulp_axi_vip_0_p_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_axi_vip_0_p_0;
  component ulp_ddr1_clk_bufg_0 is
  port (
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_ddr1_clk_bufg_0;
  component ulp_ddr1_clk_ibufds_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_ddr1_clk_ibufds_0;
  component ulp_ddrmem_1_0 is
  port (
    sys_rst : in STD_LOGIC;
    c0_sys_clk_i : in STD_LOGIC;
    c0_ddr4_act_n : out STD_LOGIC;
    c0_ddr4_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    c0_ddr4_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_bg : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_reset_n : out STD_LOGIC;
    c0_ddr4_dm_dbi_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    c0_ddr4_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    c0_ddr4_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    c0_ddr4_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    c0_init_calib_complete : out STD_LOGIC;
    c0_ddr4_ui_clk : out STD_LOGIC;
    c0_ddr4_ui_clk_sync_rst : out STD_LOGIC;
    dbg_clk : out STD_LOGIC;
    c0_ddr4_s_axi_ctrl_awvalid : in STD_LOGIC;
    c0_ddr4_s_axi_ctrl_awready : out STD_LOGIC;
    c0_ddr4_s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr4_s_axi_ctrl_wvalid : in STD_LOGIC;
    c0_ddr4_s_axi_ctrl_wready : out STD_LOGIC;
    c0_ddr4_s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr4_s_axi_ctrl_bvalid : out STD_LOGIC;
    c0_ddr4_s_axi_ctrl_bready : in STD_LOGIC;
    c0_ddr4_s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_s_axi_ctrl_arvalid : in STD_LOGIC;
    c0_ddr4_s_axi_ctrl_arready : out STD_LOGIC;
    c0_ddr4_s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr4_s_axi_ctrl_rvalid : out STD_LOGIC;
    c0_ddr4_s_axi_ctrl_rready : in STD_LOGIC;
    c0_ddr4_s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr4_s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_interrupt : out STD_LOGIC;
    c0_ddr4_aresetn : in STD_LOGIC;
    c0_ddr4_s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    c0_ddr4_s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr4_s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr4_s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr4_s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr4_s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr4_s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr4_s_axi_awvalid : in STD_LOGIC;
    c0_ddr4_s_axi_awready : out STD_LOGIC;
    c0_ddr4_s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    c0_ddr4_s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    c0_ddr4_s_axi_wlast : in STD_LOGIC;
    c0_ddr4_s_axi_wvalid : in STD_LOGIC;
    c0_ddr4_s_axi_wready : out STD_LOGIC;
    c0_ddr4_s_axi_bready : in STD_LOGIC;
    c0_ddr4_s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    c0_ddr4_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_s_axi_bvalid : out STD_LOGIC;
    c0_ddr4_s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    c0_ddr4_s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_ddr4_s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr4_s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr4_s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr4_s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr4_s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_ddr4_s_axi_arvalid : in STD_LOGIC;
    c0_ddr4_s_axi_arready : out STD_LOGIC;
    c0_ddr4_s_axi_rready : in STD_LOGIC;
    c0_ddr4_s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    c0_ddr4_s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    c0_ddr4_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_s_axi_rlast : out STD_LOGIC;
    c0_ddr4_s_axi_rvalid : out STD_LOGIC;
    dbg_bus : out STD_LOGIC_VECTOR ( 511 downto 0 )
  );
  end component ulp_ddrmem_1_0;
  component ulp_debug_bridge_xsdbm_0 is
  port (
    clk : in STD_LOGIC;
    S_BSCAN_bscanid_en : in STD_LOGIC;
    S_BSCAN_capture : in STD_LOGIC;
    S_BSCAN_drck : in STD_LOGIC;
    S_BSCAN_reset : in STD_LOGIC;
    S_BSCAN_runtest : in STD_LOGIC;
    S_BSCAN_sel : in STD_LOGIC;
    S_BSCAN_shift : in STD_LOGIC;
    S_BSCAN_tck : in STD_LOGIC;
    S_BSCAN_tdi : in STD_LOGIC;
    S_BSCAN_tdo : out STD_LOGIC;
    S_BSCAN_tms : in STD_LOGIC;
    S_BSCAN_update : in STD_LOGIC
  );
  end component ulp_debug_bridge_xsdbm_0;
  component ulp_fpga_dna_module_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    s_axi_lite_aresetn : in STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_bvalid : out STD_LOGIC;
    dna_dyn_data_dout : in STD_LOGIC;
    dna_dyn_data_ports : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fpga_dna_data : out STD_LOGIC_VECTOR ( 95 downto 0 )
  );
  end component ulp_fpga_dna_module_0_0;
  component ulp_ii_level0_wire_0 is
  port (
    BLP_S_AXI_CTRL_USER_00_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_01_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_01_arready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_arvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_01_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_01_awready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_awvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_bready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_01_bvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_01_rready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_01_rvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_01_wready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_01_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_CTRL_USER_01_wvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_araddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_02_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_02_arready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_arvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_awaddr : in STD_LOGIC_VECTOR ( 24 downto 0 );
    BLP_S_AXI_CTRL_USER_02_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_02_awready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_awvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_bready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_02_bvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_02_rready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_02_rvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_02_wready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_02_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_CTRL_USER_02_wvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_00_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_00_arready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_00_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_00_awready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_00_bready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rlast : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    BLP_S_AXI_DATA_H2C_00_wlast : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_00_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_00_wvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    BLP_S_AXI_DATA_H2C_01_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_01_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_01_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_01_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_01_arready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_arvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    BLP_S_AXI_DATA_H2C_01_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_01_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_01_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_01_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_01_awready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_awvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_bready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_bvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_01_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_rlast : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_rready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_01_rvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_DATA_H2C_01_wlast : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_wready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_01_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_01_wvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_DATA_H2C_02_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_02_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_02_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_02_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_02_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_02_arready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_arvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_DATA_H2C_02_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_02_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_02_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_02_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_02_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_02_awready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_awvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_bready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_02_bvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_DATA_H2C_02_rlast : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_rready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_02_rvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_DATA_H2C_02_wlast : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_wready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_02_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_02_wvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_araddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    BLP_S_AXI_DATA_H2C_03_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_03_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_03_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_03_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_03_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_03_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_03_arready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_arvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_awaddr : in STD_LOGIC_VECTOR ( 38 downto 0 );
    BLP_S_AXI_DATA_H2C_03_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_03_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_03_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_03_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BLP_S_AXI_DATA_H2C_03_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_DATA_H2C_03_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_DATA_H2C_03_awready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_awvalid : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_03_bready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_03_bvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    BLP_S_AXI_DATA_H2C_03_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_DATA_H2C_03_rlast : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_rready : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_DATA_H2C_03_rvalid : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    BLP_S_AXI_DATA_H2C_03_wlast : in STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_wready : out STD_LOGIC;
    BLP_S_AXI_DATA_H2C_03_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    BLP_S_AXI_DATA_H2C_03_wvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_00_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_00_arready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_arvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_00_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_00_awready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_awvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_bready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_00_bvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_00_rready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_00_rvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_00_wready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_00_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_CTRL_USER_00_wvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_01_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_01_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_01_arready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_01_arvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_01_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_01_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_01_awready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_01_awvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_01_bready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_01_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_01_bvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_01_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_01_rready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_01_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_01_rvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_01_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_01_wready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_01_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_CTRL_USER_01_wvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_02_araddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_02_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_02_arready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_02_arvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_02_awaddr : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ULP_M_AXI_CTRL_USER_02_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_CTRL_USER_02_awready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_02_awvalid : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_02_bready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_02_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_02_bvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_02_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_02_rready : out STD_LOGIC;
    ULP_M_AXI_CTRL_USER_02_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_CTRL_USER_02_rvalid : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_02_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_CTRL_USER_02_wready : in STD_LOGIC;
    ULP_M_AXI_CTRL_USER_02_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_CTRL_USER_02_wvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_AXI_DATA_H2C_00_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_DATA_H2C_00_arready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_arvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_AXI_DATA_H2C_00_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_DATA_H2C_00_awready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_awvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_00_bready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_bvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rlast : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_00_rvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    ULP_M_AXI_DATA_H2C_00_wlast : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_00_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_00_wvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_01_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    ULP_M_AXI_DATA_H2C_01_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_01_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_01_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_01_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_01_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_AXI_DATA_H2C_01_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_DATA_H2C_01_arready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_01_arvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_01_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    ULP_M_AXI_DATA_H2C_01_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_01_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_01_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_01_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_01_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_AXI_DATA_H2C_01_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_DATA_H2C_01_awready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_01_awvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_01_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_01_bready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_01_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_01_bvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_01_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_01_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_01_rlast : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_01_rready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_01_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_01_rvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_01_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    ULP_M_AXI_DATA_H2C_01_wlast : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_01_wready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_01_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_01_wvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_02_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_DATA_H2C_02_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_02_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_02_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_02_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_AXI_DATA_H2C_02_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_DATA_H2C_02_arready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_02_arvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_02_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_DATA_H2C_02_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_02_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_02_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_02_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_AXI_DATA_H2C_02_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_DATA_H2C_02_awready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_02_awvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_02_bready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_02_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_02_bvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_02_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_DATA_H2C_02_rlast : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_02_rready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_02_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_02_rvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_02_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ULP_M_AXI_DATA_H2C_02_wlast : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_02_wready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_02_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_02_wvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_03_araddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    ULP_M_AXI_DATA_H2C_03_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_03_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_03_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_03_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_03_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_AXI_DATA_H2C_03_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_DATA_H2C_03_arready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_03_arvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_03_awaddr : out STD_LOGIC_VECTOR ( 38 downto 0 );
    ULP_M_AXI_DATA_H2C_03_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_03_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_03_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_03_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ULP_M_AXI_DATA_H2C_03_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    ULP_M_AXI_DATA_H2C_03_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ULP_M_AXI_DATA_H2C_03_awready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_03_awvalid : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_03_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_03_bready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_03_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_03_bvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_03_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    ULP_M_AXI_DATA_H2C_03_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ULP_M_AXI_DATA_H2C_03_rlast : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_03_rready : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_03_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ULP_M_AXI_DATA_H2C_03_rvalid : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_03_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    ULP_M_AXI_DATA_H2C_03_wlast : out STD_LOGIC;
    ULP_M_AXI_DATA_H2C_03_wready : in STD_LOGIC;
    ULP_M_AXI_DATA_H2C_03_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ULP_M_AXI_DATA_H2C_03_wvalid : out STD_LOGIC;
    blp_m_data_dna_from_ulp_00 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    blp_m_data_memory_calib_complete_00 : out STD_LOGIC_VECTOR ( 0 to 0 );
    blp_m_irq_cu_00 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    blp_s_aclk_ctrl_00 : in STD_LOGIC;
    blp_s_aclk_kernel2_ref_clk_00 : in STD_LOGIC;
    blp_s_aclk_kernel_ref_clk_00 : in STD_LOGIC;
    blp_s_aclk_pcie_00 : in STD_LOGIC;
    blp_s_aresetn_ctrl_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_aresetn_kernel_ref_clk_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_aresetn_pcie_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_data_clkwiz_kernel_clk_out1_locked_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_data_dout_dna_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_data_perstn_out_00 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    blp_s_data_slice_pr_reset_to_ulp_00 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ulp_m_aclk_ctrl_00 : out STD_LOGIC;
    ulp_m_aclk_kernel2_ref_clk_00 : out STD_LOGIC;
    ulp_m_aclk_kernel_ref_clk_00 : out STD_LOGIC;
    ulp_m_aclk_pcie_00 : out STD_LOGIC;
    ulp_m_aresetn_ctrl_00 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ulp_m_aresetn_kernel_ref_clk_00 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ulp_m_aresetn_pcie_00 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ulp_m_data_clkwiz_kernel_clk_out1_locked_00 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ulp_m_data_dout_dna_00 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ulp_m_data_perstn_out_00 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ulp_m_data_slice_pr_reset_to_ulp_00 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ulp_s_data_dna_from_ulp_00 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ulp_s_data_memory_calib_complete_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ulp_s_irq_cu_00 : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component ulp_ii_level0_wire_0;
  component ulp_krnl_ro_rtl_1_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    m_axi_gmem_AWVALID : out STD_LOGIC;
    m_axi_gmem_AWREADY : in STD_LOGIC;
    m_axi_gmem_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_WVALID : out STD_LOGIC;
    m_axi_gmem_WREADY : in STD_LOGIC;
    m_axi_gmem_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_WLAST : out STD_LOGIC;
    m_axi_gmem_ARVALID : out STD_LOGIC;
    m_axi_gmem_ARREADY : in STD_LOGIC;
    m_axi_gmem_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_RVALID : in STD_LOGIC;
    m_axi_gmem_RREADY : out STD_LOGIC;
    m_axi_gmem_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_RLAST : in STD_LOGIC;
    m_axi_gmem_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_BVALID : in STD_LOGIC;
    m_axi_gmem_BREADY : out STD_LOGIC;
    m_axi_gmem_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  end component ulp_krnl_ro_rtl_1_0;
  component ulp_psreset_ddrmem_n_1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_psreset_ddrmem_n_1_0;
  component ulp_regslice_periph_null_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ulp_regslice_periph_null_0;
  component ulp_user_debug_bridge_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    m0_bscan_bscanid_en : out STD_LOGIC;
    m0_bscan_capture : out STD_LOGIC;
    m0_bscan_drck : out STD_LOGIC;
    m0_bscan_reset : out STD_LOGIC;
    m0_bscan_runtest : out STD_LOGIC;
    m0_bscan_sel : out STD_LOGIC;
    m0_bscan_shift : out STD_LOGIC;
    m0_bscan_tck : out STD_LOGIC;
    m0_bscan_tdi : out STD_LOGIC;
    m0_bscan_tdo : in STD_LOGIC;
    m0_bscan_tms : out STD_LOGIC;
    m0_bscan_update : out STD_LOGIC
  );
  end component ulp_user_debug_bridge_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal aux_reset_in_1 : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_DIN : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_DOUT : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTB_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTB_WE : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARLOCK : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWLOCK : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_ARLOCK : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_ARREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_ARVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_AWLOCK : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_AWREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_AWVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_BREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_BVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_WLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_P_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI_P_WVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_interconnect_0_M00_AXI_RID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_interconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARLOCK : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWLOCK : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_1_M00_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_interconnect_1_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_1_M00_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M00_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_interconnect_1_M00_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_1_M00_AXI_WVALID : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal axi_interconnect_1_M01_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M01_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M01_AXI_ARID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_1_M01_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_M01_AXI_ARLOCK : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal axi_interconnect_1_M01_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M01_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_interconnect_1_M01_AXI_AWID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_1_M01_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interconnect_1_M01_AXI_AWLOCK : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_interconnect_1_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_1_M01_AXI_BREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M01_AXI_BVALID : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_interconnect_1_M01_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_interconnect_1_M01_AXI_RLAST : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_RREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_interconnect_1_M01_AXI_RVALID : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_interconnect_1_M01_AXI_WLAST : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_WREADY : STD_LOGIC;
  signal axi_interconnect_1_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_interconnect_1_M01_AXI_WVALID : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_protocol_convert_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_protocol_convert_0_M_AXI_ARREADY : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_ARVALID : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal axi_protocol_convert_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_protocol_convert_0_M_AXI_AWREADY : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_AWVALID : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_BREADY : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_protocol_convert_0_M_AXI_BVALID : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_protocol_convert_0_M_AXI_RREADY : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_protocol_convert_0_M_AXI_RVALID : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_protocol_convert_0_M_AXI_WREADY : STD_LOGIC;
  signal axi_protocol_convert_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_protocol_convert_0_M_AXI_WVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal axi_vip_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_0_M_AXI_ARLOCK : STD_LOGIC;
  signal axi_vip_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_ARREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_ARVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal axi_vip_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_0_M_AXI_AWLOCK : STD_LOGIC;
  signal axi_vip_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_AWREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_AWVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_BREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_BVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal axi_vip_0_M_AXI_P_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_P_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_P_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_0_M_AXI_P_ARLOCK : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_P_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_P_ARREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_P_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_P_ARVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal axi_vip_0_M_AXI_P_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_P_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_P_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_vip_0_M_AXI_P_AWLOCK : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_P_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_P_AWREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_vip_0_M_AXI_P_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_vip_0_M_AXI_P_AWVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_BREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_P_BVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_vip_0_M_AXI_P_RLAST : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_RREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_P_RVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_vip_0_M_AXI_P_WLAST : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_WREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_P_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_vip_0_M_AXI_P_WVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_vip_0_M_AXI_RLAST : STD_LOGIC;
  signal axi_vip_0_M_AXI_RREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_vip_0_M_AXI_RVALID : STD_LOGIC;
  signal axi_vip_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_vip_0_M_AXI_WLAST : STD_LOGIC;
  signal axi_vip_0_M_AXI_WREADY : STD_LOGIC;
  signal axi_vip_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_vip_0_M_AXI_WVALID : STD_LOGIC;
  signal clkwiz_kernel_clk_out1_1 : STD_LOGIC;
  signal clkwiz_sysclks_clk_out2_1 : STD_LOGIC;
  signal ddr1_clk_bufg_BUFG_O : STD_LOGIC;
  signal ddr1_clk_ibufds_IBUF_OUT : STD_LOGIC;
  signal ddrmem_1_c0_ddr4_ui_clk_sync_rst : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWADDR : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLOCK : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLOCK : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RLAST : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WLAST : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLOCK : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLOCK : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RLAST : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WLAST : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLOCK : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLOCK : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RLAST : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WLAST : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLOCK : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLOCK : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RLAST : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RVALID : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WLAST : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WREADY : STD_LOGIC;
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WVALID : STD_LOGIC;
  signal ii_level0_wire_ulp_m_aclk_kernel2_ref_clk_00 : STD_LOGIC;
  signal ii_level0_wire_ulp_m_aclk_pcie_00 : STD_LOGIC;
  signal ii_level0_wire_ulp_m_aresetn_ctrl_00 : STD_LOGIC;
  signal ii_level0_wire_ulp_m_data_clkwiz_kernel2_clk_out1_locked_00 : STD_LOGIC;
  signal ii_level0_wire_ulp_m_data_clkwiz_kernel_clk_out1_locked_00 : STD_LOGIC;
  signal ii_level0_wire_ulp_m_data_clkwiz_sysclks_clk_out2_locked_00 : STD_LOGIC;
  signal ii_level0_wire_ulp_m_data_pcie_user_link_up_00 : STD_LOGIC;
  signal ii_level0_wire_ulp_m_data_perstn_out_00 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout : STD_LOGIC_VECTOR ( 1 to 1 );
  signal krnl_ro_rtl_1_interrupt : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_ARID : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_ARREADY : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_ARVALID : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_AWID : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_AWREADY : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_AWVALID : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_BID : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_BREADY : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_BVALID : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_RID : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_RLAST : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_RREADY : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_RVALID : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_WLAST : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_WREADY : STD_LOGIC;
  signal krnl_ro_rtl_1_m_axi_gmem_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal krnl_ro_rtl_1_m_axi_gmem_WVALID : STD_LOGIC;
  signal psreset_ddrmem_n_1_interconnect_aresetn : STD_LOGIC;
  signal slr1_M01_AXI1_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal slr1_M01_AXI1_ARREADY : STD_LOGIC;
  signal slr1_M01_AXI1_ARVALID : STD_LOGIC;
  signal slr1_M01_AXI1_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal slr1_M01_AXI1_AWREADY : STD_LOGIC;
  signal slr1_M01_AXI1_AWVALID : STD_LOGIC;
  signal slr1_M01_AXI1_BREADY : STD_LOGIC;
  signal slr1_M01_AXI1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_M01_AXI1_BVALID : STD_LOGIC;
  signal slr1_M01_AXI1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slr1_M01_AXI1_RREADY : STD_LOGIC;
  signal slr1_M01_AXI1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_M01_AXI1_RVALID : STD_LOGIC;
  signal slr1_M01_AXI1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slr1_M01_AXI1_WREADY : STD_LOGIC;
  signal slr1_M01_AXI1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_M01_AXI1_WVALID : STD_LOGIC;
  signal slr1_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal slr1_M01_AXI_ARREADY : STD_LOGIC;
  signal slr1_M01_AXI_ARVALID : STD_LOGIC;
  signal slr1_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal slr1_M01_AXI_AWREADY : STD_LOGIC;
  signal slr1_M01_AXI_AWVALID : STD_LOGIC;
  signal slr1_M01_AXI_BREADY : STD_LOGIC;
  signal slr1_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_M01_AXI_BVALID : STD_LOGIC;
  signal slr1_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slr1_M01_AXI_RREADY : STD_LOGIC;
  signal slr1_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_M01_AXI_RVALID : STD_LOGIC;
  signal slr1_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slr1_M01_AXI_WREADY : STD_LOGIC;
  signal slr1_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_M01_AXI_WVALID : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_ARLOCK : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_ARREADY : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_ARVALID : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_AWLOCK : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_AWREADY : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_AWVALID : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_BREADY : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_BVALID : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_RLAST : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_RREADY : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_RVALID : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_WLAST : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_WREADY : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI1_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI1_WVALID : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_ARLOCK : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_ARREADY : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_ARVALID : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_AWLOCK : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_AWREADY : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_AWVALID : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_BREADY : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_BVALID : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_RLAST : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_RREADY : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_RVALID : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_WLAST : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_WREADY : STD_LOGIC;
  signal slr1_axi_cdc_data_static_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal slr1_axi_cdc_data_static_M_AXI_WVALID : STD_LOGIC;
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_ARREADY : STD_LOGIC;
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_ARVALID : STD_LOGIC;
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_AWREADY : STD_LOGIC;
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_AWVALID : STD_LOGIC;
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_BREADY : STD_LOGIC;
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_BVALID : STD_LOGIC;
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_RREADY : STD_LOGIC;
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_RVALID : STD_LOGIC;
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_WREADY : STD_LOGIC;
  signal slr1_axi_vip_ctrl_mgntpf_M_AXI_WVALID : STD_LOGIC;
  signal slr1_interconnect_aresetn : STD_LOGIC;
  signal slr1_logic_reset_op_Res : STD_LOGIC;
  signal slr1_peripheral_aresetn : STD_LOGIC;
  signal slr1_psreset_gate_pr_control_interconnect_aresetn : STD_LOGIC;
  signal slr1_psreset_gate_pr_data_interconnect_aresetn : STD_LOGIC;
  signal slr1_psreset_gate_pr_kernel_interconnect_aresetn : STD_LOGIC;
  signal user_debug_bridge_m0_bscan_BSCANID_EN : STD_LOGIC;
  signal user_debug_bridge_m0_bscan_CAPTURE : STD_LOGIC;
  signal user_debug_bridge_m0_bscan_DRCK : STD_LOGIC;
  signal user_debug_bridge_m0_bscan_RESET : STD_LOGIC;
  signal user_debug_bridge_m0_bscan_RUNTEST : STD_LOGIC;
  signal user_debug_bridge_m0_bscan_SEL : STD_LOGIC;
  signal user_debug_bridge_m0_bscan_SHIFT : STD_LOGIC;
  signal user_debug_bridge_m0_bscan_TCK : STD_LOGIC;
  signal user_debug_bridge_m0_bscan_TDI : STD_LOGIC;
  signal user_debug_bridge_m0_bscan_TDO : STD_LOGIC;
  signal user_debug_bridge_m0_bscan_TMS : STD_LOGIC;
  signal user_debug_bridge_m0_bscan_UPDATE : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC;
  signal xlslice_4_Dout : STD_LOGIC;
  signal NLW_axi_interconnect_1_M01_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 15 );
  signal NLW_axi_interconnect_1_M01_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 15 );
  signal NLW_axi_protocol_convert_0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal NLW_axi_protocol_convert_0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 5 );
  signal NLW_ddrmem_1_c0_ddr4_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_ddrmem_1_dbg_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_ddrmem_1_dbg_bus_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal NLW_fpga_dna_module_0_dna_dyn_data_ports_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fpga_dna_module_0_fpga_dna_data_UNCONNECTED : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal NLW_ii_level0_wire_ulp_m_aresetn_kernel_ref_clk_00_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ii_level0_wire_ulp_m_aresetn_pcie_00_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ii_level0_wire_ulp_m_data_dout_dna_00_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_psreset_ddrmem_n_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_psreset_ddrmem_n_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_ddrmem_n_1_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_psreset_ddrmem_n_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_regslice_periph_null_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_regslice_periph_null_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_regslice_periph_null_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_regslice_periph_null_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_regslice_periph_null_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_regslice_periph_null_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_regslice_periph_null_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_regslice_periph_null_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regslice_periph_null_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_regslice_periph_null_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regslice_periph_null_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_regslice_periph_null_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_regslice_periph_null_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_regslice_periph_null_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_regslice_periph_null_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_regslice_periph_null_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_regslice_periph_null_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal NLW_regslice_periph_null_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regslice_periph_null_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_regslice_periph_null_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_regslice_periph_null_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_regslice_periph_null_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_regslice_periph_null_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_regslice_periph_null_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_regslice_periph_null_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_regslice_periph_null_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_regslice_periph_null_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_regslice_periph_null_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_bram_ctrl_0 : label is "axi_bram_ctrl,Vivado 2021.1";
  attribute X_CORE_INFO of axi_bram_ctrl_0_bram : label is "blk_mem_gen_v8_4_4,Vivado 2021.1";
  attribute X_CORE_INFO of axi_protocol_convert_0 : label is "axi_protocol_converter_v2_1_24_axi_protocol_converter,Vivado 2021.1";
  attribute X_CORE_INFO of axi_vip_0 : label is "axi_vip_v1_1_10_top,Vivado 2021.1";
  attribute X_CORE_INFO of axi_vip_0_p : label is "axi_vip_v1_1_10_top,Vivado 2021.1";
  attribute X_CORE_INFO of ddr1_clk_bufg : label is "util_ds_buf,Vivado 2021.1";
  attribute X_CORE_INFO of ddr1_clk_ibufds : label is "util_ds_buf,Vivado 2021.1";
  attribute X_CORE_INFO of ddrmem_1 : label is "ddr4_v2_2_12,Vivado 2021.1";
  attribute X_CORE_INFO of debug_bridge_xsdbm : label is "bd_0349,Vivado 2021.1";
  attribute X_CORE_INFO of fpga_dna_module_0 : label is "fpga_dna_module,Vivado 2021.1";
  attribute X_CORE_INFO of ii_level0_wire : label is "ii_level0_wire,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat : label is "ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat : label is "yes";
  attribute X_CORE_INFO of ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat : label is "xlconcat_v2_1_4_xlconcat,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0 : label is "ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0,xlconcat_v2_1_4_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings of ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0 : label is "yes";
  attribute X_CORE_INFO of ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0 : label is "xlconcat_v2_1_4_xlconcat,Vivado 2021.1";
  attribute X_CORE_INFO of krnl_ro_rtl_1 : label is "krnl_ro_rtl_int,Vivado 2021.1";
  attribute X_CORE_INFO of psreset_ddrmem_n_1 : label is "proc_sys_reset,Vivado 2021.1";
  attribute X_CORE_INFO of regslice_periph_null : label is "axi_register_slice_v2_1_24_axi_register_slice,Vivado 2021.1";
  attribute X_CORE_INFO of user_debug_bridge : label is "bd_9997,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of xlslice_0 : label is "ulp_xlslice_0_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of xlslice_0 : label is "yes";
  attribute X_CORE_INFO of xlslice_0 : label is "xlslice_v1_0_2_xlslice,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of xlslice_1 : label is "ulp_xlslice_1_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of xlslice_1 : label is "yes";
  attribute X_CORE_INFO of xlslice_1 : label is "xlslice_v1_0_2_xlslice,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of xlslice_2 : label is "ulp_xlslice_2_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of xlslice_2 : label is "yes";
  attribute X_CORE_INFO of xlslice_2 : label is "xlslice_v1_0_2_xlslice,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of xlslice_3 : label is "ulp_xlslice_3_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of xlslice_3 : label is "yes";
  attribute X_CORE_INFO of xlslice_3 : label is "xlslice_v1_0_2_xlslice,Vivado 2021.1";
  attribute CHECK_LICENSE_TYPE of xlslice_4 : label is "ulp_xlslice_4_0,xlslice_v1_0_2_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings of xlslice_4 : label is "yes";
  attribute X_CORE_INFO of xlslice_4 : label is "xlslice_v1_0_2_xlslice,Vivado 2021.1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_rlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_wlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_rlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_wlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_rlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_wlast : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WLAST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WVALID";
  attribute X_INTERFACE_INFO of blp_s_aclk_ctrl_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_CTRL_00 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_ctrl_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_CTRL_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_CTRL_USER_01:BLP_S_AXI_DATA_H2C_02, ASSOCIATED_RESET blp_s_aresetn_ctrl_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_kernel2_ref_clk_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL2_REF_CLK_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_kernel2_ref_clk_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL2_REF_CLK_00, CLK_DOMAIN cd_kernel2_ref_clk_00, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_kernel_ref_clk_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_REF_CLK_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_kernel_ref_clk_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_REF_CLK_00, ASSOCIATED_RESET blp_s_aresetn_kernel_ref_clk_00, CLK_DOMAIN cd_kernel_ref_clk_00, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of blp_s_aclk_pcie_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_PCIE_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_pcie_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_PCIE_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_02:BLP_S_AXI_DATA_H2C_00:BLP_S_AXI_DATA_H2C_01:BLP_S_AXI_DATA_H2C_03, ASSOCIATED_RESET blp_s_aresetn_pcie_00, CLK_DOMAIN cd_pcie_00, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute X_INTERFACE_INFO of io_ddr_00_act_n : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 ACT_N";
  attribute X_INTERFACE_PARAMETER of io_ddr_00_act_n : signal is "XIL_INTERFACENAME io_ddr_00, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NO_DM_NO_DBI, DATA_WIDTH 72, MEMORY_PART MT40A512M16HA-075E, MEMORY_TYPE Components, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 833";
  attribute X_INTERFACE_INFO of io_ddr_00_reset_n : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 RESET_N";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_CTRL_USER_00_araddr : signal is "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARADDR";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_CTRL_USER_01_araddr : signal is "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_01, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_arprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 ARPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_awprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 AWPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_01_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_01 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARADDR";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_CTRL_USER_02_araddr : signal is "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_02, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_arprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 ARPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_awprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 AWPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_02_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_02 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_DATA_H2C_00_araddr : signal is "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arcache : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARCACHE";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arlock : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLOCK";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_arprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awcache : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWCACHE";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awlock : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLOCK";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_awprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARADDR";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_DATA_H2C_01_araddr : signal is "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_01, ADDR_WIDTH 40, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 64, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_arburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_arcache : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARCACHE";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_arid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_arlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_arlock : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARLOCK";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_arprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 ARPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_awburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_awcache : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWCACHE";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_awid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_awlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_awlock : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWLOCK";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_awprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 AWPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_bid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_rid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_01_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_01 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARADDR";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_DATA_H2C_02_araddr : signal is "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_02, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_ctrl_00, DATA_WIDTH 32, FREQ_HZ 50000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_arburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_arcache : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARCACHE";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_arlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_arlock : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARLOCK";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_arprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 ARPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_awburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_awcache : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWCACHE";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_awlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_awlock : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWLOCK";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_awprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 AWPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_02_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_02 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARADDR";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_DATA_H2C_03_araddr : signal is "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_03, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_pcie_00, DATA_WIDTH 128, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_arburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_arcache : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARCACHE";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_arid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_arlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_arlock : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARLOCK";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_arprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 ARPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_awburst : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWBURST";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_awcache : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWCACHE";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_awid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_awlen : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWLEN";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_awlock : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWLOCK";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_awprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 AWPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_bid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_rid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_DATA_H2C_03_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_03 WSTRB";
  attribute X_INTERFACE_INFO of blp_m_data_dna_from_ulp_00 : signal is "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_DNA_FROM_ULP_00 DATA";
  attribute X_INTERFACE_PARAMETER of blp_m_data_dna_from_ulp_00 : signal is "XIL_INTERFACENAME DATA.BLP_M_DATA_DNA_FROM_ULP_00, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of blp_m_data_memory_calib_complete_00 : signal is "xilinx.com:signal:data:1.0 DATA.BLP_M_DATA_MEMORY_CALIB_COMPLETE_00 DATA";
  attribute X_INTERFACE_PARAMETER of blp_m_data_memory_calib_complete_00 : signal is "XIL_INTERFACENAME DATA.BLP_M_DATA_MEMORY_CALIB_COMPLETE_00, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of blp_m_irq_cu_00 : signal is "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_IRQ_CU_00 INTERRUPT";
  attribute X_INTERFACE_PARAMETER of blp_m_irq_cu_00 : signal is "XIL_INTERFACENAME INTR.BLP_M_IRQ_CU_00, PortWidth 128, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of blp_s_aresetn_ctrl_00 : signal is "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_CTRL_00 RST";
  attribute X_INTERFACE_PARAMETER of blp_s_aresetn_ctrl_00 : signal is "XIL_INTERFACENAME RST.BLP_S_ARESETN_CTRL_00, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of blp_s_aresetn_kernel_ref_clk_00 : signal is "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_KERNEL_REF_CLK_00 RST";
  attribute X_INTERFACE_PARAMETER of blp_s_aresetn_kernel_ref_clk_00 : signal is "XIL_INTERFACENAME RST.BLP_S_ARESETN_KERNEL_REF_CLK_00, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of blp_s_aresetn_pcie_00 : signal is "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_PCIE_00 RST";
  attribute X_INTERFACE_PARAMETER of blp_s_aresetn_pcie_00 : signal is "XIL_INTERFACENAME RST.BLP_S_ARESETN_PCIE_00, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of blp_s_data_clkwiz_kernel_clk_out1_locked_00 : signal is "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00 DATA";
  attribute X_INTERFACE_PARAMETER of blp_s_data_clkwiz_kernel_clk_out1_locked_00 : signal is "XIL_INTERFACENAME DATA.BLP_S_DATA_CLKWIZ_KERNEL_CLK_OUT1_LOCKED_00, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of blp_s_data_dout_dna_00 : signal is "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_DOUT_DNA_00 DATA";
  attribute X_INTERFACE_PARAMETER of blp_s_data_dout_dna_00 : signal is "XIL_INTERFACENAME DATA.BLP_S_DATA_DOUT_DNA_00, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of blp_s_data_perstn_out_00 : signal is "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_PERSTN_OUT_00 DATA";
  attribute X_INTERFACE_PARAMETER of blp_s_data_perstn_out_00 : signal is "XIL_INTERFACENAME DATA.BLP_S_DATA_PERSTN_OUT_00, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of blp_s_data_slice_pr_reset_to_ulp_00 : signal is "xilinx.com:signal:data:1.0 DATA.BLP_S_DATA_SLICE_PR_RESET_TO_ULP_00 DATA";
  attribute X_INTERFACE_PARAMETER of blp_s_data_slice_pr_reset_to_ulp_00 : signal is "XIL_INTERFACENAME DATA.BLP_S_DATA_SLICE_PR_RESET_TO_ULP_00, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of io_clk_ddr_00_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 io_clk_ddr_00 CLK_N";
  attribute X_INTERFACE_PARAMETER of io_clk_ddr_00_clk_n : signal is "XIL_INTERFACENAME io_clk_ddr_00, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of io_clk_ddr_00_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 io_clk_ddr_00 CLK_P";
  attribute X_INTERFACE_INFO of io_ddr_00_adr : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 ADR";
  attribute X_INTERFACE_INFO of io_ddr_00_ba : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 BA";
  attribute X_INTERFACE_INFO of io_ddr_00_bg : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 BG";
  attribute X_INTERFACE_INFO of io_ddr_00_ck_c : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 CK_C";
  attribute X_INTERFACE_INFO of io_ddr_00_ck_t : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 CK_T";
  attribute X_INTERFACE_INFO of io_ddr_00_cke : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 CKE";
  attribute X_INTERFACE_INFO of io_ddr_00_cs_n : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 CS_N";
  attribute X_INTERFACE_INFO of io_ddr_00_dm_n : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 DM_N";
  attribute X_INTERFACE_INFO of io_ddr_00_dq : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 DQ";
  attribute X_INTERFACE_INFO of io_ddr_00_dqs_c : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 DQS_C";
  attribute X_INTERFACE_INFO of io_ddr_00_dqs_t : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 DQS_T";
  attribute X_INTERFACE_INFO of io_ddr_00_odt : signal is "xilinx.com:interface:ddr4:1.0 io_ddr_00 ODT";
begin
axi_bram_ctrl_0: component ulp_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(14 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(14 downto 0),
      bram_addr_b(14 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(14 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_clk_b => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_en_b => axi_bram_ctrl_0_BRAM_PORTB_EN,
      bram_rddata_a(511 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(511 downto 0),
      bram_rddata_b(511 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(511 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_rst_b => axi_bram_ctrl_0_BRAM_PORTB_RST,
      bram_we_a(63 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(63 downto 0),
      bram_we_b(63 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(63 downto 0),
      bram_wrdata_a(511 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(511 downto 0),
      bram_wrdata_b(511 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(511 downto 0),
      s_axi_aclk => clkwiz_kernel_clk_out1_1,
      s_axi_araddr(14 downto 0) => axi_interconnect_1_M01_AXI_ARADDR(14 downto 0),
      s_axi_arburst(1 downto 0) => axi_interconnect_1_M01_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_interconnect_1_M01_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => slr1_psreset_gate_pr_kernel_interconnect_aresetn,
      s_axi_arid(5 downto 0) => axi_interconnect_1_M01_AXI_ARID(5 downto 0),
      s_axi_arlen(7 downto 0) => axi_interconnect_1_M01_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_interconnect_1_M01_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_interconnect_1_M01_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_interconnect_1_M01_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_interconnect_1_M01_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_interconnect_1_M01_AXI_ARVALID,
      s_axi_awaddr(14 downto 0) => axi_interconnect_1_M01_AXI_AWADDR(14 downto 0),
      s_axi_awburst(1 downto 0) => axi_interconnect_1_M01_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_interconnect_1_M01_AXI_AWCACHE(3 downto 0),
      s_axi_awid(5 downto 0) => axi_interconnect_1_M01_AXI_AWID(5 downto 0),
      s_axi_awlen(7 downto 0) => axi_interconnect_1_M01_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_interconnect_1_M01_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_interconnect_1_M01_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_interconnect_1_M01_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_interconnect_1_M01_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_interconnect_1_M01_AXI_AWVALID,
      s_axi_bid(5 downto 0) => axi_interconnect_1_M01_AXI_BID(5 downto 0),
      s_axi_bready => axi_interconnect_1_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_interconnect_1_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_interconnect_1_M01_AXI_BVALID,
      s_axi_rdata(511 downto 0) => axi_interconnect_1_M01_AXI_RDATA(511 downto 0),
      s_axi_rid(5 downto 0) => axi_interconnect_1_M01_AXI_RID(5 downto 0),
      s_axi_rlast => axi_interconnect_1_M01_AXI_RLAST,
      s_axi_rready => axi_interconnect_1_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_interconnect_1_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_interconnect_1_M01_AXI_RVALID,
      s_axi_wdata(511 downto 0) => axi_interconnect_1_M01_AXI_WDATA(511 downto 0),
      s_axi_wlast => axi_interconnect_1_M01_AXI_WLAST,
      s_axi_wready => axi_interconnect_1_M01_AXI_WREADY,
      s_axi_wstrb(63 downto 0) => axi_interconnect_1_M01_AXI_WSTRB(63 downto 0),
      s_axi_wvalid => axi_interconnect_1_M01_AXI_WVALID
    );
axi_bram_ctrl_0_bram: component ulp_axi_bram_ctrl_0_bram_0
     port map (
      addra(31 downto 15) => B"00000000000000000",
      addra(14 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_ADDR(14 downto 0),
      addrb(31 downto 15) => B"00000000000000000",
      addrb(14 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_ADDR(14 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => axi_bram_ctrl_0_BRAM_PORTB_CLK,
      dina(511 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DIN(511 downto 0),
      dinb(511 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DIN(511 downto 0),
      douta(511 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_DOUT(511 downto 0),
      doutb(511 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_DOUT(511 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => axi_bram_ctrl_0_BRAM_PORTB_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA_RST,
      rstb => axi_bram_ctrl_0_BRAM_PORTB_RST,
      wea(63 downto 0) => axi_bram_ctrl_0_BRAM_PORTA_WE(63 downto 0),
      web(63 downto 0) => axi_bram_ctrl_0_BRAM_PORTB_WE(63 downto 0)
    );
axi_interconnect_0: entity work.ulp_axi_interconnect_0_0
     port map (
      ACLK => clkwiz_kernel_clk_out1_1,
      ARESETN => '0',
      M00_ACLK => '0',
      M00_ARESETN => '0',
      M00_AXI_araddr(63 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(63 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(0) => axi_interconnect_0_M00_AXI_ARID,
      M00_AXI_arlen(7 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_interconnect_0_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arregion(3 downto 0) => axi_interconnect_0_M00_AXI_ARREGION(3 downto 0),
      M00_AXI_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(63 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(63 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(0) => axi_interconnect_0_M00_AXI_AWID,
      M00_AXI_awlen(7 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_interconnect_0_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awregion(3 downto 0) => axi_interconnect_0_M00_AXI_AWREGION(3 downto 0),
      M00_AXI_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bid(0) => axi_interconnect_0_M00_AXI_BID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(511 downto 0) => axi_interconnect_0_M00_AXI_RDATA(511 downto 0),
      M00_AXI_rid(0) => axi_interconnect_0_M00_AXI_RID,
      M00_AXI_rlast => axi_interconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(511 downto 0) => axi_interconnect_0_M00_AXI_WDATA(511 downto 0),
      M00_AXI_wlast => axi_interconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(63 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(63 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      S00_ACLK => '0',
      S00_ARESETN => '0',
      S00_AXI_araddr(38 downto 0) => axi_vip_0_M_AXI_ARADDR(38 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_vip_0_M_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_vip_0_M_AXI_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_vip_0_M_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_vip_0_M_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => axi_vip_0_M_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_vip_0_M_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => axi_vip_0_M_AXI_ARREADY,
      S00_AXI_arregion(3 downto 0) => axi_vip_0_M_AXI_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => axi_vip_0_M_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_vip_0_M_AXI_ARVALID,
      S00_AXI_awaddr(38 downto 0) => axi_vip_0_M_AXI_AWADDR(38 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_vip_0_M_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_vip_0_M_AXI_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_vip_0_M_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_vip_0_M_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => axi_vip_0_M_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_vip_0_M_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => axi_vip_0_M_AXI_AWREADY,
      S00_AXI_awregion(3 downto 0) => axi_vip_0_M_AXI_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => axi_vip_0_M_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_vip_0_M_AXI_AWVALID,
      S00_AXI_bready => axi_vip_0_M_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_vip_0_M_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_vip_0_M_AXI_BVALID,
      S00_AXI_rdata(511 downto 0) => axi_vip_0_M_AXI_RDATA(511 downto 0),
      S00_AXI_rlast => axi_vip_0_M_AXI_RLAST,
      S00_AXI_rready => axi_vip_0_M_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vip_0_M_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_vip_0_M_AXI_RVALID,
      S00_AXI_wdata(511 downto 0) => axi_vip_0_M_AXI_WDATA(511 downto 0),
      S00_AXI_wlast => axi_vip_0_M_AXI_WLAST,
      S00_AXI_wready => axi_vip_0_M_AXI_WREADY,
      S00_AXI_wstrb(63 downto 0) => axi_vip_0_M_AXI_WSTRB(63 downto 0),
      S00_AXI_wvalid => axi_vip_0_M_AXI_WVALID,
      S01_ACLK => blp_s_aclk_kernel_ref_clk_00,
      S01_ARESETN => slr1_psreset_gate_pr_kernel_interconnect_aresetn,
      S01_AXI_araddr(63 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARADDR(63 downto 0),
      S01_AXI_arburst(1 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARCACHE(3 downto 0),
      S01_AXI_arid(0) => krnl_ro_rtl_1_m_axi_gmem_ARID,
      S01_AXI_arlen(7 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARLEN(7 downto 0),
      S01_AXI_arlock(1) => '0',
      S01_AXI_arlock(0) => krnl_ro_rtl_1_m_axi_gmem_ARLOCK(0),
      S01_AXI_arprot(2 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARQOS(3 downto 0),
      S01_AXI_arready => krnl_ro_rtl_1_m_axi_gmem_ARREADY,
      S01_AXI_arregion(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARREGION(3 downto 0),
      S01_AXI_arsize(2 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARSIZE(2 downto 0),
      S01_AXI_arvalid => krnl_ro_rtl_1_m_axi_gmem_ARVALID,
      S01_AXI_awaddr(63 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWADDR(63 downto 0),
      S01_AXI_awburst(1 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWCACHE(3 downto 0),
      S01_AXI_awid(0) => krnl_ro_rtl_1_m_axi_gmem_AWID,
      S01_AXI_awlen(7 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWLEN(7 downto 0),
      S01_AXI_awlock(1) => '0',
      S01_AXI_awlock(0) => krnl_ro_rtl_1_m_axi_gmem_AWLOCK(0),
      S01_AXI_awprot(2 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWQOS(3 downto 0),
      S01_AXI_awready => krnl_ro_rtl_1_m_axi_gmem_AWREADY,
      S01_AXI_awregion(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWREGION(3 downto 0),
      S01_AXI_awsize(2 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWSIZE(2 downto 0),
      S01_AXI_awvalid => krnl_ro_rtl_1_m_axi_gmem_AWVALID,
      S01_AXI_bid(0) => krnl_ro_rtl_1_m_axi_gmem_BID,
      S01_AXI_bready => krnl_ro_rtl_1_m_axi_gmem_BREADY,
      S01_AXI_bresp(1 downto 0) => krnl_ro_rtl_1_m_axi_gmem_BRESP(1 downto 0),
      S01_AXI_bvalid => krnl_ro_rtl_1_m_axi_gmem_BVALID,
      S01_AXI_rdata(31 downto 0) => krnl_ro_rtl_1_m_axi_gmem_RDATA(31 downto 0),
      S01_AXI_rid(0) => krnl_ro_rtl_1_m_axi_gmem_RID,
      S01_AXI_rlast => krnl_ro_rtl_1_m_axi_gmem_RLAST,
      S01_AXI_rready => krnl_ro_rtl_1_m_axi_gmem_RREADY,
      S01_AXI_rresp(1 downto 0) => krnl_ro_rtl_1_m_axi_gmem_RRESP(1 downto 0),
      S01_AXI_rvalid => krnl_ro_rtl_1_m_axi_gmem_RVALID,
      S01_AXI_wdata(31 downto 0) => krnl_ro_rtl_1_m_axi_gmem_WDATA(31 downto 0),
      S01_AXI_wlast => krnl_ro_rtl_1_m_axi_gmem_WLAST,
      S01_AXI_wready => krnl_ro_rtl_1_m_axi_gmem_WREADY,
      S01_AXI_wstrb(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_WSTRB(3 downto 0),
      S01_AXI_wvalid => krnl_ro_rtl_1_m_axi_gmem_WVALID
    );
axi_interconnect_0_p: entity work.ulp_axi_interconnect_0_p_0
     port map (
      ACLK => '0',
      ARESETN => '0',
      M00_ACLK => '0',
      M00_ARESETN => '0',
      M00_AXI_araddr(38 downto 0) => axi_interconnect_0_M00_AXI_P_ARADDR(38 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_P_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_P_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_interconnect_0_M00_AXI_P_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_interconnect_0_M00_AXI_P_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_P_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_P_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_0_M00_AXI_P_ARREADY,
      M00_AXI_arregion(3 downto 0) => axi_interconnect_0_M00_AXI_P_ARREGION(3 downto 0),
      M00_AXI_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_P_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_0_M00_AXI_P_ARVALID,
      M00_AXI_awaddr(38 downto 0) => axi_interconnect_0_M00_AXI_P_AWADDR(38 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_P_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_P_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_interconnect_0_M00_AXI_P_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_interconnect_0_M00_AXI_P_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_P_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_P_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_0_M00_AXI_P_AWREADY,
      M00_AXI_awregion(3 downto 0) => axi_interconnect_0_M00_AXI_P_AWREGION(3 downto 0),
      M00_AXI_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_P_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_0_M00_AXI_P_AWVALID,
      M00_AXI_bready => axi_interconnect_0_M00_AXI_P_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_P_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_0_M00_AXI_P_BVALID,
      M00_AXI_rdata(511 downto 0) => axi_interconnect_0_M00_AXI_P_RDATA(511 downto 0),
      M00_AXI_rlast => axi_interconnect_0_M00_AXI_P_RLAST,
      M00_AXI_rready => axi_interconnect_0_M00_AXI_P_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_P_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_0_M00_AXI_P_RVALID,
      M00_AXI_wdata(511 downto 0) => axi_interconnect_0_M00_AXI_P_WDATA(511 downto 0),
      M00_AXI_wlast => axi_interconnect_0_M00_AXI_P_WLAST,
      M00_AXI_wready => axi_interconnect_0_M00_AXI_P_WREADY,
      M00_AXI_wstrb(63 downto 0) => axi_interconnect_0_M00_AXI_P_WSTRB(63 downto 0),
      M00_AXI_wvalid => axi_interconnect_0_M00_AXI_P_WVALID,
      S00_ACLK => clkwiz_kernel_clk_out1_1,
      S00_ARESETN => slr1_psreset_gate_pr_kernel_interconnect_aresetn,
      S00_AXI_araddr(38 downto 0) => axi_vip_0_M_AXI_P_ARADDR(38 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_vip_0_M_AXI_P_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_vip_0_M_AXI_P_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_vip_0_M_AXI_P_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_vip_0_M_AXI_P_ARLOCK,
      S00_AXI_arprot(2 downto 0) => axi_vip_0_M_AXI_P_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_vip_0_M_AXI_P_ARQOS(3 downto 0),
      S00_AXI_arready => axi_vip_0_M_AXI_P_ARREADY,
      S00_AXI_arregion(3 downto 0) => axi_vip_0_M_AXI_P_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => axi_vip_0_M_AXI_P_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_vip_0_M_AXI_P_ARVALID,
      S00_AXI_awaddr(38 downto 0) => axi_vip_0_M_AXI_P_AWADDR(38 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_vip_0_M_AXI_P_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_vip_0_M_AXI_P_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_vip_0_M_AXI_P_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_vip_0_M_AXI_P_AWLOCK,
      S00_AXI_awprot(2 downto 0) => axi_vip_0_M_AXI_P_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_vip_0_M_AXI_P_AWQOS(3 downto 0),
      S00_AXI_awready => axi_vip_0_M_AXI_P_AWREADY,
      S00_AXI_awregion(3 downto 0) => axi_vip_0_M_AXI_P_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => axi_vip_0_M_AXI_P_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_vip_0_M_AXI_P_AWVALID,
      S00_AXI_bready => axi_vip_0_M_AXI_P_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_vip_0_M_AXI_P_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_vip_0_M_AXI_P_BVALID,
      S00_AXI_rdata(511 downto 0) => axi_vip_0_M_AXI_P_RDATA(511 downto 0),
      S00_AXI_rlast => axi_vip_0_M_AXI_P_RLAST,
      S00_AXI_rready => axi_vip_0_M_AXI_P_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_vip_0_M_AXI_P_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_vip_0_M_AXI_P_RVALID,
      S00_AXI_wdata(511 downto 0) => axi_vip_0_M_AXI_P_WDATA(511 downto 0),
      S00_AXI_wlast => axi_vip_0_M_AXI_P_WLAST,
      S00_AXI_wready => axi_vip_0_M_AXI_P_WREADY,
      S00_AXI_wstrb(63 downto 0) => axi_vip_0_M_AXI_P_WSTRB(63 downto 0),
      S00_AXI_wvalid => axi_vip_0_M_AXI_P_WVALID
    );
axi_interconnect_1: entity work.ulp_axi_interconnect_1_0
     port map (
      ACLK => clkwiz_kernel_clk_out1_1,
      ARESETN => slr1_psreset_gate_pr_kernel_interconnect_aresetn,
      M00_ACLK => M00_ACLK_1,
      M00_ARESETN => slr1_interconnect_aresetn,
      M00_AXI_araddr(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_interconnect_1_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_interconnect_1_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(5 downto 0) => axi_interconnect_1_M00_AXI_ARID(5 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_interconnect_1_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_interconnect_1_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_interconnect_1_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_interconnect_1_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_interconnect_1_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_interconnect_1_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_interconnect_1_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_interconnect_1_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_interconnect_1_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(5 downto 0) => axi_interconnect_1_M00_AXI_AWID(5 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_interconnect_1_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_interconnect_1_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_interconnect_1_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_interconnect_1_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_interconnect_1_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_interconnect_1_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_interconnect_1_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => axi_interconnect_1_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => axi_interconnect_1_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_interconnect_1_M00_AXI_BVALID,
      M00_AXI_rdata(511 downto 0) => axi_interconnect_1_M00_AXI_RDATA(511 downto 0),
      M00_AXI_rid(5 downto 0) => axi_interconnect_1_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => axi_interconnect_1_M00_AXI_RLAST,
      M00_AXI_rready => axi_interconnect_1_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_interconnect_1_M00_AXI_RVALID,
      M00_AXI_wdata(511 downto 0) => axi_interconnect_1_M00_AXI_WDATA(511 downto 0),
      M00_AXI_wlast => axi_interconnect_1_M00_AXI_WLAST,
      M00_AXI_wready => axi_interconnect_1_M00_AXI_WREADY,
      M00_AXI_wstrb(63 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(63 downto 0),
      M00_AXI_wvalid => axi_interconnect_1_M00_AXI_WVALID,
      M01_ACLK => '0',
      M01_ARESETN => '0',
      M01_AXI_araddr(63 downto 15) => NLW_axi_interconnect_1_M01_AXI_araddr_UNCONNECTED(63 downto 15),
      M01_AXI_araddr(14 downto 0) => axi_interconnect_1_M01_AXI_ARADDR(14 downto 0),
      M01_AXI_arburst(1 downto 0) => axi_interconnect_1_M01_AXI_ARBURST(1 downto 0),
      M01_AXI_arcache(3 downto 0) => axi_interconnect_1_M01_AXI_ARCACHE(3 downto 0),
      M01_AXI_arid(5 downto 0) => axi_interconnect_1_M01_AXI_ARID(5 downto 0),
      M01_AXI_arlen(7 downto 0) => axi_interconnect_1_M01_AXI_ARLEN(7 downto 0),
      M01_AXI_arlock => axi_interconnect_1_M01_AXI_ARLOCK,
      M01_AXI_arprot(2 downto 0) => axi_interconnect_1_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => axi_interconnect_1_M01_AXI_ARREADY,
      M01_AXI_arsize(2 downto 0) => axi_interconnect_1_M01_AXI_ARSIZE(2 downto 0),
      M01_AXI_arvalid => axi_interconnect_1_M01_AXI_ARVALID,
      M01_AXI_awaddr(63 downto 15) => NLW_axi_interconnect_1_M01_AXI_awaddr_UNCONNECTED(63 downto 15),
      M01_AXI_awaddr(14 downto 0) => axi_interconnect_1_M01_AXI_AWADDR(14 downto 0),
      M01_AXI_awburst(1 downto 0) => axi_interconnect_1_M01_AXI_AWBURST(1 downto 0),
      M01_AXI_awcache(3 downto 0) => axi_interconnect_1_M01_AXI_AWCACHE(3 downto 0),
      M01_AXI_awid(5 downto 0) => axi_interconnect_1_M01_AXI_AWID(5 downto 0),
      M01_AXI_awlen(7 downto 0) => axi_interconnect_1_M01_AXI_AWLEN(7 downto 0),
      M01_AXI_awlock => axi_interconnect_1_M01_AXI_AWLOCK,
      M01_AXI_awprot(2 downto 0) => axi_interconnect_1_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => axi_interconnect_1_M01_AXI_AWREADY,
      M01_AXI_awsize(2 downto 0) => axi_interconnect_1_M01_AXI_AWSIZE(2 downto 0),
      M01_AXI_awvalid => axi_interconnect_1_M01_AXI_AWVALID,
      M01_AXI_bid(5 downto 0) => axi_interconnect_1_M01_AXI_BID(5 downto 0),
      M01_AXI_bready => axi_interconnect_1_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_interconnect_1_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_interconnect_1_M01_AXI_BVALID,
      M01_AXI_rdata(511 downto 0) => axi_interconnect_1_M01_AXI_RDATA(511 downto 0),
      M01_AXI_rid(5 downto 0) => axi_interconnect_1_M01_AXI_RID(5 downto 0),
      M01_AXI_rlast => axi_interconnect_1_M01_AXI_RLAST,
      M01_AXI_rready => axi_interconnect_1_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_interconnect_1_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_interconnect_1_M01_AXI_RVALID,
      M01_AXI_wdata(511 downto 0) => axi_interconnect_1_M01_AXI_WDATA(511 downto 0),
      M01_AXI_wlast => axi_interconnect_1_M01_AXI_WLAST,
      M01_AXI_wready => axi_interconnect_1_M01_AXI_WREADY,
      M01_AXI_wstrb(63 downto 0) => axi_interconnect_1_M01_AXI_WSTRB(63 downto 0),
      M01_AXI_wvalid => axi_interconnect_1_M01_AXI_WVALID,
      S00_ACLK => '0',
      S00_ARESETN => '0',
      S00_AXI_araddr(63 downto 0) => axi_interconnect_0_M00_AXI_ARADDR(63 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      S00_AXI_arid(0) => axi_interconnect_0_M00_AXI_ARID,
      S00_AXI_arlen(7 downto 0) => axi_interconnect_0_M00_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_interconnect_0_M00_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => axi_interconnect_0_M00_AXI_ARREADY,
      S00_AXI_arregion(3 downto 0) => axi_interconnect_0_M00_AXI_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_interconnect_0_M00_AXI_ARVALID,
      S00_AXI_awaddr(63 downto 0) => axi_interconnect_0_M00_AXI_AWADDR(63 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      S00_AXI_awid(0) => axi_interconnect_0_M00_AXI_AWID,
      S00_AXI_awlen(7 downto 0) => axi_interconnect_0_M00_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_interconnect_0_M00_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => axi_interconnect_0_M00_AXI_AWREADY,
      S00_AXI_awregion(3 downto 0) => axi_interconnect_0_M00_AXI_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_interconnect_0_M00_AXI_AWVALID,
      S00_AXI_bid(0) => axi_interconnect_0_M00_AXI_BID,
      S00_AXI_bready => axi_interconnect_0_M00_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_interconnect_0_M00_AXI_BVALID,
      S00_AXI_rdata(511 downto 0) => axi_interconnect_0_M00_AXI_RDATA(511 downto 0),
      S00_AXI_rid(0) => axi_interconnect_0_M00_AXI_RID,
      S00_AXI_rlast => axi_interconnect_0_M00_AXI_RLAST,
      S00_AXI_rready => axi_interconnect_0_M00_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_interconnect_0_M00_AXI_RVALID,
      S00_AXI_wdata(511 downto 0) => axi_interconnect_0_M00_AXI_WDATA(511 downto 0),
      S00_AXI_wlast => axi_interconnect_0_M00_AXI_WLAST,
      S00_AXI_wready => axi_interconnect_0_M00_AXI_WREADY,
      S00_AXI_wstrb(63 downto 0) => axi_interconnect_0_M00_AXI_WSTRB(63 downto 0),
      S00_AXI_wvalid => axi_interconnect_0_M00_AXI_WVALID,
      S01_ACLK => '0',
      S01_ARESETN => '0',
      S01_AXI_araddr(38 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARADDR(38 downto 0),
      S01_AXI_arburst(1 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARCACHE(3 downto 0),
      S01_AXI_arid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARID(3 downto 0),
      S01_AXI_arlen(7 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARLEN(7 downto 0),
      S01_AXI_arlock(0) => slr1_axi_cdc_data_static_M_AXI_ARLOCK,
      S01_AXI_arprot(2 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARQOS(3 downto 0),
      S01_AXI_arready => slr1_axi_cdc_data_static_M_AXI_ARREADY,
      S01_AXI_arregion(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARREGION(3 downto 0),
      S01_AXI_arsize(2 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARSIZE(2 downto 0),
      S01_AXI_arvalid => slr1_axi_cdc_data_static_M_AXI_ARVALID,
      S01_AXI_awaddr(38 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWADDR(38 downto 0),
      S01_AXI_awburst(1 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWCACHE(3 downto 0),
      S01_AXI_awid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWID(3 downto 0),
      S01_AXI_awlen(7 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => slr1_axi_cdc_data_static_M_AXI_AWLOCK,
      S01_AXI_awprot(2 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWQOS(3 downto 0),
      S01_AXI_awready => slr1_axi_cdc_data_static_M_AXI_AWREADY,
      S01_AXI_awregion(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWREGION(3 downto 0),
      S01_AXI_awsize(2 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWSIZE(2 downto 0),
      S01_AXI_awvalid => slr1_axi_cdc_data_static_M_AXI_AWVALID,
      S01_AXI_bid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_BID(3 downto 0),
      S01_AXI_bready => slr1_axi_cdc_data_static_M_AXI_BREADY,
      S01_AXI_bresp(1 downto 0) => slr1_axi_cdc_data_static_M_AXI_BRESP(1 downto 0),
      S01_AXI_bvalid => slr1_axi_cdc_data_static_M_AXI_BVALID,
      S01_AXI_rdata(511 downto 0) => slr1_axi_cdc_data_static_M_AXI_RDATA(511 downto 0),
      S01_AXI_rid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_RID(3 downto 0),
      S01_AXI_rlast => slr1_axi_cdc_data_static_M_AXI_RLAST,
      S01_AXI_rready => slr1_axi_cdc_data_static_M_AXI_RREADY,
      S01_AXI_rresp(1 downto 0) => slr1_axi_cdc_data_static_M_AXI_RRESP(1 downto 0),
      S01_AXI_rvalid => slr1_axi_cdc_data_static_M_AXI_RVALID,
      S01_AXI_wdata(511 downto 0) => slr1_axi_cdc_data_static_M_AXI_WDATA(511 downto 0),
      S01_AXI_wlast => slr1_axi_cdc_data_static_M_AXI_WLAST,
      S01_AXI_wready => slr1_axi_cdc_data_static_M_AXI_WREADY,
      S01_AXI_wstrb(63 downto 0) => slr1_axi_cdc_data_static_M_AXI_WSTRB(63 downto 0),
      S01_AXI_wvalid => slr1_axi_cdc_data_static_M_AXI_WVALID,
      S02_ACLK => '0',
      S02_ARESETN => '0',
      S02_AXI_araddr(38 downto 0) => axi_interconnect_0_M00_AXI_P_ARADDR(38 downto 0),
      S02_AXI_arburst(1 downto 0) => axi_interconnect_0_M00_AXI_P_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => axi_interconnect_0_M00_AXI_P_ARCACHE(3 downto 0),
      S02_AXI_arlen(7 downto 0) => axi_interconnect_0_M00_AXI_P_ARLEN(7 downto 0),
      S02_AXI_arlock(0) => axi_interconnect_0_M00_AXI_P_ARLOCK,
      S02_AXI_arprot(2 downto 0) => axi_interconnect_0_M00_AXI_P_ARPROT(2 downto 0),
      S02_AXI_arqos(3 downto 0) => axi_interconnect_0_M00_AXI_P_ARQOS(3 downto 0),
      S02_AXI_arready => axi_interconnect_0_M00_AXI_P_ARREADY,
      S02_AXI_arregion(3 downto 0) => axi_interconnect_0_M00_AXI_P_ARREGION(3 downto 0),
      S02_AXI_arsize(2 downto 0) => axi_interconnect_0_M00_AXI_P_ARSIZE(2 downto 0),
      S02_AXI_arvalid => axi_interconnect_0_M00_AXI_P_ARVALID,
      S02_AXI_awaddr(38 downto 0) => axi_interconnect_0_M00_AXI_P_AWADDR(38 downto 0),
      S02_AXI_awburst(1 downto 0) => axi_interconnect_0_M00_AXI_P_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => axi_interconnect_0_M00_AXI_P_AWCACHE(3 downto 0),
      S02_AXI_awlen(7 downto 0) => axi_interconnect_0_M00_AXI_P_AWLEN(7 downto 0),
      S02_AXI_awlock(0) => axi_interconnect_0_M00_AXI_P_AWLOCK,
      S02_AXI_awprot(2 downto 0) => axi_interconnect_0_M00_AXI_P_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => axi_interconnect_0_M00_AXI_P_AWQOS(3 downto 0),
      S02_AXI_awready => axi_interconnect_0_M00_AXI_P_AWREADY,
      S02_AXI_awregion(3 downto 0) => axi_interconnect_0_M00_AXI_P_AWREGION(3 downto 0),
      S02_AXI_awsize(2 downto 0) => axi_interconnect_0_M00_AXI_P_AWSIZE(2 downto 0),
      S02_AXI_awvalid => axi_interconnect_0_M00_AXI_P_AWVALID,
      S02_AXI_bready => axi_interconnect_0_M00_AXI_P_BREADY,
      S02_AXI_bresp(1 downto 0) => axi_interconnect_0_M00_AXI_P_BRESP(1 downto 0),
      S02_AXI_bvalid => axi_interconnect_0_M00_AXI_P_BVALID,
      S02_AXI_rdata(511 downto 0) => axi_interconnect_0_M00_AXI_P_RDATA(511 downto 0),
      S02_AXI_rlast => axi_interconnect_0_M00_AXI_P_RLAST,
      S02_AXI_rready => axi_interconnect_0_M00_AXI_P_RREADY,
      S02_AXI_rresp(1 downto 0) => axi_interconnect_0_M00_AXI_P_RRESP(1 downto 0),
      S02_AXI_rvalid => axi_interconnect_0_M00_AXI_P_RVALID,
      S02_AXI_wdata(511 downto 0) => axi_interconnect_0_M00_AXI_P_WDATA(511 downto 0),
      S02_AXI_wlast => axi_interconnect_0_M00_AXI_P_WLAST,
      S02_AXI_wready => axi_interconnect_0_M00_AXI_P_WREADY,
      S02_AXI_wstrb(63 downto 0) => axi_interconnect_0_M00_AXI_P_WSTRB(63 downto 0),
      S02_AXI_wvalid => axi_interconnect_0_M00_AXI_P_WVALID,
      S03_ACLK => '0',
      S03_ARESETN => '0',
      S03_AXI_araddr(38 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARADDR(38 downto 0),
      S03_AXI_arburst(1 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARBURST(1 downto 0),
      S03_AXI_arcache(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARCACHE(3 downto 0),
      S03_AXI_arid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARID(3 downto 0),
      S03_AXI_arlen(7 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARLEN(7 downto 0),
      S03_AXI_arlock(0) => slr1_axi_cdc_data_static_M_AXI1_ARLOCK,
      S03_AXI_arprot(2 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARPROT(2 downto 0),
      S03_AXI_arqos(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARQOS(3 downto 0),
      S03_AXI_arready => slr1_axi_cdc_data_static_M_AXI1_ARREADY,
      S03_AXI_arsize(2 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARSIZE(2 downto 0),
      S03_AXI_arvalid => slr1_axi_cdc_data_static_M_AXI1_ARVALID,
      S03_AXI_awaddr(38 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWADDR(38 downto 0),
      S03_AXI_awburst(1 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWBURST(1 downto 0),
      S03_AXI_awcache(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWCACHE(3 downto 0),
      S03_AXI_awid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWID(3 downto 0),
      S03_AXI_awlen(7 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWLEN(7 downto 0),
      S03_AXI_awlock(0) => slr1_axi_cdc_data_static_M_AXI1_AWLOCK,
      S03_AXI_awprot(2 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWPROT(2 downto 0),
      S03_AXI_awqos(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWQOS(3 downto 0),
      S03_AXI_awready => slr1_axi_cdc_data_static_M_AXI1_AWREADY,
      S03_AXI_awsize(2 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWSIZE(2 downto 0),
      S03_AXI_awvalid => slr1_axi_cdc_data_static_M_AXI1_AWVALID,
      S03_AXI_bid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_BID(3 downto 0),
      S03_AXI_bready => slr1_axi_cdc_data_static_M_AXI1_BREADY,
      S03_AXI_bresp(1 downto 0) => slr1_axi_cdc_data_static_M_AXI1_BRESP(1 downto 0),
      S03_AXI_bvalid => slr1_axi_cdc_data_static_M_AXI1_BVALID,
      S03_AXI_rdata(127 downto 0) => slr1_axi_cdc_data_static_M_AXI1_RDATA(127 downto 0),
      S03_AXI_rid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_RID(3 downto 0),
      S03_AXI_rlast => slr1_axi_cdc_data_static_M_AXI1_RLAST,
      S03_AXI_rready => slr1_axi_cdc_data_static_M_AXI1_RREADY,
      S03_AXI_rresp(1 downto 0) => slr1_axi_cdc_data_static_M_AXI1_RRESP(1 downto 0),
      S03_AXI_rvalid => slr1_axi_cdc_data_static_M_AXI1_RVALID,
      S03_AXI_wdata(127 downto 0) => slr1_axi_cdc_data_static_M_AXI1_WDATA(127 downto 0),
      S03_AXI_wlast => slr1_axi_cdc_data_static_M_AXI1_WLAST,
      S03_AXI_wready => slr1_axi_cdc_data_static_M_AXI1_WREADY,
      S03_AXI_wstrb(15 downto 0) => slr1_axi_cdc_data_static_M_AXI1_WSTRB(15 downto 0),
      S03_AXI_wvalid => slr1_axi_cdc_data_static_M_AXI1_WVALID
    );
axi_protocol_convert_0: component ulp_axi_protocol_convert_0_0
     port map (
      aclk => clkwiz_sysclks_clk_out2_1,
      aresetn => ii_level0_wire_ulp_m_aresetn_ctrl_00,
      m_axi_araddr(31 downto 5) => NLW_axi_protocol_convert_0_m_axi_araddr_UNCONNECTED(31 downto 5),
      m_axi_araddr(4 downto 0) => axi_protocol_convert_0_M_AXI_ARADDR(4 downto 0),
      m_axi_arprot(2 downto 0) => axi_protocol_convert_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => axi_protocol_convert_0_M_AXI_ARREADY,
      m_axi_arvalid => axi_protocol_convert_0_M_AXI_ARVALID,
      m_axi_awaddr(31 downto 5) => NLW_axi_protocol_convert_0_m_axi_awaddr_UNCONNECTED(31 downto 5),
      m_axi_awaddr(4 downto 0) => axi_protocol_convert_0_M_AXI_AWADDR(4 downto 0),
      m_axi_awprot(2 downto 0) => axi_protocol_convert_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => axi_protocol_convert_0_M_AXI_AWREADY,
      m_axi_awvalid => axi_protocol_convert_0_M_AXI_AWVALID,
      m_axi_bready => axi_protocol_convert_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_protocol_convert_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_protocol_convert_0_M_AXI_BVALID,
      m_axi_rdata(31 downto 0) => axi_protocol_convert_0_M_AXI_RDATA(31 downto 0),
      m_axi_rready => axi_protocol_convert_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_protocol_convert_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_protocol_convert_0_M_AXI_RVALID,
      m_axi_wdata(31 downto 0) => axi_protocol_convert_0_M_AXI_WDATA(31 downto 0),
      m_axi_wready => axi_protocol_convert_0_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => axi_protocol_convert_0_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => axi_protocol_convert_0_M_AXI_WVALID,
      s_axi_araddr(31 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLEN(7 downto 0),
      s_axi_arlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLOCK,
      s_axi_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"010",
      s_axi_arvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARVALID,
      s_axi_awaddr(31 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLEN(7 downto 0),
      s_axi_awlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLOCK,
      s_axi_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"010",
      s_axi_awvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWVALID,
      s_axi_bready => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BREADY,
      s_axi_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BRESP(1 downto 0),
      s_axi_bvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BVALID,
      s_axi_rdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RDATA(31 downto 0),
      s_axi_rlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RLAST,
      s_axi_rready => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RREADY,
      s_axi_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RRESP(1 downto 0),
      s_axi_rvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RVALID,
      s_axi_wdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WDATA(31 downto 0),
      s_axi_wlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WLAST,
      s_axi_wready => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WREADY,
      s_axi_wstrb(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WSTRB(3 downto 0),
      s_axi_wvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WVALID
    );
axi_vip_0: component ulp_axi_vip_0_0
     port map (
      aclk => clkwiz_kernel_clk_out1_1,
      aresetn => slr1_psreset_gate_pr_kernel_interconnect_aresetn,
      m_axi_araddr(38 downto 0) => axi_vip_0_M_AXI_ARADDR(38 downto 0),
      m_axi_arburst(1 downto 0) => axi_vip_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_vip_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_vip_0_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_vip_0_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => axi_vip_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_vip_0_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => axi_vip_0_M_AXI_ARREADY,
      m_axi_arregion(3 downto 0) => axi_vip_0_M_AXI_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => axi_vip_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_vip_0_M_AXI_ARVALID,
      m_axi_awaddr(38 downto 0) => axi_vip_0_M_AXI_AWADDR(38 downto 0),
      m_axi_awburst(1 downto 0) => axi_vip_0_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_vip_0_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_vip_0_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_vip_0_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => axi_vip_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_vip_0_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => axi_vip_0_M_AXI_AWREADY,
      m_axi_awregion(3 downto 0) => axi_vip_0_M_AXI_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => axi_vip_0_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_vip_0_M_AXI_AWVALID,
      m_axi_bready => axi_vip_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_0_M_AXI_BVALID,
      m_axi_rdata(511 downto 0) => axi_vip_0_M_AXI_RDATA(511 downto 0),
      m_axi_rlast => axi_vip_0_M_AXI_RLAST,
      m_axi_rready => axi_vip_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_0_M_AXI_RVALID,
      m_axi_wdata(511 downto 0) => axi_vip_0_M_AXI_WDATA(511 downto 0),
      m_axi_wlast => axi_vip_0_M_AXI_WLAST,
      m_axi_wready => axi_vip_0_M_AXI_WREADY,
      m_axi_wstrb(63 downto 0) => axi_vip_0_M_AXI_WSTRB(63 downto 0),
      m_axi_wvalid => axi_vip_0_M_AXI_WVALID
    );
axi_vip_0_p: component ulp_axi_vip_0_p_0
     port map (
      aclk => clkwiz_kernel_clk_out1_1,
      aresetn => slr1_psreset_gate_pr_kernel_interconnect_aresetn,
      m_axi_araddr(38 downto 0) => axi_vip_0_M_AXI_P_ARADDR(38 downto 0),
      m_axi_arburst(1 downto 0) => axi_vip_0_M_AXI_P_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_vip_0_M_AXI_P_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => axi_vip_0_M_AXI_P_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_vip_0_M_AXI_P_ARLOCK,
      m_axi_arprot(2 downto 0) => axi_vip_0_M_AXI_P_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_vip_0_M_AXI_P_ARQOS(3 downto 0),
      m_axi_arready => axi_vip_0_M_AXI_P_ARREADY,
      m_axi_arregion(3 downto 0) => axi_vip_0_M_AXI_P_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => axi_vip_0_M_AXI_P_ARSIZE(2 downto 0),
      m_axi_arvalid => axi_vip_0_M_AXI_P_ARVALID,
      m_axi_awaddr(38 downto 0) => axi_vip_0_M_AXI_P_AWADDR(38 downto 0),
      m_axi_awburst(1 downto 0) => axi_vip_0_M_AXI_P_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_vip_0_M_AXI_P_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => axi_vip_0_M_AXI_P_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_vip_0_M_AXI_P_AWLOCK,
      m_axi_awprot(2 downto 0) => axi_vip_0_M_AXI_P_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_vip_0_M_AXI_P_AWQOS(3 downto 0),
      m_axi_awready => axi_vip_0_M_AXI_P_AWREADY,
      m_axi_awregion(3 downto 0) => axi_vip_0_M_AXI_P_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => axi_vip_0_M_AXI_P_AWSIZE(2 downto 0),
      m_axi_awvalid => axi_vip_0_M_AXI_P_AWVALID,
      m_axi_bready => axi_vip_0_M_AXI_P_BREADY,
      m_axi_bresp(1 downto 0) => axi_vip_0_M_AXI_P_BRESP(1 downto 0),
      m_axi_bvalid => axi_vip_0_M_AXI_P_BVALID,
      m_axi_rdata(511 downto 0) => axi_vip_0_M_AXI_P_RDATA(511 downto 0),
      m_axi_rlast => axi_vip_0_M_AXI_P_RLAST,
      m_axi_rready => axi_vip_0_M_AXI_P_RREADY,
      m_axi_rresp(1 downto 0) => axi_vip_0_M_AXI_P_RRESP(1 downto 0),
      m_axi_rvalid => axi_vip_0_M_AXI_P_RVALID,
      m_axi_wdata(511 downto 0) => axi_vip_0_M_AXI_P_WDATA(511 downto 0),
      m_axi_wlast => axi_vip_0_M_AXI_P_WLAST,
      m_axi_wready => axi_vip_0_M_AXI_P_WREADY,
      m_axi_wstrb(63 downto 0) => axi_vip_0_M_AXI_P_WSTRB(63 downto 0),
      m_axi_wvalid => axi_vip_0_M_AXI_P_WVALID
    );
ddr1_clk_bufg: component ulp_ddr1_clk_bufg_0
     port map (
      BUFG_I(0) => ddr1_clk_ibufds_IBUF_OUT,
      BUFG_O(0) => ddr1_clk_bufg_BUFG_O
    );
ddr1_clk_ibufds: component ulp_ddr1_clk_ibufds_0
     port map (
      IBUF_DS_N(0) => io_clk_ddr_00_clk_n(0),
      IBUF_DS_P(0) => io_clk_ddr_00_clk_p(0),
      IBUF_OUT(0) => ddr1_clk_ibufds_IBUF_OUT
    );
ddrmem_1: component ulp_ddrmem_1_0
     port map (
      c0_ddr4_act_n => io_ddr_00_act_n,
      c0_ddr4_adr(16 downto 0) => io_ddr_00_adr(16 downto 0),
      c0_ddr4_aresetn => psreset_ddrmem_n_1_interconnect_aresetn,
      c0_ddr4_ba(1 downto 0) => io_ddr_00_ba(1 downto 0),
      c0_ddr4_bg(0) => io_ddr_00_bg(0),
      c0_ddr4_ck_c(0) => io_ddr_00_ck_c(0),
      c0_ddr4_ck_t(0) => io_ddr_00_ck_t(0),
      c0_ddr4_cke(0) => io_ddr_00_cke(0),
      c0_ddr4_cs_n(0) => io_ddr_00_cs_n(0),
      c0_ddr4_dm_dbi_n(8 downto 0) => io_ddr_00_dm_n(8 downto 0),
      c0_ddr4_dq(71 downto 0) => io_ddr_00_dq(71 downto 0),
      c0_ddr4_dqs_c(8 downto 0) => io_ddr_00_dqs_c(8 downto 0),
      c0_ddr4_dqs_t(8 downto 0) => io_ddr_00_dqs_t(8 downto 0),
      c0_ddr4_interrupt => NLW_ddrmem_1_c0_ddr4_interrupt_UNCONNECTED,
      c0_ddr4_odt(0) => io_ddr_00_odt(0),
      c0_ddr4_reset_n => io_ddr_00_reset_n,
      c0_ddr4_s_axi_araddr(31 downto 0) => axi_interconnect_1_M00_AXI_ARADDR(31 downto 0),
      c0_ddr4_s_axi_arburst(1 downto 0) => axi_interconnect_1_M00_AXI_ARBURST(1 downto 0),
      c0_ddr4_s_axi_arcache(3 downto 0) => axi_interconnect_1_M00_AXI_ARCACHE(3 downto 0),
      c0_ddr4_s_axi_arid(5 downto 0) => axi_interconnect_1_M00_AXI_ARID(5 downto 0),
      c0_ddr4_s_axi_arlen(7 downto 0) => axi_interconnect_1_M00_AXI_ARLEN(7 downto 0),
      c0_ddr4_s_axi_arlock(0) => axi_interconnect_1_M00_AXI_ARLOCK,
      c0_ddr4_s_axi_arprot(2 downto 0) => axi_interconnect_1_M00_AXI_ARPROT(2 downto 0),
      c0_ddr4_s_axi_arqos(3 downto 0) => axi_interconnect_1_M00_AXI_ARQOS(3 downto 0),
      c0_ddr4_s_axi_arready => axi_interconnect_1_M00_AXI_ARREADY,
      c0_ddr4_s_axi_arsize(2 downto 0) => axi_interconnect_1_M00_AXI_ARSIZE(2 downto 0),
      c0_ddr4_s_axi_arvalid => axi_interconnect_1_M00_AXI_ARVALID,
      c0_ddr4_s_axi_awaddr(31 downto 0) => axi_interconnect_1_M00_AXI_AWADDR(31 downto 0),
      c0_ddr4_s_axi_awburst(1 downto 0) => axi_interconnect_1_M00_AXI_AWBURST(1 downto 0),
      c0_ddr4_s_axi_awcache(3 downto 0) => axi_interconnect_1_M00_AXI_AWCACHE(3 downto 0),
      c0_ddr4_s_axi_awid(5 downto 0) => axi_interconnect_1_M00_AXI_AWID(5 downto 0),
      c0_ddr4_s_axi_awlen(7 downto 0) => axi_interconnect_1_M00_AXI_AWLEN(7 downto 0),
      c0_ddr4_s_axi_awlock(0) => axi_interconnect_1_M00_AXI_AWLOCK,
      c0_ddr4_s_axi_awprot(2 downto 0) => axi_interconnect_1_M00_AXI_AWPROT(2 downto 0),
      c0_ddr4_s_axi_awqos(3 downto 0) => axi_interconnect_1_M00_AXI_AWQOS(3 downto 0),
      c0_ddr4_s_axi_awready => axi_interconnect_1_M00_AXI_AWREADY,
      c0_ddr4_s_axi_awsize(2 downto 0) => axi_interconnect_1_M00_AXI_AWSIZE(2 downto 0),
      c0_ddr4_s_axi_awvalid => axi_interconnect_1_M00_AXI_AWVALID,
      c0_ddr4_s_axi_bid(5 downto 0) => axi_interconnect_1_M00_AXI_BID(5 downto 0),
      c0_ddr4_s_axi_bready => axi_interconnect_1_M00_AXI_BREADY,
      c0_ddr4_s_axi_bresp(1 downto 0) => axi_interconnect_1_M00_AXI_BRESP(1 downto 0),
      c0_ddr4_s_axi_bvalid => axi_interconnect_1_M00_AXI_BVALID,
      c0_ddr4_s_axi_ctrl_araddr(31 downto 26) => B"000000",
      c0_ddr4_s_axi_ctrl_araddr(25 downto 0) => slr1_axi_vip_ctrl_mgntpf_M_AXI_ARADDR(25 downto 0),
      c0_ddr4_s_axi_ctrl_arready => slr1_axi_vip_ctrl_mgntpf_M_AXI_ARREADY,
      c0_ddr4_s_axi_ctrl_arvalid => slr1_axi_vip_ctrl_mgntpf_M_AXI_ARVALID,
      c0_ddr4_s_axi_ctrl_awaddr(31 downto 26) => B"000000",
      c0_ddr4_s_axi_ctrl_awaddr(25 downto 0) => slr1_axi_vip_ctrl_mgntpf_M_AXI_AWADDR(25 downto 0),
      c0_ddr4_s_axi_ctrl_awready => slr1_axi_vip_ctrl_mgntpf_M_AXI_AWREADY,
      c0_ddr4_s_axi_ctrl_awvalid => slr1_axi_vip_ctrl_mgntpf_M_AXI_AWVALID,
      c0_ddr4_s_axi_ctrl_bready => slr1_axi_vip_ctrl_mgntpf_M_AXI_BREADY,
      c0_ddr4_s_axi_ctrl_bresp(1 downto 0) => slr1_axi_vip_ctrl_mgntpf_M_AXI_BRESP(1 downto 0),
      c0_ddr4_s_axi_ctrl_bvalid => slr1_axi_vip_ctrl_mgntpf_M_AXI_BVALID,
      c0_ddr4_s_axi_ctrl_rdata(31 downto 0) => slr1_axi_vip_ctrl_mgntpf_M_AXI_RDATA(31 downto 0),
      c0_ddr4_s_axi_ctrl_rready => slr1_axi_vip_ctrl_mgntpf_M_AXI_RREADY,
      c0_ddr4_s_axi_ctrl_rresp(1 downto 0) => slr1_axi_vip_ctrl_mgntpf_M_AXI_RRESP(1 downto 0),
      c0_ddr4_s_axi_ctrl_rvalid => slr1_axi_vip_ctrl_mgntpf_M_AXI_RVALID,
      c0_ddr4_s_axi_ctrl_wdata(31 downto 0) => slr1_axi_vip_ctrl_mgntpf_M_AXI_WDATA(31 downto 0),
      c0_ddr4_s_axi_ctrl_wready => slr1_axi_vip_ctrl_mgntpf_M_AXI_WREADY,
      c0_ddr4_s_axi_ctrl_wvalid => slr1_axi_vip_ctrl_mgntpf_M_AXI_WVALID,
      c0_ddr4_s_axi_rdata(511 downto 0) => axi_interconnect_1_M00_AXI_RDATA(511 downto 0),
      c0_ddr4_s_axi_rid(5 downto 0) => axi_interconnect_1_M00_AXI_RID(5 downto 0),
      c0_ddr4_s_axi_rlast => axi_interconnect_1_M00_AXI_RLAST,
      c0_ddr4_s_axi_rready => axi_interconnect_1_M00_AXI_RREADY,
      c0_ddr4_s_axi_rresp(1 downto 0) => axi_interconnect_1_M00_AXI_RRESP(1 downto 0),
      c0_ddr4_s_axi_rvalid => axi_interconnect_1_M00_AXI_RVALID,
      c0_ddr4_s_axi_wdata(511 downto 0) => axi_interconnect_1_M00_AXI_WDATA(511 downto 0),
      c0_ddr4_s_axi_wlast => axi_interconnect_1_M00_AXI_WLAST,
      c0_ddr4_s_axi_wready => axi_interconnect_1_M00_AXI_WREADY,
      c0_ddr4_s_axi_wstrb(63 downto 0) => axi_interconnect_1_M00_AXI_WSTRB(63 downto 0),
      c0_ddr4_s_axi_wvalid => axi_interconnect_1_M00_AXI_WVALID,
      c0_ddr4_ui_clk => M00_ACLK_1,
      c0_ddr4_ui_clk_sync_rst => ddrmem_1_c0_ddr4_ui_clk_sync_rst,
      c0_init_calib_complete => aux_reset_in_1,
      c0_sys_clk_i => ddr1_clk_bufg_BUFG_O,
      dbg_bus(511 downto 0) => NLW_ddrmem_1_dbg_bus_UNCONNECTED(511 downto 0),
      dbg_clk => NLW_ddrmem_1_dbg_clk_UNCONNECTED,
      sys_rst => slr1_logic_reset_op_Res
    );
debug_bridge_xsdbm: component ulp_debug_bridge_xsdbm_0
     port map (
      S_BSCAN_bscanid_en => user_debug_bridge_m0_bscan_BSCANID_EN,
      S_BSCAN_capture => user_debug_bridge_m0_bscan_CAPTURE,
      S_BSCAN_drck => user_debug_bridge_m0_bscan_DRCK,
      S_BSCAN_reset => user_debug_bridge_m0_bscan_RESET,
      S_BSCAN_runtest => user_debug_bridge_m0_bscan_RUNTEST,
      S_BSCAN_sel => user_debug_bridge_m0_bscan_SEL,
      S_BSCAN_shift => user_debug_bridge_m0_bscan_SHIFT,
      S_BSCAN_tck => user_debug_bridge_m0_bscan_TCK,
      S_BSCAN_tdi => user_debug_bridge_m0_bscan_TDI,
      S_BSCAN_tdo => user_debug_bridge_m0_bscan_TDO,
      S_BSCAN_tms => user_debug_bridge_m0_bscan_TMS,
      S_BSCAN_update => user_debug_bridge_m0_bscan_UPDATE,
      clk => clkwiz_sysclks_clk_out2_1
    );
fpga_dna_module_0: component ulp_fpga_dna_module_0_0
     port map (
      dna_dyn_data_dout => '0',
      dna_dyn_data_ports(2 downto 0) => NLW_fpga_dna_module_0_dna_dyn_data_ports_UNCONNECTED(2 downto 0),
      fpga_dna_data(95 downto 0) => NLW_fpga_dna_module_0_fpga_dna_data_UNCONNECTED(95 downto 0),
      s_axi_lite_aclk => clkwiz_sysclks_clk_out2_1,
      s_axi_lite_araddr(11 downto 0) => slr1_M01_AXI1_ARADDR(11 downto 0),
      s_axi_lite_aresetn => slr1_psreset_gate_pr_control_interconnect_aresetn,
      s_axi_lite_arready => slr1_M01_AXI1_ARREADY,
      s_axi_lite_arvalid => slr1_M01_AXI1_ARVALID,
      s_axi_lite_awaddr(11 downto 0) => slr1_M01_AXI1_AWADDR(11 downto 0),
      s_axi_lite_awready => slr1_M01_AXI1_AWREADY,
      s_axi_lite_awvalid => slr1_M01_AXI1_AWVALID,
      s_axi_lite_bready => slr1_M01_AXI1_BREADY,
      s_axi_lite_bresp(1 downto 0) => slr1_M01_AXI1_BRESP(1 downto 0),
      s_axi_lite_bvalid => slr1_M01_AXI1_BVALID,
      s_axi_lite_rdata(31 downto 0) => slr1_M01_AXI1_RDATA(31 downto 0),
      s_axi_lite_rready => slr1_M01_AXI1_RREADY,
      s_axi_lite_rresp(1 downto 0) => slr1_M01_AXI1_RRESP(1 downto 0),
      s_axi_lite_rvalid => slr1_M01_AXI1_RVALID,
      s_axi_lite_wdata(31 downto 0) => slr1_M01_AXI1_WDATA(31 downto 0),
      s_axi_lite_wready => slr1_M01_AXI1_WREADY,
      s_axi_lite_wstrb(3 downto 0) => slr1_M01_AXI1_WSTRB(3 downto 0),
      s_axi_lite_wvalid => slr1_M01_AXI1_WVALID
    );
ii_level0_wire: component ulp_ii_level0_wire_0
     port map (
      BLP_S_AXI_CTRL_USER_00_araddr(24 downto 0) => BLP_S_AXI_CTRL_USER_00_araddr(24 downto 0),
      BLP_S_AXI_CTRL_USER_00_arprot(2 downto 0) => BLP_S_AXI_CTRL_USER_00_arprot(2 downto 0),
      BLP_S_AXI_CTRL_USER_00_arready => BLP_S_AXI_CTRL_USER_00_arready,
      BLP_S_AXI_CTRL_USER_00_arvalid => BLP_S_AXI_CTRL_USER_00_arvalid,
      BLP_S_AXI_CTRL_USER_00_awaddr(24 downto 0) => BLP_S_AXI_CTRL_USER_00_awaddr(24 downto 0),
      BLP_S_AXI_CTRL_USER_00_awprot(2 downto 0) => BLP_S_AXI_CTRL_USER_00_awprot(2 downto 0),
      BLP_S_AXI_CTRL_USER_00_awready => BLP_S_AXI_CTRL_USER_00_awready,
      BLP_S_AXI_CTRL_USER_00_awvalid => BLP_S_AXI_CTRL_USER_00_awvalid,
      BLP_S_AXI_CTRL_USER_00_bready => BLP_S_AXI_CTRL_USER_00_bready,
      BLP_S_AXI_CTRL_USER_00_bresp(1 downto 0) => BLP_S_AXI_CTRL_USER_00_bresp(1 downto 0),
      BLP_S_AXI_CTRL_USER_00_bvalid => BLP_S_AXI_CTRL_USER_00_bvalid,
      BLP_S_AXI_CTRL_USER_00_rdata(31 downto 0) => BLP_S_AXI_CTRL_USER_00_rdata(31 downto 0),
      BLP_S_AXI_CTRL_USER_00_rready => BLP_S_AXI_CTRL_USER_00_rready,
      BLP_S_AXI_CTRL_USER_00_rresp(1 downto 0) => BLP_S_AXI_CTRL_USER_00_rresp(1 downto 0),
      BLP_S_AXI_CTRL_USER_00_rvalid => BLP_S_AXI_CTRL_USER_00_rvalid,
      BLP_S_AXI_CTRL_USER_00_wdata(31 downto 0) => BLP_S_AXI_CTRL_USER_00_wdata(31 downto 0),
      BLP_S_AXI_CTRL_USER_00_wready => BLP_S_AXI_CTRL_USER_00_wready,
      BLP_S_AXI_CTRL_USER_00_wstrb(3 downto 0) => BLP_S_AXI_CTRL_USER_00_wstrb(3 downto 0),
      BLP_S_AXI_CTRL_USER_00_wvalid => BLP_S_AXI_CTRL_USER_00_wvalid,
      BLP_S_AXI_CTRL_USER_01_araddr(24 downto 0) => BLP_S_AXI_CTRL_USER_01_araddr(24 downto 0),
      BLP_S_AXI_CTRL_USER_01_arprot(2 downto 0) => BLP_S_AXI_CTRL_USER_01_arprot(2 downto 0),
      BLP_S_AXI_CTRL_USER_01_arready => BLP_S_AXI_CTRL_USER_01_arready,
      BLP_S_AXI_CTRL_USER_01_arvalid => BLP_S_AXI_CTRL_USER_01_arvalid,
      BLP_S_AXI_CTRL_USER_01_awaddr(24 downto 0) => BLP_S_AXI_CTRL_USER_01_awaddr(24 downto 0),
      BLP_S_AXI_CTRL_USER_01_awprot(2 downto 0) => BLP_S_AXI_CTRL_USER_01_awprot(2 downto 0),
      BLP_S_AXI_CTRL_USER_01_awready => BLP_S_AXI_CTRL_USER_01_awready,
      BLP_S_AXI_CTRL_USER_01_awvalid => BLP_S_AXI_CTRL_USER_01_awvalid,
      BLP_S_AXI_CTRL_USER_01_bready => BLP_S_AXI_CTRL_USER_01_bready,
      BLP_S_AXI_CTRL_USER_01_bresp(1 downto 0) => BLP_S_AXI_CTRL_USER_01_bresp(1 downto 0),
      BLP_S_AXI_CTRL_USER_01_bvalid => BLP_S_AXI_CTRL_USER_01_bvalid,
      BLP_S_AXI_CTRL_USER_01_rdata(31 downto 0) => BLP_S_AXI_CTRL_USER_01_rdata(31 downto 0),
      BLP_S_AXI_CTRL_USER_01_rready => BLP_S_AXI_CTRL_USER_01_rready,
      BLP_S_AXI_CTRL_USER_01_rresp(1 downto 0) => BLP_S_AXI_CTRL_USER_01_rresp(1 downto 0),
      BLP_S_AXI_CTRL_USER_01_rvalid => BLP_S_AXI_CTRL_USER_01_rvalid,
      BLP_S_AXI_CTRL_USER_01_wdata(31 downto 0) => BLP_S_AXI_CTRL_USER_01_wdata(31 downto 0),
      BLP_S_AXI_CTRL_USER_01_wready => BLP_S_AXI_CTRL_USER_01_wready,
      BLP_S_AXI_CTRL_USER_01_wstrb(3 downto 0) => BLP_S_AXI_CTRL_USER_01_wstrb(3 downto 0),
      BLP_S_AXI_CTRL_USER_01_wvalid => BLP_S_AXI_CTRL_USER_01_wvalid,
      BLP_S_AXI_CTRL_USER_02_araddr(24 downto 0) => BLP_S_AXI_CTRL_USER_02_araddr(24 downto 0),
      BLP_S_AXI_CTRL_USER_02_arprot(2 downto 0) => BLP_S_AXI_CTRL_USER_02_arprot(2 downto 0),
      BLP_S_AXI_CTRL_USER_02_arready => BLP_S_AXI_CTRL_USER_02_arready,
      BLP_S_AXI_CTRL_USER_02_arvalid => BLP_S_AXI_CTRL_USER_02_arvalid,
      BLP_S_AXI_CTRL_USER_02_awaddr(24 downto 0) => BLP_S_AXI_CTRL_USER_02_awaddr(24 downto 0),
      BLP_S_AXI_CTRL_USER_02_awprot(2 downto 0) => BLP_S_AXI_CTRL_USER_02_awprot(2 downto 0),
      BLP_S_AXI_CTRL_USER_02_awready => BLP_S_AXI_CTRL_USER_02_awready,
      BLP_S_AXI_CTRL_USER_02_awvalid => BLP_S_AXI_CTRL_USER_02_awvalid,
      BLP_S_AXI_CTRL_USER_02_bready => BLP_S_AXI_CTRL_USER_02_bready,
      BLP_S_AXI_CTRL_USER_02_bresp(1 downto 0) => BLP_S_AXI_CTRL_USER_02_bresp(1 downto 0),
      BLP_S_AXI_CTRL_USER_02_bvalid => BLP_S_AXI_CTRL_USER_02_bvalid,
      BLP_S_AXI_CTRL_USER_02_rdata(31 downto 0) => BLP_S_AXI_CTRL_USER_02_rdata(31 downto 0),
      BLP_S_AXI_CTRL_USER_02_rready => BLP_S_AXI_CTRL_USER_02_rready,
      BLP_S_AXI_CTRL_USER_02_rresp(1 downto 0) => BLP_S_AXI_CTRL_USER_02_rresp(1 downto 0),
      BLP_S_AXI_CTRL_USER_02_rvalid => BLP_S_AXI_CTRL_USER_02_rvalid,
      BLP_S_AXI_CTRL_USER_02_wdata(31 downto 0) => BLP_S_AXI_CTRL_USER_02_wdata(31 downto 0),
      BLP_S_AXI_CTRL_USER_02_wready => BLP_S_AXI_CTRL_USER_02_wready,
      BLP_S_AXI_CTRL_USER_02_wstrb(3 downto 0) => BLP_S_AXI_CTRL_USER_02_wstrb(3 downto 0),
      BLP_S_AXI_CTRL_USER_02_wvalid => BLP_S_AXI_CTRL_USER_02_wvalid,
      BLP_S_AXI_DATA_H2C_00_araddr(38 downto 0) => BLP_S_AXI_DATA_H2C_00_araddr(38 downto 0),
      BLP_S_AXI_DATA_H2C_00_arburst(1 downto 0) => BLP_S_AXI_DATA_H2C_00_arburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_arcache(3 downto 0) => BLP_S_AXI_DATA_H2C_00_arcache(3 downto 0),
      BLP_S_AXI_DATA_H2C_00_arid(3 downto 0) => BLP_S_AXI_DATA_H2C_00_arid(3 downto 0),
      BLP_S_AXI_DATA_H2C_00_arlen(7 downto 0) => BLP_S_AXI_DATA_H2C_00_arlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_00_arlock(0) => BLP_S_AXI_DATA_H2C_00_arlock(0),
      BLP_S_AXI_DATA_H2C_00_arprot(2 downto 0) => BLP_S_AXI_DATA_H2C_00_arprot(2 downto 0),
      BLP_S_AXI_DATA_H2C_00_arready => BLP_S_AXI_DATA_H2C_00_arready,
      BLP_S_AXI_DATA_H2C_00_arvalid => BLP_S_AXI_DATA_H2C_00_arvalid,
      BLP_S_AXI_DATA_H2C_00_awaddr(38 downto 0) => BLP_S_AXI_DATA_H2C_00_awaddr(38 downto 0),
      BLP_S_AXI_DATA_H2C_00_awburst(1 downto 0) => BLP_S_AXI_DATA_H2C_00_awburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_awcache(3 downto 0) => BLP_S_AXI_DATA_H2C_00_awcache(3 downto 0),
      BLP_S_AXI_DATA_H2C_00_awid(3 downto 0) => BLP_S_AXI_DATA_H2C_00_awid(3 downto 0),
      BLP_S_AXI_DATA_H2C_00_awlen(7 downto 0) => BLP_S_AXI_DATA_H2C_00_awlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_00_awlock(0) => BLP_S_AXI_DATA_H2C_00_awlock(0),
      BLP_S_AXI_DATA_H2C_00_awprot(2 downto 0) => BLP_S_AXI_DATA_H2C_00_awprot(2 downto 0),
      BLP_S_AXI_DATA_H2C_00_awready => BLP_S_AXI_DATA_H2C_00_awready,
      BLP_S_AXI_DATA_H2C_00_awvalid => BLP_S_AXI_DATA_H2C_00_awvalid,
      BLP_S_AXI_DATA_H2C_00_bid(3 downto 0) => BLP_S_AXI_DATA_H2C_00_bid(3 downto 0),
      BLP_S_AXI_DATA_H2C_00_bready => BLP_S_AXI_DATA_H2C_00_bready,
      BLP_S_AXI_DATA_H2C_00_bresp(1 downto 0) => BLP_S_AXI_DATA_H2C_00_bresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_bvalid => BLP_S_AXI_DATA_H2C_00_bvalid,
      BLP_S_AXI_DATA_H2C_00_rdata(511 downto 0) => BLP_S_AXI_DATA_H2C_00_rdata(511 downto 0),
      BLP_S_AXI_DATA_H2C_00_rid(3 downto 0) => BLP_S_AXI_DATA_H2C_00_rid(3 downto 0),
      BLP_S_AXI_DATA_H2C_00_rlast => BLP_S_AXI_DATA_H2C_00_rlast,
      BLP_S_AXI_DATA_H2C_00_rready => BLP_S_AXI_DATA_H2C_00_rready,
      BLP_S_AXI_DATA_H2C_00_rresp(1 downto 0) => BLP_S_AXI_DATA_H2C_00_rresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_00_rvalid => BLP_S_AXI_DATA_H2C_00_rvalid,
      BLP_S_AXI_DATA_H2C_00_wdata(511 downto 0) => BLP_S_AXI_DATA_H2C_00_wdata(511 downto 0),
      BLP_S_AXI_DATA_H2C_00_wlast => BLP_S_AXI_DATA_H2C_00_wlast,
      BLP_S_AXI_DATA_H2C_00_wready => BLP_S_AXI_DATA_H2C_00_wready,
      BLP_S_AXI_DATA_H2C_00_wstrb(63 downto 0) => BLP_S_AXI_DATA_H2C_00_wstrb(63 downto 0),
      BLP_S_AXI_DATA_H2C_00_wvalid => BLP_S_AXI_DATA_H2C_00_wvalid,
      BLP_S_AXI_DATA_H2C_01_araddr(39 downto 0) => BLP_S_AXI_DATA_H2C_01_araddr(39 downto 0),
      BLP_S_AXI_DATA_H2C_01_arburst(1 downto 0) => BLP_S_AXI_DATA_H2C_01_arburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_01_arcache(3 downto 0) => BLP_S_AXI_DATA_H2C_01_arcache(3 downto 0),
      BLP_S_AXI_DATA_H2C_01_arid(1 downto 0) => BLP_S_AXI_DATA_H2C_01_arid(1 downto 0),
      BLP_S_AXI_DATA_H2C_01_arlen(7 downto 0) => BLP_S_AXI_DATA_H2C_01_arlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_01_arlock(0) => BLP_S_AXI_DATA_H2C_01_arlock(0),
      BLP_S_AXI_DATA_H2C_01_arprot(2 downto 0) => BLP_S_AXI_DATA_H2C_01_arprot(2 downto 0),
      BLP_S_AXI_DATA_H2C_01_arready => BLP_S_AXI_DATA_H2C_01_arready,
      BLP_S_AXI_DATA_H2C_01_arvalid => BLP_S_AXI_DATA_H2C_01_arvalid,
      BLP_S_AXI_DATA_H2C_01_awaddr(39 downto 0) => BLP_S_AXI_DATA_H2C_01_awaddr(39 downto 0),
      BLP_S_AXI_DATA_H2C_01_awburst(1 downto 0) => BLP_S_AXI_DATA_H2C_01_awburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_01_awcache(3 downto 0) => BLP_S_AXI_DATA_H2C_01_awcache(3 downto 0),
      BLP_S_AXI_DATA_H2C_01_awid(1 downto 0) => BLP_S_AXI_DATA_H2C_01_awid(1 downto 0),
      BLP_S_AXI_DATA_H2C_01_awlen(7 downto 0) => BLP_S_AXI_DATA_H2C_01_awlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_01_awlock(0) => BLP_S_AXI_DATA_H2C_01_awlock(0),
      BLP_S_AXI_DATA_H2C_01_awprot(2 downto 0) => BLP_S_AXI_DATA_H2C_01_awprot(2 downto 0),
      BLP_S_AXI_DATA_H2C_01_awready => BLP_S_AXI_DATA_H2C_01_awready,
      BLP_S_AXI_DATA_H2C_01_awvalid => BLP_S_AXI_DATA_H2C_01_awvalid,
      BLP_S_AXI_DATA_H2C_01_bid(1 downto 0) => BLP_S_AXI_DATA_H2C_01_bid(1 downto 0),
      BLP_S_AXI_DATA_H2C_01_bready => BLP_S_AXI_DATA_H2C_01_bready,
      BLP_S_AXI_DATA_H2C_01_bresp(1 downto 0) => BLP_S_AXI_DATA_H2C_01_bresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_01_bvalid => BLP_S_AXI_DATA_H2C_01_bvalid,
      BLP_S_AXI_DATA_H2C_01_rdata(63 downto 0) => BLP_S_AXI_DATA_H2C_01_rdata(63 downto 0),
      BLP_S_AXI_DATA_H2C_01_rid(1 downto 0) => BLP_S_AXI_DATA_H2C_01_rid(1 downto 0),
      BLP_S_AXI_DATA_H2C_01_rlast => BLP_S_AXI_DATA_H2C_01_rlast,
      BLP_S_AXI_DATA_H2C_01_rready => BLP_S_AXI_DATA_H2C_01_rready,
      BLP_S_AXI_DATA_H2C_01_rresp(1 downto 0) => BLP_S_AXI_DATA_H2C_01_rresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_01_rvalid => BLP_S_AXI_DATA_H2C_01_rvalid,
      BLP_S_AXI_DATA_H2C_01_wdata(63 downto 0) => BLP_S_AXI_DATA_H2C_01_wdata(63 downto 0),
      BLP_S_AXI_DATA_H2C_01_wlast => BLP_S_AXI_DATA_H2C_01_wlast,
      BLP_S_AXI_DATA_H2C_01_wready => BLP_S_AXI_DATA_H2C_01_wready,
      BLP_S_AXI_DATA_H2C_01_wstrb(7 downto 0) => BLP_S_AXI_DATA_H2C_01_wstrb(7 downto 0),
      BLP_S_AXI_DATA_H2C_01_wvalid => BLP_S_AXI_DATA_H2C_01_wvalid,
      BLP_S_AXI_DATA_H2C_02_araddr(31 downto 0) => BLP_S_AXI_DATA_H2C_02_araddr(31 downto 0),
      BLP_S_AXI_DATA_H2C_02_arburst(1 downto 0) => BLP_S_AXI_DATA_H2C_02_arburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_02_arcache(3 downto 0) => BLP_S_AXI_DATA_H2C_02_arcache(3 downto 0),
      BLP_S_AXI_DATA_H2C_02_arlen(7 downto 0) => BLP_S_AXI_DATA_H2C_02_arlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_02_arlock(0) => BLP_S_AXI_DATA_H2C_02_arlock(0),
      BLP_S_AXI_DATA_H2C_02_arprot(2 downto 0) => BLP_S_AXI_DATA_H2C_02_arprot(2 downto 0),
      BLP_S_AXI_DATA_H2C_02_arready => BLP_S_AXI_DATA_H2C_02_arready,
      BLP_S_AXI_DATA_H2C_02_arvalid => BLP_S_AXI_DATA_H2C_02_arvalid,
      BLP_S_AXI_DATA_H2C_02_awaddr(31 downto 0) => BLP_S_AXI_DATA_H2C_02_awaddr(31 downto 0),
      BLP_S_AXI_DATA_H2C_02_awburst(1 downto 0) => BLP_S_AXI_DATA_H2C_02_awburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_02_awcache(3 downto 0) => BLP_S_AXI_DATA_H2C_02_awcache(3 downto 0),
      BLP_S_AXI_DATA_H2C_02_awlen(7 downto 0) => BLP_S_AXI_DATA_H2C_02_awlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_02_awlock(0) => BLP_S_AXI_DATA_H2C_02_awlock(0),
      BLP_S_AXI_DATA_H2C_02_awprot(2 downto 0) => BLP_S_AXI_DATA_H2C_02_awprot(2 downto 0),
      BLP_S_AXI_DATA_H2C_02_awready => BLP_S_AXI_DATA_H2C_02_awready,
      BLP_S_AXI_DATA_H2C_02_awvalid => BLP_S_AXI_DATA_H2C_02_awvalid,
      BLP_S_AXI_DATA_H2C_02_bready => BLP_S_AXI_DATA_H2C_02_bready,
      BLP_S_AXI_DATA_H2C_02_bresp(1 downto 0) => BLP_S_AXI_DATA_H2C_02_bresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_02_bvalid => BLP_S_AXI_DATA_H2C_02_bvalid,
      BLP_S_AXI_DATA_H2C_02_rdata(31 downto 0) => BLP_S_AXI_DATA_H2C_02_rdata(31 downto 0),
      BLP_S_AXI_DATA_H2C_02_rlast => BLP_S_AXI_DATA_H2C_02_rlast,
      BLP_S_AXI_DATA_H2C_02_rready => BLP_S_AXI_DATA_H2C_02_rready,
      BLP_S_AXI_DATA_H2C_02_rresp(1 downto 0) => BLP_S_AXI_DATA_H2C_02_rresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_02_rvalid => BLP_S_AXI_DATA_H2C_02_rvalid,
      BLP_S_AXI_DATA_H2C_02_wdata(31 downto 0) => BLP_S_AXI_DATA_H2C_02_wdata(31 downto 0),
      BLP_S_AXI_DATA_H2C_02_wlast => BLP_S_AXI_DATA_H2C_02_wlast,
      BLP_S_AXI_DATA_H2C_02_wready => BLP_S_AXI_DATA_H2C_02_wready,
      BLP_S_AXI_DATA_H2C_02_wstrb(3 downto 0) => BLP_S_AXI_DATA_H2C_02_wstrb(3 downto 0),
      BLP_S_AXI_DATA_H2C_02_wvalid => BLP_S_AXI_DATA_H2C_02_wvalid,
      BLP_S_AXI_DATA_H2C_03_araddr(38 downto 0) => BLP_S_AXI_DATA_H2C_03_araddr(38 downto 0),
      BLP_S_AXI_DATA_H2C_03_arburst(1 downto 0) => BLP_S_AXI_DATA_H2C_03_arburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_03_arcache(3 downto 0) => BLP_S_AXI_DATA_H2C_03_arcache(3 downto 0),
      BLP_S_AXI_DATA_H2C_03_arid(3 downto 0) => BLP_S_AXI_DATA_H2C_03_arid(3 downto 0),
      BLP_S_AXI_DATA_H2C_03_arlen(7 downto 0) => BLP_S_AXI_DATA_H2C_03_arlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_03_arlock(0) => BLP_S_AXI_DATA_H2C_03_arlock(0),
      BLP_S_AXI_DATA_H2C_03_arprot(2 downto 0) => BLP_S_AXI_DATA_H2C_03_arprot(2 downto 0),
      BLP_S_AXI_DATA_H2C_03_arready => BLP_S_AXI_DATA_H2C_03_arready,
      BLP_S_AXI_DATA_H2C_03_arvalid => BLP_S_AXI_DATA_H2C_03_arvalid,
      BLP_S_AXI_DATA_H2C_03_awaddr(38 downto 0) => BLP_S_AXI_DATA_H2C_03_awaddr(38 downto 0),
      BLP_S_AXI_DATA_H2C_03_awburst(1 downto 0) => BLP_S_AXI_DATA_H2C_03_awburst(1 downto 0),
      BLP_S_AXI_DATA_H2C_03_awcache(3 downto 0) => BLP_S_AXI_DATA_H2C_03_awcache(3 downto 0),
      BLP_S_AXI_DATA_H2C_03_awid(3 downto 0) => BLP_S_AXI_DATA_H2C_03_awid(3 downto 0),
      BLP_S_AXI_DATA_H2C_03_awlen(7 downto 0) => BLP_S_AXI_DATA_H2C_03_awlen(7 downto 0),
      BLP_S_AXI_DATA_H2C_03_awlock(0) => BLP_S_AXI_DATA_H2C_03_awlock(0),
      BLP_S_AXI_DATA_H2C_03_awprot(2 downto 0) => BLP_S_AXI_DATA_H2C_03_awprot(2 downto 0),
      BLP_S_AXI_DATA_H2C_03_awready => BLP_S_AXI_DATA_H2C_03_awready,
      BLP_S_AXI_DATA_H2C_03_awvalid => BLP_S_AXI_DATA_H2C_03_awvalid,
      BLP_S_AXI_DATA_H2C_03_bid(3 downto 0) => BLP_S_AXI_DATA_H2C_03_bid(3 downto 0),
      BLP_S_AXI_DATA_H2C_03_bready => BLP_S_AXI_DATA_H2C_03_bready,
      BLP_S_AXI_DATA_H2C_03_bresp(1 downto 0) => BLP_S_AXI_DATA_H2C_03_bresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_03_bvalid => BLP_S_AXI_DATA_H2C_03_bvalid,
      BLP_S_AXI_DATA_H2C_03_rdata(127 downto 0) => BLP_S_AXI_DATA_H2C_03_rdata(127 downto 0),
      BLP_S_AXI_DATA_H2C_03_rid(3 downto 0) => BLP_S_AXI_DATA_H2C_03_rid(3 downto 0),
      BLP_S_AXI_DATA_H2C_03_rlast => BLP_S_AXI_DATA_H2C_03_rlast,
      BLP_S_AXI_DATA_H2C_03_rready => BLP_S_AXI_DATA_H2C_03_rready,
      BLP_S_AXI_DATA_H2C_03_rresp(1 downto 0) => BLP_S_AXI_DATA_H2C_03_rresp(1 downto 0),
      BLP_S_AXI_DATA_H2C_03_rvalid => BLP_S_AXI_DATA_H2C_03_rvalid,
      BLP_S_AXI_DATA_H2C_03_wdata(127 downto 0) => BLP_S_AXI_DATA_H2C_03_wdata(127 downto 0),
      BLP_S_AXI_DATA_H2C_03_wlast => BLP_S_AXI_DATA_H2C_03_wlast,
      BLP_S_AXI_DATA_H2C_03_wready => BLP_S_AXI_DATA_H2C_03_wready,
      BLP_S_AXI_DATA_H2C_03_wstrb(15 downto 0) => BLP_S_AXI_DATA_H2C_03_wstrb(15 downto 0),
      BLP_S_AXI_DATA_H2C_03_wvalid => BLP_S_AXI_DATA_H2C_03_wvalid,
      ULP_M_AXI_CTRL_USER_00_araddr(24 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARADDR(24 downto 0),
      ULP_M_AXI_CTRL_USER_00_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARPROT(2 downto 0),
      ULP_M_AXI_CTRL_USER_00_arready => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARREADY,
      ULP_M_AXI_CTRL_USER_00_arvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARVALID,
      ULP_M_AXI_CTRL_USER_00_awaddr(24 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWADDR(24 downto 0),
      ULP_M_AXI_CTRL_USER_00_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWPROT(2 downto 0),
      ULP_M_AXI_CTRL_USER_00_awready => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWREADY,
      ULP_M_AXI_CTRL_USER_00_awvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWVALID,
      ULP_M_AXI_CTRL_USER_00_bready => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BREADY,
      ULP_M_AXI_CTRL_USER_00_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BRESP(1 downto 0),
      ULP_M_AXI_CTRL_USER_00_bvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BVALID,
      ULP_M_AXI_CTRL_USER_00_rdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RDATA(31 downto 0),
      ULP_M_AXI_CTRL_USER_00_rready => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RREADY,
      ULP_M_AXI_CTRL_USER_00_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RRESP(1 downto 0),
      ULP_M_AXI_CTRL_USER_00_rvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RVALID,
      ULP_M_AXI_CTRL_USER_00_wdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WDATA(31 downto 0),
      ULP_M_AXI_CTRL_USER_00_wready => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WREADY,
      ULP_M_AXI_CTRL_USER_00_wstrb(3 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WSTRB(3 downto 0),
      ULP_M_AXI_CTRL_USER_00_wvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WVALID,
      ULP_M_AXI_CTRL_USER_01_araddr(24 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARADDR(24 downto 0),
      ULP_M_AXI_CTRL_USER_01_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARPROT(2 downto 0),
      ULP_M_AXI_CTRL_USER_01_arready => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARREADY,
      ULP_M_AXI_CTRL_USER_01_arvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARVALID,
      ULP_M_AXI_CTRL_USER_01_awaddr(24 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWADDR(24 downto 0),
      ULP_M_AXI_CTRL_USER_01_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWPROT(2 downto 0),
      ULP_M_AXI_CTRL_USER_01_awready => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWREADY,
      ULP_M_AXI_CTRL_USER_01_awvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWVALID,
      ULP_M_AXI_CTRL_USER_01_bready => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BREADY,
      ULP_M_AXI_CTRL_USER_01_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BRESP(1 downto 0),
      ULP_M_AXI_CTRL_USER_01_bvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BVALID,
      ULP_M_AXI_CTRL_USER_01_rdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RDATA(31 downto 0),
      ULP_M_AXI_CTRL_USER_01_rready => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RREADY,
      ULP_M_AXI_CTRL_USER_01_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RRESP(1 downto 0),
      ULP_M_AXI_CTRL_USER_01_rvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RVALID,
      ULP_M_AXI_CTRL_USER_01_wdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WDATA(31 downto 0),
      ULP_M_AXI_CTRL_USER_01_wready => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WREADY,
      ULP_M_AXI_CTRL_USER_01_wstrb(3 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WSTRB(3 downto 0),
      ULP_M_AXI_CTRL_USER_01_wvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WVALID,
      ULP_M_AXI_CTRL_USER_02_araddr(24 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARADDR(24 downto 0),
      ULP_M_AXI_CTRL_USER_02_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARPROT(2 downto 0),
      ULP_M_AXI_CTRL_USER_02_arready => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARREADY,
      ULP_M_AXI_CTRL_USER_02_arvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARVALID,
      ULP_M_AXI_CTRL_USER_02_awaddr(24 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWADDR(24 downto 0),
      ULP_M_AXI_CTRL_USER_02_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWPROT(2 downto 0),
      ULP_M_AXI_CTRL_USER_02_awready => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWREADY,
      ULP_M_AXI_CTRL_USER_02_awvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWVALID,
      ULP_M_AXI_CTRL_USER_02_bready => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BREADY,
      ULP_M_AXI_CTRL_USER_02_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BRESP(1 downto 0),
      ULP_M_AXI_CTRL_USER_02_bvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BVALID,
      ULP_M_AXI_CTRL_USER_02_rdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RDATA(31 downto 0),
      ULP_M_AXI_CTRL_USER_02_rready => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RREADY,
      ULP_M_AXI_CTRL_USER_02_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RRESP(1 downto 0),
      ULP_M_AXI_CTRL_USER_02_rvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RVALID,
      ULP_M_AXI_CTRL_USER_02_wdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WDATA(31 downto 0),
      ULP_M_AXI_CTRL_USER_02_wready => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WREADY,
      ULP_M_AXI_CTRL_USER_02_wstrb(3 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WSTRB(3 downto 0),
      ULP_M_AXI_CTRL_USER_02_wvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WVALID,
      ULP_M_AXI_DATA_H2C_00_araddr(38 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARADDR(38 downto 0),
      ULP_M_AXI_DATA_H2C_00_arburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARBURST(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_arcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARCACHE(3 downto 0),
      ULP_M_AXI_DATA_H2C_00_arid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARID(3 downto 0),
      ULP_M_AXI_DATA_H2C_00_arlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLEN(7 downto 0),
      ULP_M_AXI_DATA_H2C_00_arlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLOCK,
      ULP_M_AXI_DATA_H2C_00_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARPROT(2 downto 0),
      ULP_M_AXI_DATA_H2C_00_arready => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARREADY,
      ULP_M_AXI_DATA_H2C_00_arvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARVALID,
      ULP_M_AXI_DATA_H2C_00_awaddr(38 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWADDR(38 downto 0),
      ULP_M_AXI_DATA_H2C_00_awburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWBURST(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_awcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWCACHE(3 downto 0),
      ULP_M_AXI_DATA_H2C_00_awid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWID(3 downto 0),
      ULP_M_AXI_DATA_H2C_00_awlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLEN(7 downto 0),
      ULP_M_AXI_DATA_H2C_00_awlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLOCK,
      ULP_M_AXI_DATA_H2C_00_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWPROT(2 downto 0),
      ULP_M_AXI_DATA_H2C_00_awready => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWREADY,
      ULP_M_AXI_DATA_H2C_00_awvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWVALID,
      ULP_M_AXI_DATA_H2C_00_bid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BID(3 downto 0),
      ULP_M_AXI_DATA_H2C_00_bready => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BREADY,
      ULP_M_AXI_DATA_H2C_00_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BRESP(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_bvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BVALID,
      ULP_M_AXI_DATA_H2C_00_rdata(511 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RDATA(511 downto 0),
      ULP_M_AXI_DATA_H2C_00_rid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RID(3 downto 0),
      ULP_M_AXI_DATA_H2C_00_rlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RLAST,
      ULP_M_AXI_DATA_H2C_00_rready => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RREADY,
      ULP_M_AXI_DATA_H2C_00_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RRESP(1 downto 0),
      ULP_M_AXI_DATA_H2C_00_rvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RVALID,
      ULP_M_AXI_DATA_H2C_00_wdata(511 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WDATA(511 downto 0),
      ULP_M_AXI_DATA_H2C_00_wlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WLAST,
      ULP_M_AXI_DATA_H2C_00_wready => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WREADY,
      ULP_M_AXI_DATA_H2C_00_wstrb(63 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WSTRB(63 downto 0),
      ULP_M_AXI_DATA_H2C_00_wvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WVALID,
      ULP_M_AXI_DATA_H2C_01_araddr(39 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARADDR(39 downto 0),
      ULP_M_AXI_DATA_H2C_01_arburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARBURST(1 downto 0),
      ULP_M_AXI_DATA_H2C_01_arcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARCACHE(3 downto 0),
      ULP_M_AXI_DATA_H2C_01_arid(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARID(1 downto 0),
      ULP_M_AXI_DATA_H2C_01_arlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLEN(7 downto 0),
      ULP_M_AXI_DATA_H2C_01_arlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLOCK,
      ULP_M_AXI_DATA_H2C_01_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARPROT(2 downto 0),
      ULP_M_AXI_DATA_H2C_01_arready => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARREADY,
      ULP_M_AXI_DATA_H2C_01_arvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARVALID,
      ULP_M_AXI_DATA_H2C_01_awaddr(39 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWADDR(39 downto 0),
      ULP_M_AXI_DATA_H2C_01_awburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWBURST(1 downto 0),
      ULP_M_AXI_DATA_H2C_01_awcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWCACHE(3 downto 0),
      ULP_M_AXI_DATA_H2C_01_awid(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWID(1 downto 0),
      ULP_M_AXI_DATA_H2C_01_awlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLEN(7 downto 0),
      ULP_M_AXI_DATA_H2C_01_awlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLOCK,
      ULP_M_AXI_DATA_H2C_01_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWPROT(2 downto 0),
      ULP_M_AXI_DATA_H2C_01_awready => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWREADY,
      ULP_M_AXI_DATA_H2C_01_awvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWVALID,
      ULP_M_AXI_DATA_H2C_01_bid(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BID(1 downto 0),
      ULP_M_AXI_DATA_H2C_01_bready => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BREADY,
      ULP_M_AXI_DATA_H2C_01_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BRESP(1 downto 0),
      ULP_M_AXI_DATA_H2C_01_bvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BVALID,
      ULP_M_AXI_DATA_H2C_01_rdata(63 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RDATA(63 downto 0),
      ULP_M_AXI_DATA_H2C_01_rid(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RID(1 downto 0),
      ULP_M_AXI_DATA_H2C_01_rlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RLAST,
      ULP_M_AXI_DATA_H2C_01_rready => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RREADY,
      ULP_M_AXI_DATA_H2C_01_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RRESP(1 downto 0),
      ULP_M_AXI_DATA_H2C_01_rvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RVALID,
      ULP_M_AXI_DATA_H2C_01_wdata(63 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WDATA(63 downto 0),
      ULP_M_AXI_DATA_H2C_01_wlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WLAST,
      ULP_M_AXI_DATA_H2C_01_wready => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WREADY,
      ULP_M_AXI_DATA_H2C_01_wstrb(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WSTRB(7 downto 0),
      ULP_M_AXI_DATA_H2C_01_wvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WVALID,
      ULP_M_AXI_DATA_H2C_02_araddr(31 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARADDR(31 downto 0),
      ULP_M_AXI_DATA_H2C_02_arburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARBURST(1 downto 0),
      ULP_M_AXI_DATA_H2C_02_arcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARCACHE(3 downto 0),
      ULP_M_AXI_DATA_H2C_02_arlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLEN(7 downto 0),
      ULP_M_AXI_DATA_H2C_02_arlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARLOCK,
      ULP_M_AXI_DATA_H2C_02_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARPROT(2 downto 0),
      ULP_M_AXI_DATA_H2C_02_arready => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARREADY,
      ULP_M_AXI_DATA_H2C_02_arvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_ARVALID,
      ULP_M_AXI_DATA_H2C_02_awaddr(31 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWADDR(31 downto 0),
      ULP_M_AXI_DATA_H2C_02_awburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWBURST(1 downto 0),
      ULP_M_AXI_DATA_H2C_02_awcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWCACHE(3 downto 0),
      ULP_M_AXI_DATA_H2C_02_awlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLEN(7 downto 0),
      ULP_M_AXI_DATA_H2C_02_awlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWLOCK,
      ULP_M_AXI_DATA_H2C_02_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWPROT(2 downto 0),
      ULP_M_AXI_DATA_H2C_02_awready => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWREADY,
      ULP_M_AXI_DATA_H2C_02_awvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_AWVALID,
      ULP_M_AXI_DATA_H2C_02_bready => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BREADY,
      ULP_M_AXI_DATA_H2C_02_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BRESP(1 downto 0),
      ULP_M_AXI_DATA_H2C_02_bvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_BVALID,
      ULP_M_AXI_DATA_H2C_02_rdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RDATA(31 downto 0),
      ULP_M_AXI_DATA_H2C_02_rlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RLAST,
      ULP_M_AXI_DATA_H2C_02_rready => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RREADY,
      ULP_M_AXI_DATA_H2C_02_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RRESP(1 downto 0),
      ULP_M_AXI_DATA_H2C_02_rvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_RVALID,
      ULP_M_AXI_DATA_H2C_02_wdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WDATA(31 downto 0),
      ULP_M_AXI_DATA_H2C_02_wlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WLAST,
      ULP_M_AXI_DATA_H2C_02_wready => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WREADY,
      ULP_M_AXI_DATA_H2C_02_wstrb(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WSTRB(3 downto 0),
      ULP_M_AXI_DATA_H2C_02_wvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_02_WVALID,
      ULP_M_AXI_DATA_H2C_03_araddr(38 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARADDR(38 downto 0),
      ULP_M_AXI_DATA_H2C_03_arburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARBURST(1 downto 0),
      ULP_M_AXI_DATA_H2C_03_arcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARCACHE(3 downto 0),
      ULP_M_AXI_DATA_H2C_03_arid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARID(3 downto 0),
      ULP_M_AXI_DATA_H2C_03_arlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLEN(7 downto 0),
      ULP_M_AXI_DATA_H2C_03_arlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLOCK,
      ULP_M_AXI_DATA_H2C_03_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARPROT(2 downto 0),
      ULP_M_AXI_DATA_H2C_03_arready => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARREADY,
      ULP_M_AXI_DATA_H2C_03_arvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARVALID,
      ULP_M_AXI_DATA_H2C_03_awaddr(38 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWADDR(38 downto 0),
      ULP_M_AXI_DATA_H2C_03_awburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWBURST(1 downto 0),
      ULP_M_AXI_DATA_H2C_03_awcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWCACHE(3 downto 0),
      ULP_M_AXI_DATA_H2C_03_awid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWID(3 downto 0),
      ULP_M_AXI_DATA_H2C_03_awlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLEN(7 downto 0),
      ULP_M_AXI_DATA_H2C_03_awlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLOCK,
      ULP_M_AXI_DATA_H2C_03_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWPROT(2 downto 0),
      ULP_M_AXI_DATA_H2C_03_awready => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWREADY,
      ULP_M_AXI_DATA_H2C_03_awvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWVALID,
      ULP_M_AXI_DATA_H2C_03_bid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BID(3 downto 0),
      ULP_M_AXI_DATA_H2C_03_bready => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BREADY,
      ULP_M_AXI_DATA_H2C_03_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BRESP(1 downto 0),
      ULP_M_AXI_DATA_H2C_03_bvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BVALID,
      ULP_M_AXI_DATA_H2C_03_rdata(127 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RDATA(127 downto 0),
      ULP_M_AXI_DATA_H2C_03_rid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RID(3 downto 0),
      ULP_M_AXI_DATA_H2C_03_rlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RLAST,
      ULP_M_AXI_DATA_H2C_03_rready => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RREADY,
      ULP_M_AXI_DATA_H2C_03_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RRESP(1 downto 0),
      ULP_M_AXI_DATA_H2C_03_rvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RVALID,
      ULP_M_AXI_DATA_H2C_03_wdata(127 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WDATA(127 downto 0),
      ULP_M_AXI_DATA_H2C_03_wlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WLAST,
      ULP_M_AXI_DATA_H2C_03_wready => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WREADY,
      ULP_M_AXI_DATA_H2C_03_wstrb(15 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WSTRB(15 downto 0),
      ULP_M_AXI_DATA_H2C_03_wvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WVALID,
      blp_m_data_dna_from_ulp_00(2 downto 0) => blp_m_data_dna_from_ulp_00(2 downto 0),
      blp_m_data_memory_calib_complete_00(0) => blp_m_data_memory_calib_complete_00(0),
      blp_m_irq_cu_00(127 downto 0) => blp_m_irq_cu_00(127 downto 0),
      blp_s_aclk_ctrl_00 => blp_s_aclk_ctrl_00,
      blp_s_aclk_kernel2_ref_clk_00 => blp_s_aclk_kernel2_ref_clk_00,
      blp_s_aclk_kernel_ref_clk_00 => blp_s_aclk_kernel_ref_clk_00,
      blp_s_aclk_pcie_00 => blp_s_aclk_pcie_00,
      blp_s_aresetn_ctrl_00(0) => blp_s_aresetn_ctrl_00(0),
      blp_s_aresetn_kernel_ref_clk_00(0) => blp_s_aresetn_kernel_ref_clk_00(0),
      blp_s_aresetn_pcie_00(0) => blp_s_aresetn_pcie_00(0),
      blp_s_data_clkwiz_kernel_clk_out1_locked_00(0) => blp_s_data_clkwiz_kernel_clk_out1_locked_00(0),
      blp_s_data_dout_dna_00(0) => blp_s_data_dout_dna_00(0),
      blp_s_data_perstn_out_00(2 downto 0) => blp_s_data_perstn_out_00(2 downto 0),
      blp_s_data_slice_pr_reset_to_ulp_00(1 downto 0) => blp_s_data_slice_pr_reset_to_ulp_00(1 downto 0),
      ulp_m_aclk_ctrl_00 => clkwiz_sysclks_clk_out2_1,
      ulp_m_aclk_kernel2_ref_clk_00 => ii_level0_wire_ulp_m_aclk_kernel2_ref_clk_00,
      ulp_m_aclk_kernel_ref_clk_00 => clkwiz_kernel_clk_out1_1,
      ulp_m_aclk_pcie_00 => ii_level0_wire_ulp_m_aclk_pcie_00,
      ulp_m_aresetn_ctrl_00(0) => ii_level0_wire_ulp_m_aresetn_ctrl_00,
      ulp_m_aresetn_kernel_ref_clk_00(0) => NLW_ii_level0_wire_ulp_m_aresetn_kernel_ref_clk_00_UNCONNECTED(0),
      ulp_m_aresetn_pcie_00(0) => NLW_ii_level0_wire_ulp_m_aresetn_pcie_00_UNCONNECTED(0),
      ulp_m_data_clkwiz_kernel_clk_out1_locked_00(0) => ii_level0_wire_ulp_m_data_clkwiz_kernel_clk_out1_locked_00,
      ulp_m_data_dout_dna_00(0) => NLW_ii_level0_wire_ulp_m_data_dout_dna_00_UNCONNECTED(0),
      ulp_m_data_perstn_out_00(2 downto 0) => ii_level0_wire_ulp_m_data_perstn_out_00(2 downto 0),
      ulp_m_data_slice_pr_reset_to_ulp_00(1 downto 0) => ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00(1 downto 0),
      ulp_s_data_dna_from_ulp_00(2 downto 0) => B"000",
      ulp_s_data_memory_calib_complete_00(0) => aux_reset_in_1,
      ulp_s_irq_cu_00(127 downto 2) => B"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      ulp_s_irq_cu_00(1) => ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout(1),
      ulp_s_irq_cu_00(0) => '0'
    );
ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat: entity work.ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0
     port map (
      In0(31 downto 2) => B"000000000000000000000000000000",
      In0(1) => ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout(1),
      In0(0) => '0',
      In1(31 downto 0) => B"00000000000000000000000000000000",
      In2(31 downto 0) => B"00000000000000000000000000000000",
      In3(31 downto 0) => B"00000000000000000000000000000000",
      dout(127 downto 2) => NLW_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout_UNCONNECTED(127 downto 2),
      dout(1) => ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout(1),
      dout(0) => NLW_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_dout_UNCONNECTED(0)
    );
ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0: entity work.ulp_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_0
     port map (
      In0(0) => '0',
      In1(0) => krnl_ro_rtl_1_interrupt,
      In10(0) => '0',
      In11(0) => '0',
      In12(0) => '0',
      In13(0) => '0',
      In14(0) => '0',
      In15(0) => '0',
      In16(0) => '0',
      In17(0) => '0',
      In18(0) => '0',
      In19(0) => '0',
      In2(0) => '0',
      In20(0) => '0',
      In21(0) => '0',
      In22(0) => '0',
      In23(0) => '0',
      In24(0) => '0',
      In25(0) => '0',
      In26(0) => '0',
      In27(0) => '0',
      In28(0) => '0',
      In29(0) => '0',
      In3(0) => '0',
      In30(0) => '0',
      In31(0) => '0',
      In4(0) => '0',
      In5(0) => '0',
      In6(0) => '0',
      In7(0) => '0',
      In8(0) => '0',
      In9(0) => '0',
      dout(31 downto 2) => NLW_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout_UNCONNECTED(31 downto 2),
      dout(1) => ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout(1),
      dout(0) => NLW_ii_level0_wire_ulp_s_irq_cu_00_1_interrupt_concat_0_dout_UNCONNECTED(0)
    );
krnl_ro_rtl_1: component ulp_krnl_ro_rtl_1_0
     port map (
      ap_clk => blp_s_aclk_kernel_ref_clk_00,
      ap_rst_n => slr1_peripheral_aresetn,
      interrupt => krnl_ro_rtl_1_interrupt,
      m_axi_gmem_ARADDR(63 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARADDR(63 downto 0),
      m_axi_gmem_ARBURST(1 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARBURST(1 downto 0),
      m_axi_gmem_ARCACHE(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARCACHE(3 downto 0),
      m_axi_gmem_ARID(0) => krnl_ro_rtl_1_m_axi_gmem_ARID,
      m_axi_gmem_ARLEN(7 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARLEN(7 downto 0),
      m_axi_gmem_ARLOCK(1 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARLOCK(1 downto 0),
      m_axi_gmem_ARPROT(2 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARPROT(2 downto 0),
      m_axi_gmem_ARQOS(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARQOS(3 downto 0),
      m_axi_gmem_ARREADY => krnl_ro_rtl_1_m_axi_gmem_ARREADY,
      m_axi_gmem_ARREGION(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARREGION(3 downto 0),
      m_axi_gmem_ARSIZE(2 downto 0) => krnl_ro_rtl_1_m_axi_gmem_ARSIZE(2 downto 0),
      m_axi_gmem_ARVALID => krnl_ro_rtl_1_m_axi_gmem_ARVALID,
      m_axi_gmem_AWADDR(63 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWADDR(63 downto 0),
      m_axi_gmem_AWBURST(1 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWBURST(1 downto 0),
      m_axi_gmem_AWCACHE(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWCACHE(3 downto 0),
      m_axi_gmem_AWID(0) => krnl_ro_rtl_1_m_axi_gmem_AWID,
      m_axi_gmem_AWLEN(7 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWLEN(7 downto 0),
      m_axi_gmem_AWLOCK(1 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWLOCK(1 downto 0),
      m_axi_gmem_AWPROT(2 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWPROT(2 downto 0),
      m_axi_gmem_AWQOS(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWQOS(3 downto 0),
      m_axi_gmem_AWREADY => krnl_ro_rtl_1_m_axi_gmem_AWREADY,
      m_axi_gmem_AWREGION(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWREGION(3 downto 0),
      m_axi_gmem_AWSIZE(2 downto 0) => krnl_ro_rtl_1_m_axi_gmem_AWSIZE(2 downto 0),
      m_axi_gmem_AWVALID => krnl_ro_rtl_1_m_axi_gmem_AWVALID,
      m_axi_gmem_BID(0) => krnl_ro_rtl_1_m_axi_gmem_BID,
      m_axi_gmem_BREADY => krnl_ro_rtl_1_m_axi_gmem_BREADY,
      m_axi_gmem_BRESP(1 downto 0) => krnl_ro_rtl_1_m_axi_gmem_BRESP(1 downto 0),
      m_axi_gmem_BVALID => krnl_ro_rtl_1_m_axi_gmem_BVALID,
      m_axi_gmem_RDATA(31 downto 0) => krnl_ro_rtl_1_m_axi_gmem_RDATA(31 downto 0),
      m_axi_gmem_RID(0) => krnl_ro_rtl_1_m_axi_gmem_RID,
      m_axi_gmem_RLAST => krnl_ro_rtl_1_m_axi_gmem_RLAST,
      m_axi_gmem_RREADY => krnl_ro_rtl_1_m_axi_gmem_RREADY,
      m_axi_gmem_RRESP(1 downto 0) => krnl_ro_rtl_1_m_axi_gmem_RRESP(1 downto 0),
      m_axi_gmem_RVALID => krnl_ro_rtl_1_m_axi_gmem_RVALID,
      m_axi_gmem_WDATA(31 downto 0) => krnl_ro_rtl_1_m_axi_gmem_WDATA(31 downto 0),
      m_axi_gmem_WLAST => krnl_ro_rtl_1_m_axi_gmem_WLAST,
      m_axi_gmem_WREADY => krnl_ro_rtl_1_m_axi_gmem_WREADY,
      m_axi_gmem_WSTRB(3 downto 0) => krnl_ro_rtl_1_m_axi_gmem_WSTRB(3 downto 0),
      m_axi_gmem_WVALID => krnl_ro_rtl_1_m_axi_gmem_WVALID,
      s_axi_control_ARADDR(6 downto 0) => slr1_M01_AXI_ARADDR(6 downto 0),
      s_axi_control_ARREADY => slr1_M01_AXI_ARREADY,
      s_axi_control_ARVALID => slr1_M01_AXI_ARVALID,
      s_axi_control_AWADDR(6 downto 0) => slr1_M01_AXI_AWADDR(6 downto 0),
      s_axi_control_AWREADY => slr1_M01_AXI_AWREADY,
      s_axi_control_AWVALID => slr1_M01_AXI_AWVALID,
      s_axi_control_BREADY => slr1_M01_AXI_BREADY,
      s_axi_control_BRESP(1 downto 0) => slr1_M01_AXI_BRESP(1 downto 0),
      s_axi_control_BVALID => slr1_M01_AXI_BVALID,
      s_axi_control_RDATA(31 downto 0) => slr1_M01_AXI_RDATA(31 downto 0),
      s_axi_control_RREADY => slr1_M01_AXI_RREADY,
      s_axi_control_RRESP(1 downto 0) => slr1_M01_AXI_RRESP(1 downto 0),
      s_axi_control_RVALID => slr1_M01_AXI_RVALID,
      s_axi_control_WDATA(31 downto 0) => slr1_M01_AXI_WDATA(31 downto 0),
      s_axi_control_WREADY => slr1_M01_AXI_WREADY,
      s_axi_control_WSTRB(3 downto 0) => slr1_M01_AXI_WSTRB(3 downto 0),
      s_axi_control_WVALID => slr1_M01_AXI_WVALID
    );
psreset_ddrmem_n_1: component ulp_psreset_ddrmem_n_1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_psreset_ddrmem_n_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => ddrmem_1_c0_ddr4_ui_clk_sync_rst,
      interconnect_aresetn(0) => psreset_ddrmem_n_1_interconnect_aresetn,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_psreset_ddrmem_n_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_psreset_ddrmem_n_1_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_psreset_ddrmem_n_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => M00_ACLK_1
    );
regslice_periph_null: component ulp_regslice_periph_null_0
     port map (
      aclk => ii_level0_wire_ulp_m_aclk_pcie_00,
      aresetn => slr1_psreset_gate_pr_data_interconnect_aresetn,
      m_axi_araddr(39 downto 0) => NLW_regslice_periph_null_m_axi_araddr_UNCONNECTED(39 downto 0),
      m_axi_arburst(1 downto 0) => NLW_regslice_periph_null_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_regslice_periph_null_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(1 downto 0) => NLW_regslice_periph_null_m_axi_arid_UNCONNECTED(1 downto 0),
      m_axi_arlen(7 downto 0) => NLW_regslice_periph_null_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_regslice_periph_null_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_regslice_periph_null_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_regslice_periph_null_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_regslice_periph_null_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_regslice_periph_null_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_arvalid => NLW_regslice_periph_null_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(39 downto 0) => NLW_regslice_periph_null_m_axi_awaddr_UNCONNECTED(39 downto 0),
      m_axi_awburst(1 downto 0) => NLW_regslice_periph_null_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_regslice_periph_null_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(1 downto 0) => NLW_regslice_periph_null_m_axi_awid_UNCONNECTED(1 downto 0),
      m_axi_awlen(7 downto 0) => NLW_regslice_periph_null_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_regslice_periph_null_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_regslice_periph_null_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_regslice_periph_null_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_regslice_periph_null_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_regslice_periph_null_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awvalid => NLW_regslice_periph_null_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(1 downto 0) => B"00",
      m_axi_bready => NLW_regslice_periph_null_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(1 downto 0) => B"00",
      m_axi_rlast => '0',
      m_axi_rready => NLW_regslice_periph_null_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_regslice_periph_null_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wlast => NLW_regslice_periph_null_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_regslice_periph_null_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wvalid => NLW_regslice_periph_null_m_axi_wvalid_UNCONNECTED,
      s_axi_araddr(39 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLEN(7 downto 0),
      s_axi_arlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARLOCK,
      s_axi_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"011",
      s_axi_arvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_ARVALID,
      s_axi_awaddr(39 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLEN(7 downto 0),
      s_axi_awlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWLOCK,
      s_axi_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"011",
      s_axi_awvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_AWVALID,
      s_axi_bid(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BID(1 downto 0),
      s_axi_bready => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BREADY,
      s_axi_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BRESP(1 downto 0),
      s_axi_bvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_BVALID,
      s_axi_rdata(63 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RDATA(63 downto 0),
      s_axi_rid(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RID(1 downto 0),
      s_axi_rlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RLAST,
      s_axi_rready => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RREADY,
      s_axi_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RRESP(1 downto 0),
      s_axi_rvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_RVALID,
      s_axi_wdata(63 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WDATA(63 downto 0),
      s_axi_wlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WLAST,
      s_axi_wready => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WREADY,
      s_axi_wstrb(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WSTRB(7 downto 0),
      s_axi_wvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_01_WVALID
    );
slr1: entity work.ulp_slr1_imp_1S5AAMB
     port map (
      Dout(0) => xlslice_0_Dout,
      M00_ARESETN => psreset_ddrmem_n_1_interconnect_aresetn,
      M01_AXI1_araddr(11 downto 0) => slr1_M01_AXI1_ARADDR(11 downto 0),
      M01_AXI1_arready(0) => slr1_M01_AXI1_ARREADY,
      M01_AXI1_arvalid(0) => slr1_M01_AXI1_ARVALID,
      M01_AXI1_awaddr(11 downto 0) => slr1_M01_AXI1_AWADDR(11 downto 0),
      M01_AXI1_awready(0) => slr1_M01_AXI1_AWREADY,
      M01_AXI1_awvalid(0) => slr1_M01_AXI1_AWVALID,
      M01_AXI1_bready(0) => slr1_M01_AXI1_BREADY,
      M01_AXI1_bresp(1 downto 0) => slr1_M01_AXI1_BRESP(1 downto 0),
      M01_AXI1_bvalid(0) => slr1_M01_AXI1_BVALID,
      M01_AXI1_rdata(31 downto 0) => slr1_M01_AXI1_RDATA(31 downto 0),
      M01_AXI1_rready(0) => slr1_M01_AXI1_RREADY,
      M01_AXI1_rresp(1 downto 0) => slr1_M01_AXI1_RRESP(1 downto 0),
      M01_AXI1_rvalid(0) => slr1_M01_AXI1_RVALID,
      M01_AXI1_wdata(31 downto 0) => slr1_M01_AXI1_WDATA(31 downto 0),
      M01_AXI1_wready(0) => slr1_M01_AXI1_WREADY,
      M01_AXI1_wstrb(3 downto 0) => slr1_M01_AXI1_WSTRB(3 downto 0),
      M01_AXI1_wvalid(0) => slr1_M01_AXI1_WVALID,
      M01_AXI_araddr(6 downto 0) => slr1_M01_AXI_ARADDR(6 downto 0),
      M01_AXI_arready => slr1_M01_AXI_ARREADY,
      M01_AXI_arvalid => slr1_M01_AXI_ARVALID,
      M01_AXI_awaddr(6 downto 0) => slr1_M01_AXI_AWADDR(6 downto 0),
      M01_AXI_awready => slr1_M01_AXI_AWREADY,
      M01_AXI_awvalid => slr1_M01_AXI_AWVALID,
      M01_AXI_bready => slr1_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => slr1_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => slr1_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => slr1_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => slr1_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => slr1_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => slr1_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => slr1_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => slr1_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => slr1_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => slr1_M01_AXI_WVALID,
      aux_reset_in => aux_reset_in_1,
      axi_cdc_data_static_M_AXI1_araddr(38 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARADDR(38 downto 0),
      axi_cdc_data_static_M_AXI1_arburst(1 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARBURST(1 downto 0),
      axi_cdc_data_static_M_AXI1_arcache(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARCACHE(3 downto 0),
      axi_cdc_data_static_M_AXI1_arid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARID(3 downto 0),
      axi_cdc_data_static_M_AXI1_arlen(7 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARLEN(7 downto 0),
      axi_cdc_data_static_M_AXI1_arlock(0) => slr1_axi_cdc_data_static_M_AXI1_ARLOCK,
      axi_cdc_data_static_M_AXI1_arprot(2 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARPROT(2 downto 0),
      axi_cdc_data_static_M_AXI1_arqos(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARQOS(3 downto 0),
      axi_cdc_data_static_M_AXI1_arready => slr1_axi_cdc_data_static_M_AXI1_ARREADY,
      axi_cdc_data_static_M_AXI1_arsize(2 downto 0) => slr1_axi_cdc_data_static_M_AXI1_ARSIZE(2 downto 0),
      axi_cdc_data_static_M_AXI1_arvalid => slr1_axi_cdc_data_static_M_AXI1_ARVALID,
      axi_cdc_data_static_M_AXI1_awaddr(38 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWADDR(38 downto 0),
      axi_cdc_data_static_M_AXI1_awburst(1 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWBURST(1 downto 0),
      axi_cdc_data_static_M_AXI1_awcache(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWCACHE(3 downto 0),
      axi_cdc_data_static_M_AXI1_awid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWID(3 downto 0),
      axi_cdc_data_static_M_AXI1_awlen(7 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWLEN(7 downto 0),
      axi_cdc_data_static_M_AXI1_awlock(0) => slr1_axi_cdc_data_static_M_AXI1_AWLOCK,
      axi_cdc_data_static_M_AXI1_awprot(2 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWPROT(2 downto 0),
      axi_cdc_data_static_M_AXI1_awqos(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWQOS(3 downto 0),
      axi_cdc_data_static_M_AXI1_awready => slr1_axi_cdc_data_static_M_AXI1_AWREADY,
      axi_cdc_data_static_M_AXI1_awsize(2 downto 0) => slr1_axi_cdc_data_static_M_AXI1_AWSIZE(2 downto 0),
      axi_cdc_data_static_M_AXI1_awvalid => slr1_axi_cdc_data_static_M_AXI1_AWVALID,
      axi_cdc_data_static_M_AXI1_bid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_BID(3 downto 0),
      axi_cdc_data_static_M_AXI1_bready => slr1_axi_cdc_data_static_M_AXI1_BREADY,
      axi_cdc_data_static_M_AXI1_bresp(1 downto 0) => slr1_axi_cdc_data_static_M_AXI1_BRESP(1 downto 0),
      axi_cdc_data_static_M_AXI1_bvalid => slr1_axi_cdc_data_static_M_AXI1_BVALID,
      axi_cdc_data_static_M_AXI1_rdata(127 downto 0) => slr1_axi_cdc_data_static_M_AXI1_RDATA(127 downto 0),
      axi_cdc_data_static_M_AXI1_rid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI1_RID(3 downto 0),
      axi_cdc_data_static_M_AXI1_rlast => slr1_axi_cdc_data_static_M_AXI1_RLAST,
      axi_cdc_data_static_M_AXI1_rready => slr1_axi_cdc_data_static_M_AXI1_RREADY,
      axi_cdc_data_static_M_AXI1_rresp(1 downto 0) => slr1_axi_cdc_data_static_M_AXI1_RRESP(1 downto 0),
      axi_cdc_data_static_M_AXI1_rvalid => slr1_axi_cdc_data_static_M_AXI1_RVALID,
      axi_cdc_data_static_M_AXI1_wdata(127 downto 0) => slr1_axi_cdc_data_static_M_AXI1_WDATA(127 downto 0),
      axi_cdc_data_static_M_AXI1_wlast => slr1_axi_cdc_data_static_M_AXI1_WLAST,
      axi_cdc_data_static_M_AXI1_wready => slr1_axi_cdc_data_static_M_AXI1_WREADY,
      axi_cdc_data_static_M_AXI1_wstrb(15 downto 0) => slr1_axi_cdc_data_static_M_AXI1_WSTRB(15 downto 0),
      axi_cdc_data_static_M_AXI1_wvalid => slr1_axi_cdc_data_static_M_AXI1_WVALID,
      axi_cdc_data_static_M_AXI_araddr(38 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARADDR(38 downto 0),
      axi_cdc_data_static_M_AXI_arburst(1 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARBURST(1 downto 0),
      axi_cdc_data_static_M_AXI_arcache(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARCACHE(3 downto 0),
      axi_cdc_data_static_M_AXI_arid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARID(3 downto 0),
      axi_cdc_data_static_M_AXI_arlen(7 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARLEN(7 downto 0),
      axi_cdc_data_static_M_AXI_arlock(0) => slr1_axi_cdc_data_static_M_AXI_ARLOCK,
      axi_cdc_data_static_M_AXI_arprot(2 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARPROT(2 downto 0),
      axi_cdc_data_static_M_AXI_arqos(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARQOS(3 downto 0),
      axi_cdc_data_static_M_AXI_arready => slr1_axi_cdc_data_static_M_AXI_ARREADY,
      axi_cdc_data_static_M_AXI_arregion(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARREGION(3 downto 0),
      axi_cdc_data_static_M_AXI_arsize(2 downto 0) => slr1_axi_cdc_data_static_M_AXI_ARSIZE(2 downto 0),
      axi_cdc_data_static_M_AXI_arvalid => slr1_axi_cdc_data_static_M_AXI_ARVALID,
      axi_cdc_data_static_M_AXI_awaddr(38 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWADDR(38 downto 0),
      axi_cdc_data_static_M_AXI_awburst(1 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWBURST(1 downto 0),
      axi_cdc_data_static_M_AXI_awcache(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWCACHE(3 downto 0),
      axi_cdc_data_static_M_AXI_awid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWID(3 downto 0),
      axi_cdc_data_static_M_AXI_awlen(7 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWLEN(7 downto 0),
      axi_cdc_data_static_M_AXI_awlock(0) => slr1_axi_cdc_data_static_M_AXI_AWLOCK,
      axi_cdc_data_static_M_AXI_awprot(2 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWPROT(2 downto 0),
      axi_cdc_data_static_M_AXI_awqos(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWQOS(3 downto 0),
      axi_cdc_data_static_M_AXI_awready => slr1_axi_cdc_data_static_M_AXI_AWREADY,
      axi_cdc_data_static_M_AXI_awregion(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWREGION(3 downto 0),
      axi_cdc_data_static_M_AXI_awsize(2 downto 0) => slr1_axi_cdc_data_static_M_AXI_AWSIZE(2 downto 0),
      axi_cdc_data_static_M_AXI_awvalid => slr1_axi_cdc_data_static_M_AXI_AWVALID,
      axi_cdc_data_static_M_AXI_bid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_BID(3 downto 0),
      axi_cdc_data_static_M_AXI_bready => slr1_axi_cdc_data_static_M_AXI_BREADY,
      axi_cdc_data_static_M_AXI_bresp(1 downto 0) => slr1_axi_cdc_data_static_M_AXI_BRESP(1 downto 0),
      axi_cdc_data_static_M_AXI_bvalid => slr1_axi_cdc_data_static_M_AXI_BVALID,
      axi_cdc_data_static_M_AXI_rdata(511 downto 0) => slr1_axi_cdc_data_static_M_AXI_RDATA(511 downto 0),
      axi_cdc_data_static_M_AXI_rid(3 downto 0) => slr1_axi_cdc_data_static_M_AXI_RID(3 downto 0),
      axi_cdc_data_static_M_AXI_rlast => slr1_axi_cdc_data_static_M_AXI_RLAST,
      axi_cdc_data_static_M_AXI_rready => slr1_axi_cdc_data_static_M_AXI_RREADY,
      axi_cdc_data_static_M_AXI_rresp(1 downto 0) => slr1_axi_cdc_data_static_M_AXI_RRESP(1 downto 0),
      axi_cdc_data_static_M_AXI_rvalid => slr1_axi_cdc_data_static_M_AXI_RVALID,
      axi_cdc_data_static_M_AXI_wdata(511 downto 0) => slr1_axi_cdc_data_static_M_AXI_WDATA(511 downto 0),
      axi_cdc_data_static_M_AXI_wlast => slr1_axi_cdc_data_static_M_AXI_WLAST,
      axi_cdc_data_static_M_AXI_wready => slr1_axi_cdc_data_static_M_AXI_WREADY,
      axi_cdc_data_static_M_AXI_wstrb(63 downto 0) => slr1_axi_cdc_data_static_M_AXI_WSTRB(63 downto 0),
      axi_cdc_data_static_M_AXI_wvalid => slr1_axi_cdc_data_static_M_AXI_WVALID,
      axi_vip_ctrl_mgntpf_M_AXI_araddr(25 downto 0) => slr1_axi_vip_ctrl_mgntpf_M_AXI_ARADDR(25 downto 0),
      axi_vip_ctrl_mgntpf_M_AXI_arready => slr1_axi_vip_ctrl_mgntpf_M_AXI_ARREADY,
      axi_vip_ctrl_mgntpf_M_AXI_arvalid => slr1_axi_vip_ctrl_mgntpf_M_AXI_ARVALID,
      axi_vip_ctrl_mgntpf_M_AXI_awaddr(25 downto 0) => slr1_axi_vip_ctrl_mgntpf_M_AXI_AWADDR(25 downto 0),
      axi_vip_ctrl_mgntpf_M_AXI_awready => slr1_axi_vip_ctrl_mgntpf_M_AXI_AWREADY,
      axi_vip_ctrl_mgntpf_M_AXI_awvalid => slr1_axi_vip_ctrl_mgntpf_M_AXI_AWVALID,
      axi_vip_ctrl_mgntpf_M_AXI_bready => slr1_axi_vip_ctrl_mgntpf_M_AXI_BREADY,
      axi_vip_ctrl_mgntpf_M_AXI_bresp(1 downto 0) => slr1_axi_vip_ctrl_mgntpf_M_AXI_BRESP(1 downto 0),
      axi_vip_ctrl_mgntpf_M_AXI_bvalid => slr1_axi_vip_ctrl_mgntpf_M_AXI_BVALID,
      axi_vip_ctrl_mgntpf_M_AXI_rdata(31 downto 0) => slr1_axi_vip_ctrl_mgntpf_M_AXI_RDATA(31 downto 0),
      axi_vip_ctrl_mgntpf_M_AXI_rready => slr1_axi_vip_ctrl_mgntpf_M_AXI_RREADY,
      axi_vip_ctrl_mgntpf_M_AXI_rresp(1 downto 0) => slr1_axi_vip_ctrl_mgntpf_M_AXI_RRESP(1 downto 0),
      axi_vip_ctrl_mgntpf_M_AXI_rvalid => slr1_axi_vip_ctrl_mgntpf_M_AXI_RVALID,
      axi_vip_ctrl_mgntpf_M_AXI_wdata(31 downto 0) => slr1_axi_vip_ctrl_mgntpf_M_AXI_WDATA(31 downto 0),
      axi_vip_ctrl_mgntpf_M_AXI_wready => slr1_axi_vip_ctrl_mgntpf_M_AXI_WREADY,
      axi_vip_ctrl_mgntpf_M_AXI_wvalid => slr1_axi_vip_ctrl_mgntpf_M_AXI_WVALID,
      blp_s_aclk_kernel_ref_clk_00 => blp_s_aclk_kernel_ref_clk_00,
      c0_ddr4_ui_clk => M00_ACLK_1,
      clkwiz_kernel2_clk_out1 => ii_level0_wire_ulp_m_aclk_kernel2_ref_clk_00,
      clkwiz_kernel2_locked_slr1 => ii_level0_wire_ulp_m_data_clkwiz_kernel2_clk_out1_locked_00,
      clkwiz_kernel_clk_out1 => clkwiz_kernel_clk_out1_1,
      clkwiz_kernel_locked_slr1 => ii_level0_wire_ulp_m_data_clkwiz_kernel_clk_out1_locked_00,
      clkwiz_sysclks_clk_out2 => clkwiz_sysclks_clk_out2_1,
      clkwiz_sysclks_locked_slr1 => ii_level0_wire_ulp_m_data_clkwiz_sysclks_clk_out2_locked_00,
      dma_pcie_axi_aclk => ii_level0_wire_ulp_m_aclk_pcie_00,
      interconnect_aresetn(0) => slr1_interconnect_aresetn,
      iob_static_perst_n_out(0) => xlslice_4_Dout,
      logic_reset_op_Res(0) => slr1_logic_reset_op_Res,
      pcie_user_lnk_up_slr1 => ii_level0_wire_ulp_m_data_pcie_user_link_up_00,
      peripheral_aresetn(0) => slr1_peripheral_aresetn,
      psreset_gate_pr_control_interconnect_aresetn(0) => slr1_psreset_gate_pr_control_interconnect_aresetn,
      psreset_gate_pr_data_interconnect_aresetn(0) => slr1_psreset_gate_pr_data_interconnect_aresetn,
      psreset_gate_pr_kernel_interconnect_aresetn(0) => slr1_psreset_gate_pr_kernel_interconnect_aresetn,
      regslice_control_M_AXI_slr1_araddr(24 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARADDR(24 downto 0),
      regslice_control_M_AXI_slr1_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARPROT(2 downto 0),
      regslice_control_M_AXI_slr1_arready => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARREADY,
      regslice_control_M_AXI_slr1_arvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_ARVALID,
      regslice_control_M_AXI_slr1_awaddr(24 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWADDR(24 downto 0),
      regslice_control_M_AXI_slr1_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWPROT(2 downto 0),
      regslice_control_M_AXI_slr1_awready => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWREADY,
      regslice_control_M_AXI_slr1_awvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_AWVALID,
      regslice_control_M_AXI_slr1_bready => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BREADY,
      regslice_control_M_AXI_slr1_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BRESP(1 downto 0),
      regslice_control_M_AXI_slr1_bvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_BVALID,
      regslice_control_M_AXI_slr1_rdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RDATA(31 downto 0),
      regslice_control_M_AXI_slr1_rready => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RREADY,
      regslice_control_M_AXI_slr1_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RRESP(1 downto 0),
      regslice_control_M_AXI_slr1_rvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_RVALID,
      regslice_control_M_AXI_slr1_wdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WDATA(31 downto 0),
      regslice_control_M_AXI_slr1_wready => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WREADY,
      regslice_control_M_AXI_slr1_wstrb(3 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WSTRB(3 downto 0),
      regslice_control_M_AXI_slr1_wvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_00_WVALID,
      regslice_control_periph_M_AXI_slr1_araddr(24 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARADDR(24 downto 0),
      regslice_control_periph_M_AXI_slr1_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARPROT(2 downto 0),
      regslice_control_periph_M_AXI_slr1_arready => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARREADY,
      regslice_control_periph_M_AXI_slr1_arvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_ARVALID,
      regslice_control_periph_M_AXI_slr1_awaddr(24 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWADDR(24 downto 0),
      regslice_control_periph_M_AXI_slr1_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWPROT(2 downto 0),
      regslice_control_periph_M_AXI_slr1_awready => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWREADY,
      regslice_control_periph_M_AXI_slr1_awvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_AWVALID,
      regslice_control_periph_M_AXI_slr1_bready => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BREADY,
      regslice_control_periph_M_AXI_slr1_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BRESP(1 downto 0),
      regslice_control_periph_M_AXI_slr1_bvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_BVALID,
      regslice_control_periph_M_AXI_slr1_rdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RDATA(31 downto 0),
      regslice_control_periph_M_AXI_slr1_rready => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RREADY,
      regslice_control_periph_M_AXI_slr1_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RRESP(1 downto 0),
      regslice_control_periph_M_AXI_slr1_rvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_RVALID,
      regslice_control_periph_M_AXI_slr1_wdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WDATA(31 downto 0),
      regslice_control_periph_M_AXI_slr1_wready => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WREADY,
      regslice_control_periph_M_AXI_slr1_wstrb(3 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WSTRB(3 downto 0),
      regslice_control_periph_M_AXI_slr1_wvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_01_WVALID,
      regslice_control_userpf_M_AXI_slr1_araddr(24 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARADDR(24 downto 0),
      regslice_control_userpf_M_AXI_slr1_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARPROT(2 downto 0),
      regslice_control_userpf_M_AXI_slr1_arready => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARREADY,
      regslice_control_userpf_M_AXI_slr1_arvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_ARVALID,
      regslice_control_userpf_M_AXI_slr1_awaddr(24 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWADDR(24 downto 0),
      regslice_control_userpf_M_AXI_slr1_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWPROT(2 downto 0),
      regslice_control_userpf_M_AXI_slr1_awready => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWREADY,
      regslice_control_userpf_M_AXI_slr1_awvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_AWVALID,
      regslice_control_userpf_M_AXI_slr1_bready => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BREADY,
      regslice_control_userpf_M_AXI_slr1_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BRESP(1 downto 0),
      regslice_control_userpf_M_AXI_slr1_bvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_BVALID,
      regslice_control_userpf_M_AXI_slr1_rdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RDATA(31 downto 0),
      regslice_control_userpf_M_AXI_slr1_rready => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RREADY,
      regslice_control_userpf_M_AXI_slr1_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RRESP(1 downto 0),
      regslice_control_userpf_M_AXI_slr1_rvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_RVALID,
      regslice_control_userpf_M_AXI_slr1_wdata(31 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WDATA(31 downto 0),
      regslice_control_userpf_M_AXI_slr1_wready => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WREADY,
      regslice_control_userpf_M_AXI_slr1_wstrb(3 downto 0) => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WSTRB(3 downto 0),
      regslice_control_userpf_M_AXI_slr1_wvalid => ii_level0_wire_ULP_M_AXI_CTRL_USER_02_WVALID,
      regslice_data_static_M_AXI_slr1_araddr(38 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARADDR(38 downto 0),
      regslice_data_static_M_AXI_slr1_arburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARBURST(1 downto 0),
      regslice_data_static_M_AXI_slr1_arcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARCACHE(3 downto 0),
      regslice_data_static_M_AXI_slr1_arid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARID(3 downto 0),
      regslice_data_static_M_AXI_slr1_arlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLEN(7 downto 0),
      regslice_data_static_M_AXI_slr1_arlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARLOCK,
      regslice_data_static_M_AXI_slr1_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARPROT(2 downto 0),
      regslice_data_static_M_AXI_slr1_arready => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARREADY,
      regslice_data_static_M_AXI_slr1_arvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_ARVALID,
      regslice_data_static_M_AXI_slr1_awaddr(38 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWADDR(38 downto 0),
      regslice_data_static_M_AXI_slr1_awburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWBURST(1 downto 0),
      regslice_data_static_M_AXI_slr1_awcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWCACHE(3 downto 0),
      regslice_data_static_M_AXI_slr1_awid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWID(3 downto 0),
      regslice_data_static_M_AXI_slr1_awlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLEN(7 downto 0),
      regslice_data_static_M_AXI_slr1_awlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWLOCK,
      regslice_data_static_M_AXI_slr1_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWPROT(2 downto 0),
      regslice_data_static_M_AXI_slr1_awready => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWREADY,
      regslice_data_static_M_AXI_slr1_awvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_AWVALID,
      regslice_data_static_M_AXI_slr1_bid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BID(3 downto 0),
      regslice_data_static_M_AXI_slr1_bready => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BREADY,
      regslice_data_static_M_AXI_slr1_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BRESP(1 downto 0),
      regslice_data_static_M_AXI_slr1_bvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_BVALID,
      regslice_data_static_M_AXI_slr1_rdata(511 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RDATA(511 downto 0),
      regslice_data_static_M_AXI_slr1_rid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RID(3 downto 0),
      regslice_data_static_M_AXI_slr1_rlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RLAST,
      regslice_data_static_M_AXI_slr1_rready => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RREADY,
      regslice_data_static_M_AXI_slr1_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RRESP(1 downto 0),
      regslice_data_static_M_AXI_slr1_rvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_RVALID,
      regslice_data_static_M_AXI_slr1_wdata(511 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WDATA(511 downto 0),
      regslice_data_static_M_AXI_slr1_wlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WLAST,
      regslice_data_static_M_AXI_slr1_wready => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WREADY,
      regslice_data_static_M_AXI_slr1_wstrb(63 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WSTRB(63 downto 0),
      regslice_data_static_M_AXI_slr1_wvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_00_WVALID,
      regslice_data_static_M_AXI_slr2_araddr(38 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARADDR(38 downto 0),
      regslice_data_static_M_AXI_slr2_arburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARBURST(1 downto 0),
      regslice_data_static_M_AXI_slr2_arcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARCACHE(3 downto 0),
      regslice_data_static_M_AXI_slr2_arid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARID(3 downto 0),
      regslice_data_static_M_AXI_slr2_arlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLEN(7 downto 0),
      regslice_data_static_M_AXI_slr2_arlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARLOCK,
      regslice_data_static_M_AXI_slr2_arprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARPROT(2 downto 0),
      regslice_data_static_M_AXI_slr2_arready => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARREADY,
      regslice_data_static_M_AXI_slr2_arvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_ARVALID,
      regslice_data_static_M_AXI_slr2_awaddr(38 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWADDR(38 downto 0),
      regslice_data_static_M_AXI_slr2_awburst(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWBURST(1 downto 0),
      regslice_data_static_M_AXI_slr2_awcache(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWCACHE(3 downto 0),
      regslice_data_static_M_AXI_slr2_awid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWID(3 downto 0),
      regslice_data_static_M_AXI_slr2_awlen(7 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLEN(7 downto 0),
      regslice_data_static_M_AXI_slr2_awlock(0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWLOCK,
      regslice_data_static_M_AXI_slr2_awprot(2 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWPROT(2 downto 0),
      regslice_data_static_M_AXI_slr2_awready => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWREADY,
      regslice_data_static_M_AXI_slr2_awvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_AWVALID,
      regslice_data_static_M_AXI_slr2_bid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BID(3 downto 0),
      regslice_data_static_M_AXI_slr2_bready => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BREADY,
      regslice_data_static_M_AXI_slr2_bresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BRESP(1 downto 0),
      regslice_data_static_M_AXI_slr2_bvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_BVALID,
      regslice_data_static_M_AXI_slr2_rdata(127 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RDATA(127 downto 0),
      regslice_data_static_M_AXI_slr2_rid(3 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RID(3 downto 0),
      regslice_data_static_M_AXI_slr2_rlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RLAST,
      regslice_data_static_M_AXI_slr2_rready => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RREADY,
      regslice_data_static_M_AXI_slr2_rresp(1 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RRESP(1 downto 0),
      regslice_data_static_M_AXI_slr2_rvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_RVALID,
      regslice_data_static_M_AXI_slr2_wdata(127 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WDATA(127 downto 0),
      regslice_data_static_M_AXI_slr2_wlast => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WLAST,
      regslice_data_static_M_AXI_slr2_wready => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WREADY,
      regslice_data_static_M_AXI_slr2_wstrb(15 downto 0) => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WSTRB(15 downto 0),
      regslice_data_static_M_AXI_slr2_wvalid => ii_level0_wire_ULP_M_AXI_DATA_H2C_03_WVALID
    );
user_debug_bridge: component ulp_user_debug_bridge_0
     port map (
      S_AXI_araddr(4 downto 0) => axi_protocol_convert_0_M_AXI_ARADDR(4 downto 0),
      S_AXI_arprot(2 downto 0) => axi_protocol_convert_0_M_AXI_ARPROT(2 downto 0),
      S_AXI_arready => axi_protocol_convert_0_M_AXI_ARREADY,
      S_AXI_arvalid => axi_protocol_convert_0_M_AXI_ARVALID,
      S_AXI_awaddr(4 downto 0) => axi_protocol_convert_0_M_AXI_AWADDR(4 downto 0),
      S_AXI_awprot(2 downto 0) => axi_protocol_convert_0_M_AXI_AWPROT(2 downto 0),
      S_AXI_awready => axi_protocol_convert_0_M_AXI_AWREADY,
      S_AXI_awvalid => axi_protocol_convert_0_M_AXI_AWVALID,
      S_AXI_bready => axi_protocol_convert_0_M_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => axi_protocol_convert_0_M_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => axi_protocol_convert_0_M_AXI_BVALID,
      S_AXI_rdata(31 downto 0) => axi_protocol_convert_0_M_AXI_RDATA(31 downto 0),
      S_AXI_rready => axi_protocol_convert_0_M_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => axi_protocol_convert_0_M_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => axi_protocol_convert_0_M_AXI_RVALID,
      S_AXI_wdata(31 downto 0) => axi_protocol_convert_0_M_AXI_WDATA(31 downto 0),
      S_AXI_wready => axi_protocol_convert_0_M_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_protocol_convert_0_M_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_protocol_convert_0_M_AXI_WVALID,
      m0_bscan_bscanid_en => user_debug_bridge_m0_bscan_BSCANID_EN,
      m0_bscan_capture => user_debug_bridge_m0_bscan_CAPTURE,
      m0_bscan_drck => user_debug_bridge_m0_bscan_DRCK,
      m0_bscan_reset => user_debug_bridge_m0_bscan_RESET,
      m0_bscan_runtest => user_debug_bridge_m0_bscan_RUNTEST,
      m0_bscan_sel => user_debug_bridge_m0_bscan_SEL,
      m0_bscan_shift => user_debug_bridge_m0_bscan_SHIFT,
      m0_bscan_tck => user_debug_bridge_m0_bscan_TCK,
      m0_bscan_tdi => user_debug_bridge_m0_bscan_TDI,
      m0_bscan_tdo => user_debug_bridge_m0_bscan_TDO,
      m0_bscan_tms => user_debug_bridge_m0_bscan_TMS,
      m0_bscan_update => user_debug_bridge_m0_bscan_UPDATE,
      s_axi_aclk => clkwiz_sysclks_clk_out2_1,
      s_axi_aresetn => ii_level0_wire_ulp_m_aresetn_ctrl_00
    );
xlslice_0: entity work.ulp_xlslice_0_0
     port map (
      Din(1) => '0',
      Din(0) => ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00(0),
      Dout(0) => xlslice_0_Dout
    );
xlslice_1: entity work.ulp_xlslice_1_0
     port map (
      Din(1) => ii_level0_wire_ulp_m_data_slice_pr_reset_to_ulp_00(1),
      Din(0) => '0',
      Dout(0) => ii_level0_wire_ulp_m_data_clkwiz_sysclks_clk_out2_locked_00
    );
xlslice_2: entity work.ulp_xlslice_2_0
     port map (
      Din(2 downto 1) => B"00",
      Din(0) => ii_level0_wire_ulp_m_data_perstn_out_00(0),
      Dout(0) => ii_level0_wire_ulp_m_data_pcie_user_link_up_00
    );
xlslice_3: entity work.ulp_xlslice_3_0
     port map (
      Din(2) => '0',
      Din(1) => ii_level0_wire_ulp_m_data_perstn_out_00(1),
      Din(0) => '0',
      Dout(0) => ii_level0_wire_ulp_m_data_clkwiz_kernel2_clk_out1_locked_00
    );
xlslice_4: entity work.ulp_xlslice_4_0
     port map (
      Din(2) => ii_level0_wire_ulp_m_data_perstn_out_00(2),
      Din(1 downto 0) => B"00",
      Dout(0) => xlslice_4_Dout
    );
end STRUCTURE;
