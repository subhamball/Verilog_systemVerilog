// Code your design here
module HA_structural (S,C,A,B);
  input A,B;
  output reg S,C;
  
  xor x(S,A,B);
  and a(C,A,B);
  
endmodule
  
