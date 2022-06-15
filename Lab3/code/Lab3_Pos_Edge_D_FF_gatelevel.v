module Lab3_Pos_Edge_D_FF_gatelevel(output Q, NQ, input D, clock);
	wire N1,N4,out1,S,R;
	nand #2 n1(N1,S,N4);
	nand #2 n2(S,clock,N1);
	nand #2 n3(R,clock,S,N4);
	nand #2 n4(N4,D,R);
	Lab3_SbRb_Latch_gatelevel m1(Q, NQ, S, R);
endmodule
