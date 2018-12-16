; ModuleID = '/home/parallels/Documents/ece527/final_project/scheduler/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scheduler_str = internal unnamed_addr constant [10 x i8] c"scheduler\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str17 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1

define void @scheduler([32 x i32]* %sched_interfaces_context_current_node, [32 x i32]* %sched_interfaces_context_next_node, [32 x i32]* %sched_interfaces_context_state, [32 x i1]* %sched_interfaces_schedule_V, [32 x i1]* %sched_interfaces_ack_V, [32 x i32]* %setup_interfaces_context_current_node, [32 x i32]* %setup_interfaces_context_next_node, [32 x i32]* %setup_interfaces_context_state, [32 x i1]* %setup_interfaces_restart_V, [32 x i1]* %setup_interfaces_core_halted_V, i32* %finished) {
  %queue_head_ptr = alloca i32
  %history_head_ptr = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %sched_interfaces_context_current_node), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %sched_interfaces_context_next_node), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %sched_interfaces_context_state), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i1]* %sched_interfaces_schedule_V), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i1]* %sched_interfaces_ack_V), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %setup_interfaces_context_current_node), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %setup_interfaces_context_next_node), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i32]* %setup_interfaces_context_state), !map !83
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i1]* %setup_interfaces_restart_V), !map !87
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i1]* %setup_interfaces_core_halted_V), !map !91
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %finished), !map !95
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @scheduler_str) nounwind
  %history_current_node = alloca [4096 x i32], align 4
  %history_next_node = alloca [4096 x i32], align 4
  %history_state = alloca [4096 x i32], align 4
  %queue_current_node = alloca [320 x i32], align 4
  %queue_next_node = alloca [320 x i32], align 4
  %queue_state = alloca [320 x i32], align 4
  store i32 0, i32* %history_head_ptr
  store i32 0, i32* %queue_head_ptr
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.backedge, %0
  %i = phi i6 [ 0, %0 ], [ %i_2, %._crit_edge.backedge ]
  %queue_head_ptr_load = load i32* %queue_head_ptr
  %exitcond1 = icmp eq i6 %i, -32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32)
  %i_2 = add i6 %i, 1
  br i1 %exitcond1, label %.preheader.preheader, label %1

.preheader.preheader:                             ; preds = %._crit_edge
  %queue_head_ptr_2 = alloca i32
  store i32 %queue_head_ptr_load, i32* %queue_head_ptr_2
  br label %.preheader

; <label>:1                                       ; preds = %._crit_edge
  %tmp = zext i6 %i to i64
  %sched_interfaces_sch = getelementptr [32 x i1]* %sched_interfaces_schedule_V, i64 0, i64 %tmp
  %sched_interfaces_sch_1 = load i1* %sched_interfaces_sch, align 1
  %tmp_1 = icmp ult i32 %queue_head_ptr_load, 320
  %or_cond = and i1 %sched_interfaces_sch_1, %tmp_1
  br i1 %or_cond, label %2, label %._crit_edge.backedge

; <label>:2                                       ; preds = %1
  %sched_interfaces_con = getelementptr [32 x i32]* %sched_interfaces_context_current_node, i64 0, i64 %tmp
  %new_context_current_s = load i32* %sched_interfaces_con, align 4
  %sched_interfaces_con_1 = getelementptr [32 x i32]* %sched_interfaces_context_next_node, i64 0, i64 %tmp
  %new_context_next_nod = load i32* %sched_interfaces_con_1, align 4
  %sched_interfaces_con_2 = getelementptr [32 x i32]* %sched_interfaces_context_state, i64 0, i64 %tmp
  %new_context_state = load i32* %sched_interfaces_con_2, align 4
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str8) nounwind
  %sched_interfaces_ack = getelementptr [32 x i1]* %sched_interfaces_ack_V, i64 0, i64 %tmp
  store i1 false, i1* %sched_interfaces_ack, align 1
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_13)
  br label %3

