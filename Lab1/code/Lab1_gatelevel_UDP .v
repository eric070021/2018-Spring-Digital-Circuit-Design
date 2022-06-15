module Lab1_gatelevel_UDP(E,F, A, B, C, D);
	output	F,E;
	input	A, B, C, D;
	wire	w3,w4,w6;
	
	Lab1_UDP  UDP (E,A,B,C,D);
	or	G3(w3,~B,C);
	or	G4(w4,D,A);
	and	G6(w6,w3,w4);
	or	G7(F,w1,w6);
endmodule
 
	
