// Code your design here
module comparator_4_bit_df1(A,B,E,G,L);

  input [3:0] A,B;
  output E,G,L;
  
  assign E = &(A~^B);
  assign G = A[3] &~B[3] | ((A[3] ~^ B[3]) & (A[2] &~B[2])) | ((A[3] ~^ B[3]) & (A[2] ~^ B[2]) & (A[1] & ~B[1])) | ((A[3] ~^ B[3]) & (A[2] ~^ B[2]) & (A[1] ~^ B[1]) & (A[0] & ~B[0]));
  assign L = ~(E|G);
  
endmodule
