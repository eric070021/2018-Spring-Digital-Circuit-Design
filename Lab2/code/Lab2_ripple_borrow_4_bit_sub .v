module Lab2_ripple_borrow_4_bit_sub (output [3:0] Diff, output Bout, input [3:0] X, Y, input Bin);
	wire  [3:1]B;
	Lab2_full_sub M1(Diff[0], B[1], X[0], Y[0], Bin);
   	Lab2_full_sub M2(Diff[1], B[2], X[1], Y[1], B[1]);
   	Lab2_full_sub M3(Diff[2], B[3], X[2], Y[2], B[2]);
    	Lab2_full_sub M4(Diff[3], Bout, X[3], Y[3], B[3]);
endmodule
