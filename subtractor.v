`timescale 1ns / 1ps
module half_subtractor(input a, b, output diff, borrow);
assign diff = a ^ b;
assign borrow = (~a) & b;
endmodule

module full_subtractor(input a, b, bin, output diff, borrow);
wire d1, b1, b2;
half_subtractor hs1(a, b, d1, b1);
half_subtractor hs2(d1, bin, diff, b2);
assign borrow = b1 | b2;
endmodule


module subtractor(

    );
endmodule
