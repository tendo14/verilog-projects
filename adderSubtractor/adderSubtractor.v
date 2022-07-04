module eightBitAdderSubtractor
(
input [7:0]A,
input [7:0]B,
input M,
input Cin,
output [7:0]S,
output Cout
);

wire c0;
wire c1;
wire c2;
wire c3;
wire c4;
wire c5;
wire c6;

fullAdderXOR fa0
(
.A(A[0]),
.B(B[0]),
.Cin(M),
.M(M),
.S(S[0]),
.Cout(c0)
); 

fullAdderXOR fa1
(
.A(A[1]),
.B(B[1]),
.Cin(c0),
.M(M),
.S(S[1]),
.Cout(c1)
);

fullAdderXOR fa2
(
.A(A[2]),
.B(B[2]),
.Cin(c1),
.M(M),
.S(S[2]),
.Cout(c2)
);

fullAdderXOR fa3
(
.A(A[3]),
.B(B[3]),
.Cin(c2),
.M(M),
.S(S[3]),
.Cout(c3)
);

fullAdderXOR fa4
(
.A(A[4]),
.B(B[4]),
.Cin(c3),
.M(M),
.S(S[4]),
.Cout(c4)
);

fullAdderXOR fa5
(
.A(A[5]),
.B(B[5]),
.Cin(c4),
.M(M),
.S(S[5]),
.Cout(c5)
);

fullAdderXOR fa6
(
.A(A[6]),
.B(B[6]),
.Cin(c5),
.M(M),
.S(S[6]),
.Cout(c6)
);

fullAdderXOR fa7
(
.A(A[7]),
.B(B[7]),
.Cin(c6),
.M(M),
.S(S[7]),
.Cout(Cout)
);

endmodule
