`default_nettype none
module top_module(
    input wire [2:0] in,
    output wire [1:0] out
);
    reg [1:0] count;

    always @(*) begin
        count = 2'd0;
        for (integer i = 0; i <$bits(in); i = i + 1)
            if (in[i] == 1'b1) begin
                count = count + 2'd1;
            end
    end

    assign out[1:0] = count[1:0];
endmodule