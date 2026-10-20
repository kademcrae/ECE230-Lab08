module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);
    wire [1:0] mux_sel;
    wire [1:0] demux_sel;
    wire [3:0] data;

    assign mux_sel = {btnU, btnL};
    assign demux_sel = {btnR, btnD};

    assign data = !btnC         ? 4'b0000 :
                  mux_sel == 0 ? sw[3:0] :
                  mux_sel == 1 ? sw[7:4] :
                  mux_sel == 2 ? sw[11:8] : sw[15:12];

    assign led[3:0]   = demux_sel == 0 ? data : 4'b0000;
    assign led[7:4]   = demux_sel == 1 ? data : 4'b0000;
    assign led[11:8]  = demux_sel == 2 ? data : 4'b0000;
    assign led[15:12] = demux_sel == 3 ? data : 4'b0000;
endmodule
