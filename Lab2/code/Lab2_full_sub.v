module  Lab2_full_sub(output D, B, input x, y, z);
	
	Lab2_half_sub_gate_level (P, G, x, y);
	Lab2_half_sub_gate_level (D, A, P, z);
	or G1(B,A,G);
endmodule
