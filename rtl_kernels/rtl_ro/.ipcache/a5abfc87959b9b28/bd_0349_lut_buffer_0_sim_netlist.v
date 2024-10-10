// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Dec 31 12:04:32 2021
// Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0349_lut_buffer_0_sim_netlist.v
// Design      : bd_0349_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku15p-ffva1156-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0349_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bBTLKNRCXWhOAx1+YMj4Xx/Jr4A/ssh77gsESoWMEwxUHKGn57FvXJP9nsHr13plL6UGvrcIELJE
/ww/BCXU+VyrblusNZ/2CXIXW+XX2yuz6acXk0wWG7AwULz5IHKXwbV08ymDvQRCCUj0tn3C0Vt0
Y/OZIJxb+/1lRFjRgBc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KQkJRK64UH/2tN0ZhuVJQ2ppl5WuTRzUAGyzMePOe4p2tJxRMqY6a9ifZXRB91bG0Q/l56ak6+x2
0/xi5LRq2YztvoZfw8XE8XReQpAtBUN9F5P4HcTGG8NsxuJtDQR0VaOuaTViizAucEqIjhdas3OS
Mucq4tSWQ9lhG+heMF4Pv0l/LVbloP3qTfUh6KuG0nXeJzh1Q1Hw6aEhywj+1etgBMhfXc0JIa+3
UkV7I5qsVNYopXhcC6Mm5U4baKeK3HspCYF4KiTakmWQ6kOnpMIUiVVSd3mfOZylYqUh3CMaSqx7
fdQ6ZWME7T2tRnbjgdZgAFcyMMWZhiEi5cTIKw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Y3b+GG3CqfotOb5bwZWphegg+kNXDYHW1UUrUr3gK3Yrh3Gv9F2kDlRT/YfAMgruk/1PSQjZUado
WbPUUFCkNR02++pNfDkKtI9tkjJOuQ/wxT5acGqqWUCrTEZt5jmWxhWFpzm6ZDnKaRZzcngpnNT3
x1Wd0bVJA+my70JOVHM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TqLpjfOnPLEi2zB+g1VqYC6ZrKLLpmng/mLDRhpKb/WR81gwTPjTiiuVTcX9sqLNtBeqtH/oOmIl
VCu1YkmmtbWkMGvseencNSpX7UCmrzTs/aPnHkfRYiIaiOPhlugsqjmDiTKgA2Tq/tT5PjXq/zW+
XUFrq3xJ4Rhtz1HgrAFai+X08+ewo2Qt3CRHJjV6dlyF9nMMROE1fjTfCcWVpo/78oEGtX5Bjk1D
MrB0tivvgVSYxdKLcpJVgj6PLBAITw+62Fm3SMXUTLFdxC43ZMyszgtK6sEu7aZmfVM2w1BdVc6o
FaYItBtJ6Pc68XF/TZkulB555IBq7C5sGCpBog==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SOvC56WAvslkDg8n0L6SYQdMmY9MTJeJdttZ0jlTtj+O8yqTMbotqztuypMWMmWLavEcgOOV7gEw
J4o8h8Ue3caRdIm21sbI8c+3GnfaXvk1lsaoM7f8U0T/Umubono0IetBO0J1lgs++rmf+p0gDJNZ
kT0atXyPLLLLIqTjHTvKhiAzd/S1VSq0ZYAQ8iM7BhA7EfDwLhAaKpcWlo7fqx79QdkJwrAkHZDi
UK57tdApeh7KUsS6YfVMszwLzMiLa075FthbuSkcS/F946cb1MWJyWl4CG2+jJS3YtrsahNsN1k6
tmHHWSKPlRdih7HOePQeVlmQpDxev57XOFOBlQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Tiw8f73kpeAklLTOD0oMGVhruDKflKu5jKJMhGzWQqBPBMzZHur2DxyYsQeBfsUU2kE+Ron6WE5V
+n5E4edfcSVPRIDodFRbT8RIf6E5Jnz9yed75HAm3ROYlIYdAVpCGpVkzuGLVHBSNmpgMmqghk6q
FsYu9vRDTHf966FJhBlvqa9PYtdzJVJCdkJxikwYdkDn6uMKwO3Ki7GSr5V5LnPd4IGr3ypEoMNV
ZQlpnbfpmpCJAHlATHUNDBaTz1Uj7EdxGbok3xKGIEU83ohI2Anx0uowQglOkCQpCkNB506CdwQZ
i7pA1HbIGUaD12Sjd4HLNEt9E354+jAbE2anHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IKg4Ui6aztSoWjSvG54rTKBtyz55ZlHwZ/Peyb7r0ywMcoqiFpR5T2wweCE67b3SQG4Y5T+xGaIn
A80CE08e9uoyGnJTaucfR8URF2Zspp+fVAM+MVC9k7Am8cKnQCj7tDVli2/+AfluaNXP3xMGF6gp
l0j1NSppOvrLjJOPUojm+p5Dtosd6NVHG9yKKmLDMgs4SJyQCnH8WpDZTbetSStccve0Wh+8BPjX
kn24RtUcfWpdMc3/p7sFRAS/xZ9yqr3PamZjkQLbtqiAdGuufgDu7QXkadWIBf+qMutx3PaF9PnQ
Kwla72sRF9OL5CIvalqMWy3UHXCoIU8O+PNFSA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NH8E2j5Z9kVzx30F7yEjdpqHZQZfyinmIkLBE0sElyXKo7RkW7O2w3ANqxMN8dDJjDvo+Afyn09W
FtKBXG1hQ7IJjMSIVyrhqHzVNTSx7/HQjfn5xwWzK1B3NTo9zynU5CicBoNICCUUA085VteOIFSD
lX2NhqMnyMvcq+ZGW1Pl9GC1xLXcDdqRuOwol93J2KcfyKs3L1+Ces2K54MnLHSmh/wH7oz0+irc
edD4XZubqP3RoNejV7n4JZfr283agIrxralDLNpfiAZAEZNzeHX2YnFwXNRZ8++5IUwJsj57Bxjv
S3De0VfC3v1o/AHkmMwkZrlhvccAiolopdOyH6e3uCkocnoNPOPVPltgSXIqd//u1IYkxqlWVJBx
QOeZU2q4MaUZj8iP9KOE9QFDHelN5efjw0ecidRfLTyxcoEeT24Z1pHWSTHPfu6BmjUia/eUWJ1S
mNMuwQjSuOwuhY1oUMt022dENh40auRUKOsKpoct7toIpl0CJ/okPmI3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CcHFq/bSOCYX/lphfljbwbptit8aJqo4TfpjkNOMqLa8QH6TqEITgYKyih5HbuAs2zCLNkbLClLt
GcQFw/GJ6L9TvstcUfWXNWgsrZiIWPJh4t+SWR6DAr07Js3NqwU35oA+bggBNB6xWUysztACo6cB
/S9O5c0bo+WojPtcFcLs0zU+mLwZFflmBJaGSYKiNYmK1awlI2sl9DicuLw8G5Bkt+CXMLSyMGe3
O/QtauigzQ4hSFn+HJ5EJ6MR5MeGdXQESBs9Z6+de3V+ezfUQ/VaBudlFlU3gvC6qS2Pjrp/1Xwp
EDzasAhIIVJwfXKzJQMuhX3RcINDzx0ePJj3LA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
