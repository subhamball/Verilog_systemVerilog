// Code your testbench here
// or browse Examples
module tb;
  reg [3:0] A,B;
  reg Cin;
  wire [3:0] Sum;
  wire Cout;
  
  RCA_4_bit_FA DUT(Sum,Cout,A,B,Cin);
  
   initial begin
     $monitor("A=%0d,B=%0d,Cin=%0d,Sum=%0d,,Cout=%0d",A,B,Cin,Sum,Cout);
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  initial begin
    A=0;
    B=0;
    Cin=0;
    repeat(16) begin
      #10 A=A+1;
      repeat(16) begin
        #10 B=B+1;
        repeat(2)
          #10 Cin=~Cin;
      end
    end
  end
endmodule
