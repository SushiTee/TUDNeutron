// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Sun Dec 29 20:53:46 2019
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_signal_detector_0_5 -prefix
//               design_1_signal_detector_0_5_ design_1_signal_detector_0_0_stub.v
// Design      : design_1_signal_detector_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "signal_detector_v1_0,Vivado 2019.2.1" *)
module design_1_signal_detector_0_5(enabled, signal_input, signal_state, 
  fifo_reset, number_words, m00_axis_aclk, m00_axis_aresetn, m00_axis_tvalid, m00_axis_tdata, 
  m00_axis_tstrb, m00_axis_tlast, m00_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="enabled,signal_input,signal_state,fifo_reset,number_words[15:0],m00_axis_aclk,m00_axis_aresetn,m00_axis_tvalid,m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tready" */;
  input enabled;
  input signal_input;
  output signal_state;
  output fifo_reset;
  input [15:0]number_words;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tstrb;
  output m00_axis_tlast;
  input m00_axis_tready;
endmodule
