// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Fri Feb  7 00:01:24 2020
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_signal_detector_6_0 -prefix
//               design_1_signal_detector_6_0_ design_1_signal_detector_0_0_sim_netlist.v
// Design      : design_1_signal_detector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_signal_detector_0_0,signal_detector_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "signal_detector_v1_0,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module design_1_signal_detector_6_0
   (enabled,
    signal_input,
    signal_state,
    fifo_reset,
    number_words,
    trigger_input,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tkeep,
    m00_axis_tlast,
    m00_axis_tready);
  input enabled;
  input signal_input;
  output signal_state;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 fifo_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME fifo_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output fifo_reset;
  input [15:0]number_words;
  input trigger_input;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP" *) output [3:0]m00_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input m00_axis_tready;

  wire \<const1> ;
  wire enabled;
  wire fifo_reset;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tvalid;
  wire [15:0]number_words;
  wire signal_input;
  wire signal_state;
  wire trigger_input;

  assign m00_axis_tkeep[3] = \<const1> ;
  assign m00_axis_tkeep[2] = \<const1> ;
  assign m00_axis_tkeep[1] = \<const1> ;
  assign m00_axis_tkeep[0] = \<const1> ;
  design_1_signal_detector_6_0_signal_detector_v1_0 U0
       (.enabled(enabled),
        .fifo_reset(fifo_reset),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tvalid(m00_axis_tvalid),
        .number_words(number_words),
        .signal_input(signal_input),
        .signal_state(signal_state),
        .trigger_input(trigger_input));
  VCC VCC
       (.P(\<const1> ));
endmodule

module design_1_signal_detector_6_0_signal_detector_v1_0
   (fifo_reset,
    m00_axis_tdata,
    m00_axis_tlast,
    signal_state,
    m00_axis_tvalid,
    signal_input,
    trigger_input,
    m00_axis_aclk,
    m00_axis_aresetn,
    enabled,
    number_words);
  output fifo_reset;
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  output signal_state;
  output m00_axis_tvalid;
  input signal_input;
  input trigger_input;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  input enabled;
  input [15:0]number_words;

  wire enabled;
  wire fifo_reset;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tvalid;
  wire [15:0]number_words;
  wire signal_input;
  wire signal_state;
  wire trigger_input;

  design_1_signal_detector_6_0_signal_detector_v1_0_M00_AXIS signal_detector_v1_0_M00_AXIS_inst
       (.enabled(enabled),
        .fifo_reset(fifo_reset),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tvalid(m00_axis_tvalid),
        .number_words(number_words),
        .signal_input(signal_input),
        .signal_state(signal_state),
        .trigger_input(trigger_input));
endmodule

