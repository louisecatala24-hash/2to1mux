module mux2to1(
    input wire I0,
    input wire I1,
    input wire S,
    output reg Y
);

always @(*) begin
    case (S)
        1'b0: Y = I0;
        1'b1: Y = I1;
        default: Y = 1'b0;
    endcase
end

endmodule
