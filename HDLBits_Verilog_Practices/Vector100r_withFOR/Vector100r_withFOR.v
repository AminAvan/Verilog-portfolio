`default_nettype none

module top_module(
    input wire [99:0] in,
    output wire [99:0] out
);

    always @(*) begin
        for (int i = 0; i<$bits(out); i++)
            out[i] = in[$bits(out)-(i+1)];
    end

endmodule