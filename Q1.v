module mux8x1(a,b,s0,s1,s2,out);
input s0,s1,s2;
input a,b;
output out;
wire a0,a1,a2,a3,a4,a5,a6,a7,s0b,s1b,s2b;
wire t1,t2,t3,t4,t5,t6,t7,t8;
not (s0b,s0),(s1b,s1),(s2b,s2);
and (a0,a,b);
xor (a1,a,b);
nand (a2,a,b);
or (a3,a,b);
not (a4,a);
not (a5,b);
nor (a6,a,b);
xnor (a7,a,b);
and (t1,a0,s0b,s1b,s2b),(t2,a1,s0b,s1b,s2),(t3,a2,s0b,s1,s2b),(t4,a3,s0b,s1,s2);
and (t5,a4,s0,s1b,s2b),(t6,a5,s0,s1b,s2),(t7,a6,s0,s1,s2b),(t8,a7,s0,s1,s2);
or (out,t1,t2,t3,t4,t5,t6,t7,t8);
endmodule

module bitwise(a,b,s0,s1,s2,out);
input [7:0] a;
input [7:0] b;
input s0,s1,s2;
output [7:0] out;
mux8x1 mux8x10 (a[0],b[0],s0,s1,s2,out[0]);
mux8x1 mux8x11 (a[1],b[1],s0,s1,s2,out[1]);
mux8x1 mux8x12 (a[2],b[2],s0,s1,s2,out[2]);
mux8x1 mux8x13 (a[3],b[3],s0,s1,s2,out[3]);
mux8x1 mux8x14 (a[4],b[4],s0,s1,s2,out[4]);
mux8x1 mux8x15 (a[5],b[5],s0,s1,s2,out[5]);
mux8x1 mux8x16 (a[6],b[6],s0,s1,s2,out[6]);
mux8x1 mux8x17 (a[7],b[7],s0,s1,s2,out[7]);
endmodule