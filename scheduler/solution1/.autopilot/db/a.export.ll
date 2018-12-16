; ModuleID = '/home/parallels/Documents/ece527/final_project/scheduler/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scheduler_str = internal unnamed_addr constant [10 x i8] c"scheduler\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str17 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1

define void @scheduler([2 x i32]* %sched_interfaces_context_current_node, [2 x i32]* %sched_interfaces_context_next_node, [2 x i32]* %sched_interfaces_context_state, [2 x i1]* %sched_interfaces_schedule_V, [2 x i1]* %sched_interfaces_ack_V, [2 x i32]* %setup_interfaces_context_current_node, [2 x i32]* %setup_interfaces_context_next_node, [2 x i32]* %setup_interfaces_context_state, [2 x i1]* %setup_interfaces_restart_V, [2 x i1]* %setup_interfaces_core_halted_V, i32* %finished) {
  %queue_head_ptr = alloca i32
  %history_head_ptr = alloca i32
  %queue_3_current_nod = alloca i32
  %queue_3_current_nod_1 = alloca i32
  %queue_3_current_nod_2 = alloca i32
  %queue_3_current_nod_3 = alloca i32
  %queue_3_next_node_2 = alloca i32
  %queue_3_next_node_3 = alloca i32
  %queue_3_next_node_6 = alloca i32
  %queue_3_next_node_8 = alloca i32
  %queue_3_state_2 = alloca i32
  %queue_3_state_3 = alloca i32
  %queue_3_state_6 = alloca i32
  %queue_3_state_8 = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %sched_interfaces_context_current_node), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %sched_interfaces_context_next_node), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %sched_interfaces_context_state), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i1]* %sched_interfaces_schedule_V), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i1]* %sched_interfaces_ack_V), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %setup_interfaces_context_current_node), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %setup_interfaces_context_next_node), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %setup_interfaces_context_state), !map !83
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i1]* %setup_interfaces_restart_V), !map !87
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i1]* %setup_interfaces_core_halted_V), !map !91
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %finished), !map !95
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @scheduler_str) nounwind
  %history_current_node = alloca [1024 x i32], align 4
  %history_next_node = alloca [1024 x i32], align 4
  %history_state = alloca [1024 x i32], align 4
  store i32 0, i32* %history_head_ptr
  store i32 0, i32* %queue_head_ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.backedge, %0
  %i = phi i2 [ 0, %0 ], [ %i_2, %._crit_edge.backedge ]
  %queue_head_ptr_load = load i32* %queue_head_ptr
  %exitcond1 = icmp eq i2 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_2 = add i2 %i, 1
  br i1 %exitcond1, label %.preheader.preheader, label %1

.preheader.preheader:                             ; preds = %._crit_edge
  %queue_head_ptr_2 = alloca i32
  store i32 %queue_head_ptr_load, i32* %queue_head_ptr_2
  br label %.preheader

; <label>:1                                       ; preds = %._crit_edge
  %tmp = zext i2 %i to i64
  %sched_interfaces_sch = getelementptr [2 x i1]* %sched_interfaces_schedule_V, i64 0, i64 %tmp
  %sched_interfaces_sch_1 = load i1* %sched_interfaces_sch, align 1
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %queue_head_ptr_load, i32 2, i32 31)
  %icmp = icmp eq i30 %tmp_1, 0
  %or_cond_5 = and i1 %sched_interfaces_sch_1, %icmp
  br i1 %or_cond_5, label %2, label %._crit_edge.backedge

; <label>:2                                       ; preds = %1
  %sched_interfaces_con = getelementptr [2 x i32]* %sched_interfaces_context_current_node, i64 0, i64 %tmp
  %new_context_current_s = load i32* %sched_interfaces_con, align 4
  %sched_interfaces_con_1 = getelementptr [2 x i32]* %sched_interfaces_context_next_node, i64 0, i64 %tmp
  %new_context_next_nod = load i32* %sched_interfaces_con_1, align 4
  %sched_interfaces_con_2 = getelementptr [2 x i32]* %sched_interfaces_context_state, i64 0, i64 %tmp
  %new_context_state = load i32* %sched_interfaces_con_2, align 4
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str8) nounwind
  %sched_interfaces_ack = getelementptr [2 x i1]* %sched_interfaces_ack_V, i64 0, i64 %tmp
  store i1 false, i1* %sched_interfaces_ack, align 1
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_9)
  br label %3

