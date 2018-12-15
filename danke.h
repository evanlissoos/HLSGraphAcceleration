#ifndef __DANKE_H_
#define __DANKE_H_

#include <ap_int.h>

#define MASK(X)			(((unsigned) -1) >> (32 - X))

// Define segments of instruction word
#define BITS_OPCODE		3	// Support maximum of 8 opcodes
#define BITS_INTOP		4	// Supports maximum of 16 integer operations
#define BITS_REG		6	// Support maximum of 64 registers
#define BITS_IMM 		6	// Use same bits as sr2
#define BITS_OFF 		10
#define BITS_GRMTBLOP	1	// Bit for Node/Neighbor table access for graph data
#define BITS_GRMEMNDEOP	2	// Bits for Data/Neighbor_ptr/Num_neighbors in node access
#define BITS_ATOMICOP	2
#define BITS_INSTR		(BITS_OPCODE + BITS_INTOP + BITS_REG + BITS_REG + BITS_REG)

// Define opcodes
#define OPCODE_INTREG	0
#define OPCODE_INTIMM	1
#define OPCODE_BR		2
#define OPCODE_LD		3
#define OPCODE_ST		4
//#define OPCODE_GRMEM	3
//#define OPCODE_GLMEM	4
#define OPCODE_SCHED	5
#define OPCODE_HALT		6

// Define integer operations
#define INTOP_ADD		0
#define INTOP_SUB		1
#define INTOP_MUL		2
#define INTOP_DIV		3
#define INTOP_GR		4
#define INTOP_LT		5
#define INTOP_GRE		6
#define INTOP_LTE		7
#define INTOP_EQ		8
#define INTOP_NEQ		9
#define INTOP_AND		10
#define INTOP_OR		11
#define INTOP_NOT		12
#define INTOP_SHR		13
#define INTOP_SHL		14

// Define Graph Memory table selection (Node/Neighbor tables)
#define GRMEMTBLOP_NODE	0
#define GRMEMTBLOP_NEIG	1

// Define Graph Memory node attribute selection (Data, Neighbor Pointer, Number of Neighbors)
#define GRMEMNDEOP_DATA 0
#define GRMEMNDEOP_PTRN 1
#define GRMEMNDEOP_NUMN 2

// Define Global Memory atomic operations
#define GBMEMOP_RD		0
#define GBMEMOP_ADD		1
#define GBMEMOP_MIN		2
#define GBMEMOP_MAX		3

// Define architectural features
#define NUM_REGISTERS 	32

#define DATA_WIDTH		32
#define DATA_TYPE		1

// Define types for architecture
#define instr_t ap_uint<BITS_INSTR>
#define reg_t ap_uint<BITS_REG>
#define opcode_t ap_uint<BITS_OPCODE>
#define intop_t ap_uint<BITS_INTOP>
#define grmemtblop_t ap_uint<BITS_GRMTBLOP>
#define grmemndeop_t ap_uint<BITS_GRMEMNDEOP>
#define gbmemop_t ap_uint<BITS_GBMEMOP>

#define halted_t ap_uint<1>

#if DATA_TYPE == 1
#define data_t ap_int<DATA_WIDTH>
#define imm_t ap_int<BITS_IMM>
#define off_t ap_int<BITS_OFF>
#else
#define data_t ap_uint<DATA_WIDTH>
#define imm_t ap_uint<BITS_IMM>
#define off_t ap_uint<BITS_OFF>
#endif

// Define memory sizes
#define INSTR_MEM_SIZE 1024
#define DATA_MEM_SIZE 1024

void danke_core(instr_t instruction_memory[INSTR_MEM_SIZE], data_t data_memory[DATA_MEM_SIZE], halted_t * halted, unsigned * core_id);

#endif

/*
Scheduler keeps table of halted/not halted processors
All processors initialized to halted
When a table of threads are waiting, once a processor halts, can be scheduled!
*/

/*
	Operations
	reg: | regopcode | sr1 | sr2 | dr | op |
	imm: | regopcode | sr1 | imm | dr | op |
		Reg/Imm
			Integer
				Add
				Sub
				Mul
				Div
			Comparisons (signed)
				Greater than
				Less than
				Greater than or equal to
				Less than or equal to
				Equals
				Not Equals
			Logical
				AND
				OR
				NOT
				Shift right
				Shift left


	Control flow
	branch: | bropcode | sr1 | sr2 | offset |	3 + 6 + 6 + 10 = 25
		Conditional branch - equals


	Memory Access

		grdata: | grmemopcode | sr | --- | dr | op Node/Neighbor | op data/neighbor_ptr/num_neighbors |
		Graph data - read only
			Nodes - register for which node, immediate for data/neighbor_ptr/num_neighbors
			Neighbor List - register for location in table

		gldata: | glmemopcode | sr1 | sr2 | dr | atomic op |
		Global Memory - atomic only
			Read
			Min
			Max
			Add

		Schedule - write only
			sched: | schedthreadopcode | sr1 | sr2 |
			Schedule op - Current node (implicit, local register), Argument (implicit, global register), Next node (register), state (register)

			halt: | schedhaltopcode |
			Halt op - tell scheduler done.
*/
