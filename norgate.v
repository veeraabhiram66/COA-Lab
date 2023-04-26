module norgate (output out, input a, input b);
    wire w1;
    or (w1, a, b);
    not (out, w1);
endmodule