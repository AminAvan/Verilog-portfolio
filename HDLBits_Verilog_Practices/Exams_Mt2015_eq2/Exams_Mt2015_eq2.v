`default_nettype none
module top_module(
    input wire [1:0] A,
    input wire [1:0] B,
    output wire z
);
    assign z = (~A[1] & ~A[0] & ~B[1] & ~B[0]) | (~A[1] & A[0] & ~B[1] & B[0]) | (A[1] & A[0] & B[1] & B[0]) | (A[1] & ~A[0] & B[1] & ~B[0]);
endmodule