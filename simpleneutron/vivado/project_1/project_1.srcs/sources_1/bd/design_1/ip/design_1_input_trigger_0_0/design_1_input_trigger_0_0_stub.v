// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Fri Feb  7 00:35:11 2020
// Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/vm/projects/TUDNeutron/simpleneutron/vivado/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_input_trigger_0_0/design_1_input_trigger_0_0_stub.v
// Design      : design_1_input_trigger_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "input_trigger_v1_0,Vivado 2019.2.1" *)
module design_1_input_trigger_0_0(trigger_input, enabled, trigger_out0, 
  trigger_out1, trigger_out2, trigger_out3, trigger_out4, trigger_out5, trigger_out6, 
  trigger_out7)
/* synthesis syn_black_box black_box_pad_pin="trigger_input,enabled,trigger_out0,trigger_out1,trigger_out2,trigger_out3,trigger_out4,trigger_out5,trigger_out6,trigger_out7" */;
  input trigger_input;
  input enabled;
  output trigger_out0;
  output trigger_out1;
  output trigger_out2;
  output trigger_out3;
  output trigger_out4;
  output trigger_out5;
  output trigger_out6;
  output trigger_out7;
endmodule
