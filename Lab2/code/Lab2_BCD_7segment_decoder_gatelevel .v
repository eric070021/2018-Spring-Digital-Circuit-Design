module Lab2_BCD_7segment_decoder_gatelevel (output [6:0] A, input [3:0] D);
	//A[0]
	wire A0W1,A0W2,A0W3,A0W4;
	and A01(A0W1,~D[3],D[1]), A02(A0W2,D[3],~D[2],~D[1]), A03(A0W3,~D[2],~D[1],~D[0]), A04(A0W4,~D[3],D[2],D[0]);
	or A05(A[0],A0W1,A0W2,A0W3,A0W4);
	//A[1]
	wire A1W1,A1W2,A1W3,A1W4;
	and A11(A1W1,~D[3],~D[2]), A12(A1W2,~D[2],~D[1]), A13(A1W3,~D[3],~D[1],~D[0]), A14(A1W4,~D[3],D[1],D[0]);
	or A15(A[1],A1W1,A1W2,A1W3,A1W4);
	//A[2]
	wire A2W1,A2W2,A2W3,A2W4;
	and A21(A2W1,~D[3],~D[1]), A22(A2W2,~D[2],~D[1]), A23(A2W3,~D[3],D[2]), A24(A2W4,~D[3],D[0]);
	or A25(A[2],A2W1,A2W2,A2W3,A2W4);
	//A[3]
	wire A3W1,A3W2,A3W3,A3W4,A3W5;
	and A31(A3W1,D[3],~D[2],~D[1]), A32(A3W2,~D[3],~D[2],D[1]), A33(A3W3,~D[3],D[1],~D[0]), A34(A3W4,~D[2],~D[1],~D[0]), A35(A3W5,~D[3],D[2],~D[1],D[0]);
	or A36(A[3],A3W1,A3W2,A3W3,A3W4,A3W5);
	//A[4]
	wire A4W1,A4W2;
	and A41(A4W1,~D[2],~D[1],~D[0]), A42(A4W2,~D[3],D[1],~D[0]);
	or A43(A[4],A4W1,A4W2);
	//A[5]
	wire A5W1,A5W2,A5W3,A5W4;
	and A51(A5W1,D[3],~D[2],~D[1]), A52(A5W2,~D[3],~D[1],~D[0]), A53(A5W3,~D[3],D[2],~D[1]), A54(A5W4,~D[3],D[2],~D[0]);
	or A55(A[5],A5W1,A5W2,A5W3,A5W4);
	//A[6]
	wire A6W1,A6W2,A6W3,A6W4;
	and A61(A6W1,~D[3],D[2],~D[1]), A62(A6W2,D[3],~D[2],~D[1]), A63(A6W3,~D[3],~D[2],D[1]), A64(A6W4,~D[3],D[1],~D[0]);
	or A65(A[6],A6W1,A6W2,A6W3,A6W4);
endmodule