module ROM (input [3:0]operation, output [1:0]code);

	always @(*) begin
	case(operation)
	4'b1010 : code = 2'b01;
	4'b1011 : code = 2'b10;
	4'b1100 : code = 2'b11;
	default: code = 2'b00;
	endcase
	end 
	endmodule
	