`default_nettype none
module top_module(
    input wire [99:0] a, b,
    input wire cin,
    output wire [99:0] sum,
    output wire [99:0] cout
);
    full_adder inst (
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(cout[0])
    );

    genvar i;
    generate
        for (i = 1; i<$bits(a); i = i + 1) begin : gen_FA
            full_adder inst (
                .a(a[i]),
                .b(b[i]),
                .cin(cout[i-1]),
                .sum(sum[i]),
                .cout(cout[i])
            );    
        end
    endgenerate

endmodule

module full_adder(
    input wire a,
    input wire b,
    input wire cin,
    output wire sum,
    output wire cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule