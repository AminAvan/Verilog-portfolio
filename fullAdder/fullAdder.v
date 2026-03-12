`timescale 1ns / 1ps
module full_adder (
    input a,
    input b,
    input c_in,
    output wire sum,
    output wire carry_out
);

// Assign sum
assign sum = a ^ b ^ c_in;
// Assign carry_out
assign carry_out = (a & b) | (a & c_in) | (c_in & b);

endmodule