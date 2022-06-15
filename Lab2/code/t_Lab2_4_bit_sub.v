module t_Lab2_4_bit_sub;
   reg  [3:0]X, Y;
   reg  Bin;
   wire [3:0]Diff1,Diff2;
   wire Bout1, Bout2;
	
   Lab2_ripple_borrow_4_bit_sub M1(Diff1, Bout1, X, Y, Bin);
   Lab2_borrow_lookahead_sub    M2(Diff2, Bout2, X, Y, Bin);

   initial
    begin
         X = 4'b1101; Y = 4'b0101; Bin = 1'b0;
    #100 X = 4'b1100; Y = 4'b1000; Bin = 1'b1;
    #100 X = 4'b0101; Y = 4'b1101; Bin = 1'b0;
    #100 X = 4'b1000; Y = 4'b1100; Bin = 1'b1;
    #100 X = 4'b0101; Y = 4'b0101; Bin = 1'b0;
    #100 X = 4'b1011; Y = 4'b1011; Bin = 1'b1;
    end	
    initial #600 $finish;
endmodule
