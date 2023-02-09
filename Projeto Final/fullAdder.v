module Adder(a,b,sum, sinal);
input [3:0]a,b;
output [7:0]sum;
output sinal;
always @(*) begin
sum = a + b;
end
endmodule

