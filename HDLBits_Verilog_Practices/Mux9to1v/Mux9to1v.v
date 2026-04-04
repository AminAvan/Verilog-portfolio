`default_nettype none
module top_module(
    input wire [15:0] a, b, c, d, e, f, g, h, i,
    input wire [3:0] sel,
    output wire [15:0] out
);

    reg [15:0] reg_out;

    always @(*) begin
        case(sel)
            4'd0: reg_out[15:0] = a[15:0];
            4'd1: reg_out[15:0] = b[15:0];
            4'd2: reg_out[15:0] = c[15:0];
            4'd3: reg_out[15:0] = d[15:0];
            4'd4: reg_out[15:0] = e[15:0];
            4'd5: reg_out[15:0] = f[15:0];
            4'd6: reg_out[15:0] = g[15:0];
            4'd7: reg_out[15:0] = h[15:0];
            4'd8: reg_out[15:0] = i[15:0];
            default: reg_out[15:0] = 16'd65535; // all the bits should be "one"
        endcase
    end

    assign out[15:0] = reg_out[15:0];

endmodule