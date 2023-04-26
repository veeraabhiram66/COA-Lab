`include "notgate.v"

module testbench;
    reg a;
    wire out;

    notgate not3(a, out);

    initial begin;
        a = 1'b0;
        #5;
        a = 1'b1;
    end

    initial
        $monitor($time, " : a=%b out=%b", a, out);
endmodule