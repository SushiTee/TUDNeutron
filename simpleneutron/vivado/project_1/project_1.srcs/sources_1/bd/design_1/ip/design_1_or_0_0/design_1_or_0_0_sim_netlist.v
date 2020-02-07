// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Fri Feb  7 00:33:34 2020
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vm/projects/TUDNeutron/simpleneutron/vivado/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_or_0_0/design_1_or_0_0_sim_netlist.v
// Design      : design_1_or_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_or_0_0,or_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "or_v1_0,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module design_1_or_0_0
   (in0,
    in1,
    in2,
    in3,
    in4,
    in5,
    in6,
    in7,
    out0);
  input in0;
  input in1;
  input in2;
  input in3;
  input in4;
  input in5;
  input in6;
  input in7;
  output out0;

  wire in0;
  wire in1;
  wire in2;
  wire in3;
  wire in4;
  wire in5;
  wire in6;
  wire in7;
  wire out0;

  design_1_or_0_0_or_v1_0 U0
       (.in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .in5(in5),
        .in6(in6),
        .in7(in7),
        .out0(out0));
endmodule

(* ORIG_REF_NAME = "or_v1_0" *) 
module design_1_or_0_0_or_v1_0
   (out0,
    in6,
    in5,
    in0,
    in7,
    in3,
    in4,
    in1,
    in2);
  output out0;
  input in6;
  input in5;
  input in0;
  input in7;
  input in3;
  input in4;
  input in1;
  input in2;

  wire in0;
  wire in1;
  wire in2;
  wire in3;
  wire in4;
  wire in5;
  wire in6;
  wire in7;
  wire out0;
  wire out0_INST_0_i_1_n_0;

  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    out0_INST_0
       (.I0(in6),
        .I1(in5),
        .I2(in0),
        .I3(in7),
        .I4(out0_INST_0_i_1_n_0),
        .O(out0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    out0_INST_0_i_1
       (.I0(in3),
        .I1(in4),
        .I2(in1),
        .I3(in2),
        .O(out0_INST_0_i_1_n_0));
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
