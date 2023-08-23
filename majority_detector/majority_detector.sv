//a mejority function is that, which produce output 1 when more than half input are 1.
module majority_detector(input a,b,c, output out);
  assign out = b&c | a&c | a&b;
endmodule