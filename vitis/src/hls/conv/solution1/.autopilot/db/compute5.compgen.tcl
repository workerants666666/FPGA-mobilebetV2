# This script segment is generated automatically by AutoPilot

set id 116
set name conv_mux_325_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 16
set din3_signed 0
set din4_width 16
set din4_signed 0
set din5_width 16
set din5_signed 0
set din6_width 16
set din6_signed 0
set din7_width 16
set din7_signed 0
set din8_width 16
set din8_signed 0
set din9_width 16
set din9_signed 0
set din10_width 16
set din10_signed 0
set din11_width 16
set din11_signed 0
set din12_width 16
set din12_signed 0
set din13_width 16
set din13_signed 0
set din14_width 16
set din14_signed 0
set din15_width 16
set din15_signed 0
set din16_width 16
set din16_signed 0
set din17_width 16
set din17_signed 0
set din18_width 16
set din18_signed 0
set din19_width 16
set din19_signed 0
set din20_width 16
set din20_signed 0
set din21_width 16
set din21_signed 0
set din22_width 16
set din22_signed 0
set din23_width 16
set din23_signed 0
set din24_width 16
set din24_signed 0
set din25_width 16
set din25_signed 0
set din26_width 16
set din26_signed 0
set din27_width 16
set din27_signed 0
set din28_width 16
set din28_signed 0
set din29_width 16
set din29_signed 0
set din30_width 16
set din30_signed 0
set din31_width 16
set din31_signed 0
set din32_width 5
set din32_signed 0
set dout_width 16
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 124
set name conv_mac_muladd_7eOg
set corename simcore_mac
set op mac
set stage_num 3
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 7
set in0_signed 0
set in1_width 6
set in1_signed 0
set in2_width 6
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 12
set exp i0*i1+i2
set arg_lists {i0 {7 0 +} i1 {6 0 +} m {12 0 +} i2 {6 0 +} p {12 0 +} c_reg {1} rnd {0} acc {0} }
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


