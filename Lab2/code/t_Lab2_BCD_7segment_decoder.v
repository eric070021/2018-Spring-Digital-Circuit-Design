module t_Lab2_BCD_7segment_decoder;
	reg [3:0]D;
	wire [6:0]A1, A2, A3;
	Lab2_BCD_7segment_decoder_gatelevel  M1(A1, D);
	Lab2_BCD_7segment_decoder_dataflow  M2(A2, D);
	Lab2_BCD_7segment_decoder__behavior  M3(A3, D);
	initial begin
	D=4'b0000 ;
	#100 D=4'b0001 ; 
	#100 D=4'b0010 ;
	#100 D=4'b0011 ;
	#100 D=4'b0100 ; 
	#100 D=4'b0101 ;
	#100 D=4'b0110 ; 
	#100 D=4'b0111 ;
	#100 D=4'b1000 ;
	#100 D=4'b1001 ; 
	#100 D=4'b1010 ;
	#100 D=4'b1011 ;
	#100 D=4'b1100 ;
	#100 D=4'b1101 ;
	#100 D=4'b1110 ;
	#100 D=4'b1111 ;
 	end
	initial #1100 $finish;endmodule
	
	
