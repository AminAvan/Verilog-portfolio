`default_nettype none
module top_module(
    input wire x,
    input wire y,
    output wire z
);
    A inst(
        .x(x),
        .y(y),
        .z(z)
    );
endmodule

module A (
    input wire x,
    input wire y,
    output wire z
);
    assign z = (x ^ y) & x;
endmodule