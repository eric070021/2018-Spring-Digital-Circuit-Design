module Lab2_half_sub_dataflow(D, B, x, y);
	output D, B;
	input x, y;
	assign D=x^y;
	assign B=(!x)&y;
endmodule
