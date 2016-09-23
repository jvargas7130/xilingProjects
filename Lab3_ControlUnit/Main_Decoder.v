`timescale 1ns / 1ps

module Main_Decoder( Opcode,
							RegWrite, RegDst,
							ALUSrc, Branch,
							MemWrite, MemtoReg,
							ALUOp);

	input 	[5:0] Opcode;
	output		RegWrite, RegDst, ALUSrc, Branch, MemWrite, MemtoReg;
	output [1:0] ALUOp;

	wire R_format, lw, sw, beq;

	assign	R_format = ~Opcode[5] & ~Opcode[4] & ~Opcode[3] & ~Opcode[2] & ~Opcode[1] & ~Opcode[0];
	assign	lw       = Opcode[5] & ~Opcode[4] & ~Opcode[3] & ~Opcode[2] & Opcode[1] & Opcode[0];
	assign	sw       = Opcode[5] & ~Opcode[4] & Opcode[3] & ~Opcode[2] & Opcode[1] & Opcode[0];
	assign	beq      = ~Opcode[5] & ~Opcode[4] & ~Opcode[3] & Opcode[2] & ~Opcode[1] & ~Opcode[0];

	assign	RegWrite = R_format | lw;
	assign	RegDst   = R_format;
	assign	ALUSrc   = lw | sw;
	assign	Branch   = beq;
	assign	MemWrite = sw;
	assign	MemtoReg = lw;
	assign	ALUOp[1] = R_format;
	assign	ALUOp[0] = beq;


endmodule
