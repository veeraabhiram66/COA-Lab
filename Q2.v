module parity_bit(a,out_1,out_2);
input [7:0] a;
output out_1,out_2;

xor(out_1,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7]);
not(out_2,out_1);
endmodule