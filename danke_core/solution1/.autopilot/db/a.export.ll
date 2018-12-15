; ModuleID = '/home/parallels/Documents/ece527/final_project/danke_core/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@danke_core_str = internal unnamed_addr constant [11 x i8] c"danke_core\00"

declare i25 @llvm.part.select.i25(i25, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @danke_core([1024 x i25]* %instruction_memory_V, [1024 x i32]* %data_memory_V, i1* %halted_V, i32* %core_id) {
arrayctor.loop1.preheader:
  %t_V = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i25]* %instruction_memory_V), !map !119
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %data_memory_V), !map !125
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %halted_V), !map !129
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %core_id), !map !133
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @danke_core_str) nounwind
  %regfile_V = alloca [32 x i32], align 4
  %special_regfile_V = alloca [32 x i32], align 4
  %core_id_read = call i32 @_ssdm_op_Read.ap_auto.i32P(i32* %core_id)
  %special_regfile_V_ad = getelementptr [32 x i32]* %special_regfile_V, i64 0, i64 0
  store i32 %core_id_read, i32* %special_regfile_V_ad, align 16
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %arrayctor.loop1.preheader
  %halted_V_read = call i1 @_ssdm_op_Read.ap_auto.i1P(i1* %halted_V)
  br i1 %halted_V_read, label %22, label %_ifconv

_ifconv:                                          ; preds = %.backedge
  %t_V_load_1 = load i32* %t_V
  %tmp = sext i32 %t_V_load_1 to i64
  %instruction_memory_V_1 = getelementptr [1024 x i25]* %instruction_memory_V, i64 0, i64 %tmp
  %ir_V = load i25* %instruction_memory_V_1, align 4
  %opcode_V = call i3 @_ssdm_op_PartSelect.i3.i25.i32.i32(i25 %ir_V, i32 22, i32 24)
  %sr1_V = call i6 @_ssdm_op_PartSelect.i6.i25.i32.i32(i25 %ir_V, i32 16, i32 21)
  %sr2_V = call i6 @_ssdm_op_PartSelect.i6.i25.i32.i32(i25 %ir_V, i32 10, i32 15)
  %dr_V = call i6 @_ssdm_op_PartSelect.i6.i25.i32.i32(i25 %ir_V, i32 4, i32 9)
  %intop_V = trunc i25 %ir_V to i4
  %offset_V = trunc i25 %ir_V to i10
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %ir_V, i32 21)
  %r_V = xor i6 %sr1_V, -32
  %r_V_cast = sext i6 %r_V to i33
  %tmp_s = zext i33 %r_V_cast to i64
  %special_regfile_V_ad_1 = getelementptr [32 x i32]* %special_regfile_V, i64 0, i64 %tmp_s
  %special_regfile_V_lo = load i32* %special_regfile_V_ad_1, align 4
  %tmp_1 = zext i6 %sr1_V to i64
  %regfile_V_addr = getelementptr [32 x i32]* %regfile_V, i64 0, i64 %tmp_1
  %regfile_V_load = load i32* %regfile_V_addr, align 4
  %op1_V = select i1 %tmp_12, i32 %special_regfile_V_lo, i32 %regfile_V_load
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %ir_V, i32 15)
  %op2_V = sext i6 %sr2_V to i32
  %r_V_1 = xor i6 %sr2_V, -32
  %r_V_1_cast = sext i6 %r_V_1 to i33
  %tmp_4 = zext i33 %r_V_1_cast to i64
  %special_regfile_V_ad_2 = getelementptr [32 x i32]* %special_regfile_V, i64 0, i64 %tmp_4
  %special_regfile_V_lo_1 = load i32* %special_regfile_V_ad_2, align 4
  %tmp_5 = zext i6 %sr2_V to i64
  %regfile_V_addr_1 = getelementptr [32 x i32]* %regfile_V, i64 0, i64 %tmp_5
  %regfile_V_load_1 = load i32* %regfile_V_addr_1, align 4
  %sel_tmp = icmp eq i3 %opcode_V, -4
  %sel_tmp1 = icmp eq i3 %opcode_V, 3
  %sel_tmp2 = icmp eq i3 %opcode_V, 1
  %tmp1 = or i1 %sel_tmp1, %sel_tmp2
  %sel_tmp4 = or i1 %tmp1, %sel_tmp
  %sel_tmp5 = select i1 %sel_tmp4, i32 %op2_V, i32 %regfile_V_load_1
  %sel_tmp9 = icmp ne i3 %opcode_V, -4
  %sel_tmp3 = icmp ne i3 %opcode_V, 3
  %sel_tmp6 = icmp ne i3 %opcode_V, 1
  %tmp2 = and i1 %sel_tmp9, %sel_tmp3
  %tmp3 = and i1 %sel_tmp6, %tmp_13
  %sel_tmp7 = and i1 %tmp3, %tmp2
  %rhs_V = select i1 %sel_tmp7, i32 %special_regfile_V_lo_1, i32 %sel_tmp5
  switch i3 %opcode_V, label %._crit_edge1101 [
    i3 0, label %._crit_edge1103
    i3 1, label %._crit_edge1103
    i3 2, label %19
    i3 3, label %20
    i3 -4, label %21
    i3 -3, label %._crit_edge1105
    i3 -2, label %._crit_edge1105
  ]

