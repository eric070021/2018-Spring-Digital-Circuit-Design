module Lab3_Mealy_structural (output z, input x, clock, reset);
	wire Q1,Q2,J1,J2,K1,K2;
	assign J1=x;
	assign J2=(~Q1&~x)|(Q1&~Q2)|(~Q1&Q2&x);
	assign K1=~x;	assign K2=(Q2|x)&(~Q1|Q2)&(Q1|~Q2|~x);
	assign z= ~(Q1^Q2^x);
	JK_ff_AR m1(Q1,J1,K1,CLK,reset);
	JK_ff_AR m2(Q2,J2,K2,CLK,reset);
endmodule
