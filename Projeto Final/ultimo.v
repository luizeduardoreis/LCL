module ultimo(input [7:0]soma, sub, mul, input [1:0]sel, input signal, output [7:0]result, output sinal);

assign result = (sel == 1) ? soma : (sel == 2) ? mul : sub;
assign sinal = (sel == 3) && (signal == 1) ? 1'b1 : 1'b0;

endmodule
