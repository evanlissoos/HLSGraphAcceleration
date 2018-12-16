; ModuleID = '/home/parallels/Documents/ece527/final_project/global_memory/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@global_memory_str = internal unnamed_addr constant [14 x i8] c"global_memory\00"
@p_str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str11 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @global_memory([2 x i32]* %mem_interfaces_request_address, [2 x i32]* %mem_interfaces_request_data, [2 x i2]* %mem_interfaces_request_op_V, [2 x i32]* %mem_interfaces_result, [2 x i1]* %mem_interfaces_ack_V, [2 x i1]* %mem_interfaces_req_V) {
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %mem_interfaces_request_address), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %mem_interfaces_request_data), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i2]* %mem_interfaces_request_op_V), !map !57
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i32]* %mem_interfaces_result), !map !61
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i1]* %mem_interfaces_ack_V), !map !65
  call void (...)* @_ssdm_op_SpecBitsMap([2 x i1]* %mem_interfaces_req_V), !map !69
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @global_memory_str) nounwind
  %global_memory_1 = alloca [1024 x i32], align 16
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %i = phi i2 [ 0, %0 ], [ %i_1, %._crit_edge ]
  %exitcond1 = icmp eq i2 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_1 = add i2 %i, 1
  br i1 %exitcond1, label %.preheader.preheader_ifconv, label %2

.preheader.preheader_ifconv:                      ; preds = %1
  ret void

; <label>:2                                       ; preds = %1
  %tmp = zext i2 %i to i64
  %mem_interfaces_req_V_1 = getelementptr [2 x i1]* %mem_interfaces_req_V, i64 0, i64 %tmp
  %mem_interfaces_req_V_2 = load i1* %mem_interfaces_req_V_1, align 1
  br i1 %mem_interfaces_req_V_2, label %_ifconv, label %._crit_edge

_ifconv:                                          ; preds = %2
  %mem_interfaces_reque = getelementptr [2 x i32]* %mem_interfaces_request_address, i64 0, i64 %tmp
  %request_address = load i32* %mem_interfaces_reque, align 4
  %mem_interfaces_reque_1 = getelementptr [2 x i32]* %mem_interfaces_request_data, i64 0, i64 %tmp
  %request_data = load i32* %mem_interfaces_reque_1, align 4
  %mem_interfaces_reque_2 = getelementptr [2 x i2]* %mem_interfaces_request_op_V, i64 0, i64 %tmp
  %request_op_V = load i2* %mem_interfaces_reque_2, align 1
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str7) nounwind
  %tmp_1 = sext i32 %request_address to i64
  %global_memory_addr = getelementptr inbounds [1024 x i32]* %global_memory_1, i64 0, i64 %tmp_1
  %result_7 = load i32* %global_memory_addr, align 4
  %result = add nsw i32 %result_7, %request_data
  %tmp_6 = icmp sgt i32 %result_7, %request_data
  %request_data_2 = select i1 %tmp_6, i32 %request_data, i32 %result_7
  %result_2 = select i1 %tmp_6, i32 %result_7, i32 %request_data
  %sel_tmp = icmp eq i2 %request_op_V, -1
  %result_4 = select i1 %sel_tmp, i32 %result_2, i32 %result_7
  %sel_tmp2 = icmp eq i2 %request_op_V, -2
  %result_5 = select i1 %sel_tmp2, i32 %request_data_2, i32 %result_4
  %sel_tmp4 = icmp eq i2 %request_op_V, 1
  %result_6 = select i1 %sel_tmp4, i32 %result, i32 %result_5
  store i32 %result_6, i32* %global_memory_addr, align 4
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_2)
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str11)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str7) nounwind
  %mem_interfaces_resul = getelementptr [2 x i32]* %mem_interfaces_result, i64 0, i64 %tmp
  store i32 %result_6, i32* %mem_interfaces_resul, align 4
  %mem_interfaces_ack_V_1 = getelementptr [2 x i1]* %mem_interfaces_ack_V, i64 0, i64 %tmp
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  store i1 false, i1* %mem_interfaces_ack_V_1, align 1
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str11, i32 %tmp_4)
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ifconv, %2
  br label %1
}

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

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !7, !11, !11, !17, !11, !20, !11, !26, !29, !32, !35, !32, !37, !35}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!40}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"CoreGlobalMemoryInterface_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"mem_interfaces"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !2, metadata !9, metadata !4, metadata !10, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!10 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!11 = metadata !{null, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !6}
!12 = metadata !{metadata !"kernel_arg_addr_space"}
!13 = metadata !{metadata !"kernel_arg_access_qual"}
!14 = metadata !{metadata !"kernel_arg_type"}
!15 = metadata !{metadata !"kernel_arg_type_qual"}
!16 = metadata !{metadata !"kernel_arg_name"}
!17 = metadata !{null, metadata !8, metadata !2, metadata !18, metadata !4, metadata !19, metadata !6}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!20 = metadata !{null, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !6}
!21 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!22 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"std::ostream &", metadata !"const ap_int_base<2, false> &"}
!24 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"os", metadata !"x"}
!26 = metadata !{null, metadata !8, metadata !2, metadata !27, metadata !4, metadata !28, metadata !6}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"class std::ios_base &"}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"__base"}
!29 = metadata !{null, metadata !21, metadata !22, metadata !30, metadata !24, metadata !31, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"fmtflags", metadata !"fmtflags"}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"__fmtfl", metadata !"__mask"}
!32 = metadata !{null, metadata !21, metadata !22, metadata !33, metadata !24, metadata !34, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"enum std::_Ios_Fmtflags", metadata !"enum std::_Ios_Fmtflags"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!35 = metadata !{null, metadata !21, metadata !22, metadata !36, metadata !24, metadata !34, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"enum std::_Ios_Fmtflags &", metadata !"enum std::_Ios_Fmtflags"}
!37 = metadata !{null, metadata !8, metadata !2, metadata !38, metadata !4, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"enum std::_Ios_Fmtflags"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"__a"}
!40 = metadata !{metadata !41, [1 x i32]* @llvm_global_ctors_0}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"llvm.global_ctors.0", metadata !45, metadata !"", i32 0, i32 31}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 0, i32 1}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"mem_interfaces.request.address", metadata !51, metadata !"int", i32 0, i32 31}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 1, i32 1}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"mem_interfaces.request.data", metadata !51, metadata !"int", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 1, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"mem_interfaces.request.op.V", metadata !51, metadata !"uint2", i32 0, i32 1}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"mem_interfaces.result", metadata !51, metadata !"int", i32 0, i32 31}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 0, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"mem_interfaces.ack.V", metadata !51, metadata !"uint1", i32 0, i32 0}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 0, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"mem_interfaces.req.V", metadata !51, metadata !"uint1", i32 0, i32 0}
