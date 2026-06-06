module testbench;

reg D;
reg CLK;

wire Q;

d_flipflop uut(
    .D(D),
    .CLK(CLK),
    .Q(Q)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0,testbench);

    CLK = 0;

    D = 0;
    #10 D = 1;
    #10 D = 0;
    #10 D = 1;

    #20 $finish;
end

always #5 CLK = ~CLK;

endmodule