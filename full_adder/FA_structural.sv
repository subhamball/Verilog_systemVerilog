module FA_structural(S,C,A,B,Cin);
  input A,B,Cin;
  output S,C;
  wire t1,t2,t3,t4;
  
  xor x1 (t1,A,B);
  xor x2 (S,t1,Cin);
  
  and a1 (t2,A,B);
  and a2 (t3,B,Cin);
  and a3 (t4,Cin,A);
  
  or o1 (C,t2,t3,t4);
  
endmodule

