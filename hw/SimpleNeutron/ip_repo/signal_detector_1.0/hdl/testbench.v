`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// TU Dresden:
// Engineer: Sascha Weichel
//
// Create Date: 22.03.2021 10:32:39
// Module Name: testbench
// Project Name: TUDNeutron
// Target Devices: Zedboard
// Description: Simple test of signal detector
//
//////////////////////////////////////////////////////////////////////////////////

module testbench();

reg axis_aclk;
reg axis_aresetn;
reg enabled;
reg trigger_input;
wire fifo_reset;
reg signal_input;
wire signal_state;
wire stopped;
reg [31:0] measurement_time;
reg [15:0] number_words;
wire [31:0] tdata;
wire [3:0] tkeep;
wire tlast;
wire tlast;
reg tready;
wire tvalid;

initial begin
    enabled = 1;
    trigger_input = 1;
    number_words = 8;
    axis_aresetn = 1;
    signal_input = 0;
    measurement_time = 1;
    tready = 1;
end

initial begin
    axis_aclk = 1;
    forever #0.5 axis_aclk = ~axis_aclk;
end

initial begin
    #100 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    //#10 signal_input = 1;
    //#50 signal_input = 0;
    #99000 signal_input = 1;
    #50 signal_input = 0;
    #1000 signal_input = 1;
    #50 signal_input = 0;
    enabled = 0;
    #10 enabled = 1;
    #100 signal_input = 1;
    #50 signal_input = 0;
    #100 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
    //#10 signal_input = 1;
    //#50 signal_input = 0;
    #99000 signal_input = 1;
    #50 signal_input = 0;
    #1000 signal_input = 1;
    #50 signal_input = 0;
    #10 signal_input = 1;
    #50 signal_input = 0;
end

signal_detector_v1_0 dut
   (.m00_axis_aclk(axis_aclk),
    .m00_axis_aresetn(axis_aresetn),
    .enabled(enabled),
    .trigger_input(trigger_input),
    .fifo_reset(fifo_reset),
    .signal_input(signal_input),
    .signal_state(signal_state),
    .stopped(stopped),
    .number_words(number_words),
    .measurement_time(measurement_time),
    .m00_axis_tdata(tdata),
    .m00_axis_tkeep(tkeep),
    .m00_axis_tlast(tlast),
    .m00_axis_tready(tready),
    .m00_axis_tvalid(tvalid));
endmodule
