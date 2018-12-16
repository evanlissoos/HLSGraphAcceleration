#include "global_memory.h"

void global_memory(CoreGlobalMemoryInterface_t mem_interfaces[NUM_CORES])
{
	data_t global_memory[GLOBAL_MEM_SIZE];

	//while(true)
	{
		// Check each interface
		for(int i = 0; i < NUM_CORES; i++)
		{
			cout << "Checking for request on core " << hex << i << "..." << endl;
			// If there is a request, service it
			if(mem_interfaces[i].req)
			{
				atomicreq_t request = mem_interfaces[i].request;
				data_t result;

				cout << "Found request!" << endl;
				cout << "[Request] Address: " << hex << request.address << endl;
				cout << "[Request] Data: " << hex << request.data << endl;
				cout << "[Request] Op: " << hex << request.op << endl;

				// Need to make this a protocol since it must be atomic!
				{
				#pragma HLS protocol fixed
					cout << "Performing atomic op..." << endl;

					// Read
					data_t read_data = global_memory[request.address];
					cout << "Data read from memory: " << hex << read_data << endl;

					// Modify
					switch(request.op)
					{
						case GBMEMOP_ADD:	result = read_data + request.data;								break;
						case GBMEMOP_MIN:	result = (read_data > request.data) ? request.data : read_data;	break;
						case GBMEMOP_MAX:	result = (read_data > request.data) ? read_data : request.data;	break;
						default: 			result = read_data;												break;
					}

					// Write
					cout << "Operation result: " << hex << result << endl;
					global_memory[request.address] = result;
				}

				{
				#pragma HLS protocol fixed
					cout << "Responding to core..." << endl;
					// Send the result back to the requesting core and send an ack
					mem_interfaces[i].result = result;
					mem_interfaces[i].ack = 1;
					ap_wait();
					mem_interfaces[i].ack = 0;
				}
			}
		}

		// Dump memory contents
		cout << "Memory dump:" << endl;
		for(int i = 0; i < DUMP_END_ADDR; i++)
			cout << hex << "0x" << i << ": " << "0x" << global_memory[i] << endl;
	}
}
