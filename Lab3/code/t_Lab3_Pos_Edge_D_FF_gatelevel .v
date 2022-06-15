module  t_Lab3_Pos_Edge_D_FF_gatelevel;
	wire Q, NQ;
	reg D, clock;
	Lab3_Pos_Edge_D_FF_gatelevel M1(Q, NQ, D, clock);
	initial begin clock=1;forever #10 clock=~clock; end
	initial fork
		    D=0;
		#15 D=1;
		#35 D=0;
		#65 D=1;
		#88 D=0;
		#125 D=1;
		#130 D=0;
		join
	initial #140 $finish;
endmodule
		
