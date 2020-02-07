// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Fri Feb  7 00:31:28 2020
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vm/projects/TUDNeutron/simpleneutron/vivado/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_input_selector_0_0/design_1_input_selector_0_0_sim_netlist.v
// Design      : design_1_input_selector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_input_selector_0_0,input_selector_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "input_selector_v1_0,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module design_1_input_selector_0_0
   (selector,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tkeep,
    s00_axis_tlast,
    s00_axis_tvalid,
    s01_axis_tready,
    s01_axis_tdata,
    s01_axis_tkeep,
    s01_axis_tlast,
    s01_axis_tvalid,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tkeep,
    m00_axis_tlast,
    m00_axis_tready,
    signal_state_0,
    signal_state_1,
    signal_state,
    fifo_reset_0,
    fifo_reset_1,
    fifo_reset);
  input selector;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tkeep;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  output s01_axis_tready;
  input [31:0]s01_axis_tdata;
  input [3:0]s01_axis_tkeep;
  input s01_axis_tlast;
  input s01_axis_tvalid;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tkeep;
  output m00_axis_tlast;
  input m00_axis_tready;
  input signal_state_0;
  input signal_state_1;
  output signal_state;
  input fifo_reset_0;
  input fifo_reset_1;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 fifo_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME fifo_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output fifo_reset;

  wire fifo_reset;
  wire fifo_reset_0;
  wire fifo_reset_1;
  wire [31:0]m00_axis_tdata;
  wire [3:0]m00_axis_tkeep;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [31:0]s00_axis_tdata;
  wire [3:0]s00_axis_tkeep;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire [31:0]s01_axis_tdata;
  wire [3:0]s01_axis_tkeep;
  wire s01_axis_tlast;
  wire s01_axis_tready;
  wire s01_axis_tvalid;
  wire selector;
  wire signal_state;
  wire signal_state_0;
  wire signal_state_1;

  design_1_input_selector_0_0_input_selector_v1_0 U0
       (.m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tkeep(m00_axis_tkeep),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tkeep(s00_axis_tkeep),
        .s01_axis_tdata(s01_axis_tdata),
        .s01_axis_tkeep(s01_axis_tkeep),
        .selector(selector));
  LUT3 #(
    .INIT(8'hB8)) 
    fifo_reset_INST_0
       (.I0(fifo_reset_0),
        .I1(selector),
        .I2(fifo_reset_1),
        .O(fifo_reset));
  LUT3 #(
    .INIT(8'hB8)) 
    m00_axis_tlast_INST_0
       (.I0(s00_axis_tlast),
        .I1(selector),
        .I2(s01_axis_tlast),
        .O(m00_axis_tlast));
  LUT3 #(
    .INIT(8'hB8)) 
    m00_axis_tvalid_INST_0
       (.I0(s00_axis_tvalid),
        .I1(selector),
        .I2(s01_axis_tvalid),
        .O(m00_axis_tvalid));
  LUT2 #(
    .INIT(4'h8)) 
    s00_axis_tready_INST_0
       (.I0(selector),
        .I1(m00_axis_tready),
        .O(s00_axis_tready));
  LUT2 #(
    .INIT(4'h2)) 
    s01_axis_tready_INST_0
       (.I0(m00_axis_tready),
        .I1(selector),
        .O(s01_axis_tready));
  LUT3 #(
    .INIT(8'hB8)) 
    signal_state_INST_0
       (.I0(signal_state_0),
        .I1(selector),
        .I2(signal_state_1),
        .O(signal_state));
endmodule

(* ORIG_REF_NAME = "input_selector_v1_0" *) 
module design_1_input_selector_0_0_input_selector_v1_0
   (m00_axis_tkeep,
    m00_axis_tdata,
    s00_axis_tkeep,
    selector,
    s01_axis_tkeep,
    s00_axis_tdata,
    s01_axis_tdata);
  output [3:0]m00_axis_tkeep;
  output [31:0]m00_axis_tdata;
  input [3:0]s00_axis_tkeep;
  input selector;
  input [3:0]s01_axis_tkeep;
  input [31:0]s00_axis_tdata;
  input [31:0]s01_axis_tdata;

  wire [31:0]m00_axis_tdata;
  wire [3:0]m00_axis_tkeep;
  wire [31:0]s00_axis_tdata;
  wire [3:0]s00_axis_tkeep;
  wire [31:0]s01_axis_tdata;
  wire [3:0]s01_axis_tkeep;
  wire selector;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[0]_INST_0 
       (.I0(s00_axis_tdata[0]),
        .I1(s01_axis_tdata[0]),
        .I2(selector),
        .O(m00_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[10]_INST_0 
       (.I0(s00_axis_tdata[10]),
        .I1(s01_axis_tdata[10]),
        .I2(selector),
        .O(m00_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[11]_INST_0 
       (.I0(s00_axis_tdata[11]),
        .I1(s01_axis_tdata[11]),
        .I2(selector),
        .O(m00_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[12]_INST_0 
       (.I0(s00_axis_tdata[12]),
        .I1(s01_axis_tdata[12]),
        .I2(selector),
        .O(m00_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[13]_INST_0 
       (.I0(s00_axis_tdata[13]),
        .I1(s01_axis_tdata[13]),
        .I2(selector),
        .O(m00_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[14]_INST_0 
       (.I0(s00_axis_tdata[14]),
        .I1(s01_axis_tdata[14]),
        .I2(selector),
        .O(m00_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[15]_INST_0 
       (.I0(s00_axis_tdata[15]),
        .I1(s01_axis_tdata[15]),
        .I2(selector),
        .O(m00_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[16]_INST_0 
       (.I0(s00_axis_tdata[16]),
        .I1(s01_axis_tdata[16]),
        .I2(selector),
        .O(m00_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[17]_INST_0 
       (.I0(s00_axis_tdata[17]),
        .I1(s01_axis_tdata[17]),
        .I2(selector),
        .O(m00_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[18]_INST_0 
       (.I0(s00_axis_tdata[18]),
        .I1(s01_axis_tdata[18]),
        .I2(selector),
        .O(m00_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[19]_INST_0 
       (.I0(s00_axis_tdata[19]),
        .I1(s01_axis_tdata[19]),
        .I2(selector),
        .O(m00_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[1]_INST_0 
       (.I0(s00_axis_tdata[1]),
        .I1(s01_axis_tdata[1]),
        .I2(selector),
        .O(m00_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[20]_INST_0 
       (.I0(s00_axis_tdata[20]),
        .I1(s01_axis_tdata[20]),
        .I2(selector),
        .O(m00_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[21]_INST_0 
       (.I0(s00_axis_tdata[21]),
        .I1(s01_axis_tdata[21]),
        .I2(selector),
        .O(m00_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[22]_INST_0 
       (.I0(s00_axis_tdata[22]),
        .I1(s01_axis_tdata[22]),
        .I2(selector),
        .O(m00_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[23]_INST_0 
       (.I0(s00_axis_tdata[23]),
        .I1(s01_axis_tdata[23]),
        .I2(selector),
        .O(m00_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[24]_INST_0 
       (.I0(s00_axis_tdata[24]),
        .I1(s01_axis_tdata[24]),
        .I2(selector),
        .O(m00_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[25]_INST_0 
       (.I0(s00_axis_tdata[25]),
        .I1(s01_axis_tdata[25]),
        .I2(selector),
        .O(m00_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[26]_INST_0 
       (.I0(s00_axis_tdata[26]),
        .I1(s01_axis_tdata[26]),
        .I2(selector),
        .O(m00_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[27]_INST_0 
       (.I0(s00_axis_tdata[27]),
        .I1(s01_axis_tdata[27]),
        .I2(selector),
        .O(m00_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[28]_INST_0 
       (.I0(s00_axis_tdata[28]),
        .I1(s01_axis_tdata[28]),
        .I2(selector),
        .O(m00_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[29]_INST_0 
       (.I0(s00_axis_tdata[29]),
        .I1(s01_axis_tdata[29]),
        .I2(selector),
        .O(m00_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[2]_INST_0 
       (.I0(s00_axis_tdata[2]),
        .I1(s01_axis_tdata[2]),
        .I2(selector),
        .O(m00_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[30]_INST_0 
       (.I0(s00_axis_tdata[30]),
        .I1(s01_axis_tdata[30]),
        .I2(selector),
        .O(m00_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[31]_INST_0 
       (.I0(s00_axis_tdata[31]),
        .I1(s01_axis_tdata[31]),
        .I2(selector),
        .O(m00_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[3]_INST_0 
       (.I0(s00_axis_tdata[3]),
        .I1(s01_axis_tdata[3]),
        .I2(selector),
        .O(m00_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[4]_INST_0 
       (.I0(s00_axis_tdata[4]),
        .I1(s01_axis_tdata[4]),
        .I2(selector),
        .O(m00_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[5]_INST_0 
       (.I0(s00_axis_tdata[5]),
        .I1(s01_axis_tdata[5]),
        .I2(selector),
        .O(m00_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[6]_INST_0 
       (.I0(s00_axis_tdata[6]),
        .I1(s01_axis_tdata[6]),
        .I2(selector),
        .O(m00_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[7]_INST_0 
       (.I0(s00_axis_tdata[7]),
        .I1(s01_axis_tdata[7]),
        .I2(selector),
        .O(m00_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[8]_INST_0 
       (.I0(s00_axis_tdata[8]),
        .I1(s01_axis_tdata[8]),
        .I2(selector),
        .O(m00_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m00_axis_tdata[9]_INST_0 
       (.I0(s00_axis_tdata[9]),
        .I1(s01_axis_tdata[9]),
        .I2(selector),
        .O(m00_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tkeep[0]_INST_0 
       (.I0(s00_axis_tkeep[0]),
        .I1(selector),
        .I2(s01_axis_tkeep[0]),
        .O(m00_axis_tkeep[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tkeep[1]_INST_0 
       (.I0(s00_axis_tkeep[1]),
        .I1(selector),
        .I2(s01_axis_tkeep[1]),
        .O(m00_axis_tkeep[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tkeep[2]_INST_0 
       (.I0(s00_axis_tkeep[2]),
        .I1(selector),
        .I2(s01_axis_tkeep[2]),
        .O(m00_axis_tkeep[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tkeep[3]_INST_0 
       (.I0(s00_axis_tkeep[3]),
        .I1(selector),
        .I2(s01_axis_tkeep[3]),
        .O(m00_axis_tkeep[3]));
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
