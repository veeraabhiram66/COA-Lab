`include "full_adder.v"
module testbench;
    reg a, b, cin;
    wire sum, cout;
    full_adder full11(sum, cout, a, b, cin);
    initial begin
        a = 0;
        b = 1;
        cin = 1;
        #5;
        a = 1;
        b = 0;
        cin = 0;
        #5;
        a = 1;
        b = 1;
        cin = 0;
        #5;
        a = 1;
        b = 1;
        cin = 1;
    end
    initial
        $monitor($time," a=%b b=%b carry_in=%b sum=%b carry_out=%b", a, b, cin, sum, cout);
endmodule