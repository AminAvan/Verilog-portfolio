`timescale 1ns / 1ps
module tb_full_adder;

    // Declare testbench signals
    reg a, b, c_in;
    wire sum, carry_out;

    // Instantiate the full-adder module
    full_adder dut (a, b, c_in, sum, carry_out);


    // Apply test stimulus
    initial begin
        $display("Testing Full Adder");
        $monitor("a = %b, b = %b, c_in = %b, sum = %b, carry_out = %b", a, b, c_in, sum, carry_out);

        // Apply all possible binary permutations for four binary inputs a, b, c_in
        a = 0; b = 0; c_in = 0; #10;
        a = 0; b = 0; c_in = 1; #10;
        a = 0; b = 1; c_in = 0; #10;
        a = 0; b = 1; c_in = 1; #10;
        a = 1; b = 0; c_in = 0; #10;
        a = 1; b = 0; c_in = 1; #10;
        a = 1; b = 1; c_in = 0; #10;
        a = 1; b = 1; c_in = 1; #10;

        $finish;
    end

endmodule