; <label>:3                                       ; preds = %_ifconv, %2
  %match_found = phi i1 [ false, %2 ], [ %match_found_1, %_ifconv ]
  %j = phi i13 [ 0, %2 ], [ %j_1, %_ifconv ]
  %j_cast = zext i13 %j to i32
  %exitcond2 = icmp eq i13 %j, -4096
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %j_1 = add i13 %j, 1
  br i1 %exitcond2, label %4, label %_ifconv

_ifconv:                                          ; preds = %3
  %history_head_ptr_loa = load i32* %history_head_ptr
  %ult = icmp ult i32 %j_cast, %history_head_ptr_loa
  %rev4 = xor i1 %ult, true
  %brmerge = or i1 %rev4, %match_found
  %not_not = xor i1 %rev4, true
  %match_found_0_mux = or i1 %match_found, %not_not
  %tmp_8 = zext i13 %j to i64
  %history_current_node_1 = getelementptr [4096 x i32]* %history_current_node, i64 0, i64 %tmp_8
  %history_current_node_2 = load i32* %history_current_node_1, align 4
  %tmp_10 = icmp eq i32 %history_current_node_2, %new_context_current_s
  %history_next_node_ad = getelementptr [4096 x i32]* %history_next_node, i64 0, i64 %tmp_8
  %history_next_node_lo = load i32* %history_next_node_ad, align 4
  %tmp_11 = icmp eq i32 %history_next_node_lo, %new_context_next_nod
  %history_state_addr_1 = getelementptr [4096 x i32]* %history_state, i64 0, i64 %tmp_8
  %history_state_load = load i32* %history_state_addr_1, align 4
  %tmp_12 = icmp eq i32 %history_state_load, %new_context_state
  %sel_tmp = xor i1 %brmerge, true
  %tmp9 = and i1 %tmp_10, %sel_tmp
  %tmp1 = and i1 %tmp_11, %tmp_12
  %sel_tmp3 = and i1 %tmp1, %tmp9
  %sel_tmp4 = select i1 %brmerge, i1 %match_found_0_mux, i1 %sel_tmp3
  %sel_tmp7_demorgan = or i1 %brmerge, %tmp_10
  %match_found_1 = and i1 %sel_tmp4, %sel_tmp7_demorgan
  br label %3

; <label>:4                                       ; preds = %3
  br i1 %match_found, label %._crit_edge.backedge, label %5

; <label>:5                                       ; preds = %4
  %history_head_ptr_loa_1 = load i32* %history_head_ptr
  %tmp_s = zext i32 %queue_head_ptr_load to i64
  %queue_current_node_a = getelementptr [320 x i32]* %queue_current_node, i64 0, i64 %tmp_s
  store i32 %new_context_current_s, i32* %queue_current_node_a, align 4
  %queue_next_node_addr_1 = getelementptr [320 x i32]* %queue_next_node, i64 0, i64 %tmp_s
  store i32 %new_context_next_nod, i32* %queue_next_node_addr_1, align 4
  %queue_state_addr_1 = getelementptr [320 x i32]* %queue_state, i64 0, i64 %tmp_s
  store i32 %new_context_state, i32* %queue_state_addr_1, align 4
  %tmp_6 = zext i32 %history_head_ptr_loa_1 to i64
  %history_current_node_3 = getelementptr [4096 x i32]* %history_current_node, i64 0, i64 %tmp_6
  store i32 %new_context_current_s, i32* %history_current_node_3, align 4
  %history_next_node_ad_1 = getelementptr [4096 x i32]* %history_next_node, i64 0, i64 %tmp_6
  store i32 %new_context_next_nod, i32* %history_next_node_ad_1, align 4
  %history_state_addr = getelementptr [4096 x i32]* %history_state, i64 0, i64 %tmp_6
  store i32 %new_context_state, i32* %history_state_addr, align 4
  %queue_head_ptr_3 = add i32 %queue_head_ptr_load, 1
  %history_head_ptr_1 = add i32 %history_head_ptr_loa_1, 1
  store i32 %history_head_ptr_1, i32* %history_head_ptr
  store i32 %queue_head_ptr_3, i32* %queue_head_ptr
  br label %._crit_edge.backedge

