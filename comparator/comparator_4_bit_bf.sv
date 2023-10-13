module comparator_4_bit_bf(A,B,E,G,L);

  input [3:0] A,B;
  output reg E,G,L;
  
  always @ (*)
    begin
      E = (A==B);
      G = (A>B);
      L = (A<B);
      //{E,G,L} = {A==B, A>B, A<B};
      
  
endmodule
