`default_nettype none
module top_module(
    input wire [31:0] a,
    input wire [31:0] b,
    input wire sub,
    output wire [31:0] sum
);

    // Incorporating "sub" with "b" to implement the function of do both add&sub depends on "sub"
    // when the "sub = 0" then "b" itself go to adders
    // when the "sub = 1" then "~b"  go to adders to do the "a - b == a + ~b + 1" folowing two's complement rules
    wire [31:0] b_refined;
    assign b_refined = b ^ {32{sub}};

    // low bits
    wire [15:0] sum_ins_01, cout_ins_01;
    add16 ins_01 (.a(a[15:0]), .b(b_refined[15:0]), .cin(sub), .sum(sum_ins_01), .cout(cout_ins_01));

    // high bits
    wire [15:0] sum_ins_02, cout_ins_02;
    add16 ins_02 (.a(a[31:16]), .b(b_refined[31:16]), .cin(cout_ins_01), .sum(sum_ins_02), .cout(cout_ins_02));

    // final SUM
    assign sum = {sum_ins_02, sum_ins_01};

endmodule