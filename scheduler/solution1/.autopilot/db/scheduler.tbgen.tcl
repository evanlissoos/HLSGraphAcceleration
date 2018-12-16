set C_TypeInfoList {{ 
"scheduler" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"sched_interfaces": [[], {"array": ["0", [32]]}] }, {"setup_interfaces": [[], {"array": ["1", [32]]}] }, {"finished": [[],{ "pointer":  {"scalar": "unsigned int"}}] }],[],""], 
"1": [ "CoreControlInterface_t", {"typedef": [[[],"2"],""]}], 
"0": [ "CoreScheduleInterface_t", {"typedef": [[[],"3"],""]}], 
"3": [ "", {"struct": [[],[],[{ "context": [[96], "4"]},{ "schedule": [[], "5"]},{ "ack": [[], "5"]}],""]}], 
"4": [ "context_t", {"typedef": [[[],"6"],""]}], 
"6": [ "", {"struct": [[],[],[{ "current_node": [[],  {"scalar": "unsigned int"}]},{ "next_node": [[],  {"scalar": "unsigned int"}]},{ "state": [[],  {"scalar": "unsigned int"}]}],""]}], 
"5": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"2": [ "", {"struct": [[],[],[{ "context": [[96], "4"]},{ "restart": [[], "5"]},{ "core_halted": [[], "5"]}],""]}]
}}
set moduleName scheduler
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {scheduler}
set C_modelType { void 0 }
set C_modelArgList {
	{ sched_interfaces_context_current_node int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ sched_interfaces_context_next_node int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ sched_interfaces_context_state int 32 regular {array 32 { 1 3 } 1 1 }  }
	{ sched_interfaces_schedule_V int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ sched_interfaces_ack_V int 1 regular {array 32 { 0 3 } 0 1 }  }
	{ setup_interfaces_context_current_node int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ setup_interfaces_context_next_node int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ setup_interfaces_context_state int 32 regular {array 32 { 0 3 } 0 1 }  }
	{ setup_interfaces_restart_V int 1 regular {array 32 { 0 3 } 0 1 }  }
	{ setup_interfaces_core_halted_V int 1 regular {array 32 { 1 3 } 1 1 }  }
	{ finished int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sched_interfaces_context_current_node", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sched_interfaces.context.current_node","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "sched_interfaces_context_next_node", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sched_interfaces.context.next_node","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "sched_interfaces_context_state", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sched_interfaces.context.state","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "sched_interfaces_schedule_V", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sched_interfaces.schedule.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "sched_interfaces_ack_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sched_interfaces.ack.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "setup_interfaces_context_current_node", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "setup_interfaces.context.current_node","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "setup_interfaces_context_next_node", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "setup_interfaces.context.next_node","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "setup_interfaces_context_state", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "setup_interfaces.context.state","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "setup_interfaces_restart_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "setup_interfaces.restart.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "setup_interfaces_core_halted_V", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "setup_interfaces.core_halted.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "finished", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "finished","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sched_interfaces_context_current_node_address0 sc_out sc_lv 5 signal 0 } 
	{ sched_interfaces_context_current_node_ce0 sc_out sc_logic 1 signal 0 } 
	{ sched_interfaces_context_current_node_q0 sc_in sc_lv 32 signal 0 } 
	{ sched_interfaces_context_next_node_address0 sc_out sc_lv 5 signal 1 } 
	{ sched_interfaces_context_next_node_ce0 sc_out sc_logic 1 signal 1 } 
	{ sched_interfaces_context_next_node_q0 sc_in sc_lv 32 signal 1 } 
	{ sched_interfaces_context_state_address0 sc_out sc_lv 5 signal 2 } 
	{ sched_interfaces_context_state_ce0 sc_out sc_logic 1 signal 2 } 
	{ sched_interfaces_context_state_q0 sc_in sc_lv 32 signal 2 } 
	{ sched_interfaces_schedule_V_address0 sc_out sc_lv 5 signal 3 } 
	{ sched_interfaces_schedule_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ sched_interfaces_schedule_V_q0 sc_in sc_lv 1 signal 3 } 
	{ sched_interfaces_ack_V_address0 sc_out sc_lv 5 signal 4 } 
	{ sched_interfaces_ack_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ sched_interfaces_ack_V_we0 sc_out sc_logic 1 signal 4 } 
	{ sched_interfaces_ack_V_d0 sc_out sc_lv 1 signal 4 } 
	{ setup_interfaces_context_current_node_address0 sc_out sc_lv 5 signal 5 } 
	{ setup_interfaces_context_current_node_ce0 sc_out sc_logic 1 signal 5 } 
	{ setup_interfaces_context_current_node_we0 sc_out sc_logic 1 signal 5 } 
	{ setup_interfaces_context_current_node_d0 sc_out sc_lv 32 signal 5 } 
	{ setup_interfaces_context_next_node_address0 sc_out sc_lv 5 signal 6 } 
	{ setup_interfaces_context_next_node_ce0 sc_out sc_logic 1 signal 6 } 
	{ setup_interfaces_context_next_node_we0 sc_out sc_logic 1 signal 6 } 
	{ setup_interfaces_context_next_node_d0 sc_out sc_lv 32 signal 6 } 
	{ setup_interfaces_context_state_address0 sc_out sc_lv 5 signal 7 } 
	{ setup_interfaces_context_state_ce0 sc_out sc_logic 1 signal 7 } 
	{ setup_interfaces_context_state_we0 sc_out sc_logic 1 signal 7 } 
	{ setup_interfaces_context_state_d0 sc_out sc_lv 32 signal 7 } 
	{ setup_interfaces_restart_V_address0 sc_out sc_lv 5 signal 8 } 
	{ setup_interfaces_restart_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ setup_interfaces_restart_V_we0 sc_out sc_logic 1 signal 8 } 
	{ setup_interfaces_restart_V_d0 sc_out sc_lv 1 signal 8 } 
	{ setup_interfaces_core_halted_V_address0 sc_out sc_lv 5 signal 9 } 
	{ setup_interfaces_core_halted_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ setup_interfaces_core_halted_V_q0 sc_in sc_lv 1 signal 9 } 
	{ finished sc_out sc_lv 32 signal 10 } 
	{ finished_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sched_interfaces_context_current_node_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sched_interfaces_context_current_node", "role": "address0" }} , 
 	{ "name": "sched_interfaces_context_current_node_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sched_interfaces_context_current_node", "role": "ce0" }} , 
 	{ "name": "sched_interfaces_context_current_node_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sched_interfaces_context_current_node", "role": "q0" }} , 
 	{ "name": "sched_interfaces_context_next_node_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sched_interfaces_context_next_node", "role": "address0" }} , 
 	{ "name": "sched_interfaces_context_next_node_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sched_interfaces_context_next_node", "role": "ce0" }} , 
 	{ "name": "sched_interfaces_context_next_node_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sched_interfaces_context_next_node", "role": "q0" }} , 
 	{ "name": "sched_interfaces_context_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sched_interfaces_context_state", "role": "address0" }} , 
 	{ "name": "sched_interfaces_context_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sched_interfaces_context_state", "role": "ce0" }} , 
 	{ "name": "sched_interfaces_context_state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sched_interfaces_context_state", "role": "q0" }} , 
 	{ "name": "sched_interfaces_schedule_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sched_interfaces_schedule_V", "role": "address0" }} , 
 	{ "name": "sched_interfaces_schedule_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sched_interfaces_schedule_V", "role": "ce0" }} , 
 	{ "name": "sched_interfaces_schedule_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sched_interfaces_schedule_V", "role": "q0" }} , 
 	{ "name": "sched_interfaces_ack_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sched_interfaces_ack_V", "role": "address0" }} , 
 	{ "name": "sched_interfaces_ack_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sched_interfaces_ack_V", "role": "ce0" }} , 
 	{ "name": "sched_interfaces_ack_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sched_interfaces_ack_V", "role": "we0" }} , 
 	{ "name": "sched_interfaces_ack_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sched_interfaces_ack_V", "role": "d0" }} , 
 	{ "name": "setup_interfaces_context_current_node_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "setup_interfaces_context_current_node", "role": "address0" }} , 
 	{ "name": "setup_interfaces_context_current_node_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "setup_interfaces_context_current_node", "role": "ce0" }} , 
 	{ "name": "setup_interfaces_context_current_node_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "setup_interfaces_context_current_node", "role": "we0" }} , 
 	{ "name": "setup_interfaces_context_current_node_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "setup_interfaces_context_current_node", "role": "d0" }} , 
 	{ "name": "setup_interfaces_context_next_node_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "setup_interfaces_context_next_node", "role": "address0" }} , 
 	{ "name": "setup_interfaces_context_next_node_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "setup_interfaces_context_next_node", "role": "ce0" }} , 
 	{ "name": "setup_interfaces_context_next_node_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "setup_interfaces_context_next_node", "role": "we0" }} , 
 	{ "name": "setup_interfaces_context_next_node_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "setup_interfaces_context_next_node", "role": "d0" }} , 
 	{ "name": "setup_interfaces_context_state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "setup_interfaces_context_state", "role": "address0" }} , 
 	{ "name": "setup_interfaces_context_state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "setup_interfaces_context_state", "role": "ce0" }} , 
 	{ "name": "setup_interfaces_context_state_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "setup_interfaces_context_state", "role": "we0" }} , 
 	{ "name": "setup_interfaces_context_state_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "setup_interfaces_context_state", "role": "d0" }} , 
 	{ "name": "setup_interfaces_restart_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "setup_interfaces_restart_V", "role": "address0" }} , 
 	{ "name": "setup_interfaces_restart_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "setup_interfaces_restart_V", "role": "ce0" }} , 
 	{ "name": "setup_interfaces_restart_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "setup_interfaces_restart_V", "role": "we0" }} , 
 	{ "name": "setup_interfaces_restart_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "setup_interfaces_restart_V", "role": "d0" }} , 
 	{ "name": "setup_interfaces_core_halted_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "setup_interfaces_core_halted_V", "role": "address0" }} , 
 	{ "name": "setup_interfaces_core_halted_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "setup_interfaces_core_halted_V", "role": "ce0" }} , 
 	{ "name": "setup_interfaces_core_halted_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "setup_interfaces_core_halted_V", "role": "q0" }} , 
 	{ "name": "finished", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "finished", "role": "default" }} , 
 	{ "name": "finished_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "finished", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "scheduler",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "sched_interfaces_context_current_node", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sched_interfaces_context_next_node", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sched_interfaces_context_state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sched_interfaces_schedule_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sched_interfaces_ack_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "setup_interfaces_context_current_node", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "setup_interfaces_context_next_node", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "setup_interfaces_context_state", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "setup_interfaces_restart_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "setup_interfaces_core_halted_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "finished", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.history_current_node_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.history_next_node_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.history_state_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.queue_current_node_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.queue_next_node_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.queue_state_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	scheduler {
		sched_interfaces_context_current_node {Type I LastRead 2 FirstWrite -1}
		sched_interfaces_context_next_node {Type I LastRead 2 FirstWrite -1}
		sched_interfaces_context_state {Type I LastRead 2 FirstWrite -1}
		sched_interfaces_schedule_V {Type I LastRead 1 FirstWrite -1}
		sched_interfaces_ack_V {Type O LastRead -1 FirstWrite 4}
		setup_interfaces_context_current_node {Type O LastRead -1 FirstWrite 5}
		setup_interfaces_context_next_node {Type O LastRead -1 FirstWrite 5}
		setup_interfaces_context_state {Type O LastRead -1 FirstWrite 5}
		setup_interfaces_restart_V {Type O LastRead -1 FirstWrite 5}
		setup_interfaces_core_halted_V {Type I LastRead 2 FirstWrite -1}
		finished {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "194", "Max" : "393538"}
	, {"Name" : "Interval", "Min" : "195", "Max" : "393539"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sched_interfaces_context_current_node { ap_memory {  { sched_interfaces_context_current_node_address0 mem_address 1 5 }  { sched_interfaces_context_current_node_ce0 mem_ce 1 1 }  { sched_interfaces_context_current_node_q0 mem_dout 0 32 } } }
	sched_interfaces_context_next_node { ap_memory {  { sched_interfaces_context_next_node_address0 mem_address 1 5 }  { sched_interfaces_context_next_node_ce0 mem_ce 1 1 }  { sched_interfaces_context_next_node_q0 mem_dout 0 32 } } }
	sched_interfaces_context_state { ap_memory {  { sched_interfaces_context_state_address0 mem_address 1 5 }  { sched_interfaces_context_state_ce0 mem_ce 1 1 }  { sched_interfaces_context_state_q0 mem_dout 0 32 } } }
	sched_interfaces_schedule_V { ap_memory {  { sched_interfaces_schedule_V_address0 mem_address 1 5 }  { sched_interfaces_schedule_V_ce0 mem_ce 1 1 }  { sched_interfaces_schedule_V_q0 mem_dout 0 1 } } }
	sched_interfaces_ack_V { ap_memory {  { sched_interfaces_ack_V_address0 mem_address 1 5 }  { sched_interfaces_ack_V_ce0 mem_ce 1 1 }  { sched_interfaces_ack_V_we0 mem_we 1 1 }  { sched_interfaces_ack_V_d0 mem_din 1 1 } } }
	setup_interfaces_context_current_node { ap_memory {  { setup_interfaces_context_current_node_address0 mem_address 1 5 }  { setup_interfaces_context_current_node_ce0 mem_ce 1 1 }  { setup_interfaces_context_current_node_we0 mem_we 1 1 }  { setup_interfaces_context_current_node_d0 mem_din 1 32 } } }
	setup_interfaces_context_next_node { ap_memory {  { setup_interfaces_context_next_node_address0 mem_address 1 5 }  { setup_interfaces_context_next_node_ce0 mem_ce 1 1 }  { setup_interfaces_context_next_node_we0 mem_we 1 1 }  { setup_interfaces_context_next_node_d0 mem_din 1 32 } } }
	setup_interfaces_context_state { ap_memory {  { setup_interfaces_context_state_address0 mem_address 1 5 }  { setup_interfaces_context_state_ce0 mem_ce 1 1 }  { setup_interfaces_context_state_we0 mem_we 1 1 }  { setup_interfaces_context_state_d0 mem_din 1 32 } } }
	setup_interfaces_restart_V { ap_memory {  { setup_interfaces_restart_V_address0 mem_address 1 5 }  { setup_interfaces_restart_V_ce0 mem_ce 1 1 }  { setup_interfaces_restart_V_we0 mem_we 1 1 }  { setup_interfaces_restart_V_d0 mem_din 1 1 } } }
	setup_interfaces_core_halted_V { ap_memory {  { setup_interfaces_core_halted_V_address0 mem_address 1 5 }  { setup_interfaces_core_halted_V_ce0 mem_ce 1 1 }  { setup_interfaces_core_halted_V_q0 mem_dout 0 1 } } }
	finished { ap_vld {  { finished out_data 1 32 }  { finished_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
