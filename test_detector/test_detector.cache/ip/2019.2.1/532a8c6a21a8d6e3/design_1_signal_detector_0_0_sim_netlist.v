// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Wed Dec 25 16:29:44 2019
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_signal_detector_0_0_sim_netlist.v
// Design      : design_1_signal_detector_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_signal_detector_0_0,signal_detector_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "signal_detector_v1_0,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (enabled,
    signal_input,
    signal_state,
    fifo_reset,
    number_words,
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
  (* x_interface_info = "xilinx.com:signal:reset:1.0 fifo_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME fifo_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output fifo_reset;
  input [15:0]number_words;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clock, INSERT_VIP 0" *) input m00_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clock, LAYERED_METADATA undef, INSERT_VIP 0" *) output m00_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input m00_axis_tready;

  wire \<const1> ;
  wire enabled;
  wire fifo_reset;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [15:0]number_words;
  wire signal_input;
  wire signal_state;

  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signal_detector_v1_0 U0
       (.enabled(enabled),
        .fifo_reset(fifo_reset),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .number_words(number_words),
        .signal_input(signal_input),
        .signal_state(signal_state));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signal_detector_v1_0
   (fifo_reset,
    m00_axis_tlast,
    m00_axis_tdata,
    m00_axis_tvalid,
    signal_state,
    number_words,
    m00_axis_aclk,
    signal_input,
    m00_axis_aresetn,
    enabled,
    m00_axis_tready);
  output fifo_reset;
  output m00_axis_tlast;
  output [31:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output signal_state;
  input [15:0]number_words;
  input m00_axis_aclk;
  input signal_input;
  input m00_axis_aresetn;
  input enabled;
  input m00_axis_tready;

  wire enabled;
  wire fifo_reset;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [15:0]number_words;
  wire signal_input;
  wire signal_state;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signal_detector_v1_0_M00_AXIS signal_detector_v1_0_M00_AXIS_inst
       (.enabled(enabled),
        .fifo_reset(fifo_reset),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .number_words(number_words),
        .signal_input(signal_input),
        .signal_state(signal_state));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signal_detector_v1_0_M00_AXIS
   (fifo_reset,
    m00_axis_tlast,
    m00_axis_tdata,
    m00_axis_tvalid,
    signal_state,
    number_words,
    m00_axis_aclk,
    signal_input,
    m00_axis_aresetn,
    enabled,
    m00_axis_tready);
  output fifo_reset;
  output m00_axis_tlast;
  output [31:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output signal_state;
  input [15:0]number_words;
  input m00_axis_aclk;
  input signal_input;
  input m00_axis_aresetn;
  input enabled;
  input m00_axis_tready;

  wire \FSM_onehot_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[2]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[2]_i_2_n_0 ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[0] ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[1] ;
  wire axis_tlast1;
  wire axis_tlast1_carry__0_i_1_n_0;
  wire axis_tlast1_carry__0_i_2_n_0;
  wire axis_tlast1_carry__0_n_3;
  wire axis_tlast1_carry_i_1_n_0;
  wire axis_tlast1_carry_i_2_n_0;
  wire axis_tlast1_carry_i_3_n_0;
  wire axis_tlast1_carry_i_4_n_0;
  wire axis_tlast1_carry_n_0;
  wire axis_tlast1_carry_n_1;
  wire axis_tlast1_carry_n_2;
  wire axis_tlast1_carry_n_3;
  wire axis_tvalid_calculated0;
  wire axis_tvalid_calculated_i_1_n_0;
  wire axis_tvalid_calculated_previous;
  wire axis_tvalid_calculated_reg_n_0;
  wire \clock_counter[0]_i_1_n_0 ;
  wire \clock_counter[1]_i_1_n_0 ;
  wire \clock_counter[31]_i_1_n_0 ;
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
  wire \clock_counter_reg[28]_i_1_n_0 ;
  wire \clock_counter_reg[28]_i_1_n_1 ;
  wire \clock_counter_reg[28]_i_1_n_2 ;
  wire \clock_counter_reg[28]_i_1_n_3 ;
  wire \clock_counter_reg[28]_i_1_n_4 ;
  wire \clock_counter_reg[28]_i_1_n_5 ;
  wire \clock_counter_reg[28]_i_1_n_6 ;
  wire \clock_counter_reg[28]_i_1_n_7 ;
  wire \clock_counter_reg[31]_i_2_n_2 ;
  wire \clock_counter_reg[31]_i_2_n_3 ;
  wire \clock_counter_reg[31]_i_2_n_5 ;
  wire \clock_counter_reg[31]_i_2_n_6 ;
  wire \clock_counter_reg[31]_i_2_n_7 ;
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
  wire \clock_counter_reg_n_0_[0] ;
  wire \clock_counter_reg_n_0_[10] ;
  wire \clock_counter_reg_n_0_[11] ;
  wire \clock_counter_reg_n_0_[12] ;
  wire \clock_counter_reg_n_0_[13] ;
  wire \clock_counter_reg_n_0_[14] ;
  wire \clock_counter_reg_n_0_[15] ;
  wire \clock_counter_reg_n_0_[16] ;
  wire \clock_counter_reg_n_0_[17] ;
  wire \clock_counter_reg_n_0_[18] ;
  wire \clock_counter_reg_n_0_[19] ;
  wire \clock_counter_reg_n_0_[1] ;
  wire \clock_counter_reg_n_0_[20] ;
  wire \clock_counter_reg_n_0_[21] ;
  wire \clock_counter_reg_n_0_[22] ;
  wire \clock_counter_reg_n_0_[23] ;
  wire \clock_counter_reg_n_0_[24] ;
  wire \clock_counter_reg_n_0_[25] ;
  wire \clock_counter_reg_n_0_[26] ;
  wire \clock_counter_reg_n_0_[27] ;
  wire \clock_counter_reg_n_0_[28] ;
  wire \clock_counter_reg_n_0_[29] ;
  wire \clock_counter_reg_n_0_[2] ;
  wire \clock_counter_reg_n_0_[30] ;
  wire \clock_counter_reg_n_0_[31] ;
  wire \clock_counter_reg_n_0_[3] ;
  wire \clock_counter_reg_n_0_[4] ;
  wire \clock_counter_reg_n_0_[5] ;
  wire \clock_counter_reg_n_0_[6] ;
  wire \clock_counter_reg_n_0_[7] ;
  wire \clock_counter_reg_n_0_[8] ;
  wire \clock_counter_reg_n_0_[9] ;
  wire enabled;
  wire fifo_reset;
  wire fifo_reset_internal;
  wire fifo_reset_internal_i_1_n_0;
  wire init_counter;
  wire [4:0]init_counter_reg;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [15:0]number_words;
  wire [4:0]plusOp;
  wire \signal_counter[0]_i_1_n_0 ;
  wire \signal_counter[1]_i_1_n_0 ;
  wire \signal_counter_reg_n_0_[0] ;
  wire \signal_counter_reg_n_0_[1] ;
  wire signal_input;
  wire signal_input_previous;
  wire signal_state;
  wire tlast_counter;
  wire tlast_counter1_carry__0_i_1_n_0;
  wire tlast_counter1_carry__0_i_2_n_0;
  wire tlast_counter1_carry__0_i_3_n_0;
  wire tlast_counter1_carry__0_i_4_n_0;
  wire tlast_counter1_carry__0_i_5_n_0;
  wire tlast_counter1_carry__0_i_6_n_0;
  wire tlast_counter1_carry__0_i_7_n_0;
  wire tlast_counter1_carry__0_i_8_n_0;
  wire tlast_counter1_carry__0_n_0;
  wire tlast_counter1_carry__0_n_1;
  wire tlast_counter1_carry__0_n_2;
  wire tlast_counter1_carry__0_n_3;
  wire tlast_counter1_carry_i_1_n_0;
  wire tlast_counter1_carry_i_2_n_0;
  wire tlast_counter1_carry_i_3_n_0;
  wire tlast_counter1_carry_i_4_n_0;
  wire tlast_counter1_carry_i_5_n_0;
  wire tlast_counter1_carry_i_6_n_0;
  wire tlast_counter1_carry_i_7_n_0;
  wire tlast_counter1_carry_i_8_n_0;
  wire tlast_counter1_carry_n_0;
  wire tlast_counter1_carry_n_1;
  wire tlast_counter1_carry_n_2;
  wire tlast_counter1_carry_n_3;
  wire \tlast_counter[0]_i_4_n_0 ;
  wire [15:0]tlast_counter_reg;
  wire \tlast_counter_reg[0]_i_3_n_0 ;
  wire \tlast_counter_reg[0]_i_3_n_1 ;
  wire \tlast_counter_reg[0]_i_3_n_2 ;
  wire \tlast_counter_reg[0]_i_3_n_3 ;
  wire \tlast_counter_reg[0]_i_3_n_4 ;
  wire \tlast_counter_reg[0]_i_3_n_5 ;
  wire \tlast_counter_reg[0]_i_3_n_6 ;
  wire \tlast_counter_reg[0]_i_3_n_7 ;
  wire \tlast_counter_reg[12]_i_1_n_1 ;
  wire \tlast_counter_reg[12]_i_1_n_2 ;
  wire \tlast_counter_reg[12]_i_1_n_3 ;
  wire \tlast_counter_reg[12]_i_1_n_4 ;
  wire \tlast_counter_reg[12]_i_1_n_5 ;
  wire \tlast_counter_reg[12]_i_1_n_6 ;
  wire \tlast_counter_reg[12]_i_1_n_7 ;
  wire \tlast_counter_reg[4]_i_1_n_0 ;
  wire \tlast_counter_reg[4]_i_1_n_1 ;
  wire \tlast_counter_reg[4]_i_1_n_2 ;
  wire \tlast_counter_reg[4]_i_1_n_3 ;
  wire \tlast_counter_reg[4]_i_1_n_4 ;
  wire \tlast_counter_reg[4]_i_1_n_5 ;
  wire \tlast_counter_reg[4]_i_1_n_6 ;
  wire \tlast_counter_reg[4]_i_1_n_7 ;
  wire \tlast_counter_reg[8]_i_1_n_0 ;
  wire \tlast_counter_reg[8]_i_1_n_1 ;
  wire \tlast_counter_reg[8]_i_1_n_2 ;
  wire \tlast_counter_reg[8]_i_1_n_3 ;
  wire \tlast_counter_reg[8]_i_1_n_4 ;
  wire \tlast_counter_reg[8]_i_1_n_5 ;
  wire \tlast_counter_reg[8]_i_1_n_6 ;
  wire \tlast_counter_reg[8]_i_1_n_7 ;
  wire [3:0]NLW_axis_tlast1_carry_O_UNCONNECTED;
  wire [3:2]NLW_axis_tlast1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_axis_tlast1_carry__0_O_UNCONNECTED;
  wire [3:2]\NLW_clock_counter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_clock_counter_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_tlast_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_tlast_counter1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_tlast_counter_reg[12]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_mst_exec_state[1]_i_1 
       (.I0(init_counter),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .O(\FSM_onehot_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_mst_exec_state[2]_i_1 
       (.I0(\FSM_onehot_mst_exec_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .I2(fifo_reset_internal),
        .O(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[0] ),
        .S(fifo_reset_internal_i_1_n_0));
  (* FSM_ENCODED_STATES = "state_idle:001,state_init_counter:010,state_send_stream:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_mst_exec_state_reg_n_0_[1] ),
        .R(fifo_reset_internal_i_1_n_0));
  (* FSM_ENCODED_STATES = "state_idle:001,state_init_counter:010,state_send_stream:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_mst_exec_state_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_mst_exec_state[2]_i_1_n_0 ),
        .Q(fifo_reset_internal),
        .R(fifo_reset_internal_i_1_n_0));
  CARRY4 axis_tlast1_carry
       (.CI(1'b0),
        .CO({axis_tlast1_carry_n_0,axis_tlast1_carry_n_1,axis_tlast1_carry_n_2,axis_tlast1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axis_tlast1_carry_O_UNCONNECTED[3:0]),
        .S({axis_tlast1_carry_i_1_n_0,axis_tlast1_carry_i_2_n_0,axis_tlast1_carry_i_3_n_0,axis_tlast1_carry_i_4_n_0}));
  CARRY4 axis_tlast1_carry__0
       (.CI(axis_tlast1_carry_n_0),
        .CO({NLW_axis_tlast1_carry__0_CO_UNCONNECTED[3:2],axis_tlast1,axis_tlast1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axis_tlast1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,axis_tlast1_carry__0_i_1_n_0,axis_tlast1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    axis_tlast1_carry__0_i_1
       (.I0(number_words[15]),
        .I1(tlast_counter_reg[15]),
        .O(axis_tlast1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast1_carry__0_i_2
       (.I0(tlast_counter_reg[13]),
        .I1(number_words[13]),
        .I2(tlast_counter_reg[12]),
        .I3(number_words[12]),
        .I4(number_words[14]),
        .I5(tlast_counter_reg[14]),
        .O(axis_tlast1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast1_carry_i_1
       (.I0(tlast_counter_reg[9]),
        .I1(number_words[9]),
        .I2(tlast_counter_reg[11]),
        .I3(number_words[11]),
        .I4(number_words[10]),
        .I5(tlast_counter_reg[10]),
        .O(axis_tlast1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast1_carry_i_2
       (.I0(tlast_counter_reg[7]),
        .I1(number_words[7]),
        .I2(tlast_counter_reg[6]),
        .I3(number_words[6]),
        .I4(number_words[8]),
        .I5(tlast_counter_reg[8]),
        .O(axis_tlast1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast1_carry_i_3
       (.I0(tlast_counter_reg[3]),
        .I1(number_words[3]),
        .I2(tlast_counter_reg[5]),
        .I3(number_words[5]),
        .I4(number_words[4]),
        .I5(tlast_counter_reg[4]),
        .O(axis_tlast1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast1_carry_i_4
       (.I0(tlast_counter_reg[1]),
        .I1(number_words[1]),
        .I2(tlast_counter_reg[0]),
        .I3(number_words[0]),
        .I4(number_words[2]),
        .I5(tlast_counter_reg[2]),
        .O(axis_tlast1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    axis_tvalid_calculated_i_1
       (.I0(signal_input_previous),
        .I1(signal_input),
        .I2(fifo_reset_internal),
        .O(axis_tvalid_calculated_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axis_tvalid_calculated_previous_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid_calculated_reg_n_0),
        .Q(axis_tvalid_calculated_previous),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    axis_tvalid_calculated_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid_calculated_i_1_n_0),
        .Q(axis_tvalid_calculated_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[0]_i_1 
       (.I0(\clock_counter_reg_n_0_[0] ),
        .O(\clock_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \clock_counter[1]_i_1 
       (.I0(axis_tvalid_calculated_previous),
        .I1(fifo_reset_internal),
        .I2(\clock_counter_reg[4]_i_1_n_7 ),
        .O(\clock_counter[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \clock_counter[31]_i_1 
       (.I0(axis_tvalid_calculated_previous),
        .I1(fifo_reset_internal),
        .O(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter[0]_i_1_n_0 ),
        .Q(\clock_counter_reg_n_0_[0] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[12]_i_1_n_6 ),
        .Q(\clock_counter_reg_n_0_[10] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[12]_i_1_n_5 ),
        .Q(\clock_counter_reg_n_0_[11] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[12]_i_1_n_4 ),
        .Q(\clock_counter_reg_n_0_[12] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[12]_i_1 
       (.CI(\clock_counter_reg[8]_i_1_n_0 ),
        .CO({\clock_counter_reg[12]_i_1_n_0 ,\clock_counter_reg[12]_i_1_n_1 ,\clock_counter_reg[12]_i_1_n_2 ,\clock_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[12]_i_1_n_4 ,\clock_counter_reg[12]_i_1_n_5 ,\clock_counter_reg[12]_i_1_n_6 ,\clock_counter_reg[12]_i_1_n_7 }),
        .S({\clock_counter_reg_n_0_[12] ,\clock_counter_reg_n_0_[11] ,\clock_counter_reg_n_0_[10] ,\clock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[16]_i_1_n_7 ),
        .Q(\clock_counter_reg_n_0_[13] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[16]_i_1_n_6 ),
        .Q(\clock_counter_reg_n_0_[14] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[16]_i_1_n_5 ),
        .Q(\clock_counter_reg_n_0_[15] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[16]_i_1_n_4 ),
        .Q(\clock_counter_reg_n_0_[16] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[16]_i_1 
       (.CI(\clock_counter_reg[12]_i_1_n_0 ),
        .CO({\clock_counter_reg[16]_i_1_n_0 ,\clock_counter_reg[16]_i_1_n_1 ,\clock_counter_reg[16]_i_1_n_2 ,\clock_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[16]_i_1_n_4 ,\clock_counter_reg[16]_i_1_n_5 ,\clock_counter_reg[16]_i_1_n_6 ,\clock_counter_reg[16]_i_1_n_7 }),
        .S({\clock_counter_reg_n_0_[16] ,\clock_counter_reg_n_0_[15] ,\clock_counter_reg_n_0_[14] ,\clock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[20]_i_1_n_7 ),
        .Q(\clock_counter_reg_n_0_[17] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[20]_i_1_n_6 ),
        .Q(\clock_counter_reg_n_0_[18] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[20]_i_1_n_5 ),
        .Q(\clock_counter_reg_n_0_[19] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter[1]_i_1_n_0 ),
        .Q(\clock_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[20]_i_1_n_4 ),
        .Q(\clock_counter_reg_n_0_[20] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[20]_i_1 
       (.CI(\clock_counter_reg[16]_i_1_n_0 ),
        .CO({\clock_counter_reg[20]_i_1_n_0 ,\clock_counter_reg[20]_i_1_n_1 ,\clock_counter_reg[20]_i_1_n_2 ,\clock_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[20]_i_1_n_4 ,\clock_counter_reg[20]_i_1_n_5 ,\clock_counter_reg[20]_i_1_n_6 ,\clock_counter_reg[20]_i_1_n_7 }),
        .S({\clock_counter_reg_n_0_[20] ,\clock_counter_reg_n_0_[19] ,\clock_counter_reg_n_0_[18] ,\clock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[24]_i_1_n_7 ),
        .Q(\clock_counter_reg_n_0_[21] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[24]_i_1_n_6 ),
        .Q(\clock_counter_reg_n_0_[22] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[24]_i_1_n_5 ),
        .Q(\clock_counter_reg_n_0_[23] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[24] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[24]_i_1_n_4 ),
        .Q(\clock_counter_reg_n_0_[24] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[24]_i_1 
       (.CI(\clock_counter_reg[20]_i_1_n_0 ),
        .CO({\clock_counter_reg[24]_i_1_n_0 ,\clock_counter_reg[24]_i_1_n_1 ,\clock_counter_reg[24]_i_1_n_2 ,\clock_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[24]_i_1_n_4 ,\clock_counter_reg[24]_i_1_n_5 ,\clock_counter_reg[24]_i_1_n_6 ,\clock_counter_reg[24]_i_1_n_7 }),
        .S({\clock_counter_reg_n_0_[24] ,\clock_counter_reg_n_0_[23] ,\clock_counter_reg_n_0_[22] ,\clock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[25] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[28]_i_1_n_7 ),
        .Q(\clock_counter_reg_n_0_[25] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[26] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[28]_i_1_n_6 ),
        .Q(\clock_counter_reg_n_0_[26] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[27] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[28]_i_1_n_5 ),
        .Q(\clock_counter_reg_n_0_[27] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[28] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[28]_i_1_n_4 ),
        .Q(\clock_counter_reg_n_0_[28] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[28]_i_1 
       (.CI(\clock_counter_reg[24]_i_1_n_0 ),
        .CO({\clock_counter_reg[28]_i_1_n_0 ,\clock_counter_reg[28]_i_1_n_1 ,\clock_counter_reg[28]_i_1_n_2 ,\clock_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[28]_i_1_n_4 ,\clock_counter_reg[28]_i_1_n_5 ,\clock_counter_reg[28]_i_1_n_6 ,\clock_counter_reg[28]_i_1_n_7 }),
        .S({\clock_counter_reg_n_0_[28] ,\clock_counter_reg_n_0_[27] ,\clock_counter_reg_n_0_[26] ,\clock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[29] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[31]_i_2_n_7 ),
        .Q(\clock_counter_reg_n_0_[29] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[4]_i_1_n_6 ),
        .Q(\clock_counter_reg_n_0_[2] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[30] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[31]_i_2_n_6 ),
        .Q(\clock_counter_reg_n_0_[30] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[31] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[31]_i_2_n_5 ),
        .Q(\clock_counter_reg_n_0_[31] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[31]_i_2 
       (.CI(\clock_counter_reg[28]_i_1_n_0 ),
        .CO({\NLW_clock_counter_reg[31]_i_2_CO_UNCONNECTED [3:2],\clock_counter_reg[31]_i_2_n_2 ,\clock_counter_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clock_counter_reg[31]_i_2_O_UNCONNECTED [3],\clock_counter_reg[31]_i_2_n_5 ,\clock_counter_reg[31]_i_2_n_6 ,\clock_counter_reg[31]_i_2_n_7 }),
        .S({1'b0,\clock_counter_reg_n_0_[31] ,\clock_counter_reg_n_0_[30] ,\clock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[4]_i_1_n_5 ),
        .Q(\clock_counter_reg_n_0_[3] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[4]_i_1_n_4 ),
        .Q(\clock_counter_reg_n_0_[4] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\clock_counter_reg[4]_i_1_n_0 ,\clock_counter_reg[4]_i_1_n_1 ,\clock_counter_reg[4]_i_1_n_2 ,\clock_counter_reg[4]_i_1_n_3 }),
        .CYINIT(\clock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[4]_i_1_n_4 ,\clock_counter_reg[4]_i_1_n_5 ,\clock_counter_reg[4]_i_1_n_6 ,\clock_counter_reg[4]_i_1_n_7 }),
        .S({\clock_counter_reg_n_0_[4] ,\clock_counter_reg_n_0_[3] ,\clock_counter_reg_n_0_[2] ,\clock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[8]_i_1_n_7 ),
        .Q(\clock_counter_reg_n_0_[5] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[8]_i_1_n_6 ),
        .Q(\clock_counter_reg_n_0_[6] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[8]_i_1_n_5 ),
        .Q(\clock_counter_reg_n_0_[7] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[8]_i_1_n_4 ),
        .Q(\clock_counter_reg_n_0_[8] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[8]_i_1 
       (.CI(\clock_counter_reg[4]_i_1_n_0 ),
        .CO({\clock_counter_reg[8]_i_1_n_0 ,\clock_counter_reg[8]_i_1_n_1 ,\clock_counter_reg[8]_i_1_n_2 ,\clock_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clock_counter_reg[8]_i_1_n_4 ,\clock_counter_reg[8]_i_1_n_5 ,\clock_counter_reg[8]_i_1_n_6 ,\clock_counter_reg[8]_i_1_n_7 }),
        .S({\clock_counter_reg_n_0_[8] ,\clock_counter_reg_n_0_[7] ,\clock_counter_reg_n_0_[6] ,\clock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg[12]_i_1_n_7 ),
        .Q(\clock_counter_reg_n_0_[9] ),
        .R(\clock_counter[31]_i_1_n_0 ));
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
        .D(fifo_reset_internal),
        .Q(fifo_reset),
        .R(fifo_reset_internal_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_counter[0]_i_1 
       (.I0(init_counter_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_counter[1]_i_1 
       (.I0(init_counter_reg[0]),
        .I1(init_counter_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_counter[2]_i_1 
       (.I0(init_counter_reg[1]),
        .I1(init_counter_reg[0]),
        .I2(init_counter_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_counter[4]_i_2 
       (.I0(init_counter_reg[3]),
        .I1(init_counter_reg[1]),
        .I2(init_counter_reg[0]),
        .I3(init_counter_reg[2]),
        .I4(init_counter_reg[4]),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp[0]),
        .Q(init_counter_reg[0]),
        .R(fifo_reset_internal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp[1]),
        .Q(init_counter_reg[1]),
        .R(fifo_reset_internal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp[2]),
        .Q(init_counter_reg[2]),
        .R(fifo_reset_internal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp[3]),
        .Q(init_counter_reg[3]),
        .R(fifo_reset_internal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp[4]),
        .Q(init_counter_reg[4]),
        .R(fifo_reset_internal_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[0]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[0] ),
        .O(m00_axis_tdata[0]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[10]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[10] ),
        .O(m00_axis_tdata[10]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[11]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[11] ),
        .O(m00_axis_tdata[11]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[12]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[12] ),
        .O(m00_axis_tdata[12]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[13]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[13] ),
        .O(m00_axis_tdata[13]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[14]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[14] ),
        .O(m00_axis_tdata[14]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[15]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[15] ),
        .O(m00_axis_tdata[15]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[16]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[16] ),
        .O(m00_axis_tdata[16]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[17]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[17] ),
        .O(m00_axis_tdata[17]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[18]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[18] ),
        .O(m00_axis_tdata[18]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[19]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[19] ),
        .O(m00_axis_tdata[19]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[1]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[1] ),
        .O(m00_axis_tdata[1]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[20]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[20] ),
        .O(m00_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[21]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[21] ),
        .O(m00_axis_tdata[21]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[22]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[22] ),
        .O(m00_axis_tdata[22]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[23]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[23] ),
        .O(m00_axis_tdata[23]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[24]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[24] ),
        .O(m00_axis_tdata[24]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[25]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[25] ),
        .O(m00_axis_tdata[25]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[26]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[26] ),
        .O(m00_axis_tdata[26]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[27]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[27] ),
        .O(m00_axis_tdata[27]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[28]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[28] ),
        .O(m00_axis_tdata[28]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[29]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[29] ),
        .O(m00_axis_tdata[29]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[2]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[2] ),
        .O(m00_axis_tdata[2]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[30]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[30] ),
        .O(m00_axis_tdata[30]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[31]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[31] ),
        .O(m00_axis_tdata[31]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[3]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[3] ),
        .O(m00_axis_tdata[3]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[4]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[4] ),
        .O(m00_axis_tdata[4]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[5]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[5] ),
        .O(m00_axis_tdata[5]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[6]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[6] ),
        .O(m00_axis_tdata[6]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[7]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[7] ),
        .O(m00_axis_tdata[7]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[8]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[8] ),
        .O(m00_axis_tdata[8]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \m00_axis_tdata[9]_INST_0 
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(\clock_counter_reg_n_0_[9] ),
        .O(m00_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    m00_axis_tlast_INST_0
       (.I0(axis_tvalid_calculated_reg_n_0),
        .I1(fifo_reset_internal),
        .I2(axis_tlast1),
        .O(m00_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m00_axis_tvalid_INST_0
       (.I0(fifo_reset_internal),
        .I1(axis_tvalid_calculated_reg_n_0),
        .O(m00_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA9A0000)) 
    \signal_counter[0]_i_1 
       (.I0(\signal_counter_reg_n_0_[0] ),
        .I1(\signal_counter_reg_n_0_[1] ),
        .I2(signal_input),
        .I3(signal_input_previous),
        .I4(fifo_reset_internal),
        .O(\signal_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF4F00000)) 
    \signal_counter[1]_i_1 
       (.I0(signal_input_previous),
        .I1(signal_input),
        .I2(\signal_counter_reg_n_0_[1] ),
        .I3(\signal_counter_reg_n_0_[0] ),
        .I4(fifo_reset_internal),
        .O(\signal_counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \signal_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\signal_counter[0]_i_1_n_0 ),
        .Q(\signal_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \signal_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\signal_counter[1]_i_1_n_0 ),
        .Q(\signal_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    signal_input_previous_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(signal_input),
        .Q(signal_input_previous),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0400)) 
    signal_state_INST_0
       (.I0(axis_tvalid_calculated_reg_n_0),
        .I1(m00_axis_tready),
        .I2(signal_input),
        .I3(enabled),
        .O(signal_state));
  CARRY4 tlast_counter1_carry
       (.CI(1'b0),
        .CO({tlast_counter1_carry_n_0,tlast_counter1_carry_n_1,tlast_counter1_carry_n_2,tlast_counter1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({tlast_counter1_carry_i_1_n_0,tlast_counter1_carry_i_2_n_0,tlast_counter1_carry_i_3_n_0,tlast_counter1_carry_i_4_n_0}),
        .O(NLW_tlast_counter1_carry_O_UNCONNECTED[3:0]),
        .S({tlast_counter1_carry_i_5_n_0,tlast_counter1_carry_i_6_n_0,tlast_counter1_carry_i_7_n_0,tlast_counter1_carry_i_8_n_0}));
  CARRY4 tlast_counter1_carry__0
       (.CI(tlast_counter1_carry_n_0),
        .CO({tlast_counter1_carry__0_n_0,tlast_counter1_carry__0_n_1,tlast_counter1_carry__0_n_2,tlast_counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({tlast_counter1_carry__0_i_1_n_0,tlast_counter1_carry__0_i_2_n_0,tlast_counter1_carry__0_i_3_n_0,tlast_counter1_carry__0_i_4_n_0}),
        .O(NLW_tlast_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({tlast_counter1_carry__0_i_5_n_0,tlast_counter1_carry__0_i_6_n_0,tlast_counter1_carry__0_i_7_n_0,tlast_counter1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    tlast_counter1_carry__0_i_1
       (.I0(number_words[15]),
        .I1(tlast_counter_reg[15]),
        .I2(number_words[14]),
        .I3(tlast_counter_reg[14]),
        .O(tlast_counter1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tlast_counter1_carry__0_i_2
       (.I0(number_words[13]),
        .I1(tlast_counter_reg[13]),
        .I2(number_words[12]),
        .I3(tlast_counter_reg[12]),
        .O(tlast_counter1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tlast_counter1_carry__0_i_3
       (.I0(number_words[11]),
        .I1(tlast_counter_reg[11]),
        .I2(number_words[10]),
        .I3(tlast_counter_reg[10]),
        .O(tlast_counter1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tlast_counter1_carry__0_i_4
       (.I0(number_words[9]),
        .I1(tlast_counter_reg[9]),
        .I2(number_words[8]),
        .I3(tlast_counter_reg[8]),
        .O(tlast_counter1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tlast_counter1_carry__0_i_5
       (.I0(tlast_counter_reg[14]),
        .I1(number_words[14]),
        .I2(tlast_counter_reg[15]),
        .I3(number_words[15]),
        .O(tlast_counter1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tlast_counter1_carry__0_i_6
       (.I0(number_words[12]),
        .I1(tlast_counter_reg[12]),
        .I2(number_words[13]),
        .I3(tlast_counter_reg[13]),
        .O(tlast_counter1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tlast_counter1_carry__0_i_7
       (.I0(number_words[10]),
        .I1(tlast_counter_reg[10]),
        .I2(number_words[11]),
        .I3(tlast_counter_reg[11]),
        .O(tlast_counter1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tlast_counter1_carry__0_i_8
       (.I0(number_words[9]),
        .I1(tlast_counter_reg[9]),
        .I2(number_words[8]),
        .I3(tlast_counter_reg[8]),
        .O(tlast_counter1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tlast_counter1_carry_i_1
       (.I0(number_words[7]),
        .I1(tlast_counter_reg[7]),
        .I2(number_words[6]),
        .I3(tlast_counter_reg[6]),
        .O(tlast_counter1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tlast_counter1_carry_i_2
       (.I0(number_words[5]),
        .I1(tlast_counter_reg[5]),
        .I2(number_words[4]),
        .I3(tlast_counter_reg[4]),
        .O(tlast_counter1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tlast_counter1_carry_i_3
       (.I0(number_words[3]),
        .I1(tlast_counter_reg[3]),
        .I2(number_words[2]),
        .I3(tlast_counter_reg[2]),
        .O(tlast_counter1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    tlast_counter1_carry_i_4
       (.I0(number_words[1]),
        .I1(tlast_counter_reg[1]),
        .I2(number_words[0]),
        .I3(tlast_counter_reg[0]),
        .O(tlast_counter1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tlast_counter1_carry_i_5
       (.I0(number_words[6]),
        .I1(tlast_counter_reg[6]),
        .I2(number_words[7]),
        .I3(tlast_counter_reg[7]),
        .O(tlast_counter1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tlast_counter1_carry_i_6
       (.I0(number_words[4]),
        .I1(tlast_counter_reg[4]),
        .I2(number_words[5]),
        .I3(tlast_counter_reg[5]),
        .O(tlast_counter1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tlast_counter1_carry_i_7
       (.I0(number_words[3]),
        .I1(tlast_counter_reg[3]),
        .I2(number_words[2]),
        .I3(tlast_counter_reg[2]),
        .O(tlast_counter1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tlast_counter1_carry_i_8
       (.I0(number_words[0]),
        .I1(tlast_counter_reg[0]),
        .I2(number_words[1]),
        .I3(tlast_counter_reg[1]),
        .O(tlast_counter1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h04FF)) 
    \tlast_counter[0]_i_1 
       (.I0(signal_input_previous),
        .I1(signal_input),
        .I2(tlast_counter1_carry__0_n_0),
        .I3(fifo_reset_internal),
        .O(tlast_counter));
  LUT2 #(
    .INIT(4'h2)) 
    \tlast_counter[0]_i_2 
       (.I0(signal_input),
        .I1(signal_input_previous),
        .O(axis_tvalid_calculated0));
  LUT1 #(
    .INIT(2'h1)) 
    \tlast_counter[0]_i_4 
       (.I0(tlast_counter_reg[0]),
        .O(\tlast_counter[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[0]_i_3_n_7 ),
        .Q(tlast_counter_reg[0]),
        .R(tlast_counter));
  CARRY4 \tlast_counter_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\tlast_counter_reg[0]_i_3_n_0 ,\tlast_counter_reg[0]_i_3_n_1 ,\tlast_counter_reg[0]_i_3_n_2 ,\tlast_counter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\tlast_counter_reg[0]_i_3_n_4 ,\tlast_counter_reg[0]_i_3_n_5 ,\tlast_counter_reg[0]_i_3_n_6 ,\tlast_counter_reg[0]_i_3_n_7 }),
        .S({tlast_counter_reg[3:1],\tlast_counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[10] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[8]_i_1_n_5 ),
        .Q(tlast_counter_reg[10]),
        .R(tlast_counter));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[11] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[8]_i_1_n_4 ),
        .Q(tlast_counter_reg[11]),
        .R(tlast_counter));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[12] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[12]_i_1_n_7 ),
        .Q(tlast_counter_reg[12]),
        .R(tlast_counter));
  CARRY4 \tlast_counter_reg[12]_i_1 
       (.CI(\tlast_counter_reg[8]_i_1_n_0 ),
        .CO({\NLW_tlast_counter_reg[12]_i_1_CO_UNCONNECTED [3],\tlast_counter_reg[12]_i_1_n_1 ,\tlast_counter_reg[12]_i_1_n_2 ,\tlast_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tlast_counter_reg[12]_i_1_n_4 ,\tlast_counter_reg[12]_i_1_n_5 ,\tlast_counter_reg[12]_i_1_n_6 ,\tlast_counter_reg[12]_i_1_n_7 }),
        .S(tlast_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[13] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[12]_i_1_n_6 ),
        .Q(tlast_counter_reg[13]),
        .R(tlast_counter));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[14] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[12]_i_1_n_5 ),
        .Q(tlast_counter_reg[14]),
        .R(tlast_counter));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[15] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[12]_i_1_n_4 ),
        .Q(tlast_counter_reg[15]),
        .R(tlast_counter));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[0]_i_3_n_6 ),
        .Q(tlast_counter_reg[1]),
        .R(tlast_counter));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[0]_i_3_n_5 ),
        .Q(tlast_counter_reg[2]),
        .R(tlast_counter));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[0]_i_3_n_4 ),
        .Q(tlast_counter_reg[3]),
        .R(tlast_counter));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[4]_i_1_n_7 ),
        .Q(tlast_counter_reg[4]),
        .R(tlast_counter));
  CARRY4 \tlast_counter_reg[4]_i_1 
       (.CI(\tlast_counter_reg[0]_i_3_n_0 ),
        .CO({\tlast_counter_reg[4]_i_1_n_0 ,\tlast_counter_reg[4]_i_1_n_1 ,\tlast_counter_reg[4]_i_1_n_2 ,\tlast_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tlast_counter_reg[4]_i_1_n_4 ,\tlast_counter_reg[4]_i_1_n_5 ,\tlast_counter_reg[4]_i_1_n_6 ,\tlast_counter_reg[4]_i_1_n_7 }),
        .S(tlast_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[5] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[4]_i_1_n_6 ),
        .Q(tlast_counter_reg[5]),
        .R(tlast_counter));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[6] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[4]_i_1_n_5 ),
        .Q(tlast_counter_reg[6]),
        .R(tlast_counter));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[7] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[4]_i_1_n_4 ),
        .Q(tlast_counter_reg[7]),
        .R(tlast_counter));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[8] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[8]_i_1_n_7 ),
        .Q(tlast_counter_reg[8]),
        .R(tlast_counter));
  CARRY4 \tlast_counter_reg[8]_i_1 
       (.CI(\tlast_counter_reg[4]_i_1_n_0 ),
        .CO({\tlast_counter_reg[8]_i_1_n_0 ,\tlast_counter_reg[8]_i_1_n_1 ,\tlast_counter_reg[8]_i_1_n_2 ,\tlast_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tlast_counter_reg[8]_i_1_n_4 ,\tlast_counter_reg[8]_i_1_n_5 ,\tlast_counter_reg[8]_i_1_n_6 ,\tlast_counter_reg[8]_i_1_n_7 }),
        .S(tlast_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \tlast_counter_reg[9] 
       (.C(m00_axis_aclk),
        .CE(axis_tvalid_calculated0),
        .D(\tlast_counter_reg[8]_i_1_n_6 ),
        .Q(tlast_counter_reg[9]),
        .R(tlast_counter));
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
