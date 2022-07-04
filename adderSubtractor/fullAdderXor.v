module fullAdderXOR(
input Cin,
input A,
input B,
input M,
output Cout,
output S
);

wire I;

assign I = M^B;

assign S = Cin^(A^I);
assign Cout = Cin*(A^I) + A*I;

endmodule
