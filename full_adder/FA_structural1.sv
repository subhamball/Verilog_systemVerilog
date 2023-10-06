 //using two half adder     
module half_adder(S,C,A,B);
  input A,B;
  output S,C;
      
  assign S = A^B;
  assign C = A&B;
endmodule

module FA_structural(S,C,A,B,Cin);
  input A,B,Cin;
  output S,C;
  wire t1,t2,t3;
  
  half_adder H1 (t1,t2,A,B);
  half_adder H2 (S,t3,t1,Cin);
  or o1 (C,t2,t3);
  
endmodule

