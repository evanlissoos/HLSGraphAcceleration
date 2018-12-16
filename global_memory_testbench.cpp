#include "global_memory.h"
#include <iostream>
using namespace std;


int main()
{
	CoreGlobalMemoryInterface_t mem_interfaces[NUM_CORES];

	mem_interfaces[0].req = 1;
	mem_interfaces[0].ack = 0;
	mem_interfaces[0].result = 0;
	mem_interfaces[0].request.address = 0;
	mem_interfaces[0].request.data = -100;
	mem_interfaces[0].request.op = GBMEMOP_MAX;

	mem_interfaces[1].req = 1;
	mem_interfaces[1].ack = 0;
	mem_interfaces[1].result = 0;
	mem_interfaces[1].request.address = 0;
	mem_interfaces[1].request.data = 100;
	mem_interfaces[1].request.op = GBMEMOP_MAX;

	cout << "Entering global memory!" << endl;

	global_memory(mem_interfaces);

	cout << "Returned from global memory!" << endl;

	for(int i = 0; i < NUM_CORES; i++)
		cout << "Result on request line " << hex << i << ": " << mem_interfaces[i].result << endl;
}