._crit_edge1103:                                  ; preds = %_ifconv, %_ifconv
  switch i4 %intop_V, label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit [
    i4 0, label %0
    i4 1, label %1
    i4 2, label %2
    i4 3, label %3
    i4 4, label %4
    i4 5, label %5
    i4 6, label %6
    i4 7, label %7
    i4 -8, label %8
    i4 -7, label %9
    i4 -6, label %10
    i4 -5, label %11
    i4 -4, label %12
    i4 -3, label %13
    i4 -2, label %16
  ]

; <label>:0                                       ; preds = %._crit_edge1103
  %result_V = add i32 %rhs_V, %op1_V
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:1                                       ; preds = %._crit_edge1103
  %result_V_1 = sub i32 %op1_V, %rhs_V
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:2                                       ; preds = %._crit_edge1103
  %result_V_2 = mul i32 %rhs_V, %op1_V
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:3                                       ; preds = %._crit_edge1103
  %result_V_3 = sdiv i32 %op1_V, %rhs_V
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:4                                       ; preds = %._crit_edge1103
  %val_assign_1 = icmp sgt i32 %op1_V, %rhs_V
  %result_V_4 = zext i1 %val_assign_1 to i32
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:5                                       ; preds = %._crit_edge1103
  %val_assign_2 = icmp slt i32 %op1_V, %rhs_V
  %result_V_5 = zext i1 %val_assign_2 to i32
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:6                                       ; preds = %._crit_edge1103
  %slt = icmp slt i32 %op1_V, %rhs_V
  %rev = xor i1 %slt, true
  %result_V_6 = zext i1 %rev to i32
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:7                                       ; preds = %._crit_edge1103
  %slt1 = icmp slt i32 %rhs_V, %op1_V
  %rev1 = xor i1 %slt1, true
  %result_V_7 = zext i1 %rev1 to i32
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:8                                       ; preds = %._crit_edge1103
  %val_assign_5 = icmp eq i32 %op1_V, %rhs_V
  %result_V_8 = zext i1 %val_assign_5 to i32
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:9                                       ; preds = %._crit_edge1103
  %val_assign_6 = icmp ne i32 %op1_V, %rhs_V
  %result_V_9 = zext i1 %val_assign_6 to i32
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:10                                      ; preds = %._crit_edge1103
  %r_V_8 = and i32 %rhs_V, %op1_V
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:11                                      ; preds = %._crit_edge1103
  %r_V_9 = or i32 %rhs_V, %op1_V
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:12                                      ; preds = %._crit_edge1103
  %result_V_12 = xor i32 %op1_V, -1
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:13                                      ; preds = %._crit_edge1103
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %rhs_V, i32 31)
  br i1 %tmp_14, label %14, label %15

; <label>:14                                      ; preds = %13
  %sh_V_1 = sub i32 0, %rhs_V
  %r_V_5 = ashr i32 %op1_V, %sh_V_1
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:15                                      ; preds = %13
  %r_V_4 = shl i32 %op1_V, %rhs_V
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:16                                      ; preds = %._crit_edge1103
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %rhs_V, i32 31)
  br i1 %tmp_15, label %17, label %18