; <label>:3                                       ; preds = %_ifconv, %2
  %match_found = phi i1 [ false, %2 ], [ %match_found_1, %_ifconv ]
  %j = phi i11 [ 0, %2 ], [ %j_1, %_ifconv ]
  %j_cast = zext i11 %j to i32
  %exitcond2 = icmp eq i11 %j, -1024
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %j_1 = add i11 %j, 1
  br i1 %exitcond2, label %4, label %_ifconv

_ifconv:                                          ; preds = %3
  %history_head_ptr_loa = load i32* %history_head_ptr
  %ult = icmp ult i32 %j_cast, %history_head_ptr_loa
  %rev = xor i1 %ult, true
  %brmerge = or i1 %rev, %match_found
  %not_not = xor i1 %rev, true
  %match_found_0_mux = or i1 %match_found, %not_not
  %tmp_8 = zext i11 %j to i64
  %history_current_node_1 = getelementptr [1024 x i32]* %history_current_node, i64 0, i64 %tmp_8
  %history_current_node_2 = load i32* %history_current_node_1, align 4
  %tmp_s = icmp eq i32 %history_current_node_2, %new_context_current_s
  %history_next_node_ad = getelementptr [1024 x i32]* %history_next_node, i64 0, i64 %tmp_8
  %history_next_node_lo = load i32* %history_next_node_ad, align 4
  %tmp_10 = icmp eq i32 %history_next_node_lo, %new_context_next_nod
  %history_state_addr_1 = getelementptr [1024 x i32]* %history_state, i64 0, i64 %tmp_8
  %history_state_load = load i32* %history_state_addr_1, align 4
  %tmp_11 = icmp eq i32 %history_state_load, %new_context_state
  %sel_tmp = xor i1 %brmerge, true
  %tmp1 = and i1 %tmp_s, %sel_tmp
  %tmp2 = and i1 %tmp_10, %tmp_11
  %sel_tmp1 = and i1 %tmp2, %tmp1
  %sel_tmp2 = select i1 %brmerge, i1 %match_found_0_mux, i1 %sel_tmp1
  %sel_tmp19_demorgan = or i1 %brmerge, %tmp_s
  %match_found_1 = and i1 %sel_tmp2, %sel_tmp19_demorgan
  br label %3

; <label>:4                                       ; preds = %3
  br i1 %match_found, label %._crit_edge.backedge, label %_ifconv21

