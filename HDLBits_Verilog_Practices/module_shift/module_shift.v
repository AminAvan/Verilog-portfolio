`default_nettype none
module top_module(
    input wire clk, d,
    output wire q
);  
    wire q_ins_01;
    my_dff ins_01 (.clk(clk), .d(d), .q(q_ins_01));

    wire q_ins_02;
    my_dff ins_02 (.clk(clk), .d(q_ins_01), .q(q_ins_02));

    my_dff ins_03 (.clk(clk), .d(q_ins_02), .q(q));
endmodule