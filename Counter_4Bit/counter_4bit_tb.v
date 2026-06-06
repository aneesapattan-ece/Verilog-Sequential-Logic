module testbench;

reg CLK;
wire [3:0] Q;

counter_4bit uut(
    .CLK(CLK),
    .Q(Q)
);

initial begin

    // Create VCD file for EPWave
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    // Initialize clock
    CLK = 0;

    // Run the simulation long enough
    // to observe 16 clock cycles
    #160;

    // Stop simulation
    $finish;

end

// Generate clock with a period of 10 ns
always #5 CLK = ~CLK;

endmodule