module enable (input [7:0]saida, input calculate, output [7:0]resultado);

	always @(*) begin
	case (calculate) 
	
	0 : resultado = 7'b0000000;
	1 : resultado = saida;
	default: resultado = 7'b0000000;
	endcase
	end
	endmodule
	