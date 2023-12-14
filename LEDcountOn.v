module LEDcountOn (
	input clk,
	input rst,
	input [3:0] count,
	output reg [7:0] LEDG
);

	always @(posedge clk or posedge rst) 
	begin
		if (rst)
			LEDG <= 8'b00000000; // Reset LEDG to 0 on reset
		else
		begin
			case(count)
				4'b0001: LEDG <= 8'b00000001;
				4'b0010: LEDG <= 8'b00000011;
				4'b0011: LEDG <= 8'b00000111;
				4'b0100: LEDG <= 8'b00001111;
				4'b0101: LEDG <= 8'b00011111;
				4'b0110: LEDG <= 8'b00111111;
				4'b0111: LEDG <= 8'b01111111;
				4'b1000: LEDG <= 8'b11111111;
				default: LEDG <= 8'b00000000;
			endcase
		end
	end
endmodule
	