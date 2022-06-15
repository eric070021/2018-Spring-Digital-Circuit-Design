module JK_ff_AR(Q,J,K,CLK,reset);
       output reg Q;
       input J,K,CLK,reset;
       always @ (posedge CLK, negedge reset)
       		if(!reset) Q=1'b0;
		else
       			case ({J,K})
              			2'b00: Q = Q;
              			2'b01: Q = 1'b0;
              			2'b10: Q = 1'b1;
              			2'b11: Q = ~Q;
       			endcase
endmodule
