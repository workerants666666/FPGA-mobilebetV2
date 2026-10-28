# This script segment is generated automatically by AutoPilot

set id 14
set name conv_urem_5ns_5nscud
set corename simcore_urem
set op urem
set stage_num 9
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 5
set in0_signed 0
set in1_width 5
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 4
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_urem] == "ap_gen_simcore_urem"} {
eval "ap_gen_simcore_urem { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_urem, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op urem
set corename DivnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


set id 15
set name conv_mac_muladd_6dEe
set corename simcore_mac
set op mac
set stage_num 3
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 6
set in0_signed 0
set in1_width 5
set in1_signed 0
set in2_width 31
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
set exp i0*i1+i2
set arg_lists {i0 {6 0 +} i1 {5 0 +} m {11 0 +} i2 {31 0 +} p {32 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name wt_buff_0_0_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_0_0_V \
    op interface \
    ports { wt_buff_0_0_V_address0 { O 4 vector } wt_buff_0_0_V_ce0 { O 1 bit } wt_buff_0_0_V_we0 { O 1 bit } wt_buff_0_0_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_0_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 21 \
    name wt_buff_0_1_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_0_1_V \
    op interface \
    ports { wt_buff_0_1_V_address0 { O 4 vector } wt_buff_0_1_V_ce0 { O 1 bit } wt_buff_0_1_V_we0 { O 1 bit } wt_buff_0_1_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_0_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name wt_buff_0_2_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_0_2_V \
    op interface \
    ports { wt_buff_0_2_V_address0 { O 4 vector } wt_buff_0_2_V_ce0 { O 1 bit } wt_buff_0_2_V_we0 { O 1 bit } wt_buff_0_2_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_0_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name wt_buff_1_0_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_1_0_V \
    op interface \
    ports { wt_buff_1_0_V_address0 { O 4 vector } wt_buff_1_0_V_ce0 { O 1 bit } wt_buff_1_0_V_we0 { O 1 bit } wt_buff_1_0_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_1_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name wt_buff_1_1_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_1_1_V \
    op interface \
    ports { wt_buff_1_1_V_address0 { O 4 vector } wt_buff_1_1_V_ce0 { O 1 bit } wt_buff_1_1_V_we0 { O 1 bit } wt_buff_1_1_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_1_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name wt_buff_1_2_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_1_2_V \
    op interface \
    ports { wt_buff_1_2_V_address0 { O 4 vector } wt_buff_1_2_V_ce0 { O 1 bit } wt_buff_1_2_V_we0 { O 1 bit } wt_buff_1_2_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_1_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name wt_buff_2_0_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_2_0_V \
    op interface \
    ports { wt_buff_2_0_V_address0 { O 4 vector } wt_buff_2_0_V_ce0 { O 1 bit } wt_buff_2_0_V_we0 { O 1 bit } wt_buff_2_0_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_2_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name wt_buff_2_1_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_2_1_V \
    op interface \
    ports { wt_buff_2_1_V_address0 { O 4 vector } wt_buff_2_1_V_ce0 { O 1 bit } wt_buff_2_1_V_we0 { O 1 bit } wt_buff_2_1_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_2_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name wt_buff_2_2_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_2_2_V \
    op interface \
    ports { wt_buff_2_2_V_address0 { O 4 vector } wt_buff_2_2_V_ce0 { O 1 bit } wt_buff_2_2_V_we0 { O 1 bit } wt_buff_2_2_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_2_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name wt_buff_3_0_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_3_0_V \
    op interface \
    ports { wt_buff_3_0_V_address0 { O 4 vector } wt_buff_3_0_V_ce0 { O 1 bit } wt_buff_3_0_V_we0 { O 1 bit } wt_buff_3_0_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_3_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 30 \
    name wt_buff_3_1_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_3_1_V \
    op interface \
    ports { wt_buff_3_1_V_address0 { O 4 vector } wt_buff_3_1_V_ce0 { O 1 bit } wt_buff_3_1_V_we0 { O 1 bit } wt_buff_3_1_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_3_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 31 \
    name wt_buff_3_2_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_3_2_V \
    op interface \
    ports { wt_buff_3_2_V_address0 { O 4 vector } wt_buff_3_2_V_ce0 { O 1 bit } wt_buff_3_2_V_we0 { O 1 bit } wt_buff_3_2_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_3_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name wt_buff_4_0_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_4_0_V \
    op interface \
    ports { wt_buff_4_0_V_address0 { O 4 vector } wt_buff_4_0_V_ce0 { O 1 bit } wt_buff_4_0_V_we0 { O 1 bit } wt_buff_4_0_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_4_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name wt_buff_4_1_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_4_1_V \
    op interface \
    ports { wt_buff_4_1_V_address0 { O 4 vector } wt_buff_4_1_V_ce0 { O 1 bit } wt_buff_4_1_V_we0 { O 1 bit } wt_buff_4_1_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_4_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name wt_buff_4_2_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_4_2_V \
    op interface \
    ports { wt_buff_4_2_V_address0 { O 4 vector } wt_buff_4_2_V_ce0 { O 1 bit } wt_buff_4_2_V_we0 { O 1 bit } wt_buff_4_2_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_4_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 35 \
    name wt_buff_5_0_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_5_0_V \
    op interface \
    ports { wt_buff_5_0_V_address0 { O 4 vector } wt_buff_5_0_V_ce0 { O 1 bit } wt_buff_5_0_V_we0 { O 1 bit } wt_buff_5_0_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_5_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 36 \
    name wt_buff_5_1_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_5_1_V \
    op interface \
    ports { wt_buff_5_1_V_address0 { O 4 vector } wt_buff_5_1_V_ce0 { O 1 bit } wt_buff_5_1_V_we0 { O 1 bit } wt_buff_5_1_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_5_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name wt_buff_5_2_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_5_2_V \
    op interface \
    ports { wt_buff_5_2_V_address0 { O 4 vector } wt_buff_5_2_V_ce0 { O 1 bit } wt_buff_5_2_V_we0 { O 1 bit } wt_buff_5_2_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_5_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name wt_buff_6_0_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_6_0_V \
    op interface \
    ports { wt_buff_6_0_V_address0 { O 4 vector } wt_buff_6_0_V_ce0 { O 1 bit } wt_buff_6_0_V_we0 { O 1 bit } wt_buff_6_0_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_6_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name wt_buff_6_1_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_6_1_V \
    op interface \
    ports { wt_buff_6_1_V_address0 { O 4 vector } wt_buff_6_1_V_ce0 { O 1 bit } wt_buff_6_1_V_we0 { O 1 bit } wt_buff_6_1_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_6_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name wt_buff_6_2_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_6_2_V \
    op interface \
    ports { wt_buff_6_2_V_address0 { O 4 vector } wt_buff_6_2_V_ce0 { O 1 bit } wt_buff_6_2_V_we0 { O 1 bit } wt_buff_6_2_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_6_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name wt_buff_7_0_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_7_0_V \
    op interface \
    ports { wt_buff_7_0_V_address0 { O 4 vector } wt_buff_7_0_V_ce0 { O 1 bit } wt_buff_7_0_V_we0 { O 1 bit } wt_buff_7_0_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_7_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name wt_buff_7_1_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_7_1_V \
    op interface \
    ports { wt_buff_7_1_V_address0 { O 4 vector } wt_buff_7_1_V_ce0 { O 1 bit } wt_buff_7_1_V_we0 { O 1 bit } wt_buff_7_1_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_7_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name wt_buff_7_2_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename wt_buff_7_2_V \
    op interface \
    ports { wt_buff_7_2_V_address0 { O 4 vector } wt_buff_7_2_V_ce0 { O 1 bit } wt_buff_7_2_V_we0 { O 1 bit } wt_buff_7_2_V_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_7_2_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name weight_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_V \
    op interface \
    ports { m_axi_weight_V_AWVALID { O 1 bit } m_axi_weight_V_AWREADY { I 1 bit } m_axi_weight_V_AWADDR { O 32 vector } m_axi_weight_V_AWID { O 1 vector } m_axi_weight_V_AWLEN { O 32 vector } m_axi_weight_V_AWSIZE { O 3 vector } m_axi_weight_V_AWBURST { O 2 vector } m_axi_weight_V_AWLOCK { O 2 vector } m_axi_weight_V_AWCACHE { O 4 vector } m_axi_weight_V_AWPROT { O 3 vector } m_axi_weight_V_AWQOS { O 4 vector } m_axi_weight_V_AWREGION { O 4 vector } m_axi_weight_V_AWUSER { O 1 vector } m_axi_weight_V_WVALID { O 1 bit } m_axi_weight_V_WREADY { I 1 bit } m_axi_weight_V_WDATA { O 16 vector } m_axi_weight_V_WSTRB { O 2 vector } m_axi_weight_V_WLAST { O 1 bit } m_axi_weight_V_WID { O 1 vector } m_axi_weight_V_WUSER { O 1 vector } m_axi_weight_V_ARVALID { O 1 bit } m_axi_weight_V_ARREADY { I 1 bit } m_axi_weight_V_ARADDR { O 32 vector } m_axi_weight_V_ARID { O 1 vector } m_axi_weight_V_ARLEN { O 32 vector } m_axi_weight_V_ARSIZE { O 3 vector } m_axi_weight_V_ARBURST { O 2 vector } m_axi_weight_V_ARLOCK { O 2 vector } m_axi_weight_V_ARCACHE { O 4 vector } m_axi_weight_V_ARPROT { O 3 vector } m_axi_weight_V_ARQOS { O 4 vector } m_axi_weight_V_ARREGION { O 4 vector } m_axi_weight_V_ARUSER { O 1 vector } m_axi_weight_V_RVALID { I 1 bit } m_axi_weight_V_RREADY { O 1 bit } m_axi_weight_V_RDATA { I 16 vector } m_axi_weight_V_RLAST { I 1 bit } m_axi_weight_V_RID { I 1 vector } m_axi_weight_V_RUSER { I 1 vector } m_axi_weight_V_RRESP { I 2 vector } m_axi_weight_V_BVALID { I 1 bit } m_axi_weight_V_BREADY { O 1 bit } m_axi_weight_V_BRESP { I 2 vector } m_axi_weight_V_BID { I 1 vector } m_axi_weight_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name weight_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_weight_V_offset \
    op interface \
    ports { weight_V_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name ch_0_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ch_0_i \
    op interface \
    ports { ch_0_i { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name p_read6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read6 \
    op interface \
    ports { p_read6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name p_read7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read7 \
    op interface \
    ports { p_read7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name p_read8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read8 \
    op interface \
    ports { p_read8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name p_read9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read9 \
    op interface \
    ports { p_read9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name p_read10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read10 \
    op interface \
    ports { p_read10 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name p_read11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read11 \
    op interface \
    ports { p_read11 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name p_read12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read12 \
    op interface \
    ports { p_read12 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name p_read13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read13 \
    op interface \
    ports { p_read13 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name p_read14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read14 \
    op interface \
    ports { p_read14 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name p_read15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read15 \
    op interface \
    ports { p_read15 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name p_read16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read16 \
    op interface \
    ports { p_read16 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name p_read17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read17 \
    op interface \
    ports { p_read17 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name p_read18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read18 \
    op interface \
    ports { p_read18 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name p_read19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read19 \
    op interface \
    ports { p_read19 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name p_read20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read20 \
    op interface \
    ports { p_read20 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name p_read21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read21 \
    op interface \
    ports { p_read21 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name p_read22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read22 \
    op interface \
    ports { p_read22 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name p_read23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read23 \
    op interface \
    ports { p_read23 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name p_read24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read24 \
    op interface \
    ports { p_read24 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name p_read25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read25 \
    op interface \
    ports { p_read25 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name p_read26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read26 \
    op interface \
    ports { p_read26 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name p_read27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read27 \
    op interface \
    ports { p_read27 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name p_read28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read28 \
    op interface \
    ports { p_read28 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name p_read29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read29 \
    op interface \
    ports { p_read29 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name p_read30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read30 \
    op interface \
    ports { p_read30 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name p_read31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read31 \
    op interface \
    ports { p_read31 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name row \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row \
    op interface \
    ports { row { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name col \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_col \
    op interface \
    ports { col { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name ch_0_i_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ch_0_i_c \
    op interface \
    ports { ch_0_i_c_din { O 5 vector } ch_0_i_c_full_n { I 1 bit } ch_0_i_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name bias_buff_0_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_0_V_c \
    op interface \
    ports { bias_buff_0_V_c_din { O 16 vector } bias_buff_0_V_c_full_n { I 1 bit } bias_buff_0_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name bias_buff_1_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_1_V_c \
    op interface \
    ports { bias_buff_1_V_c_din { O 16 vector } bias_buff_1_V_c_full_n { I 1 bit } bias_buff_1_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name bias_buff_2_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_2_V_c \
    op interface \
    ports { bias_buff_2_V_c_din { O 16 vector } bias_buff_2_V_c_full_n { I 1 bit } bias_buff_2_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name bias_buff_3_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_3_V_c \
    op interface \
    ports { bias_buff_3_V_c_din { O 16 vector } bias_buff_3_V_c_full_n { I 1 bit } bias_buff_3_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name bias_buff_4_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_4_V_c \
    op interface \
    ports { bias_buff_4_V_c_din { O 16 vector } bias_buff_4_V_c_full_n { I 1 bit } bias_buff_4_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name bias_buff_5_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_5_V_c \
    op interface \
    ports { bias_buff_5_V_c_din { O 16 vector } bias_buff_5_V_c_full_n { I 1 bit } bias_buff_5_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name bias_buff_6_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_6_V_c \
    op interface \
    ports { bias_buff_6_V_c_din { O 16 vector } bias_buff_6_V_c_full_n { I 1 bit } bias_buff_6_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name bias_buff_7_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_7_V_c \
    op interface \
    ports { bias_buff_7_V_c_din { O 16 vector } bias_buff_7_V_c_full_n { I 1 bit } bias_buff_7_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name bias_buff_8_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_8_V_c \
    op interface \
    ports { bias_buff_8_V_c_din { O 16 vector } bias_buff_8_V_c_full_n { I 1 bit } bias_buff_8_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name bias_buff_9_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_9_V_c \
    op interface \
    ports { bias_buff_9_V_c_din { O 16 vector } bias_buff_9_V_c_full_n { I 1 bit } bias_buff_9_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name bias_buff_10_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_10_V_c \
    op interface \
    ports { bias_buff_10_V_c_din { O 16 vector } bias_buff_10_V_c_full_n { I 1 bit } bias_buff_10_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name bias_buff_11_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_11_V_c \
    op interface \
    ports { bias_buff_11_V_c_din { O 16 vector } bias_buff_11_V_c_full_n { I 1 bit } bias_buff_11_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name bias_buff_12_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_12_V_c \
    op interface \
    ports { bias_buff_12_V_c_din { O 16 vector } bias_buff_12_V_c_full_n { I 1 bit } bias_buff_12_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name bias_buff_13_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_13_V_c \
    op interface \
    ports { bias_buff_13_V_c_din { O 16 vector } bias_buff_13_V_c_full_n { I 1 bit } bias_buff_13_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name bias_buff_14_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_14_V_c \
    op interface \
    ports { bias_buff_14_V_c_din { O 16 vector } bias_buff_14_V_c_full_n { I 1 bit } bias_buff_14_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name bias_buff_15_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_15_V_c \
    op interface \
    ports { bias_buff_15_V_c_din { O 16 vector } bias_buff_15_V_c_full_n { I 1 bit } bias_buff_15_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name bias_buff_16_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_16_V_c \
    op interface \
    ports { bias_buff_16_V_c_din { O 16 vector } bias_buff_16_V_c_full_n { I 1 bit } bias_buff_16_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name bias_buff_17_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_17_V_c \
    op interface \
    ports { bias_buff_17_V_c_din { O 16 vector } bias_buff_17_V_c_full_n { I 1 bit } bias_buff_17_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name bias_buff_18_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_18_V_c \
    op interface \
    ports { bias_buff_18_V_c_din { O 16 vector } bias_buff_18_V_c_full_n { I 1 bit } bias_buff_18_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name bias_buff_19_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_19_V_c \
    op interface \
    ports { bias_buff_19_V_c_din { O 16 vector } bias_buff_19_V_c_full_n { I 1 bit } bias_buff_19_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name bias_buff_20_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_20_V_c \
    op interface \
    ports { bias_buff_20_V_c_din { O 16 vector } bias_buff_20_V_c_full_n { I 1 bit } bias_buff_20_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name bias_buff_21_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_21_V_c \
    op interface \
    ports { bias_buff_21_V_c_din { O 16 vector } bias_buff_21_V_c_full_n { I 1 bit } bias_buff_21_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name bias_buff_22_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_22_V_c \
    op interface \
    ports { bias_buff_22_V_c_din { O 16 vector } bias_buff_22_V_c_full_n { I 1 bit } bias_buff_22_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name bias_buff_23_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_23_V_c \
    op interface \
    ports { bias_buff_23_V_c_din { O 16 vector } bias_buff_23_V_c_full_n { I 1 bit } bias_buff_23_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name bias_buff_24_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_24_V_c \
    op interface \
    ports { bias_buff_24_V_c_din { O 16 vector } bias_buff_24_V_c_full_n { I 1 bit } bias_buff_24_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name bias_buff_25_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_25_V_c \
    op interface \
    ports { bias_buff_25_V_c_din { O 16 vector } bias_buff_25_V_c_full_n { I 1 bit } bias_buff_25_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name bias_buff_26_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_26_V_c \
    op interface \
    ports { bias_buff_26_V_c_din { O 16 vector } bias_buff_26_V_c_full_n { I 1 bit } bias_buff_26_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name bias_buff_27_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_27_V_c \
    op interface \
    ports { bias_buff_27_V_c_din { O 16 vector } bias_buff_27_V_c_full_n { I 1 bit } bias_buff_27_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name bias_buff_28_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_28_V_c \
    op interface \
    ports { bias_buff_28_V_c_din { O 16 vector } bias_buff_28_V_c_full_n { I 1 bit } bias_buff_28_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name bias_buff_29_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_29_V_c \
    op interface \
    ports { bias_buff_29_V_c_din { O 16 vector } bias_buff_29_V_c_full_n { I 1 bit } bias_buff_29_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name bias_buff_30_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_30_V_c \
    op interface \
    ports { bias_buff_30_V_c_din { O 16 vector } bias_buff_30_V_c_full_n { I 1 bit } bias_buff_30_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name bias_buff_31_V_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_31_V_c \
    op interface \
    ports { bias_buff_31_V_c_din { O 16 vector } bias_buff_31_V_c_full_n { I 1 bit } bias_buff_31_V_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name row_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_row_c \
    op interface \
    ports { row_c_din { O 32 vector } row_c_full_n { I 1 bit } row_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name col_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_col_c \
    op interface \
    ports { col_c_din { O 32 vector } col_c_full_n { I 1 bit } col_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name out_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_V_offset \
    op interface \
    ports { out_V_offset { I 29 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name out_V_offset_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_V_offset_out \
    op interface \
    ports { out_V_offset_out_din { O 29 vector } out_V_offset_out_full_n { I 1 bit } out_V_offset_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


