// Code your testbench here
// or browse Examples
module ALU_tb;
  reg [7:0] A,B;
  reg [3:0] Opcode,N_bit;
  wire [15:0] Out;
  integer i;
  
  ALU DUT(Out,Opcode,A,B,N_bit);
  
initial begin
  $monitor("A=%d, B=%d, Opcode=%d, N_bit=%d,Out=%d",A,B,Opcode,N_bit,Out);
  $dumpfile("dump.vcd");
  $dumpvars(0);
  end
  
  initial begin
    A = 8'h0C;
    B = 4'h03;
    Opcode = 4'h0;
    N_bit=4'b0010;
      
      for (i=0;i<=15;i=i+1)
      begin
       Opcode = Opcode + 8'h01;
       #10;
      end;
      
      A = 8'hF6;
      B = 8'h0A;
  end
endmodule
