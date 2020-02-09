// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Fri Feb  7 00:31:26 2020
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_input_selector_0_0 -prefix
//               design_1_input_selector_0_0_ design_1_input_selector_0_0_stub.v
// Design      : design_1_input_selector_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "input_selector_v1_0,Vivado 2019.2.1" *)
module design_1_input_selector_0_0(selector, s00_axis_tready, s00_axis_tdata, 
  s00_axis_tkeep, s00_axis_tlast, s00_axis_tvalid, s01_axis_tready, s01_axis_tdata, 
  s01_axis_tkeep, s01_axis_tlast, s01_axis_tvalid, m00_axis_tvalid, m00_axis_tdata, 
  m00_axis_tkeep, m00_axis_tlast, m00_axis_tready, signal_state_0, signal_state_1, 
  signal_state, fifo_reset_0, fifo_reset_1, fifo_reset)
/* synthesis syn_black_box black_box_pad_pin="selector,s00_axis_tready,s00_axis_tdata[31:0],s00_axis_tkeep[3:0],s00_axis_tlast,s00_axis_tvalid,s01_axis_tready,s01_axis_tdata[31:0],s01_axis_tkeep[3:0],s01_axis_tlast,s01_axis_tvalid,m00_axis_tvalid,m00_axis_tdata[31:0],m00_axis_tkeep[3:0],m00_axis_tlast,m00_axis_tready,signal_state_0,signal_state_1,signal_state,fifo_reset_0,fifo_reset_1,fifo_reset" */;
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
  output fifo_reset;
endmodule
