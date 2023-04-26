`include "orgate.v"

module testbench;
    reg b,c,d;
    wire out;

    orgate or2(out,b,c,d);

    initial begin;
        b = 1'b0;
        c = 1'b1;
        d = 1'b1;
        #5;
        b = 1'b0;
        c = 1'b0;
        d = 1'b0;
    end

    initial
        $monitor($time, " : b=%b c=%b d=%b out=%b", b, c, d, out);
endmodule