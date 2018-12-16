; ModuleID = '/home/parallels/Documents/ece527/final_project/scheduler/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scheduler_str = internal unnamed_addr constant [10 x i8] c"scheduler\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str2 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1

define void @scheduler([2 x i32]* %sched_interfaces_context_current_node, [2 x i32]* %sched_interfaces_context_next_node, [2 x i32]* %sched_interfaces_context_state, [2 x i1]* %sched_interfaces_schedule_V, [2 x i1]* %sched_interfaces_ack_V, [2 x i32]* %setup_interfaces_context_current_node, [2 x i32]* %setup_interfaces_context_next_node, [2 x i32]* %setup_interfaces_context_state, [2 x i1]* %setup_interfaces_restart_V, [2 x i1]* %setup_interfaces_core_halted_V) {
  %i = alloca i32
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
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %sched_interfaces_context_current_node), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %sched_interfaces_context_next_node), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %sched_interfaces_context_state), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i1]* %sched_interfaces_schedule_V), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i1]* %sched_interfaces_ack_V), !map !57
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %setup_interfaces_context_current_node), !map !61
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %setup_interfaces_context_next_node), !map !65
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %setup_interfaces_context_state), !map !69
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i1]* %setup_interfaces_restart_V), !map !73
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i1]* %setup_interfaces_core_halted_V), !map !77
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @scheduler_str) nounwind
  store i32 0, i32* %i
  br label %.backedge

.backedge.loopexit:                               ; preds = %.preheader
  store i32 0, i32* %i
  br label %.backedge.backedge

.backedge:                                        ; preds = %.backedge.backedge, %0
  %queue_head_ptr_1 = phi i32 [ 0, %0 ], [ %queue_head_ptr_1_be, %.backedge.backedge ]
  %i_load = load i32* %i
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  %exitcond1 = icmp eq i32 %i_load, 2
  br i1 %exitcond1, label %.preheader.preheader, label %1

.preheader.preheader:                             ; preds = %.backedge
  br label %.preheader

; <label>:1                                       ; preds = %.backedge
  %tmp = sext i32 %i_load to i64
  %sched_interfaces_sch = getelementptr [2 x i1]* %sched_interfaces_schedule_V, i64 0, i64 %tmp
  %sched_interfaces_sch_1 = load i1* %sched_interfaces_sch, align 1
  %tmp_1 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %queue_head_ptr_1, i32 2, i32 31)
  %icmp = icmp eq i30 %tmp_1, 0
  %or_cond_5 = and i1 %sched_interfaces_sch_1, %icmp
  br i1 %or_cond_5, label %_ZN7_ap_sc_7sc_core4waitEi.exit2_ifconv, label %._crit_edge

