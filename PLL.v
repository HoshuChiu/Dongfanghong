`timescale 1ns/1ps
module PLL(
   input clkin,
   input clkfb,
   input pllen,
   input resetn,
   input clkout0en,
   input clkout1en,
   input clkout2en,
   input clkout3en,
  output clkout0,
  output clkout1,
  output clkout2,
  output clkout3,
  output lock
);


alta_pllx PLL_D84CC99B(
  .clkin(clkin),
  .clkfb(clkfb),
  .pllen(pllen),
  .resetn(resetn),
  .clkout0en(clkout0en),
  .clkout1en(clkout1en),
  .clkout2en(clkout2en),
  .clkout3en(clkout3en),
  .clkout0(PLL_clkout0),
  .clkout1(PLL_clkout1),
  .clkout2(PLL_clkout2),
  .clkout3(PLL_clkout3),
  .lock(PLL_lock)
);
defparam PLL_D84CC99B.CLKIN_DIV = 6'h01;
defparam PLL_D84CC99B.CLKFB_DIV = 6'h01;
defparam PLL_D84CC99B.CLKDIV0_EN = 1'h1;
defparam PLL_D84CC99B.CLKOUT0_DIV = 6'h1E;
defparam PLL_D84CC99B.CLKOUT0_DEL = 6'h00;
defparam PLL_D84CC99B.CLKOUT0_PHASE = 3'h0;
defparam PLL_D84CC99B.CLKDIV1_EN = 1'h1;
defparam PLL_D84CC99B.CLKOUT1_DIV = 6'h3D;
defparam PLL_D84CC99B.CLKOUT1_DEL = 6'h00;
defparam PLL_D84CC99B.CLKOUT1_PHASE = 3'h0;
defparam PLL_D84CC99B.CLKDIV2_EN = 1'h0;
defparam PLL_D84CC99B.CLKOUT2_DIV = 6'h3F;
defparam PLL_D84CC99B.CLKOUT2_DEL = 6'h00;
defparam PLL_D84CC99B.CLKOUT2_PHASE = 3'h0;
defparam PLL_D84CC99B.CLKDIV3_EN = 1'h0;
defparam PLL_D84CC99B.CLKOUT3_DIV = 6'h3F;
defparam PLL_D84CC99B.CLKOUT3_DEL = 6'h00;
defparam PLL_D84CC99B.CLKOUT3_PHASE = 3'h0;
defparam PLL_D84CC99B.FEEDBACK_MODE = 1'b1;
defparam PLL_D84CC99B.FEEDBACK_CLOCK = 2'b00;

assign clkout0 = PLL_clkout0;
assign clkout1 = PLL_clkout1;
assign clkout2 = PLL_clkout2;
assign clkout3 = PLL_clkout3;
assign lock = PLL_lock;

endmodule

