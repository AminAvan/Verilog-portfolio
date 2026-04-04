`default_nettype none
module top_module(
    input wire [3:0] in,
    output wire [2:0] out_both, // check if the bit and its left-neighbour are 1
    output wire [3:1] out_any, // check if the bit or its right-neighbour are 1
    output wire [3:0] out_different // check if the bit is different from its left-neighbour
);
    // check if the bit and its left-neighbour are 1
    assign out_both[0] = in[0] & in[1];
    assign out_both[1] = in[1] & in[2];
    assign out_both[2] = in[2] & in[3];

    // check if the bit or its right-neighbour are 1
    assign out_any[1] = in[1] | in[0];
    assign out_any[2] = in[2] | in[1];
    assign out_any[3] = in[3] | in[2];

    // check if the bit is different from its left-neighbour
    assign out_different[0] = in[0] ^ in[1];
    assign out_different[1] = in[1] ^ in[2];
    assign out_different[2] = in[2] ^ in[3];
    assign out_different[3] = in[3] ^ in[0];
endmodule