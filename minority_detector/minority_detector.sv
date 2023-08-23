//a mejority function is that, which produce output 1 when less than or equal half input are 1.
module minority_detector(input a,b,c, output out);
  assign out = ~b&~c | ~a&~c | ~a&~b;
endmodule