; <label>:17                                      ; preds = %16
  %sh_V_2 = sub i32 0, %rhs_V
  %r_V_7 = shl i32 %op1_V, %sh_V_2
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

; <label>:18                                      ; preds = %16
  %r_V_6 = ashr i32 %op1_V, %rhs_V
  br label %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit

_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit: ; preds = %18, %17, %15, %14, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1, %0, %._crit_edge1103
  %p_1 = phi i32 [ %result_V_12, %12 ], [ %r_V_9, %11 ], [ %r_V_8, %10 ], [ %result_V_9, %9 ], [ %result_V_8, %8 ], [ %result_V_7, %7 ], [ %result_V_6, %6 ], [ %result_V_5, %5 ], [ %result_V_4, %4 ], [ %result_V_3, %3 ], [ %result_V_2, %2 ], [ %result_V_1, %1 ], [ %result_V, %0 ], [ %r_V_5, %14 ], [ %r_V_4, %15 ], [ %r_V_7, %17 ], [ %r_V_6, %18 ], [ 0, %._crit_edge1103 ]
  %t_V_load = load i32* %t_V
  %tmp_7 = zext i6 %dr_V to i64
  %regfile_V_addr_4 = getelementptr [32 x i32]* %regfile_V, i64 0, i64 %tmp_7
  store i32 %p_1, i32* %regfile_V_addr_4, align 4
  %pc_V_4 = add nsw i32 %t_V_load, 1
  store i32 %pc_V_4, i32* %t_V
  br label %.backedge.backedge

; <label>:19                                      ; preds = %_ifconv
  %tmp_6 = icmp eq i32 %op1_V, %rhs_V
  %p_0130_0_pn = select i1 %tmp_6, i10 %offset_V, i10 1
  %p_0130_0_pn_cast = sext i10 %p_0130_0_pn to i32
  %pc_V = add nsw i32 %p_0130_0_pn_cast, %t_V_load_1
  store i32 %pc_V, i32* %t_V
  br label %.backedge.backedge

; <label>:20                                      ; preds = %_ifconv
  %addr_V = add i32 %rhs_V, %op1_V
  %tmp_8 = sext i32 %addr_V to i64
  %data_memory_V_addr = getelementptr [1024 x i32]* %data_memory_V, i64 0, i64 %tmp_8
  %mem_data_read_V = load i32* %data_memory_V_addr, align 4
  %tmp_9 = zext i6 %dr_V to i64
  %regfile_V_addr_2 = getelementptr [32 x i32]* %regfile_V, i64 0, i64 %tmp_9
  store i32 %mem_data_read_V, i32* %regfile_V_addr_2, align 4
  %pc_V_1 = add nsw i32 %t_V_load_1, 1
  store i32 %pc_V_1, i32* %t_V
  br label %.backedge.backedge

; <label>:21                                      ; preds = %_ifconv
  %addr_V_1 = add i32 %rhs_V, %op1_V
  %tmp_2 = zext i6 %dr_V to i64
  %regfile_V_addr_3 = getelementptr [32 x i32]* %regfile_V, i64 0, i64 %tmp_2
  %mem_data_write_V = load i32* %regfile_V_addr_3, align 4
  %tmp_3 = sext i32 %addr_V_1 to i64
  %data_memory_V_addr_1 = getelementptr [1024 x i32]* %data_memory_V, i64 0, i64 %tmp_3
  store i32 %mem_data_write_V, i32* %data_memory_V_addr_1, align 4
  %pc_V_2 = add nsw i32 %t_V_load_1, 1
  store i32 %pc_V_2, i32* %t_V
  br label %.backedge.backedge

._crit_edge1105:                                  ; preds = %_ifconv, %_ifconv
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %halted_V, i1 true)
  br label %._crit_edge1101

._crit_edge1101:                                  ; preds = %._crit_edge1105, %_ifconv
  %t_V_load_2 = load i32* %t_V
  %pc_V_3 = add nsw i32 %t_V_load_2, 1
  store i32 %pc_V_3, i32* %t_V
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %._crit_edge1101, %21, %20, %19, %_ZNK11ap_int_baseILi32ELb1ELb1EElsILi32EEES0_RKS_IXT_ELb1EXleT_Li64EEE.exit
  br label %.backedge

