module contador(input clk, reset,
                    output reg q1, q2, q3, q4);
  always @(posedge clk) begin
    if (reset) begin
      q1 <= 1'b0;
      q2 <= 1'b0;
      q3 <= 1'b0;
      q4 <= 1'b0;
    end else begin
      q4 <= q3;
      q3 <= q2;
      q2 <= q1;
      q1 <= ~q4;
    end
  end
endmodule
