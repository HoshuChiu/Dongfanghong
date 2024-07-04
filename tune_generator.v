module tune_generator(
	input trigger,
	input rst,
	output reg [3:0] tune_code
);

/** 
* Tune Code:
* low G: 0
* low A: 1
* low B: 2
* C: 3
* D: 4
* E: 5
* G: 6
* A: 7
* high C: 8
*/

wire [159:0] music;
reg [8:0] counter;

assign music=160'h0667433146678763314643210645433145434321;

always @(negedge trigger,negedge rst)
begin
	tune_code[3]<=music[counter];
	tune_code[2]<=music[counter-1];
	tune_code[1]<=music[counter-2];
	tune_code[0]<=music[counter-3];
	if(rst==1'b0) counter=9'd159;
	else if(counter>9'd3) begin counter<=counter-9'd4; end
	else begin counter <= 9'd159; end
	
end

endmodule