_ZN7_ap_sc_7sc_core4waitEi.exit2_ifconv:          ; preds = %1
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
  %sched_interfaces_con = getelementptr [2 x i32]* %sched_interfaces_context_current_node, i64 0, i64 %tmp
  %new_context_current_s = load i32* %sched_interfaces_con, align 4
  %sched_interfaces_con_1 = getelementptr [2 x i32]* %sched_interfaces_context_next_node, i64 0, i64 %tmp
  %new_context_next_nod = load i32* %sched_interfaces_con_1, align 4
  %sched_interfaces_con_2 = getelementptr [2 x i32]* %sched_interfaces_context_state, i64 0, i64 %tmp
  %new_context_state_2 = load i32* %sched_interfaces_con_2, align 4
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str1) nounwind
  %sched_interfaces_ack = getelementptr [2 x i1]* %sched_interfaces_ack_V, i64 0, i64 %tmp
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  store i1 false, i1* %sched_interfaces_ack, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str, i32 %tmp_2)
  %tmp_3 = trunc i32 %i_load to i2
  %sel_tmp = icmp eq i2 %tmp_3, -2
  %sel_tmp1 = icmp eq i2 %tmp_3, 1
  %sel_tmp2 = icmp eq i2 %tmp_3, 0
  %or_cond = or i1 %sel_tmp2, %sel_tmp1
  %newSel = select i1 %sel_tmp, i32 %queue_3_current_nod_7, i32 %new_context_current_s
  %queue_3_current_nod_8 = select i1 %or_cond, i32 %queue_3_current_nod_7, i32 %newSel
  %newSel2 = select i1 %sel_tmp, i32 %new_context_current_s, i32 %queue_3_current_nod_6
  %queue_3_current_nod_9 = select i1 %or_cond, i32 %queue_3_current_nod_6, i32 %newSel2
  %queue_3_current_nod_10 = select i1 %sel_tmp1, i32 %new_context_current_s, i32 %queue_3_current_nod_5
  %queue_3_current_nod_11 = select i1 %sel_tmp2, i32 %queue_3_current_nod_5, i32 %queue_3_current_nod_10
  %queue_3_current_nod_12 = select i1 %sel_tmp2, i32 %new_context_current_s, i32 %queue_3_current_nod_4
  %newSel4 = select i1 %sel_tmp, i32 %queue_3_next_node_8_1, i32 %new_context_next_nod
  %queue_3_next_node = select i1 %or_cond, i32 %queue_3_next_node_8_1, i32 %newSel4
  %newSel6 = select i1 %sel_tmp, i32 %new_context_next_nod, i32 %queue_3_next_node_6_1
  %queue_3_next_node_1 = select i1 %or_cond, i32 %queue_3_next_node_6_1, i32 %newSel6
  %queue_3_next_node_4 = select i1 %sel_tmp1, i32 %new_context_next_nod, i32 %queue_3_next_node_3_1
  %queue_3_next_node_5 = select i1 %sel_tmp2, i32 %queue_3_next_node_3_1, i32 %queue_3_next_node_4
  %queue_3_next_node_7 = select i1 %sel_tmp2, i32 %new_context_next_nod, i32 %queue_3_next_node_2_1
  %newSel8 = select i1 %sel_tmp, i32 %queue_3_state_8_loa, i32 %new_context_state_2
  %queue_3_state = select i1 %or_cond, i32 %queue_3_state_8_loa, i32 %newSel8
  %newSel1 = select i1 %sel_tmp, i32 %new_context_state_2, i32 %queue_3_state_6_loa
  %queue_3_state_1 = select i1 %or_cond, i32 %queue_3_state_6_loa, i32 %newSel1
  %queue_3_state_4 = select i1 %sel_tmp1, i32 %new_context_state_2, i32 %queue_3_state_3_loa
  %queue_3_state_5 = select i1 %sel_tmp2, i32 %queue_3_state_3_loa, i32 %queue_3_state_4
  %queue_3_state_7 = select i1 %sel_tmp2, i32 %new_context_state_2, i32 %queue_3_state_2_loa
  %queue_head_ptr = add i32 1, %queue_head_ptr_1
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
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit2_ifconv, %1
  %queue_head_ptr_3 = phi i32 [ %queue_head_ptr, %_ZN7_ap_sc_7sc_core4waitEi.exit2_ifconv ], [ %queue_head_ptr_1, %1 ]
  %i_1 = add nsw i32 %i_load, 1
  store i32 %i_1, i32* %i
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %._crit_edge, %.backedge.loopexit
  %queue_head_ptr_1_be = phi i32 [ %queue_head_ptr_3, %._crit_edge ], [ %queue_head_ptr_4, %.backedge.loopexit ]
  br label %.backedge

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %queue_head_ptr_4 = phi i32 [ %queue_head_ptr_1, %.preheader.preheader ], [ %queue_head_ptr_4_be, %.preheader.backedge ]
  %i1 = phi i2 [ 0, %.preheader.preheader ], [ %i_2, %.preheader.backedge ]
  %exitcond = icmp eq i2 %i1, -2
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_2 = add i2 %i1, 1
  br i1 %exitcond, label %.backedge.loopexit, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp_4 = zext i2 %i1 to i64
  %setup_interfaces_cor = getelementptr [2 x i1]* %setup_interfaces_core_halted_V, i64 0, i64 %tmp_4
  %setup_interfaces_cor_1 = load i1* %setup_interfaces_cor, align 1
  %tmp_5 = icmp ne i32 %queue_head_ptr_4, 0
  %demorgan = and i1 %setup_interfaces_cor_1, %tmp_5
  br i1 %demorgan, label %_ZN7_ap_sc_7sc_core4waitEi.exit, label %.preheader.backedge

