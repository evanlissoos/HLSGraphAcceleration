#include "danke.h"
#include <iostream>
using namespace std;

// Interfaces needed: instruction memory,
void danke_core(instr_t instruction_memory[INSTR_MEM_SIZE], data_t data_memory[DATA_MEM_SIZE], halted_t * halted, unsigned * core_id)
{
	data_t  pc;
	instr_t ir;

	data_t  regfile[NUM_REGISTERS];
	data_t	special_regfile[NUM_REGISTERS];

	special_regfile[0] = *core_id;

	cout << "[BOOT] Core ID: " << hex << *core_id << endl;

	int i = 0;
	while(/* true  i++ < 10*/ *halted == 0)
	{
		//cout << "[HALT CHECK] " << hex << *halted << endl;
		//if(~(*halted))
		{
			// FETCH
			ir = instruction_memory[pc];

			cout << "[FETCH] Program counter: " << hex << pc << endl;
			cout << "[FETCH] Fetched instruction: " << hex << ir << endl;

			// DECODE
			opcode_t opcode = ir.range(BITS_INSTR-1, BITS_INSTR-BITS_OPCODE);

			reg_t sr1 = ir.range(BITS_INSTR-BITS_OPCODE-1, BITS_INSTR-BITS_OPCODE-BITS_REG);
			reg_t sr2 = ir.range(BITS_INSTR-BITS_OPCODE-BITS_REG-1, BITS_INSTR-BITS_OPCODE-(BITS_REG)*2);
			reg_t dr  = ir.range(BITS_INSTR-BITS_OPCODE-(BITS_REG)*2-1, BITS_INSTR-BITS_OPCODE-(BITS_REG)*3);

			intop_t intop = ir.range(BITS_INTOP-1, 0);

			/*
			gbmemop_t global_mem_atomic_op = ir.range(BITS_GBMEMOP-1, 0);

			grmemtblop_t graphmem_table_op = ir.range(BITS_GRMTBLOP+BITS_GRMEMNDEOP-1, BITS_GRMEMNDEOP);

			grmemndeop_t graphmem_node_atr = ir.range(BITS_GRMEMNDEOP-1, 0);
			*/

			imm_t immediate = ir.range(BITS_INSTR-BITS_OPCODE-BITS_REG-1, BITS_INSTR-BITS_OPCODE-(BITS_REG)*2);
			off_t offset = ir.range(BITS_INSTR-BITS_OPCODE-(BITS_REG)*2-1, 0);


			data_t op1 = (sr1 >= 32) ? special_regfile[sr1-32] : regfile[sr1];
			// Make sure this casting actually sign extends the value
			data_t op2 = (opcode == OPCODE_INTIMM || opcode == OPCODE_LD || opcode == OPCODE_ST) ? ((data_t) immediate) : (sr2 >= 32) ? special_regfile[sr2-32] : regfile[sr2];

			cout << "[DECODE] Opcode: " << hex << opcode << endl;
			//cout << "[DECODE] Source Reg 1: " << hex << sr1 << endl;
			//cout << "[DECODE] Source Reg 2: " << hex << sr2 << endl;
			cout << "[DECODE] Destination Reg: " << hex << dr << endl;
			cout << "[DECODE] Operand 1: " << hex << op1 << endl;
			cout << "[DECODE] Operand 2: " << hex << op2 << endl;

			// EXECUTE
			switch(opcode)
			{
				case OPCODE_INTREG :
				case OPCODE_INTIMM :
				{
					cout << "[EXECUTE] Performing integer op!" << endl;
					data_t result;
					switch(intop)
					{
						case INTOP_ADD	:	result = op1 + op2; 	break;
						case INTOP_SUB	:	result = op1 - op2; 	break;
						case INTOP_MUL	:	result = op1 * op2; 	break;
						case INTOP_DIV	:	result = op1 / op2; 	break;
						case INTOP_GR	:	result = op1 > op2; 	break;
						case INTOP_LT	:	result = op1 < op2; 	break;
						case INTOP_GRE	:	result = op1 >= op2;	break;
						case INTOP_LTE	:	result = op1 <= op2;	break;
						case INTOP_EQ	:	result = op1 == op2;	break;
						case INTOP_NEQ	:	result = op1 != op2;	break;
						case INTOP_AND	:	result = op1 & op2; 	break;
						case INTOP_OR	:	result = op1 | op2; 	break;
						case INTOP_NOT	:	result = ~op1; 			break;
						case INTOP_SHR	:	result = op1 << op2; 	break;
						case INTOP_SHL	:	result = op1 >> op2; 	break;
						default 		:	result = 0;				break;
					}
					cout << "[EXECUTE] Integer op result: " << hex << result << endl;
					regfile[dr] = result;
					pc++;

					break;
				}
				case OPCODE_BR :
				{
					cout << "[EXECUTE] Performing branch!" << endl;
					if(op1 == op2)
					{
						cout << "[EXECUTE] Branch taken!" << endl;
						pc += (data_t) offset;
					}
					else
					{
						cout << "[EXECUTE] Branch not taken!" << endl;
						pc++;
					}
					break;
				}
				case OPCODE_LD :
				{
					cout << "[EXECUTE] Performing load!" << endl;
					data_t addr = op1 + op2;
					data_t mem_data_read = data_memory[addr];
					regfile[dr] = mem_data_read;
					cout << "[EXECUTE] Read value: " << mem_data_read << endl;
					cout << "[EXECUTE] Read address: " << addr << endl;
					pc++;
					break;
				}
				case OPCODE_ST :
				{
					cout << "[EXECUTE] Performing store!" << endl;
					data_t addr = op1 + op2;
					data_t mem_data_write = regfile[dr];
					data_memory[addr] = mem_data_write;
					cout << "[EXECUTE] Store value: " << mem_data_write << endl;
					cout << "[EXECUTE] Store address: " << addr << endl;
					pc++;
					break;
				}
				/*
				case OPCODE_GRMEM :
				{

				}
				case OPCODE_GLMEM :
				{

				}*/
				case OPCODE_SCHED :
				{

				}
				case OPCODE_HALT :
				{
					cout << "[EXECUTE] Performing halt!" << endl;
					*halted = 1;
				}
				default :
				{
					pc++;
				}
			}
		}
	}
}
