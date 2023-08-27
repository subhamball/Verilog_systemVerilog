module half_substructor(input a,b, output dif,bow);
  assign dif = a^b;
  assign bow = ~a&b;
endmodule