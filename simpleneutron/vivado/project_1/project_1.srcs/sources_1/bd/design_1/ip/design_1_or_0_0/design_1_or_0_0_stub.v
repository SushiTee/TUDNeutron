// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Sat Feb  8 16:43:41 2020
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_or_0_0 -prefix
//               design_1_or_0_0_ design_1_or_0_0_stub.v
// Design      : design_1_or_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "or_v1_0,Vivado 2019.2.1" *)
module design_1_or_0_0(in0, in1, in2, in3, in4, in5, in6, in7, out0)
/* synthesis syn_black_box black_box_pad_pin="in0,in1,in2,in3,in4,in5,in6,in7,out0" */;
  input in0;
  input in1;
  input in2;
  input in3;
  input in4;
  input in5;
  input in6;
  input in7;
  output out0;
endmodule
