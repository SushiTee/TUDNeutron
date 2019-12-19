// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
// Date        : Tue Dec 17 19:13:16 2019
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_signal_detector_0_0_sim_netlist.v
// Design      : design_1_signal_detector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_signal_detector_0_0,signal_detector_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "signal_detector_v1_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (enabled,
    signal_input,
    signal_state,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready);
  input enabled;
  input signal_input;
  output signal_state;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_m00_axis_aclk, INSERT_VIP 0" *) input m00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_m00_axis_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input m00_axis_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire enabled;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m00_axis_tvalid;
  wire signal_input;
  wire signal_state;

  assign m00_axis_tdata[31] = \<const0> ;
  assign m00_axis_tdata[30] = \<const0> ;
  assign m00_axis_tdata[29] = \<const0> ;
  assign m00_axis_tdata[28] = \<const0> ;
  assign m00_axis_tdata[27] = \<const0> ;
  assign m00_axis_tdata[26] = \<const0> ;
  assign m00_axis_tdata[25] = \<const0> ;
  assign m00_axis_tdata[24] = \<const0> ;
  assign m00_axis_tdata[23] = \<const0> ;
  assign m00_axis_tdata[22] = \<const0> ;
  assign m00_axis_tdata[21] = \<const0> ;
  assign m00_axis_tdata[20] = \<const0> ;
  assign m00_axis_tdata[19] = \<const0> ;
  assign m00_axis_tdata[18] = \<const0> ;
  assign m00_axis_tdata[17] = \<const0> ;
  assign m00_axis_tdata[16] = \<const0> ;
  assign m00_axis_tdata[15] = \<const0> ;
  assign m00_axis_tdata[14] = \<const0> ;
  assign m00_axis_tdata[13] = \<const0> ;
  assign m00_axis_tdata[12] = \<const0> ;
  assign m00_axis_tdata[11] = \<const0> ;
  assign m00_axis_tdata[10] = \<const0> ;
  assign m00_axis_tdata[9] = \<const0> ;
  assign m00_axis_tdata[8] = \<const0> ;
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \<const0> ;
  assign m00_axis_tlast = m00_axis_tvalid;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signal_detector_v1_0 U0
       (.enabled(enabled),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tvalid(m00_axis_tvalid),
        .signal_input(signal_input),
        .signal_state(signal_state));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signal_detector_v1_0
   (m00_axis_tvalid,
    signal_state,
    enabled,
    m00_axis_aresetn,
    m00_axis_aclk,
    signal_input);
  output m00_axis_tvalid;
  output signal_state;
  input enabled;
  input m00_axis_aresetn;
  input m00_axis_aclk;
  input signal_input;

  wire enabled;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m00_axis_tvalid;
  wire signal_input;
  wire signal_state;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signal_detector_v1_0_M00_AXIS signal_detector_v1_0_M00_AXIS_inst
       (.enabled(enabled),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tvalid(m00_axis_tvalid),
        .signal_input(signal_input),
        .signal_state(signal_state));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signal_detector_v1_0_M00_AXIS
   (m00_axis_tvalid,
    signal_state,
    enabled,
    m00_axis_aresetn,
    m00_axis_aclk,
    signal_input);
  output m00_axis_tvalid;
  output signal_state;
  input enabled;
  input m00_axis_aresetn;
  input m00_axis_aclk;
  input signal_input;

  wire \FSM_onehot_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[2]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[2]_i_2_n_0 ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[0] ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[1] ;
  wire axis_tvalid_calculated;
  wire axis_tvalid_calculated_i_1_n_0;
  wire clock_counter;
  wire enabled;
  wire init_counter;
  wire [4:0]init_counter_reg;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m00_axis_tvalid;
  wire [4:0]plusOp;
  wire signal_input;
  wire signal_input_previous;
  wire signal_input_previous_i_1_n_0;
  wire signal_state;

  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_mst_exec_state[0]_i_1 
       (.I0(m00_axis_aresetn),
        .I1(enabled),
        .O(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \FSM_onehot_mst_exec_state[1]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .I1(init_counter),
        .I2(enabled),
        .I3(m00_axis_aresetn),
        .O(\FSM_onehot_mst_exec_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAE000000)) 
    \FSM_onehot_mst_exec_state[2]_i_1 
       (.I0(clock_counter),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_mst_exec_state[2]_i_2_n_0 ),
        .I3(enabled),
        .I4(m00_axis_aresetn),
        .O(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \FSM_onehot_mst_exec_state[2]_i_2 
       (.I0(init_counter_reg[3]),
        .I1(init_counter_reg[1]),
        .I2(init_counter_reg[0]),
        .I3(init_counter_reg[2]),
        .I4(init_counter_reg[4]),
        .O(\FSM_onehot_mst_exec_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "state_idle:001,state_init_counter:010,state_send_stream:100" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_idle:001,state_init_counter:010,state_send_stream:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_idle:001,state_init_counter:010,state_send_stream:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ),
        .Q(clock_counter),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4F40)) 
    axis_tvalid_calculated_i_1
       (.I0(signal_input_previous),
        .I1(signal_input),
        .I2(clock_counter),
        .I3(axis_tvalid_calculated),
        .O(axis_tvalid_calculated_i_1_n_0));
  FDRE axis_tvalid_calculated_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid_calculated_i_1_n_0),
        .Q(axis_tvalid_calculated),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_counter[0]_i_1 
       (.I0(init_counter_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_counter[1]_i_1 
       (.I0(init_counter_reg[0]),
        .I1(init_counter_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_counter[2]_i_1 
       (.I0(init_counter_reg[1]),
        .I1(init_counter_reg[0]),
        .I2(init_counter_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_counter[3]_i_1 
       (.I0(init_counter_reg[2]),
        .I1(init_counter_reg[0]),
        .I2(init_counter_reg[1]),
        .I3(init_counter_reg[3]),
        .O(plusOp[3]));
  LUT6 #(
    .INIT(64'h7FFFFFFF00000000)) 
    \init_counter[4]_i_1 
       (.I0(init_counter_reg[4]),
        .I1(init_counter_reg[2]),
        .I2(init_counter_reg[0]),
        .I3(init_counter_reg[1]),
        .I4(init_counter_reg[3]),
        .I5(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .O(init_counter));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_counter[4]_i_2 
       (.I0(init_counter_reg[3]),
        .I1(init_counter_reg[1]),
        .I2(init_counter_reg[0]),
        .I3(init_counter_reg[2]),
        .I4(init_counter_reg[4]),
        .O(plusOp[4]));
  FDRE \init_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp[0]),
        .Q(init_counter_reg[0]),
        .R(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  FDRE \init_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp[1]),
        .Q(init_counter_reg[1]),
        .R(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  FDRE \init_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp[2]),
        .Q(init_counter_reg[2]),
        .R(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  FDRE \init_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp[3]),
        .Q(init_counter_reg[3]),
        .R(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  FDRE \init_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp[4]),
        .Q(init_counter_reg[4]),
        .R(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    m00_axis_tlast_INST_0
       (.I0(clock_counter),
        .I1(axis_tvalid_calculated),
        .O(m00_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    signal_input_previous_i_1
       (.I0(signal_input),
        .I1(clock_counter),
        .I2(signal_input_previous),
        .O(signal_input_previous_i_1_n_0));
  FDRE signal_input_previous_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(signal_input_previous_i_1_n_0),
        .Q(signal_input_previous),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    signal_state_INST_0
       (.I0(enabled),
        .I1(axis_tvalid_calculated),
        .O(signal_state));
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
