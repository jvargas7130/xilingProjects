`timescale 1ns / 1ps


module FullAdder_Tester;

	// Inputs
	reg FA_A;
	reg FA_B;
	reg Cin;

	// Outputs
	wire FA_S;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	FullAdder uut (
		.FA_A(FA_A), 
		.FA_B(FA_B), 
		.Cin(Cin), 
		.FA_S(FA_S), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		FA_B = 0;
		FA_A = 0;
		Cin = 0;

		#10;
		
		FA_B = 1;
		FA_A = 0;
		Cin = 0;

		#10;
		
		FA_B = 0;
		FA_A = 1;
		Cin = 0;

		#10;
		
		FA_B = 1;
		FA_A = 1;
		Cin = 0;

		#10;
		
		FA_B = 0;
		FA_A = 0;
		Cin = 1;

		#10;
		
		FA_B = 1;
		FA_A = 0;
		Cin = 1;

		#10;
		
		FA_B = 0;
		FA_A = 1;
		Cin = 1;

		#10;
		
		FA_B = 1;
		FA_A = 1;
		Cin = 1;

		#10;
        
		// Add stimulus here

	end
      
endmodule

