`timescale 1ns / 1ps



module ALU_TestFixure;

	// Inputs
	reg [2:0] ALUControl;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] Result;
	wire Zero_Flag;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALUControl(ALUControl), 
		.A(A), 
		.B(B), 
		.Result(Result), 
		.Zero_Flag(Zero_Flag)
	);

	initial begin
//TestCase0 - check the and operation
		ALUControl = 000;
		A = 32'h014071757;
		B = 32'h014071757 + 1;

		// Wait 10 ns for global reset to finish
		#10;
		
			//TestCase1 - check the and operation
		ALUControl = 001;
		A = 32'h014071757;
		B = 32'h014071757 + 1;

		// Wait 10 ns for global reset to finish
		#10;
		
			//TestCase2 - check the and operation
		ALUControl = 010;
		A = 32'h014071757;
		B = 32'h014071757 + 1;

		// Wait 10 ns for global reset to finish
		#10;
		
			//TestCase3 - check the and operation
		ALUControl = 110;
		A = 32'h014071757;
		B = 32'h014071757 + 1;

		// Wait 10 ns for global reset to finish
		#10;
			//TestCase4 - check the and operation
		ALUControl = 111;
		A = 32'h014071757;
		B = 32'h014071757 + 1;

		// Wait 10 ns for global reset to finish
		#10;
		
		//TestCase5 - check the and operation
		ALUControl = 111;
		A = 32'h014071757 + 1;
		B = 32'h014071757;

		// Wait 10 ns for global reset to finish
		#10;
        $stop;
		// Add stimulus here



	end
      
endmodule

