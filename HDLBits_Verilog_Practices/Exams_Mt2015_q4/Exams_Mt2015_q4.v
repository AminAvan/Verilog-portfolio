`default_nettype none

module top_module(
    input wire x,
    input wire y,
    output wire z
);  
    // level 1
    wire z_IA1;
    A inst_IA1 (
        .x(x),
        .y(y),
        .z(z_IA1)
    );
    
    wire z_IA2;
    A inst_IA2 (
        .x(x),
        .y(y),
        .z(z_IA2)
    );

    wire z_IB1;
    B inst_IB1 (
        .x(x),
        .y(y),
        .z(z_IB1)
    );
    
    wire z_IB2;
    B inst_IB2 (
        .x(x),
        .y(y),
        .z(z_IB2)
    );

    // level 2
    wire or_z_IA1_z_IB1, and_z_IA2_z_IB2;

    assign or_z_IA1_z_IB1  = z_IA1 | z_IB1;
    assign and_z_IA2_z_IB2 = z_IA2 & z_IB2;

    // level 3
    assign z = or_z_IA1_z_IB1 ^ and_z_IA2_z_IB2;


endmodule

//==========

module A (
    input wire x,
    input wire y,
    output wire z
);
    assign z = (x ^ y) & x;
endmodule

module B (
    input wire x,
    input wire y,
    output wire z
);
    assign z = ~(x ^ y);
endmodule