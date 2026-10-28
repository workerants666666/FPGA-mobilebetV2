set moduleName load_weight5427
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {load_weight5427}
set C_modelType { void 0 }
set C_modelArgList {
	{ weight_V int 16 regular {axi_master 0}  }
	{ weight_V_offset int 31 regular  }
	{ wt_buff_0_0_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_0_1_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_0_2_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_1_0_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_1_1_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_1_2_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_2_0_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_2_1_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_2_2_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_3_0_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_3_1_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_3_2_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_4_0_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_4_1_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_4_2_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_5_0_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_5_1_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_5_2_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_6_0_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_6_1_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_6_2_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_7_0_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_7_1_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ wt_buff_7_2_V int 16 regular {array 9 { 0 3 } 0 1 }  }
	{ ch_0_i int 6 regular  }
	{ p_read int 16 regular  }
	{ p_read1 int 16 regular  }
	{ p_read2 int 16 regular  }
	{ p_read3 int 16 regular  }
	{ p_read4 int 16 regular  }
	{ p_read5 int 16 regular  }
	{ p_read6 int 16 regular  }
	{ p_read7 int 16 regular  }
	{ p_read8 int 16 regular  }
	{ p_read9 int 16 regular  }
	{ p_read10 int 16 regular  }
	{ p_read11 int 16 regular  }
	{ p_read12 int 16 regular  }
	{ p_read13 int 16 regular  }
	{ p_read14 int 16 regular  }
	{ p_read15 int 16 regular  }
	{ p_read16 int 16 regular  }
	{ p_read17 int 16 regular  }
	{ p_read18 int 16 regular  }
	{ p_read19 int 16 regular  }
	{ p_read20 int 16 regular  }
	{ p_read21 int 16 regular  }
	{ p_read22 int 16 regular  }
	{ p_read23 int 16 regular  }
	{ p_read24 int 16 regular  }
	{ p_read25 int 16 regular  }
	{ p_read26 int 16 regular  }
	{ p_read27 int 16 regular  }
	{ p_read28 int 16 regular  }
	{ p_read29 int 16 regular  }
	{ p_read30 int 16 regular  }
	{ p_read31 int 16 regular  }
	{ row int 32 regular  }
	{ col int 32 regular  }
	{ ch_0_i_c int 5 regular {fifo 1}  }
	{ bias_buff_0_V_c int 16 regular {fifo 1}  }
	{ bias_buff_1_V_c int 16 regular {fifo 1}  }
	{ bias_buff_2_V_c int 16 regular {fifo 1}  }
	{ bias_buff_3_V_c int 16 regular {fifo 1}  }
	{ bias_buff_4_V_c int 16 regular {fifo 1}  }
	{ bias_buff_5_V_c int 16 regular {fifo 1}  }
	{ bias_buff_6_V_c int 16 regular {fifo 1}  }
	{ bias_buff_7_V_c int 16 regular {fifo 1}  }
	{ bias_buff_8_V_c int 16 regular {fifo 1}  }
	{ bias_buff_9_V_c int 16 regular {fifo 1}  }
	{ bias_buff_10_V_c int 16 regular {fifo 1}  }
	{ bias_buff_11_V_c int 16 regular {fifo 1}  }
	{ bias_buff_12_V_c int 16 regular {fifo 1}  }
	{ bias_buff_13_V_c int 16 regular {fifo 1}  }
	{ bias_buff_14_V_c int 16 regular {fifo 1}  }
	{ bias_buff_15_V_c int 16 regular {fifo 1}  }
	{ bias_buff_16_V_c int 16 regular {fifo 1}  }
	{ bias_buff_17_V_c int 16 regular {fifo 1}  }
	{ bias_buff_18_V_c int 16 regular {fifo 1}  }
	{ bias_buff_19_V_c int 16 regular {fifo 1}  }
	{ bias_buff_20_V_c int 16 regular {fifo 1}  }
	{ bias_buff_21_V_c int 16 regular {fifo 1}  }
	{ bias_buff_22_V_c int 16 regular {fifo 1}  }
	{ bias_buff_23_V_c int 16 regular {fifo 1}  }
	{ bias_buff_24_V_c int 16 regular {fifo 1}  }
	{ bias_buff_25_V_c int 16 regular {fifo 1}  }
	{ bias_buff_26_V_c int 16 regular {fifo 1}  }
	{ bias_buff_27_V_c int 16 regular {fifo 1}  }
	{ bias_buff_28_V_c int 16 regular {fifo 1}  }
	{ bias_buff_29_V_c int 16 regular {fifo 1}  }
	{ bias_buff_30_V_c int 16 regular {fifo 1}  }
	{ bias_buff_31_V_c int 16 regular {fifo 1}  }
	{ row_c int 32 regular {fifo 1}  }
	{ col_c int 32 regular {fifo 1}  }
	{ out_V_offset int 29 regular  }
	{ out_V_offset_out int 29 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weight_V", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "weight_V_offset", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_0_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_0_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_1_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_1_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_1_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_2_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_2_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_2_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_3_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_3_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_3_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_4_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_4_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_4_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_5_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_5_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_5_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_6_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_6_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_6_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_7_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_7_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wt_buff_7_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ch_0_i", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read20", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read21", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read22", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read23", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read24", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read26", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read27", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read28", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read29", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read30", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_read31", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "row", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "col", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ch_0_i_c", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_0_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_1_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_2_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_3_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_4_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_5_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_6_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_7_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_8_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_9_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_10_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_11_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_12_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_13_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_14_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_15_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_16_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_17_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_18_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_19_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_20_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_21_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_22_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_23_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_24_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_25_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_26_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_27_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_28_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_29_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_30_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_buff_31_V_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "row_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "col_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_V_offset", "interface" : "wire", "bitwidth" : 29, "direction" : "READONLY"} , 
 	{ "Name" : "out_V_offset_out", "interface" : "fifo", "bitwidth" : 29, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 293
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_weight_V_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_weight_V_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_weight_V_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_weight_V_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_weight_V_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_weight_V_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_weight_V_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_weight_V_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_weight_V_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_weight_V_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_weight_V_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_weight_V_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_weight_V_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_weight_V_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_weight_V_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_weight_V_WDATA sc_out sc_lv 16 signal 0 } 
	{ m_axi_weight_V_WSTRB sc_out sc_lv 2 signal 0 } 
	{ m_axi_weight_V_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_weight_V_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_weight_V_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_weight_V_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_weight_V_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_weight_V_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_weight_V_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_weight_V_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_weight_V_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_weight_V_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_weight_V_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_weight_V_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_weight_V_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_weight_V_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_weight_V_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_weight_V_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_weight_V_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_weight_V_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_weight_V_RDATA sc_in sc_lv 16 signal 0 } 
	{ m_axi_weight_V_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_weight_V_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_weight_V_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_weight_V_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_weight_V_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_weight_V_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_weight_V_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_weight_V_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_weight_V_BUSER sc_in sc_lv 1 signal 0 } 
	{ weight_V_offset sc_in sc_lv 31 signal 1 } 
	{ wt_buff_0_0_V_address0 sc_out sc_lv 4 signal 2 } 
	{ wt_buff_0_0_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ wt_buff_0_0_V_we0 sc_out sc_logic 1 signal 2 } 
	{ wt_buff_0_0_V_d0 sc_out sc_lv 16 signal 2 } 
	{ wt_buff_0_1_V_address0 sc_out sc_lv 4 signal 3 } 
	{ wt_buff_0_1_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ wt_buff_0_1_V_we0 sc_out sc_logic 1 signal 3 } 
	{ wt_buff_0_1_V_d0 sc_out sc_lv 16 signal 3 } 
	{ wt_buff_0_2_V_address0 sc_out sc_lv 4 signal 4 } 
	{ wt_buff_0_2_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ wt_buff_0_2_V_we0 sc_out sc_logic 1 signal 4 } 
	{ wt_buff_0_2_V_d0 sc_out sc_lv 16 signal 4 } 
	{ wt_buff_1_0_V_address0 sc_out sc_lv 4 signal 5 } 
	{ wt_buff_1_0_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ wt_buff_1_0_V_we0 sc_out sc_logic 1 signal 5 } 
	{ wt_buff_1_0_V_d0 sc_out sc_lv 16 signal 5 } 
	{ wt_buff_1_1_V_address0 sc_out sc_lv 4 signal 6 } 
	{ wt_buff_1_1_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ wt_buff_1_1_V_we0 sc_out sc_logic 1 signal 6 } 
	{ wt_buff_1_1_V_d0 sc_out sc_lv 16 signal 6 } 
	{ wt_buff_1_2_V_address0 sc_out sc_lv 4 signal 7 } 
	{ wt_buff_1_2_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ wt_buff_1_2_V_we0 sc_out sc_logic 1 signal 7 } 
	{ wt_buff_1_2_V_d0 sc_out sc_lv 16 signal 7 } 
	{ wt_buff_2_0_V_address0 sc_out sc_lv 4 signal 8 } 
	{ wt_buff_2_0_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ wt_buff_2_0_V_we0 sc_out sc_logic 1 signal 8 } 
	{ wt_buff_2_0_V_d0 sc_out sc_lv 16 signal 8 } 
	{ wt_buff_2_1_V_address0 sc_out sc_lv 4 signal 9 } 
	{ wt_buff_2_1_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ wt_buff_2_1_V_we0 sc_out sc_logic 1 signal 9 } 
	{ wt_buff_2_1_V_d0 sc_out sc_lv 16 signal 9 } 
	{ wt_buff_2_2_V_address0 sc_out sc_lv 4 signal 10 } 
	{ wt_buff_2_2_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ wt_buff_2_2_V_we0 sc_out sc_logic 1 signal 10 } 
	{ wt_buff_2_2_V_d0 sc_out sc_lv 16 signal 10 } 
	{ wt_buff_3_0_V_address0 sc_out sc_lv 4 signal 11 } 
	{ wt_buff_3_0_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ wt_buff_3_0_V_we0 sc_out sc_logic 1 signal 11 } 
	{ wt_buff_3_0_V_d0 sc_out sc_lv 16 signal 11 } 
	{ wt_buff_3_1_V_address0 sc_out sc_lv 4 signal 12 } 
	{ wt_buff_3_1_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ wt_buff_3_1_V_we0 sc_out sc_logic 1 signal 12 } 
	{ wt_buff_3_1_V_d0 sc_out sc_lv 16 signal 12 } 
	{ wt_buff_3_2_V_address0 sc_out sc_lv 4 signal 13 } 
	{ wt_buff_3_2_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ wt_buff_3_2_V_we0 sc_out sc_logic 1 signal 13 } 
	{ wt_buff_3_2_V_d0 sc_out sc_lv 16 signal 13 } 
	{ wt_buff_4_0_V_address0 sc_out sc_lv 4 signal 14 } 
	{ wt_buff_4_0_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ wt_buff_4_0_V_we0 sc_out sc_logic 1 signal 14 } 
	{ wt_buff_4_0_V_d0 sc_out sc_lv 16 signal 14 } 
	{ wt_buff_4_1_V_address0 sc_out sc_lv 4 signal 15 } 
	{ wt_buff_4_1_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ wt_buff_4_1_V_we0 sc_out sc_logic 1 signal 15 } 
	{ wt_buff_4_1_V_d0 sc_out sc_lv 16 signal 15 } 
	{ wt_buff_4_2_V_address0 sc_out sc_lv 4 signal 16 } 
	{ wt_buff_4_2_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ wt_buff_4_2_V_we0 sc_out sc_logic 1 signal 16 } 
	{ wt_buff_4_2_V_d0 sc_out sc_lv 16 signal 16 } 
	{ wt_buff_5_0_V_address0 sc_out sc_lv 4 signal 17 } 
	{ wt_buff_5_0_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ wt_buff_5_0_V_we0 sc_out sc_logic 1 signal 17 } 
	{ wt_buff_5_0_V_d0 sc_out sc_lv 16 signal 17 } 
	{ wt_buff_5_1_V_address0 sc_out sc_lv 4 signal 18 } 
	{ wt_buff_5_1_V_ce0 sc_out sc_logic 1 signal 18 } 
	{ wt_buff_5_1_V_we0 sc_out sc_logic 1 signal 18 } 
	{ wt_buff_5_1_V_d0 sc_out sc_lv 16 signal 18 } 
	{ wt_buff_5_2_V_address0 sc_out sc_lv 4 signal 19 } 
	{ wt_buff_5_2_V_ce0 sc_out sc_logic 1 signal 19 } 
	{ wt_buff_5_2_V_we0 sc_out sc_logic 1 signal 19 } 
	{ wt_buff_5_2_V_d0 sc_out sc_lv 16 signal 19 } 
	{ wt_buff_6_0_V_address0 sc_out sc_lv 4 signal 20 } 
	{ wt_buff_6_0_V_ce0 sc_out sc_logic 1 signal 20 } 
	{ wt_buff_6_0_V_we0 sc_out sc_logic 1 signal 20 } 
	{ wt_buff_6_0_V_d0 sc_out sc_lv 16 signal 20 } 
	{ wt_buff_6_1_V_address0 sc_out sc_lv 4 signal 21 } 
	{ wt_buff_6_1_V_ce0 sc_out sc_logic 1 signal 21 } 
	{ wt_buff_6_1_V_we0 sc_out sc_logic 1 signal 21 } 
	{ wt_buff_6_1_V_d0 sc_out sc_lv 16 signal 21 } 
	{ wt_buff_6_2_V_address0 sc_out sc_lv 4 signal 22 } 
	{ wt_buff_6_2_V_ce0 sc_out sc_logic 1 signal 22 } 
	{ wt_buff_6_2_V_we0 sc_out sc_logic 1 signal 22 } 
	{ wt_buff_6_2_V_d0 sc_out sc_lv 16 signal 22 } 
	{ wt_buff_7_0_V_address0 sc_out sc_lv 4 signal 23 } 
	{ wt_buff_7_0_V_ce0 sc_out sc_logic 1 signal 23 } 
	{ wt_buff_7_0_V_we0 sc_out sc_logic 1 signal 23 } 
	{ wt_buff_7_0_V_d0 sc_out sc_lv 16 signal 23 } 
	{ wt_buff_7_1_V_address0 sc_out sc_lv 4 signal 24 } 
	{ wt_buff_7_1_V_ce0 sc_out sc_logic 1 signal 24 } 
	{ wt_buff_7_1_V_we0 sc_out sc_logic 1 signal 24 } 
	{ wt_buff_7_1_V_d0 sc_out sc_lv 16 signal 24 } 
	{ wt_buff_7_2_V_address0 sc_out sc_lv 4 signal 25 } 
	{ wt_buff_7_2_V_ce0 sc_out sc_logic 1 signal 25 } 
	{ wt_buff_7_2_V_we0 sc_out sc_logic 1 signal 25 } 
	{ wt_buff_7_2_V_d0 sc_out sc_lv 16 signal 25 } 
	{ ch_0_i sc_in sc_lv 6 signal 26 } 
	{ p_read sc_in sc_lv 16 signal 27 } 
	{ p_read1 sc_in sc_lv 16 signal 28 } 
	{ p_read2 sc_in sc_lv 16 signal 29 } 
	{ p_read3 sc_in sc_lv 16 signal 30 } 
	{ p_read4 sc_in sc_lv 16 signal 31 } 
	{ p_read5 sc_in sc_lv 16 signal 32 } 
	{ p_read6 sc_in sc_lv 16 signal 33 } 
	{ p_read7 sc_in sc_lv 16 signal 34 } 
	{ p_read8 sc_in sc_lv 16 signal 35 } 
	{ p_read9 sc_in sc_lv 16 signal 36 } 
	{ p_read10 sc_in sc_lv 16 signal 37 } 
	{ p_read11 sc_in sc_lv 16 signal 38 } 
	{ p_read12 sc_in sc_lv 16 signal 39 } 
	{ p_read13 sc_in sc_lv 16 signal 40 } 
	{ p_read14 sc_in sc_lv 16 signal 41 } 
	{ p_read15 sc_in sc_lv 16 signal 42 } 
	{ p_read16 sc_in sc_lv 16 signal 43 } 
	{ p_read17 sc_in sc_lv 16 signal 44 } 
	{ p_read18 sc_in sc_lv 16 signal 45 } 
	{ p_read19 sc_in sc_lv 16 signal 46 } 
	{ p_read20 sc_in sc_lv 16 signal 47 } 
	{ p_read21 sc_in sc_lv 16 signal 48 } 
	{ p_read22 sc_in sc_lv 16 signal 49 } 
	{ p_read23 sc_in sc_lv 16 signal 50 } 
	{ p_read24 sc_in sc_lv 16 signal 51 } 
	{ p_read25 sc_in sc_lv 16 signal 52 } 
	{ p_read26 sc_in sc_lv 16 signal 53 } 
	{ p_read27 sc_in sc_lv 16 signal 54 } 
	{ p_read28 sc_in sc_lv 16 signal 55 } 
	{ p_read29 sc_in sc_lv 16 signal 56 } 
	{ p_read30 sc_in sc_lv 16 signal 57 } 
	{ p_read31 sc_in sc_lv 16 signal 58 } 
	{ row sc_in sc_lv 32 signal 59 } 
	{ col sc_in sc_lv 32 signal 60 } 
	{ ch_0_i_c_din sc_out sc_lv 5 signal 61 } 
	{ ch_0_i_c_full_n sc_in sc_logic 1 signal 61 } 
	{ ch_0_i_c_write sc_out sc_logic 1 signal 61 } 
	{ bias_buff_0_V_c_din sc_out sc_lv 16 signal 62 } 
	{ bias_buff_0_V_c_full_n sc_in sc_logic 1 signal 62 } 
	{ bias_buff_0_V_c_write sc_out sc_logic 1 signal 62 } 
	{ bias_buff_1_V_c_din sc_out sc_lv 16 signal 63 } 
	{ bias_buff_1_V_c_full_n sc_in sc_logic 1 signal 63 } 
	{ bias_buff_1_V_c_write sc_out sc_logic 1 signal 63 } 
	{ bias_buff_2_V_c_din sc_out sc_lv 16 signal 64 } 
	{ bias_buff_2_V_c_full_n sc_in sc_logic 1 signal 64 } 
	{ bias_buff_2_V_c_write sc_out sc_logic 1 signal 64 } 
	{ bias_buff_3_V_c_din sc_out sc_lv 16 signal 65 } 
	{ bias_buff_3_V_c_full_n sc_in sc_logic 1 signal 65 } 
	{ bias_buff_3_V_c_write sc_out sc_logic 1 signal 65 } 
	{ bias_buff_4_V_c_din sc_out sc_lv 16 signal 66 } 
	{ bias_buff_4_V_c_full_n sc_in sc_logic 1 signal 66 } 
	{ bias_buff_4_V_c_write sc_out sc_logic 1 signal 66 } 
	{ bias_buff_5_V_c_din sc_out sc_lv 16 signal 67 } 
	{ bias_buff_5_V_c_full_n sc_in sc_logic 1 signal 67 } 
	{ bias_buff_5_V_c_write sc_out sc_logic 1 signal 67 } 
	{ bias_buff_6_V_c_din sc_out sc_lv 16 signal 68 } 
	{ bias_buff_6_V_c_full_n sc_in sc_logic 1 signal 68 } 
	{ bias_buff_6_V_c_write sc_out sc_logic 1 signal 68 } 
	{ bias_buff_7_V_c_din sc_out sc_lv 16 signal 69 } 
	{ bias_buff_7_V_c_full_n sc_in sc_logic 1 signal 69 } 
	{ bias_buff_7_V_c_write sc_out sc_logic 1 signal 69 } 
	{ bias_buff_8_V_c_din sc_out sc_lv 16 signal 70 } 
	{ bias_buff_8_V_c_full_n sc_in sc_logic 1 signal 70 } 
	{ bias_buff_8_V_c_write sc_out sc_logic 1 signal 70 } 
	{ bias_buff_9_V_c_din sc_out sc_lv 16 signal 71 } 
	{ bias_buff_9_V_c_full_n sc_in sc_logic 1 signal 71 } 
	{ bias_buff_9_V_c_write sc_out sc_logic 1 signal 71 } 
	{ bias_buff_10_V_c_din sc_out sc_lv 16 signal 72 } 
	{ bias_buff_10_V_c_full_n sc_in sc_logic 1 signal 72 } 
	{ bias_buff_10_V_c_write sc_out sc_logic 1 signal 72 } 
	{ bias_buff_11_V_c_din sc_out sc_lv 16 signal 73 } 
	{ bias_buff_11_V_c_full_n sc_in sc_logic 1 signal 73 } 
	{ bias_buff_11_V_c_write sc_out sc_logic 1 signal 73 } 
	{ bias_buff_12_V_c_din sc_out sc_lv 16 signal 74 } 
	{ bias_buff_12_V_c_full_n sc_in sc_logic 1 signal 74 } 
	{ bias_buff_12_V_c_write sc_out sc_logic 1 signal 74 } 
	{ bias_buff_13_V_c_din sc_out sc_lv 16 signal 75 } 
	{ bias_buff_13_V_c_full_n sc_in sc_logic 1 signal 75 } 
	{ bias_buff_13_V_c_write sc_out sc_logic 1 signal 75 } 
	{ bias_buff_14_V_c_din sc_out sc_lv 16 signal 76 } 
	{ bias_buff_14_V_c_full_n sc_in sc_logic 1 signal 76 } 
	{ bias_buff_14_V_c_write sc_out sc_logic 1 signal 76 } 
	{ bias_buff_15_V_c_din sc_out sc_lv 16 signal 77 } 
	{ bias_buff_15_V_c_full_n sc_in sc_logic 1 signal 77 } 
	{ bias_buff_15_V_c_write sc_out sc_logic 1 signal 77 } 
	{ bias_buff_16_V_c_din sc_out sc_lv 16 signal 78 } 
	{ bias_buff_16_V_c_full_n sc_in sc_logic 1 signal 78 } 
	{ bias_buff_16_V_c_write sc_out sc_logic 1 signal 78 } 
	{ bias_buff_17_V_c_din sc_out sc_lv 16 signal 79 } 
	{ bias_buff_17_V_c_full_n sc_in sc_logic 1 signal 79 } 
	{ bias_buff_17_V_c_write sc_out sc_logic 1 signal 79 } 
	{ bias_buff_18_V_c_din sc_out sc_lv 16 signal 80 } 
	{ bias_buff_18_V_c_full_n sc_in sc_logic 1 signal 80 } 
	{ bias_buff_18_V_c_write sc_out sc_logic 1 signal 80 } 
	{ bias_buff_19_V_c_din sc_out sc_lv 16 signal 81 } 
	{ bias_buff_19_V_c_full_n sc_in sc_logic 1 signal 81 } 
	{ bias_buff_19_V_c_write sc_out sc_logic 1 signal 81 } 
	{ bias_buff_20_V_c_din sc_out sc_lv 16 signal 82 } 
	{ bias_buff_20_V_c_full_n sc_in sc_logic 1 signal 82 } 
	{ bias_buff_20_V_c_write sc_out sc_logic 1 signal 82 } 
	{ bias_buff_21_V_c_din sc_out sc_lv 16 signal 83 } 
	{ bias_buff_21_V_c_full_n sc_in sc_logic 1 signal 83 } 
	{ bias_buff_21_V_c_write sc_out sc_logic 1 signal 83 } 
	{ bias_buff_22_V_c_din sc_out sc_lv 16 signal 84 } 
	{ bias_buff_22_V_c_full_n sc_in sc_logic 1 signal 84 } 
	{ bias_buff_22_V_c_write sc_out sc_logic 1 signal 84 } 
	{ bias_buff_23_V_c_din sc_out sc_lv 16 signal 85 } 
	{ bias_buff_23_V_c_full_n sc_in sc_logic 1 signal 85 } 
	{ bias_buff_23_V_c_write sc_out sc_logic 1 signal 85 } 
	{ bias_buff_24_V_c_din sc_out sc_lv 16 signal 86 } 
	{ bias_buff_24_V_c_full_n sc_in sc_logic 1 signal 86 } 
	{ bias_buff_24_V_c_write sc_out sc_logic 1 signal 86 } 
	{ bias_buff_25_V_c_din sc_out sc_lv 16 signal 87 } 
	{ bias_buff_25_V_c_full_n sc_in sc_logic 1 signal 87 } 
	{ bias_buff_25_V_c_write sc_out sc_logic 1 signal 87 } 
	{ bias_buff_26_V_c_din sc_out sc_lv 16 signal 88 } 
	{ bias_buff_26_V_c_full_n sc_in sc_logic 1 signal 88 } 
	{ bias_buff_26_V_c_write sc_out sc_logic 1 signal 88 } 
	{ bias_buff_27_V_c_din sc_out sc_lv 16 signal 89 } 
	{ bias_buff_27_V_c_full_n sc_in sc_logic 1 signal 89 } 
	{ bias_buff_27_V_c_write sc_out sc_logic 1 signal 89 } 
	{ bias_buff_28_V_c_din sc_out sc_lv 16 signal 90 } 
	{ bias_buff_28_V_c_full_n sc_in sc_logic 1 signal 90 } 
	{ bias_buff_28_V_c_write sc_out sc_logic 1 signal 90 } 
	{ bias_buff_29_V_c_din sc_out sc_lv 16 signal 91 } 
	{ bias_buff_29_V_c_full_n sc_in sc_logic 1 signal 91 } 
	{ bias_buff_29_V_c_write sc_out sc_logic 1 signal 91 } 
	{ bias_buff_30_V_c_din sc_out sc_lv 16 signal 92 } 
	{ bias_buff_30_V_c_full_n sc_in sc_logic 1 signal 92 } 
	{ bias_buff_30_V_c_write sc_out sc_logic 1 signal 92 } 
	{ bias_buff_31_V_c_din sc_out sc_lv 16 signal 93 } 
	{ bias_buff_31_V_c_full_n sc_in sc_logic 1 signal 93 } 
	{ bias_buff_31_V_c_write sc_out sc_logic 1 signal 93 } 
	{ row_c_din sc_out sc_lv 32 signal 94 } 
	{ row_c_full_n sc_in sc_logic 1 signal 94 } 
	{ row_c_write sc_out sc_logic 1 signal 94 } 
	{ col_c_din sc_out sc_lv 32 signal 95 } 
	{ col_c_full_n sc_in sc_logic 1 signal 95 } 
	{ col_c_write sc_out sc_logic 1 signal 95 } 
	{ out_V_offset sc_in sc_lv 29 signal 96 } 
	{ out_V_offset_out_din sc_out sc_lv 29 signal 97 } 
	{ out_V_offset_out_full_n sc_in sc_logic 1 signal 97 } 
	{ out_V_offset_out_write sc_out sc_logic 1 signal 97 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_weight_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_weight_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_weight_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_weight_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "AWID" }} , 
 	{ "name": "m_axi_weight_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_weight_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weight_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_weight_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_weight_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_weight_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_weight_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weight_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_weight_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_weight_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_weight_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_weight_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_weight_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_weight_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_weight_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_weight_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_weight_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "WID" }} , 
 	{ "name": "m_axi_weight_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_weight_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_weight_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_weight_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_weight_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "ARID" }} , 
 	{ "name": "m_axi_weight_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weight_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_weight_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weight_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_weight_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_weight_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_weight_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_weight_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "weight_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_weight_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_weight_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "weight_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_weight_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_weight_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_weight_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_weight_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "weight_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_weight_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_weight_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "RID" }} , 
 	{ "name": "m_axi_weight_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_weight_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_weight_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_weight_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_weight_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "weight_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_weight_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "BID" }} , 
 	{ "name": "m_axi_weight_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_V", "role": "BUSER" }} , 
 	{ "name": "weight_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "weight_V_offset", "role": "default" }} , 
 	{ "name": "wt_buff_0_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_0_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_0_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_0_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_0_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_0_0_V", "role": "we0" }} , 
 	{ "name": "wt_buff_0_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_0_V", "role": "d0" }} , 
 	{ "name": "wt_buff_0_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_0_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_0_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_0_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_0_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_0_1_V", "role": "we0" }} , 
 	{ "name": "wt_buff_0_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_1_V", "role": "d0" }} , 
 	{ "name": "wt_buff_0_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_0_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_0_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_0_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_0_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_0_2_V", "role": "we0" }} , 
 	{ "name": "wt_buff_0_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_2_V", "role": "d0" }} , 
 	{ "name": "wt_buff_1_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_1_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_1_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_1_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_1_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_1_0_V", "role": "we0" }} , 
 	{ "name": "wt_buff_1_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_0_V", "role": "d0" }} , 
 	{ "name": "wt_buff_1_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_1_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_1_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_1_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_1_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_1_1_V", "role": "we0" }} , 
 	{ "name": "wt_buff_1_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_1_V", "role": "d0" }} , 
 	{ "name": "wt_buff_1_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_1_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_1_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_1_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_1_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_1_2_V", "role": "we0" }} , 
 	{ "name": "wt_buff_1_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_2_V", "role": "d0" }} , 
 	{ "name": "wt_buff_2_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_2_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_2_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_2_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_2_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_2_0_V", "role": "we0" }} , 
 	{ "name": "wt_buff_2_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_0_V", "role": "d0" }} , 
 	{ "name": "wt_buff_2_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_2_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_2_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_2_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_2_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_2_1_V", "role": "we0" }} , 
 	{ "name": "wt_buff_2_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_1_V", "role": "d0" }} , 
 	{ "name": "wt_buff_2_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_2_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_2_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_2_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_2_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_2_2_V", "role": "we0" }} , 
 	{ "name": "wt_buff_2_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_2_V", "role": "d0" }} , 
 	{ "name": "wt_buff_3_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_3_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_3_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_3_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_3_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_3_0_V", "role": "we0" }} , 
 	{ "name": "wt_buff_3_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_0_V", "role": "d0" }} , 
 	{ "name": "wt_buff_3_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_3_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_3_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_3_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_3_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_3_1_V", "role": "we0" }} , 
 	{ "name": "wt_buff_3_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_1_V", "role": "d0" }} , 
 	{ "name": "wt_buff_3_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_3_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_3_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_3_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_3_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_3_2_V", "role": "we0" }} , 
 	{ "name": "wt_buff_3_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_2_V", "role": "d0" }} , 
 	{ "name": "wt_buff_4_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_4_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_4_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_4_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_4_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_4_0_V", "role": "we0" }} , 
 	{ "name": "wt_buff_4_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_0_V", "role": "d0" }} , 
 	{ "name": "wt_buff_4_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_4_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_4_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_4_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_4_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_4_1_V", "role": "we0" }} , 
 	{ "name": "wt_buff_4_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_1_V", "role": "d0" }} , 
 	{ "name": "wt_buff_4_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_4_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_4_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_4_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_4_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_4_2_V", "role": "we0" }} , 
 	{ "name": "wt_buff_4_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_2_V", "role": "d0" }} , 
 	{ "name": "wt_buff_5_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_5_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_5_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_5_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_5_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_5_0_V", "role": "we0" }} , 
 	{ "name": "wt_buff_5_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_0_V", "role": "d0" }} , 
 	{ "name": "wt_buff_5_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_5_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_5_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_5_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_5_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_5_1_V", "role": "we0" }} , 
 	{ "name": "wt_buff_5_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_1_V", "role": "d0" }} , 
 	{ "name": "wt_buff_5_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_5_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_5_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_5_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_5_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_5_2_V", "role": "we0" }} , 
 	{ "name": "wt_buff_5_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_2_V", "role": "d0" }} , 
 	{ "name": "wt_buff_6_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_6_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_6_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_6_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_6_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_6_0_V", "role": "we0" }} , 
 	{ "name": "wt_buff_6_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_0_V", "role": "d0" }} , 
 	{ "name": "wt_buff_6_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_6_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_6_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_6_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_6_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_6_1_V", "role": "we0" }} , 
 	{ "name": "wt_buff_6_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_1_V", "role": "d0" }} , 
 	{ "name": "wt_buff_6_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_6_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_6_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_6_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_6_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_6_2_V", "role": "we0" }} , 
 	{ "name": "wt_buff_6_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_2_V", "role": "d0" }} , 
 	{ "name": "wt_buff_7_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_7_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_7_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_7_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_7_0_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_7_0_V", "role": "we0" }} , 
 	{ "name": "wt_buff_7_0_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_0_V", "role": "d0" }} , 
 	{ "name": "wt_buff_7_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_7_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_7_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_7_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_7_1_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_7_1_V", "role": "we0" }} , 
 	{ "name": "wt_buff_7_1_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_1_V", "role": "d0" }} , 
 	{ "name": "wt_buff_7_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_7_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_7_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_7_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_7_2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_7_2_V", "role": "we0" }} , 
 	{ "name": "wt_buff_7_2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_2_V", "role": "d0" }} , 
 	{ "name": "ch_0_i", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ch_0_i", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read19", "role": "default" }} , 
 	{ "name": "p_read20", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read20", "role": "default" }} , 
 	{ "name": "p_read21", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read21", "role": "default" }} , 
 	{ "name": "p_read22", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read22", "role": "default" }} , 
 	{ "name": "p_read23", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read23", "role": "default" }} , 
 	{ "name": "p_read24", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read24", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "p_read26", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read26", "role": "default" }} , 
 	{ "name": "p_read27", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read27", "role": "default" }} , 
 	{ "name": "p_read28", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read28", "role": "default" }} , 
 	{ "name": "p_read29", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read29", "role": "default" }} , 
 	{ "name": "p_read30", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read30", "role": "default" }} , 
 	{ "name": "p_read31", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read31", "role": "default" }} , 
 	{ "name": "row", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row", "role": "default" }} , 
 	{ "name": "col", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col", "role": "default" }} , 
 	{ "name": "ch_0_i_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ch_0_i_c", "role": "din" }} , 
 	{ "name": "ch_0_i_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch_0_i_c", "role": "full_n" }} , 
 	{ "name": "ch_0_i_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ch_0_i_c", "role": "write" }} , 
 	{ "name": "bias_buff_0_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_0_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_0_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_0_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_0_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_0_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_1_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_1_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_1_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_1_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_1_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_1_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_2_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_2_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_2_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_2_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_2_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_2_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_3_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_3_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_3_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_3_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_3_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_3_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_4_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_4_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_4_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_4_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_4_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_4_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_5_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_5_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_5_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_5_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_5_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_5_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_6_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_6_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_6_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_6_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_6_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_6_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_7_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_7_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_7_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_7_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_7_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_7_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_8_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_8_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_8_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_8_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_8_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_8_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_9_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_9_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_9_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_9_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_9_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_9_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_10_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_10_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_10_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_10_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_10_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_10_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_11_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_11_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_11_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_11_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_11_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_11_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_12_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_12_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_12_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_12_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_12_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_12_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_13_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_13_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_13_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_13_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_13_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_13_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_14_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_14_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_14_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_14_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_14_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_14_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_15_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_15_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_15_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_15_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_15_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_15_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_16_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_16_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_16_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_16_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_16_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_16_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_17_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_17_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_17_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_17_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_17_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_17_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_18_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_18_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_18_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_18_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_18_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_18_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_19_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_19_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_19_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_19_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_19_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_19_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_20_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_20_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_20_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_20_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_20_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_20_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_21_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_21_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_21_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_21_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_21_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_21_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_22_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_22_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_22_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_22_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_22_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_22_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_23_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_23_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_23_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_23_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_23_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_23_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_24_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_24_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_24_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_24_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_24_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_24_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_25_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_25_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_25_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_25_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_25_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_25_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_26_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_26_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_26_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_26_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_26_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_26_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_27_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_27_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_27_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_27_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_27_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_27_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_28_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_28_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_28_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_28_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_28_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_28_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_29_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_29_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_29_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_29_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_29_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_29_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_30_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_30_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_30_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_30_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_30_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_30_V_c", "role": "write" }} , 
 	{ "name": "bias_buff_31_V_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_31_V_c", "role": "din" }} , 
 	{ "name": "bias_buff_31_V_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_31_V_c", "role": "full_n" }} , 
 	{ "name": "bias_buff_31_V_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_31_V_c", "role": "write" }} , 
 	{ "name": "row_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "row_c", "role": "din" }} , 
 	{ "name": "row_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_c", "role": "full_n" }} , 
 	{ "name": "row_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "row_c", "role": "write" }} , 
 	{ "name": "col_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "col_c", "role": "din" }} , 
 	{ "name": "col_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_c", "role": "full_n" }} , 
 	{ "name": "col_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "col_c", "role": "write" }} , 
 	{ "name": "out_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":29, "type": "signal", "bundle":{"name": "out_V_offset", "role": "default" }} , 
 	{ "name": "out_V_offset_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":29, "type": "signal", "bundle":{"name": "out_V_offset_out", "role": "din" }} , 
 	{ "name": "out_V_offset_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_offset_out", "role": "full_n" }} , 
 	{ "name": "out_V_offset_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_offset_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "load_weight5427",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "234", "EstimateLatencyMax" : "234",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weight_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weight_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "weight_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "weight_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_buff_0_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_0_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_0_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_1_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_1_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_1_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_2_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_2_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_2_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_3_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_3_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_3_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_4_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_4_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_4_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_5_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_5_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_5_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_6_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_6_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_6_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_7_0_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_7_1_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_7_2_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "ch_0_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "row", "Type" : "None", "Direction" : "I"},
			{"Name" : "col", "Type" : "None", "Direction" : "I"},
			{"Name" : "ch_0_i_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ch_0_i_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_0_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_0_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_1_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_1_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_2_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_2_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_3_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_3_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_4_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_4_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_5_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_5_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_6_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_6_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_7_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_7_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_8_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_8_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_9_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_9_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_10_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_10_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_11_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_11_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_12_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_12_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_13_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_13_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_14_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_14_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_15_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_15_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_16_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_16_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_17_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_17_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_18_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_18_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_19_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_19_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_20_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_20_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_21_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_21_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_22_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_22_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_23_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_23_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_24_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_24_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_25_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_25_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_26_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_26_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_27_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_27_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_28_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_28_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_29_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_29_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_30_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_30_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_31_V_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_31_V_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "row_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "row_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "col_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "col_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "out_V_offset_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_urem_5ns_5nscud_U14", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mac_muladd_6dEe_U15", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_weight5427 {
		weight_V {Type I LastRead 17 FirstWrite -1}
		weight_V_offset {Type I LastRead 2 FirstWrite -1}
		wt_buff_0_0_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_0_1_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_0_2_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_1_0_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_1_1_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_1_2_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_2_0_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_2_1_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_2_2_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_3_0_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_3_1_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_3_2_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_4_0_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_4_1_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_4_2_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_5_0_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_5_1_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_5_2_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_6_0_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_6_1_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_6_2_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_7_0_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_7_1_V {Type O LastRead -1 FirstWrite 18}
		wt_buff_7_2_V {Type O LastRead -1 FirstWrite 18}
		ch_0_i {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		row {Type I LastRead 0 FirstWrite -1}
		col {Type I LastRead 0 FirstWrite -1}
		ch_0_i_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_0_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_1_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_2_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_3_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_4_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_5_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_6_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_7_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_8_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_9_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_10_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_11_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_12_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_13_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_14_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_15_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_16_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_17_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_18_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_19_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_20_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_21_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_22_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_23_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_24_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_25_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_26_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_27_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_28_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_29_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_30_V_c {Type O LastRead -1 FirstWrite 0}
		bias_buff_31_V_c {Type O LastRead -1 FirstWrite 0}
		row_c {Type O LastRead -1 FirstWrite 0}
		col_c {Type O LastRead -1 FirstWrite 0}
		out_V_offset {Type I LastRead 0 FirstWrite -1}
		out_V_offset_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "234", "Max" : "234"}
	, {"Name" : "Interval", "Min" : "234", "Max" : "234"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	weight_V { m_axi {  { m_axi_weight_V_AWVALID VALID 1 1 }  { m_axi_weight_V_AWREADY READY 0 1 }  { m_axi_weight_V_AWADDR ADDR 1 32 }  { m_axi_weight_V_AWID ID 1 1 }  { m_axi_weight_V_AWLEN LEN 1 32 }  { m_axi_weight_V_AWSIZE SIZE 1 3 }  { m_axi_weight_V_AWBURST BURST 1 2 }  { m_axi_weight_V_AWLOCK LOCK 1 2 }  { m_axi_weight_V_AWCACHE CACHE 1 4 }  { m_axi_weight_V_AWPROT PROT 1 3 }  { m_axi_weight_V_AWQOS QOS 1 4 }  { m_axi_weight_V_AWREGION REGION 1 4 }  { m_axi_weight_V_AWUSER USER 1 1 }  { m_axi_weight_V_WVALID VALID 1 1 }  { m_axi_weight_V_WREADY READY 0 1 }  { m_axi_weight_V_WDATA DATA 1 16 }  { m_axi_weight_V_WSTRB STRB 1 2 }  { m_axi_weight_V_WLAST LAST 1 1 }  { m_axi_weight_V_WID ID 1 1 }  { m_axi_weight_V_WUSER USER 1 1 }  { m_axi_weight_V_ARVALID VALID 1 1 }  { m_axi_weight_V_ARREADY READY 0 1 }  { m_axi_weight_V_ARADDR ADDR 1 32 }  { m_axi_weight_V_ARID ID 1 1 }  { m_axi_weight_V_ARLEN LEN 1 32 }  { m_axi_weight_V_ARSIZE SIZE 1 3 }  { m_axi_weight_V_ARBURST BURST 1 2 }  { m_axi_weight_V_ARLOCK LOCK 1 2 }  { m_axi_weight_V_ARCACHE CACHE 1 4 }  { m_axi_weight_V_ARPROT PROT 1 3 }  { m_axi_weight_V_ARQOS QOS 1 4 }  { m_axi_weight_V_ARREGION REGION 1 4 }  { m_axi_weight_V_ARUSER USER 1 1 }  { m_axi_weight_V_RVALID VALID 0 1 }  { m_axi_weight_V_RREADY READY 1 1 }  { m_axi_weight_V_RDATA DATA 0 16 }  { m_axi_weight_V_RLAST LAST 0 1 }  { m_axi_weight_V_RID ID 0 1 }  { m_axi_weight_V_RUSER USER 0 1 }  { m_axi_weight_V_RRESP RESP 0 2 }  { m_axi_weight_V_BVALID VALID 0 1 }  { m_axi_weight_V_BREADY READY 1 1 }  { m_axi_weight_V_BRESP RESP 0 2 }  { m_axi_weight_V_BID ID 0 1 }  { m_axi_weight_V_BUSER USER 0 1 } } }
	weight_V_offset { ap_none {  { weight_V_offset in_data 0 31 } } }
	wt_buff_0_0_V { ap_memory {  { wt_buff_0_0_V_address0 mem_address 1 4 }  { wt_buff_0_0_V_ce0 mem_ce 1 1 }  { wt_buff_0_0_V_we0 mem_we 1 1 }  { wt_buff_0_0_V_d0 mem_din 1 16 } } }
	wt_buff_0_1_V { ap_memory {  { wt_buff_0_1_V_address0 mem_address 1 4 }  { wt_buff_0_1_V_ce0 mem_ce 1 1 }  { wt_buff_0_1_V_we0 mem_we 1 1 }  { wt_buff_0_1_V_d0 mem_din 1 16 } } }
	wt_buff_0_2_V { ap_memory {  { wt_buff_0_2_V_address0 mem_address 1 4 }  { wt_buff_0_2_V_ce0 mem_ce 1 1 }  { wt_buff_0_2_V_we0 mem_we 1 1 }  { wt_buff_0_2_V_d0 mem_din 1 16 } } }
	wt_buff_1_0_V { ap_memory {  { wt_buff_1_0_V_address0 mem_address 1 4 }  { wt_buff_1_0_V_ce0 mem_ce 1 1 }  { wt_buff_1_0_V_we0 mem_we 1 1 }  { wt_buff_1_0_V_d0 mem_din 1 16 } } }
	wt_buff_1_1_V { ap_memory {  { wt_buff_1_1_V_address0 mem_address 1 4 }  { wt_buff_1_1_V_ce0 mem_ce 1 1 }  { wt_buff_1_1_V_we0 mem_we 1 1 }  { wt_buff_1_1_V_d0 mem_din 1 16 } } }
	wt_buff_1_2_V { ap_memory {  { wt_buff_1_2_V_address0 mem_address 1 4 }  { wt_buff_1_2_V_ce0 mem_ce 1 1 }  { wt_buff_1_2_V_we0 mem_we 1 1 }  { wt_buff_1_2_V_d0 mem_din 1 16 } } }
	wt_buff_2_0_V { ap_memory {  { wt_buff_2_0_V_address0 mem_address 1 4 }  { wt_buff_2_0_V_ce0 mem_ce 1 1 }  { wt_buff_2_0_V_we0 mem_we 1 1 }  { wt_buff_2_0_V_d0 mem_din 1 16 } } }
	wt_buff_2_1_V { ap_memory {  { wt_buff_2_1_V_address0 mem_address 1 4 }  { wt_buff_2_1_V_ce0 mem_ce 1 1 }  { wt_buff_2_1_V_we0 mem_we 1 1 }  { wt_buff_2_1_V_d0 mem_din 1 16 } } }
	wt_buff_2_2_V { ap_memory {  { wt_buff_2_2_V_address0 mem_address 1 4 }  { wt_buff_2_2_V_ce0 mem_ce 1 1 }  { wt_buff_2_2_V_we0 mem_we 1 1 }  { wt_buff_2_2_V_d0 mem_din 1 16 } } }
	wt_buff_3_0_V { ap_memory {  { wt_buff_3_0_V_address0 mem_address 1 4 }  { wt_buff_3_0_V_ce0 mem_ce 1 1 }  { wt_buff_3_0_V_we0 mem_we 1 1 }  { wt_buff_3_0_V_d0 mem_din 1 16 } } }
	wt_buff_3_1_V { ap_memory {  { wt_buff_3_1_V_address0 mem_address 1 4 }  { wt_buff_3_1_V_ce0 mem_ce 1 1 }  { wt_buff_3_1_V_we0 mem_we 1 1 }  { wt_buff_3_1_V_d0 mem_din 1 16 } } }
	wt_buff_3_2_V { ap_memory {  { wt_buff_3_2_V_address0 mem_address 1 4 }  { wt_buff_3_2_V_ce0 mem_ce 1 1 }  { wt_buff_3_2_V_we0 mem_we 1 1 }  { wt_buff_3_2_V_d0 mem_din 1 16 } } }
	wt_buff_4_0_V { ap_memory {  { wt_buff_4_0_V_address0 mem_address 1 4 }  { wt_buff_4_0_V_ce0 mem_ce 1 1 }  { wt_buff_4_0_V_we0 mem_we 1 1 }  { wt_buff_4_0_V_d0 mem_din 1 16 } } }
	wt_buff_4_1_V { ap_memory {  { wt_buff_4_1_V_address0 mem_address 1 4 }  { wt_buff_4_1_V_ce0 mem_ce 1 1 }  { wt_buff_4_1_V_we0 mem_we 1 1 }  { wt_buff_4_1_V_d0 mem_din 1 16 } } }
	wt_buff_4_2_V { ap_memory {  { wt_buff_4_2_V_address0 mem_address 1 4 }  { wt_buff_4_2_V_ce0 mem_ce 1 1 }  { wt_buff_4_2_V_we0 mem_we 1 1 }  { wt_buff_4_2_V_d0 mem_din 1 16 } } }
	wt_buff_5_0_V { ap_memory {  { wt_buff_5_0_V_address0 mem_address 1 4 }  { wt_buff_5_0_V_ce0 mem_ce 1 1 }  { wt_buff_5_0_V_we0 mem_we 1 1 }  { wt_buff_5_0_V_d0 mem_din 1 16 } } }
	wt_buff_5_1_V { ap_memory {  { wt_buff_5_1_V_address0 mem_address 1 4 }  { wt_buff_5_1_V_ce0 mem_ce 1 1 }  { wt_buff_5_1_V_we0 mem_we 1 1 }  { wt_buff_5_1_V_d0 mem_din 1 16 } } }
	wt_buff_5_2_V { ap_memory {  { wt_buff_5_2_V_address0 mem_address 1 4 }  { wt_buff_5_2_V_ce0 mem_ce 1 1 }  { wt_buff_5_2_V_we0 mem_we 1 1 }  { wt_buff_5_2_V_d0 mem_din 1 16 } } }
	wt_buff_6_0_V { ap_memory {  { wt_buff_6_0_V_address0 mem_address 1 4 }  { wt_buff_6_0_V_ce0 mem_ce 1 1 }  { wt_buff_6_0_V_we0 mem_we 1 1 }  { wt_buff_6_0_V_d0 mem_din 1 16 } } }
	wt_buff_6_1_V { ap_memory {  { wt_buff_6_1_V_address0 mem_address 1 4 }  { wt_buff_6_1_V_ce0 mem_ce 1 1 }  { wt_buff_6_1_V_we0 mem_we 1 1 }  { wt_buff_6_1_V_d0 mem_din 1 16 } } }
	wt_buff_6_2_V { ap_memory {  { wt_buff_6_2_V_address0 mem_address 1 4 }  { wt_buff_6_2_V_ce0 mem_ce 1 1 }  { wt_buff_6_2_V_we0 mem_we 1 1 }  { wt_buff_6_2_V_d0 mem_din 1 16 } } }
	wt_buff_7_0_V { ap_memory {  { wt_buff_7_0_V_address0 mem_address 1 4 }  { wt_buff_7_0_V_ce0 mem_ce 1 1 }  { wt_buff_7_0_V_we0 mem_we 1 1 }  { wt_buff_7_0_V_d0 mem_din 1 16 } } }
	wt_buff_7_1_V { ap_memory {  { wt_buff_7_1_V_address0 mem_address 1 4 }  { wt_buff_7_1_V_ce0 mem_ce 1 1 }  { wt_buff_7_1_V_we0 mem_we 1 1 }  { wt_buff_7_1_V_d0 mem_din 1 16 } } }
	wt_buff_7_2_V { ap_memory {  { wt_buff_7_2_V_address0 mem_address 1 4 }  { wt_buff_7_2_V_ce0 mem_ce 1 1 }  { wt_buff_7_2_V_we0 mem_we 1 1 }  { wt_buff_7_2_V_d0 mem_din 1 16 } } }
	ch_0_i { ap_none {  { ch_0_i in_data 0 6 } } }
	p_read { ap_none {  { p_read in_data 0 16 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 16 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 16 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 16 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 16 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 16 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 16 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 16 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 16 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 16 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 16 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 16 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 16 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 16 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 16 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 16 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 16 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 16 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 16 } } }
	p_read19 { ap_none {  { p_read19 in_data 0 16 } } }
	p_read20 { ap_none {  { p_read20 in_data 0 16 } } }
	p_read21 { ap_none {  { p_read21 in_data 0 16 } } }
	p_read22 { ap_none {  { p_read22 in_data 0 16 } } }
	p_read23 { ap_none {  { p_read23 in_data 0 16 } } }
	p_read24 { ap_none {  { p_read24 in_data 0 16 } } }
	p_read25 { ap_none {  { p_read25 in_data 0 16 } } }
	p_read26 { ap_none {  { p_read26 in_data 0 16 } } }
	p_read27 { ap_none {  { p_read27 in_data 0 16 } } }
	p_read28 { ap_none {  { p_read28 in_data 0 16 } } }
	p_read29 { ap_none {  { p_read29 in_data 0 16 } } }
	p_read30 { ap_none {  { p_read30 in_data 0 16 } } }
	p_read31 { ap_none {  { p_read31 in_data 0 16 } } }
	row { ap_none {  { row in_data 0 32 } } }
	col { ap_none {  { col in_data 0 32 } } }
	ch_0_i_c { ap_fifo {  { ch_0_i_c_din fifo_data 1 5 }  { ch_0_i_c_full_n fifo_status 0 1 }  { ch_0_i_c_write fifo_update 1 1 } } }
	bias_buff_0_V_c { ap_fifo {  { bias_buff_0_V_c_din fifo_data 1 16 }  { bias_buff_0_V_c_full_n fifo_status 0 1 }  { bias_buff_0_V_c_write fifo_update 1 1 } } }
	bias_buff_1_V_c { ap_fifo {  { bias_buff_1_V_c_din fifo_data 1 16 }  { bias_buff_1_V_c_full_n fifo_status 0 1 }  { bias_buff_1_V_c_write fifo_update 1 1 } } }
	bias_buff_2_V_c { ap_fifo {  { bias_buff_2_V_c_din fifo_data 1 16 }  { bias_buff_2_V_c_full_n fifo_status 0 1 }  { bias_buff_2_V_c_write fifo_update 1 1 } } }
	bias_buff_3_V_c { ap_fifo {  { bias_buff_3_V_c_din fifo_data 1 16 }  { bias_buff_3_V_c_full_n fifo_status 0 1 }  { bias_buff_3_V_c_write fifo_update 1 1 } } }
	bias_buff_4_V_c { ap_fifo {  { bias_buff_4_V_c_din fifo_data 1 16 }  { bias_buff_4_V_c_full_n fifo_status 0 1 }  { bias_buff_4_V_c_write fifo_update 1 1 } } }
	bias_buff_5_V_c { ap_fifo {  { bias_buff_5_V_c_din fifo_data 1 16 }  { bias_buff_5_V_c_full_n fifo_status 0 1 }  { bias_buff_5_V_c_write fifo_update 1 1 } } }
	bias_buff_6_V_c { ap_fifo {  { bias_buff_6_V_c_din fifo_data 1 16 }  { bias_buff_6_V_c_full_n fifo_status 0 1 }  { bias_buff_6_V_c_write fifo_update 1 1 } } }
	bias_buff_7_V_c { ap_fifo {  { bias_buff_7_V_c_din fifo_data 1 16 }  { bias_buff_7_V_c_full_n fifo_status 0 1 }  { bias_buff_7_V_c_write fifo_update 1 1 } } }
	bias_buff_8_V_c { ap_fifo {  { bias_buff_8_V_c_din fifo_data 1 16 }  { bias_buff_8_V_c_full_n fifo_status 0 1 }  { bias_buff_8_V_c_write fifo_update 1 1 } } }
	bias_buff_9_V_c { ap_fifo {  { bias_buff_9_V_c_din fifo_data 1 16 }  { bias_buff_9_V_c_full_n fifo_status 0 1 }  { bias_buff_9_V_c_write fifo_update 1 1 } } }
	bias_buff_10_V_c { ap_fifo {  { bias_buff_10_V_c_din fifo_data 1 16 }  { bias_buff_10_V_c_full_n fifo_status 0 1 }  { bias_buff_10_V_c_write fifo_update 1 1 } } }
	bias_buff_11_V_c { ap_fifo {  { bias_buff_11_V_c_din fifo_data 1 16 }  { bias_buff_11_V_c_full_n fifo_status 0 1 }  { bias_buff_11_V_c_write fifo_update 1 1 } } }
	bias_buff_12_V_c { ap_fifo {  { bias_buff_12_V_c_din fifo_data 1 16 }  { bias_buff_12_V_c_full_n fifo_status 0 1 }  { bias_buff_12_V_c_write fifo_update 1 1 } } }
	bias_buff_13_V_c { ap_fifo {  { bias_buff_13_V_c_din fifo_data 1 16 }  { bias_buff_13_V_c_full_n fifo_status 0 1 }  { bias_buff_13_V_c_write fifo_update 1 1 } } }
	bias_buff_14_V_c { ap_fifo {  { bias_buff_14_V_c_din fifo_data 1 16 }  { bias_buff_14_V_c_full_n fifo_status 0 1 }  { bias_buff_14_V_c_write fifo_update 1 1 } } }
	bias_buff_15_V_c { ap_fifo {  { bias_buff_15_V_c_din fifo_data 1 16 }  { bias_buff_15_V_c_full_n fifo_status 0 1 }  { bias_buff_15_V_c_write fifo_update 1 1 } } }
	bias_buff_16_V_c { ap_fifo {  { bias_buff_16_V_c_din fifo_data 1 16 }  { bias_buff_16_V_c_full_n fifo_status 0 1 }  { bias_buff_16_V_c_write fifo_update 1 1 } } }
	bias_buff_17_V_c { ap_fifo {  { bias_buff_17_V_c_din fifo_data 1 16 }  { bias_buff_17_V_c_full_n fifo_status 0 1 }  { bias_buff_17_V_c_write fifo_update 1 1 } } }
	bias_buff_18_V_c { ap_fifo {  { bias_buff_18_V_c_din fifo_data 1 16 }  { bias_buff_18_V_c_full_n fifo_status 0 1 }  { bias_buff_18_V_c_write fifo_update 1 1 } } }
	bias_buff_19_V_c { ap_fifo {  { bias_buff_19_V_c_din fifo_data 1 16 }  { bias_buff_19_V_c_full_n fifo_status 0 1 }  { bias_buff_19_V_c_write fifo_update 1 1 } } }
	bias_buff_20_V_c { ap_fifo {  { bias_buff_20_V_c_din fifo_data 1 16 }  { bias_buff_20_V_c_full_n fifo_status 0 1 }  { bias_buff_20_V_c_write fifo_update 1 1 } } }
	bias_buff_21_V_c { ap_fifo {  { bias_buff_21_V_c_din fifo_data 1 16 }  { bias_buff_21_V_c_full_n fifo_status 0 1 }  { bias_buff_21_V_c_write fifo_update 1 1 } } }
	bias_buff_22_V_c { ap_fifo {  { bias_buff_22_V_c_din fifo_data 1 16 }  { bias_buff_22_V_c_full_n fifo_status 0 1 }  { bias_buff_22_V_c_write fifo_update 1 1 } } }
	bias_buff_23_V_c { ap_fifo {  { bias_buff_23_V_c_din fifo_data 1 16 }  { bias_buff_23_V_c_full_n fifo_status 0 1 }  { bias_buff_23_V_c_write fifo_update 1 1 } } }
	bias_buff_24_V_c { ap_fifo {  { bias_buff_24_V_c_din fifo_data 1 16 }  { bias_buff_24_V_c_full_n fifo_status 0 1 }  { bias_buff_24_V_c_write fifo_update 1 1 } } }
	bias_buff_25_V_c { ap_fifo {  { bias_buff_25_V_c_din fifo_data 1 16 }  { bias_buff_25_V_c_full_n fifo_status 0 1 }  { bias_buff_25_V_c_write fifo_update 1 1 } } }
	bias_buff_26_V_c { ap_fifo {  { bias_buff_26_V_c_din fifo_data 1 16 }  { bias_buff_26_V_c_full_n fifo_status 0 1 }  { bias_buff_26_V_c_write fifo_update 1 1 } } }
	bias_buff_27_V_c { ap_fifo {  { bias_buff_27_V_c_din fifo_data 1 16 }  { bias_buff_27_V_c_full_n fifo_status 0 1 }  { bias_buff_27_V_c_write fifo_update 1 1 } } }
	bias_buff_28_V_c { ap_fifo {  { bias_buff_28_V_c_din fifo_data 1 16 }  { bias_buff_28_V_c_full_n fifo_status 0 1 }  { bias_buff_28_V_c_write fifo_update 1 1 } } }
	bias_buff_29_V_c { ap_fifo {  { bias_buff_29_V_c_din fifo_data 1 16 }  { bias_buff_29_V_c_full_n fifo_status 0 1 }  { bias_buff_29_V_c_write fifo_update 1 1 } } }
	bias_buff_30_V_c { ap_fifo {  { bias_buff_30_V_c_din fifo_data 1 16 }  { bias_buff_30_V_c_full_n fifo_status 0 1 }  { bias_buff_30_V_c_write fifo_update 1 1 } } }
	bias_buff_31_V_c { ap_fifo {  { bias_buff_31_V_c_din fifo_data 1 16 }  { bias_buff_31_V_c_full_n fifo_status 0 1 }  { bias_buff_31_V_c_write fifo_update 1 1 } } }
	row_c { ap_fifo {  { row_c_din fifo_data 1 32 }  { row_c_full_n fifo_status 0 1 }  { row_c_write fifo_update 1 1 } } }
	col_c { ap_fifo {  { col_c_din fifo_data 1 32 }  { col_c_full_n fifo_status 0 1 }  { col_c_write fifo_update 1 1 } } }
	out_V_offset { ap_none {  { out_V_offset in_data 0 29 } } }
	out_V_offset_out { ap_fifo {  { out_V_offset_out_din fifo_data 1 29 }  { out_V_offset_out_full_n fifo_status 0 1 }  { out_V_offset_out_write fifo_update 1 1 } } }
}
