/*
Create an XOR with three ways:
    1) assign statement
    2) combinational always block
    3) clocked always block
*/

`default_nettype none

module top_module(
    input wire clk,
    input wire a,
    input wire b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff
);

    // assign statement
    assign out_assign = a ^ b;

    // combinational always block
    always @(*) out_always_comb = a ^ b;

    // clocked always blocked
    always @(posedge clk) out_always_ff <= a ^ b;

endmodule