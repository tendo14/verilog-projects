`timescale 1ns/ 1ps

module aluTester;

reg [2:0] op;
reg [7:0] A;
reg [7:0] B;

wire [7:0] C;

reg [2:0] count = 3'd0;

eightBitAlu uut
(
.op(op),
.A(A),
.B(B),
.C(C)
);

initial
begin
	op = 3'b0;
	A  = 8'd0;
	B  = 8'd0;
	
	#100;
	
	A  = 8'h3B;
	B  = 8'hC2;
	
	for(count = 0; count < 8; count = count + 1'b1)
	begin
		op = count;
		#20;
	end
end

endmodule
