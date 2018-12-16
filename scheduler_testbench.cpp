  #include "scheduler.h"
#include <iostream>
using namespace std;

#define DUMP_START_ADDR	10
#define DUMP_NUM_ADDRS	4

int main()
{
	CoreScheduleInterface_t sched_interfaces[NUM_CORES];
	CoreControlInterface_t setup_interfaces[NUM_CORES];
	unsigned finished = 0;


	// Set scheduling interfaces
	sched_interfaces[0].context.current_node = 1;
	sched_interfaces[0].context.next_node = 2;
	sched_interfaces[0].context.state = 1;
	sched_interfaces[0].schedule = 1;
	sched_interfaces[0].ack = 0;

	sched_interfaces[1].context.current_node = 1;
	sched_interfaces[1].context.next_node = 2;
	sched_interfaces[1].context.state = 1;
	sched_interfaces[1].schedule = 1;
	sched_interfaces[1].ack = 0;

	sched_interfaces[2].context.current_node = 1;
	sched_interfaces[2].context.next_node = 2;
	sched_interfaces[2].context.state = 2;
	sched_interfaces[2].schedule = 1;
	sched_interfaces[2].ack = 0;

	sched_interfaces[3].context.current_node = 1;
	sched_interfaces[3].context.next_node = 2;
	sched_interfaces[3].context.state = 2;
	sched_interfaces[3].schedule = 1;
	sched_interfaces[3].ack = 0;

	// Set setup interfaces
	setup_interfaces[0].context.current_node = 0;
	setup_interfaces[0].context.next_node = 0;
	setup_interfaces[0].context.state = 0;
	setup_interfaces[0].core_halted = 0;
	setup_interfaces[0].restart = 0;

	setup_interfaces[1].context.current_node = 0;
	setup_interfaces[1].context.next_node = 0;
	setup_interfaces[1].context.state = 0;
	setup_interfaces[1].core_halted = 0;
	setup_interfaces[1].restart = 0;

	setup_interfaces[2].context.current_node = 0;
	setup_interfaces[2].context.next_node = 0;
	setup_interfaces[2].context.state = 0;
	setup_interfaces[2].core_halted = 1;
	setup_interfaces[2].restart = 0;

	setup_interfaces[3].context.current_node = 0;
	setup_interfaces[3].context.next_node = 0;
	setup_interfaces[3].context.state = 0;
	setup_interfaces[3].core_halted = 1;
	setup_interfaces[3].restart = 0;

	// Call scheduler
	cout << "Entering scheduler!" << endl;

	scheduler(sched_interfaces, setup_interfaces, &finished);

	cout << "Returned from scheduler!" << endl;
}
