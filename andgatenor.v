module andgateusingnor(output out, input a, input b, input c);
    wire w1, w2, w3, w4, w5;
    norgate nor1(w1, a, a);
    norgate nor2(w2, b, b);
    norgate nor3(w3, w1, w2);
    norgate nor4(w4, w3, w3);
    norgate nor5(w5, c, c);
    norgate nor6(out, w4, w5);
endmodule

module norgate (output out, input a, input b);
    wire w1;
    or (w1, a, b);
    not (out, w1);
endmodule