`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:49:28 09/16/2016
// Design Name:   Control_Unit
// Module Name:   C:/xilingProjects/Lab3_ControlUnit/test.v
// Project Name:  Lab3_ControlUnit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control_Unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [5:0] Opcode;
	reg [5:0] Funct;

	// Outputs
	wire MemtoReg;
	wire MemWrite;
	wire Branch;
	wire ALUSrc;
	wire RegDst;
	wire RegWrite;
	wire [2:0] ALUControl;

	// Instantiate the Unit Under Test (UUT)
	Control_Unit uut (
		.Opcode(Opcode), 
		.Funct(Funct), 
		.MemtoReg(MemtoReg), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUSrc(ALUSrc), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.ALUControl(ALUControl)
	);

	initial begin
		// Initialize Inputs
		Opcode = 0;
		Funct = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

