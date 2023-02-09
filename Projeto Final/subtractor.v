module subtractor(input [3:0] a, input [3:0] b, output [7:0] difference, output borrow);
   always @(*) begin
      if (a >= b) begin
		difference= a - b;
		borrow = 0;
		end else begin
		difference = b - a;
		borrow = 1;
		end
		end
endmodule
