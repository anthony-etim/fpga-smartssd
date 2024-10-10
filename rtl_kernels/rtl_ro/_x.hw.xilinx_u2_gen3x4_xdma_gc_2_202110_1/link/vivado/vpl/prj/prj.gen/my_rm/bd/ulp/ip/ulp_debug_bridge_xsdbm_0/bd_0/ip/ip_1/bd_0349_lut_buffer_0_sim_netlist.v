// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Dec 31 12:04:32 2021
// Host        : caslab-cloudfpga running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_0349_lut_buffer_0 -prefix
//               bd_0349_lut_buffer_0_ bd_0349_lut_buffer_0_sim_netlist.v
// Design      : bd_0349_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku15p-ffva1156-2LV-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0349_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module bd_0349_lut_buffer_0
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
  bd_0349_lut_buffer_0_lut_buffer_v2_0_0_lut_buffer inst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2944)
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
