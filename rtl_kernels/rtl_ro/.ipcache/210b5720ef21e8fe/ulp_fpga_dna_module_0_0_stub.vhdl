-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Dec 31 12:05:57 2021
-- Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_fpga_dna_module_0_0_stub.vhdl
-- Design      : ulp_fpga_dna_module_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku15p-ffva1156-2LV-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_lite_aclk,s_axi_lite_aresetn,s_axi_lite_awaddr[11:0],s_axi_lite_awready,s_axi_lite_awvalid,s_axi_lite_araddr[11:0],s_axi_lite_arready,s_axi_lite_arvalid,s_axi_lite_wdata[31:0],s_axi_lite_wstrb[3:0],s_axi_lite_wready,s_axi_lite_wvalid,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],s_axi_lite_rready,s_axi_lite_rvalid,s_axi_lite_bresp[1:0],s_axi_lite_bready,s_axi_lite_bvalid,dna_dyn_data_dout,dna_dyn_data_ports[2:0],fpga_dna_data[95:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fpga_dna_module,Vivado 2021.1";
begin
end;
