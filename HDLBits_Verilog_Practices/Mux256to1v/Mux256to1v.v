`default_nettype none
module top_module(
    input wire [1023:0] in,
    input wire [7:0] sel,
    output wire [3:0] out
);  
    reg [3:0] reg_out;
    
    //// First Approach to solve
    // integer i;

    // always @(*) begin
    //     for (i = 0; i < 256; i = i + 1) begin
    //         if (sel == i) begin
    //             reg_out[3:0] = in[i*4 +: 4];
    //         end
    //     end
    // end

    //// Second approach to solve
    always @(*) begin
        reg_out[3:0] = in[sel*4 +: 4];
    end
    

    // Need to be used for both approaches
    assign out[3:0] = reg_out[3:0];

endmodule