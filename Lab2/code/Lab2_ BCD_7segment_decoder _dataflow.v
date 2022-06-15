module Lab2_BCD_7segment_decoder_dataflow (output [6:0] A, input [3:0] D);

	assign A[0]=(~D[3]&D[1])|(D[3]&~D[2]&~D[1])|(~D[2]&~D[1]&~D[0])|(~D[3]&D[2]&D[0]);
	assign A[1]=(~D[3]&~D[2])|(~D[2]&~D[1])|(~D[3]&~D[1]&~D[0])|(~D[3]&D[1]&D[0]);
	assign A[2]=(~D[3]&~D[1])|(~D[2]&~D[1])|(~D[3]&D[2])|(~D[3]&D[0]);
	assign A[3]=(D[3]&~D[2]&~D[1])|(~D[3]&~D[2]&D[1])|(~D[3]&D[1]&~D[0])|(~D[2]&~D[1]&~D[0])|(~D[3]&D[2]&~D[1]&D[0]);
	assign A[4]=(~D[2]&~D[1]&~D[0])|(~D[3]&D[1]&~D[0]);
	assign A[5]=(D[3]&~D[2]&~D[1])|(~D[3]&~D[1]&~D[0])|(~D[3]&D[2]&~D[1])|(~D[3]&D[2]&~D[0]);
	assign A[6]=(~D[3]&D[2]&~D[1])|(D[3]&~D[2]&~D[1])|(~D[3]&~D[2]&D[1])|(~D[3]&D[1]&~D[0]);
endmodule