_ifconv21:                                        ; preds = %4
  %history_head_ptr_loa_1 = load i32* %history_head_ptr
  %queue_3_current_nod_4 = load i32* %queue_3_current_nod
  %queue_3_current_nod_5 = load i32* %queue_3_current_nod_1
  %queue_3_current_nod_6 = load i32* %queue_3_current_nod_2
  %queue_3_current_nod_7 = load i32* %queue_3_current_nod_3
  %queue_3_next_node_2_1 = load i32* %queue_3_next_node_2
  %queue_3_next_node_3_1 = load i32* %queue_3_next_node_3
  %queue_3_next_node_6_1 = load i32* %queue_3_next_node_6
  %queue_3_next_node_8_1 = load i32* %queue_3_next_node_8
  %queue_3_state_2_loa = load i32* %queue_3_state_2
  %queue_3_state_3_loa = load i32* %queue_3_state_3
  %queue_3_state_6_loa = load i32* %queue_3_state_6
  %queue_3_state_8_loa = load i32* %queue_3_state_8
  %tmp_14 = trunc i32 %queue_head_ptr_load to i2
  %sel_tmp3 = icmp eq i2 %tmp_14, -2
  %sel_tmp4 = icmp eq i2 %tmp_14, 1
  %sel_tmp5 = icmp eq i2 %tmp_14, 0
  %or_cond = or i1 %sel_tmp5, %sel_tmp4
  %newSel = select i1 %sel_tmp3, i32 %queue_3_current_nod_7, i32 %new_context_current_s
  %queue_3_current_nod_8 = select i1 %or_cond, i32 %queue_3_current_nod_7, i32 %newSel
  %newSel2 = select i1 %sel_tmp3, i32 %new_context_current_s, i32 %queue_3_current_nod_6
  %queue_3_current_nod_9 = select i1 %or_cond, i32 %queue_3_current_nod_6, i32 %newSel2
  %queue_3_current_nod_10 = select i1 %sel_tmp4, i32 %new_context_current_s, i32 %queue_3_current_nod_5
  %queue_3_current_nod_11 = select i1 %sel_tmp5, i32 %queue_3_current_nod_5, i32 %queue_3_current_nod_10
  %queue_3_current_nod_12 = select i1 %sel_tmp5, i32 %new_context_current_s, i32 %queue_3_current_nod_4
  %newSel4 = select i1 %sel_tmp3, i32 %queue_3_next_node_8_1, i32 %new_context_next_nod
  %queue_3_next_node = select i1 %or_cond, i32 %queue_3_next_node_8_1, i32 %newSel4
  %newSel6 = select i1 %sel_tmp3, i32 %new_context_next_nod, i32 %queue_3_next_node_6_1
  %queue_3_next_node_1 = select i1 %or_cond, i32 %queue_3_next_node_6_1, i32 %newSel6
  %queue_3_next_node_4 = select i1 %sel_tmp4, i32 %new_context_next_nod, i32 %queue_3_next_node_3_1
  %queue_3_next_node_5 = select i1 %sel_tmp5, i32 %queue_3_next_node_3_1, i32 %queue_3_next_node_4
  %queue_3_next_node_7 = select i1 %sel_tmp5, i32 %new_context_next_nod, i32 %queue_3_next_node_2_1
  %newSel8 = select i1 %sel_tmp3, i32 %queue_3_state_8_loa, i32 %new_context_state
  %queue_3_state = select i1 %or_cond, i32 %queue_3_state_8_loa, i32 %newSel8
  %newSel1 = select i1 %sel_tmp3, i32 %new_context_state, i32 %queue_3_state_6_loa
  %queue_3_state_1 = select i1 %or_cond, i32 %queue_3_state_6_loa, i32 %newSel1
  %queue_3_state_4 = select i1 %sel_tmp4, i32 %new_context_state, i32 %queue_3_state_3_loa
  %queue_3_state_5 = select i1 %sel_tmp5, i32 %queue_3_state_3_loa, i32 %queue_3_state_4
  %queue_3_state_7 = select i1 %sel_tmp5, i32 %new_context_state, i32 %queue_3_state_2_loa
  %tmp_6 = zext i32 %history_head_ptr_loa_1 to i64
  %history_current_node_3 = getelementptr [1024 x i32]* %history_current_node, i64 0, i64 %tmp_6
  store i32 %new_context_current_s, i32* %history_current_node_3, align 4
  %history_next_node_ad_1 = getelementptr [1024 x i32]* %history_next_node, i64 0, i64 %tmp_6
  store i32 %new_context_next_nod, i32* %history_next_node_ad_1, align 4
  %history_state_addr = getelementptr [1024 x i32]* %history_state, i64 0, i64 %tmp_6
  store i32 %new_context_state, i32* %history_state_addr, align 4
  %queue_head_ptr_3 = add i32 1, %queue_head_ptr_load
  %history_head_ptr_1 = add i32 1, %history_head_ptr_loa_1
  store i32 %queue_3_state, i32* %queue_3_state_8
  store i32 %queue_3_state_1, i32* %queue_3_state_6
  store i32 %queue_3_state_5, i32* %queue_3_state_3
  store i32 %queue_3_state_7, i32* %queue_3_state_2
  store i32 %queue_3_next_node, i32* %queue_3_next_node_8
  store i32 %queue_3_next_node_1, i32* %queue_3_next_node_6
  store i32 %queue_3_next_node_5, i32* %queue_3_next_node_3
  store i32 %queue_3_next_node_7, i32* %queue_3_next_node_2
  store i32 %queue_3_current_nod_8, i32* %queue_3_current_nod_3
  store i32 %queue_3_current_nod_9, i32* %queue_3_current_nod_2
  store i32 %queue_3_current_nod_11, i32* %queue_3_current_nod_1
  store i32 %queue_3_current_nod_12, i32* %queue_3_current_nod
  store i32 %history_head_ptr_1, i32* %history_head_ptr
  store i32 %queue_head_ptr_3, i32* %queue_head_ptr
  br label %._crit_edge.backedge

