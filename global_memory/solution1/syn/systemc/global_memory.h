// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _global_memory_HH_
#define _global_memory_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "global_memory_globkb.h"

namespace ap_rtl {

struct global_memory : public sc_module {
    // Port declarations 26
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<1> > mem_interfaces_request_address_address0;
    sc_out< sc_logic > mem_interfaces_request_address_ce0;
    sc_in< sc_lv<32> > mem_interfaces_request_address_q0;
    sc_out< sc_lv<1> > mem_interfaces_request_data_address0;
    sc_out< sc_logic > mem_interfaces_request_data_ce0;
    sc_in< sc_lv<32> > mem_interfaces_request_data_q0;
    sc_out< sc_lv<1> > mem_interfaces_request_op_V_address0;
    sc_out< sc_logic > mem_interfaces_request_op_V_ce0;
    sc_in< sc_lv<2> > mem_interfaces_request_op_V_q0;
    sc_out< sc_lv<1> > mem_interfaces_result_address0;
    sc_out< sc_logic > mem_interfaces_result_ce0;
    sc_out< sc_logic > mem_interfaces_result_we0;
    sc_out< sc_lv<32> > mem_interfaces_result_d0;
    sc_out< sc_lv<1> > mem_interfaces_ack_V_address0;
    sc_out< sc_logic > mem_interfaces_ack_V_ce0;
    sc_out< sc_logic > mem_interfaces_ack_V_we0;
    sc_out< sc_lv<1> > mem_interfaces_ack_V_d0;
    sc_out< sc_lv<1> > mem_interfaces_req_V_address0;
    sc_out< sc_logic > mem_interfaces_req_V_ce0;
    sc_in< sc_lv<1> > mem_interfaces_req_V_q0;


    // Module declarations
    global_memory(sc_module_name name);
    SC_HAS_PROCESS(global_memory);

    ~global_memory();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    global_memory_globkb* global_memory_1_U;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<2> > i_1_fu_157_p2;
    sc_signal< sc_lv<2> > i_1_reg_239;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > tmp_fu_163_p1;
    sc_signal< sc_lv<64> > tmp_reg_244;
    sc_signal< sc_lv<1> > exitcond1_fu_151_p2;
    sc_signal< sc_lv<1> > mem_interfaces_req_V_2_reg_258;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<10> > global_memory_addr_reg_277;
    sc_signal< sc_lv<32> > request_data_reg_282;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > global_memory_1_q0;
    sc_signal< sc_lv<32> > result_7_reg_288;
    sc_signal< sc_lv<1> > tmp_6_fu_173_p2;
    sc_signal< sc_lv<1> > tmp_6_reg_294;
    sc_signal< sc_lv<32> > result_4_fu_193_p3;
    sc_signal< sc_lv<32> > result_4_reg_299;
    sc_signal< sc_lv<1> > sel_tmp2_fu_201_p2;
    sc_signal< sc_lv<1> > sel_tmp2_reg_304;
    sc_signal< sc_lv<1> > sel_tmp4_fu_207_p2;
    sc_signal< sc_lv<1> > sel_tmp4_reg_309;
    sc_signal< sc_lv<32> > result_6_fu_228_p3;
    sc_signal< sc_lv<32> > result_6_reg_314;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<10> > global_memory_1_address0;
    sc_signal< sc_logic > global_memory_1_ce0;
    sc_signal< sc_logic > global_memory_1_we0;
    sc_signal< sc_lv<32> > global_memory_1_d0;
    sc_signal< sc_lv<2> > i_reg_140;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<64> > tmp_1_fu_168_p1;
    sc_signal< sc_lv<1> > sel_tmp_fu_187_p2;
    sc_signal< sc_lv<32> > result_2_fu_179_p3;
    sc_signal< sc_lv<32> > request_data_2_fu_217_p3;
    sc_signal< sc_lv<32> > result_fu_213_p2;
    sc_signal< sc_lv<32> > result_5_fu_222_p3;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond1_fu_151_p2();
    void thread_global_memory_1_address0();
    void thread_global_memory_1_ce0();
    void thread_global_memory_1_d0();
    void thread_global_memory_1_we0();
    void thread_i_1_fu_157_p2();
    void thread_mem_interfaces_ack_V_address0();
    void thread_mem_interfaces_ack_V_ce0();
    void thread_mem_interfaces_ack_V_d0();
    void thread_mem_interfaces_ack_V_we0();
    void thread_mem_interfaces_req_V_address0();
    void thread_mem_interfaces_req_V_ce0();
    void thread_mem_interfaces_request_address_address0();
    void thread_mem_interfaces_request_address_ce0();
    void thread_mem_interfaces_request_data_address0();
    void thread_mem_interfaces_request_data_ce0();
    void thread_mem_interfaces_request_op_V_address0();
    void thread_mem_interfaces_request_op_V_ce0();
    void thread_mem_interfaces_result_address0();
    void thread_mem_interfaces_result_ce0();
    void thread_mem_interfaces_result_d0();
    void thread_mem_interfaces_result_we0();
    void thread_request_data_2_fu_217_p3();
    void thread_result_2_fu_179_p3();
    void thread_result_4_fu_193_p3();
    void thread_result_5_fu_222_p3();
    void thread_result_6_fu_228_p3();
    void thread_result_fu_213_p2();
    void thread_sel_tmp2_fu_201_p2();
    void thread_sel_tmp4_fu_207_p2();
    void thread_sel_tmp_fu_187_p2();
    void thread_tmp_1_fu_168_p1();
    void thread_tmp_6_fu_173_p2();
    void thread_tmp_fu_163_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
