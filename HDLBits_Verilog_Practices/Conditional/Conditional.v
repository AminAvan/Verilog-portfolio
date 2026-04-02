/*
(condition ? if_true : if_false)
*/

`default_nettype none

module top_module(
    input wire [7:0] a, b, c, d,
    output wire [7:0] min
);
    wire [7:0] test_min_1, test_min_2, test_min_3, test_min_4;

    assign test_min_1 = (a < b) ? a : b;
    assign test_min_2 = (c < test_min_1) ? c : test_min_1;
    assign test_min_3 = (d < test_min_2) ? d : test_min_2;

    assign min = test_min_3;

endmodule