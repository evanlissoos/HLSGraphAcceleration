set C_TypeInfoList {{ 
"global_memory" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"mem_interfaces": [[], {"array": ["0", [2]]}] }],[],""], 
"0": [ "CoreGlobalMemoryInterface_t", {"typedef": [[[],"1"],""]}], 
"1": [ "", {"struct": [[],[],[{ "request": [[96], "2"]},{ "result": [[],  {"scalar": "int"}]},{ "ack": [[], "3"]},{ "req": [[], "3"]}],""]}], 
"2": [ "atomicreq_t", {"typedef": [[[],"4"],""]}], 
"4": [ "", {"struct": [[],[],[{ "address": [[],  {"scalar": "int"}]},{ "data": [[],  {"scalar": "int"}]},{ "op": [[], "5"]}],""]}], 
"3": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"5": [ "ap_uint<2>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 2}}]],""]}}]
}}
set moduleName global_memory
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {global_memory}
set C_modelType { void 0 }
set C_modelArgList {
	{ mem_interfaces_request_address int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ mem_interfaces_request_data int 32 regular {array 2 { 1 3 } 1 1 }  }
	{ mem_interfaces_request_op_V int 2 regular {array 2 { 1 3 } 1 1 }  }
	{ mem_interfaces_result int 32 regular {array 2 { 0 3 } 0 1 }  }
	{ mem_interfaces_ack_V int 1 regular {array 2 { 0 3 } 0 1 }  }
	{ mem_interfaces_req_V int 1 regular {array 2 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mem_interfaces_request_address", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mem_interfaces.request.address","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "mem_interfaces_request_data", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mem_interfaces.request.data","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "mem_interfaces_request_op_V", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "mem_interfaces.request.op.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "mem_interfaces_result", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mem_interfaces.result","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "mem_interfaces_ack_V", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "mem_interfaces.ack.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "mem_interfaces_req_V", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "mem_interfaces.req.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mem_interfaces_request_address_address0 sc_out sc_lv 1 signal 0 } 
	{ mem_interfaces_request_address_ce0 sc_out sc_logic 1 signal 0 } 
	{ mem_interfaces_request_address_q0 sc_in sc_lv 32 signal 0 } 
	{ mem_interfaces_request_data_address0 sc_out sc_lv 1 signal 1 } 
	{ mem_interfaces_request_data_ce0 sc_out sc_logic 1 signal 1 } 
	{ mem_interfaces_request_data_q0 sc_in sc_lv 32 signal 1 } 
	{ mem_interfaces_request_op_V_address0 sc_out sc_lv 1 signal 2 } 
	{ mem_interfaces_request_op_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ mem_interfaces_request_op_V_q0 sc_in sc_lv 2 signal 2 } 
	{ mem_interfaces_result_address0 sc_out sc_lv 1 signal 3 } 
	{ mem_interfaces_result_ce0 sc_out sc_logic 1 signal 3 } 
	{ mem_interfaces_result_we0 sc_out sc_logic 1 signal 3 } 
	{ mem_interfaces_result_d0 sc_out sc_lv 32 signal 3 } 
	{ mem_interfaces_ack_V_address0 sc_out sc_lv 1 signal 4 } 
	{ mem_interfaces_ack_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ mem_interfaces_ack_V_we0 sc_out sc_logic 1 signal 4 } 
	{ mem_interfaces_ack_V_d0 sc_out sc_lv 1 signal 4 } 
	{ mem_interfaces_req_V_address0 sc_out sc_lv 1 signal 5 } 
	{ mem_interfaces_req_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ mem_interfaces_req_V_q0 sc_in sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mem_interfaces_request_address_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_request_address", "role": "address0" }} , 
 	{ "name": "mem_interfaces_request_address_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_request_address", "role": "ce0" }} , 
 	{ "name": "mem_interfaces_request_address_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem_interfaces_request_address", "role": "q0" }} , 
 	{ "name": "mem_interfaces_request_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_request_data", "role": "address0" }} , 
 	{ "name": "mem_interfaces_request_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_request_data", "role": "ce0" }} , 
 	{ "name": "mem_interfaces_request_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem_interfaces_request_data", "role": "q0" }} , 
 	{ "name": "mem_interfaces_request_op_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_request_op_V", "role": "address0" }} , 
 	{ "name": "mem_interfaces_request_op_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_request_op_V", "role": "ce0" }} , 
 	{ "name": "mem_interfaces_request_op_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_interfaces_request_op_V", "role": "q0" }} , 
 	{ "name": "mem_interfaces_result_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_result", "role": "address0" }} , 
 	{ "name": "mem_interfaces_result_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_result", "role": "ce0" }} , 
 	{ "name": "mem_interfaces_result_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_result", "role": "we0" }} , 
 	{ "name": "mem_interfaces_result_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem_interfaces_result", "role": "d0" }} , 
 	{ "name": "mem_interfaces_ack_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_ack_V", "role": "address0" }} , 
 	{ "name": "mem_interfaces_ack_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_ack_V", "role": "ce0" }} , 
 	{ "name": "mem_interfaces_ack_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_ack_V", "role": "we0" }} , 
 	{ "name": "mem_interfaces_ack_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_ack_V", "role": "d0" }} , 
 	{ "name": "mem_interfaces_req_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_req_V", "role": "address0" }} , 
 	{ "name": "mem_interfaces_req_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_req_V", "role": "ce0" }} , 
 	{ "name": "mem_interfaces_req_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_interfaces_req_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "global_memory",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "mem_interfaces_request_address", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mem_interfaces_request_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mem_interfaces_request_op_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mem_interfaces_result", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mem_interfaces_ack_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mem_interfaces_req_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.global_memory_1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	global_memory {
		mem_interfaces_request_address {Type I LastRead 2 FirstWrite -1}
		mem_interfaces_request_data {Type I LastRead 3 FirstWrite -1}
		mem_interfaces_request_op_V {Type I LastRead 3 FirstWrite -1}
		mem_interfaces_result {Type O LastRead -1 FirstWrite 6}
		mem_interfaces_ack_V {Type O LastRead -1 FirstWrite 6}
		mem_interfaces_req_V {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mem_interfaces_request_address { ap_memory {  { mem_interfaces_request_address_address0 mem_address 1 1 }  { mem_interfaces_request_address_ce0 mem_ce 1 1 }  { mem_interfaces_request_address_q0 mem_dout 0 32 } } }
	mem_interfaces_request_data { ap_memory {  { mem_interfaces_request_data_address0 mem_address 1 1 }  { mem_interfaces_request_data_ce0 mem_ce 1 1 }  { mem_interfaces_request_data_q0 mem_dout 0 32 } } }
	mem_interfaces_request_op_V { ap_memory {  { mem_interfaces_request_op_V_address0 mem_address 1 1 }  { mem_interfaces_request_op_V_ce0 mem_ce 1 1 }  { mem_interfaces_request_op_V_q0 mem_dout 0 2 } } }
	mem_interfaces_result { ap_memory {  { mem_interfaces_result_address0 mem_address 1 1 }  { mem_interfaces_result_ce0 mem_ce 1 1 }  { mem_interfaces_result_we0 mem_we 1 1 }  { mem_interfaces_result_d0 mem_din 1 32 } } }
	mem_interfaces_ack_V { ap_memory {  { mem_interfaces_ack_V_address0 mem_address 1 1 }  { mem_interfaces_ack_V_ce0 mem_ce 1 1 }  { mem_interfaces_ack_V_we0 mem_we 1 1 }  { mem_interfaces_ack_V_d0 mem_din 1 1 } } }
	mem_interfaces_req_V { ap_memory {  { mem_interfaces_req_V_address0 mem_address 1 1 }  { mem_interfaces_req_V_ce0 mem_ce 1 1 }  { mem_interfaces_req_V_q0 mem_dout 0 1 } } }
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
