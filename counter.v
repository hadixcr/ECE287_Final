module counter(
  input clk,
  input rst,
  input ledPeak,
  output [3:0] clapCount
);

  reg [3:0] count;
  reg ledPeakPrev;

  always @(posedge clk or negedge rst) begin
    if (rst == 1'b0) begin
      count <= 4'b0000;
    end
    else if (ledPeak == 1'b1 && ledPeakPrev == 1'b0) begin
      count <= count + 1'b1;
    end
    ledPeakPrev <= ledPeak;
  end

  assign clapCount = count;

endmodule