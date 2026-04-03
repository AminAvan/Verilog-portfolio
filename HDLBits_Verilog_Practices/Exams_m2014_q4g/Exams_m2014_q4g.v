`default_nettype none
module top_module(
    input wire in1,
    input wire in2,
    input wire in3,
    output wire out
);
    wire xnor_in1_in2;
    assign xnor_in1_in2 = ~(in1 ^ in2);

    assign out = xnor_in1_in2 ^ in3;
endmodule