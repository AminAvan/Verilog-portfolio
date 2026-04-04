`default_nettype none
module top_module(
    input wire [99:0] a, b,
    input wire sel,
    output wire [99:0] out
);
    assign out[99:0] = (a[99:0] & ~({100{sel}})) | (b[99:0] & {100{sel}}); // ALSO ==> assign out = sel ? b : a;
endmodule