; <label>:22                                      ; preds = %.backedge
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i1 @_ssdm_op_Read.ap_auto.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak i6 @_ssdm_op_PartSelect.i6.i25.i32.i32(i25, i32, i32) nounwind readnone {
entry:
  %empty = call i25 @llvm.part.select.i25(i25 %0, i32 %1, i32 %2)
  %empty_5 = trunc i25 %empty to i6
  ret i6 %empty_5
}

declare i4 @_ssdm_op_PartSelect.i4.i25.i32.i32(i25, i32, i32) nounwind readnone

define weak i3 @_ssdm_op_PartSelect.i3.i25.i32.i32(i25, i32, i32) nounwind readnone {
entry:
  %empty = call i25 @llvm.part.select.i25(i25 %0, i32 %1, i32 %2)
  %empty_6 = trunc i25 %empty to i3
  ret i3 %empty_6
}

declare i10 @_ssdm_op_PartSelect.i10.i25.i32.i32(i25, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_7 = shl i6 1, %empty
  %empty_8 = and i6 %0, %empty_7
  %empty_9 = icmp ne i6 %empty_8, 0
  ret i1 %empty_9
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_10 = and i32 %0, %empty
  %empty_11 = icmp ne i32 %empty_10, 0
  ret i1 %empty_11
}

