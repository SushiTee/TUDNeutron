// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Mon Feb 10 19:18:50 2020
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_signal_generator_0_0 -prefix
//               design_1_signal_generator_0_0_ design_1_signal_generator_0_0_stub.v
// Design      : design_1_signal_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "signal_generator_v1_0,Vivado 2019.2.1" *)
module design_1_signal_generator_0_0(enabled, signal_state, fifo_reset, 
  number_words, signal_count, signal_frequency, signal_input, m00_axis_aclk, 
  m00_axis_aresetn, m00_axis_tvalid, m00_axis_tdata, m00_axis_tkeep, m00_axis_tlast, 
  m00_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="enabled,signal_state,fifo_reset,number_words[15:0],signal_count[31:0],signal_frequency[27:0],signal_input,m00_axis_aclk,m00_axis_aresetn,m00_axis_tvalid,m00_axis_tdata[31:0],m00_axis_tkeep[3:0],m00_axis_tlast,m00_axis_tready" */;
  input enabled;
  output signal_state;
  output fifo_reset;
  input [15:0]number_words;
  input [31:0]signal_count;
  input [27:0]signal_frequency;
  input signal_input;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tkeep;
  output m00_axis_tlast;
  input m00_axis_tready;
endmodule
