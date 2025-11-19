`timescale 1ns/1ps
`include "basic_gates.v"

module tb_basic_gates;
reg a,b;
wire and_out, or_out, not_a, nand_out, nor_out, xor_out, xnor_out;
basic_gates U(.a(a),.b(b),.and_out(and_out),.or_out(or_out),.not_a(not_a),
              .nand_out(nand_out),.nor_out(nor_out),.xor_out(xor_out),.xnor_out(xnor_out));

initial begin
  $dumpfile("dump.vcd"); $dumpvars(0,tb_basic_gates);
  {a,b} = 2'b00; #10;
  {a,b} = 2'b01; #10;
  {a,b} = 2'b10; #10;
  {a,b} = 2'b11; #10;
  $finish;
end
endmodule