._crit_edge.backedge:                             ; preds = %_ifconv21, %4, %1
  br label %._crit_edge

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %halted_flag = phi i1 [ true, %.preheader.preheader ], [ %halted_flag_1, %.preheader.backedge ]
  %i1 = phi i2 [ 0, %.preheader.preheader ], [ %i_1, %.preheader.backedge ]
  %exitcond = icmp eq i2 %i1, -2
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_1 = add i2 %i1, 1
  br i1 %exitcond, label %7, label %5

; <label>:5                                       ; preds = %.preheader
  %queue_head_ptr_2_loa = load i32* %queue_head_ptr_2
  %tmp_5 = zext i2 %i1 to i64
  %setup_interfaces_cor = getelementptr [2 x i1]* %setup_interfaces_core_halted_V, i64 0, i64 %tmp_5
  %setup_interfaces_cor_1 = load i1* %setup_interfaces_cor, align 1
  %halted_flag_1 = and i1 %setup_interfaces_cor_1, %halted_flag
  %tmp_7 = icmp ne i32 %queue_head_ptr_2_loa, 0
  %demorgan = and i1 %setup_interfaces_cor_1, %tmp_7
  br i1 %demorgan, label %6, label %.preheader.backedge

; <label>:6                                       ; preds = %5
  %queue_3_current_nod_13 = load i32* %queue_3_current_nod
  %queue_3_current_nod_14 = load i32* %queue_3_current_nod_1
  %queue_3_current_nod_15 = load i32* %queue_3_current_nod_2
  %queue_3_current_nod_16 = load i32* %queue_3_current_nod_3
  %queue_3_next_node_2_2 = load i32* %queue_3_next_node_2
  %queue_3_next_node_3_2 = load i32* %queue_3_next_node_3
  %queue_3_next_node_6_2 = load i32* %queue_3_next_node_6
  %queue_3_next_node_8_2 = load i32* %queue_3_next_node_8
  %queue_3_state_2_loa_1 = load i32* %queue_3_state_2
  %queue_3_state_3_loa_1 = load i32* %queue_3_state_3
  %queue_3_state_6_loa_1 = load i32* %queue_3_state_6
  %queue_3_state_8_loa_1 = load i32* %queue_3_state_8
  %tmp_12 = trunc i32 %queue_head_ptr_2_loa to i2
  %queue_head_ptr_1 = add i32 -1, %queue_head_ptr_2_loa
  %queue_head_ptr_1_t = add i2 -1, %tmp_12
  %new_context_current_1 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %queue_3_current_nod_13, i32 %queue_3_current_nod_14, i32 %queue_3_current_nod_15, i32 %queue_3_current_nod_16, i2 %queue_head_ptr_1_t)
  %new_context_next_nod_1 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %queue_3_next_node_2_2, i32 %queue_3_next_node_3_2, i32 %queue_3_next_node_6_2, i32 %queue_3_next_node_8_2, i2 %queue_head_ptr_1_t)
  %new_context_state_1 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %queue_3_state_2_loa_1, i32 %queue_3_state_3_loa_1, i32 %queue_3_state_6_loa_1, i32 %queue_3_state_8_loa_1, i2 %queue_head_ptr_1_t)
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str17)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str8) nounwind
  %setup_interfaces_con = getelementptr [2 x i32]* %setup_interfaces_context_current_node, i64 0, i64 %tmp_5
  store i32 %new_context_current_1, i32* %setup_interfaces_con, align 4
  %setup_interfaces_con_1 = getelementptr [2 x i32]* %setup_interfaces_context_next_node, i64 0, i64 %tmp_5
  store i32 %new_context_next_nod_1, i32* %setup_interfaces_con_1, align 4
  %setup_interfaces_con_2 = getelementptr [2 x i32]* %setup_interfaces_context_state, i64 0, i64 %tmp_5
  store i32 %new_context_state_1, i32* %setup_interfaces_con_2, align 4
  %setup_interfaces_res = getelementptr [2 x i1]* %setup_interfaces_restart_V, i64 0, i64 %tmp_5
  store i1 false, i1* %setup_interfaces_res, align 1
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str17, i32 %tmp_13)
  store i32 %queue_head_ptr_1, i32* %queue_head_ptr_2
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %6, %5
  br label %.preheader

