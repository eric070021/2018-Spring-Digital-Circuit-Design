module	 t_Lab1_gatelevel_UDP;
	wire	E,F;
	reg	A, B, C, D;
	
	//instantiate device under test
	Lab1_gatelevel_UDP	M1(E, F, A, B, C, D);
	
	//apply inputs one at a time
	initial	begin
		A=1'b0; B=1'b0; C=1'b0; D=1'b0;
		#100 A=1'b1; B=1'b1; C=1'b1; D=1'b1; 
	end
	initial #200 $finish;
endmodule