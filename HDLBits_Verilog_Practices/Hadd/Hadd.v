`default_nettype none
module top_module(
    input wire a, b,
    output wire cout, sum
);
    assign sum = a ^ b;
    assign cout = a & b;
endmodule