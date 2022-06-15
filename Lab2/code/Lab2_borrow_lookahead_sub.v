module borrow_lookahead_generator(output [4:1] B, input [3:0] P, G, input Bin);
    assign B[1] = G[0]||(!P[0]&&Bin),
           B[2] = G[1]||(!P[1]&&(G[0]||(!P[0]&&Bin))),
           B[3] = G[2]||(!P[2]&&(G[1]||(!P[1]&&(G[0]||(!P[0]&&Bin))))),
           B[4] = G[3]||(!P[3]&&(G[2]||(!P[2]&&(G[1]||(!P[1]&&(G[0]||(!P[0]&&Bin)))))));
endmodule

module Lab2_borrow_lookahead_sub(
    output [3:0] Diff,
    output Bout,
    input  [3:0] X, Y,
    input Bin);
    wire [3:0] P, G;
    wire [4:1] B;

    xor (P[0], X[0], Y[0]), (P[1], X[1], Y[1]), (P[2], X[2], Y[2]), (P[3], X[3], Y[3]);
    assign G[0] = !X[0] && Y[0], G[1] = !X[1] && Y[1], G[2] = !X[2] && Y[2], G[3] = !X[3] && Y[3];
    borrow_lookahead_generator Gen(B, P, G, Bin);
    assign Bout = B[4];
    xor (Diff[0], Bin, P[0]), (Diff[1], B[1], P[1]), (Diff[2], B[2], P[2]), (Diff[3], B[3], P[3]);

endmodule
	