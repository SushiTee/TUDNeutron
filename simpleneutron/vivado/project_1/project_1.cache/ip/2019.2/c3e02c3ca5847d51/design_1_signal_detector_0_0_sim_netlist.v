// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
// Date        : Wed Dec 18 15:10:00 2019
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

  wire \<const1> ;
  wire enabled;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tvalid;
  wire signal_input;
  wire signal_state;

  assign m00_axis_tlast = m00_axis_tvalid;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signal_detector_v1_0 U0
       (.enabled(enabled),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tvalid(m00_axis_tvalid),
        .signal_input(signal_input),
        .signal_state(signal_state));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signal_detector_v1_0
   (m00_axis_tdata,
    m00_axis_tvalid,
    signal_state,
    signal_input,
    enabled,
    m00_axis_aresetn,
    m00_axis_aclk);
  output [31:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output signal_state;
  input signal_input;
  input enabled;
  input m00_axis_aresetn;
  input m00_axis_aclk;

  wire enabled;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tvalid;
  wire signal_input;
  wire signal_state;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signal_detector_v1_0_M00_AXIS signal_detector_v1_0_M00_AXIS_inst
       (.enabled(enabled),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tvalid(m00_axis_tvalid),
        .signal_input(signal_input),
        .signal_state(signal_state));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signal_detector_v1_0_M00_AXIS
   (m00_axis_tdata,
    m00_axis_tvalid,
    signal_state,
    signal_input,
    enabled,
    m00_axis_aresetn,
    m00_axis_aclk);
  output [31:0]m00_axis_tdata;
  output m00_axis_tvalid;
  output signal_state;
  input signal_input;
  input enabled;
  input m00_axis_aresetn;
  input m00_axis_aclk;

  wire \FSM_onehot_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[2]_i_1_n_0 ;
  wire \FSM_onehot_mst_exec_state[2]_i_2_n_0 ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[0] ;
  wire \FSM_onehot_mst_exec_state_reg_n_0_[1] ;
  wire axis_tvalid_calculated;
  wire axis_tvalid_calculated_i_1_n_0;
  wire axis_tvalid_calculated_previous;
  wire axis_tvalid_calculated_previous_i_1_n_0;
  wire axis_tvalid_calculated_reg_n_0;
  wire \clock_counter[0]_i_1_n_0 ;
  wire \clock_counter[1]_i_1_n_0 ;
  wire \clock_counter[31]_i_1_n_0 ;
  wire \clock_counter_reg[12]_i_1_n_0 ;
  wire \clock_counter_reg[12]_i_1_n_1 ;
  wire \clock_counter_reg[12]_i_1_n_2 ;
  wire \clock_counter_reg[12]_i_1_n_3 ;
  wire \clock_counter_reg[16]_i_1_n_0 ;
  wire \clock_counter_reg[16]_i_1_n_1 ;
  wire \clock_counter_reg[16]_i_1_n_2 ;
  wire \clock_counter_reg[16]_i_1_n_3 ;
  wire \clock_counter_reg[20]_i_1_n_0 ;
  wire \clock_counter_reg[20]_i_1_n_1 ;
  wire \clock_counter_reg[20]_i_1_n_2 ;
  wire \clock_counter_reg[20]_i_1_n_3 ;
  wire \clock_counter_reg[24]_i_1_n_0 ;
  wire \clock_counter_reg[24]_i_1_n_1 ;
  wire \clock_counter_reg[24]_i_1_n_2 ;
  wire \clock_counter_reg[24]_i_1_n_3 ;
  wire \clock_counter_reg[28]_i_1_n_0 ;
  wire \clock_counter_reg[28]_i_1_n_1 ;
  wire \clock_counter_reg[28]_i_1_n_2 ;
  wire \clock_counter_reg[28]_i_1_n_3 ;
  wire \clock_counter_reg[31]_i_2_n_2 ;
  wire \clock_counter_reg[31]_i_2_n_3 ;
  wire \clock_counter_reg[4]_i_1_n_0 ;
  wire \clock_counter_reg[4]_i_1_n_1 ;
  wire \clock_counter_reg[4]_i_1_n_2 ;
  wire \clock_counter_reg[4]_i_1_n_3 ;
  wire \clock_counter_reg[8]_i_1_n_0 ;
  wire \clock_counter_reg[8]_i_1_n_1 ;
  wire \clock_counter_reg[8]_i_1_n_2 ;
  wire \clock_counter_reg[8]_i_1_n_3 ;
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
  wire init_counter;
  wire [4:0]init_counter_reg;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tvalid;
  wire not_first_packet;
  wire not_first_packet_i_1_n_0;
  wire [31:1]plusOp;
  wire [4:0]plusOp__0;
  wire signal_input;
  wire signal_input_previous;
  wire signal_input_previous_i_1_n_0;
  wire signal_state;
  wire stream_data_out;
  wire [3:2]\NLW_clock_counter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_clock_counter_reg[31]_i_2_O_UNCONNECTED ;

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
       (.I0(axis_tvalid_calculated),
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
        .Q(axis_tvalid_calculated),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    axis_tvalid_calculated_i_1
       (.I0(signal_input),
        .I1(signal_input_previous),
        .I2(axis_tvalid_calculated),
        .I3(axis_tvalid_calculated_reg_n_0),
        .O(axis_tvalid_calculated_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    axis_tvalid_calculated_previous_i_1
       (.I0(axis_tvalid_calculated_reg_n_0),
        .I1(axis_tvalid_calculated),
        .I2(axis_tvalid_calculated_previous),
        .O(axis_tvalid_calculated_previous_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axis_tvalid_calculated_previous_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid_calculated_previous_i_1_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \clock_counter[0]_i_1 
       (.I0(\clock_counter_reg_n_0_[0] ),
        .I1(axis_tvalid_calculated_previous),
        .I2(axis_tvalid_calculated),
        .O(\clock_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \clock_counter[1]_i_1 
       (.I0(plusOp[1]),
        .I1(axis_tvalid_calculated_previous),
        .I2(axis_tvalid_calculated),
        .O(\clock_counter[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \clock_counter[31]_i_1 
       (.I0(axis_tvalid_calculated_previous),
        .I1(axis_tvalid_calculated),
        .O(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter[0]_i_1_n_0 ),
        .Q(\clock_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(\clock_counter_reg_n_0_[10] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[11]),
        .Q(\clock_counter_reg_n_0_[11] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[12]),
        .Q(\clock_counter_reg_n_0_[12] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[12]_i_1 
       (.CI(\clock_counter_reg[8]_i_1_n_0 ),
        .CO({\clock_counter_reg[12]_i_1_n_0 ,\clock_counter_reg[12]_i_1_n_1 ,\clock_counter_reg[12]_i_1_n_2 ,\clock_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S({\clock_counter_reg_n_0_[12] ,\clock_counter_reg_n_0_[11] ,\clock_counter_reg_n_0_[10] ,\clock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[13]),
        .Q(\clock_counter_reg_n_0_[13] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[14]),
        .Q(\clock_counter_reg_n_0_[14] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[15]),
        .Q(\clock_counter_reg_n_0_[15] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[16]),
        .Q(\clock_counter_reg_n_0_[16] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[16]_i_1 
       (.CI(\clock_counter_reg[12]_i_1_n_0 ),
        .CO({\clock_counter_reg[16]_i_1_n_0 ,\clock_counter_reg[16]_i_1_n_1 ,\clock_counter_reg[16]_i_1_n_2 ,\clock_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[16:13]),
        .S({\clock_counter_reg_n_0_[16] ,\clock_counter_reg_n_0_[15] ,\clock_counter_reg_n_0_[14] ,\clock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[17]),
        .Q(\clock_counter_reg_n_0_[17] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[18]),
        .Q(\clock_counter_reg_n_0_[18] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[19]),
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
        .D(plusOp[20]),
        .Q(\clock_counter_reg_n_0_[20] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[20]_i_1 
       (.CI(\clock_counter_reg[16]_i_1_n_0 ),
        .CO({\clock_counter_reg[20]_i_1_n_0 ,\clock_counter_reg[20]_i_1_n_1 ,\clock_counter_reg[20]_i_1_n_2 ,\clock_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[20:17]),
        .S({\clock_counter_reg_n_0_[20] ,\clock_counter_reg_n_0_[19] ,\clock_counter_reg_n_0_[18] ,\clock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[21]),
        .Q(\clock_counter_reg_n_0_[21] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[22]),
        .Q(\clock_counter_reg_n_0_[22] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[23]),
        .Q(\clock_counter_reg_n_0_[23] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[24] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[24]),
        .Q(\clock_counter_reg_n_0_[24] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[24]_i_1 
       (.CI(\clock_counter_reg[20]_i_1_n_0 ),
        .CO({\clock_counter_reg[24]_i_1_n_0 ,\clock_counter_reg[24]_i_1_n_1 ,\clock_counter_reg[24]_i_1_n_2 ,\clock_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[24:21]),
        .S({\clock_counter_reg_n_0_[24] ,\clock_counter_reg_n_0_[23] ,\clock_counter_reg_n_0_[22] ,\clock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[25] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[25]),
        .Q(\clock_counter_reg_n_0_[25] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[26] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[26]),
        .Q(\clock_counter_reg_n_0_[26] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[27] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[27]),
        .Q(\clock_counter_reg_n_0_[27] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[28] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[28]),
        .Q(\clock_counter_reg_n_0_[28] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[28]_i_1 
       (.CI(\clock_counter_reg[24]_i_1_n_0 ),
        .CO({\clock_counter_reg[28]_i_1_n_0 ,\clock_counter_reg[28]_i_1_n_1 ,\clock_counter_reg[28]_i_1_n_2 ,\clock_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[28:25]),
        .S({\clock_counter_reg_n_0_[28] ,\clock_counter_reg_n_0_[27] ,\clock_counter_reg_n_0_[26] ,\clock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[29] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[29]),
        .Q(\clock_counter_reg_n_0_[29] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\clock_counter_reg_n_0_[2] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[30] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[30]),
        .Q(\clock_counter_reg_n_0_[30] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[31] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[31]),
        .Q(\clock_counter_reg_n_0_[31] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[31]_i_2 
       (.CI(\clock_counter_reg[28]_i_1_n_0 ),
        .CO({\NLW_clock_counter_reg[31]_i_2_CO_UNCONNECTED [3:2],\clock_counter_reg[31]_i_2_n_2 ,\clock_counter_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clock_counter_reg[31]_i_2_O_UNCONNECTED [3],plusOp[31:29]}),
        .S({1'b0,\clock_counter_reg_n_0_[31] ,\clock_counter_reg_n_0_[30] ,\clock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\clock_counter_reg_n_0_[3] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(\clock_counter_reg_n_0_[4] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\clock_counter_reg[4]_i_1_n_0 ,\clock_counter_reg[4]_i_1_n_1 ,\clock_counter_reg[4]_i_1_n_2 ,\clock_counter_reg[4]_i_1_n_3 }),
        .CYINIT(\clock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S({\clock_counter_reg_n_0_[4] ,\clock_counter_reg_n_0_[3] ,\clock_counter_reg_n_0_[2] ,\clock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(\clock_counter_reg_n_0_[5] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(\clock_counter_reg_n_0_[6] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(\clock_counter_reg_n_0_[7] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(\clock_counter_reg_n_0_[8] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  CARRY4 \clock_counter_reg[8]_i_1 
       (.CI(\clock_counter_reg[4]_i_1_n_0 ),
        .CO({\clock_counter_reg[8]_i_1_n_0 ,\clock_counter_reg[8]_i_1_n_1 ,\clock_counter_reg[8]_i_1_n_2 ,\clock_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S({\clock_counter_reg_n_0_[8] ,\clock_counter_reg_n_0_[7] ,\clock_counter_reg_n_0_[6] ,\clock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(\clock_counter_reg_n_0_[9] ),
        .R(\clock_counter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_counter[0]_i_1 
       (.I0(init_counter_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_counter[1]_i_1 
       (.I0(init_counter_reg[0]),
        .I1(init_counter_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_counter[2]_i_1 
       (.I0(init_counter_reg[1]),
        .I1(init_counter_reg[0]),
        .I2(init_counter_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_counter[3]_i_1 
       (.I0(init_counter_reg[2]),
        .I1(init_counter_reg[0]),
        .I2(init_counter_reg[1]),
        .I3(init_counter_reg[3]),
        .O(plusOp__0[3]));
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
        .O(plusOp__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp__0[0]),
        .Q(init_counter_reg[0]),
        .R(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp__0[1]),
        .Q(init_counter_reg[1]),
        .R(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp__0[2]),
        .Q(init_counter_reg[2]),
        .R(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp__0[3]),
        .Q(init_counter_reg[3]),
        .R(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(plusOp__0[4]),
        .Q(init_counter_reg[4]),
        .R(\FSM_onehot_mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m00_axis_tlast_INST_0
       (.I0(axis_tvalid_calculated),
        .I1(axis_tvalid_calculated_reg_n_0),
        .O(m00_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8A88)) 
    not_first_packet_i_1
       (.I0(axis_tvalid_calculated),
        .I1(not_first_packet),
        .I2(signal_input_previous),
        .I3(signal_input),
        .O(not_first_packet_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    not_first_packet_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(not_first_packet_i_1_n_0),
        .Q(not_first_packet),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    signal_input_previous_i_1
       (.I0(signal_input),
        .I1(axis_tvalid_calculated),
        .I2(signal_input_previous),
        .O(signal_input_previous_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    signal_input_previous_reg
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
        .I1(axis_tvalid_calculated_reg_n_0),
        .O(signal_state));
  LUT4 #(
    .INIT(16'hC4CC)) 
    \stream_data_out[31]_i_1 
       (.I0(not_first_packet),
        .I1(axis_tvalid_calculated),
        .I2(signal_input_previous),
        .I3(signal_input),
        .O(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[0] ),
        .Q(m00_axis_tdata[0]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[10] ),
        .Q(m00_axis_tdata[10]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[11] ),
        .Q(m00_axis_tdata[11]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[12] ),
        .Q(m00_axis_tdata[12]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[13] ),
        .Q(m00_axis_tdata[13]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[14] ),
        .Q(m00_axis_tdata[14]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[15] ),
        .Q(m00_axis_tdata[15]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[16] ),
        .Q(m00_axis_tdata[16]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[17] ),
        .Q(m00_axis_tdata[17]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[18] ),
        .Q(m00_axis_tdata[18]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[19] ),
        .Q(m00_axis_tdata[19]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[1] ),
        .Q(m00_axis_tdata[1]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[20] ),
        .Q(m00_axis_tdata[20]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[21] ),
        .Q(m00_axis_tdata[21]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[22] ),
        .Q(m00_axis_tdata[22]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[23] ),
        .Q(m00_axis_tdata[23]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[24] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[24] ),
        .Q(m00_axis_tdata[24]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[25] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[25] ),
        .Q(m00_axis_tdata[25]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[26] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[26] ),
        .Q(m00_axis_tdata[26]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[27] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[27] ),
        .Q(m00_axis_tdata[27]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[28] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[28] ),
        .Q(m00_axis_tdata[28]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[29] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[29] ),
        .Q(m00_axis_tdata[29]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[2] ),
        .Q(m00_axis_tdata[2]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[30] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[30] ),
        .Q(m00_axis_tdata[30]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[31] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[31] ),
        .Q(m00_axis_tdata[31]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[3] ),
        .Q(m00_axis_tdata[3]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[4] ),
        .Q(m00_axis_tdata[4]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[5] ),
        .Q(m00_axis_tdata[5]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[6] ),
        .Q(m00_axis_tdata[6]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[7] ),
        .Q(m00_axis_tdata[7]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[8] ),
        .Q(m00_axis_tdata[8]),
        .R(stream_data_out));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter_reg_n_0_[9] ),
        .Q(m00_axis_tdata[9]),
        .R(stream_data_out));
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
