module Lab3_Mealy_state_diagram (output reg z, input x, clock, reset);
	reg [1: 0] state, next_state;
	parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
	always@(posedge clock, negedge reset)
		if(!reset) state<=S0;
		else state<=next_state;
	always@(state, x)
		case(state)
		  S0:	if(x) next_state=S2; else next_state=S1;
		  S1:	if(x) next_state=S3; else next_state=S0;
		  S2:	if(x) next_state=S3; else next_state=S1;
		  S3:	if(x) next_state=S2; else next_state=S0;
		endcase
	always@(state, x)
		case(state)
		S0,S3: z=!x;
		S1,S2: z=x;
		endcase
	endmodule