_ZN7_ap_sc_7sc_core4waitEi.exit:                  ; preds = %2
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
  %tmp_6 = trunc i32 %queue_head_ptr_4 to i2
  %new_context_current_1 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %queue_3_current_nod_13, i32 %queue_3_current_nod_14, i32 %queue_3_current_nod_15, i32 %queue_3_current_nod_16, i2 %tmp_6)
  %new_context_next_nod_1 = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %queue_3_next_node_2_2, i32 %queue_3_next_node_3_2, i32 %queue_3_next_node_6_2, i32 %queue_3_next_node_8_2, i2 %tmp_6)
  %new_context_state = call i32 @_ssdm_op_Mux.ap_auto.4i32.i2(i32 %queue_3_state_2_loa_1, i32 %queue_3_state_3_loa_1, i32 %queue_3_state_6_loa_1, i32 %queue_3_state_8_loa_1, i2 %tmp_6)
  %queue_head_ptr_2 = add i32 -1, %queue_head_ptr_4
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str1) nounwind
  %setup_interfaces_con = getelementptr [2 x i32]* %setup_interfaces_context_current_node, i64 0, i64 %tmp_4
  store i32 %new_context_current_1, i32* %setup_interfaces_con, align 4
  %setup_interfaces_con_1 = getelementptr [2 x i32]* %setup_interfaces_context_next_node, i64 0, i64 %tmp_4
  store i32 %new_context_next_nod_1, i32* %setup_interfaces_con_1, align 4
  %setup_interfaces_con_2 = getelementptr [2 x i32]* %setup_interfaces_context_state, i64 0, i64 %tmp_4
  store i32 %new_context_state, i32* %setup_interfaces_con_2, align 4
  %setup_interfaces_res = getelementptr [2 x i1]* %setup_interfaces_restart_V, i64 0, i64 %tmp_4
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  store i1 false, i1* %setup_interfaces_res, align 1
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str2, i32 %tmp_8)
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit, %2
  %queue_head_ptr_4_be = phi i32 [ %queue_head_ptr_2, %_ZN7_ap_sc_7sc_core4waitEi.exit ], [ %queue_head_ptr_4, %2 ]
  br label %.preheader
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Wait(...) nounwind {
entry:
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

define weak i32 @_ssdm_op_SpecLoopBegin(...) {
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
  %empty_8 = trunc i32 %empty to i30
  ret i30 %empty_8
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

!opencl.kernels = !{!0, !7, !7, !13, !13, !19, !22, !26, !26, !13, !28, !30}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!32}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"CoreScheduleInterface_t*", metadata !"CoreControlInterface_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"sched_interfaces", metadata !"setup_interfaces"}
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
!22 = metadata !{null, metadata !23, metadata !2, metadata !24, metadata !4, metadata !25, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!26 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !27, metadata !6}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!28 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !21, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!30 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !31, metadata !6}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"n"}
!32 = metadata !{metadata !33, [1 x i32]* @llvm_global_ctors_0}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"llvm.global_ctors.0", metadata !37, metadata !"", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 0, i32 1}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 31, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"sched_interfaces.context.current_node", metadata !43, metadata !"unsigned int", i32 0, i32 31}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 1, i32 1}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"sched_interfaces.context.next_node", metadata !43, metadata !"unsigned int", i32 0, i32 31}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"sched_interfaces.context.state", metadata !43, metadata !"unsigned int", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 0, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"sched_interfaces.schedule.V", metadata !43, metadata !"uint1", i32 0, i32 0}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 0, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"sched_interfaces.ack.V", metadata !43, metadata !"uint1", i32 0, i32 0}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"setup_interfaces.context.current_node", metadata !43, metadata !"unsigned int", i32 0, i32 31}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 31, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"setup_interfaces.context.next_node", metadata !43, metadata !"unsigned int", i32 0, i32 31}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 31, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"setup_interfaces.context.state", metadata !43, metadata !"unsigned int", i32 0, i32 31}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 0, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"setup_interfaces.restart.V", metadata !43, metadata !"uint1", i32 0, i32 0}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 0, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"setup_interfaces.core_halted.V", metadata !43, metadata !"uint1", i32 0, i32 0}
