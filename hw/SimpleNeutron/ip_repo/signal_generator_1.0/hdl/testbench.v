`timescale 10ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// TU Dresden:
// Engineer: Sascha Weichel
//
// Create Date: 23.03.2021 15:32:39
// Module Name: testbench
// Project Name: TUDNeutron
// Target Devices: Zedboard
// Description: Simple test of signal generator
//
//////////////////////////////////////////////////////////////////////////////////

module testbench();

reg axis_aclk;
reg axis_aresetn;
reg enabled;
wire fifo_reset;
reg [31:0] measurement_time;
reg [15:0] number_words;
reg signal_input;
wire signal_state;
wire stopped;
reg [31:0] signal_count;
reg [27:0] signal_frequency;
wire [31:0] tdata;
wire [3:0] tkeep;
wire tlast;
wire tlast;
reg tready;
wire tvalid;

initial begin
    enabled = 1;
    number_words = 8;
    axis_aresetn = 1;
    signal_input = 0;
    measurement_time = 1;
    signal_count = 1000000;
    signal_frequency = 50000000;
    tready = 1;
end

initial begin
    axis_aclk = 1;
    forever #0.5 axis_aclk = ~axis_aclk;
end

signal_generator_v1_0 dut
   (.m00_axis_aclk(axis_aclk),
    .m00_axis_aresetn(axis_aresetn),
    .enabled(enabled),
    .fifo_reset(fifo_reset),
    .signal_count(signal_count),
    .signal_frequency(signal_frequency),
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
