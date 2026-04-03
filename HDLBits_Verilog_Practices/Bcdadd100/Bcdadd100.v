`default_nettype none
module top_module(
    input wire [399:0] a, b,
    input wire cin,
    output wire cout,
    output wire [399:0] sum
);
    wire [100:0] carry;
    assign carry[0] = cin;
    

    genvar i;
    generate
        for (i = 0; i<100; i = i + 1) begin : BCD_gen
            bcd_fadd inst (
                .a(a[((i*4)+3):(i*4)]),
                .b(b[((i*4)+3):(i*4)]),
                .cin(carry[i]),
                .cout(carry[(i+1)]),
                .sum(sum[((i*4)+3):(i*4)])
            );
        end
    endgenerate
    assign cout = carry[100];

endmodule