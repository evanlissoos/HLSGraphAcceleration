#include "scheduler.h"
#include "ap_utils.h"

void scheduler(CoreScheduleInterface_t sched_interfaces[NUM_CORES], CoreControlInterface_t setup_interfaces[NUM_CORES], unsigned * finished)
{
	context_t history[HISTORY_SIZE];
	context_t queue[QUEUE_SIZE];
	unsigned queue_head_ptr = 0;
	unsigned history_head_ptr = 0;

	//while(true)
	{
		cout << "Checking for requests..." << endl;
		// Add any new requests to the queue
		for(int i = 0; i < NUM_CORES; i++)
		{
			cout << "Checking for requests on core " << hex << i << "..." << endl;
			// If a there is a schedule request and there is room in the FIFO, push the context
			if((sched_interfaces[i].schedule == 1) && (queue_head_ptr <= QUEUE_SIZE-1))
			{
				// First, read in the new context and then ackowledge so the core may continue
				context_t new_context = sched_interfaces[i].context;
				cout << "Found request!" << endl;
				cout << "[Context] current_node: " << new_context.current_node << endl;
				cout << "[Context] next_node: " << new_context.next_node << endl;
				cout << "[Context] state: " << new_context.state << endl;

				{
				#pragma HLS protocol fixed
					sched_interfaces[i].ack = 1;
					//wait();
					sched_interfaces[i].ack = 0;
				}

				// Check if this context has already run
				bool match_found = 0;
				for(int j = 0; j < HISTORY_SIZE; j++)
				{
					if(j < history_head_ptr)
					{
						match_found = 	match_found || ((history[j].current_node == new_context.current_node)
										&& (history[j].next_node == new_context.next_node)
										&& (history[j].state == new_context.state));
					}
				}

				// If it hasen't been run, queue it up
				if(!match_found)
				{
					queue[queue_head_ptr] = sched_interfaces[i].context;
					history[history_head_ptr] = sched_interfaces[i].context;
					queue_head_ptr++;
					history_head_ptr++;
					cout << "No existing match was found, queuing up!" << endl;
				}
				else
					cout << "Existing match found, ignoring request!" << endl;
			}
		}

		cout << "Checking for halted cores..." << endl;
		bool halted_flag = 1;
		// Check for any halted cores and schedule a new thread if available
		for(int i = 0; i < NUM_CORES; i++)
		{
			cout << "Checking if core " << hex << i << " has halted" << endl;
			halted_flag &= (setup_interfaces[i].core_halted == 1);
			if((setup_interfaces[i].core_halted == 1) && (queue_head_ptr > 0))
			{
				cout << "Core " << hex << i << " halted and queue has threads available!" << endl;
				// Pop context from queue
				context_t new_context = queue[queue_head_ptr-1];
				queue_head_ptr--;
				cout << "Scheduling context on core!" << endl;
				cout << "[Context] current_node: " << new_context.current_node << endl;
				cout << "[Context] next_node: " << new_context.next_node << endl;
				cout << "[Context] state: " << new_context.state << endl;
				{
				#pragma HLS protocol fixed
					setup_interfaces[i].context = new_context;
					setup_interfaces[i].restart = 1;
					ap_wait();
					setup_interfaces[i].restart = 0;
				}
			}
		}
		*finished = halted_flag & (queue_head_ptr == 0);
	}
}


