module testspi(
	input CLK,
	
	input  [2:1] KEY,
	output [2:1] LED,
	
	// Test Output
	output [2:0] CLKO,
	output BENCH_OUT
);

	wire locked, por;
	wire nRst = KEY[2] & locked | por;
	PowerOnReset por0(.iCLK(CLK), .oRESET(por));
	wire CLK_24M, CLK_12M;
	PLL p0(
		.clkin(CLK),
		.clkfb(CLK_24M),
		.pllen(1'b1),
		.resetn(1'b1),
		.clkout0en(1'b1),
		.clkout1en(1'b1),
		.clkout2en(1'b0),
		.clkout3en(1'b0),
		.clkout0(CLK_24M),
		.clkout1(CLK_12M),
		.clkout2(),
		.clkout3(),
		.lock(locked));

	wire CLK_1M, CLK_1k, CLK_4Hz;
	clkdivider #(.CNT_MAX(16'd12))    c0 (.clk(CLK_12M), .nRST(nRst), .clkout(CLK_1M));
	clkdivider #(.CNT_MAX(16'd1000))  c1 (.clk(CLK_1M),  .nRST(nRst), .clkout(CLK_1k));
	clkdivider #(.CNT_MAX(16'd125))  c2 (.clk(CLK_1k),  .nRST(nRst), .clkout(CLK_4Hz));
	
	wire[3:0] tune_wire;
	wire music_tick;
	tick_controller dfh_jiezou(.clk4hz(CLK_4Hz),.rst(KEY[2]),.tick(music_tick));
	tune_generator dfh(.trigger(music_tick),.rst(KEY[2]), .tune_code(tune_wire));
	wave_generator wav(.tune(tune_wire), .clk12M(CLK_12M), .Rst(music_tick), .switcher(KEY[1]), .wave(BENCH_OUT));


	assign CLKO[0] = tune_wire[2];
	assign CLKO[1] = tune_wire[1];
	assign CLKO[2] = tune_wire[0];
	//assign BENCH_OUT = CLK_12M;
	
	assign LED[1] = ~music_tick;
	assign LED[2] = ~KEY[1];

endmodule