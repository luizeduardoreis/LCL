module mux4to1_array (
  input [7:0] data_in_0,
  input [7:0] data_in_1,
  input [7:0] data_in_2,
  input [7:0] data_in_3,
  input [1:0] sel,
  output reg [7:0] data_out
);

always @(*) begin
  case (sel)
    2'b00: data_out = data_in_0;
    2'b01: data_out = data_in_1;
    2'b10: data_out = data_in_2;
    2'b11: data_out = data_in_3;
  endcase
end

endmodule
