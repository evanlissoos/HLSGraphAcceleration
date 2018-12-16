#ifndef __GLOBAL_MEMORY_H_
#define __GLOBAL_MEMORY_H_

#include <systemc.h>
#include <ap_int.h>
#include <ap_utils.h>
#include <iostream>
using namespace std;

#define data_t int
#define ready_t ap_uint<1>
#define atomicop_t ap_uint<2>

#define NUM_CORES 2

#define GLOBAL_MEM_SIZE 1024

#define GBMEMOP_RD		0
#define GBMEMOP_ADD		1
#define GBMEMOP_MIN		2
#define GBMEMOP_MAX		3

#define DUMP_END_ADDR	10

typedef struct
{
	data_t address;
	data_t data;
	atomicop_t op;
} atomicreq_t;


typedef struct
{
	atomicreq_t request;
	data_t result;
	ready_t ack;
	ready_t req;
} CoreGlobalMemoryInterface_t;


void global_memory(CoreGlobalMemoryInterface_t mem_interfaces[NUM_CORES]);

#endif