define weak i1 @_ssdm_op_BitSelect.i1.i25.i32(i25, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i25
  %empty_12 = shl i25 1, %empty
  %empty_13 = and i25 %0, %empty_12
  %empty_14 = icmp ne i25 %empty_13, 0
  ret i1 %empty_14
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !7, !13, !13, !19, !22, !24, !24, !13, !13, !27, !29, !29, !30, !22, !32, !13, !13, !32, !13, !34, !13, !13, !13, !40, !40, !41, !41, !42, !40, !40, !13, !44, !13, !46, !46, !22, !7, !7, !50, !40, !40, !50, !22, !22, !22, !22, !22, !52, !52, !22, !50, !54, !54, !50, !13, !13, !13, !40, !40, !50, !56, !56, !50, !13, !13, !57, !60, !62, !62, !64, !29, !29, !22, !13, !13, !66, !69, !71, !71, !73, !22, !74, !74, !74, !13, !13, !13, !13, !13, !74, !74, !74, !13, !74, !74, !74, !13, !74, !74, !74, !13, !74, !74, !74, !13, !77, !80, !80, !86, !88, !90, !13, !92, !22, !94, !94, !96, !13, !13, !13, !13, !98, !101, !104, !107, !104, !109, !107}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!112}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<(3 + 4 + 6 + 6 + 6)>*", metadata !"ap_int<32>*", metadata !"ap_uint<1>*", metadata !"uint*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"instruction_memory", metadata !"data_memory", metadata !"halted", metadata !"core_id"}
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
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !21, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!24 = metadata !{null, metadata !8, metadata !9, metadata !25, metadata !11, metadata !26, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<10> &"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !28, metadata !6}
!28 = metadata !{metadata !"kernel_arg_name", metadata !""}
!29 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !26, metadata !6}
!30 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !21, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!32 = metadata !{null, metadata !8, metadata !9, metadata !33, metadata !11, metadata !21, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!34 = metadata !{null, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !6}
!35 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!36 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!40 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !26, metadata !6}
!41 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !26, metadata !6}
!42 = metadata !{null, metadata !8, metadata !9, metadata !43, metadata !11, metadata !21, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!44 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !45, metadata !6}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!46 = metadata !{null, metadata !47, metadata !36, metadata !48, metadata !38, metadata !49, metadata !6}
!47 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!50 = metadata !{null, metadata !35, metadata !36, metadata !51, metadata !38, metadata !39, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, true> &"}
!52 = metadata !{null, metadata !8, metadata !9, metadata !53, metadata !11, metadata !12, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!54 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !26, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!56 = metadata !{null, metadata !8, metadata !9, metadata !43, metadata !11, metadata !26, metadata !6}
!57 = metadata !{null, metadata !35, metadata !36, metadata !58, metadata !38, metadata !59, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"std::ostream &", metadata !"const ap_int_base<6, false> &"}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"os", metadata !"x"}
!60 = metadata !{null, metadata !35, metadata !36, metadata !61, metadata !38, metadata !59, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"std::ostream &", metadata !"const ap_int_base<3, false> &"}
!62 = metadata !{null, metadata !8, metadata !9, metadata !63, metadata !11, metadata !26, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<6> &"}
!64 = metadata !{null, metadata !35, metadata !36, metadata !65, metadata !38, metadata !39, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<3, false> &", metadata !"int"}
!66 = metadata !{null, metadata !35, metadata !36, metadata !67, metadata !38, metadata !68, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<6, false> &", metadata !"int"}
!68 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!69 = metadata !{null, metadata !35, metadata !36, metadata !70, metadata !38, metadata !39, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<6, false> &", metadata !"const ap_int_base<32, true> &"}
!71 = metadata !{null, metadata !8, metadata !9, metadata !72, metadata !11, metadata !26, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<6, false> &"}
!73 = metadata !{null, metadata !35, metadata !36, metadata !67, metadata !38, metadata !39, metadata !6}
!74 = metadata !{null, metadata !8, metadata !9, metadata !75, metadata !11, metadata !76, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<25, false> &"}
!76 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!77 = metadata !{null, metadata !35, metadata !36, metadata !78, metadata !38, metadata !79, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!80 = metadata !{null, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !6}
!81 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!82 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<25, false>*", metadata !"int", metadata !"int"}
!84 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!86 = metadata !{null, metadata !35, metadata !36, metadata !87, metadata !38, metadata !59, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"std::ostream &", metadata !"const ap_int_base<25, false> &"}
!88 = metadata !{null, metadata !35, metadata !36, metadata !89, metadata !38, metadata !59, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"std::ostream &", metadata !"const ap_int_base<32, true> &"}
!90 = metadata !{null, metadata !8, metadata !9, metadata !91, metadata !11, metadata !21, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<25> &"}
!92 = metadata !{null, metadata !35, metadata !36, metadata !93, metadata !38, metadata !39, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!94 = metadata !{null, metadata !8, metadata !9, metadata !95, metadata !11, metadata !12, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!96 = metadata !{null, metadata !8, metadata !9, metadata !97, metadata !11, metadata !21, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<32> &"}
!98 = metadata !{null, metadata !8, metadata !9, metadata !99, metadata !11, metadata !100, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"class std::ios_base &"}
!100 = metadata !{metadata !"kernel_arg_name", metadata !"__base"}
!101 = metadata !{null, metadata !35, metadata !36, metadata !102, metadata !38, metadata !103, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"fmtflags", metadata !"fmtflags"}
!103 = metadata !{metadata !"kernel_arg_name", metadata !"__fmtfl", metadata !"__mask"}
!104 = metadata !{null, metadata !35, metadata !36, metadata !105, metadata !38, metadata !106, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"enum std::_Ios_Fmtflags", metadata !"enum std::_Ios_Fmtflags"}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!107 = metadata !{null, metadata !35, metadata !36, metadata !108, metadata !38, metadata !106, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"enum std::_Ios_Fmtflags &", metadata !"enum std::_Ios_Fmtflags"}
!109 = metadata !{null, metadata !8, metadata !9, metadata !110, metadata !11, metadata !111, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"enum std::_Ios_Fmtflags"}
!111 = metadata !{metadata !"kernel_arg_name", metadata !"__a"}
!112 = metadata !{metadata !113, [1 x i32]* @llvm_global_ctors_0}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 31, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"llvm.global_ctors.0", metadata !117, metadata !"", i32 0, i32 31}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 0, i32 1}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 24, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"instruction_memory.V", metadata !123, metadata !"uint25", i32 0, i32 24}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 1023, i32 1}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 31, metadata !127}
!127 = metadata !{metadata !128}
!128 = metadata !{metadata !"data_memory.V", metadata !123, metadata !"int32", i32 0, i32 31}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 0, i32 0, metadata !131}
!131 = metadata !{metadata !132}
!132 = metadata !{metadata !"halted.V", metadata !117, metadata !"uint1", i32 0, i32 0}
!133 = metadata !{metadata !134}
!134 = metadata !{i32 0, i32 31, metadata !135}
!135 = metadata !{metadata !136}
!136 = metadata !{metadata !"core_id", metadata !117, metadata !"unsigned int", i32 0, i32 31}
