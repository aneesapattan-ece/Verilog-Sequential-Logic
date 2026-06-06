module testbench;

reg T;
reg CLK;

wire Q;

t_flipflop uut(
    .T(T),
    .CLK(CLK),
    .Q(Q)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0,testbench);

    CLK = 0;

    // Hold
    T = 0;
    #20;

    // Toggle
    T = 1;
    #40;

    // Hold again
    T = 0;
    #20;

    $finish;

end

always #5 CLK = ~CLK;

endmodule