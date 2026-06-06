module testbench;

reg J;
reg K;
reg CLK;

wire Q;

jk_flipflop uut(
    .J(J),
    .K(K),
    .CLK(CLK),
    .Q(Q)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    CLK = 0;

    // Hold
    J = 0; K = 0;
    #10;

    // Reset
    J = 0; K = 1;
    #10;

    // Set
    J = 1; K = 0;
    #10;

    // Toggle
    J = 1; K = 1;
    #20;

    $finish;
end

always #5 CLK = ~CLK;

endmodule