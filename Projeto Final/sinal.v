module sinal(
            input sinal,
            output [6:0] seg
            ); 

    always @ (sinal)   
    begin
        case(sinal)   
            0: seg = 7'b0000000;   //Quando o sinal é positivo
            1: seg = 7'b1000000;   //Quando o sinal é negativo
            default: seg=7'b0000000;   //Começa como positivo
        endcase
    end
    endmodule
	 