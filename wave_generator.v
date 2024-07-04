/**
* Tune Base:
* A1=432Hz, scaled with Pythagorean tuning
* Tune code is referenced from file tune_generator.v
* switcher signal is used to switch between F major mode and C major mode.
*/
module wave_generator(
	input[3:0] tune,
	input clk12M,
	input Rst,
	input switcher,
	output reg wave
);
wire CLK_124K,CLK_166K;
wire lowgo,lowao,lowbo,co,do,eo,go,ao,highco;
reg mode,freqclk;

clkdivider #(.CNT_MAX(16'd96)) clk124gen (.clk(clk12M), .nRST(Rst), .clkout(CLK_124K));//96=C1,72=F1
clkdivider #(.CNT_MAX(16'd72)) clk166gen (.clk(clk12M), .nRST(Rst), .clkout(CLK_166K));

clkdivider #(.CNT_MAX(16'd648)) lowg (.clk(freqclk), .nRST(Rst), .clkout(lowgo));
clkdivider #(.CNT_MAX(16'd576)) lowa (.clk(freqclk), .nRST(Rst), .clkout(lowao));
clkdivider #(.CNT_MAX(16'd512)) lowb (.clk(freqclk), .nRST(Rst), .clkout(lowbo));
clkdivider #(.CNT_MAX(16'd486)) c (.clk(freqclk), .nRST(Rst), .clkout(co));
clkdivider #(.CNT_MAX(16'd432)) d (.clk(freqclk), .nRST(Rst), .clkout(do));
clkdivider #(.CNT_MAX(16'd384)) e (.clk(freqclk), .nRST(Rst), .clkout(eo));
clkdivider #(.CNT_MAX(16'd324)) g (.clk(freqclk), .nRST(Rst), .clkout(go));
clkdivider #(.CNT_MAX(16'd288)) a (.clk(freqclk), .nRST(Rst), .clkout(ao));
clkdivider #(.CNT_MAX(16'd243)) highc (.clk(freqclk), .nRST(Rst), .clkout(highco));

always @(*)
begin
	case (tune)
	4'h0: wave=lowgo;
	4'h1: wave=lowao;
	4'h2: wave=lowbo;
	4'h3: wave=co;
	4'h4: wave=do;
	4'h5: wave=eo;
	4'h6: wave=go;
	4'h7: wave=ao;
	default: wave=highco;
	endcase
	if(mode==1'b0) freqclk=CLK_124K;
	else freqclk=CLK_166K;
end

always @(negedge switcher)
begin
	mode<=~mode;
end

endmodule