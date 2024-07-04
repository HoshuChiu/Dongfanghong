module tick_controller(
	input clk4hz,
	input rst,
	output reg tick
);

reg [8:0] counter;
reg [3:0] pulse_counter;
wire [79:0] music;

assign music=80'h42425004254150400002;

always @(negedge clk4hz,negedge rst) begin

if(rst==1'b0) begin counter=9'd79; pulse_counter=4'd7; tick<=1'b1; end
else if(pulse_counter<4'd7) begin pulse_counter<=pulse_counter+4'd1; tick<=1'b1; end
else begin
	case({music[counter],music[counter-1]})//reset the pulse counter
		2'b00: pulse_counter<=4'd6;
		2'b01: pulse_counter<=4'd4;
		2'b10: pulse_counter<=4'd0;
		default: pulse_counter<=3'd2;
	endcase
	tick<=1'b0;
	if(counter>9'd1) begin counter<=counter-9'd2; end
	else begin counter <= 9'd79; end
end


end


endmodule