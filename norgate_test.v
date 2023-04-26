`include "norgate.v"
module testbench;
    reg a, b;
    wire out;
    norgate nor5(out, a, b);
    initial begin;
        a = 1'b0;
        b = 1'b0;
        #5;
        a = 1'b1;
        b = 1'b0;
        #5;
        a = 1'b0;
        b = 1'b1;
        #5;
        a = 1'b1;
        b = 1'b1;
    end
    initial
        $monitor($time, " : a=%b b=%b out=%b", a, b, out);
endmodule