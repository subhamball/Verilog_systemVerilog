// Code your design here
module barrel_shifter_bf(out,in,n,lr);
  input [7:0] in;
  input [2:0] n;
  input lr;
  output reg [7:0] out;
  
  always @(*) 
    begin
      if(lr)
        out = in << n;
      else
        out = in >> n;
    end
endmodule
