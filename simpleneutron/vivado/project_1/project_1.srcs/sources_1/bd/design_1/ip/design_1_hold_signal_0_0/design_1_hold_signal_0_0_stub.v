// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Wed Feb 12 20:40:33 2020
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_hold_signal_0_0 -prefix
//               design_1_hold_signal_0_0_ design_1_hold_signal_0_5_stub.v
// Design      : design_1_hold_signal_0_5
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "hold_signal_v1_0,Vivado 2019.2.1" *)
module design_1_hold_signal_0_0(signal_in, signal_out, m00_axis_aclk, 
  m00_axis_aresetn)
/* synthesis syn_black_box black_box_pad_pin="signal_in,signal_out,m00_axis_aclk,m00_axis_aresetn" */;
  input signal_in;
  output signal_out;
  input m00_axis_aclk;
  input m00_axis_aresetn;
endmodule
