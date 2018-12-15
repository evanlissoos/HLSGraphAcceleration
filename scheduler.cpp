#include "scheduler.h"

void scheduler(CoreScheduleInterface_t * sched_interfaces[NUM_CORES], CoreControlInterface_t * setup_interfaces[NUM_CORES])
{
	context_t history[HISTORY_SIZE];
	context_t queue[QUEUE_SIZE];
	unsigned queue_head_ptr = 0;

	while(true)
	{
		// Add any new requests to the queue
		for(int i = 0; i < NUM_CORES; i++)
		{
			// If a there is a schedule request and there is room in the FIFO, push the context
			if((sched_interfaces[i]->schedule == 1) && (queue_head_ptr <= QUEUE_SIZE-1))
			{
				// First, read in the new context and then ackowledge so the core may continue
				context_t new_context = sched_interfaces[i]->context;
				#pragma HLS protocol fixed
				{
					sched_interfaces[i]->ack = 1;
					wait();
					sched_interfaces[i]->ack = 0;
				}

				// Check if this context has already run
				bool match_found = 0;
				for(int j = 0; j < HISTORY_SIZE; j++)
				{
					match_found = 	(history[j].current_node == new_context.current_node)
									&& (history[j].next_node == new_context.next_node)
									&& (history[j].state == new_context.state);
				}

				// If it hasen't been run, queue it up
				if(!match_found)
				{
					queue[i] = sched_interfaces[i]->context;
					queue_head_ptr++;
				}
			}
		}

		// Check for any halted cores and shedule a new thread if available
		for(int i = 0; i < NUM_CORES; i++)
		{
			if((setup_interfaces[i]->core_halted == 1) && (queue_head_ptr > 0))
			{
			#pragma HLS protocol fixed
				setup_interfaces[i]->context = queue[i].context;
				setup_interfaces[i]->restart = 1;
				wait();
				setup_interfaces[i]->restart = 0;
			}
		}
	}
}


