`timescale 1ns/1ps

module addSubTester;

reg [7:0] A;
reg [7:0] B;
reg M;

wire [7:0] C;
wire Cout;

eightBitAdderSubtractor uut
(
.A(A),
.B(B),
.M(M),
.Cin(M),
.S(C),
.Cout(Cout)
);

initial
begin
	A = 8'd0;
	B = 8'd0;
	M = 0;
	
	#50;
	
	A = 8'h3A;
	B = 8'h38;
	M = 0;
	
	#50;
	
	M = 1;
end

endmodule
