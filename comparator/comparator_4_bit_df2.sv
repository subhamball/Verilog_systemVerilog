module comparator_4_bit_df2(A,B,E,G,L);

  input [3:0] A,B;
  output E,G,L;
  
  assign E = (A==B);
  assign G = (A>B);
  assign L = (A<B);
  
   // assign {E,G,L} = {A==B, A>B, A<B};
endmodule
