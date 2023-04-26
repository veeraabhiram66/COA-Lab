module andgate(output out, input b, input c, input d);
    wire w1;
    and (w1, b, c);
    and (out, w1, d);
endmodule