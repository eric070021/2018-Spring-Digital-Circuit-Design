module	Lab2_half_sub_gate_level (D, B, x, y);
	output	D, B;
	input	x, y;
	
	xor	G1(D,x,y);
	and	G2(B,~x,y);
endmodule
