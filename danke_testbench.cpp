#include "danke.h"
#include <ap_int.h>
#include <iostream>
using namespace std;

int main()
{
	instr_t instruction_memory[INSTR_MEM_SIZE] = {0x208012, 0x1200010, 0x1800000, 0x800000};
	data_t data_memory[DATA_MEM_SIZE];
	halted_t halted[4] = {0,0,0,0};
	unsigned coreids[4] = {0,1,2,3};

	cout << "Starting DANKE core!" << endl;

	danke_core(instruction_memory, data_memory, &(halted[0]), &(coreids[0]));
	danke_core(instruction_memory, data_memory, &(halted[1]), &(coreids[1]));
	danke_core(instruction_memory, data_memory, &(halted[2]), &(coreids[2]));
	danke_core(instruction_memory, data_memory, &(halted[3]), &(coreids[3]));

	cout << "DANKE core has completed!" << endl;

	cout << "M[0] = " << hex << data_memory[0] << endl;
	cout << "M[1] = " << hex << data_memory[1] << endl;
	cout << "M[2] = " << hex << data_memory[2] << endl;
	cout << "M[3] = " << hex << data_memory[3] << endl;

	return 0;
}
