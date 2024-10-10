-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Dec 31 12:04:32 2021
-- Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top bd_0349_lut_buffer_0 -prefix
--               bd_0349_lut_buffer_0_ bd_0349_lut_buffer_0_sim_netlist.vhdl
-- Design      : bd_0349_lut_buffer_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku15p-ffva1156-2LV-e
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
bBTLKNRCXWhOAx1+YMj4Xx/Jr4A/ssh77gsESoWMEwxUHKGn57FvXJP9nsHr13plL6UGvrcIELJE
/ww/BCXU+VyrblusNZ/2CXIXW+XX2yuz6acXk0wWG7AwULz5IHKXwbV08ymDvQRCCUj0tn3C0Vt0
Y/OZIJxb+/1lRFjRgBc=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
KQkJRK64UH/2tN0ZhuVJQ2ppl5WuTRzUAGyzMePOe4p2tJxRMqY6a9ifZXRB91bG0Q/l56ak6+x2
0/xi5LRq2YztvoZfw8XE8XReQpAtBUN9F5P4HcTGG8NsxuJtDQR0VaOuaTViizAucEqIjhdas3OS
Mucq4tSWQ9lhG+heMF4Pv0l/LVbloP3qTfUh6KuG0nXeJzh1Q1Hw6aEhywj+1etgBMhfXc0JIa+3
UkV7I5qsVNYopXhcC6Mm5U4baKeK3HspCYF4KiTakmWQ6kOnpMIUiVVSd3mfOZylYqUh3CMaSqx7
fdQ6ZWME7T2tRnbjgdZgAFcyMMWZhiEi5cTIKw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Y3b+GG3CqfotOb5bwZWphegg+kNXDYHW1UUrUr3gK3Yrh3Gv9F2kDlRT/YfAMgruk/1PSQjZUado
WbPUUFCkNR02++pNfDkKtI9tkjJOuQ/wxT5acGqqWUCrTEZt5jmWxhWFpzm6ZDnKaRZzcngpnNT3
x1Wd0bVJA+my70JOVHM=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
TqLpjfOnPLEi2zB+g1VqYC6ZrKLLpmng/mLDRhpKb/WR81gwTPjTiiuVTcX9sqLNtBeqtH/oOmIl
VCu1YkmmtbWkMGvseencNSpX7UCmrzTs/aPnHkfRYiIaiOPhlugsqjmDiTKgA2Tq/tT5PjXq/zW+
XUFrq3xJ4Rhtz1HgrAFai+X08+ewo2Qt3CRHJjV6dlyF9nMMROE1fjTfCcWVpo/78oEGtX5Bjk1D
MrB0tivvgVSYxdKLcpJVgj6PLBAITw+62Fm3SMXUTLFdxC43ZMyszgtK6sEu7aZmfVM2w1BdVc6o
FaYItBtJ6Pc68XF/TZkulB555IBq7C5sGCpBog==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
SOvC56WAvslkDg8n0L6SYQdMmY9MTJeJdttZ0jlTtj+O8yqTMbotqztuypMWMmWLavEcgOOV7gEw
J4o8h8Ue3caRdIm21sbI8c+3GnfaXvk1lsaoM7f8U0T/Umubono0IetBO0J1lgs++rmf+p0gDJNZ
kT0atXyPLLLLIqTjHTvKhiAzd/S1VSq0ZYAQ8iM7BhA7EfDwLhAaKpcWlo7fqx79QdkJwrAkHZDi
UK57tdApeh7KUsS6YfVMszwLzMiLa075FthbuSkcS/F946cb1MWJyWl4CG2+jJS3YtrsahNsN1k6
tmHHWSKPlRdih7HOePQeVlmQpDxev57XOFOBlQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Tiw8f73kpeAklLTOD0oMGVhruDKflKu5jKJMhGzWQqBPBMzZHur2DxyYsQeBfsUU2kE+Ron6WE5V
+n5E4edfcSVPRIDodFRbT8RIf6E5Jnz9yed75HAm3ROYlIYdAVpCGpVkzuGLVHBSNmpgMmqghk6q
FsYu9vRDTHf966FJhBlvqa9PYtdzJVJCdkJxikwYdkDn6uMKwO3Ki7GSr5V5LnPd4IGr3ypEoMNV
ZQlpnbfpmpCJAHlATHUNDBaTz1Uj7EdxGbok3xKGIEU83ohI2Anx0uowQglOkCQpCkNB506CdwQZ
i7pA1HbIGUaD12Sjd4HLNEt9E354+jAbE2anHw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
IKg4Ui6aztSoWjSvG54rTKBtyz55ZlHwZ/Peyb7r0ywMcoqiFpR5T2wweCE67b3SQG4Y5T+xGaIn
A80CE08e9uoyGnJTaucfR8URF2Zspp+fVAM+MVC9k7Am8cKnQCj7tDVli2/+AfluaNXP3xMGF6gp
l0j1NSppOvrLjJOPUojm+p5Dtosd6NVHG9yKKmLDMgs4SJyQCnH8WpDZTbetSStccve0Wh+8BPjX
kn24RtUcfWpdMc3/p7sFRAS/xZ9yqr3PamZjkQLbtqiAdGuufgDu7QXkadWIBf+qMutx3PaF9PnQ
Kwla72sRF9OL5CIvalqMWy3UHXCoIU8O+PNFSA==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
NH8E2j5Z9kVzx30F7yEjdpqHZQZfyinmIkLBE0sElyXKo7RkW7O2w3ANqxMN8dDJjDvo+Afyn09W
FtKBXG1hQ7IJjMSIVyrhqHzVNTSx7/HQjfn5xwWzK1B3NTo9zynU5CicBoNICCUUA085VteOIFSD
lX2NhqMnyMvcq+ZGW1Pl9GC1xLXcDdqRuOwol93J2KcfyKs3L1+Ces2K54MnLHSmh/wH7oz0+irc
edD4XZubqP3RoNejV7n4JZfr283agIrxralDLNpfiAZAEZNzeHX2YnFwXNRZ8++5IUwJsj57Bxjv
S3De0VfC3v1o/AHkmMwkZrlhvccAiolopdOyH6e3uCkocnoNPOPVPltgSXIqd//u1IYkxqlWVJBx
QOeZU2q4MaUZj8iP9KOE9QFDHelN5efjw0ecidRfLTyxcoEeT24Z1pHWSTHPfu6BmjUia/eUWJ1S
mNMuwQjSuOwuhY1oUMt022dENh40auRUKOsKpoct7toIpl0CJ/okPmI3

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
CcHFq/bSOCYX/lphfljbwbptit8aJqo4TfpjkNOMqLa8QH6TqEITgYKyih5HbuAs2zCLNkbLClLt
GcQFw/GJ6L9TvstcUfWXNWgsrZiIWPJh4t+SWR6DAr07Js3NqwU35oA+bggBNB6xWUysztACo6cB
/S9O5c0bo+WojPtcFcLs0zU+mLwZFflmBJaGSYKiNYmK1awlI2sl9DicuLw8G5Bkt+CXMLSyMGe3
O/QtauigzQ4hSFn+HJ5EJ6MR5MeGdXQESBs9Z6+de3V+ezfUQ/VaBudlFlU3gvC6qS2Pjrp/1Xwp
EDzasAhIIVJwfXKzJQMuhX3RcINDzx0ePJj3LA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4080)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0349_lut_buffer_0 is
  port (
    tdi_i : in STD_LOGIC;
    tms_i : in STD_LOGIC;
    tck_i : in STD_LOGIC;
    drck_i : in STD_LOGIC;
    sel_i : in STD_LOGIC;
    shift_i : in STD_LOGIC;
    update_i : in STD_LOGIC;
    capture_i : in STD_LOGIC;
    runtest_i : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    bscanid_en_i : in STD_LOGIC;
    tdo_o : out STD_LOGIC;
    tdi_o : out STD_LOGIC;
    tms_o : out STD_LOGIC;
    tck_o : out STD_LOGIC;
    drck_o : out STD_LOGIC;
    sel_o : out STD_LOGIC;
    shift_o : out STD_LOGIC;
    update_o : out STD_LOGIC;
    capture_o : out STD_LOGIC;
    runtest_o : out STD_LOGIC;
    reset_o : out STD_LOGIC;
    bscanid_en_o : out STD_LOGIC;
    tdo_i : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_0349_lut_buffer_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_0349_lut_buffer_0 : entity is "bd_0349_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_0349_lut_buffer_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_0349_lut_buffer_0 : entity is "lut_buffer_v2_0_0_lut_buffer,Vivado 2021.1";
end bd_0349_lut_buffer_0;

architecture STRUCTURE of bd_0349_lut_buffer_0 is
  signal NLW_inst_bscanid_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_EN_BSCANID_VEC : integer;
  attribute C_EN_BSCANID_VEC of inst : label is 0;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inst : label is std.standard.true;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst : label is "soft";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of inst : label is "true";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of bscanid_en_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN";
  attribute X_INTERFACE_INFO of bscanid_en_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN";
  attribute X_INTERFACE_INFO of capture_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE";
  attribute X_INTERFACE_INFO of capture_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE";
  attribute X_INTERFACE_INFO of drck_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan DRCK";
  attribute X_INTERFACE_INFO of drck_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan DRCK";
  attribute X_INTERFACE_INFO of reset_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan RESET";
  attribute X_INTERFACE_INFO of reset_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan RESET";
  attribute X_INTERFACE_INFO of runtest_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST";
  attribute X_INTERFACE_INFO of runtest_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST";
  attribute X_INTERFACE_INFO of sel_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan SEL";
  attribute X_INTERFACE_INFO of sel_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan SEL";
  attribute X_INTERFACE_INFO of shift_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan SHIFT";
  attribute X_INTERFACE_INFO of shift_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan SHIFT";
  attribute X_INTERFACE_INFO of tck_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan TCK";
  attribute X_INTERFACE_INFO of tck_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan TCK";
  attribute X_INTERFACE_INFO of tdi_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan TDI";
  attribute X_INTERFACE_INFO of tdi_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan TDI";
  attribute X_INTERFACE_INFO of tdo_i : signal is "xilinx.com:interface:bscan:1.0 m_bscan TDO";
  attribute X_INTERFACE_INFO of tdo_o : signal is "xilinx.com:interface:bscan:1.0 s_bscan TDO";
  attribute X_INTERFACE_INFO of tms_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan TMS";
  attribute X_INTERFACE_INFO of tms_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan TMS";
  attribute X_INTERFACE_INFO of update_i : signal is "xilinx.com:interface:bscan:1.0 s_bscan UPDATE";
  attribute X_INTERFACE_INFO of update_o : signal is "xilinx.com:interface:bscan:1.0 m_bscan UPDATE";
begin
inst: entity work.bd_0349_lut_buffer_0_lut_buffer_v2_0_0_lut_buffer
     port map (
      bscanid_en_i => bscanid_en_i,
      bscanid_en_o => bscanid_en_o,
      bscanid_i(31 downto 0) => B"00000000000000000000000000000000",
      bscanid_o(31 downto 0) => NLW_inst_bscanid_o_UNCONNECTED(31 downto 0),
      capture_i => capture_i,
      capture_o => capture_o,
      drck_i => drck_i,
      drck_o => drck_o,
      reset_i => reset_i,
      reset_o => reset_o,
      runtest_i => runtest_i,
      runtest_o => runtest_o,
      sel_i => sel_i,
      sel_o => sel_o,
      shift_i => shift_i,
      shift_o => shift_o,
      tck_i => tck_i,
      tck_o => tck_o,
      tdi_i => tdi_i,
      tdi_o => tdi_o,
      tdo_i => tdo_i,
      tdo_o => tdo_o,
      tms_i => tms_i,
      tms_o => tms_o,
      update_i => update_i,
      update_o => update_o
    );
end STRUCTURE;
