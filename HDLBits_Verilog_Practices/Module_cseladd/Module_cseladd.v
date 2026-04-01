`default_nettype none
module top_module(
    input wire [31:0] a,
    input wire [31:0] b,
    output wire [31:0] sum
);
    // low bits
    wire [15:0] sum_ins_01, cout_ins_01;
    add16 ins_01 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum_ins_01), .cout(cout_ins_01));

    // high bits when c_in = 1
    wire [15:0] sum_ins_02, cout_ins_02;
    add16 ins_02 (.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(sum_ins_02), .cout(cout_ins_02));

    // high bits when c_in = 0
    wire [15:0] sum_ins_03, cout_ins_03;
    add16 ins_03 (.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sum_ins_03), .cout(cout_ins_03));

    wire [15:0] sum_high_bits;
    always @(*) begin
        case(cout_ins_01)
            1'b0: sum_high_bits = sum_ins_03;
            1'b1: sum_high_bits = sum_ins_02;
        endcase
    end

    assign sum[31:0] = {sum_high_bits, sum_ins_01};

endmodule