//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2700185 Thu Oct 24 18:45:48 MDT 2019
//Date        : Wed Dec 18 16:20:24 2019
//Host        : vm-VirtualBox running 64-bit Ubuntu 18.04.3 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (M00_AXIS_tdata,
    M00_AXIS_tlast,
    M00_AXIS_tready,
    M00_AXIS_tstrb,
    M00_AXIS_tvalid,
    enabled,
    m00_axis_aclk,
    m00_axis_aresetn,
    signal_input,
    signal_state);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, CLK_DOMAIN design_1_m00_axis_aclk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]M00_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output M00_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input M00_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]M00_AXIS_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output M00_AXIS_tvalid;
  input enabled;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.M00_AXIS_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.M00_AXIS_ACLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, CLK_DOMAIN design_1_m00_axis_aclk, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.M00_AXIS_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.M00_AXIS_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input m00_axis_aresetn;
  input signal_input;
  output signal_state;

  wire enabled_1;
  wire m00_axis_aclk_1;
  wire m00_axis_aresetn_1;
  wire [31:0]signal_detector_0_M00_AXIS_TDATA;
  wire signal_detector_0_M00_AXIS_TLAST;
  wire signal_detector_0_M00_AXIS_TREADY;
  wire [3:0]signal_detector_0_M00_AXIS_TSTRB;
  wire signal_detector_0_M00_AXIS_TVALID;
  wire signal_detector_0_signal_state;
  wire signal_input_1;

  assign M00_AXIS_tdata[31:0] = signal_detector_0_M00_AXIS_TDATA;
  assign M00_AXIS_tlast = signal_detector_0_M00_AXIS_TLAST;
  assign M00_AXIS_tstrb[3:0] = signal_detector_0_M00_AXIS_TSTRB;
  assign M00_AXIS_tvalid = signal_detector_0_M00_AXIS_TVALID;
  assign enabled_1 = enabled;
  assign m00_axis_aclk_1 = m00_axis_aclk;
  assign m00_axis_aresetn_1 = m00_axis_aresetn;
  assign signal_detector_0_M00_AXIS_TREADY = M00_AXIS_tready;
  assign signal_input_1 = signal_input;
  assign signal_state = signal_detector_0_signal_state;
  design_1_signal_detector_0_0 signal_detector_0
       (.enabled(enabled_1),
        .m00_axis_aclk(m00_axis_aclk_1),
        .m00_axis_aresetn(m00_axis_aresetn_1),
        .m00_axis_tdata(signal_detector_0_M00_AXIS_TDATA),
        .m00_axis_tlast(signal_detector_0_M00_AXIS_TLAST),
        .m00_axis_tready(signal_detector_0_M00_AXIS_TREADY),
        .m00_axis_tstrb(signal_detector_0_M00_AXIS_TSTRB),
        .m00_axis_tvalid(signal_detector_0_M00_AXIS_TVALID),
        .signal_input(signal_input_1),
        .signal_state(signal_detector_0_signal_state));
endmodule
