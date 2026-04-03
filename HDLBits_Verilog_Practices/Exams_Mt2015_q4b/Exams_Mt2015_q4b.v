`default_nettype none
module top_module(
    input wire x,
    input wire y,
    output wire z
);
    B inst (
        .x(x),
        .y(y),
        .z(z)
    );
endmodule

module B (
    input wire x,
    input wire y,
    output wire z
);
    assign z = ~(x ^ y);
endmodule