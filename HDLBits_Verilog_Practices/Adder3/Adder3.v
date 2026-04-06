`default_nettype none
module top_module(
    input wire [2:0] a, b,
    input wire cin,
    output wire [2:0] cout,
    output wire [2:0] sum
);
    // 1st-bit adder
    full_adder ins_01 (
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .cout(cout[0]),
        .sum(sum[0])
    );

    // 2nd-bit adder
    full_adder ins_02 (
        .a(a[1]),
        .b(b[1]),
        .cin(cout[0]),
        .cout(cout[1]),
        .sum(sum[1])
    );

    // 3rd-bit adder
    full_adder ins_03 (
        .a(a[2]),
        .b(b[2]),
        .cin(cout[1]),
        .cout(cout[2]),
        .sum(sum[2])
    );

endmodule

module full_adder(
    input wire a, b, cin,
    output wire cout, sum
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (cin & b);
endmodule