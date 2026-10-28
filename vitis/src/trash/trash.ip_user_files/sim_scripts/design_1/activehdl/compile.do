vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_6
vlib activehdl/processing_system7_vip_v1_0_8
vlib activehdl/xil_defaultlib
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_20
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/axi_data_fifo_v2_1_19
vlib activehdl/axi_crossbar_v2_1_21
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_fifo_v1_0_14
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/lib_bmg_v1_0_13
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/axi_datamover_v5_1_22
vlib activehdl/axi_vdma_v6_3_8
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/v_tc_v6_1_13
vlib activehdl/v_vid_in_axi4s_v4_0_9
vlib activehdl/v_axi4s_vid_out_v4_0_10
vlib activehdl/v_tc_v6_2_0
vlib activehdl/axi_sg_v4_1_13
vlib activehdl/axi_cdma_v4_1_20
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_register_slice_v1_1_20
vlib activehdl/axis_dwidth_converter_v1_1_19
vlib activehdl/axis_subset_converter_v1_1_20
vlib activehdl/axi_protocol_converter_v2_1_20
vlib activehdl/axi_clock_converter_v2_1_19
vlib activehdl/axi_dwidth_converter_v2_1_20
vlib activehdl/axi_mmu_v2_1_18

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 activehdl/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 activehdl/processing_system7_vip_v1_0_8
vmap xil_defaultlib activehdl/xil_defaultlib
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_20 activehdl/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 activehdl/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 activehdl/axi_crossbar_v2_1_21
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_14 activehdl/lib_fifo_v1_0_14
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap lib_bmg_v1_0_13 activehdl/lib_bmg_v1_0_13
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_22 activehdl/axi_datamover_v5_1_22
vmap axi_vdma_v6_3_8 activehdl/axi_vdma_v6_3_8
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_13 activehdl/v_tc_v6_1_13
vmap v_vid_in_axi4s_v4_0_9 activehdl/v_vid_in_axi4s_v4_0_9
vmap v_axi4s_vid_out_v4_0_10 activehdl/v_axi4s_vid_out_v4_0_10
vmap v_tc_v6_2_0 activehdl/v_tc_v6_2_0
vmap axi_sg_v4_1_13 activehdl/axi_sg_v4_1_13
vmap axi_cdma_v4_1_20 activehdl/axi_cdma_v4_1_20
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_20 activehdl/axis_register_slice_v1_1_20
vmap axis_dwidth_converter_v1_1_19 activehdl/axis_dwidth_converter_v1_1_19
vmap axis_subset_converter_v1_1_20 activehdl/axis_subset_converter_v1_1_20
vmap axi_protocol_converter_v2_1_20 activehdl/axi_protocol_converter_v2_1_20
vmap axi_clock_converter_v2_1_19 activehdl/axi_clock_converter_v2_1_19
vmap axi_dwidth_converter_v2_1_20 activehdl/axi_dwidth_converter_v2_1_20
vmap axi_mmu_v2_1_18 activehdl/axi_mmu_v2_1_18

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"D:/xlinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/xlinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/xlinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/xlinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/xlinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/xlinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/xlinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/xlinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/xlinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"D:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/xlinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6  -sv2k12 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8  -sv2k12 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/compute.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/fc_am_addmul_16s_Zio.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/fc_CTRL_s_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/fc_IN_r_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/fc_mac_muladd_11nYie.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/fc_mul_mul_16s_160iy.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/fc_mux_63_16_1_1.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/fc_mux_83_16_1_1.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/fc_O_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/fc_W_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/fc_wt_buff1_V.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/load_feature.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/load_feature_buffbkb.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/load_weight.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0efc/hdl/verilog/fc.v" \
"../../../bd/design_1/ip/design_1_fc_0_0/sim/design_1_fc_0_0.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/compute5.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/compute_output.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_CTRL_s_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_fm_in_buff1_OgC.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_IN1_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_IN2_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_IN3_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_mac_muladd_1hbi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_mac_muladd_6dEe.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_mac_muladd_7eOg.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_mul_mul_16s_fYi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_mux_325_16_1_1.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_OUT_r_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_urem_5ns_5nscud.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_urem_11ns_6ng8j.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_urem_12ns_7nbkb.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv_W_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/dataflow_in_loop.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/dataflow_in_loop_Gfk.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/dataflow_in_loop_Gfk_memcore.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/dataflow_in_loop_ibs.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/dataflow_in_loop_ibs_memcore.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/fifo_w5_d2_A.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/fifo_w16_d2_A.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/fifo_w29_d3_A.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/fifo_w32_d3_A.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/load_input.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/load_weight5427.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/store_output.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/976d/hdl/verilog/conv.v" \
"../../../bd/design_1/ip/design_1_conv_0_0/sim/design_1_conv_0_0.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/40bd/hdl/verilog/shortcut_CTRL_s_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/40bd/hdl/verilog/shortcut_IN1_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/40bd/hdl/verilog/shortcut_IN2_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/40bd/hdl/verilog/shortcut_OUT_r_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/40bd/hdl/verilog/shortcut.v" \
"../../../bd/design_1/ip/design_1_shortcut_0_0/sim/design_1_shortcut_0_0.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/compute.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/compute_1.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/compute_output.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/compute_output_fmibs.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/dwconv.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/dwconv_bias_buff_bom.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/dwconv_fm_in_buffShg.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/dwconv_fm_out_buf8jQ.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/dwconv_wt_buff1_0_V.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/load_bias.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/load_input.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/load_input_1.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/load_weight.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/load_weight_1.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/load_wrapper.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwconv.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwconv_bias_buff_tde.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwconv_fm_out1_0_V.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_am_addmufYi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_am_addmug8j.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_CTRL_s_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mac_mulaOgC.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mac_mulaPgM.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mul_16nsMgi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mul_16nsqcK.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mul_31s_sc4.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mul_32s_bkb.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mul_32s_JfO.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mul_32s_KfY.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mul_32s_Rg6.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mul_mul_cud.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mul_mul_hbi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mux_164_dEe.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_mux_164_eOg.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_PBUS1_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_PBUS2_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_PBUS3_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_PBUS4_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_SBUS1_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_SBUS2_m_axi.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_urem_6nsQgW.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_urem_7nsNgs.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_urem_8nsLf8.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv_urem_38nrcU.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/store_output.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/store_output_1.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/update_three_block.v" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d850/hdl/verilog/pwdwconv.v" \
"../../../bd/design_1/ip/design_1_pwdwconv_0_0/sim/design_1_pwdwconv_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
"../../../bd/design_1/ip/design_1_xbar_2/sim/design_1_xbar_2.v" \
"../../../bd/design_1/ip/design_1_xbar_3/sim/design_1_xbar_3.v" \
"../../../bd/design_1/ip/design_1_xbar_4/sim/design_1_xbar_4.v" \
"../../../bd/design_1/sim/design_1.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_13 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/af67/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_22 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/1e40/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_8  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_8 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_13 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/b92e/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_9  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/b2aa/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_10  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/a87e/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \
"../../../bd/design_1/ip/design_1_v_vid_in_axi4s_0_0/sim/design_1_v_vid_in_axi4s_0_0.v" \

