`include "andgatenor.v"
module testbench;
    reg a, b, c;
    wire out;
    andgateusingnor and_8(out, a, b, c);
    initial begin
        a = 1'b0;
        b = 1'b1;
        c = 1'b0;
        #5;
        a = 1'b1;
        b = 1'b1;
        c = 1'b1;
        #5;
        a = 1'b1;
        b = 1'b0;
        c = 1'b1;
    end
    initial
        $monitor($time, " : a=%b b=%b c=%b out=%b", a, b, c, out);
endmodule