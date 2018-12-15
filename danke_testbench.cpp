#include "danke.h"
#include <ap_int.h>
#include <iostream>
using namespace std;

#define DUMP_START_ADDR	10
#define DUMP_NUM_ADDRS	4

int main()
{
	instr_t instruction_memory[INSTR_MEM_SIZE] = { 0x400410, 0x8020, 0xa00005, 0x20412, 0x420421, 0x20038, 0x8303fd, 0xc00020, 0x28020, 0x1020010, 0x1800000, 0x800000 };
	data_t data_memory[DATA_MEM_SIZE] = {DUMP_START_ADDR};
	halted_t halted[4] = {0,0,0,0};
	unsigned coreids[4] = {0,1,2,3};

	cout << "Starting DANKE core!" << endl;

	danke_core(instruction_memory, data_memory, &(halted[0]), &(coreids[0]));
	danke_core(instruction_memory, data_memory, &(halted[1]), &(coreids[1]));
	danke_core(instruction_memory, data_memory, &(halted[2]), &(coreids[2]));
	danke_core(instruction_memory, data_memory, &(halted[3]), &(coreids[3]));

	cout << "DANKE core has completed!" << endl;

	cout << "Memory dump:" << endl;
	for(int i = DUMP_START_ADDR; i < DUMP_START_ADDR + DUMP_NUM_ADDRS; i++)
		cout << hex << i << ": " << data_memory[i] << endl;

	return 0;
}
