`default_nettype none
module top_module(
    input wire x3,
    input wire x2,
    input wire x1,
    output wire f
);
    // Karnaugh map principles
    assign f = (~x3 & x2) | (x3 & x1);
endmodule