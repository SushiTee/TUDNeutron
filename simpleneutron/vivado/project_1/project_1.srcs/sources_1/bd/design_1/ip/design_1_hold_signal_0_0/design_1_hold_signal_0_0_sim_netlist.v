// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Wed Feb 12 20:40:34 2020
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_hold_signal_0_0 -prefix
//               design_1_hold_signal_0_0_ design_1_hold_signal_0_5_sim_netlist.v
// Design      : design_1_hold_signal_0_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_hold_signal_0_5,hold_signal_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "hold_signal_v1_0,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module design_1_hold_signal_0_0
   (signal_in,
    signal_out,
    m00_axis_aclk,
    m00_axis_aresetn);
  input signal_in;
  output signal_out;
  input m00_axis_aclk;
  input m00_axis_aresetn;

  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire signal_in;
  wire signal_out;

  design_1_hold_signal_0_0_hold_signal_v1_0 U0
       (.m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .signal_in(signal_in),
        .signal_out(signal_out));
endmodule

module design_1_hold_signal_0_0_hold_signal_v1_0
   (signal_out,
    m00_axis_aclk,
    m00_axis_aresetn,
    signal_in);
  output signal_out;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  input signal_in;

  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire signal_in;
  wire signal_out;
  wire signal_out_i_1_n_0;

  LUT3 #(
    .INIT(8'hA8)) 
    signal_out_i_1
       (.I0(m00_axis_aresetn),
        .I1(signal_out),
        .I2(signal_in),
        .O(signal_out_i_1_n_0));
  FDRE signal_out_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(signal_out_i_1_n_0),
        .Q(signal_out),
        .R(1'b0));
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
