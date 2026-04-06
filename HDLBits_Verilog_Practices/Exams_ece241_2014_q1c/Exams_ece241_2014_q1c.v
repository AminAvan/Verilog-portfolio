`default_nettype none
module top_module(
    input wire [7:0] a,
    input wire [7:0] b,
    output wire [7:0] s,
    output wire overflow
);
    wire [7:0] cout;

    // 1st-bit adder
    full_adder ins_01 (
        .a(a[0]),
        .b(b[0]),
        .cin(1'b0),
        .cout(cout[0]),
        .sum(s[0])
    );

    // 2nd-bit adder
    full_adder ins_02 (
        .a(a[1]),
        .b(b[1]),
        .cin(cout[0]),
        .cout(cout[1]),
        .sum(s[1])
    );

    // 3rd-bit adder
    full_adder ins_03 (
        .a(a[2]),
        .b(b[2]),
        .cin(cout[1]),
        .cout(cout[2]),
        .sum(s[2])
    );

    // 4th-bit adder
    full_adder ins_04 (
        .a(a[3]),
        .b(b[3]),
        .cin(cout[2]),
        .cout(cout[3]),
        .sum(s[3])
    );

    // 5th-bit adder
    full_adder ins_05 (
        .a(a[4]),
        .b(b[4]),
        .cin(cout[3]),
        .cout(cout[4]),
        .sum(s[4])
    );

    // 6th-bit adder
    full_adder ins_06 (
        .a(a[5]),
        .b(b[5]),
        .cin(cout[4]),
        .cout(cout[5]),
        .sum(s[5])
    );

    // 7th-bit adder
    full_adder ins_07 (
        .a(a[6]),
        .b(b[6]),
        .cin(cout[5]),
        .cout(cout[6]),
        .sum(s[6])
    );

    // 8th-bit adder
    full_adder ins_08 (
        .a(a[7]),
        .b(b[7]),
        .cin(cout[6]),
        .cout(cout[7]),
        .sum(s[7])
    );

    assign overflow = cout[7];

endmodule


//////////////////////////////////

module full_adder(
    input wire a, b, cin,
    output wire cout, sum
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (cin & b);
endmodule