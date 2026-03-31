`default_nettype none
module top_module(
    input wire [3:0] in,
    output wire out_and,
    output wire out_or,
    output wire out_xor
);
    assign out_and = in[0] & in[1] & in[2] & in[3];
    assign out_or = in[0] | in[1] | in[2] | in[3];
    assign out_xor = in[0] ^ in[1] ^ in[2] ^ in[3];
endmodule