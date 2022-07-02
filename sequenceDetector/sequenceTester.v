`timescale 1ns / 1ps

module seqTester;

reg sequence_in;
reg reset;
reg clock;

wire detector_out;

seqDetector one(
.sequence_in(sequence_in),
.clock(clock),
.reset(reset),
.detector_out(detector_out)
);

initial begin
	clock = 0;
	forever
		#5 clock = ~clock;
end

initial begin
	sequence_in = 0;
	reset = 1;
	#30
	reset = 0;
	#40;
	sequence_in = 1;
	#10;
	sequence_in = 0;
	#10;
	sequence_in = 1;
	#10;
	sequence_in = 0;
	#10;
	sequence_in = 1;
	#10;
	sequence_in = 1;
	#10;
	sequence_in = 0;
	#10;
	sequence_in = 1;
	#10;
	sequence_in = 1;
	#10;
	sequence_in = 0;
end

endmodule
