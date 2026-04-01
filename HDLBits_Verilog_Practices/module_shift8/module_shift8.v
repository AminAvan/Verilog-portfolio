`default_nettype none
module top_module(
    input wire clk,
    input wire [7:0] d,
    input wire [1:0] sel,
    output wire [7:0] q 
);
    wire [7:0] q_ins_01;
    my_dff8 ins_01 (.clk(clk), .d(d), .q(q_ins_01));

    wire [7:0] q_ins_02;
    my_dff8 ins_02 (.clk(clk), .d(q_ins_01), .q(q_ins_02));

    wire [7:0] q_ins_03;
    my_dff8 ins_03 (.clk(clk), .d(q_ins_02), .q(q_ins_03));

    always @(*) begin
        case(sel)
            2'b00: q = d;
            2'b01: q = q_ins_01;
            2'b10: q = q_ins_02;
            2'b11: q = q_ins_03;
        endcase
    end
endmodule