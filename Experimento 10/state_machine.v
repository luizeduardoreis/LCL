module state_machine (input A, clk, reset, input [4:0] state, output reg [4:0] next_state);
  always @ (posedge clk or posedge reset) begin
		if (reset) begin
			next_state <= 5'b00000;
			end else begin
		if (!A) begin
			case (state)
			5'b00000: next_state <= 5'b00001;
			5'b00001: next_state <= 5'b00010;
			5'b00010: next_state <= 5'b00011;
			5'b00011: next_state <= 5'b00100;
			5'b00100: next_state <= 5'b00101;
			5'b00101: next_state <= 5'b00110;
			5'b00110: next_state <= 5'b00111;
			5'b00111: next_state <= 5'b01000;
			5'b01000: next_state <= 5'b01001;
			5'b01001: next_state <= 5'b01010;
			5'b01010: next_state <= 5'b01011;
			5'b01011: next_state <= 5'b01100;
			5'b01100: next_state <= 5'b01101;
			5'b01101: next_state <= 5'b01110;
			5'b01110: next_state <= 5'b01111;
			5'b01111: next_state <= 5'b10000;
			default: next_state <= 5'b00000;
			endcase
			end else begin
			case (state)
			5'b00000: next_state <= 5'b10001;
			5'b00001: next_state <= 5'b10001;
			5'b00010: next_state <= 5'b10001;
			5'b00011: next_state <= 5'b10001;
			5'b00100: next_state <= 5'b10001;
			5'b00101: next_state <= 5'b10001;
			5'b00110: next_state <= 5'b10001;
			5'b00111: next_state <= 5'b10001;
			5'b01000: next_state <= 5'b10001;
			5'b01001: next_state <= 5'b10001;
			5'b01010: next_state <= 5'b10001;
			5'b01011: next_state <= 5'b10001;
			5'b01100: next_state <= 5'b10001;
			5'b01101: next_state <= 5'b10001;
			5'b01110: next_state <= 5'b10001;
			5'b01111: next_state <= 5'b10001;
			5'b10000: next_state <= 5'b10001;
			5'b10001: next_state <= 5'b10000;
			endcase
			end
			end
    end
endmodule
