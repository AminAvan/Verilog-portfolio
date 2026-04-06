`default_nettype none
module top_module(
    input wire [3:0] x,
    input wire [3:0] y,
    output wire [4:0] sum
);

    // 1st-bit adder
    wire cout_FA_01;
    full_adder ins_01 (
        .a(x[0]),
        .b(y[0]),
        .cin(1'b0),
        .cout(cout_FA_01),
        .sum(sum[0])
    );

    // 2nd-bit adder
    wire cout_FA_02;
    full_adder ins_02 (
        .a(x[1]),
        .b(y[1]),
        .cin(cout_FA_01),
        .cout(cout_FA_02),
        .sum(sum[1])
    );

    // 3rd-bit adder
    wire cout_FA_03;
    full_adder ins_03 (
        .a(x[2]),
        .b(y[2]),
        .cin(cout_FA_02),
        .cout(cout_FA_03),
        .sum(sum[2])
    );

    // 4th-bit adder
    wire cout_FA_04;
    full_adder ins_04 (
        .a(x[3]),
        .b(y[3]),
        .cin(cout_FA_03),
        .cout(sum[4]),
        .sum(sum[3])
    );

endmodule

////////////////////////

module full_adder(
    input wire a, b, cin,
    output wire cout, sum
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (cin & b);
endmodule