set id 125
set name conv_mul_mul_16s_fYi
set corename simcore_mul
set op mul
set stage_num 3
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 16
set in0_signed 1
set in1_width 16
set in1_signed 1
set ce_width 1
set ce_signed 0
set out_width 32
set exp i0*i1
set arg_lists {i0 {16 1 +} i1 {16 1 +} p {32 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
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
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
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
    id 152 \
    name fm_in_buff_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename fm_in_buff_0_V \
    op interface \
    ports { fm_in_buff_0_V_address0 { O 12 vector } fm_in_buff_0_V_ce0 { O 1 bit } fm_in_buff_0_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fm_in_buff_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name fm_in_buff_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename fm_in_buff_1_V \
    op interface \
    ports { fm_in_buff_1_V_address0 { O 12 vector } fm_in_buff_1_V_ce0 { O 1 bit } fm_in_buff_1_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fm_in_buff_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name fm_in_buff_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename fm_in_buff_2_V \
    op interface \
    ports { fm_in_buff_2_V_address0 { O 12 vector } fm_in_buff_2_V_ce0 { O 1 bit } fm_in_buff_2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fm_in_buff_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name wt_buff_0_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_0_0_V \
    op interface \
    ports { wt_buff_0_0_V_address0 { O 4 vector } wt_buff_0_0_V_ce0 { O 1 bit } wt_buff_0_0_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_0_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name wt_buff_0_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_0_1_V \
    op interface \
    ports { wt_buff_0_1_V_address0 { O 4 vector } wt_buff_0_1_V_ce0 { O 1 bit } wt_buff_0_1_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_0_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name wt_buff_0_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_0_2_V \
    op interface \
    ports { wt_buff_0_2_V_address0 { O 4 vector } wt_buff_0_2_V_ce0 { O 1 bit } wt_buff_0_2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_0_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name wt_buff_1_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_1_0_V \
    op interface \
    ports { wt_buff_1_0_V_address0 { O 4 vector } wt_buff_1_0_V_ce0 { O 1 bit } wt_buff_1_0_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_1_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name wt_buff_1_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_1_1_V \
    op interface \
    ports { wt_buff_1_1_V_address0 { O 4 vector } wt_buff_1_1_V_ce0 { O 1 bit } wt_buff_1_1_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_1_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name wt_buff_1_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_1_2_V \
    op interface \
    ports { wt_buff_1_2_V_address0 { O 4 vector } wt_buff_1_2_V_ce0 { O 1 bit } wt_buff_1_2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_1_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name wt_buff_2_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_2_0_V \
    op interface \
    ports { wt_buff_2_0_V_address0 { O 4 vector } wt_buff_2_0_V_ce0 { O 1 bit } wt_buff_2_0_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_2_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name wt_buff_2_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_2_1_V \
    op interface \
    ports { wt_buff_2_1_V_address0 { O 4 vector } wt_buff_2_1_V_ce0 { O 1 bit } wt_buff_2_1_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_2_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name wt_buff_2_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_2_2_V \
    op interface \
    ports { wt_buff_2_2_V_address0 { O 4 vector } wt_buff_2_2_V_ce0 { O 1 bit } wt_buff_2_2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_2_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name wt_buff_3_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_3_0_V \
    op interface \
    ports { wt_buff_3_0_V_address0 { O 4 vector } wt_buff_3_0_V_ce0 { O 1 bit } wt_buff_3_0_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_3_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name wt_buff_3_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_3_1_V \
    op interface \
    ports { wt_buff_3_1_V_address0 { O 4 vector } wt_buff_3_1_V_ce0 { O 1 bit } wt_buff_3_1_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_3_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name wt_buff_3_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_3_2_V \
    op interface \
    ports { wt_buff_3_2_V_address0 { O 4 vector } wt_buff_3_2_V_ce0 { O 1 bit } wt_buff_3_2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_3_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name wt_buff_4_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_4_0_V \
    op interface \
    ports { wt_buff_4_0_V_address0 { O 4 vector } wt_buff_4_0_V_ce0 { O 1 bit } wt_buff_4_0_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_4_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name wt_buff_4_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_4_1_V \
    op interface \
    ports { wt_buff_4_1_V_address0 { O 4 vector } wt_buff_4_1_V_ce0 { O 1 bit } wt_buff_4_1_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_4_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name wt_buff_4_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_4_2_V \
    op interface \
    ports { wt_buff_4_2_V_address0 { O 4 vector } wt_buff_4_2_V_ce0 { O 1 bit } wt_buff_4_2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_4_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 170 \
    name wt_buff_5_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_5_0_V \
    op interface \
    ports { wt_buff_5_0_V_address0 { O 4 vector } wt_buff_5_0_V_ce0 { O 1 bit } wt_buff_5_0_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_5_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name wt_buff_5_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_5_1_V \
    op interface \
    ports { wt_buff_5_1_V_address0 { O 4 vector } wt_buff_5_1_V_ce0 { O 1 bit } wt_buff_5_1_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_5_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name wt_buff_5_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_5_2_V \
    op interface \
    ports { wt_buff_5_2_V_address0 { O 4 vector } wt_buff_5_2_V_ce0 { O 1 bit } wt_buff_5_2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_5_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 173 \
    name wt_buff_6_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_6_0_V \
    op interface \
    ports { wt_buff_6_0_V_address0 { O 4 vector } wt_buff_6_0_V_ce0 { O 1 bit } wt_buff_6_0_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_6_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 174 \
    name wt_buff_6_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_6_1_V \
    op interface \
    ports { wt_buff_6_1_V_address0 { O 4 vector } wt_buff_6_1_V_ce0 { O 1 bit } wt_buff_6_1_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_6_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 175 \
    name wt_buff_6_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_6_2_V \
    op interface \
    ports { wt_buff_6_2_V_address0 { O 4 vector } wt_buff_6_2_V_ce0 { O 1 bit } wt_buff_6_2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_6_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 176 \
    name wt_buff_7_0_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_7_0_V \
    op interface \
    ports { wt_buff_7_0_V_address0 { O 4 vector } wt_buff_7_0_V_ce0 { O 1 bit } wt_buff_7_0_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_7_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 177 \
    name wt_buff_7_1_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_7_1_V \
    op interface \
    ports { wt_buff_7_1_V_address0 { O 4 vector } wt_buff_7_1_V_ce0 { O 1 bit } wt_buff_7_1_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_7_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 178 \
    name wt_buff_7_2_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename wt_buff_7_2_V \
    op interface \
    ports { wt_buff_7_2_V_address0 { O 4 vector } wt_buff_7_2_V_ce0 { O 1 bit } wt_buff_7_2_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wt_buff_7_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 212 \
    name fm_out_buff_0_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename fm_out_buff_0_V \
    op interface \
    ports { fm_out_buff_0_V_address0 { O 10 vector } fm_out_buff_0_V_ce0 { O 1 bit } fm_out_buff_0_V_q0 { I 16 vector } fm_out_buff_0_V_address1 { O 10 vector } fm_out_buff_0_V_ce1 { O 1 bit } fm_out_buff_0_V_we1 { O 1 bit } fm_out_buff_0_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fm_out_buff_0_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 213 \
    name fm_out_buff_1_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename fm_out_buff_1_V \
    op interface \
    ports { fm_out_buff_1_V_address0 { O 10 vector } fm_out_buff_1_V_ce0 { O 1 bit } fm_out_buff_1_V_q0 { I 16 vector } fm_out_buff_1_V_address1 { O 10 vector } fm_out_buff_1_V_ce1 { O 1 bit } fm_out_buff_1_V_we1 { O 1 bit } fm_out_buff_1_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fm_out_buff_1_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 214 \
    name fm_out_buff_2_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename fm_out_buff_2_V \
    op interface \
    ports { fm_out_buff_2_V_address0 { O 10 vector } fm_out_buff_2_V_ce0 { O 1 bit } fm_out_buff_2_V_q0 { I 16 vector } fm_out_buff_2_V_address1 { O 10 vector } fm_out_buff_2_V_ce1 { O 1 bit } fm_out_buff_2_V_we1 { O 1 bit } fm_out_buff_2_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fm_out_buff_2_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 215 \
    name fm_out_buff_3_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename fm_out_buff_3_V \
    op interface \
    ports { fm_out_buff_3_V_address0 { O 10 vector } fm_out_buff_3_V_ce0 { O 1 bit } fm_out_buff_3_V_q0 { I 16 vector } fm_out_buff_3_V_address1 { O 10 vector } fm_out_buff_3_V_ce1 { O 1 bit } fm_out_buff_3_V_we1 { O 1 bit } fm_out_buff_3_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fm_out_buff_3_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 216 \
    name fm_out_buff_4_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename fm_out_buff_4_V \
    op interface \
    ports { fm_out_buff_4_V_address0 { O 10 vector } fm_out_buff_4_V_ce0 { O 1 bit } fm_out_buff_4_V_q0 { I 16 vector } fm_out_buff_4_V_address1 { O 10 vector } fm_out_buff_4_V_ce1 { O 1 bit } fm_out_buff_4_V_we1 { O 1 bit } fm_out_buff_4_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fm_out_buff_4_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 217 \
    name fm_out_buff_5_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename fm_out_buff_5_V \
    op interface \
    ports { fm_out_buff_5_V_address0 { O 10 vector } fm_out_buff_5_V_ce0 { O 1 bit } fm_out_buff_5_V_q0 { I 16 vector } fm_out_buff_5_V_address1 { O 10 vector } fm_out_buff_5_V_ce1 { O 1 bit } fm_out_buff_5_V_we1 { O 1 bit } fm_out_buff_5_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fm_out_buff_5_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 218 \
    name fm_out_buff_6_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename fm_out_buff_6_V \
    op interface \
    ports { fm_out_buff_6_V_address0 { O 10 vector } fm_out_buff_6_V_ce0 { O 1 bit } fm_out_buff_6_V_q0 { I 16 vector } fm_out_buff_6_V_address1 { O 10 vector } fm_out_buff_6_V_ce1 { O 1 bit } fm_out_buff_6_V_we1 { O 1 bit } fm_out_buff_6_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fm_out_buff_6_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 219 \
    name fm_out_buff_7_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename fm_out_buff_7_V \
    op interface \
    ports { fm_out_buff_7_V_address0 { O 10 vector } fm_out_buff_7_V_ce0 { O 1 bit } fm_out_buff_7_V_q0 { I 16 vector } fm_out_buff_7_V_address1 { O 10 vector } fm_out_buff_7_V_ce1 { O 1 bit } fm_out_buff_7_V_we1 { O 1 bit } fm_out_buff_7_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'fm_out_buff_7_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name bias_buff_0_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_0_V \
    op interface \
    ports { bias_buff_0_V_dout { I 16 vector } bias_buff_0_V_empty_n { I 1 bit } bias_buff_0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name bias_buff_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_1_V \
    op interface \
    ports { bias_buff_1_V_dout { I 16 vector } bias_buff_1_V_empty_n { I 1 bit } bias_buff_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name bias_buff_2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_2_V \
    op interface \
    ports { bias_buff_2_V_dout { I 16 vector } bias_buff_2_V_empty_n { I 1 bit } bias_buff_2_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name bias_buff_3_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_3_V \
    op interface \
    ports { bias_buff_3_V_dout { I 16 vector } bias_buff_3_V_empty_n { I 1 bit } bias_buff_3_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name bias_buff_4_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_4_V \
    op interface \
    ports { bias_buff_4_V_dout { I 16 vector } bias_buff_4_V_empty_n { I 1 bit } bias_buff_4_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name bias_buff_5_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_5_V \
    op interface \
    ports { bias_buff_5_V_dout { I 16 vector } bias_buff_5_V_empty_n { I 1 bit } bias_buff_5_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name bias_buff_6_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_6_V \
    op interface \
    ports { bias_buff_6_V_dout { I 16 vector } bias_buff_6_V_empty_n { I 1 bit } bias_buff_6_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name bias_buff_7_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_7_V \
    op interface \
    ports { bias_buff_7_V_dout { I 16 vector } bias_buff_7_V_empty_n { I 1 bit } bias_buff_7_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name bias_buff_8_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_8_V \
    op interface \
    ports { bias_buff_8_V_dout { I 16 vector } bias_buff_8_V_empty_n { I 1 bit } bias_buff_8_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name bias_buff_9_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_9_V \
    op interface \
    ports { bias_buff_9_V_dout { I 16 vector } bias_buff_9_V_empty_n { I 1 bit } bias_buff_9_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name bias_buff_10_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_10_V \
    op interface \
    ports { bias_buff_10_V_dout { I 16 vector } bias_buff_10_V_empty_n { I 1 bit } bias_buff_10_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name bias_buff_11_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_11_V \
    op interface \
    ports { bias_buff_11_V_dout { I 16 vector } bias_buff_11_V_empty_n { I 1 bit } bias_buff_11_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name bias_buff_12_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_12_V \
    op interface \
    ports { bias_buff_12_V_dout { I 16 vector } bias_buff_12_V_empty_n { I 1 bit } bias_buff_12_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name bias_buff_13_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_13_V \
    op interface \
    ports { bias_buff_13_V_dout { I 16 vector } bias_buff_13_V_empty_n { I 1 bit } bias_buff_13_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name bias_buff_14_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_14_V \
    op interface \
    ports { bias_buff_14_V_dout { I 16 vector } bias_buff_14_V_empty_n { I 1 bit } bias_buff_14_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name bias_buff_15_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_15_V \
    op interface \
    ports { bias_buff_15_V_dout { I 16 vector } bias_buff_15_V_empty_n { I 1 bit } bias_buff_15_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name bias_buff_16_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_16_V \
    op interface \
    ports { bias_buff_16_V_dout { I 16 vector } bias_buff_16_V_empty_n { I 1 bit } bias_buff_16_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name bias_buff_17_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_17_V \
    op interface \
    ports { bias_buff_17_V_dout { I 16 vector } bias_buff_17_V_empty_n { I 1 bit } bias_buff_17_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name bias_buff_18_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_18_V \
    op interface \
    ports { bias_buff_18_V_dout { I 16 vector } bias_buff_18_V_empty_n { I 1 bit } bias_buff_18_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name bias_buff_19_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_19_V \
    op interface \
    ports { bias_buff_19_V_dout { I 16 vector } bias_buff_19_V_empty_n { I 1 bit } bias_buff_19_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name bias_buff_20_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_20_V \
    op interface \
    ports { bias_buff_20_V_dout { I 16 vector } bias_buff_20_V_empty_n { I 1 bit } bias_buff_20_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name bias_buff_21_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_21_V \
    op interface \
    ports { bias_buff_21_V_dout { I 16 vector } bias_buff_21_V_empty_n { I 1 bit } bias_buff_21_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name bias_buff_22_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_22_V \
    op interface \
    ports { bias_buff_22_V_dout { I 16 vector } bias_buff_22_V_empty_n { I 1 bit } bias_buff_22_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name bias_buff_23_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_23_V \
    op interface \
    ports { bias_buff_23_V_dout { I 16 vector } bias_buff_23_V_empty_n { I 1 bit } bias_buff_23_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name bias_buff_24_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_24_V \
    op interface \
    ports { bias_buff_24_V_dout { I 16 vector } bias_buff_24_V_empty_n { I 1 bit } bias_buff_24_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name bias_buff_25_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_25_V \
    op interface \
    ports { bias_buff_25_V_dout { I 16 vector } bias_buff_25_V_empty_n { I 1 bit } bias_buff_25_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name bias_buff_26_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_26_V \
    op interface \
    ports { bias_buff_26_V_dout { I 16 vector } bias_buff_26_V_empty_n { I 1 bit } bias_buff_26_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name bias_buff_27_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_27_V \
    op interface \
    ports { bias_buff_27_V_dout { I 16 vector } bias_buff_27_V_empty_n { I 1 bit } bias_buff_27_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name bias_buff_28_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_28_V \
    op interface \
    ports { bias_buff_28_V_dout { I 16 vector } bias_buff_28_V_empty_n { I 1 bit } bias_buff_28_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name bias_buff_29_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_29_V \
    op interface \
    ports { bias_buff_29_V_dout { I 16 vector } bias_buff_29_V_empty_n { I 1 bit } bias_buff_29_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name bias_buff_30_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_30_V \
    op interface \
    ports { bias_buff_30_V_dout { I 16 vector } bias_buff_30_V_empty_n { I 1 bit } bias_buff_30_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name bias_buff_31_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_31_V \
    op interface \
    ports { bias_buff_31_V_dout { I 16 vector } bias_buff_31_V_empty_n { I 1 bit } bias_buff_31_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name bias_buff_V_offset \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_V_offset \
    op interface \
    ports { bias_buff_V_offset_dout { I 5 vector } bias_buff_V_offset_empty_n { I 1 bit } bias_buff_V_offset_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name bias_buff_V_offset_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_buff_V_offset_out \
    op interface \
    ports { bias_buff_V_offset_out_din { O 5 vector } bias_buff_V_offset_out_full_n { I 1 bit } bias_buff_V_offset_out_write { O 1 bit } } \
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


