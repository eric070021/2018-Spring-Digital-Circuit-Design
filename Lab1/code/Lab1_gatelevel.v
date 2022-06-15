module	Lab1_gatelevel(F, A, B, C, D);
	output	F;
	input	A, B, C, D;
	wire	w1,w2,w3,w4,w5,w6;
	
	or	G1(w1,A,C);
	or	G2(w2,D,B);
	or	G3(w3,~B,C);
	or	G4(w4,D,A);
	and	G5(w5,w1,w2);
	and	G6(w6,w3,w4);
	or	G7(F,w5,w6);
endmodule
