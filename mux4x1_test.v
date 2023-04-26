`include "mux4x1.v"
module testbench;
    reg d0, d1, d2, d3;
    reg s1, s0;
    wire out;
    mux m0 (out, d0, d1, d2, d3, s1, s0);
    initial begin
        d0 = 0; d1 = 1; d2 = 1; d3 = 0;
        s1 = 0; s0 = 1;
        #5;
        d0 = 0; d1 = 1; d2 = 1; d3 = 0;
        s1 = 0; s0 = 0;
        #5;
        d0 = 1; d1 = 0; d2 = 0; d3 = 1;
        s1 = 1; s0 = 1;
        #5;
        d0 = 1; d1 = 0; d2 = 0; d3 = 1;
        s1 = 1; s0 = 0;
    end
    initial
        $monitor($time, " : d0 = %b, d1 = %b, d2 = %b, d3 = %b, s1 = %b, s0 = %b, out = %b", d0, d1, d2, d3, s1, s0, out);
endmodule