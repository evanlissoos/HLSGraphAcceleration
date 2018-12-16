#ifndef __SCHEDULER_H_
#define __SCHEDULER_H_

#include <systemc.h>
#include <ap_int.h>
#include <iostream>
using namespace std;

#define nodeid_t unsigned
#define ready_t ap_uint<1>
#define halted_t ap_uint<1>

#define NUM_CORES 2
#define HISTORY_SIZE 1024
#define QUEUE_SIZE 4

typedef struct
{
	nodeid_t current_node;
	nodeid_t next_node;
	unsigned state;
} context_t;


typedef struct
{
	context_t context;
	ready_t schedule;
	ready_t ack;
} CoreScheduleInterface_t;

typedef struct
{
	context_t context;
	ready_t restart;
	halted_t core_halted;
} CoreControlInterface_t;

void scheduler(CoreScheduleInterface_t sched_interfaces[NUM_CORES], CoreControlInterface_t setup_interfaces[NUM_CORES], unsigned * finished);

#endif
