#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("instruction_memory_V_address0", 10, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("instruction_memory_V_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("instruction_memory_V_q0", 25, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("data_memory_V_address0", 10, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("data_memory_V_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("data_memory_V_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("data_memory_V_d0", 32, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("data_memory_V_q0", 32, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("halted_V_i", 1, hls_in, 2, "ap_ovld", "in_data", 1),
	Port_Property("halted_V_o", 1, hls_out, 2, "ap_ovld", "out_data", 1),
	Port_Property("halted_V_o_ap_vld", 1, hls_out, 2, "ap_ovld", "out_vld", 1),
	Port_Property("core_id", 32, hls_in, 3, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "danke_core";
