// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Fri Feb  7 00:18:34 2020
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/vm/projects/TUDNeutron/simpleneutron/vivado/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_enable_splitter_0_0/design_1_enable_splitter_0_0_stub.v
// Design      : design_1_enable_splitter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "enable_splitter_v1_0,Vivado 2019.2.1" *)
module design_1_enable_splitter_0_0(switch_input, gpio_input, out0, out1, out2, out3, 
  out4, out5, out6, out7)
/* synthesis syn_black_box black_box_pad_pin="switch_input[7:0],gpio_input[7:0],out0,out1,out2,out3,out4,out5,out6,out7" */;
  input [7:0]switch_input;
  input [7:0]gpio_input;
  output out0;
  output out1;
  output out2;
  output out3;
  output out4;
  output out5;
  output out6;
  output out7;
endmodule
