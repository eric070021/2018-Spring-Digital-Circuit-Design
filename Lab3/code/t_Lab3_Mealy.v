module t_Lab3_Mealy;
	wire z1, z2;
	reg x, clock, reset;
	Lab3_Mealy_state_diagram m1(z1, x, clock, reset);
	Lab3_Mealy_structural m2(z2, x, clock, reset);
	initial #100 $finish;
	initial begin clock=0; forever #5 clock=~clock; end
	initial fork
		   reset=0;
		#2 reset=1;
		#47 reset=0;
		#49 reset=1;
		#10 x=1;
		#10 x=0;
		#30 x=1;
		#40 x=0;
		#50 x=1;
		#52 x=0;
		#80 x=1;
		join
endmodule
