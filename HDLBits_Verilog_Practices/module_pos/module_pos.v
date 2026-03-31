`default_nettype none
module top_module(
    input wire a, b, c, d,
    output wire out1, out2
);
    mod_a instance_0001 (out1, out2, a, b, c, d);
endmodule