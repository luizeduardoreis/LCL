module ROM2 (input [3:0]operation, output code);

	always @(*) begin
	case(operation)
	4'b1101 : code = 1;
	default: code = 0;
	endcase
	end
	endmodule
	