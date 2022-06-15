module Lab3_SbRb_Latch_gatelevel(output Q, NQ, input Sb, Rb);
	 nand #2  G1(Q,Sb,NQ);
	 nand #2  G2(NQ,Rb,Q);
endmodule
