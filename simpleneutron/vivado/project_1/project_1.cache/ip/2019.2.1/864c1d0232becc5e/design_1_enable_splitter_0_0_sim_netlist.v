// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Wed Dec 25 00:15:51 2019
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_enable_splitter_0_0_sim_netlist.v
// Design      : design_1_enable_splitter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_enable_splitter_0_0,enable_splitter_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "enable_splitter_v1_0,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (switch_input,
    gpio_input,
    out0,
    out1,
    out2,
    out3,
    out4,
    out5,
    out6,
    out7);
  input [7:0]switch_input;
  input [7:0]gpio_input;
  output out0;
  output out1;
  output out2;
  output out3;
  output out4;
  output out5;
  output out6;
  output out7;

  wire [7:0]gpio_input;
  wire out0;
  wire out1;
  wire out2;
  wire out3;
  wire out4;
  wire out5;
  wire out6;
  wire out7;
  wire [7:0]switch_input;

  LUT2 #(
    .INIT(4'h8)) 
    out0_INST_0
       (.I0(switch_input[0]),
        .I1(gpio_input[0]),
        .O(out0));
  LUT2 #(
    .INIT(4'h8)) 
    out1_INST_0
       (.I0(switch_input[1]),
        .I1(gpio_input[1]),
        .O(out1));
  LUT2 #(
    .INIT(4'h8)) 
    out2_INST_0
       (.I0(switch_input[2]),
        .I1(gpio_input[2]),
        .O(out2));
  LUT2 #(
    .INIT(4'h8)) 
    out3_INST_0
       (.I0(switch_input[3]),
        .I1(gpio_input[3]),
        .O(out3));
  LUT2 #(
    .INIT(4'h8)) 
    out4_INST_0
       (.I0(switch_input[4]),
        .I1(gpio_input[4]),
        .O(out4));
  LUT2 #(
    .INIT(4'h8)) 
    out5_INST_0
       (.I0(switch_input[5]),
        .I1(gpio_input[5]),
        .O(out5));
  LUT2 #(
    .INIT(4'h8)) 
    out6_INST_0
       (.I0(switch_input[6]),
        .I1(gpio_input[6]),
        .O(out6));
  LUT2 #(
    .INIT(4'h8)) 
    out7_INST_0
       (.I0(switch_input[7]),
        .I1(gpio_input[7]),
        .O(out7));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
