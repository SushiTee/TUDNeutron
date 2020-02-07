// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Fri Feb  7 00:29:26 2020
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/vm/projects/TUDNeutron/simpleneutron/vivado/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_debounce_0_0/design_1_debounce_0_0_sim_netlist.v
// Design      : design_1_debounce_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_debounce_0_0,debounce_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "debounce_v1_0,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module design_1_debounce_0_0
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

  design_1_debounce_0_0_debounce_v1_0 U0
       (.m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .signal_in(signal_in),
        .signal_out(signal_out));
endmodule

(* ORIG_REF_NAME = "debounce_v1_0" *) 
module design_1_debounce_0_0_debounce_v1_0
   (signal_out,
    m00_axis_aresetn,
    signal_in,
    m00_axis_aclk);
  output signal_out;
  input m00_axis_aresetn;
  input signal_in;
  input m00_axis_aclk;

  wire [31:0]count;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry__2_n_4;
  wire count0_carry__2_n_5;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry__3_n_0;
  wire count0_carry__3_n_1;
  wire count0_carry__3_n_2;
  wire count0_carry__3_n_3;
  wire count0_carry__3_n_4;
  wire count0_carry__3_n_5;
  wire count0_carry__3_n_6;
  wire count0_carry__3_n_7;
  wire count0_carry__4_n_0;
  wire count0_carry__4_n_1;
  wire count0_carry__4_n_2;
  wire count0_carry__4_n_3;
  wire count0_carry__4_n_4;
  wire count0_carry__4_n_5;
  wire count0_carry__4_n_6;
  wire count0_carry__4_n_7;
  wire count0_carry__5_n_0;
  wire count0_carry__5_n_1;
  wire count0_carry__5_n_2;
  wire count0_carry__5_n_3;
  wire count0_carry__5_n_4;
  wire count0_carry__5_n_5;
  wire count0_carry__5_n_6;
  wire count0_carry__5_n_7;
  wire count0_carry__6_n_2;
  wire count0_carry__6_n_3;
  wire count0_carry__6_n_5;
  wire count0_carry__6_n_6;
  wire count0_carry__6_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire \count[0]_i_1_n_0 ;
  wire \count[31]_i_1_n_0 ;
  wire \count[31]_i_2_n_0 ;
  wire \count[31]_i_3_n_0 ;
  wire \count[31]_i_4_n_0 ;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire signal_in;
  wire signal_out;
  wire signal_out_i_10_n_0;
  wire signal_out_i_11_n_0;
  wire signal_out_i_1_n_0;
  wire signal_out_i_2_n_0;
  wire signal_out_i_3_n_0;
  wire signal_out_i_4_n_0;
  wire signal_out_i_5_n_0;
  wire signal_out_i_6_n_0;
  wire signal_out_i_7_n_0;
  wire signal_out_i_8_n_0;
  wire signal_out_i_9_n_0;
  wire state_i_1_n_0;
  wire state_reg_n_0;
  wire [3:2]NLW_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count0_carry__6_O_UNCONNECTED;

  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S(count[4:1]));
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S(count[8:5]));
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S(count[12:9]));
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__2_n_4,count0_carry__2_n_5,count0_carry__2_n_6,count0_carry__2_n_7}),
        .S(count[16:13]));
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO({count0_carry__3_n_0,count0_carry__3_n_1,count0_carry__3_n_2,count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__3_n_4,count0_carry__3_n_5,count0_carry__3_n_6,count0_carry__3_n_7}),
        .S(count[20:17]));
  CARRY4 count0_carry__4
       (.CI(count0_carry__3_n_0),
        .CO({count0_carry__4_n_0,count0_carry__4_n_1,count0_carry__4_n_2,count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__4_n_4,count0_carry__4_n_5,count0_carry__4_n_6,count0_carry__4_n_7}),
        .S(count[24:21]));
  CARRY4 count0_carry__5
       (.CI(count0_carry__4_n_0),
        .CO({count0_carry__5_n_0,count0_carry__5_n_1,count0_carry__5_n_2,count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__5_n_4,count0_carry__5_n_5,count0_carry__5_n_6,count0_carry__5_n_7}),
        .S(count[28:25]));
  CARRY4 count0_carry__6
       (.CI(count0_carry__5_n_0),
        .CO({NLW_count0_carry__6_CO_UNCONNECTED[3:2],count0_carry__6_n_2,count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__6_O_UNCONNECTED[3],count0_carry__6_n_5,count0_carry__6_n_6,count0_carry__6_n_7}),
        .S({1'b0,count[31:29]}));
  LUT5 #(
    .INIT(32'h5555AAA8)) 
    \count[0]_i_1 
       (.I0(signal_out_i_2_n_0),
        .I1(signal_out_i_4_n_0),
        .I2(\count[31]_i_4_n_0 ),
        .I3(\count[31]_i_3_n_0 ),
        .I4(count[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \count[31]_i_1 
       (.I0(signal_in),
        .I1(signal_out_i_2_n_0),
        .I2(count[0]),
        .I3(\count[31]_i_3_n_0 ),
        .I4(\count[31]_i_4_n_0 ),
        .I5(signal_out_i_4_n_0),
        .O(\count[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    \count[31]_i_2 
       (.I0(signal_out_i_2_n_0),
        .I1(signal_in),
        .I2(signal_out_i_4_n_0),
        .I3(\count[31]_i_4_n_0 ),
        .I4(\count[31]_i_3_n_0 ),
        .I5(count[0]),
        .O(\count[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[31]_i_3 
       (.I0(count[12]),
        .I1(count[13]),
        .I2(count[10]),
        .I3(count[11]),
        .I4(signal_out_i_7_n_0),
        .O(\count[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \count[31]_i_4 
       (.I0(count[5]),
        .I1(count[4]),
        .I2(count[2]),
        .I3(count[3]),
        .I4(signal_out_i_5_n_0),
        .O(\count[31]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__1_n_6),
        .Q(count[10]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__1_n_5),
        .Q(count[11]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__1_n_4),
        .Q(count[12]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__2_n_7),
        .Q(count[13]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__2_n_6),
        .Q(count[14]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__2_n_5),
        .Q(count[15]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__2_n_4),
        .Q(count[16]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__3_n_7),
        .Q(count[17]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__3_n_6),
        .Q(count[18]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__3_n_5),
        .Q(count[19]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry_n_7),
        .Q(count[1]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__3_n_4),
        .Q(count[20]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__4_n_7),
        .Q(count[21]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__4_n_6),
        .Q(count[22]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__4_n_5),
        .Q(count[23]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__4_n_4),
        .Q(count[24]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__5_n_7),
        .Q(count[25]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__5_n_6),
        .Q(count[26]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__5_n_5),
        .Q(count[27]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__5_n_4),
        .Q(count[28]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__6_n_7),
        .Q(count[29]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry_n_6),
        .Q(count[2]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__6_n_6),
        .Q(count[30]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__6_n_5),
        .Q(count[31]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry_n_5),
        .Q(count[3]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry_n_4),
        .Q(count[4]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__0_n_7),
        .Q(count[5]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__0_n_6),
        .Q(count[6]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__0_n_5),
        .Q(count[7]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__0_n_4),
        .Q(count[8]),
        .R(\count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(m00_axis_aclk),
        .CE(\count[31]_i_2_n_0 ),
        .D(count0_carry__1_n_7),
        .Q(count[9]),
        .R(\count[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00020000)) 
    signal_out_i_1
       (.I0(signal_out_i_2_n_0),
        .I1(count[0]),
        .I2(signal_out_i_3_n_0),
        .I3(signal_out_i_4_n_0),
        .I4(signal_in),
        .I5(signal_out),
        .O(signal_out_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    signal_out_i_10
       (.I0(count[19]),
        .I1(count[18]),
        .I2(count[21]),
        .I3(count[20]),
        .O(signal_out_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    signal_out_i_11
       (.I0(count[27]),
        .I1(count[26]),
        .I2(count[29]),
        .I3(count[28]),
        .O(signal_out_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    signal_out_i_2
       (.I0(state_reg_n_0),
        .I1(m00_axis_aresetn),
        .O(signal_out_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    signal_out_i_3
       (.I0(signal_out_i_5_n_0),
        .I1(signal_out_i_6_n_0),
        .I2(signal_out_i_7_n_0),
        .I3(signal_out_i_8_n_0),
        .O(signal_out_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    signal_out_i_4
       (.I0(signal_out_i_9_n_0),
        .I1(signal_out_i_10_n_0),
        .I2(count[31]),
        .I3(count[30]),
        .I4(count[1]),
        .I5(signal_out_i_11_n_0),
        .O(signal_out_i_4_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    signal_out_i_5
       (.I0(count[6]),
        .I1(count[7]),
        .I2(count[9]),
        .I3(count[8]),
        .O(signal_out_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    signal_out_i_6
       (.I0(count[3]),
        .I1(count[2]),
        .I2(count[4]),
        .I3(count[5]),
        .O(signal_out_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    signal_out_i_7
       (.I0(count[15]),
        .I1(count[14]),
        .I2(count[17]),
        .I3(count[16]),
        .O(signal_out_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    signal_out_i_8
       (.I0(count[11]),
        .I1(count[10]),
        .I2(count[13]),
        .I3(count[12]),
        .O(signal_out_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    signal_out_i_9
       (.I0(count[23]),
        .I1(count[22]),
        .I2(count[25]),
        .I3(count[24]),
        .O(signal_out_i_9_n_0));
  FDRE signal_out_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(signal_out_i_1_n_0),
        .Q(signal_out),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888880)) 
    state_i_1
       (.I0(m00_axis_aresetn),
        .I1(state_reg_n_0),
        .I2(count[0]),
        .I3(signal_out_i_3_n_0),
        .I4(signal_out_i_4_n_0),
        .I5(signal_in),
        .O(state_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .Q(state_reg_n_0),
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