vcom -work v_tc_v6_2_0 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/111e/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \

vcom -work axi_sg_v4_1_13 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_cdma_v4_1_20 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/02b1/hdl/axi_cdma_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_cdma_0_0/sim/design_1_axi_cdma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_5/sim/design_1_xbar_5.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_rgb888torgb565_0_0/sim/design_1_rgb888torgb565_0_0.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_20  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/00d6/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_19  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/f22d/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_dwidth_converter_0_0/sim/design_1_axis_dwidth_converter_0_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_1/hdl/tdata_design_1_axis_subset_converter_0_1.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_1/hdl/tuser_design_1_axis_subset_converter_0_1.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_1/hdl/tstrb_design_1_axis_subset_converter_0_1.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_1/hdl/tkeep_design_1_axis_subset_converter_0_1.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_1/hdl/tid_design_1_axis_subset_converter_0_1.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_1/hdl/tdest_design_1_axis_subset_converter_0_1.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_1/hdl/tlast_design_1_axis_subset_converter_0_1.v" \

vlog -work axis_subset_converter_v1_1_20  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/949e/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_1/hdl/top_design_1_axis_subset_converter_0_1.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_0_1/sim/design_1_axis_subset_converter_0_1.v" \

vlog -work axi_protocol_converter_v2_1_20  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_19  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/9e81/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_20  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/d394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_us_1/sim/design_1_auto_us_1.v" \
"../../../bd/design_1/ip/design_1_auto_us_2/sim/design_1_auto_us_2.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_us_3/sim/design_1_auto_us_3.v" \
"../../../bd/design_1/ip/design_1_auto_us_4/sim/design_1_auto_us_4.v" \
"../../../bd/design_1/ip/design_1_auto_us_5/sim/design_1_auto_us_5.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \

vlog -work axi_mmu_v2_1_18  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../trash.srcs/sources_1/bd/design_1/ipshared/cba0/hdl/axi_mmu_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/798b/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../trash.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/xlinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_s04_mmu_0/sim/design_1_s04_mmu_0.v" \
"../../../bd/design_1/ip/design_1_s05_mmu_0/sim/design_1_s05_mmu_0.v" \
"../../../bd/design_1/ip/design_1_auto_us_6/sim/design_1_auto_us_6.v" \
"../../../bd/design_1/ip/design_1_auto_us_7/sim/design_1_auto_us_7.v" \
"../../../bd/design_1/ip/design_1_auto_us_8/sim/design_1_auto_us_8.v" \
"../../../bd/design_1/ip/design_1_auto_us_9/sim/design_1_auto_us_9.v" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \
"../../../bd/design_1/ip/design_1_s04_mmu_1/sim/design_1_s04_mmu_1.v" \
"../../../bd/design_1/ip/design_1_s05_mmu_1/sim/design_1_s05_mmu_1.v" \
"../../../bd/design_1/ip/design_1_auto_us_10/sim/design_1_auto_us_10.v" \
"../../../bd/design_1/ip/design_1_auto_pc_3/sim/design_1_auto_pc_3.v" \
"../../../bd/design_1/ip/design_1_auto_pc_4/sim/design_1_auto_pc_4.v" \

vlog -work xil_defaultlib \
"glbl.v"

