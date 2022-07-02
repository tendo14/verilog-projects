module seqDetector  //1101 sequence
(
input sequence_in,
input clock,
input reset,
output reg detector_out
);

parameter Zero = 3'b000,
	  One  = 3'b001,
	  OneOne = 3'b011,
	  OneOneZero = 3'b010,
          OneOneZeroOne = 3'b110;

reg [2:0] current_state, next_state;

always@(posedge clock, posedge reset)
begin
	if(reset==1)
		current_state <= Zero;
	else
		current_state <= next_state;
end

always@(current_state, sequence_in)
begin
	case(current_state)
	Zero:
	begin
		if(sequence_in == 1)
			next_state <= One;
		else
			next_state <= Zero;
	end
	One:
	begin
		if(sequence_in == 1)
			next_state <= OneOne;
		else
			next_state <= Zero;
	end
	OneOne:
	begin
		if(sequence_in == 1)
			next_state <= One;
		else
			next_state <= OneOneZero;
	end
	OneOneZero:
	begin
		if(sequence_in == 1)
			next_state <= OneOneZeroOne;
		else
			next_state <= Zero;
	end
	OneOneZeroOne:
	begin
		if(sequence_in == 1)
			next_state <= One;
		else
			next_state <= Zero;
	end
	default: next_state <= Zero;
	endcase
end

always@(current_state)
begin
	case(current_state)
	Zero: detector_out <= 0;
	One : detector_out <= 0;
	OneOne: detector_out <= 0;
	OneOneZero: detector_out <= 0;
	OneOneZeroOne: detector_out <= 1;
	endcase
end
endmodule
