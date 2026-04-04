`default_nettype none
module top_module(
    input wire [99:0] in,
    output wire [98:0] out_both,
    output wire [99:1] out_any,
    output wire [99:0] out_different
);
    integer i = 0;
    reg [98:0] reg_out_both;
    reg [99:1] reg_out_any;
    reg [99:0] reg_out_different;

    // Always use "begin...end" for 'for', 'if', and 'else' bodies; even for a single statement.
    // "begin...end" prevents exactly the kind of subtle scoping bug. as "for" without a ""begin...end"" only owns single next statement
    always @(*) begin
        for (i = 0; i<$bits(in); i = i + 1) begin
            if (i != 99) begin
                reg_out_both[i] = in[i] & in[(i+1)];
                reg_out_any[(i+1)] = in[(i+1)] | in[i];
                reg_out_different[i] = in[i] ^ in[(i+1)];
            end
            if (i == 99) begin
            reg_out_different[99] = in[99] ^ in[0];
            end
        end
    end

    assign out_both[98:0] = reg_out_both[98:0];
    assign out_any[99:1] = reg_out_any[99:1];
    assign out_different[99:0] = reg_out_different[99:0];
endmodule