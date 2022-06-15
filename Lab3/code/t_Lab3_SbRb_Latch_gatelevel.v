module t_Lab3_SbRb_Latch_gatelevel;
	reg Sb,Rb;
	wire Q,NQ;
	Lab3_SbRb_Latch_gatelevel M1(Q, NQ, Sb, Rb);
	initial fork
		    Sb=1; Rb=0;
		#10 Sb=1; Rb=1;
		#20 Sb=0; Rb=1;
		#30 Sb=1; Rb=1;
		#40 Sb=0; Rb=0;
		#50 Sb=1; Rb=1;
		#60 Sb=1; Rb=0;
		join
		initial #70 $finish;
endmodule
