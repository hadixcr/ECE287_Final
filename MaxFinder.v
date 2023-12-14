module MaxFinder (
  input [15:0] fftInDataAbs,
  output reg [15:0] max,
  output reg lastLedOn
);

  always @* begin
    max = (fftInDataAbs[15] > fftInDataAbs[14]) ? fftInDataAbs[15] : fftInDataAbs[14];
    max = (max > fftInDataAbs[13]) ? max : fftInDataAbs[13];
    max = (max > fftInDataAbs[12]) ? max : fftInDataAbs[12];
    max = (max > fftInDataAbs[11]) ? max : fftInDataAbs[11];
    max = (max > fftInDataAbs[10]) ? max : fftInDataAbs[10];
    max = (max > fftInDataAbs[9]) ? max : fftInDataAbs[9];
    max = (max > fftInDataAbs[8]) ? max : fftInDataAbs[8];
    max = (max > fftInDataAbs[7]) ? max : fftInDataAbs[7];
    max = (max > fftInDataAbs[6]) ? max : fftInDataAbs[6];
    max = (max > fftInDataAbs[5]) ? max : fftInDataAbs[5];
    max = (max > fftInDataAbs[4]) ? max : fftInDataAbs[4];
    max = (max > fftInDataAbs[3]) ? max : fftInDataAbs[3];
    max = (max > fftInDataAbs[2]) ? max : fftInDataAbs[2];
    max = (max > fftInDataAbs[1]) ? max : fftInDataAbs[1];
    max = (max > fftInDataAbs[0]) ? max : fftInDataAbs[0];
	 
	 lastLedOn = (max == fftInDataAbs[15]);
  end

endmodule
