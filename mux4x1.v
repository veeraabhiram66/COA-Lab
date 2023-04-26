module mux(output out, input d0, input d1, input d2, input d3, input s1, input s0);
    wire n1, n0, w1, w2, w3, w4;
    not (n1, s1);
    not (n0, s0);
    andgate a0 (w1, n1, n0, d0);
    andgate a1 (w2, n1, s0, d1);
    andgate a2 (w3, s1, n0, d2);
    andgate a3 (w4, s1, s0, d3);
    orgate r0 (out, w1, w2, w3, w4);
endmodule

module andgate(output out, input b, input c, input d);
    wire w1;
    and (w1, b, c);
    and (out, w1, d);
endmodule

module orgate(output out, input a0, input a1, input a2, input a3);
    wire w1, w2;
    or (w1, a0, a1);
    or (w2, a2, a3);
    or (out, w1, w2);
endmodule