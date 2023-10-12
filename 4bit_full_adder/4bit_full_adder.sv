// Code your design here
module RCA_4_bit_FA(Sum,Cout,A,B,Cin);
  input [3:0] A,B;
  input Cin;
  output [3:0] Sum;
  output Cout;
  wire w1,w2,w3;
  
  //assign {Cout,Sum} = A + B + Cin;
  
  full_adder FA0(Sum[0],w1,A[0],B[0],Cin);
  full_adder FA1(Sum[1],w2,A[1],B[1],w1);
  full_adder FA2(Sum[2],w3,A[2],B[2],w2);
  full_adder FA3(Sum[3],Cout,A[3],B[3],w3);
  
endmodule

module full_adder (Sum,Cout,A,B,Cin);
  output Sum,Cout;
  input A,B,Cin;
  
  assign Sum = A^B^Cin;
  assign Cout = A&B | B&Cin | Cin&A;
    
endmodule
