`default_nettype none

module top_module(
    input wire p1a,
    input wire p2a,
    input wire p2b,
    input wire p2c,
    input wire p2d,
    input wire p1c,
    input wire p1b,
    input wire p1f,
    input wire p1e,
    input wire p1d,
    output wire p2y,
    output wire p1y
);
    wire and_p1_a_b_c, and_p1_f_e_d, and_p2_a_b, and_p2_c_d;

    assign and_p1_a_b_c = p1a & p1b & p1c;
    assign and_p1_f_e_d = p1f & p1e & p1d;
    assign and_p2_a_b   = p2a & p2b;
    assign and_p2_c_d   = p2c & p2d;

    assign p2y = (and_p2_a_b) | (and_p2_c_d);
    assign p1y = (and_p1_a_b_c) | (and_p1_f_e_d);
endmodule