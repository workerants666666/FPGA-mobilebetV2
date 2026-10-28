set moduleName compute5
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
set C_modelName {compute5}
set C_modelType { void 0 }
set C_modelArgList {
	{ fm_in_buff_0_V int 16 regular {array 3249 { 1 3 } 1 1 }  }
	{ fm_in_buff_1_V int 16 regular {array 3249 { 1 3 } 1 1 }  }
	{ fm_in_buff_2_V int 16 regular {array 3249 { 1 3 } 1 1 }  }
	{ wt_buff_0_0_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_0_1_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_0_2_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_1_0_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_1_1_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_1_2_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_2_0_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_2_1_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_2_2_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_3_0_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_3_1_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_3_2_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_4_0_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_4_1_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_4_2_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_5_0_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_5_1_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_5_2_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_6_0_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_6_1_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_6_2_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_7_0_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_7_1_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ wt_buff_7_2_V int 16 regular {array 9 { 1 3 } 1 1 }  }
	{ bias_buff_0_V int 16 regular {fifo 0}  }
	{ bias_buff_1_V int 16 regular {fifo 0}  }
	{ bias_buff_2_V int 16 regular {fifo 0}  }
	{ bias_buff_3_V int 16 regular {fifo 0}  }
	{ bias_buff_4_V int 16 regular {fifo 0}  }
	{ bias_buff_5_V int 16 regular {fifo 0}  }
	{ bias_buff_6_V int 16 regular {fifo 0}  }
	{ bias_buff_7_V int 16 regular {fifo 0}  }
	{ bias_buff_8_V int 16 regular {fifo 0}  }
	{ bias_buff_9_V int 16 regular {fifo 0}  }
	{ bias_buff_10_V int 16 regular {fifo 0}  }
	{ bias_buff_11_V int 16 regular {fifo 0}  }
	{ bias_buff_12_V int 16 regular {fifo 0}  }
	{ bias_buff_13_V int 16 regular {fifo 0}  }
	{ bias_buff_14_V int 16 regular {fifo 0}  }
	{ bias_buff_15_V int 16 regular {fifo 0}  }
	{ bias_buff_16_V int 16 regular {fifo 0}  }
	{ bias_buff_17_V int 16 regular {fifo 0}  }
	{ bias_buff_18_V int 16 regular {fifo 0}  }
	{ bias_buff_19_V int 16 regular {fifo 0}  }
	{ bias_buff_20_V int 16 regular {fifo 0}  }
	{ bias_buff_21_V int 16 regular {fifo 0}  }
	{ bias_buff_22_V int 16 regular {fifo 0}  }
	{ bias_buff_23_V int 16 regular {fifo 0}  }
	{ bias_buff_24_V int 16 regular {fifo 0}  }
	{ bias_buff_25_V int 16 regular {fifo 0}  }
	{ bias_buff_26_V int 16 regular {fifo 0}  }
	{ bias_buff_27_V int 16 regular {fifo 0}  }
	{ bias_buff_28_V int 16 regular {fifo 0}  }
	{ bias_buff_29_V int 16 regular {fifo 0}  }
	{ bias_buff_30_V int 16 regular {fifo 0}  }
	{ bias_buff_31_V int 16 regular {fifo 0}  }
	{ bias_buff_V_offset int 5 regular {fifo 0}  }
	{ fm_out_buff_0_V int 16 regular {array 784 { 1 0 } 1 1 }  }
	{ fm_out_buff_1_V int 16 regular {array 784 { 1 0 } 1 1 }  }
	{ fm_out_buff_2_V int 16 regular {array 784 { 1 0 } 1 1 }  }
	{ fm_out_buff_3_V int 16 regular {array 784 { 1 0 } 1 1 }  }
	{ fm_out_buff_4_V int 16 regular {array 784 { 1 0 } 1 1 }  }
	{ fm_out_buff_5_V int 16 regular {array 784 { 1 0 } 1 1 }  }
	{ fm_out_buff_6_V int 16 regular {array 784 { 1 0 } 1 1 }  }
	{ fm_out_buff_7_V int 16 regular {array 784 { 1 0 } 1 1 }  }
	{ bias_buff_V_offset_out int 5 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fm_in_buff_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "fm_in_buff_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "fm_in_buff_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_0_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_1_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_2_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_3_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_4_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_5_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_6_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "wt_buff_7_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_0_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_1_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_2_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_3_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_4_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_5_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_6_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_7_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_8_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_9_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_10_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_11_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_12_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_13_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_14_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_15_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_16_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_17_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_18_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_19_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_20_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_21_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_22_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_23_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_24_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_25_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_26_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_27_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_28_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_29_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_30_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_31_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_buff_V_offset", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "fm_out_buff_0_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "fm_out_buff_1_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "fm_out_buff_2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "fm_out_buff_3_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "fm_out_buff_4_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "fm_out_buff_5_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "fm_out_buff_6_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "fm_out_buff_7_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "bias_buff_V_offset_out", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 246
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fm_in_buff_0_V_address0 sc_out sc_lv 12 signal 0 } 
	{ fm_in_buff_0_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ fm_in_buff_0_V_q0 sc_in sc_lv 16 signal 0 } 
	{ fm_in_buff_1_V_address0 sc_out sc_lv 12 signal 1 } 
	{ fm_in_buff_1_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ fm_in_buff_1_V_q0 sc_in sc_lv 16 signal 1 } 
	{ fm_in_buff_2_V_address0 sc_out sc_lv 12 signal 2 } 
	{ fm_in_buff_2_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ fm_in_buff_2_V_q0 sc_in sc_lv 16 signal 2 } 
	{ wt_buff_0_0_V_address0 sc_out sc_lv 4 signal 3 } 
	{ wt_buff_0_0_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ wt_buff_0_0_V_q0 sc_in sc_lv 16 signal 3 } 
	{ wt_buff_0_1_V_address0 sc_out sc_lv 4 signal 4 } 
	{ wt_buff_0_1_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ wt_buff_0_1_V_q0 sc_in sc_lv 16 signal 4 } 
	{ wt_buff_0_2_V_address0 sc_out sc_lv 4 signal 5 } 
	{ wt_buff_0_2_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ wt_buff_0_2_V_q0 sc_in sc_lv 16 signal 5 } 
	{ wt_buff_1_0_V_address0 sc_out sc_lv 4 signal 6 } 
	{ wt_buff_1_0_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ wt_buff_1_0_V_q0 sc_in sc_lv 16 signal 6 } 
	{ wt_buff_1_1_V_address0 sc_out sc_lv 4 signal 7 } 
	{ wt_buff_1_1_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ wt_buff_1_1_V_q0 sc_in sc_lv 16 signal 7 } 
	{ wt_buff_1_2_V_address0 sc_out sc_lv 4 signal 8 } 
	{ wt_buff_1_2_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ wt_buff_1_2_V_q0 sc_in sc_lv 16 signal 8 } 
	{ wt_buff_2_0_V_address0 sc_out sc_lv 4 signal 9 } 
	{ wt_buff_2_0_V_ce0 sc_out sc_logic 1 signal 9 } 
	{ wt_buff_2_0_V_q0 sc_in sc_lv 16 signal 9 } 
	{ wt_buff_2_1_V_address0 sc_out sc_lv 4 signal 10 } 
	{ wt_buff_2_1_V_ce0 sc_out sc_logic 1 signal 10 } 
	{ wt_buff_2_1_V_q0 sc_in sc_lv 16 signal 10 } 
	{ wt_buff_2_2_V_address0 sc_out sc_lv 4 signal 11 } 
	{ wt_buff_2_2_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ wt_buff_2_2_V_q0 sc_in sc_lv 16 signal 11 } 
	{ wt_buff_3_0_V_address0 sc_out sc_lv 4 signal 12 } 
	{ wt_buff_3_0_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ wt_buff_3_0_V_q0 sc_in sc_lv 16 signal 12 } 
	{ wt_buff_3_1_V_address0 sc_out sc_lv 4 signal 13 } 
	{ wt_buff_3_1_V_ce0 sc_out sc_logic 1 signal 13 } 
	{ wt_buff_3_1_V_q0 sc_in sc_lv 16 signal 13 } 
	{ wt_buff_3_2_V_address0 sc_out sc_lv 4 signal 14 } 
	{ wt_buff_3_2_V_ce0 sc_out sc_logic 1 signal 14 } 
	{ wt_buff_3_2_V_q0 sc_in sc_lv 16 signal 14 } 
	{ wt_buff_4_0_V_address0 sc_out sc_lv 4 signal 15 } 
	{ wt_buff_4_0_V_ce0 sc_out sc_logic 1 signal 15 } 
	{ wt_buff_4_0_V_q0 sc_in sc_lv 16 signal 15 } 
	{ wt_buff_4_1_V_address0 sc_out sc_lv 4 signal 16 } 
	{ wt_buff_4_1_V_ce0 sc_out sc_logic 1 signal 16 } 
	{ wt_buff_4_1_V_q0 sc_in sc_lv 16 signal 16 } 
	{ wt_buff_4_2_V_address0 sc_out sc_lv 4 signal 17 } 
	{ wt_buff_4_2_V_ce0 sc_out sc_logic 1 signal 17 } 
	{ wt_buff_4_2_V_q0 sc_in sc_lv 16 signal 17 } 
	{ wt_buff_5_0_V_address0 sc_out sc_lv 4 signal 18 } 
	{ wt_buff_5_0_V_ce0 sc_out sc_logic 1 signal 18 } 
	{ wt_buff_5_0_V_q0 sc_in sc_lv 16 signal 18 } 
	{ wt_buff_5_1_V_address0 sc_out sc_lv 4 signal 19 } 
	{ wt_buff_5_1_V_ce0 sc_out sc_logic 1 signal 19 } 
	{ wt_buff_5_1_V_q0 sc_in sc_lv 16 signal 19 } 
	{ wt_buff_5_2_V_address0 sc_out sc_lv 4 signal 20 } 
	{ wt_buff_5_2_V_ce0 sc_out sc_logic 1 signal 20 } 
	{ wt_buff_5_2_V_q0 sc_in sc_lv 16 signal 20 } 
	{ wt_buff_6_0_V_address0 sc_out sc_lv 4 signal 21 } 
	{ wt_buff_6_0_V_ce0 sc_out sc_logic 1 signal 21 } 
	{ wt_buff_6_0_V_q0 sc_in sc_lv 16 signal 21 } 
	{ wt_buff_6_1_V_address0 sc_out sc_lv 4 signal 22 } 
	{ wt_buff_6_1_V_ce0 sc_out sc_logic 1 signal 22 } 
	{ wt_buff_6_1_V_q0 sc_in sc_lv 16 signal 22 } 
	{ wt_buff_6_2_V_address0 sc_out sc_lv 4 signal 23 } 
	{ wt_buff_6_2_V_ce0 sc_out sc_logic 1 signal 23 } 
	{ wt_buff_6_2_V_q0 sc_in sc_lv 16 signal 23 } 
	{ wt_buff_7_0_V_address0 sc_out sc_lv 4 signal 24 } 
	{ wt_buff_7_0_V_ce0 sc_out sc_logic 1 signal 24 } 
	{ wt_buff_7_0_V_q0 sc_in sc_lv 16 signal 24 } 
	{ wt_buff_7_1_V_address0 sc_out sc_lv 4 signal 25 } 
	{ wt_buff_7_1_V_ce0 sc_out sc_logic 1 signal 25 } 
	{ wt_buff_7_1_V_q0 sc_in sc_lv 16 signal 25 } 
	{ wt_buff_7_2_V_address0 sc_out sc_lv 4 signal 26 } 
	{ wt_buff_7_2_V_ce0 sc_out sc_logic 1 signal 26 } 
	{ wt_buff_7_2_V_q0 sc_in sc_lv 16 signal 26 } 
	{ bias_buff_0_V_dout sc_in sc_lv 16 signal 27 } 
	{ bias_buff_0_V_empty_n sc_in sc_logic 1 signal 27 } 
	{ bias_buff_0_V_read sc_out sc_logic 1 signal 27 } 
	{ bias_buff_1_V_dout sc_in sc_lv 16 signal 28 } 
	{ bias_buff_1_V_empty_n sc_in sc_logic 1 signal 28 } 
	{ bias_buff_1_V_read sc_out sc_logic 1 signal 28 } 
	{ bias_buff_2_V_dout sc_in sc_lv 16 signal 29 } 
	{ bias_buff_2_V_empty_n sc_in sc_logic 1 signal 29 } 
	{ bias_buff_2_V_read sc_out sc_logic 1 signal 29 } 
	{ bias_buff_3_V_dout sc_in sc_lv 16 signal 30 } 
	{ bias_buff_3_V_empty_n sc_in sc_logic 1 signal 30 } 
	{ bias_buff_3_V_read sc_out sc_logic 1 signal 30 } 
	{ bias_buff_4_V_dout sc_in sc_lv 16 signal 31 } 
	{ bias_buff_4_V_empty_n sc_in sc_logic 1 signal 31 } 
	{ bias_buff_4_V_read sc_out sc_logic 1 signal 31 } 
	{ bias_buff_5_V_dout sc_in sc_lv 16 signal 32 } 
	{ bias_buff_5_V_empty_n sc_in sc_logic 1 signal 32 } 
	{ bias_buff_5_V_read sc_out sc_logic 1 signal 32 } 
	{ bias_buff_6_V_dout sc_in sc_lv 16 signal 33 } 
	{ bias_buff_6_V_empty_n sc_in sc_logic 1 signal 33 } 
	{ bias_buff_6_V_read sc_out sc_logic 1 signal 33 } 
	{ bias_buff_7_V_dout sc_in sc_lv 16 signal 34 } 
	{ bias_buff_7_V_empty_n sc_in sc_logic 1 signal 34 } 
	{ bias_buff_7_V_read sc_out sc_logic 1 signal 34 } 
	{ bias_buff_8_V_dout sc_in sc_lv 16 signal 35 } 
	{ bias_buff_8_V_empty_n sc_in sc_logic 1 signal 35 } 
	{ bias_buff_8_V_read sc_out sc_logic 1 signal 35 } 
	{ bias_buff_9_V_dout sc_in sc_lv 16 signal 36 } 
	{ bias_buff_9_V_empty_n sc_in sc_logic 1 signal 36 } 
	{ bias_buff_9_V_read sc_out sc_logic 1 signal 36 } 
	{ bias_buff_10_V_dout sc_in sc_lv 16 signal 37 } 
	{ bias_buff_10_V_empty_n sc_in sc_logic 1 signal 37 } 
	{ bias_buff_10_V_read sc_out sc_logic 1 signal 37 } 
	{ bias_buff_11_V_dout sc_in sc_lv 16 signal 38 } 
	{ bias_buff_11_V_empty_n sc_in sc_logic 1 signal 38 } 
	{ bias_buff_11_V_read sc_out sc_logic 1 signal 38 } 
	{ bias_buff_12_V_dout sc_in sc_lv 16 signal 39 } 
	{ bias_buff_12_V_empty_n sc_in sc_logic 1 signal 39 } 
	{ bias_buff_12_V_read sc_out sc_logic 1 signal 39 } 
	{ bias_buff_13_V_dout sc_in sc_lv 16 signal 40 } 
	{ bias_buff_13_V_empty_n sc_in sc_logic 1 signal 40 } 
	{ bias_buff_13_V_read sc_out sc_logic 1 signal 40 } 
	{ bias_buff_14_V_dout sc_in sc_lv 16 signal 41 } 
	{ bias_buff_14_V_empty_n sc_in sc_logic 1 signal 41 } 
	{ bias_buff_14_V_read sc_out sc_logic 1 signal 41 } 
	{ bias_buff_15_V_dout sc_in sc_lv 16 signal 42 } 
	{ bias_buff_15_V_empty_n sc_in sc_logic 1 signal 42 } 
	{ bias_buff_15_V_read sc_out sc_logic 1 signal 42 } 
	{ bias_buff_16_V_dout sc_in sc_lv 16 signal 43 } 
	{ bias_buff_16_V_empty_n sc_in sc_logic 1 signal 43 } 
	{ bias_buff_16_V_read sc_out sc_logic 1 signal 43 } 
	{ bias_buff_17_V_dout sc_in sc_lv 16 signal 44 } 
	{ bias_buff_17_V_empty_n sc_in sc_logic 1 signal 44 } 
	{ bias_buff_17_V_read sc_out sc_logic 1 signal 44 } 
	{ bias_buff_18_V_dout sc_in sc_lv 16 signal 45 } 
	{ bias_buff_18_V_empty_n sc_in sc_logic 1 signal 45 } 
	{ bias_buff_18_V_read sc_out sc_logic 1 signal 45 } 
	{ bias_buff_19_V_dout sc_in sc_lv 16 signal 46 } 
	{ bias_buff_19_V_empty_n sc_in sc_logic 1 signal 46 } 
	{ bias_buff_19_V_read sc_out sc_logic 1 signal 46 } 
	{ bias_buff_20_V_dout sc_in sc_lv 16 signal 47 } 
	{ bias_buff_20_V_empty_n sc_in sc_logic 1 signal 47 } 
	{ bias_buff_20_V_read sc_out sc_logic 1 signal 47 } 
	{ bias_buff_21_V_dout sc_in sc_lv 16 signal 48 } 
	{ bias_buff_21_V_empty_n sc_in sc_logic 1 signal 48 } 
	{ bias_buff_21_V_read sc_out sc_logic 1 signal 48 } 
	{ bias_buff_22_V_dout sc_in sc_lv 16 signal 49 } 
	{ bias_buff_22_V_empty_n sc_in sc_logic 1 signal 49 } 
	{ bias_buff_22_V_read sc_out sc_logic 1 signal 49 } 
	{ bias_buff_23_V_dout sc_in sc_lv 16 signal 50 } 
	{ bias_buff_23_V_empty_n sc_in sc_logic 1 signal 50 } 
	{ bias_buff_23_V_read sc_out sc_logic 1 signal 50 } 
	{ bias_buff_24_V_dout sc_in sc_lv 16 signal 51 } 
	{ bias_buff_24_V_empty_n sc_in sc_logic 1 signal 51 } 
	{ bias_buff_24_V_read sc_out sc_logic 1 signal 51 } 
	{ bias_buff_25_V_dout sc_in sc_lv 16 signal 52 } 
	{ bias_buff_25_V_empty_n sc_in sc_logic 1 signal 52 } 
	{ bias_buff_25_V_read sc_out sc_logic 1 signal 52 } 
	{ bias_buff_26_V_dout sc_in sc_lv 16 signal 53 } 
	{ bias_buff_26_V_empty_n sc_in sc_logic 1 signal 53 } 
	{ bias_buff_26_V_read sc_out sc_logic 1 signal 53 } 
	{ bias_buff_27_V_dout sc_in sc_lv 16 signal 54 } 
	{ bias_buff_27_V_empty_n sc_in sc_logic 1 signal 54 } 
	{ bias_buff_27_V_read sc_out sc_logic 1 signal 54 } 
	{ bias_buff_28_V_dout sc_in sc_lv 16 signal 55 } 
	{ bias_buff_28_V_empty_n sc_in sc_logic 1 signal 55 } 
	{ bias_buff_28_V_read sc_out sc_logic 1 signal 55 } 
	{ bias_buff_29_V_dout sc_in sc_lv 16 signal 56 } 
	{ bias_buff_29_V_empty_n sc_in sc_logic 1 signal 56 } 
	{ bias_buff_29_V_read sc_out sc_logic 1 signal 56 } 
	{ bias_buff_30_V_dout sc_in sc_lv 16 signal 57 } 
	{ bias_buff_30_V_empty_n sc_in sc_logic 1 signal 57 } 
	{ bias_buff_30_V_read sc_out sc_logic 1 signal 57 } 
	{ bias_buff_31_V_dout sc_in sc_lv 16 signal 58 } 
	{ bias_buff_31_V_empty_n sc_in sc_logic 1 signal 58 } 
	{ bias_buff_31_V_read sc_out sc_logic 1 signal 58 } 
	{ bias_buff_V_offset_dout sc_in sc_lv 5 signal 59 } 
	{ bias_buff_V_offset_empty_n sc_in sc_logic 1 signal 59 } 
	{ bias_buff_V_offset_read sc_out sc_logic 1 signal 59 } 
	{ fm_out_buff_0_V_address0 sc_out sc_lv 10 signal 60 } 
	{ fm_out_buff_0_V_ce0 sc_out sc_logic 1 signal 60 } 
	{ fm_out_buff_0_V_q0 sc_in sc_lv 16 signal 60 } 
	{ fm_out_buff_0_V_address1 sc_out sc_lv 10 signal 60 } 
	{ fm_out_buff_0_V_ce1 sc_out sc_logic 1 signal 60 } 
	{ fm_out_buff_0_V_we1 sc_out sc_logic 1 signal 60 } 
	{ fm_out_buff_0_V_d1 sc_out sc_lv 16 signal 60 } 
	{ fm_out_buff_1_V_address0 sc_out sc_lv 10 signal 61 } 
	{ fm_out_buff_1_V_ce0 sc_out sc_logic 1 signal 61 } 
	{ fm_out_buff_1_V_q0 sc_in sc_lv 16 signal 61 } 
	{ fm_out_buff_1_V_address1 sc_out sc_lv 10 signal 61 } 
	{ fm_out_buff_1_V_ce1 sc_out sc_logic 1 signal 61 } 
	{ fm_out_buff_1_V_we1 sc_out sc_logic 1 signal 61 } 
	{ fm_out_buff_1_V_d1 sc_out sc_lv 16 signal 61 } 
	{ fm_out_buff_2_V_address0 sc_out sc_lv 10 signal 62 } 
	{ fm_out_buff_2_V_ce0 sc_out sc_logic 1 signal 62 } 
	{ fm_out_buff_2_V_q0 sc_in sc_lv 16 signal 62 } 
	{ fm_out_buff_2_V_address1 sc_out sc_lv 10 signal 62 } 
	{ fm_out_buff_2_V_ce1 sc_out sc_logic 1 signal 62 } 
	{ fm_out_buff_2_V_we1 sc_out sc_logic 1 signal 62 } 
	{ fm_out_buff_2_V_d1 sc_out sc_lv 16 signal 62 } 
	{ fm_out_buff_3_V_address0 sc_out sc_lv 10 signal 63 } 
	{ fm_out_buff_3_V_ce0 sc_out sc_logic 1 signal 63 } 
	{ fm_out_buff_3_V_q0 sc_in sc_lv 16 signal 63 } 
	{ fm_out_buff_3_V_address1 sc_out sc_lv 10 signal 63 } 
	{ fm_out_buff_3_V_ce1 sc_out sc_logic 1 signal 63 } 
	{ fm_out_buff_3_V_we1 sc_out sc_logic 1 signal 63 } 
	{ fm_out_buff_3_V_d1 sc_out sc_lv 16 signal 63 } 
	{ fm_out_buff_4_V_address0 sc_out sc_lv 10 signal 64 } 
	{ fm_out_buff_4_V_ce0 sc_out sc_logic 1 signal 64 } 
	{ fm_out_buff_4_V_q0 sc_in sc_lv 16 signal 64 } 
	{ fm_out_buff_4_V_address1 sc_out sc_lv 10 signal 64 } 
	{ fm_out_buff_4_V_ce1 sc_out sc_logic 1 signal 64 } 
	{ fm_out_buff_4_V_we1 sc_out sc_logic 1 signal 64 } 
	{ fm_out_buff_4_V_d1 sc_out sc_lv 16 signal 64 } 
	{ fm_out_buff_5_V_address0 sc_out sc_lv 10 signal 65 } 
	{ fm_out_buff_5_V_ce0 sc_out sc_logic 1 signal 65 } 
	{ fm_out_buff_5_V_q0 sc_in sc_lv 16 signal 65 } 
	{ fm_out_buff_5_V_address1 sc_out sc_lv 10 signal 65 } 
	{ fm_out_buff_5_V_ce1 sc_out sc_logic 1 signal 65 } 
	{ fm_out_buff_5_V_we1 sc_out sc_logic 1 signal 65 } 
	{ fm_out_buff_5_V_d1 sc_out sc_lv 16 signal 65 } 
	{ fm_out_buff_6_V_address0 sc_out sc_lv 10 signal 66 } 
	{ fm_out_buff_6_V_ce0 sc_out sc_logic 1 signal 66 } 
	{ fm_out_buff_6_V_q0 sc_in sc_lv 16 signal 66 } 
	{ fm_out_buff_6_V_address1 sc_out sc_lv 10 signal 66 } 
	{ fm_out_buff_6_V_ce1 sc_out sc_logic 1 signal 66 } 
	{ fm_out_buff_6_V_we1 sc_out sc_logic 1 signal 66 } 
	{ fm_out_buff_6_V_d1 sc_out sc_lv 16 signal 66 } 
	{ fm_out_buff_7_V_address0 sc_out sc_lv 10 signal 67 } 
	{ fm_out_buff_7_V_ce0 sc_out sc_logic 1 signal 67 } 
	{ fm_out_buff_7_V_q0 sc_in sc_lv 16 signal 67 } 
	{ fm_out_buff_7_V_address1 sc_out sc_lv 10 signal 67 } 
	{ fm_out_buff_7_V_ce1 sc_out sc_logic 1 signal 67 } 
	{ fm_out_buff_7_V_we1 sc_out sc_logic 1 signal 67 } 
	{ fm_out_buff_7_V_d1 sc_out sc_lv 16 signal 67 } 
	{ bias_buff_V_offset_out_din sc_out sc_lv 5 signal 68 } 
	{ bias_buff_V_offset_out_full_n sc_in sc_logic 1 signal 68 } 
	{ bias_buff_V_offset_out_write sc_out sc_logic 1 signal 68 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fm_in_buff_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "fm_in_buff_0_V", "role": "address0" }} , 
 	{ "name": "fm_in_buff_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_in_buff_0_V", "role": "ce0" }} , 
 	{ "name": "fm_in_buff_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_in_buff_0_V", "role": "q0" }} , 
 	{ "name": "fm_in_buff_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "fm_in_buff_1_V", "role": "address0" }} , 
 	{ "name": "fm_in_buff_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_in_buff_1_V", "role": "ce0" }} , 
 	{ "name": "fm_in_buff_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_in_buff_1_V", "role": "q0" }} , 
 	{ "name": "fm_in_buff_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "fm_in_buff_2_V", "role": "address0" }} , 
 	{ "name": "fm_in_buff_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_in_buff_2_V", "role": "ce0" }} , 
 	{ "name": "fm_in_buff_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_in_buff_2_V", "role": "q0" }} , 
 	{ "name": "wt_buff_0_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_0_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_0_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_0_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_0_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_0_V", "role": "q0" }} , 
 	{ "name": "wt_buff_0_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_0_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_0_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_0_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_0_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_1_V", "role": "q0" }} , 
 	{ "name": "wt_buff_0_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_0_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_0_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_0_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_0_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_0_2_V", "role": "q0" }} , 
 	{ "name": "wt_buff_1_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_1_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_1_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_1_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_1_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_0_V", "role": "q0" }} , 
 	{ "name": "wt_buff_1_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_1_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_1_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_1_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_1_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_1_V", "role": "q0" }} , 
 	{ "name": "wt_buff_1_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_1_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_1_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_1_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_1_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_1_2_V", "role": "q0" }} , 
 	{ "name": "wt_buff_2_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_2_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_2_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_2_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_2_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_0_V", "role": "q0" }} , 
 	{ "name": "wt_buff_2_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_2_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_2_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_2_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_2_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_1_V", "role": "q0" }} , 
 	{ "name": "wt_buff_2_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_2_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_2_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_2_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_2_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_2_2_V", "role": "q0" }} , 
 	{ "name": "wt_buff_3_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_3_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_3_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_3_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_3_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_0_V", "role": "q0" }} , 
 	{ "name": "wt_buff_3_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_3_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_3_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_3_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_3_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_1_V", "role": "q0" }} , 
 	{ "name": "wt_buff_3_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_3_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_3_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_3_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_3_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_3_2_V", "role": "q0" }} , 
 	{ "name": "wt_buff_4_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_4_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_4_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_4_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_4_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_0_V", "role": "q0" }} , 
 	{ "name": "wt_buff_4_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_4_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_4_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_4_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_4_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_1_V", "role": "q0" }} , 
 	{ "name": "wt_buff_4_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_4_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_4_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_4_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_4_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_4_2_V", "role": "q0" }} , 
 	{ "name": "wt_buff_5_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_5_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_5_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_5_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_5_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_0_V", "role": "q0" }} , 
 	{ "name": "wt_buff_5_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_5_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_5_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_5_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_5_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_1_V", "role": "q0" }} , 
 	{ "name": "wt_buff_5_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_5_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_5_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_5_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_5_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_5_2_V", "role": "q0" }} , 
 	{ "name": "wt_buff_6_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_6_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_6_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_6_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_6_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_0_V", "role": "q0" }} , 
 	{ "name": "wt_buff_6_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_6_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_6_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_6_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_6_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_1_V", "role": "q0" }} , 
 	{ "name": "wt_buff_6_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_6_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_6_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_6_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_6_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_6_2_V", "role": "q0" }} , 
 	{ "name": "wt_buff_7_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_7_0_V", "role": "address0" }} , 
 	{ "name": "wt_buff_7_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_7_0_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_7_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_0_V", "role": "q0" }} , 
 	{ "name": "wt_buff_7_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_7_1_V", "role": "address0" }} , 
 	{ "name": "wt_buff_7_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_7_1_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_7_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_1_V", "role": "q0" }} , 
 	{ "name": "wt_buff_7_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "wt_buff_7_2_V", "role": "address0" }} , 
 	{ "name": "wt_buff_7_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_buff_7_2_V", "role": "ce0" }} , 
 	{ "name": "wt_buff_7_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "wt_buff_7_2_V", "role": "q0" }} , 
 	{ "name": "bias_buff_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_0_V", "role": "dout" }} , 
 	{ "name": "bias_buff_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_0_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_0_V", "role": "read" }} , 
 	{ "name": "bias_buff_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_1_V", "role": "dout" }} , 
 	{ "name": "bias_buff_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_1_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_1_V", "role": "read" }} , 
 	{ "name": "bias_buff_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_2_V", "role": "dout" }} , 
 	{ "name": "bias_buff_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_2_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_2_V", "role": "read" }} , 
 	{ "name": "bias_buff_3_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_3_V", "role": "dout" }} , 
 	{ "name": "bias_buff_3_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_3_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_3_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_3_V", "role": "read" }} , 
 	{ "name": "bias_buff_4_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_4_V", "role": "dout" }} , 
 	{ "name": "bias_buff_4_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_4_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_4_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_4_V", "role": "read" }} , 
 	{ "name": "bias_buff_5_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_5_V", "role": "dout" }} , 
 	{ "name": "bias_buff_5_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_5_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_5_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_5_V", "role": "read" }} , 
 	{ "name": "bias_buff_6_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_6_V", "role": "dout" }} , 
 	{ "name": "bias_buff_6_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_6_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_6_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_6_V", "role": "read" }} , 
 	{ "name": "bias_buff_7_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_7_V", "role": "dout" }} , 
 	{ "name": "bias_buff_7_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_7_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_7_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_7_V", "role": "read" }} , 
 	{ "name": "bias_buff_8_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_8_V", "role": "dout" }} , 
 	{ "name": "bias_buff_8_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_8_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_8_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_8_V", "role": "read" }} , 
 	{ "name": "bias_buff_9_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_9_V", "role": "dout" }} , 
 	{ "name": "bias_buff_9_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_9_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_9_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_9_V", "role": "read" }} , 
 	{ "name": "bias_buff_10_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_10_V", "role": "dout" }} , 
 	{ "name": "bias_buff_10_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_10_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_10_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_10_V", "role": "read" }} , 
 	{ "name": "bias_buff_11_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_11_V", "role": "dout" }} , 
 	{ "name": "bias_buff_11_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_11_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_11_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_11_V", "role": "read" }} , 
 	{ "name": "bias_buff_12_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_12_V", "role": "dout" }} , 
 	{ "name": "bias_buff_12_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_12_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_12_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_12_V", "role": "read" }} , 
 	{ "name": "bias_buff_13_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_13_V", "role": "dout" }} , 
 	{ "name": "bias_buff_13_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_13_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_13_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_13_V", "role": "read" }} , 
 	{ "name": "bias_buff_14_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_14_V", "role": "dout" }} , 
 	{ "name": "bias_buff_14_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_14_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_14_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_14_V", "role": "read" }} , 
 	{ "name": "bias_buff_15_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_15_V", "role": "dout" }} , 
 	{ "name": "bias_buff_15_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_15_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_15_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_15_V", "role": "read" }} , 
 	{ "name": "bias_buff_16_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_16_V", "role": "dout" }} , 
 	{ "name": "bias_buff_16_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_16_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_16_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_16_V", "role": "read" }} , 
 	{ "name": "bias_buff_17_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_17_V", "role": "dout" }} , 
 	{ "name": "bias_buff_17_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_17_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_17_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_17_V", "role": "read" }} , 
 	{ "name": "bias_buff_18_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_18_V", "role": "dout" }} , 
 	{ "name": "bias_buff_18_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_18_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_18_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_18_V", "role": "read" }} , 
 	{ "name": "bias_buff_19_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_19_V", "role": "dout" }} , 
 	{ "name": "bias_buff_19_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_19_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_19_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_19_V", "role": "read" }} , 
 	{ "name": "bias_buff_20_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_20_V", "role": "dout" }} , 
 	{ "name": "bias_buff_20_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_20_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_20_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_20_V", "role": "read" }} , 
 	{ "name": "bias_buff_21_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_21_V", "role": "dout" }} , 
 	{ "name": "bias_buff_21_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_21_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_21_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_21_V", "role": "read" }} , 
 	{ "name": "bias_buff_22_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_22_V", "role": "dout" }} , 
 	{ "name": "bias_buff_22_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_22_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_22_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_22_V", "role": "read" }} , 
 	{ "name": "bias_buff_23_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_23_V", "role": "dout" }} , 
 	{ "name": "bias_buff_23_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_23_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_23_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_23_V", "role": "read" }} , 
 	{ "name": "bias_buff_24_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_24_V", "role": "dout" }} , 
 	{ "name": "bias_buff_24_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_24_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_24_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_24_V", "role": "read" }} , 
 	{ "name": "bias_buff_25_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_25_V", "role": "dout" }} , 
 	{ "name": "bias_buff_25_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_25_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_25_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_25_V", "role": "read" }} , 
 	{ "name": "bias_buff_26_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_26_V", "role": "dout" }} , 
 	{ "name": "bias_buff_26_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_26_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_26_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_26_V", "role": "read" }} , 
 	{ "name": "bias_buff_27_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_27_V", "role": "dout" }} , 
 	{ "name": "bias_buff_27_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_27_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_27_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_27_V", "role": "read" }} , 
 	{ "name": "bias_buff_28_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_28_V", "role": "dout" }} , 
 	{ "name": "bias_buff_28_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_28_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_28_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_28_V", "role": "read" }} , 
 	{ "name": "bias_buff_29_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_29_V", "role": "dout" }} , 
 	{ "name": "bias_buff_29_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_29_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_29_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_29_V", "role": "read" }} , 
 	{ "name": "bias_buff_30_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_30_V", "role": "dout" }} , 
 	{ "name": "bias_buff_30_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_30_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_30_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_30_V", "role": "read" }} , 
 	{ "name": "bias_buff_31_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_buff_31_V", "role": "dout" }} , 
 	{ "name": "bias_buff_31_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_31_V", "role": "empty_n" }} , 
 	{ "name": "bias_buff_31_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_31_V", "role": "read" }} , 
 	{ "name": "bias_buff_V_offset_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bias_buff_V_offset", "role": "dout" }} , 
 	{ "name": "bias_buff_V_offset_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V_offset", "role": "empty_n" }} , 
 	{ "name": "bias_buff_V_offset_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V_offset", "role": "read" }} , 
 	{ "name": "fm_out_buff_0_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_0_V", "role": "address0" }} , 
 	{ "name": "fm_out_buff_0_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_0_V", "role": "ce0" }} , 
 	{ "name": "fm_out_buff_0_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_0_V", "role": "q0" }} , 
 	{ "name": "fm_out_buff_0_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_0_V", "role": "address1" }} , 
 	{ "name": "fm_out_buff_0_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_0_V", "role": "ce1" }} , 
 	{ "name": "fm_out_buff_0_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_0_V", "role": "we1" }} , 
 	{ "name": "fm_out_buff_0_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_0_V", "role": "d1" }} , 
 	{ "name": "fm_out_buff_1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_1_V", "role": "address0" }} , 
 	{ "name": "fm_out_buff_1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_1_V", "role": "ce0" }} , 
 	{ "name": "fm_out_buff_1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_1_V", "role": "q0" }} , 
 	{ "name": "fm_out_buff_1_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_1_V", "role": "address1" }} , 
 	{ "name": "fm_out_buff_1_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_1_V", "role": "ce1" }} , 
 	{ "name": "fm_out_buff_1_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_1_V", "role": "we1" }} , 
 	{ "name": "fm_out_buff_1_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_1_V", "role": "d1" }} , 
 	{ "name": "fm_out_buff_2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_2_V", "role": "address0" }} , 
 	{ "name": "fm_out_buff_2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_2_V", "role": "ce0" }} , 
 	{ "name": "fm_out_buff_2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_2_V", "role": "q0" }} , 
 	{ "name": "fm_out_buff_2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_2_V", "role": "address1" }} , 
 	{ "name": "fm_out_buff_2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_2_V", "role": "ce1" }} , 
 	{ "name": "fm_out_buff_2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_2_V", "role": "we1" }} , 
 	{ "name": "fm_out_buff_2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_2_V", "role": "d1" }} , 
 	{ "name": "fm_out_buff_3_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_3_V", "role": "address0" }} , 
 	{ "name": "fm_out_buff_3_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_3_V", "role": "ce0" }} , 
 	{ "name": "fm_out_buff_3_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_3_V", "role": "q0" }} , 
 	{ "name": "fm_out_buff_3_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_3_V", "role": "address1" }} , 
 	{ "name": "fm_out_buff_3_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_3_V", "role": "ce1" }} , 
 	{ "name": "fm_out_buff_3_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_3_V", "role": "we1" }} , 
 	{ "name": "fm_out_buff_3_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_3_V", "role": "d1" }} , 
 	{ "name": "fm_out_buff_4_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_4_V", "role": "address0" }} , 
 	{ "name": "fm_out_buff_4_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_4_V", "role": "ce0" }} , 
 	{ "name": "fm_out_buff_4_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_4_V", "role": "q0" }} , 
 	{ "name": "fm_out_buff_4_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_4_V", "role": "address1" }} , 
 	{ "name": "fm_out_buff_4_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_4_V", "role": "ce1" }} , 
 	{ "name": "fm_out_buff_4_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_4_V", "role": "we1" }} , 
 	{ "name": "fm_out_buff_4_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_4_V", "role": "d1" }} , 
 	{ "name": "fm_out_buff_5_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_5_V", "role": "address0" }} , 
 	{ "name": "fm_out_buff_5_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_5_V", "role": "ce0" }} , 
 	{ "name": "fm_out_buff_5_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_5_V", "role": "q0" }} , 
 	{ "name": "fm_out_buff_5_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_5_V", "role": "address1" }} , 
 	{ "name": "fm_out_buff_5_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_5_V", "role": "ce1" }} , 
 	{ "name": "fm_out_buff_5_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_5_V", "role": "we1" }} , 
 	{ "name": "fm_out_buff_5_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_5_V", "role": "d1" }} , 
 	{ "name": "fm_out_buff_6_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_6_V", "role": "address0" }} , 
 	{ "name": "fm_out_buff_6_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_6_V", "role": "ce0" }} , 
 	{ "name": "fm_out_buff_6_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_6_V", "role": "q0" }} , 
 	{ "name": "fm_out_buff_6_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_6_V", "role": "address1" }} , 
 	{ "name": "fm_out_buff_6_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_6_V", "role": "ce1" }} , 
 	{ "name": "fm_out_buff_6_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_6_V", "role": "we1" }} , 
 	{ "name": "fm_out_buff_6_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_6_V", "role": "d1" }} , 
 	{ "name": "fm_out_buff_7_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_7_V", "role": "address0" }} , 
 	{ "name": "fm_out_buff_7_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_7_V", "role": "ce0" }} , 
 	{ "name": "fm_out_buff_7_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_7_V", "role": "q0" }} , 
 	{ "name": "fm_out_buff_7_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "fm_out_buff_7_V", "role": "address1" }} , 
 	{ "name": "fm_out_buff_7_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_7_V", "role": "ce1" }} , 
 	{ "name": "fm_out_buff_7_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fm_out_buff_7_V", "role": "we1" }} , 
 	{ "name": "fm_out_buff_7_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "fm_out_buff_7_V", "role": "d1" }} , 
 	{ "name": "bias_buff_V_offset_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bias_buff_V_offset_out", "role": "din" }} , 
 	{ "name": "bias_buff_V_offset_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V_offset_out", "role": "full_n" }} , 
 	{ "name": "bias_buff_V_offset_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_buff_V_offset_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "compute5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7073", "EstimateLatencyMax" : "7073",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fm_in_buff_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fm_in_buff_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fm_in_buff_2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wt_buff_0_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_0_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_0_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_1_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_1_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_1_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_2_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_2_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_2_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_3_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_3_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_3_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_4_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_4_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_4_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_5_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_5_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_5_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_6_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_6_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_6_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_7_0_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_7_1_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "wt_buff_7_2_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias_buff_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_3_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_3_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_4_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_4_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_5_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_5_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_6_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_6_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_7_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_7_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_8_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_8_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_9_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_9_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_10_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_10_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_11_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_11_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_12_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_12_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_13_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_13_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_14_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_14_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_15_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_15_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_16_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_16_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_17_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_17_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_18_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_18_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_19_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_19_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_20_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_20_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_21_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_21_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_22_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_22_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_23_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_23_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_24_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_24_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_25_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_25_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_26_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_26_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_27_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_27_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_28_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_28_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_29_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_29_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_30_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_30_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_31_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_31_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_buff_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_V_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fm_out_buff_0_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "fm_out_buff_1_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "fm_out_buff_2_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "fm_out_buff_3_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "fm_out_buff_4_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "fm_out_buff_5_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "fm_out_buff_6_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "fm_out_buff_7_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "bias_buff_V_offset_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bias_buff_V_offset_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mux_325_16_1_1_U116", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mux_325_16_1_1_U117", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mux_325_16_1_1_U118", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mux_325_16_1_1_U119", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mux_325_16_1_1_U120", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mux_325_16_1_1_U121", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mux_325_16_1_1_U122", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mux_325_16_1_1_U123", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mac_muladd_7eOg_U124", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U125", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U126", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U127", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U128", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U129", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U130", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U131", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U132", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U133", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U134", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U135", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U136", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U137", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U138", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U139", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U140", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U141", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U142", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U143", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U144", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U145", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U146", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U147", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_mul_mul_16s_fYi_U148", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute5 {
		fm_in_buff_0_V {Type I LastRead 6 FirstWrite -1}
		fm_in_buff_1_V {Type I LastRead 8 FirstWrite -1}
		fm_in_buff_2_V {Type I LastRead 10 FirstWrite -1}
		wt_buff_0_0_V {Type I LastRead 6 FirstWrite -1}
		wt_buff_0_1_V {Type I LastRead 8 FirstWrite -1}
		wt_buff_0_2_V {Type I LastRead 10 FirstWrite -1}
		wt_buff_1_0_V {Type I LastRead 6 FirstWrite -1}
		wt_buff_1_1_V {Type I LastRead 8 FirstWrite -1}
		wt_buff_1_2_V {Type I LastRead 10 FirstWrite -1}
		wt_buff_2_0_V {Type I LastRead 6 FirstWrite -1}
		wt_buff_2_1_V {Type I LastRead 8 FirstWrite -1}
		wt_buff_2_2_V {Type I LastRead 10 FirstWrite -1}
		wt_buff_3_0_V {Type I LastRead 6 FirstWrite -1}
		wt_buff_3_1_V {Type I LastRead 8 FirstWrite -1}
		wt_buff_3_2_V {Type I LastRead 10 FirstWrite -1}
		wt_buff_4_0_V {Type I LastRead 6 FirstWrite -1}
		wt_buff_4_1_V {Type I LastRead 8 FirstWrite -1}
		wt_buff_4_2_V {Type I LastRead 10 FirstWrite -1}
		wt_buff_5_0_V {Type I LastRead 6 FirstWrite -1}
		wt_buff_5_1_V {Type I LastRead 8 FirstWrite -1}
		wt_buff_5_2_V {Type I LastRead 10 FirstWrite -1}
		wt_buff_6_0_V {Type I LastRead 6 FirstWrite -1}
		wt_buff_6_1_V {Type I LastRead 8 FirstWrite -1}
		wt_buff_6_2_V {Type I LastRead 10 FirstWrite -1}
		wt_buff_7_0_V {Type I LastRead 6 FirstWrite -1}
		wt_buff_7_1_V {Type I LastRead 8 FirstWrite -1}
		wt_buff_7_2_V {Type I LastRead 10 FirstWrite -1}
		bias_buff_0_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_1_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_2_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_3_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_4_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_5_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_6_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_7_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_8_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_9_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_10_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_11_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_12_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_13_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_14_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_15_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_16_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_17_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_18_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_19_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_20_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_21_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_22_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_23_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_24_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_25_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_26_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_27_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_28_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_29_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_30_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_31_V {Type I LastRead 0 FirstWrite -1}
		bias_buff_V_offset {Type I LastRead 0 FirstWrite -1}
		fm_out_buff_0_V {Type IO LastRead 9 FirstWrite 17}
		fm_out_buff_1_V {Type IO LastRead 9 FirstWrite 17}
		fm_out_buff_2_V {Type IO LastRead 9 FirstWrite 17}
		fm_out_buff_3_V {Type IO LastRead 9 FirstWrite 17}
		fm_out_buff_4_V {Type IO LastRead 9 FirstWrite 17}
		fm_out_buff_5_V {Type IO LastRead 9 FirstWrite 17}
		fm_out_buff_6_V {Type IO LastRead 9 FirstWrite 17}
		fm_out_buff_7_V {Type IO LastRead 9 FirstWrite 17}
		bias_buff_V_offset_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7073", "Max" : "7073"}
	, {"Name" : "Interval", "Min" : "7073", "Max" : "7073"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fm_in_buff_0_V { ap_memory {  { fm_in_buff_0_V_address0 mem_address 1 12 }  { fm_in_buff_0_V_ce0 mem_ce 1 1 }  { fm_in_buff_0_V_q0 mem_dout 0 16 } } }
	fm_in_buff_1_V { ap_memory {  { fm_in_buff_1_V_address0 mem_address 1 12 }  { fm_in_buff_1_V_ce0 mem_ce 1 1 }  { fm_in_buff_1_V_q0 mem_dout 0 16 } } }
	fm_in_buff_2_V { ap_memory {  { fm_in_buff_2_V_address0 mem_address 1 12 }  { fm_in_buff_2_V_ce0 mem_ce 1 1 }  { fm_in_buff_2_V_q0 mem_dout 0 16 } } }
	wt_buff_0_0_V { ap_memory {  { wt_buff_0_0_V_address0 mem_address 1 4 }  { wt_buff_0_0_V_ce0 mem_ce 1 1 }  { wt_buff_0_0_V_q0 mem_dout 0 16 } } }
	wt_buff_0_1_V { ap_memory {  { wt_buff_0_1_V_address0 mem_address 1 4 }  { wt_buff_0_1_V_ce0 mem_ce 1 1 }  { wt_buff_0_1_V_q0 mem_dout 0 16 } } }
	wt_buff_0_2_V { ap_memory {  { wt_buff_0_2_V_address0 mem_address 1 4 }  { wt_buff_0_2_V_ce0 mem_ce 1 1 }  { wt_buff_0_2_V_q0 mem_dout 0 16 } } }
	wt_buff_1_0_V { ap_memory {  { wt_buff_1_0_V_address0 mem_address 1 4 }  { wt_buff_1_0_V_ce0 mem_ce 1 1 }  { wt_buff_1_0_V_q0 mem_dout 0 16 } } }
	wt_buff_1_1_V { ap_memory {  { wt_buff_1_1_V_address0 mem_address 1 4 }  { wt_buff_1_1_V_ce0 mem_ce 1 1 }  { wt_buff_1_1_V_q0 mem_dout 0 16 } } }
	wt_buff_1_2_V { ap_memory {  { wt_buff_1_2_V_address0 mem_address 1 4 }  { wt_buff_1_2_V_ce0 mem_ce 1 1 }  { wt_buff_1_2_V_q0 mem_dout 0 16 } } }
	wt_buff_2_0_V { ap_memory {  { wt_buff_2_0_V_address0 mem_address 1 4 }  { wt_buff_2_0_V_ce0 mem_ce 1 1 }  { wt_buff_2_0_V_q0 mem_dout 0 16 } } }
	wt_buff_2_1_V { ap_memory {  { wt_buff_2_1_V_address0 mem_address 1 4 }  { wt_buff_2_1_V_ce0 mem_ce 1 1 }  { wt_buff_2_1_V_q0 mem_dout 0 16 } } }
	wt_buff_2_2_V { ap_memory {  { wt_buff_2_2_V_address0 mem_address 1 4 }  { wt_buff_2_2_V_ce0 mem_ce 1 1 }  { wt_buff_2_2_V_q0 mem_dout 0 16 } } }
	wt_buff_3_0_V { ap_memory {  { wt_buff_3_0_V_address0 mem_address 1 4 }  { wt_buff_3_0_V_ce0 mem_ce 1 1 }  { wt_buff_3_0_V_q0 mem_dout 0 16 } } }
	wt_buff_3_1_V { ap_memory {  { wt_buff_3_1_V_address0 mem_address 1 4 }  { wt_buff_3_1_V_ce0 mem_ce 1 1 }  { wt_buff_3_1_V_q0 mem_dout 0 16 } } }
	wt_buff_3_2_V { ap_memory {  { wt_buff_3_2_V_address0 mem_address 1 4 }  { wt_buff_3_2_V_ce0 mem_ce 1 1 }  { wt_buff_3_2_V_q0 mem_dout 0 16 } } }
	wt_buff_4_0_V { ap_memory {  { wt_buff_4_0_V_address0 mem_address 1 4 }  { wt_buff_4_0_V_ce0 mem_ce 1 1 }  { wt_buff_4_0_V_q0 mem_dout 0 16 } } }
	wt_buff_4_1_V { ap_memory {  { wt_buff_4_1_V_address0 mem_address 1 4 }  { wt_buff_4_1_V_ce0 mem_ce 1 1 }  { wt_buff_4_1_V_q0 mem_dout 0 16 } } }
	wt_buff_4_2_V { ap_memory {  { wt_buff_4_2_V_address0 mem_address 1 4 }  { wt_buff_4_2_V_ce0 mem_ce 1 1 }  { wt_buff_4_2_V_q0 mem_dout 0 16 } } }
	wt_buff_5_0_V { ap_memory {  { wt_buff_5_0_V_address0 mem_address 1 4 }  { wt_buff_5_0_V_ce0 mem_ce 1 1 }  { wt_buff_5_0_V_q0 mem_dout 0 16 } } }
	wt_buff_5_1_V { ap_memory {  { wt_buff_5_1_V_address0 mem_address 1 4 }  { wt_buff_5_1_V_ce0 mem_ce 1 1 }  { wt_buff_5_1_V_q0 mem_dout 0 16 } } }
	wt_buff_5_2_V { ap_memory {  { wt_buff_5_2_V_address0 mem_address 1 4 }  { wt_buff_5_2_V_ce0 mem_ce 1 1 }  { wt_buff_5_2_V_q0 mem_dout 0 16 } } }
	wt_buff_6_0_V { ap_memory {  { wt_buff_6_0_V_address0 mem_address 1 4 }  { wt_buff_6_0_V_ce0 mem_ce 1 1 }  { wt_buff_6_0_V_q0 mem_dout 0 16 } } }
	wt_buff_6_1_V { ap_memory {  { wt_buff_6_1_V_address0 mem_address 1 4 }  { wt_buff_6_1_V_ce0 mem_ce 1 1 }  { wt_buff_6_1_V_q0 mem_dout 0 16 } } }
	wt_buff_6_2_V { ap_memory {  { wt_buff_6_2_V_address0 mem_address 1 4 }  { wt_buff_6_2_V_ce0 mem_ce 1 1 }  { wt_buff_6_2_V_q0 mem_dout 0 16 } } }
	wt_buff_7_0_V { ap_memory {  { wt_buff_7_0_V_address0 mem_address 1 4 }  { wt_buff_7_0_V_ce0 mem_ce 1 1 }  { wt_buff_7_0_V_q0 mem_dout 0 16 } } }
	wt_buff_7_1_V { ap_memory {  { wt_buff_7_1_V_address0 mem_address 1 4 }  { wt_buff_7_1_V_ce0 mem_ce 1 1 }  { wt_buff_7_1_V_q0 mem_dout 0 16 } } }
	wt_buff_7_2_V { ap_memory {  { wt_buff_7_2_V_address0 mem_address 1 4 }  { wt_buff_7_2_V_ce0 mem_ce 1 1 }  { wt_buff_7_2_V_q0 mem_dout 0 16 } } }
	bias_buff_0_V { ap_fifo {  { bias_buff_0_V_dout fifo_data 0 16 }  { bias_buff_0_V_empty_n fifo_status 0 1 }  { bias_buff_0_V_read fifo_update 1 1 } } }
	bias_buff_1_V { ap_fifo {  { bias_buff_1_V_dout fifo_data 0 16 }  { bias_buff_1_V_empty_n fifo_status 0 1 }  { bias_buff_1_V_read fifo_update 1 1 } } }
	bias_buff_2_V { ap_fifo {  { bias_buff_2_V_dout fifo_data 0 16 }  { bias_buff_2_V_empty_n fifo_status 0 1 }  { bias_buff_2_V_read fifo_update 1 1 } } }
	bias_buff_3_V { ap_fifo {  { bias_buff_3_V_dout fifo_data 0 16 }  { bias_buff_3_V_empty_n fifo_status 0 1 }  { bias_buff_3_V_read fifo_update 1 1 } } }
	bias_buff_4_V { ap_fifo {  { bias_buff_4_V_dout fifo_data 0 16 }  { bias_buff_4_V_empty_n fifo_status 0 1 }  { bias_buff_4_V_read fifo_update 1 1 } } }
	bias_buff_5_V { ap_fifo {  { bias_buff_5_V_dout fifo_data 0 16 }  { bias_buff_5_V_empty_n fifo_status 0 1 }  { bias_buff_5_V_read fifo_update 1 1 } } }
	bias_buff_6_V { ap_fifo {  { bias_buff_6_V_dout fifo_data 0 16 }  { bias_buff_6_V_empty_n fifo_status 0 1 }  { bias_buff_6_V_read fifo_update 1 1 } } }
	bias_buff_7_V { ap_fifo {  { bias_buff_7_V_dout fifo_data 0 16 }  { bias_buff_7_V_empty_n fifo_status 0 1 }  { bias_buff_7_V_read fifo_update 1 1 } } }
	bias_buff_8_V { ap_fifo {  { bias_buff_8_V_dout fifo_data 0 16 }  { bias_buff_8_V_empty_n fifo_status 0 1 }  { bias_buff_8_V_read fifo_update 1 1 } } }
	bias_buff_9_V { ap_fifo {  { bias_buff_9_V_dout fifo_data 0 16 }  { bias_buff_9_V_empty_n fifo_status 0 1 }  { bias_buff_9_V_read fifo_update 1 1 } } }
	bias_buff_10_V { ap_fifo {  { bias_buff_10_V_dout fifo_data 0 16 }  { bias_buff_10_V_empty_n fifo_status 0 1 }  { bias_buff_10_V_read fifo_update 1 1 } } }
	bias_buff_11_V { ap_fifo {  { bias_buff_11_V_dout fifo_data 0 16 }  { bias_buff_11_V_empty_n fifo_status 0 1 }  { bias_buff_11_V_read fifo_update 1 1 } } }
	bias_buff_12_V { ap_fifo {  { bias_buff_12_V_dout fifo_data 0 16 }  { bias_buff_12_V_empty_n fifo_status 0 1 }  { bias_buff_12_V_read fifo_update 1 1 } } }
	bias_buff_13_V { ap_fifo {  { bias_buff_13_V_dout fifo_data 0 16 }  { bias_buff_13_V_empty_n fifo_status 0 1 }  { bias_buff_13_V_read fifo_update 1 1 } } }
	bias_buff_14_V { ap_fifo {  { bias_buff_14_V_dout fifo_data 0 16 }  { bias_buff_14_V_empty_n fifo_status 0 1 }  { bias_buff_14_V_read fifo_update 1 1 } } }
	bias_buff_15_V { ap_fifo {  { bias_buff_15_V_dout fifo_data 0 16 }  { bias_buff_15_V_empty_n fifo_status 0 1 }  { bias_buff_15_V_read fifo_update 1 1 } } }
	bias_buff_16_V { ap_fifo {  { bias_buff_16_V_dout fifo_data 0 16 }  { bias_buff_16_V_empty_n fifo_status 0 1 }  { bias_buff_16_V_read fifo_update 1 1 } } }
	bias_buff_17_V { ap_fifo {  { bias_buff_17_V_dout fifo_data 0 16 }  { bias_buff_17_V_empty_n fifo_status 0 1 }  { bias_buff_17_V_read fifo_update 1 1 } } }
	bias_buff_18_V { ap_fifo {  { bias_buff_18_V_dout fifo_data 0 16 }  { bias_buff_18_V_empty_n fifo_status 0 1 }  { bias_buff_18_V_read fifo_update 1 1 } } }
	bias_buff_19_V { ap_fifo {  { bias_buff_19_V_dout fifo_data 0 16 }  { bias_buff_19_V_empty_n fifo_status 0 1 }  { bias_buff_19_V_read fifo_update 1 1 } } }
	bias_buff_20_V { ap_fifo {  { bias_buff_20_V_dout fifo_data 0 16 }  { bias_buff_20_V_empty_n fifo_status 0 1 }  { bias_buff_20_V_read fifo_update 1 1 } } }
	bias_buff_21_V { ap_fifo {  { bias_buff_21_V_dout fifo_data 0 16 }  { bias_buff_21_V_empty_n fifo_status 0 1 }  { bias_buff_21_V_read fifo_update 1 1 } } }
	bias_buff_22_V { ap_fifo {  { bias_buff_22_V_dout fifo_data 0 16 }  { bias_buff_22_V_empty_n fifo_status 0 1 }  { bias_buff_22_V_read fifo_update 1 1 } } }
	bias_buff_23_V { ap_fifo {  { bias_buff_23_V_dout fifo_data 0 16 }  { bias_buff_23_V_empty_n fifo_status 0 1 }  { bias_buff_23_V_read fifo_update 1 1 } } }
	bias_buff_24_V { ap_fifo {  { bias_buff_24_V_dout fifo_data 0 16 }  { bias_buff_24_V_empty_n fifo_status 0 1 }  { bias_buff_24_V_read fifo_update 1 1 } } }
	bias_buff_25_V { ap_fifo {  { bias_buff_25_V_dout fifo_data 0 16 }  { bias_buff_25_V_empty_n fifo_status 0 1 }  { bias_buff_25_V_read fifo_update 1 1 } } }
	bias_buff_26_V { ap_fifo {  { bias_buff_26_V_dout fifo_data 0 16 }  { bias_buff_26_V_empty_n fifo_status 0 1 }  { bias_buff_26_V_read fifo_update 1 1 } } }
	bias_buff_27_V { ap_fifo {  { bias_buff_27_V_dout fifo_data 0 16 }  { bias_buff_27_V_empty_n fifo_status 0 1 }  { bias_buff_27_V_read fifo_update 1 1 } } }
	bias_buff_28_V { ap_fifo {  { bias_buff_28_V_dout fifo_data 0 16 }  { bias_buff_28_V_empty_n fifo_status 0 1 }  { bias_buff_28_V_read fifo_update 1 1 } } }
	bias_buff_29_V { ap_fifo {  { bias_buff_29_V_dout fifo_data 0 16 }  { bias_buff_29_V_empty_n fifo_status 0 1 }  { bias_buff_29_V_read fifo_update 1 1 } } }
	bias_buff_30_V { ap_fifo {  { bias_buff_30_V_dout fifo_data 0 16 }  { bias_buff_30_V_empty_n fifo_status 0 1 }  { bias_buff_30_V_read fifo_update 1 1 } } }
	bias_buff_31_V { ap_fifo {  { bias_buff_31_V_dout fifo_data 0 16 }  { bias_buff_31_V_empty_n fifo_status 0 1 }  { bias_buff_31_V_read fifo_update 1 1 } } }
	bias_buff_V_offset { ap_fifo {  { bias_buff_V_offset_dout fifo_data 0 5 }  { bias_buff_V_offset_empty_n fifo_status 0 1 }  { bias_buff_V_offset_read fifo_update 1 1 } } }
	fm_out_buff_0_V { ap_memory {  { fm_out_buff_0_V_address0 mem_address 1 10 }  { fm_out_buff_0_V_ce0 mem_ce 1 1 }  { fm_out_buff_0_V_q0 mem_dout 0 16 }  { fm_out_buff_0_V_address1 MemPortADDR2 1 10 }  { fm_out_buff_0_V_ce1 MemPortCE2 1 1 }  { fm_out_buff_0_V_we1 MemPortWE2 1 1 }  { fm_out_buff_0_V_d1 MemPortDIN2 1 16 } } }
	fm_out_buff_1_V { ap_memory {  { fm_out_buff_1_V_address0 mem_address 1 10 }  { fm_out_buff_1_V_ce0 mem_ce 1 1 }  { fm_out_buff_1_V_q0 mem_dout 0 16 }  { fm_out_buff_1_V_address1 MemPortADDR2 1 10 }  { fm_out_buff_1_V_ce1 MemPortCE2 1 1 }  { fm_out_buff_1_V_we1 MemPortWE2 1 1 }  { fm_out_buff_1_V_d1 MemPortDIN2 1 16 } } }
	fm_out_buff_2_V { ap_memory {  { fm_out_buff_2_V_address0 mem_address 1 10 }  { fm_out_buff_2_V_ce0 mem_ce 1 1 }  { fm_out_buff_2_V_q0 mem_dout 0 16 }  { fm_out_buff_2_V_address1 MemPortADDR2 1 10 }  { fm_out_buff_2_V_ce1 MemPortCE2 1 1 }  { fm_out_buff_2_V_we1 MemPortWE2 1 1 }  { fm_out_buff_2_V_d1 MemPortDIN2 1 16 } } }
	fm_out_buff_3_V { ap_memory {  { fm_out_buff_3_V_address0 mem_address 1 10 }  { fm_out_buff_3_V_ce0 mem_ce 1 1 }  { fm_out_buff_3_V_q0 mem_dout 0 16 }  { fm_out_buff_3_V_address1 MemPortADDR2 1 10 }  { fm_out_buff_3_V_ce1 MemPortCE2 1 1 }  { fm_out_buff_3_V_we1 MemPortWE2 1 1 }  { fm_out_buff_3_V_d1 MemPortDIN2 1 16 } } }
	fm_out_buff_4_V { ap_memory {  { fm_out_buff_4_V_address0 mem_address 1 10 }  { fm_out_buff_4_V_ce0 mem_ce 1 1 }  { fm_out_buff_4_V_q0 mem_dout 0 16 }  { fm_out_buff_4_V_address1 MemPortADDR2 1 10 }  { fm_out_buff_4_V_ce1 MemPortCE2 1 1 }  { fm_out_buff_4_V_we1 MemPortWE2 1 1 }  { fm_out_buff_4_V_d1 MemPortDIN2 1 16 } } }
	fm_out_buff_5_V { ap_memory {  { fm_out_buff_5_V_address0 mem_address 1 10 }  { fm_out_buff_5_V_ce0 mem_ce 1 1 }  { fm_out_buff_5_V_q0 mem_dout 0 16 }  { fm_out_buff_5_V_address1 MemPortADDR2 1 10 }  { fm_out_buff_5_V_ce1 MemPortCE2 1 1 }  { fm_out_buff_5_V_we1 MemPortWE2 1 1 }  { fm_out_buff_5_V_d1 MemPortDIN2 1 16 } } }
	fm_out_buff_6_V { ap_memory {  { fm_out_buff_6_V_address0 mem_address 1 10 }  { fm_out_buff_6_V_ce0 mem_ce 1 1 }  { fm_out_buff_6_V_q0 mem_dout 0 16 }  { fm_out_buff_6_V_address1 MemPortADDR2 1 10 }  { fm_out_buff_6_V_ce1 MemPortCE2 1 1 }  { fm_out_buff_6_V_we1 MemPortWE2 1 1 }  { fm_out_buff_6_V_d1 MemPortDIN2 1 16 } } }
	fm_out_buff_7_V { ap_memory {  { fm_out_buff_7_V_address0 mem_address 1 10 }  { fm_out_buff_7_V_ce0 mem_ce 1 1 }  { fm_out_buff_7_V_q0 mem_dout 0 16 }  { fm_out_buff_7_V_address1 MemPortADDR2 1 10 }  { fm_out_buff_7_V_ce1 MemPortCE2 1 1 }  { fm_out_buff_7_V_we1 MemPortWE2 1 1 }  { fm_out_buff_7_V_d1 MemPortDIN2 1 16 } } }
	bias_buff_V_offset_out { ap_fifo {  { bias_buff_V_offset_out_din fifo_data 1 5 }  { bias_buff_V_offset_out_full_n fifo_status 0 1 }  { bias_buff_V_offset_out_write fifo_update 1 1 } } }
}
