set C_TypeInfoList {{ 
"danke_core" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"instruction_memory": [[], {"array": ["0", [1024]]}] }, {"data_memory": [[], {"array": ["1", [1024]]}] }, {"halted": [[],{ "pointer": "2"}] }, {"core_id": [[],{ "pointer":  {"scalar": "unsigned int"}}] }],[],""], 
"1": [ "ap_int<32>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"2": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"0": [ "ap_uint<25>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 25}}]],""]}}]
}}
set moduleName danke_core
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {danke_core}
set C_modelType { void 0 }
set C_modelArgList {
	{ instruction_memory_V int 25 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_memory_V int 32 regular {array 1024 { 2 3 } 1 1 }  }
	{ halted_V int 1 regular {pointer 2}  }
	{ core_id int 32 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "instruction_memory_V", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "bitSlice":[{"low":0,"up":24,"cElement": [{"cName": "instruction_memory.V","cData": "uint25","bit_use": { "low": 0,"up": 24},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "data_memory_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_memory.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1023,"step" : 1}]}]}]} , 
 	{ "Name" : "halted_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "halted.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "core_id", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "core_id","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ instruction_memory_V_address0 sc_out sc_lv 10 signal 0 } 
	{ instruction_memory_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ instruction_memory_V_q0 sc_in sc_lv 25 signal 0 } 
	{ data_memory_V_address0 sc_out sc_lv 10 signal 1 } 
	{ data_memory_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_memory_V_we0 sc_out sc_logic 1 signal 1 } 
	{ data_memory_V_d0 sc_out sc_lv 32 signal 1 } 
	{ data_memory_V_q0 sc_in sc_lv 32 signal 1 } 
	{ halted_V_i sc_in sc_lv 1 signal 2 } 
	{ halted_V_o sc_out sc_lv 1 signal 2 } 
	{ halted_V_o_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ core_id sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "instruction_memory_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "instruction_memory_V", "role": "address0" }} , 
 	{ "name": "instruction_memory_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "instruction_memory_V", "role": "ce0" }} , 
 	{ "name": "instruction_memory_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "instruction_memory_V", "role": "q0" }} , 
 	{ "name": "data_memory_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_memory_V", "role": "address0" }} , 
 	{ "name": "data_memory_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_memory_V", "role": "ce0" }} , 
 	{ "name": "data_memory_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_memory_V", "role": "we0" }} , 
 	{ "name": "data_memory_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_memory_V", "role": "d0" }} , 
 	{ "name": "data_memory_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_memory_V", "role": "q0" }} , 
 	{ "name": "halted_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "halted_V", "role": "i" }} , 
 	{ "name": "halted_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "halted_V", "role": "o" }} , 
 	{ "name": "halted_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "halted_V", "role": "o_ap_vld" }} , 
 	{ "name": "core_id", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "core_id", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "danke_core",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "instruction_memory_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_memory_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "halted_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "core_id", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regfile_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.special_regfile_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.danke_core_sdiv_3dEe_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.danke_core_mul_32eOg_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	danke_core {
		instruction_memory_V {Type I LastRead 1 FirstWrite -1}
		data_memory_V {Type IO LastRead 5 FirstWrite 5}
		halted_V {Type IO LastRead 1 FirstWrite 37}
		core_id {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	instruction_memory_V { ap_memory {  { instruction_memory_V_address0 mem_address 1 10 }  { instruction_memory_V_ce0 mem_ce 1 1 }  { instruction_memory_V_q0 mem_dout 0 25 } } }
	data_memory_V { ap_memory {  { data_memory_V_address0 mem_address 1 10 }  { data_memory_V_ce0 mem_ce 1 1 }  { data_memory_V_we0 mem_we 1 1 }  { data_memory_V_d0 mem_din 1 32 }  { data_memory_V_q0 mem_dout 0 32 } } }
	halted_V { ap_ovld {  { halted_V_i in_data 0 1 }  { halted_V_o out_data 1 1 }  { halted_V_o_ap_vld out_vld 1 1 } } }
	core_id { ap_none {  { core_id in_data 0 32 } } }
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
