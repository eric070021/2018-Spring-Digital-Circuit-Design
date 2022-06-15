module	  t_Lab2_half_sub;
	wire	D1, B1, D2, B2, D3, B3;
	reg	x1, y1, x2, y2, x3, y3;
	
	Lab2_half_sub_gate_level M1(D1, B1, x1, y1);
	
	initial	begin
		x1=1'b0; y1=1'b0;
		#100 x1=1'b0; y1=1'b1; 
		#100 x1=1'b1; y1=1'b0; 
		#100 x1=1'b1; y1=1'b1; 
	end
	initial #400 $finish;
	
	Lab2_half_sub_dataflow  M2(D2, B2, x2, y2);

	initial	begin
		x2=1'b0; y2=1'b0;
		#100 x2=1'b0; y2=1'b1; 
		#100 x2=1'b1; y2=1'b0; 
		#100 x2=1'b1; y2=1'b1; 
	end
	initial #400 $finish;

	Lab2_half_sub_behavior  M3(D3, B3, x3, y3);

	initial	begin
		x3=1'b0; y3=1'b0;
		#100 x3=1'b0; y3=1'b1; 
		#100 x3=1'b1; y3=1'b0; 
		#100 x3=1'b1; y3=1'b1; 
	end
	initial #400 $finish;
endmodule
