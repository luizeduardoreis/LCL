module 	fsm(
  				input logic reset,
				input logic ready,
            input logic [3:0] tecla,
				output  logic [3:0] d3, d2, d1, d0            
        );
		  
	typedef enum logic [1:0] {DISPLAY_A, DISPLAY_B, DISPLAY_C, DISPLAY_D} statetype;
	statetype state, nextstate;

	always_ff @(posedge ready, posedge reset)
		if (reset) state <= DISPLAY_A;
		else state <= nextstate;

	always_comb
			case (state)
			
				DISPLAY_A: if (tecla<16) begin
							nextstate = DISPLAY_B;
						end
					  else nextstate = DISPLAY_A;
					  
				DISPLAY_B: if (tecla<16) begin
							nextstate = DISPLAY_C;
						end
					  else nextstate = DISPLAY_B;
				
				DISPLAY_C: if (tecla<16) begin
							nextstate = DISPLAY_D;
						end
					  else nextstate = DISPLAY_C;
				
				DISPLAY_D: if (tecla<16) begin
							nextstate = DISPLAY_A;
						end
					  else nextstate = DISPLAY_D;
					  
				default: nextstate = DISPLAY_A;

			endcase
			
	always_ff @(negedge ready, posedge reset)
			if(reset) begin
					d3 = '0;
					d2 = '0;
					d1 = '0; 
					d0 = '0;
			end
			else
				case (state)
					
					DISPLAY_A: if(tecla<16) d0 = tecla; 
						  
					DISPLAY_B: if(tecla<16) d1 = tecla;
						
					DISPLAY_C: if(tecla<16) d2 = tecla;
						
					DISPLAY_D: if(tecla<16) d3 = tecla;
						  
					default: begin
							d3 = '0;
							d2 = '0;
							d1 = '0; 
							d0 = '0;
					end
					
				endcase
endmodule
