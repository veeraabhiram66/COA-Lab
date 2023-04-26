module half_adder_nand(output sum, output carry,input a, input b);
    wire w1;
    xorgatenand xor1(sum, a, b);
    nandgate nand1(w1, a, b);
    nandgate nand2(carry, w1, w1);
endmodule

module xorgatenand(output out, input a, input b);
    wire w1, w2, w3;
    nandgate nand1(w1, a, b);
    nandgate nand2(w2, a, w1);
    nandgate nand3(w3, b, w1);
    nandgate nand4(out, w2, w3);
endmodule

module nandgate (output out, input a, input b);
    wire w1;
    and (w1, a, b);
    not (out, w1);
endmodule