module demux(
    input [1:0] In,
    input Sel,
    output [1:0] Y1,
    output [1:0] Y2
);

    assign Y1 = (Sel == 1'b0 ? In : 0);
    assign Y2 = (Sel == 1'b1 ? In : 0);

endmodule