module design_1_signal_detector_6_0_signal_detector_v1_0_M00_AXIS
   (fifo_reset,
    m00_axis_tdata,
    m00_axis_tlast,
    signal_state,
    m00_axis_tvalid,
    signal_input,
    trigger_input,
    m00_axis_aclk,
    m00_axis_aresetn,
    enabled,
    number_words);
  output fifo_reset;
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  output signal_state;
  output m00_axis_tvalid;
  input signal_input;
  input trigger_input;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  input enabled;
  input [15:0]number_words;

  wire \FSM_onehot_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[1]_i_2_n_0 ;
  wire \FSM_onehot_mst_exec_state[2]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[0] ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[2] ;
  wire axis_tlast0__13;
  wire axis_tlast_i_1_n_0;
  wire axis_tlast_i_3_n_0;
  wire axis_tlast_i_4_n_0;
  wire axis_tlast_i_5_n_0;
  wire axis_tvalid_i_1_n_0;
  wire \clock_counter[0]_i_1_n_0 ;
  wire \clock_counter[0]_i_4_n_0 ;
  wire [31:0]clock_counter_reg;
  wire \clock_counter_reg[0]_i_3_n_0 ;
  wire \clock_counter_reg[0]_i_3_n_1 ;
  wire \clock_counter_reg[0]_i_3_n_2 ;
  wire \clock_counter_reg[0]_i_3_n_3 ;
  wire \clock_counter_reg[0]_i_3_n_4 ;
  wire \clock_counter_reg[0]_i_3_n_5 ;
  wire \clock_counter_reg[0]_i_3_n_6 ;
  wire \clock_counter_reg[0]_i_3_n_7 ;
  wire \clock_counter_reg[12]_i_1_n_0 ;
  wire \clock_counter_reg[12]_i_1_n_1 ;
  wire \clock_counter_reg[12]_i_1_n_2 ;
  wire \clock_counter_reg[12]_i_1_n_3 ;
  wire \clock_counter_reg[12]_i_1_n_4 ;
  wire \clock_counter_reg[12]_i_1_n_5 ;
  wire \clock_counter_reg[12]_i_1_n_6 ;
  wire \clock_counter_reg[12]_i_1_n_7 ;
  wire \clock_counter_reg[16]_i_1_n_0 ;
  wire \clock_counter_reg[16]_i_1_n_1 ;
  wire \clock_counter_reg[16]_i_1_n_2 ;
  wire \clock_counter_reg[16]_i_1_n_3 ;
  wire \clock_counter_reg[16]_i_1_n_4 ;
  wire \clock_counter_reg[16]_i_1_n_5 ;
  wire \clock_counter_reg[16]_i_1_n_6 ;
  wire \clock_counter_reg[16]_i_1_n_7 ;
  wire \clock_counter_reg[20]_i_1_n_0 ;
  wire \clock_counter_reg[20]_i_1_n_1 ;
  wire \clock_counter_reg[20]_i_1_n_2 ;
  wire \clock_counter_reg[20]_i_1_n_3 ;
  wire \clock_counter_reg[20]_i_1_n_4 ;
  wire \clock_counter_reg[20]_i_1_n_5 ;
  wire \clock_counter_reg[20]_i_1_n_6 ;
  wire \clock_counter_reg[20]_i_1_n_7 ;
  wire \clock_counter_reg[24]_i_1_n_0 ;
  wire \clock_counter_reg[24]_i_1_n_1 ;
  wire \clock_counter_reg[24]_i_1_n_2 ;
  wire \clock_counter_reg[24]_i_1_n_3 ;
  wire \clock_counter_reg[24]_i_1_n_4 ;
  wire \clock_counter_reg[24]_i_1_n_5 ;
  wire \clock_counter_reg[24]_i_1_n_6 ;
  wire \clock_counter_reg[24]_i_1_n_7 ;
  wire \clock_counter_reg[28]_i_1_n_1 ;
  wire \clock_counter_reg[28]_i_1_n_2 ;
  wire \clock_counter_reg[28]_i_1_n_3 ;
  wire \clock_counter_reg[28]_i_1_n_4 ;
  wire \clock_counter_reg[28]_i_1_n_5 ;
  wire \clock_counter_reg[28]_i_1_n_6 ;
  wire \clock_counter_reg[28]_i_1_n_7 ;
  wire \clock_counter_reg[4]_i_1_n_0 ;
  wire \clock_counter_reg[4]_i_1_n_1 ;
  wire \clock_counter_reg[4]_i_1_n_2 ;
  wire \clock_counter_reg[4]_i_1_n_3 ;
  wire \clock_counter_reg[4]_i_1_n_4 ;
  wire \clock_counter_reg[4]_i_1_n_5 ;
  wire \clock_counter_reg[4]_i_1_n_6 ;
  wire \clock_counter_reg[4]_i_1_n_7 ;
  wire \clock_counter_reg[8]_i_1_n_0 ;
  wire \clock_counter_reg[8]_i_1_n_1 ;
  wire \clock_counter_reg[8]_i_1_n_2 ;
  wire \clock_counter_reg[8]_i_1_n_3 ;
  wire \clock_counter_reg[8]_i_1_n_4 ;
  wire \clock_counter_reg[8]_i_1_n_5 ;
  wire \clock_counter_reg[8]_i_1_n_6 ;
  wire \clock_counter_reg[8]_i_1_n_7 ;
  wire enabled;
  wire fifo_reset;
  wire fifo_reset_internal_i_1_n_0;
  wire \init_counter[2]_i_1_n_0 ;
  wire \init_counter[4]_i_1_n_0 ;
  wire [4:0]init_counter_reg;
  wire last_signal_input;
  wire last_signal_input1;
  wire last_signal_input_0;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tvalid;
  wire [15:1]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_i_3_n_0;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire mst_exec_state;
  wire [15:0]number_words;
  wire p_0_in;
  wire [15:0]p_1_in;
  wire [4:0]plusOp;
  wire signal_input;
  wire signal_state;
  wire stream_data_out0;
  wire trigger_input;
  wire [15:0]word_counter;
  wire \word_counter[15]_i_1_n_0 ;
  wire [3:3]\NLW_clock_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAAAA)) 
    \FSM_onehot_mst_exec_state[1]_i_1 
       (.I0(mst_exec_state),
        .I1(init_counter_reg[3]),
        .I2(\FSM_onehot_mst_exec_state[1]_i_2_n_0 ),
        .I3(init_counter_reg[4]),
        .I4(init_counter_reg[2]),
        .I5(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .O(\FSM_onehot_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_mst_exec_state[1]_i_2 
       (.I0(init_counter_reg[1]),
        .I1(init_counter_reg[0]),
        .O(\FSM_onehot_mst_exec_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_mst_exec_state[2]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .I1(\init_counter[4]_i_1_n_0 ),
        .O(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "state_idle:001,state_init_counter:100,state_send_stream:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .S(fifo_reset_internal_i_1_n_0));
  (* FSM_ENCODED_STATES = "state_idle:001,state_init_counter:100,state_send_stream:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state),
        .R(fifo_reset_internal_i_1_n_0));
  (* FSM_ENCODED_STATES = "state_idle:001,state_init_counter:100,state_send_stream:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .R(fifo_reset_internal_i_1_n_0));
  LUT6 #(
    .INIT(64'h808000808080C080)) 
    axis_tlast_i_1
       (.I0(m00_axis_tlast),
        .I1(mst_exec_state),
        .I2(trigger_input),
        .I3(signal_input),
        .I4(last_signal_input),
        .I5(axis_tlast0__13),
        .O(axis_tlast_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    axis_tlast_i_2
       (.I0(axis_tlast_i_3_n_0),
        .I1(word_counter[1]),
        .I2(word_counter[3]),
        .I3(word_counter[2]),
        .I4(axis_tlast_i_4_n_0),
        .I5(axis_tlast_i_5_n_0),
        .O(axis_tlast0__13));
  LUT4 #(
    .INIT(16'hFFFE)) 
    axis_tlast_i_3
       (.I0(word_counter[5]),
        .I1(word_counter[4]),
        .I2(word_counter[7]),
        .I3(word_counter[6]),
        .O(axis_tlast_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    axis_tlast_i_4
       (.I0(word_counter[13]),
        .I1(word_counter[12]),
        .I2(word_counter[15]),
        .I3(word_counter[14]),
        .O(axis_tlast_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    axis_tlast_i_5
       (.I0(word_counter[9]),
        .I1(word_counter[8]),
        .I2(word_counter[11]),
        .I3(word_counter[10]),
        .O(axis_tlast_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axis_tlast_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tlast_i_1_n_0),
        .Q(m00_axis_tlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axis_tvalid_i_1
       (.I0(signal_input),
        .I1(last_signal_input),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .O(axis_tvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axis_tvalid_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid_i_1_n_0),
        .Q(m00_axis_tvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \clock_counter[0]_i_1 
       (.I0(mst_exec_state),
        .I1(trigger_input),
        .I2(signal_input),
        .I3(last_signal_input),
        .O(\clock_counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \clock_counter[0]_i_2 
       (.I0(trigger_input),
        .I1(mst_exec_state),
        .O(last_signal_input1));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_4 
       (.I0(clock_counter_reg[0]),
        .O(\clock_counter[0]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \clock_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[0]_i_3_n_7 ),
        .Q(clock_counter_reg[0]),
        .S(\clock_counter[0]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\clock_counter_reg[0]_i_3_n_0 ,\clock_counter_reg[0]_i_3_n_1 ,\clock_counter_reg[0]_i_3_n_2 ,\clock_counter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clock_counter_reg[0]_i_3_n_4 ,\clock_counter_reg[0]_i_3_n_5 ,\clock_counter_reg[0]_i_3_n_6 ,\clock_counter_reg[0]_i_3_n_7 }),
        .S({clock_counter_reg[3:1],\clock_counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[10] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[8]_i_1_n_5 ),
        .Q(clock_counter_reg[10]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[11] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[8]_i_1_n_4 ),
        .Q(clock_counter_reg[11]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[12] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[12]_i_1_n_7 ),
        .Q(clock_counter_reg[12]),
        .R(\clock_counter[0]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[12]_i_1 
       (.CI(\clock_counter_reg[8]_i_1_n_0 ),
        .CO({\clock_counter_reg[12]_i_1_n_0 ,\clock_counter_reg[12]_i_1_n_1 ,\clock_counter_reg[12]_i_1_n_2 ,\clock_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[12]_i_1_n_4 ,\clock_counter_reg[12]_i_1_n_5 ,\clock_counter_reg[12]_i_1_n_6 ,\clock_counter_reg[12]_i_1_n_7 }),
        .S(clock_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[13] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[12]_i_1_n_6 ),
        .Q(clock_counter_reg[13]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[14] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[12]_i_1_n_5 ),
        .Q(clock_counter_reg[14]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[15] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[12]_i_1_n_4 ),
        .Q(clock_counter_reg[15]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[16] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[16]_i_1_n_7 ),
        .Q(clock_counter_reg[16]),
        .R(\clock_counter[0]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[16]_i_1 
       (.CI(\clock_counter_reg[12]_i_1_n_0 ),
        .CO({\clock_counter_reg[16]_i_1_n_0 ,\clock_counter_reg[16]_i_1_n_1 ,\clock_counter_reg[16]_i_1_n_2 ,\clock_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[16]_i_1_n_4 ,\clock_counter_reg[16]_i_1_n_5 ,\clock_counter_reg[16]_i_1_n_6 ,\clock_counter_reg[16]_i_1_n_7 }),
        .S(clock_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[17] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[16]_i_1_n_6 ),
        .Q(clock_counter_reg[17]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[18] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[16]_i_1_n_5 ),
        .Q(clock_counter_reg[18]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[19] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[16]_i_1_n_4 ),
        .Q(clock_counter_reg[19]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[0]_i_3_n_6 ),
        .Q(clock_counter_reg[1]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[20] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[20]_i_1_n_7 ),
        .Q(clock_counter_reg[20]),
        .R(\clock_counter[0]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[20]_i_1 
       (.CI(\clock_counter_reg[16]_i_1_n_0 ),
        .CO({\clock_counter_reg[20]_i_1_n_0 ,\clock_counter_reg[20]_i_1_n_1 ,\clock_counter_reg[20]_i_1_n_2 ,\clock_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[20]_i_1_n_4 ,\clock_counter_reg[20]_i_1_n_5 ,\clock_counter_reg[20]_i_1_n_6 ,\clock_counter_reg[20]_i_1_n_7 }),
        .S(clock_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[21] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[20]_i_1_n_6 ),
        .Q(clock_counter_reg[21]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[22] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[20]_i_1_n_5 ),
        .Q(clock_counter_reg[22]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[23] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[20]_i_1_n_4 ),
        .Q(clock_counter_reg[23]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[24] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[24]_i_1_n_7 ),
        .Q(clock_counter_reg[24]),
        .R(\clock_counter[0]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[24]_i_1 
       (.CI(\clock_counter_reg[20]_i_1_n_0 ),
        .CO({\clock_counter_reg[24]_i_1_n_0 ,\clock_counter_reg[24]_i_1_n_1 ,\clock_counter_reg[24]_i_1_n_2 ,\clock_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[24]_i_1_n_4 ,\clock_counter_reg[24]_i_1_n_5 ,\clock_counter_reg[24]_i_1_n_6 ,\clock_counter_reg[24]_i_1_n_7 }),
        .S(clock_counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[25] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[24]_i_1_n_6 ),
        .Q(clock_counter_reg[25]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[26] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[24]_i_1_n_5 ),
        .Q(clock_counter_reg[26]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[27] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[24]_i_1_n_4 ),
        .Q(clock_counter_reg[27]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[28] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[28]_i_1_n_7 ),
        .Q(clock_counter_reg[28]),
        .R(\clock_counter[0]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[28]_i_1 
       (.CI(\clock_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_clock_counter_reg[28]_i_1_CO_UNCONNECTED [3],\clock_counter_reg[28]_i_1_n_1 ,\clock_counter_reg[28]_i_1_n_2 ,\clock_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[28]_i_1_n_4 ,\clock_counter_reg[28]_i_1_n_5 ,\clock_counter_reg[28]_i_1_n_6 ,\clock_counter_reg[28]_i_1_n_7 }),
        .S(clock_counter_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[29] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[28]_i_1_n_6 ),
        .Q(clock_counter_reg[29]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[0]_i_3_n_5 ),
        .Q(clock_counter_reg[2]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[30] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[28]_i_1_n_5 ),
        .Q(clock_counter_reg[30]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[31] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[28]_i_1_n_4 ),
        .Q(clock_counter_reg[31]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[0]_i_3_n_4 ),
        .Q(clock_counter_reg[3]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[4]_i_1_n_7 ),
        .Q(clock_counter_reg[4]),
        .R(\clock_counter[0]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[4]_i_1 
       (.CI(\clock_counter_reg[0]_i_3_n_0 ),
        .CO({\clock_counter_reg[4]_i_1_n_0 ,\clock_counter_reg[4]_i_1_n_1 ,\clock_counter_reg[4]_i_1_n_2 ,\clock_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[4]_i_1_n_4 ,\clock_counter_reg[4]_i_1_n_5 ,\clock_counter_reg[4]_i_1_n_6 ,\clock_counter_reg[4]_i_1_n_7 }),
        .S(clock_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[5] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[4]_i_1_n_6 ),
        .Q(clock_counter_reg[5]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[6] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[4]_i_1_n_5 ),
        .Q(clock_counter_reg[6]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[7] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[4]_i_1_n_4 ),
        .Q(clock_counter_reg[7]),
        .R(\clock_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[8] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[8]_i_1_n_7 ),
        .Q(clock_counter_reg[8]),
        .R(\clock_counter[0]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[8]_i_1 
       (.CI(\clock_counter_reg[4]_i_1_n_0 ),
        .CO({\clock_counter_reg[8]_i_1_n_0 ,\clock_counter_reg[8]_i_1_n_1 ,\clock_counter_reg[8]_i_1_n_2 ,\clock_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[8]_i_1_n_4 ,\clock_counter_reg[8]_i_1_n_5 ,\clock_counter_reg[8]_i_1_n_6 ,\clock_counter_reg[8]_i_1_n_7 }),
        .S(clock_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[9] 
       (.C(m00_axis_aclk),
        .CE(last_signal_input1),
        .D(\clock_counter_reg[8]_i_1_n_6 ),
        .Q(clock_counter_reg[9]),
        .R(\clock_counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    fifo_reset_internal_i_1
       (.I0(m00_axis_aresetn),
        .I1(enabled),
        .O(fifo_reset_internal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_reset_internal_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state),
        .Q(fifo_reset),
        .R(fifo_reset_internal_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_counter[0]_i_1 
       (.I0(init_counter_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
       (.I0(init_counter_reg[0]),
        .I1(init_counter_reg[1]),
        .I2(init_counter_reg[2]),
        .O(\init_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_counter[3]_i_1 
       (.I0(init_counter_reg[1]),
        .I1(init_counter_reg[0]),
        .I2(init_counter_reg[2]),
        .I3(init_counter_reg[3]),
        .O(plusOp[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \init_counter[4]_i_1 
       (.I0(\FSM_onehot_mst_exec_state_reg_n_0_[2] ),
        .I1(init_counter_reg[2]),
        .I2(init_counter_reg[4]),
        .I3(init_counter_reg[0]),
        .I4(init_counter_reg[1]),
        .I5(init_counter_reg[3]),
        .O(\init_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_counter[4]_i_2 
       (.I0(init_counter_reg[2]),
        .I1(init_counter_reg[0]),
        .I2(init_counter_reg[1]),
        .I3(init_counter_reg[3]),
        .I4(init_counter_reg[4]),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(\init_counter[4]_i_1_n_0 ),
        .D(plusOp[0]),
        .Q(init_counter_reg[0]),
        .R(fifo_reset_internal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(\init_counter[4]_i_1_n_0 ),
        .D(plusOp[1]),
        .Q(init_counter_reg[1]),
        .R(fifo_reset_internal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(\init_counter[4]_i_1_n_0 ),
        .D(\init_counter[2]_i_1_n_0 ),
        .Q(init_counter_reg[2]),
        .R(fifo_reset_internal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(\init_counter[4]_i_1_n_0 ),
        .D(plusOp[3]),
        .Q(init_counter_reg[3]),
        .R(fifo_reset_internal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(\init_counter[4]_i_1_n_0 ),
        .D(plusOp[4]),
        .Q(init_counter_reg[4]),
        .R(fifo_reset_internal_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    last_signal_input_i_1
       (.I0(signal_input),
        .I1(mst_exec_state),
        .I2(trigger_input),
        .O(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    last_signal_input_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(last_signal_input_0),
        .Q(last_signal_input),
        .R(1'b0));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(word_counter[0]),
        .DI(word_counter[4:1]),
        .O(minusOp[4:1]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(word_counter[8:5]),
        .O(minusOp[8:5]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(word_counter[8]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(word_counter[7]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(word_counter[6]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(word_counter[5]),
        .O(minusOp_carry__0_i_4_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(word_counter[12:9]),
        .O(minusOp[12:9]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(word_counter[12]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(word_counter[11]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(word_counter[10]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(word_counter[9]),
        .O(minusOp_carry__1_i_4_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({NLW_minusOp_carry__2_CO_UNCONNECTED[3:2],minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,word_counter[14:13]}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3],minusOp[15:13]}),
        .S({1'b0,minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(word_counter[15]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(word_counter[14]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(word_counter[13]),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(word_counter[4]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(word_counter[3]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(word_counter[2]),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(word_counter[1]),
        .O(minusOp_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    signal_state_INST_0
       (.I0(mst_exec_state),
        .I1(trigger_input),
        .I2(m00_axis_tvalid),
        .O(signal_state));
  LUT2 #(
    .INIT(4'h7)) 
    \stream_data_out[31]_i_1 
       (.I0(mst_exec_state),
        .I1(trigger_input),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h4)) 
    \stream_data_out[31]_i_2 
       (.I0(last_signal_input),
        .I1(signal_input),
        .O(stream_data_out0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[0] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[0]),
        .Q(m00_axis_tdata[0]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[10] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[10]),
        .Q(m00_axis_tdata[10]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[11] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[11]),
        .Q(m00_axis_tdata[11]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[12] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[12]),
        .Q(m00_axis_tdata[12]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[13] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[13]),
        .Q(m00_axis_tdata[13]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[14] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[14]),
        .Q(m00_axis_tdata[14]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[15] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[15]),
        .Q(m00_axis_tdata[15]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[16] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[16]),
        .Q(m00_axis_tdata[16]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[17] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[17]),
        .Q(m00_axis_tdata[17]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[18] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[18]),
        .Q(m00_axis_tdata[18]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[19] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[19]),
        .Q(m00_axis_tdata[19]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[1] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[1]),
        .Q(m00_axis_tdata[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[20] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[20]),
        .Q(m00_axis_tdata[20]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[21] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[21]),
        .Q(m00_axis_tdata[21]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[22] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[22]),
        .Q(m00_axis_tdata[22]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[23] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[23]),
        .Q(m00_axis_tdata[23]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[24] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[24]),
        .Q(m00_axis_tdata[24]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[25] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[25]),
        .Q(m00_axis_tdata[25]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[26] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[26]),
        .Q(m00_axis_tdata[26]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[27] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[27]),
        .Q(m00_axis_tdata[27]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[28] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[28]),
        .Q(m00_axis_tdata[28]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[29] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[29]),
        .Q(m00_axis_tdata[29]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[2] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[2]),
        .Q(m00_axis_tdata[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[30] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[30]),
        .Q(m00_axis_tdata[30]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[31] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[31]),
        .Q(m00_axis_tdata[31]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[3] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[3]),
        .Q(m00_axis_tdata[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[4] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[4]),
        .Q(m00_axis_tdata[4]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[5] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[5]),
        .Q(m00_axis_tdata[5]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[6] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[6]),
        .Q(m00_axis_tdata[6]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[7] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[7]),
        .Q(m00_axis_tdata[7]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[8] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[8]),
        .Q(m00_axis_tdata[8]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[9] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(clock_counter_reg[9]),
        .Q(m00_axis_tdata[9]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h7FFF4000)) 
    \word_counter[0]_i_1 
       (.I0(word_counter[0]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[10]_i_1 
       (.I0(minusOp[10]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[10]),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[11]_i_1 
       (.I0(minusOp[11]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[11]),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[12]_i_1 
       (.I0(minusOp[12]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[12]),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[13]_i_1 
       (.I0(minusOp[13]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[13]),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[14]_i_1 
       (.I0(minusOp[14]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[14]),
        .O(p_1_in[14]));
  LUT4 #(
    .INIT(16'h2FFF)) 
    \word_counter[15]_i_1 
       (.I0(signal_input),
        .I1(last_signal_input),
        .I2(mst_exec_state),
        .I3(trigger_input),
        .O(\word_counter[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[15]_i_2 
       (.I0(minusOp[15]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[15]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[1]_i_1 
       (.I0(minusOp[1]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[1]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[2]_i_1 
       (.I0(minusOp[2]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[2]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[3]_i_1 
       (.I0(minusOp[3]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[4]_i_1 
       (.I0(minusOp[4]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[4]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[5]_i_1 
       (.I0(minusOp[5]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[5]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[6]_i_1 
       (.I0(minusOp[6]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[6]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[7]_i_1 
       (.I0(minusOp[7]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[7]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[8]_i_1 
       (.I0(minusOp[8]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[8]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \word_counter[9]_i_1 
       (.I0(minusOp[9]),
        .I1(axis_tlast0__13),
        .I2(trigger_input),
        .I3(mst_exec_state),
        .I4(number_words[9]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(word_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[10] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(word_counter[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[11] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(word_counter[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[12] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(word_counter[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[13] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(word_counter[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[14] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(word_counter[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[15] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(word_counter[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(word_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(word_counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(word_counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(word_counter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[5] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(word_counter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[6] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(word_counter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[7] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(word_counter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[8] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(word_counter[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[9] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(word_counter[9]),
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
