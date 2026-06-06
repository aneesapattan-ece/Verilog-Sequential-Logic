module counter_4bit(
    input CLK,
    output reg [3:0] Q = 4'b0000
);

always @(posedge CLK)
begin
    Q <= Q + 1;
end

endmodule