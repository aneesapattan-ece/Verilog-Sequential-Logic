module shift_register_4bit(
    input D,
    input CLK,
    output reg [3:0] Q
);

always @(posedge CLK)
begin
    Q <= {Q[2:0], D};
end

endmodule