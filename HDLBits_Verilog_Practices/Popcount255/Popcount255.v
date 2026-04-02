`default_nettype none

module top_module(
    input wire [254:0] in,
    output wire [7:0] out
);
    integer i = 0;
    reg [7:0] count;

    always @(*) begin
        count = 8'd0;

        for (i=0; i<$bits(in); i++)
            if (in[i] == 1'b1) begin
                count = count + 8'd1;
            end
    end

    assign out[7:0] = count[7:0];
endmodule