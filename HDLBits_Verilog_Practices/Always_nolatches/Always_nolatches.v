`default_nettype none

module top_module(
    input wire [15:0] scancode,
    output reg up,
    output reg down,
    output reg left,
    output reg right
);
    always @(*) begin
        up = 1'b0; down = 1'b0; left = 1'b0; right = 1'b0;
        casez(scancode[15:0])
            16'he06b: left = 1'b1;
            16'he072: down = 1'b1;
            16'he074: right = 1'b1;
            16'he075: up = 1'b1;
        endcase
    end
endmodule