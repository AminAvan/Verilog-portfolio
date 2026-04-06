`default_nettype none
module top_module(
    input wire a, b, cin,
    output wire cout, sum
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (cin & b);
endmodule