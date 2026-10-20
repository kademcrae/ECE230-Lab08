module simple_4_mux(
    input [1:0] Sel,
    input A, B, C, D, Enable,
    output Y
);

    assign Y = (A & ~Sel[0] & ~Sel[1] |
                B &  Sel[0] & ~Sel[1] |
                C & ~Sel[0] &  Sel[1] |
                D &  Sel[0] &  Sel[1]) & Enable;

endmodule
