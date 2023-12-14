module clapCounter (
  input clk,
  input rst,
  input [15:0] fftInDataAbs,
  output reg [3:0] countDisplay
);


  always @(posedge clk or posedge rst) 
  begin
  
   if (rst)
	begin
		countDisplay <= 4'b0000;
	end
	else if (fftInDataAbs[15] == 1'b1)
	begin
		countDisplay <= countDisplay + 1'b1;
	end
  end

endmodule
