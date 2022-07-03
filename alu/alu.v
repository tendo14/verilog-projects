module eightBitAlu
(
input [2:0] op,
input [7:0] A,
input [7:0] B,
output reg [7:0] C
);

parameter ADD     = 3'b000,
		  SUB     = 3'b001,
		  AND     = 3'b010,
		  OR      = 3'b011,
		  NAND    = 3'b100,
		  NOR     = 3'b101,
		  XOR     = 3'b110,
		  XNOR    = 3'b111;

always @ (op or A or B)
begin
	case(op)
		ADD:
			begin
			C = A + B;
			end
		SUB:
			begin
			C = A - B;
			end
		AND:
			begin
			C = A & B;
			end
		OR:
			begin
			C = A & B;
			end
		NAND:
			begin
			C = ~(A & B);
			end
		NOR:
			begin
			C = ~(A | B);
			end
		XOR:
			begin
			C = A ^ B;
			end
		XNOR:
			begin
			C = ~(A ^ B);
			end
		endcase
end

endmodule
