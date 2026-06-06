module t_flipflop(
    input T,
    input CLK,
    output reg Q
);

always @(posedge CLK)
begin
    if (T)
        Q <= ~Q;
    else
        Q <= Q;
end

endmodule