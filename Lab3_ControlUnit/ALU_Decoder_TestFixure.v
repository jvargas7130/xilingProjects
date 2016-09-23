`timescale 1ns / 1ps

module ALU_Decoder_TestFixure;

	// Inputs
	reg [1:0] ALUOp;
	reg [5:0] Funct;

	// Outputs
	wire [2:0] ALUControl;

	// Instantiate the Unit Under Test (UUT)
	ALU_Decoder uut (
		.ALUOp(ALUOp), 
		.Funct(Funct), 
		.ALUControl(ALUControl)
	);

	initial begin
		//Test case 0
		ALUOp = 2'b00;
		Funct = 6'bXXXXXX;
		#10;
		
		//Test case 1
		ALUOp = 2'b01;
		Funct = 6'bXXXXXX;
		#10;
		
		//Test case 2
		ALUOp = 2'b10;
		Funct = 6'bXX0000;
		#10;
		
		//Test case 3
		ALUOp = 2'b10;
		Funct = 6'bXX0010;
		#10;
		
		//Test case 4
		ALUOp = 2'b10;
		Funct = 6'bXX0100;
		#10;
		
		//Test case 5
		ALUOp = 2'b10;
		Funct = 6'bXX0101;
		#10;
		
		//Test case 6
		ALUOp = 2'b10;
		Funct = 6'bXX1010;
		#10;
		
		$stop;
	end
      
endmodule