; <label>:7                                       ; preds = %.preheader
  %queue_head_ptr_2_loa_1 = load i32* %queue_head_ptr_2
  %tmp_2 = icmp eq i32 %queue_head_ptr_2_loa_1, 0
  %tmp_3 = and i1 %halted_flag, %tmp_2
  %tmp_4 = zext i1 %tmp_3 to i32
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %finished, i32 %tmp_4)
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_auto.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_10 = trunc i32 %empty to i30
  ret i30 %empty_10
}

declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32, i32, i32, i32, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !7, !13, !13, !19, !22, !28, !28, !13, !30, !32, !35, !38, !41, !38, !43, !41}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!46}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"CoreScheduleInterface_t*", metadata !"CoreControlInterface_t*", metadata !"uint*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"sched_interfaces", metadata !"setup_interfaces", metadata !"finished"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!24 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!26 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!28 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !29, metadata !6}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!30 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !21, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!32 = metadata !{null, metadata !8, metadata !9, metadata !33, metadata !11, metadata !34, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"class std::ios_base &"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"__base"}
!35 = metadata !{null, metadata !23, metadata !24, metadata !36, metadata !26, metadata !37, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"fmtflags", metadata !"fmtflags"}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"__fmtfl", metadata !"__mask"}
!38 = metadata !{null, metadata !23, metadata !24, metadata !39, metadata !26, metadata !40, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"enum std::_Ios_Fmtflags", metadata !"enum std::_Ios_Fmtflags"}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!41 = metadata !{null, metadata !23, metadata !24, metadata !42, metadata !26, metadata !40, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"enum std::_Ios_Fmtflags &", metadata !"enum std::_Ios_Fmtflags"}
!43 = metadata !{null, metadata !8, metadata !9, metadata !44, metadata !11, metadata !45, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"enum std::_Ios_Fmtflags"}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"__a"}
!46 = metadata !{metadata !47, [1 x i32]* @llvm_global_ctors_0}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"llvm.global_ctors.0", metadata !51, metadata !"", i32 0, i32 31}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 0, i32 1}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"sched_interfaces.context.current_node", metadata !57, metadata !"unsigned int", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 1, i32 1}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 31, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"sched_interfaces.context.next_node", metadata !57, metadata !"unsigned int", i32 0, i32 31}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"sched_interfaces.context.state", metadata !57, metadata !"unsigned int", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 0, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"sched_interfaces.schedule.V", metadata !57, metadata !"uint1", i32 0, i32 0}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 0, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"sched_interfaces.ack.V", metadata !57, metadata !"uint1", i32 0, i32 0}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 31, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"setup_interfaces.context.current_node", metadata !57, metadata !"unsigned int", i32 0, i32 31}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"setup_interfaces.context.next_node", metadata !57, metadata !"unsigned int", i32 0, i32 31}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 31, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"setup_interfaces.context.state", metadata !57, metadata !"unsigned int", i32 0, i32 31}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 0, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"setup_interfaces.restart.V", metadata !57, metadata !"uint1", i32 0, i32 0}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 0, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"setup_interfaces.core_halted.V", metadata !57, metadata !"uint1", i32 0, i32 0}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 31, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"finished", metadata !51, metadata !"unsigned int", i32 0, i32 31}
