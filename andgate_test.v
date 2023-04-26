`include "andgate.v"

module testbench;
    reg b,c,d;
    wire out;

    andgate and2(out,b,c,d);

    initial begin;
        b = 1'b0;
        c = 1'b1;
        d = 1'b1;
        #5;
        b = 1'b1;
        c = 1'b1;
        d = 1'b1;
    end

    initial
        $monitor($time, " : b=%b c=%b d=%b out=%b", b, c, d, out);
endmodule