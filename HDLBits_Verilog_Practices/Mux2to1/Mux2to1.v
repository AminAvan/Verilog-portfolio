`default_nettype none
module top_module(
    input wire a, b, sel,
    output wire out
);
    assign out = (a & ~sel) | (b & sel); // ALSO ==> assign out = sel ? b : a;
endmodule