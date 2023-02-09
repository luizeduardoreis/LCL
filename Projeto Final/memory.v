module memory(input update_result, input signal, input [7:0]in, output [7:0]out, output sinal);
always @(posedge update_result) begin
out = in;
sinal = signal;
end
endmodule
