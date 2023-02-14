module muxsinal(
  input data_in_0,
  input data_in_1,
  input data_in_2,
  input data_in_3,
  input [1:0]sel,
  output reg data_out 
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