._crit_edge.backedge:                             ; preds = %5, %4, %1
  br label %._crit_edge

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %halted_flag = phi i1 [ true, %.preheader.preheader ], [ %halted_flag_1, %.preheader.backedge ]
  %i1 = phi i6 [ 0, %.preheader.preheader ], [ %i_1, %.preheader.backedge ]
  %exitcond = icmp eq i6 %i1, -32
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32)
  %i_1 = add i6 %i1, 1
  br i1 %exitcond, label %8, label %6

; <label>:6                                       ; preds = %.preheader
  %queue_head_ptr_2_loa = load i32* %queue_head_ptr_2
  %tmp_5 = zext i6 %i1 to i64
  %setup_interfaces_cor = getelementptr [32 x i1]* %setup_interfaces_core_halted_V, i64 0, i64 %tmp_5
  %setup_interfaces_cor_1 = load i1* %setup_interfaces_cor, align 1
  %halted_flag_1 = and i1 %setup_interfaces_cor_1, %halted_flag
  %tmp_7 = icmp ne i32 %queue_head_ptr_2_loa, 0
  %demorgan = and i1 %setup_interfaces_cor_1, %tmp_7
  br i1 %demorgan, label %7, label %.preheader.backedge

; <label>:7                                       ; preds = %6
  %queue_head_ptr_1 = add i32 %queue_head_ptr_2_loa, -1
  %tmp_9 = zext i32 %queue_head_ptr_1 to i64
  %queue_current_node_a_1 = getelementptr [320 x i32]* %queue_current_node, i64 0, i64 %tmp_9
  %new_context_current_1 = load i32* %queue_current_node_a_1, align 4
  %queue_next_node_addr = getelementptr [320 x i32]* %queue_next_node, i64 0, i64 %tmp_9
  %new_context_next_nod_1 = load i32* %queue_next_node_addr, align 4
  %queue_state_addr = getelementptr [320 x i32]* %queue_state, i64 0, i64 %tmp_9
  %new_context_state_1 = load i32* %queue_state_addr, align 4
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str17)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str8) nounwind
  %setup_interfaces_con = getelementptr [32 x i32]* %setup_interfaces_context_current_node, i64 0, i64 %tmp_5
  store i32 %new_context_current_1, i32* %setup_interfaces_con, align 4
  %setup_interfaces_con_1 = getelementptr [32 x i32]* %setup_interfaces_context_next_node, i64 0, i64 %tmp_5
  store i32 %new_context_next_nod_1, i32* %setup_interfaces_con_1, align 4
  %setup_interfaces_con_2 = getelementptr [32 x i32]* %setup_interfaces_context_state, i64 0, i64 %tmp_5
  store i32 %new_context_state_1, i32* %setup_interfaces_con_2, align 4
  %setup_interfaces_res = getelementptr [32 x i1]* %setup_interfaces_restart_V, i64 0, i64 %tmp_5
  store i1 false, i1* %setup_interfaces_res, align 1
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str17, i32 %tmp_14)
  store i32 %queue_head_ptr_1, i32* %queue_head_ptr_2
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %7, %6
  br label %.preheader

; <label>:8                                       ; preds = %.preheader
  %queue_head_ptr_2_loa_1 = load i32* %queue_head_ptr_2
  %tmp_2 = icmp eq i32 %queue_head_ptr_2_loa_1, 0
  %tmp_3 = and i1 %halted_flag, %tmp_2
  %tmp_4 = zext i1 %tmp_3 to i32
  call void @_ssdm_op_Write.ap_auto.i32P(i32* %finished, i32 %tmp_4)
  ret void
}

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
!58 = metadata !{i32 0, i32 31, i32 1}
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
