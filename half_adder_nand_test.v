`include "half_adder_nand.v"
module testbench;
    reg a, b;
    wire sum, carry;
    half_adder_nand half10(sum, carry, a, b);
    initial begin
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
        $monitor($time, " : a=%b b=%b sum=%b carry=%b", a, b, sum, carry);
endmodule