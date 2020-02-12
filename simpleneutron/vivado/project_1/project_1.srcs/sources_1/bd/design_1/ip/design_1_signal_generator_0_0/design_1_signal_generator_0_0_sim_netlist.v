// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Mon Feb 10 19:18:51 2020
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_signal_generator_0_0 -prefix
//               design_1_signal_generator_0_0_ design_1_signal_generator_0_0_sim_netlist.v
// Design      : design_1_signal_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_signal_generator_0_0,signal_generator_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "signal_generator_v1_0,Vivado 2019.2.1" *) 
(* NotValidForBitStream *)
module design_1_signal_generator_0_0
   (enabled,
    signal_state,
    fifo_reset,
    number_words,
    signal_count,
    signal_frequency,
    signal_input,
    m00_axis_aclk,
    m00_axis_aresetn,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tkeep,
    m00_axis_tlast,
    m00_axis_tready);
  input enabled;
  output signal_state;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 fifo_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME fifo_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output fifo_reset;
  input [15:0]number_words;
  input [31:0]signal_count;
  input [27:0]signal_frequency;
  input signal_input;
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
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [15:0]number_words;
  wire [31:0]signal_count;
  wire [27:0]signal_frequency;
  wire signal_input;
  wire signal_state;

  assign m00_axis_tkeep[3] = \<const1> ;
  assign m00_axis_tkeep[2] = \<const1> ;
  assign m00_axis_tkeep[1] = \<const1> ;
  assign m00_axis_tkeep[0] = \<const1> ;
  design_1_signal_generator_0_0_signal_generator_v1_0 U0
       (.enabled(enabled),
        .fifo_reset(fifo_reset),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .number_words(number_words),
        .signal_count(signal_count),
        .signal_frequency(signal_frequency),
        .signal_input(signal_input),
        .signal_state(signal_state));
  VCC VCC
       (.P(\<const1> ));
endmodule

module design_1_signal_generator_0_0_signal_generator_v1_0
   (m00_axis_tdata,
    m00_axis_tlast,
    signal_state,
    fifo_reset,
    m00_axis_tvalid,
    signal_frequency,
    m00_axis_tready,
    enabled,
    m00_axis_aresetn,
    m00_axis_aclk,
    number_words,
    signal_input,
    signal_count);
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  output signal_state;
  output fifo_reset;
  output m00_axis_tvalid;
  input [27:0]signal_frequency;
  input m00_axis_tready;
  input enabled;
  input m00_axis_aresetn;
  input m00_axis_aclk;
  input [15:0]number_words;
  input signal_input;
  input [31:0]signal_count;

  wire enabled;
  wire fifo_reset;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [15:0]number_words;
  wire [31:0]signal_count;
  wire [27:0]signal_frequency;
  wire signal_input;
  wire signal_state;

  design_1_signal_generator_0_0_signal_generator_v1_0_M00_AXIS signal_generator_v1_0_M00_AXIS_inst
       (.M_AXIS_TDATA(m00_axis_tdata),
        .enabled(enabled),
        .fifo_reset(fifo_reset),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .number_words(number_words),
        .signal_count(signal_count),
        .signal_frequency(signal_frequency),
        .signal_input(signal_input),
        .signal_state(signal_state));
endmodule

module design_1_signal_generator_0_0_signal_generator_v1_0_M00_AXIS
   (M_AXIS_TDATA,
    m00_axis_tlast,
    signal_state,
    fifo_reset,
    m00_axis_tvalid,
    signal_frequency,
    m00_axis_tready,
    enabled,
    m00_axis_aresetn,
    m00_axis_aclk,
    number_words,
    signal_input,
    signal_count);
  output [31:0]M_AXIS_TDATA;
  output m00_axis_tlast;
  output signal_state;
  output fifo_reset;
  output m00_axis_tvalid;
  input [27:0]signal_frequency;
  input m00_axis_tready;
  input enabled;
  input m00_axis_aresetn;
  input m00_axis_aclk;
  input [15:0]number_words;
  input signal_input;
  input [31:0]signal_count;

  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire [31:0]M_AXIS_TDATA;
  wire axis_tlast_i_1_n_0;
  wire axis_tlast_i_2_n_0;
  wire axis_tlast_i_3_n_0;
  wire axis_tlast_i_4_n_0;
  wire axis_tlast_i_5_n_0;
  wire axis_tlast_i_6_n_0;
  wire axis_tvalid_i_1_n_0;
  wire axis_tvalid_i_2_n_0;
  wire axis_tvalid_i_3_n_0;
  wire axis_tvalid_i_4_n_0;
  wire axis_tvalid_i_5_n_0;
  wire axis_tvalid_i_6_n_0;
  wire axis_tvalid_i_7_n_0;
  wire axis_tvalid_i_8_n_0;
  wire axis_tvalid_i_9_n_0;
  wire [26:0]clock_counter;
  wire \clock_counter[0]_i_11_n_0 ;
  wire \clock_counter[0]_i_12_n_0 ;
  wire \clock_counter[0]_i_13_n_0 ;
  wire \clock_counter[0]_i_14_n_0 ;
  wire \clock_counter[0]_i_16_n_0 ;
  wire \clock_counter[0]_i_17_n_0 ;
  wire \clock_counter[0]_i_18_n_0 ;
  wire \clock_counter[0]_i_19_n_0 ;
  wire \clock_counter[0]_i_21_n_0 ;
  wire \clock_counter[0]_i_22_n_0 ;
  wire \clock_counter[0]_i_23_n_0 ;
  wire \clock_counter[0]_i_24_n_0 ;
  wire \clock_counter[0]_i_26_n_0 ;
  wire \clock_counter[0]_i_27_n_0 ;
  wire \clock_counter[0]_i_28_n_0 ;
  wire \clock_counter[0]_i_29_n_0 ;
  wire \clock_counter[0]_i_31_n_0 ;
  wire \clock_counter[0]_i_32_n_0 ;
  wire \clock_counter[0]_i_33_n_0 ;
  wire \clock_counter[0]_i_34_n_0 ;
  wire \clock_counter[0]_i_35_n_0 ;
  wire \clock_counter[0]_i_36_n_0 ;
  wire \clock_counter[0]_i_37_n_0 ;
  wire \clock_counter[0]_i_38_n_0 ;
  wire \clock_counter[0]_i_39_n_0 ;
  wire \clock_counter[0]_i_4_n_0 ;
  wire \clock_counter[0]_i_6_n_0 ;
  wire \clock_counter[0]_i_7_n_0 ;
  wire \clock_counter[0]_i_8_n_0 ;
  wire \clock_counter[0]_i_9_n_0 ;
  wire \clock_counter[10]_i_10_n_0 ;
  wire \clock_counter[10]_i_12_n_0 ;
  wire \clock_counter[10]_i_13_n_0 ;
  wire \clock_counter[10]_i_14_n_0 ;
  wire \clock_counter[10]_i_15_n_0 ;
  wire \clock_counter[10]_i_17_n_0 ;
  wire \clock_counter[10]_i_18_n_0 ;
  wire \clock_counter[10]_i_19_n_0 ;
  wire \clock_counter[10]_i_20_n_0 ;
  wire \clock_counter[10]_i_22_n_0 ;
  wire \clock_counter[10]_i_23_n_0 ;
  wire \clock_counter[10]_i_24_n_0 ;
  wire \clock_counter[10]_i_25_n_0 ;
  wire \clock_counter[10]_i_27_n_0 ;
  wire \clock_counter[10]_i_28_n_0 ;
  wire \clock_counter[10]_i_29_n_0 ;
  wire \clock_counter[10]_i_30_n_0 ;
  wire \clock_counter[10]_i_32_n_0 ;
  wire \clock_counter[10]_i_33_n_0 ;
  wire \clock_counter[10]_i_34_n_0 ;
  wire \clock_counter[10]_i_35_n_0 ;
  wire \clock_counter[10]_i_36_n_0 ;
  wire \clock_counter[10]_i_37_n_0 ;
  wire \clock_counter[10]_i_38_n_0 ;
  wire \clock_counter[10]_i_39_n_0 ;
  wire \clock_counter[10]_i_4_n_0 ;
  wire \clock_counter[10]_i_5_n_0 ;
  wire \clock_counter[10]_i_7_n_0 ;
  wire \clock_counter[10]_i_8_n_0 ;
  wire \clock_counter[10]_i_9_n_0 ;
  wire \clock_counter[11]_i_10_n_0 ;
  wire \clock_counter[11]_i_12_n_0 ;
  wire \clock_counter[11]_i_13_n_0 ;
  wire \clock_counter[11]_i_14_n_0 ;
  wire \clock_counter[11]_i_15_n_0 ;
  wire \clock_counter[11]_i_17_n_0 ;
  wire \clock_counter[11]_i_18_n_0 ;
  wire \clock_counter[11]_i_19_n_0 ;
  wire \clock_counter[11]_i_20_n_0 ;
  wire \clock_counter[11]_i_22_n_0 ;
  wire \clock_counter[11]_i_23_n_0 ;
  wire \clock_counter[11]_i_24_n_0 ;
  wire \clock_counter[11]_i_25_n_0 ;
  wire \clock_counter[11]_i_27_n_0 ;
  wire \clock_counter[11]_i_28_n_0 ;
  wire \clock_counter[11]_i_29_n_0 ;
  wire \clock_counter[11]_i_30_n_0 ;
  wire \clock_counter[11]_i_32_n_0 ;
  wire \clock_counter[11]_i_33_n_0 ;
  wire \clock_counter[11]_i_34_n_0 ;
  wire \clock_counter[11]_i_35_n_0 ;
  wire \clock_counter[11]_i_36_n_0 ;
  wire \clock_counter[11]_i_37_n_0 ;
  wire \clock_counter[11]_i_38_n_0 ;
  wire \clock_counter[11]_i_39_n_0 ;
  wire \clock_counter[11]_i_4_n_0 ;
  wire \clock_counter[11]_i_5_n_0 ;
  wire \clock_counter[11]_i_7_n_0 ;
  wire \clock_counter[11]_i_8_n_0 ;
  wire \clock_counter[11]_i_9_n_0 ;
  wire \clock_counter[12]_i_10_n_0 ;
  wire \clock_counter[12]_i_12_n_0 ;
  wire \clock_counter[12]_i_13_n_0 ;
  wire \clock_counter[12]_i_14_n_0 ;
  wire \clock_counter[12]_i_15_n_0 ;
  wire \clock_counter[12]_i_17_n_0 ;
  wire \clock_counter[12]_i_18_n_0 ;
  wire \clock_counter[12]_i_19_n_0 ;
  wire \clock_counter[12]_i_20_n_0 ;
  wire \clock_counter[12]_i_22_n_0 ;
  wire \clock_counter[12]_i_23_n_0 ;
  wire \clock_counter[12]_i_24_n_0 ;
  wire \clock_counter[12]_i_25_n_0 ;
  wire \clock_counter[12]_i_27_n_0 ;
  wire \clock_counter[12]_i_28_n_0 ;
  wire \clock_counter[12]_i_29_n_0 ;
  wire \clock_counter[12]_i_30_n_0 ;
  wire \clock_counter[12]_i_32_n_0 ;
  wire \clock_counter[12]_i_33_n_0 ;
  wire \clock_counter[12]_i_34_n_0 ;
  wire \clock_counter[12]_i_35_n_0 ;
  wire \clock_counter[12]_i_36_n_0 ;
  wire \clock_counter[12]_i_37_n_0 ;
  wire \clock_counter[12]_i_38_n_0 ;
  wire \clock_counter[12]_i_39_n_0 ;
  wire \clock_counter[12]_i_4_n_0 ;
  wire \clock_counter[12]_i_5_n_0 ;
  wire \clock_counter[12]_i_7_n_0 ;
  wire \clock_counter[12]_i_8_n_0 ;
  wire \clock_counter[12]_i_9_n_0 ;
  wire \clock_counter[13]_i_10_n_0 ;
  wire \clock_counter[13]_i_12_n_0 ;
  wire \clock_counter[13]_i_13_n_0 ;
  wire \clock_counter[13]_i_14_n_0 ;
  wire \clock_counter[13]_i_15_n_0 ;
  wire \clock_counter[13]_i_17_n_0 ;
  wire \clock_counter[13]_i_18_n_0 ;
  wire \clock_counter[13]_i_19_n_0 ;
  wire \clock_counter[13]_i_20_n_0 ;
  wire \clock_counter[13]_i_22_n_0 ;
  wire \clock_counter[13]_i_23_n_0 ;
  wire \clock_counter[13]_i_24_n_0 ;
  wire \clock_counter[13]_i_25_n_0 ;
  wire \clock_counter[13]_i_27_n_0 ;
  wire \clock_counter[13]_i_28_n_0 ;
  wire \clock_counter[13]_i_29_n_0 ;
  wire \clock_counter[13]_i_30_n_0 ;
  wire \clock_counter[13]_i_32_n_0 ;
  wire \clock_counter[13]_i_33_n_0 ;
  wire \clock_counter[13]_i_34_n_0 ;
  wire \clock_counter[13]_i_35_n_0 ;
  wire \clock_counter[13]_i_36_n_0 ;
  wire \clock_counter[13]_i_37_n_0 ;
  wire \clock_counter[13]_i_38_n_0 ;
  wire \clock_counter[13]_i_4_n_0 ;
  wire \clock_counter[13]_i_5_n_0 ;
  wire \clock_counter[13]_i_7_n_0 ;
  wire \clock_counter[13]_i_8_n_0 ;
  wire \clock_counter[13]_i_9_n_0 ;
  wire \clock_counter[14]_i_10_n_0 ;
  wire \clock_counter[14]_i_12_n_0 ;
  wire \clock_counter[14]_i_13_n_0 ;
  wire \clock_counter[14]_i_14_n_0 ;
  wire \clock_counter[14]_i_15_n_0 ;
  wire \clock_counter[14]_i_17_n_0 ;
  wire \clock_counter[14]_i_18_n_0 ;
  wire \clock_counter[14]_i_19_n_0 ;
  wire \clock_counter[14]_i_20_n_0 ;
  wire \clock_counter[14]_i_22_n_0 ;
  wire \clock_counter[14]_i_23_n_0 ;
  wire \clock_counter[14]_i_24_n_0 ;
  wire \clock_counter[14]_i_25_n_0 ;
  wire \clock_counter[14]_i_27_n_0 ;
  wire \clock_counter[14]_i_28_n_0 ;
  wire \clock_counter[14]_i_29_n_0 ;
  wire \clock_counter[14]_i_30_n_0 ;
  wire \clock_counter[14]_i_32_n_0 ;
  wire \clock_counter[14]_i_33_n_0 ;
  wire \clock_counter[14]_i_34_n_0 ;
  wire \clock_counter[14]_i_35_n_0 ;
  wire \clock_counter[14]_i_36_n_0 ;
  wire \clock_counter[14]_i_37_n_0 ;
  wire \clock_counter[14]_i_38_n_0 ;
  wire \clock_counter[14]_i_4_n_0 ;
  wire \clock_counter[14]_i_5_n_0 ;
  wire \clock_counter[14]_i_7_n_0 ;
  wire \clock_counter[14]_i_8_n_0 ;
  wire \clock_counter[14]_i_9_n_0 ;
  wire \clock_counter[15]_i_10_n_0 ;
  wire \clock_counter[15]_i_12_n_0 ;
  wire \clock_counter[15]_i_13_n_0 ;
  wire \clock_counter[15]_i_14_n_0 ;
  wire \clock_counter[15]_i_15_n_0 ;
  wire \clock_counter[15]_i_17_n_0 ;
  wire \clock_counter[15]_i_18_n_0 ;
  wire \clock_counter[15]_i_19_n_0 ;
  wire \clock_counter[15]_i_20_n_0 ;
  wire \clock_counter[15]_i_22_n_0 ;
  wire \clock_counter[15]_i_23_n_0 ;
  wire \clock_counter[15]_i_24_n_0 ;
  wire \clock_counter[15]_i_25_n_0 ;
  wire \clock_counter[15]_i_27_n_0 ;
  wire \clock_counter[15]_i_28_n_0 ;
  wire \clock_counter[15]_i_29_n_0 ;
  wire \clock_counter[15]_i_30_n_0 ;
  wire \clock_counter[15]_i_32_n_0 ;
  wire \clock_counter[15]_i_33_n_0 ;
  wire \clock_counter[15]_i_34_n_0 ;
  wire \clock_counter[15]_i_35_n_0 ;
  wire \clock_counter[15]_i_36_n_0 ;
  wire \clock_counter[15]_i_37_n_0 ;
  wire \clock_counter[15]_i_38_n_0 ;
  wire \clock_counter[15]_i_4_n_0 ;
  wire \clock_counter[15]_i_5_n_0 ;
  wire \clock_counter[15]_i_7_n_0 ;
  wire \clock_counter[15]_i_8_n_0 ;
  wire \clock_counter[15]_i_9_n_0 ;
  wire \clock_counter[16]_i_10_n_0 ;
  wire \clock_counter[16]_i_12_n_0 ;
  wire \clock_counter[16]_i_13_n_0 ;
  wire \clock_counter[16]_i_14_n_0 ;
  wire \clock_counter[16]_i_15_n_0 ;
  wire \clock_counter[16]_i_17_n_0 ;
  wire \clock_counter[16]_i_18_n_0 ;
  wire \clock_counter[16]_i_19_n_0 ;
  wire \clock_counter[16]_i_20_n_0 ;
  wire \clock_counter[16]_i_22_n_0 ;
  wire \clock_counter[16]_i_23_n_0 ;
  wire \clock_counter[16]_i_24_n_0 ;
  wire \clock_counter[16]_i_25_n_0 ;
  wire \clock_counter[16]_i_27_n_0 ;
  wire \clock_counter[16]_i_28_n_0 ;
  wire \clock_counter[16]_i_29_n_0 ;
  wire \clock_counter[16]_i_30_n_0 ;
  wire \clock_counter[16]_i_32_n_0 ;
  wire \clock_counter[16]_i_33_n_0 ;
  wire \clock_counter[16]_i_34_n_0 ;
  wire \clock_counter[16]_i_35_n_0 ;
  wire \clock_counter[16]_i_36_n_0 ;
  wire \clock_counter[16]_i_37_n_0 ;
  wire \clock_counter[16]_i_38_n_0 ;
  wire \clock_counter[16]_i_4_n_0 ;
  wire \clock_counter[16]_i_5_n_0 ;
  wire \clock_counter[16]_i_7_n_0 ;
  wire \clock_counter[16]_i_8_n_0 ;
  wire \clock_counter[16]_i_9_n_0 ;
  wire \clock_counter[17]_i_10_n_0 ;
  wire \clock_counter[17]_i_12_n_0 ;
  wire \clock_counter[17]_i_13_n_0 ;
  wire \clock_counter[17]_i_14_n_0 ;
  wire \clock_counter[17]_i_15_n_0 ;
  wire \clock_counter[17]_i_17_n_0 ;
  wire \clock_counter[17]_i_18_n_0 ;
  wire \clock_counter[17]_i_19_n_0 ;
  wire \clock_counter[17]_i_20_n_0 ;
  wire \clock_counter[17]_i_22_n_0 ;
  wire \clock_counter[17]_i_23_n_0 ;
  wire \clock_counter[17]_i_24_n_0 ;
  wire \clock_counter[17]_i_25_n_0 ;
  wire \clock_counter[17]_i_27_n_0 ;
  wire \clock_counter[17]_i_28_n_0 ;
  wire \clock_counter[17]_i_29_n_0 ;
  wire \clock_counter[17]_i_30_n_0 ;
  wire \clock_counter[17]_i_32_n_0 ;
  wire \clock_counter[17]_i_33_n_0 ;
  wire \clock_counter[17]_i_34_n_0 ;
  wire \clock_counter[17]_i_35_n_0 ;
  wire \clock_counter[17]_i_36_n_0 ;
  wire \clock_counter[17]_i_37_n_0 ;
  wire \clock_counter[17]_i_38_n_0 ;
  wire \clock_counter[17]_i_39_n_0 ;
  wire \clock_counter[17]_i_4_n_0 ;
  wire \clock_counter[17]_i_5_n_0 ;
  wire \clock_counter[17]_i_7_n_0 ;
  wire \clock_counter[17]_i_8_n_0 ;
  wire \clock_counter[17]_i_9_n_0 ;
  wire \clock_counter[18]_i_10_n_0 ;
  wire \clock_counter[18]_i_12_n_0 ;
  wire \clock_counter[18]_i_13_n_0 ;
  wire \clock_counter[18]_i_14_n_0 ;
  wire \clock_counter[18]_i_15_n_0 ;
  wire \clock_counter[18]_i_17_n_0 ;
  wire \clock_counter[18]_i_18_n_0 ;
  wire \clock_counter[18]_i_19_n_0 ;
  wire \clock_counter[18]_i_20_n_0 ;
  wire \clock_counter[18]_i_22_n_0 ;
  wire \clock_counter[18]_i_23_n_0 ;
  wire \clock_counter[18]_i_24_n_0 ;
  wire \clock_counter[18]_i_25_n_0 ;
  wire \clock_counter[18]_i_27_n_0 ;
  wire \clock_counter[18]_i_28_n_0 ;
  wire \clock_counter[18]_i_29_n_0 ;
  wire \clock_counter[18]_i_30_n_0 ;
  wire \clock_counter[18]_i_32_n_0 ;
  wire \clock_counter[18]_i_33_n_0 ;
  wire \clock_counter[18]_i_34_n_0 ;
  wire \clock_counter[18]_i_35_n_0 ;
  wire \clock_counter[18]_i_36_n_0 ;
  wire \clock_counter[18]_i_37_n_0 ;
  wire \clock_counter[18]_i_38_n_0 ;
  wire \clock_counter[18]_i_4_n_0 ;
  wire \clock_counter[18]_i_5_n_0 ;
  wire \clock_counter[18]_i_7_n_0 ;
  wire \clock_counter[18]_i_8_n_0 ;
  wire \clock_counter[18]_i_9_n_0 ;
  wire \clock_counter[19]_i_10_n_0 ;
  wire \clock_counter[19]_i_12_n_0 ;
  wire \clock_counter[19]_i_13_n_0 ;
  wire \clock_counter[19]_i_14_n_0 ;
  wire \clock_counter[19]_i_15_n_0 ;
  wire \clock_counter[19]_i_17_n_0 ;
  wire \clock_counter[19]_i_18_n_0 ;
  wire \clock_counter[19]_i_19_n_0 ;
  wire \clock_counter[19]_i_20_n_0 ;
  wire \clock_counter[19]_i_22_n_0 ;
  wire \clock_counter[19]_i_23_n_0 ;
  wire \clock_counter[19]_i_24_n_0 ;
  wire \clock_counter[19]_i_25_n_0 ;
  wire \clock_counter[19]_i_27_n_0 ;
  wire \clock_counter[19]_i_28_n_0 ;
  wire \clock_counter[19]_i_29_n_0 ;
  wire \clock_counter[19]_i_30_n_0 ;
  wire \clock_counter[19]_i_32_n_0 ;
  wire \clock_counter[19]_i_33_n_0 ;
  wire \clock_counter[19]_i_34_n_0 ;
  wire \clock_counter[19]_i_35_n_0 ;
  wire \clock_counter[19]_i_36_n_0 ;
  wire \clock_counter[19]_i_37_n_0 ;
  wire \clock_counter[19]_i_38_n_0 ;
  wire \clock_counter[19]_i_39_n_0 ;
  wire \clock_counter[19]_i_4_n_0 ;
  wire \clock_counter[19]_i_5_n_0 ;
  wire \clock_counter[19]_i_7_n_0 ;
  wire \clock_counter[19]_i_8_n_0 ;
  wire \clock_counter[19]_i_9_n_0 ;
  wire \clock_counter[1]_i_10_n_0 ;
  wire \clock_counter[1]_i_12_n_0 ;
  wire \clock_counter[1]_i_13_n_0 ;
  wire \clock_counter[1]_i_14_n_0 ;
  wire \clock_counter[1]_i_15_n_0 ;
  wire \clock_counter[1]_i_17_n_0 ;
  wire \clock_counter[1]_i_18_n_0 ;
  wire \clock_counter[1]_i_19_n_0 ;
  wire \clock_counter[1]_i_20_n_0 ;
  wire \clock_counter[1]_i_22_n_0 ;
  wire \clock_counter[1]_i_23_n_0 ;
  wire \clock_counter[1]_i_24_n_0 ;
  wire \clock_counter[1]_i_25_n_0 ;
  wire \clock_counter[1]_i_27_n_0 ;
  wire \clock_counter[1]_i_28_n_0 ;
  wire \clock_counter[1]_i_29_n_0 ;
  wire \clock_counter[1]_i_30_n_0 ;
  wire \clock_counter[1]_i_32_n_0 ;
  wire \clock_counter[1]_i_33_n_0 ;
  wire \clock_counter[1]_i_34_n_0 ;
  wire \clock_counter[1]_i_35_n_0 ;
  wire \clock_counter[1]_i_36_n_0 ;
  wire \clock_counter[1]_i_37_n_0 ;
  wire \clock_counter[1]_i_38_n_0 ;
  wire \clock_counter[1]_i_39_n_0 ;
  wire \clock_counter[1]_i_4_n_0 ;
  wire \clock_counter[1]_i_5_n_0 ;
  wire \clock_counter[1]_i_7_n_0 ;
  wire \clock_counter[1]_i_8_n_0 ;
  wire \clock_counter[1]_i_9_n_0 ;
  wire \clock_counter[20]_i_10_n_0 ;
  wire \clock_counter[20]_i_12_n_0 ;
  wire \clock_counter[20]_i_13_n_0 ;
  wire \clock_counter[20]_i_14_n_0 ;
  wire \clock_counter[20]_i_15_n_0 ;
  wire \clock_counter[20]_i_17_n_0 ;
  wire \clock_counter[20]_i_18_n_0 ;
  wire \clock_counter[20]_i_19_n_0 ;
  wire \clock_counter[20]_i_20_n_0 ;
  wire \clock_counter[20]_i_22_n_0 ;
  wire \clock_counter[20]_i_23_n_0 ;
  wire \clock_counter[20]_i_24_n_0 ;
  wire \clock_counter[20]_i_25_n_0 ;
  wire \clock_counter[20]_i_27_n_0 ;
  wire \clock_counter[20]_i_28_n_0 ;
  wire \clock_counter[20]_i_29_n_0 ;
  wire \clock_counter[20]_i_30_n_0 ;
  wire \clock_counter[20]_i_32_n_0 ;
  wire \clock_counter[20]_i_33_n_0 ;
  wire \clock_counter[20]_i_34_n_0 ;
  wire \clock_counter[20]_i_35_n_0 ;
  wire \clock_counter[20]_i_36_n_0 ;
  wire \clock_counter[20]_i_37_n_0 ;
  wire \clock_counter[20]_i_38_n_0 ;
  wire \clock_counter[20]_i_4_n_0 ;
  wire \clock_counter[20]_i_5_n_0 ;
  wire \clock_counter[20]_i_7_n_0 ;
  wire \clock_counter[20]_i_8_n_0 ;
  wire \clock_counter[20]_i_9_n_0 ;
  wire \clock_counter[21]_i_10_n_0 ;
  wire \clock_counter[21]_i_12_n_0 ;
  wire \clock_counter[21]_i_13_n_0 ;
  wire \clock_counter[21]_i_14_n_0 ;
  wire \clock_counter[21]_i_15_n_0 ;
  wire \clock_counter[21]_i_17_n_0 ;
  wire \clock_counter[21]_i_18_n_0 ;
  wire \clock_counter[21]_i_19_n_0 ;
  wire \clock_counter[21]_i_20_n_0 ;
  wire \clock_counter[21]_i_22_n_0 ;
  wire \clock_counter[21]_i_23_n_0 ;
  wire \clock_counter[21]_i_24_n_0 ;
  wire \clock_counter[21]_i_25_n_0 ;
  wire \clock_counter[21]_i_27_n_0 ;
  wire \clock_counter[21]_i_28_n_0 ;
  wire \clock_counter[21]_i_29_n_0 ;
  wire \clock_counter[21]_i_30_n_0 ;
  wire \clock_counter[21]_i_32_n_0 ;
  wire \clock_counter[21]_i_33_n_0 ;
  wire \clock_counter[21]_i_34_n_0 ;
  wire \clock_counter[21]_i_35_n_0 ;
  wire \clock_counter[21]_i_36_n_0 ;
  wire \clock_counter[21]_i_37_n_0 ;
  wire \clock_counter[21]_i_38_n_0 ;
  wire \clock_counter[21]_i_4_n_0 ;
  wire \clock_counter[21]_i_5_n_0 ;
  wire \clock_counter[21]_i_7_n_0 ;
  wire \clock_counter[21]_i_8_n_0 ;
  wire \clock_counter[21]_i_9_n_0 ;
  wire \clock_counter[22]_i_10_n_0 ;
  wire \clock_counter[22]_i_12_n_0 ;
  wire \clock_counter[22]_i_13_n_0 ;
  wire \clock_counter[22]_i_14_n_0 ;
  wire \clock_counter[22]_i_15_n_0 ;
  wire \clock_counter[22]_i_17_n_0 ;
  wire \clock_counter[22]_i_18_n_0 ;
  wire \clock_counter[22]_i_19_n_0 ;
  wire \clock_counter[22]_i_20_n_0 ;
  wire \clock_counter[22]_i_22_n_0 ;
  wire \clock_counter[22]_i_23_n_0 ;
  wire \clock_counter[22]_i_24_n_0 ;
  wire \clock_counter[22]_i_25_n_0 ;
  wire \clock_counter[22]_i_27_n_0 ;
  wire \clock_counter[22]_i_28_n_0 ;
  wire \clock_counter[22]_i_29_n_0 ;
  wire \clock_counter[22]_i_30_n_0 ;
  wire \clock_counter[22]_i_32_n_0 ;
  wire \clock_counter[22]_i_33_n_0 ;
  wire \clock_counter[22]_i_34_n_0 ;
  wire \clock_counter[22]_i_35_n_0 ;
  wire \clock_counter[22]_i_36_n_0 ;
  wire \clock_counter[22]_i_37_n_0 ;
  wire \clock_counter[22]_i_38_n_0 ;
  wire \clock_counter[22]_i_4_n_0 ;
  wire \clock_counter[22]_i_5_n_0 ;
  wire \clock_counter[22]_i_7_n_0 ;
  wire \clock_counter[22]_i_8_n_0 ;
  wire \clock_counter[22]_i_9_n_0 ;
  wire \clock_counter[23]_i_10_n_0 ;
  wire \clock_counter[23]_i_12_n_0 ;
  wire \clock_counter[23]_i_13_n_0 ;
  wire \clock_counter[23]_i_14_n_0 ;
  wire \clock_counter[23]_i_15_n_0 ;
  wire \clock_counter[23]_i_17_n_0 ;
  wire \clock_counter[23]_i_18_n_0 ;
  wire \clock_counter[23]_i_19_n_0 ;
  wire \clock_counter[23]_i_20_n_0 ;
  wire \clock_counter[23]_i_22_n_0 ;
  wire \clock_counter[23]_i_23_n_0 ;
  wire \clock_counter[23]_i_24_n_0 ;
  wire \clock_counter[23]_i_25_n_0 ;
  wire \clock_counter[23]_i_27_n_0 ;
  wire \clock_counter[23]_i_28_n_0 ;
  wire \clock_counter[23]_i_29_n_0 ;
  wire \clock_counter[23]_i_30_n_0 ;
  wire \clock_counter[23]_i_32_n_0 ;
  wire \clock_counter[23]_i_33_n_0 ;
  wire \clock_counter[23]_i_34_n_0 ;
  wire \clock_counter[23]_i_35_n_0 ;
  wire \clock_counter[23]_i_36_n_0 ;
  wire \clock_counter[23]_i_37_n_0 ;
  wire \clock_counter[23]_i_38_n_0 ;
  wire \clock_counter[23]_i_4_n_0 ;
  wire \clock_counter[23]_i_5_n_0 ;
  wire \clock_counter[23]_i_7_n_0 ;
  wire \clock_counter[23]_i_8_n_0 ;
  wire \clock_counter[23]_i_9_n_0 ;
  wire \clock_counter[24]_i_10_n_0 ;
  wire \clock_counter[24]_i_12_n_0 ;
  wire \clock_counter[24]_i_13_n_0 ;
  wire \clock_counter[24]_i_14_n_0 ;
  wire \clock_counter[24]_i_15_n_0 ;
  wire \clock_counter[24]_i_17_n_0 ;
  wire \clock_counter[24]_i_18_n_0 ;
  wire \clock_counter[24]_i_19_n_0 ;
  wire \clock_counter[24]_i_20_n_0 ;
  wire \clock_counter[24]_i_22_n_0 ;
  wire \clock_counter[24]_i_23_n_0 ;
  wire \clock_counter[24]_i_24_n_0 ;
  wire \clock_counter[24]_i_25_n_0 ;
  wire \clock_counter[24]_i_27_n_0 ;
  wire \clock_counter[24]_i_28_n_0 ;
  wire \clock_counter[24]_i_29_n_0 ;
  wire \clock_counter[24]_i_30_n_0 ;
  wire \clock_counter[24]_i_32_n_0 ;
  wire \clock_counter[24]_i_33_n_0 ;
  wire \clock_counter[24]_i_34_n_0 ;
  wire \clock_counter[24]_i_35_n_0 ;
  wire \clock_counter[24]_i_36_n_0 ;
  wire \clock_counter[24]_i_37_n_0 ;
  wire \clock_counter[24]_i_38_n_0 ;
  wire \clock_counter[24]_i_4_n_0 ;
  wire \clock_counter[24]_i_5_n_0 ;
  wire \clock_counter[24]_i_7_n_0 ;
  wire \clock_counter[24]_i_8_n_0 ;
  wire \clock_counter[24]_i_9_n_0 ;
  wire \clock_counter[25]_i_10_n_0 ;
  wire \clock_counter[25]_i_12_n_0 ;
  wire \clock_counter[25]_i_13_n_0 ;
  wire \clock_counter[25]_i_14_n_0 ;
  wire \clock_counter[25]_i_15_n_0 ;
  wire \clock_counter[25]_i_17_n_0 ;
  wire \clock_counter[25]_i_18_n_0 ;
  wire \clock_counter[25]_i_19_n_0 ;
  wire \clock_counter[25]_i_20_n_0 ;
  wire \clock_counter[25]_i_22_n_0 ;
  wire \clock_counter[25]_i_23_n_0 ;
  wire \clock_counter[25]_i_24_n_0 ;
  wire \clock_counter[25]_i_25_n_0 ;
  wire \clock_counter[25]_i_27_n_0 ;
  wire \clock_counter[25]_i_28_n_0 ;
  wire \clock_counter[25]_i_29_n_0 ;
  wire \clock_counter[25]_i_30_n_0 ;
  wire \clock_counter[25]_i_32_n_0 ;
  wire \clock_counter[25]_i_33_n_0 ;
  wire \clock_counter[25]_i_34_n_0 ;
  wire \clock_counter[25]_i_35_n_0 ;
  wire \clock_counter[25]_i_36_n_0 ;
  wire \clock_counter[25]_i_37_n_0 ;
  wire \clock_counter[25]_i_38_n_0 ;
  wire \clock_counter[25]_i_39_n_0 ;
  wire \clock_counter[25]_i_4_n_0 ;
  wire \clock_counter[25]_i_5_n_0 ;
  wire \clock_counter[25]_i_7_n_0 ;
  wire \clock_counter[25]_i_8_n_0 ;
  wire \clock_counter[25]_i_9_n_0 ;
  wire \clock_counter[26]_i_10_n_0 ;
  wire \clock_counter[26]_i_11_n_0 ;
  wire \clock_counter[26]_i_12_n_0 ;
  wire \clock_counter[26]_i_14_n_0 ;
  wire \clock_counter[26]_i_15_n_0 ;
  wire \clock_counter[26]_i_16_n_0 ;
  wire \clock_counter[26]_i_17_n_0 ;
  wire \clock_counter[26]_i_18_n_0 ;
  wire \clock_counter[26]_i_19_n_0 ;
  wire \clock_counter[26]_i_20_n_0 ;
  wire \clock_counter[26]_i_21_n_0 ;
  wire \clock_counter[26]_i_23_n_0 ;
  wire \clock_counter[26]_i_24_n_0 ;
  wire \clock_counter[26]_i_25_n_0 ;
  wire \clock_counter[26]_i_26_n_0 ;
  wire \clock_counter[26]_i_27_n_0 ;
  wire \clock_counter[26]_i_28_n_0 ;
  wire \clock_counter[26]_i_29_n_0 ;
  wire \clock_counter[26]_i_30_n_0 ;
  wire \clock_counter[26]_i_32_n_0 ;
  wire \clock_counter[26]_i_33_n_0 ;
  wire \clock_counter[26]_i_34_n_0 ;
  wire \clock_counter[26]_i_35_n_0 ;
  wire \clock_counter[26]_i_36_n_0 ;
  wire \clock_counter[26]_i_37_n_0 ;
  wire \clock_counter[26]_i_38_n_0 ;
  wire \clock_counter[26]_i_39_n_0 ;
  wire \clock_counter[26]_i_41_n_0 ;
  wire \clock_counter[26]_i_42_n_0 ;
  wire \clock_counter[26]_i_43_n_0 ;
  wire \clock_counter[26]_i_44_n_0 ;
  wire \clock_counter[26]_i_45_n_0 ;
  wire \clock_counter[26]_i_46_n_0 ;
  wire \clock_counter[26]_i_47_n_0 ;
  wire \clock_counter[26]_i_48_n_0 ;
  wire \clock_counter[26]_i_50_n_0 ;
  wire \clock_counter[26]_i_51_n_0 ;
  wire \clock_counter[26]_i_52_n_0 ;
  wire \clock_counter[26]_i_53_n_0 ;
  wire \clock_counter[26]_i_54_n_0 ;
  wire \clock_counter[26]_i_55_n_0 ;
  wire \clock_counter[26]_i_56_n_0 ;
  wire \clock_counter[26]_i_57_n_0 ;
  wire \clock_counter[26]_i_58_n_0 ;
  wire \clock_counter[26]_i_59_n_0 ;
  wire \clock_counter[26]_i_5_n_0 ;
  wire \clock_counter[26]_i_60_n_0 ;
  wire \clock_counter[26]_i_61_n_0 ;
  wire \clock_counter[26]_i_62_n_0 ;
  wire \clock_counter[26]_i_63_n_0 ;
  wire \clock_counter[26]_i_64_n_0 ;
  wire \clock_counter[26]_i_6_n_0 ;
  wire \clock_counter[26]_i_7_n_0 ;
  wire \clock_counter[26]_i_8_n_0 ;
  wire \clock_counter[26]_i_9_n_0 ;
  wire \clock_counter[27]_i_1_n_0 ;
  wire \clock_counter[2]_i_10_n_0 ;
  wire \clock_counter[2]_i_12_n_0 ;
  wire \clock_counter[2]_i_13_n_0 ;
  wire \clock_counter[2]_i_14_n_0 ;
  wire \clock_counter[2]_i_15_n_0 ;
  wire \clock_counter[2]_i_17_n_0 ;
  wire \clock_counter[2]_i_18_n_0 ;
  wire \clock_counter[2]_i_19_n_0 ;
  wire \clock_counter[2]_i_20_n_0 ;
  wire \clock_counter[2]_i_22_n_0 ;
  wire \clock_counter[2]_i_23_n_0 ;
  wire \clock_counter[2]_i_24_n_0 ;
  wire \clock_counter[2]_i_25_n_0 ;
  wire \clock_counter[2]_i_27_n_0 ;
  wire \clock_counter[2]_i_28_n_0 ;
  wire \clock_counter[2]_i_29_n_0 ;
  wire \clock_counter[2]_i_30_n_0 ;
  wire \clock_counter[2]_i_32_n_0 ;
  wire \clock_counter[2]_i_33_n_0 ;
  wire \clock_counter[2]_i_34_n_0 ;
  wire \clock_counter[2]_i_35_n_0 ;
  wire \clock_counter[2]_i_36_n_0 ;
  wire \clock_counter[2]_i_37_n_0 ;
  wire \clock_counter[2]_i_38_n_0 ;
  wire \clock_counter[2]_i_39_n_0 ;
  wire \clock_counter[2]_i_4_n_0 ;
  wire \clock_counter[2]_i_5_n_0 ;
  wire \clock_counter[2]_i_7_n_0 ;
  wire \clock_counter[2]_i_8_n_0 ;
  wire \clock_counter[2]_i_9_n_0 ;
  wire \clock_counter[3]_i_10_n_0 ;
  wire \clock_counter[3]_i_12_n_0 ;
  wire \clock_counter[3]_i_13_n_0 ;
  wire \clock_counter[3]_i_14_n_0 ;
  wire \clock_counter[3]_i_15_n_0 ;
  wire \clock_counter[3]_i_17_n_0 ;
  wire \clock_counter[3]_i_18_n_0 ;
  wire \clock_counter[3]_i_19_n_0 ;
  wire \clock_counter[3]_i_20_n_0 ;
  wire \clock_counter[3]_i_22_n_0 ;
  wire \clock_counter[3]_i_23_n_0 ;
  wire \clock_counter[3]_i_24_n_0 ;
  wire \clock_counter[3]_i_25_n_0 ;
  wire \clock_counter[3]_i_27_n_0 ;
  wire \clock_counter[3]_i_28_n_0 ;
  wire \clock_counter[3]_i_29_n_0 ;
  wire \clock_counter[3]_i_30_n_0 ;
  wire \clock_counter[3]_i_32_n_0 ;
  wire \clock_counter[3]_i_33_n_0 ;
  wire \clock_counter[3]_i_34_n_0 ;
  wire \clock_counter[3]_i_35_n_0 ;
  wire \clock_counter[3]_i_36_n_0 ;
  wire \clock_counter[3]_i_37_n_0 ;
  wire \clock_counter[3]_i_38_n_0 ;
  wire \clock_counter[3]_i_39_n_0 ;
  wire \clock_counter[3]_i_4_n_0 ;
  wire \clock_counter[3]_i_5_n_0 ;
  wire \clock_counter[3]_i_7_n_0 ;
  wire \clock_counter[3]_i_8_n_0 ;
  wire \clock_counter[3]_i_9_n_0 ;
  wire \clock_counter[4]_i_10_n_0 ;
  wire \clock_counter[4]_i_12_n_0 ;
  wire \clock_counter[4]_i_13_n_0 ;
  wire \clock_counter[4]_i_14_n_0 ;
  wire \clock_counter[4]_i_15_n_0 ;
  wire \clock_counter[4]_i_17_n_0 ;
  wire \clock_counter[4]_i_18_n_0 ;
  wire \clock_counter[4]_i_19_n_0 ;
  wire \clock_counter[4]_i_20_n_0 ;
  wire \clock_counter[4]_i_22_n_0 ;
  wire \clock_counter[4]_i_23_n_0 ;
  wire \clock_counter[4]_i_24_n_0 ;
  wire \clock_counter[4]_i_25_n_0 ;
  wire \clock_counter[4]_i_27_n_0 ;
  wire \clock_counter[4]_i_28_n_0 ;
  wire \clock_counter[4]_i_29_n_0 ;
  wire \clock_counter[4]_i_30_n_0 ;
  wire \clock_counter[4]_i_32_n_0 ;
  wire \clock_counter[4]_i_33_n_0 ;
  wire \clock_counter[4]_i_34_n_0 ;
  wire \clock_counter[4]_i_35_n_0 ;
  wire \clock_counter[4]_i_36_n_0 ;
  wire \clock_counter[4]_i_37_n_0 ;
  wire \clock_counter[4]_i_38_n_0 ;
  wire \clock_counter[4]_i_39_n_0 ;
  wire \clock_counter[4]_i_4_n_0 ;
  wire \clock_counter[4]_i_5_n_0 ;
  wire \clock_counter[4]_i_7_n_0 ;
  wire \clock_counter[4]_i_8_n_0 ;
  wire \clock_counter[4]_i_9_n_0 ;
  wire \clock_counter[5]_i_10_n_0 ;
  wire \clock_counter[5]_i_12_n_0 ;
  wire \clock_counter[5]_i_13_n_0 ;
  wire \clock_counter[5]_i_14_n_0 ;
  wire \clock_counter[5]_i_15_n_0 ;
  wire \clock_counter[5]_i_17_n_0 ;
  wire \clock_counter[5]_i_18_n_0 ;
  wire \clock_counter[5]_i_19_n_0 ;
  wire \clock_counter[5]_i_20_n_0 ;
  wire \clock_counter[5]_i_22_n_0 ;
  wire \clock_counter[5]_i_23_n_0 ;
  wire \clock_counter[5]_i_24_n_0 ;
  wire \clock_counter[5]_i_25_n_0 ;
  wire \clock_counter[5]_i_27_n_0 ;
  wire \clock_counter[5]_i_28_n_0 ;
  wire \clock_counter[5]_i_29_n_0 ;
  wire \clock_counter[5]_i_30_n_0 ;
  wire \clock_counter[5]_i_32_n_0 ;
  wire \clock_counter[5]_i_33_n_0 ;
  wire \clock_counter[5]_i_34_n_0 ;
  wire \clock_counter[5]_i_35_n_0 ;
  wire \clock_counter[5]_i_36_n_0 ;
  wire \clock_counter[5]_i_37_n_0 ;
  wire \clock_counter[5]_i_38_n_0 ;
  wire \clock_counter[5]_i_39_n_0 ;
  wire \clock_counter[5]_i_4_n_0 ;
  wire \clock_counter[5]_i_5_n_0 ;
  wire \clock_counter[5]_i_7_n_0 ;
  wire \clock_counter[5]_i_8_n_0 ;
  wire \clock_counter[5]_i_9_n_0 ;
  wire \clock_counter[6]_i_10_n_0 ;
  wire \clock_counter[6]_i_12_n_0 ;
  wire \clock_counter[6]_i_13_n_0 ;
  wire \clock_counter[6]_i_14_n_0 ;
  wire \clock_counter[6]_i_15_n_0 ;
  wire \clock_counter[6]_i_17_n_0 ;
  wire \clock_counter[6]_i_18_n_0 ;
  wire \clock_counter[6]_i_19_n_0 ;
  wire \clock_counter[6]_i_20_n_0 ;
  wire \clock_counter[6]_i_22_n_0 ;
  wire \clock_counter[6]_i_23_n_0 ;
  wire \clock_counter[6]_i_24_n_0 ;
  wire \clock_counter[6]_i_25_n_0 ;
  wire \clock_counter[6]_i_27_n_0 ;
  wire \clock_counter[6]_i_28_n_0 ;
  wire \clock_counter[6]_i_29_n_0 ;
  wire \clock_counter[6]_i_30_n_0 ;
  wire \clock_counter[6]_i_32_n_0 ;
  wire \clock_counter[6]_i_33_n_0 ;
  wire \clock_counter[6]_i_34_n_0 ;
  wire \clock_counter[6]_i_35_n_0 ;
  wire \clock_counter[6]_i_36_n_0 ;
  wire \clock_counter[6]_i_37_n_0 ;
  wire \clock_counter[6]_i_38_n_0 ;
  wire \clock_counter[6]_i_39_n_0 ;
  wire \clock_counter[6]_i_4_n_0 ;
  wire \clock_counter[6]_i_5_n_0 ;
  wire \clock_counter[6]_i_7_n_0 ;
  wire \clock_counter[6]_i_8_n_0 ;
  wire \clock_counter[6]_i_9_n_0 ;
  wire \clock_counter[7]_i_10_n_0 ;
  wire \clock_counter[7]_i_12_n_0 ;
  wire \clock_counter[7]_i_13_n_0 ;
  wire \clock_counter[7]_i_14_n_0 ;
  wire \clock_counter[7]_i_15_n_0 ;
  wire \clock_counter[7]_i_17_n_0 ;
  wire \clock_counter[7]_i_18_n_0 ;
  wire \clock_counter[7]_i_19_n_0 ;
  wire \clock_counter[7]_i_20_n_0 ;
  wire \clock_counter[7]_i_22_n_0 ;
  wire \clock_counter[7]_i_23_n_0 ;
  wire \clock_counter[7]_i_24_n_0 ;
  wire \clock_counter[7]_i_25_n_0 ;
  wire \clock_counter[7]_i_27_n_0 ;
  wire \clock_counter[7]_i_28_n_0 ;
  wire \clock_counter[7]_i_29_n_0 ;
  wire \clock_counter[7]_i_30_n_0 ;
  wire \clock_counter[7]_i_32_n_0 ;
  wire \clock_counter[7]_i_33_n_0 ;
  wire \clock_counter[7]_i_34_n_0 ;
  wire \clock_counter[7]_i_35_n_0 ;
  wire \clock_counter[7]_i_36_n_0 ;
  wire \clock_counter[7]_i_37_n_0 ;
  wire \clock_counter[7]_i_38_n_0 ;
  wire \clock_counter[7]_i_39_n_0 ;
  wire \clock_counter[7]_i_4_n_0 ;
  wire \clock_counter[7]_i_5_n_0 ;
  wire \clock_counter[7]_i_7_n_0 ;
  wire \clock_counter[7]_i_8_n_0 ;
  wire \clock_counter[7]_i_9_n_0 ;
  wire \clock_counter[8]_i_10_n_0 ;
  wire \clock_counter[8]_i_12_n_0 ;
  wire \clock_counter[8]_i_13_n_0 ;
  wire \clock_counter[8]_i_14_n_0 ;
  wire \clock_counter[8]_i_15_n_0 ;
  wire \clock_counter[8]_i_17_n_0 ;
  wire \clock_counter[8]_i_18_n_0 ;
  wire \clock_counter[8]_i_19_n_0 ;
  wire \clock_counter[8]_i_20_n_0 ;
  wire \clock_counter[8]_i_22_n_0 ;
  wire \clock_counter[8]_i_23_n_0 ;
  wire \clock_counter[8]_i_24_n_0 ;
  wire \clock_counter[8]_i_25_n_0 ;
  wire \clock_counter[8]_i_27_n_0 ;
  wire \clock_counter[8]_i_28_n_0 ;
  wire \clock_counter[8]_i_29_n_0 ;
  wire \clock_counter[8]_i_30_n_0 ;
  wire \clock_counter[8]_i_32_n_0 ;
  wire \clock_counter[8]_i_33_n_0 ;
  wire \clock_counter[8]_i_34_n_0 ;
  wire \clock_counter[8]_i_35_n_0 ;
  wire \clock_counter[8]_i_36_n_0 ;
  wire \clock_counter[8]_i_37_n_0 ;
  wire \clock_counter[8]_i_38_n_0 ;
  wire \clock_counter[8]_i_4_n_0 ;
  wire \clock_counter[8]_i_5_n_0 ;
  wire \clock_counter[8]_i_7_n_0 ;
  wire \clock_counter[8]_i_8_n_0 ;
  wire \clock_counter[8]_i_9_n_0 ;
  wire \clock_counter[9]_i_10_n_0 ;
  wire \clock_counter[9]_i_12_n_0 ;
  wire \clock_counter[9]_i_13_n_0 ;
  wire \clock_counter[9]_i_14_n_0 ;
  wire \clock_counter[9]_i_15_n_0 ;
  wire \clock_counter[9]_i_17_n_0 ;
  wire \clock_counter[9]_i_18_n_0 ;
  wire \clock_counter[9]_i_19_n_0 ;
  wire \clock_counter[9]_i_20_n_0 ;
  wire \clock_counter[9]_i_22_n_0 ;
  wire \clock_counter[9]_i_23_n_0 ;
  wire \clock_counter[9]_i_24_n_0 ;
  wire \clock_counter[9]_i_25_n_0 ;
  wire \clock_counter[9]_i_27_n_0 ;
  wire \clock_counter[9]_i_28_n_0 ;
  wire \clock_counter[9]_i_29_n_0 ;
  wire \clock_counter[9]_i_30_n_0 ;
  wire \clock_counter[9]_i_32_n_0 ;
  wire \clock_counter[9]_i_33_n_0 ;
  wire \clock_counter[9]_i_34_n_0 ;
  wire \clock_counter[9]_i_35_n_0 ;
  wire \clock_counter[9]_i_36_n_0 ;
  wire \clock_counter[9]_i_37_n_0 ;
  wire \clock_counter[9]_i_38_n_0 ;
  wire \clock_counter[9]_i_39_n_0 ;
  wire \clock_counter[9]_i_4_n_0 ;
  wire \clock_counter[9]_i_5_n_0 ;
  wire \clock_counter[9]_i_7_n_0 ;
  wire \clock_counter[9]_i_8_n_0 ;
  wire \clock_counter[9]_i_9_n_0 ;
  wire \clock_counter_reg[0]_i_10_n_0 ;
  wire \clock_counter_reg[0]_i_10_n_1 ;
  wire \clock_counter_reg[0]_i_10_n_2 ;
  wire \clock_counter_reg[0]_i_10_n_3 ;
  wire \clock_counter_reg[0]_i_15_n_0 ;
  wire \clock_counter_reg[0]_i_15_n_1 ;
  wire \clock_counter_reg[0]_i_15_n_2 ;
  wire \clock_counter_reg[0]_i_15_n_3 ;
  wire \clock_counter_reg[0]_i_20_n_0 ;
  wire \clock_counter_reg[0]_i_20_n_1 ;
  wire \clock_counter_reg[0]_i_20_n_2 ;
  wire \clock_counter_reg[0]_i_20_n_3 ;
  wire \clock_counter_reg[0]_i_25_n_0 ;
  wire \clock_counter_reg[0]_i_25_n_1 ;
  wire \clock_counter_reg[0]_i_25_n_2 ;
  wire \clock_counter_reg[0]_i_25_n_3 ;
  wire \clock_counter_reg[0]_i_30_n_0 ;
  wire \clock_counter_reg[0]_i_30_n_1 ;
  wire \clock_counter_reg[0]_i_30_n_2 ;
  wire \clock_counter_reg[0]_i_30_n_3 ;
  wire \clock_counter_reg[0]_i_3_n_0 ;
  wire \clock_counter_reg[0]_i_3_n_1 ;
  wire \clock_counter_reg[0]_i_3_n_2 ;
  wire \clock_counter_reg[0]_i_3_n_3 ;
  wire \clock_counter_reg[0]_i_5_n_0 ;
  wire \clock_counter_reg[0]_i_5_n_1 ;
  wire \clock_counter_reg[0]_i_5_n_2 ;
  wire \clock_counter_reg[0]_i_5_n_3 ;
  wire \clock_counter_reg[10]_i_11_n_0 ;
  wire \clock_counter_reg[10]_i_11_n_1 ;
  wire \clock_counter_reg[10]_i_11_n_2 ;
  wire \clock_counter_reg[10]_i_11_n_3 ;
  wire \clock_counter_reg[10]_i_11_n_4 ;
  wire \clock_counter_reg[10]_i_11_n_5 ;
  wire \clock_counter_reg[10]_i_11_n_6 ;
  wire \clock_counter_reg[10]_i_11_n_7 ;
  wire \clock_counter_reg[10]_i_16_n_0 ;
  wire \clock_counter_reg[10]_i_16_n_1 ;
  wire \clock_counter_reg[10]_i_16_n_2 ;
  wire \clock_counter_reg[10]_i_16_n_3 ;
  wire \clock_counter_reg[10]_i_16_n_4 ;
  wire \clock_counter_reg[10]_i_16_n_5 ;
  wire \clock_counter_reg[10]_i_16_n_6 ;
  wire \clock_counter_reg[10]_i_16_n_7 ;
  wire \clock_counter_reg[10]_i_21_n_0 ;
  wire \clock_counter_reg[10]_i_21_n_1 ;
  wire \clock_counter_reg[10]_i_21_n_2 ;
  wire \clock_counter_reg[10]_i_21_n_3 ;
  wire \clock_counter_reg[10]_i_21_n_4 ;
  wire \clock_counter_reg[10]_i_21_n_5 ;
  wire \clock_counter_reg[10]_i_21_n_6 ;
  wire \clock_counter_reg[10]_i_21_n_7 ;
  wire \clock_counter_reg[10]_i_26_n_0 ;
  wire \clock_counter_reg[10]_i_26_n_1 ;
  wire \clock_counter_reg[10]_i_26_n_2 ;
  wire \clock_counter_reg[10]_i_26_n_3 ;
  wire \clock_counter_reg[10]_i_26_n_4 ;
  wire \clock_counter_reg[10]_i_26_n_5 ;
  wire \clock_counter_reg[10]_i_26_n_6 ;
  wire \clock_counter_reg[10]_i_26_n_7 ;
  wire \clock_counter_reg[10]_i_2_n_3 ;
  wire \clock_counter_reg[10]_i_2_n_7 ;
  wire \clock_counter_reg[10]_i_31_n_0 ;
  wire \clock_counter_reg[10]_i_31_n_1 ;
  wire \clock_counter_reg[10]_i_31_n_2 ;
  wire \clock_counter_reg[10]_i_31_n_3 ;
  wire \clock_counter_reg[10]_i_31_n_4 ;
  wire \clock_counter_reg[10]_i_31_n_5 ;
  wire \clock_counter_reg[10]_i_31_n_6 ;
  wire \clock_counter_reg[10]_i_3_n_0 ;
  wire \clock_counter_reg[10]_i_3_n_1 ;
  wire \clock_counter_reg[10]_i_3_n_2 ;
  wire \clock_counter_reg[10]_i_3_n_3 ;
  wire \clock_counter_reg[10]_i_3_n_4 ;
  wire \clock_counter_reg[10]_i_3_n_5 ;
  wire \clock_counter_reg[10]_i_3_n_6 ;
  wire \clock_counter_reg[10]_i_3_n_7 ;
  wire \clock_counter_reg[10]_i_6_n_0 ;
  wire \clock_counter_reg[10]_i_6_n_1 ;
  wire \clock_counter_reg[10]_i_6_n_2 ;
  wire \clock_counter_reg[10]_i_6_n_3 ;
  wire \clock_counter_reg[10]_i_6_n_4 ;
  wire \clock_counter_reg[10]_i_6_n_5 ;
  wire \clock_counter_reg[10]_i_6_n_6 ;
  wire \clock_counter_reg[10]_i_6_n_7 ;
  wire \clock_counter_reg[11]_i_11_n_0 ;
  wire \clock_counter_reg[11]_i_11_n_1 ;
  wire \clock_counter_reg[11]_i_11_n_2 ;
  wire \clock_counter_reg[11]_i_11_n_3 ;
  wire \clock_counter_reg[11]_i_11_n_4 ;
  wire \clock_counter_reg[11]_i_11_n_5 ;
  wire \clock_counter_reg[11]_i_11_n_6 ;
  wire \clock_counter_reg[11]_i_11_n_7 ;
  wire \clock_counter_reg[11]_i_16_n_0 ;
  wire \clock_counter_reg[11]_i_16_n_1 ;
  wire \clock_counter_reg[11]_i_16_n_2 ;
  wire \clock_counter_reg[11]_i_16_n_3 ;
  wire \clock_counter_reg[11]_i_16_n_4 ;
  wire \clock_counter_reg[11]_i_16_n_5 ;
  wire \clock_counter_reg[11]_i_16_n_6 ;
  wire \clock_counter_reg[11]_i_16_n_7 ;
  wire \clock_counter_reg[11]_i_21_n_0 ;
  wire \clock_counter_reg[11]_i_21_n_1 ;
  wire \clock_counter_reg[11]_i_21_n_2 ;
  wire \clock_counter_reg[11]_i_21_n_3 ;
  wire \clock_counter_reg[11]_i_21_n_4 ;
  wire \clock_counter_reg[11]_i_21_n_5 ;
  wire \clock_counter_reg[11]_i_21_n_6 ;
  wire \clock_counter_reg[11]_i_21_n_7 ;
  wire \clock_counter_reg[11]_i_26_n_0 ;
  wire \clock_counter_reg[11]_i_26_n_1 ;
  wire \clock_counter_reg[11]_i_26_n_2 ;
  wire \clock_counter_reg[11]_i_26_n_3 ;
  wire \clock_counter_reg[11]_i_26_n_4 ;
  wire \clock_counter_reg[11]_i_26_n_5 ;
  wire \clock_counter_reg[11]_i_26_n_6 ;
  wire \clock_counter_reg[11]_i_26_n_7 ;
  wire \clock_counter_reg[11]_i_2_n_3 ;
  wire \clock_counter_reg[11]_i_2_n_7 ;
  wire \clock_counter_reg[11]_i_31_n_0 ;
  wire \clock_counter_reg[11]_i_31_n_1 ;
  wire \clock_counter_reg[11]_i_31_n_2 ;
  wire \clock_counter_reg[11]_i_31_n_3 ;
  wire \clock_counter_reg[11]_i_31_n_4 ;
  wire \clock_counter_reg[11]_i_31_n_5 ;
  wire \clock_counter_reg[11]_i_31_n_6 ;
  wire \clock_counter_reg[11]_i_3_n_0 ;
  wire \clock_counter_reg[11]_i_3_n_1 ;
  wire \clock_counter_reg[11]_i_3_n_2 ;
  wire \clock_counter_reg[11]_i_3_n_3 ;
  wire \clock_counter_reg[11]_i_3_n_4 ;
  wire \clock_counter_reg[11]_i_3_n_5 ;
  wire \clock_counter_reg[11]_i_3_n_6 ;
  wire \clock_counter_reg[11]_i_3_n_7 ;
  wire \clock_counter_reg[11]_i_6_n_0 ;
  wire \clock_counter_reg[11]_i_6_n_1 ;
  wire \clock_counter_reg[11]_i_6_n_2 ;
  wire \clock_counter_reg[11]_i_6_n_3 ;
  wire \clock_counter_reg[11]_i_6_n_4 ;
  wire \clock_counter_reg[11]_i_6_n_5 ;
  wire \clock_counter_reg[11]_i_6_n_6 ;
  wire \clock_counter_reg[11]_i_6_n_7 ;
  wire \clock_counter_reg[12]_i_11_n_0 ;
  wire \clock_counter_reg[12]_i_11_n_1 ;
  wire \clock_counter_reg[12]_i_11_n_2 ;
  wire \clock_counter_reg[12]_i_11_n_3 ;
  wire \clock_counter_reg[12]_i_11_n_4 ;
  wire \clock_counter_reg[12]_i_11_n_5 ;
  wire \clock_counter_reg[12]_i_11_n_6 ;
  wire \clock_counter_reg[12]_i_11_n_7 ;
  wire \clock_counter_reg[12]_i_16_n_0 ;
  wire \clock_counter_reg[12]_i_16_n_1 ;
  wire \clock_counter_reg[12]_i_16_n_2 ;
  wire \clock_counter_reg[12]_i_16_n_3 ;
  wire \clock_counter_reg[12]_i_16_n_4 ;
  wire \clock_counter_reg[12]_i_16_n_5 ;
  wire \clock_counter_reg[12]_i_16_n_6 ;
  wire \clock_counter_reg[12]_i_16_n_7 ;
  wire \clock_counter_reg[12]_i_21_n_0 ;
  wire \clock_counter_reg[12]_i_21_n_1 ;
  wire \clock_counter_reg[12]_i_21_n_2 ;
  wire \clock_counter_reg[12]_i_21_n_3 ;
  wire \clock_counter_reg[12]_i_21_n_4 ;
  wire \clock_counter_reg[12]_i_21_n_5 ;
  wire \clock_counter_reg[12]_i_21_n_6 ;
  wire \clock_counter_reg[12]_i_21_n_7 ;
  wire \clock_counter_reg[12]_i_26_n_0 ;
  wire \clock_counter_reg[12]_i_26_n_1 ;
  wire \clock_counter_reg[12]_i_26_n_2 ;
  wire \clock_counter_reg[12]_i_26_n_3 ;
  wire \clock_counter_reg[12]_i_26_n_4 ;
  wire \clock_counter_reg[12]_i_26_n_5 ;
  wire \clock_counter_reg[12]_i_26_n_6 ;
  wire \clock_counter_reg[12]_i_26_n_7 ;
  wire \clock_counter_reg[12]_i_2_n_3 ;
  wire \clock_counter_reg[12]_i_2_n_7 ;
  wire \clock_counter_reg[12]_i_31_n_0 ;
  wire \clock_counter_reg[12]_i_31_n_1 ;
  wire \clock_counter_reg[12]_i_31_n_2 ;
  wire \clock_counter_reg[12]_i_31_n_3 ;
  wire \clock_counter_reg[12]_i_31_n_4 ;
  wire \clock_counter_reg[12]_i_31_n_5 ;
  wire \clock_counter_reg[12]_i_31_n_6 ;
  wire \clock_counter_reg[12]_i_3_n_0 ;
  wire \clock_counter_reg[12]_i_3_n_1 ;
  wire \clock_counter_reg[12]_i_3_n_2 ;
  wire \clock_counter_reg[12]_i_3_n_3 ;
  wire \clock_counter_reg[12]_i_3_n_4 ;
  wire \clock_counter_reg[12]_i_3_n_5 ;
  wire \clock_counter_reg[12]_i_3_n_6 ;
  wire \clock_counter_reg[12]_i_3_n_7 ;
  wire \clock_counter_reg[12]_i_6_n_0 ;
  wire \clock_counter_reg[12]_i_6_n_1 ;
  wire \clock_counter_reg[12]_i_6_n_2 ;
  wire \clock_counter_reg[12]_i_6_n_3 ;
  wire \clock_counter_reg[12]_i_6_n_4 ;
  wire \clock_counter_reg[12]_i_6_n_5 ;
  wire \clock_counter_reg[12]_i_6_n_6 ;
  wire \clock_counter_reg[12]_i_6_n_7 ;
  wire \clock_counter_reg[13]_i_11_n_0 ;
  wire \clock_counter_reg[13]_i_11_n_1 ;
  wire \clock_counter_reg[13]_i_11_n_2 ;
  wire \clock_counter_reg[13]_i_11_n_3 ;
  wire \clock_counter_reg[13]_i_11_n_4 ;
  wire \clock_counter_reg[13]_i_11_n_5 ;
  wire \clock_counter_reg[13]_i_11_n_6 ;
  wire \clock_counter_reg[13]_i_11_n_7 ;
  wire \clock_counter_reg[13]_i_16_n_0 ;
  wire \clock_counter_reg[13]_i_16_n_1 ;
  wire \clock_counter_reg[13]_i_16_n_2 ;
  wire \clock_counter_reg[13]_i_16_n_3 ;
  wire \clock_counter_reg[13]_i_16_n_4 ;
  wire \clock_counter_reg[13]_i_16_n_5 ;
  wire \clock_counter_reg[13]_i_16_n_6 ;
  wire \clock_counter_reg[13]_i_16_n_7 ;
  wire \clock_counter_reg[13]_i_21_n_0 ;
  wire \clock_counter_reg[13]_i_21_n_1 ;
  wire \clock_counter_reg[13]_i_21_n_2 ;
  wire \clock_counter_reg[13]_i_21_n_3 ;
  wire \clock_counter_reg[13]_i_21_n_4 ;
  wire \clock_counter_reg[13]_i_21_n_5 ;
  wire \clock_counter_reg[13]_i_21_n_6 ;
  wire \clock_counter_reg[13]_i_21_n_7 ;
  wire \clock_counter_reg[13]_i_26_n_0 ;
  wire \clock_counter_reg[13]_i_26_n_1 ;
  wire \clock_counter_reg[13]_i_26_n_2 ;
  wire \clock_counter_reg[13]_i_26_n_3 ;
  wire \clock_counter_reg[13]_i_26_n_4 ;
  wire \clock_counter_reg[13]_i_26_n_5 ;
  wire \clock_counter_reg[13]_i_26_n_6 ;
  wire \clock_counter_reg[13]_i_26_n_7 ;
  wire \clock_counter_reg[13]_i_2_n_3 ;
  wire \clock_counter_reg[13]_i_2_n_7 ;
  wire \clock_counter_reg[13]_i_31_n_0 ;
  wire \clock_counter_reg[13]_i_31_n_1 ;
  wire \clock_counter_reg[13]_i_31_n_2 ;
  wire \clock_counter_reg[13]_i_31_n_3 ;
  wire \clock_counter_reg[13]_i_31_n_4 ;
  wire \clock_counter_reg[13]_i_31_n_5 ;
  wire \clock_counter_reg[13]_i_31_n_6 ;
  wire \clock_counter_reg[13]_i_3_n_0 ;
  wire \clock_counter_reg[13]_i_3_n_1 ;
  wire \clock_counter_reg[13]_i_3_n_2 ;
  wire \clock_counter_reg[13]_i_3_n_3 ;
  wire \clock_counter_reg[13]_i_3_n_4 ;
  wire \clock_counter_reg[13]_i_3_n_5 ;
  wire \clock_counter_reg[13]_i_3_n_6 ;
  wire \clock_counter_reg[13]_i_3_n_7 ;
  wire \clock_counter_reg[13]_i_6_n_0 ;
  wire \clock_counter_reg[13]_i_6_n_1 ;
  wire \clock_counter_reg[13]_i_6_n_2 ;
  wire \clock_counter_reg[13]_i_6_n_3 ;
  wire \clock_counter_reg[13]_i_6_n_4 ;
  wire \clock_counter_reg[13]_i_6_n_5 ;
  wire \clock_counter_reg[13]_i_6_n_6 ;
  wire \clock_counter_reg[13]_i_6_n_7 ;
  wire \clock_counter_reg[14]_i_11_n_0 ;
  wire \clock_counter_reg[14]_i_11_n_1 ;
  wire \clock_counter_reg[14]_i_11_n_2 ;
  wire \clock_counter_reg[14]_i_11_n_3 ;
  wire \clock_counter_reg[14]_i_11_n_4 ;
  wire \clock_counter_reg[14]_i_11_n_5 ;
  wire \clock_counter_reg[14]_i_11_n_6 ;
  wire \clock_counter_reg[14]_i_11_n_7 ;
  wire \clock_counter_reg[14]_i_16_n_0 ;
  wire \clock_counter_reg[14]_i_16_n_1 ;
  wire \clock_counter_reg[14]_i_16_n_2 ;
  wire \clock_counter_reg[14]_i_16_n_3 ;
  wire \clock_counter_reg[14]_i_16_n_4 ;
  wire \clock_counter_reg[14]_i_16_n_5 ;
  wire \clock_counter_reg[14]_i_16_n_6 ;
  wire \clock_counter_reg[14]_i_16_n_7 ;
  wire \clock_counter_reg[14]_i_21_n_0 ;
  wire \clock_counter_reg[14]_i_21_n_1 ;
  wire \clock_counter_reg[14]_i_21_n_2 ;
  wire \clock_counter_reg[14]_i_21_n_3 ;
  wire \clock_counter_reg[14]_i_21_n_4 ;
  wire \clock_counter_reg[14]_i_21_n_5 ;
  wire \clock_counter_reg[14]_i_21_n_6 ;
  wire \clock_counter_reg[14]_i_21_n_7 ;
  wire \clock_counter_reg[14]_i_26_n_0 ;
  wire \clock_counter_reg[14]_i_26_n_1 ;
  wire \clock_counter_reg[14]_i_26_n_2 ;
  wire \clock_counter_reg[14]_i_26_n_3 ;
  wire \clock_counter_reg[14]_i_26_n_4 ;
  wire \clock_counter_reg[14]_i_26_n_5 ;
  wire \clock_counter_reg[14]_i_26_n_6 ;
  wire \clock_counter_reg[14]_i_26_n_7 ;
  wire \clock_counter_reg[14]_i_2_n_3 ;
  wire \clock_counter_reg[14]_i_2_n_7 ;
  wire \clock_counter_reg[14]_i_31_n_0 ;
  wire \clock_counter_reg[14]_i_31_n_1 ;
  wire \clock_counter_reg[14]_i_31_n_2 ;
  wire \clock_counter_reg[14]_i_31_n_3 ;
  wire \clock_counter_reg[14]_i_31_n_4 ;
  wire \clock_counter_reg[14]_i_31_n_5 ;
  wire \clock_counter_reg[14]_i_31_n_6 ;
  wire \clock_counter_reg[14]_i_3_n_0 ;
  wire \clock_counter_reg[14]_i_3_n_1 ;
  wire \clock_counter_reg[14]_i_3_n_2 ;
  wire \clock_counter_reg[14]_i_3_n_3 ;
  wire \clock_counter_reg[14]_i_3_n_4 ;
  wire \clock_counter_reg[14]_i_3_n_5 ;
  wire \clock_counter_reg[14]_i_3_n_6 ;
  wire \clock_counter_reg[14]_i_3_n_7 ;
  wire \clock_counter_reg[14]_i_6_n_0 ;
  wire \clock_counter_reg[14]_i_6_n_1 ;
  wire \clock_counter_reg[14]_i_6_n_2 ;
  wire \clock_counter_reg[14]_i_6_n_3 ;
  wire \clock_counter_reg[14]_i_6_n_4 ;
  wire \clock_counter_reg[14]_i_6_n_5 ;
  wire \clock_counter_reg[14]_i_6_n_6 ;
  wire \clock_counter_reg[14]_i_6_n_7 ;
  wire \clock_counter_reg[15]_i_11_n_0 ;
  wire \clock_counter_reg[15]_i_11_n_1 ;
  wire \clock_counter_reg[15]_i_11_n_2 ;
  wire \clock_counter_reg[15]_i_11_n_3 ;
  wire \clock_counter_reg[15]_i_11_n_4 ;
  wire \clock_counter_reg[15]_i_11_n_5 ;
  wire \clock_counter_reg[15]_i_11_n_6 ;
  wire \clock_counter_reg[15]_i_11_n_7 ;
  wire \clock_counter_reg[15]_i_16_n_0 ;
  wire \clock_counter_reg[15]_i_16_n_1 ;
  wire \clock_counter_reg[15]_i_16_n_2 ;
  wire \clock_counter_reg[15]_i_16_n_3 ;
  wire \clock_counter_reg[15]_i_16_n_4 ;
  wire \clock_counter_reg[15]_i_16_n_5 ;
  wire \clock_counter_reg[15]_i_16_n_6 ;
  wire \clock_counter_reg[15]_i_16_n_7 ;
  wire \clock_counter_reg[15]_i_21_n_0 ;
  wire \clock_counter_reg[15]_i_21_n_1 ;
  wire \clock_counter_reg[15]_i_21_n_2 ;
  wire \clock_counter_reg[15]_i_21_n_3 ;
  wire \clock_counter_reg[15]_i_21_n_4 ;
  wire \clock_counter_reg[15]_i_21_n_5 ;
  wire \clock_counter_reg[15]_i_21_n_6 ;
  wire \clock_counter_reg[15]_i_21_n_7 ;
  wire \clock_counter_reg[15]_i_26_n_0 ;
  wire \clock_counter_reg[15]_i_26_n_1 ;
  wire \clock_counter_reg[15]_i_26_n_2 ;
  wire \clock_counter_reg[15]_i_26_n_3 ;
  wire \clock_counter_reg[15]_i_26_n_4 ;
  wire \clock_counter_reg[15]_i_26_n_5 ;
  wire \clock_counter_reg[15]_i_26_n_6 ;
  wire \clock_counter_reg[15]_i_26_n_7 ;
  wire \clock_counter_reg[15]_i_2_n_3 ;
  wire \clock_counter_reg[15]_i_2_n_7 ;
  wire \clock_counter_reg[15]_i_31_n_0 ;
  wire \clock_counter_reg[15]_i_31_n_1 ;
  wire \clock_counter_reg[15]_i_31_n_2 ;
  wire \clock_counter_reg[15]_i_31_n_3 ;
  wire \clock_counter_reg[15]_i_31_n_4 ;
  wire \clock_counter_reg[15]_i_31_n_5 ;
  wire \clock_counter_reg[15]_i_31_n_6 ;
  wire \clock_counter_reg[15]_i_3_n_0 ;
  wire \clock_counter_reg[15]_i_3_n_1 ;
  wire \clock_counter_reg[15]_i_3_n_2 ;
  wire \clock_counter_reg[15]_i_3_n_3 ;
  wire \clock_counter_reg[15]_i_3_n_4 ;
  wire \clock_counter_reg[15]_i_3_n_5 ;
  wire \clock_counter_reg[15]_i_3_n_6 ;
  wire \clock_counter_reg[15]_i_3_n_7 ;
  wire \clock_counter_reg[15]_i_6_n_0 ;
  wire \clock_counter_reg[15]_i_6_n_1 ;
  wire \clock_counter_reg[15]_i_6_n_2 ;
  wire \clock_counter_reg[15]_i_6_n_3 ;
  wire \clock_counter_reg[15]_i_6_n_4 ;
  wire \clock_counter_reg[15]_i_6_n_5 ;
  wire \clock_counter_reg[15]_i_6_n_6 ;
  wire \clock_counter_reg[15]_i_6_n_7 ;
  wire \clock_counter_reg[16]_i_11_n_0 ;
  wire \clock_counter_reg[16]_i_11_n_1 ;
  wire \clock_counter_reg[16]_i_11_n_2 ;
  wire \clock_counter_reg[16]_i_11_n_3 ;
  wire \clock_counter_reg[16]_i_11_n_4 ;
  wire \clock_counter_reg[16]_i_11_n_5 ;
  wire \clock_counter_reg[16]_i_11_n_6 ;
  wire \clock_counter_reg[16]_i_11_n_7 ;
  wire \clock_counter_reg[16]_i_16_n_0 ;
  wire \clock_counter_reg[16]_i_16_n_1 ;
  wire \clock_counter_reg[16]_i_16_n_2 ;
  wire \clock_counter_reg[16]_i_16_n_3 ;
  wire \clock_counter_reg[16]_i_16_n_4 ;
  wire \clock_counter_reg[16]_i_16_n_5 ;
  wire \clock_counter_reg[16]_i_16_n_6 ;
  wire \clock_counter_reg[16]_i_16_n_7 ;
  wire \clock_counter_reg[16]_i_21_n_0 ;
  wire \clock_counter_reg[16]_i_21_n_1 ;
  wire \clock_counter_reg[16]_i_21_n_2 ;
  wire \clock_counter_reg[16]_i_21_n_3 ;
  wire \clock_counter_reg[16]_i_21_n_4 ;
  wire \clock_counter_reg[16]_i_21_n_5 ;
  wire \clock_counter_reg[16]_i_21_n_6 ;
  wire \clock_counter_reg[16]_i_21_n_7 ;
  wire \clock_counter_reg[16]_i_26_n_0 ;
  wire \clock_counter_reg[16]_i_26_n_1 ;
  wire \clock_counter_reg[16]_i_26_n_2 ;
  wire \clock_counter_reg[16]_i_26_n_3 ;
  wire \clock_counter_reg[16]_i_26_n_4 ;
  wire \clock_counter_reg[16]_i_26_n_5 ;
  wire \clock_counter_reg[16]_i_26_n_6 ;
  wire \clock_counter_reg[16]_i_26_n_7 ;
  wire \clock_counter_reg[16]_i_2_n_3 ;
  wire \clock_counter_reg[16]_i_2_n_7 ;
  wire \clock_counter_reg[16]_i_31_n_0 ;
  wire \clock_counter_reg[16]_i_31_n_1 ;
  wire \clock_counter_reg[16]_i_31_n_2 ;
  wire \clock_counter_reg[16]_i_31_n_3 ;
  wire \clock_counter_reg[16]_i_31_n_4 ;
  wire \clock_counter_reg[16]_i_31_n_5 ;
  wire \clock_counter_reg[16]_i_31_n_6 ;
  wire \clock_counter_reg[16]_i_3_n_0 ;
  wire \clock_counter_reg[16]_i_3_n_1 ;
  wire \clock_counter_reg[16]_i_3_n_2 ;
  wire \clock_counter_reg[16]_i_3_n_3 ;
  wire \clock_counter_reg[16]_i_3_n_4 ;
  wire \clock_counter_reg[16]_i_3_n_5 ;
  wire \clock_counter_reg[16]_i_3_n_6 ;
  wire \clock_counter_reg[16]_i_3_n_7 ;
  wire \clock_counter_reg[16]_i_6_n_0 ;
  wire \clock_counter_reg[16]_i_6_n_1 ;
  wire \clock_counter_reg[16]_i_6_n_2 ;
  wire \clock_counter_reg[16]_i_6_n_3 ;
  wire \clock_counter_reg[16]_i_6_n_4 ;
  wire \clock_counter_reg[16]_i_6_n_5 ;
  wire \clock_counter_reg[16]_i_6_n_6 ;
  wire \clock_counter_reg[16]_i_6_n_7 ;
  wire \clock_counter_reg[17]_i_11_n_0 ;
  wire \clock_counter_reg[17]_i_11_n_1 ;
  wire \clock_counter_reg[17]_i_11_n_2 ;
  wire \clock_counter_reg[17]_i_11_n_3 ;
  wire \clock_counter_reg[17]_i_11_n_4 ;
  wire \clock_counter_reg[17]_i_11_n_5 ;
  wire \clock_counter_reg[17]_i_11_n_6 ;
  wire \clock_counter_reg[17]_i_11_n_7 ;
  wire \clock_counter_reg[17]_i_16_n_0 ;
  wire \clock_counter_reg[17]_i_16_n_1 ;
  wire \clock_counter_reg[17]_i_16_n_2 ;
  wire \clock_counter_reg[17]_i_16_n_3 ;
  wire \clock_counter_reg[17]_i_16_n_4 ;
  wire \clock_counter_reg[17]_i_16_n_5 ;
  wire \clock_counter_reg[17]_i_16_n_6 ;
  wire \clock_counter_reg[17]_i_16_n_7 ;
  wire \clock_counter_reg[17]_i_21_n_0 ;
  wire \clock_counter_reg[17]_i_21_n_1 ;
  wire \clock_counter_reg[17]_i_21_n_2 ;
  wire \clock_counter_reg[17]_i_21_n_3 ;
  wire \clock_counter_reg[17]_i_21_n_4 ;
  wire \clock_counter_reg[17]_i_21_n_5 ;
  wire \clock_counter_reg[17]_i_21_n_6 ;
  wire \clock_counter_reg[17]_i_21_n_7 ;
  wire \clock_counter_reg[17]_i_26_n_0 ;
  wire \clock_counter_reg[17]_i_26_n_1 ;
  wire \clock_counter_reg[17]_i_26_n_2 ;
  wire \clock_counter_reg[17]_i_26_n_3 ;
  wire \clock_counter_reg[17]_i_26_n_4 ;
  wire \clock_counter_reg[17]_i_26_n_5 ;
  wire \clock_counter_reg[17]_i_26_n_6 ;
  wire \clock_counter_reg[17]_i_26_n_7 ;
  wire \clock_counter_reg[17]_i_2_n_3 ;
  wire \clock_counter_reg[17]_i_2_n_7 ;
  wire \clock_counter_reg[17]_i_31_n_0 ;
  wire \clock_counter_reg[17]_i_31_n_1 ;
  wire \clock_counter_reg[17]_i_31_n_2 ;
  wire \clock_counter_reg[17]_i_31_n_3 ;
  wire \clock_counter_reg[17]_i_31_n_4 ;
  wire \clock_counter_reg[17]_i_31_n_5 ;
  wire \clock_counter_reg[17]_i_31_n_6 ;
  wire \clock_counter_reg[17]_i_3_n_0 ;
  wire \clock_counter_reg[17]_i_3_n_1 ;
  wire \clock_counter_reg[17]_i_3_n_2 ;
  wire \clock_counter_reg[17]_i_3_n_3 ;
  wire \clock_counter_reg[17]_i_3_n_4 ;
  wire \clock_counter_reg[17]_i_3_n_5 ;
  wire \clock_counter_reg[17]_i_3_n_6 ;
  wire \clock_counter_reg[17]_i_3_n_7 ;
  wire \clock_counter_reg[17]_i_6_n_0 ;
  wire \clock_counter_reg[17]_i_6_n_1 ;
  wire \clock_counter_reg[17]_i_6_n_2 ;
  wire \clock_counter_reg[17]_i_6_n_3 ;
  wire \clock_counter_reg[17]_i_6_n_4 ;
  wire \clock_counter_reg[17]_i_6_n_5 ;
  wire \clock_counter_reg[17]_i_6_n_6 ;
  wire \clock_counter_reg[17]_i_6_n_7 ;
  wire \clock_counter_reg[18]_i_11_n_0 ;
  wire \clock_counter_reg[18]_i_11_n_1 ;
  wire \clock_counter_reg[18]_i_11_n_2 ;
  wire \clock_counter_reg[18]_i_11_n_3 ;
  wire \clock_counter_reg[18]_i_11_n_4 ;
  wire \clock_counter_reg[18]_i_11_n_5 ;
  wire \clock_counter_reg[18]_i_11_n_6 ;
  wire \clock_counter_reg[18]_i_11_n_7 ;
  wire \clock_counter_reg[18]_i_16_n_0 ;
  wire \clock_counter_reg[18]_i_16_n_1 ;
  wire \clock_counter_reg[18]_i_16_n_2 ;
  wire \clock_counter_reg[18]_i_16_n_3 ;
  wire \clock_counter_reg[18]_i_16_n_4 ;
  wire \clock_counter_reg[18]_i_16_n_5 ;
  wire \clock_counter_reg[18]_i_16_n_6 ;
  wire \clock_counter_reg[18]_i_16_n_7 ;
  wire \clock_counter_reg[18]_i_21_n_0 ;
  wire \clock_counter_reg[18]_i_21_n_1 ;
  wire \clock_counter_reg[18]_i_21_n_2 ;
  wire \clock_counter_reg[18]_i_21_n_3 ;
  wire \clock_counter_reg[18]_i_21_n_4 ;
  wire \clock_counter_reg[18]_i_21_n_5 ;
  wire \clock_counter_reg[18]_i_21_n_6 ;
  wire \clock_counter_reg[18]_i_21_n_7 ;
  wire \clock_counter_reg[18]_i_26_n_0 ;
  wire \clock_counter_reg[18]_i_26_n_1 ;
  wire \clock_counter_reg[18]_i_26_n_2 ;
  wire \clock_counter_reg[18]_i_26_n_3 ;
  wire \clock_counter_reg[18]_i_26_n_4 ;
  wire \clock_counter_reg[18]_i_26_n_5 ;
  wire \clock_counter_reg[18]_i_26_n_6 ;
  wire \clock_counter_reg[18]_i_26_n_7 ;
  wire \clock_counter_reg[18]_i_2_n_3 ;
  wire \clock_counter_reg[18]_i_2_n_7 ;
  wire \clock_counter_reg[18]_i_31_n_0 ;
  wire \clock_counter_reg[18]_i_31_n_1 ;
  wire \clock_counter_reg[18]_i_31_n_2 ;
  wire \clock_counter_reg[18]_i_31_n_3 ;
  wire \clock_counter_reg[18]_i_31_n_4 ;
  wire \clock_counter_reg[18]_i_31_n_5 ;
  wire \clock_counter_reg[18]_i_31_n_6 ;
  wire \clock_counter_reg[18]_i_3_n_0 ;
  wire \clock_counter_reg[18]_i_3_n_1 ;
  wire \clock_counter_reg[18]_i_3_n_2 ;
  wire \clock_counter_reg[18]_i_3_n_3 ;
  wire \clock_counter_reg[18]_i_3_n_4 ;
  wire \clock_counter_reg[18]_i_3_n_5 ;
  wire \clock_counter_reg[18]_i_3_n_6 ;
  wire \clock_counter_reg[18]_i_3_n_7 ;
  wire \clock_counter_reg[18]_i_6_n_0 ;
  wire \clock_counter_reg[18]_i_6_n_1 ;
  wire \clock_counter_reg[18]_i_6_n_2 ;
  wire \clock_counter_reg[18]_i_6_n_3 ;
  wire \clock_counter_reg[18]_i_6_n_4 ;
  wire \clock_counter_reg[18]_i_6_n_5 ;
  wire \clock_counter_reg[18]_i_6_n_6 ;
  wire \clock_counter_reg[18]_i_6_n_7 ;
  wire \clock_counter_reg[19]_i_11_n_0 ;
  wire \clock_counter_reg[19]_i_11_n_1 ;
  wire \clock_counter_reg[19]_i_11_n_2 ;
  wire \clock_counter_reg[19]_i_11_n_3 ;
  wire \clock_counter_reg[19]_i_11_n_4 ;
  wire \clock_counter_reg[19]_i_11_n_5 ;
  wire \clock_counter_reg[19]_i_11_n_6 ;
  wire \clock_counter_reg[19]_i_11_n_7 ;
  wire \clock_counter_reg[19]_i_16_n_0 ;
  wire \clock_counter_reg[19]_i_16_n_1 ;
  wire \clock_counter_reg[19]_i_16_n_2 ;
  wire \clock_counter_reg[19]_i_16_n_3 ;
  wire \clock_counter_reg[19]_i_16_n_4 ;
  wire \clock_counter_reg[19]_i_16_n_5 ;
  wire \clock_counter_reg[19]_i_16_n_6 ;
  wire \clock_counter_reg[19]_i_16_n_7 ;
  wire \clock_counter_reg[19]_i_21_n_0 ;
  wire \clock_counter_reg[19]_i_21_n_1 ;
  wire \clock_counter_reg[19]_i_21_n_2 ;
  wire \clock_counter_reg[19]_i_21_n_3 ;
  wire \clock_counter_reg[19]_i_21_n_4 ;
  wire \clock_counter_reg[19]_i_21_n_5 ;
  wire \clock_counter_reg[19]_i_21_n_6 ;
  wire \clock_counter_reg[19]_i_21_n_7 ;
  wire \clock_counter_reg[19]_i_26_n_0 ;
  wire \clock_counter_reg[19]_i_26_n_1 ;
  wire \clock_counter_reg[19]_i_26_n_2 ;
  wire \clock_counter_reg[19]_i_26_n_3 ;
  wire \clock_counter_reg[19]_i_26_n_4 ;
  wire \clock_counter_reg[19]_i_26_n_5 ;
  wire \clock_counter_reg[19]_i_26_n_6 ;
  wire \clock_counter_reg[19]_i_26_n_7 ;
  wire \clock_counter_reg[19]_i_2_n_3 ;
  wire \clock_counter_reg[19]_i_2_n_7 ;
  wire \clock_counter_reg[19]_i_31_n_0 ;
  wire \clock_counter_reg[19]_i_31_n_1 ;
  wire \clock_counter_reg[19]_i_31_n_2 ;
  wire \clock_counter_reg[19]_i_31_n_3 ;
  wire \clock_counter_reg[19]_i_31_n_4 ;
  wire \clock_counter_reg[19]_i_31_n_5 ;
  wire \clock_counter_reg[19]_i_31_n_6 ;
  wire \clock_counter_reg[19]_i_3_n_0 ;
  wire \clock_counter_reg[19]_i_3_n_1 ;
  wire \clock_counter_reg[19]_i_3_n_2 ;
  wire \clock_counter_reg[19]_i_3_n_3 ;
  wire \clock_counter_reg[19]_i_3_n_4 ;
  wire \clock_counter_reg[19]_i_3_n_5 ;
  wire \clock_counter_reg[19]_i_3_n_6 ;
  wire \clock_counter_reg[19]_i_3_n_7 ;
  wire \clock_counter_reg[19]_i_6_n_0 ;
  wire \clock_counter_reg[19]_i_6_n_1 ;
  wire \clock_counter_reg[19]_i_6_n_2 ;
  wire \clock_counter_reg[19]_i_6_n_3 ;
  wire \clock_counter_reg[19]_i_6_n_4 ;
  wire \clock_counter_reg[19]_i_6_n_5 ;
  wire \clock_counter_reg[19]_i_6_n_6 ;
  wire \clock_counter_reg[19]_i_6_n_7 ;
  wire \clock_counter_reg[1]_i_11_n_0 ;
  wire \clock_counter_reg[1]_i_11_n_1 ;
  wire \clock_counter_reg[1]_i_11_n_2 ;
  wire \clock_counter_reg[1]_i_11_n_3 ;
  wire \clock_counter_reg[1]_i_11_n_4 ;
  wire \clock_counter_reg[1]_i_11_n_5 ;
  wire \clock_counter_reg[1]_i_11_n_6 ;
  wire \clock_counter_reg[1]_i_11_n_7 ;
  wire \clock_counter_reg[1]_i_16_n_0 ;
  wire \clock_counter_reg[1]_i_16_n_1 ;
  wire \clock_counter_reg[1]_i_16_n_2 ;
  wire \clock_counter_reg[1]_i_16_n_3 ;
  wire \clock_counter_reg[1]_i_16_n_4 ;
  wire \clock_counter_reg[1]_i_16_n_5 ;
  wire \clock_counter_reg[1]_i_16_n_6 ;
  wire \clock_counter_reg[1]_i_16_n_7 ;
  wire \clock_counter_reg[1]_i_21_n_0 ;
  wire \clock_counter_reg[1]_i_21_n_1 ;
  wire \clock_counter_reg[1]_i_21_n_2 ;
  wire \clock_counter_reg[1]_i_21_n_3 ;
  wire \clock_counter_reg[1]_i_21_n_4 ;
  wire \clock_counter_reg[1]_i_21_n_5 ;
  wire \clock_counter_reg[1]_i_21_n_6 ;
  wire \clock_counter_reg[1]_i_21_n_7 ;
  wire \clock_counter_reg[1]_i_26_n_0 ;
  wire \clock_counter_reg[1]_i_26_n_1 ;
  wire \clock_counter_reg[1]_i_26_n_2 ;
  wire \clock_counter_reg[1]_i_26_n_3 ;
  wire \clock_counter_reg[1]_i_26_n_4 ;
  wire \clock_counter_reg[1]_i_26_n_5 ;
  wire \clock_counter_reg[1]_i_26_n_6 ;
  wire \clock_counter_reg[1]_i_26_n_7 ;
  wire \clock_counter_reg[1]_i_2_n_3 ;
  wire \clock_counter_reg[1]_i_2_n_7 ;
  wire \clock_counter_reg[1]_i_31_n_0 ;
  wire \clock_counter_reg[1]_i_31_n_1 ;
  wire \clock_counter_reg[1]_i_31_n_2 ;
  wire \clock_counter_reg[1]_i_31_n_3 ;
  wire \clock_counter_reg[1]_i_31_n_4 ;
  wire \clock_counter_reg[1]_i_31_n_5 ;
  wire \clock_counter_reg[1]_i_31_n_6 ;
  wire \clock_counter_reg[1]_i_3_n_0 ;
  wire \clock_counter_reg[1]_i_3_n_1 ;
  wire \clock_counter_reg[1]_i_3_n_2 ;
  wire \clock_counter_reg[1]_i_3_n_3 ;
  wire \clock_counter_reg[1]_i_3_n_4 ;
  wire \clock_counter_reg[1]_i_3_n_5 ;
  wire \clock_counter_reg[1]_i_3_n_6 ;
  wire \clock_counter_reg[1]_i_3_n_7 ;
  wire \clock_counter_reg[1]_i_6_n_0 ;
  wire \clock_counter_reg[1]_i_6_n_1 ;
  wire \clock_counter_reg[1]_i_6_n_2 ;
  wire \clock_counter_reg[1]_i_6_n_3 ;
  wire \clock_counter_reg[1]_i_6_n_4 ;
  wire \clock_counter_reg[1]_i_6_n_5 ;
  wire \clock_counter_reg[1]_i_6_n_6 ;
  wire \clock_counter_reg[1]_i_6_n_7 ;
  wire \clock_counter_reg[20]_i_11_n_0 ;
  wire \clock_counter_reg[20]_i_11_n_1 ;
  wire \clock_counter_reg[20]_i_11_n_2 ;
  wire \clock_counter_reg[20]_i_11_n_3 ;
  wire \clock_counter_reg[20]_i_11_n_4 ;
  wire \clock_counter_reg[20]_i_11_n_5 ;
  wire \clock_counter_reg[20]_i_11_n_6 ;
  wire \clock_counter_reg[20]_i_11_n_7 ;
  wire \clock_counter_reg[20]_i_16_n_0 ;
  wire \clock_counter_reg[20]_i_16_n_1 ;
  wire \clock_counter_reg[20]_i_16_n_2 ;
  wire \clock_counter_reg[20]_i_16_n_3 ;
  wire \clock_counter_reg[20]_i_16_n_4 ;
  wire \clock_counter_reg[20]_i_16_n_5 ;
  wire \clock_counter_reg[20]_i_16_n_6 ;
  wire \clock_counter_reg[20]_i_16_n_7 ;
  wire \clock_counter_reg[20]_i_21_n_0 ;
  wire \clock_counter_reg[20]_i_21_n_1 ;
  wire \clock_counter_reg[20]_i_21_n_2 ;
  wire \clock_counter_reg[20]_i_21_n_3 ;
  wire \clock_counter_reg[20]_i_21_n_4 ;
  wire \clock_counter_reg[20]_i_21_n_5 ;
  wire \clock_counter_reg[20]_i_21_n_6 ;
  wire \clock_counter_reg[20]_i_21_n_7 ;
  wire \clock_counter_reg[20]_i_26_n_0 ;
  wire \clock_counter_reg[20]_i_26_n_1 ;
  wire \clock_counter_reg[20]_i_26_n_2 ;
  wire \clock_counter_reg[20]_i_26_n_3 ;
  wire \clock_counter_reg[20]_i_26_n_4 ;
  wire \clock_counter_reg[20]_i_26_n_5 ;
  wire \clock_counter_reg[20]_i_26_n_6 ;
  wire \clock_counter_reg[20]_i_26_n_7 ;
  wire \clock_counter_reg[20]_i_2_n_3 ;
  wire \clock_counter_reg[20]_i_2_n_7 ;
  wire \clock_counter_reg[20]_i_31_n_0 ;
  wire \clock_counter_reg[20]_i_31_n_1 ;
  wire \clock_counter_reg[20]_i_31_n_2 ;
  wire \clock_counter_reg[20]_i_31_n_3 ;
  wire \clock_counter_reg[20]_i_31_n_4 ;
  wire \clock_counter_reg[20]_i_31_n_5 ;
  wire \clock_counter_reg[20]_i_31_n_6 ;
  wire \clock_counter_reg[20]_i_3_n_0 ;
  wire \clock_counter_reg[20]_i_3_n_1 ;
  wire \clock_counter_reg[20]_i_3_n_2 ;
  wire \clock_counter_reg[20]_i_3_n_3 ;
  wire \clock_counter_reg[20]_i_3_n_4 ;
  wire \clock_counter_reg[20]_i_3_n_5 ;
  wire \clock_counter_reg[20]_i_3_n_6 ;
  wire \clock_counter_reg[20]_i_3_n_7 ;
  wire \clock_counter_reg[20]_i_6_n_0 ;
  wire \clock_counter_reg[20]_i_6_n_1 ;
  wire \clock_counter_reg[20]_i_6_n_2 ;
  wire \clock_counter_reg[20]_i_6_n_3 ;
  wire \clock_counter_reg[20]_i_6_n_4 ;
  wire \clock_counter_reg[20]_i_6_n_5 ;
  wire \clock_counter_reg[20]_i_6_n_6 ;
  wire \clock_counter_reg[20]_i_6_n_7 ;
  wire \clock_counter_reg[21]_i_11_n_0 ;
  wire \clock_counter_reg[21]_i_11_n_1 ;
  wire \clock_counter_reg[21]_i_11_n_2 ;
  wire \clock_counter_reg[21]_i_11_n_3 ;
  wire \clock_counter_reg[21]_i_11_n_4 ;
  wire \clock_counter_reg[21]_i_11_n_5 ;
  wire \clock_counter_reg[21]_i_11_n_6 ;
  wire \clock_counter_reg[21]_i_11_n_7 ;
  wire \clock_counter_reg[21]_i_16_n_0 ;
  wire \clock_counter_reg[21]_i_16_n_1 ;
  wire \clock_counter_reg[21]_i_16_n_2 ;
  wire \clock_counter_reg[21]_i_16_n_3 ;
  wire \clock_counter_reg[21]_i_16_n_4 ;
  wire \clock_counter_reg[21]_i_16_n_5 ;
  wire \clock_counter_reg[21]_i_16_n_6 ;
  wire \clock_counter_reg[21]_i_16_n_7 ;
  wire \clock_counter_reg[21]_i_21_n_0 ;
  wire \clock_counter_reg[21]_i_21_n_1 ;
  wire \clock_counter_reg[21]_i_21_n_2 ;
  wire \clock_counter_reg[21]_i_21_n_3 ;
  wire \clock_counter_reg[21]_i_21_n_4 ;
  wire \clock_counter_reg[21]_i_21_n_5 ;
  wire \clock_counter_reg[21]_i_21_n_6 ;
  wire \clock_counter_reg[21]_i_21_n_7 ;
  wire \clock_counter_reg[21]_i_26_n_0 ;
  wire \clock_counter_reg[21]_i_26_n_1 ;
  wire \clock_counter_reg[21]_i_26_n_2 ;
  wire \clock_counter_reg[21]_i_26_n_3 ;
  wire \clock_counter_reg[21]_i_26_n_4 ;
  wire \clock_counter_reg[21]_i_26_n_5 ;
  wire \clock_counter_reg[21]_i_26_n_6 ;
  wire \clock_counter_reg[21]_i_26_n_7 ;
  wire \clock_counter_reg[21]_i_2_n_3 ;
  wire \clock_counter_reg[21]_i_2_n_7 ;
  wire \clock_counter_reg[21]_i_31_n_0 ;
  wire \clock_counter_reg[21]_i_31_n_1 ;
  wire \clock_counter_reg[21]_i_31_n_2 ;
  wire \clock_counter_reg[21]_i_31_n_3 ;
  wire \clock_counter_reg[21]_i_31_n_4 ;
  wire \clock_counter_reg[21]_i_31_n_5 ;
  wire \clock_counter_reg[21]_i_31_n_6 ;
  wire \clock_counter_reg[21]_i_3_n_0 ;
  wire \clock_counter_reg[21]_i_3_n_1 ;
  wire \clock_counter_reg[21]_i_3_n_2 ;
  wire \clock_counter_reg[21]_i_3_n_3 ;
  wire \clock_counter_reg[21]_i_3_n_4 ;
  wire \clock_counter_reg[21]_i_3_n_5 ;
  wire \clock_counter_reg[21]_i_3_n_6 ;
  wire \clock_counter_reg[21]_i_3_n_7 ;
  wire \clock_counter_reg[21]_i_6_n_0 ;
  wire \clock_counter_reg[21]_i_6_n_1 ;
  wire \clock_counter_reg[21]_i_6_n_2 ;
  wire \clock_counter_reg[21]_i_6_n_3 ;
  wire \clock_counter_reg[21]_i_6_n_4 ;
  wire \clock_counter_reg[21]_i_6_n_5 ;
  wire \clock_counter_reg[21]_i_6_n_6 ;
  wire \clock_counter_reg[21]_i_6_n_7 ;
  wire \clock_counter_reg[22]_i_11_n_0 ;
  wire \clock_counter_reg[22]_i_11_n_1 ;
  wire \clock_counter_reg[22]_i_11_n_2 ;
  wire \clock_counter_reg[22]_i_11_n_3 ;
  wire \clock_counter_reg[22]_i_11_n_4 ;
  wire \clock_counter_reg[22]_i_11_n_5 ;
  wire \clock_counter_reg[22]_i_11_n_6 ;
  wire \clock_counter_reg[22]_i_11_n_7 ;
  wire \clock_counter_reg[22]_i_16_n_0 ;
  wire \clock_counter_reg[22]_i_16_n_1 ;
  wire \clock_counter_reg[22]_i_16_n_2 ;
  wire \clock_counter_reg[22]_i_16_n_3 ;
  wire \clock_counter_reg[22]_i_16_n_4 ;
  wire \clock_counter_reg[22]_i_16_n_5 ;
  wire \clock_counter_reg[22]_i_16_n_6 ;
  wire \clock_counter_reg[22]_i_16_n_7 ;
  wire \clock_counter_reg[22]_i_21_n_0 ;
  wire \clock_counter_reg[22]_i_21_n_1 ;
  wire \clock_counter_reg[22]_i_21_n_2 ;
  wire \clock_counter_reg[22]_i_21_n_3 ;
  wire \clock_counter_reg[22]_i_21_n_4 ;
  wire \clock_counter_reg[22]_i_21_n_5 ;
  wire \clock_counter_reg[22]_i_21_n_6 ;
  wire \clock_counter_reg[22]_i_21_n_7 ;
  wire \clock_counter_reg[22]_i_26_n_0 ;
  wire \clock_counter_reg[22]_i_26_n_1 ;
  wire \clock_counter_reg[22]_i_26_n_2 ;
  wire \clock_counter_reg[22]_i_26_n_3 ;
  wire \clock_counter_reg[22]_i_26_n_4 ;
  wire \clock_counter_reg[22]_i_26_n_5 ;
  wire \clock_counter_reg[22]_i_26_n_6 ;
  wire \clock_counter_reg[22]_i_26_n_7 ;
  wire \clock_counter_reg[22]_i_2_n_3 ;
  wire \clock_counter_reg[22]_i_2_n_7 ;
  wire \clock_counter_reg[22]_i_31_n_0 ;
  wire \clock_counter_reg[22]_i_31_n_1 ;
  wire \clock_counter_reg[22]_i_31_n_2 ;
  wire \clock_counter_reg[22]_i_31_n_3 ;
  wire \clock_counter_reg[22]_i_31_n_4 ;
  wire \clock_counter_reg[22]_i_31_n_5 ;
  wire \clock_counter_reg[22]_i_31_n_6 ;
  wire \clock_counter_reg[22]_i_3_n_0 ;
  wire \clock_counter_reg[22]_i_3_n_1 ;
  wire \clock_counter_reg[22]_i_3_n_2 ;
  wire \clock_counter_reg[22]_i_3_n_3 ;
  wire \clock_counter_reg[22]_i_3_n_4 ;
  wire \clock_counter_reg[22]_i_3_n_5 ;
  wire \clock_counter_reg[22]_i_3_n_6 ;
  wire \clock_counter_reg[22]_i_3_n_7 ;
  wire \clock_counter_reg[22]_i_6_n_0 ;
  wire \clock_counter_reg[22]_i_6_n_1 ;
  wire \clock_counter_reg[22]_i_6_n_2 ;
  wire \clock_counter_reg[22]_i_6_n_3 ;
  wire \clock_counter_reg[22]_i_6_n_4 ;
  wire \clock_counter_reg[22]_i_6_n_5 ;
  wire \clock_counter_reg[22]_i_6_n_6 ;
  wire \clock_counter_reg[22]_i_6_n_7 ;
  wire \clock_counter_reg[23]_i_11_n_0 ;
  wire \clock_counter_reg[23]_i_11_n_1 ;
  wire \clock_counter_reg[23]_i_11_n_2 ;
  wire \clock_counter_reg[23]_i_11_n_3 ;
  wire \clock_counter_reg[23]_i_11_n_4 ;
  wire \clock_counter_reg[23]_i_11_n_5 ;
  wire \clock_counter_reg[23]_i_11_n_6 ;
  wire \clock_counter_reg[23]_i_11_n_7 ;
  wire \clock_counter_reg[23]_i_16_n_0 ;
  wire \clock_counter_reg[23]_i_16_n_1 ;
  wire \clock_counter_reg[23]_i_16_n_2 ;
  wire \clock_counter_reg[23]_i_16_n_3 ;
  wire \clock_counter_reg[23]_i_16_n_4 ;
  wire \clock_counter_reg[23]_i_16_n_5 ;
  wire \clock_counter_reg[23]_i_16_n_6 ;
  wire \clock_counter_reg[23]_i_16_n_7 ;
  wire \clock_counter_reg[23]_i_21_n_0 ;
  wire \clock_counter_reg[23]_i_21_n_1 ;
  wire \clock_counter_reg[23]_i_21_n_2 ;
  wire \clock_counter_reg[23]_i_21_n_3 ;
  wire \clock_counter_reg[23]_i_21_n_4 ;
  wire \clock_counter_reg[23]_i_21_n_5 ;
  wire \clock_counter_reg[23]_i_21_n_6 ;
  wire \clock_counter_reg[23]_i_21_n_7 ;
  wire \clock_counter_reg[23]_i_26_n_0 ;
  wire \clock_counter_reg[23]_i_26_n_1 ;
  wire \clock_counter_reg[23]_i_26_n_2 ;
  wire \clock_counter_reg[23]_i_26_n_3 ;
  wire \clock_counter_reg[23]_i_26_n_4 ;
  wire \clock_counter_reg[23]_i_26_n_5 ;
  wire \clock_counter_reg[23]_i_26_n_6 ;
  wire \clock_counter_reg[23]_i_26_n_7 ;
  wire \clock_counter_reg[23]_i_2_n_3 ;
  wire \clock_counter_reg[23]_i_2_n_7 ;
  wire \clock_counter_reg[23]_i_31_n_0 ;
  wire \clock_counter_reg[23]_i_31_n_1 ;
  wire \clock_counter_reg[23]_i_31_n_2 ;
  wire \clock_counter_reg[23]_i_31_n_3 ;
  wire \clock_counter_reg[23]_i_31_n_4 ;
  wire \clock_counter_reg[23]_i_31_n_5 ;
  wire \clock_counter_reg[23]_i_31_n_6 ;
  wire \clock_counter_reg[23]_i_3_n_0 ;
  wire \clock_counter_reg[23]_i_3_n_1 ;
  wire \clock_counter_reg[23]_i_3_n_2 ;
  wire \clock_counter_reg[23]_i_3_n_3 ;
  wire \clock_counter_reg[23]_i_3_n_4 ;
  wire \clock_counter_reg[23]_i_3_n_5 ;
  wire \clock_counter_reg[23]_i_3_n_6 ;
  wire \clock_counter_reg[23]_i_3_n_7 ;
  wire \clock_counter_reg[23]_i_6_n_0 ;
  wire \clock_counter_reg[23]_i_6_n_1 ;
  wire \clock_counter_reg[23]_i_6_n_2 ;
  wire \clock_counter_reg[23]_i_6_n_3 ;
  wire \clock_counter_reg[23]_i_6_n_4 ;
  wire \clock_counter_reg[23]_i_6_n_5 ;
  wire \clock_counter_reg[23]_i_6_n_6 ;
  wire \clock_counter_reg[23]_i_6_n_7 ;
  wire \clock_counter_reg[24]_i_11_n_0 ;
  wire \clock_counter_reg[24]_i_11_n_1 ;
  wire \clock_counter_reg[24]_i_11_n_2 ;
  wire \clock_counter_reg[24]_i_11_n_3 ;
  wire \clock_counter_reg[24]_i_11_n_4 ;
  wire \clock_counter_reg[24]_i_11_n_5 ;
  wire \clock_counter_reg[24]_i_11_n_6 ;
  wire \clock_counter_reg[24]_i_11_n_7 ;
  wire \clock_counter_reg[24]_i_16_n_0 ;
  wire \clock_counter_reg[24]_i_16_n_1 ;
  wire \clock_counter_reg[24]_i_16_n_2 ;
  wire \clock_counter_reg[24]_i_16_n_3 ;
  wire \clock_counter_reg[24]_i_16_n_4 ;
  wire \clock_counter_reg[24]_i_16_n_5 ;
  wire \clock_counter_reg[24]_i_16_n_6 ;
  wire \clock_counter_reg[24]_i_16_n_7 ;
  wire \clock_counter_reg[24]_i_21_n_0 ;
  wire \clock_counter_reg[24]_i_21_n_1 ;
  wire \clock_counter_reg[24]_i_21_n_2 ;
  wire \clock_counter_reg[24]_i_21_n_3 ;
  wire \clock_counter_reg[24]_i_21_n_4 ;
  wire \clock_counter_reg[24]_i_21_n_5 ;
  wire \clock_counter_reg[24]_i_21_n_6 ;
  wire \clock_counter_reg[24]_i_21_n_7 ;
  wire \clock_counter_reg[24]_i_26_n_0 ;
  wire \clock_counter_reg[24]_i_26_n_1 ;
  wire \clock_counter_reg[24]_i_26_n_2 ;
  wire \clock_counter_reg[24]_i_26_n_3 ;
  wire \clock_counter_reg[24]_i_26_n_4 ;
  wire \clock_counter_reg[24]_i_26_n_5 ;
  wire \clock_counter_reg[24]_i_26_n_6 ;
  wire \clock_counter_reg[24]_i_26_n_7 ;
  wire \clock_counter_reg[24]_i_2_n_3 ;
  wire \clock_counter_reg[24]_i_2_n_7 ;
  wire \clock_counter_reg[24]_i_31_n_0 ;
  wire \clock_counter_reg[24]_i_31_n_1 ;
  wire \clock_counter_reg[24]_i_31_n_2 ;
  wire \clock_counter_reg[24]_i_31_n_3 ;
  wire \clock_counter_reg[24]_i_31_n_4 ;
  wire \clock_counter_reg[24]_i_31_n_5 ;
  wire \clock_counter_reg[24]_i_31_n_6 ;
  wire \clock_counter_reg[24]_i_3_n_0 ;
  wire \clock_counter_reg[24]_i_3_n_1 ;
  wire \clock_counter_reg[24]_i_3_n_2 ;
  wire \clock_counter_reg[24]_i_3_n_3 ;
  wire \clock_counter_reg[24]_i_3_n_4 ;
  wire \clock_counter_reg[24]_i_3_n_5 ;
  wire \clock_counter_reg[24]_i_3_n_6 ;
  wire \clock_counter_reg[24]_i_3_n_7 ;
  wire \clock_counter_reg[24]_i_6_n_0 ;
  wire \clock_counter_reg[24]_i_6_n_1 ;
  wire \clock_counter_reg[24]_i_6_n_2 ;
  wire \clock_counter_reg[24]_i_6_n_3 ;
  wire \clock_counter_reg[24]_i_6_n_4 ;
  wire \clock_counter_reg[24]_i_6_n_5 ;
  wire \clock_counter_reg[24]_i_6_n_6 ;
  wire \clock_counter_reg[24]_i_6_n_7 ;
  wire \clock_counter_reg[25]_i_11_n_0 ;
  wire \clock_counter_reg[25]_i_11_n_1 ;
  wire \clock_counter_reg[25]_i_11_n_2 ;
  wire \clock_counter_reg[25]_i_11_n_3 ;
  wire \clock_counter_reg[25]_i_11_n_4 ;
  wire \clock_counter_reg[25]_i_11_n_5 ;
  wire \clock_counter_reg[25]_i_11_n_6 ;
  wire \clock_counter_reg[25]_i_11_n_7 ;
  wire \clock_counter_reg[25]_i_16_n_0 ;
  wire \clock_counter_reg[25]_i_16_n_1 ;
  wire \clock_counter_reg[25]_i_16_n_2 ;
  wire \clock_counter_reg[25]_i_16_n_3 ;
  wire \clock_counter_reg[25]_i_16_n_4 ;
  wire \clock_counter_reg[25]_i_16_n_5 ;
  wire \clock_counter_reg[25]_i_16_n_6 ;
  wire \clock_counter_reg[25]_i_16_n_7 ;
  wire \clock_counter_reg[25]_i_21_n_0 ;
  wire \clock_counter_reg[25]_i_21_n_1 ;
  wire \clock_counter_reg[25]_i_21_n_2 ;
  wire \clock_counter_reg[25]_i_21_n_3 ;
  wire \clock_counter_reg[25]_i_21_n_4 ;
  wire \clock_counter_reg[25]_i_21_n_5 ;
  wire \clock_counter_reg[25]_i_21_n_6 ;
  wire \clock_counter_reg[25]_i_21_n_7 ;
  wire \clock_counter_reg[25]_i_26_n_0 ;
  wire \clock_counter_reg[25]_i_26_n_1 ;
  wire \clock_counter_reg[25]_i_26_n_2 ;
  wire \clock_counter_reg[25]_i_26_n_3 ;
  wire \clock_counter_reg[25]_i_26_n_4 ;
  wire \clock_counter_reg[25]_i_26_n_5 ;
  wire \clock_counter_reg[25]_i_26_n_6 ;
  wire \clock_counter_reg[25]_i_26_n_7 ;
  wire \clock_counter_reg[25]_i_2_n_3 ;
  wire \clock_counter_reg[25]_i_2_n_7 ;
  wire \clock_counter_reg[25]_i_31_n_0 ;
  wire \clock_counter_reg[25]_i_31_n_1 ;
  wire \clock_counter_reg[25]_i_31_n_2 ;
  wire \clock_counter_reg[25]_i_31_n_3 ;
  wire \clock_counter_reg[25]_i_31_n_4 ;
  wire \clock_counter_reg[25]_i_31_n_5 ;
  wire \clock_counter_reg[25]_i_31_n_6 ;
  wire \clock_counter_reg[25]_i_3_n_0 ;
  wire \clock_counter_reg[25]_i_3_n_1 ;
  wire \clock_counter_reg[25]_i_3_n_2 ;
  wire \clock_counter_reg[25]_i_3_n_3 ;
  wire \clock_counter_reg[25]_i_3_n_4 ;
  wire \clock_counter_reg[25]_i_3_n_5 ;
  wire \clock_counter_reg[25]_i_3_n_6 ;
  wire \clock_counter_reg[25]_i_3_n_7 ;
  wire \clock_counter_reg[25]_i_6_n_0 ;
  wire \clock_counter_reg[25]_i_6_n_1 ;
  wire \clock_counter_reg[25]_i_6_n_2 ;
  wire \clock_counter_reg[25]_i_6_n_3 ;
  wire \clock_counter_reg[25]_i_6_n_4 ;
  wire \clock_counter_reg[25]_i_6_n_5 ;
  wire \clock_counter_reg[25]_i_6_n_6 ;
  wire \clock_counter_reg[25]_i_6_n_7 ;
  wire \clock_counter_reg[26]_i_13_n_0 ;
  wire \clock_counter_reg[26]_i_13_n_1 ;
  wire \clock_counter_reg[26]_i_13_n_2 ;
  wire \clock_counter_reg[26]_i_13_n_3 ;
  wire \clock_counter_reg[26]_i_13_n_4 ;
  wire \clock_counter_reg[26]_i_13_n_5 ;
  wire \clock_counter_reg[26]_i_13_n_6 ;
  wire \clock_counter_reg[26]_i_13_n_7 ;
  wire \clock_counter_reg[26]_i_22_n_0 ;
  wire \clock_counter_reg[26]_i_22_n_1 ;
  wire \clock_counter_reg[26]_i_22_n_2 ;
  wire \clock_counter_reg[26]_i_22_n_3 ;
  wire \clock_counter_reg[26]_i_22_n_4 ;
  wire \clock_counter_reg[26]_i_22_n_5 ;
  wire \clock_counter_reg[26]_i_22_n_6 ;
  wire \clock_counter_reg[26]_i_22_n_7 ;
  wire \clock_counter_reg[26]_i_31_n_0 ;
  wire \clock_counter_reg[26]_i_31_n_1 ;
  wire \clock_counter_reg[26]_i_31_n_2 ;
  wire \clock_counter_reg[26]_i_31_n_3 ;
  wire \clock_counter_reg[26]_i_31_n_4 ;
  wire \clock_counter_reg[26]_i_31_n_5 ;
  wire \clock_counter_reg[26]_i_31_n_6 ;
  wire \clock_counter_reg[26]_i_31_n_7 ;
  wire \clock_counter_reg[26]_i_3_n_0 ;
  wire \clock_counter_reg[26]_i_3_n_1 ;
  wire \clock_counter_reg[26]_i_3_n_2 ;
  wire \clock_counter_reg[26]_i_3_n_3 ;
  wire \clock_counter_reg[26]_i_3_n_4 ;
  wire \clock_counter_reg[26]_i_3_n_5 ;
  wire \clock_counter_reg[26]_i_3_n_6 ;
  wire \clock_counter_reg[26]_i_3_n_7 ;
  wire \clock_counter_reg[26]_i_40_n_0 ;
  wire \clock_counter_reg[26]_i_40_n_1 ;
  wire \clock_counter_reg[26]_i_40_n_2 ;
  wire \clock_counter_reg[26]_i_40_n_3 ;
  wire \clock_counter_reg[26]_i_40_n_4 ;
  wire \clock_counter_reg[26]_i_40_n_5 ;
  wire \clock_counter_reg[26]_i_40_n_6 ;
  wire \clock_counter_reg[26]_i_40_n_7 ;
  wire \clock_counter_reg[26]_i_49_n_0 ;
  wire \clock_counter_reg[26]_i_49_n_1 ;
  wire \clock_counter_reg[26]_i_49_n_2 ;
  wire \clock_counter_reg[26]_i_49_n_3 ;
  wire \clock_counter_reg[26]_i_49_n_4 ;
  wire \clock_counter_reg[26]_i_49_n_5 ;
  wire \clock_counter_reg[26]_i_49_n_6 ;
  wire \clock_counter_reg[26]_i_49_n_7 ;
  wire \clock_counter_reg[26]_i_4_n_0 ;
  wire \clock_counter_reg[26]_i_4_n_1 ;
  wire \clock_counter_reg[26]_i_4_n_2 ;
  wire \clock_counter_reg[26]_i_4_n_3 ;
  wire \clock_counter_reg[26]_i_4_n_4 ;
  wire \clock_counter_reg[26]_i_4_n_5 ;
  wire \clock_counter_reg[26]_i_4_n_6 ;
  wire \clock_counter_reg[26]_i_4_n_7 ;
  wire \clock_counter_reg[2]_i_11_n_0 ;
  wire \clock_counter_reg[2]_i_11_n_1 ;
  wire \clock_counter_reg[2]_i_11_n_2 ;
  wire \clock_counter_reg[2]_i_11_n_3 ;
  wire \clock_counter_reg[2]_i_11_n_4 ;
  wire \clock_counter_reg[2]_i_11_n_5 ;
  wire \clock_counter_reg[2]_i_11_n_6 ;
  wire \clock_counter_reg[2]_i_11_n_7 ;
  wire \clock_counter_reg[2]_i_16_n_0 ;
  wire \clock_counter_reg[2]_i_16_n_1 ;
  wire \clock_counter_reg[2]_i_16_n_2 ;
  wire \clock_counter_reg[2]_i_16_n_3 ;
  wire \clock_counter_reg[2]_i_16_n_4 ;
  wire \clock_counter_reg[2]_i_16_n_5 ;
  wire \clock_counter_reg[2]_i_16_n_6 ;
  wire \clock_counter_reg[2]_i_16_n_7 ;
  wire \clock_counter_reg[2]_i_21_n_0 ;
  wire \clock_counter_reg[2]_i_21_n_1 ;
  wire \clock_counter_reg[2]_i_21_n_2 ;
  wire \clock_counter_reg[2]_i_21_n_3 ;
  wire \clock_counter_reg[2]_i_21_n_4 ;
  wire \clock_counter_reg[2]_i_21_n_5 ;
  wire \clock_counter_reg[2]_i_21_n_6 ;
  wire \clock_counter_reg[2]_i_21_n_7 ;
  wire \clock_counter_reg[2]_i_26_n_0 ;
  wire \clock_counter_reg[2]_i_26_n_1 ;
  wire \clock_counter_reg[2]_i_26_n_2 ;
  wire \clock_counter_reg[2]_i_26_n_3 ;
  wire \clock_counter_reg[2]_i_26_n_4 ;
  wire \clock_counter_reg[2]_i_26_n_5 ;
  wire \clock_counter_reg[2]_i_26_n_6 ;
  wire \clock_counter_reg[2]_i_26_n_7 ;
  wire \clock_counter_reg[2]_i_2_n_3 ;
  wire \clock_counter_reg[2]_i_2_n_7 ;
  wire \clock_counter_reg[2]_i_31_n_0 ;
  wire \clock_counter_reg[2]_i_31_n_1 ;
  wire \clock_counter_reg[2]_i_31_n_2 ;
  wire \clock_counter_reg[2]_i_31_n_3 ;
  wire \clock_counter_reg[2]_i_31_n_4 ;
  wire \clock_counter_reg[2]_i_31_n_5 ;
  wire \clock_counter_reg[2]_i_31_n_6 ;
  wire \clock_counter_reg[2]_i_3_n_0 ;
  wire \clock_counter_reg[2]_i_3_n_1 ;
  wire \clock_counter_reg[2]_i_3_n_2 ;
  wire \clock_counter_reg[2]_i_3_n_3 ;
  wire \clock_counter_reg[2]_i_3_n_4 ;
  wire \clock_counter_reg[2]_i_3_n_5 ;
  wire \clock_counter_reg[2]_i_3_n_6 ;
  wire \clock_counter_reg[2]_i_3_n_7 ;
  wire \clock_counter_reg[2]_i_6_n_0 ;
  wire \clock_counter_reg[2]_i_6_n_1 ;
  wire \clock_counter_reg[2]_i_6_n_2 ;
  wire \clock_counter_reg[2]_i_6_n_3 ;
  wire \clock_counter_reg[2]_i_6_n_4 ;
  wire \clock_counter_reg[2]_i_6_n_5 ;
  wire \clock_counter_reg[2]_i_6_n_6 ;
  wire \clock_counter_reg[2]_i_6_n_7 ;
  wire \clock_counter_reg[3]_i_11_n_0 ;
  wire \clock_counter_reg[3]_i_11_n_1 ;
  wire \clock_counter_reg[3]_i_11_n_2 ;
  wire \clock_counter_reg[3]_i_11_n_3 ;
  wire \clock_counter_reg[3]_i_11_n_4 ;
  wire \clock_counter_reg[3]_i_11_n_5 ;
  wire \clock_counter_reg[3]_i_11_n_6 ;
  wire \clock_counter_reg[3]_i_11_n_7 ;
  wire \clock_counter_reg[3]_i_16_n_0 ;
  wire \clock_counter_reg[3]_i_16_n_1 ;
  wire \clock_counter_reg[3]_i_16_n_2 ;
  wire \clock_counter_reg[3]_i_16_n_3 ;
  wire \clock_counter_reg[3]_i_16_n_4 ;
  wire \clock_counter_reg[3]_i_16_n_5 ;
  wire \clock_counter_reg[3]_i_16_n_6 ;
  wire \clock_counter_reg[3]_i_16_n_7 ;
  wire \clock_counter_reg[3]_i_21_n_0 ;
  wire \clock_counter_reg[3]_i_21_n_1 ;
  wire \clock_counter_reg[3]_i_21_n_2 ;
  wire \clock_counter_reg[3]_i_21_n_3 ;
  wire \clock_counter_reg[3]_i_21_n_4 ;
  wire \clock_counter_reg[3]_i_21_n_5 ;
  wire \clock_counter_reg[3]_i_21_n_6 ;
  wire \clock_counter_reg[3]_i_21_n_7 ;
  wire \clock_counter_reg[3]_i_26_n_0 ;
  wire \clock_counter_reg[3]_i_26_n_1 ;
  wire \clock_counter_reg[3]_i_26_n_2 ;
  wire \clock_counter_reg[3]_i_26_n_3 ;
  wire \clock_counter_reg[3]_i_26_n_4 ;
  wire \clock_counter_reg[3]_i_26_n_5 ;
  wire \clock_counter_reg[3]_i_26_n_6 ;
  wire \clock_counter_reg[3]_i_26_n_7 ;
  wire \clock_counter_reg[3]_i_2_n_3 ;
  wire \clock_counter_reg[3]_i_2_n_7 ;
  wire \clock_counter_reg[3]_i_31_n_0 ;
  wire \clock_counter_reg[3]_i_31_n_1 ;
  wire \clock_counter_reg[3]_i_31_n_2 ;
  wire \clock_counter_reg[3]_i_31_n_3 ;
  wire \clock_counter_reg[3]_i_31_n_4 ;
  wire \clock_counter_reg[3]_i_31_n_5 ;
  wire \clock_counter_reg[3]_i_31_n_6 ;
  wire \clock_counter_reg[3]_i_3_n_0 ;
  wire \clock_counter_reg[3]_i_3_n_1 ;
  wire \clock_counter_reg[3]_i_3_n_2 ;
  wire \clock_counter_reg[3]_i_3_n_3 ;
  wire \clock_counter_reg[3]_i_3_n_4 ;
  wire \clock_counter_reg[3]_i_3_n_5 ;
  wire \clock_counter_reg[3]_i_3_n_6 ;
  wire \clock_counter_reg[3]_i_3_n_7 ;
  wire \clock_counter_reg[3]_i_6_n_0 ;
  wire \clock_counter_reg[3]_i_6_n_1 ;
  wire \clock_counter_reg[3]_i_6_n_2 ;
  wire \clock_counter_reg[3]_i_6_n_3 ;
  wire \clock_counter_reg[3]_i_6_n_4 ;
  wire \clock_counter_reg[3]_i_6_n_5 ;
  wire \clock_counter_reg[3]_i_6_n_6 ;
  wire \clock_counter_reg[3]_i_6_n_7 ;
  wire \clock_counter_reg[4]_i_11_n_0 ;
  wire \clock_counter_reg[4]_i_11_n_1 ;
  wire \clock_counter_reg[4]_i_11_n_2 ;
  wire \clock_counter_reg[4]_i_11_n_3 ;
  wire \clock_counter_reg[4]_i_11_n_4 ;
  wire \clock_counter_reg[4]_i_11_n_5 ;
  wire \clock_counter_reg[4]_i_11_n_6 ;
  wire \clock_counter_reg[4]_i_11_n_7 ;
  wire \clock_counter_reg[4]_i_16_n_0 ;
  wire \clock_counter_reg[4]_i_16_n_1 ;
  wire \clock_counter_reg[4]_i_16_n_2 ;
  wire \clock_counter_reg[4]_i_16_n_3 ;
  wire \clock_counter_reg[4]_i_16_n_4 ;
  wire \clock_counter_reg[4]_i_16_n_5 ;
  wire \clock_counter_reg[4]_i_16_n_6 ;
  wire \clock_counter_reg[4]_i_16_n_7 ;
  wire \clock_counter_reg[4]_i_21_n_0 ;
  wire \clock_counter_reg[4]_i_21_n_1 ;
  wire \clock_counter_reg[4]_i_21_n_2 ;
  wire \clock_counter_reg[4]_i_21_n_3 ;
  wire \clock_counter_reg[4]_i_21_n_4 ;
  wire \clock_counter_reg[4]_i_21_n_5 ;
  wire \clock_counter_reg[4]_i_21_n_6 ;
  wire \clock_counter_reg[4]_i_21_n_7 ;
  wire \clock_counter_reg[4]_i_26_n_0 ;
  wire \clock_counter_reg[4]_i_26_n_1 ;
  wire \clock_counter_reg[4]_i_26_n_2 ;
  wire \clock_counter_reg[4]_i_26_n_3 ;
  wire \clock_counter_reg[4]_i_26_n_4 ;
  wire \clock_counter_reg[4]_i_26_n_5 ;
  wire \clock_counter_reg[4]_i_26_n_6 ;
  wire \clock_counter_reg[4]_i_26_n_7 ;
  wire \clock_counter_reg[4]_i_2_n_3 ;
  wire \clock_counter_reg[4]_i_2_n_7 ;
  wire \clock_counter_reg[4]_i_31_n_0 ;
  wire \clock_counter_reg[4]_i_31_n_1 ;
  wire \clock_counter_reg[4]_i_31_n_2 ;
  wire \clock_counter_reg[4]_i_31_n_3 ;
  wire \clock_counter_reg[4]_i_31_n_4 ;
  wire \clock_counter_reg[4]_i_31_n_5 ;
  wire \clock_counter_reg[4]_i_31_n_6 ;
  wire \clock_counter_reg[4]_i_3_n_0 ;
  wire \clock_counter_reg[4]_i_3_n_1 ;
  wire \clock_counter_reg[4]_i_3_n_2 ;
  wire \clock_counter_reg[4]_i_3_n_3 ;
  wire \clock_counter_reg[4]_i_3_n_4 ;
  wire \clock_counter_reg[4]_i_3_n_5 ;
  wire \clock_counter_reg[4]_i_3_n_6 ;
  wire \clock_counter_reg[4]_i_3_n_7 ;
  wire \clock_counter_reg[4]_i_6_n_0 ;
  wire \clock_counter_reg[4]_i_6_n_1 ;
  wire \clock_counter_reg[4]_i_6_n_2 ;
  wire \clock_counter_reg[4]_i_6_n_3 ;
  wire \clock_counter_reg[4]_i_6_n_4 ;
  wire \clock_counter_reg[4]_i_6_n_5 ;
  wire \clock_counter_reg[4]_i_6_n_6 ;
  wire \clock_counter_reg[4]_i_6_n_7 ;
  wire \clock_counter_reg[5]_i_11_n_0 ;
  wire \clock_counter_reg[5]_i_11_n_1 ;
  wire \clock_counter_reg[5]_i_11_n_2 ;
  wire \clock_counter_reg[5]_i_11_n_3 ;
  wire \clock_counter_reg[5]_i_11_n_4 ;
  wire \clock_counter_reg[5]_i_11_n_5 ;
  wire \clock_counter_reg[5]_i_11_n_6 ;
  wire \clock_counter_reg[5]_i_11_n_7 ;
  wire \clock_counter_reg[5]_i_16_n_0 ;
  wire \clock_counter_reg[5]_i_16_n_1 ;
  wire \clock_counter_reg[5]_i_16_n_2 ;
  wire \clock_counter_reg[5]_i_16_n_3 ;
  wire \clock_counter_reg[5]_i_16_n_4 ;
  wire \clock_counter_reg[5]_i_16_n_5 ;
  wire \clock_counter_reg[5]_i_16_n_6 ;
  wire \clock_counter_reg[5]_i_16_n_7 ;
  wire \clock_counter_reg[5]_i_21_n_0 ;
  wire \clock_counter_reg[5]_i_21_n_1 ;
  wire \clock_counter_reg[5]_i_21_n_2 ;
  wire \clock_counter_reg[5]_i_21_n_3 ;
  wire \clock_counter_reg[5]_i_21_n_4 ;
  wire \clock_counter_reg[5]_i_21_n_5 ;
  wire \clock_counter_reg[5]_i_21_n_6 ;
  wire \clock_counter_reg[5]_i_21_n_7 ;
  wire \clock_counter_reg[5]_i_26_n_0 ;
  wire \clock_counter_reg[5]_i_26_n_1 ;
  wire \clock_counter_reg[5]_i_26_n_2 ;
  wire \clock_counter_reg[5]_i_26_n_3 ;
  wire \clock_counter_reg[5]_i_26_n_4 ;
  wire \clock_counter_reg[5]_i_26_n_5 ;
  wire \clock_counter_reg[5]_i_26_n_6 ;
  wire \clock_counter_reg[5]_i_26_n_7 ;
  wire \clock_counter_reg[5]_i_2_n_3 ;
  wire \clock_counter_reg[5]_i_2_n_7 ;
  wire \clock_counter_reg[5]_i_31_n_0 ;
  wire \clock_counter_reg[5]_i_31_n_1 ;
  wire \clock_counter_reg[5]_i_31_n_2 ;
  wire \clock_counter_reg[5]_i_31_n_3 ;
  wire \clock_counter_reg[5]_i_31_n_4 ;
  wire \clock_counter_reg[5]_i_31_n_5 ;
  wire \clock_counter_reg[5]_i_31_n_6 ;
  wire \clock_counter_reg[5]_i_3_n_0 ;
  wire \clock_counter_reg[5]_i_3_n_1 ;
  wire \clock_counter_reg[5]_i_3_n_2 ;
  wire \clock_counter_reg[5]_i_3_n_3 ;
  wire \clock_counter_reg[5]_i_3_n_4 ;
  wire \clock_counter_reg[5]_i_3_n_5 ;
  wire \clock_counter_reg[5]_i_3_n_6 ;
  wire \clock_counter_reg[5]_i_3_n_7 ;
  wire \clock_counter_reg[5]_i_6_n_0 ;
  wire \clock_counter_reg[5]_i_6_n_1 ;
  wire \clock_counter_reg[5]_i_6_n_2 ;
  wire \clock_counter_reg[5]_i_6_n_3 ;
  wire \clock_counter_reg[5]_i_6_n_4 ;
  wire \clock_counter_reg[5]_i_6_n_5 ;
  wire \clock_counter_reg[5]_i_6_n_6 ;
  wire \clock_counter_reg[5]_i_6_n_7 ;
  wire \clock_counter_reg[6]_i_11_n_0 ;
  wire \clock_counter_reg[6]_i_11_n_1 ;
  wire \clock_counter_reg[6]_i_11_n_2 ;
  wire \clock_counter_reg[6]_i_11_n_3 ;
  wire \clock_counter_reg[6]_i_11_n_4 ;
  wire \clock_counter_reg[6]_i_11_n_5 ;
  wire \clock_counter_reg[6]_i_11_n_6 ;
  wire \clock_counter_reg[6]_i_11_n_7 ;
  wire \clock_counter_reg[6]_i_16_n_0 ;
  wire \clock_counter_reg[6]_i_16_n_1 ;
  wire \clock_counter_reg[6]_i_16_n_2 ;
  wire \clock_counter_reg[6]_i_16_n_3 ;
  wire \clock_counter_reg[6]_i_16_n_4 ;
  wire \clock_counter_reg[6]_i_16_n_5 ;
  wire \clock_counter_reg[6]_i_16_n_6 ;
  wire \clock_counter_reg[6]_i_16_n_7 ;
  wire \clock_counter_reg[6]_i_21_n_0 ;
  wire \clock_counter_reg[6]_i_21_n_1 ;
  wire \clock_counter_reg[6]_i_21_n_2 ;
  wire \clock_counter_reg[6]_i_21_n_3 ;
  wire \clock_counter_reg[6]_i_21_n_4 ;
  wire \clock_counter_reg[6]_i_21_n_5 ;
  wire \clock_counter_reg[6]_i_21_n_6 ;
  wire \clock_counter_reg[6]_i_21_n_7 ;
  wire \clock_counter_reg[6]_i_26_n_0 ;
  wire \clock_counter_reg[6]_i_26_n_1 ;
  wire \clock_counter_reg[6]_i_26_n_2 ;
  wire \clock_counter_reg[6]_i_26_n_3 ;
  wire \clock_counter_reg[6]_i_26_n_4 ;
  wire \clock_counter_reg[6]_i_26_n_5 ;
  wire \clock_counter_reg[6]_i_26_n_6 ;
  wire \clock_counter_reg[6]_i_26_n_7 ;
  wire \clock_counter_reg[6]_i_2_n_3 ;
  wire \clock_counter_reg[6]_i_2_n_7 ;
  wire \clock_counter_reg[6]_i_31_n_0 ;
  wire \clock_counter_reg[6]_i_31_n_1 ;
  wire \clock_counter_reg[6]_i_31_n_2 ;
  wire \clock_counter_reg[6]_i_31_n_3 ;
  wire \clock_counter_reg[6]_i_31_n_4 ;
  wire \clock_counter_reg[6]_i_31_n_5 ;
  wire \clock_counter_reg[6]_i_31_n_6 ;
  wire \clock_counter_reg[6]_i_3_n_0 ;
  wire \clock_counter_reg[6]_i_3_n_1 ;
  wire \clock_counter_reg[6]_i_3_n_2 ;
  wire \clock_counter_reg[6]_i_3_n_3 ;
  wire \clock_counter_reg[6]_i_3_n_4 ;
  wire \clock_counter_reg[6]_i_3_n_5 ;
  wire \clock_counter_reg[6]_i_3_n_6 ;
  wire \clock_counter_reg[6]_i_3_n_7 ;
  wire \clock_counter_reg[6]_i_6_n_0 ;
  wire \clock_counter_reg[6]_i_6_n_1 ;
  wire \clock_counter_reg[6]_i_6_n_2 ;
  wire \clock_counter_reg[6]_i_6_n_3 ;
  wire \clock_counter_reg[6]_i_6_n_4 ;
  wire \clock_counter_reg[6]_i_6_n_5 ;
  wire \clock_counter_reg[6]_i_6_n_6 ;
  wire \clock_counter_reg[6]_i_6_n_7 ;
  wire \clock_counter_reg[7]_i_11_n_0 ;
  wire \clock_counter_reg[7]_i_11_n_1 ;
  wire \clock_counter_reg[7]_i_11_n_2 ;
  wire \clock_counter_reg[7]_i_11_n_3 ;
  wire \clock_counter_reg[7]_i_11_n_4 ;
  wire \clock_counter_reg[7]_i_11_n_5 ;
  wire \clock_counter_reg[7]_i_11_n_6 ;
  wire \clock_counter_reg[7]_i_11_n_7 ;
  wire \clock_counter_reg[7]_i_16_n_0 ;
  wire \clock_counter_reg[7]_i_16_n_1 ;
  wire \clock_counter_reg[7]_i_16_n_2 ;
  wire \clock_counter_reg[7]_i_16_n_3 ;
  wire \clock_counter_reg[7]_i_16_n_4 ;
  wire \clock_counter_reg[7]_i_16_n_5 ;
  wire \clock_counter_reg[7]_i_16_n_6 ;
  wire \clock_counter_reg[7]_i_16_n_7 ;
  wire \clock_counter_reg[7]_i_21_n_0 ;
  wire \clock_counter_reg[7]_i_21_n_1 ;
  wire \clock_counter_reg[7]_i_21_n_2 ;
  wire \clock_counter_reg[7]_i_21_n_3 ;
  wire \clock_counter_reg[7]_i_21_n_4 ;
  wire \clock_counter_reg[7]_i_21_n_5 ;
  wire \clock_counter_reg[7]_i_21_n_6 ;
  wire \clock_counter_reg[7]_i_21_n_7 ;
  wire \clock_counter_reg[7]_i_26_n_0 ;
  wire \clock_counter_reg[7]_i_26_n_1 ;
  wire \clock_counter_reg[7]_i_26_n_2 ;
  wire \clock_counter_reg[7]_i_26_n_3 ;
  wire \clock_counter_reg[7]_i_26_n_4 ;
  wire \clock_counter_reg[7]_i_26_n_5 ;
  wire \clock_counter_reg[7]_i_26_n_6 ;
  wire \clock_counter_reg[7]_i_26_n_7 ;
  wire \clock_counter_reg[7]_i_2_n_3 ;
  wire \clock_counter_reg[7]_i_2_n_7 ;
  wire \clock_counter_reg[7]_i_31_n_0 ;
  wire \clock_counter_reg[7]_i_31_n_1 ;
  wire \clock_counter_reg[7]_i_31_n_2 ;
  wire \clock_counter_reg[7]_i_31_n_3 ;
  wire \clock_counter_reg[7]_i_31_n_4 ;
  wire \clock_counter_reg[7]_i_31_n_5 ;
  wire \clock_counter_reg[7]_i_31_n_6 ;
  wire \clock_counter_reg[7]_i_3_n_0 ;
  wire \clock_counter_reg[7]_i_3_n_1 ;
  wire \clock_counter_reg[7]_i_3_n_2 ;
  wire \clock_counter_reg[7]_i_3_n_3 ;
  wire \clock_counter_reg[7]_i_3_n_4 ;
  wire \clock_counter_reg[7]_i_3_n_5 ;
  wire \clock_counter_reg[7]_i_3_n_6 ;
  wire \clock_counter_reg[7]_i_3_n_7 ;
  wire \clock_counter_reg[7]_i_6_n_0 ;
  wire \clock_counter_reg[7]_i_6_n_1 ;
  wire \clock_counter_reg[7]_i_6_n_2 ;
  wire \clock_counter_reg[7]_i_6_n_3 ;
  wire \clock_counter_reg[7]_i_6_n_4 ;
  wire \clock_counter_reg[7]_i_6_n_5 ;
  wire \clock_counter_reg[7]_i_6_n_6 ;
  wire \clock_counter_reg[7]_i_6_n_7 ;
  wire \clock_counter_reg[8]_i_11_n_0 ;
  wire \clock_counter_reg[8]_i_11_n_1 ;
  wire \clock_counter_reg[8]_i_11_n_2 ;
  wire \clock_counter_reg[8]_i_11_n_3 ;
  wire \clock_counter_reg[8]_i_11_n_4 ;
  wire \clock_counter_reg[8]_i_11_n_5 ;
  wire \clock_counter_reg[8]_i_11_n_6 ;
  wire \clock_counter_reg[8]_i_11_n_7 ;
  wire \clock_counter_reg[8]_i_16_n_0 ;
  wire \clock_counter_reg[8]_i_16_n_1 ;
  wire \clock_counter_reg[8]_i_16_n_2 ;
  wire \clock_counter_reg[8]_i_16_n_3 ;
  wire \clock_counter_reg[8]_i_16_n_4 ;
  wire \clock_counter_reg[8]_i_16_n_5 ;
  wire \clock_counter_reg[8]_i_16_n_6 ;
  wire \clock_counter_reg[8]_i_16_n_7 ;
  wire \clock_counter_reg[8]_i_21_n_0 ;
  wire \clock_counter_reg[8]_i_21_n_1 ;
  wire \clock_counter_reg[8]_i_21_n_2 ;
  wire \clock_counter_reg[8]_i_21_n_3 ;
  wire \clock_counter_reg[8]_i_21_n_4 ;
  wire \clock_counter_reg[8]_i_21_n_5 ;
  wire \clock_counter_reg[8]_i_21_n_6 ;
  wire \clock_counter_reg[8]_i_21_n_7 ;
  wire \clock_counter_reg[8]_i_26_n_0 ;
  wire \clock_counter_reg[8]_i_26_n_1 ;
  wire \clock_counter_reg[8]_i_26_n_2 ;
  wire \clock_counter_reg[8]_i_26_n_3 ;
  wire \clock_counter_reg[8]_i_26_n_4 ;
  wire \clock_counter_reg[8]_i_26_n_5 ;
  wire \clock_counter_reg[8]_i_26_n_6 ;
  wire \clock_counter_reg[8]_i_26_n_7 ;
  wire \clock_counter_reg[8]_i_2_n_3 ;
  wire \clock_counter_reg[8]_i_2_n_7 ;
  wire \clock_counter_reg[8]_i_31_n_0 ;
  wire \clock_counter_reg[8]_i_31_n_1 ;
  wire \clock_counter_reg[8]_i_31_n_2 ;
  wire \clock_counter_reg[8]_i_31_n_3 ;
  wire \clock_counter_reg[8]_i_31_n_4 ;
  wire \clock_counter_reg[8]_i_31_n_5 ;
  wire \clock_counter_reg[8]_i_31_n_6 ;
  wire \clock_counter_reg[8]_i_3_n_0 ;
  wire \clock_counter_reg[8]_i_3_n_1 ;
  wire \clock_counter_reg[8]_i_3_n_2 ;
  wire \clock_counter_reg[8]_i_3_n_3 ;
  wire \clock_counter_reg[8]_i_3_n_4 ;
  wire \clock_counter_reg[8]_i_3_n_5 ;
  wire \clock_counter_reg[8]_i_3_n_6 ;
  wire \clock_counter_reg[8]_i_3_n_7 ;
  wire \clock_counter_reg[8]_i_6_n_0 ;
  wire \clock_counter_reg[8]_i_6_n_1 ;
  wire \clock_counter_reg[8]_i_6_n_2 ;
  wire \clock_counter_reg[8]_i_6_n_3 ;
  wire \clock_counter_reg[8]_i_6_n_4 ;
  wire \clock_counter_reg[8]_i_6_n_5 ;
  wire \clock_counter_reg[8]_i_6_n_6 ;
  wire \clock_counter_reg[8]_i_6_n_7 ;
  wire \clock_counter_reg[9]_i_11_n_0 ;
  wire \clock_counter_reg[9]_i_11_n_1 ;
  wire \clock_counter_reg[9]_i_11_n_2 ;
  wire \clock_counter_reg[9]_i_11_n_3 ;
  wire \clock_counter_reg[9]_i_11_n_4 ;
  wire \clock_counter_reg[9]_i_11_n_5 ;
  wire \clock_counter_reg[9]_i_11_n_6 ;
  wire \clock_counter_reg[9]_i_11_n_7 ;
  wire \clock_counter_reg[9]_i_16_n_0 ;
  wire \clock_counter_reg[9]_i_16_n_1 ;
  wire \clock_counter_reg[9]_i_16_n_2 ;
  wire \clock_counter_reg[9]_i_16_n_3 ;
  wire \clock_counter_reg[9]_i_16_n_4 ;
  wire \clock_counter_reg[9]_i_16_n_5 ;
  wire \clock_counter_reg[9]_i_16_n_6 ;
  wire \clock_counter_reg[9]_i_16_n_7 ;
  wire \clock_counter_reg[9]_i_21_n_0 ;
  wire \clock_counter_reg[9]_i_21_n_1 ;
  wire \clock_counter_reg[9]_i_21_n_2 ;
  wire \clock_counter_reg[9]_i_21_n_3 ;
  wire \clock_counter_reg[9]_i_21_n_4 ;
  wire \clock_counter_reg[9]_i_21_n_5 ;
  wire \clock_counter_reg[9]_i_21_n_6 ;
  wire \clock_counter_reg[9]_i_21_n_7 ;
  wire \clock_counter_reg[9]_i_26_n_0 ;
  wire \clock_counter_reg[9]_i_26_n_1 ;
  wire \clock_counter_reg[9]_i_26_n_2 ;
  wire \clock_counter_reg[9]_i_26_n_3 ;
  wire \clock_counter_reg[9]_i_26_n_4 ;
  wire \clock_counter_reg[9]_i_26_n_5 ;
  wire \clock_counter_reg[9]_i_26_n_6 ;
  wire \clock_counter_reg[9]_i_26_n_7 ;
  wire \clock_counter_reg[9]_i_2_n_3 ;
  wire \clock_counter_reg[9]_i_2_n_7 ;
  wire \clock_counter_reg[9]_i_31_n_0 ;
  wire \clock_counter_reg[9]_i_31_n_1 ;
  wire \clock_counter_reg[9]_i_31_n_2 ;
  wire \clock_counter_reg[9]_i_31_n_3 ;
  wire \clock_counter_reg[9]_i_31_n_4 ;
  wire \clock_counter_reg[9]_i_31_n_5 ;
  wire \clock_counter_reg[9]_i_31_n_6 ;
  wire \clock_counter_reg[9]_i_3_n_0 ;
  wire \clock_counter_reg[9]_i_3_n_1 ;
  wire \clock_counter_reg[9]_i_3_n_2 ;
  wire \clock_counter_reg[9]_i_3_n_3 ;
  wire \clock_counter_reg[9]_i_3_n_4 ;
  wire \clock_counter_reg[9]_i_3_n_5 ;
  wire \clock_counter_reg[9]_i_3_n_6 ;
  wire \clock_counter_reg[9]_i_3_n_7 ;
  wire \clock_counter_reg[9]_i_6_n_0 ;
  wire \clock_counter_reg[9]_i_6_n_1 ;
  wire \clock_counter_reg[9]_i_6_n_2 ;
  wire \clock_counter_reg[9]_i_6_n_3 ;
  wire \clock_counter_reg[9]_i_6_n_4 ;
  wire \clock_counter_reg[9]_i_6_n_5 ;
  wire \clock_counter_reg[9]_i_6_n_6 ;
  wire \clock_counter_reg[9]_i_6_n_7 ;
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
  wire \clock_counter_reg_n_0_[2] ;
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
  wire [26:0]in6;
  wire init_counter;
  wire [4:0]init_counter0_in;
  wire \init_counter_reg_n_0_[0] ;
  wire \init_counter_reg_n_0_[1] ;
  wire \init_counter_reg_n_0_[2] ;
  wire \init_counter_reg_n_0_[3] ;
  wire \init_counter_reg_n_0_[4] ;
  wire last_signal_input;
  wire last_signal_input_0;
  wire last_signal_input_i_1_n_0;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [27:1]minusOp;
  wire minusOp__52_carry__0_i_1_n_0;
  wire minusOp__52_carry__0_i_2_n_0;
  wire minusOp__52_carry__0_i_3_n_0;
  wire minusOp__52_carry__0_i_4_n_0;
  wire minusOp__52_carry__0_n_0;
  wire minusOp__52_carry__0_n_1;
  wire minusOp__52_carry__0_n_2;
  wire minusOp__52_carry__0_n_3;
  wire minusOp__52_carry__0_n_4;
  wire minusOp__52_carry__0_n_5;
  wire minusOp__52_carry__0_n_6;
  wire minusOp__52_carry__0_n_7;
  wire minusOp__52_carry__1_i_1_n_0;
  wire minusOp__52_carry__1_i_2_n_0;
  wire minusOp__52_carry__1_i_3_n_0;
  wire minusOp__52_carry__1_i_4_n_0;
  wire minusOp__52_carry__1_n_0;
  wire minusOp__52_carry__1_n_1;
  wire minusOp__52_carry__1_n_2;
  wire minusOp__52_carry__1_n_3;
  wire minusOp__52_carry__1_n_4;
  wire minusOp__52_carry__1_n_5;
  wire minusOp__52_carry__1_n_6;
  wire minusOp__52_carry__1_n_7;
  wire minusOp__52_carry__2_i_1_n_0;
  wire minusOp__52_carry__2_i_2_n_0;
  wire minusOp__52_carry__2_i_3_n_0;
  wire minusOp__52_carry__2_n_2;
  wire minusOp__52_carry__2_n_3;
  wire minusOp__52_carry__2_n_5;
  wire minusOp__52_carry__2_n_6;
  wire minusOp__52_carry__2_n_7;
  wire minusOp__52_carry_i_1_n_0;
  wire minusOp__52_carry_i_2_n_0;
  wire minusOp__52_carry_i_3_n_0;
  wire minusOp__52_carry_i_4_n_0;
  wire minusOp__52_carry_n_0;
  wire minusOp__52_carry_n_1;
  wire minusOp__52_carry_n_2;
  wire minusOp__52_carry_n_3;
  wire minusOp__52_carry_n_4;
  wire minusOp__52_carry_n_5;
  wire minusOp__52_carry_n_6;
  wire minusOp__52_carry_n_7;
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
  wire minusOp_carry__2_i_4_n_0;
  wire minusOp_carry__2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_2;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry__3_i_1_n_0;
  wire minusOp_carry__3_i_2_n_0;
  wire minusOp_carry__3_i_3_n_0;
  wire minusOp_carry__3_i_4_n_0;
  wire minusOp_carry__3_n_0;
  wire minusOp_carry__3_n_1;
  wire minusOp_carry__3_n_2;
  wire minusOp_carry__3_n_3;
  wire minusOp_carry__4_i_1_n_0;
  wire minusOp_carry__4_i_2_n_0;
  wire minusOp_carry__4_i_3_n_0;
  wire minusOp_carry__4_i_4_n_0;
  wire minusOp_carry__4_n_0;
  wire minusOp_carry__4_n_1;
  wire minusOp_carry__4_n_2;
  wire minusOp_carry__4_n_3;
  wire minusOp_carry__5_i_1_n_0;
  wire minusOp_carry__5_i_2_n_0;
  wire minusOp_carry__5_i_3_n_0;
  wire minusOp_carry__5_n_2;
  wire minusOp_carry__5_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire [0:0]mst_exec_state;
  wire mst_exec_state0;
  wire [15:0]number_words;
  wire [31:0]signal_count;
  wire [27:0]signal_frequency;
  wire signal_input;
  wire signal_inut_internal;
  wire signal_inut_internal_reg_n_0;
  wire signal_state;
  wire stream_data_out0;
  wire stream_data_out20_in;
  wire stream_data_out2_carry__0_i_1_n_0;
  wire stream_data_out2_carry__0_i_2_n_0;
  wire stream_data_out2_carry__0_i_3_n_0;
  wire stream_data_out2_carry__0_i_4_n_0;
  wire stream_data_out2_carry__0_i_5_n_0;
  wire stream_data_out2_carry__0_i_6_n_0;
  wire stream_data_out2_carry__0_i_7_n_0;
  wire stream_data_out2_carry__0_i_8_n_0;
  wire stream_data_out2_carry__0_n_0;
  wire stream_data_out2_carry__0_n_1;
  wire stream_data_out2_carry__0_n_2;
  wire stream_data_out2_carry__0_n_3;
  wire stream_data_out2_carry__1_i_1_n_0;
  wire stream_data_out2_carry__1_i_2_n_0;
  wire stream_data_out2_carry__1_i_3_n_0;
  wire stream_data_out2_carry__1_i_4_n_0;
  wire stream_data_out2_carry__1_i_5_n_0;
  wire stream_data_out2_carry__1_i_6_n_0;
  wire stream_data_out2_carry__1_i_7_n_0;
  wire stream_data_out2_carry__1_i_8_n_0;
  wire stream_data_out2_carry__1_n_0;
  wire stream_data_out2_carry__1_n_1;
  wire stream_data_out2_carry__1_n_2;
  wire stream_data_out2_carry__1_n_3;
  wire stream_data_out2_carry__2_i_1_n_0;
  wire stream_data_out2_carry__2_i_2_n_0;
  wire stream_data_out2_carry__2_i_3_n_0;
  wire stream_data_out2_carry__2_i_4_n_0;
  wire stream_data_out2_carry__2_i_5_n_0;
  wire stream_data_out2_carry__2_i_6_n_0;
  wire stream_data_out2_carry__2_i_7_n_0;
  wire stream_data_out2_carry__2_i_8_n_0;
  wire stream_data_out2_carry__2_n_1;
  wire stream_data_out2_carry__2_n_2;
  wire stream_data_out2_carry__2_n_3;
  wire stream_data_out2_carry_i_1_n_0;
  wire stream_data_out2_carry_i_2_n_0;
  wire stream_data_out2_carry_i_3_n_0;
  wire stream_data_out2_carry_i_4_n_0;
  wire stream_data_out2_carry_i_5_n_0;
  wire stream_data_out2_carry_i_6_n_0;
  wire stream_data_out2_carry_i_7_n_0;
  wire stream_data_out2_carry_i_8_n_0;
  wire stream_data_out2_carry_n_0;
  wire stream_data_out2_carry_n_1;
  wire stream_data_out2_carry_n_2;
  wire stream_data_out2_carry_n_3;
  wire \stream_data_out[3]_i_2_n_0 ;
  wire \stream_data_out_reg[11]_i_1_n_0 ;
  wire \stream_data_out_reg[11]_i_1_n_1 ;
  wire \stream_data_out_reg[11]_i_1_n_2 ;
  wire \stream_data_out_reg[11]_i_1_n_3 ;
  wire \stream_data_out_reg[11]_i_1_n_4 ;
  wire \stream_data_out_reg[11]_i_1_n_5 ;
  wire \stream_data_out_reg[11]_i_1_n_6 ;
  wire \stream_data_out_reg[11]_i_1_n_7 ;
  wire \stream_data_out_reg[15]_i_1_n_0 ;
  wire \stream_data_out_reg[15]_i_1_n_1 ;
  wire \stream_data_out_reg[15]_i_1_n_2 ;
  wire \stream_data_out_reg[15]_i_1_n_3 ;
  wire \stream_data_out_reg[15]_i_1_n_4 ;
  wire \stream_data_out_reg[15]_i_1_n_5 ;
  wire \stream_data_out_reg[15]_i_1_n_6 ;
  wire \stream_data_out_reg[15]_i_1_n_7 ;
  wire \stream_data_out_reg[19]_i_1_n_0 ;
  wire \stream_data_out_reg[19]_i_1_n_1 ;
  wire \stream_data_out_reg[19]_i_1_n_2 ;
  wire \stream_data_out_reg[19]_i_1_n_3 ;
  wire \stream_data_out_reg[19]_i_1_n_4 ;
  wire \stream_data_out_reg[19]_i_1_n_5 ;
  wire \stream_data_out_reg[19]_i_1_n_6 ;
  wire \stream_data_out_reg[19]_i_1_n_7 ;
  wire \stream_data_out_reg[23]_i_1_n_0 ;
  wire \stream_data_out_reg[23]_i_1_n_1 ;
  wire \stream_data_out_reg[23]_i_1_n_2 ;
  wire \stream_data_out_reg[23]_i_1_n_3 ;
  wire \stream_data_out_reg[23]_i_1_n_4 ;
  wire \stream_data_out_reg[23]_i_1_n_5 ;
  wire \stream_data_out_reg[23]_i_1_n_6 ;
  wire \stream_data_out_reg[23]_i_1_n_7 ;
  wire \stream_data_out_reg[27]_i_1_n_0 ;
  wire \stream_data_out_reg[27]_i_1_n_1 ;
  wire \stream_data_out_reg[27]_i_1_n_2 ;
  wire \stream_data_out_reg[27]_i_1_n_3 ;
  wire \stream_data_out_reg[27]_i_1_n_4 ;
  wire \stream_data_out_reg[27]_i_1_n_5 ;
  wire \stream_data_out_reg[27]_i_1_n_6 ;
  wire \stream_data_out_reg[27]_i_1_n_7 ;
  wire \stream_data_out_reg[31]_i_3_n_1 ;
  wire \stream_data_out_reg[31]_i_3_n_2 ;
  wire \stream_data_out_reg[31]_i_3_n_3 ;
  wire \stream_data_out_reg[31]_i_3_n_4 ;
  wire \stream_data_out_reg[31]_i_3_n_5 ;
  wire \stream_data_out_reg[31]_i_3_n_6 ;
  wire \stream_data_out_reg[31]_i_3_n_7 ;
  wire \stream_data_out_reg[3]_i_1_n_0 ;
  wire \stream_data_out_reg[3]_i_1_n_1 ;
  wire \stream_data_out_reg[3]_i_1_n_2 ;
  wire \stream_data_out_reg[3]_i_1_n_3 ;
  wire \stream_data_out_reg[3]_i_1_n_4 ;
  wire \stream_data_out_reg[3]_i_1_n_5 ;
  wire \stream_data_out_reg[3]_i_1_n_6 ;
  wire \stream_data_out_reg[3]_i_1_n_7 ;
  wire \stream_data_out_reg[7]_i_1_n_0 ;
  wire \stream_data_out_reg[7]_i_1_n_1 ;
  wire \stream_data_out_reg[7]_i_1_n_2 ;
  wire \stream_data_out_reg[7]_i_1_n_3 ;
  wire \stream_data_out_reg[7]_i_1_n_4 ;
  wire \stream_data_out_reg[7]_i_1_n_5 ;
  wire \stream_data_out_reg[7]_i_1_n_6 ;
  wire \stream_data_out_reg[7]_i_1_n_7 ;
  wire [15:0]word_counter;
  wire \word_counter[15]_i_1_n_0 ;
  wire \word_counter_reg_n_0_[0] ;
  wire \word_counter_reg_n_0_[10] ;
  wire \word_counter_reg_n_0_[11] ;
  wire \word_counter_reg_n_0_[12] ;
  wire \word_counter_reg_n_0_[13] ;
  wire \word_counter_reg_n_0_[14] ;
  wire \word_counter_reg_n_0_[15] ;
  wire \word_counter_reg_n_0_[1] ;
  wire \word_counter_reg_n_0_[2] ;
  wire \word_counter_reg_n_0_[3] ;
  wire \word_counter_reg_n_0_[4] ;
  wire \word_counter_reg_n_0_[5] ;
  wire \word_counter_reg_n_0_[6] ;
  wire \word_counter_reg_n_0_[7] ;
  wire \word_counter_reg_n_0_[8] ;
  wire \word_counter_reg_n_0_[9] ;
  wire [3:0]\NLW_clock_counter_reg[0]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_clock_counter_reg[0]_i_15_O_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_clock_counter_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_clock_counter_reg[0]_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_clock_counter_reg[0]_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_clock_counter_reg[0]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_clock_counter_reg[0]_i_30_O_UNCONNECTED ;
  wire [3:0]\NLW_clock_counter_reg[0]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[10]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[10]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[11]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[11]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[12]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[12]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[13]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[13]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[13]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[14]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[14]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[14]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[15]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[15]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[16]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[16]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[17]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[17]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[17]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[18]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[18]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[18]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[19]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[19]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[1]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[1]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[1]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[20]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[20]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[20]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[21]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[21]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[21]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[22]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[22]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[22]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[23]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[23]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[23]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[24]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[24]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[24]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[25]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[25]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[25]_i_31_O_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[26]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_clock_counter_reg[26]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[2]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[2]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[2]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[3]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[3]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[3]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[4]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[4]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[4]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[5]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[5]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[5]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[6]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[6]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[6]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[7]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[7]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[8]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[8]_i_31_O_UNCONNECTED ;
  wire [3:2]\NLW_clock_counter_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_clock_counter_reg[9]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_clock_counter_reg[9]_i_31_O_UNCONNECTED ;
  wire [3:2]NLW_minusOp__52_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp__52_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_minusOp_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_minusOp_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_stream_data_out2_carry_O_UNCONNECTED;
  wire [3:0]NLW_stream_data_out2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_stream_data_out2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_stream_data_out2_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_stream_data_out_reg[31]_i_3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hDBD9000000000000)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(fifo_reset_internal),
        .I1(mst_exec_state),
        .I2(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I3(m00_axis_tready),
        .I4(enabled),
        .I5(m00_axis_aresetn),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAE000000)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(fifo_reset_internal),
        .I1(mst_exec_state),
        .I2(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I3(enabled),
        .I4(m00_axis_aresetn),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \FSM_sequential_mst_exec_state[1]_i_2 
       (.I0(\init_counter_reg_n_0_[3] ),
        .I1(\init_counter_reg_n_0_[1] ),
        .I2(\init_counter_reg_n_0_[0] ),
        .I3(\init_counter_reg_n_0_[2] ),
        .I4(\init_counter_reg_n_0_[4] ),
        .O(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "state_idle:00,state_init_counter:01,state_wait_fifo:10,state_send_stream:11" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "state_idle:00,state_init_counter:01,state_wait_fifo:10,state_send_stream:11" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(fifo_reset_internal),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00FF00F4000B0000)) 
    axis_tlast_i_1
       (.I0(last_signal_input),
        .I1(signal_inut_internal_reg_n_0),
        .I2(axis_tlast_i_2_n_0),
        .I3(last_signal_input_0),
        .I4(m00_axis_tlast),
        .I5(axis_tlast_i_3_n_0),
        .O(axis_tlast_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000008)) 
    axis_tlast_i_2
       (.I0(\clock_counter_reg_n_0_[0] ),
        .I1(stream_data_out20_in),
        .I2(axis_tvalid_i_5_n_0),
        .I3(axis_tvalid_i_4_n_0),
        .I4(axis_tvalid_i_3_n_0),
        .O(axis_tlast_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    axis_tlast_i_3
       (.I0(last_signal_input_0),
        .I1(axis_tlast_i_4_n_0),
        .I2(\word_counter_reg_n_0_[1] ),
        .I3(\word_counter_reg_n_0_[14] ),
        .I4(\word_counter_reg_n_0_[15] ),
        .I5(axis_tlast_i_5_n_0),
        .O(axis_tlast_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    axis_tlast_i_4
       (.I0(\word_counter_reg_n_0_[11] ),
        .I1(\word_counter_reg_n_0_[10] ),
        .I2(\word_counter_reg_n_0_[13] ),
        .I3(\word_counter_reg_n_0_[12] ),
        .O(axis_tlast_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axis_tlast_i_5
       (.I0(\word_counter_reg_n_0_[4] ),
        .I1(\word_counter_reg_n_0_[5] ),
        .I2(\word_counter_reg_n_0_[2] ),
        .I3(\word_counter_reg_n_0_[3] ),
        .I4(axis_tlast_i_6_n_0),
        .O(axis_tlast_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    axis_tlast_i_6
       (.I0(\word_counter_reg_n_0_[7] ),
        .I1(\word_counter_reg_n_0_[6] ),
        .I2(\word_counter_reg_n_0_[9] ),
        .I3(\word_counter_reg_n_0_[8] ),
        .O(axis_tlast_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axis_tlast_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tlast_i_1_n_0),
        .Q(m00_axis_tlast),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000004444F444)) 
    axis_tvalid_i_1
       (.I0(last_signal_input),
        .I1(signal_inut_internal_reg_n_0),
        .I2(\clock_counter_reg_n_0_[0] ),
        .I3(stream_data_out20_in),
        .I4(axis_tvalid_i_2_n_0),
        .I5(last_signal_input_0),
        .O(axis_tvalid_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    axis_tvalid_i_2
       (.I0(axis_tvalid_i_3_n_0),
        .I1(axis_tvalid_i_4_n_0),
        .I2(axis_tvalid_i_5_n_0),
        .O(axis_tvalid_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axis_tvalid_i_3
       (.I0(\clock_counter_reg_n_0_[16] ),
        .I1(\clock_counter_reg_n_0_[17] ),
        .I2(\clock_counter_reg_n_0_[14] ),
        .I3(\clock_counter_reg_n_0_[15] ),
        .I4(axis_tvalid_i_6_n_0),
        .O(axis_tvalid_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axis_tvalid_i_4
       (.I0(\clock_counter_reg_n_0_[8] ),
        .I1(\clock_counter_reg_n_0_[9] ),
        .I2(\clock_counter_reg_n_0_[6] ),
        .I3(\clock_counter_reg_n_0_[7] ),
        .I4(axis_tvalid_i_7_n_0),
        .O(axis_tvalid_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    axis_tvalid_i_5
       (.I0(\clock_counter_reg_n_0_[27] ),
        .I1(\clock_counter_reg_n_0_[26] ),
        .I2(\clock_counter_reg_n_0_[1] ),
        .I3(axis_tvalid_i_8_n_0),
        .I4(axis_tvalid_i_9_n_0),
        .O(axis_tvalid_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    axis_tvalid_i_6
       (.I0(\clock_counter_reg_n_0_[19] ),
        .I1(\clock_counter_reg_n_0_[18] ),
        .I2(\clock_counter_reg_n_0_[21] ),
        .I3(\clock_counter_reg_n_0_[20] ),
        .O(axis_tvalid_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    axis_tvalid_i_7
       (.I0(\clock_counter_reg_n_0_[11] ),
        .I1(\clock_counter_reg_n_0_[10] ),
        .I2(\clock_counter_reg_n_0_[13] ),
        .I3(\clock_counter_reg_n_0_[12] ),
        .O(axis_tvalid_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    axis_tvalid_i_8
       (.I0(\clock_counter_reg_n_0_[23] ),
        .I1(\clock_counter_reg_n_0_[22] ),
        .I2(\clock_counter_reg_n_0_[25] ),
        .I3(\clock_counter_reg_n_0_[24] ),
        .O(axis_tvalid_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    axis_tvalid_i_9
       (.I0(\clock_counter_reg_n_0_[3] ),
        .I1(\clock_counter_reg_n_0_[2] ),
        .I2(\clock_counter_reg_n_0_[5] ),
        .I3(\clock_counter_reg_n_0_[4] ),
        .O(axis_tvalid_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axis_tvalid_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid_i_1_n_0),
        .Q(m00_axis_tvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h2AAAEAAA)) 
    \clock_counter[0]_i_1 
       (.I0(in6[0]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(\clock_counter_reg_n_0_[0] ),
        .O(clock_counter[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_11 
       (.I0(in6[1]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[1]_i_6_n_4 ),
        .O(\clock_counter[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_12 
       (.I0(in6[1]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[1]_i_6_n_5 ),
        .O(\clock_counter[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_13 
       (.I0(in6[1]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[1]_i_6_n_6 ),
        .O(\clock_counter[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_14 
       (.I0(in6[1]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[1]_i_6_n_7 ),
        .O(\clock_counter[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_16 
       (.I0(in6[1]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[1]_i_11_n_4 ),
        .O(\clock_counter[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_17 
       (.I0(in6[1]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[1]_i_11_n_5 ),
        .O(\clock_counter[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_18 
       (.I0(in6[1]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[1]_i_11_n_6 ),
        .O(\clock_counter[0]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_19 
       (.I0(in6[1]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[1]_i_11_n_7 ),
        .O(\clock_counter[0]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_21 
       (.I0(in6[1]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[1]_i_16_n_4 ),
        .O(\clock_counter[0]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_22 
       (.I0(in6[1]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[1]_i_16_n_5 ),
        .O(\clock_counter[0]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_23 
       (.I0(in6[1]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[1]_i_16_n_6 ),
        .O(\clock_counter[0]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_24 
       (.I0(in6[1]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[1]_i_16_n_7 ),
        .O(\clock_counter[0]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_26 
       (.I0(in6[1]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[1]_i_21_n_4 ),
        .O(\clock_counter[0]_i_26_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_27 
       (.I0(in6[1]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[1]_i_21_n_5 ),
        .O(\clock_counter[0]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_28 
       (.I0(in6[1]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[1]_i_21_n_6 ),
        .O(\clock_counter[0]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_29 
       (.I0(in6[1]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[1]_i_21_n_7 ),
        .O(\clock_counter[0]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_31 
       (.I0(in6[1]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[1]_i_26_n_4 ),
        .O(\clock_counter[0]_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_32 
       (.I0(in6[1]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[1]_i_26_n_5 ),
        .O(\clock_counter[0]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_33 
       (.I0(in6[1]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[1]_i_26_n_6 ),
        .O(\clock_counter[0]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_34 
       (.I0(in6[1]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[1]_i_26_n_7 ),
        .O(\clock_counter[0]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[0]_i_35 
       (.I0(signal_frequency[0]),
        .I1(in6[1]),
        .O(\clock_counter[0]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_36 
       (.I0(in6[1]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[1]_i_31_n_4 ),
        .O(\clock_counter[0]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_37 
       (.I0(in6[1]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[1]_i_31_n_5 ),
        .O(\clock_counter[0]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_38 
       (.I0(in6[1]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[1]_i_31_n_6 ),
        .O(\clock_counter[0]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[0]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[1]),
        .O(\clock_counter[0]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[0]_i_4 
       (.I0(in6[1]),
        .I1(\clock_counter_reg[1]_i_2_n_7 ),
        .O(\clock_counter[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_6 
       (.I0(in6[1]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[1]_i_3_n_4 ),
        .O(\clock_counter[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_7 
       (.I0(in6[1]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[1]_i_3_n_5 ),
        .O(\clock_counter[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_8 
       (.I0(in6[1]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[1]_i_3_n_6 ),
        .O(\clock_counter[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[0]_i_9 
       (.I0(in6[1]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[1]_i_3_n_7 ),
        .O(\clock_counter[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[10]_i_1 
       (.I0(in6[10]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[10]),
        .O(clock_counter[10]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_10 
       (.I0(in6[11]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[11]_i_6_n_4 ),
        .O(\clock_counter[10]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_12 
       (.I0(in6[11]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[11]_i_6_n_5 ),
        .O(\clock_counter[10]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_13 
       (.I0(in6[11]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[11]_i_6_n_6 ),
        .O(\clock_counter[10]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_14 
       (.I0(in6[11]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[11]_i_6_n_7 ),
        .O(\clock_counter[10]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_15 
       (.I0(in6[11]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[11]_i_11_n_4 ),
        .O(\clock_counter[10]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_17 
       (.I0(in6[11]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[11]_i_11_n_5 ),
        .O(\clock_counter[10]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_18 
       (.I0(in6[11]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[11]_i_11_n_6 ),
        .O(\clock_counter[10]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_19 
       (.I0(in6[11]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[11]_i_11_n_7 ),
        .O(\clock_counter[10]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_20 
       (.I0(in6[11]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[11]_i_16_n_4 ),
        .O(\clock_counter[10]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_22 
       (.I0(in6[11]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[11]_i_16_n_5 ),
        .O(\clock_counter[10]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_23 
       (.I0(in6[11]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[11]_i_16_n_6 ),
        .O(\clock_counter[10]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_24 
       (.I0(in6[11]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[11]_i_16_n_7 ),
        .O(\clock_counter[10]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_25 
       (.I0(in6[11]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[11]_i_21_n_4 ),
        .O(\clock_counter[10]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_27 
       (.I0(in6[11]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[11]_i_21_n_5 ),
        .O(\clock_counter[10]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_28 
       (.I0(in6[11]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[11]_i_21_n_6 ),
        .O(\clock_counter[10]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_29 
       (.I0(in6[11]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[11]_i_21_n_7 ),
        .O(\clock_counter[10]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_30 
       (.I0(in6[11]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[11]_i_26_n_4 ),
        .O(\clock_counter[10]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_32 
       (.I0(in6[11]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[11]_i_26_n_5 ),
        .O(\clock_counter[10]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_33 
       (.I0(in6[11]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[11]_i_26_n_6 ),
        .O(\clock_counter[10]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_34 
       (.I0(in6[11]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[11]_i_26_n_7 ),
        .O(\clock_counter[10]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_35 
       (.I0(in6[11]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[11]_i_31_n_4 ),
        .O(\clock_counter[10]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[10]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[11]),
        .O(\clock_counter[10]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_37 
       (.I0(in6[11]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[11]_i_31_n_5 ),
        .O(\clock_counter[10]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_38 
       (.I0(in6[11]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[11]_i_31_n_6 ),
        .O(\clock_counter[10]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[10]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[11]),
        .O(\clock_counter[10]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[10]_i_4 
       (.I0(in6[11]),
        .I1(\clock_counter_reg[11]_i_2_n_7 ),
        .O(\clock_counter[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_5 
       (.I0(in6[11]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[11]_i_3_n_4 ),
        .O(\clock_counter[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_7 
       (.I0(in6[11]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[11]_i_3_n_5 ),
        .O(\clock_counter[10]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_8 
       (.I0(in6[11]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[11]_i_3_n_6 ),
        .O(\clock_counter[10]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[10]_i_9 
       (.I0(in6[11]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[11]_i_3_n_7 ),
        .O(\clock_counter[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[11]_i_1 
       (.I0(in6[11]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[11]),
        .O(clock_counter[11]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_10 
       (.I0(in6[12]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[12]_i_6_n_4 ),
        .O(\clock_counter[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_12 
       (.I0(in6[12]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[12]_i_6_n_5 ),
        .O(\clock_counter[11]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_13 
       (.I0(in6[12]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[12]_i_6_n_6 ),
        .O(\clock_counter[11]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_14 
       (.I0(in6[12]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[12]_i_6_n_7 ),
        .O(\clock_counter[11]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_15 
       (.I0(in6[12]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[12]_i_11_n_4 ),
        .O(\clock_counter[11]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_17 
       (.I0(in6[12]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[12]_i_11_n_5 ),
        .O(\clock_counter[11]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_18 
       (.I0(in6[12]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[12]_i_11_n_6 ),
        .O(\clock_counter[11]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_19 
       (.I0(in6[12]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[12]_i_11_n_7 ),
        .O(\clock_counter[11]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_20 
       (.I0(in6[12]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[12]_i_16_n_4 ),
        .O(\clock_counter[11]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_22 
       (.I0(in6[12]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[12]_i_16_n_5 ),
        .O(\clock_counter[11]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_23 
       (.I0(in6[12]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[12]_i_16_n_6 ),
        .O(\clock_counter[11]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_24 
       (.I0(in6[12]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[12]_i_16_n_7 ),
        .O(\clock_counter[11]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_25 
       (.I0(in6[12]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[12]_i_21_n_4 ),
        .O(\clock_counter[11]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_27 
       (.I0(in6[12]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[12]_i_21_n_5 ),
        .O(\clock_counter[11]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_28 
       (.I0(in6[12]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[12]_i_21_n_6 ),
        .O(\clock_counter[11]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_29 
       (.I0(in6[12]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[12]_i_21_n_7 ),
        .O(\clock_counter[11]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_30 
       (.I0(in6[12]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[12]_i_26_n_4 ),
        .O(\clock_counter[11]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_32 
       (.I0(in6[12]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[12]_i_26_n_5 ),
        .O(\clock_counter[11]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_33 
       (.I0(in6[12]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[12]_i_26_n_6 ),
        .O(\clock_counter[11]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_34 
       (.I0(in6[12]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[12]_i_26_n_7 ),
        .O(\clock_counter[11]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_35 
       (.I0(in6[12]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[12]_i_31_n_4 ),
        .O(\clock_counter[11]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[11]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[12]),
        .O(\clock_counter[11]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_37 
       (.I0(in6[12]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[12]_i_31_n_5 ),
        .O(\clock_counter[11]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_38 
       (.I0(in6[12]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[12]_i_31_n_6 ),
        .O(\clock_counter[11]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[11]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[12]),
        .O(\clock_counter[11]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[11]_i_4 
       (.I0(in6[12]),
        .I1(\clock_counter_reg[12]_i_2_n_7 ),
        .O(\clock_counter[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_5 
       (.I0(in6[12]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[12]_i_3_n_4 ),
        .O(\clock_counter[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_7 
       (.I0(in6[12]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[12]_i_3_n_5 ),
        .O(\clock_counter[11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_8 
       (.I0(in6[12]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[12]_i_3_n_6 ),
        .O(\clock_counter[11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[11]_i_9 
       (.I0(in6[12]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[12]_i_3_n_7 ),
        .O(\clock_counter[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[12]_i_1 
       (.I0(in6[12]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[12]),
        .O(clock_counter[12]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_10 
       (.I0(in6[13]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[13]_i_6_n_4 ),
        .O(\clock_counter[12]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_12 
       (.I0(in6[13]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[13]_i_6_n_5 ),
        .O(\clock_counter[12]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_13 
       (.I0(in6[13]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[13]_i_6_n_6 ),
        .O(\clock_counter[12]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_14 
       (.I0(in6[13]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[13]_i_6_n_7 ),
        .O(\clock_counter[12]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_15 
       (.I0(in6[13]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[13]_i_11_n_4 ),
        .O(\clock_counter[12]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_17 
       (.I0(in6[13]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[13]_i_11_n_5 ),
        .O(\clock_counter[12]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_18 
       (.I0(in6[13]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[13]_i_11_n_6 ),
        .O(\clock_counter[12]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_19 
       (.I0(in6[13]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[13]_i_11_n_7 ),
        .O(\clock_counter[12]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_20 
       (.I0(in6[13]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[13]_i_16_n_4 ),
        .O(\clock_counter[12]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_22 
       (.I0(in6[13]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[13]_i_16_n_5 ),
        .O(\clock_counter[12]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_23 
       (.I0(in6[13]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[13]_i_16_n_6 ),
        .O(\clock_counter[12]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_24 
       (.I0(in6[13]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[13]_i_16_n_7 ),
        .O(\clock_counter[12]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_25 
       (.I0(in6[13]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[13]_i_21_n_4 ),
        .O(\clock_counter[12]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_27 
       (.I0(in6[13]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[13]_i_21_n_5 ),
        .O(\clock_counter[12]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_28 
       (.I0(in6[13]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[13]_i_21_n_6 ),
        .O(\clock_counter[12]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_29 
       (.I0(in6[13]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[13]_i_21_n_7 ),
        .O(\clock_counter[12]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_30 
       (.I0(in6[13]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[13]_i_26_n_4 ),
        .O(\clock_counter[12]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_32 
       (.I0(in6[13]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[13]_i_26_n_5 ),
        .O(\clock_counter[12]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_33 
       (.I0(in6[13]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[13]_i_26_n_6 ),
        .O(\clock_counter[12]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_34 
       (.I0(in6[13]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[13]_i_26_n_7 ),
        .O(\clock_counter[12]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_35 
       (.I0(in6[13]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[13]_i_31_n_4 ),
        .O(\clock_counter[12]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[12]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[13]),
        .O(\clock_counter[12]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_37 
       (.I0(in6[13]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[13]_i_31_n_5 ),
        .O(\clock_counter[12]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_38 
       (.I0(in6[13]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[13]_i_31_n_6 ),
        .O(\clock_counter[12]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[12]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[13]),
        .O(\clock_counter[12]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[12]_i_4 
       (.I0(in6[13]),
        .I1(\clock_counter_reg[13]_i_2_n_7 ),
        .O(\clock_counter[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_5 
       (.I0(in6[13]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[13]_i_3_n_4 ),
        .O(\clock_counter[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_7 
       (.I0(in6[13]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[13]_i_3_n_5 ),
        .O(\clock_counter[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_8 
       (.I0(in6[13]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[13]_i_3_n_6 ),
        .O(\clock_counter[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[12]_i_9 
       (.I0(in6[13]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[13]_i_3_n_7 ),
        .O(\clock_counter[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[13]_i_1 
       (.I0(in6[13]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[13]),
        .O(clock_counter[13]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_10 
       (.I0(in6[14]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[14]_i_6_n_4 ),
        .O(\clock_counter[13]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_12 
       (.I0(in6[14]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[14]_i_6_n_5 ),
        .O(\clock_counter[13]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_13 
       (.I0(in6[14]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[14]_i_6_n_6 ),
        .O(\clock_counter[13]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_14 
       (.I0(in6[14]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[14]_i_6_n_7 ),
        .O(\clock_counter[13]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_15 
       (.I0(in6[14]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[14]_i_11_n_4 ),
        .O(\clock_counter[13]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_17 
       (.I0(in6[14]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[14]_i_11_n_5 ),
        .O(\clock_counter[13]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_18 
       (.I0(in6[14]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[14]_i_11_n_6 ),
        .O(\clock_counter[13]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_19 
       (.I0(in6[14]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[14]_i_11_n_7 ),
        .O(\clock_counter[13]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_20 
       (.I0(in6[14]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[14]_i_16_n_4 ),
        .O(\clock_counter[13]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_22 
       (.I0(in6[14]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[14]_i_16_n_5 ),
        .O(\clock_counter[13]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_23 
       (.I0(in6[14]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[14]_i_16_n_6 ),
        .O(\clock_counter[13]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_24 
       (.I0(in6[14]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[14]_i_16_n_7 ),
        .O(\clock_counter[13]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_25 
       (.I0(in6[14]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[14]_i_21_n_4 ),
        .O(\clock_counter[13]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_27 
       (.I0(in6[14]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[14]_i_21_n_5 ),
        .O(\clock_counter[13]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_28 
       (.I0(in6[14]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[14]_i_21_n_6 ),
        .O(\clock_counter[13]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_29 
       (.I0(in6[14]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[14]_i_21_n_7 ),
        .O(\clock_counter[13]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_30 
       (.I0(in6[14]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[14]_i_26_n_4 ),
        .O(\clock_counter[13]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_32 
       (.I0(in6[14]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[14]_i_26_n_5 ),
        .O(\clock_counter[13]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_33 
       (.I0(in6[14]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[14]_i_26_n_6 ),
        .O(\clock_counter[13]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_34 
       (.I0(in6[14]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[14]_i_26_n_7 ),
        .O(\clock_counter[13]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_35 
       (.I0(in6[14]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[14]_i_31_n_4 ),
        .O(\clock_counter[13]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_36 
       (.I0(in6[14]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[14]_i_31_n_5 ),
        .O(\clock_counter[13]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_37 
       (.I0(in6[14]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[14]_i_31_n_6 ),
        .O(\clock_counter[13]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[13]_i_38 
       (.I0(signal_frequency[0]),
        .I1(in6[14]),
        .O(\clock_counter[13]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[13]_i_4 
       (.I0(in6[14]),
        .I1(\clock_counter_reg[14]_i_2_n_7 ),
        .O(\clock_counter[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_5 
       (.I0(in6[14]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[14]_i_3_n_4 ),
        .O(\clock_counter[13]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_7 
       (.I0(in6[14]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[14]_i_3_n_5 ),
        .O(\clock_counter[13]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_8 
       (.I0(in6[14]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[14]_i_3_n_6 ),
        .O(\clock_counter[13]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[13]_i_9 
       (.I0(in6[14]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[14]_i_3_n_7 ),
        .O(\clock_counter[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[14]_i_1 
       (.I0(in6[14]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[14]),
        .O(clock_counter[14]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_10 
       (.I0(in6[15]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[15]_i_6_n_4 ),
        .O(\clock_counter[14]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_12 
       (.I0(in6[15]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[15]_i_6_n_5 ),
        .O(\clock_counter[14]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_13 
       (.I0(in6[15]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[15]_i_6_n_6 ),
        .O(\clock_counter[14]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_14 
       (.I0(in6[15]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[15]_i_6_n_7 ),
        .O(\clock_counter[14]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_15 
       (.I0(in6[15]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[15]_i_11_n_4 ),
        .O(\clock_counter[14]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_17 
       (.I0(in6[15]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[15]_i_11_n_5 ),
        .O(\clock_counter[14]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_18 
       (.I0(in6[15]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[15]_i_11_n_6 ),
        .O(\clock_counter[14]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_19 
       (.I0(in6[15]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[15]_i_11_n_7 ),
        .O(\clock_counter[14]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_20 
       (.I0(in6[15]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[15]_i_16_n_4 ),
        .O(\clock_counter[14]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_22 
       (.I0(in6[15]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[15]_i_16_n_5 ),
        .O(\clock_counter[14]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_23 
       (.I0(in6[15]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[15]_i_16_n_6 ),
        .O(\clock_counter[14]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_24 
       (.I0(in6[15]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[15]_i_16_n_7 ),
        .O(\clock_counter[14]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_25 
       (.I0(in6[15]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[15]_i_21_n_4 ),
        .O(\clock_counter[14]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_27 
       (.I0(in6[15]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[15]_i_21_n_5 ),
        .O(\clock_counter[14]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_28 
       (.I0(in6[15]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[15]_i_21_n_6 ),
        .O(\clock_counter[14]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_29 
       (.I0(in6[15]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[15]_i_21_n_7 ),
        .O(\clock_counter[14]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_30 
       (.I0(in6[15]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[15]_i_26_n_4 ),
        .O(\clock_counter[14]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_32 
       (.I0(in6[15]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[15]_i_26_n_5 ),
        .O(\clock_counter[14]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_33 
       (.I0(in6[15]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[15]_i_26_n_6 ),
        .O(\clock_counter[14]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_34 
       (.I0(in6[15]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[15]_i_26_n_7 ),
        .O(\clock_counter[14]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_35 
       (.I0(in6[15]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[15]_i_31_n_4 ),
        .O(\clock_counter[14]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_36 
       (.I0(in6[15]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[15]_i_31_n_5 ),
        .O(\clock_counter[14]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_37 
       (.I0(in6[15]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[15]_i_31_n_6 ),
        .O(\clock_counter[14]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[14]_i_38 
       (.I0(signal_frequency[0]),
        .I1(in6[15]),
        .O(\clock_counter[14]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[14]_i_4 
       (.I0(in6[15]),
        .I1(\clock_counter_reg[15]_i_2_n_7 ),
        .O(\clock_counter[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_5 
       (.I0(in6[15]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[15]_i_3_n_4 ),
        .O(\clock_counter[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_7 
       (.I0(in6[15]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[15]_i_3_n_5 ),
        .O(\clock_counter[14]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_8 
       (.I0(in6[15]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[15]_i_3_n_6 ),
        .O(\clock_counter[14]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[14]_i_9 
       (.I0(in6[15]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[15]_i_3_n_7 ),
        .O(\clock_counter[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[15]_i_1 
       (.I0(in6[15]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[15]),
        .O(clock_counter[15]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_10 
       (.I0(in6[16]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[16]_i_6_n_4 ),
        .O(\clock_counter[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_12 
       (.I0(in6[16]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[16]_i_6_n_5 ),
        .O(\clock_counter[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_13 
       (.I0(in6[16]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[16]_i_6_n_6 ),
        .O(\clock_counter[15]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_14 
       (.I0(in6[16]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[16]_i_6_n_7 ),
        .O(\clock_counter[15]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_15 
       (.I0(in6[16]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[16]_i_11_n_4 ),
        .O(\clock_counter[15]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_17 
       (.I0(in6[16]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[16]_i_11_n_5 ),
        .O(\clock_counter[15]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_18 
       (.I0(in6[16]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[16]_i_11_n_6 ),
        .O(\clock_counter[15]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_19 
       (.I0(in6[16]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[16]_i_11_n_7 ),
        .O(\clock_counter[15]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_20 
       (.I0(in6[16]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[16]_i_16_n_4 ),
        .O(\clock_counter[15]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_22 
       (.I0(in6[16]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[16]_i_16_n_5 ),
        .O(\clock_counter[15]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_23 
       (.I0(in6[16]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[16]_i_16_n_6 ),
        .O(\clock_counter[15]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_24 
       (.I0(in6[16]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[16]_i_16_n_7 ),
        .O(\clock_counter[15]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_25 
       (.I0(in6[16]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[16]_i_21_n_4 ),
        .O(\clock_counter[15]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_27 
       (.I0(in6[16]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[16]_i_21_n_5 ),
        .O(\clock_counter[15]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_28 
       (.I0(in6[16]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[16]_i_21_n_6 ),
        .O(\clock_counter[15]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_29 
       (.I0(in6[16]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[16]_i_21_n_7 ),
        .O(\clock_counter[15]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_30 
       (.I0(in6[16]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[16]_i_26_n_4 ),
        .O(\clock_counter[15]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_32 
       (.I0(in6[16]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[16]_i_26_n_5 ),
        .O(\clock_counter[15]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_33 
       (.I0(in6[16]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[16]_i_26_n_6 ),
        .O(\clock_counter[15]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_34 
       (.I0(in6[16]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[16]_i_26_n_7 ),
        .O(\clock_counter[15]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_35 
       (.I0(in6[16]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[16]_i_31_n_4 ),
        .O(\clock_counter[15]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_36 
       (.I0(in6[16]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[16]_i_31_n_5 ),
        .O(\clock_counter[15]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_37 
       (.I0(in6[16]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[16]_i_31_n_6 ),
        .O(\clock_counter[15]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[15]_i_38 
       (.I0(signal_frequency[0]),
        .I1(in6[16]),
        .O(\clock_counter[15]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[15]_i_4 
       (.I0(in6[16]),
        .I1(\clock_counter_reg[16]_i_2_n_7 ),
        .O(\clock_counter[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_5 
       (.I0(in6[16]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[16]_i_3_n_4 ),
        .O(\clock_counter[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_7 
       (.I0(in6[16]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[16]_i_3_n_5 ),
        .O(\clock_counter[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_8 
       (.I0(in6[16]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[16]_i_3_n_6 ),
        .O(\clock_counter[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[15]_i_9 
       (.I0(in6[16]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[16]_i_3_n_7 ),
        .O(\clock_counter[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[16]_i_1 
       (.I0(in6[16]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[16]),
        .O(clock_counter[16]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_10 
       (.I0(in6[17]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[17]_i_6_n_4 ),
        .O(\clock_counter[16]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_12 
       (.I0(in6[17]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[17]_i_6_n_5 ),
        .O(\clock_counter[16]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_13 
       (.I0(in6[17]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[17]_i_6_n_6 ),
        .O(\clock_counter[16]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_14 
       (.I0(in6[17]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[17]_i_6_n_7 ),
        .O(\clock_counter[16]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_15 
       (.I0(in6[17]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[17]_i_11_n_4 ),
        .O(\clock_counter[16]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_17 
       (.I0(in6[17]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[17]_i_11_n_5 ),
        .O(\clock_counter[16]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_18 
       (.I0(in6[17]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[17]_i_11_n_6 ),
        .O(\clock_counter[16]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_19 
       (.I0(in6[17]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[17]_i_11_n_7 ),
        .O(\clock_counter[16]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_20 
       (.I0(in6[17]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[17]_i_16_n_4 ),
        .O(\clock_counter[16]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_22 
       (.I0(in6[17]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[17]_i_16_n_5 ),
        .O(\clock_counter[16]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_23 
       (.I0(in6[17]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[17]_i_16_n_6 ),
        .O(\clock_counter[16]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_24 
       (.I0(in6[17]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[17]_i_16_n_7 ),
        .O(\clock_counter[16]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_25 
       (.I0(in6[17]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[17]_i_21_n_4 ),
        .O(\clock_counter[16]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_27 
       (.I0(in6[17]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[17]_i_21_n_5 ),
        .O(\clock_counter[16]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_28 
       (.I0(in6[17]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[17]_i_21_n_6 ),
        .O(\clock_counter[16]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_29 
       (.I0(in6[17]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[17]_i_21_n_7 ),
        .O(\clock_counter[16]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_30 
       (.I0(in6[17]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[17]_i_26_n_4 ),
        .O(\clock_counter[16]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_32 
       (.I0(in6[17]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[17]_i_26_n_5 ),
        .O(\clock_counter[16]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_33 
       (.I0(in6[17]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[17]_i_26_n_6 ),
        .O(\clock_counter[16]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_34 
       (.I0(in6[17]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[17]_i_26_n_7 ),
        .O(\clock_counter[16]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_35 
       (.I0(in6[17]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[17]_i_31_n_4 ),
        .O(\clock_counter[16]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_36 
       (.I0(in6[17]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[17]_i_31_n_5 ),
        .O(\clock_counter[16]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_37 
       (.I0(in6[17]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[17]_i_31_n_6 ),
        .O(\clock_counter[16]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[16]_i_38 
       (.I0(signal_frequency[0]),
        .I1(in6[17]),
        .O(\clock_counter[16]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[16]_i_4 
       (.I0(in6[17]),
        .I1(\clock_counter_reg[17]_i_2_n_7 ),
        .O(\clock_counter[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_5 
       (.I0(in6[17]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[17]_i_3_n_4 ),
        .O(\clock_counter[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_7 
       (.I0(in6[17]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[17]_i_3_n_5 ),
        .O(\clock_counter[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_8 
       (.I0(in6[17]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[17]_i_3_n_6 ),
        .O(\clock_counter[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[16]_i_9 
       (.I0(in6[17]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[17]_i_3_n_7 ),
        .O(\clock_counter[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[17]_i_1 
       (.I0(in6[17]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[17]),
        .O(clock_counter[17]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_10 
       (.I0(in6[18]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[18]_i_6_n_4 ),
        .O(\clock_counter[17]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_12 
       (.I0(in6[18]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[18]_i_6_n_5 ),
        .O(\clock_counter[17]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_13 
       (.I0(in6[18]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[18]_i_6_n_6 ),
        .O(\clock_counter[17]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_14 
       (.I0(in6[18]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[18]_i_6_n_7 ),
        .O(\clock_counter[17]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_15 
       (.I0(in6[18]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[18]_i_11_n_4 ),
        .O(\clock_counter[17]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_17 
       (.I0(in6[18]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[18]_i_11_n_5 ),
        .O(\clock_counter[17]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_18 
       (.I0(in6[18]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[18]_i_11_n_6 ),
        .O(\clock_counter[17]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_19 
       (.I0(in6[18]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[18]_i_11_n_7 ),
        .O(\clock_counter[17]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_20 
       (.I0(in6[18]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[18]_i_16_n_4 ),
        .O(\clock_counter[17]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_22 
       (.I0(in6[18]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[18]_i_16_n_5 ),
        .O(\clock_counter[17]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_23 
       (.I0(in6[18]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[18]_i_16_n_6 ),
        .O(\clock_counter[17]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_24 
       (.I0(in6[18]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[18]_i_16_n_7 ),
        .O(\clock_counter[17]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_25 
       (.I0(in6[18]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[18]_i_21_n_4 ),
        .O(\clock_counter[17]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_27 
       (.I0(in6[18]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[18]_i_21_n_5 ),
        .O(\clock_counter[17]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_28 
       (.I0(in6[18]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[18]_i_21_n_6 ),
        .O(\clock_counter[17]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_29 
       (.I0(in6[18]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[18]_i_21_n_7 ),
        .O(\clock_counter[17]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_30 
       (.I0(in6[18]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[18]_i_26_n_4 ),
        .O(\clock_counter[17]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_32 
       (.I0(in6[18]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[18]_i_26_n_5 ),
        .O(\clock_counter[17]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_33 
       (.I0(in6[18]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[18]_i_26_n_6 ),
        .O(\clock_counter[17]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_34 
       (.I0(in6[18]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[18]_i_26_n_7 ),
        .O(\clock_counter[17]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_35 
       (.I0(in6[18]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[18]_i_31_n_4 ),
        .O(\clock_counter[17]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[17]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[18]),
        .O(\clock_counter[17]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_37 
       (.I0(in6[18]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[18]_i_31_n_5 ),
        .O(\clock_counter[17]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_38 
       (.I0(in6[18]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[18]_i_31_n_6 ),
        .O(\clock_counter[17]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[17]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[18]),
        .O(\clock_counter[17]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[17]_i_4 
       (.I0(in6[18]),
        .I1(\clock_counter_reg[18]_i_2_n_7 ),
        .O(\clock_counter[17]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_5 
       (.I0(in6[18]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[18]_i_3_n_4 ),
        .O(\clock_counter[17]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_7 
       (.I0(in6[18]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[18]_i_3_n_5 ),
        .O(\clock_counter[17]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_8 
       (.I0(in6[18]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[18]_i_3_n_6 ),
        .O(\clock_counter[17]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[17]_i_9 
       (.I0(in6[18]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[18]_i_3_n_7 ),
        .O(\clock_counter[17]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[18]_i_1 
       (.I0(in6[18]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[18]),
        .O(clock_counter[18]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_10 
       (.I0(in6[19]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[19]_i_6_n_4 ),
        .O(\clock_counter[18]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_12 
       (.I0(in6[19]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[19]_i_6_n_5 ),
        .O(\clock_counter[18]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_13 
       (.I0(in6[19]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[19]_i_6_n_6 ),
        .O(\clock_counter[18]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_14 
       (.I0(in6[19]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[19]_i_6_n_7 ),
        .O(\clock_counter[18]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_15 
       (.I0(in6[19]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[19]_i_11_n_4 ),
        .O(\clock_counter[18]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_17 
       (.I0(in6[19]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[19]_i_11_n_5 ),
        .O(\clock_counter[18]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_18 
       (.I0(in6[19]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[19]_i_11_n_6 ),
        .O(\clock_counter[18]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_19 
       (.I0(in6[19]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[19]_i_11_n_7 ),
        .O(\clock_counter[18]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_20 
       (.I0(in6[19]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[19]_i_16_n_4 ),
        .O(\clock_counter[18]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_22 
       (.I0(in6[19]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[19]_i_16_n_5 ),
        .O(\clock_counter[18]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_23 
       (.I0(in6[19]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[19]_i_16_n_6 ),
        .O(\clock_counter[18]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_24 
       (.I0(in6[19]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[19]_i_16_n_7 ),
        .O(\clock_counter[18]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_25 
       (.I0(in6[19]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[19]_i_21_n_4 ),
        .O(\clock_counter[18]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_27 
       (.I0(in6[19]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[19]_i_21_n_5 ),
        .O(\clock_counter[18]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_28 
       (.I0(in6[19]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[19]_i_21_n_6 ),
        .O(\clock_counter[18]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_29 
       (.I0(in6[19]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[19]_i_21_n_7 ),
        .O(\clock_counter[18]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_30 
       (.I0(in6[19]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[19]_i_26_n_4 ),
        .O(\clock_counter[18]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_32 
       (.I0(in6[19]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[19]_i_26_n_5 ),
        .O(\clock_counter[18]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_33 
       (.I0(in6[19]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[19]_i_26_n_6 ),
        .O(\clock_counter[18]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_34 
       (.I0(in6[19]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[19]_i_26_n_7 ),
        .O(\clock_counter[18]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_35 
       (.I0(in6[19]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[19]_i_31_n_4 ),
        .O(\clock_counter[18]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_36 
       (.I0(in6[19]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[19]_i_31_n_5 ),
        .O(\clock_counter[18]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_37 
       (.I0(in6[19]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[19]_i_31_n_6 ),
        .O(\clock_counter[18]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[18]_i_38 
       (.I0(signal_frequency[0]),
        .I1(in6[19]),
        .O(\clock_counter[18]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[18]_i_4 
       (.I0(in6[19]),
        .I1(\clock_counter_reg[19]_i_2_n_7 ),
        .O(\clock_counter[18]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_5 
       (.I0(in6[19]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[19]_i_3_n_4 ),
        .O(\clock_counter[18]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_7 
       (.I0(in6[19]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[19]_i_3_n_5 ),
        .O(\clock_counter[18]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_8 
       (.I0(in6[19]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[19]_i_3_n_6 ),
        .O(\clock_counter[18]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[18]_i_9 
       (.I0(in6[19]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[19]_i_3_n_7 ),
        .O(\clock_counter[18]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[19]_i_1 
       (.I0(in6[19]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[19]),
        .O(clock_counter[19]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_10 
       (.I0(in6[20]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[20]_i_6_n_4 ),
        .O(\clock_counter[19]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_12 
       (.I0(in6[20]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[20]_i_6_n_5 ),
        .O(\clock_counter[19]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_13 
       (.I0(in6[20]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[20]_i_6_n_6 ),
        .O(\clock_counter[19]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_14 
       (.I0(in6[20]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[20]_i_6_n_7 ),
        .O(\clock_counter[19]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_15 
       (.I0(in6[20]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[20]_i_11_n_4 ),
        .O(\clock_counter[19]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_17 
       (.I0(in6[20]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[20]_i_11_n_5 ),
        .O(\clock_counter[19]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_18 
       (.I0(in6[20]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[20]_i_11_n_6 ),
        .O(\clock_counter[19]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_19 
       (.I0(in6[20]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[20]_i_11_n_7 ),
        .O(\clock_counter[19]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_20 
       (.I0(in6[20]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[20]_i_16_n_4 ),
        .O(\clock_counter[19]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_22 
       (.I0(in6[20]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[20]_i_16_n_5 ),
        .O(\clock_counter[19]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_23 
       (.I0(in6[20]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[20]_i_16_n_6 ),
        .O(\clock_counter[19]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_24 
       (.I0(in6[20]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[20]_i_16_n_7 ),
        .O(\clock_counter[19]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_25 
       (.I0(in6[20]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[20]_i_21_n_4 ),
        .O(\clock_counter[19]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_27 
       (.I0(in6[20]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[20]_i_21_n_5 ),
        .O(\clock_counter[19]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_28 
       (.I0(in6[20]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[20]_i_21_n_6 ),
        .O(\clock_counter[19]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_29 
       (.I0(in6[20]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[20]_i_21_n_7 ),
        .O(\clock_counter[19]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_30 
       (.I0(in6[20]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[20]_i_26_n_4 ),
        .O(\clock_counter[19]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_32 
       (.I0(in6[20]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[20]_i_26_n_5 ),
        .O(\clock_counter[19]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_33 
       (.I0(in6[20]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[20]_i_26_n_6 ),
        .O(\clock_counter[19]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_34 
       (.I0(in6[20]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[20]_i_26_n_7 ),
        .O(\clock_counter[19]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_35 
       (.I0(in6[20]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[20]_i_31_n_4 ),
        .O(\clock_counter[19]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[19]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[20]),
        .O(\clock_counter[19]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_37 
       (.I0(in6[20]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[20]_i_31_n_5 ),
        .O(\clock_counter[19]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_38 
       (.I0(in6[20]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[20]_i_31_n_6 ),
        .O(\clock_counter[19]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[19]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[20]),
        .O(\clock_counter[19]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[19]_i_4 
       (.I0(in6[20]),
        .I1(\clock_counter_reg[20]_i_2_n_7 ),
        .O(\clock_counter[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_5 
       (.I0(in6[20]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[20]_i_3_n_4 ),
        .O(\clock_counter[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_7 
       (.I0(in6[20]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[20]_i_3_n_5 ),
        .O(\clock_counter[19]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_8 
       (.I0(in6[20]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[20]_i_3_n_6 ),
        .O(\clock_counter[19]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[19]_i_9 
       (.I0(in6[20]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[20]_i_3_n_7 ),
        .O(\clock_counter[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[1]_i_1 
       (.I0(in6[1]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[1]),
        .O(clock_counter[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_10 
       (.I0(in6[2]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[2]_i_6_n_4 ),
        .O(\clock_counter[1]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_12 
       (.I0(in6[2]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[2]_i_6_n_5 ),
        .O(\clock_counter[1]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_13 
       (.I0(in6[2]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[2]_i_6_n_6 ),
        .O(\clock_counter[1]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_14 
       (.I0(in6[2]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[2]_i_6_n_7 ),
        .O(\clock_counter[1]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_15 
       (.I0(in6[2]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[2]_i_11_n_4 ),
        .O(\clock_counter[1]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_17 
       (.I0(in6[2]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[2]_i_11_n_5 ),
        .O(\clock_counter[1]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_18 
       (.I0(in6[2]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[2]_i_11_n_6 ),
        .O(\clock_counter[1]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_19 
       (.I0(in6[2]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[2]_i_11_n_7 ),
        .O(\clock_counter[1]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_20 
       (.I0(in6[2]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[2]_i_16_n_4 ),
        .O(\clock_counter[1]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_22 
       (.I0(in6[2]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[2]_i_16_n_5 ),
        .O(\clock_counter[1]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_23 
       (.I0(in6[2]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[2]_i_16_n_6 ),
        .O(\clock_counter[1]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_24 
       (.I0(in6[2]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[2]_i_16_n_7 ),
        .O(\clock_counter[1]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_25 
       (.I0(in6[2]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[2]_i_21_n_4 ),
        .O(\clock_counter[1]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_27 
       (.I0(in6[2]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[2]_i_21_n_5 ),
        .O(\clock_counter[1]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_28 
       (.I0(in6[2]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[2]_i_21_n_6 ),
        .O(\clock_counter[1]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_29 
       (.I0(in6[2]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[2]_i_21_n_7 ),
        .O(\clock_counter[1]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_30 
       (.I0(in6[2]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[2]_i_26_n_4 ),
        .O(\clock_counter[1]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_32 
       (.I0(in6[2]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[2]_i_26_n_5 ),
        .O(\clock_counter[1]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_33 
       (.I0(in6[2]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[2]_i_26_n_6 ),
        .O(\clock_counter[1]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_34 
       (.I0(in6[2]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[2]_i_26_n_7 ),
        .O(\clock_counter[1]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_35 
       (.I0(in6[2]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[2]_i_31_n_4 ),
        .O(\clock_counter[1]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[2]),
        .O(\clock_counter[1]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_37 
       (.I0(in6[2]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[2]_i_31_n_5 ),
        .O(\clock_counter[1]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_38 
       (.I0(in6[2]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[2]_i_31_n_6 ),
        .O(\clock_counter[1]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[2]),
        .O(\clock_counter[1]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[1]_i_4 
       (.I0(in6[2]),
        .I1(\clock_counter_reg[2]_i_2_n_7 ),
        .O(\clock_counter[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_5 
       (.I0(in6[2]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[2]_i_3_n_4 ),
        .O(\clock_counter[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_7 
       (.I0(in6[2]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[2]_i_3_n_5 ),
        .O(\clock_counter[1]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_8 
       (.I0(in6[2]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[2]_i_3_n_6 ),
        .O(\clock_counter[1]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[1]_i_9 
       (.I0(in6[2]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[2]_i_3_n_7 ),
        .O(\clock_counter[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[20]_i_1 
       (.I0(in6[20]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[20]),
        .O(clock_counter[20]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_10 
       (.I0(in6[21]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[21]_i_6_n_4 ),
        .O(\clock_counter[20]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_12 
       (.I0(in6[21]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[21]_i_6_n_5 ),
        .O(\clock_counter[20]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_13 
       (.I0(in6[21]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[21]_i_6_n_6 ),
        .O(\clock_counter[20]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_14 
       (.I0(in6[21]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[21]_i_6_n_7 ),
        .O(\clock_counter[20]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_15 
       (.I0(in6[21]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[21]_i_11_n_4 ),
        .O(\clock_counter[20]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_17 
       (.I0(in6[21]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[21]_i_11_n_5 ),
        .O(\clock_counter[20]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_18 
       (.I0(in6[21]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[21]_i_11_n_6 ),
        .O(\clock_counter[20]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_19 
       (.I0(in6[21]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[21]_i_11_n_7 ),
        .O(\clock_counter[20]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_20 
       (.I0(in6[21]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[21]_i_16_n_4 ),
        .O(\clock_counter[20]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_22 
       (.I0(in6[21]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[21]_i_16_n_5 ),
        .O(\clock_counter[20]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_23 
       (.I0(in6[21]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[21]_i_16_n_6 ),
        .O(\clock_counter[20]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_24 
       (.I0(in6[21]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[21]_i_16_n_7 ),
        .O(\clock_counter[20]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_25 
       (.I0(in6[21]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[21]_i_21_n_4 ),
        .O(\clock_counter[20]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_27 
       (.I0(in6[21]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[21]_i_21_n_5 ),
        .O(\clock_counter[20]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_28 
       (.I0(in6[21]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[21]_i_21_n_6 ),
        .O(\clock_counter[20]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_29 
       (.I0(in6[21]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[21]_i_21_n_7 ),
        .O(\clock_counter[20]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_30 
       (.I0(in6[21]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[21]_i_26_n_4 ),
        .O(\clock_counter[20]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_32 
       (.I0(in6[21]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[21]_i_26_n_5 ),
        .O(\clock_counter[20]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_33 
       (.I0(in6[21]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[21]_i_26_n_6 ),
        .O(\clock_counter[20]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_34 
       (.I0(in6[21]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[21]_i_26_n_7 ),
        .O(\clock_counter[20]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_35 
       (.I0(in6[21]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[21]_i_31_n_4 ),
        .O(\clock_counter[20]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_36 
       (.I0(in6[21]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[21]_i_31_n_5 ),
        .O(\clock_counter[20]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_37 
       (.I0(in6[21]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[21]_i_31_n_6 ),
        .O(\clock_counter[20]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[20]_i_38 
       (.I0(signal_frequency[0]),
        .I1(in6[21]),
        .O(\clock_counter[20]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[20]_i_4 
       (.I0(in6[21]),
        .I1(\clock_counter_reg[21]_i_2_n_7 ),
        .O(\clock_counter[20]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_5 
       (.I0(in6[21]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[21]_i_3_n_4 ),
        .O(\clock_counter[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_7 
       (.I0(in6[21]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[21]_i_3_n_5 ),
        .O(\clock_counter[20]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_8 
       (.I0(in6[21]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[21]_i_3_n_6 ),
        .O(\clock_counter[20]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[20]_i_9 
       (.I0(in6[21]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[21]_i_3_n_7 ),
        .O(\clock_counter[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[21]_i_1 
       (.I0(in6[21]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[21]),
        .O(clock_counter[21]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_10 
       (.I0(in6[22]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[22]_i_6_n_4 ),
        .O(\clock_counter[21]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_12 
       (.I0(in6[22]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[22]_i_6_n_5 ),
        .O(\clock_counter[21]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_13 
       (.I0(in6[22]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[22]_i_6_n_6 ),
        .O(\clock_counter[21]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_14 
       (.I0(in6[22]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[22]_i_6_n_7 ),
        .O(\clock_counter[21]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_15 
       (.I0(in6[22]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[22]_i_11_n_4 ),
        .O(\clock_counter[21]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_17 
       (.I0(in6[22]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[22]_i_11_n_5 ),
        .O(\clock_counter[21]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_18 
       (.I0(in6[22]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[22]_i_11_n_6 ),
        .O(\clock_counter[21]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_19 
       (.I0(in6[22]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[22]_i_11_n_7 ),
        .O(\clock_counter[21]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_20 
       (.I0(in6[22]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[22]_i_16_n_4 ),
        .O(\clock_counter[21]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_22 
       (.I0(in6[22]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[22]_i_16_n_5 ),
        .O(\clock_counter[21]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_23 
       (.I0(in6[22]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[22]_i_16_n_6 ),
        .O(\clock_counter[21]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_24 
       (.I0(in6[22]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[22]_i_16_n_7 ),
        .O(\clock_counter[21]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_25 
       (.I0(in6[22]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[22]_i_21_n_4 ),
        .O(\clock_counter[21]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_27 
       (.I0(in6[22]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[22]_i_21_n_5 ),
        .O(\clock_counter[21]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_28 
       (.I0(in6[22]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[22]_i_21_n_6 ),
        .O(\clock_counter[21]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_29 
       (.I0(in6[22]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[22]_i_21_n_7 ),
        .O(\clock_counter[21]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_30 
       (.I0(in6[22]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[22]_i_26_n_4 ),
        .O(\clock_counter[21]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_32 
       (.I0(in6[22]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[22]_i_26_n_5 ),
        .O(\clock_counter[21]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_33 
       (.I0(in6[22]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[22]_i_26_n_6 ),
        .O(\clock_counter[21]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_34 
       (.I0(in6[22]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[22]_i_26_n_7 ),
        .O(\clock_counter[21]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_35 
       (.I0(in6[22]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[22]_i_31_n_4 ),
        .O(\clock_counter[21]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_36 
       (.I0(in6[22]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[22]_i_31_n_5 ),
        .O(\clock_counter[21]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_37 
       (.I0(in6[22]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[22]_i_31_n_6 ),
        .O(\clock_counter[21]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[21]_i_38 
       (.I0(signal_frequency[0]),
        .I1(in6[22]),
        .O(\clock_counter[21]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[21]_i_4 
       (.I0(in6[22]),
        .I1(\clock_counter_reg[22]_i_2_n_7 ),
        .O(\clock_counter[21]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_5 
       (.I0(in6[22]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[22]_i_3_n_4 ),
        .O(\clock_counter[21]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_7 
       (.I0(in6[22]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[22]_i_3_n_5 ),
        .O(\clock_counter[21]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_8 
       (.I0(in6[22]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[22]_i_3_n_6 ),
        .O(\clock_counter[21]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[21]_i_9 
       (.I0(in6[22]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[22]_i_3_n_7 ),
        .O(\clock_counter[21]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[22]_i_1 
       (.I0(in6[22]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[22]),
        .O(clock_counter[22]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_10 
       (.I0(in6[23]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[23]_i_6_n_4 ),
        .O(\clock_counter[22]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_12 
       (.I0(in6[23]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[23]_i_6_n_5 ),
        .O(\clock_counter[22]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_13 
       (.I0(in6[23]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[23]_i_6_n_6 ),
        .O(\clock_counter[22]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_14 
       (.I0(in6[23]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[23]_i_6_n_7 ),
        .O(\clock_counter[22]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_15 
       (.I0(in6[23]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[23]_i_11_n_4 ),
        .O(\clock_counter[22]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_17 
       (.I0(in6[23]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[23]_i_11_n_5 ),
        .O(\clock_counter[22]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_18 
       (.I0(in6[23]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[23]_i_11_n_6 ),
        .O(\clock_counter[22]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_19 
       (.I0(in6[23]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[23]_i_11_n_7 ),
        .O(\clock_counter[22]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_20 
       (.I0(in6[23]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[23]_i_16_n_4 ),
        .O(\clock_counter[22]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_22 
       (.I0(in6[23]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[23]_i_16_n_5 ),
        .O(\clock_counter[22]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_23 
       (.I0(in6[23]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[23]_i_16_n_6 ),
        .O(\clock_counter[22]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_24 
       (.I0(in6[23]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[23]_i_16_n_7 ),
        .O(\clock_counter[22]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_25 
       (.I0(in6[23]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[23]_i_21_n_4 ),
        .O(\clock_counter[22]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_27 
       (.I0(in6[23]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[23]_i_21_n_5 ),
        .O(\clock_counter[22]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_28 
       (.I0(in6[23]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[23]_i_21_n_6 ),
        .O(\clock_counter[22]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_29 
       (.I0(in6[23]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[23]_i_21_n_7 ),
        .O(\clock_counter[22]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_30 
       (.I0(in6[23]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[23]_i_26_n_4 ),
        .O(\clock_counter[22]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_32 
       (.I0(in6[23]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[23]_i_26_n_5 ),
        .O(\clock_counter[22]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_33 
       (.I0(in6[23]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[23]_i_26_n_6 ),
        .O(\clock_counter[22]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_34 
       (.I0(in6[23]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[23]_i_26_n_7 ),
        .O(\clock_counter[22]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_35 
       (.I0(in6[23]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[23]_i_31_n_4 ),
        .O(\clock_counter[22]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_36 
       (.I0(in6[23]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[23]_i_31_n_5 ),
        .O(\clock_counter[22]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_37 
       (.I0(in6[23]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[23]_i_31_n_6 ),
        .O(\clock_counter[22]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[22]_i_38 
       (.I0(signal_frequency[0]),
        .I1(in6[23]),
        .O(\clock_counter[22]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[22]_i_4 
       (.I0(in6[23]),
        .I1(\clock_counter_reg[23]_i_2_n_7 ),
        .O(\clock_counter[22]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_5 
       (.I0(in6[23]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[23]_i_3_n_4 ),
        .O(\clock_counter[22]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_7 
       (.I0(in6[23]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[23]_i_3_n_5 ),
        .O(\clock_counter[22]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_8 
       (.I0(in6[23]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[23]_i_3_n_6 ),
        .O(\clock_counter[22]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[22]_i_9 
       (.I0(in6[23]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[23]_i_3_n_7 ),
        .O(\clock_counter[22]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[23]_i_1 
       (.I0(in6[23]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[23]),
        .O(clock_counter[23]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_10 
       (.I0(in6[24]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[24]_i_6_n_4 ),
        .O(\clock_counter[23]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_12 
       (.I0(in6[24]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[24]_i_6_n_5 ),
        .O(\clock_counter[23]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_13 
       (.I0(in6[24]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[24]_i_6_n_6 ),
        .O(\clock_counter[23]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_14 
       (.I0(in6[24]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[24]_i_6_n_7 ),
        .O(\clock_counter[23]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_15 
       (.I0(in6[24]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[24]_i_11_n_4 ),
        .O(\clock_counter[23]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_17 
       (.I0(in6[24]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[24]_i_11_n_5 ),
        .O(\clock_counter[23]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_18 
       (.I0(in6[24]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[24]_i_11_n_6 ),
        .O(\clock_counter[23]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_19 
       (.I0(in6[24]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[24]_i_11_n_7 ),
        .O(\clock_counter[23]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_20 
       (.I0(in6[24]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[24]_i_16_n_4 ),
        .O(\clock_counter[23]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_22 
       (.I0(in6[24]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[24]_i_16_n_5 ),
        .O(\clock_counter[23]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_23 
       (.I0(in6[24]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[24]_i_16_n_6 ),
        .O(\clock_counter[23]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_24 
       (.I0(in6[24]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[24]_i_16_n_7 ),
        .O(\clock_counter[23]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_25 
       (.I0(in6[24]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[24]_i_21_n_4 ),
        .O(\clock_counter[23]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_27 
       (.I0(in6[24]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[24]_i_21_n_5 ),
        .O(\clock_counter[23]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_28 
       (.I0(in6[24]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[24]_i_21_n_6 ),
        .O(\clock_counter[23]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_29 
       (.I0(in6[24]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[24]_i_21_n_7 ),
        .O(\clock_counter[23]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_30 
       (.I0(in6[24]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[24]_i_26_n_4 ),
        .O(\clock_counter[23]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_32 
       (.I0(in6[24]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[24]_i_26_n_5 ),
        .O(\clock_counter[23]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_33 
       (.I0(in6[24]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[24]_i_26_n_6 ),
        .O(\clock_counter[23]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_34 
       (.I0(in6[24]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[24]_i_26_n_7 ),
        .O(\clock_counter[23]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_35 
       (.I0(in6[24]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[24]_i_31_n_4 ),
        .O(\clock_counter[23]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_36 
       (.I0(in6[24]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[24]_i_31_n_5 ),
        .O(\clock_counter[23]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_37 
       (.I0(in6[24]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[24]_i_31_n_6 ),
        .O(\clock_counter[23]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[23]_i_38 
       (.I0(signal_frequency[0]),
        .I1(in6[24]),
        .O(\clock_counter[23]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[23]_i_4 
       (.I0(in6[24]),
        .I1(\clock_counter_reg[24]_i_2_n_7 ),
        .O(\clock_counter[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_5 
       (.I0(in6[24]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[24]_i_3_n_4 ),
        .O(\clock_counter[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_7 
       (.I0(in6[24]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[24]_i_3_n_5 ),
        .O(\clock_counter[23]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_8 
       (.I0(in6[24]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[24]_i_3_n_6 ),
        .O(\clock_counter[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[23]_i_9 
       (.I0(in6[24]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[24]_i_3_n_7 ),
        .O(\clock_counter[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[24]_i_1 
       (.I0(in6[24]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[24]),
        .O(clock_counter[24]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_10 
       (.I0(in6[25]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[25]_i_6_n_4 ),
        .O(\clock_counter[24]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_12 
       (.I0(in6[25]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[25]_i_6_n_5 ),
        .O(\clock_counter[24]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_13 
       (.I0(in6[25]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[25]_i_6_n_6 ),
        .O(\clock_counter[24]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_14 
       (.I0(in6[25]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[25]_i_6_n_7 ),
        .O(\clock_counter[24]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_15 
       (.I0(in6[25]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[25]_i_11_n_4 ),
        .O(\clock_counter[24]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_17 
       (.I0(in6[25]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[25]_i_11_n_5 ),
        .O(\clock_counter[24]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_18 
       (.I0(in6[25]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[25]_i_11_n_6 ),
        .O(\clock_counter[24]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_19 
       (.I0(in6[25]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[25]_i_11_n_7 ),
        .O(\clock_counter[24]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_20 
       (.I0(in6[25]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[25]_i_16_n_4 ),
        .O(\clock_counter[24]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_22 
       (.I0(in6[25]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[25]_i_16_n_5 ),
        .O(\clock_counter[24]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_23 
       (.I0(in6[25]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[25]_i_16_n_6 ),
        .O(\clock_counter[24]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_24 
       (.I0(in6[25]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[25]_i_16_n_7 ),
        .O(\clock_counter[24]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_25 
       (.I0(in6[25]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[25]_i_21_n_4 ),
        .O(\clock_counter[24]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_27 
       (.I0(in6[25]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[25]_i_21_n_5 ),
        .O(\clock_counter[24]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_28 
       (.I0(in6[25]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[25]_i_21_n_6 ),
        .O(\clock_counter[24]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_29 
       (.I0(in6[25]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[25]_i_21_n_7 ),
        .O(\clock_counter[24]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_30 
       (.I0(in6[25]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[25]_i_26_n_4 ),
        .O(\clock_counter[24]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_32 
       (.I0(in6[25]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[25]_i_26_n_5 ),
        .O(\clock_counter[24]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_33 
       (.I0(in6[25]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[25]_i_26_n_6 ),
        .O(\clock_counter[24]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_34 
       (.I0(in6[25]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[25]_i_26_n_7 ),
        .O(\clock_counter[24]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_35 
       (.I0(in6[25]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[25]_i_31_n_4 ),
        .O(\clock_counter[24]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_36 
       (.I0(in6[25]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[25]_i_31_n_5 ),
        .O(\clock_counter[24]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_37 
       (.I0(in6[25]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[25]_i_31_n_6 ),
        .O(\clock_counter[24]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[24]_i_38 
       (.I0(signal_frequency[0]),
        .I1(in6[25]),
        .O(\clock_counter[24]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[24]_i_4 
       (.I0(in6[25]),
        .I1(\clock_counter_reg[25]_i_2_n_7 ),
        .O(\clock_counter[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_5 
       (.I0(in6[25]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[25]_i_3_n_4 ),
        .O(\clock_counter[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_7 
       (.I0(in6[25]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[25]_i_3_n_5 ),
        .O(\clock_counter[24]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_8 
       (.I0(in6[25]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[25]_i_3_n_6 ),
        .O(\clock_counter[24]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[24]_i_9 
       (.I0(in6[25]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[25]_i_3_n_7 ),
        .O(\clock_counter[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[25]_i_1 
       (.I0(in6[25]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[25]),
        .O(clock_counter[25]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_10 
       (.I0(in6[26]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[26]_i_4_n_5 ),
        .O(\clock_counter[25]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_12 
       (.I0(in6[26]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[26]_i_4_n_6 ),
        .O(\clock_counter[25]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_13 
       (.I0(in6[26]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[26]_i_4_n_7 ),
        .O(\clock_counter[25]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_14 
       (.I0(in6[26]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[26]_i_13_n_4 ),
        .O(\clock_counter[25]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_15 
       (.I0(in6[26]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[26]_i_13_n_5 ),
        .O(\clock_counter[25]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_17 
       (.I0(in6[26]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[26]_i_13_n_6 ),
        .O(\clock_counter[25]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_18 
       (.I0(in6[26]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[26]_i_13_n_7 ),
        .O(\clock_counter[25]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_19 
       (.I0(in6[26]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[26]_i_22_n_4 ),
        .O(\clock_counter[25]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_20 
       (.I0(in6[26]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[26]_i_22_n_5 ),
        .O(\clock_counter[25]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_22 
       (.I0(in6[26]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[26]_i_22_n_6 ),
        .O(\clock_counter[25]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_23 
       (.I0(in6[26]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[26]_i_22_n_7 ),
        .O(\clock_counter[25]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_24 
       (.I0(in6[26]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[26]_i_31_n_4 ),
        .O(\clock_counter[25]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_25 
       (.I0(in6[26]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[26]_i_31_n_5 ),
        .O(\clock_counter[25]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_27 
       (.I0(in6[26]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[26]_i_31_n_6 ),
        .O(\clock_counter[25]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_28 
       (.I0(in6[26]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[26]_i_31_n_7 ),
        .O(\clock_counter[25]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_29 
       (.I0(in6[26]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[26]_i_40_n_4 ),
        .O(\clock_counter[25]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_30 
       (.I0(in6[26]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[26]_i_40_n_5 ),
        .O(\clock_counter[25]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_32 
       (.I0(in6[26]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[26]_i_40_n_6 ),
        .O(\clock_counter[25]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_33 
       (.I0(in6[26]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[26]_i_40_n_7 ),
        .O(\clock_counter[25]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_34 
       (.I0(in6[26]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[26]_i_49_n_4 ),
        .O(\clock_counter[25]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_35 
       (.I0(in6[26]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[26]_i_49_n_5 ),
        .O(\clock_counter[25]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[25]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[26]),
        .O(\clock_counter[25]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_37 
       (.I0(in6[26]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[26]_i_49_n_6 ),
        .O(\clock_counter[25]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_38 
       (.I0(in6[26]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[26]_i_49_n_7 ),
        .O(\clock_counter[25]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[25]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[26]),
        .O(\clock_counter[25]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[25]_i_4 
       (.I0(in6[26]),
        .I1(\clock_counter_reg[26]_i_3_n_4 ),
        .O(\clock_counter[25]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_5 
       (.I0(in6[26]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[26]_i_3_n_5 ),
        .O(\clock_counter[25]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_7 
       (.I0(in6[26]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[26]_i_3_n_6 ),
        .O(\clock_counter[25]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_8 
       (.I0(in6[26]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[26]_i_3_n_7 ),
        .O(\clock_counter[25]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[25]_i_9 
       (.I0(in6[26]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[26]_i_4_n_4 ),
        .O(\clock_counter[25]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[26]_i_1 
       (.I0(in6[26]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[26]),
        .O(clock_counter[26]));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_10 
       (.I0(signal_frequency[26]),
        .O(\clock_counter[26]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_11 
       (.I0(signal_frequency[25]),
        .O(\clock_counter[26]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_12 
       (.I0(signal_frequency[24]),
        .O(\clock_counter[26]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_14 
       (.I0(signal_frequency[23]),
        .O(\clock_counter[26]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_15 
       (.I0(signal_frequency[22]),
        .O(\clock_counter[26]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_16 
       (.I0(signal_frequency[21]),
        .O(\clock_counter[26]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_17 
       (.I0(signal_frequency[20]),
        .O(\clock_counter[26]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_18 
       (.I0(signal_frequency[23]),
        .O(\clock_counter[26]_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_19 
       (.I0(signal_frequency[22]),
        .O(\clock_counter[26]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_20 
       (.I0(signal_frequency[21]),
        .O(\clock_counter[26]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_21 
       (.I0(signal_frequency[20]),
        .O(\clock_counter[26]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_23 
       (.I0(signal_frequency[19]),
        .O(\clock_counter[26]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_24 
       (.I0(signal_frequency[18]),
        .O(\clock_counter[26]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_25 
       (.I0(signal_frequency[17]),
        .O(\clock_counter[26]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_26 
       (.I0(signal_frequency[16]),
        .O(\clock_counter[26]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_27 
       (.I0(signal_frequency[19]),
        .O(\clock_counter[26]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_28 
       (.I0(signal_frequency[18]),
        .O(\clock_counter[26]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_29 
       (.I0(signal_frequency[17]),
        .O(\clock_counter[26]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_30 
       (.I0(signal_frequency[16]),
        .O(\clock_counter[26]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_32 
       (.I0(signal_frequency[15]),
        .O(\clock_counter[26]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_33 
       (.I0(signal_frequency[14]),
        .O(\clock_counter[26]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_34 
       (.I0(signal_frequency[13]),
        .O(\clock_counter[26]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_35 
       (.I0(signal_frequency[12]),
        .O(\clock_counter[26]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_36 
       (.I0(signal_frequency[15]),
        .O(\clock_counter[26]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_37 
       (.I0(signal_frequency[14]),
        .O(\clock_counter[26]_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_38 
       (.I0(signal_frequency[13]),
        .O(\clock_counter[26]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_39 
       (.I0(signal_frequency[12]),
        .O(\clock_counter[26]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_41 
       (.I0(signal_frequency[11]),
        .O(\clock_counter[26]_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_42 
       (.I0(signal_frequency[10]),
        .O(\clock_counter[26]_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_43 
       (.I0(signal_frequency[9]),
        .O(\clock_counter[26]_i_43_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_44 
       (.I0(signal_frequency[8]),
        .O(\clock_counter[26]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_45 
       (.I0(signal_frequency[11]),
        .O(\clock_counter[26]_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_46 
       (.I0(signal_frequency[10]),
        .O(\clock_counter[26]_i_46_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_47 
       (.I0(signal_frequency[9]),
        .O(\clock_counter[26]_i_47_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_48 
       (.I0(signal_frequency[8]),
        .O(\clock_counter[26]_i_48_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_5 
       (.I0(signal_frequency[27]),
        .O(\clock_counter[26]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_50 
       (.I0(signal_frequency[7]),
        .O(\clock_counter[26]_i_50_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_51 
       (.I0(signal_frequency[6]),
        .O(\clock_counter[26]_i_51_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_52 
       (.I0(signal_frequency[5]),
        .O(\clock_counter[26]_i_52_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_53 
       (.I0(signal_frequency[4]),
        .O(\clock_counter[26]_i_53_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_54 
       (.I0(signal_frequency[7]),
        .O(\clock_counter[26]_i_54_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_55 
       (.I0(signal_frequency[6]),
        .O(\clock_counter[26]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_56 
       (.I0(signal_frequency[5]),
        .O(\clock_counter[26]_i_56_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_57 
       (.I0(signal_frequency[4]),
        .O(\clock_counter[26]_i_57_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_58 
       (.I0(signal_frequency[3]),
        .O(\clock_counter[26]_i_58_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_59 
       (.I0(signal_frequency[2]),
        .O(\clock_counter[26]_i_59_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_6 
       (.I0(signal_frequency[26]),
        .O(\clock_counter[26]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_60 
       (.I0(signal_frequency[1]),
        .O(\clock_counter[26]_i_60_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_61 
       (.I0(signal_frequency[0]),
        .O(\clock_counter[26]_i_61_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_62 
       (.I0(signal_frequency[3]),
        .O(\clock_counter[26]_i_62_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_63 
       (.I0(signal_frequency[2]),
        .O(\clock_counter[26]_i_63_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_64 
       (.I0(signal_frequency[1]),
        .O(\clock_counter[26]_i_64_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_7 
       (.I0(signal_frequency[25]),
        .O(\clock_counter[26]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_8 
       (.I0(signal_frequency[24]),
        .O(\clock_counter[26]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clock_counter[26]_i_9 
       (.I0(signal_frequency[27]),
        .O(\clock_counter[26]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \clock_counter[27]_i_1 
       (.I0(mst_exec_state),
        .I1(fifo_reset_internal),
        .I2(minusOp[27]),
        .I3(axis_tvalid_i_2_n_0),
        .O(\clock_counter[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[2]_i_1 
       (.I0(in6[2]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[2]),
        .O(clock_counter[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_10 
       (.I0(in6[3]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[3]_i_6_n_4 ),
        .O(\clock_counter[2]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_12 
       (.I0(in6[3]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[3]_i_6_n_5 ),
        .O(\clock_counter[2]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_13 
       (.I0(in6[3]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[3]_i_6_n_6 ),
        .O(\clock_counter[2]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_14 
       (.I0(in6[3]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[3]_i_6_n_7 ),
        .O(\clock_counter[2]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_15 
       (.I0(in6[3]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[3]_i_11_n_4 ),
        .O(\clock_counter[2]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_17 
       (.I0(in6[3]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[3]_i_11_n_5 ),
        .O(\clock_counter[2]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_18 
       (.I0(in6[3]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[3]_i_11_n_6 ),
        .O(\clock_counter[2]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_19 
       (.I0(in6[3]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[3]_i_11_n_7 ),
        .O(\clock_counter[2]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_20 
       (.I0(in6[3]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[3]_i_16_n_4 ),
        .O(\clock_counter[2]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_22 
       (.I0(in6[3]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[3]_i_16_n_5 ),
        .O(\clock_counter[2]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_23 
       (.I0(in6[3]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[3]_i_16_n_6 ),
        .O(\clock_counter[2]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_24 
       (.I0(in6[3]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[3]_i_16_n_7 ),
        .O(\clock_counter[2]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_25 
       (.I0(in6[3]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[3]_i_21_n_4 ),
        .O(\clock_counter[2]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_27 
       (.I0(in6[3]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[3]_i_21_n_5 ),
        .O(\clock_counter[2]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_28 
       (.I0(in6[3]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[3]_i_21_n_6 ),
        .O(\clock_counter[2]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_29 
       (.I0(in6[3]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[3]_i_21_n_7 ),
        .O(\clock_counter[2]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_30 
       (.I0(in6[3]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[3]_i_26_n_4 ),
        .O(\clock_counter[2]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_32 
       (.I0(in6[3]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[3]_i_26_n_5 ),
        .O(\clock_counter[2]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_33 
       (.I0(in6[3]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[3]_i_26_n_6 ),
        .O(\clock_counter[2]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_34 
       (.I0(in6[3]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[3]_i_26_n_7 ),
        .O(\clock_counter[2]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_35 
       (.I0(in6[3]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[3]_i_31_n_4 ),
        .O(\clock_counter[2]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[2]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[3]),
        .O(\clock_counter[2]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_37 
       (.I0(in6[3]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[3]_i_31_n_5 ),
        .O(\clock_counter[2]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_38 
       (.I0(in6[3]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[3]_i_31_n_6 ),
        .O(\clock_counter[2]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[2]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[3]),
        .O(\clock_counter[2]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[2]_i_4 
       (.I0(in6[3]),
        .I1(\clock_counter_reg[3]_i_2_n_7 ),
        .O(\clock_counter[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_5 
       (.I0(in6[3]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[3]_i_3_n_4 ),
        .O(\clock_counter[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_7 
       (.I0(in6[3]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[3]_i_3_n_5 ),
        .O(\clock_counter[2]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_8 
       (.I0(in6[3]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[3]_i_3_n_6 ),
        .O(\clock_counter[2]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[2]_i_9 
       (.I0(in6[3]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[3]_i_3_n_7 ),
        .O(\clock_counter[2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[3]_i_1 
       (.I0(in6[3]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[3]),
        .O(clock_counter[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_10 
       (.I0(in6[4]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[4]_i_6_n_4 ),
        .O(\clock_counter[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_12 
       (.I0(in6[4]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[4]_i_6_n_5 ),
        .O(\clock_counter[3]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_13 
       (.I0(in6[4]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[4]_i_6_n_6 ),
        .O(\clock_counter[3]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_14 
       (.I0(in6[4]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[4]_i_6_n_7 ),
        .O(\clock_counter[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_15 
       (.I0(in6[4]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[4]_i_11_n_4 ),
        .O(\clock_counter[3]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_17 
       (.I0(in6[4]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[4]_i_11_n_5 ),
        .O(\clock_counter[3]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_18 
       (.I0(in6[4]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[4]_i_11_n_6 ),
        .O(\clock_counter[3]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_19 
       (.I0(in6[4]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[4]_i_11_n_7 ),
        .O(\clock_counter[3]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_20 
       (.I0(in6[4]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[4]_i_16_n_4 ),
        .O(\clock_counter[3]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_22 
       (.I0(in6[4]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[4]_i_16_n_5 ),
        .O(\clock_counter[3]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_23 
       (.I0(in6[4]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[4]_i_16_n_6 ),
        .O(\clock_counter[3]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_24 
       (.I0(in6[4]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[4]_i_16_n_7 ),
        .O(\clock_counter[3]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_25 
       (.I0(in6[4]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[4]_i_21_n_4 ),
        .O(\clock_counter[3]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_27 
       (.I0(in6[4]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[4]_i_21_n_5 ),
        .O(\clock_counter[3]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_28 
       (.I0(in6[4]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[4]_i_21_n_6 ),
        .O(\clock_counter[3]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_29 
       (.I0(in6[4]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[4]_i_21_n_7 ),
        .O(\clock_counter[3]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_30 
       (.I0(in6[4]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[4]_i_26_n_4 ),
        .O(\clock_counter[3]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_32 
       (.I0(in6[4]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[4]_i_26_n_5 ),
        .O(\clock_counter[3]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_33 
       (.I0(in6[4]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[4]_i_26_n_6 ),
        .O(\clock_counter[3]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_34 
       (.I0(in6[4]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[4]_i_26_n_7 ),
        .O(\clock_counter[3]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_35 
       (.I0(in6[4]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[4]_i_31_n_4 ),
        .O(\clock_counter[3]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[3]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[4]),
        .O(\clock_counter[3]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_37 
       (.I0(in6[4]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[4]_i_31_n_5 ),
        .O(\clock_counter[3]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_38 
       (.I0(in6[4]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[4]_i_31_n_6 ),
        .O(\clock_counter[3]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[3]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[4]),
        .O(\clock_counter[3]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[3]_i_4 
       (.I0(in6[4]),
        .I1(\clock_counter_reg[4]_i_2_n_7 ),
        .O(\clock_counter[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_5 
       (.I0(in6[4]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[4]_i_3_n_4 ),
        .O(\clock_counter[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_7 
       (.I0(in6[4]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[4]_i_3_n_5 ),
        .O(\clock_counter[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_8 
       (.I0(in6[4]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[4]_i_3_n_6 ),
        .O(\clock_counter[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[3]_i_9 
       (.I0(in6[4]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[4]_i_3_n_7 ),
        .O(\clock_counter[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[4]_i_1 
       (.I0(in6[4]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[4]),
        .O(clock_counter[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_10 
       (.I0(in6[5]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[5]_i_6_n_4 ),
        .O(\clock_counter[4]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_12 
       (.I0(in6[5]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[5]_i_6_n_5 ),
        .O(\clock_counter[4]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_13 
       (.I0(in6[5]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[5]_i_6_n_6 ),
        .O(\clock_counter[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_14 
       (.I0(in6[5]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[5]_i_6_n_7 ),
        .O(\clock_counter[4]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_15 
       (.I0(in6[5]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[5]_i_11_n_4 ),
        .O(\clock_counter[4]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_17 
       (.I0(in6[5]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[5]_i_11_n_5 ),
        .O(\clock_counter[4]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_18 
       (.I0(in6[5]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[5]_i_11_n_6 ),
        .O(\clock_counter[4]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_19 
       (.I0(in6[5]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[5]_i_11_n_7 ),
        .O(\clock_counter[4]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_20 
       (.I0(in6[5]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[5]_i_16_n_4 ),
        .O(\clock_counter[4]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_22 
       (.I0(in6[5]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[5]_i_16_n_5 ),
        .O(\clock_counter[4]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_23 
       (.I0(in6[5]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[5]_i_16_n_6 ),
        .O(\clock_counter[4]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_24 
       (.I0(in6[5]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[5]_i_16_n_7 ),
        .O(\clock_counter[4]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_25 
       (.I0(in6[5]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[5]_i_21_n_4 ),
        .O(\clock_counter[4]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_27 
       (.I0(in6[5]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[5]_i_21_n_5 ),
        .O(\clock_counter[4]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_28 
       (.I0(in6[5]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[5]_i_21_n_6 ),
        .O(\clock_counter[4]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_29 
       (.I0(in6[5]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[5]_i_21_n_7 ),
        .O(\clock_counter[4]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_30 
       (.I0(in6[5]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[5]_i_26_n_4 ),
        .O(\clock_counter[4]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_32 
       (.I0(in6[5]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[5]_i_26_n_5 ),
        .O(\clock_counter[4]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_33 
       (.I0(in6[5]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[5]_i_26_n_6 ),
        .O(\clock_counter[4]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_34 
       (.I0(in6[5]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[5]_i_26_n_7 ),
        .O(\clock_counter[4]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_35 
       (.I0(in6[5]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[5]_i_31_n_4 ),
        .O(\clock_counter[4]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[4]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[5]),
        .O(\clock_counter[4]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_37 
       (.I0(in6[5]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[5]_i_31_n_5 ),
        .O(\clock_counter[4]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_38 
       (.I0(in6[5]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[5]_i_31_n_6 ),
        .O(\clock_counter[4]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[4]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[5]),
        .O(\clock_counter[4]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[4]_i_4 
       (.I0(in6[5]),
        .I1(\clock_counter_reg[5]_i_2_n_7 ),
        .O(\clock_counter[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_5 
       (.I0(in6[5]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[5]_i_3_n_4 ),
        .O(\clock_counter[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_7 
       (.I0(in6[5]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[5]_i_3_n_5 ),
        .O(\clock_counter[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_8 
       (.I0(in6[5]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[5]_i_3_n_6 ),
        .O(\clock_counter[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[4]_i_9 
       (.I0(in6[5]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[5]_i_3_n_7 ),
        .O(\clock_counter[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[5]_i_1 
       (.I0(in6[5]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[5]),
        .O(clock_counter[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_10 
       (.I0(in6[6]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[6]_i_6_n_4 ),
        .O(\clock_counter[5]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_12 
       (.I0(in6[6]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[6]_i_6_n_5 ),
        .O(\clock_counter[5]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_13 
       (.I0(in6[6]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[6]_i_6_n_6 ),
        .O(\clock_counter[5]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_14 
       (.I0(in6[6]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[6]_i_6_n_7 ),
        .O(\clock_counter[5]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_15 
       (.I0(in6[6]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[6]_i_11_n_4 ),
        .O(\clock_counter[5]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_17 
       (.I0(in6[6]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[6]_i_11_n_5 ),
        .O(\clock_counter[5]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_18 
       (.I0(in6[6]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[6]_i_11_n_6 ),
        .O(\clock_counter[5]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_19 
       (.I0(in6[6]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[6]_i_11_n_7 ),
        .O(\clock_counter[5]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_20 
       (.I0(in6[6]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[6]_i_16_n_4 ),
        .O(\clock_counter[5]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_22 
       (.I0(in6[6]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[6]_i_16_n_5 ),
        .O(\clock_counter[5]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_23 
       (.I0(in6[6]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[6]_i_16_n_6 ),
        .O(\clock_counter[5]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_24 
       (.I0(in6[6]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[6]_i_16_n_7 ),
        .O(\clock_counter[5]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_25 
       (.I0(in6[6]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[6]_i_21_n_4 ),
        .O(\clock_counter[5]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_27 
       (.I0(in6[6]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[6]_i_21_n_5 ),
        .O(\clock_counter[5]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_28 
       (.I0(in6[6]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[6]_i_21_n_6 ),
        .O(\clock_counter[5]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_29 
       (.I0(in6[6]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[6]_i_21_n_7 ),
        .O(\clock_counter[5]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_30 
       (.I0(in6[6]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[6]_i_26_n_4 ),
        .O(\clock_counter[5]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_32 
       (.I0(in6[6]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[6]_i_26_n_5 ),
        .O(\clock_counter[5]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_33 
       (.I0(in6[6]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[6]_i_26_n_6 ),
        .O(\clock_counter[5]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_34 
       (.I0(in6[6]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[6]_i_26_n_7 ),
        .O(\clock_counter[5]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_35 
       (.I0(in6[6]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[6]_i_31_n_4 ),
        .O(\clock_counter[5]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[5]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[6]),
        .O(\clock_counter[5]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_37 
       (.I0(in6[6]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[6]_i_31_n_5 ),
        .O(\clock_counter[5]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_38 
       (.I0(in6[6]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[6]_i_31_n_6 ),
        .O(\clock_counter[5]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[5]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[6]),
        .O(\clock_counter[5]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[5]_i_4 
       (.I0(in6[6]),
        .I1(\clock_counter_reg[6]_i_2_n_7 ),
        .O(\clock_counter[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_5 
       (.I0(in6[6]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[6]_i_3_n_4 ),
        .O(\clock_counter[5]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_7 
       (.I0(in6[6]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[6]_i_3_n_5 ),
        .O(\clock_counter[5]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_8 
       (.I0(in6[6]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[6]_i_3_n_6 ),
        .O(\clock_counter[5]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[5]_i_9 
       (.I0(in6[6]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[6]_i_3_n_7 ),
        .O(\clock_counter[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[6]_i_1 
       (.I0(in6[6]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[6]),
        .O(clock_counter[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_10 
       (.I0(in6[7]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[7]_i_6_n_4 ),
        .O(\clock_counter[6]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_12 
       (.I0(in6[7]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[7]_i_6_n_5 ),
        .O(\clock_counter[6]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_13 
       (.I0(in6[7]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[7]_i_6_n_6 ),
        .O(\clock_counter[6]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_14 
       (.I0(in6[7]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[7]_i_6_n_7 ),
        .O(\clock_counter[6]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_15 
       (.I0(in6[7]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[7]_i_11_n_4 ),
        .O(\clock_counter[6]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_17 
       (.I0(in6[7]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[7]_i_11_n_5 ),
        .O(\clock_counter[6]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_18 
       (.I0(in6[7]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[7]_i_11_n_6 ),
        .O(\clock_counter[6]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_19 
       (.I0(in6[7]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[7]_i_11_n_7 ),
        .O(\clock_counter[6]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_20 
       (.I0(in6[7]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[7]_i_16_n_4 ),
        .O(\clock_counter[6]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_22 
       (.I0(in6[7]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[7]_i_16_n_5 ),
        .O(\clock_counter[6]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_23 
       (.I0(in6[7]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[7]_i_16_n_6 ),
        .O(\clock_counter[6]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_24 
       (.I0(in6[7]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[7]_i_16_n_7 ),
        .O(\clock_counter[6]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_25 
       (.I0(in6[7]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[7]_i_21_n_4 ),
        .O(\clock_counter[6]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_27 
       (.I0(in6[7]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[7]_i_21_n_5 ),
        .O(\clock_counter[6]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_28 
       (.I0(in6[7]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[7]_i_21_n_6 ),
        .O(\clock_counter[6]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_29 
       (.I0(in6[7]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[7]_i_21_n_7 ),
        .O(\clock_counter[6]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_30 
       (.I0(in6[7]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[7]_i_26_n_4 ),
        .O(\clock_counter[6]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_32 
       (.I0(in6[7]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[7]_i_26_n_5 ),
        .O(\clock_counter[6]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_33 
       (.I0(in6[7]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[7]_i_26_n_6 ),
        .O(\clock_counter[6]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_34 
       (.I0(in6[7]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[7]_i_26_n_7 ),
        .O(\clock_counter[6]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_35 
       (.I0(in6[7]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[7]_i_31_n_4 ),
        .O(\clock_counter[6]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[6]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[7]),
        .O(\clock_counter[6]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_37 
       (.I0(in6[7]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[7]_i_31_n_5 ),
        .O(\clock_counter[6]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_38 
       (.I0(in6[7]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[7]_i_31_n_6 ),
        .O(\clock_counter[6]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[6]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[7]),
        .O(\clock_counter[6]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[6]_i_4 
       (.I0(in6[7]),
        .I1(\clock_counter_reg[7]_i_2_n_7 ),
        .O(\clock_counter[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_5 
       (.I0(in6[7]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[7]_i_3_n_4 ),
        .O(\clock_counter[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_7 
       (.I0(in6[7]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[7]_i_3_n_5 ),
        .O(\clock_counter[6]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_8 
       (.I0(in6[7]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[7]_i_3_n_6 ),
        .O(\clock_counter[6]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[6]_i_9 
       (.I0(in6[7]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[7]_i_3_n_7 ),
        .O(\clock_counter[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[7]_i_1 
       (.I0(in6[7]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[7]),
        .O(clock_counter[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_10 
       (.I0(in6[8]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[8]_i_6_n_4 ),
        .O(\clock_counter[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_12 
       (.I0(in6[8]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[8]_i_6_n_5 ),
        .O(\clock_counter[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_13 
       (.I0(in6[8]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[8]_i_6_n_6 ),
        .O(\clock_counter[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_14 
       (.I0(in6[8]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[8]_i_6_n_7 ),
        .O(\clock_counter[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_15 
       (.I0(in6[8]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[8]_i_11_n_4 ),
        .O(\clock_counter[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_17 
       (.I0(in6[8]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[8]_i_11_n_5 ),
        .O(\clock_counter[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_18 
       (.I0(in6[8]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[8]_i_11_n_6 ),
        .O(\clock_counter[7]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_19 
       (.I0(in6[8]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[8]_i_11_n_7 ),
        .O(\clock_counter[7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_20 
       (.I0(in6[8]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[8]_i_16_n_4 ),
        .O(\clock_counter[7]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_22 
       (.I0(in6[8]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[8]_i_16_n_5 ),
        .O(\clock_counter[7]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_23 
       (.I0(in6[8]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[8]_i_16_n_6 ),
        .O(\clock_counter[7]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_24 
       (.I0(in6[8]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[8]_i_16_n_7 ),
        .O(\clock_counter[7]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_25 
       (.I0(in6[8]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[8]_i_21_n_4 ),
        .O(\clock_counter[7]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_27 
       (.I0(in6[8]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[8]_i_21_n_5 ),
        .O(\clock_counter[7]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_28 
       (.I0(in6[8]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[8]_i_21_n_6 ),
        .O(\clock_counter[7]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_29 
       (.I0(in6[8]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[8]_i_21_n_7 ),
        .O(\clock_counter[7]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_30 
       (.I0(in6[8]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[8]_i_26_n_4 ),
        .O(\clock_counter[7]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_32 
       (.I0(in6[8]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[8]_i_26_n_5 ),
        .O(\clock_counter[7]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_33 
       (.I0(in6[8]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[8]_i_26_n_6 ),
        .O(\clock_counter[7]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_34 
       (.I0(in6[8]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[8]_i_26_n_7 ),
        .O(\clock_counter[7]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_35 
       (.I0(in6[8]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[8]_i_31_n_4 ),
        .O(\clock_counter[7]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[7]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[8]),
        .O(\clock_counter[7]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_37 
       (.I0(in6[8]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[8]_i_31_n_5 ),
        .O(\clock_counter[7]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_38 
       (.I0(in6[8]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[8]_i_31_n_6 ),
        .O(\clock_counter[7]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[7]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[8]),
        .O(\clock_counter[7]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[7]_i_4 
       (.I0(in6[8]),
        .I1(\clock_counter_reg[8]_i_2_n_7 ),
        .O(\clock_counter[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_5 
       (.I0(in6[8]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[8]_i_3_n_4 ),
        .O(\clock_counter[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_7 
       (.I0(in6[8]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[8]_i_3_n_5 ),
        .O(\clock_counter[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_8 
       (.I0(in6[8]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[8]_i_3_n_6 ),
        .O(\clock_counter[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[7]_i_9 
       (.I0(in6[8]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[8]_i_3_n_7 ),
        .O(\clock_counter[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[8]_i_1 
       (.I0(in6[8]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[8]),
        .O(clock_counter[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_10 
       (.I0(in6[9]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[9]_i_6_n_4 ),
        .O(\clock_counter[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_12 
       (.I0(in6[9]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[9]_i_6_n_5 ),
        .O(\clock_counter[8]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_13 
       (.I0(in6[9]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[9]_i_6_n_6 ),
        .O(\clock_counter[8]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_14 
       (.I0(in6[9]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[9]_i_6_n_7 ),
        .O(\clock_counter[8]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_15 
       (.I0(in6[9]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[9]_i_11_n_4 ),
        .O(\clock_counter[8]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_17 
       (.I0(in6[9]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[9]_i_11_n_5 ),
        .O(\clock_counter[8]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_18 
       (.I0(in6[9]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[9]_i_11_n_6 ),
        .O(\clock_counter[8]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_19 
       (.I0(in6[9]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[9]_i_11_n_7 ),
        .O(\clock_counter[8]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_20 
       (.I0(in6[9]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[9]_i_16_n_4 ),
        .O(\clock_counter[8]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_22 
       (.I0(in6[9]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[9]_i_16_n_5 ),
        .O(\clock_counter[8]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_23 
       (.I0(in6[9]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[9]_i_16_n_6 ),
        .O(\clock_counter[8]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_24 
       (.I0(in6[9]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[9]_i_16_n_7 ),
        .O(\clock_counter[8]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_25 
       (.I0(in6[9]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[9]_i_21_n_4 ),
        .O(\clock_counter[8]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_27 
       (.I0(in6[9]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[9]_i_21_n_5 ),
        .O(\clock_counter[8]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_28 
       (.I0(in6[9]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[9]_i_21_n_6 ),
        .O(\clock_counter[8]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_29 
       (.I0(in6[9]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[9]_i_21_n_7 ),
        .O(\clock_counter[8]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_30 
       (.I0(in6[9]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[9]_i_26_n_4 ),
        .O(\clock_counter[8]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_32 
       (.I0(in6[9]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[9]_i_26_n_5 ),
        .O(\clock_counter[8]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_33 
       (.I0(in6[9]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[9]_i_26_n_6 ),
        .O(\clock_counter[8]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_34 
       (.I0(in6[9]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[9]_i_26_n_7 ),
        .O(\clock_counter[8]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_35 
       (.I0(in6[9]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[9]_i_31_n_4 ),
        .O(\clock_counter[8]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_36 
       (.I0(in6[9]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[9]_i_31_n_5 ),
        .O(\clock_counter[8]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_37 
       (.I0(in6[9]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[9]_i_31_n_6 ),
        .O(\clock_counter[8]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \clock_counter[8]_i_38 
       (.I0(signal_frequency[0]),
        .I1(in6[9]),
        .O(\clock_counter[8]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[8]_i_4 
       (.I0(in6[9]),
        .I1(\clock_counter_reg[9]_i_2_n_7 ),
        .O(\clock_counter[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_5 
       (.I0(in6[9]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[9]_i_3_n_4 ),
        .O(\clock_counter[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_7 
       (.I0(in6[9]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[9]_i_3_n_5 ),
        .O(\clock_counter[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_8 
       (.I0(in6[9]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[9]_i_3_n_6 ),
        .O(\clock_counter[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[8]_i_9 
       (.I0(in6[9]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[9]_i_3_n_7 ),
        .O(\clock_counter[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \clock_counter[9]_i_1 
       (.I0(in6[9]),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .I3(axis_tvalid_i_2_n_0),
        .I4(minusOp[9]),
        .O(clock_counter[9]));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_10 
       (.I0(in6[10]),
        .I1(signal_frequency[23]),
        .I2(\clock_counter_reg[10]_i_6_n_4 ),
        .O(\clock_counter[9]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_12 
       (.I0(in6[10]),
        .I1(signal_frequency[22]),
        .I2(\clock_counter_reg[10]_i_6_n_5 ),
        .O(\clock_counter[9]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_13 
       (.I0(in6[10]),
        .I1(signal_frequency[21]),
        .I2(\clock_counter_reg[10]_i_6_n_6 ),
        .O(\clock_counter[9]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_14 
       (.I0(in6[10]),
        .I1(signal_frequency[20]),
        .I2(\clock_counter_reg[10]_i_6_n_7 ),
        .O(\clock_counter[9]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_15 
       (.I0(in6[10]),
        .I1(signal_frequency[19]),
        .I2(\clock_counter_reg[10]_i_11_n_4 ),
        .O(\clock_counter[9]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_17 
       (.I0(in6[10]),
        .I1(signal_frequency[18]),
        .I2(\clock_counter_reg[10]_i_11_n_5 ),
        .O(\clock_counter[9]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_18 
       (.I0(in6[10]),
        .I1(signal_frequency[17]),
        .I2(\clock_counter_reg[10]_i_11_n_6 ),
        .O(\clock_counter[9]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_19 
       (.I0(in6[10]),
        .I1(signal_frequency[16]),
        .I2(\clock_counter_reg[10]_i_11_n_7 ),
        .O(\clock_counter[9]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_20 
       (.I0(in6[10]),
        .I1(signal_frequency[15]),
        .I2(\clock_counter_reg[10]_i_16_n_4 ),
        .O(\clock_counter[9]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_22 
       (.I0(in6[10]),
        .I1(signal_frequency[14]),
        .I2(\clock_counter_reg[10]_i_16_n_5 ),
        .O(\clock_counter[9]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_23 
       (.I0(in6[10]),
        .I1(signal_frequency[13]),
        .I2(\clock_counter_reg[10]_i_16_n_6 ),
        .O(\clock_counter[9]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_24 
       (.I0(in6[10]),
        .I1(signal_frequency[12]),
        .I2(\clock_counter_reg[10]_i_16_n_7 ),
        .O(\clock_counter[9]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_25 
       (.I0(in6[10]),
        .I1(signal_frequency[11]),
        .I2(\clock_counter_reg[10]_i_21_n_4 ),
        .O(\clock_counter[9]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_27 
       (.I0(in6[10]),
        .I1(signal_frequency[10]),
        .I2(\clock_counter_reg[10]_i_21_n_5 ),
        .O(\clock_counter[9]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_28 
       (.I0(in6[10]),
        .I1(signal_frequency[9]),
        .I2(\clock_counter_reg[10]_i_21_n_6 ),
        .O(\clock_counter[9]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_29 
       (.I0(in6[10]),
        .I1(signal_frequency[8]),
        .I2(\clock_counter_reg[10]_i_21_n_7 ),
        .O(\clock_counter[9]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_30 
       (.I0(in6[10]),
        .I1(signal_frequency[7]),
        .I2(\clock_counter_reg[10]_i_26_n_4 ),
        .O(\clock_counter[9]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_32 
       (.I0(in6[10]),
        .I1(signal_frequency[6]),
        .I2(\clock_counter_reg[10]_i_26_n_5 ),
        .O(\clock_counter[9]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_33 
       (.I0(in6[10]),
        .I1(signal_frequency[5]),
        .I2(\clock_counter_reg[10]_i_26_n_6 ),
        .O(\clock_counter[9]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_34 
       (.I0(in6[10]),
        .I1(signal_frequency[4]),
        .I2(\clock_counter_reg[10]_i_26_n_7 ),
        .O(\clock_counter[9]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_35 
       (.I0(in6[10]),
        .I1(signal_frequency[3]),
        .I2(\clock_counter_reg[10]_i_31_n_4 ),
        .O(\clock_counter[9]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[9]_i_36 
       (.I0(signal_frequency[0]),
        .I1(in6[10]),
        .O(\clock_counter[9]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_37 
       (.I0(in6[10]),
        .I1(signal_frequency[2]),
        .I2(\clock_counter_reg[10]_i_31_n_5 ),
        .O(\clock_counter[9]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_38 
       (.I0(in6[10]),
        .I1(signal_frequency[1]),
        .I2(\clock_counter_reg[10]_i_31_n_6 ),
        .O(\clock_counter[9]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[9]_i_39 
       (.I0(signal_frequency[0]),
        .I1(in6[10]),
        .O(\clock_counter[9]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clock_counter[9]_i_4 
       (.I0(in6[10]),
        .I1(\clock_counter_reg[10]_i_2_n_7 ),
        .O(\clock_counter[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_5 
       (.I0(in6[10]),
        .I1(signal_frequency[27]),
        .I2(\clock_counter_reg[10]_i_3_n_4 ),
        .O(\clock_counter[9]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_7 
       (.I0(in6[10]),
        .I1(signal_frequency[26]),
        .I2(\clock_counter_reg[10]_i_3_n_5 ),
        .O(\clock_counter[9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_8 
       (.I0(in6[10]),
        .I1(signal_frequency[25]),
        .I2(\clock_counter_reg[10]_i_3_n_6 ),
        .O(\clock_counter[9]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \clock_counter[9]_i_9 
       (.I0(in6[10]),
        .I1(signal_frequency[24]),
        .I2(\clock_counter_reg[10]_i_3_n_7 ),
        .O(\clock_counter[9]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[0]),
        .Q(\clock_counter_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[0]_i_10 
       (.CI(\clock_counter_reg[0]_i_15_n_0 ),
        .CO({\clock_counter_reg[0]_i_10_n_0 ,\clock_counter_reg[0]_i_10_n_1 ,\clock_counter_reg[0]_i_10_n_2 ,\clock_counter_reg[0]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[1]_i_11_n_4 ,\clock_counter_reg[1]_i_11_n_5 ,\clock_counter_reg[1]_i_11_n_6 ,\clock_counter_reg[1]_i_11_n_7 }),
        .O(\NLW_clock_counter_reg[0]_i_10_O_UNCONNECTED [3:0]),
        .S({\clock_counter[0]_i_16_n_0 ,\clock_counter[0]_i_17_n_0 ,\clock_counter[0]_i_18_n_0 ,\clock_counter[0]_i_19_n_0 }));
  CARRY4 \clock_counter_reg[0]_i_15 
       (.CI(\clock_counter_reg[0]_i_20_n_0 ),
        .CO({\clock_counter_reg[0]_i_15_n_0 ,\clock_counter_reg[0]_i_15_n_1 ,\clock_counter_reg[0]_i_15_n_2 ,\clock_counter_reg[0]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[1]_i_16_n_4 ,\clock_counter_reg[1]_i_16_n_5 ,\clock_counter_reg[1]_i_16_n_6 ,\clock_counter_reg[1]_i_16_n_7 }),
        .O(\NLW_clock_counter_reg[0]_i_15_O_UNCONNECTED [3:0]),
        .S({\clock_counter[0]_i_21_n_0 ,\clock_counter[0]_i_22_n_0 ,\clock_counter[0]_i_23_n_0 ,\clock_counter[0]_i_24_n_0 }));
  CARRY4 \clock_counter_reg[0]_i_2 
       (.CI(\clock_counter_reg[0]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[0]_i_2_CO_UNCONNECTED [3:1],in6[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in6[1]}),
        .O(\NLW_clock_counter_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\clock_counter[0]_i_4_n_0 }));
  CARRY4 \clock_counter_reg[0]_i_20 
       (.CI(\clock_counter_reg[0]_i_25_n_0 ),
        .CO({\clock_counter_reg[0]_i_20_n_0 ,\clock_counter_reg[0]_i_20_n_1 ,\clock_counter_reg[0]_i_20_n_2 ,\clock_counter_reg[0]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[1]_i_21_n_4 ,\clock_counter_reg[1]_i_21_n_5 ,\clock_counter_reg[1]_i_21_n_6 ,\clock_counter_reg[1]_i_21_n_7 }),
        .O(\NLW_clock_counter_reg[0]_i_20_O_UNCONNECTED [3:0]),
        .S({\clock_counter[0]_i_26_n_0 ,\clock_counter[0]_i_27_n_0 ,\clock_counter[0]_i_28_n_0 ,\clock_counter[0]_i_29_n_0 }));
  CARRY4 \clock_counter_reg[0]_i_25 
       (.CI(\clock_counter_reg[0]_i_30_n_0 ),
        .CO({\clock_counter_reg[0]_i_25_n_0 ,\clock_counter_reg[0]_i_25_n_1 ,\clock_counter_reg[0]_i_25_n_2 ,\clock_counter_reg[0]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[1]_i_26_n_4 ,\clock_counter_reg[1]_i_26_n_5 ,\clock_counter_reg[1]_i_26_n_6 ,\clock_counter_reg[1]_i_26_n_7 }),
        .O(\NLW_clock_counter_reg[0]_i_25_O_UNCONNECTED [3:0]),
        .S({\clock_counter[0]_i_31_n_0 ,\clock_counter[0]_i_32_n_0 ,\clock_counter[0]_i_33_n_0 ,\clock_counter[0]_i_34_n_0 }));
  CARRY4 \clock_counter_reg[0]_i_3 
       (.CI(\clock_counter_reg[0]_i_5_n_0 ),
        .CO({\clock_counter_reg[0]_i_3_n_0 ,\clock_counter_reg[0]_i_3_n_1 ,\clock_counter_reg[0]_i_3_n_2 ,\clock_counter_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[1]_i_3_n_4 ,\clock_counter_reg[1]_i_3_n_5 ,\clock_counter_reg[1]_i_3_n_6 ,\clock_counter_reg[1]_i_3_n_7 }),
        .O(\NLW_clock_counter_reg[0]_i_3_O_UNCONNECTED [3:0]),
        .S({\clock_counter[0]_i_6_n_0 ,\clock_counter[0]_i_7_n_0 ,\clock_counter[0]_i_8_n_0 ,\clock_counter[0]_i_9_n_0 }));
  CARRY4 \clock_counter_reg[0]_i_30 
       (.CI(1'b0),
        .CO({\clock_counter_reg[0]_i_30_n_0 ,\clock_counter_reg[0]_i_30_n_1 ,\clock_counter_reg[0]_i_30_n_2 ,\clock_counter_reg[0]_i_30_n_3 }),
        .CYINIT(in6[1]),
        .DI({\clock_counter_reg[1]_i_31_n_4 ,\clock_counter_reg[1]_i_31_n_5 ,\clock_counter_reg[1]_i_31_n_6 ,\clock_counter[0]_i_35_n_0 }),
        .O(\NLW_clock_counter_reg[0]_i_30_O_UNCONNECTED [3:0]),
        .S({\clock_counter[0]_i_36_n_0 ,\clock_counter[0]_i_37_n_0 ,\clock_counter[0]_i_38_n_0 ,\clock_counter[0]_i_39_n_0 }));
  CARRY4 \clock_counter_reg[0]_i_5 
       (.CI(\clock_counter_reg[0]_i_10_n_0 ),
        .CO({\clock_counter_reg[0]_i_5_n_0 ,\clock_counter_reg[0]_i_5_n_1 ,\clock_counter_reg[0]_i_5_n_2 ,\clock_counter_reg[0]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[1]_i_6_n_4 ,\clock_counter_reg[1]_i_6_n_5 ,\clock_counter_reg[1]_i_6_n_6 ,\clock_counter_reg[1]_i_6_n_7 }),
        .O(\NLW_clock_counter_reg[0]_i_5_O_UNCONNECTED [3:0]),
        .S({\clock_counter[0]_i_11_n_0 ,\clock_counter[0]_i_12_n_0 ,\clock_counter[0]_i_13_n_0 ,\clock_counter[0]_i_14_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[10]),
        .Q(\clock_counter_reg_n_0_[10] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[10]_i_11 
       (.CI(\clock_counter_reg[10]_i_16_n_0 ),
        .CO({\clock_counter_reg[10]_i_11_n_0 ,\clock_counter_reg[10]_i_11_n_1 ,\clock_counter_reg[10]_i_11_n_2 ,\clock_counter_reg[10]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[11]_i_11_n_5 ,\clock_counter_reg[11]_i_11_n_6 ,\clock_counter_reg[11]_i_11_n_7 ,\clock_counter_reg[11]_i_16_n_4 }),
        .O({\clock_counter_reg[10]_i_11_n_4 ,\clock_counter_reg[10]_i_11_n_5 ,\clock_counter_reg[10]_i_11_n_6 ,\clock_counter_reg[10]_i_11_n_7 }),
        .S({\clock_counter[10]_i_17_n_0 ,\clock_counter[10]_i_18_n_0 ,\clock_counter[10]_i_19_n_0 ,\clock_counter[10]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[10]_i_16 
       (.CI(\clock_counter_reg[10]_i_21_n_0 ),
        .CO({\clock_counter_reg[10]_i_16_n_0 ,\clock_counter_reg[10]_i_16_n_1 ,\clock_counter_reg[10]_i_16_n_2 ,\clock_counter_reg[10]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[11]_i_16_n_5 ,\clock_counter_reg[11]_i_16_n_6 ,\clock_counter_reg[11]_i_16_n_7 ,\clock_counter_reg[11]_i_21_n_4 }),
        .O({\clock_counter_reg[10]_i_16_n_4 ,\clock_counter_reg[10]_i_16_n_5 ,\clock_counter_reg[10]_i_16_n_6 ,\clock_counter_reg[10]_i_16_n_7 }),
        .S({\clock_counter[10]_i_22_n_0 ,\clock_counter[10]_i_23_n_0 ,\clock_counter[10]_i_24_n_0 ,\clock_counter[10]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[10]_i_2 
       (.CI(\clock_counter_reg[10]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[10]_i_2_CO_UNCONNECTED [3:2],in6[10],\clock_counter_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[11],\clock_counter_reg[11]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[10]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[10]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[10]_i_4_n_0 ,\clock_counter[10]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[10]_i_21 
       (.CI(\clock_counter_reg[10]_i_26_n_0 ),
        .CO({\clock_counter_reg[10]_i_21_n_0 ,\clock_counter_reg[10]_i_21_n_1 ,\clock_counter_reg[10]_i_21_n_2 ,\clock_counter_reg[10]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[11]_i_21_n_5 ,\clock_counter_reg[11]_i_21_n_6 ,\clock_counter_reg[11]_i_21_n_7 ,\clock_counter_reg[11]_i_26_n_4 }),
        .O({\clock_counter_reg[10]_i_21_n_4 ,\clock_counter_reg[10]_i_21_n_5 ,\clock_counter_reg[10]_i_21_n_6 ,\clock_counter_reg[10]_i_21_n_7 }),
        .S({\clock_counter[10]_i_27_n_0 ,\clock_counter[10]_i_28_n_0 ,\clock_counter[10]_i_29_n_0 ,\clock_counter[10]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[10]_i_26 
       (.CI(\clock_counter_reg[10]_i_31_n_0 ),
        .CO({\clock_counter_reg[10]_i_26_n_0 ,\clock_counter_reg[10]_i_26_n_1 ,\clock_counter_reg[10]_i_26_n_2 ,\clock_counter_reg[10]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[11]_i_26_n_5 ,\clock_counter_reg[11]_i_26_n_6 ,\clock_counter_reg[11]_i_26_n_7 ,\clock_counter_reg[11]_i_31_n_4 }),
        .O({\clock_counter_reg[10]_i_26_n_4 ,\clock_counter_reg[10]_i_26_n_5 ,\clock_counter_reg[10]_i_26_n_6 ,\clock_counter_reg[10]_i_26_n_7 }),
        .S({\clock_counter[10]_i_32_n_0 ,\clock_counter[10]_i_33_n_0 ,\clock_counter[10]_i_34_n_0 ,\clock_counter[10]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[10]_i_3 
       (.CI(\clock_counter_reg[10]_i_6_n_0 ),
        .CO({\clock_counter_reg[10]_i_3_n_0 ,\clock_counter_reg[10]_i_3_n_1 ,\clock_counter_reg[10]_i_3_n_2 ,\clock_counter_reg[10]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[11]_i_3_n_5 ,\clock_counter_reg[11]_i_3_n_6 ,\clock_counter_reg[11]_i_3_n_7 ,\clock_counter_reg[11]_i_6_n_4 }),
        .O({\clock_counter_reg[10]_i_3_n_4 ,\clock_counter_reg[10]_i_3_n_5 ,\clock_counter_reg[10]_i_3_n_6 ,\clock_counter_reg[10]_i_3_n_7 }),
        .S({\clock_counter[10]_i_7_n_0 ,\clock_counter[10]_i_8_n_0 ,\clock_counter[10]_i_9_n_0 ,\clock_counter[10]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[10]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[10]_i_31_n_0 ,\clock_counter_reg[10]_i_31_n_1 ,\clock_counter_reg[10]_i_31_n_2 ,\clock_counter_reg[10]_i_31_n_3 }),
        .CYINIT(in6[11]),
        .DI({\clock_counter_reg[11]_i_31_n_5 ,\clock_counter_reg[11]_i_31_n_6 ,\clock_counter[10]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[10]_i_31_n_4 ,\clock_counter_reg[10]_i_31_n_5 ,\clock_counter_reg[10]_i_31_n_6 ,\NLW_clock_counter_reg[10]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[10]_i_37_n_0 ,\clock_counter[10]_i_38_n_0 ,\clock_counter[10]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[10]_i_6 
       (.CI(\clock_counter_reg[10]_i_11_n_0 ),
        .CO({\clock_counter_reg[10]_i_6_n_0 ,\clock_counter_reg[10]_i_6_n_1 ,\clock_counter_reg[10]_i_6_n_2 ,\clock_counter_reg[10]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[11]_i_6_n_5 ,\clock_counter_reg[11]_i_6_n_6 ,\clock_counter_reg[11]_i_6_n_7 ,\clock_counter_reg[11]_i_11_n_4 }),
        .O({\clock_counter_reg[10]_i_6_n_4 ,\clock_counter_reg[10]_i_6_n_5 ,\clock_counter_reg[10]_i_6_n_6 ,\clock_counter_reg[10]_i_6_n_7 }),
        .S({\clock_counter[10]_i_12_n_0 ,\clock_counter[10]_i_13_n_0 ,\clock_counter[10]_i_14_n_0 ,\clock_counter[10]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[11]),
        .Q(\clock_counter_reg_n_0_[11] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[11]_i_11 
       (.CI(\clock_counter_reg[11]_i_16_n_0 ),
        .CO({\clock_counter_reg[11]_i_11_n_0 ,\clock_counter_reg[11]_i_11_n_1 ,\clock_counter_reg[11]_i_11_n_2 ,\clock_counter_reg[11]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[12]_i_11_n_5 ,\clock_counter_reg[12]_i_11_n_6 ,\clock_counter_reg[12]_i_11_n_7 ,\clock_counter_reg[12]_i_16_n_4 }),
        .O({\clock_counter_reg[11]_i_11_n_4 ,\clock_counter_reg[11]_i_11_n_5 ,\clock_counter_reg[11]_i_11_n_6 ,\clock_counter_reg[11]_i_11_n_7 }),
        .S({\clock_counter[11]_i_17_n_0 ,\clock_counter[11]_i_18_n_0 ,\clock_counter[11]_i_19_n_0 ,\clock_counter[11]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[11]_i_16 
       (.CI(\clock_counter_reg[11]_i_21_n_0 ),
        .CO({\clock_counter_reg[11]_i_16_n_0 ,\clock_counter_reg[11]_i_16_n_1 ,\clock_counter_reg[11]_i_16_n_2 ,\clock_counter_reg[11]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[12]_i_16_n_5 ,\clock_counter_reg[12]_i_16_n_6 ,\clock_counter_reg[12]_i_16_n_7 ,\clock_counter_reg[12]_i_21_n_4 }),
        .O({\clock_counter_reg[11]_i_16_n_4 ,\clock_counter_reg[11]_i_16_n_5 ,\clock_counter_reg[11]_i_16_n_6 ,\clock_counter_reg[11]_i_16_n_7 }),
        .S({\clock_counter[11]_i_22_n_0 ,\clock_counter[11]_i_23_n_0 ,\clock_counter[11]_i_24_n_0 ,\clock_counter[11]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[11]_i_2 
       (.CI(\clock_counter_reg[11]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[11]_i_2_CO_UNCONNECTED [3:2],in6[11],\clock_counter_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[12],\clock_counter_reg[12]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[11]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[11]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[11]_i_4_n_0 ,\clock_counter[11]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[11]_i_21 
       (.CI(\clock_counter_reg[11]_i_26_n_0 ),
        .CO({\clock_counter_reg[11]_i_21_n_0 ,\clock_counter_reg[11]_i_21_n_1 ,\clock_counter_reg[11]_i_21_n_2 ,\clock_counter_reg[11]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[12]_i_21_n_5 ,\clock_counter_reg[12]_i_21_n_6 ,\clock_counter_reg[12]_i_21_n_7 ,\clock_counter_reg[12]_i_26_n_4 }),
        .O({\clock_counter_reg[11]_i_21_n_4 ,\clock_counter_reg[11]_i_21_n_5 ,\clock_counter_reg[11]_i_21_n_6 ,\clock_counter_reg[11]_i_21_n_7 }),
        .S({\clock_counter[11]_i_27_n_0 ,\clock_counter[11]_i_28_n_0 ,\clock_counter[11]_i_29_n_0 ,\clock_counter[11]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[11]_i_26 
       (.CI(\clock_counter_reg[11]_i_31_n_0 ),
        .CO({\clock_counter_reg[11]_i_26_n_0 ,\clock_counter_reg[11]_i_26_n_1 ,\clock_counter_reg[11]_i_26_n_2 ,\clock_counter_reg[11]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[12]_i_26_n_5 ,\clock_counter_reg[12]_i_26_n_6 ,\clock_counter_reg[12]_i_26_n_7 ,\clock_counter_reg[12]_i_31_n_4 }),
        .O({\clock_counter_reg[11]_i_26_n_4 ,\clock_counter_reg[11]_i_26_n_5 ,\clock_counter_reg[11]_i_26_n_6 ,\clock_counter_reg[11]_i_26_n_7 }),
        .S({\clock_counter[11]_i_32_n_0 ,\clock_counter[11]_i_33_n_0 ,\clock_counter[11]_i_34_n_0 ,\clock_counter[11]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[11]_i_3 
       (.CI(\clock_counter_reg[11]_i_6_n_0 ),
        .CO({\clock_counter_reg[11]_i_3_n_0 ,\clock_counter_reg[11]_i_3_n_1 ,\clock_counter_reg[11]_i_3_n_2 ,\clock_counter_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[12]_i_3_n_5 ,\clock_counter_reg[12]_i_3_n_6 ,\clock_counter_reg[12]_i_3_n_7 ,\clock_counter_reg[12]_i_6_n_4 }),
        .O({\clock_counter_reg[11]_i_3_n_4 ,\clock_counter_reg[11]_i_3_n_5 ,\clock_counter_reg[11]_i_3_n_6 ,\clock_counter_reg[11]_i_3_n_7 }),
        .S({\clock_counter[11]_i_7_n_0 ,\clock_counter[11]_i_8_n_0 ,\clock_counter[11]_i_9_n_0 ,\clock_counter[11]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[11]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[11]_i_31_n_0 ,\clock_counter_reg[11]_i_31_n_1 ,\clock_counter_reg[11]_i_31_n_2 ,\clock_counter_reg[11]_i_31_n_3 }),
        .CYINIT(in6[12]),
        .DI({\clock_counter_reg[12]_i_31_n_5 ,\clock_counter_reg[12]_i_31_n_6 ,\clock_counter[11]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[11]_i_31_n_4 ,\clock_counter_reg[11]_i_31_n_5 ,\clock_counter_reg[11]_i_31_n_6 ,\NLW_clock_counter_reg[11]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[11]_i_37_n_0 ,\clock_counter[11]_i_38_n_0 ,\clock_counter[11]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[11]_i_6 
       (.CI(\clock_counter_reg[11]_i_11_n_0 ),
        .CO({\clock_counter_reg[11]_i_6_n_0 ,\clock_counter_reg[11]_i_6_n_1 ,\clock_counter_reg[11]_i_6_n_2 ,\clock_counter_reg[11]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[12]_i_6_n_5 ,\clock_counter_reg[12]_i_6_n_6 ,\clock_counter_reg[12]_i_6_n_7 ,\clock_counter_reg[12]_i_11_n_4 }),
        .O({\clock_counter_reg[11]_i_6_n_4 ,\clock_counter_reg[11]_i_6_n_5 ,\clock_counter_reg[11]_i_6_n_6 ,\clock_counter_reg[11]_i_6_n_7 }),
        .S({\clock_counter[11]_i_12_n_0 ,\clock_counter[11]_i_13_n_0 ,\clock_counter[11]_i_14_n_0 ,\clock_counter[11]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[12]),
        .Q(\clock_counter_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[12]_i_11 
       (.CI(\clock_counter_reg[12]_i_16_n_0 ),
        .CO({\clock_counter_reg[12]_i_11_n_0 ,\clock_counter_reg[12]_i_11_n_1 ,\clock_counter_reg[12]_i_11_n_2 ,\clock_counter_reg[12]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[13]_i_11_n_5 ,\clock_counter_reg[13]_i_11_n_6 ,\clock_counter_reg[13]_i_11_n_7 ,\clock_counter_reg[13]_i_16_n_4 }),
        .O({\clock_counter_reg[12]_i_11_n_4 ,\clock_counter_reg[12]_i_11_n_5 ,\clock_counter_reg[12]_i_11_n_6 ,\clock_counter_reg[12]_i_11_n_7 }),
        .S({\clock_counter[12]_i_17_n_0 ,\clock_counter[12]_i_18_n_0 ,\clock_counter[12]_i_19_n_0 ,\clock_counter[12]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[12]_i_16 
       (.CI(\clock_counter_reg[12]_i_21_n_0 ),
        .CO({\clock_counter_reg[12]_i_16_n_0 ,\clock_counter_reg[12]_i_16_n_1 ,\clock_counter_reg[12]_i_16_n_2 ,\clock_counter_reg[12]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[13]_i_16_n_5 ,\clock_counter_reg[13]_i_16_n_6 ,\clock_counter_reg[13]_i_16_n_7 ,\clock_counter_reg[13]_i_21_n_4 }),
        .O({\clock_counter_reg[12]_i_16_n_4 ,\clock_counter_reg[12]_i_16_n_5 ,\clock_counter_reg[12]_i_16_n_6 ,\clock_counter_reg[12]_i_16_n_7 }),
        .S({\clock_counter[12]_i_22_n_0 ,\clock_counter[12]_i_23_n_0 ,\clock_counter[12]_i_24_n_0 ,\clock_counter[12]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[12]_i_2 
       (.CI(\clock_counter_reg[12]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[12]_i_2_CO_UNCONNECTED [3:2],in6[12],\clock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[13],\clock_counter_reg[13]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[12]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[12]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[12]_i_4_n_0 ,\clock_counter[12]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[12]_i_21 
       (.CI(\clock_counter_reg[12]_i_26_n_0 ),
        .CO({\clock_counter_reg[12]_i_21_n_0 ,\clock_counter_reg[12]_i_21_n_1 ,\clock_counter_reg[12]_i_21_n_2 ,\clock_counter_reg[12]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[13]_i_21_n_5 ,\clock_counter_reg[13]_i_21_n_6 ,\clock_counter_reg[13]_i_21_n_7 ,\clock_counter_reg[13]_i_26_n_4 }),
        .O({\clock_counter_reg[12]_i_21_n_4 ,\clock_counter_reg[12]_i_21_n_5 ,\clock_counter_reg[12]_i_21_n_6 ,\clock_counter_reg[12]_i_21_n_7 }),
        .S({\clock_counter[12]_i_27_n_0 ,\clock_counter[12]_i_28_n_0 ,\clock_counter[12]_i_29_n_0 ,\clock_counter[12]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[12]_i_26 
       (.CI(\clock_counter_reg[12]_i_31_n_0 ),
        .CO({\clock_counter_reg[12]_i_26_n_0 ,\clock_counter_reg[12]_i_26_n_1 ,\clock_counter_reg[12]_i_26_n_2 ,\clock_counter_reg[12]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[13]_i_26_n_5 ,\clock_counter_reg[13]_i_26_n_6 ,\clock_counter_reg[13]_i_26_n_7 ,\clock_counter_reg[13]_i_31_n_4 }),
        .O({\clock_counter_reg[12]_i_26_n_4 ,\clock_counter_reg[12]_i_26_n_5 ,\clock_counter_reg[12]_i_26_n_6 ,\clock_counter_reg[12]_i_26_n_7 }),
        .S({\clock_counter[12]_i_32_n_0 ,\clock_counter[12]_i_33_n_0 ,\clock_counter[12]_i_34_n_0 ,\clock_counter[12]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[12]_i_3 
       (.CI(\clock_counter_reg[12]_i_6_n_0 ),
        .CO({\clock_counter_reg[12]_i_3_n_0 ,\clock_counter_reg[12]_i_3_n_1 ,\clock_counter_reg[12]_i_3_n_2 ,\clock_counter_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[13]_i_3_n_5 ,\clock_counter_reg[13]_i_3_n_6 ,\clock_counter_reg[13]_i_3_n_7 ,\clock_counter_reg[13]_i_6_n_4 }),
        .O({\clock_counter_reg[12]_i_3_n_4 ,\clock_counter_reg[12]_i_3_n_5 ,\clock_counter_reg[12]_i_3_n_6 ,\clock_counter_reg[12]_i_3_n_7 }),
        .S({\clock_counter[12]_i_7_n_0 ,\clock_counter[12]_i_8_n_0 ,\clock_counter[12]_i_9_n_0 ,\clock_counter[12]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[12]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[12]_i_31_n_0 ,\clock_counter_reg[12]_i_31_n_1 ,\clock_counter_reg[12]_i_31_n_2 ,\clock_counter_reg[12]_i_31_n_3 }),
        .CYINIT(in6[13]),
        .DI({\clock_counter_reg[13]_i_31_n_5 ,\clock_counter_reg[13]_i_31_n_6 ,\clock_counter[12]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[12]_i_31_n_4 ,\clock_counter_reg[12]_i_31_n_5 ,\clock_counter_reg[12]_i_31_n_6 ,\NLW_clock_counter_reg[12]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[12]_i_37_n_0 ,\clock_counter[12]_i_38_n_0 ,\clock_counter[12]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[12]_i_6 
       (.CI(\clock_counter_reg[12]_i_11_n_0 ),
        .CO({\clock_counter_reg[12]_i_6_n_0 ,\clock_counter_reg[12]_i_6_n_1 ,\clock_counter_reg[12]_i_6_n_2 ,\clock_counter_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[13]_i_6_n_5 ,\clock_counter_reg[13]_i_6_n_6 ,\clock_counter_reg[13]_i_6_n_7 ,\clock_counter_reg[13]_i_11_n_4 }),
        .O({\clock_counter_reg[12]_i_6_n_4 ,\clock_counter_reg[12]_i_6_n_5 ,\clock_counter_reg[12]_i_6_n_6 ,\clock_counter_reg[12]_i_6_n_7 }),
        .S({\clock_counter[12]_i_12_n_0 ,\clock_counter[12]_i_13_n_0 ,\clock_counter[12]_i_14_n_0 ,\clock_counter[12]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[13]),
        .Q(\clock_counter_reg_n_0_[13] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[13]_i_11 
       (.CI(\clock_counter_reg[13]_i_16_n_0 ),
        .CO({\clock_counter_reg[13]_i_11_n_0 ,\clock_counter_reg[13]_i_11_n_1 ,\clock_counter_reg[13]_i_11_n_2 ,\clock_counter_reg[13]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[14]_i_11_n_5 ,\clock_counter_reg[14]_i_11_n_6 ,\clock_counter_reg[14]_i_11_n_7 ,\clock_counter_reg[14]_i_16_n_4 }),
        .O({\clock_counter_reg[13]_i_11_n_4 ,\clock_counter_reg[13]_i_11_n_5 ,\clock_counter_reg[13]_i_11_n_6 ,\clock_counter_reg[13]_i_11_n_7 }),
        .S({\clock_counter[13]_i_17_n_0 ,\clock_counter[13]_i_18_n_0 ,\clock_counter[13]_i_19_n_0 ,\clock_counter[13]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[13]_i_16 
       (.CI(\clock_counter_reg[13]_i_21_n_0 ),
        .CO({\clock_counter_reg[13]_i_16_n_0 ,\clock_counter_reg[13]_i_16_n_1 ,\clock_counter_reg[13]_i_16_n_2 ,\clock_counter_reg[13]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[14]_i_16_n_5 ,\clock_counter_reg[14]_i_16_n_6 ,\clock_counter_reg[14]_i_16_n_7 ,\clock_counter_reg[14]_i_21_n_4 }),
        .O({\clock_counter_reg[13]_i_16_n_4 ,\clock_counter_reg[13]_i_16_n_5 ,\clock_counter_reg[13]_i_16_n_6 ,\clock_counter_reg[13]_i_16_n_7 }),
        .S({\clock_counter[13]_i_22_n_0 ,\clock_counter[13]_i_23_n_0 ,\clock_counter[13]_i_24_n_0 ,\clock_counter[13]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[13]_i_2 
       (.CI(\clock_counter_reg[13]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[13]_i_2_CO_UNCONNECTED [3:2],in6[13],\clock_counter_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[14],\clock_counter_reg[14]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[13]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[13]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[13]_i_4_n_0 ,\clock_counter[13]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[13]_i_21 
       (.CI(\clock_counter_reg[13]_i_26_n_0 ),
        .CO({\clock_counter_reg[13]_i_21_n_0 ,\clock_counter_reg[13]_i_21_n_1 ,\clock_counter_reg[13]_i_21_n_2 ,\clock_counter_reg[13]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[14]_i_21_n_5 ,\clock_counter_reg[14]_i_21_n_6 ,\clock_counter_reg[14]_i_21_n_7 ,\clock_counter_reg[14]_i_26_n_4 }),
        .O({\clock_counter_reg[13]_i_21_n_4 ,\clock_counter_reg[13]_i_21_n_5 ,\clock_counter_reg[13]_i_21_n_6 ,\clock_counter_reg[13]_i_21_n_7 }),
        .S({\clock_counter[13]_i_27_n_0 ,\clock_counter[13]_i_28_n_0 ,\clock_counter[13]_i_29_n_0 ,\clock_counter[13]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[13]_i_26 
       (.CI(\clock_counter_reg[13]_i_31_n_0 ),
        .CO({\clock_counter_reg[13]_i_26_n_0 ,\clock_counter_reg[13]_i_26_n_1 ,\clock_counter_reg[13]_i_26_n_2 ,\clock_counter_reg[13]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[14]_i_26_n_5 ,\clock_counter_reg[14]_i_26_n_6 ,\clock_counter_reg[14]_i_26_n_7 ,\clock_counter_reg[14]_i_31_n_4 }),
        .O({\clock_counter_reg[13]_i_26_n_4 ,\clock_counter_reg[13]_i_26_n_5 ,\clock_counter_reg[13]_i_26_n_6 ,\clock_counter_reg[13]_i_26_n_7 }),
        .S({\clock_counter[13]_i_32_n_0 ,\clock_counter[13]_i_33_n_0 ,\clock_counter[13]_i_34_n_0 ,\clock_counter[13]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[13]_i_3 
       (.CI(\clock_counter_reg[13]_i_6_n_0 ),
        .CO({\clock_counter_reg[13]_i_3_n_0 ,\clock_counter_reg[13]_i_3_n_1 ,\clock_counter_reg[13]_i_3_n_2 ,\clock_counter_reg[13]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[14]_i_3_n_5 ,\clock_counter_reg[14]_i_3_n_6 ,\clock_counter_reg[14]_i_3_n_7 ,\clock_counter_reg[14]_i_6_n_4 }),
        .O({\clock_counter_reg[13]_i_3_n_4 ,\clock_counter_reg[13]_i_3_n_5 ,\clock_counter_reg[13]_i_3_n_6 ,\clock_counter_reg[13]_i_3_n_7 }),
        .S({\clock_counter[13]_i_7_n_0 ,\clock_counter[13]_i_8_n_0 ,\clock_counter[13]_i_9_n_0 ,\clock_counter[13]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[13]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[13]_i_31_n_0 ,\clock_counter_reg[13]_i_31_n_1 ,\clock_counter_reg[13]_i_31_n_2 ,\clock_counter_reg[13]_i_31_n_3 }),
        .CYINIT(in6[14]),
        .DI({\clock_counter_reg[14]_i_31_n_5 ,\clock_counter_reg[14]_i_31_n_6 ,1'b1,1'b0}),
        .O({\clock_counter_reg[13]_i_31_n_4 ,\clock_counter_reg[13]_i_31_n_5 ,\clock_counter_reg[13]_i_31_n_6 ,\NLW_clock_counter_reg[13]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[13]_i_36_n_0 ,\clock_counter[13]_i_37_n_0 ,\clock_counter[13]_i_38_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[13]_i_6 
       (.CI(\clock_counter_reg[13]_i_11_n_0 ),
        .CO({\clock_counter_reg[13]_i_6_n_0 ,\clock_counter_reg[13]_i_6_n_1 ,\clock_counter_reg[13]_i_6_n_2 ,\clock_counter_reg[13]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[14]_i_6_n_5 ,\clock_counter_reg[14]_i_6_n_6 ,\clock_counter_reg[14]_i_6_n_7 ,\clock_counter_reg[14]_i_11_n_4 }),
        .O({\clock_counter_reg[13]_i_6_n_4 ,\clock_counter_reg[13]_i_6_n_5 ,\clock_counter_reg[13]_i_6_n_6 ,\clock_counter_reg[13]_i_6_n_7 }),
        .S({\clock_counter[13]_i_12_n_0 ,\clock_counter[13]_i_13_n_0 ,\clock_counter[13]_i_14_n_0 ,\clock_counter[13]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[14]),
        .Q(\clock_counter_reg_n_0_[14] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[14]_i_11 
       (.CI(\clock_counter_reg[14]_i_16_n_0 ),
        .CO({\clock_counter_reg[14]_i_11_n_0 ,\clock_counter_reg[14]_i_11_n_1 ,\clock_counter_reg[14]_i_11_n_2 ,\clock_counter_reg[14]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[15]_i_11_n_5 ,\clock_counter_reg[15]_i_11_n_6 ,\clock_counter_reg[15]_i_11_n_7 ,\clock_counter_reg[15]_i_16_n_4 }),
        .O({\clock_counter_reg[14]_i_11_n_4 ,\clock_counter_reg[14]_i_11_n_5 ,\clock_counter_reg[14]_i_11_n_6 ,\clock_counter_reg[14]_i_11_n_7 }),
        .S({\clock_counter[14]_i_17_n_0 ,\clock_counter[14]_i_18_n_0 ,\clock_counter[14]_i_19_n_0 ,\clock_counter[14]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[14]_i_16 
       (.CI(\clock_counter_reg[14]_i_21_n_0 ),
        .CO({\clock_counter_reg[14]_i_16_n_0 ,\clock_counter_reg[14]_i_16_n_1 ,\clock_counter_reg[14]_i_16_n_2 ,\clock_counter_reg[14]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[15]_i_16_n_5 ,\clock_counter_reg[15]_i_16_n_6 ,\clock_counter_reg[15]_i_16_n_7 ,\clock_counter_reg[15]_i_21_n_4 }),
        .O({\clock_counter_reg[14]_i_16_n_4 ,\clock_counter_reg[14]_i_16_n_5 ,\clock_counter_reg[14]_i_16_n_6 ,\clock_counter_reg[14]_i_16_n_7 }),
        .S({\clock_counter[14]_i_22_n_0 ,\clock_counter[14]_i_23_n_0 ,\clock_counter[14]_i_24_n_0 ,\clock_counter[14]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[14]_i_2 
       (.CI(\clock_counter_reg[14]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[14]_i_2_CO_UNCONNECTED [3:2],in6[14],\clock_counter_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[15],\clock_counter_reg[15]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[14]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[14]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[14]_i_4_n_0 ,\clock_counter[14]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[14]_i_21 
       (.CI(\clock_counter_reg[14]_i_26_n_0 ),
        .CO({\clock_counter_reg[14]_i_21_n_0 ,\clock_counter_reg[14]_i_21_n_1 ,\clock_counter_reg[14]_i_21_n_2 ,\clock_counter_reg[14]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[15]_i_21_n_5 ,\clock_counter_reg[15]_i_21_n_6 ,\clock_counter_reg[15]_i_21_n_7 ,\clock_counter_reg[15]_i_26_n_4 }),
        .O({\clock_counter_reg[14]_i_21_n_4 ,\clock_counter_reg[14]_i_21_n_5 ,\clock_counter_reg[14]_i_21_n_6 ,\clock_counter_reg[14]_i_21_n_7 }),
        .S({\clock_counter[14]_i_27_n_0 ,\clock_counter[14]_i_28_n_0 ,\clock_counter[14]_i_29_n_0 ,\clock_counter[14]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[14]_i_26 
       (.CI(\clock_counter_reg[14]_i_31_n_0 ),
        .CO({\clock_counter_reg[14]_i_26_n_0 ,\clock_counter_reg[14]_i_26_n_1 ,\clock_counter_reg[14]_i_26_n_2 ,\clock_counter_reg[14]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[15]_i_26_n_5 ,\clock_counter_reg[15]_i_26_n_6 ,\clock_counter_reg[15]_i_26_n_7 ,\clock_counter_reg[15]_i_31_n_4 }),
        .O({\clock_counter_reg[14]_i_26_n_4 ,\clock_counter_reg[14]_i_26_n_5 ,\clock_counter_reg[14]_i_26_n_6 ,\clock_counter_reg[14]_i_26_n_7 }),
        .S({\clock_counter[14]_i_32_n_0 ,\clock_counter[14]_i_33_n_0 ,\clock_counter[14]_i_34_n_0 ,\clock_counter[14]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[14]_i_3 
       (.CI(\clock_counter_reg[14]_i_6_n_0 ),
        .CO({\clock_counter_reg[14]_i_3_n_0 ,\clock_counter_reg[14]_i_3_n_1 ,\clock_counter_reg[14]_i_3_n_2 ,\clock_counter_reg[14]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[15]_i_3_n_5 ,\clock_counter_reg[15]_i_3_n_6 ,\clock_counter_reg[15]_i_3_n_7 ,\clock_counter_reg[15]_i_6_n_4 }),
        .O({\clock_counter_reg[14]_i_3_n_4 ,\clock_counter_reg[14]_i_3_n_5 ,\clock_counter_reg[14]_i_3_n_6 ,\clock_counter_reg[14]_i_3_n_7 }),
        .S({\clock_counter[14]_i_7_n_0 ,\clock_counter[14]_i_8_n_0 ,\clock_counter[14]_i_9_n_0 ,\clock_counter[14]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[14]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[14]_i_31_n_0 ,\clock_counter_reg[14]_i_31_n_1 ,\clock_counter_reg[14]_i_31_n_2 ,\clock_counter_reg[14]_i_31_n_3 }),
        .CYINIT(in6[15]),
        .DI({\clock_counter_reg[15]_i_31_n_5 ,\clock_counter_reg[15]_i_31_n_6 ,1'b1,1'b0}),
        .O({\clock_counter_reg[14]_i_31_n_4 ,\clock_counter_reg[14]_i_31_n_5 ,\clock_counter_reg[14]_i_31_n_6 ,\NLW_clock_counter_reg[14]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[14]_i_36_n_0 ,\clock_counter[14]_i_37_n_0 ,\clock_counter[14]_i_38_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[14]_i_6 
       (.CI(\clock_counter_reg[14]_i_11_n_0 ),
        .CO({\clock_counter_reg[14]_i_6_n_0 ,\clock_counter_reg[14]_i_6_n_1 ,\clock_counter_reg[14]_i_6_n_2 ,\clock_counter_reg[14]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[15]_i_6_n_5 ,\clock_counter_reg[15]_i_6_n_6 ,\clock_counter_reg[15]_i_6_n_7 ,\clock_counter_reg[15]_i_11_n_4 }),
        .O({\clock_counter_reg[14]_i_6_n_4 ,\clock_counter_reg[14]_i_6_n_5 ,\clock_counter_reg[14]_i_6_n_6 ,\clock_counter_reg[14]_i_6_n_7 }),
        .S({\clock_counter[14]_i_12_n_0 ,\clock_counter[14]_i_13_n_0 ,\clock_counter[14]_i_14_n_0 ,\clock_counter[14]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[15]),
        .Q(\clock_counter_reg_n_0_[15] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[15]_i_11 
       (.CI(\clock_counter_reg[15]_i_16_n_0 ),
        .CO({\clock_counter_reg[15]_i_11_n_0 ,\clock_counter_reg[15]_i_11_n_1 ,\clock_counter_reg[15]_i_11_n_2 ,\clock_counter_reg[15]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[16]_i_11_n_5 ,\clock_counter_reg[16]_i_11_n_6 ,\clock_counter_reg[16]_i_11_n_7 ,\clock_counter_reg[16]_i_16_n_4 }),
        .O({\clock_counter_reg[15]_i_11_n_4 ,\clock_counter_reg[15]_i_11_n_5 ,\clock_counter_reg[15]_i_11_n_6 ,\clock_counter_reg[15]_i_11_n_7 }),
        .S({\clock_counter[15]_i_17_n_0 ,\clock_counter[15]_i_18_n_0 ,\clock_counter[15]_i_19_n_0 ,\clock_counter[15]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[15]_i_16 
       (.CI(\clock_counter_reg[15]_i_21_n_0 ),
        .CO({\clock_counter_reg[15]_i_16_n_0 ,\clock_counter_reg[15]_i_16_n_1 ,\clock_counter_reg[15]_i_16_n_2 ,\clock_counter_reg[15]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[16]_i_16_n_5 ,\clock_counter_reg[16]_i_16_n_6 ,\clock_counter_reg[16]_i_16_n_7 ,\clock_counter_reg[16]_i_21_n_4 }),
        .O({\clock_counter_reg[15]_i_16_n_4 ,\clock_counter_reg[15]_i_16_n_5 ,\clock_counter_reg[15]_i_16_n_6 ,\clock_counter_reg[15]_i_16_n_7 }),
        .S({\clock_counter[15]_i_22_n_0 ,\clock_counter[15]_i_23_n_0 ,\clock_counter[15]_i_24_n_0 ,\clock_counter[15]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[15]_i_2 
       (.CI(\clock_counter_reg[15]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[15]_i_2_CO_UNCONNECTED [3:2],in6[15],\clock_counter_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[16],\clock_counter_reg[16]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[15]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[15]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[15]_i_4_n_0 ,\clock_counter[15]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[15]_i_21 
       (.CI(\clock_counter_reg[15]_i_26_n_0 ),
        .CO({\clock_counter_reg[15]_i_21_n_0 ,\clock_counter_reg[15]_i_21_n_1 ,\clock_counter_reg[15]_i_21_n_2 ,\clock_counter_reg[15]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[16]_i_21_n_5 ,\clock_counter_reg[16]_i_21_n_6 ,\clock_counter_reg[16]_i_21_n_7 ,\clock_counter_reg[16]_i_26_n_4 }),
        .O({\clock_counter_reg[15]_i_21_n_4 ,\clock_counter_reg[15]_i_21_n_5 ,\clock_counter_reg[15]_i_21_n_6 ,\clock_counter_reg[15]_i_21_n_7 }),
        .S({\clock_counter[15]_i_27_n_0 ,\clock_counter[15]_i_28_n_0 ,\clock_counter[15]_i_29_n_0 ,\clock_counter[15]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[15]_i_26 
       (.CI(\clock_counter_reg[15]_i_31_n_0 ),
        .CO({\clock_counter_reg[15]_i_26_n_0 ,\clock_counter_reg[15]_i_26_n_1 ,\clock_counter_reg[15]_i_26_n_2 ,\clock_counter_reg[15]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[16]_i_26_n_5 ,\clock_counter_reg[16]_i_26_n_6 ,\clock_counter_reg[16]_i_26_n_7 ,\clock_counter_reg[16]_i_31_n_4 }),
        .O({\clock_counter_reg[15]_i_26_n_4 ,\clock_counter_reg[15]_i_26_n_5 ,\clock_counter_reg[15]_i_26_n_6 ,\clock_counter_reg[15]_i_26_n_7 }),
        .S({\clock_counter[15]_i_32_n_0 ,\clock_counter[15]_i_33_n_0 ,\clock_counter[15]_i_34_n_0 ,\clock_counter[15]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[15]_i_3 
       (.CI(\clock_counter_reg[15]_i_6_n_0 ),
        .CO({\clock_counter_reg[15]_i_3_n_0 ,\clock_counter_reg[15]_i_3_n_1 ,\clock_counter_reg[15]_i_3_n_2 ,\clock_counter_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[16]_i_3_n_5 ,\clock_counter_reg[16]_i_3_n_6 ,\clock_counter_reg[16]_i_3_n_7 ,\clock_counter_reg[16]_i_6_n_4 }),
        .O({\clock_counter_reg[15]_i_3_n_4 ,\clock_counter_reg[15]_i_3_n_5 ,\clock_counter_reg[15]_i_3_n_6 ,\clock_counter_reg[15]_i_3_n_7 }),
        .S({\clock_counter[15]_i_7_n_0 ,\clock_counter[15]_i_8_n_0 ,\clock_counter[15]_i_9_n_0 ,\clock_counter[15]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[15]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[15]_i_31_n_0 ,\clock_counter_reg[15]_i_31_n_1 ,\clock_counter_reg[15]_i_31_n_2 ,\clock_counter_reg[15]_i_31_n_3 }),
        .CYINIT(in6[16]),
        .DI({\clock_counter_reg[16]_i_31_n_5 ,\clock_counter_reg[16]_i_31_n_6 ,1'b1,1'b0}),
        .O({\clock_counter_reg[15]_i_31_n_4 ,\clock_counter_reg[15]_i_31_n_5 ,\clock_counter_reg[15]_i_31_n_6 ,\NLW_clock_counter_reg[15]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[15]_i_36_n_0 ,\clock_counter[15]_i_37_n_0 ,\clock_counter[15]_i_38_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[15]_i_6 
       (.CI(\clock_counter_reg[15]_i_11_n_0 ),
        .CO({\clock_counter_reg[15]_i_6_n_0 ,\clock_counter_reg[15]_i_6_n_1 ,\clock_counter_reg[15]_i_6_n_2 ,\clock_counter_reg[15]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[16]_i_6_n_5 ,\clock_counter_reg[16]_i_6_n_6 ,\clock_counter_reg[16]_i_6_n_7 ,\clock_counter_reg[16]_i_11_n_4 }),
        .O({\clock_counter_reg[15]_i_6_n_4 ,\clock_counter_reg[15]_i_6_n_5 ,\clock_counter_reg[15]_i_6_n_6 ,\clock_counter_reg[15]_i_6_n_7 }),
        .S({\clock_counter[15]_i_12_n_0 ,\clock_counter[15]_i_13_n_0 ,\clock_counter[15]_i_14_n_0 ,\clock_counter[15]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[16]),
        .Q(\clock_counter_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[16]_i_11 
       (.CI(\clock_counter_reg[16]_i_16_n_0 ),
        .CO({\clock_counter_reg[16]_i_11_n_0 ,\clock_counter_reg[16]_i_11_n_1 ,\clock_counter_reg[16]_i_11_n_2 ,\clock_counter_reg[16]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[17]_i_11_n_5 ,\clock_counter_reg[17]_i_11_n_6 ,\clock_counter_reg[17]_i_11_n_7 ,\clock_counter_reg[17]_i_16_n_4 }),
        .O({\clock_counter_reg[16]_i_11_n_4 ,\clock_counter_reg[16]_i_11_n_5 ,\clock_counter_reg[16]_i_11_n_6 ,\clock_counter_reg[16]_i_11_n_7 }),
        .S({\clock_counter[16]_i_17_n_0 ,\clock_counter[16]_i_18_n_0 ,\clock_counter[16]_i_19_n_0 ,\clock_counter[16]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[16]_i_16 
       (.CI(\clock_counter_reg[16]_i_21_n_0 ),
        .CO({\clock_counter_reg[16]_i_16_n_0 ,\clock_counter_reg[16]_i_16_n_1 ,\clock_counter_reg[16]_i_16_n_2 ,\clock_counter_reg[16]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[17]_i_16_n_5 ,\clock_counter_reg[17]_i_16_n_6 ,\clock_counter_reg[17]_i_16_n_7 ,\clock_counter_reg[17]_i_21_n_4 }),
        .O({\clock_counter_reg[16]_i_16_n_4 ,\clock_counter_reg[16]_i_16_n_5 ,\clock_counter_reg[16]_i_16_n_6 ,\clock_counter_reg[16]_i_16_n_7 }),
        .S({\clock_counter[16]_i_22_n_0 ,\clock_counter[16]_i_23_n_0 ,\clock_counter[16]_i_24_n_0 ,\clock_counter[16]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[16]_i_2 
       (.CI(\clock_counter_reg[16]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[16]_i_2_CO_UNCONNECTED [3:2],in6[16],\clock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[17],\clock_counter_reg[17]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[16]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[16]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[16]_i_4_n_0 ,\clock_counter[16]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[16]_i_21 
       (.CI(\clock_counter_reg[16]_i_26_n_0 ),
        .CO({\clock_counter_reg[16]_i_21_n_0 ,\clock_counter_reg[16]_i_21_n_1 ,\clock_counter_reg[16]_i_21_n_2 ,\clock_counter_reg[16]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[17]_i_21_n_5 ,\clock_counter_reg[17]_i_21_n_6 ,\clock_counter_reg[17]_i_21_n_7 ,\clock_counter_reg[17]_i_26_n_4 }),
        .O({\clock_counter_reg[16]_i_21_n_4 ,\clock_counter_reg[16]_i_21_n_5 ,\clock_counter_reg[16]_i_21_n_6 ,\clock_counter_reg[16]_i_21_n_7 }),
        .S({\clock_counter[16]_i_27_n_0 ,\clock_counter[16]_i_28_n_0 ,\clock_counter[16]_i_29_n_0 ,\clock_counter[16]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[16]_i_26 
       (.CI(\clock_counter_reg[16]_i_31_n_0 ),
        .CO({\clock_counter_reg[16]_i_26_n_0 ,\clock_counter_reg[16]_i_26_n_1 ,\clock_counter_reg[16]_i_26_n_2 ,\clock_counter_reg[16]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[17]_i_26_n_5 ,\clock_counter_reg[17]_i_26_n_6 ,\clock_counter_reg[17]_i_26_n_7 ,\clock_counter_reg[17]_i_31_n_4 }),
        .O({\clock_counter_reg[16]_i_26_n_4 ,\clock_counter_reg[16]_i_26_n_5 ,\clock_counter_reg[16]_i_26_n_6 ,\clock_counter_reg[16]_i_26_n_7 }),
        .S({\clock_counter[16]_i_32_n_0 ,\clock_counter[16]_i_33_n_0 ,\clock_counter[16]_i_34_n_0 ,\clock_counter[16]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[16]_i_3 
       (.CI(\clock_counter_reg[16]_i_6_n_0 ),
        .CO({\clock_counter_reg[16]_i_3_n_0 ,\clock_counter_reg[16]_i_3_n_1 ,\clock_counter_reg[16]_i_3_n_2 ,\clock_counter_reg[16]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[17]_i_3_n_5 ,\clock_counter_reg[17]_i_3_n_6 ,\clock_counter_reg[17]_i_3_n_7 ,\clock_counter_reg[17]_i_6_n_4 }),
        .O({\clock_counter_reg[16]_i_3_n_4 ,\clock_counter_reg[16]_i_3_n_5 ,\clock_counter_reg[16]_i_3_n_6 ,\clock_counter_reg[16]_i_3_n_7 }),
        .S({\clock_counter[16]_i_7_n_0 ,\clock_counter[16]_i_8_n_0 ,\clock_counter[16]_i_9_n_0 ,\clock_counter[16]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[16]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[16]_i_31_n_0 ,\clock_counter_reg[16]_i_31_n_1 ,\clock_counter_reg[16]_i_31_n_2 ,\clock_counter_reg[16]_i_31_n_3 }),
        .CYINIT(in6[17]),
        .DI({\clock_counter_reg[17]_i_31_n_5 ,\clock_counter_reg[17]_i_31_n_6 ,1'b1,1'b0}),
        .O({\clock_counter_reg[16]_i_31_n_4 ,\clock_counter_reg[16]_i_31_n_5 ,\clock_counter_reg[16]_i_31_n_6 ,\NLW_clock_counter_reg[16]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[16]_i_36_n_0 ,\clock_counter[16]_i_37_n_0 ,\clock_counter[16]_i_38_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[16]_i_6 
       (.CI(\clock_counter_reg[16]_i_11_n_0 ),
        .CO({\clock_counter_reg[16]_i_6_n_0 ,\clock_counter_reg[16]_i_6_n_1 ,\clock_counter_reg[16]_i_6_n_2 ,\clock_counter_reg[16]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[17]_i_6_n_5 ,\clock_counter_reg[17]_i_6_n_6 ,\clock_counter_reg[17]_i_6_n_7 ,\clock_counter_reg[17]_i_11_n_4 }),
        .O({\clock_counter_reg[16]_i_6_n_4 ,\clock_counter_reg[16]_i_6_n_5 ,\clock_counter_reg[16]_i_6_n_6 ,\clock_counter_reg[16]_i_6_n_7 }),
        .S({\clock_counter[16]_i_12_n_0 ,\clock_counter[16]_i_13_n_0 ,\clock_counter[16]_i_14_n_0 ,\clock_counter[16]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[17]),
        .Q(\clock_counter_reg_n_0_[17] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[17]_i_11 
       (.CI(\clock_counter_reg[17]_i_16_n_0 ),
        .CO({\clock_counter_reg[17]_i_11_n_0 ,\clock_counter_reg[17]_i_11_n_1 ,\clock_counter_reg[17]_i_11_n_2 ,\clock_counter_reg[17]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[18]_i_11_n_5 ,\clock_counter_reg[18]_i_11_n_6 ,\clock_counter_reg[18]_i_11_n_7 ,\clock_counter_reg[18]_i_16_n_4 }),
        .O({\clock_counter_reg[17]_i_11_n_4 ,\clock_counter_reg[17]_i_11_n_5 ,\clock_counter_reg[17]_i_11_n_6 ,\clock_counter_reg[17]_i_11_n_7 }),
        .S({\clock_counter[17]_i_17_n_0 ,\clock_counter[17]_i_18_n_0 ,\clock_counter[17]_i_19_n_0 ,\clock_counter[17]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[17]_i_16 
       (.CI(\clock_counter_reg[17]_i_21_n_0 ),
        .CO({\clock_counter_reg[17]_i_16_n_0 ,\clock_counter_reg[17]_i_16_n_1 ,\clock_counter_reg[17]_i_16_n_2 ,\clock_counter_reg[17]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[18]_i_16_n_5 ,\clock_counter_reg[18]_i_16_n_6 ,\clock_counter_reg[18]_i_16_n_7 ,\clock_counter_reg[18]_i_21_n_4 }),
        .O({\clock_counter_reg[17]_i_16_n_4 ,\clock_counter_reg[17]_i_16_n_5 ,\clock_counter_reg[17]_i_16_n_6 ,\clock_counter_reg[17]_i_16_n_7 }),
        .S({\clock_counter[17]_i_22_n_0 ,\clock_counter[17]_i_23_n_0 ,\clock_counter[17]_i_24_n_0 ,\clock_counter[17]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[17]_i_2 
       (.CI(\clock_counter_reg[17]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[17]_i_2_CO_UNCONNECTED [3:2],in6[17],\clock_counter_reg[17]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[18],\clock_counter_reg[18]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[17]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[17]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[17]_i_4_n_0 ,\clock_counter[17]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[17]_i_21 
       (.CI(\clock_counter_reg[17]_i_26_n_0 ),
        .CO({\clock_counter_reg[17]_i_21_n_0 ,\clock_counter_reg[17]_i_21_n_1 ,\clock_counter_reg[17]_i_21_n_2 ,\clock_counter_reg[17]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[18]_i_21_n_5 ,\clock_counter_reg[18]_i_21_n_6 ,\clock_counter_reg[18]_i_21_n_7 ,\clock_counter_reg[18]_i_26_n_4 }),
        .O({\clock_counter_reg[17]_i_21_n_4 ,\clock_counter_reg[17]_i_21_n_5 ,\clock_counter_reg[17]_i_21_n_6 ,\clock_counter_reg[17]_i_21_n_7 }),
        .S({\clock_counter[17]_i_27_n_0 ,\clock_counter[17]_i_28_n_0 ,\clock_counter[17]_i_29_n_0 ,\clock_counter[17]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[17]_i_26 
       (.CI(\clock_counter_reg[17]_i_31_n_0 ),
        .CO({\clock_counter_reg[17]_i_26_n_0 ,\clock_counter_reg[17]_i_26_n_1 ,\clock_counter_reg[17]_i_26_n_2 ,\clock_counter_reg[17]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[18]_i_26_n_5 ,\clock_counter_reg[18]_i_26_n_6 ,\clock_counter_reg[18]_i_26_n_7 ,\clock_counter_reg[18]_i_31_n_4 }),
        .O({\clock_counter_reg[17]_i_26_n_4 ,\clock_counter_reg[17]_i_26_n_5 ,\clock_counter_reg[17]_i_26_n_6 ,\clock_counter_reg[17]_i_26_n_7 }),
        .S({\clock_counter[17]_i_32_n_0 ,\clock_counter[17]_i_33_n_0 ,\clock_counter[17]_i_34_n_0 ,\clock_counter[17]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[17]_i_3 
       (.CI(\clock_counter_reg[17]_i_6_n_0 ),
        .CO({\clock_counter_reg[17]_i_3_n_0 ,\clock_counter_reg[17]_i_3_n_1 ,\clock_counter_reg[17]_i_3_n_2 ,\clock_counter_reg[17]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[18]_i_3_n_5 ,\clock_counter_reg[18]_i_3_n_6 ,\clock_counter_reg[18]_i_3_n_7 ,\clock_counter_reg[18]_i_6_n_4 }),
        .O({\clock_counter_reg[17]_i_3_n_4 ,\clock_counter_reg[17]_i_3_n_5 ,\clock_counter_reg[17]_i_3_n_6 ,\clock_counter_reg[17]_i_3_n_7 }),
        .S({\clock_counter[17]_i_7_n_0 ,\clock_counter[17]_i_8_n_0 ,\clock_counter[17]_i_9_n_0 ,\clock_counter[17]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[17]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[17]_i_31_n_0 ,\clock_counter_reg[17]_i_31_n_1 ,\clock_counter_reg[17]_i_31_n_2 ,\clock_counter_reg[17]_i_31_n_3 }),
        .CYINIT(in6[18]),
        .DI({\clock_counter_reg[18]_i_31_n_5 ,\clock_counter_reg[18]_i_31_n_6 ,\clock_counter[17]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[17]_i_31_n_4 ,\clock_counter_reg[17]_i_31_n_5 ,\clock_counter_reg[17]_i_31_n_6 ,\NLW_clock_counter_reg[17]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[17]_i_37_n_0 ,\clock_counter[17]_i_38_n_0 ,\clock_counter[17]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[17]_i_6 
       (.CI(\clock_counter_reg[17]_i_11_n_0 ),
        .CO({\clock_counter_reg[17]_i_6_n_0 ,\clock_counter_reg[17]_i_6_n_1 ,\clock_counter_reg[17]_i_6_n_2 ,\clock_counter_reg[17]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[18]_i_6_n_5 ,\clock_counter_reg[18]_i_6_n_6 ,\clock_counter_reg[18]_i_6_n_7 ,\clock_counter_reg[18]_i_11_n_4 }),
        .O({\clock_counter_reg[17]_i_6_n_4 ,\clock_counter_reg[17]_i_6_n_5 ,\clock_counter_reg[17]_i_6_n_6 ,\clock_counter_reg[17]_i_6_n_7 }),
        .S({\clock_counter[17]_i_12_n_0 ,\clock_counter[17]_i_13_n_0 ,\clock_counter[17]_i_14_n_0 ,\clock_counter[17]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[18]),
        .Q(\clock_counter_reg_n_0_[18] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[18]_i_11 
       (.CI(\clock_counter_reg[18]_i_16_n_0 ),
        .CO({\clock_counter_reg[18]_i_11_n_0 ,\clock_counter_reg[18]_i_11_n_1 ,\clock_counter_reg[18]_i_11_n_2 ,\clock_counter_reg[18]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[19]_i_11_n_5 ,\clock_counter_reg[19]_i_11_n_6 ,\clock_counter_reg[19]_i_11_n_7 ,\clock_counter_reg[19]_i_16_n_4 }),
        .O({\clock_counter_reg[18]_i_11_n_4 ,\clock_counter_reg[18]_i_11_n_5 ,\clock_counter_reg[18]_i_11_n_6 ,\clock_counter_reg[18]_i_11_n_7 }),
        .S({\clock_counter[18]_i_17_n_0 ,\clock_counter[18]_i_18_n_0 ,\clock_counter[18]_i_19_n_0 ,\clock_counter[18]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[18]_i_16 
       (.CI(\clock_counter_reg[18]_i_21_n_0 ),
        .CO({\clock_counter_reg[18]_i_16_n_0 ,\clock_counter_reg[18]_i_16_n_1 ,\clock_counter_reg[18]_i_16_n_2 ,\clock_counter_reg[18]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[19]_i_16_n_5 ,\clock_counter_reg[19]_i_16_n_6 ,\clock_counter_reg[19]_i_16_n_7 ,\clock_counter_reg[19]_i_21_n_4 }),
        .O({\clock_counter_reg[18]_i_16_n_4 ,\clock_counter_reg[18]_i_16_n_5 ,\clock_counter_reg[18]_i_16_n_6 ,\clock_counter_reg[18]_i_16_n_7 }),
        .S({\clock_counter[18]_i_22_n_0 ,\clock_counter[18]_i_23_n_0 ,\clock_counter[18]_i_24_n_0 ,\clock_counter[18]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[18]_i_2 
       (.CI(\clock_counter_reg[18]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[18]_i_2_CO_UNCONNECTED [3:2],in6[18],\clock_counter_reg[18]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[19],\clock_counter_reg[19]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[18]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[18]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[18]_i_4_n_0 ,\clock_counter[18]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[18]_i_21 
       (.CI(\clock_counter_reg[18]_i_26_n_0 ),
        .CO({\clock_counter_reg[18]_i_21_n_0 ,\clock_counter_reg[18]_i_21_n_1 ,\clock_counter_reg[18]_i_21_n_2 ,\clock_counter_reg[18]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[19]_i_21_n_5 ,\clock_counter_reg[19]_i_21_n_6 ,\clock_counter_reg[19]_i_21_n_7 ,\clock_counter_reg[19]_i_26_n_4 }),
        .O({\clock_counter_reg[18]_i_21_n_4 ,\clock_counter_reg[18]_i_21_n_5 ,\clock_counter_reg[18]_i_21_n_6 ,\clock_counter_reg[18]_i_21_n_7 }),
        .S({\clock_counter[18]_i_27_n_0 ,\clock_counter[18]_i_28_n_0 ,\clock_counter[18]_i_29_n_0 ,\clock_counter[18]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[18]_i_26 
       (.CI(\clock_counter_reg[18]_i_31_n_0 ),
        .CO({\clock_counter_reg[18]_i_26_n_0 ,\clock_counter_reg[18]_i_26_n_1 ,\clock_counter_reg[18]_i_26_n_2 ,\clock_counter_reg[18]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[19]_i_26_n_5 ,\clock_counter_reg[19]_i_26_n_6 ,\clock_counter_reg[19]_i_26_n_7 ,\clock_counter_reg[19]_i_31_n_4 }),
        .O({\clock_counter_reg[18]_i_26_n_4 ,\clock_counter_reg[18]_i_26_n_5 ,\clock_counter_reg[18]_i_26_n_6 ,\clock_counter_reg[18]_i_26_n_7 }),
        .S({\clock_counter[18]_i_32_n_0 ,\clock_counter[18]_i_33_n_0 ,\clock_counter[18]_i_34_n_0 ,\clock_counter[18]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[18]_i_3 
       (.CI(\clock_counter_reg[18]_i_6_n_0 ),
        .CO({\clock_counter_reg[18]_i_3_n_0 ,\clock_counter_reg[18]_i_3_n_1 ,\clock_counter_reg[18]_i_3_n_2 ,\clock_counter_reg[18]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[19]_i_3_n_5 ,\clock_counter_reg[19]_i_3_n_6 ,\clock_counter_reg[19]_i_3_n_7 ,\clock_counter_reg[19]_i_6_n_4 }),
        .O({\clock_counter_reg[18]_i_3_n_4 ,\clock_counter_reg[18]_i_3_n_5 ,\clock_counter_reg[18]_i_3_n_6 ,\clock_counter_reg[18]_i_3_n_7 }),
        .S({\clock_counter[18]_i_7_n_0 ,\clock_counter[18]_i_8_n_0 ,\clock_counter[18]_i_9_n_0 ,\clock_counter[18]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[18]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[18]_i_31_n_0 ,\clock_counter_reg[18]_i_31_n_1 ,\clock_counter_reg[18]_i_31_n_2 ,\clock_counter_reg[18]_i_31_n_3 }),
        .CYINIT(in6[19]),
        .DI({\clock_counter_reg[19]_i_31_n_5 ,\clock_counter_reg[19]_i_31_n_6 ,1'b1,1'b0}),
        .O({\clock_counter_reg[18]_i_31_n_4 ,\clock_counter_reg[18]_i_31_n_5 ,\clock_counter_reg[18]_i_31_n_6 ,\NLW_clock_counter_reg[18]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[18]_i_36_n_0 ,\clock_counter[18]_i_37_n_0 ,\clock_counter[18]_i_38_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[18]_i_6 
       (.CI(\clock_counter_reg[18]_i_11_n_0 ),
        .CO({\clock_counter_reg[18]_i_6_n_0 ,\clock_counter_reg[18]_i_6_n_1 ,\clock_counter_reg[18]_i_6_n_2 ,\clock_counter_reg[18]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[19]_i_6_n_5 ,\clock_counter_reg[19]_i_6_n_6 ,\clock_counter_reg[19]_i_6_n_7 ,\clock_counter_reg[19]_i_11_n_4 }),
        .O({\clock_counter_reg[18]_i_6_n_4 ,\clock_counter_reg[18]_i_6_n_5 ,\clock_counter_reg[18]_i_6_n_6 ,\clock_counter_reg[18]_i_6_n_7 }),
        .S({\clock_counter[18]_i_12_n_0 ,\clock_counter[18]_i_13_n_0 ,\clock_counter[18]_i_14_n_0 ,\clock_counter[18]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[19]),
        .Q(\clock_counter_reg_n_0_[19] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[19]_i_11 
       (.CI(\clock_counter_reg[19]_i_16_n_0 ),
        .CO({\clock_counter_reg[19]_i_11_n_0 ,\clock_counter_reg[19]_i_11_n_1 ,\clock_counter_reg[19]_i_11_n_2 ,\clock_counter_reg[19]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[20]_i_11_n_5 ,\clock_counter_reg[20]_i_11_n_6 ,\clock_counter_reg[20]_i_11_n_7 ,\clock_counter_reg[20]_i_16_n_4 }),
        .O({\clock_counter_reg[19]_i_11_n_4 ,\clock_counter_reg[19]_i_11_n_5 ,\clock_counter_reg[19]_i_11_n_6 ,\clock_counter_reg[19]_i_11_n_7 }),
        .S({\clock_counter[19]_i_17_n_0 ,\clock_counter[19]_i_18_n_0 ,\clock_counter[19]_i_19_n_0 ,\clock_counter[19]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[19]_i_16 
       (.CI(\clock_counter_reg[19]_i_21_n_0 ),
        .CO({\clock_counter_reg[19]_i_16_n_0 ,\clock_counter_reg[19]_i_16_n_1 ,\clock_counter_reg[19]_i_16_n_2 ,\clock_counter_reg[19]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[20]_i_16_n_5 ,\clock_counter_reg[20]_i_16_n_6 ,\clock_counter_reg[20]_i_16_n_7 ,\clock_counter_reg[20]_i_21_n_4 }),
        .O({\clock_counter_reg[19]_i_16_n_4 ,\clock_counter_reg[19]_i_16_n_5 ,\clock_counter_reg[19]_i_16_n_6 ,\clock_counter_reg[19]_i_16_n_7 }),
        .S({\clock_counter[19]_i_22_n_0 ,\clock_counter[19]_i_23_n_0 ,\clock_counter[19]_i_24_n_0 ,\clock_counter[19]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[19]_i_2 
       (.CI(\clock_counter_reg[19]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[19]_i_2_CO_UNCONNECTED [3:2],in6[19],\clock_counter_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[20],\clock_counter_reg[20]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[19]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[19]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[19]_i_4_n_0 ,\clock_counter[19]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[19]_i_21 
       (.CI(\clock_counter_reg[19]_i_26_n_0 ),
        .CO({\clock_counter_reg[19]_i_21_n_0 ,\clock_counter_reg[19]_i_21_n_1 ,\clock_counter_reg[19]_i_21_n_2 ,\clock_counter_reg[19]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[20]_i_21_n_5 ,\clock_counter_reg[20]_i_21_n_6 ,\clock_counter_reg[20]_i_21_n_7 ,\clock_counter_reg[20]_i_26_n_4 }),
        .O({\clock_counter_reg[19]_i_21_n_4 ,\clock_counter_reg[19]_i_21_n_5 ,\clock_counter_reg[19]_i_21_n_6 ,\clock_counter_reg[19]_i_21_n_7 }),
        .S({\clock_counter[19]_i_27_n_0 ,\clock_counter[19]_i_28_n_0 ,\clock_counter[19]_i_29_n_0 ,\clock_counter[19]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[19]_i_26 
       (.CI(\clock_counter_reg[19]_i_31_n_0 ),
        .CO({\clock_counter_reg[19]_i_26_n_0 ,\clock_counter_reg[19]_i_26_n_1 ,\clock_counter_reg[19]_i_26_n_2 ,\clock_counter_reg[19]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[20]_i_26_n_5 ,\clock_counter_reg[20]_i_26_n_6 ,\clock_counter_reg[20]_i_26_n_7 ,\clock_counter_reg[20]_i_31_n_4 }),
        .O({\clock_counter_reg[19]_i_26_n_4 ,\clock_counter_reg[19]_i_26_n_5 ,\clock_counter_reg[19]_i_26_n_6 ,\clock_counter_reg[19]_i_26_n_7 }),
        .S({\clock_counter[19]_i_32_n_0 ,\clock_counter[19]_i_33_n_0 ,\clock_counter[19]_i_34_n_0 ,\clock_counter[19]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[19]_i_3 
       (.CI(\clock_counter_reg[19]_i_6_n_0 ),
        .CO({\clock_counter_reg[19]_i_3_n_0 ,\clock_counter_reg[19]_i_3_n_1 ,\clock_counter_reg[19]_i_3_n_2 ,\clock_counter_reg[19]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[20]_i_3_n_5 ,\clock_counter_reg[20]_i_3_n_6 ,\clock_counter_reg[20]_i_3_n_7 ,\clock_counter_reg[20]_i_6_n_4 }),
        .O({\clock_counter_reg[19]_i_3_n_4 ,\clock_counter_reg[19]_i_3_n_5 ,\clock_counter_reg[19]_i_3_n_6 ,\clock_counter_reg[19]_i_3_n_7 }),
        .S({\clock_counter[19]_i_7_n_0 ,\clock_counter[19]_i_8_n_0 ,\clock_counter[19]_i_9_n_0 ,\clock_counter[19]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[19]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[19]_i_31_n_0 ,\clock_counter_reg[19]_i_31_n_1 ,\clock_counter_reg[19]_i_31_n_2 ,\clock_counter_reg[19]_i_31_n_3 }),
        .CYINIT(in6[20]),
        .DI({\clock_counter_reg[20]_i_31_n_5 ,\clock_counter_reg[20]_i_31_n_6 ,\clock_counter[19]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[19]_i_31_n_4 ,\clock_counter_reg[19]_i_31_n_5 ,\clock_counter_reg[19]_i_31_n_6 ,\NLW_clock_counter_reg[19]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[19]_i_37_n_0 ,\clock_counter[19]_i_38_n_0 ,\clock_counter[19]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[19]_i_6 
       (.CI(\clock_counter_reg[19]_i_11_n_0 ),
        .CO({\clock_counter_reg[19]_i_6_n_0 ,\clock_counter_reg[19]_i_6_n_1 ,\clock_counter_reg[19]_i_6_n_2 ,\clock_counter_reg[19]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[20]_i_6_n_5 ,\clock_counter_reg[20]_i_6_n_6 ,\clock_counter_reg[20]_i_6_n_7 ,\clock_counter_reg[20]_i_11_n_4 }),
        .O({\clock_counter_reg[19]_i_6_n_4 ,\clock_counter_reg[19]_i_6_n_5 ,\clock_counter_reg[19]_i_6_n_6 ,\clock_counter_reg[19]_i_6_n_7 }),
        .S({\clock_counter[19]_i_12_n_0 ,\clock_counter[19]_i_13_n_0 ,\clock_counter[19]_i_14_n_0 ,\clock_counter[19]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[1]),
        .Q(\clock_counter_reg_n_0_[1] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[1]_i_11 
       (.CI(\clock_counter_reg[1]_i_16_n_0 ),
        .CO({\clock_counter_reg[1]_i_11_n_0 ,\clock_counter_reg[1]_i_11_n_1 ,\clock_counter_reg[1]_i_11_n_2 ,\clock_counter_reg[1]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[2]_i_11_n_5 ,\clock_counter_reg[2]_i_11_n_6 ,\clock_counter_reg[2]_i_11_n_7 ,\clock_counter_reg[2]_i_16_n_4 }),
        .O({\clock_counter_reg[1]_i_11_n_4 ,\clock_counter_reg[1]_i_11_n_5 ,\clock_counter_reg[1]_i_11_n_6 ,\clock_counter_reg[1]_i_11_n_7 }),
        .S({\clock_counter[1]_i_17_n_0 ,\clock_counter[1]_i_18_n_0 ,\clock_counter[1]_i_19_n_0 ,\clock_counter[1]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[1]_i_16 
       (.CI(\clock_counter_reg[1]_i_21_n_0 ),
        .CO({\clock_counter_reg[1]_i_16_n_0 ,\clock_counter_reg[1]_i_16_n_1 ,\clock_counter_reg[1]_i_16_n_2 ,\clock_counter_reg[1]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[2]_i_16_n_5 ,\clock_counter_reg[2]_i_16_n_6 ,\clock_counter_reg[2]_i_16_n_7 ,\clock_counter_reg[2]_i_21_n_4 }),
        .O({\clock_counter_reg[1]_i_16_n_4 ,\clock_counter_reg[1]_i_16_n_5 ,\clock_counter_reg[1]_i_16_n_6 ,\clock_counter_reg[1]_i_16_n_7 }),
        .S({\clock_counter[1]_i_22_n_0 ,\clock_counter[1]_i_23_n_0 ,\clock_counter[1]_i_24_n_0 ,\clock_counter[1]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[1]_i_2 
       (.CI(\clock_counter_reg[1]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[1]_i_2_CO_UNCONNECTED [3:2],in6[1],\clock_counter_reg[1]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[2],\clock_counter_reg[2]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[1]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[1]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[1]_i_4_n_0 ,\clock_counter[1]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[1]_i_21 
       (.CI(\clock_counter_reg[1]_i_26_n_0 ),
        .CO({\clock_counter_reg[1]_i_21_n_0 ,\clock_counter_reg[1]_i_21_n_1 ,\clock_counter_reg[1]_i_21_n_2 ,\clock_counter_reg[1]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[2]_i_21_n_5 ,\clock_counter_reg[2]_i_21_n_6 ,\clock_counter_reg[2]_i_21_n_7 ,\clock_counter_reg[2]_i_26_n_4 }),
        .O({\clock_counter_reg[1]_i_21_n_4 ,\clock_counter_reg[1]_i_21_n_5 ,\clock_counter_reg[1]_i_21_n_6 ,\clock_counter_reg[1]_i_21_n_7 }),
        .S({\clock_counter[1]_i_27_n_0 ,\clock_counter[1]_i_28_n_0 ,\clock_counter[1]_i_29_n_0 ,\clock_counter[1]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[1]_i_26 
       (.CI(\clock_counter_reg[1]_i_31_n_0 ),
        .CO({\clock_counter_reg[1]_i_26_n_0 ,\clock_counter_reg[1]_i_26_n_1 ,\clock_counter_reg[1]_i_26_n_2 ,\clock_counter_reg[1]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[2]_i_26_n_5 ,\clock_counter_reg[2]_i_26_n_6 ,\clock_counter_reg[2]_i_26_n_7 ,\clock_counter_reg[2]_i_31_n_4 }),
        .O({\clock_counter_reg[1]_i_26_n_4 ,\clock_counter_reg[1]_i_26_n_5 ,\clock_counter_reg[1]_i_26_n_6 ,\clock_counter_reg[1]_i_26_n_7 }),
        .S({\clock_counter[1]_i_32_n_0 ,\clock_counter[1]_i_33_n_0 ,\clock_counter[1]_i_34_n_0 ,\clock_counter[1]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[1]_i_3 
       (.CI(\clock_counter_reg[1]_i_6_n_0 ),
        .CO({\clock_counter_reg[1]_i_3_n_0 ,\clock_counter_reg[1]_i_3_n_1 ,\clock_counter_reg[1]_i_3_n_2 ,\clock_counter_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[2]_i_3_n_5 ,\clock_counter_reg[2]_i_3_n_6 ,\clock_counter_reg[2]_i_3_n_7 ,\clock_counter_reg[2]_i_6_n_4 }),
        .O({\clock_counter_reg[1]_i_3_n_4 ,\clock_counter_reg[1]_i_3_n_5 ,\clock_counter_reg[1]_i_3_n_6 ,\clock_counter_reg[1]_i_3_n_7 }),
        .S({\clock_counter[1]_i_7_n_0 ,\clock_counter[1]_i_8_n_0 ,\clock_counter[1]_i_9_n_0 ,\clock_counter[1]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[1]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[1]_i_31_n_0 ,\clock_counter_reg[1]_i_31_n_1 ,\clock_counter_reg[1]_i_31_n_2 ,\clock_counter_reg[1]_i_31_n_3 }),
        .CYINIT(in6[2]),
        .DI({\clock_counter_reg[2]_i_31_n_5 ,\clock_counter_reg[2]_i_31_n_6 ,\clock_counter[1]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[1]_i_31_n_4 ,\clock_counter_reg[1]_i_31_n_5 ,\clock_counter_reg[1]_i_31_n_6 ,\NLW_clock_counter_reg[1]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[1]_i_37_n_0 ,\clock_counter[1]_i_38_n_0 ,\clock_counter[1]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[1]_i_6 
       (.CI(\clock_counter_reg[1]_i_11_n_0 ),
        .CO({\clock_counter_reg[1]_i_6_n_0 ,\clock_counter_reg[1]_i_6_n_1 ,\clock_counter_reg[1]_i_6_n_2 ,\clock_counter_reg[1]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[2]_i_6_n_5 ,\clock_counter_reg[2]_i_6_n_6 ,\clock_counter_reg[2]_i_6_n_7 ,\clock_counter_reg[2]_i_11_n_4 }),
        .O({\clock_counter_reg[1]_i_6_n_4 ,\clock_counter_reg[1]_i_6_n_5 ,\clock_counter_reg[1]_i_6_n_6 ,\clock_counter_reg[1]_i_6_n_7 }),
        .S({\clock_counter[1]_i_12_n_0 ,\clock_counter[1]_i_13_n_0 ,\clock_counter[1]_i_14_n_0 ,\clock_counter[1]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[20]),
        .Q(\clock_counter_reg_n_0_[20] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[20]_i_11 
       (.CI(\clock_counter_reg[20]_i_16_n_0 ),
        .CO({\clock_counter_reg[20]_i_11_n_0 ,\clock_counter_reg[20]_i_11_n_1 ,\clock_counter_reg[20]_i_11_n_2 ,\clock_counter_reg[20]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[21]_i_11_n_5 ,\clock_counter_reg[21]_i_11_n_6 ,\clock_counter_reg[21]_i_11_n_7 ,\clock_counter_reg[21]_i_16_n_4 }),
        .O({\clock_counter_reg[20]_i_11_n_4 ,\clock_counter_reg[20]_i_11_n_5 ,\clock_counter_reg[20]_i_11_n_6 ,\clock_counter_reg[20]_i_11_n_7 }),
        .S({\clock_counter[20]_i_17_n_0 ,\clock_counter[20]_i_18_n_0 ,\clock_counter[20]_i_19_n_0 ,\clock_counter[20]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[20]_i_16 
       (.CI(\clock_counter_reg[20]_i_21_n_0 ),
        .CO({\clock_counter_reg[20]_i_16_n_0 ,\clock_counter_reg[20]_i_16_n_1 ,\clock_counter_reg[20]_i_16_n_2 ,\clock_counter_reg[20]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[21]_i_16_n_5 ,\clock_counter_reg[21]_i_16_n_6 ,\clock_counter_reg[21]_i_16_n_7 ,\clock_counter_reg[21]_i_21_n_4 }),
        .O({\clock_counter_reg[20]_i_16_n_4 ,\clock_counter_reg[20]_i_16_n_5 ,\clock_counter_reg[20]_i_16_n_6 ,\clock_counter_reg[20]_i_16_n_7 }),
        .S({\clock_counter[20]_i_22_n_0 ,\clock_counter[20]_i_23_n_0 ,\clock_counter[20]_i_24_n_0 ,\clock_counter[20]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[20]_i_2 
       (.CI(\clock_counter_reg[20]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[20]_i_2_CO_UNCONNECTED [3:2],in6[20],\clock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[21],\clock_counter_reg[21]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[20]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[20]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[20]_i_4_n_0 ,\clock_counter[20]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[20]_i_21 
       (.CI(\clock_counter_reg[20]_i_26_n_0 ),
        .CO({\clock_counter_reg[20]_i_21_n_0 ,\clock_counter_reg[20]_i_21_n_1 ,\clock_counter_reg[20]_i_21_n_2 ,\clock_counter_reg[20]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[21]_i_21_n_5 ,\clock_counter_reg[21]_i_21_n_6 ,\clock_counter_reg[21]_i_21_n_7 ,\clock_counter_reg[21]_i_26_n_4 }),
        .O({\clock_counter_reg[20]_i_21_n_4 ,\clock_counter_reg[20]_i_21_n_5 ,\clock_counter_reg[20]_i_21_n_6 ,\clock_counter_reg[20]_i_21_n_7 }),
        .S({\clock_counter[20]_i_27_n_0 ,\clock_counter[20]_i_28_n_0 ,\clock_counter[20]_i_29_n_0 ,\clock_counter[20]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[20]_i_26 
       (.CI(\clock_counter_reg[20]_i_31_n_0 ),
        .CO({\clock_counter_reg[20]_i_26_n_0 ,\clock_counter_reg[20]_i_26_n_1 ,\clock_counter_reg[20]_i_26_n_2 ,\clock_counter_reg[20]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[21]_i_26_n_5 ,\clock_counter_reg[21]_i_26_n_6 ,\clock_counter_reg[21]_i_26_n_7 ,\clock_counter_reg[21]_i_31_n_4 }),
        .O({\clock_counter_reg[20]_i_26_n_4 ,\clock_counter_reg[20]_i_26_n_5 ,\clock_counter_reg[20]_i_26_n_6 ,\clock_counter_reg[20]_i_26_n_7 }),
        .S({\clock_counter[20]_i_32_n_0 ,\clock_counter[20]_i_33_n_0 ,\clock_counter[20]_i_34_n_0 ,\clock_counter[20]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[20]_i_3 
       (.CI(\clock_counter_reg[20]_i_6_n_0 ),
        .CO({\clock_counter_reg[20]_i_3_n_0 ,\clock_counter_reg[20]_i_3_n_1 ,\clock_counter_reg[20]_i_3_n_2 ,\clock_counter_reg[20]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[21]_i_3_n_5 ,\clock_counter_reg[21]_i_3_n_6 ,\clock_counter_reg[21]_i_3_n_7 ,\clock_counter_reg[21]_i_6_n_4 }),
        .O({\clock_counter_reg[20]_i_3_n_4 ,\clock_counter_reg[20]_i_3_n_5 ,\clock_counter_reg[20]_i_3_n_6 ,\clock_counter_reg[20]_i_3_n_7 }),
        .S({\clock_counter[20]_i_7_n_0 ,\clock_counter[20]_i_8_n_0 ,\clock_counter[20]_i_9_n_0 ,\clock_counter[20]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[20]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[20]_i_31_n_0 ,\clock_counter_reg[20]_i_31_n_1 ,\clock_counter_reg[20]_i_31_n_2 ,\clock_counter_reg[20]_i_31_n_3 }),
        .CYINIT(in6[21]),
        .DI({\clock_counter_reg[21]_i_31_n_5 ,\clock_counter_reg[21]_i_31_n_6 ,1'b1,1'b0}),
        .O({\clock_counter_reg[20]_i_31_n_4 ,\clock_counter_reg[20]_i_31_n_5 ,\clock_counter_reg[20]_i_31_n_6 ,\NLW_clock_counter_reg[20]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[20]_i_36_n_0 ,\clock_counter[20]_i_37_n_0 ,\clock_counter[20]_i_38_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[20]_i_6 
       (.CI(\clock_counter_reg[20]_i_11_n_0 ),
        .CO({\clock_counter_reg[20]_i_6_n_0 ,\clock_counter_reg[20]_i_6_n_1 ,\clock_counter_reg[20]_i_6_n_2 ,\clock_counter_reg[20]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[21]_i_6_n_5 ,\clock_counter_reg[21]_i_6_n_6 ,\clock_counter_reg[21]_i_6_n_7 ,\clock_counter_reg[21]_i_11_n_4 }),
        .O({\clock_counter_reg[20]_i_6_n_4 ,\clock_counter_reg[20]_i_6_n_5 ,\clock_counter_reg[20]_i_6_n_6 ,\clock_counter_reg[20]_i_6_n_7 }),
        .S({\clock_counter[20]_i_12_n_0 ,\clock_counter[20]_i_13_n_0 ,\clock_counter[20]_i_14_n_0 ,\clock_counter[20]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[21]),
        .Q(\clock_counter_reg_n_0_[21] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[21]_i_11 
       (.CI(\clock_counter_reg[21]_i_16_n_0 ),
        .CO({\clock_counter_reg[21]_i_11_n_0 ,\clock_counter_reg[21]_i_11_n_1 ,\clock_counter_reg[21]_i_11_n_2 ,\clock_counter_reg[21]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[22]_i_11_n_5 ,\clock_counter_reg[22]_i_11_n_6 ,\clock_counter_reg[22]_i_11_n_7 ,\clock_counter_reg[22]_i_16_n_4 }),
        .O({\clock_counter_reg[21]_i_11_n_4 ,\clock_counter_reg[21]_i_11_n_5 ,\clock_counter_reg[21]_i_11_n_6 ,\clock_counter_reg[21]_i_11_n_7 }),
        .S({\clock_counter[21]_i_17_n_0 ,\clock_counter[21]_i_18_n_0 ,\clock_counter[21]_i_19_n_0 ,\clock_counter[21]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[21]_i_16 
       (.CI(\clock_counter_reg[21]_i_21_n_0 ),
        .CO({\clock_counter_reg[21]_i_16_n_0 ,\clock_counter_reg[21]_i_16_n_1 ,\clock_counter_reg[21]_i_16_n_2 ,\clock_counter_reg[21]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[22]_i_16_n_5 ,\clock_counter_reg[22]_i_16_n_6 ,\clock_counter_reg[22]_i_16_n_7 ,\clock_counter_reg[22]_i_21_n_4 }),
        .O({\clock_counter_reg[21]_i_16_n_4 ,\clock_counter_reg[21]_i_16_n_5 ,\clock_counter_reg[21]_i_16_n_6 ,\clock_counter_reg[21]_i_16_n_7 }),
        .S({\clock_counter[21]_i_22_n_0 ,\clock_counter[21]_i_23_n_0 ,\clock_counter[21]_i_24_n_0 ,\clock_counter[21]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[21]_i_2 
       (.CI(\clock_counter_reg[21]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[21]_i_2_CO_UNCONNECTED [3:2],in6[21],\clock_counter_reg[21]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[22],\clock_counter_reg[22]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[21]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[21]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[21]_i_4_n_0 ,\clock_counter[21]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[21]_i_21 
       (.CI(\clock_counter_reg[21]_i_26_n_0 ),
        .CO({\clock_counter_reg[21]_i_21_n_0 ,\clock_counter_reg[21]_i_21_n_1 ,\clock_counter_reg[21]_i_21_n_2 ,\clock_counter_reg[21]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[22]_i_21_n_5 ,\clock_counter_reg[22]_i_21_n_6 ,\clock_counter_reg[22]_i_21_n_7 ,\clock_counter_reg[22]_i_26_n_4 }),
        .O({\clock_counter_reg[21]_i_21_n_4 ,\clock_counter_reg[21]_i_21_n_5 ,\clock_counter_reg[21]_i_21_n_6 ,\clock_counter_reg[21]_i_21_n_7 }),
        .S({\clock_counter[21]_i_27_n_0 ,\clock_counter[21]_i_28_n_0 ,\clock_counter[21]_i_29_n_0 ,\clock_counter[21]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[21]_i_26 
       (.CI(\clock_counter_reg[21]_i_31_n_0 ),
        .CO({\clock_counter_reg[21]_i_26_n_0 ,\clock_counter_reg[21]_i_26_n_1 ,\clock_counter_reg[21]_i_26_n_2 ,\clock_counter_reg[21]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[22]_i_26_n_5 ,\clock_counter_reg[22]_i_26_n_6 ,\clock_counter_reg[22]_i_26_n_7 ,\clock_counter_reg[22]_i_31_n_4 }),
        .O({\clock_counter_reg[21]_i_26_n_4 ,\clock_counter_reg[21]_i_26_n_5 ,\clock_counter_reg[21]_i_26_n_6 ,\clock_counter_reg[21]_i_26_n_7 }),
        .S({\clock_counter[21]_i_32_n_0 ,\clock_counter[21]_i_33_n_0 ,\clock_counter[21]_i_34_n_0 ,\clock_counter[21]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[21]_i_3 
       (.CI(\clock_counter_reg[21]_i_6_n_0 ),
        .CO({\clock_counter_reg[21]_i_3_n_0 ,\clock_counter_reg[21]_i_3_n_1 ,\clock_counter_reg[21]_i_3_n_2 ,\clock_counter_reg[21]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[22]_i_3_n_5 ,\clock_counter_reg[22]_i_3_n_6 ,\clock_counter_reg[22]_i_3_n_7 ,\clock_counter_reg[22]_i_6_n_4 }),
        .O({\clock_counter_reg[21]_i_3_n_4 ,\clock_counter_reg[21]_i_3_n_5 ,\clock_counter_reg[21]_i_3_n_6 ,\clock_counter_reg[21]_i_3_n_7 }),
        .S({\clock_counter[21]_i_7_n_0 ,\clock_counter[21]_i_8_n_0 ,\clock_counter[21]_i_9_n_0 ,\clock_counter[21]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[21]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[21]_i_31_n_0 ,\clock_counter_reg[21]_i_31_n_1 ,\clock_counter_reg[21]_i_31_n_2 ,\clock_counter_reg[21]_i_31_n_3 }),
        .CYINIT(in6[22]),
        .DI({\clock_counter_reg[22]_i_31_n_5 ,\clock_counter_reg[22]_i_31_n_6 ,1'b1,1'b0}),
        .O({\clock_counter_reg[21]_i_31_n_4 ,\clock_counter_reg[21]_i_31_n_5 ,\clock_counter_reg[21]_i_31_n_6 ,\NLW_clock_counter_reg[21]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[21]_i_36_n_0 ,\clock_counter[21]_i_37_n_0 ,\clock_counter[21]_i_38_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[21]_i_6 
       (.CI(\clock_counter_reg[21]_i_11_n_0 ),
        .CO({\clock_counter_reg[21]_i_6_n_0 ,\clock_counter_reg[21]_i_6_n_1 ,\clock_counter_reg[21]_i_6_n_2 ,\clock_counter_reg[21]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[22]_i_6_n_5 ,\clock_counter_reg[22]_i_6_n_6 ,\clock_counter_reg[22]_i_6_n_7 ,\clock_counter_reg[22]_i_11_n_4 }),
        .O({\clock_counter_reg[21]_i_6_n_4 ,\clock_counter_reg[21]_i_6_n_5 ,\clock_counter_reg[21]_i_6_n_6 ,\clock_counter_reg[21]_i_6_n_7 }),
        .S({\clock_counter[21]_i_12_n_0 ,\clock_counter[21]_i_13_n_0 ,\clock_counter[21]_i_14_n_0 ,\clock_counter[21]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[22]),
        .Q(\clock_counter_reg_n_0_[22] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[22]_i_11 
       (.CI(\clock_counter_reg[22]_i_16_n_0 ),
        .CO({\clock_counter_reg[22]_i_11_n_0 ,\clock_counter_reg[22]_i_11_n_1 ,\clock_counter_reg[22]_i_11_n_2 ,\clock_counter_reg[22]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[23]_i_11_n_5 ,\clock_counter_reg[23]_i_11_n_6 ,\clock_counter_reg[23]_i_11_n_7 ,\clock_counter_reg[23]_i_16_n_4 }),
        .O({\clock_counter_reg[22]_i_11_n_4 ,\clock_counter_reg[22]_i_11_n_5 ,\clock_counter_reg[22]_i_11_n_6 ,\clock_counter_reg[22]_i_11_n_7 }),
        .S({\clock_counter[22]_i_17_n_0 ,\clock_counter[22]_i_18_n_0 ,\clock_counter[22]_i_19_n_0 ,\clock_counter[22]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[22]_i_16 
       (.CI(\clock_counter_reg[22]_i_21_n_0 ),
        .CO({\clock_counter_reg[22]_i_16_n_0 ,\clock_counter_reg[22]_i_16_n_1 ,\clock_counter_reg[22]_i_16_n_2 ,\clock_counter_reg[22]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[23]_i_16_n_5 ,\clock_counter_reg[23]_i_16_n_6 ,\clock_counter_reg[23]_i_16_n_7 ,\clock_counter_reg[23]_i_21_n_4 }),
        .O({\clock_counter_reg[22]_i_16_n_4 ,\clock_counter_reg[22]_i_16_n_5 ,\clock_counter_reg[22]_i_16_n_6 ,\clock_counter_reg[22]_i_16_n_7 }),
        .S({\clock_counter[22]_i_22_n_0 ,\clock_counter[22]_i_23_n_0 ,\clock_counter[22]_i_24_n_0 ,\clock_counter[22]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[22]_i_2 
       (.CI(\clock_counter_reg[22]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[22]_i_2_CO_UNCONNECTED [3:2],in6[22],\clock_counter_reg[22]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[23],\clock_counter_reg[23]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[22]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[22]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[22]_i_4_n_0 ,\clock_counter[22]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[22]_i_21 
       (.CI(\clock_counter_reg[22]_i_26_n_0 ),
        .CO({\clock_counter_reg[22]_i_21_n_0 ,\clock_counter_reg[22]_i_21_n_1 ,\clock_counter_reg[22]_i_21_n_2 ,\clock_counter_reg[22]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[23]_i_21_n_5 ,\clock_counter_reg[23]_i_21_n_6 ,\clock_counter_reg[23]_i_21_n_7 ,\clock_counter_reg[23]_i_26_n_4 }),
        .O({\clock_counter_reg[22]_i_21_n_4 ,\clock_counter_reg[22]_i_21_n_5 ,\clock_counter_reg[22]_i_21_n_6 ,\clock_counter_reg[22]_i_21_n_7 }),
        .S({\clock_counter[22]_i_27_n_0 ,\clock_counter[22]_i_28_n_0 ,\clock_counter[22]_i_29_n_0 ,\clock_counter[22]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[22]_i_26 
       (.CI(\clock_counter_reg[22]_i_31_n_0 ),
        .CO({\clock_counter_reg[22]_i_26_n_0 ,\clock_counter_reg[22]_i_26_n_1 ,\clock_counter_reg[22]_i_26_n_2 ,\clock_counter_reg[22]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[23]_i_26_n_5 ,\clock_counter_reg[23]_i_26_n_6 ,\clock_counter_reg[23]_i_26_n_7 ,\clock_counter_reg[23]_i_31_n_4 }),
        .O({\clock_counter_reg[22]_i_26_n_4 ,\clock_counter_reg[22]_i_26_n_5 ,\clock_counter_reg[22]_i_26_n_6 ,\clock_counter_reg[22]_i_26_n_7 }),
        .S({\clock_counter[22]_i_32_n_0 ,\clock_counter[22]_i_33_n_0 ,\clock_counter[22]_i_34_n_0 ,\clock_counter[22]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[22]_i_3 
       (.CI(\clock_counter_reg[22]_i_6_n_0 ),
        .CO({\clock_counter_reg[22]_i_3_n_0 ,\clock_counter_reg[22]_i_3_n_1 ,\clock_counter_reg[22]_i_3_n_2 ,\clock_counter_reg[22]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[23]_i_3_n_5 ,\clock_counter_reg[23]_i_3_n_6 ,\clock_counter_reg[23]_i_3_n_7 ,\clock_counter_reg[23]_i_6_n_4 }),
        .O({\clock_counter_reg[22]_i_3_n_4 ,\clock_counter_reg[22]_i_3_n_5 ,\clock_counter_reg[22]_i_3_n_6 ,\clock_counter_reg[22]_i_3_n_7 }),
        .S({\clock_counter[22]_i_7_n_0 ,\clock_counter[22]_i_8_n_0 ,\clock_counter[22]_i_9_n_0 ,\clock_counter[22]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[22]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[22]_i_31_n_0 ,\clock_counter_reg[22]_i_31_n_1 ,\clock_counter_reg[22]_i_31_n_2 ,\clock_counter_reg[22]_i_31_n_3 }),
        .CYINIT(in6[23]),
        .DI({\clock_counter_reg[23]_i_31_n_5 ,\clock_counter_reg[23]_i_31_n_6 ,1'b1,1'b0}),
        .O({\clock_counter_reg[22]_i_31_n_4 ,\clock_counter_reg[22]_i_31_n_5 ,\clock_counter_reg[22]_i_31_n_6 ,\NLW_clock_counter_reg[22]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[22]_i_36_n_0 ,\clock_counter[22]_i_37_n_0 ,\clock_counter[22]_i_38_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[22]_i_6 
       (.CI(\clock_counter_reg[22]_i_11_n_0 ),
        .CO({\clock_counter_reg[22]_i_6_n_0 ,\clock_counter_reg[22]_i_6_n_1 ,\clock_counter_reg[22]_i_6_n_2 ,\clock_counter_reg[22]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[23]_i_6_n_5 ,\clock_counter_reg[23]_i_6_n_6 ,\clock_counter_reg[23]_i_6_n_7 ,\clock_counter_reg[23]_i_11_n_4 }),
        .O({\clock_counter_reg[22]_i_6_n_4 ,\clock_counter_reg[22]_i_6_n_5 ,\clock_counter_reg[22]_i_6_n_6 ,\clock_counter_reg[22]_i_6_n_7 }),
        .S({\clock_counter[22]_i_12_n_0 ,\clock_counter[22]_i_13_n_0 ,\clock_counter[22]_i_14_n_0 ,\clock_counter[22]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[23]),
        .Q(\clock_counter_reg_n_0_[23] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[23]_i_11 
       (.CI(\clock_counter_reg[23]_i_16_n_0 ),
        .CO({\clock_counter_reg[23]_i_11_n_0 ,\clock_counter_reg[23]_i_11_n_1 ,\clock_counter_reg[23]_i_11_n_2 ,\clock_counter_reg[23]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[24]_i_11_n_5 ,\clock_counter_reg[24]_i_11_n_6 ,\clock_counter_reg[24]_i_11_n_7 ,\clock_counter_reg[24]_i_16_n_4 }),
        .O({\clock_counter_reg[23]_i_11_n_4 ,\clock_counter_reg[23]_i_11_n_5 ,\clock_counter_reg[23]_i_11_n_6 ,\clock_counter_reg[23]_i_11_n_7 }),
        .S({\clock_counter[23]_i_17_n_0 ,\clock_counter[23]_i_18_n_0 ,\clock_counter[23]_i_19_n_0 ,\clock_counter[23]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[23]_i_16 
       (.CI(\clock_counter_reg[23]_i_21_n_0 ),
        .CO({\clock_counter_reg[23]_i_16_n_0 ,\clock_counter_reg[23]_i_16_n_1 ,\clock_counter_reg[23]_i_16_n_2 ,\clock_counter_reg[23]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[24]_i_16_n_5 ,\clock_counter_reg[24]_i_16_n_6 ,\clock_counter_reg[24]_i_16_n_7 ,\clock_counter_reg[24]_i_21_n_4 }),
        .O({\clock_counter_reg[23]_i_16_n_4 ,\clock_counter_reg[23]_i_16_n_5 ,\clock_counter_reg[23]_i_16_n_6 ,\clock_counter_reg[23]_i_16_n_7 }),
        .S({\clock_counter[23]_i_22_n_0 ,\clock_counter[23]_i_23_n_0 ,\clock_counter[23]_i_24_n_0 ,\clock_counter[23]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[23]_i_2 
       (.CI(\clock_counter_reg[23]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[23]_i_2_CO_UNCONNECTED [3:2],in6[23],\clock_counter_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[24],\clock_counter_reg[24]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[23]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[23]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[23]_i_4_n_0 ,\clock_counter[23]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[23]_i_21 
       (.CI(\clock_counter_reg[23]_i_26_n_0 ),
        .CO({\clock_counter_reg[23]_i_21_n_0 ,\clock_counter_reg[23]_i_21_n_1 ,\clock_counter_reg[23]_i_21_n_2 ,\clock_counter_reg[23]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[24]_i_21_n_5 ,\clock_counter_reg[24]_i_21_n_6 ,\clock_counter_reg[24]_i_21_n_7 ,\clock_counter_reg[24]_i_26_n_4 }),
        .O({\clock_counter_reg[23]_i_21_n_4 ,\clock_counter_reg[23]_i_21_n_5 ,\clock_counter_reg[23]_i_21_n_6 ,\clock_counter_reg[23]_i_21_n_7 }),
        .S({\clock_counter[23]_i_27_n_0 ,\clock_counter[23]_i_28_n_0 ,\clock_counter[23]_i_29_n_0 ,\clock_counter[23]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[23]_i_26 
       (.CI(\clock_counter_reg[23]_i_31_n_0 ),
        .CO({\clock_counter_reg[23]_i_26_n_0 ,\clock_counter_reg[23]_i_26_n_1 ,\clock_counter_reg[23]_i_26_n_2 ,\clock_counter_reg[23]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[24]_i_26_n_5 ,\clock_counter_reg[24]_i_26_n_6 ,\clock_counter_reg[24]_i_26_n_7 ,\clock_counter_reg[24]_i_31_n_4 }),
        .O({\clock_counter_reg[23]_i_26_n_4 ,\clock_counter_reg[23]_i_26_n_5 ,\clock_counter_reg[23]_i_26_n_6 ,\clock_counter_reg[23]_i_26_n_7 }),
        .S({\clock_counter[23]_i_32_n_0 ,\clock_counter[23]_i_33_n_0 ,\clock_counter[23]_i_34_n_0 ,\clock_counter[23]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[23]_i_3 
       (.CI(\clock_counter_reg[23]_i_6_n_0 ),
        .CO({\clock_counter_reg[23]_i_3_n_0 ,\clock_counter_reg[23]_i_3_n_1 ,\clock_counter_reg[23]_i_3_n_2 ,\clock_counter_reg[23]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[24]_i_3_n_5 ,\clock_counter_reg[24]_i_3_n_6 ,\clock_counter_reg[24]_i_3_n_7 ,\clock_counter_reg[24]_i_6_n_4 }),
        .O({\clock_counter_reg[23]_i_3_n_4 ,\clock_counter_reg[23]_i_3_n_5 ,\clock_counter_reg[23]_i_3_n_6 ,\clock_counter_reg[23]_i_3_n_7 }),
        .S({\clock_counter[23]_i_7_n_0 ,\clock_counter[23]_i_8_n_0 ,\clock_counter[23]_i_9_n_0 ,\clock_counter[23]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[23]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[23]_i_31_n_0 ,\clock_counter_reg[23]_i_31_n_1 ,\clock_counter_reg[23]_i_31_n_2 ,\clock_counter_reg[23]_i_31_n_3 }),
        .CYINIT(in6[24]),
        .DI({\clock_counter_reg[24]_i_31_n_5 ,\clock_counter_reg[24]_i_31_n_6 ,1'b1,1'b0}),
        .O({\clock_counter_reg[23]_i_31_n_4 ,\clock_counter_reg[23]_i_31_n_5 ,\clock_counter_reg[23]_i_31_n_6 ,\NLW_clock_counter_reg[23]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[23]_i_36_n_0 ,\clock_counter[23]_i_37_n_0 ,\clock_counter[23]_i_38_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[23]_i_6 
       (.CI(\clock_counter_reg[23]_i_11_n_0 ),
        .CO({\clock_counter_reg[23]_i_6_n_0 ,\clock_counter_reg[23]_i_6_n_1 ,\clock_counter_reg[23]_i_6_n_2 ,\clock_counter_reg[23]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[24]_i_6_n_5 ,\clock_counter_reg[24]_i_6_n_6 ,\clock_counter_reg[24]_i_6_n_7 ,\clock_counter_reg[24]_i_11_n_4 }),
        .O({\clock_counter_reg[23]_i_6_n_4 ,\clock_counter_reg[23]_i_6_n_5 ,\clock_counter_reg[23]_i_6_n_6 ,\clock_counter_reg[23]_i_6_n_7 }),
        .S({\clock_counter[23]_i_12_n_0 ,\clock_counter[23]_i_13_n_0 ,\clock_counter[23]_i_14_n_0 ,\clock_counter[23]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[24] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[24]),
        .Q(\clock_counter_reg_n_0_[24] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[24]_i_11 
       (.CI(\clock_counter_reg[24]_i_16_n_0 ),
        .CO({\clock_counter_reg[24]_i_11_n_0 ,\clock_counter_reg[24]_i_11_n_1 ,\clock_counter_reg[24]_i_11_n_2 ,\clock_counter_reg[24]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[25]_i_11_n_5 ,\clock_counter_reg[25]_i_11_n_6 ,\clock_counter_reg[25]_i_11_n_7 ,\clock_counter_reg[25]_i_16_n_4 }),
        .O({\clock_counter_reg[24]_i_11_n_4 ,\clock_counter_reg[24]_i_11_n_5 ,\clock_counter_reg[24]_i_11_n_6 ,\clock_counter_reg[24]_i_11_n_7 }),
        .S({\clock_counter[24]_i_17_n_0 ,\clock_counter[24]_i_18_n_0 ,\clock_counter[24]_i_19_n_0 ,\clock_counter[24]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[24]_i_16 
       (.CI(\clock_counter_reg[24]_i_21_n_0 ),
        .CO({\clock_counter_reg[24]_i_16_n_0 ,\clock_counter_reg[24]_i_16_n_1 ,\clock_counter_reg[24]_i_16_n_2 ,\clock_counter_reg[24]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[25]_i_16_n_5 ,\clock_counter_reg[25]_i_16_n_6 ,\clock_counter_reg[25]_i_16_n_7 ,\clock_counter_reg[25]_i_21_n_4 }),
        .O({\clock_counter_reg[24]_i_16_n_4 ,\clock_counter_reg[24]_i_16_n_5 ,\clock_counter_reg[24]_i_16_n_6 ,\clock_counter_reg[24]_i_16_n_7 }),
        .S({\clock_counter[24]_i_22_n_0 ,\clock_counter[24]_i_23_n_0 ,\clock_counter[24]_i_24_n_0 ,\clock_counter[24]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[24]_i_2 
       (.CI(\clock_counter_reg[24]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[24]_i_2_CO_UNCONNECTED [3:2],in6[24],\clock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[25],\clock_counter_reg[25]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[24]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[24]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[24]_i_4_n_0 ,\clock_counter[24]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[24]_i_21 
       (.CI(\clock_counter_reg[24]_i_26_n_0 ),
        .CO({\clock_counter_reg[24]_i_21_n_0 ,\clock_counter_reg[24]_i_21_n_1 ,\clock_counter_reg[24]_i_21_n_2 ,\clock_counter_reg[24]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[25]_i_21_n_5 ,\clock_counter_reg[25]_i_21_n_6 ,\clock_counter_reg[25]_i_21_n_7 ,\clock_counter_reg[25]_i_26_n_4 }),
        .O({\clock_counter_reg[24]_i_21_n_4 ,\clock_counter_reg[24]_i_21_n_5 ,\clock_counter_reg[24]_i_21_n_6 ,\clock_counter_reg[24]_i_21_n_7 }),
        .S({\clock_counter[24]_i_27_n_0 ,\clock_counter[24]_i_28_n_0 ,\clock_counter[24]_i_29_n_0 ,\clock_counter[24]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[24]_i_26 
       (.CI(\clock_counter_reg[24]_i_31_n_0 ),
        .CO({\clock_counter_reg[24]_i_26_n_0 ,\clock_counter_reg[24]_i_26_n_1 ,\clock_counter_reg[24]_i_26_n_2 ,\clock_counter_reg[24]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[25]_i_26_n_5 ,\clock_counter_reg[25]_i_26_n_6 ,\clock_counter_reg[25]_i_26_n_7 ,\clock_counter_reg[25]_i_31_n_4 }),
        .O({\clock_counter_reg[24]_i_26_n_4 ,\clock_counter_reg[24]_i_26_n_5 ,\clock_counter_reg[24]_i_26_n_6 ,\clock_counter_reg[24]_i_26_n_7 }),
        .S({\clock_counter[24]_i_32_n_0 ,\clock_counter[24]_i_33_n_0 ,\clock_counter[24]_i_34_n_0 ,\clock_counter[24]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[24]_i_3 
       (.CI(\clock_counter_reg[24]_i_6_n_0 ),
        .CO({\clock_counter_reg[24]_i_3_n_0 ,\clock_counter_reg[24]_i_3_n_1 ,\clock_counter_reg[24]_i_3_n_2 ,\clock_counter_reg[24]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[25]_i_3_n_5 ,\clock_counter_reg[25]_i_3_n_6 ,\clock_counter_reg[25]_i_3_n_7 ,\clock_counter_reg[25]_i_6_n_4 }),
        .O({\clock_counter_reg[24]_i_3_n_4 ,\clock_counter_reg[24]_i_3_n_5 ,\clock_counter_reg[24]_i_3_n_6 ,\clock_counter_reg[24]_i_3_n_7 }),
        .S({\clock_counter[24]_i_7_n_0 ,\clock_counter[24]_i_8_n_0 ,\clock_counter[24]_i_9_n_0 ,\clock_counter[24]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[24]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[24]_i_31_n_0 ,\clock_counter_reg[24]_i_31_n_1 ,\clock_counter_reg[24]_i_31_n_2 ,\clock_counter_reg[24]_i_31_n_3 }),
        .CYINIT(in6[25]),
        .DI({\clock_counter_reg[25]_i_31_n_5 ,\clock_counter_reg[25]_i_31_n_6 ,1'b1,1'b0}),
        .O({\clock_counter_reg[24]_i_31_n_4 ,\clock_counter_reg[24]_i_31_n_5 ,\clock_counter_reg[24]_i_31_n_6 ,\NLW_clock_counter_reg[24]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[24]_i_36_n_0 ,\clock_counter[24]_i_37_n_0 ,\clock_counter[24]_i_38_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[24]_i_6 
       (.CI(\clock_counter_reg[24]_i_11_n_0 ),
        .CO({\clock_counter_reg[24]_i_6_n_0 ,\clock_counter_reg[24]_i_6_n_1 ,\clock_counter_reg[24]_i_6_n_2 ,\clock_counter_reg[24]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[25]_i_6_n_5 ,\clock_counter_reg[25]_i_6_n_6 ,\clock_counter_reg[25]_i_6_n_7 ,\clock_counter_reg[25]_i_11_n_4 }),
        .O({\clock_counter_reg[24]_i_6_n_4 ,\clock_counter_reg[24]_i_6_n_5 ,\clock_counter_reg[24]_i_6_n_6 ,\clock_counter_reg[24]_i_6_n_7 }),
        .S({\clock_counter[24]_i_12_n_0 ,\clock_counter[24]_i_13_n_0 ,\clock_counter[24]_i_14_n_0 ,\clock_counter[24]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[25] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[25]),
        .Q(\clock_counter_reg_n_0_[25] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[25]_i_11 
       (.CI(\clock_counter_reg[25]_i_16_n_0 ),
        .CO({\clock_counter_reg[25]_i_11_n_0 ,\clock_counter_reg[25]_i_11_n_1 ,\clock_counter_reg[25]_i_11_n_2 ,\clock_counter_reg[25]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[26]_i_13_n_6 ,\clock_counter_reg[26]_i_13_n_7 ,\clock_counter_reg[26]_i_22_n_4 ,\clock_counter_reg[26]_i_22_n_5 }),
        .O({\clock_counter_reg[25]_i_11_n_4 ,\clock_counter_reg[25]_i_11_n_5 ,\clock_counter_reg[25]_i_11_n_6 ,\clock_counter_reg[25]_i_11_n_7 }),
        .S({\clock_counter[25]_i_17_n_0 ,\clock_counter[25]_i_18_n_0 ,\clock_counter[25]_i_19_n_0 ,\clock_counter[25]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[25]_i_16 
       (.CI(\clock_counter_reg[25]_i_21_n_0 ),
        .CO({\clock_counter_reg[25]_i_16_n_0 ,\clock_counter_reg[25]_i_16_n_1 ,\clock_counter_reg[25]_i_16_n_2 ,\clock_counter_reg[25]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[26]_i_22_n_6 ,\clock_counter_reg[26]_i_22_n_7 ,\clock_counter_reg[26]_i_31_n_4 ,\clock_counter_reg[26]_i_31_n_5 }),
        .O({\clock_counter_reg[25]_i_16_n_4 ,\clock_counter_reg[25]_i_16_n_5 ,\clock_counter_reg[25]_i_16_n_6 ,\clock_counter_reg[25]_i_16_n_7 }),
        .S({\clock_counter[25]_i_22_n_0 ,\clock_counter[25]_i_23_n_0 ,\clock_counter[25]_i_24_n_0 ,\clock_counter[25]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[25]_i_2 
       (.CI(\clock_counter_reg[25]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[25]_i_2_CO_UNCONNECTED [3:2],in6[25],\clock_counter_reg[25]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[26],\clock_counter_reg[26]_i_3_n_5 }),
        .O({\NLW_clock_counter_reg[25]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[25]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[25]_i_4_n_0 ,\clock_counter[25]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[25]_i_21 
       (.CI(\clock_counter_reg[25]_i_26_n_0 ),
        .CO({\clock_counter_reg[25]_i_21_n_0 ,\clock_counter_reg[25]_i_21_n_1 ,\clock_counter_reg[25]_i_21_n_2 ,\clock_counter_reg[25]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[26]_i_31_n_6 ,\clock_counter_reg[26]_i_31_n_7 ,\clock_counter_reg[26]_i_40_n_4 ,\clock_counter_reg[26]_i_40_n_5 }),
        .O({\clock_counter_reg[25]_i_21_n_4 ,\clock_counter_reg[25]_i_21_n_5 ,\clock_counter_reg[25]_i_21_n_6 ,\clock_counter_reg[25]_i_21_n_7 }),
        .S({\clock_counter[25]_i_27_n_0 ,\clock_counter[25]_i_28_n_0 ,\clock_counter[25]_i_29_n_0 ,\clock_counter[25]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[25]_i_26 
       (.CI(\clock_counter_reg[25]_i_31_n_0 ),
        .CO({\clock_counter_reg[25]_i_26_n_0 ,\clock_counter_reg[25]_i_26_n_1 ,\clock_counter_reg[25]_i_26_n_2 ,\clock_counter_reg[25]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[26]_i_40_n_6 ,\clock_counter_reg[26]_i_40_n_7 ,\clock_counter_reg[26]_i_49_n_4 ,\clock_counter_reg[26]_i_49_n_5 }),
        .O({\clock_counter_reg[25]_i_26_n_4 ,\clock_counter_reg[25]_i_26_n_5 ,\clock_counter_reg[25]_i_26_n_6 ,\clock_counter_reg[25]_i_26_n_7 }),
        .S({\clock_counter[25]_i_32_n_0 ,\clock_counter[25]_i_33_n_0 ,\clock_counter[25]_i_34_n_0 ,\clock_counter[25]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[25]_i_3 
       (.CI(\clock_counter_reg[25]_i_6_n_0 ),
        .CO({\clock_counter_reg[25]_i_3_n_0 ,\clock_counter_reg[25]_i_3_n_1 ,\clock_counter_reg[25]_i_3_n_2 ,\clock_counter_reg[25]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[26]_i_3_n_6 ,\clock_counter_reg[26]_i_3_n_7 ,\clock_counter_reg[26]_i_4_n_4 ,\clock_counter_reg[26]_i_4_n_5 }),
        .O({\clock_counter_reg[25]_i_3_n_4 ,\clock_counter_reg[25]_i_3_n_5 ,\clock_counter_reg[25]_i_3_n_6 ,\clock_counter_reg[25]_i_3_n_7 }),
        .S({\clock_counter[25]_i_7_n_0 ,\clock_counter[25]_i_8_n_0 ,\clock_counter[25]_i_9_n_0 ,\clock_counter[25]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[25]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[25]_i_31_n_0 ,\clock_counter_reg[25]_i_31_n_1 ,\clock_counter_reg[25]_i_31_n_2 ,\clock_counter_reg[25]_i_31_n_3 }),
        .CYINIT(in6[26]),
        .DI({\clock_counter_reg[26]_i_49_n_6 ,\clock_counter_reg[26]_i_49_n_7 ,\clock_counter[25]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[25]_i_31_n_4 ,\clock_counter_reg[25]_i_31_n_5 ,\clock_counter_reg[25]_i_31_n_6 ,\NLW_clock_counter_reg[25]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[25]_i_37_n_0 ,\clock_counter[25]_i_38_n_0 ,\clock_counter[25]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[25]_i_6 
       (.CI(\clock_counter_reg[25]_i_11_n_0 ),
        .CO({\clock_counter_reg[25]_i_6_n_0 ,\clock_counter_reg[25]_i_6_n_1 ,\clock_counter_reg[25]_i_6_n_2 ,\clock_counter_reg[25]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[26]_i_4_n_6 ,\clock_counter_reg[26]_i_4_n_7 ,\clock_counter_reg[26]_i_13_n_4 ,\clock_counter_reg[26]_i_13_n_5 }),
        .O({\clock_counter_reg[25]_i_6_n_4 ,\clock_counter_reg[25]_i_6_n_5 ,\clock_counter_reg[25]_i_6_n_6 ,\clock_counter_reg[25]_i_6_n_7 }),
        .S({\clock_counter[25]_i_12_n_0 ,\clock_counter[25]_i_13_n_0 ,\clock_counter[25]_i_14_n_0 ,\clock_counter[25]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[26] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[26]),
        .Q(\clock_counter_reg_n_0_[26] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[26]_i_13 
       (.CI(\clock_counter_reg[26]_i_22_n_0 ),
        .CO({\clock_counter_reg[26]_i_13_n_0 ,\clock_counter_reg[26]_i_13_n_1 ,\clock_counter_reg[26]_i_13_n_2 ,\clock_counter_reg[26]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter[26]_i_23_n_0 ,\clock_counter[26]_i_24_n_0 ,\clock_counter[26]_i_25_n_0 ,\clock_counter[26]_i_26_n_0 }),
        .O({\clock_counter_reg[26]_i_13_n_4 ,\clock_counter_reg[26]_i_13_n_5 ,\clock_counter_reg[26]_i_13_n_6 ,\clock_counter_reg[26]_i_13_n_7 }),
        .S({\clock_counter[26]_i_27_n_0 ,\clock_counter[26]_i_28_n_0 ,\clock_counter[26]_i_29_n_0 ,\clock_counter[26]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[26]_i_2 
       (.CI(\clock_counter_reg[26]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[26]_i_2_CO_UNCONNECTED [3:1],in6[26]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_clock_counter_reg[26]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \clock_counter_reg[26]_i_22 
       (.CI(\clock_counter_reg[26]_i_31_n_0 ),
        .CO({\clock_counter_reg[26]_i_22_n_0 ,\clock_counter_reg[26]_i_22_n_1 ,\clock_counter_reg[26]_i_22_n_2 ,\clock_counter_reg[26]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter[26]_i_32_n_0 ,\clock_counter[26]_i_33_n_0 ,\clock_counter[26]_i_34_n_0 ,\clock_counter[26]_i_35_n_0 }),
        .O({\clock_counter_reg[26]_i_22_n_4 ,\clock_counter_reg[26]_i_22_n_5 ,\clock_counter_reg[26]_i_22_n_6 ,\clock_counter_reg[26]_i_22_n_7 }),
        .S({\clock_counter[26]_i_36_n_0 ,\clock_counter[26]_i_37_n_0 ,\clock_counter[26]_i_38_n_0 ,\clock_counter[26]_i_39_n_0 }));
  CARRY4 \clock_counter_reg[26]_i_3 
       (.CI(\clock_counter_reg[26]_i_4_n_0 ),
        .CO({\clock_counter_reg[26]_i_3_n_0 ,\clock_counter_reg[26]_i_3_n_1 ,\clock_counter_reg[26]_i_3_n_2 ,\clock_counter_reg[26]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter[26]_i_5_n_0 ,\clock_counter[26]_i_6_n_0 ,\clock_counter[26]_i_7_n_0 ,\clock_counter[26]_i_8_n_0 }),
        .O({\clock_counter_reg[26]_i_3_n_4 ,\clock_counter_reg[26]_i_3_n_5 ,\clock_counter_reg[26]_i_3_n_6 ,\clock_counter_reg[26]_i_3_n_7 }),
        .S({\clock_counter[26]_i_9_n_0 ,\clock_counter[26]_i_10_n_0 ,\clock_counter[26]_i_11_n_0 ,\clock_counter[26]_i_12_n_0 }));
  CARRY4 \clock_counter_reg[26]_i_31 
       (.CI(\clock_counter_reg[26]_i_40_n_0 ),
        .CO({\clock_counter_reg[26]_i_31_n_0 ,\clock_counter_reg[26]_i_31_n_1 ,\clock_counter_reg[26]_i_31_n_2 ,\clock_counter_reg[26]_i_31_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter[26]_i_41_n_0 ,\clock_counter[26]_i_42_n_0 ,\clock_counter[26]_i_43_n_0 ,\clock_counter[26]_i_44_n_0 }),
        .O({\clock_counter_reg[26]_i_31_n_4 ,\clock_counter_reg[26]_i_31_n_5 ,\clock_counter_reg[26]_i_31_n_6 ,\clock_counter_reg[26]_i_31_n_7 }),
        .S({\clock_counter[26]_i_45_n_0 ,\clock_counter[26]_i_46_n_0 ,\clock_counter[26]_i_47_n_0 ,\clock_counter[26]_i_48_n_0 }));
  CARRY4 \clock_counter_reg[26]_i_4 
       (.CI(\clock_counter_reg[26]_i_13_n_0 ),
        .CO({\clock_counter_reg[26]_i_4_n_0 ,\clock_counter_reg[26]_i_4_n_1 ,\clock_counter_reg[26]_i_4_n_2 ,\clock_counter_reg[26]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter[26]_i_14_n_0 ,\clock_counter[26]_i_15_n_0 ,\clock_counter[26]_i_16_n_0 ,\clock_counter[26]_i_17_n_0 }),
        .O({\clock_counter_reg[26]_i_4_n_4 ,\clock_counter_reg[26]_i_4_n_5 ,\clock_counter_reg[26]_i_4_n_6 ,\clock_counter_reg[26]_i_4_n_7 }),
        .S({\clock_counter[26]_i_18_n_0 ,\clock_counter[26]_i_19_n_0 ,\clock_counter[26]_i_20_n_0 ,\clock_counter[26]_i_21_n_0 }));
  CARRY4 \clock_counter_reg[26]_i_40 
       (.CI(\clock_counter_reg[26]_i_49_n_0 ),
        .CO({\clock_counter_reg[26]_i_40_n_0 ,\clock_counter_reg[26]_i_40_n_1 ,\clock_counter_reg[26]_i_40_n_2 ,\clock_counter_reg[26]_i_40_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter[26]_i_50_n_0 ,\clock_counter[26]_i_51_n_0 ,\clock_counter[26]_i_52_n_0 ,\clock_counter[26]_i_53_n_0 }),
        .O({\clock_counter_reg[26]_i_40_n_4 ,\clock_counter_reg[26]_i_40_n_5 ,\clock_counter_reg[26]_i_40_n_6 ,\clock_counter_reg[26]_i_40_n_7 }),
        .S({\clock_counter[26]_i_54_n_0 ,\clock_counter[26]_i_55_n_0 ,\clock_counter[26]_i_56_n_0 ,\clock_counter[26]_i_57_n_0 }));
  CARRY4 \clock_counter_reg[26]_i_49 
       (.CI(1'b0),
        .CO({\clock_counter_reg[26]_i_49_n_0 ,\clock_counter_reg[26]_i_49_n_1 ,\clock_counter_reg[26]_i_49_n_2 ,\clock_counter_reg[26]_i_49_n_3 }),
        .CYINIT(1'b1),
        .DI({\clock_counter[26]_i_58_n_0 ,\clock_counter[26]_i_59_n_0 ,\clock_counter[26]_i_60_n_0 ,\clock_counter[26]_i_61_n_0 }),
        .O({\clock_counter_reg[26]_i_49_n_4 ,\clock_counter_reg[26]_i_49_n_5 ,\clock_counter_reg[26]_i_49_n_6 ,\clock_counter_reg[26]_i_49_n_7 }),
        .S({\clock_counter[26]_i_62_n_0 ,\clock_counter[26]_i_63_n_0 ,\clock_counter[26]_i_64_n_0 ,signal_frequency[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[27] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\clock_counter[27]_i_1_n_0 ),
        .Q(\clock_counter_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[2]),
        .Q(\clock_counter_reg_n_0_[2] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[2]_i_11 
       (.CI(\clock_counter_reg[2]_i_16_n_0 ),
        .CO({\clock_counter_reg[2]_i_11_n_0 ,\clock_counter_reg[2]_i_11_n_1 ,\clock_counter_reg[2]_i_11_n_2 ,\clock_counter_reg[2]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[3]_i_11_n_5 ,\clock_counter_reg[3]_i_11_n_6 ,\clock_counter_reg[3]_i_11_n_7 ,\clock_counter_reg[3]_i_16_n_4 }),
        .O({\clock_counter_reg[2]_i_11_n_4 ,\clock_counter_reg[2]_i_11_n_5 ,\clock_counter_reg[2]_i_11_n_6 ,\clock_counter_reg[2]_i_11_n_7 }),
        .S({\clock_counter[2]_i_17_n_0 ,\clock_counter[2]_i_18_n_0 ,\clock_counter[2]_i_19_n_0 ,\clock_counter[2]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[2]_i_16 
       (.CI(\clock_counter_reg[2]_i_21_n_0 ),
        .CO({\clock_counter_reg[2]_i_16_n_0 ,\clock_counter_reg[2]_i_16_n_1 ,\clock_counter_reg[2]_i_16_n_2 ,\clock_counter_reg[2]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[3]_i_16_n_5 ,\clock_counter_reg[3]_i_16_n_6 ,\clock_counter_reg[3]_i_16_n_7 ,\clock_counter_reg[3]_i_21_n_4 }),
        .O({\clock_counter_reg[2]_i_16_n_4 ,\clock_counter_reg[2]_i_16_n_5 ,\clock_counter_reg[2]_i_16_n_6 ,\clock_counter_reg[2]_i_16_n_7 }),
        .S({\clock_counter[2]_i_22_n_0 ,\clock_counter[2]_i_23_n_0 ,\clock_counter[2]_i_24_n_0 ,\clock_counter[2]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[2]_i_2 
       (.CI(\clock_counter_reg[2]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[2]_i_2_CO_UNCONNECTED [3:2],in6[2],\clock_counter_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[3],\clock_counter_reg[3]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[2]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[2]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[2]_i_4_n_0 ,\clock_counter[2]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[2]_i_21 
       (.CI(\clock_counter_reg[2]_i_26_n_0 ),
        .CO({\clock_counter_reg[2]_i_21_n_0 ,\clock_counter_reg[2]_i_21_n_1 ,\clock_counter_reg[2]_i_21_n_2 ,\clock_counter_reg[2]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[3]_i_21_n_5 ,\clock_counter_reg[3]_i_21_n_6 ,\clock_counter_reg[3]_i_21_n_7 ,\clock_counter_reg[3]_i_26_n_4 }),
        .O({\clock_counter_reg[2]_i_21_n_4 ,\clock_counter_reg[2]_i_21_n_5 ,\clock_counter_reg[2]_i_21_n_6 ,\clock_counter_reg[2]_i_21_n_7 }),
        .S({\clock_counter[2]_i_27_n_0 ,\clock_counter[2]_i_28_n_0 ,\clock_counter[2]_i_29_n_0 ,\clock_counter[2]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[2]_i_26 
       (.CI(\clock_counter_reg[2]_i_31_n_0 ),
        .CO({\clock_counter_reg[2]_i_26_n_0 ,\clock_counter_reg[2]_i_26_n_1 ,\clock_counter_reg[2]_i_26_n_2 ,\clock_counter_reg[2]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[3]_i_26_n_5 ,\clock_counter_reg[3]_i_26_n_6 ,\clock_counter_reg[3]_i_26_n_7 ,\clock_counter_reg[3]_i_31_n_4 }),
        .O({\clock_counter_reg[2]_i_26_n_4 ,\clock_counter_reg[2]_i_26_n_5 ,\clock_counter_reg[2]_i_26_n_6 ,\clock_counter_reg[2]_i_26_n_7 }),
        .S({\clock_counter[2]_i_32_n_0 ,\clock_counter[2]_i_33_n_0 ,\clock_counter[2]_i_34_n_0 ,\clock_counter[2]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[2]_i_3 
       (.CI(\clock_counter_reg[2]_i_6_n_0 ),
        .CO({\clock_counter_reg[2]_i_3_n_0 ,\clock_counter_reg[2]_i_3_n_1 ,\clock_counter_reg[2]_i_3_n_2 ,\clock_counter_reg[2]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[3]_i_3_n_5 ,\clock_counter_reg[3]_i_3_n_6 ,\clock_counter_reg[3]_i_3_n_7 ,\clock_counter_reg[3]_i_6_n_4 }),
        .O({\clock_counter_reg[2]_i_3_n_4 ,\clock_counter_reg[2]_i_3_n_5 ,\clock_counter_reg[2]_i_3_n_6 ,\clock_counter_reg[2]_i_3_n_7 }),
        .S({\clock_counter[2]_i_7_n_0 ,\clock_counter[2]_i_8_n_0 ,\clock_counter[2]_i_9_n_0 ,\clock_counter[2]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[2]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[2]_i_31_n_0 ,\clock_counter_reg[2]_i_31_n_1 ,\clock_counter_reg[2]_i_31_n_2 ,\clock_counter_reg[2]_i_31_n_3 }),
        .CYINIT(in6[3]),
        .DI({\clock_counter_reg[3]_i_31_n_5 ,\clock_counter_reg[3]_i_31_n_6 ,\clock_counter[2]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[2]_i_31_n_4 ,\clock_counter_reg[2]_i_31_n_5 ,\clock_counter_reg[2]_i_31_n_6 ,\NLW_clock_counter_reg[2]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[2]_i_37_n_0 ,\clock_counter[2]_i_38_n_0 ,\clock_counter[2]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[2]_i_6 
       (.CI(\clock_counter_reg[2]_i_11_n_0 ),
        .CO({\clock_counter_reg[2]_i_6_n_0 ,\clock_counter_reg[2]_i_6_n_1 ,\clock_counter_reg[2]_i_6_n_2 ,\clock_counter_reg[2]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[3]_i_6_n_5 ,\clock_counter_reg[3]_i_6_n_6 ,\clock_counter_reg[3]_i_6_n_7 ,\clock_counter_reg[3]_i_11_n_4 }),
        .O({\clock_counter_reg[2]_i_6_n_4 ,\clock_counter_reg[2]_i_6_n_5 ,\clock_counter_reg[2]_i_6_n_6 ,\clock_counter_reg[2]_i_6_n_7 }),
        .S({\clock_counter[2]_i_12_n_0 ,\clock_counter[2]_i_13_n_0 ,\clock_counter[2]_i_14_n_0 ,\clock_counter[2]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[3]),
        .Q(\clock_counter_reg_n_0_[3] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[3]_i_11 
       (.CI(\clock_counter_reg[3]_i_16_n_0 ),
        .CO({\clock_counter_reg[3]_i_11_n_0 ,\clock_counter_reg[3]_i_11_n_1 ,\clock_counter_reg[3]_i_11_n_2 ,\clock_counter_reg[3]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[4]_i_11_n_5 ,\clock_counter_reg[4]_i_11_n_6 ,\clock_counter_reg[4]_i_11_n_7 ,\clock_counter_reg[4]_i_16_n_4 }),
        .O({\clock_counter_reg[3]_i_11_n_4 ,\clock_counter_reg[3]_i_11_n_5 ,\clock_counter_reg[3]_i_11_n_6 ,\clock_counter_reg[3]_i_11_n_7 }),
        .S({\clock_counter[3]_i_17_n_0 ,\clock_counter[3]_i_18_n_0 ,\clock_counter[3]_i_19_n_0 ,\clock_counter[3]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[3]_i_16 
       (.CI(\clock_counter_reg[3]_i_21_n_0 ),
        .CO({\clock_counter_reg[3]_i_16_n_0 ,\clock_counter_reg[3]_i_16_n_1 ,\clock_counter_reg[3]_i_16_n_2 ,\clock_counter_reg[3]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[4]_i_16_n_5 ,\clock_counter_reg[4]_i_16_n_6 ,\clock_counter_reg[4]_i_16_n_7 ,\clock_counter_reg[4]_i_21_n_4 }),
        .O({\clock_counter_reg[3]_i_16_n_4 ,\clock_counter_reg[3]_i_16_n_5 ,\clock_counter_reg[3]_i_16_n_6 ,\clock_counter_reg[3]_i_16_n_7 }),
        .S({\clock_counter[3]_i_22_n_0 ,\clock_counter[3]_i_23_n_0 ,\clock_counter[3]_i_24_n_0 ,\clock_counter[3]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[3]_i_2 
       (.CI(\clock_counter_reg[3]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[3]_i_2_CO_UNCONNECTED [3:2],in6[3],\clock_counter_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[4],\clock_counter_reg[4]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[3]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[3]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[3]_i_4_n_0 ,\clock_counter[3]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[3]_i_21 
       (.CI(\clock_counter_reg[3]_i_26_n_0 ),
        .CO({\clock_counter_reg[3]_i_21_n_0 ,\clock_counter_reg[3]_i_21_n_1 ,\clock_counter_reg[3]_i_21_n_2 ,\clock_counter_reg[3]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[4]_i_21_n_5 ,\clock_counter_reg[4]_i_21_n_6 ,\clock_counter_reg[4]_i_21_n_7 ,\clock_counter_reg[4]_i_26_n_4 }),
        .O({\clock_counter_reg[3]_i_21_n_4 ,\clock_counter_reg[3]_i_21_n_5 ,\clock_counter_reg[3]_i_21_n_6 ,\clock_counter_reg[3]_i_21_n_7 }),
        .S({\clock_counter[3]_i_27_n_0 ,\clock_counter[3]_i_28_n_0 ,\clock_counter[3]_i_29_n_0 ,\clock_counter[3]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[3]_i_26 
       (.CI(\clock_counter_reg[3]_i_31_n_0 ),
        .CO({\clock_counter_reg[3]_i_26_n_0 ,\clock_counter_reg[3]_i_26_n_1 ,\clock_counter_reg[3]_i_26_n_2 ,\clock_counter_reg[3]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[4]_i_26_n_5 ,\clock_counter_reg[4]_i_26_n_6 ,\clock_counter_reg[4]_i_26_n_7 ,\clock_counter_reg[4]_i_31_n_4 }),
        .O({\clock_counter_reg[3]_i_26_n_4 ,\clock_counter_reg[3]_i_26_n_5 ,\clock_counter_reg[3]_i_26_n_6 ,\clock_counter_reg[3]_i_26_n_7 }),
        .S({\clock_counter[3]_i_32_n_0 ,\clock_counter[3]_i_33_n_0 ,\clock_counter[3]_i_34_n_0 ,\clock_counter[3]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[3]_i_3 
       (.CI(\clock_counter_reg[3]_i_6_n_0 ),
        .CO({\clock_counter_reg[3]_i_3_n_0 ,\clock_counter_reg[3]_i_3_n_1 ,\clock_counter_reg[3]_i_3_n_2 ,\clock_counter_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[4]_i_3_n_5 ,\clock_counter_reg[4]_i_3_n_6 ,\clock_counter_reg[4]_i_3_n_7 ,\clock_counter_reg[4]_i_6_n_4 }),
        .O({\clock_counter_reg[3]_i_3_n_4 ,\clock_counter_reg[3]_i_3_n_5 ,\clock_counter_reg[3]_i_3_n_6 ,\clock_counter_reg[3]_i_3_n_7 }),
        .S({\clock_counter[3]_i_7_n_0 ,\clock_counter[3]_i_8_n_0 ,\clock_counter[3]_i_9_n_0 ,\clock_counter[3]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[3]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[3]_i_31_n_0 ,\clock_counter_reg[3]_i_31_n_1 ,\clock_counter_reg[3]_i_31_n_2 ,\clock_counter_reg[3]_i_31_n_3 }),
        .CYINIT(in6[4]),
        .DI({\clock_counter_reg[4]_i_31_n_5 ,\clock_counter_reg[4]_i_31_n_6 ,\clock_counter[3]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[3]_i_31_n_4 ,\clock_counter_reg[3]_i_31_n_5 ,\clock_counter_reg[3]_i_31_n_6 ,\NLW_clock_counter_reg[3]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[3]_i_37_n_0 ,\clock_counter[3]_i_38_n_0 ,\clock_counter[3]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[3]_i_6 
       (.CI(\clock_counter_reg[3]_i_11_n_0 ),
        .CO({\clock_counter_reg[3]_i_6_n_0 ,\clock_counter_reg[3]_i_6_n_1 ,\clock_counter_reg[3]_i_6_n_2 ,\clock_counter_reg[3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[4]_i_6_n_5 ,\clock_counter_reg[4]_i_6_n_6 ,\clock_counter_reg[4]_i_6_n_7 ,\clock_counter_reg[4]_i_11_n_4 }),
        .O({\clock_counter_reg[3]_i_6_n_4 ,\clock_counter_reg[3]_i_6_n_5 ,\clock_counter_reg[3]_i_6_n_6 ,\clock_counter_reg[3]_i_6_n_7 }),
        .S({\clock_counter[3]_i_12_n_0 ,\clock_counter[3]_i_13_n_0 ,\clock_counter[3]_i_14_n_0 ,\clock_counter[3]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[4]),
        .Q(\clock_counter_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[4]_i_11 
       (.CI(\clock_counter_reg[4]_i_16_n_0 ),
        .CO({\clock_counter_reg[4]_i_11_n_0 ,\clock_counter_reg[4]_i_11_n_1 ,\clock_counter_reg[4]_i_11_n_2 ,\clock_counter_reg[4]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[5]_i_11_n_5 ,\clock_counter_reg[5]_i_11_n_6 ,\clock_counter_reg[5]_i_11_n_7 ,\clock_counter_reg[5]_i_16_n_4 }),
        .O({\clock_counter_reg[4]_i_11_n_4 ,\clock_counter_reg[4]_i_11_n_5 ,\clock_counter_reg[4]_i_11_n_6 ,\clock_counter_reg[4]_i_11_n_7 }),
        .S({\clock_counter[4]_i_17_n_0 ,\clock_counter[4]_i_18_n_0 ,\clock_counter[4]_i_19_n_0 ,\clock_counter[4]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[4]_i_16 
       (.CI(\clock_counter_reg[4]_i_21_n_0 ),
        .CO({\clock_counter_reg[4]_i_16_n_0 ,\clock_counter_reg[4]_i_16_n_1 ,\clock_counter_reg[4]_i_16_n_2 ,\clock_counter_reg[4]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[5]_i_16_n_5 ,\clock_counter_reg[5]_i_16_n_6 ,\clock_counter_reg[5]_i_16_n_7 ,\clock_counter_reg[5]_i_21_n_4 }),
        .O({\clock_counter_reg[4]_i_16_n_4 ,\clock_counter_reg[4]_i_16_n_5 ,\clock_counter_reg[4]_i_16_n_6 ,\clock_counter_reg[4]_i_16_n_7 }),
        .S({\clock_counter[4]_i_22_n_0 ,\clock_counter[4]_i_23_n_0 ,\clock_counter[4]_i_24_n_0 ,\clock_counter[4]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[4]_i_2 
       (.CI(\clock_counter_reg[4]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[4]_i_2_CO_UNCONNECTED [3:2],in6[4],\clock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[5],\clock_counter_reg[5]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[4]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[4]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[4]_i_4_n_0 ,\clock_counter[4]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[4]_i_21 
       (.CI(\clock_counter_reg[4]_i_26_n_0 ),
        .CO({\clock_counter_reg[4]_i_21_n_0 ,\clock_counter_reg[4]_i_21_n_1 ,\clock_counter_reg[4]_i_21_n_2 ,\clock_counter_reg[4]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[5]_i_21_n_5 ,\clock_counter_reg[5]_i_21_n_6 ,\clock_counter_reg[5]_i_21_n_7 ,\clock_counter_reg[5]_i_26_n_4 }),
        .O({\clock_counter_reg[4]_i_21_n_4 ,\clock_counter_reg[4]_i_21_n_5 ,\clock_counter_reg[4]_i_21_n_6 ,\clock_counter_reg[4]_i_21_n_7 }),
        .S({\clock_counter[4]_i_27_n_0 ,\clock_counter[4]_i_28_n_0 ,\clock_counter[4]_i_29_n_0 ,\clock_counter[4]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[4]_i_26 
       (.CI(\clock_counter_reg[4]_i_31_n_0 ),
        .CO({\clock_counter_reg[4]_i_26_n_0 ,\clock_counter_reg[4]_i_26_n_1 ,\clock_counter_reg[4]_i_26_n_2 ,\clock_counter_reg[4]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[5]_i_26_n_5 ,\clock_counter_reg[5]_i_26_n_6 ,\clock_counter_reg[5]_i_26_n_7 ,\clock_counter_reg[5]_i_31_n_4 }),
        .O({\clock_counter_reg[4]_i_26_n_4 ,\clock_counter_reg[4]_i_26_n_5 ,\clock_counter_reg[4]_i_26_n_6 ,\clock_counter_reg[4]_i_26_n_7 }),
        .S({\clock_counter[4]_i_32_n_0 ,\clock_counter[4]_i_33_n_0 ,\clock_counter[4]_i_34_n_0 ,\clock_counter[4]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[4]_i_3 
       (.CI(\clock_counter_reg[4]_i_6_n_0 ),
        .CO({\clock_counter_reg[4]_i_3_n_0 ,\clock_counter_reg[4]_i_3_n_1 ,\clock_counter_reg[4]_i_3_n_2 ,\clock_counter_reg[4]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[5]_i_3_n_5 ,\clock_counter_reg[5]_i_3_n_6 ,\clock_counter_reg[5]_i_3_n_7 ,\clock_counter_reg[5]_i_6_n_4 }),
        .O({\clock_counter_reg[4]_i_3_n_4 ,\clock_counter_reg[4]_i_3_n_5 ,\clock_counter_reg[4]_i_3_n_6 ,\clock_counter_reg[4]_i_3_n_7 }),
        .S({\clock_counter[4]_i_7_n_0 ,\clock_counter[4]_i_8_n_0 ,\clock_counter[4]_i_9_n_0 ,\clock_counter[4]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[4]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[4]_i_31_n_0 ,\clock_counter_reg[4]_i_31_n_1 ,\clock_counter_reg[4]_i_31_n_2 ,\clock_counter_reg[4]_i_31_n_3 }),
        .CYINIT(in6[5]),
        .DI({\clock_counter_reg[5]_i_31_n_5 ,\clock_counter_reg[5]_i_31_n_6 ,\clock_counter[4]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[4]_i_31_n_4 ,\clock_counter_reg[4]_i_31_n_5 ,\clock_counter_reg[4]_i_31_n_6 ,\NLW_clock_counter_reg[4]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[4]_i_37_n_0 ,\clock_counter[4]_i_38_n_0 ,\clock_counter[4]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[4]_i_6 
       (.CI(\clock_counter_reg[4]_i_11_n_0 ),
        .CO({\clock_counter_reg[4]_i_6_n_0 ,\clock_counter_reg[4]_i_6_n_1 ,\clock_counter_reg[4]_i_6_n_2 ,\clock_counter_reg[4]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[5]_i_6_n_5 ,\clock_counter_reg[5]_i_6_n_6 ,\clock_counter_reg[5]_i_6_n_7 ,\clock_counter_reg[5]_i_11_n_4 }),
        .O({\clock_counter_reg[4]_i_6_n_4 ,\clock_counter_reg[4]_i_6_n_5 ,\clock_counter_reg[4]_i_6_n_6 ,\clock_counter_reg[4]_i_6_n_7 }),
        .S({\clock_counter[4]_i_12_n_0 ,\clock_counter[4]_i_13_n_0 ,\clock_counter[4]_i_14_n_0 ,\clock_counter[4]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[5]),
        .Q(\clock_counter_reg_n_0_[5] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[5]_i_11 
       (.CI(\clock_counter_reg[5]_i_16_n_0 ),
        .CO({\clock_counter_reg[5]_i_11_n_0 ,\clock_counter_reg[5]_i_11_n_1 ,\clock_counter_reg[5]_i_11_n_2 ,\clock_counter_reg[5]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[6]_i_11_n_5 ,\clock_counter_reg[6]_i_11_n_6 ,\clock_counter_reg[6]_i_11_n_7 ,\clock_counter_reg[6]_i_16_n_4 }),
        .O({\clock_counter_reg[5]_i_11_n_4 ,\clock_counter_reg[5]_i_11_n_5 ,\clock_counter_reg[5]_i_11_n_6 ,\clock_counter_reg[5]_i_11_n_7 }),
        .S({\clock_counter[5]_i_17_n_0 ,\clock_counter[5]_i_18_n_0 ,\clock_counter[5]_i_19_n_0 ,\clock_counter[5]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[5]_i_16 
       (.CI(\clock_counter_reg[5]_i_21_n_0 ),
        .CO({\clock_counter_reg[5]_i_16_n_0 ,\clock_counter_reg[5]_i_16_n_1 ,\clock_counter_reg[5]_i_16_n_2 ,\clock_counter_reg[5]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[6]_i_16_n_5 ,\clock_counter_reg[6]_i_16_n_6 ,\clock_counter_reg[6]_i_16_n_7 ,\clock_counter_reg[6]_i_21_n_4 }),
        .O({\clock_counter_reg[5]_i_16_n_4 ,\clock_counter_reg[5]_i_16_n_5 ,\clock_counter_reg[5]_i_16_n_6 ,\clock_counter_reg[5]_i_16_n_7 }),
        .S({\clock_counter[5]_i_22_n_0 ,\clock_counter[5]_i_23_n_0 ,\clock_counter[5]_i_24_n_0 ,\clock_counter[5]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[5]_i_2 
       (.CI(\clock_counter_reg[5]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[5]_i_2_CO_UNCONNECTED [3:2],in6[5],\clock_counter_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[6],\clock_counter_reg[6]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[5]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[5]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[5]_i_4_n_0 ,\clock_counter[5]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[5]_i_21 
       (.CI(\clock_counter_reg[5]_i_26_n_0 ),
        .CO({\clock_counter_reg[5]_i_21_n_0 ,\clock_counter_reg[5]_i_21_n_1 ,\clock_counter_reg[5]_i_21_n_2 ,\clock_counter_reg[5]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[6]_i_21_n_5 ,\clock_counter_reg[6]_i_21_n_6 ,\clock_counter_reg[6]_i_21_n_7 ,\clock_counter_reg[6]_i_26_n_4 }),
        .O({\clock_counter_reg[5]_i_21_n_4 ,\clock_counter_reg[5]_i_21_n_5 ,\clock_counter_reg[5]_i_21_n_6 ,\clock_counter_reg[5]_i_21_n_7 }),
        .S({\clock_counter[5]_i_27_n_0 ,\clock_counter[5]_i_28_n_0 ,\clock_counter[5]_i_29_n_0 ,\clock_counter[5]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[5]_i_26 
       (.CI(\clock_counter_reg[5]_i_31_n_0 ),
        .CO({\clock_counter_reg[5]_i_26_n_0 ,\clock_counter_reg[5]_i_26_n_1 ,\clock_counter_reg[5]_i_26_n_2 ,\clock_counter_reg[5]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[6]_i_26_n_5 ,\clock_counter_reg[6]_i_26_n_6 ,\clock_counter_reg[6]_i_26_n_7 ,\clock_counter_reg[6]_i_31_n_4 }),
        .O({\clock_counter_reg[5]_i_26_n_4 ,\clock_counter_reg[5]_i_26_n_5 ,\clock_counter_reg[5]_i_26_n_6 ,\clock_counter_reg[5]_i_26_n_7 }),
        .S({\clock_counter[5]_i_32_n_0 ,\clock_counter[5]_i_33_n_0 ,\clock_counter[5]_i_34_n_0 ,\clock_counter[5]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[5]_i_3 
       (.CI(\clock_counter_reg[5]_i_6_n_0 ),
        .CO({\clock_counter_reg[5]_i_3_n_0 ,\clock_counter_reg[5]_i_3_n_1 ,\clock_counter_reg[5]_i_3_n_2 ,\clock_counter_reg[5]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[6]_i_3_n_5 ,\clock_counter_reg[6]_i_3_n_6 ,\clock_counter_reg[6]_i_3_n_7 ,\clock_counter_reg[6]_i_6_n_4 }),
        .O({\clock_counter_reg[5]_i_3_n_4 ,\clock_counter_reg[5]_i_3_n_5 ,\clock_counter_reg[5]_i_3_n_6 ,\clock_counter_reg[5]_i_3_n_7 }),
        .S({\clock_counter[5]_i_7_n_0 ,\clock_counter[5]_i_8_n_0 ,\clock_counter[5]_i_9_n_0 ,\clock_counter[5]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[5]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[5]_i_31_n_0 ,\clock_counter_reg[5]_i_31_n_1 ,\clock_counter_reg[5]_i_31_n_2 ,\clock_counter_reg[5]_i_31_n_3 }),
        .CYINIT(in6[6]),
        .DI({\clock_counter_reg[6]_i_31_n_5 ,\clock_counter_reg[6]_i_31_n_6 ,\clock_counter[5]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[5]_i_31_n_4 ,\clock_counter_reg[5]_i_31_n_5 ,\clock_counter_reg[5]_i_31_n_6 ,\NLW_clock_counter_reg[5]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[5]_i_37_n_0 ,\clock_counter[5]_i_38_n_0 ,\clock_counter[5]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[5]_i_6 
       (.CI(\clock_counter_reg[5]_i_11_n_0 ),
        .CO({\clock_counter_reg[5]_i_6_n_0 ,\clock_counter_reg[5]_i_6_n_1 ,\clock_counter_reg[5]_i_6_n_2 ,\clock_counter_reg[5]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[6]_i_6_n_5 ,\clock_counter_reg[6]_i_6_n_6 ,\clock_counter_reg[6]_i_6_n_7 ,\clock_counter_reg[6]_i_11_n_4 }),
        .O({\clock_counter_reg[5]_i_6_n_4 ,\clock_counter_reg[5]_i_6_n_5 ,\clock_counter_reg[5]_i_6_n_6 ,\clock_counter_reg[5]_i_6_n_7 }),
        .S({\clock_counter[5]_i_12_n_0 ,\clock_counter[5]_i_13_n_0 ,\clock_counter[5]_i_14_n_0 ,\clock_counter[5]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[6]),
        .Q(\clock_counter_reg_n_0_[6] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[6]_i_11 
       (.CI(\clock_counter_reg[6]_i_16_n_0 ),
        .CO({\clock_counter_reg[6]_i_11_n_0 ,\clock_counter_reg[6]_i_11_n_1 ,\clock_counter_reg[6]_i_11_n_2 ,\clock_counter_reg[6]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[7]_i_11_n_5 ,\clock_counter_reg[7]_i_11_n_6 ,\clock_counter_reg[7]_i_11_n_7 ,\clock_counter_reg[7]_i_16_n_4 }),
        .O({\clock_counter_reg[6]_i_11_n_4 ,\clock_counter_reg[6]_i_11_n_5 ,\clock_counter_reg[6]_i_11_n_6 ,\clock_counter_reg[6]_i_11_n_7 }),
        .S({\clock_counter[6]_i_17_n_0 ,\clock_counter[6]_i_18_n_0 ,\clock_counter[6]_i_19_n_0 ,\clock_counter[6]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[6]_i_16 
       (.CI(\clock_counter_reg[6]_i_21_n_0 ),
        .CO({\clock_counter_reg[6]_i_16_n_0 ,\clock_counter_reg[6]_i_16_n_1 ,\clock_counter_reg[6]_i_16_n_2 ,\clock_counter_reg[6]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[7]_i_16_n_5 ,\clock_counter_reg[7]_i_16_n_6 ,\clock_counter_reg[7]_i_16_n_7 ,\clock_counter_reg[7]_i_21_n_4 }),
        .O({\clock_counter_reg[6]_i_16_n_4 ,\clock_counter_reg[6]_i_16_n_5 ,\clock_counter_reg[6]_i_16_n_6 ,\clock_counter_reg[6]_i_16_n_7 }),
        .S({\clock_counter[6]_i_22_n_0 ,\clock_counter[6]_i_23_n_0 ,\clock_counter[6]_i_24_n_0 ,\clock_counter[6]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[6]_i_2 
       (.CI(\clock_counter_reg[6]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[6]_i_2_CO_UNCONNECTED [3:2],in6[6],\clock_counter_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[7],\clock_counter_reg[7]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[6]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[6]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[6]_i_4_n_0 ,\clock_counter[6]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[6]_i_21 
       (.CI(\clock_counter_reg[6]_i_26_n_0 ),
        .CO({\clock_counter_reg[6]_i_21_n_0 ,\clock_counter_reg[6]_i_21_n_1 ,\clock_counter_reg[6]_i_21_n_2 ,\clock_counter_reg[6]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[7]_i_21_n_5 ,\clock_counter_reg[7]_i_21_n_6 ,\clock_counter_reg[7]_i_21_n_7 ,\clock_counter_reg[7]_i_26_n_4 }),
        .O({\clock_counter_reg[6]_i_21_n_4 ,\clock_counter_reg[6]_i_21_n_5 ,\clock_counter_reg[6]_i_21_n_6 ,\clock_counter_reg[6]_i_21_n_7 }),
        .S({\clock_counter[6]_i_27_n_0 ,\clock_counter[6]_i_28_n_0 ,\clock_counter[6]_i_29_n_0 ,\clock_counter[6]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[6]_i_26 
       (.CI(\clock_counter_reg[6]_i_31_n_0 ),
        .CO({\clock_counter_reg[6]_i_26_n_0 ,\clock_counter_reg[6]_i_26_n_1 ,\clock_counter_reg[6]_i_26_n_2 ,\clock_counter_reg[6]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[7]_i_26_n_5 ,\clock_counter_reg[7]_i_26_n_6 ,\clock_counter_reg[7]_i_26_n_7 ,\clock_counter_reg[7]_i_31_n_4 }),
        .O({\clock_counter_reg[6]_i_26_n_4 ,\clock_counter_reg[6]_i_26_n_5 ,\clock_counter_reg[6]_i_26_n_6 ,\clock_counter_reg[6]_i_26_n_7 }),
        .S({\clock_counter[6]_i_32_n_0 ,\clock_counter[6]_i_33_n_0 ,\clock_counter[6]_i_34_n_0 ,\clock_counter[6]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[6]_i_3 
       (.CI(\clock_counter_reg[6]_i_6_n_0 ),
        .CO({\clock_counter_reg[6]_i_3_n_0 ,\clock_counter_reg[6]_i_3_n_1 ,\clock_counter_reg[6]_i_3_n_2 ,\clock_counter_reg[6]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[7]_i_3_n_5 ,\clock_counter_reg[7]_i_3_n_6 ,\clock_counter_reg[7]_i_3_n_7 ,\clock_counter_reg[7]_i_6_n_4 }),
        .O({\clock_counter_reg[6]_i_3_n_4 ,\clock_counter_reg[6]_i_3_n_5 ,\clock_counter_reg[6]_i_3_n_6 ,\clock_counter_reg[6]_i_3_n_7 }),
        .S({\clock_counter[6]_i_7_n_0 ,\clock_counter[6]_i_8_n_0 ,\clock_counter[6]_i_9_n_0 ,\clock_counter[6]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[6]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[6]_i_31_n_0 ,\clock_counter_reg[6]_i_31_n_1 ,\clock_counter_reg[6]_i_31_n_2 ,\clock_counter_reg[6]_i_31_n_3 }),
        .CYINIT(in6[7]),
        .DI({\clock_counter_reg[7]_i_31_n_5 ,\clock_counter_reg[7]_i_31_n_6 ,\clock_counter[6]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[6]_i_31_n_4 ,\clock_counter_reg[6]_i_31_n_5 ,\clock_counter_reg[6]_i_31_n_6 ,\NLW_clock_counter_reg[6]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[6]_i_37_n_0 ,\clock_counter[6]_i_38_n_0 ,\clock_counter[6]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[6]_i_6 
       (.CI(\clock_counter_reg[6]_i_11_n_0 ),
        .CO({\clock_counter_reg[6]_i_6_n_0 ,\clock_counter_reg[6]_i_6_n_1 ,\clock_counter_reg[6]_i_6_n_2 ,\clock_counter_reg[6]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[7]_i_6_n_5 ,\clock_counter_reg[7]_i_6_n_6 ,\clock_counter_reg[7]_i_6_n_7 ,\clock_counter_reg[7]_i_11_n_4 }),
        .O({\clock_counter_reg[6]_i_6_n_4 ,\clock_counter_reg[6]_i_6_n_5 ,\clock_counter_reg[6]_i_6_n_6 ,\clock_counter_reg[6]_i_6_n_7 }),
        .S({\clock_counter[6]_i_12_n_0 ,\clock_counter[6]_i_13_n_0 ,\clock_counter[6]_i_14_n_0 ,\clock_counter[6]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[7]),
        .Q(\clock_counter_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[7]_i_11 
       (.CI(\clock_counter_reg[7]_i_16_n_0 ),
        .CO({\clock_counter_reg[7]_i_11_n_0 ,\clock_counter_reg[7]_i_11_n_1 ,\clock_counter_reg[7]_i_11_n_2 ,\clock_counter_reg[7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[8]_i_11_n_5 ,\clock_counter_reg[8]_i_11_n_6 ,\clock_counter_reg[8]_i_11_n_7 ,\clock_counter_reg[8]_i_16_n_4 }),
        .O({\clock_counter_reg[7]_i_11_n_4 ,\clock_counter_reg[7]_i_11_n_5 ,\clock_counter_reg[7]_i_11_n_6 ,\clock_counter_reg[7]_i_11_n_7 }),
        .S({\clock_counter[7]_i_17_n_0 ,\clock_counter[7]_i_18_n_0 ,\clock_counter[7]_i_19_n_0 ,\clock_counter[7]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[7]_i_16 
       (.CI(\clock_counter_reg[7]_i_21_n_0 ),
        .CO({\clock_counter_reg[7]_i_16_n_0 ,\clock_counter_reg[7]_i_16_n_1 ,\clock_counter_reg[7]_i_16_n_2 ,\clock_counter_reg[7]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[8]_i_16_n_5 ,\clock_counter_reg[8]_i_16_n_6 ,\clock_counter_reg[8]_i_16_n_7 ,\clock_counter_reg[8]_i_21_n_4 }),
        .O({\clock_counter_reg[7]_i_16_n_4 ,\clock_counter_reg[7]_i_16_n_5 ,\clock_counter_reg[7]_i_16_n_6 ,\clock_counter_reg[7]_i_16_n_7 }),
        .S({\clock_counter[7]_i_22_n_0 ,\clock_counter[7]_i_23_n_0 ,\clock_counter[7]_i_24_n_0 ,\clock_counter[7]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[7]_i_2 
       (.CI(\clock_counter_reg[7]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[7]_i_2_CO_UNCONNECTED [3:2],in6[7],\clock_counter_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[8],\clock_counter_reg[8]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[7]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[7]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[7]_i_4_n_0 ,\clock_counter[7]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[7]_i_21 
       (.CI(\clock_counter_reg[7]_i_26_n_0 ),
        .CO({\clock_counter_reg[7]_i_21_n_0 ,\clock_counter_reg[7]_i_21_n_1 ,\clock_counter_reg[7]_i_21_n_2 ,\clock_counter_reg[7]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[8]_i_21_n_5 ,\clock_counter_reg[8]_i_21_n_6 ,\clock_counter_reg[8]_i_21_n_7 ,\clock_counter_reg[8]_i_26_n_4 }),
        .O({\clock_counter_reg[7]_i_21_n_4 ,\clock_counter_reg[7]_i_21_n_5 ,\clock_counter_reg[7]_i_21_n_6 ,\clock_counter_reg[7]_i_21_n_7 }),
        .S({\clock_counter[7]_i_27_n_0 ,\clock_counter[7]_i_28_n_0 ,\clock_counter[7]_i_29_n_0 ,\clock_counter[7]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[7]_i_26 
       (.CI(\clock_counter_reg[7]_i_31_n_0 ),
        .CO({\clock_counter_reg[7]_i_26_n_0 ,\clock_counter_reg[7]_i_26_n_1 ,\clock_counter_reg[7]_i_26_n_2 ,\clock_counter_reg[7]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[8]_i_26_n_5 ,\clock_counter_reg[8]_i_26_n_6 ,\clock_counter_reg[8]_i_26_n_7 ,\clock_counter_reg[8]_i_31_n_4 }),
        .O({\clock_counter_reg[7]_i_26_n_4 ,\clock_counter_reg[7]_i_26_n_5 ,\clock_counter_reg[7]_i_26_n_6 ,\clock_counter_reg[7]_i_26_n_7 }),
        .S({\clock_counter[7]_i_32_n_0 ,\clock_counter[7]_i_33_n_0 ,\clock_counter[7]_i_34_n_0 ,\clock_counter[7]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[7]_i_3 
       (.CI(\clock_counter_reg[7]_i_6_n_0 ),
        .CO({\clock_counter_reg[7]_i_3_n_0 ,\clock_counter_reg[7]_i_3_n_1 ,\clock_counter_reg[7]_i_3_n_2 ,\clock_counter_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[8]_i_3_n_5 ,\clock_counter_reg[8]_i_3_n_6 ,\clock_counter_reg[8]_i_3_n_7 ,\clock_counter_reg[8]_i_6_n_4 }),
        .O({\clock_counter_reg[7]_i_3_n_4 ,\clock_counter_reg[7]_i_3_n_5 ,\clock_counter_reg[7]_i_3_n_6 ,\clock_counter_reg[7]_i_3_n_7 }),
        .S({\clock_counter[7]_i_7_n_0 ,\clock_counter[7]_i_8_n_0 ,\clock_counter[7]_i_9_n_0 ,\clock_counter[7]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[7]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[7]_i_31_n_0 ,\clock_counter_reg[7]_i_31_n_1 ,\clock_counter_reg[7]_i_31_n_2 ,\clock_counter_reg[7]_i_31_n_3 }),
        .CYINIT(in6[8]),
        .DI({\clock_counter_reg[8]_i_31_n_5 ,\clock_counter_reg[8]_i_31_n_6 ,\clock_counter[7]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[7]_i_31_n_4 ,\clock_counter_reg[7]_i_31_n_5 ,\clock_counter_reg[7]_i_31_n_6 ,\NLW_clock_counter_reg[7]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[7]_i_37_n_0 ,\clock_counter[7]_i_38_n_0 ,\clock_counter[7]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[7]_i_6 
       (.CI(\clock_counter_reg[7]_i_11_n_0 ),
        .CO({\clock_counter_reg[7]_i_6_n_0 ,\clock_counter_reg[7]_i_6_n_1 ,\clock_counter_reg[7]_i_6_n_2 ,\clock_counter_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[8]_i_6_n_5 ,\clock_counter_reg[8]_i_6_n_6 ,\clock_counter_reg[8]_i_6_n_7 ,\clock_counter_reg[8]_i_11_n_4 }),
        .O({\clock_counter_reg[7]_i_6_n_4 ,\clock_counter_reg[7]_i_6_n_5 ,\clock_counter_reg[7]_i_6_n_6 ,\clock_counter_reg[7]_i_6_n_7 }),
        .S({\clock_counter[7]_i_12_n_0 ,\clock_counter[7]_i_13_n_0 ,\clock_counter[7]_i_14_n_0 ,\clock_counter[7]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[8]),
        .Q(\clock_counter_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[8]_i_11 
       (.CI(\clock_counter_reg[8]_i_16_n_0 ),
        .CO({\clock_counter_reg[8]_i_11_n_0 ,\clock_counter_reg[8]_i_11_n_1 ,\clock_counter_reg[8]_i_11_n_2 ,\clock_counter_reg[8]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[9]_i_11_n_5 ,\clock_counter_reg[9]_i_11_n_6 ,\clock_counter_reg[9]_i_11_n_7 ,\clock_counter_reg[9]_i_16_n_4 }),
        .O({\clock_counter_reg[8]_i_11_n_4 ,\clock_counter_reg[8]_i_11_n_5 ,\clock_counter_reg[8]_i_11_n_6 ,\clock_counter_reg[8]_i_11_n_7 }),
        .S({\clock_counter[8]_i_17_n_0 ,\clock_counter[8]_i_18_n_0 ,\clock_counter[8]_i_19_n_0 ,\clock_counter[8]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[8]_i_16 
       (.CI(\clock_counter_reg[8]_i_21_n_0 ),
        .CO({\clock_counter_reg[8]_i_16_n_0 ,\clock_counter_reg[8]_i_16_n_1 ,\clock_counter_reg[8]_i_16_n_2 ,\clock_counter_reg[8]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[9]_i_16_n_5 ,\clock_counter_reg[9]_i_16_n_6 ,\clock_counter_reg[9]_i_16_n_7 ,\clock_counter_reg[9]_i_21_n_4 }),
        .O({\clock_counter_reg[8]_i_16_n_4 ,\clock_counter_reg[8]_i_16_n_5 ,\clock_counter_reg[8]_i_16_n_6 ,\clock_counter_reg[8]_i_16_n_7 }),
        .S({\clock_counter[8]_i_22_n_0 ,\clock_counter[8]_i_23_n_0 ,\clock_counter[8]_i_24_n_0 ,\clock_counter[8]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[8]_i_2 
       (.CI(\clock_counter_reg[8]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[8]_i_2_CO_UNCONNECTED [3:2],in6[8],\clock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[9],\clock_counter_reg[9]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[8]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[8]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[8]_i_4_n_0 ,\clock_counter[8]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[8]_i_21 
       (.CI(\clock_counter_reg[8]_i_26_n_0 ),
        .CO({\clock_counter_reg[8]_i_21_n_0 ,\clock_counter_reg[8]_i_21_n_1 ,\clock_counter_reg[8]_i_21_n_2 ,\clock_counter_reg[8]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[9]_i_21_n_5 ,\clock_counter_reg[9]_i_21_n_6 ,\clock_counter_reg[9]_i_21_n_7 ,\clock_counter_reg[9]_i_26_n_4 }),
        .O({\clock_counter_reg[8]_i_21_n_4 ,\clock_counter_reg[8]_i_21_n_5 ,\clock_counter_reg[8]_i_21_n_6 ,\clock_counter_reg[8]_i_21_n_7 }),
        .S({\clock_counter[8]_i_27_n_0 ,\clock_counter[8]_i_28_n_0 ,\clock_counter[8]_i_29_n_0 ,\clock_counter[8]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[8]_i_26 
       (.CI(\clock_counter_reg[8]_i_31_n_0 ),
        .CO({\clock_counter_reg[8]_i_26_n_0 ,\clock_counter_reg[8]_i_26_n_1 ,\clock_counter_reg[8]_i_26_n_2 ,\clock_counter_reg[8]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[9]_i_26_n_5 ,\clock_counter_reg[9]_i_26_n_6 ,\clock_counter_reg[9]_i_26_n_7 ,\clock_counter_reg[9]_i_31_n_4 }),
        .O({\clock_counter_reg[8]_i_26_n_4 ,\clock_counter_reg[8]_i_26_n_5 ,\clock_counter_reg[8]_i_26_n_6 ,\clock_counter_reg[8]_i_26_n_7 }),
        .S({\clock_counter[8]_i_32_n_0 ,\clock_counter[8]_i_33_n_0 ,\clock_counter[8]_i_34_n_0 ,\clock_counter[8]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[8]_i_3 
       (.CI(\clock_counter_reg[8]_i_6_n_0 ),
        .CO({\clock_counter_reg[8]_i_3_n_0 ,\clock_counter_reg[8]_i_3_n_1 ,\clock_counter_reg[8]_i_3_n_2 ,\clock_counter_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[9]_i_3_n_5 ,\clock_counter_reg[9]_i_3_n_6 ,\clock_counter_reg[9]_i_3_n_7 ,\clock_counter_reg[9]_i_6_n_4 }),
        .O({\clock_counter_reg[8]_i_3_n_4 ,\clock_counter_reg[8]_i_3_n_5 ,\clock_counter_reg[8]_i_3_n_6 ,\clock_counter_reg[8]_i_3_n_7 }),
        .S({\clock_counter[8]_i_7_n_0 ,\clock_counter[8]_i_8_n_0 ,\clock_counter[8]_i_9_n_0 ,\clock_counter[8]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[8]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[8]_i_31_n_0 ,\clock_counter_reg[8]_i_31_n_1 ,\clock_counter_reg[8]_i_31_n_2 ,\clock_counter_reg[8]_i_31_n_3 }),
        .CYINIT(in6[9]),
        .DI({\clock_counter_reg[9]_i_31_n_5 ,\clock_counter_reg[9]_i_31_n_6 ,1'b1,1'b0}),
        .O({\clock_counter_reg[8]_i_31_n_4 ,\clock_counter_reg[8]_i_31_n_5 ,\clock_counter_reg[8]_i_31_n_6 ,\NLW_clock_counter_reg[8]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[8]_i_36_n_0 ,\clock_counter[8]_i_37_n_0 ,\clock_counter[8]_i_38_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[8]_i_6 
       (.CI(\clock_counter_reg[8]_i_11_n_0 ),
        .CO({\clock_counter_reg[8]_i_6_n_0 ,\clock_counter_reg[8]_i_6_n_1 ,\clock_counter_reg[8]_i_6_n_2 ,\clock_counter_reg[8]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[9]_i_6_n_5 ,\clock_counter_reg[9]_i_6_n_6 ,\clock_counter_reg[9]_i_6_n_7 ,\clock_counter_reg[9]_i_11_n_4 }),
        .O({\clock_counter_reg[8]_i_6_n_4 ,\clock_counter_reg[8]_i_6_n_5 ,\clock_counter_reg[8]_i_6_n_6 ,\clock_counter_reg[8]_i_6_n_7 }),
        .S({\clock_counter[8]_i_12_n_0 ,\clock_counter[8]_i_13_n_0 ,\clock_counter[8]_i_14_n_0 ,\clock_counter[8]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clock_counter_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(clock_counter[9]),
        .Q(\clock_counter_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 \clock_counter_reg[9]_i_11 
       (.CI(\clock_counter_reg[9]_i_16_n_0 ),
        .CO({\clock_counter_reg[9]_i_11_n_0 ,\clock_counter_reg[9]_i_11_n_1 ,\clock_counter_reg[9]_i_11_n_2 ,\clock_counter_reg[9]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[10]_i_11_n_5 ,\clock_counter_reg[10]_i_11_n_6 ,\clock_counter_reg[10]_i_11_n_7 ,\clock_counter_reg[10]_i_16_n_4 }),
        .O({\clock_counter_reg[9]_i_11_n_4 ,\clock_counter_reg[9]_i_11_n_5 ,\clock_counter_reg[9]_i_11_n_6 ,\clock_counter_reg[9]_i_11_n_7 }),
        .S({\clock_counter[9]_i_17_n_0 ,\clock_counter[9]_i_18_n_0 ,\clock_counter[9]_i_19_n_0 ,\clock_counter[9]_i_20_n_0 }));
  CARRY4 \clock_counter_reg[9]_i_16 
       (.CI(\clock_counter_reg[9]_i_21_n_0 ),
        .CO({\clock_counter_reg[9]_i_16_n_0 ,\clock_counter_reg[9]_i_16_n_1 ,\clock_counter_reg[9]_i_16_n_2 ,\clock_counter_reg[9]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[10]_i_16_n_5 ,\clock_counter_reg[10]_i_16_n_6 ,\clock_counter_reg[10]_i_16_n_7 ,\clock_counter_reg[10]_i_21_n_4 }),
        .O({\clock_counter_reg[9]_i_16_n_4 ,\clock_counter_reg[9]_i_16_n_5 ,\clock_counter_reg[9]_i_16_n_6 ,\clock_counter_reg[9]_i_16_n_7 }),
        .S({\clock_counter[9]_i_22_n_0 ,\clock_counter[9]_i_23_n_0 ,\clock_counter[9]_i_24_n_0 ,\clock_counter[9]_i_25_n_0 }));
  CARRY4 \clock_counter_reg[9]_i_2 
       (.CI(\clock_counter_reg[9]_i_3_n_0 ),
        .CO({\NLW_clock_counter_reg[9]_i_2_CO_UNCONNECTED [3:2],in6[9],\clock_counter_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,in6[10],\clock_counter_reg[10]_i_3_n_4 }),
        .O({\NLW_clock_counter_reg[9]_i_2_O_UNCONNECTED [3:1],\clock_counter_reg[9]_i_2_n_7 }),
        .S({1'b0,1'b0,\clock_counter[9]_i_4_n_0 ,\clock_counter[9]_i_5_n_0 }));
  CARRY4 \clock_counter_reg[9]_i_21 
       (.CI(\clock_counter_reg[9]_i_26_n_0 ),
        .CO({\clock_counter_reg[9]_i_21_n_0 ,\clock_counter_reg[9]_i_21_n_1 ,\clock_counter_reg[9]_i_21_n_2 ,\clock_counter_reg[9]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[10]_i_21_n_5 ,\clock_counter_reg[10]_i_21_n_6 ,\clock_counter_reg[10]_i_21_n_7 ,\clock_counter_reg[10]_i_26_n_4 }),
        .O({\clock_counter_reg[9]_i_21_n_4 ,\clock_counter_reg[9]_i_21_n_5 ,\clock_counter_reg[9]_i_21_n_6 ,\clock_counter_reg[9]_i_21_n_7 }),
        .S({\clock_counter[9]_i_27_n_0 ,\clock_counter[9]_i_28_n_0 ,\clock_counter[9]_i_29_n_0 ,\clock_counter[9]_i_30_n_0 }));
  CARRY4 \clock_counter_reg[9]_i_26 
       (.CI(\clock_counter_reg[9]_i_31_n_0 ),
        .CO({\clock_counter_reg[9]_i_26_n_0 ,\clock_counter_reg[9]_i_26_n_1 ,\clock_counter_reg[9]_i_26_n_2 ,\clock_counter_reg[9]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[10]_i_26_n_5 ,\clock_counter_reg[10]_i_26_n_6 ,\clock_counter_reg[10]_i_26_n_7 ,\clock_counter_reg[10]_i_31_n_4 }),
        .O({\clock_counter_reg[9]_i_26_n_4 ,\clock_counter_reg[9]_i_26_n_5 ,\clock_counter_reg[9]_i_26_n_6 ,\clock_counter_reg[9]_i_26_n_7 }),
        .S({\clock_counter[9]_i_32_n_0 ,\clock_counter[9]_i_33_n_0 ,\clock_counter[9]_i_34_n_0 ,\clock_counter[9]_i_35_n_0 }));
  CARRY4 \clock_counter_reg[9]_i_3 
       (.CI(\clock_counter_reg[9]_i_6_n_0 ),
        .CO({\clock_counter_reg[9]_i_3_n_0 ,\clock_counter_reg[9]_i_3_n_1 ,\clock_counter_reg[9]_i_3_n_2 ,\clock_counter_reg[9]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[10]_i_3_n_5 ,\clock_counter_reg[10]_i_3_n_6 ,\clock_counter_reg[10]_i_3_n_7 ,\clock_counter_reg[10]_i_6_n_4 }),
        .O({\clock_counter_reg[9]_i_3_n_4 ,\clock_counter_reg[9]_i_3_n_5 ,\clock_counter_reg[9]_i_3_n_6 ,\clock_counter_reg[9]_i_3_n_7 }),
        .S({\clock_counter[9]_i_7_n_0 ,\clock_counter[9]_i_8_n_0 ,\clock_counter[9]_i_9_n_0 ,\clock_counter[9]_i_10_n_0 }));
  CARRY4 \clock_counter_reg[9]_i_31 
       (.CI(1'b0),
        .CO({\clock_counter_reg[9]_i_31_n_0 ,\clock_counter_reg[9]_i_31_n_1 ,\clock_counter_reg[9]_i_31_n_2 ,\clock_counter_reg[9]_i_31_n_3 }),
        .CYINIT(in6[10]),
        .DI({\clock_counter_reg[10]_i_31_n_5 ,\clock_counter_reg[10]_i_31_n_6 ,\clock_counter[9]_i_36_n_0 ,1'b0}),
        .O({\clock_counter_reg[9]_i_31_n_4 ,\clock_counter_reg[9]_i_31_n_5 ,\clock_counter_reg[9]_i_31_n_6 ,\NLW_clock_counter_reg[9]_i_31_O_UNCONNECTED [0]}),
        .S({\clock_counter[9]_i_37_n_0 ,\clock_counter[9]_i_38_n_0 ,\clock_counter[9]_i_39_n_0 ,1'b1}));
  CARRY4 \clock_counter_reg[9]_i_6 
       (.CI(\clock_counter_reg[9]_i_11_n_0 ),
        .CO({\clock_counter_reg[9]_i_6_n_0 ,\clock_counter_reg[9]_i_6_n_1 ,\clock_counter_reg[9]_i_6_n_2 ,\clock_counter_reg[9]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg[10]_i_6_n_5 ,\clock_counter_reg[10]_i_6_n_6 ,\clock_counter_reg[10]_i_6_n_7 ,\clock_counter_reg[10]_i_11_n_4 }),
        .O({\clock_counter_reg[9]_i_6_n_4 ,\clock_counter_reg[9]_i_6_n_5 ,\clock_counter_reg[9]_i_6_n_6 ,\clock_counter_reg[9]_i_6_n_7 }),
        .S({\clock_counter[9]_i_12_n_0 ,\clock_counter[9]_i_13_n_0 ,\clock_counter[9]_i_14_n_0 ,\clock_counter[9]_i_15_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    fifo_reset_internal_i_1
       (.I0(fifo_reset_internal),
        .I1(enabled),
        .I2(m00_axis_aresetn),
        .O(fifo_reset_internal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_reset_internal_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(fifo_reset_internal_i_1_n_0),
        .Q(fifo_reset),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_counter[0]_i_1 
       (.I0(\init_counter_reg_n_0_[0] ),
        .O(init_counter0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_counter[1]_i_1 
       (.I0(\init_counter_reg_n_0_[1] ),
        .I1(\init_counter_reg_n_0_[0] ),
        .O(init_counter0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \init_counter[2]_i_1 
       (.I0(\init_counter_reg_n_0_[1] ),
        .I1(\init_counter_reg_n_0_[0] ),
        .I2(\init_counter_reg_n_0_[2] ),
        .O(init_counter0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_counter[3]_i_1 
       (.I0(\init_counter_reg_n_0_[2] ),
        .I1(\init_counter_reg_n_0_[0] ),
        .I2(\init_counter_reg_n_0_[1] ),
        .I3(\init_counter_reg_n_0_[3] ),
        .O(init_counter0_in[3]));
  LUT2 #(
    .INIT(4'h7)) 
    \init_counter[4]_i_1 
       (.I0(m00_axis_aresetn),
        .I1(enabled),
        .O(mst_exec_state0));
  LUT3 #(
    .INIT(8'h62)) 
    \init_counter[4]_i_2 
       (.I0(mst_exec_state),
        .I1(fifo_reset_internal),
        .I2(m00_axis_tready),
        .O(init_counter));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_counter[4]_i_3 
       (.I0(\init_counter_reg_n_0_[3] ),
        .I1(\init_counter_reg_n_0_[1] ),
        .I2(\init_counter_reg_n_0_[0] ),
        .I3(\init_counter_reg_n_0_[2] ),
        .I4(\init_counter_reg_n_0_[4] ),
        .O(init_counter0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(init_counter0_in[0]),
        .Q(\init_counter_reg_n_0_[0] ),
        .R(mst_exec_state0));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(init_counter0_in[1]),
        .Q(\init_counter_reg_n_0_[1] ),
        .R(mst_exec_state0));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(init_counter0_in[2]),
        .Q(\init_counter_reg_n_0_[2] ),
        .R(mst_exec_state0));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(init_counter0_in[3]),
        .Q(\init_counter_reg_n_0_[3] ),
        .R(mst_exec_state0));
  FDRE #(
    .INIT(1'b0)) 
    \init_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(init_counter),
        .D(init_counter0_in[4]),
        .Q(\init_counter_reg_n_0_[4] ),
        .R(mst_exec_state0));
  LUT3 #(
    .INIT(8'h80)) 
    last_signal_input_i_1
       (.I0(signal_inut_internal_reg_n_0),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .O(last_signal_input_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_signal_input_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(last_signal_input_i_1_n_0),
        .Q(last_signal_input),
        .R(1'b0));
  CARRY4 minusOp__52_carry
       (.CI(1'b0),
        .CO({minusOp__52_carry_n_0,minusOp__52_carry_n_1,minusOp__52_carry_n_2,minusOp__52_carry_n_3}),
        .CYINIT(\word_counter_reg_n_0_[0] ),
        .DI({\word_counter_reg_n_0_[4] ,\word_counter_reg_n_0_[3] ,\word_counter_reg_n_0_[2] ,\word_counter_reg_n_0_[1] }),
        .O({minusOp__52_carry_n_4,minusOp__52_carry_n_5,minusOp__52_carry_n_6,minusOp__52_carry_n_7}),
        .S({minusOp__52_carry_i_1_n_0,minusOp__52_carry_i_2_n_0,minusOp__52_carry_i_3_n_0,minusOp__52_carry_i_4_n_0}));
  CARRY4 minusOp__52_carry__0
       (.CI(minusOp__52_carry_n_0),
        .CO({minusOp__52_carry__0_n_0,minusOp__52_carry__0_n_1,minusOp__52_carry__0_n_2,minusOp__52_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\word_counter_reg_n_0_[8] ,\word_counter_reg_n_0_[7] ,\word_counter_reg_n_0_[6] ,\word_counter_reg_n_0_[5] }),
        .O({minusOp__52_carry__0_n_4,minusOp__52_carry__0_n_5,minusOp__52_carry__0_n_6,minusOp__52_carry__0_n_7}),
        .S({minusOp__52_carry__0_i_1_n_0,minusOp__52_carry__0_i_2_n_0,minusOp__52_carry__0_i_3_n_0,minusOp__52_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry__0_i_1
       (.I0(\word_counter_reg_n_0_[8] ),
        .O(minusOp__52_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry__0_i_2
       (.I0(\word_counter_reg_n_0_[7] ),
        .O(minusOp__52_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry__0_i_3
       (.I0(\word_counter_reg_n_0_[6] ),
        .O(minusOp__52_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry__0_i_4
       (.I0(\word_counter_reg_n_0_[5] ),
        .O(minusOp__52_carry__0_i_4_n_0));
  CARRY4 minusOp__52_carry__1
       (.CI(minusOp__52_carry__0_n_0),
        .CO({minusOp__52_carry__1_n_0,minusOp__52_carry__1_n_1,minusOp__52_carry__1_n_2,minusOp__52_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\word_counter_reg_n_0_[12] ,\word_counter_reg_n_0_[11] ,\word_counter_reg_n_0_[10] ,\word_counter_reg_n_0_[9] }),
        .O({minusOp__52_carry__1_n_4,minusOp__52_carry__1_n_5,minusOp__52_carry__1_n_6,minusOp__52_carry__1_n_7}),
        .S({minusOp__52_carry__1_i_1_n_0,minusOp__52_carry__1_i_2_n_0,minusOp__52_carry__1_i_3_n_0,minusOp__52_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry__1_i_1
       (.I0(\word_counter_reg_n_0_[12] ),
        .O(minusOp__52_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry__1_i_2
       (.I0(\word_counter_reg_n_0_[11] ),
        .O(minusOp__52_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry__1_i_3
       (.I0(\word_counter_reg_n_0_[10] ),
        .O(minusOp__52_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry__1_i_4
       (.I0(\word_counter_reg_n_0_[9] ),
        .O(minusOp__52_carry__1_i_4_n_0));
  CARRY4 minusOp__52_carry__2
       (.CI(minusOp__52_carry__1_n_0),
        .CO({NLW_minusOp__52_carry__2_CO_UNCONNECTED[3:2],minusOp__52_carry__2_n_2,minusOp__52_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\word_counter_reg_n_0_[14] ,\word_counter_reg_n_0_[13] }),
        .O({NLW_minusOp__52_carry__2_O_UNCONNECTED[3],minusOp__52_carry__2_n_5,minusOp__52_carry__2_n_6,minusOp__52_carry__2_n_7}),
        .S({1'b0,minusOp__52_carry__2_i_1_n_0,minusOp__52_carry__2_i_2_n_0,minusOp__52_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry__2_i_1
       (.I0(\word_counter_reg_n_0_[15] ),
        .O(minusOp__52_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry__2_i_2
       (.I0(\word_counter_reg_n_0_[14] ),
        .O(minusOp__52_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry__2_i_3
       (.I0(\word_counter_reg_n_0_[13] ),
        .O(minusOp__52_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry_i_1
       (.I0(\word_counter_reg_n_0_[4] ),
        .O(minusOp__52_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry_i_2
       (.I0(\word_counter_reg_n_0_[3] ),
        .O(minusOp__52_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry_i_3
       (.I0(\word_counter_reg_n_0_[2] ),
        .O(minusOp__52_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp__52_carry_i_4
       (.I0(\word_counter_reg_n_0_[1] ),
        .O(minusOp__52_carry_i_4_n_0));
  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(\clock_counter_reg_n_0_[0] ),
        .DI({\clock_counter_reg_n_0_[4] ,\clock_counter_reg_n_0_[3] ,\clock_counter_reg_n_0_[2] ,\clock_counter_reg_n_0_[1] }),
        .O(minusOp[4:1]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg_n_0_[8] ,\clock_counter_reg_n_0_[7] ,\clock_counter_reg_n_0_[6] ,\clock_counter_reg_n_0_[5] }),
        .O(minusOp[8:5]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(\clock_counter_reg_n_0_[8] ),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(\clock_counter_reg_n_0_[7] ),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(\clock_counter_reg_n_0_[6] ),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(\clock_counter_reg_n_0_[5] ),
        .O(minusOp_carry__0_i_4_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg_n_0_[12] ,\clock_counter_reg_n_0_[11] ,\clock_counter_reg_n_0_[10] ,\clock_counter_reg_n_0_[9] }),
        .O(minusOp[12:9]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(\clock_counter_reg_n_0_[12] ),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(\clock_counter_reg_n_0_[11] ),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(\clock_counter_reg_n_0_[10] ),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(\clock_counter_reg_n_0_[9] ),
        .O(minusOp_carry__1_i_4_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({minusOp_carry__2_n_0,minusOp_carry__2_n_1,minusOp_carry__2_n_2,minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg_n_0_[16] ,\clock_counter_reg_n_0_[15] ,\clock_counter_reg_n_0_[14] ,\clock_counter_reg_n_0_[13] }),
        .O(minusOp[16:13]),
        .S({minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0,minusOp_carry__2_i_3_n_0,minusOp_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(\clock_counter_reg_n_0_[16] ),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(\clock_counter_reg_n_0_[15] ),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_3
       (.I0(\clock_counter_reg_n_0_[14] ),
        .O(minusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_4
       (.I0(\clock_counter_reg_n_0_[13] ),
        .O(minusOp_carry__2_i_4_n_0));
  CARRY4 minusOp_carry__3
       (.CI(minusOp_carry__2_n_0),
        .CO({minusOp_carry__3_n_0,minusOp_carry__3_n_1,minusOp_carry__3_n_2,minusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg_n_0_[20] ,\clock_counter_reg_n_0_[19] ,\clock_counter_reg_n_0_[18] ,\clock_counter_reg_n_0_[17] }),
        .O(minusOp[20:17]),
        .S({minusOp_carry__3_i_1_n_0,minusOp_carry__3_i_2_n_0,minusOp_carry__3_i_3_n_0,minusOp_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_1
       (.I0(\clock_counter_reg_n_0_[20] ),
        .O(minusOp_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_2
       (.I0(\clock_counter_reg_n_0_[19] ),
        .O(minusOp_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_3
       (.I0(\clock_counter_reg_n_0_[18] ),
        .O(minusOp_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__3_i_4
       (.I0(\clock_counter_reg_n_0_[17] ),
        .O(minusOp_carry__3_i_4_n_0));
  CARRY4 minusOp_carry__4
       (.CI(minusOp_carry__3_n_0),
        .CO({minusOp_carry__4_n_0,minusOp_carry__4_n_1,minusOp_carry__4_n_2,minusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({\clock_counter_reg_n_0_[24] ,\clock_counter_reg_n_0_[23] ,\clock_counter_reg_n_0_[22] ,\clock_counter_reg_n_0_[21] }),
        .O(minusOp[24:21]),
        .S({minusOp_carry__4_i_1_n_0,minusOp_carry__4_i_2_n_0,minusOp_carry__4_i_3_n_0,minusOp_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_1
       (.I0(\clock_counter_reg_n_0_[24] ),
        .O(minusOp_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_2
       (.I0(\clock_counter_reg_n_0_[23] ),
        .O(minusOp_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_3
       (.I0(\clock_counter_reg_n_0_[22] ),
        .O(minusOp_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__4_i_4
       (.I0(\clock_counter_reg_n_0_[21] ),
        .O(minusOp_carry__4_i_4_n_0));
  CARRY4 minusOp_carry__5
       (.CI(minusOp_carry__4_n_0),
        .CO({NLW_minusOp_carry__5_CO_UNCONNECTED[3:2],minusOp_carry__5_n_2,minusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\clock_counter_reg_n_0_[26] ,\clock_counter_reg_n_0_[25] }),
        .O({NLW_minusOp_carry__5_O_UNCONNECTED[3],minusOp[27:25]}),
        .S({1'b0,minusOp_carry__5_i_1_n_0,minusOp_carry__5_i_2_n_0,minusOp_carry__5_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_1
       (.I0(\clock_counter_reg_n_0_[27] ),
        .O(minusOp_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_2
       (.I0(\clock_counter_reg_n_0_[26] ),
        .O(minusOp_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__5_i_3
       (.I0(\clock_counter_reg_n_0_[25] ),
        .O(minusOp_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(\clock_counter_reg_n_0_[4] ),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(\clock_counter_reg_n_0_[3] ),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(\clock_counter_reg_n_0_[2] ),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(\clock_counter_reg_n_0_[1] ),
        .O(minusOp_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    signal_inut_internal_i_1
       (.I0(signal_input),
        .I1(fifo_reset_internal),
        .I2(mst_exec_state),
        .O(signal_inut_internal));
  FDRE signal_inut_internal_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(signal_inut_internal),
        .Q(signal_inut_internal_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    signal_state_INST_0
       (.I0(fifo_reset_internal),
        .I1(mst_exec_state),
        .O(signal_state));
  CARRY4 stream_data_out2_carry
       (.CI(1'b0),
        .CO({stream_data_out2_carry_n_0,stream_data_out2_carry_n_1,stream_data_out2_carry_n_2,stream_data_out2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({stream_data_out2_carry_i_1_n_0,stream_data_out2_carry_i_2_n_0,stream_data_out2_carry_i_3_n_0,stream_data_out2_carry_i_4_n_0}),
        .O(NLW_stream_data_out2_carry_O_UNCONNECTED[3:0]),
        .S({stream_data_out2_carry_i_5_n_0,stream_data_out2_carry_i_6_n_0,stream_data_out2_carry_i_7_n_0,stream_data_out2_carry_i_8_n_0}));
  CARRY4 stream_data_out2_carry__0
       (.CI(stream_data_out2_carry_n_0),
        .CO({stream_data_out2_carry__0_n_0,stream_data_out2_carry__0_n_1,stream_data_out2_carry__0_n_2,stream_data_out2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({stream_data_out2_carry__0_i_1_n_0,stream_data_out2_carry__0_i_2_n_0,stream_data_out2_carry__0_i_3_n_0,stream_data_out2_carry__0_i_4_n_0}),
        .O(NLW_stream_data_out2_carry__0_O_UNCONNECTED[3:0]),
        .S({stream_data_out2_carry__0_i_5_n_0,stream_data_out2_carry__0_i_6_n_0,stream_data_out2_carry__0_i_7_n_0,stream_data_out2_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry__0_i_1
       (.I0(signal_count[15]),
        .I1(M_AXIS_TDATA[15]),
        .I2(signal_count[14]),
        .I3(M_AXIS_TDATA[14]),
        .O(stream_data_out2_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry__0_i_2
       (.I0(signal_count[13]),
        .I1(M_AXIS_TDATA[13]),
        .I2(signal_count[12]),
        .I3(M_AXIS_TDATA[12]),
        .O(stream_data_out2_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry__0_i_3
       (.I0(signal_count[11]),
        .I1(M_AXIS_TDATA[11]),
        .I2(signal_count[10]),
        .I3(M_AXIS_TDATA[10]),
        .O(stream_data_out2_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry__0_i_4
       (.I0(signal_count[9]),
        .I1(M_AXIS_TDATA[9]),
        .I2(signal_count[8]),
        .I3(M_AXIS_TDATA[8]),
        .O(stream_data_out2_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry__0_i_5
       (.I0(M_AXIS_TDATA[15]),
        .I1(signal_count[15]),
        .I2(M_AXIS_TDATA[14]),
        .I3(signal_count[14]),
        .O(stream_data_out2_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry__0_i_6
       (.I0(M_AXIS_TDATA[13]),
        .I1(signal_count[13]),
        .I2(M_AXIS_TDATA[12]),
        .I3(signal_count[12]),
        .O(stream_data_out2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry__0_i_7
       (.I0(M_AXIS_TDATA[11]),
        .I1(signal_count[11]),
        .I2(M_AXIS_TDATA[10]),
        .I3(signal_count[10]),
        .O(stream_data_out2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry__0_i_8
       (.I0(M_AXIS_TDATA[9]),
        .I1(signal_count[9]),
        .I2(M_AXIS_TDATA[8]),
        .I3(signal_count[8]),
        .O(stream_data_out2_carry__0_i_8_n_0));
  CARRY4 stream_data_out2_carry__1
       (.CI(stream_data_out2_carry__0_n_0),
        .CO({stream_data_out2_carry__1_n_0,stream_data_out2_carry__1_n_1,stream_data_out2_carry__1_n_2,stream_data_out2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({stream_data_out2_carry__1_i_1_n_0,stream_data_out2_carry__1_i_2_n_0,stream_data_out2_carry__1_i_3_n_0,stream_data_out2_carry__1_i_4_n_0}),
        .O(NLW_stream_data_out2_carry__1_O_UNCONNECTED[3:0]),
        .S({stream_data_out2_carry__1_i_5_n_0,stream_data_out2_carry__1_i_6_n_0,stream_data_out2_carry__1_i_7_n_0,stream_data_out2_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry__1_i_1
       (.I0(signal_count[23]),
        .I1(M_AXIS_TDATA[23]),
        .I2(signal_count[22]),
        .I3(M_AXIS_TDATA[22]),
        .O(stream_data_out2_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry__1_i_2
       (.I0(signal_count[21]),
        .I1(M_AXIS_TDATA[21]),
        .I2(signal_count[20]),
        .I3(M_AXIS_TDATA[20]),
        .O(stream_data_out2_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry__1_i_3
       (.I0(signal_count[19]),
        .I1(M_AXIS_TDATA[19]),
        .I2(signal_count[18]),
        .I3(M_AXIS_TDATA[18]),
        .O(stream_data_out2_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry__1_i_4
       (.I0(signal_count[17]),
        .I1(M_AXIS_TDATA[17]),
        .I2(signal_count[16]),
        .I3(M_AXIS_TDATA[16]),
        .O(stream_data_out2_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry__1_i_5
       (.I0(M_AXIS_TDATA[23]),
        .I1(signal_count[23]),
        .I2(M_AXIS_TDATA[22]),
        .I3(signal_count[22]),
        .O(stream_data_out2_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry__1_i_6
       (.I0(M_AXIS_TDATA[21]),
        .I1(signal_count[21]),
        .I2(M_AXIS_TDATA[20]),
        .I3(signal_count[20]),
        .O(stream_data_out2_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry__1_i_7
       (.I0(M_AXIS_TDATA[19]),
        .I1(signal_count[19]),
        .I2(M_AXIS_TDATA[18]),
        .I3(signal_count[18]),
        .O(stream_data_out2_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry__1_i_8
       (.I0(M_AXIS_TDATA[17]),
        .I1(signal_count[17]),
        .I2(M_AXIS_TDATA[16]),
        .I3(signal_count[16]),
        .O(stream_data_out2_carry__1_i_8_n_0));
  CARRY4 stream_data_out2_carry__2
       (.CI(stream_data_out2_carry__1_n_0),
        .CO({stream_data_out20_in,stream_data_out2_carry__2_n_1,stream_data_out2_carry__2_n_2,stream_data_out2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({stream_data_out2_carry__2_i_1_n_0,stream_data_out2_carry__2_i_2_n_0,stream_data_out2_carry__2_i_3_n_0,stream_data_out2_carry__2_i_4_n_0}),
        .O(NLW_stream_data_out2_carry__2_O_UNCONNECTED[3:0]),
        .S({stream_data_out2_carry__2_i_5_n_0,stream_data_out2_carry__2_i_6_n_0,stream_data_out2_carry__2_i_7_n_0,stream_data_out2_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry__2_i_1
       (.I0(signal_count[31]),
        .I1(M_AXIS_TDATA[31]),
        .I2(signal_count[30]),
        .I3(M_AXIS_TDATA[30]),
        .O(stream_data_out2_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry__2_i_2
       (.I0(signal_count[29]),
        .I1(M_AXIS_TDATA[29]),
        .I2(signal_count[28]),
        .I3(M_AXIS_TDATA[28]),
        .O(stream_data_out2_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry__2_i_3
       (.I0(signal_count[27]),
        .I1(M_AXIS_TDATA[27]),
        .I2(signal_count[26]),
        .I3(M_AXIS_TDATA[26]),
        .O(stream_data_out2_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry__2_i_4
       (.I0(signal_count[25]),
        .I1(M_AXIS_TDATA[25]),
        .I2(signal_count[24]),
        .I3(M_AXIS_TDATA[24]),
        .O(stream_data_out2_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry__2_i_5
       (.I0(M_AXIS_TDATA[31]),
        .I1(signal_count[31]),
        .I2(M_AXIS_TDATA[30]),
        .I3(signal_count[30]),
        .O(stream_data_out2_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry__2_i_6
       (.I0(M_AXIS_TDATA[29]),
        .I1(signal_count[29]),
        .I2(M_AXIS_TDATA[28]),
        .I3(signal_count[28]),
        .O(stream_data_out2_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry__2_i_7
       (.I0(M_AXIS_TDATA[27]),
        .I1(signal_count[27]),
        .I2(M_AXIS_TDATA[26]),
        .I3(signal_count[26]),
        .O(stream_data_out2_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry__2_i_8
       (.I0(M_AXIS_TDATA[25]),
        .I1(signal_count[25]),
        .I2(M_AXIS_TDATA[24]),
        .I3(signal_count[24]),
        .O(stream_data_out2_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry_i_1
       (.I0(signal_count[7]),
        .I1(M_AXIS_TDATA[7]),
        .I2(signal_count[6]),
        .I3(M_AXIS_TDATA[6]),
        .O(stream_data_out2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry_i_2
       (.I0(signal_count[5]),
        .I1(M_AXIS_TDATA[5]),
        .I2(signal_count[4]),
        .I3(M_AXIS_TDATA[4]),
        .O(stream_data_out2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry_i_3
       (.I0(signal_count[3]),
        .I1(M_AXIS_TDATA[3]),
        .I2(signal_count[2]),
        .I3(M_AXIS_TDATA[2]),
        .O(stream_data_out2_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    stream_data_out2_carry_i_4
       (.I0(signal_count[1]),
        .I1(M_AXIS_TDATA[1]),
        .I2(signal_count[0]),
        .I3(M_AXIS_TDATA[0]),
        .O(stream_data_out2_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry_i_5
       (.I0(M_AXIS_TDATA[7]),
        .I1(signal_count[7]),
        .I2(M_AXIS_TDATA[6]),
        .I3(signal_count[6]),
        .O(stream_data_out2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry_i_6
       (.I0(M_AXIS_TDATA[5]),
        .I1(signal_count[5]),
        .I2(M_AXIS_TDATA[4]),
        .I3(signal_count[4]),
        .O(stream_data_out2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry_i_7
       (.I0(M_AXIS_TDATA[3]),
        .I1(signal_count[3]),
        .I2(M_AXIS_TDATA[2]),
        .I3(signal_count[2]),
        .O(stream_data_out2_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    stream_data_out2_carry_i_8
       (.I0(M_AXIS_TDATA[1]),
        .I1(signal_count[1]),
        .I2(M_AXIS_TDATA[0]),
        .I3(signal_count[0]),
        .O(stream_data_out2_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \stream_data_out[31]_i_1 
       (.I0(mst_exec_state),
        .I1(fifo_reset_internal),
        .O(last_signal_input_0));
  LUT5 #(
    .INIT(32'h4040FF40)) 
    \stream_data_out[31]_i_2 
       (.I0(axis_tvalid_i_2_n_0),
        .I1(stream_data_out20_in),
        .I2(\clock_counter_reg_n_0_[0] ),
        .I3(signal_inut_internal_reg_n_0),
        .I4(last_signal_input),
        .O(stream_data_out0));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[3]_i_2 
       (.I0(M_AXIS_TDATA[0]),
        .O(\stream_data_out[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[0] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[3]_i_1_n_7 ),
        .Q(M_AXIS_TDATA[0]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[10] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[11]_i_1_n_5 ),
        .Q(M_AXIS_TDATA[10]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[11] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[11]_i_1_n_4 ),
        .Q(M_AXIS_TDATA[11]),
        .R(last_signal_input_0));
  CARRY4 \stream_data_out_reg[11]_i_1 
       (.CI(\stream_data_out_reg[7]_i_1_n_0 ),
        .CO({\stream_data_out_reg[11]_i_1_n_0 ,\stream_data_out_reg[11]_i_1_n_1 ,\stream_data_out_reg[11]_i_1_n_2 ,\stream_data_out_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stream_data_out_reg[11]_i_1_n_4 ,\stream_data_out_reg[11]_i_1_n_5 ,\stream_data_out_reg[11]_i_1_n_6 ,\stream_data_out_reg[11]_i_1_n_7 }),
        .S(M_AXIS_TDATA[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[12] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[15]_i_1_n_7 ),
        .Q(M_AXIS_TDATA[12]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[13] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[15]_i_1_n_6 ),
        .Q(M_AXIS_TDATA[13]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[14] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[15]_i_1_n_5 ),
        .Q(M_AXIS_TDATA[14]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[15] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[15]_i_1_n_4 ),
        .Q(M_AXIS_TDATA[15]),
        .R(last_signal_input_0));
  CARRY4 \stream_data_out_reg[15]_i_1 
       (.CI(\stream_data_out_reg[11]_i_1_n_0 ),
        .CO({\stream_data_out_reg[15]_i_1_n_0 ,\stream_data_out_reg[15]_i_1_n_1 ,\stream_data_out_reg[15]_i_1_n_2 ,\stream_data_out_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stream_data_out_reg[15]_i_1_n_4 ,\stream_data_out_reg[15]_i_1_n_5 ,\stream_data_out_reg[15]_i_1_n_6 ,\stream_data_out_reg[15]_i_1_n_7 }),
        .S(M_AXIS_TDATA[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[16] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[19]_i_1_n_7 ),
        .Q(M_AXIS_TDATA[16]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[17] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[19]_i_1_n_6 ),
        .Q(M_AXIS_TDATA[17]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[18] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[19]_i_1_n_5 ),
        .Q(M_AXIS_TDATA[18]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[19] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[19]_i_1_n_4 ),
        .Q(M_AXIS_TDATA[19]),
        .R(last_signal_input_0));
  CARRY4 \stream_data_out_reg[19]_i_1 
       (.CI(\stream_data_out_reg[15]_i_1_n_0 ),
        .CO({\stream_data_out_reg[19]_i_1_n_0 ,\stream_data_out_reg[19]_i_1_n_1 ,\stream_data_out_reg[19]_i_1_n_2 ,\stream_data_out_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stream_data_out_reg[19]_i_1_n_4 ,\stream_data_out_reg[19]_i_1_n_5 ,\stream_data_out_reg[19]_i_1_n_6 ,\stream_data_out_reg[19]_i_1_n_7 }),
        .S(M_AXIS_TDATA[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[1] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[3]_i_1_n_6 ),
        .Q(M_AXIS_TDATA[1]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[20] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[23]_i_1_n_7 ),
        .Q(M_AXIS_TDATA[20]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[21] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[23]_i_1_n_6 ),
        .Q(M_AXIS_TDATA[21]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[22] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[23]_i_1_n_5 ),
        .Q(M_AXIS_TDATA[22]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[23] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[23]_i_1_n_4 ),
        .Q(M_AXIS_TDATA[23]),
        .R(last_signal_input_0));
  CARRY4 \stream_data_out_reg[23]_i_1 
       (.CI(\stream_data_out_reg[19]_i_1_n_0 ),
        .CO({\stream_data_out_reg[23]_i_1_n_0 ,\stream_data_out_reg[23]_i_1_n_1 ,\stream_data_out_reg[23]_i_1_n_2 ,\stream_data_out_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stream_data_out_reg[23]_i_1_n_4 ,\stream_data_out_reg[23]_i_1_n_5 ,\stream_data_out_reg[23]_i_1_n_6 ,\stream_data_out_reg[23]_i_1_n_7 }),
        .S(M_AXIS_TDATA[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[24] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[27]_i_1_n_7 ),
        .Q(M_AXIS_TDATA[24]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[25] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[27]_i_1_n_6 ),
        .Q(M_AXIS_TDATA[25]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[26] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[27]_i_1_n_5 ),
        .Q(M_AXIS_TDATA[26]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[27] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[27]_i_1_n_4 ),
        .Q(M_AXIS_TDATA[27]),
        .R(last_signal_input_0));
  CARRY4 \stream_data_out_reg[27]_i_1 
       (.CI(\stream_data_out_reg[23]_i_1_n_0 ),
        .CO({\stream_data_out_reg[27]_i_1_n_0 ,\stream_data_out_reg[27]_i_1_n_1 ,\stream_data_out_reg[27]_i_1_n_2 ,\stream_data_out_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stream_data_out_reg[27]_i_1_n_4 ,\stream_data_out_reg[27]_i_1_n_5 ,\stream_data_out_reg[27]_i_1_n_6 ,\stream_data_out_reg[27]_i_1_n_7 }),
        .S(M_AXIS_TDATA[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[28] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[31]_i_3_n_7 ),
        .Q(M_AXIS_TDATA[28]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[29] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[31]_i_3_n_6 ),
        .Q(M_AXIS_TDATA[29]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[2] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[3]_i_1_n_5 ),
        .Q(M_AXIS_TDATA[2]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[30] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[31]_i_3_n_5 ),
        .Q(M_AXIS_TDATA[30]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[31] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[31]_i_3_n_4 ),
        .Q(M_AXIS_TDATA[31]),
        .R(last_signal_input_0));
  CARRY4 \stream_data_out_reg[31]_i_3 
       (.CI(\stream_data_out_reg[27]_i_1_n_0 ),
        .CO({\NLW_stream_data_out_reg[31]_i_3_CO_UNCONNECTED [3],\stream_data_out_reg[31]_i_3_n_1 ,\stream_data_out_reg[31]_i_3_n_2 ,\stream_data_out_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stream_data_out_reg[31]_i_3_n_4 ,\stream_data_out_reg[31]_i_3_n_5 ,\stream_data_out_reg[31]_i_3_n_6 ,\stream_data_out_reg[31]_i_3_n_7 }),
        .S(M_AXIS_TDATA[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[3] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[3]_i_1_n_4 ),
        .Q(M_AXIS_TDATA[3]),
        .R(last_signal_input_0));
  CARRY4 \stream_data_out_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\stream_data_out_reg[3]_i_1_n_0 ,\stream_data_out_reg[3]_i_1_n_1 ,\stream_data_out_reg[3]_i_1_n_2 ,\stream_data_out_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\stream_data_out_reg[3]_i_1_n_4 ,\stream_data_out_reg[3]_i_1_n_5 ,\stream_data_out_reg[3]_i_1_n_6 ,\stream_data_out_reg[3]_i_1_n_7 }),
        .S({M_AXIS_TDATA[3:1],\stream_data_out[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[4] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[7]_i_1_n_7 ),
        .Q(M_AXIS_TDATA[4]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[5] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[7]_i_1_n_6 ),
        .Q(M_AXIS_TDATA[5]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[6] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[7]_i_1_n_5 ),
        .Q(M_AXIS_TDATA[6]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[7] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[7]_i_1_n_4 ),
        .Q(M_AXIS_TDATA[7]),
        .R(last_signal_input_0));
  CARRY4 \stream_data_out_reg[7]_i_1 
       (.CI(\stream_data_out_reg[3]_i_1_n_0 ),
        .CO({\stream_data_out_reg[7]_i_1_n_0 ,\stream_data_out_reg[7]_i_1_n_1 ,\stream_data_out_reg[7]_i_1_n_2 ,\stream_data_out_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\stream_data_out_reg[7]_i_1_n_4 ,\stream_data_out_reg[7]_i_1_n_5 ,\stream_data_out_reg[7]_i_1_n_6 ,\stream_data_out_reg[7]_i_1_n_7 }),
        .S(M_AXIS_TDATA[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[8] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[11]_i_1_n_7 ),
        .Q(M_AXIS_TDATA[8]),
        .R(last_signal_input_0));
  FDRE #(
    .INIT(1'b0)) 
    \stream_data_out_reg[9] 
       (.C(m00_axis_aclk),
        .CE(stream_data_out0),
        .D(\stream_data_out_reg[11]_i_1_n_6 ),
        .Q(M_AXIS_TDATA[9]),
        .R(last_signal_input_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \word_counter[0]_i_1 
       (.I0(number_words[0]),
        .I1(axis_tlast_i_3_n_0),
        .I2(\word_counter_reg_n_0_[0] ),
        .O(word_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[10]_i_1 
       (.I0(number_words[10]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry__1_n_6),
        .O(word_counter[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[11]_i_1 
       (.I0(number_words[11]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry__1_n_5),
        .O(word_counter[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[12]_i_1 
       (.I0(number_words[12]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry__1_n_4),
        .O(word_counter[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[13]_i_1 
       (.I0(number_words[13]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry__2_n_7),
        .O(word_counter[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[14]_i_1 
       (.I0(number_words[14]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry__2_n_6),
        .O(word_counter[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFF4444F444)) 
    \word_counter[15]_i_1 
       (.I0(last_signal_input),
        .I1(signal_inut_internal_reg_n_0),
        .I2(\clock_counter_reg_n_0_[0] ),
        .I3(stream_data_out20_in),
        .I4(axis_tvalid_i_2_n_0),
        .I5(last_signal_input_0),
        .O(\word_counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[15]_i_2 
       (.I0(number_words[15]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry__2_n_5),
        .O(word_counter[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[1]_i_1 
       (.I0(number_words[1]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry_n_7),
        .O(word_counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[2]_i_1 
       (.I0(number_words[2]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry_n_6),
        .O(word_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[3]_i_1 
       (.I0(number_words[3]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry_n_5),
        .O(word_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[4]_i_1 
       (.I0(number_words[4]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry_n_4),
        .O(word_counter[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[5]_i_1 
       (.I0(number_words[5]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry__0_n_7),
        .O(word_counter[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[6]_i_1 
       (.I0(number_words[6]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry__0_n_6),
        .O(word_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[7]_i_1 
       (.I0(number_words[7]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry__0_n_5),
        .O(word_counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[8]_i_1 
       (.I0(number_words[8]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry__0_n_4),
        .O(word_counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \word_counter[9]_i_1 
       (.I0(number_words[9]),
        .I1(axis_tlast_i_3_n_0),
        .I2(minusOp__52_carry__1_n_7),
        .O(word_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[0] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[0]),
        .Q(\word_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[10] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[10]),
        .Q(\word_counter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[11] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[11]),
        .Q(\word_counter_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[12] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[12]),
        .Q(\word_counter_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[13] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[13]),
        .Q(\word_counter_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[14] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[14]),
        .Q(\word_counter_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[15] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[15]),
        .Q(\word_counter_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[1] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[1]),
        .Q(\word_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[2] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[2]),
        .Q(\word_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[3] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[3]),
        .Q(\word_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[4] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[4]),
        .Q(\word_counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[5] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[5]),
        .Q(\word_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[6] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[6]),
        .Q(\word_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[7] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[7]),
        .Q(\word_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[8] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[8]),
        .Q(\word_counter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \word_counter_reg[9] 
       (.C(m00_axis_aclk),
        .CE(\word_counter[15]_i_1_n_0 ),
        .D(word_counter[9]),
        .Q(\word_counter_reg_n_0_[9] ),
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
