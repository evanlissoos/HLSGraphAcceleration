#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("sched_interfaces_context_current_node_address0", 5, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("sched_interfaces_context_current_node_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("sched_interfaces_context_current_node_q0", 32, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("sched_interfaces_context_next_node_address0", 5, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("sched_interfaces_context_next_node_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("sched_interfaces_context_next_node_q0", 32, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("sched_interfaces_context_state_address0", 5, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("sched_interfaces_context_state_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("sched_interfaces_context_state_q0", 32, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("sched_interfaces_schedule_V_address0", 5, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("sched_interfaces_schedule_V_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("sched_interfaces_schedule_V_q0", 1, hls_in, 3, "ap_memory", "mem_dout", 1),
	Port_Property("sched_interfaces_ack_V_address0", 5, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("sched_interfaces_ack_V_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("sched_interfaces_ack_V_we0", 1, hls_out, 4, "ap_memory", "mem_we", 1),
	Port_Property("sched_interfaces_ack_V_d0", 1, hls_out, 4, "ap_memory", "mem_din", 1),
	Port_Property("setup_interfaces_context_current_node_address0", 5, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("setup_interfaces_context_current_node_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("setup_interfaces_context_current_node_we0", 1, hls_out, 5, "ap_memory", "mem_we", 1),
	Port_Property("setup_interfaces_context_current_node_d0", 32, hls_out, 5, "ap_memory", "mem_din", 1),
	Port_Property("setup_interfaces_context_next_node_address0", 5, hls_out, 6, "ap_memory", "mem_address", 1),
	Port_Property("setup_interfaces_context_next_node_ce0", 1, hls_out, 6, "ap_memory", "mem_ce", 1),
	Port_Property("setup_interfaces_context_next_node_we0", 1, hls_out, 6, "ap_memory", "mem_we", 1),
	Port_Property("setup_interfaces_context_next_node_d0", 32, hls_out, 6, "ap_memory", "mem_din", 1),
	Port_Property("setup_interfaces_context_state_address0", 5, hls_out, 7, "ap_memory", "mem_address", 1),
	Port_Property("setup_interfaces_context_state_ce0", 1, hls_out, 7, "ap_memory", "mem_ce", 1),
	Port_Property("setup_interfaces_context_state_we0", 1, hls_out, 7, "ap_memory", "mem_we", 1),
	Port_Property("setup_interfaces_context_state_d0", 32, hls_out, 7, "ap_memory", "mem_din", 1),
	Port_Property("setup_interfaces_restart_V_address0", 5, hls_out, 8, "ap_memory", "mem_address", 1),
	Port_Property("setup_interfaces_restart_V_ce0", 1, hls_out, 8, "ap_memory", "mem_ce", 1),
	Port_Property("setup_interfaces_restart_V_we0", 1, hls_out, 8, "ap_memory", "mem_we", 1),
	Port_Property("setup_interfaces_restart_V_d0", 1, hls_out, 8, "ap_memory", "mem_din", 1),
	Port_Property("setup_interfaces_core_halted_V_address0", 5, hls_out, 9, "ap_memory", "mem_address", 1),
	Port_Property("setup_interfaces_core_halted_V_ce0", 1, hls_out, 9, "ap_memory", "mem_ce", 1),
	Port_Property("setup_interfaces_core_halted_V_q0", 1, hls_in, 9, "ap_memory", "mem_dout", 1),
	Port_Property("finished", 32, hls_out, 10, "ap_vld", "out_data", 1),
	Port_Property("finished_ap_vld", 1, hls_out, 10, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "scheduler";
