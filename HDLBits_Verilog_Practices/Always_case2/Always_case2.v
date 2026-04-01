`default_nettype none

module top_module(
    input wire [3:0] in,
    output reg [1:0] pos
);

    always @(*) begin
        case(in)
            4'b0000: pos = 0; 
            4'b0001: pos[1:0] = 2'b00;
            4'b0010: pos[1:0] = 2'b01;
            4'b0011: pos[1:0] = 2'b00;
            4'b0100: pos[1:0] = 2'b10;
            4'b0101: pos[1:0] = 2'b00;
            4'b0110: pos[1:0] = 2'b01;
            4'b0111: pos[1:0] = 2'b00;
            4'b1000: pos[1:0] = 2'b11;
            4'b1001: pos[1:0] = 2'b00;
            4'b1010: pos[1:0] = 2'b01;
            4'b1011: pos[1:0] = 2'b00;
            4'b1100: pos[1:0] = 2'b10;
            4'b1101: pos[1:0] = 2'b00;
            4'b1110: pos[1:0] = 2'b01;
            4'b1111: pos[1:0] = 2'b00;
        endcase
    end

endmodule