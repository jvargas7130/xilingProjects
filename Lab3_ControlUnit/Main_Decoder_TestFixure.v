`timescale 1ns / 1ps


module Main_Decoder_TestFixure;

	// Inputs
	reg [5:0] Opcode;


	// Outputs

	
	
	wire RegWrite;
	wire RegDst;
	wire AlUSrc;
	wire Branch;
	wire MemWrite;
	wire MemtoReg;
	wire [1:0] ALUOp;

	// Instantiate the Unit Under Test (UUT)
	Main_Decoder uut (
		.Opcode(Opcode), 
		.RegWrite(RegWrite), 
		.RegDst(RegDst), 
		.ALUSrc(AlUSrc), 
		.Branch(Branch), 
		.MemWrite(MemWrite), 
		.MemtoReg(MemtoReg), 
		.ALUOp(ALUOp)
	);

	initial begin
	// Initialize Inputs
		
		//Test case 0 R-Type
		Opcode = 6'b000000;
		#10;
		
		//Test case 1 R-Type
		Opcode = 6'b100011;
		#10;
		
		//Test case 2 R-Type
		Opcode = 6'b101011;
		#10;
		
		//Test case 3 R-Type
		Opcode = 6'b000100;
		#10;
		
		//Test case 4 R-Type
		Opcode = 6'b111111;
		#10;
		

	end
      
endmodule

