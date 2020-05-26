`timescale 1ps / 1ps

module testbench();

reg clock;
reg data_clock;

reg frame_clock;
reg iinput_b;
reg input_a;
wire [31:0] data_out;
wire fifo_reset;
wire [3:0] keep;
wire last;
reg reset;
wire signal_state;
wire [7:0] test_output;
wire valid;

initial begin
	clock = 0;
	forever #1 clock = ~clock;
end

initial begin
    frame_clock = 0;
    #15 frame_clock = 0;
	forever #40 frame_clock = ~frame_clock;
end

initial begin
	data_clock = 0;
	forever #10 data_clock = ~data_clock;
end

initial begin
	reset = 1;
end

initial begin
	input_a = 0;
	#5 input_a = 0;
	forever #10 input_a = ~input_a;
end

initial begin
	iinput_b = 0;
	#5 iinput_b = 0;
	forever #10 iinput_b = ~iinput_b;
end

design_1_wrapper dut
   (.clock(clock),
    .data_clock(data_clock),
    .data_out(data_out),
    .fifo_reset(fifo_reset),
    .frame_clock(frame_clock),
    .iinput_b(iinput_b),
    .input_a(input_a),
    .keep(keep),
    .last(last),
    .reset(reset),
    .signal_state(signal_state),
    .test_output(test_output),
    .valid(valid));

endmodule

