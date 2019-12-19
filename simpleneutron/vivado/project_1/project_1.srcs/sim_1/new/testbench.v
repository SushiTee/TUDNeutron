`timescale 1ps / 1ps

module testbench();

wire [31:0] M00_AXIS_tdata;
wire M00_AXIS_tlast;
reg M00_AXIS_tready;
wire [3:0] M00_AXIS_tstrb;
wire M00_AXIS_tvalid;
reg enabled;
reg clk;
reg resetn;
reg signal_input;
wire signal_state;

initial begin
	M00_AXIS_tready = 1;
end

initial begin
	clk = 0;
	forever #5 clk = ~clk;
end

initial begin
	resetn = 0;
	#100 resetn = 1;
end

initial begin
	enabled = 0;
	#50 enabled = 1;
	#1120 enabled = 0;
	#200 enabled = 1;
end

initial begin
	signal_input = 0;
	#30 signal_input = 1;
	#80 signal_input = 0;
	#40 signal_input = 1;
	#70 signal_input = 0;
	#30 signal_input = 1;
	#90 signal_input = 0;
	#120 signal_input = 1;
	#80 signal_input = 0;
	#90 signal_input = 1;
	#80 signal_input = 0;
	#90 signal_input = 1;
	#30 signal_input = 0;
	#40 signal_input = 1;
	#30 signal_input = 0;
	#70 signal_input = 1;
	#90 signal_input = 0;
	#110 signal_input = 1;
	#120 signal_input = 0;
	#40 signal_input = 1;
	#90 signal_input = 0;
	#70 signal_input = 1;
	#60 signal_input = 0;
	#50 signal_input = 1;
	#90 signal_input = 0;
	#70 signal_input = 1;
	#60 signal_input = 0;
	#170 signal_input = 1;
	#30 signal_input = 0;
end

design_1_wrapper dut
   (.M00_AXIS_tdata(M00_AXIS_tdata),
    .M00_AXIS_tlast(M00_AXIS_tlast),
    .M00_AXIS_tready(M00_AXIS_tready),
    .M00_AXIS_tstrb(M00_AXIS_tstrb),
    .M00_AXIS_tvalid(M00_AXIS_tvalid),
    .enabled(enabled),
    .m00_axis_aclk(clk),
    .m00_axis_aresetn(resetn),
    .signal_input(signal_input),
    .signal_state(signal_state));

endmodule

