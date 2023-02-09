module decoder (input clk, input [4:0] state, output reg [4:0] luzes);
  always @ (posedge clk) begin
			case (state)
			5'b00000: luzes <= 5'b10001;
			5'b00001: luzes <= 5'b10001;
			5'b00010: luzes <= 5'b10001;
			5'b00011: luzes <= 5'b10001;
			5'b00100: luzes <= 5'b10001;
			5'b00101: luzes <= 5'b10001;
			5'b00110: luzes <= 5'b01001;
			5'b00111: luzes <= 5'b00110;
			5'b01000: luzes <= 5'b00110;
			5'b01001: luzes <= 5'b00110;
			5'b01010: luzes <= 5'b00110;
			5'b01011: luzes <= 5'b00100;
			5'b01100: luzes <= 5'b00101;
			5'b01101: luzes <= 5'b00100;
			5'b01110: luzes <= 5'b00101;
			5'b01111: luzes <= 5'b00100;
			5'b10000: luzes <= 5'b00000;
			5'b10001: luzes <= 5'b01000;
			default: luzes <= 5'b00000;
			endcase
			end
endmodule
