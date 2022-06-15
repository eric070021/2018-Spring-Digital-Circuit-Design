module	Lab1_dataflow(F, A, B, C, D);
	output	F;
	input	A, B, C, D;
	assign  F=((A|C)&&(D|B))||((~B|C)&&(D|A));
endmodule
