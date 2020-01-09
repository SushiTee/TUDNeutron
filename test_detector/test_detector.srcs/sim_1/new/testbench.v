`timescale 1ps / 1ps

module testbench();

wire [31:0] data;
wire last;
reg ready;
wire valid;
reg enabled;
reg clock;
reg reset;
reg [7:0] signal_input;
reg [15:0] number_words;
wire signal_state;
wire fifo_reset;
wire [31:0] wr_fifo_fill;
wire [31:0] rd_fifo_fill;
wire [3:0] strb;
wire detector_tlast;
wire detector_tvalid;
wire detector_running;

initial begin
	number_words = 3;
end

initial begin
	ready = 1;
	#2200 ready = 0;
	#1000 ready = 1;
end

initial begin
	clock = 0;
	forever #5 clock = ~clock;
end

initial begin
	reset = 0;
	#100 reset = 1;
end

initial begin
	enabled = 0;
	#50 enabled = 1;
	#1120 enabled = 0;
	#200 enabled = 1;
end

initial begin
	signal_input = 8'h00;
	#30 signal_input = 8'hff;
	#80 signal_input = 8'h00;
	#40 signal_input = 8'hff;
	#70 signal_input = 8'h00;
	#30 signal_input = 8'hff;
	#90 signal_input = 8'h00;
	#120 signal_input = 8'hff;
	#80 signal_input = 8'h00;
	#90 signal_input = 8'hff;
	#80 signal_input = 8'h00;
	#90 signal_input = 8'hff;
	#30 signal_input = 8'h00;
	#40 signal_input = 8'hff;
	#30 signal_input = 8'h00;
	#70 signal_input = 8'hff;
	#90 signal_input = 8'h00;
	#110 signal_input = 8'hff;
	#120 signal_input = 8'h00;
	#40 signal_input = 8'hff;
	#90 signal_input = 8'h00;
	#70 signal_input = 8'hff;
	#60 signal_input = 8'h00;
	#50 signal_input = 8'hff;
	#90 signal_input = 8'h00;
	#70 signal_input = 8'hff;
	#60 signal_input = 8'h00;
	#170 signal_input = 8'hff;
	#30 signal_input = 8'h00;
	#40 signal_input = 8'hff;
	#90 signal_input = 8'h00;
	#70 signal_input = 8'hff;
	#60 signal_input = 8'h00;
	#50 signal_input = 8'hff;
	#90 signal_input = 8'h00;
	#70 signal_input = 8'hff;
	#60 signal_input = 8'h00;
	#170 signal_input = 8'hff;
	#10 signal_input = 8'h00;
	#10 signal_input = 8'hff;
	#10 signal_input = 8'h00;
	#10 signal_input = 8'hff;
	#10 signal_input = 8'h00;
end

design_1_wrapper dut
   (.data(data),
    .last(last),
    .ready(ready),
    .wr_fifo_fill(wr_fifo_fill),
    .rd_fifo_fill(rd_fifo_fill),
    .valid(valid),
    .enabled(enabled),
    .clock(clock),
    .reset(reset),
    .strb(strb),
    .number_words(number_words),
    .signal_input(signal_input),
    .signal_state(signal_state),
    .detector_tlast(detector_tlast),
    .detector_tvalid(detector_tvalid),
    .detector_running(detector_running),
    .fifo_reset(fifo_reset));

endmodule

